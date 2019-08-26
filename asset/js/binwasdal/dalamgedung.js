$(document).ready(function () {

  /* initialize the external events
   -----------------------------------------------------------------*/
  function ini_events(ele) {
    ele.each(function () {

      // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
      // it doesn't need to have a start or end
      var eventObject = {
        title: $.trim($(this).text()) // use the element's text as the event title
      };

      // store the Event Object in the DOM element so we can get to it later
      $(this).data('eventObject', eventObject);

      // make the event draggable using jQuery UI
      $(this).draggable({
        zIndex: 1070,
        revert: true, // will cause the event to go back to its
        revertDuration: 0  //  original position after the drag
      });

    });
  }

  ini_events($('#external-events div.external-event'));

  /* initialize the calendar
   -----------------------------------------------------------------*/
  $('#calendar').fullCalendar({
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    },
    buttonText: {
      today: 'today',
      month: 'month',
      week: 'week',
      day: 'day'
    },
    //Random default events
    events: '../binwasdal/Dalamgedung/getlist',
    //editable: true,
    eventClick: function (event) {
      var id = event.id;
      edit(id);
    }
  });
});


var save_method;
var table;
var idv;

function validasi() {
  var validasi = true;
  var text = "";
  if ($('[name="namabarang"]').val() == "") {
    text += "Nama barang, ";
    validasi = false;
  }
  if ($('[name="spesifikasi"]').val() == "") {
    text += "spesifikasi, ";
    validasi = false;
  }
  if ($('[name="satuan"]').val() == "") {
    text += "satuan, ";
    validasi = false;
  }
  if ($('[name="volume"]').val() == "") {
    text += "volume, ";
    validasi = false;
  }

  if ($('[name="barcode"]').val() == "") {
    text += "Barcode, ";
    validasi = false;
  }
  // if ($('[name="harga"]').val() == ""){
  //   text += "harga, ";
  //   validasi = false;
  // }
  // if ($('[name="ppn"]').val() == ""){
  //   text += "ppn, ";
  //   validasi = false;
  // }
  // if ($('[name="batch"]').val() == ""){
  //   text += "batch, ";
  //   validasi = false;
  // }
  // if ($('[name="namapt"]').val() == ""){
  //   text += "nama PT, ";
  //   validasi = false;
  // }
  // if ($('[name="ed"]').val() == ""){
  //   text += "ED ";
  //   validasi = false;
  //}
  if (text != "") {
    var str = '<div class="pull-left bg-gray text-red alert alert-dismissible"><button id="closealert" class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>' + text + ' tidak boleh kosong</div>';
    $('#valid').html(str);
  }
  return validasi;
}

function notify(text, position, style) {
  $.notify(text, { position: position, className: style });
}

