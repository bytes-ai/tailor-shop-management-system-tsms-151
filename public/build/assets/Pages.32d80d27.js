import{L as p}from"./Layout.7cfde331.js";import{_ as g,r as b,o,c as r,a as t,t as s,b as i,e as a,F as d,j as m,d as f,h as c}from"./app.be70addd.js";import"./Dropdown.838ec547.js";import"./FlashMessages.58fb813e.js";const k={layout:p,metaInfo(){return{title:this.$tc("Page",2)}},data(){return{menus:[{title:this.$t("Dashboard"),link:"dashboard",icon:"dashboard"},{title:this.$tc("Service",2),link:"services",icon:"service"},{title:this.$tc("Order",2),link:"orders",icon:"store-front"},{title:this.$tc("Measurement",2),link:"measurements",icon:"measurement"},{title:this.$tc("Customer",2),link:"customers",icon:"customer"},{title:this.$tc("Payment",2),link:"payments",icon:"payment"},{title:this.$tc("Expense",2),link:"expenses",icon:"expense"},{title:this.$tc("Contact",2),link:"contacts",icon:"contacts"}],owner_menus:[{title:this.$tc("Report",2),link:"reports",icon:"report"},{title:this.$tc("User",2),link:"users",icon:"users",owner:!0},{title:this.$tc("Salary",2),link:"salaries",icon:"salary",owner:!0},{title:this.$tc("Tax",2),link:"taxes",icon:"tax",owner:!0},{title:this.$tc("Setting",2),link:"settings",icon:"settings",owner:!0},{title:this.$tc("Measurement Field",2),link:"measurement_fields",icon:"measurement_field",owner:!0},{title:this.$t("Activity Log"),link:"logs",icon:"logs",owner:!0}]}},computed:{mil(){return this.menus.length}}},$={class:"pt-2"},_={class:"mb-6 mt-2 font-bold text-lg md:text-2xl"},y={class:"list-reset border bg-white rounded-lg menu-list shadow-lg"},w={class:"my-6 font-bold text-lg"},v={class:"list-reset border bg-white rounded-lg menu-list shadow-lg"},L={class:"my-6 font-bold text-lg"},C={class:"list-reset border bg-white rounded-lg menu-list shadow-lg"};function P(e,N,S,V,h,B){const n=b("Link");return o(),r("div",$,[t("h1",_,s(e.$t("Hello"))+" "+s(e.$page.props.user.name)+",",1),t("div",null,[t("ul",y,[t("li",null,[i(n,{href:e.route("profile.edit",e.$page.props.user),class:"block p-4 font-bold hover:bg-gray-300 border-b"},{default:a(()=>[c(s(e.$t("My Profile")),1)]),_:1},8,["href"])]),t("li",null,[i(n,{href:e.route("profile.change.password",e.$page.props.user),class:"block p-4 font-bold hover:bg-gray-300 border-b"},{default:a(()=>[c(s(e.$t("Change Password")),1)]),_:1},8,["href"])]),t("li",null,[i(n,{href:e.route("logout"),method:"post",class:"block p-4 font-bold hover:bg-gray-300"},{default:a(()=>[c(s(e.$t("Logout")),1)]),_:1},8,["href"])])]),t("h1",w,s(e.$t("Page Links")),1),t("ul",v,[(o(!0),r(d,null,m(h.menus,(l,u)=>(o(),r("li",{key:"pmm_"+u},[i(n,{href:e.route(l.link),class:"block p-4 font-bold hover:bg-gray-300 border-b"},{default:a(()=>[c(s(l.title),1)]),_:2},1032,["href"])]))),128))]),e.$page.props.user.owner?(o(),r(d,{key:0},[t("h1",L,s(e.$t("Owner Links")),1),t("ul",C,[(o(!0),r(d,null,m(h.owner_menus,(l,u)=>(o(),r("li",{key:"pamm_"+u},[i(n,{href:e.route(l.link),class:"block p-4 font-bold hover:bg-gray-300 border-b"},{default:a(()=>[c(s(l.title),1)]),_:2},1032,["href"])]))),128))])],64)):f("",!0)])])}const O=g(k,[["render",P]]);export{O as default};
