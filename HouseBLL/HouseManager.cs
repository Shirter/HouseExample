using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using HouseDAL;
using HouseModel;

namespace HouseBLL
{
    public class HouseManager
    {
        HouseService houseService = new HouseService();
        public List<House> GetAllHouse()
        {
            return houseService.GetAllHouse();
        }

        public House GetHouseById(int id)
        {
            return houseService.GetHouseById(id);
        }

        public bool UpdateHouse(House house, int id)
        {
            return houseService.UpdateHouse(house, id);
        }

        public bool DeleteHouse(int id)
        {
            return houseService.DeleteHouse(id);
        }
    }
}
