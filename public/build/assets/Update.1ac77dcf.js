import{_ as d,o as i,c as l,a as t,t as o}from"./app.be70addd.js";const c={props:["info"],methods:{goHome(){this.$inertia.visit(this.route("dashboard"))}}},m={class:"w-full min-h-screen flex items-center p-6 bg-gradient-gray"},g={class:"w-full max-w-sm mx-auto bg-white text-gray-700 rounded shadow-lg leading-normal"},_={class:"p-4"},b={class:"font-bold text-sm"},f={class:"font-extrabold mt-2"};function h(e,s,r,u,p,a){return i(),l("div",m,[t("div",g,[t("div",_,[t("h4",b,o(e.$t("Database Status")),1),t("h4",f,o(r.info),1)]),t("button",{type:"button",onClick:s[0]||(s[0]=(...n)=>a.goHome&&a.goHome(...n)),class:"px-4 py-2 w-full text-sm rounded-b border-t border-gray-200 bg-gray-200 hover:bg-gray-300"},o(e.$t("Go back to Home")),1)])])}const y=d(c,[["render",h]]);export{y as default};
