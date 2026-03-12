<!doctype html>
<html lang="th">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>ลงทะเบียนงานเลี้ยงบริษัท</title>
  <meta name="theme-color" content="#ffffff" />

  <!-- ✅ Google Sans -->
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Google+Sans:ital,opsz,wght@0,17..18,400..700;1,17..18,400..700&display=swap');
  </style>

  <style>
    :root{
      --text:#0f172a;
      --muted:#64748b;
      --line:#e6eef6;
      --field:#f6f8fb;
      --primary:#11a8ff;
      --primary2:#0b8fe4;

      --radiusShell:22px;
      --radiusTop:26px;

      --okBg:#e9fff2;
      --okText:#096a3a;
      --errBg:#fff1f2;
      --errText:#9f1239;
      --warnBg:#fff7ed;
      --warnText:#9a3412;

      --shadow: 0 18px 60px rgba(15,23,42,.10);
      --shadow2: 0 10px 24px rgba(15,23,42,.10);
    }

    *{ box-sizing:border-box; }
    html,body{ height:100%; }
    body{
      margin:0;
      font-family: "Google Sans", sans-serif;
      font-optical-sizing: auto;
      font-style: normal;
      font-variation-settings: "GRAD" 0;
      background:#fff;
      color: var(--text);
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }

    .page{
      min-height:100%;
      display:flex;
      justify-content:center;
      padding: 18px 14px 44px;
    }
    .container{ width:min(460px, 100%); }

    .shell{
      border: 1px solid rgba(226,232,240,.9);
      border-radius: var(--radiusShell);
      overflow:hidden;
      background:#fff;
      box-shadow: var(--shadow);
    }

    /* ✅ HERO uses fixed image from project: public/images/lo.png */
    .hero{
      position: relative;
      height: 210px;
      background: #f1f5f9;
      overflow:hidden;
    }
    .heroImg{
      position:absolute; inset:0;
      width:100%; height:100%;
      object-fit:cover;
      display:block;
      transform: translateZ(0);
    }
    .hero:after{
      content:"";
      position:absolute; inset:0;
      background: linear-gradient(180deg, rgba(255,255,255,.35), rgba(255,255,255,0) 55%);
      pointer-events:none;
    }

    /* top-right language */
    .heroControls{
      position:absolute;
      inset: 12px 12px auto 12px;
      display:flex;
      align-items:center;
      justify-content:flex-end;
      z-index:2;
    }

    .langWrap{ position: relative; }
    .iconBtn{
      width: 38px;
      height: 38px;
      border-radius: 999px;
      border: 1px solid rgba(226,232,240,.95);
      background: rgba(255,255,255,.86);
      backdrop-filter: blur(6px);
      box-shadow: 0 10px 20px rgba(15,23,42,.10);
      cursor:pointer;
      display:inline-flex;
      align-items:center;
      justify-content:center;
      padding:0;
    }
    .iconBtn:active{ transform: translateY(1px); }

    .langMenu{
      position:absolute;
      right:0;
      top: 46px;
      min-width: 170px;
      background:#fff;
      border: 1px solid rgba(226,232,240,.95);
      border-radius: 16px;
      box-shadow: 0 18px 50px rgba(15,23,42,.18);
      padding: 6px;
      display:none;
      z-index: 50;
    }
    .langMenu.open{ display:block; }
    .langItem{
      width:100%;
      text-align:left;
      border:none;
      background:transparent;
      padding: 10px 10px;
      border-radius: 12px;
      cursor:pointer;
      display:flex;
      align-items:center;
      justify-content:space-between;
      gap: 10px;
      font-family: "Google Sans", sans-serif;
      font-size: 14px;
      color: var(--text);
    }
    .langItem:hover{ background: rgba(15,23,42,.04); }
    .langTag{ font-size: 12px; color: var(--muted); }

    .mainCard{
      position: relative;
      margin-top: -34px;
      background:#fff;
      border-top-left-radius: var(--radiusTop);
      border-top-right-radius: var(--radiusTop);
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
      box-shadow: var(--shadow2);
      border-top: 1px solid rgba(226,232,240,.9);
      padding: 16px 16px 18px;
    }

    .title{
      margin: 0;
      font-size: 24px;
      font-weight: 700;
      letter-spacing: -0.2px;
    }
    .subtitle{
      margin: 6px 0 0;
      color: var(--muted);
      font-size: 12.8px;
      line-height: 1.45;
    }

    form{ margin-top: 14px; }
    label{
      display:block;
      font-size: 13px;
      font-weight: 700;
      margin: 12px 0 7px;
      color: rgba(15,23,42,.92);
    }
    input, select{
      width:100%;
      border: 1px solid rgba(226,232,240,.95);
      border-radius: 12px;
      padding: 12px 12px;
      background: var(--field);
      color: var(--text);
      outline:none;
      font-size: 16px;
      font-family: "Google Sans", sans-serif;
    }
    input::placeholder{ color: rgba(100,116,139,.80); }
    input:focus, select:focus{
      border-color: rgba(17,168,255,.55);
      box-shadow: 0 0 0 4px rgba(17,168,255,.14);
      background:#fff;
    }

    .row{
      display:grid;
      grid-template-columns: 1fr 1fr;
      gap:10px;
    }
    @media (max-width:360px){
      .row{ grid-template-columns: 1fr; }
    }

    select{
      appearance:none;
      background-image:
        linear-gradient(45deg, transparent 50%, rgba(15,23,42,.55) 50%),
        linear-gradient(135deg, rgba(15,23,42,.55) 50%, transparent 50%);
      background-position:
        calc(100% - 18px) 55%,
        calc(100% - 12px) 55%;
      background-size: 6px 6px, 6px 6px;
      background-repeat:no-repeat;
      padding-right: 34px;
    }

    .hint{
      margin-top: 6px;
      font-size: 12px;
      color: var(--muted);
    }
    .pill{
      display:none;
      margin-top:8px;
      font-size:12px;
      padding:6px 10px;
      border-radius:999px;
      border:1px solid rgba(226,232,240,.95);
      background:#fff;
      color: var(--muted);
    }

    .btn{
      width:100%;
      margin-top: 14px;
      border:none;
      border-radius: 12px;
      padding: 12px 14px;
      font-weight: 700;
      font-size: 16px;
      cursor:pointer;
      color:#fff;
      background: linear-gradient(180deg, var(--primary), var(--primary2));
      box-shadow: 0 14px 28px rgba(17,168,255,.22);
      font-family: "Google Sans", sans-serif;
    }
    .btn:disabled{ opacity:.65; cursor:not-allowed; }
    .btn:active{ transform: translateY(1px); }

    .helper{
      margin-top:10px;
      font-size:12px;
      color: var(--muted);
      line-height: 1.45;
    }

    .toast{
      display:none;
      margin-top:12px;
      padding:10px 12px;
      border-radius:12px;
      font-size:13px;
      border:1px solid rgba(226,232,240,.95);
      line-height: 1.45;
      white-space: pre-line;
    }
    .toast.ok{ display:block; background:var(--okBg); color:var(--okText); border-color: rgba(16,185,129,.25); }
    .toast.err{ display:block; background:var(--errBg); color:var(--errText); border-color: rgba(244,63,94,.25); }
    .toast.warn{ display:block; background:var(--warnBg); color:var(--warnText); border-color: rgba(249,115,22,.25); }

    .footer{
      padding: 14px 10px 16px;
      text-align:center;
      font-size: 12px;
      color: rgba(100,116,139,.85);
      background:#fff;
    }
  </style>
