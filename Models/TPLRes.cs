namespace TPL_Web.Models
{
    public sealed partial class TPLRes
    {
        private static TPLRes instance = null;
        private TPLRes() { }
        public static TPLRes Instance
        {
            get { instance = instance ?? new TPLRes(); return instance; }
        }
    }
}