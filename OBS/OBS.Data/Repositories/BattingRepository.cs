using System.Linq;
using OBS.Core;

namespace OBS.Data.Repositories
{
    public interface IRepositoryReadByPlayer<out T>
    {
        IQueryable<T> GetAllByPlayer(Player player);
    }

    public class BattingRepository : IRepositoryReadByPlayer<BattingStatistic>
    {
        public IQueryable<BattingStatistic> GetAllByPlayer(Player player)
        {
            throw new System.NotImplementedException();
        }
    }
}
