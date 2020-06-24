<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div class="modal fade" id="myModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">添加权限</h4>
            </div>
            <div class="modal-body">
                <form action="" method="post" id="f">
               		<div class="form-group" hidden="hidden">
                        <label for="id">权限编号</label>
                        <input type="text" class="form-control" id="id" placeholder="id" name="id">
                    </div>
                    <div class="form-group">
                        <label for="name">权限名称</label>
                        <input type="text" class="form-control" id="name" placeholder="name" name="name">
                    </div>
                    <div class="form-group">
                        <label for="desc">权限描述</label>
                        <input type="text" class="form-control" id="desc" placeholder="desc" name="desc">
                    </div>
                    <div class="form-group">
                        <label for="url">权限url</label>
                        <input type="text" class="form-control" id="url" placeholder="url" name="url">
                    </div>
                    <button type="submit" class="btn btn-success" id="addbtn" >提交</button>
                </form>
            </div>

        </div>
    </div>
</div>

