<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div class="modal fade" id="myRoleModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myAdminModal"></h4>
            </div>
            <div class="modal-body">
                <table class="table table-bordered">
                	 <tr>
                         <th>角色名称</th>
                         <th>权限描述</th>
                     </tr>
                     <tbody id="adminRolePermissions">
						
                     </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
