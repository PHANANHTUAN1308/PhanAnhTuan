import React, { useEffect, useState } from "react";
import Productitem from "../../component/Productitem";
import productservice from "../../service/ProductSevice";
import { Link } from "react-router-dom";


function Hot() {
  const [products, setProduct] = useState([]);

  useEffect(function () {
    (async function () {
      await productservice.getAll().then(function (result) {
        setProduct(result.data.data);
      });
    })();
  }, []);
  return(
  <section className="padding-bottom">
    <header className="section-heading heading-line">
      <h4 className="title-section text-uppercase">Hot</h4>
    </header>
    <div className="row">
    {products.map(function (product,index){
      return <Productitem product={product} key={index}/>;

    })}
  
      
    </div>

  </section>);
}
export default Hot;
