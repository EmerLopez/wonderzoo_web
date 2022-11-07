<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="wonderzoo_web.usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .nuevoEstilo1 {
            font-family: "comic Sans MS";
        }
        .auto-style2 {
            font-family: "comic Sans MS";
            font-size: xx-large;
        }
        .nuevoEstilo2 {
            font-family: "comic Sans MS";
        }
        .auto-style3 {}
        .auto-style4 {}
        .auto-style5 {
            height: 47px;
            width: 109px;
        }
    </style>
</head>
<body style="background-color: #74F882">
    <form id="form1" runat="server" >
        <div class="auto-style1">
            <center class="nuevoEstilo2">
                <br />
                <span class="auto-style2">Control de Usuarios</span><br />
                <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="idusuario" DataValueField="idusuario" CssClass="auto-style4" Height="16px" Width="133px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wonderzooConnectionString_usuarios %>" SelectCommand="SELECT [idusuario], [nombre] FROM [usuarios]"></asp:SqlDataSource>
            <br />
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idusuario" DataSourceID="SqlDataSource2" CssClass="auto-style3" Height="43px" Width="710px">
                <Columns>
                    <asp:BoundField DataField="idusuario" HeaderText="idusuario" InsertVisible="False" ReadOnly="True" SortExpression="idusuario" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
                    <asp:BoundField DataField="nivel" HeaderText="nivel" SortExpression="nivel" />
                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:wonderzooConnectionString_usuarios %>" SelectCommand="SELECT * FROM [usuarios] WHERE ([idusuario] = @idusuario)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="idusuario" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                </center>
            <br />
            <a href="default"><input type="button" value="Volver" class="auto-style5"></a>
            <br />
            <br />
            </div>
    </form>
</body>
</html>
