using Assignment_Mobile_Management_Templated.ADO;
using Assignment_Mobile_Management_Templated.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_Mobile_Management_Templated
{
    public partial class AddMobile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ResetForm();
            }

        }

        protected void btnAddMobile_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Mobile mobile = new Mobile();
                mobile.Name = txtName.Text;
                mobile.Description = txtDescription.Text;
                mobile.Price = Convert.ToInt32(txtPrice.Text);
                MobileRepository mobileRepository = new MobileRepository();
                mobileRepository.AddMobile(mobile);
                ResetForm();
                Server.Transfer("ViewMobiles.aspx");
            }
        }

        private void ResetForm()
        {
            txtName.Text = string.Empty;
            txtDescription.Text = string.Empty;
            txtPrice.Text = string.Empty;
        }

    }
}
