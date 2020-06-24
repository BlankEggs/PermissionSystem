<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div class="modal fade" id="myOrderModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="orderAddress"></h4>
                <h4 class="modal-title" id="orderTotal"></h4>
            </div>
            <div class="modal-body">
                <table class="table table-bordered" >
                    <tr>
                        <th>商品编号</th>
                        <th>商品名称</th>
                        <th>商品描述</th>
                        <th>商品价格</th>
                        <th>商品数量</th>
                    </tr>
                    <tbody id="orderDetails">

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>