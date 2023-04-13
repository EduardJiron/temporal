using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestingASP
{
    public partial class wfPrototype : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRoles();
            }
        }

        protected void AddRoleButton_Click(object sender, EventArgs e)
        {
            string roleName = RoleTextBox.Text;
            if (!string.IsNullOrEmpty(roleName))
            {
                var existingRole = DataStorage.Roles.FirstOrDefault(r => r.Name == roleName);
                if (existingRole != null)
                {
                    ResultLabel.Text = $"El rol '{roleName}' ya existe.";
                }
                else
                {
                    var role = new Role(roleName);
                    DataStorage.Roles.Add(role);
                    ResultLabel.Text = $"Rol '{roleName}' agregado.";
                    BindRoles();
                    RoleTextBox.Text = "";


                }
            }
            else
            {
                ResultLabel.Text = "El nombre del rol no puede estar vacío.";
            }
        }

        protected void AddPermissionButton_Click(object sender, EventArgs e)
        {
            string roleName = RoleDropDownList.SelectedValue;
            string permissionName = PermissionTextBox.Text;

            if (!string.IsNullOrEmpty(roleName) && !string.IsNullOrEmpty(permissionName))
            {
                var role = DataStorage.Roles.FirstOrDefault(r => r.Name == roleName);

                if (role != null)
                {
                    var existingPermission = role.Permissions.FirstOrDefault(p => p.Name == permissionName);
                    if (existingPermission != null)
                    {
                        ResultLabel.Text = $"El permiso '{permissionName}' ya existe en el rol '{roleName}'.";
                    }
                    else
                    {
                        var permission = new Permission(permissionName);
                        role.Permissions.Add(permission);
                        ResultLabel.Text = $"Permiso '{permissionName}' agregado al rol '{roleName}'.";
                        BindRoles();
                        PermissionTextBox.Text = "";
                    }
                }

            }
            else
            {
                ResultLabel.Text = "El nombre del rol y el permiso no pueden estar vacíos.";
            }
        }

        private void BindRoles()
        {
            RoleDropDownList.DataSource = DataStorage.Roles;
            RoleDropDownList.DataTextField = "Name";
            RoleDropDownList.DataValueField = "Name";
            RoleDropDownList.DataBind();

            RolesGridView.DataSource = DataStorage.Roles;
            RolesGridView.DataBind();
        }
    }
}