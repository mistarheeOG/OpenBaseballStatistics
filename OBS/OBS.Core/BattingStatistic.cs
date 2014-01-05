using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OBS.Core
{
    public class BattingStatistic
    {
        public int Year { get; set; }
        public int Games { get; set; }
        public int GamesAsBatter { get; set; }
        public int AtBats { get; set; }
        public int Runs { get; set; }
        public int Hits { get; set; }
        public int Singles { get; set; }
        public int Doubles { get; set; }
        public int Triples { get; set; }
        public int HomeRuns { get; set; }
        public int RunsBattedIn { get; set; }
        public int StolenBases { get; set; }
        public int CaughtStealing { get; set; }
        public int Walks { get; set; } // aka Base on Balls
        public int StrikeOuts { get; set; }
        public int IntentionalWalks { get; set; }
        public int HitByPitch { get; set; }
        public int SacrificeHits { get; set; }
        public int SacrificeFlies { get; set; }
        public int GroundedIntoDoublePlays { get; set; }

    }
}