function refresh() {
  $('#calendar').fullCalendar('refetchEvents');
}
function tambah() {
  save_method = 1;
  document.getElementById('divSave').style.visibility = "visible";
  document.getElementById('divdel').style.visibility = "hidden";
  document.getElementById('delete').style.visibility = "hidden";

  document.getElementById("form").reset();
  $('#closealert').click();

  $('#myModal').modal('show');
  $('#myModalLabel').text('Tambah Kegiatan');
}
function formatAMPM(date) {
  var hours = date.getHours();
  var minutes = date.getMinutes();
  var ampm = hours >= 12 ? 'pm' : 'am';
  hours = hours % 12;
  hours = hours ? hours : 12; // the hour '0' should be '12'
  minutes = minutes < 10 ? '0' + minutes : minutes;
  var strTime = hours + ':' + minutes + ' ' + ampm;
  return strTime;
}
function edit(id) {
  save_method = 2;

  idv = id

  document.getElementById("form").reset();
  $('#closealert').click();

  //get data edit
  $.ajax({
    url: "../binwasdal/Dalamgedung/Edit/" + id,
    type: "GET",
    dataType: "JSON",
    success: function (data) {

      $('[name="id"]').val(data.id);
      $('[name="kegiatan"]').val(data.kegiatan);
      $('[name="ruangan"]').val(data.ruangan);
      var arr = new Array();
      arr = data.tgl.split(" ");
      $('[name="tgl"]').val(arr[0]);
      $('[name="waktu"]').val(arr[1]);
      $('[name="durasi"]').val(data.durasi);
      $('[name="fasilitas"]').val(data.fasilitas);
      $('[name="pj"]').val(data.pj);
      $('[name="narsum"]').val(data.narsum);
      $('[name="keterangan"]').val(data.keterangan);
      $('[name="warna"]').val(data.warna);
      document.getElementById("warna").style.backgroundColor = data.warna;
      document.getElementById("dibuatolh").innerHTML = "<H4> Dibuat Oleh : " + data.dibuatolh +"</H4>";
      $('[name="warna"]').val('');
      $('#myModal').modal('show');

      $('#myModalLabel').text('Detail Kegiatan');
      if (document.getElementById('SessionStaffName').value == data.dibuatolh) {
        document.getElementById('divSave').style.visibility = "visible";
        document.getElementById('divdel').style.visibility = "hidden";
        document.getElementById('delete').style.visibility = "visible";
      } else {
        document.getElementById('divdel').style.visibility = "hidden";
        document.getElementById('divSave').style.visibility = "hidden";
        document.getElementById('delete').style.visibility = "hidden";
      }
    },
    error: function (jqXHR, textStatus, errorThrown) {
      notify('Error proses', 'rigth bottom', 'error'); //notify(text,position,style)
    }
  });
  // get foto
  $.ajax({
    url: "../binwasdal/Dalamgedung/getFoto/" + id,
    type: "GET",
    dataType: "JSON",
    success: function (data) {

      var strbuild1 = "";
      var strbuild2 = "";
      var i = 0;
      data.forEach(function (item) {
        var a = (i == 0) ? 'active' : '';
        strbuild1 += '<li data-target="#carousel-example-generic" data-slide-to="' + i + '" class="' + a + '"></li>';
        strbuild2 += '<img src="' + item.img_name + '" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"><button type="button" onclick="deleteImg(' + item.id + ')" class="btn btn-warning">Delete</button>';
        i++;
      });
      console.log(strbuild2)
      // document.getElementById('img_view1').innerHTML = strbuild1;
      document.getElementById('img_view2').innerHTML = strbuild2;
    },
    error: function (jqXHR, textStatus, errorThrown) {
      notify('Error proses', 'rigth bottom', 'error'); //notify(text,position,style)
    }
  });
}

function ConvertFile() {
  var file = document.getElementById('exampleInputFile').files;
  var reader = new FileReader();
  reader.readAsDataURL(file[0]);
  reader.onload = function () {
    document.getElementById('img_name').value = reader.result;

  };
  reader.onerror = function () {
    console.log('error', this.error);
  };
}
function simpan() {
  if (validasi()) {
    if (save_method == 1) {
      var url = "../binwasdal/Dalamgedung/Simpan";
    } else {
      var url = "../binwasdal/Dalamgedung/Update";
    }

    $.ajax({
      url: url,
      type: "POST",
      data: $('#form').serialize(), //+"&img_name="+b64,
      dataType: "JSON",
      success: function (data) {
        //if success close modal and reload ajax table
        $('#myModal').modal('hide');
        refresh();
        notify('Berhasil Simpan', 'rigth bottom', 'success'); //notify(text,position,style)
      },
      error: function (jqXHR, textStatus, errorThrown) {
        notify('Error proses', 'rigth bottom', 'error'); //notify(text,position,style)
      }
    });
  }
}
function remove() {
  document.getElementById('divdel').style.visibility = "visible";
  document.getElementById('divSave').style.visibility = "hidden";
  document.getElementById('delete').style.visibility = "hidden";
}
function removeyes() {

  $.ajax({
    url: "../binwasdal/Dalamgedung/hapus/" + idv,
    type: "POST",
    data: $('#form').serialize(),
    dataType: "JSON",
    success: function (data) {
      //if success close modal and reload ajax table
      $('#myModal').modal('hide');
      refresh();
      notify('Berhasil dihapus', 'rigth bottom', 'success'); //notify(text,position,style)
    },
    error: function (jqXHR, textStatus, errorThrown) {
      notify('Error proses', 'rigth bottom', 'error'); //notify(text,position,style)
    }
  });
}
function deleteImg(id) {

  $.ajax({
    url: "../binwasdal/Dalamgedung/hapusImg/" + id,
    type: "POST",
    data: $('#form').serialize(),
    dataType: "JSON",
    success: function (data) {
      //if success close modal and reload ajax table
      edit($('[name="id"]').val());
      notify('Berhasil dihapus', 'rigth bottom', 'success'); //notify(text,position,style)
    },
    error: function (jqXHR, textStatus, errorThrown) {
      notify('Error proses', 'rigth bottom', 'error'); //notify(text,position,style)
    }
  });
}
function removecancel() {
  document.getElementById('divdel').style.visibility = "hidden";
  document.getElementById('divSave').style.visibility = "visible";
  document.getElementById('delete').style.visibility = "visible";
}
