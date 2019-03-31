<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" Runat="Server">
        <section id="first-section">
        <video autoplay muted loop id="back-vid">
            <source src="images/bck.mov" type="video/mp4">
        </video>
        <div id="first-overlay"></div>
            
                    <div id="first-content">
                        <h1 id="title">ANTIMICROBAL RESISTANCE</h1>
                        <p id="subtitle">Preventing an antibiotic apocalypse</p>
                        <p id="quote"><em>“Enough time has been wasted issuing warnings about antibiotic resistance. The moment has come to do something about it” The Economist.</em></p>
                        <a id="register" class="btn-link" href="Register.aspx">Register now</a>
                        <div id="count-down">
                            STARTS IN :
                            <p id="timer"></p>
                        </div>
                 </div>
        
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cBody" Runat="Server">
    <section id="sec2">
        <div id="sec2-content">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <h2 id="sec2-title">OVERVIEW</h2>

                        <p>The world is facing an imminent crisis of antimicrobial resistance (AMR). A growing range of disease-causing bacteria are proving difficult to treat; some are no longer treatable, even with the last line of antibiotic defences. In a classic case of market failure, ageing antibiotics that are increasingly less effective are not being replaced by new ones. Meanwhile, resistance is accelerating through the misuse and abuse of antibiotics—in humans, animals and the environment. The cost of inaction is great. The risk of returning to a pre-antibiotic era, as resistant infections become more common and more life-threatening, is very real.</p>
                    </div>
                    <div class="col-12 col-lg-6">
                        <img id="img1" src="images/ant.jpg">
                    </div>
                </div>
            </div>
        </div>
    </section>



    <section id="sec3">
        <div id="sec3-content">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <img id="img2" src="images/faq.png">
                    </div>

                    <div class="col-12 col-lg-6">

                        <h1 id="ttl">FAQ</h1>

                        <div id="accordion" class="wow zoomIn">

                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            Question 1
                                        </button>
                                    </h5>
                                </div>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        How can new-market entry awards circumvent “blind spots” in conventional funding mechanisms and incentivise R&amp;D?
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            Question 2
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        Does the drug-approval process need a fundamental re-think?
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            Question 3
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        How can surveillance of the supply chain be improved to stop substandard medicines reaching the market?
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                                            Question 4
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                    <div class="card-body">
                                        There are currently few licensed vaccines for the bacteria that are considered urgent AMR threats. How can we change this?
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                                            Question 5
                                        </button>
                                    </h5>
                                </div>
                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                    <div class="card-body">
                                        There are currently few licensed vaccines for the bacteria that are considered urgent AMR threats. How can we change this?
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>




    <section id="sec4">
        <div id="sec4-content">
            <!-- CAROUSEL -->
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div id="slidee" class="carousel slide  wow zoomIn" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slidee" data-slide-to="0" class="active"></li>
                                <li data-target="#slidee" data-slide-to="1"></li>
                                <li data-target="#slidee" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="images/slide1.JPG" alt="First Slide">
                                    <div class="carousel-caption">
                                        <p>Antibiotic resistance tests: Bacteria are streaked on dishes with white disks, each impregnated with a different antibiotic.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/slide2.png" alt="Second Slide">
                                    <div class="carousel-caption">
                                        <p>Klebsiella pneumoniae, the bacterium in which NDM-1 was first identified.</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/slide3.png" alt="Third Slide">
                                    <div class="carousel-caption">
                                        <p>Mission Critical: Preventing Antibiotic Resistance (CDC report, 2014)</p>
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#slidee" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon"></span>
                                </a>
                                <a class="carousel-control-next" href="#slidee" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>






    <section id="sec5">
        <div id="sec5-content">
            <h1>SPEAKERS</h1>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card wow zoomIn">
                            <img class="card-img-top" src="images/Sprenger.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">MARC SPRENGER</h5>
                                <p class="card-text">Director, antimicrobial resistance secretariat, World Health Organisation</p>
                                <p class="btn btn-primary" data-toggle="modal" data-target="#sprenger">More informations</p>
                            </div>
                        </div>
                    </div>
                    <!-- MODAL FOR SPRENGER -->
                    <div class="modal" id="sprenger">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title">MARC SPRENGER</h2>
                                </div>
                                <div class="modal-body">
                                    Marc Sprenger is director of the Antimicrobial Resistance Secretariat at the World Health Organisation in Geneva, a position he has held since September 2015. He is responsible for the co-ordination and implementation of the Global Action Plan on AMR. From 2010 until 2015, Mr Sprenger served as director of the European Centre for Disease Prevention and Control and from 2003 until 2010 was director general of the Dutch National Institute for Public Health and the Environment (RIVM). From 1999 to 2003, he was director of health of the Dutch National Healthcare Insurance Board providing guidance on healthcare system and insurance issues, including reimbursement of new pharmaceuticals. As head of the Centre for Infectious Disease Epidemiology, RIVM, from 1993 to 1999, Mr Sprenger established a new centre of national coordination of infectious disease epidemiology and initiated the European Antimicrobial Resistance Surveillance System.
                                </div>
                                <button class="close" type="button" data-dismiss="modal" style="margin: 10px;">CLOSE</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card wow zoomIn">
                            <img class="card-img-top" src="images/jayasree.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">JAYASREE K. IYER</h5>
                                <p class="card-text">Executive director, Access to Medicine Foundation.</p>
                                <p class="btn btn-primary" data-toggle="modal" data-target="#jayasree">More informations</p>
                            </div>
                        </div>
                    </div>
                    <!-- MODAL FOR JAYASREE -->
                    <div class="modal" id="jayasree">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title">JAYASREE K. IYER</h2>
                                </div>
                                <div class="modal-body">
                                    Jayasree K. Iyer leads the strategic direction and stakeholder engagement of the Access to Medicine Foundation. She directs the research programmes for the Antimicrobial Resistance Benchmark, the Access to Medicine Index, the Access to Vaccines Index and specific studies into priority health topics.
                                    To stimulate positive change within the pharmaceutical industry, Jayasree often speaks publicly on access-to-medicine matters on platforms hosted by international, governmental and non-governmental organisations, including the UN and WHO. In this capacity, she also engages with key pharmaceutical industry investors to support their engagement activities with pharma companies. She often refers to the Access to Medicine Index as a “book of solutions” for pharmaceutical companies working to improve their access footprints. Jayasree holds various postgraduate degrees (Masters and PhD) from Singapore and the John Hopkins School of Hygiene and Public Health. She has written many technical and research reports, book chapters and reviews, along with strategy papers for medicines for developing countries and solutions for neglected tropical diseases.
                                    Before joining the Foundation, Jayasree spent four years managing a portfolio of more than 25 public private partnerships between the Dutch government and the pharmaceutical industry, totalling a research budget of €150 million. These partnerships addressed cancer, immunology and neglected diseases. She has worked for various non-government organisations, academic institutions and was part of the founding team of a diagnostic service company in the US.
                                </div>
                                <button class="close" type="button" data-dismiss="modal" style="margin: 10px;">CLOSE</button>
                            </div>
                        </div>
                    </div>


                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card wow zoomIn">
                            <img class="card-img-top" src="images/heymann.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">DAVID HEYMANN</h5>
                                <p class="card-text">Head, centre for global health security, Chatham House</p>
                                <p class="btn btn-primary" data-toggle="modal" data-target="#heymann">More informations</p>
                            </div>
                        </div>
                    </div>
                    <!-- MODAL FOR HEYMANN -->
                    <div class="modal" id="heymann">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title">DAVID HEYMANN</h2>
                                </div>
                                <div class="modal-body">
                                    David Heymann is professor of Infectious Disease Epidemiology, London School of Hygiene and Tropical Medicine and head of the Centre on Global Health Security at Chatham House, London. From 2012 to March 2017 he was chairman of Public Health England, UK, and prior to that was assistant director of the World Health Organisation, and executive director of the WHO Communicable Diseases Cluster, during which he headed the global response to SARS. Before WHO, Mr Heymann worked for 13 years as a medical epidemiologist in sub-Saharan Africa, on assignment from the US CDC, where he participated in the response to the first, second and third outbreaks of Ebola in DRC. Prior to joining CDC, he worked in India as a medical epidemiologist in the WHO smallpox eradication programme. He is an elected fellow of the Institute of Medicine (US) and the Academy of Medical Sciences (UK). He is a recipient of the Heinz Award on the Human Condition, which has provided funding for the establishment of an on-going mentorship programme at the International Association of Public Health Institutes (IANPHI). Heymann has over 200 peer reviewed publications, commentaries and book chapters, and is the editor of the Control of Communicable Diseases Manual, a global reference for public health and health protection. In 2009 he was appointed an honorary Commander of the Most Excellent Order of the British Empire (CBE) for service to global public health.
                                </div>
                                <button class="close" type="button" data-dismiss="modal" style="margin: 10px;">CLOSE</button>
                            </div>
                        </div>
                    </div>


                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card wow zoomIn">
                            <img class="card-img-top" src="images/outterson.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">KEVIN OUTTERSON</h5>
                                <p class="card-text">Executive director and principal investigator, CARB-X</p>
                                <p class="btn btn-primary" data-toggle="modal" data-target="#outterson">More informations</p>
                            </div>
                        </div>
                    </div>
                    <!-- MODAL FOR OUTTERSON -->
                    <div class="modal" id="outterson">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title">KEVIN OUTTERSON</h2>
                                </div>
                                <div class="modal-body">
                                    Kevin Outterson teaches health care law at Boston University, where he co-directs the Health Law Program. He serves as the executive director and principal investigator for CARB-X, a $540M international public-private partnership to accelerate global antibacterial innovation. Key partners in CARB-X include the US Government (BARDA & NIAID), the Wellcome Trust, the UK Government (GAMRIF, DHSC), the German Federal Ministry of Education and Research, and the Bill & Melinda Gates Foundation.

                                    His research work focuses on the law and economics of antimicrobial resistance. Mr Outterson was a founding member of the Antimicrobial Resistance Working Group at the CDC. He was a senior consultant on the Eastern Research Group study on antibiotic markets for FDA/HHS. Starting in October 2014, he joined DRIVE-AB, a three-year €9 million project on antibiotic business models sponsored by the European Union’s Innovative Medicines Initiative. Professor Outterson also serves on the Advisory Panel for the Longitude Prize for an inexpensive rapid point-of-care antibiotic diagnostic. Professor Outterson was given the 2015 Leadership Award by the Alliance for the Prudent Use of Antibiotics for his research and advocacy work. He has testified before Congress, Parliamentary working groups, WHO, and several state legislatures.
                                </div>
                                <button class="close" type="button" data-dismiss="modal" style="margin: 10px;">CLOSE</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end of row 1-->


                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card wow zoomIn">
                            <img class="card-img-top" src="images/patel.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">JEAN PATEL</h5>
                                <p class="card-text">Science team lead, antibiotic resistance co-ordination and strategy, CDC</p>
                                <p data-toggle="modal" data-target="#patel" class="btn btn-primary">More informations</p>
                            </div>
                        </div>
                    </div>

                    <!-- MODAL FOR PATEL -->
                    <div class="modal" id="patel">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title">JEAN PATEL</h2>
                                </div>
                                <div class="modal-body">
                                    Jean Patel is a clinical microbiologist with specific expertise in the laboratory detection of antimicrobial resistance. At CDC, Jean leads implementation of CDC’s Antibiotic Resistance Laboratory Network and the CDC and FDA Antibiotic Resistance Isolate Bank. Ms Patel has experience leading the CDC Antimicrobial Resistance Laboratory and prior to CDC worked as the assistant director of the Clinical Microbiology Laboratory of the Hospital of the University of Pennsylvania. Ms Patel has served as chair and vice-chair of the Clinical and Laboratory Standards Institute Subcommittee for Antimicrobial Susceptibility Testing and works with the World Health Organisation to develop technical guidance for detecting resistance and strengthening global surveillance of antimicrobial resistance.
                                </div>
                                <button class="close" type="button" data-dismiss="modal" style="margin: 10px;">CLOSE</button>
                            </div>
                        </div>
                    </div>


                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card wow zoomIn">
                            <img class="card-img-top" src="images/clare.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">CLARE CHANDLER</h5>
                                <p class="card-text">Director, antimicrobial resistance centre, London School of Hygiene and Tropical Medicine.</p>
                                <p data-toggle="modal" data-target="#clare" class="btn btn-primary">More informations</p>
                            </div>
                        </div>
                    </div>
                    <!-- MODAL FOR CLARE -->
                    <div class="modal" id="clare">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title">CLARE CHANDLER</h2>
                                </div>
                                <div class="modal-body">
                                    Clare Chandler is an associate professor in Medical Anthropology and director of the Antimicrobial Resistance Centre at the London School of Hygiene and Tropical Medicine. Ms Chandler has spent the past decade and a half researching how people use medicines and how health care is enacted across different low and middle income country settings. She leads a large research group to explore the ways societies around the globe have become reliant on antimicrobial medicines not only for treatment of illnesses but in anticipation of infections in humans, animals and in crops, and how this relates to wider economic and political imperatives. Her projects include the Anti-Microbials in Society (AMIS) Hub, an online resource of high quality social research on AMR. Clare provides technical advice about behavioural aspects of global health, for example on malaria, Ebola, and antimicrobial resistance, to various governmental and multi-lateral agencies.
                                </div>
                                <button class="close" type="button" data-dismiss="modal" style="margin: 10px;">CLOSE</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card wow zoomIn">
                            <img class="card-img-top" src="images/aurelia.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">AURÉLIA NGUYEN</h5>
                                <p class="card-text">Managing director, vaccines and sustainability, Gavi</p>
                                <p data-toggle="modal" data-target="#aurelia" class="btn btn-primary">More informations</p>
                            </div>
                        </div>
                    </div>
                    <!-- MODAL FOR AURELIA -->
                    <div class="modal" id="aurelia">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title">AURÉLIA NGUYEN</h2>
                                </div>
                                <div class="modal-body">
                                    Aurélia Nguyen is the managing director for Vaccines and Sustainability at Gavi, the Vaccine Alliance. She leads the design of how Gavi’s resources are turned into impactful and financially sustainable vaccine programmes. Prior to joining Gavi in 2011, Ms Nguyen held a variety of posts within GlaxoSmithKline, where she led the development of GSK’s policies on access to medicines and vaccines in the developing world. Ms Nguyen has also undertaken research for the WHO on generic medicines policies. She is a certified accountant and holds a Master’s in Health Policy, Planning and Financing.
                                </div>
                                <button class="close" type="button" data-dismiss="modal" style="margin: 10px;">CLOSE</button>
                            </div>
                        </div>
                    </div>


                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="card wow zoomIn">
                            <img class="card-img-top" src="images/iruka.jpeg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">IRUKA N OKEKE</h5>
                                <p class="card-text">Professor, University of Ibadan, Nigeria</p>
                                <p data-toggle="modal" data-target="#iruka" class="btn btn-primary">More informations</p>
                            </div>
                        </div>
                    </div>
                    <!-- MODAL FOR IRUKA -->
                    <div class="modal" id="iruka">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h2 class="modal-title">IRUKA N OKEKE</h2>
                                </div>
                                <div class="modal-body">
                                    Iruka N Okeke is a member of Nigeria’s Technical Working Group on Antimicrobial Resistance and is instituting genomic surveillance of antimicrobial resistance as part of a collaborative National Institute for Health-supported Global Health Research Unit. Ms Okeke is a professor of pharmaceutical microbiology at the University of Ibadan, Nigeria and an African research leader supported by the UK Medical Research Council MRC and Department for International Development. Her research group investigates the mechanisms bacteria use to colonise humans, cause disease and gain drug resistance. She also studies laboratory practice in Africa.

                                    Ms Okeke is a fellow of the Nigerian and the African Academies of Science. She is extensively published in the fields of microbiology, genetics and science and technology studies and is the editor-in-chief of the African Journal of Laboratory Medicine. Iruka is on the Wellcome Trust’s Surveillance and Epidemiology of Drug Resistant Infections Consortium (SEDRIC) advisory board and currently serves as a drug resistance consultant to the Nigeria Centre for Disease Control (CDC), WHO and other organisations.
                                </div>
                                <button class="close" type="button" data-dismiss="modal" style="margin: 10px;">CLOSE</button>
                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </div>
    </section>



    <section id="sec6">
        <div id="sec6-content" class="wow zoomIn">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <p>Supported by</p>
                    </div>
                    <div class="col-12 col-md-6">
                        <img src="images/pew.jpg" alt="The pew charitable trusts" class="img-thumbnail">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6">
                        <p>Diamond sponsor</p>
                    </div>
                    <div class="col-12 col-md-6">
                        <img src="images/johnson.png" alt="JOHNSON & JOHNSON" class="img-thumbnail">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6">
                        <p>Platinum sponsor</p>
                    </div>
                    <div class="col-12 col-md-6">
                        <img src="images/msd.jpg" alt="msd" class="img-thumbnail">
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-4">
                        <p>Supporting associations</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <img src="images/efpia.png" alt="efpia" class="img-thumbnail">
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <img src="images/bsac.jpg" alt="bsac" class="img-thumbnail">
                    </div>
                </div>


            </div>

        </div>

    </section>

    <section id="sec7">
        <div id="sec7-content" class="wow zoomIn">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <form runat="server" action="main.aspx" method="post">
                            <fieldset>
                                <legend>CONTACT</legend>
                                <asp:TextBox runat="server" ID="txtName" placeholder="Name"/><br>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="please enter your name" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:TextBox runat="server" ID="textMail" placeholder="email"/><br>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textMail" ErrorMessage="please enter your email" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textMail" ErrorMessage="incorrect email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="spanElement" Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:TextBox runat="server" ID="txtMsgT" placeholder="Message Title"/><br>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMsgT" ErrorMessage="please enter a message title" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:TextBox runat="server" ID="txtMessage" placeholder="Message"/><br>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMessage" ErrorMessage="please enter your message" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:Button runat="server" class="btn-primary" Text="Send" OnClick="Unnamed1_Click" />
                            </fieldset>
                        </form>
                    </div>
                    <div class="col-12 col-lg-6">
                        <h2 id="loc">LOCATION</h2>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4964.797689440302!2d-0.13129495161744376!3d51.52424405058659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48761b300054082f%3A0x3348f5566466b7c1!2sTavistock+Square%2C+Bloomsbury%2C+London%2C+UK!5e0!3m2!1sen!2sma!4v1547764274032" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>

    </section>

<script>
var countDownDate = new Date("March 26, 2020 15:37:25").getTime();

var x = setInterval(function () {

    var now = new Date().getTime();

    var distance = countDownDate - now;

    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    document.getElementById("timer").innerHTML = days + "d " + hours + "h " +
        minutes + "m " + seconds + "s ";

    if (distance < 0) {
        clearInterval(x);
        document.getElementById("demo").innerHTML = "EXPIRED";
    }
}, 1000);
</script>
</asp:Content>

