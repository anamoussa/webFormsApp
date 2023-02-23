using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace TestEntity
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.getData();
        }
        private void getData()
        {

            var grades = from G in db.Grades
                        join GG in db.GradeGroups on G.GradeGroup equals GG.GradeGroup1
                        select new { G.Grade1, G.GradeName, G.GradeAName, GG.GradeGroupName };
            grd_Grades.DataSource = grades;
            grd_Grades.DataBind();
        }
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grd_Grades.PageIndex = e.NewPageIndex;
            this.getData();
        }
        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            getData();
        }

        protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            getData();

        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            getData();
        }
    }
}