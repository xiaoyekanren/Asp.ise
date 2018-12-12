<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Zzm.WebForm2" %>

<!DOCTYPE html>

<script runat="server">

  protected void SubmitBtn_Click(object sender, EventArgs e)
  {
    Body.Attributes["bgcolor"] = ColorSelect.Value;
  }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  <title>HtmlGenericControl Example</title> 
</head>

<body id="Body" 
      runat="server">

     <h3>HtmlGenericControl Example</h3>

     <form id="form1" runat="server">
     <div>
       <br />
       Select a background color for the page: <br />
       <select id="ColorSelect" 
               runat="server">
           <option>White</option>
           <option>LightBlue</option>
           <option>LightGreen</option>
           <option>Yellow</option>
       </select>

       <input type="submit" 
              runat="server" 
              value="Apply" 
              onserverclick="SubmitBtn_Click" id="Submit1" />
     </div>
     </form>

 </body>
 </html>