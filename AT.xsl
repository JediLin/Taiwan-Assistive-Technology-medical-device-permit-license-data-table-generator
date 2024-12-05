<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:date="http://exslt.org/dates-and-times"
  extension-element-prefixes="date">
  <xsl:template match="/">
    <html lang="zh-Hant-TW">
    <head>
    <title>社政輔具常用醫療器材許可證字號資料表</title>
    <style>
table thead th, table tbody td {
  padding: 5px;
  max-width: 20em;
  word-wrap: break-word;
}
table tbody tr:nth-child(2n) td {
  background: #ffcccc;
}
table tbody tr:nth-child(2n+1) td {
  background: #ccffff;
}
    </style>
    </head>
    <body>
      <table id="myTable">
      	<caption>社政輔具常用醫療器材許可證字號暨相關資訊｜製表日期：<xsl:value-of select="date:year()"/> 年 <xsl:value-of select="date:month-in-year()"/> 月 <xsl:value-of select="date:day-in-month()"/> 日</caption>
      	<thead>
      	  <tr><th>許可證字號<br/>快查：<input type="text" id="myInput" onkeyup="myFunction()" placeholder="輸入數字部分"/></th><th>註銷狀態</th><th>有效日期</th><th>品名</th><th>醫器類別、級數、規格</th><th>申請商</th><th>製造商</th></tr>
      	</thead>
      	<tbody>
            <xsl:for-each select="dataList">
              <xsl:for-each select="rows">
              	<xsl:if test="((醫器次類別一='D.5273 呼吸道正壓供應系統') or (醫器次類別一='D.5280 呼吸管路支撐物') or (醫器次類別一='D.5330 呼吸氣體混合器') or (醫器次類別一='D.5440 手提式氧氣產生器') or (醫器次類別一='D.5630 噴霧器') or (醫器次類別一='G.0001 人工耳蝸植入器') or (醫器次類別一='G.3300 助聽器') or (醫器次類別一='I.4780 動力式抽吸幫浦') or (醫器次類別一='M.5844 矯正鏡片') or (醫器次類別一='M.5916 硬式透氣隱形眼鏡') or (醫器次類別一='M.5925 軟式隱形眼鏡') or (醫器次類別一='O.3025 義肢及裝具用附件') or (醫器次類別一='O.3075 醫療用手杖') or (醫器次類別一='O.3100 機械椅') or (醫器次類別一='O.3150 醫療用柺杖') or (醫器次類別一='O.3175 浮動坐墊') or (醫器次類別一='O.3410 體外肢體裝具用組件') or (醫器次類別一='O.3420 體外肢體義肢用組件') or (醫器次類別一='O.3450 動力式上肢義肢') or (醫器次類別一='O.3475 肢體裝具') or (醫器次類別一='O.3480 動力式下肢外骨骼肢體裝具') or (醫器次類別一='O.3490 軀幹裝具') or (醫器次類別一='O.3500 體外組裝下肢義肢') or (醫器次類別一='O.3800 醫療用電動代步器') or (醫器次類別一='O.3825 機械式助行器') or (醫器次類別一='O.3850 機械式輪椅') or (醫器次類別一='O.3860 動力式輪椅') or (醫器次類別一='O.3880 特製輪椅') or (醫器次類別一='O.3890 爬梯式輪椅') or (醫器次類別一='O.3900 站立式輪椅') or (醫器次類別一='O.3930 移動式輪椅升降器') or (醫器次類別一='O.5150 動力式病患輸送機') or (醫器次類別一='O.5160 氣流床') or (醫器次類別一='O.5170 動力式氣流漂浮治療床') or (醫器次類別一='O.5180 手動式病人翻身床') or (醫器次類別一='O.5225 動力式病人翻身床') or (醫器次類別一='D5273 呼吸道正壓供應系統') or (醫器次類別一='D5280 呼吸管路支撐物') or (醫器次類別一='D5330 呼吸氣體混合器') or (醫器次類別一='D5440 手提式氧氣產生器') or (醫器次類別一='D5630 噴霧器') or (醫器次類別一='G0001 人工耳蝸植入器') or (醫器次類別一='G3300 助聽器') or (醫器次類別一='I4780 動力式抽吸幫浦') or (醫器次類別一='M5844 矯正鏡片') or (醫器次類別一='M5916 硬式透氣隱形眼鏡') or (醫器次類別一='M5925 軟式隱形眼鏡') or (醫器次類別一='O3025 義肢及裝具用附件') or (醫器次類別一='O3075 醫療用手杖') or (醫器次類別一='O3100 機械椅') or (醫器次類別一='O3150 醫療用柺杖') or (醫器次類別一='O3175 浮動坐墊') or (醫器次類別一='O3410 體外肢體裝具用組件') or (醫器次類別一='O3420 體外肢體義肢用組件') or (醫器次類別一='O3450 動力式上肢義肢') or (醫器次類別一='O3475 肢體裝具') or (醫器次類別一='O3480 動力式下肢外骨骼肢體裝具') or (醫器次類別一='O3490 軀幹裝具') or (醫器次類別一='O3500 體外組裝下肢義肢') or (醫器次類別一='O3800 醫療用電動代步器') or (醫器次類別一='O3825 機械式助行器') or (醫器次類別一='O3850 機械式輪椅') or (醫器次類別一='O3860 動力式輪椅') or (醫器次類別一='O3880 特製輪椅') or (醫器次類別一='O3890 爬梯式輪椅') or (醫器次類別一='O3900 站立式輪椅') or (醫器次類別一='O3930 移動式輪椅升降器') or (醫器次類別一='O5150 動力式病患輸送機') or (醫器次類別一='O5160 氣流床') or (醫器次類別一='O5170 動力式氣流漂浮治療床') or (醫器次類別一='O5180 手動式病人翻身床') or (醫器次類別一='O5225 動力式病人翻身床') or (醫器次類別二='D.5273 呼吸道正壓供應系統') or (醫器次類別二='D.5280 呼吸管路支撐物') or (醫器次類別二='D.5330 呼吸氣體混合器') or (醫器次類別二='D.5440 手提式氧氣產生器') or (醫器次類別二='D.5630 噴霧器') or (醫器次類別二='G.0001 人工耳蝸植入器') or (醫器次類別二='G.3300 助聽器') or (醫器次類別二='I.4780 動力式抽吸幫浦') or (醫器次類別二='M.5844 矯正鏡片') or (醫器次類別二='M.5916 硬式透氣隱形眼鏡') or (醫器次類別二='M.5925 軟式隱形眼鏡') or (醫器次類別二='O.3025 義肢及裝具用附件') or (醫器次類別二='O.3075 醫療用手杖') or (醫器次類別二='O.3100 機械椅') or (醫器次類別二='O.3150 醫療用柺杖') or (醫器次類別二='O.3175 浮動坐墊') or (醫器次類別二='O.3410 體外肢體裝具用組件') or (醫器次類別二='O.3420 體外肢體義肢用組件') or (醫器次類別二='O.3450 動力式上肢義肢') or (醫器次類別二='O.3475 肢體裝具') or (醫器次類別二='O.3480 動力式下肢外骨骼肢體裝具') or (醫器次類別二='O.3490 軀幹裝具') or (醫器次類別二='O.3500 體外組裝下肢義肢') or (醫器次類別二='O.3800 醫療用電動代步器') or (醫器次類別二='O.3825 機械式助行器') or (醫器次類別二='O.3850 機械式輪椅') or (醫器次類別二='O.3860 動力式輪椅') or (醫器次類別二='O.3880 特製輪椅') or (醫器次類別二='O.3890 爬梯式輪椅') or (醫器次類別二='O.3900 站立式輪椅') or (醫器次類別二='O.3930 移動式輪椅升降器') or (醫器次類別二='O.5150 動力式病患輸送機') or (醫器次類別二='O.5160 氣流床') or (醫器次類別二='O.5170 動力式氣流漂浮治療床') or (醫器次類別二='O.5180 手動式病人翻身床') or (醫器次類別二='O.5225 動力式病人翻身床') or (醫器次類別二='D5273 呼吸道正壓供應系統') or (醫器次類別二='D5280 呼吸管路支撐物') or (醫器次類別二='D5330 呼吸氣體混合器') or (醫器次類別二='D5440 手提式氧氣產生器') or (醫器次類別二='D5630 噴霧器') or (醫器次類別二='G0001 人工耳蝸植入器') or (醫器次類別二='G3300 助聽器') or (醫器次類別二='I4780 動力式抽吸幫浦') or (醫器次類別二='M5844 矯正鏡片') or (醫器次類別二='M5916 硬式透氣隱形眼鏡') or (醫器次類別二='M5925 軟式隱形眼鏡') or (醫器次類別二='O3025 義肢及裝具用附件') or (醫器次類別二='O3075 醫療用手杖') or (醫器次類別二='O3100 機械椅') or (醫器次類別二='O3150 醫療用柺杖') or (醫器次類別二='O3175 浮動坐墊') or (醫器次類別二='O3410 體外肢體裝具用組件') or (醫器次類別二='O3420 體外肢體義肢用組件') or (醫器次類別二='O3450 動力式上肢義肢') or (醫器次類別二='O3475 肢體裝具') or (醫器次類別二='O3480 動力式下肢外骨骼肢體裝具') or (醫器次類別二='O3490 軀幹裝具') or (醫器次類別二='O3500 體外組裝下肢義肢') or (醫器次類別二='O3800 醫療用電動代步器') or (醫器次類別二='O3825 機械式助行器') or (醫器次類別二='O3850 機械式輪椅') or (醫器次類別二='O3860 動力式輪椅') or (醫器次類別二='O3880 特製輪椅') or (醫器次類別二='O3890 爬梯式輪椅') or (醫器次類別二='O3900 站立式輪椅') or (醫器次類別二='O3930 移動式輪椅升降器') or (醫器次類別二='O5150 動力式病患輸送機') or (醫器次類別二='O5160 氣流床') or (醫器次類別二='O5170 動力式氣流漂浮治療床') or (醫器次類別二='O5180 手動式病人翻身床') or (醫器次類別二='O5225 動力式病人翻身床') or (醫器次類別三='D.5273 呼吸道正壓供應系統') or (醫器次類別三='D.5280 呼吸管路支撐物') or (醫器次類別三='D.5330 呼吸氣體混合器') or (醫器次類別三='D.5440 手提式氧氣產生器') or (醫器次類別三='D.5630 噴霧器') or (醫器次類別三='G.0001 人工耳蝸植入器') or (醫器次類別三='G.3300 助聽器') or (醫器次類別三='I.4780 動力式抽吸幫浦') or (醫器次類別三='M.5844 矯正鏡片') or (醫器次類別三='M.5916 硬式透氣隱形眼鏡') or (醫器次類別三='M.5925 軟式隱形眼鏡') or (醫器次類別三='O.3025 義肢及裝具用附件') or (醫器次類別三='O.3075 醫療用手杖') or (醫器次類別三='O.3100 機械椅') or (醫器次類別三='O.3150 醫療用柺杖') or (醫器次類別三='O.3175 浮動坐墊') or (醫器次類別三='O.3410 體外肢體裝具用組件') or (醫器次類別三='O.3420 體外肢體義肢用組件') or (醫器次類別三='O.3450 動力式上肢義肢') or (醫器次類別三='O.3475 肢體裝具') or (醫器次類別三='O.3480 動力式下肢外骨骼肢體裝具') or (醫器次類別三='O.3490 軀幹裝具') or (醫器次類別三='O.3500 體外組裝下肢義肢') or (醫器次類別三='O.3800 醫療用電動代步器') or (醫器次類別三='O.3825 機械式助行器') or (醫器次類別三='O.3850 機械式輪椅') or (醫器次類別三='O.3860 動力式輪椅') or (醫器次類別三='O.3880 特製輪椅') or (醫器次類別三='O.3890 爬梯式輪椅') or (醫器次類別三='O.3900 站立式輪椅') or (醫器次類別三='O.3930 移動式輪椅升降器') or (醫器次類別三='O.5150 動力式病患輸送機') or (醫器次類別三='O.5160 氣流床') or (醫器次類別三='O.5170 動力式氣流漂浮治療床') or (醫器次類別三='O.5180 手動式病人翻身床') or (醫器次類別三='O.5225 動力式病人翻身床') or (醫器次類別三='D5273 呼吸道正壓供應系統') or (醫器次類別三='D5280 呼吸管路支撐物') or (醫器次類別三='D5330 呼吸氣體混合器') or (醫器次類別三='D5440 手提式氧氣產生器') or (醫器次類別三='D5630 噴霧器') or (醫器次類別三='G0001 人工耳蝸植入器') or (醫器次類別三='G3300 助聽器') or (醫器次類別三='I4780 動力式抽吸幫浦') or (醫器次類別三='M5844 矯正鏡片') or (醫器次類別三='M5916 硬式透氣隱形眼鏡') or (醫器次類別三='M5925 軟式隱形眼鏡') or (醫器次類別三='O3025 義肢及裝具用附件') or (醫器次類別三='O3075 醫療用手杖') or (醫器次類別三='O3100 機械椅') or (醫器次類別三='O3150 醫療用柺杖') or (醫器次類別三='O3175 浮動坐墊') or (醫器次類別三='O3410 體外肢體裝具用組件') or (醫器次類別三='O3420 體外肢體義肢用組件') or (醫器次類別三='O3450 動力式上肢義肢') or (醫器次類別三='O3475 肢體裝具') or (醫器次類別三='O3480 動力式下肢外骨骼肢體裝具') or (醫器次類別三='O3490 軀幹裝具') or (醫器次類別三='O3500 體外組裝下肢義肢') or (醫器次類別三='O3800 醫療用電動代步器') or (醫器次類別三='O3825 機械式助行器') or (醫器次類別三='O3850 機械式輪椅') or (醫器次類別三='O3860 動力式輪椅') or (醫器次類別三='O3880 特製輪椅') or (醫器次類別三='O3890 爬梯式輪椅') or (醫器次類別三='O3900 站立式輪椅') or (醫器次類別三='O3930 移動式輪椅升降器') or (醫器次類別三='O5150 動力式病患輸送機') or (醫器次類別三='O5160 氣流床') or (醫器次類別三='O5170 動力式氣流漂浮治療床') or (醫器次類別三='O5180 手動式病人翻身床') or (醫器次類別三='O5225 動力式病人翻身床'))">
                  <tr>
                    <td><xsl:value-of select = "許可證字號" /></td>
                    <td><xsl:value-of select = "註銷日期" /><br /><xsl:value-of select = "註銷狀態" /><br /><xsl:value-of select = "註銷理由" /></td>
                    <td><xsl:value-of select = "發證日期" /><br />｜<br /><xsl:value-of select = "有效日期" /></td>
                    <td><xsl:value-of select = "中文品名" /><br /><xsl:value-of select = "英文品名" /></td>
                    <td><xsl:value-of select = "醫器次類別一" /><br /><xsl:if test="醫器次類別二 != ''"><xsl:value-of select = "醫器次類別二" /><br /></xsl:if><xsl:if test="醫器次類別三 != ''"><xsl:value-of select = "醫器次類別三" /><br /></xsl:if><xsl:value-of select = "醫療器材級數" /> 級醫材<br /><xsl:value-of select = "醫器規格" /></td>
                    <td><xsl:value-of select = "申請商名稱" /><br />地址：<xsl:value-of select = "申請商地址" /></td>
                    <td><xsl:value-of select = "製造商名稱" /><br />廠址：<xsl:value-of select = "製造廠廠址" /><br /><xsl:value-of select = "製造廠公司地址" /><br />製造廠國別：<xsl:value-of select = "製造廠國別" /></td>
                  </tr>
                </xsl:if>
              </xsl:for-each>
          </xsl:for-each>
        </tbody>
      </table>
      <p>原始資料來源：<a href="https://data.gov.tw/dataset/9576">醫療器材許可證資料集｜政府資料開放平臺</a></p>
      <hr/>
      <p>台灣社政輔具常見醫療器材許可證字號資料表產生器</p>
      <dl>
        <dt>目前使用的資料表產生器版本</dt>
        <dd>v2024.12.06</dd>
        <dt>下載最新版套件</dt>
        <dd><a href="https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator/releases/latest">https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator/releases/latest</a></dd>
        <dt>意見回饋／瑕疵回報</dt>
        <dd><a href="https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator/issues">https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator/issues</a></dd>
        <dt>資料表產生器專案網頁</dt>
        <dd><a href="https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator">https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator</a></dd>
      </dl>
    </body>
    </html>
    <script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i <xsl:text disable-output-escaping="yes">&lt;</xsl:text> tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
  </xsl:template>
</xsl:stylesheet>