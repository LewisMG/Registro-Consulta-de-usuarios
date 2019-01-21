<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="cUsuario.aspx.cs" Inherits="ComunicacionesMendozaWeb.Consultas.cUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="jumbotron">
        <h5 class="display-4">Consulta de Usuarios</h5>
        <br>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-2">
                <asp:Label Text="Filtro"  runat="server" />
                <asp:DropDownList ID="FiltroDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>UsuarioId</asp:ListItem>
                    <asp:ListItem>Nombre</asp:ListItem>
                    <asp:ListItem>Tipo</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group col-md-3">
                <asp:Label ID="Label1" runat="server" Text="Criterio">Criterio:</asp:Label>
                <asp:TextBox ID="CriterioTextBox" AutoCompleteType="Disabled" class="form-control input-group" runat="server"></asp:TextBox>
            </div>
            <div class="col-lg-1 p-0">
                <asp:Button ID="BtnBuscar" class="form-control btn btn-primary btn-sm" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
            </div>
        </div>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-2">
                <asp:Label Text="Desde" runat="server" />
                <asp:TextBox ID="DesdeTextBox" class="form-control input-group" TextMode="Date" runat="server" />
            </div>
            <div class="form-group col-md-2">
                <asp:Label Text="Hasta" runat="server" />
                <asp:TextBox ID="HastaTextBox" class="form-control input-group" TextMode="Date" runat="server" />
            </div>
        </div>
        <div class="form-row justify-content-center">
            <asp:GridView ID="UsuarioGridView" runat="server" class="table table-condensed table-bordered table-responsive" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="LightSkyBlue" />
                <Columns>
                    <asp:BoundField DataField="UsuarioId" HeaderText="Usuario Id"/>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre"/>
                    <asp:BoundField DataField="NombreUser" HeaderText="Usuario"/>
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña"/>
                    <asp:BoundField DataField="vContraseña" HeaderText="Verificación"/>
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo"/>
                    <asp:BoundField DataField="TotalVendido" HeaderText="TotalVendido"/>
                </Columns>
                <HeaderStyle BackColor="LightCyan" Font-Bold="True" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
