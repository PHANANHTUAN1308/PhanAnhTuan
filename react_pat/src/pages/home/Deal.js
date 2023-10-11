import React from "react";
const Deal = () => (
  <section class="banner-section">
    <div class="container">
      <div class="row banner-holder " style={{position: "relative", textAlign:"center"}}>
        <div class="col-md-4">
          <a href="/zoids-wild-liger.html">
            <div class="tint"></div>
            <img width={400} height={400} src={require("../../assets/images/banners/slide1.webp")}  alt="#" />
            <div class="cat-banner-info tc-animate-me animated zoomIn" data-animation="zoomIn">
              <p>From Kotobukiya</p>
              <h3>WILD LIGER ZOIDS</h3>
              <span class="shop-btn">SHOP NOW</span>
            </div>
          </a>
        </div>
        <div class="col-md-4">
          <a href="/fumina-hoshino-figure-rise-model.html">
            <div class="tint"></div>
            <img width={400} src={require("../../assets/images/banners/slide1.webp")} alt="#" />
            <div class="cat-banner-info tc-animate-me animated zoomIn" data-animation="zoomIn">
              <p>New from Build Fighters Try</p>
              <h3>FUMINA HOSHINO</h3>
              <span class="shop-btn">SHOP NOW</span>
            </div>
          </a>
        </div>
        <div class="col-md-4">
          <a href="/gundam-heavyarms-hg.html">
            <div class="tint"></div>
            <img width={400} src={require("../../assets/images/banners/slide1.webp")} alt="heavyarms" />
            <div class="cat-banner-info tc-animate-me animated zoomIn" data-animation="zoomIn">
              <p>New from Gundam Wing</p>
              <h3>HEAVYARMS HG</h3>
              <span class="shop-btn">SHOP NOW</span>
            </div>
          </a>
        </div>
      </div>
    </div>
  </section>
);
export default Deal;
