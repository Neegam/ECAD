<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.awt.Font"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.GradientPaint"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int width=155,height=50;
BufferedImage buff=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);

Graphics2D g2d=buff.createGraphics();
GradientPaint gp=new GradientPaint(0,0,Color.RED,0,height/2,Color.WHITE,true);

g2d.setPaint(gp);
Font f=new Font("Bauhnas 93",Font.BOLD,22);
g2d.setFont(f);
g2d.fillRect(0,0,width,height);
g2d.setColor(new Color(0,153,255));
String data="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
String captcha="";
char ch[]=data.toCharArray();

for(int i=0;i<5;i++)
{
	int j=(int) ((Math.random()*62));
	captcha=captcha+ch[j];
}
response.setContentType("image/png");
g2d.drawString(captcha,0,35);
g2d.dispose();
OutputStream os=response.getOutputStream();
ImageIO.write(buff, "png", os);
os.close();

%>

</body>
</html>