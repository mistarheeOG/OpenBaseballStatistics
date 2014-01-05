using System;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using OBS.Calculator.Interfaces;
using OBS.Core;
using OBS.Data.Repositories;

namespace OBS.Calculator.Offense
{
    public class OnBasePercentageCalculator : ICalculateByPlayerAndYear
    {
        private readonly IRepositoryReadByPlayer<BattingStatistic> _battingRepository;

        public OnBasePercentageCalculator(IRepositoryReadByPlayer<BattingStatistic> battingRepository)
        {
            _battingRepository = battingRepository;
        }

        public decimal Calculate(Player player, int year)
        {
            var statLine = _battingRepository.GetAllByPlayer(player)
                                        .SingleOrDefault(stat => stat.Year == year);
            //(H+BB+HBP)/(AB+BB+HBP+SF)
            var result = statLine == null
                ? 0
                : (Convert.ToDecimal(statLine.Hits + statLine.Walks + statLine.HitByPitch))/
                  (Convert.ToDecimal(statLine.AtBats + statLine.Walks + statLine.HitByPitch + statLine.SacrificeFlies));
            return Decimal.Round(result, 3);
        }
    }
}
