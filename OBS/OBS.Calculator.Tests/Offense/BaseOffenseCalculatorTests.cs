using System;
using System.Collections.Generic;
using System.Linq;
using Moq;
using NUnit.Framework;
using OBS.Calculator.Interfaces;
using OBS.Core;
using OBS.Data.Repositories;

namespace OBS.Calculator.Tests.Offense
{
    public class BaseOffenseCalculatorTests<T> where T : ICalculateByPlayerAndYear
    {
        protected List<BattingStatistic> _statistics;
        protected Mock<IRepositoryReadByPlayer<BattingStatistic>> _mockRepository;
        protected Player _player;

        protected const string PlayerId = "SomeId";

        [SetUp]
        public void BaseSetUp()
        {
            _player = new Player(){Id = PlayerId};
            _mockRepository = new Mock<IRepositoryReadByPlayer<BattingStatistic>>();
            _statistics = new List<BattingStatistic>();
            _mockRepository.Setup(r => r.GetAllByPlayer(It.Is<Player>(p => p.Id == PlayerId))).Returns(_statistics.AsQueryable());
            SetUp();
        }

        public virtual void SetUp()
        {
            
        }

        [Test]
        public void ShouldReturnZeroIfNoStatsForThatYear()
        {
            _mockRepository.Setup(r => r.GetAllByPlayer(It.Is<Player>(p => p.Id == PlayerId))).Returns(_statistics.AsQueryable());
            var battingRepository = _mockRepository.Object;

            var calculator = (T)Activator.CreateInstance(typeof(T), battingRepository);
            var result = calculator.Calculate(_player, 1);
            Assert.That(result, Is.EqualTo(0m));
        }
    }
}