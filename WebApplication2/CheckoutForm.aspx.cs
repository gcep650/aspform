using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class CheckoutForm : System.Web.UI.Page
    {
        private double cookiePrice = 3.99;
        private double durianPrice = 6.99;
        private double pomegranitePrice = 2.99;
        private double bananaPrice = 0.59;
        private double plantPrice = 9.99;

        protected void Page_Load(object sender, EventArgs e)
        {

            Page lastPage = (Page)Context.Handler;
            try
            {

                double c = double.Parse((string)Session["cookieQ"]);
                double d = double.Parse((string)Session["durianQ"]);
                double p = double.Parse((string)Session["pomeQ"]);
                double b = double.Parse((string)Session["bananaQ"]);
                double pl = double.Parse((string)Session["plantQ"]);
                loadTotal(c, d, p, b, pl);
                totalL.Text = string.Format("{0:C2}", total(c, d, p, b, pl));
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                Response.Write("<script>alert('There was an error loading the checkout page. Please resubmit your order.')</script>");
                Server.Transfer("Products.aspx");
            }
        }

        protected void loadTotal(double cookieC, double durianC, double pomeC, double bananaC, double plantC)
        {
            itemsPurchased.Text += string.Format("{0} dozen(s) of cookies: {1:C2}\n", cookieC, cookieC * cookiePrice);
            itemsPurchased.Text += string.Format("{0} durian(s): {1:C2}\n", durianC, durianC * durianPrice);
            itemsPurchased.Text += string.Format("{0} group(s) of 3 pomegranites: {1:C2}\n", pomeC, pomeC * pomegranitePrice);
            itemsPurchased.Text += string.Format("{0} pound(s) of bananas: {1:C2}\n", bananaC, bananaC * bananaPrice);
            itemsPurchased.Text += string.Format("{0} plant(s): {1:C2}\n", plantC, plantC * plantPrice);
        }

        protected double total(double cookieC, double durianC, double pomeC, double bananaC, double plantC)
        {
            return (cookieC * cookiePrice) + (durianC * durianPrice) + (pomeC * pomegranitePrice) + (bananaC * bananaPrice) + (plantC * plantPrice);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Thanks for purchasing!')</script>");
            Server.Transfer("WebForm1.aspx");
        }
    }

}