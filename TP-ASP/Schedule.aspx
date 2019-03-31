<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .box {
              background-color: #fff;
              color: #000;
              padding: 20px;
              position: relative;
              margin: 20px;
              width: 70%;
              margin-top: -60px;
              margin-left: 90px;
            }
        .box.arrow-left:after {
          content: " ";
          position: absolute;
          left: -15px;
          top: 15px;
          border-top: 15px solid transparent;
          border-right: 7px solid #66ccff;
          border-left: none;
          border-bottom: 15px solid transparent;
        }
        .card{
            display:inline-block;
        }
        #spkr-img{
            width : 60px;
            height: 60px;
            border-radius: 50%;
            float:left;
        }
        #sch-ftr{
            background-color: #66ccff;
            color: #fff;
            margin-top: 10px;
           
        }
       
        #sc{
            text-align:center;
        }
        #sch-ftr i{
            margin-left:10px;
        }
        #tmln{
            margin:10px;
        }
        #hdr { 
           height:100%;
           background-image: url("images/45.jpg");
           background-repeat:no-repeat;
           background-size:cover;
           text-align:center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" Runat="Server">
    <section id="hdr">
        <div class="container">
            <div class="row" style="margin-top:20%;">
                <div class="col-6 mx-auto">
                    <h1>ANTIMICROBIAL RESISTANCE</h1>
                    <h3>Schedule & Travel infos</h3>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cBody" Runat="Server">

<section id="schh">
    <div class="container">
        <div class="row">
            <div class="col-6 mx-auto" style="text-align:center; border-bottom:2px solid #66ccff; margin-bottom:20px;">
                <i class="far fa-calendar-alt fa-6x"></i>
                <h1>SCHEDULE</h1>
                <p>Event time table</p>
            </div>
        </div>
        <div class="row">
            <div class="mx-auto">
                <p id="tmln">
                  <button onclick="sche('keynote');" class="btn btn-light" type="button" data-toggle="collapse" data-target="#Edata" aria-expanded="false" aria-controls="collapseExample">
                    9:00 - 10:00
                  </button>
                  <button onclick="sche('panel');" class="btn btn-light" type="button" data-toggle="collapse" data-target="#Edata" aria-expanded="false" aria-controls="collapseExample">
                    10:00 - 12:00
                  </button>
                  <button onclick="sche('spotlight');" class="btn btn-light" type="button" data-toggle="collapse" data-target="#Edata" aria-expanded="false" aria-controls="collapseExample">
                    13:00 - 14:00
                  </button>
                  <button onclick="sche('panel2');" class="btn btn-light" type="button" data-toggle="collapse" data-target="#Edata" aria-expanded="false" aria-controls="collapseExample">
                    14:00 - 15:00
                  </button>
                  <button onclick="sche('panel3');" class="btn btn-light" type="button" data-toggle="collapse" data-target="#Edata" aria-expanded="false" aria-controls="collapseExample">
                    15:00 - 16:00
                  </button>
                  <button onclick="sche('end');" class="btn btn-light" type="button" data-toggle="collapse" data-target="#Edata" aria-expanded="false" aria-controls="collapseExample">
                    16:00 - 17:00
                  </button>
                </p>
                <div class="collapse" id="Edata">
                  <div style="background-color:#fff;" class="card card-body">
                        <img id="spkr-img" src="https://cdn.cnn.com/cnnnext/dam/assets/190326154829-trump-filipovic-oped-exlarge-169.jpg" >
                        <div class="box arrow-left">
                            <h1 id="sch-ttl"></h1>
                            <div id="sch-bdy">
        
                            </div>
                            <div id="sch-ftr">
                                <i id="time" class="fas fa-clock"></i>
                                <i id="spkr" class="fas fa-microphone"></i>
                            </div>
                        </div>
                  </div>
                </div>
            </div>
        </div>
    </div> 
</section>

