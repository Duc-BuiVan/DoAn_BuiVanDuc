<?php
require_once 'helpers/Helper.php';
?>
<style>
    /* Add this style to set the background color of the date picker */
    #ui-datepicker-div {
        background-color: white !important;
        padding: 10px;
    }
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
<h2>Danh sách đặt hàng</h2>
<form action="" method="GET">
    <input type="hidden" name="controller" value="order" />
    <input type="hidden" name="action" value="filter" />
    <div class="form-group" style="margin-top: 12px; margin-bottom: 12px; display: flex; width: 100%; justify-content: flex-end; gap: 2rem; flex-wrap: wrap;">
        <div style="display: flex; gap: 2rem;">
            <div>
                <label>Sắp xếp theo</label>
            </div>
            <select name="sort_by" id="sort_by">
                <option value="price_total">Price_total</option>
                <option value="ordered_date">Order_date</option>
                <option value="updated_date" selected>Updated_date</option>
            </select>
        </div>
        <div style="display: flex; gap: 2rem;">
            <div>
                <label>Thứ tự</label>
            </div>
            <select name="order_by" id="order_by">
                <option value="1">Tăng dần</option>
                <option value="-1" selected>Giảm dần</option>
            </select>
        </div>
    </div>
    <div class="form-group" style="margin-top: 12px; margin-bottom: 12px; display: flex; width: 100%; justify-content: flex-end; gap: 2rem; flex-wrap: wrap;">
        <div style="display: flex; gap: 2rem;">
            <div>
                <label>Trạng thái đơn</label>
            </div>
            <select name="status" id="status_order">
                <option value="2">Tất cả</option>
                <option value="1">Đã thanh toán</option>
                <option value="0">Chưa thanh toán</option>
            </select>
        </div>
        <div style="display: flex; gap: 1rem;">
            <div>
                <label>Start date</label>
            </div>
            <div class="input-group date">
                <input name="start_date" type="text" class="form-control" id="startDate" placeholder="Select a date" value="<?php echo isset($_GET['start_date']) ? $_GET['start_date'] : '' ?>">
                <span class="input-group-addon">
                    <i class="glyphicon glyphicon-calendar"></i>
                </span>
            </div>
        </div>
        <div style="display: flex; flex; gap: 1rem;">
            <div>
                <label>End date</label>
            </div>
            <div class="input-group date">
            <input name="end_date" type="text" class="form-control" id="endDate" placeholder="Select a date" value="<?php echo isset($_GET['end_date']) ? $_GET['end_date'] : '' ?>">
                <span class="input-group-addon">
                    <i class="glyphicon glyphicon-calendar"></i>
                </span>
            </div>
        </div>
        <button type="button" class="btn btn-info" id="refreshButton">
            Làm mới
        </button>
        <button type="submit" class="btn btn-primary">
            Lọc
        </button>
    </div>
</form>
<table class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>Customer_fullname</th>
        <th>Address</th>
        <th>Mobile</th>
        <th>Email</th>
        <th>Price_total</th>
        <th>Payment_Status</th>
        <th>Order_date</th>
        <th>Updated_at</th>
        <th></th>
    </tr>
    <?php if (!empty($orders)): ?>
        <?php foreach ($orders as $order): ?>
            <tr>
                <td><?php echo $order['id'] ?></td>
                <td><?php echo $order['fullname'] ?></td>
                <td><?php echo $order['address'] ?></td>
                <td><?php echo $order['mobile'] ?></td>
                <td><?php echo $order['email'] ?></td>
                <td><?php echo number_format($order['price_total'], 0, ',', '.') . ' VNĐ' ?></td>
                <td><?php echo Helper::getStatusTextOrder($order['payment_status']) ?></td>
                <td><?php echo date('d-m-Y H:i:s', strtotime($order['created_at'])) ?></td>
                <td><?php echo !empty($order['updated_at']) ? date('d-m-Y H:i:s', strtotime($order['updated_at'])) : '--' ?></td>
                <td>
                    <?php
                    $url_detail = "index.php?controller=order&action=detail&id=" . $order['id'];
                    $url_update = "index.php?controller=order&action=update&id=" . $order['id'];
                    $url_delete = "index.php?controller=order&action=delete&id=" . $order['id'];
                    ?>
                    <a title="Chi tiết" href="<?php echo $url_detail ?>"><i class="fa fa-eye"></i></a> &nbsp;&nbsp;
                    <a title="Update" href="<?php echo $url_update ?>"><i class="fa fa-pencil-alt"></i></a> &nbsp;&nbsp;
                    <a title="Xóa" href="<?php echo $url_delete ?>" onclick="return confirm('Are you sure delete?')"><i
                            class="fa fa-trash"></i></a>
                </td>
            </tr>
        <?php endforeach; ?>
        <tr>
            <td colspan="5" style="text-align: right; font-weight: bold;">
                Tổng tiền:
            </td>
            <td colspan="5">
                <?php echo $total_price ?>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left; font-weight: bold;">
                Tổng đơn chưa thanh toán: 
            </td>
            <td colspan=7">
                <?php echo $not_finished_order ?>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left; font-weight: bold;">
                Tổng đơn đã thanh toán: 
            </td>
            <td colspan="7">
                <?php echo $finished_order ?>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: left; font-weight: bold;">
                Tổng đơn: 
            </td>
            <td colspan="7">
                <?php echo $order_length ?>
            </td>
        </tr>
    <?php else: ?>
        <tr>
            <td colspan="9">No data found</td>
        </tr>
    <?php endif; ?>
</table>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script>
    $(document).ready(function () {
        $('#startDate').datepicker();
    });
    $(document).ready(function () {
        $('#endDate').datepicker();
    });
    document.getElementById("refreshButton").addEventListener("click", function() {
        window.location.href = "index.php?controller=order&action=index";
    });
</script>
