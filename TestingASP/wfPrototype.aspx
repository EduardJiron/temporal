<%@ Page Title="Prototype" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfPrototype.aspx.cs" Inherits="TestingASP.wfPrototype" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <!DOCTYPE html>
<html>
<head>
    <title>Prototype Pattern</title>
   <link href="/Content/proto.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
           <div class="separator dflex-all-center mt-double">
        <h3 class="separator-text">roles:permisos</h3>
        <span class="separator-line br-default"></span>
    </div>

        <br />
       
        <div class="panelGestion">
             <asp:Label ID="RoleLabel" runat="server" Text="Rol:" />
        <asp:TextBox ID="RoleTextBox" runat="server" />
        <asp:Button ID="AddRoleButton" runat="server" Text="Agregar Role" OnClick="AddRoleButton_Click" />

       
        <asp:Label ID="PermissionLabel" runat="server" Text="Permiso:" />
        <asp:TextBox ID="PermissionTextBox" runat="server" />
       <div class="permissionB">
            <asp:Label ID="SelectRoleLabel" runat="server" Text="Seleccionar Rol:" />
        <asp:DropDownList ID="RoleDropDownList" runat="server" />
        <asp:Button ID="AddPermissionButton" runat="server" Text="Agregar Permiso" OnClick="AddPermissionButton_Click" />
       </div>
        <br />
        <br />
        <asp:Label ID="ResultLabel" runat="server" />
        <br />
        <br />
        </div>
        <br />
       <div class="tableP">
            <div class="tablaInter">
                <asp:GridView ID="RolesGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Rol" />
                <asp:TemplateField HeaderText="Permisos">
                    <ItemTemplate>
                        <asp:Repeater ID="PermissionsRepeater" runat="server" DataSource='<%# Eval("Permissions") %>'>
                            <ItemTemplate>
                                <%# Eval("Name") %>
                            </ItemTemplate>
                            <SeparatorTemplate>, </SeparatorTemplate>
                        </asp:Repeater>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
       </div>
    </form>
</body>
</html>

</asp:Content>
