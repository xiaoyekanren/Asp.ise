namespace Zzm.Common.ise
{

    public class ise
{
        private int ID;
        private string IP;
        private string PLACE;

        private string SYSTEM;
        private string PURPOSE;
        private string CPU;
        private string MEMORY;
        private string HARDDISK;
        private string GPU;
        private string MODEL;
        private string PURCHASEDATE;
        private string USER;




        public int ID1 { get => ID; set => ID = value; }
        public string IP1 { get => IP; set => IP = value; }
        public string PLACE1 { get => PLACE; set => PLACE = value; }

        public string SYSTEM1 { get => SYSTEM; set => SYSTEM = value; }
        public string PURPOSE1 { get => PURPOSE; set => PURPOSE = value; }
        public string CPU1 { get => CPU; set => CPU = value; }
        public string MEMORY1 { get => MEMORY; set => MEMORY = value; }
        public string HARDDISK1 { get => HARDDISK; set => HARDDISK = value; }
        public string GPU1 { get => GPU; set => GPU = value; }
        public string MODEL1 { get => MODEL; set => MODEL = value; }
        public string PURCHASEDATE1 { get => PURCHASEDATE; set => PURCHASEDATE = value; }
        public string USER1 { get => USER; set => USER = value; }





        //服务器使用情况
        private string STARTDATE;
        private string ENDDATE;
        private string REMARKS;
        public string STARTDATE1 { get => STARTDATE; set => STARTDATE = value; }
        public string ENDDATE1 { get => ENDDATE; set => ENDDATE = value; }
        public string REMARKS1 { get => REMARKS; set => REMARKS = value; }

    }
}