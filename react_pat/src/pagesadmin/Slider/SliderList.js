import { Link } from "react-router-dom";
import { MdAdd } from "react-icons/md";
import { FaRegEye, FaEdit, FaTrashAlt } from "react-icons/fa";
import sliderservice from "../../service/SliderService";
import { useEffect,useState } from "react";
import Moment from 'moment';
import { urlImage } from "../../config";

function SliderList() {
    const [sliders, setSliders] = useState([]);
    const [status_delete, setStatus_delete] = useState([]);
    useEffect(function () {
        (async function () {
            await sliderservice.getAll()
                .then(function (result) {
                    setSliders(result.data.data);
                }
                );
        })();
    }, [status_delete]);
    function sliderDelete($id) {
        sliderservice.remove($id)
            .then(function (res) {
                console.log(res.data);
                setStatus_delete(res.data.id);
                alert(res.data.message);
            });
    }
    return (
        <><div className="container bg-primary my-3"><nav aria-label="breadcrumb bg-primary">
        <ol className="breadcrumb">
          <li className="breadcrumb-item"><Link to="/admin">Home</Link></li>
          <li className="breadcrumb-item active" aria-current="page">Product</li>
        </ol>
      </nav></div>
        <div className="card">
            <div className="card-header">
                <div className="row">
                    <div className="col-6">
                        <strong className="text-primary">SẢN PHẨM</strong>
                    </div>
                    <div className="col-6 d-flex justify-content-end">
                        <Link className="btn btn-sm btn-success" to="/admin/slider/create">
                            Thêm
                        </Link>
                        </div>
                </div>
            </div>
            <div className="card-body text-center">
                <table className="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Hình ảnh</th>
                            <th>Tên Trang</th>
                            <th>Link</th>
                            <th>Thứ tự</th>
                            <th>Ngày tạo</th>
                            <th>Chức năng</th>
                            <th>ID</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                    {sliders.map(function (slider, index) {
                                    return (
                                        <tr key={index}>
                                            <td>
                                                <input type="checkbox" />
                                            </td>
                                            <td>
                                                <img src={urlImage+'slider/'+slider.image} alt="hinh.png" className="img-fluid" width="50px" height="50px"/>
                                            </td>
                                            <td>{slider.name}</td>
                                            <td>
                                            {slider.link}
                                            </td>
                                            <td>
                                            {slider.positon}
                                            </td>
                                            <td>
                                            {Moment(slider.created_at).format('DD-MM-yyyy hh:mm')}
                                            </td>
                                            <td>
                                                <Link className="btn btn-sm btn-info me-2" to={'/admin/slider/show/'+slider.id}><FaRegEye /></Link>
                                                <Link className="btn btn-sm btn-info me-2" to={'/admin/slider/update/'+slider.id}><FaEdit /></Link>
                                                <button className="btn btn-sm btn-danger" onClick={() => sliderDelete(slider.id)}><FaTrashAlt /></button>
                                            </td>
                                            <td>
                                            {slider.id}
                                            </td>
                                            <td>
                                            {slider.status}
                                            </td>
                                        </tr>

                                    )
                                })};
                       
                    </tbody>
                </table>
            </div>
        </div></>


        
    );
}

export default SliderList;