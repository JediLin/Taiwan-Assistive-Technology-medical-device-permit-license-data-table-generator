<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:date="http://exslt.org/dates-and-times"
  extension-element-prefixes="date">
  <xsl:output method="html" encoding="utf-8" indent="yes" />
  <xsl:template match="/">
    <xsl:text disable-output-escaping="yes">&lt;&#33;</xsl:text>DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
    <html lang="zh-Hant-TW">
    <head>
      <title>社政輔具常用醫療器材許可證字號資料表</title>
      <style>
:root {
  --background: hsl(210,6%,12%);
  --currentline: hsl(236,10%,33%);
  --selection: hsl(216,8%,24%);
  --selectionmark: hsla(140,2%,77%,80%);
  --foreground: hsl(140,2%,77%);
  --comment: hsl(120,0%,59%);
  --red: hsl(0,50%,60%);
  --orange: hsl(24,65%,62%);
  --yellow: hsl(39,80%,69%);
  --green: hsl(65,39%,57%);
  --aqua: hsl(171,28%,64%);
  --blue: hsl(207,31%,62%);
  --purple: hsl(286,22%,65%);
  --nightbackground: hsl(210,6%,12%);
}
@media (prefers-color-scheme: light) {
  :root {
    --background: hsl(0,0%,98%);
    --currentline: hsl(0,0%,92%);
    --selection: hsl(0,0%,82%);
    --selectionmark: hsla(228,8%,24%,80%);
    --foreground: hsl(228,8%,24%);
    --comment: hsl(231,4%,64%);
    --red: hsl(345,69%,49%);
    --orange: hsl(22,78%,49%);
    --yellow: hsl(46,60%,48%);
    --green: hsl(140,62%,36%);
    --aqua: hsl(199,100%,43%);
    --blue: hsl(222,78%,52%);
    --purple: hsl(263,86%,60%);
    --nightbackground: hsl(210,6%,12%);
  }
}
@media (prefers-contrast: less) {
  :root {
    --background: hsl(44,87%,94%);
    --currentline: hsl(45,64%,91%);
    --selection: hsl(46,42%,88%);
    --selectionmark: hsla(196,13%,45%,80%);
    --foreground: hsl(196,13%,45%);
    --comment: hsl(180,7%,60%);
    --red: hsl(1,71%,52%);
    --orange: hsl(18,80%,44%);
    --yellow: hsl(45,100%,35%);
    --green: hsl(68,100%,30%);
    --aqua: hsl(175,59%,40%);
    --blue: hsl(205,69%,49%);
    --purple: hsl(237,43%,60%);
    --nightbackground: hsl(210,6%,12%);
  }
}
@media (prefers-color-scheme: dark) {
  :root {
    --background: hsl(210,6%,12%);
    --currentline: hsl(236,10%,33%);
    --selection: hsl(216,8%,24%);
    --selectionmark: hsla(140,2%,77%,80%);
    --foreground: hsl(140,2%,77%);
    --comment: hsl(120,0%,59%);
    --red: hsl(0,50%,60%);
    --orange: hsl(24,65%,62%);
    --yellow: hsl(39,80%,69%);
    --green: hsl(65,39%,57%);
    --aqua: hsl(171,28%,64%);
    --blue: hsl(207,31%,62%);
    --purple: hsl(286,22%,65%);
    --nightbackground: hsl(210,6%,12%);
  }
}
@media (prefers-contrast: more) {
  :root {
    --background: hsl(0,0%,0%);
    --currentline: hsl(0,0%,16%);
    --selection: hsl(0,0%,26%);
    --selectionmark: hsla(0,0%,92%,80%);
    --foreground: hsl(0,0%,92%);
    --comment: hsl(120,1%,59%);
    --red: hsl(358,62%,57%);
    --orange: hsl(26,77%,59%);
    --yellow: hsl(47,77%,59%);
    --green: hsl(68,55%,54%);
    --aqua: hsl(169,39%,60%);
    --blue: hsl(213,56%,67%);
    --purple: hsl(281,45%,72%);
    --nightbackground: hsl(210,6%,12%);
  }
}
body {
  color: var(--foreground);
  background: var(--background);
}
h1, .center {
  text-align: center;
}
a {
  color: var(--green);
  text-decoration: underline;
}
a:link {
  color: var(--green);
  text-decoration: underline;
}
a:visited {
  color: var(--orange);
  text-decoration: underline;
}
a:active {
  color: var(--red);
}
a:hover {
  color: var(--red);
}
label {
  color: var(--comment);
}
input {
  background: var(--yellow);
}
input:placeholder-shown {
  background: var(--background);
}
input::placeholder {
  color: var(--yellow);
}
input:focus, textarea:focus {
  color: var(--foreground);
  background: var(--currentline);
}
input:focus-visible {
  outline: 3px solid var(--yellow);
}
table {
  border-collapse: collapse;
  border: 1px solid var(--foreground);
  margin: 0 auto;
}
table thead th, table tbody td {
  border: 1px solid;
  padding: 5px;
  max-width: 20em;
  word-wrap: break-word;
}
table thead th {
  background: var(--background);
  position: sticky;
  top: 0;
  z-index: 1;
}
table + * {
  padding-top: 1em;
}
table tbody tr:nth-child(2n) td {
  background: var(--selection);
}
table tbody tr:nth-child(2n+1) td {
  background: var(--currentline);
}
footer {
  display: grid;
  grid-template-columns: 1fr auto 0.3fr auto 1fr;
  gap: 2em;
}
section#about {
  grid-column: 2;
}
section#link {
  grid-column: 4;
}
      </style>
    </head>
    <body>
      <h1>社政輔具常用醫療器材許可證字號暨相關資訊</h1>
      <table id="dataTable">
      	<caption>製表日期：<xsl:value-of select="date:year()"/> 年 <xsl:value-of select="date:month-in-year()"/> 月 <xsl:value-of select="date:day-in-month()"/> 日</caption>
      	<thead>
      	  <tr><th>許可證字號<br/><label for="permitInput">快查：</label><input type="text" id="permitInput" onkeyup="filterFunction()" placeholder="可只輸入數字部分" title="可只輸入數字部分" aria-description="可只輸入許可證字號的數字部分"/></th><th>註銷狀態</th><th>有效日期</th><th>品名<br/><label for="categoryInput">快查：</label><input type="text" id="brandInput" onkeyup="filterFunction()" placeholder="輸入廠牌或品名" title="輸入廠牌或品名" aria-description="輸入輔具的廠牌或品名（建議輸入英文）"/></th><th>醫器類別、級數、規格<br/><label for="categoryInput">快查：</label><input type="text" id="categoryInput" onkeyup="filterFunction()" placeholder="輸入醫器類別代碼" title="輸入醫器類別代碼" aria-description="輸入醫器類別代碼"/></th><th>申請商</th><th>製造商</th></tr>
      	</thead>
      	<tbody>
            <xsl:for-each select="dataList">
              <xsl:for-each select="rows">
              	<xsl:if test="((醫器次類別一='D.5273 呼吸道正壓供應系統') or (醫器次類別一='D.5280 呼吸管路支撐物') or (醫器次類別一='D.5330 呼吸氣體混合器') or (醫器次類別一='D.5440 手提式氧氣產生器') or (醫器次類別一='D.5630 噴霧器') or (醫器次類別一='G.0001 人工耳蝸植入器') or (醫器次類別一='G.3300 助聽器') or (醫器次類別一='I.4780 動力式抽吸幫浦') or (醫器次類別一='M.5844 矯正鏡片') or (醫器次類別一='M.5916 硬式透氣隱形眼鏡') or (醫器次類別一='M.5925 軟式隱形眼鏡') or (醫器次類別一='O.3025 義肢及裝具用附件') or (醫器次類別一='O.3075 醫療用手杖') or (醫器次類別一='O.3100 機械椅') or (醫器次類別一='O.3150 醫療用柺杖') or (醫器次類別一='O.3175 浮動坐墊') or (醫器次類別一='O.3410 體外肢體裝具用組件') or (醫器次類別一='O.3420 體外肢體義肢用組件') or (醫器次類別一='O.3450 動力式上肢義肢') or (醫器次類別一='O.3475 肢體裝具') or (醫器次類別一='O.3480 動力式下肢外骨骼肢體裝具') or (醫器次類別一='O.3490 軀幹裝具') or (醫器次類別一='O.3500 體外組裝下肢義肢') or (醫器次類別一='O.3800 醫療用電動代步器') or (醫器次類別一='O.3825 機械式助行器') or (醫器次類別一='O.3850 機械式輪椅') or (醫器次類別一='O.3860 動力式輪椅') or (醫器次類別一='O.3880 特製輪椅') or (醫器次類別一='O.3890 爬梯式輪椅') or (醫器次類別一='O.3900 站立式輪椅') or (醫器次類別一='O.3930 移動式輪椅升降器') or (醫器次類別一='O.5150 動力式病患輸送機') or (醫器次類別一='O.5160 氣流床') or (醫器次類別一='O.5170 動力式氣流漂浮治療床') or (醫器次類別一='O.5180 手動式病人翻身床') or (醫器次類別一='O.5225 動力式病人翻身床') or (醫器次類別一='D5273 呼吸道正壓供應系統') or (醫器次類別一='D5280 呼吸管路支撐物') or (醫器次類別一='D5330 呼吸氣體混合器') or (醫器次類別一='D5440 手提式氧氣產生器') or (醫器次類別一='D5630 噴霧器') or (醫器次類別一='G0001 人工耳蝸植入器') or (醫器次類別一='G3300 助聽器') or (醫器次類別一='I4780 動力式抽吸幫浦') or (醫器次類別一='M5844 矯正鏡片') or (醫器次類別一='M5916 硬式透氣隱形眼鏡') or (醫器次類別一='M5925 軟式隱形眼鏡') or (醫器次類別一='O3025 義肢及裝具用附件') or (醫器次類別一='O3075 醫療用手杖') or (醫器次類別一='O3100 機械椅') or (醫器次類別一='O3150 醫療用柺杖') or (醫器次類別一='O3175 浮動坐墊') or (醫器次類別一='O3410 體外肢體裝具用組件') or (醫器次類別一='O3420 體外肢體義肢用組件') or (醫器次類別一='O3450 動力式上肢義肢') or (醫器次類別一='O3475 肢體裝具') or (醫器次類別一='O3480 動力式下肢外骨骼肢體裝具') or (醫器次類別一='O3490 軀幹裝具') or (醫器次類別一='O3500 體外組裝下肢義肢') or (醫器次類別一='O3800 醫療用電動代步器') or (醫器次類別一='O3825 機械式助行器') or (醫器次類別一='O3850 機械式輪椅') or (醫器次類別一='O3860 動力式輪椅') or (醫器次類別一='O3880 特製輪椅') or (醫器次類別一='O3890 爬梯式輪椅') or (醫器次類別一='O3900 站立式輪椅') or (醫器次類別一='O3930 移動式輪椅升降器') or (醫器次類別一='O5150 動力式病患輸送機') or (醫器次類別一='O5160 氣流床') or (醫器次類別一='O5170 動力式氣流漂浮治療床') or (醫器次類別一='O5180 手動式病人翻身床') or (醫器次類別一='O5225 動力式病人翻身床') or (醫器次類別二='D.5273 呼吸道正壓供應系統') or (醫器次類別二='D.5280 呼吸管路支撐物') or (醫器次類別二='D.5330 呼吸氣體混合器') or (醫器次類別二='D.5440 手提式氧氣產生器') or (醫器次類別二='D.5630 噴霧器') or (醫器次類別二='G.0001 人工耳蝸植入器') or (醫器次類別二='G.3300 助聽器') or (醫器次類別二='I.4780 動力式抽吸幫浦') or (醫器次類別二='M.5844 矯正鏡片') or (醫器次類別二='M.5916 硬式透氣隱形眼鏡') or (醫器次類別二='M.5925 軟式隱形眼鏡') or (醫器次類別二='O.3025 義肢及裝具用附件') or (醫器次類別二='O.3075 醫療用手杖') or (醫器次類別二='O.3100 機械椅') or (醫器次類別二='O.3150 醫療用柺杖') or (醫器次類別二='O.3175 浮動坐墊') or (醫器次類別二='O.3410 體外肢體裝具用組件') or (醫器次類別二='O.3420 體外肢體義肢用組件') or (醫器次類別二='O.3450 動力式上肢義肢') or (醫器次類別二='O.3475 肢體裝具') or (醫器次類別二='O.3480 動力式下肢外骨骼肢體裝具') or (醫器次類別二='O.3490 軀幹裝具') or (醫器次類別二='O.3500 體外組裝下肢義肢') or (醫器次類別二='O.3800 醫療用電動代步器') or (醫器次類別二='O.3825 機械式助行器') or (醫器次類別二='O.3850 機械式輪椅') or (醫器次類別二='O.3860 動力式輪椅') or (醫器次類別二='O.3880 特製輪椅') or (醫器次類別二='O.3890 爬梯式輪椅') or (醫器次類別二='O.3900 站立式輪椅') or (醫器次類別二='O.3930 移動式輪椅升降器') or (醫器次類別二='O.5150 動力式病患輸送機') or (醫器次類別二='O.5160 氣流床') or (醫器次類別二='O.5170 動力式氣流漂浮治療床') or (醫器次類別二='O.5180 手動式病人翻身床') or (醫器次類別二='O.5225 動力式病人翻身床') or (醫器次類別二='D5273 呼吸道正壓供應系統') or (醫器次類別二='D5280 呼吸管路支撐物') or (醫器次類別二='D5330 呼吸氣體混合器') or (醫器次類別二='D5440 手提式氧氣產生器') or (醫器次類別二='D5630 噴霧器') or (醫器次類別二='G0001 人工耳蝸植入器') or (醫器次類別二='G3300 助聽器') or (醫器次類別二='I4780 動力式抽吸幫浦') or (醫器次類別二='M5844 矯正鏡片') or (醫器次類別二='M5916 硬式透氣隱形眼鏡') or (醫器次類別二='M5925 軟式隱形眼鏡') or (醫器次類別二='O3025 義肢及裝具用附件') or (醫器次類別二='O3075 醫療用手杖') or (醫器次類別二='O3100 機械椅') or (醫器次類別二='O3150 醫療用柺杖') or (醫器次類別二='O3175 浮動坐墊') or (醫器次類別二='O3410 體外肢體裝具用組件') or (醫器次類別二='O3420 體外肢體義肢用組件') or (醫器次類別二='O3450 動力式上肢義肢') or (醫器次類別二='O3475 肢體裝具') or (醫器次類別二='O3480 動力式下肢外骨骼肢體裝具') or (醫器次類別二='O3490 軀幹裝具') or (醫器次類別二='O3500 體外組裝下肢義肢') or (醫器次類別二='O3800 醫療用電動代步器') or (醫器次類別二='O3825 機械式助行器') or (醫器次類別二='O3850 機械式輪椅') or (醫器次類別二='O3860 動力式輪椅') or (醫器次類別二='O3880 特製輪椅') or (醫器次類別二='O3890 爬梯式輪椅') or (醫器次類別二='O3900 站立式輪椅') or (醫器次類別二='O3930 移動式輪椅升降器') or (醫器次類別二='O5150 動力式病患輸送機') or (醫器次類別二='O5160 氣流床') or (醫器次類別二='O5170 動力式氣流漂浮治療床') or (醫器次類別二='O5180 手動式病人翻身床') or (醫器次類別二='O5225 動力式病人翻身床') or (醫器次類別三='D.5273 呼吸道正壓供應系統') or (醫器次類別三='D.5280 呼吸管路支撐物') or (醫器次類別三='D.5330 呼吸氣體混合器') or (醫器次類別三='D.5440 手提式氧氣產生器') or (醫器次類別三='D.5630 噴霧器') or (醫器次類別三='G.0001 人工耳蝸植入器') or (醫器次類別三='G.3300 助聽器') or (醫器次類別三='I.4780 動力式抽吸幫浦') or (醫器次類別三='M.5844 矯正鏡片') or (醫器次類別三='M.5916 硬式透氣隱形眼鏡') or (醫器次類別三='M.5925 軟式隱形眼鏡') or (醫器次類別三='O.3025 義肢及裝具用附件') or (醫器次類別三='O.3075 醫療用手杖') or (醫器次類別三='O.3100 機械椅') or (醫器次類別三='O.3150 醫療用柺杖') or (醫器次類別三='O.3175 浮動坐墊') or (醫器次類別三='O.3410 體外肢體裝具用組件') or (醫器次類別三='O.3420 體外肢體義肢用組件') or (醫器次類別三='O.3450 動力式上肢義肢') or (醫器次類別三='O.3475 肢體裝具') or (醫器次類別三='O.3480 動力式下肢外骨骼肢體裝具') or (醫器次類別三='O.3490 軀幹裝具') or (醫器次類別三='O.3500 體外組裝下肢義肢') or (醫器次類別三='O.3800 醫療用電動代步器') or (醫器次類別三='O.3825 機械式助行器') or (醫器次類別三='O.3850 機械式輪椅') or (醫器次類別三='O.3860 動力式輪椅') or (醫器次類別三='O.3880 特製輪椅') or (醫器次類別三='O.3890 爬梯式輪椅') or (醫器次類別三='O.3900 站立式輪椅') or (醫器次類別三='O.3930 移動式輪椅升降器') or (醫器次類別三='O.5150 動力式病患輸送機') or (醫器次類別三='O.5160 氣流床') or (醫器次類別三='O.5170 動力式氣流漂浮治療床') or (醫器次類別三='O.5180 手動式病人翻身床') or (醫器次類別三='O.5225 動力式病人翻身床') or (醫器次類別三='D5273 呼吸道正壓供應系統') or (醫器次類別三='D5280 呼吸管路支撐物') or (醫器次類別三='D5330 呼吸氣體混合器') or (醫器次類別三='D5440 手提式氧氣產生器') or (醫器次類別三='D5630 噴霧器') or (醫器次類別三='G0001 人工耳蝸植入器') or (醫器次類別三='G3300 助聽器') or (醫器次類別三='I4780 動力式抽吸幫浦') or (醫器次類別三='M5844 矯正鏡片') or (醫器次類別三='M5916 硬式透氣隱形眼鏡') or (醫器次類別三='M5925 軟式隱形眼鏡') or (醫器次類別三='O3025 義肢及裝具用附件') or (醫器次類別三='O3075 醫療用手杖') or (醫器次類別三='O3100 機械椅') or (醫器次類別三='O3150 醫療用柺杖') or (醫器次類別三='O3175 浮動坐墊') or (醫器次類別三='O3410 體外肢體裝具用組件') or (醫器次類別三='O3420 體外肢體義肢用組件') or (醫器次類別三='O3450 動力式上肢義肢') or (醫器次類別三='O3475 肢體裝具') or (醫器次類別三='O3480 動力式下肢外骨骼肢體裝具') or (醫器次類別三='O3490 軀幹裝具') or (醫器次類別三='O3500 體外組裝下肢義肢') or (醫器次類別三='O3800 醫療用電動代步器') or (醫器次類別三='O3825 機械式助行器') or (醫器次類別三='O3850 機械式輪椅') or (醫器次類別三='O3860 動力式輪椅') or (醫器次類別三='O3880 特製輪椅') or (醫器次類別三='O3890 爬梯式輪椅') or (醫器次類別三='O3900 站立式輪椅') or (醫器次類別三='O3930 移動式輪椅升降器') or (醫器次類別三='O5150 動力式病患輸送機') or (醫器次類別三='O5160 氣流床') or (醫器次類別三='O5170 動力式氣流漂浮治療床') or (醫器次類別三='O5180 手動式病人翻身床') or (醫器次類別三='O5225 動力式病人翻身床'))">
                  <tr>
                    <td><xsl:value-of select = "許可證字號" /></td>
                    <td><xsl:value-of select = "註銷日期" /><br /><xsl:value-of select = "註銷狀態" /><br /><xsl:value-of select = "註銷理由" /></td>
                    <td class="center"><xsl:value-of select = "發證日期" /><br />｜<br /><xsl:value-of select = "有效日期" /></td>
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
      <footer>
        <section id="about">
          <h2>台灣社政輔具常見醫療器材許可證字號資料表產生器</h2>
          <dl>
            <dt>目前使用的資料表產生器版本</dt>
            <dd>v2024.12.23</dd>
          </dl>
          <ul>
            <li><a href="https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator/releases/latest">下載最新版套件</a></li>
            <li><a href="https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator/issues">意見回饋／瑕疵回報</a></li>
            <li><a href="https://github.com/JediLin/Taiwan-Assistive-Technology-medical-device-permit-license-data-table-generator">專案網頁</a></li>
            <li><a href="https://jedi.org/blog/archives/006434.html">部落格文章（含排程設定教學）</a></li>
          </ul>
        </section>
        <section id="link">
          <h2>相關連結</h2>
          <ul>
            <li><a href="https://lmspiq.fda.gov.tw/web/MDPIQ/MDPIQLicSearch">醫療器材許可證及登錄查詢</a></li>
            <li><a href="https://law.moj.gov.tw/LawClass/LawSingle.aspx?pcode=L0030120">《醫療器材分類分級管理辦法》</a></li>
            <li><a href="https://law.moj.gov.tw/LawClass/LawSingle.aspx?pcode=D0050060">《身心障礙者輔具費用補助辦法》</a></li>
          </ul>
        </section>
      </footer>
    </body>
    </html>
    <script>
