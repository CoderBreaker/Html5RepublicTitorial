function Demo() {
	
	var Name = document.getElementById("Name").value;
	var Email = document.getElementById("Email").value;
	var Phone = document.getElementById("Phone").value;
	var Address= document.getElementById("Address").value;
	var Comment = document.getElementById("Comment").value;
	
	confirm("you have entered:" + "\n Name:=> " + Name  + "\n Email:=> "+ Email +"\n Phone:=> "+ Phone +"\n Address:=>"+ Address +
		     "\n Comment:=>"+ comment +"\n \n Do you want to confirm these details ?");	
}
 
function show(val){
	  
	  if((val.value=="")||(val.value==null))
	  {
		  val.style.background="pink";
	  }else{
		  val.style.background="#fff";
	  }
  }
  
  function Onclick(){
	  alert("A click event generate on the Submit button ");
  }
  
    function AddEventHandler(){
    	var Button=document.getElementById("Button");
    	 if (Button.addEventListener){
    		 Button.addEventListener("click",Onclick,false);
    	 }
    }

    function RemoveEventHandler(){
    	var Button=document.getElementById("Button");
    	if(Button.removeEventListener){
    		Buttton.removeEventListener("click",Oncluck,false);
    	}
    }
