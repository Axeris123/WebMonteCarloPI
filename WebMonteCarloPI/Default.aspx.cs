using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMonteCarloPI
{
    public partial class _Default : Page
    {
        Bitmap bitm;
        Random rnd = new Random();

        public _Default()
        {
            bitm = new Bitmap(800, 800);
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }
       
        private void drawRectangle()
        {
           //throw new NotImplementedException();
            Graphics graphics = Graphics.FromImage(bitm);
            graphics.Clear(Color.White);

            Pen ellipsePen = new Pen(Color.Red, 5); //pen for ellipse            
            Pen rectanglePen = new Pen(Color.Black, 3); //pen for rectangle

            double piApproximation = 0;
            int total = 0;
            int numInCircle = 0;
            float x, y; // Coordinates of the random point.
            Int32 iterations = 0;
            int i = 0, side = 10;
            bool pass = false;       
                        
            try
            { 
                iterations = Convert.ToInt32(TBIterations.Text);

                if (iterations > 0 && iterations < 1000000) //check if iteration value is bigger than 0
                {
                    side = Convert.ToInt32(TBSide.Text);

                    if (side >= 100 && side <= 800) //check if the side size is legit
                    {
                        pass = true;
                        LBWarning.Text = "";
                    }
                }

            }
            catch (Exception error)
            {
                    //the actuall message is written below if somethings gone wrong (pass==false)
            }

            if (pass == false)
                LBWarning.Text = "Please enter correct values!";
            else
            {
                graphics.DrawRectangle(rectanglePen, new Rectangle(0, 0, side, side));
                graphics.DrawEllipse(rectanglePen, new Rectangle(0, 0, side, side));

                while (i < iterations)
                {
                    x = rnd.Next(0, side); // points in rectangle
                    y = rnd.Next(0, side);

                    graphics.FillRectangle(Brushes.Black, x, y, 2, 2); //drawing point       

                    if (x * x + y * y <= side * side) // Is the point in the circle?
                    {
                        ++numInCircle;
                    }
                    ++total;

                    i++;
                }

                piApproximation = 4.0 * ((double)numInCircle / (double)total);

                LBResult.Text = "Pi calculated with <b>" + iterations.ToString() + "</b> random points and <b>"+ side.ToString() +"</b> rectangle side size.\n";
                LBResult.Text = LBResult.Text + "Approximated Pi = " + piApproximation.ToString();

                // saving the image
                string path = Server.MapPath("~/Content/images/rect.jpg");
                bitm.Save(path, ImageFormat.Jpeg);
                Image.ImageUrl = "~/Content/images/rect.jpg";
                graphics.Dispose();
                bitm.Dispose();
            }
        }

        protected void BTCalculate_Click(object sender, EventArgs e)
        {
            drawRectangle();
        }
    }
}