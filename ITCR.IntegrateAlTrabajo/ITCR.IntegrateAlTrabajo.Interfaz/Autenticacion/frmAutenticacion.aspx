<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAutenticacion.aspx.cs" Inherits="ITCR.IntegrateAlTrabajo.Interfaz.Autenticacion.frmAutenticacion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>

    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 743px;
        }
        .style7
        {
            width: 743px;
            height: 40px;
        }
        .style8
        {
            width: 225px;
            height: 40px;
        }
        .style9
        {
            width: 225px;
        }
        .style11
        {
            width: 445px;
        }
        .style13
        {
            width: 50px;
        }
    </style>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <table class="style1" align="center">
        <tr>
            <td class="style8">
                </td>
            <td class="style7" bgcolor="#00499A">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                <asp:Panel ID="PanelBanner2" runat="server" HorizontalAlign="Center">
                    <asp:Image ID="imgBanner2" runat="server" Height="200px" 
    ImageUrl="~/Multimedia/banner_autenticacion.jpg" Width="900px" />
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                <asp:Panel ID="Panel1" runat="server" BackColor="#00499A" Height="700px" 
                    Width="900px">
                    <table class="style1">
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style13">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11">
                                <asp:Label ID="lblAcercaBolsaTrabajo" runat="server" ForeColor="White" 
                                    Text="Acerca de la bolsa de trabajo" Font-Bold="True" Font-Size="18pt"></asp:Label>
                            </td>
                            <td class="style13">
                                &nbsp;</td>
                            <td colspan="2">
                                <asp:Label ID="lblIniciarSesion" runat="server" ForeColor="White" 
                                    Text="Iniciar sesión" Font-Bold="True" Font-Size="18pt"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style13">
                                &nbsp;</td>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style11" rowspan="5">
                                <asp:Label ID="lblTextoAcerca" runat="server" ForeColor="White" style="text-align:justify"
                                    Text="El proyecto a desarrollar es parte de la iniciativa “Empoderar y Emprender: las Personas Adultas Mayores Protagonistas y Agentes de Cambio”, el cual está centrado en hacer que los adultos mayores tengan un envejecimiento activo.  Este proyecto como un todo, comprende talleres y capacitaciones para los adultos mayores en los cuales se tratan diversos temas, con el fin de incidir efectivamente en un cambio en el estilo de vida de la persona adulta mayor, para que ésta alcance una mejor calidad de vida y se integre en su entorno personal, familiar y social."></asp:Label>
                            </td>
                            <td class="style13" rowspan="5">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="lblNombreUsuario" runat="server" ForeColor="White" 
                                    Text="Nombre de usuario"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblContraseña" runat="server" ForeColor="White" 
                                    Text="Contraseña"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar" 
                                    onclick="btnIniciarSesion_Click" CssClass="Boton" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:HyperLink ID="hlRegistrarPersona" runat="server" ForeColor="White" 
                                    NavigateUrl="~/AdultoMayor/frmRegistroAdultoMayor.aspx">Registrar persona</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="hlRegistrarEmpresa" runat="server" ForeColor="White" 
                                    NavigateUrl="~/Empresa/frmRegistroEmpresa.aspx">Registrar empresa</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        </table>
    </form>
</body>
</html>
