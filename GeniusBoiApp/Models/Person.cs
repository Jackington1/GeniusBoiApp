using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GeniusBoiApp.Models
{
    public class Skill
    {
        public string skillName { get; set; }
        public int skillHoursLearn { get; set; }
        public int skillHoursSpent { get; set; }
    }

    public class Person
    {
        public string name { get; set; }
        public List<Skill> Skills { get; set; }
    }
}