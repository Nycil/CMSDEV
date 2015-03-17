function check_defaults(object, val, defaultVal)
{
	if(defaultVal==val)
	{
		object.value="";
	}
}
function check_defaults2(object, val, defaultVal)
{
	if(val=="")
	{
		object.value=defaultVal;
	}
}
function checkForm()
{
	if(document.contactus.First_Name.value=="" || document.contactus.First_Name.value=="First Name")
	{
		alert("Please Enter First Name");
		document.contactus.First_Name.focus();
		return false;
	}
	if(document.contactus.Last_Name.value=="" || document.contactus.Last_Name.value=="Last Name")
	{
		alert("Please Enter Last Name");
		document.contactus.Last_Name.focus();
		return false;
	}
	if(document.contactus.Phone.value=="" || document.contactus.Phone.value=="Phone")
	{
		alert("Please Enter Phone");
		document.contactus.Phone.focus();
		return false;
	}
	if(document.contactus.Email.value=="" || document.contactus.Email.value=="Email")
	{
		alert("Please Enter Email");
		document.contactus.Email.focus();
		return false;
	}
	if(document.contactus.Zip_Code.value=="" || document.contactus.Zip_Code.value=="Zip Code")
	{
		alert("Please Enter Zip Code");
		document.contactus.Zip_Code.focus();
		return false;
	}
	if(document.contactus.Case.value=="" || document.contactus.Case.value=="Describe Your Case")
	{
		alert("Please Enter Case Details");
		document.contactus.Case.focus();
		return false;
	}
	if(document.contactus.Date_Incident_Occured.value=="" || document.contactus.Date_Incident_Occured.value=="Date Incident Occured")
	{
		alert("Please Enter Date Incident Occured");
		document.contactus.Date_Incident_Occured.focus();
		return false;
	}
	if(document.contactus.disclaimer.checked==false)
	{
		alert("Please Read And Check Disclaimer");
		return false;
	}
}
// JavaScript Document