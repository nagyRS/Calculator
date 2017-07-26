using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    // fields to store data input
    double income;
    double rent;
    double travel;
    double bills;
    double mobile;
    double food;
    double gym;
    double other;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        income = GetData(tbIncome);
        rent = GetData(tbRent);
        travel = GetData(tbTravel);
        bills = GetData(tbBills);
        mobile = GetData(tbMobile);
        food = GetData(tbFood);
        gym = GetData(tbGym);
        other = GetData(tbOther);


        double total = rent + travel + bills + mobile + food + gym + other;

        double result = total / income * 100;

        double saved = income - total;


        if (total >= income)
        {
            resultmessage.Text = "Oops! It looks like you spend more than you earn.";
        }
        else
        {
            resultmessage.Text = "You spent " + Math.Round(result, 2).ToString() + "% of your salary and you saved £" + Math.Round(saved, 2).ToString();

            ClientScript.RegisterStartupScript(GetType(), "draw", "draw(" + rent + "," + travel + "," + bills + "," + mobile + "," + food + "," + gym + "," + other + "," + saved + ");", true);

        }
    }


    //method to get data form the table
    private double GetData(TextBox tbValue)
    {
        if (!string.IsNullOrWhiteSpace(tbValue.Text))
        {
            return double.Parse(tbValue.Text);
        }
        else
        {
            tbValue.Text = "0";
            return 0;
        }

    }


protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);
    }
}