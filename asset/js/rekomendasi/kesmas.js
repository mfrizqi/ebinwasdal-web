$(document).ready( function () {
    oTable = $('#example5').DataTable( {
        "scrollX": true,
        "ajax": {
          "url": "../rekomendasi/Kesmas/getlist",
          "type": "GET"
        },
        "columns": [
            {"data": "id",
           'render': function (data, type, full, meta) {
                    return '<a href= "#" onclick="edit('+data+')" style="width: 80px" class="btn btn-info" role="button"><span class="fa fa-edit" aria-hidden="true"></span> Edit</a>'
                    +'<a href= "#" onclick="remove('+data+')" style="width: 80px" class="btn btn-warning" role="button"><span class="fa fa-trash" aria-hidden="true"></span> Delete</a>';
                }
            },
            { "data": "jenis" }, //1
            { "data": "keterangan" }, //2
            { "data": "kesmas1" }, //3
            { "data": "tu2" }, //3
            { "data": "kasudin3" }, //3
            { "data": "tu4" } //3
        ]
        } );

    var buttons = new $.fn.dataTable.Buttons(oTable, {
                "scrollX": true,
                 buttons: [
                   {extend : 'excel',
                    text: '<span class="fa fa-file-excel-o" aria-hidden="true"></span> Export Excel',
                    className: 'btn btn-success'}
                ]
            }).container().appendTo($('#buttons'));
      
     $('#search').keyup(function(){
      oTable.search($(this).val()).draw() ;
      })

    } );
    var save_method;
    var table;

    function tafsirlahir()
    {
      var myString = $('[name="bml_hr_prtma_hd_trkhr"]').val(); //xml nodeValue from time element
      var array = new Array();

      //split string and store it into array
      array = myString.split('-');

      //from array concatenate into new date string format: "DD.MM.YYYY"
      var newDate;

      if (array[1] <=3){
        newDate = (array[0] + "-" + (parseInt(array[1]) + 9) + "-" + (parseInt(array[2])+7));
      }
      else {
        newDate = ((parseInt(array[0]) + 1) + "-" + (parseInt(array[1]) - 3) + "-" + (parseInt(array[2])+7));
      }

      //console.log(newDate);
      $('[name="bml_hr_tfr_sln"]').val(newDate);
    }

    function validasi(){
      var validasi = true;
      var text ="";
      if ($('[name="jenis"]').val() == ""){
        text += "- Jenis kesmas tidak boleh kosong <br> ";
        validasi = false;
      }
      if ($('[name="keterangan"]').val() == ""){
        text += "- Keterangan tidak boleh kosong ";
        validasi = false;
      }
      if (text != ""){
        var str = '<div class="bg-gray text-red text-left alert alert-dismissible"><button id="closealert" class="close" aria-hidden="true" type="button" data-dismiss="alert">×</button>'+text+'</div>';
        $('#valid').html(str);
      }
      return validasi;
    }

    function notify(text,position,style) {
      $.notify(text, { position:position,className:style});
    }

    function refresh(){
        var table = $('#example5').DataTable();
        table.ajax.reload( function ( json ) {
            console.log(json.lastInput);
        } );
    }
    function tambah(){
      save_method = 1;

      document.getElementById("form").reset();
      $('#closealert').click();

      $('#myModal').modal('show');
      $('#myModalLabel').text('Tambah Baru');
    }
    function edit(id){
      save_method = 2;

      document.getElementById("form").reset();
      $('#closealert').click();

      $.ajax({
        url : "../rekomendasi/Kesmas/Edit/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
            $('[name=id]').val(data.id);
            $('[name=keterangan]').val(data.keterangan);
            $('[name=jenis]').val(data.jenis);
            $('[name=kesmas1]').val(data.kesmas1);
            $('[name=tu2]').val(data.tu2);
            $('[name=kasudin3]').val(data.kasudin3);
            $('[name=tu4]').val(data.tu4);
 
            $('#myModal').modal('show');

            $('#myModalLabel').text('Edit Data');

        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            notify('Error proses','rigth bottom','error'); //notify(text,position,style)
        }
      });
    }
    function simpan(){
      if (validasi()){
      if (save_method == 1){
          var url = "../rekomendasi/Kesmas/Simpan";
      }else {
        var url = "../rekomendasi/Kesmas/Update";
      }
    $.ajax({
            url : url,
            type: "POST",
            data: $('#form').serialize(),
            dataType: "JSON",
            success: function(data)
            {
               //if success close modal and reload ajax table
            $('#myModal').modal('hide'); 
            refresh();
            notify('Berhasil Simpan','rigth bottom','success'); //notify(text,position,style)
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
              notify('Error proses','rigth bottom','error'); //notify(text,position,style)
            }
        });
      } 
    }
    function remove(id)
    {
      $('#myModalremove').modal({
        backdrop: 'static',
        keyboard: false
      })
      .one('click', '#delete', function(e) {
        $.post("../rekomendasi/Kesmas/hapus/" + id, function( data ) {
          console.log(id);
          refresh();
          notify('Data berhasil dihapus','rigth bottom','success');
          },"json");
      });
    }
