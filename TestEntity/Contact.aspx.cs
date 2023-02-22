using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestEntity
{
    public partial class Contact : Page
    {
        JobsDBEntities db = new JobsDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            this.refreshdata();
            //use linq to get data
            JobsDBEntities db = new JobsDBEntities();
            var myJobs = (from j in db.Jobs select j).ToList();

        }
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grd_jobs.PageIndex = e.NewPageIndex;
            this.refreshdata();
        }
        private void refreshdata()
        {

            grd_jobs.DataSource = db.Jobs.ToList();
            grd_jobs.DataBind();
        }
    }
}