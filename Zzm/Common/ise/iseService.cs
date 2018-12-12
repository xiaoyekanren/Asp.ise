using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;

namespace Zzm.Common.ise
{ 

    public class iseService
{
        private static string connectionString = ConfigurationManager.ConnectionStrings["ZzmConnectionString"].ConnectionString;


        /// <summary>
        /// 查询全部字段，显示ID,IP,位置==gridview2.aspx
        /// </summary>
        /// <returns>查询</returns>
        public static IList<ise> GetIse()
        {
            using (SqlConnection aa = new SqlConnection(connectionString))
            {
                aa.Open();
                SqlCommand bb = new SqlCommand
                {
                    Connection = aa
                };
                string sql = "Select isnull(ID,0) as ID,isnull(IP,0) as IP,isnull(PLACE,0) as 位置 from Server_detail";
                bb.CommandText = sql;
                SqlDataReader cc = bb.ExecuteReader();
                //list
                List<ise> List = new List<ise>();
                while (cc.Read())
                {
                    ise ise = new ise
                    {
                        ID1 = (int)cc["ID"],
                        IP1 = (string)cc["IP"],
                        PLACE1 = (string)cc["位置"]
                    };
                    List.Add(ise);
                }
                cc.Close();
                return List;
            }
        }





        /// <summary>
        /// 根据Id查询==gridview2_more.aspx
        /// </summary>
        /// <returns></returns>
        public static ise GetAllById(int ID)
        {
            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                cn.Open();
                SqlCommand cm = new SqlCommand
                {
                    Connection = cn
                };
                string sql = "SELECT * FROM Server_detail WHERE ID= @ID";
                cm.CommandText = sql;
                cm.Parameters.AddWithValue("@ID", ID);
                SqlDataReader dr = cm.ExecuteReader();
                if (dr.Read())
                {
                    ise ise = new ise();
                    ise.ID1 = (int)dr["ID"];
                    ise.IP1 = (string)dr["IP"];
                    ise.SYSTEM1 = (string)dr["SYSTEM"];
                    ise.PLACE1 = (string)dr["PLACE"];
                    ise.PURPOSE1 = (string)dr["用途"];
                    ise.CPU1 = (string)dr["CPU"];
                    ise.MEMORY1 = (string)dr["MEMORY"];
                    ise.HARDDISK1 = (string)dr["HARDDISK"];
                    ise.GPU1 = (string)dr["GPU"];
                    ise.MODEL1 = (string)dr["型号"];
                    ise.PURCHASEDATE1 = (string)dr["购买日期"];
                    ise.USER1 = (string)dr["使用者"];
                    dr.Close();
                    return ise;
                }
                else
                {
                    dr.Close();
                    return null;
                }
            }
        }






        /// <summary>
        /// 根据ID修改字段==gridview2_more.aspx
        /// </summary>
        /// <param name="ise"></param>
        public static void ModifyIseById(ise ise)
        {
            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                cn.Open();
                SqlCommand cm = new SqlCommand
                {
                    Connection = cn
                };
                string sql = "UPDATE Server_detail SET IP = @IP, SYSTEM = @SYSTEM, PLACE = @PLACE, 用途 = @用途, CPU = @CPU, MEMORY = @MEMORY, HARDDISK = @HARDDISK, GPU = @GPU, 型号 = @型号, 购买日期 = @购买日期, 使用者 = @使用者 WHERE ID= @ID";
                cm.CommandText = sql;
                cm.Parameters.AddWithValue("@ID", ise.ID1);
                cm.Parameters.AddWithValue("@IP", value: ise.IP1);
                cm.Parameters.AddWithValue("@SYSTEM", ise.SYSTEM1);
                cm.Parameters.AddWithValue("@PLACE", ise.PLACE1);
                cm.Parameters.AddWithValue("@用途", ise.PURPOSE1);
                cm.Parameters.AddWithValue("@CPU", ise.CPU1);
                cm.Parameters.AddWithValue("@MEMORY", ise.MEMORY1);
                cm.Parameters.AddWithValue("@HARDDISK", ise.HARDDISK1);
                cm.Parameters.AddWithValue("@GPU", ise.GPU1);
                cm.Parameters.AddWithValue("@型号", ise.MODEL1);
                cm.Parameters.AddWithValue("@购买日期", ise.PURCHASEDATE1);
                cm.Parameters.AddWithValue("@使用者", ise.USER1);
                cm.ExecuteNonQuery();
            }
        }




        /// <summary>
        /// 查询全部字段，显示所有==ListView.aspx
        /// </summary>
        /// <returns>查询全部字段</returns>
        public static IList<ise> GetAllIse()
        {
            using (SqlConnection aa = new SqlConnection(connectionString))
            {
                aa.Open();
                SqlCommand bb = new SqlCommand
                { Connection = aa };
                string sql = "select * from Server_detail";
                bb.CommandText = sql;
                SqlDataReader cc = bb.ExecuteReader();
                //list
                List<ise> List = new List<ise>();
                while (cc.Read())
                {
                    ise ise = new ise
                    {
                        ID1 = (int)cc["ID"],
                        IP1 = (string)cc["IP"],
                        SYSTEM1 = (string)cc["SYSTEM"],
                        PLACE1 = (string)cc["PLACE"],
                        PURPOSE1 = (string)cc["用途"],
                        CPU1 = (string)cc["CPU"],
                        MEMORY1 = (string)cc["MEMORY"],
                        HARDDISK1 = (string)cc["HARDDISK"],
                        GPU1 = (string)cc["GPU"],
                        MODEL1 = (string)cc["型号"],
                        PURCHASEDATE1 = (string)cc["购买日期"],
                        USER1 = (string)cc["使用者"]
                    };
                    List.Add(ise);
                }
                cc.Close();
                return List;
            }
        }





        ///<summary>
        ///录入使用信息
        ///</summary>
        ///<param name = "ise">用户对象</param>
        public void AddUseRecord(ise ise)
        {
            using (SqlConnection cn = new SqlConnection(connectionString))
            {
                cn.Open();
                SqlCommand cm = new SqlCommand
                {
                    Connection = cn
                };
                string sql = "INSERT dbo.[use] (PLACE,IP地址,[USER],开始日期,截止日期,用途,备注)" + " VALUES (@PLACE,@IP地址,@USER,@开始日期,@截止日期,@用途,@备注)";
                cm.CommandText = sql;
                cm.Parameters.AddWithValue("@PLACE", ise.PLACE1);
                cm.Parameters.AddWithValue("@IP地址", ise.IP1);
                cm.Parameters.AddWithValue("@USER", ise.USER1);
                cm.Parameters.AddWithValue("@开始日期", ise.STARTDATE1);
                cm.Parameters.AddWithValue("@截止日期", ise.ENDDATE1);
                cm.Parameters.AddWithValue("@用途", ise.PURPOSE1);
                cm.Parameters.AddWithValue("@备注", ise.REMARKS1);
                cm.ExecuteNonQuery();
            }
        }




    }
}