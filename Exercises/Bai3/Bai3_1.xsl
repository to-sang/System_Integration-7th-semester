<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<html>
			<style>
				html, body {
				height: 100%;
				}
				html {
				display: table;
				margin: auto;
				}
				body {
				display: table-cell;
				}
				h3 {
				margin-top: 10px;
				text-align: center;
				}
				p {
				text-align: right;
				}
				.border {
				border-style: solid;
				padding: 15px;
				}
			</style>
			<body>
				<h3>PHIẾU MUA HÀNG</h3>
				<xsl:for-each select="DS/HoaDon">
					<div class="border">
						<table width="500px">
							<tr>
								<th>Hóa đơn:</th>
								<td>
									<xsl:value-of select="MaHD"/>
								</td>
								<th>Ngày bán:</th>
								<td>
									<xsl:value-of select="NgayBan"/>
								</td>
							</tr>
							<tr>
								<th>Loại hàng:</th>
								<td>
									<xsl:value-of select="LoaiHang/@TenLoai"/>
								</td>
							</tr>
						</table>
						<br/>
						<table border="1"  width="500px">
							<tr>
								<th>Mã hàng</th>
								<th>Tên hàng</th>
								<th>Số lượng</th>
								<th>Đơn giá</th>
								<th>Thành tiền</th>
							</tr>
							<xsl:for-each select="LoaiHang/Hang">
								<tr>
									<td>
										<xsl:value-of select="@MaHang"/>
									</td>
									<td>
										<xsl:value-of select="TenHang"/>
									</td>
									<td>
										<xsl:value-of select="SoLuong"/>
									</td>
									<td>
										<xsl:value-of select="DonViTinh"/>
									</td>
									<td>
										<xsl:value-of select="SoLuong*DonViTinh"/>
									</td>
								</tr>
							</xsl:for-each>
						</table>
						<p>Người giao</p>
					</div>
					<br/>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
