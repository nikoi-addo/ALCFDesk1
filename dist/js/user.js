var xmlhttp = new XMLHttpRequest();
var userinput = document.getElementById('vcode').value;
var vempty1 = document.getElementById('vempty1');
var vempty = document.getElementById('vempty');
var checkbox0 = document.getElementById('checkbox0');

//Check if the usercode is valid
function uattendance() {

  if (userinput.search('ALC') == 0) {
    verifycode(userinput);
  }

  else if(userinput.search('ALC') == -1){
    vempty1.innerHTML = "Go back and enter a correct code";
    vempty1.getAttributeNode("class").value = "alert alert-danger";
    document.getElementById("vsubmit1").disabled = true;
    document.getElementById('checkbox0').disabled = true;
  }
}

function verifycode(sstring){
  xmlhttp.onreadystatechange = function() {
    if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
      //Show user information
      document.getElementById('response').innerHTML = xmlhttp.responseText;
      vempty1.innerHTML = "";
      vempty1.getAttributeNode("class").value = "";
      document.getElementById("vsubmit1").disabled = false;
      checkbox0.disabled = false;
    }
  };
  //Connect and submit postid and userid using POST method
  xmlhttp.open("POST", "ops/verifycode.php", true);
  xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xmlhttp.send("usercode="+sstring);
}

// On present display that user has been marked as been present
function regupdate() {
  var regupdtresponse = document.getElementById('regupdtresponse');

  xmlhttp.onreadystatechange = function() {
    if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
      document.getElementById('fs-subtitle1').innerHTML = xmlhttp.responseText;
      regupdtresponse.innerHTML = "User recorded as been present";
      regupdtresponse.getAttributeNode("class").value = "alert alert-success";
    }
  };
  //Connect and submit postid and userid using POST method
  xmlhttp.open("POST", "ops/regupdate.php", true);
  xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xmlhttp.send("usercode="+userinput);
}
