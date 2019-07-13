function uattendance() {
  var userinput = document.getElementById('vcode').value;

  if (userinput.search('ALCF') == 0) {
    document.getElementById('vempty1').innerHTML = "";
    document.getElementById('vempty1').getAttributeNode("class").value = "";
    document.getElementById("vsubmit1").disabled = false;
    document.getElementById('checkbox0').disabled = false;
    alert('success');

  //

  }
  else if(userinput.search('ALCF') == -1){
    document.getElementById('vempty1').innerHTML = "Go back and enter a correct code";
    document.getElementById('vempty1').getAttributeNode("class").value = "alert alert-danger";
    document.getElementById("vsubmit1").disabled = true;
    document.getElementById('checkbox0').disabled = true;
  }
}

function disableverifybutton(){
  var userinput = document.getElementById('vcode').value;
  if (userinput =="") {
    //Disable verify button if userinput is empty
    document.getElementById('vsubmit').disabled = true;
    //Display alert
    document.getElementById('vempty').innerHTML = "Enter a code to verify";
    document.getElementById('vempty').getAttributeNode("class").value = "alert alert-danger";
  }
  else {
    //Enable verify button
    document.getElementById("vsubmit").disabled = false;
  }
  setTimeout(closealert, 5000);

  function closealert(){
    $("#vempty").alert("close");
  }
}
