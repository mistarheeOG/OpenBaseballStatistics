using System.Linq;
using Moq;
using NUnit.Framework;
using OBS.Calculator.Offense;
using OBS.Core;

namespace OBS.Calculator.Tests.Offense
{
    [TestFixture]
    public class SluggingCalculatorTests : BaseOffenseCalculatorTests<SluggingCalculator>
    {
        [Test]
        public void ShouldCalculateSluggingPercentage()
        {
            _statistics.Add(new BattingStatistic(){Year = 2013, Singles = 73, Doubles = 36, Triples = 9, HomeRuns = 54, AtBats = 458});
            var result = new SluggingCalculator(_mockRepository.Object).Calculate(_player, 2013);
            Assert.That(result, Is.EqualTo(.847m));
        }
    }
}
