function validate()
{
var name=document.getElementById("name").value;
if(name=='')
{
alert('Please fill all details.');
return false;
}
else if( password=='')
	{
	alert('Please fill all details.');
	return false;
	}
else
{
return true;
}
}