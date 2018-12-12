using System.Collections.Generic;

namespace Zzm.Common.ise

{

    public static class iselist

{
        public static IList<ise> Selectise()
        {
            return iseService.GetIse();
        }
        public static ise GetAllById(int ID)
        {
            return iseService.GetAllById(ID);
        }
        public static void ModifyIseById(ise ise)
        {
            iseService.ModifyIseById(ise);
        }

            
    }
}