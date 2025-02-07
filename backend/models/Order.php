<?php

require_once 'models/Model.php';

class Order extends Model
{
    public $id;
    public $user_id;
    public $fullname;
    public $address;
    public $mobile;
    public $email;
    public $note;
    public $price_total;
    public $payment_status;
    public $created_at;
    public $updated_at;

    public function getAll()
    {
        //        1 - chuẩn bị truy vấn
        $obj_select = $this->connection
            ->prepare(" select *
                      FROM orders");

        //2 - truyền giá trị cho tham số và
        // thực thi truy vấn
        $obj_select->execute();

        //3 - lấy dữ liệu trả về dưới dạng mảng
        $orders = $obj_select->fetchAll(PDO::FETCH_ASSOC);

        return $orders;
    }

    public function getById($id)
    {
        $obj_select_one = $this->connection->prepare("SELECT * FROM orders WHERE id = $id");
        $obj_select_one->execute();
        return $obj_select_one->fetch(PDO::FETCH_ASSOC);
    }

    public function filterOrderByDate($start_date, $end_date, $status, $sort_by, $order_by) 
    {
        $query_builder = "SELECT * FROM orders WHERE updated_at >= '$start_date' AND updated_at <= '$end_date'";
        if ($status != 2) {
            $query_builder .= " AND payment_status = $status";
        }
        if ($sort_by == 'ordered_date') {
            $query_builder .= " ORDER BY created_at $order_by";
        } else if ($sort_by == 'updated_date') {
            $query_builder .= " ORDER BY updated_at $order_by";
        } else if ($sort_by == 'price_total') {
            $query_builder .= " ORDER BY price_total $order_by";
        } else {
            $query_builder .= " ORDER BY $sort_by $order_by";
        }
        //        1 - chuẩn bị truy vấn sắp xếp theo ngày mới nhất về cũ
        $obj_select = $this->connection
            ->prepare($query_builder);

        //2 - truyền giá trị cho tham số và
        // thực thi truy vấn
        $obj_select->execute();

        //3 - lấy dữ liệu trả về dưới dạng mảng
        $orders = $obj_select->fetchAll(PDO::FETCH_ASSOC);

        return $orders;
    }

    public function insert()
    {
        //1 - chuẩn bị câu truy vấn
        $obj_insert = $this
            ->connection
            ->prepare("INSERT INTO
orders(fullname, address, mobile, email, note, price_total, payment_status)
VALUES(:fullname, :address, :mobile, :email, :note, :price_total, :payment_status)
");
        $arr_insert = [
            ':fullname' => $this->fullname,
            ':address' => $this->address,
            ':mobile' => $this->mobile,
            ':email' => $this->email,
            ':note' => $this->note,
            ':price_total' => $this->price_total,
            ':payment_status' => $this->payment_status
        ];
        //        2 - thực thi bằng cách truyền tham số
        $is_insert = $obj_insert->execute($arr_insert);

        return $is_insert;
    }

    public function update($id)
    {
        $obj_update = $this->connection
            ->prepare("UPDATE orders SET fullname=:fullname, address=:address, mobile=:mobile, email=:email, 
            note=:note, price_total=:price_total, payment_status=:payment_status, updated_at=:updated_at WHERE id = $id
");
        $arr_update = [
            ':fullname' => $this->fullname,
            ':address' => $this->address,
            ':mobile' => $this->mobile,
            ':email' => $this->email,
            ':note' => $this->note,
            ':price_total' => $this->price_total,
            ':payment_status' => $this->payment_status,
            ':updated_at' => $this->updated_at,
        ];
        return $obj_update->execute($arr_update);
    }

    public function delete($id)
    {
        $obj_delete = $this->connection->prepare("DELETE FROM orders WHERE id = $id");
        return $obj_delete->execute();
    }
}
