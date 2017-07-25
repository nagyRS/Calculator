<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Styles/bootstrap.css" />
    <link href='https://fonts.googleapis.com/css?family=Philosopher:400,700' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="Styles/Styles.css" />
    <script src="Scripts/canvasjs.min.js"></script>
    <script src="Scripts/chartScript.js"></script>
    <title></title>
</head>
<body>
    <div class="container heading">
        <div class="model text-center">
            <h1>Holiday Budget Calculator</h1>
            <h3>Enter your estimated holiday expenses below and click the calculate button at the bottom to get your total budget shown in a chart.
                You only need to fill in the details relevant to your own holidays, everything else can be left blank.
            </h3>
        </div>

    </div>
    <hr class="top"/>
    <form id="form1" runat="server" class="form-horizontal">
        <div class="container content">
            <br />
            <div class="row">
                <asp:ValidationSummary ID="vs" runat="server" CssClass="alert-danger" HeaderText="Enter only digits in the following fields:" 
                    BorderStyle="Solid" BorderWidth="2px" BorderColor="Red" />
                <br />
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Flight</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbFlight" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvFlight" runat="server" ControlToValidate="tbFlight" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Flight" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Taxi</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbTaxi" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvTaxi" runat="server" ControlToValidate="tbTaxi" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Taxi" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Car Expenses</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbCarExpenses" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvCar" runat="server" ControlToValidate="tbCarExpenses" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Car Expenses" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Train</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbTrain" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvTrain" runat="server" ControlToValidate="tbTrain" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Train" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Bus</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbBus" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvBus" runat="server" ControlToValidate="tbBus" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Bus" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Hotel</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbHotelNights" runat="server" CssClass="form-control" Style="display: inline;" Width="50px"></asp:TextBox>
                            <asp:CompareValidator ID="cvHotelNights" runat="server" ControlToValidate="tbHotelNights" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Hotel Nights" Display="Dynamic" CssClass="text-danger"></asp:CompareValidator>
                            nights at
                            <asp:TextBox ID="tbHotelPerNight" runat="server" CssClass="form-control" Style="display: inline;" Width="50px"></asp:TextBox>
                            /night
                            <asp:CompareValidator ID="cvHotelPerNight" runat="server" ControlToValidate="tbHotelPerNight" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Hotel price per night" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Meals</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbMeals" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvMeals" runat="server" ControlToValidate="tbMeals" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Meals" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Activities</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbActivities" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvActivities" runat="server" ControlToValidate="tbActivities" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Activities" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Spending Money</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbSpendingMoney" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvSpending" runat="server" ControlToValidate="tbSpendingMoney" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Spending Money" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <label class="control-label">Miscellaneous</label>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="tbMisc" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                            <asp:CompareValidator ID="cvMisc" runat="server" ControlToValidate="tbMisc" Type="Currency"
                                Operator="DataTypeCheck" Text="*" ErrorMessage="Miscellaneous" Display="Static" CssClass="text-danger"></asp:CompareValidator>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" cssclass="btn-primary" OnClick="btnCalculate_Click" />
                        </div>
                    </div>
                    <br />
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <div id="chartContainer" style="height: 400px; width: 100%;">
                                <div id="chartPlaceholder"></div>
                                <div id="noDataPlaceholder" class="h1"></div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-4 col-md-offset-1">
                            <asp:label ID="lblChartType" runat="server" Visible="False">Change chart type</asp:label>
                        </div>
                        <div class="col-md-6">
                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"
                                Font-Size="Medium" ForeColor="Black" Visible="False" CausesValidation="True">
                                <asp:ListItem Value="pie" Selected="True">Pie</asp:ListItem>
                                <asp:ListItem Value="doughnut">Doughnut</asp:ListItem>
                                <asp:ListItem Value="column">Column</asp:ListItem>
                                <asp:ListItem Value="bar">Bar</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
