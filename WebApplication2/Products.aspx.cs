using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Checkout : System.Web.UI.Page
    {
        private double cookiePrice = 3.99;
        private double durianPrice = 6.99;
        private double pomegranitePrice = 2.99;
        private double bananaPrice = 0.59;
        private double plantPrice = 9.99;

        protected void Page_Load(object sender, EventArgs e)
        {
            setPriceLabel(cookiePrice, cookiePriceLabel);
            setPriceLabel(durianPrice, durianPriceLabel);
            setPriceLabel(pomegranitePrice, pomegranitePriceLabel);
            setPriceLabel(bananaPrice, bananaPriceLabel);
            setPriceLabel(plantPrice, plantPriceLabel);
        }

        protected void setPriceLabel(double price, Label lab)
        {
            lab.Text = string.Format("{0:C2}   ", price);
        }

        protected void pC_Click(object sender, EventArgs e)
        {
            changeTB(true, cookieQ);
        }

        protected void mC_Click(object sender, EventArgs e)
        {
            changeTB(false, cookieQ);
        }

        protected void changeTB(bool add, TextBox tb)
        {
            int num;
            int.TryParse(tb.Text, out num);
            if (add)
            {
                num++;
            }
            else if (num > 0)
            {
                num--;
            }
            tb.Text = num.ToString();
        }

        protected void pD_Click(object sender, EventArgs e)
        {
            changeTB(true, durianQ);
        }

        protected void mD_Click(object sender, EventArgs e)
        {
            changeTB(false, durianQ);
        }

        protected void pP_Click(object sender, EventArgs e)
        {
            changeTB(true, pomeQ);
        }

        protected void mP_Click(object sender, EventArgs e)
        {
            changeTB(false, pomeQ);
        }

        protected void bP_Click(object sender, EventArgs e)
        {
            changeTB(true, bananaQ);
        }

        protected void bM_Click(object sender, EventArgs e)
        {
            changeTB(false, bananaQ);
        }

        protected void plP_Click(object sender, EventArgs e)
        {
            changeTB(true, plantQ);
        }

        protected void plM_Click(object sender, EventArgs e)
        {
            changeTB(false, plantQ);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["cookieQ"] = cookieQ.Text;
            Session["durianQ"] = durianQ.Text;
            Session["pomeQ"] = pomeQ.Text;
            Session["bananaQ"] = bananaQ.Text;
            Session["plantQ"] = plantQ.Text;
            Response.Redirect("CheckoutForm.aspx");
        }
    }
}