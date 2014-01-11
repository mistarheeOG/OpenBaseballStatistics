using System.CodeDom;
using System.Linq;
using Moq;
using NUnit.Framework;
using OBS.Calculator.Offense;
using OBS.Core;

namespace OBS.Calculator.Tests.Offense
{
    [TestFixture]
    public class OnBasePercentageCalculatorTests : BaseOffenseCalculatorTests<OnBasePercentageCalculator>
    {

        [Test]
        public void ShouldCalculateOnBasePercentage()
        {
            _statistics.Add(new BattingStatistic{Year = 2012, Hits = 262, Walks = 49, HitByPitch = 4, AtBats = 704, SacrificeFlies = 4});
            _statistics.Add(new BattingStatistic{Year = 2011, Hits = 0, Walks = 0, HitByPitch = 0, AtBats = 0, SacrificeFlies = 0});

            var calculator = new OnBasePercentageCalculator(_mockRepository.Object);
            var result = calculator.Calculate(_player, 2012);
            Assert.That(result, Is.EqualTo(.414m));
        }
    }
}
