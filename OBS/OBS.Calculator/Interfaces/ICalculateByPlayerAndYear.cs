using OBS.Core;

namespace OBS.Calculator.Interfaces
{
    public interface ICalculateByPlayerAndYear
    {
        decimal Calculate(Player player, int year);
    }
}