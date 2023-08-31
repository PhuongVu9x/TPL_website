using System.Collections.Generic;

namespace TPL_Web.Models
{
    public sealed partial class TPLRes
    {
        public class Slider
        {
            public string Active { get; set; }
            public List<SliderItem> SliderItems { get; set; }
        }

        public class SliderItem
        {
            public string Si_Title { get; set; }
            public string Si_Intro { get; set; }
            public string Si_Description { get; set; }
            public string Si_Icon { get; set; }
            public string Si_Thumbnail { get; set; }
        }
    }
}