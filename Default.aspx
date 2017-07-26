<%@ Page Title="Household Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--title and intro-->
    <div class="well text-center">
        <h2>Household Calculator</h2>
        <h4>With only a few simple steps you can analyse the monthly expenses of your household</h4>
    </div>


    <div class="panel panel-default">
        <div class="panel-body">
            <div class="row">

                <!--FORM SECTION BEGINS-->
                <div class="col-sm-6">


                    <h4>Type in your monthly income</h4>
                    <asp:TextBox ID="tbIncome" runat="server" placeholder="0.00"></asp:TextBox>
                    <asp:CompareValidator ID="cvalIncome" runat="server" Type="Currency" ControlToValidate="tbIncome" Display="Dynamic" Text="Please use numbers only" CssClass="alert-danger" Operator="DataTypeCheck"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbIncome" CssClass="alert-danger" Display="Dynamic" Text="This field is required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <h4>... and enter your expenses here</h4>



                    <asp:Table ID="Table1" runat="server" BorderStyle="None" Width="460px" Height="48px" CellPadding="6">

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" Font-Bold="True">Rent</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="tbRent" runat="server" placeholder="0.00"></asp:TextBox>

                            </asp:TableCell>
                            <asp:TableCell ID="vRent" runat="server">
                                <asp:CompareValidator ID="cvalRent" runat="server" ControlToValidate="tbRent" Type="Currency" Text="Not a valid number" Display="Dynamic" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>

                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" Font-Bold="True">Travel</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="tbTravel" runat="server"></asp:TextBox>

                            </asp:TableCell>
                            <asp:TableCell ID="vTravel" runat="server" HorizontalAlign="NotSet">
                                <asp:CompareValidator ID="cvalTravel" runat="server" ControlToValidate="tbTravel" Type="Currency" Text="Not a valid number" Display="Dynamic" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>

                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" Font-Bold="True">Household Bills</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="tbBills" runat="server"></asp:TextBox>

                            </asp:TableCell>
                            <asp:TableCell ID="vBills" runat="server">
                                <asp:CompareValidator ID="cvalBills" runat="server" ControlToValidate="tbBills" Type="Currency" Text="Not a valid number" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>

                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" Font-Bold="True">Mobile Phone</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>

                            </asp:TableCell>
                            <asp:TableCell ID="vMobile" runat="server">
                                <asp:CompareValidator ID="cvalMobile" runat="server" ControlToValidate="tbMobile" Type="Currency" Text="Not a valid number" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>

                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" Font-Bold="True">Food Shopping</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="tbFood" runat="server"></asp:TextBox>

                            </asp:TableCell>
                            <asp:TableCell ID="vshopping" runat="server">
                                <asp:CompareValidator ID="cvalFood" runat="server" ControlToValidate="tbFood" Type="Currency" Text="Not a valid number" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>

                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" Font-Bold="True">Gym</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="tbGym" runat="server"></asp:TextBox>

                            </asp:TableCell>
                            <asp:TableCell ID="vGym" runat="server">
                                <asp:CompareValidator ID="cvalGym" runat="server" ControlToValidate="tbGym" Type="Currency" Text="Not a valid number" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>

                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow runat="server">
                            <asp:TableCell runat="server" Font-Bold="True">Other Expenses</asp:TableCell>
                            <asp:TableCell runat="server">
                                <asp:TextBox ID="tbOther" runat="server"></asp:TextBox>

                            </asp:TableCell>
                            <asp:TableCell ID="vOther" runat="server">
                                <asp:CompareValidator ID="cvalOther" runat="server" ControlToValidate="tbOther" Type="Currency" Text="Not a valid number" Display="Dynamic" Operator="DataTypeCheck" CssClass="alert-danger"></asp:CompareValidator>

                            </asp:TableCell>
                        </asp:TableRow>

                    </asp:Table>

                    <br />
                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />

                </div>
                <!--FORM SECTION ENDS-->

                <!--CHART SECTION BEGINS-->
                <div class="col-sm-6">

                    <h3>
                        <asp:Label ID="resultmessage" runat="server"></asp:Label>

                    </h3>
                    <br />

                    <div class="row">
                        <div class="col-md-12 text-center">
                            <div id="chartContainer" style="height: 400px; width: 100%;">
                                <div id="chartPlaceholder"></div>
                            </div>
                        </div>
                    </div>

                    <asp:Button ID="reset" runat="server" OnClick="reset_Click" Text="Reset" />
                </div>
                <!--CHART SECTION ENDS-->

            </div>

        </div>
    </div>

</asp:Content>
