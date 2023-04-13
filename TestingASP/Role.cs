using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestingASP
{
    public class Role : Prototype<Role>
    {
        public string Name { get; set; }
        public List<Permission> Permissions { get; set; }

        public Role(string name)
        {
            Name = name;
            Permissions = new List<Permission>();
        }

        public override Role Clone()
        {
            var clonedRole = new Role(Name);
            Permissions.ForEach(permission => clonedRole.Permissions.Add(permission.Clone()));
            return clonedRole;
        }
    }
}