function filterFunction() {
  // Declare variables
  var input1, input2, input3, filter1, filter2, filter3, table, tr, td1, td4, td5, i, txtValue;
  input1 = document.getElementById("permitInput");
  input2 = document.getElementById("brandInput");
  input3 = document.getElementById("categoryInput");
  filter1 = input1.value.toUpperCase();
  filter2 = input2.value.toUpperCase();
  filter3 = input3.value.toUpperCase();
  table = document.getElementById("dataTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i <xsl:text disable-output-escaping="yes">&lt;</xsl:text> tr.length; i++) {
    td1 = tr[i].getElementsByTagName("td")[0];
    td4 = tr[i].getElementsByTagName("td")[3];
    td5 = tr[i].getElementsByTagName("td")[4];
    if (td1 || td4 || td5) {
      txtValue1 = td1.textContent || td1.innerText;
      txtValue2 = td4.textContent || td4.innerText;
      txtValue3 = td5.textContent || td5.innerText;
      if (txtValue1.toUpperCase().indexOf(filter1) <xsl:text disable-output-escaping="yes">&gt;</xsl:text> -1 <xsl:text disable-output-escaping="yes">&amp;&amp;</xsl:text> txtValue2.toUpperCase().indexOf(filter2) <xsl:text disable-output-escaping="yes">&gt;</xsl:text> -1 <xsl:text disable-output-escaping="yes">&amp;&amp;</xsl:text> txtValue3.toUpperCase().indexOf(filter3) <xsl:text disable-output-escaping="yes">&gt;</xsl:text> -1) {
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