</head>

<body>
  <main class="page">
    <div class="container">
      <section class="shell">
        <div class="hero">
          <!-- ✅ fixed image from project -->
          <img class="heroImg" alt="Hero" src="./public/images/lo11.png" />

          <div class="heroControls">
            <div class="langWrap">
              <button class="iconBtn" id="langBtn" type="button" aria-label="Change language">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" aria-hidden="true">
                  <path d="M12 22C17.523 22 22 17.523 22 12C22 6.477 17.523 2 12 2C6.477 2 2 6.477 2 12C2 17.523 6.477 22 12 22Z" stroke="rgba(15,23,42,.78)" stroke-width="1.8"/>
                  <path d="M2.5 12H21.5" stroke="rgba(15,23,42,.50)" stroke-width="1.6" stroke-linecap="round"/>
                  <path d="M12 2C9 5.3 9 18.7 12 22C15 18.7 15 5.3 12 2Z" stroke="rgba(15,23,42,.50)" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              </button>

              <div class="langMenu" id="langMenu" role="menu" aria-label="Language menu">
                <button class="langItem" type="button" data-lang="th"><span>ไทย</span><span class="langTag">TH</span></button>
                <button class="langItem" type="button" data-lang="en"><span>English</span><span class="langTag">EN</span></button>
                <button class="langItem" type="button" data-lang="zh"><span>中文</span><span class="langTag">ZH</span></button>
              </div>
            </div>
          </div>
        </div>

        <div class="mainCard">
          <h1 class="title" id="ui_title">ลงทะเบียน</h1>
          <p class="subtitle" id="ui_subtitle">งานเลี้ยงบริษัท — กรอกข้อมูลให้ครบ แล้วกดส่ง</p>

          <form id="regForm" novalidate>
            <label for="nickname" id="ui_lbl_nick">ชื่อเล่น</label>
            <input id="nickname" name="nickname" placeholder="เช่น: บีม" required />

            <div class="row">
              <div>
                <label for="first_name" id="ui_lbl_first">ชื่อจริง</label>
                <input
                  id="first_name"
                  name="first_name"
                  placeholder="พิมพ์แล้วเลือกจากรายการ"
                  list="staffFullnames"
                  autocomplete="off"
                  required
                />
              </div>

              <div>
                <label for="last_name" id="ui_lbl_last">นามสกุล</label>
                <input id="last_name" name="last_name" placeholder="จะเติมให้อัตโนมัติเมื่อเลือกชื่อ" required />
                <div class="pill" id="matchPill"></div>
              </div>
            </div>

            <label for="team" id="ui_lbl_team">ทีม</label>
            <select id="team" name="team" required></select>

            <button class="btn" type="submit" id="submitBtn">ส่งลงทะเบียน</button>
            <div class="helper" id="ui_helper">* แนะนำให้เลือกชื่อจากรายการเพื่อป้องกันสะกดผิด</div>
            <div class="toast" id="toast"></div>
          </form>

          <datalist id="staffFullnames">
            <option value="วรินทร หลวงปัน"></option>
            <option value="ปณิธิ หวังเพื่อสุข"></option>
            <option value="วิทุพร สระแก้ว"></option>
            <option value="วีรดา ภูมินำ"></option>
            <option value="พิตตินัทธ์ รุ่งขจรทรัพย์"></option>
            <option value="กัญญา เขียวหวาน"></option>
            <option value="สุภาภรณ์ วงษ์เขียน"></option>
            <option value="อารียา เพ่งพินิจธรรม"></option>
            <option value="ณัฐมน งอยผาลา"></option>
            <option value="กชกร ปิ่นกุมภีร์"></option>
            <option value="ณัฐมล เพชไพทูรย์"></option>
            <option value="พลอยประกาย ธรรมขันธ์"></option>
            <option value="พรไพลิน ปัททรัพย์"></option>
            <option value="สถิรพร ทรัพย์เอนก"></option>
          </datalist>
        </div>

        <div class="footer" id="ui_footer">SHD • Company Party Registration</div>
      </section>
    </div>
  </main>

  <script>
    const SCRIPT_URL = "https://script.google.com/macros/s/AKfycbydqVEUAdOADjFGApHRPlK3qoirdMtwUXN5VyUJThLhHCh_54IjcYIBNSXVho6USKCi/exec";

    const I18N = {
      th: {
        title: "ลงทะเบียน",
        subtitle: "งานเลี้ยงบริษัท — กรอกข้อมูลให้ครบ แล้วกดส่ง",
        nick: "ชื่อเล่น",
        first: "ชื่อจริง",
        last: "นามสกุล",
        team: "ทีม",
        phNick: "เช่น: บีม",
        phFirst: "เช่น: คนงาม",
        phLast: "เช่น: ใจดี",
        hintName: "พิมพ์ 2–3 ตัว แล้วเลือกชื่อเต็มจากรายการ",
        btn: "ส่งลงทะเบียน",
        helper: "* แนะนำให้เลือกชื่อจากรายการเพื่อป้องกันสะกดผิด",
        ok: "✅ ลงทะเบียนสำเร็จ",
        sending: "กำลังส่ง...",
        errMissing: "กรุณากรอกข้อมูลให้ครบทุกช่อง",
        errUrl: "กรุณาใส่ Web App URL ที่ลงท้าย /exec ให้ถูกต้อง",
        warnNotFound:
          "⚠️ ไม่พบชื่อนี้ในรายชื่อแนะนำ\n" +
          "แนะนำให้พิมพ์แล้วเลือกชื่อเต็มจากรายการเพื่อกันสะกดผิด\n" +
          "(ยังสามารถส่งได้หากเป็นชื่อใหม่)",
        matchPicked: "✓ เลือกจากรายชื่อแล้ว",
        matchOk: "✓ ตรงกับรายชื่อ",
        footer: "SHD • Company Party Registration",
        teamPlaceholder: "เลือกทีมของคุณ",
        teams: [
          { value: "Sales", label: "Sales" },
          { value: "Marketing", label: "Marketing" },
          { value: "Finance", label: "Finance" },
          { value: "HR", label: "HR" },
          { value: "Operations", label: "Operations" },
          { value: "Warehouse", label: "Warehouse" },
          { value: "After-sales", label: "After-sales" },
          { value: "IT / Data", label: "IT / Data" },
          { value: "Other", label: "Other" },
        ]
      },
      en: {
        title: "Sign Up",
        subtitle: "Company Party — please complete the form and submit",
        nick: "Nickname",
        first: "First name",
        last: "Last name",
        team: "Team",
        phNick: "e.g., Beam",
        phFirst: "e.g., Elijah ",
        phLast: "e.g., Mateo",
        btn: "Submit Registration",
        helper: "* Please select from the suggestions to avoid typos",
        ok: "✅ Registered successfully",
        sending: "Submitting...",
        errMissing: "Please fill in all required fields",
        errUrl: "Please set a valid Web App URL ending with /exec",
        warnNotFound:
          "⚠️ This name is not in the suggested list.\n" +
          "Please select a full name from suggestions to avoid typos.\n" +
          "(You can still submit if it's a new name.)",
        matchPicked: "✓ Selected from list",
        matchOk: "✓ Matched suggestion",
        footer: "SHD • Company Party Registration",
        teamPlaceholder: "Select your team",
        teams: [
          { value: "Sales", label: "Sales" },
          { value: "Marketing", label: "Marketing" },
          { value: "Finance", label: "Finance" },
          { value: "HR", label: "HR" },
          { value: "Operations", label: "Operations" },
          { value: "Warehouse", label: "Warehouse" },
          { value: "After-sales", label: "After-sales" },
          { value: "IT / Data", label: "IT / Data" },
          { value: "Other", label: "Other" },
        ]
      },
      zh: {
        title: "报名",
        subtitle: "公司聚会 — 请填写信息并提交",
        nick: "昵称",
        first: "名字",
        last: "姓氏",
        team: "团队",
        phNick: "例如：大能",
        phFirst: "例如：彩红",
        phLast: "例如：晨",
        btn: "提交报名",
        helper: "* 建议从列表中选择姓名以避免拼写错误",
        ok: "✅ 报名成功",
        sending: "正在提交...",
        errMissing: "请填写所有必填项",
        errUrl: "请设置正确的 Web App URL（以 /exec 结尾）",
        warnNotFound:
          "⚠️ 建议列表中未找到该姓名。\n" +
          "建议从提示中选择全名以避免拼写错误。\n" +
          "（如果是新姓名也可以提交）",
        matchPicked: "✓ 已从列表选择",
        matchOk: "✓ 与建议匹配",
        footer: "SHD • Company Party Registration",
        teamPlaceholder: "请选择团队",
        teams: [
          { value: "Sales", label: "Sales" },
          { value: "Marketing", label: "Marketing" },
          { value: "Finance", label: "Finance" },
          { value: "HR", label: "HR" },
          { value: "Operations", label: "Operations" },
          { value: "Warehouse", label: "Warehouse" },
          { value: "After-sales", label: "After-sales" },
          { value: "IT / Data", label: "IT / Data" },
          { value: "Other", label: "Other" },
        ]
      }
    };

    const LANG_KEY = "party_form_lang";
    let currentLang = localStorage.getItem(LANG_KEY) || "th";

    const langBtn = document.getElementById("langBtn");
    const langMenu = document.getElementById("langMenu");

    const form = document.getElementById("regForm");
    const toast = document.getElementById("toast");
    const submitBtn = document.getElementById("submitBtn");

    const nicknameInput = document.getElementById("nickname");
    const firstInput = document.getElementById("first_name");
    const lastInput = document.getElementById("last_name");
    const teamSelect = document.getElementById("team");
    const matchPill = document.getElementById("matchPill");

    const ui_title = document.getElementById("ui_title");
    const ui_subtitle = document.getElementById("ui_subtitle");
    const ui_lbl_nick = document.getElementById("ui_lbl_nick");
    const ui_lbl_first = document.getElementById("ui_lbl_first");
    const ui_lbl_last = document.getElementById("ui_lbl_last");
    const ui_lbl_team = document.getElementById("ui_lbl_team");
    const ui_hint_name = document.getElementById("ui_hint_name");
    const ui_helper = document.getElementById("ui_helper");
    const ui_footer = document.getElementById("ui_footer");

    function normalizeSpace(s){
      return (s || "").toString().replace(/\s+/g, " ").trim();
    }
    function showToast(msg, type){
      toast.className = "toast " + (type || "");
      toast.textContent = msg;
      toast.style.display = "block";
    }
    function clearToast(){
      toast.style.display = "none";
      toast.textContent = "";
      toast.className = "toast";
    }
    function setMatchPill(text){
      if (!text){
        matchPill.style.display = "none";
        matchPill.textContent = "";
        return;
      }
      matchPill.style.display = "inline-block";
      matchPill.textContent = text;
    }

    function splitName(full){
      const t = normalizeSpace(full);
      if (!t) return null;
      const arr = t.split(" ");
      if (arr.length === 1) return { first: arr[0], last: "" };
      return { first: arr[0], last: arr.slice(1).join(" ") };
    }

    const optionFullnames = Array.from(document.querySelectorAll("#staffFullnames option"))
      .map(o => (o.getAttribute("value") || "").trim())
      .filter(Boolean);

    const fullToParts = new Map();
    for (const full of optionFullnames) {
      const parts = splitName(full);
      if (parts) fullToParts.set(full, parts);
    }

    function tryAutofillLastName(){
      const v = normalizeSpace(firstInput.value);
      if (!v) { setMatchPill(""); return; }
      const parts = fullToParts.get(v);
      if (parts) {
        firstInput.value = parts.first;
        lastInput.value = parts.last || "";
        setMatchPill(I18N[currentLang].matchPicked);
        clearToast();
        return;
      }
      setMatchPill("");
    }

    firstInput.addEventListener("change", tryAutofillLastName);
    firstInput.addEventListener("blur", tryAutofillLastName);
    lastInput.addEventListener("input", () => setMatchPill(""));

    function renderTeams(lang){
      teamSelect.innerHTML = "";
      const ph = document.createElement("option");
      ph.value = "";
      ph.disabled = true;
      ph.selected = true;
      ph.textContent = I18N[lang].teamPlaceholder;
      teamSelect.appendChild(ph);

      for (const t of I18N[lang].teams) {
        const opt = document.createElement("option");
        opt.value = t.value;
        opt.textContent = t.label;
        teamSelect.appendChild(opt);
      }
    }

    function applyLang(lang){
      currentLang = lang;
      localStorage.setItem(LANG_KEY, lang);

      const T = I18N[lang] || I18N.th;

      document.documentElement.lang = lang === "zh" ? "zh" : (lang === "en" ? "en" : "th");
      document.title = T.title + " · Company Party";

      ui_title.textContent = T.title;
      ui_subtitle.textContent = T.subtitle;

      ui_lbl_nick.textContent = T.nick;
      ui_lbl_first.textContent = T.first;
      ui_lbl_last.textContent = T.last;
      ui_lbl_team.textContent = T.team;

      nicknameInput.placeholder = T.phNick;
      firstInput.placeholder = T.phFirst;
      lastInput.placeholder = T.phLast;

      ui_hint_name.textContent = T.hintName;
      ui_helper.textContent = T.helper;
      submitBtn.textContent = T.btn;
      ui_footer.textContent = T.footer;

      const prevTeam = teamSelect.getAttribute("data-prev") || "";
      renderTeams(lang);
      if (prevTeam) {
        const match = Array.from(teamSelect.options).find(o => o.value === prevTeam);
        if (match) teamSelect.value = prevTeam;
      }
    }

    teamSelect.addEventListener("change", () => {
      teamSelect.setAttribute("data-prev", teamSelect.value);
    });

    function toggleLangMenu(force){
      const open = typeof force === "boolean" ? force : !langMenu.classList.contains("open");
      langMenu.classList.toggle("open", open);
    }
    langBtn.addEventListener("click", (e) => {
      e.stopPropagation();
      toggleLangMenu();
    });
    document.addEventListener("click", () => toggleLangMenu(false));
    langMenu.addEventListener("click", (e) => {
      const btn = e.target.closest("[data-lang]");
      if (!btn) return;
      teamSelect.setAttribute("data-prev", teamSelect.value || "");
      applyLang(btn.getAttribute("data-lang"));
      toggleLangMenu(false);
    });

    form.addEventListener("submit", async (e) => {
      e.preventDefault();
      const T = I18N[currentLang] || I18N.th;

      if (!SCRIPT_URL || !SCRIPT_URL.includes("/exec")) {
        showToast(T.errUrl, "err");
        return;
      }

      tryAutofillLastName();

      const nickname = normalizeSpace(nicknameInput.value);
      const first_name = normalizeSpace(firstInput.value);
      const last_name = normalizeSpace(lastInput.value);
      const team = normalizeSpace(teamSelect.value);

      if (!nickname || !first_name || !last_name || !team) {
        showToast(T.errMissing, "err");
        return;
      }

      const fullTyped = normalizeSpace(first_name + " " + last_name);
      const isWhitelisted = optionFullnames.includes(fullTyped);

      if (!isWhitelisted) {
        showToast(T.warnNotFound, "warn");
      } else {
        setMatchPill(T.matchOk);
      }

      submitBtn.disabled = true;
      submitBtn.textContent = T.sending;

      try {
        const body = new URLSearchParams({
          nickname,
          first_name,
          last_name,
          team,
          lang: currentLang,
        });

        const res = await fetch(SCRIPT_URL, { method: "POST", body });
        const data = await res.json().catch(() => ({}));

        if (data && data.ok) {
          showToast(T.ok, "ok");
          form.reset();
          setMatchPill("");
          teamSelect.setAttribute("data-prev", "");
          applyLang(currentLang);
        } else {
          showToast("❌ " + (data.error || "UNKNOWN_ERROR"), "err");
        }
      } catch (err) {
        showToast("❌ " + String(err), "err");
      } finally {
        submitBtn.disabled = false;
        submitBtn.textContent = (I18N[currentLang] || I18N.th).btn;
      }
    });

    applyLang(currentLang);
  </script>
</body>
</html>
