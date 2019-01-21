<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="ComunicacionesMendozaWeb.Registros.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Registro de usuarios</h2>
        <div class="form-horizontal col-md-12" role="form">
            <div class="form-group row">
                <label class="control-label col-sm-2" for="usarioid">Usuario Id:</label>
                <div class="col-sm-1 col-md-4 col-xs6">
                    <asp:TextBox type="Number" class="form-control" ID="usuarioidTextBox" Text="0" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-1 col-md-4 col-xs6">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-primary btn-md" OnClick="BuscarButton_Click" />
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="nombres">Nombres:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="nombresTextBox" placeholder="Ingrese Nombres" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="nomUser">Usuario:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="nomUserTextBox" placeholder="Ingrese Usuario" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="contraseña">Contraseña:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="contraseñaTextBox" placeholder="Ingrese Contraseña" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="Vcontraseña">Verificar Contraseña:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="VcontraseñaTextBox" placeholder="Ingrese Contraseña" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="DropDownListUsuario">Tipo:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:DropDownList ID="DropDownListUsuario" class="form-control" runat="server">
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Usuario</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="tVendido">Total Vendido:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="tVendidoTextBox" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>

            <div class="panel">
                <div class="text-center">
                    <div class="form-group">
                        <asp:Button ID="BtnNuevo" runat="server" Text="Nuevo" class="btn btn-primary btn-lg" OnClick="BtnNuevo_Click" />
                        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" class="btn btn-primary btn-lg" OnClick="BtnGuardar_Click" />
                        <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" class="btn btn-primary btn-lg" OnClick="BtnEliminar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