<section id="sc">
    <div class="container">
        <div class="row" style="margin-bottom:10px;">
            <div class="col-6 mx-auto">
                <i class="fas fa-info-circle fa-6x"></i>
                <h1>Choose your way to join us</h1>
            </div>
        </div>
        <div class="row" style="border-top:2px solid #66ccff; border-bottom:2px solid #66ccff; padding:50px;">
            <div class="col-12 col-md-4">
                <i class="fas fa-map-marked-alt fa-9x"></i>
                <h1>Venue</h1>
                <p>Tavistock Square Bloomsbury, London, UK</p>
            </div>
            <div class="col-12 col-md-4">
                <i class="fas fa-plane-departure fa-9x"></i>
                <h1>Nearby airport</h1>
                <p>Heathrow Airport</p>
            </div>
            <div class="col-12 col-md-4">
                <i class="fas fa-train fa-9x"></i>
                <h1>Nearby Train Station</h1>
                <p>St Pancras International, Euston Rd, Kings Cross, London N1C 4QP, UK</p>
            </div>
        </div>
    </div>
</section>



<section id="map">
    <div class="container">
        <div class="row">
            <div class="col-12 mx-auto">
                <select id="slctl" class="form-control" style="width:100%; margin-bottom:10px; cursor:pointer;">
                    <option selected>Select a location...</option>
                    <option>Airport</option>
                    <option>Train station</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-12 mx-auto">
                <iframe id="mymap" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5904.163744860121!2d-0.12725484069715684!3d51.524313400550895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48761b300054082f%3A0x3348f5566466b7c1!2sTavistock+Square%2C+Bloomsbury%2C+London%2C+UK!5e0!3m2!1sen!2sma!4v1554032390870!5m2!1sen!2sma" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </div>
</section>
    







<script>
    let p = document.querySelector('#sch-ttl');
    let body = document.querySelector('#sch-bdy');
    let img = document.querySelector('#spkr-img');
    let time = document.querySelector('#time');
    let speaker = document.querySelector('#spkr');

    let slct = document.querySelector('#slctl');
    let mymap = document.querySelector('#mymap');

    const sche = (title) => {
        let xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = () => {
            if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                var sch = JSON.parse(xmlhttp.responseText);
                p.textContent = sch.plan[title].title;
                body.textContent = sch.plan[title].body;
                img.setAttribute('src', sch.plan[title].img);
                time.textContent = ' ' + sch.plan[title].tm;
                speaker.textContent = ' ' + sch.plan[title].speaker;
            }
        };

        xmlhttp.open('GET', 'sch.json');
        xmlhttp.send();
    }

    slct.addEventListener('change', () => {
        if (slct.options[slct.selectedIndex].text === 'Airport') {
            mymap.setAttribute('src', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d66835.64425445521!2d-0.2908530592508072!3d51.49863866862915!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x48767234cdc56de9%3A0x8fe7535543f64167!2sHeathrow+Airport%2C+Longford+TW6%2C+UK!3m2!1d51.4700223!2d-0.45429549999999996!4m5!1s0x48761b300054082f%3A0x3348f5566466b7c1!2sTavistock+Square%2C+Bloomsbury%2C+London%2C+UK!3m2!1d51.5248219!2d-0.1295067!5e0!3m2!1sen!2sma!4v1554035384206!5m2!1sen!2sma');
        }
        if (slct.options[slct.selectedIndex].text === 'Train station') {
            mymap.setAttribute('src', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d4964.250239868603!2d-0.12886202272760416!3d51.529264909680485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x48761b3b8d98ed25%3A0xb92d6fcfa832dd12!2sSt+Pancras+International%2C+Euston+Rd%2C+Kings+Cross%2C+London+N1C+4QP%2C+UK!3m2!1d51.531427!2d-0.126133!4m5!1s0x48761b300054082f%3A0x3348f5566466b7c1!2sTavistock+Square%2C+Bloomsbury%2C+London%2C+UK!3m2!1d51.5248219!2d-0.1295067!5e0!3m2!1sen!2sma!4v1554035510834!5m2!1sen!2sma');
        }
    });

    

</script>
</asp:Content>

