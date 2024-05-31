<?php

require_once 'controllers/Controller.php';
require_once 'models/Order.php';
require_once 'models/Category.php';

class OrderController extends Controller
{
    public function index()
    {
        $order_model = new Order();
        $orders = $order_model->getAll();
        $total_price = 0;
        $finished_order = 0;
        $order_length = count($orders);
        for ($i = 0; $i < count($orders); $i++) {
            $total_price += $orders[$i]['price_total'];
            if ($orders[$i]['payment_status'] == 1) {
                $finished_order++;
            }
        }
        $not_finished_order = $order_length - $finished_order;

        $this->content = $this->render('views/orders/index.php', [
            'orders' => $orders,
            'total_price' => number_format($total_price, 0, ',', '.') . 'VNĐ',
            'finished_order' => $finished_order,
            'order_length' => $order_length,
            'not_finished_order' => $not_finished_order
        ]);
        
        require_once 'views/layouts/main.php';
    }

    public function detail()
    {
        $id = $_GET['id'];
        $order_model = new Order();
        $order = $order_model->getById($id);

        $this->content = $this->render('views/orders/detail.php', [
            'order' => $order
        ]);
        require_once 'views/layouts/main.php';
    }

    public function filter()
    {
        if (!isset($_GET['status'])) {
            $status = 1;
        } else {
            $status = $_GET['status'];
        }
        if (!isset($_GET['sort_by'])) {
            $sort_by = 'updated_date';
        } else {
            $sort_by = $_GET['sort_by'];
        }
        if (!isset($_GET['order_by'])) {
            $order_by = 1;
        } else {
            $order_by = $_GET['order_by'];
        }

        if ($order_by == 1) {
            $order_by = 'ASC';
        } else {
            $order_by = 'DESC';
        }
        if (!isset($_GET['start_date']) || $_GET['end_date'] == '') {
            $start_date = date('Y-m-d', strtotime('-100 year'));
        } else {
            $start_date = date('Y-m-d', strtotime($_GET['start_date']));
        }
        if (!isset($_GET['end_date']) || $_GET['end_date'] == '') {
            $end_date = date('Y-m-d', strtotime('+100 year'));
        } else {
            $end_date = date('Y-m-d', strtotime($_GET['end_date']));
        }
        
        $order_model = new Order();
        $orders = $order_model->filterOrderByDate($start_date, $end_date, $status, $sort_by, $order_by);
        $total_price = 0;
        $finished_order = 0;
        $order_length = count($orders);
        for ($i = 0; $i < count($orders); $i++) {
            $total_price += $orders[$i]['price_total'];
            if ($orders[$i]['payment_status'] == 1) {
                $finished_order++;
            }
        }
        $not_finished_order = $order_length - $finished_order;
        $formattedAmount = number_format($total_price, 0, ',', '.') . 'VNĐ';

        $this->content = $this->render('views/orders/index.php', [
            'orders' => $orders,
            'total_price' => $formattedAmount,
            'finished_order' => $finished_order,
            'order_length' => $order_length,
            'not_finished_order' => $not_finished_order
        ]);
        require_once 'views/layouts/main.php';
    }

    public function update()
    {
        $id = $_GET['id'];
        $order_model = new Order();
        $order = $order_model->getById($id);
        if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
            $_SESSION['error'] = 'ID không hợp lệ';
            header('Location: index.php?controller=order');
            exit();
        }


        //xử lý submit form
        if (isset($_POST['submit'])) {
            //            echo "<pre>";
            //            print_r($_POST);
            //            echo "</pre>";
            $fullname = $_POST['fullname'];
            $address = $_POST['address'];
            $mobile = $_POST['mobile'];
            $email = $_POST['email'];
            $note = $_POST['note'];
            $price_total = $_POST['price_total'];
            $payment_status = $_POST['payment_status'];

            //xử lý validate
            //xử lý validate
            if (empty($fullname)) {
                $this->error = 'Không được để trống fullname';
            } else if (empty($address)) {
                $this->error = 'Không được để trống address';
            } else if (empty($mobile)) {
                $this->error = 'Không được để trống mobile';
            } else if (empty($email)) {
                $this->error = 'Không được để trống email';
            }

            //nếu không có lỗi thì tiến hành save dữ liệu
            if (empty($this->error)) {
                //save dữ liệu vào bảng news
                $order_model->fullname = $fullname;
                $order_model->address = $address;
                $order_model->mobile = $mobile;
                $order_model->email = $email;
                $order_model->note = $note;
                $order_model->price_total = $price_total;
                $order_model->payment_status = $payment_status;
                $order_model->updated_at = date('Y-m-d H:i:s');

                $is_update = $order_model->update($id);
                if ($is_update) {
                    $_SESSION['success'] = 'Update dữ liệu thành công';
                } else {
                    $_SESSION['error'] = 'Update dữ liệu thất bại';
                }
                header('Location: index.php?controller=order');
                exit();
            }
        }


        $this->content = $this->render('views/orders/update.php', [
            'order' => $order
        ]);
        require_once 'views/layouts/main.php';
    }

    public function delete()
    {
        $id = $_GET['id'];
        $order_model = new Order();
        $is_delete = $order_model->delete($id);
        if ($is_delete) {
            $_SESSION['success'] = 'Xóa dữ liệu thành công';
        } else {
            $_SESSION['error'] = 'Xóa dữ liệu thất bại';
        }
        header('Location: index.php?controller=order');
        exit();
    }
}
