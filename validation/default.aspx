<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="validation._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

</head>
<body>
    <div class="container">
    <form id="form1" runat="server" class="form-horizontal">
        <h1>Tip Calculator</h1>
        <h4>Bill Details</h4>
        <div class="form-group">
            <label for="txtAmount">Amount:</label>
            <asp:TextBox ID="txtAmount" runat="server" required AutoCompleteType="Disabled" />
            <asp:RequiredFieldValidator CssClass="label label-danger" ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="Required" ControlToValidate="txtAmount" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator CssClass="label label-danger" ID="RangeValidator1" runat="server" ErrorMessage="Enter a number greater than 0" ControlToValidate="txtAmount" Type="Double" MinimumValue="0,01" MaximumValue="1000" Display="Dynamic"></asp:RangeValidator>
        </div>
        <div class="form-group">
            <label for="ddlPercent">Tip %:</label>
            <asp:DropDownList ID="ddlPercent" runat="server">
                <asp:ListItem Value=".1" Text="10%" />
                <asp:ListItem Value=".15" Text="15%" Selected="True" />
                <asp:ListItem Value=".2" Text="20%" />
            </asp:DropDownList>
        </div>
        <asp:Button ID="btnCalculate" CssClass="btn btn-primary" Text="Calculate Tip" runat="server" OnClick="btnCalculate_Click" />
        <asp:Panel runat="server" ID="pnlResults" Visible="false">
            <h4>Totals</h4>
            <div>
                <label for="lblTip">Tip Amount</label>
                <asp:Label ID="lblTip" runat="server" />
            </div>
            <div>
                <label for="lblTotal">Total:</label>
                <asp:Label ID="lblTotal" runat="server" />
            </div>
        </asp:Panel>
    </form>
</div>
</body>
</html>
