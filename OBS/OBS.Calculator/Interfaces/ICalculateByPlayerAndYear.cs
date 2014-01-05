using OBS.Core;

namespace OBS.Calculator.Interfaces
{
    interface ICalculateByPlayerAndYear
    {
        decimal Calculate(Player player, int year);
    }
}