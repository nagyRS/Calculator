using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double flight;
    double taxi;
    double car;
    double train;
    double bus;
    double hotelNights;
    double hotelPerNight;
    double hotel;
    double meal;
    double activities;
    double spendingMoney;
    double misc;
    double transportation;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        lblChartType.Visible = true;
        DropDownList1.Visible = true;
        drawChart(getChartType());
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (DropDownList1.SelectedValue)
        {
            case "pie":
                drawChart("pie");
                break;
            case "doughnut":
                drawChart("doughnut");
                break;
            case "column":
                drawChart("column");
                break;
            case "bar":
                drawChart("bar");
                break;
        }
    }

    private void drawChart(string chartType)
    {
        flight = getData(tbFlight);
        taxi = getData(tbTaxi);
        car = getData(tbCarExpenses);
        train = getData(tbTrain);
        bus = getData(tbBus);
        hotelNights = getData(tbHotelNights);
        hotelPerNight = getData(tbHotelPerNight);
        hotel = hotelNights * hotelPerNight;
        meal = getData(tbMeals);
        activities = getData(tbActivities);
        spendingMoney = getData(tbSpendingMoney);
        misc = getData(tbMisc);

        transportation = flight + taxi + car + train + bus;

        double total = transportation + hotel + meal + activities + spendingMoney + misc;

        ClientScript.RegisterStartupScript(GetType(), "draw", "draw('" + chartType + "','" + transportation + "','" + hotel + "','" + meal + "','" + activities + "','" + spendingMoney + "','" + misc + "','" + total + "');", true);
    }



    private double getData(TextBox txtBoxValue)
    {
        if(!string.IsNullOrWhiteSpace(txtBoxValue.Text))
        {
            return double.Parse(txtBoxValue.Text);
        }
        else
        {
            txtBoxValue.Text = "0";
            return 0;
        }
    }

    private string getChartType()
    {
        return DropDownList1.SelectedValue;
    }
}