    var save_method;
    var table;
    loadview();

    function loadview(){
      document.getElementById("edit").style.visibility = "visible";
      document.getElementById("Save").style.visibility = "hidden";
      document.getElementById("batal").style.visibility = "hidden";

      var html = "";
      $.ajax({
        url : "../monevspm/Monevspm/getspm",
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
          html += '<table id="example1" class="table table-bordered table-hover table-responsive"><thead>'
                  +'<tr>'
                  +'<th>No</th>'
                  +'<th>SPM</th>'
                  +'<th>Target</th>'
                  +'<th>TW I</th>'
                  +'<th>TW II</th>'
                  +'<th>TW III</th>'
                  +'<th>TW IV</th>'
                  +'</tr></thead><tbody';

          data.forEach(function(item){
            html += '<tr><td>'+item.no+'</td>'
                  +'<td>'+item.spm+'</td>'
                  +'<td>'+isnull(item.target)+'</td>'
                  +'<td>'+isnull(item.tw1)+'</td>'
                  +'<td>'+isnull(item.tw2)+'</td>'
                  +'<td>'+isnull(item.tw3)+'</td>'
                  +'<td>'+isnull(item.tw4)+'</td></tr>';
          });
          html += '</tbody></table>'; 
          document.getElementById('monev').innerHTML = html;
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
      });
    }

    function loadedit(){
      document.getElementById("edit").style.visibility = "hidden";
      document.getElementById("Save").style.visibility = "visible";
      document.getElementById("batal").style.visibility = "visible";

      var html = "";
      $.ajax({
        url : "../monevspm/Monevspm/getspm",
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
          html += '<table id="example2" class="table table-bordered table-hover table-responsive">'
                  +'<tr>'
                  +'<th>No</th>'
                  +'<th>SPM</th>'
                  +'<th>Target</th>'
                  +'<th>TW I</th>'
                  +'<th>TW II</th>'
                  +'<th>TW III</th>'
                  +'<th>TW IV</th>'
                  +'</tr>';

          data.forEach(function(item){
            html += '<tr><td>'+item.no+'</td>'
                  +'<td>'+item.spm+'</td>'
                  +'<td><input type=text value="'+isnull(item.target)+'" name="target_'+item.no+'"/></td>'
                  +'<td><input type=text value="'+isnull(item.tw1)+'" name="tw1_'+item.no+'"/></td>'
                  +'<td><input type=text value="'+isnull(item.tw2)+'" name="tw2_'+item.no+'"/></td>'
                  +'<td><input type=text value="'+isnull(item.tw3)+'" name="tw3_'+item.no+'"/></td>'
                  +'<td><input type=text value="'+isnull(item.tw4)+'" name="tw4_'+item.no+'"/></td></tr>';
          });
          html += '</table>'; 
          document.getElementById('monev').innerHTML = html;
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
      });
    }

    function isnull(str){
      if (!str){
        return "";
      }else{
        return str;
      }
    }
    
    function notify(text,position,style) {
      $.notify(text, { position:position,className:style});
    }
    
    function simpan(){
    $.ajax({
            url : "../monevspm/Monevspm/Simpan",
            type: "POST",
            data: $('#form').serialize(),
            dataType: "JSON",
            success: function(data)
            {
            loadview();
            //if success close modal and reload ajax table
            notify('Berhasil Simpan','rigth bottom','success'); //notify(text,position,style)
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
              notify('Error proses','rigth bottom','error'); //notify(text,position,style)
            }
        });
      }
