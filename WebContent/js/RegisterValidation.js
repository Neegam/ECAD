function formValidation()
{
	var fname=document.register.fname;
	var lname=document.register.lname;
	var con=document.register.con;
	var add=document.register.add;
	var gender=document.register.gender;
	var emailid=document.register.emailid;
	var pass=document.register.pass;
	var pass1=document.register.pass1;
	
	if(fn_val(fname))
		{
			if(ln_val(lname))
				{
				if(con_val(con))
					{
					if(add_val(add))
						{
						if(gen_val(gen))
							{
							if(email_val(emailid))
								{
								if(pass_val(pass,7,12))
									{
									if(pass1_val(pass1))
										{
										return true;
										}
									}
								}
							}
						}
					}
			}
	}
return false;
}

function fn_val(fname)
{
	var letter=/^[A-Za-z]+$/;
			if(fname.value.match(letter))
				{
				return true;
				}
			else
				{
				alert("first name must be an alphabet");
				fname.focus();
				return false;
				}
}

function ln_val(lname)
{
	var letter=/^[A-Za-z]+$/;
	if(lname.value.match(letter))
		{
		return true;
		}
	else
		{
		alert("last name must be an alphabet");
		lname.focus();
		return false;
		}
}

function add_val(add)
{
	var letter=/^[A-Za-z0-9_\.\-\&\ \/]+$/;
	if(add.value.match(letter))
		{
		return true;
		}
	else
		{
		alert("Enter Valid Address");
		add.focus();
		return false;
		}
}

function gen_val(gender)
{
	if(gen.value=="default")
		{
		alert("Please select gender form list");
		gen.focus();
		}
	else
		{
		return true;
		}

function email_val(add)
{
	var letter=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(emailid.value.match(letter))
		{
		return true;
		}
	else
		{
		alert("Enter valid emai id");
		emailid.focus();
		return false;
		}
}

function pass_val(pass,my,mx)
{
	var pass_len=pass.value.length;
	if(pass_len>=my && pass_len<=mx)
		{
		return true;
		}
	else
		{
		alert("Password must be between" +my+ "to" +mx);
		emailid.focus();
		return false;
		}
}

function pass1_val(pass1,my,mx)
{
	var pass1_len=pass.value.length;
	if(pass1_len>=my && pass1_len<=mx)
		{
		return true;
		}
	else
		{
		alert("Password must be between" +my+ "to" +mx);
		emailid.focus();
		return false;
		}
}
function loginvalidate()
{
	var email=document.login.emailid;
	var pass=document.login.pass;
	if(email_val(emailid))
		{
		if(pass_val(pass))
			{
			return true;
			}
		}
	return false;
	}
function emailid_val(add)
{
	var letter=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(emailid.value.match(letter))
		{
		return true;
		}
	else
		{
		alert("Enter valid emai id");
		emailid.focus();
		return false;
		}
}
	function pass1_val(pass,my,mx)
	{
		var pass_len=pass.value.length;
		if(pass_len>=my && pass_len<=mx)
			{
			return true;
			}
		else
			{
			alert("Password must be between" +my+ "to" +mx);
			emailid.focus();
			return false;
			}
}
function loginValidate()
{
	var emailid=document.login.emailid;
	var pass=document.login.pass;
	if(email_val(emailid))
		{
		if(pass_val(pass,7,12))
			{
			return true;
			}
		}
	return false;
	}
}