using System;
using System.Linq;
using OBS.Calculator.Interfaces;
using OBS.Core;
using OBS.Data.Repositories;

namespace OBS.Calculator.Offense
{
    public class SluggingCalculator : ICalculateByPlayerAndYear
    {
        private readonly IRepositoryReadByPlayer<BattingStatistic> _battingRepository;

        public SluggingCalculator(IRepositoryReadByPlayer<BattingStatistic> battingRepository)
        {
            _battingRepository = battingRepository;
        }

        public decimal Calculate(Player player, int year)
        {
            var statLine = _battingRepository.GetAllByPlayer(player)
                .SingleOrDefault(stat => stat.Year == year);

            var result = statLine == null
                            ? 0
                            : Convert.ToDecimal(statLine.Singles + (2*statLine.Doubles) + (3*statLine.Triples) +
                                     (4*statLine.HomeRuns))
                                    / Convert.ToDecimal(statLine.AtBats);

            return Decimal.Round(result, 3);
        }
    }
}