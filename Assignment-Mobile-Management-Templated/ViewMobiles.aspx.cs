using Assignment_Mobile_Management_Templated.ADO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_Mobile_Management_Templated
{
    public partial class ViewMobiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MobileRepository mobileRepository = new MobileRepository();
            var mobiles = mobileRepository.GetMobiles();

            gridMobiles.DataSource = mobiles;
            gridMobiles.DataBind();

        }
    }
}
