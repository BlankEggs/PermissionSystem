<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div class="modal fade" id="myModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">添加角色</h4>
            </div>
            <div class="modal-body">
                <form action="" method="post" id="f">
                    <div class="form-group" hidden="hidden">
                        <label for="name">角色id</label>
                        <input type="text" class="form-control" id="id" placeholder="id" name="id">
                    </div>
                    <div class="form-group">
                        <label for="name">角色名称</label>
                        <input type="text" class="form-control" id="name" placeholder="name" name="name">
                    </div>
                    <div class="checkbox" id="permissions">
						
                    </div>
                    <button type="submit" class="addBtn btn btn-success">提交</button>
                </form>
            </div>
        </div>
    </div>
</div>
