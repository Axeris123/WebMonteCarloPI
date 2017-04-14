<%@ Page Title="Monte Carlo PI" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebMonteCarloPI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<fieldset>    

     <h1>Approximating PI using the Monte Carlo method</h1>
    <br />
     <p>On this page you can approximate the PI value using the Monte Carlo method. Read the "About" page if you are feeling lost!</p>
    <br/>

    <div class="form-group">
        <asp:Label ID="LBIterations" class="col-md-4 control-label" runat="server" Text="How many random points? (>0)"></asp:Label>
        <asp:TextBox ID="TBIterations" class="form-control input-md" runat="server" type="number"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="LBSide" class="col-md-4 control-label" runat="server" Text="How big should the square's side be? (100-800)"></asp:Label>
        <asp:TextBox ID="TBSide" class="form-control input-md" runat="server" type="number"></asp:TextBox>
    </div>
    
    <div class="form-group">
        <asp:Button id="BTCalculate" name="BTCalculate" class="btn btn-primary" runat="server" Text="Calculate!" OnClick="BTCalculate_Click"/>     
        <asp:Label ID="LBWarning" runat="server" Text=""></asp:Label>        
    </div>

    <div class="form-group">
        <asp:Label ID="LBResult" runat="server" Text=""></asp:Label>
    </div>
     
    <asp:Image ID="Image" runat="server"/>
     
</fieldset>
    
</asp:Content>

