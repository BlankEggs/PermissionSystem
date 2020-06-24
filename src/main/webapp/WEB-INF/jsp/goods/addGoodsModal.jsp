<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div class="modal fade" id="myModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">添加商品</h4>
            </div>
            <div class="modal-body">
                <form id="goodsform" action="" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name">商品名称</label>
                        <input type="text" class="form-control" id="name" placeholder="name" name="name">
                    </div>
                    <div class="form-group">
                        <label for="desc">商品描述</label>
                        <input type="text" class="form-control" id="desc" placeholder="desc" name="desc">
                    </div>
                    <div class="form-group">
                        <label for="price">商品价格</label>
                        <input type="text" class="form-control" id="price" placeholder="price" name="price">
                    </div>
                    <div class="form-group">
                        <label for="img">商品图片</label>
                        <input type="file" class="form-control" id="img" placeholder="img" name="file">
                    </div>
                    <div class="form-group">
                        <label for="num">商品库存</label>
                        <input type="text" class="form-control" id="num" placeholder="num" name="num">
                    </div>
                    <button type="submit" class="btn btn-success">提交</button>
                </form>
            </div>
        </div>
    </div>
</div>
