import Slider from "../../pages/home/Slider";

import React from "react";
import Hot from "../../pages/home/Hot";
import Sale from "../../pages/home/Sale";
import Request from "../../pages/home/Request";
import Items from "../../pages/home/Items";
import Services from "../../pages/home/Services";
import Deal from "../../pages/home/Deal";



function Home(props) {
  return (
    <div className="container">
      <Slider />
      <Hot/>

      <Deal/>
      <Items />
      <Request />

    </div>
  );
}

export default Home;
