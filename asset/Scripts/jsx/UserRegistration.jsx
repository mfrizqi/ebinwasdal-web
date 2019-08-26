
var FormUser= React.createClass({
    render: function() {
        return(
             <div>
                 <form>
                     <div class="form-group">
                        <label for="inputPassword3">Password</label>
                        <input type="password" className="form-control" id="inputPassword3" placeholder="Password"/>
                     </div>
                     <div className="form-group">
                        <label htmlFor="exampleInputEmail1">Nama</label>
                        <input type="text" className="form-control" id="Nama"  placeholder="Nama" />
                     </div>
                     <div class="form-group">
                        <label htmlFor="exampleInputEmail1">No KTP</label>
                        <input type="text" className="form-control" id="NoKTP" placeholder="No KTP" />
                        <input type="file" id="UploadKTP" placeholder="Upload KTP" />
                     </div>
                      <div className="form-group">
                        <label htmlFor="exampleInputEmail1">Email address</label>
                        <input type="email" className="form-control" id="Email" placeholder="Email" />
                      </div>
                      <div className="form-group">
                        <label htmlFor="exampleInputPassword1">Password</label>
                        <input type="password" className="form-control" id="exampleInputPassword1" placeholder="Password" />
                      </div>
                     <div className="form-group">
                        <label htmlFor="exampleInputPassword1">Re-Type Password</label>
                        <input type="password" className="form-control" id="ReTypePassword" placeholder="Re-Type Password" />
                     </div>
                      <button type="submit" className="btn btn-primary">Submit</button>
                 </form>
             </div>
            );
    }
});



ReactDOM.render(
  React.createElement(FormUser, null),
  document.getElementById('Container')
);
