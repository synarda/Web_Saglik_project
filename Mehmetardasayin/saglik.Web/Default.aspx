<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="saglik.Web.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<title>Tıpçım anasayfa</title>
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet"/>
	<link rel="stylesheet" href="/Resource/css/animate.css"/>
	<link rel="stylesheet" href="/Resource/css/icomoon.css"/>
	<link rel="stylesheet" href="/Resource/css/themify-icons.css"/>
	<link rel="stylesheet" href="/Resource/css/bootstrap.css"/>
	<link rel="stylesheet" href="/Resource/css/magnific-popup.css"/>
	<link rel="stylesheet" href="/Resource/css/bootstrap-datepicker.min.css"/>
	<link rel="stylesheet" href="/Resource/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="/Resource/css/owl.theme.default.min.css"/>
	<link rel="stylesheet" href="/Resource/css/style.css"/>
	<script src="/Resource/js/modernizr-2.6.2.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
        </style>
</head>
<body>
    <div class="gtco-loader"></div>	
	<div id="page">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="Default.aspx">Tıpçım<em>.</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li><a href="Default.aspx"></a></li>                        
                    </ul>	
				</div>
			</div>			
		</div>
	</nav>
	<header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(Resource/images/img_bg_2.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<form runat="server">
				<div class="col-md-12 col-md-offset-0 text-left">
					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>Tıpçım</h1><br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                                <Columns>
                                    <asp:BoundField DataField="Profes&#246;rler" HeaderText="Profes&#246;rler" SortExpression="Profes&#246;rler"></asp:BoundField>
                                    <asp:BoundField DataField="Kodu" HeaderText="Kodu" SortExpression="Kodu"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString6 %>' SelectCommand="SELECT [Profesörler], [Kodu] FROM [Profesörlerimiz]"></asp:SqlDataSource>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="Do&#231;entlerimiz" HeaderText="Do&#231;entlerimiz" SortExpression="Do&#231;entlerimiz"></asp:BoundField>
                                    <asp:BoundField DataField="kodu" HeaderText="kodu" SortExpression="kodu"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                                <Columns>
                                    <asp:BoundField DataField="Yardımcı_Do&#231;entlerimiz" HeaderText="Yardımcı_Do&#231;entlerimiz" SortExpression="Yardımcı_Do&#231;entlerimiz"></asp:BoundField>
                                    <asp:BoundField DataField="Kodu" HeaderText="Kodu" SortExpression="Kodu"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
                                <Columns>
                                    <asp:BoundField DataField="Operat&#246;r_Doktorlarımız" HeaderText="Operat&#246;r_Doktorlarımız" SortExpression="Operat&#246;r_Doktorlarımız"></asp:BoundField>
                                    <asp:BoundField DataField="Kodu" HeaderText="Kodu" SortExpression="Kodu"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
                                <Columns>
                                    <asp:BoundField DataField="Uzman_Doktorlarımız" HeaderText="Uzman_Doktorlarımız" SortExpression="Uzman_Doktorlarımız"></asp:BoundField>
                                    <asp:BoundField DataField="Kodu" HeaderText="Kodu" SortExpression="Kodu"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString11 %>' SelectCommand="SELECT [Uzman Doktorlarımız] AS Uzman_Doktorlarımız, [Kodu] FROM [UzmanDoktorlarımız]"></asp:SqlDataSource>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString10 %>' SelectCommand="SELECT [Operatör Doktorlarımız] AS Operatör_Doktorlarımız, [Kodu] FROM [OperatörDoktorlarımız]"></asp:SqlDataSource>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString9 %>' SelectCommand="SELECT [Yardımcı Doçentlerimiz] AS Yardımcı_Doçentlerimiz, [Kodu] FROM [YardımcıDoçentlerimiz]"></asp:SqlDataSource>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString5 %>' SelectCommand="SELECT [Doçentlerimiz], [kodu] FROM [Doçentlerimiz]"></asp:SqlDataSource>
                            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                            <asp:Table ID="Table1" runat="server"></asp:Table>
							<div id="sonuc" style="display: none;">
							</div>
						</div>   			
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">									
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">										
												<div class="row form-group">
													<div class="col-md-12">
														<label for="fullname">Adınız</label><br />
                                                        <asp:TextBox ID="TextBox1" style="height: 35px; width: 200px" runat="server" ></asp:TextBox>													
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="fullname">Soyadınız</label><br />
														<asp:TextBox ID="TextBox2" style="height: 35px; width: 200px" runat="server"></asp:TextBox>														
													</div>
												</div>
											<div class="row form-group">
													<div class="col-md-12">
														<label for="fullname">Yaşınız</label><br />
                                                        <asp:DropDownList ID="DropDownList2" runat="server" >
                                                            <asp:ListItem>yaşınız</asp:ListItem>
                                                            <asp:ListItem>0-10</asp:ListItem>
                                                            <asp:ListItem>11-20</asp:ListItem>
                                                            <asp:ListItem>21-30</asp:ListItem>
                                                            <asp:ListItem>31-50</asp:ListItem>
                                                            <asp:ListItem>51-70</asp:ListItem>
                                                            <asp:ListItem>71-100</asp:ListItem>
                                                        </asp:DropDownList>			
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="fullname">Görünmek istediğiniz Doktorun Ünvanını Giriniz</label><br />
                                                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ünvanlar" DataValueField="Ünvanlar" AutoPostBack="True"  style="height: 35px; width: 200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                            <asp:ListItem>profes&#246;r</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString3 %>' SelectCommand="SELECT [Ünvanlar] FROM [Ünvanlar]"></asp:SqlDataSource>
                                                        
														
													</div>													
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="fullname">Görünmek istediğiniz Doktorun kodunu Giriniz</label><br />
														<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>														
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
                                                        <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="Oluştur" />
														
												</div>
											</div>											
										</div>										
									</div>
								</div>
							</div>							
						</div>
					</div>					
				</div>
			</div>
		</div>
	</header>	
	<div id="gtco-features">														
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
					<label>Adınız:</label>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
					<label>Soyadınız:</label>
					<asp:Label ID="Label4" runat="server" Text=""></asp:Label> <br />
					<label>Yaşınız:</label>
					<asp:Label ID="Label5" runat="server" Text=""></asp:Label>
					<br />
					<label>Seçtiğiniz ünvan:</label>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
					<label>Seçtiğiniz doktorun adı:</label>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
				</div>
			</div>			
		</div>
	</div>
	<div class="gtco-cover gtco-cover-sm" style="background-image: url(images/img_bg_1.jpg)"  data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container text-center">
			<div class="display-t">
				<div class="display-tc">
					<h1> Hastalığınızın En net belirtisini giriniz</h1>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource7" DataTextField="column1" DataValueField="column1">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource8" DataTextField="column1" DataValueField="column1"></asp:DropDownList>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource9" DataTextField="column1" DataValueField="column1"></asp:DropDownList>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource10" DataTextField="belirtiler" DataValueField="belirtiler"></asp:DropDownList>
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource11" DataTextField="Belirtiler" DataValueField="Belirtiler"></asp:DropDownList>
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource12" DataTextField="belirtiler" DataValueField="belirtiler"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource12" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString18 %>' SelectCommand="SELECT [belirtiler] FROM [(70-100 Yaş belirtiler]"></asp:SqlDataSource>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource11" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString17 %>' SelectCommand="SELECT [Belirtiler] FROM [(51-70 yaş belirtileri)]"></asp:SqlDataSource>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource10" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString16 %>' SelectCommand="SELECT [belirtiler] FROM [(31-50 yaş belirtiler)]"></asp:SqlDataSource>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource9" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString15 %>' SelectCommand="SELECT [belirtiler(21-30 yaş)] AS column1 FROM [(21-30 yaş belirtiler)]"></asp:SqlDataSource>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource8" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString13 %>' SelectCommand="SELECT [Belirtiler(11-20 yaş)] AS column1 FROM [(11-20 yaş belirtiler)]"></asp:SqlDataSource>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:Web_ProjeConnectionString12 %>' SelectCommand="SELECT [belirtiler(0-10 yaş)] AS column1 FROM [(0-10 yaş belirtiler)]"></asp:SqlDataSource>
					<br />
                    <asp:TextBox ID="TextBox3" style="height: 35px; width: 400px"  runat="server"></asp:TextBox>
					<br />
                    <asp:Button ID="Button2" runat="server" Text="Doktora gönder" OnClick="Button2_Click"  />                   
                </div>
               </div>
		</div>
	</div>
	<div class="gtco-cover gtco-cover-sm" style="background-image: url(images/img_bg_1.jpg)"  data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="gtco-container text-center">
			<div class="display-t">
				<div class="display-tc">
					
                    <asp:Label ID="Label8" runat="server" style="color:black;" Text="doktorunuzun size en kısa zamanda döneceği tahmini süre:"></asp:Label>
					<asp:Label ID="Label7" runat="server" style="color:black;" Text=""></asp:Label>
                <asp:SqlDataSource runat="server" ID="SqlDataSource13" ConnectionString='<%$ ConnectionStrings:kayıtlarConnectionString2 %>' SelectCommand="SELECT [Ad], [soyad], [yaş], [şikayetleriniz] FROM [gelenveri]"></asp:SqlDataSource>                    
			</div>
		</div>
	</div>
	</form>	
	
	</div>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
		 <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="/Resource/js/jquery.min.js"></script>
	<script src="/Resource/js/jquery.easing.1.3.js"></script>
	<script src="/Resource/js/bootstrap.min.js"></script>
	<script src="/Resource/js/jquery.waypoints.min.js"></script>
	<script src="/Resource/js/owl.carousel.min.js"></script>
	<script src="/Resource/js/jquery.countTo.js"></script>
	<script src="/Resource/js/jquery.stellar.min.js"></script>
	<script src="/Resource/js/jquery.magnific-popup.min.js"></script>
	<script src="/Resource/js/magnific-popup-options.js"></script>
	<script src="/Resource/js/bootstrap-datepicker.min.js"></script>
	<script src="/Resource/js/main.js"></script>
</body>
</html>
