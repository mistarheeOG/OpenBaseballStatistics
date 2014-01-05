using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using Moq;
using NUnit.Framework;
using OBS.Calculator.Offense;
using OBS.Core;
using OBS.Data.Repositories;

namespace OBS.Calculator.Tests.Offense
{
    [TestFixture]
    public class OnBasePercentageCalculatorTests
    {
        const string PlayerId = "SomeId";

        private List<BattingStatistic> _statistics;
        private Mock<IRepositoryReadByPlayer<BattingStatistic>> _mockRepository;
        private Player _player;

        [SetUp]
        public void SetUp()
        {
            _player = new Player(){Id = PlayerId};
            _mockRepository = new Mock<IRepositoryReadByPlayer<BattingStatistic>>();
            _statistics = new List<BattingStatistic>();
        }

        [Test]
        public void ShouldCalculateOnBasePercentage()
        {
            _mockRepository.Setup(r => r.GetAllByPlayer(It.Is<Player>(p => p.Id == PlayerId))).Returns(_statistics.AsQueryable());
            _statistics.Add(new BattingStatistic{Year = 2012, Hits = 262, Walks = 49, HitByPitch = 4, AtBats = 704, SacrificeFlies = 4});
            _statistics.Add(new BattingStatistic{Year = 2011, Hits = 0, Walks = 0, HitByPitch = 0, AtBats = 0, SacrificeFlies = 0});

            var calculator = new OnBasePercentageCalculator(_mockRepository.Object);
            var result = calculator.Calculate(_player, 2012);
            Assert.That(result, Is.EqualTo(.414m));
        }

        [Test]
        public void ShouldReturnZeroIfNoStatsForThatYear()
        {
            _mockRepository.Setup(r => r.GetAllByPlayer(It.Is<Player>(p => p.Id == PlayerId))).Returns(_statistics.AsQueryable());

            var calculator = new OnBasePercentageCalculator(_mockRepository.Object);
            var result = calculator.Calculate(_player, 2012);
            Assert.That(result, Is.EqualTo(0m));
        }
    }
}
