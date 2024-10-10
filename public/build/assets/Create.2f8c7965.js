import{L as h}from"./Layout.7cfde331.js";import{T as w}from"./TextInput.52b29758.js";import{L as _}from"./LoadingButton.5bbbf3d3.js";import{_ as y,r as n,o as V,c as v,a as l,b as s,e as c,h as a,t as i,w as $}from"./app.be70addd.js";import"./Dropdown.838ec547.js";import"./FlashMessages.58fb813e.js";import"./InputError.8ccdc6e5.js";const k={layout:h,remember:"form",components:{LoadingButton:_,TextInput:w},metaInfo(){return{title:this.$t("create_x",{x:this.$tc("Expense")})}},data(){return{sending:!1,form:{name:null,amount:null,description:null}}},methods:{submit(){this.sending=!0,this.$inertia.post(this.route("expenses.store"),this.form,{onFinish:()=>this.sending=!1})}}},L={class:"mb-6 mt-2 font-bold text-lg md:text-2xl"},B=l("span",{class:"text-gray-400 font-medium mx-2"},"/",-1),C={class:"bg-white rounded shadow overflow-hidden max-w-3xl"},E={class:"p-8 ltr:-mr-6 rtl:-ml-6 ltr:ml-0 rtl:mr-0 -mb-8 flex flex-wrap"},I={class:"px-8 pb-8 ltr:-mr-6 rtl:-ml-6 ltr:ml-0 rtl:mr-0 -mb-8 flex flex-wrap"},N={class:"px-8 py-4 bg-gray-100 border-t border-gray-200 flex justify-end items-center"};function T(e,t,U,D,r,p){var d,u,f;const b=n("Icons"),g=n("Link"),m=n("text-input"),x=n("loading-button");return V(),v("div",null,[l("h1",L,[s(g,{class:"text-gray-600 hover:text-gray-800 inline-flex items-center",href:e.route("expenses")},{default:c(()=>[s(b,{name:"back",class:"flex-shrink-0 w-3 h-3 md:w-5 md:h-5 fill-current ltr:mr-2 rtl:ml-2 rtl:rotate"}),a(" "+i(e.$tc("Expense",2)),1)]),_:1},8,["href"]),B,a(" "+i(e.$t("Create")),1)]),l("div",C,[l("form",{onSubmit:t[3]||(t[3]=$((...o)=>p.submit&&p.submit(...o),["prevent"])),autocomplete:"off"},[l("div",E,[s(m,{modelValue:r.form.name,"onUpdate:modelValue":t[0]||(t[0]=o=>r.form.name=o),errors:(d=e.$page.props.errors)==null?void 0:d.name,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2",label:e.$t("Name")},null,8,["modelValue","errors","label"]),s(m,{label:e.$t("Amount"),modelValue:r.form.amount,"onUpdate:modelValue":t[1]||(t[1]=o=>r.form.amount=o),errors:(u=e.$page.props.errors)==null?void 0:u.amount,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2"},null,8,["label","modelValue","errors"])]),l("div",I,[s(m,{label:e.$t("Description"),modelValue:r.form.description,"onUpdate:modelValue":t[2]||(t[2]=o=>r.form.description=o),errors:(f=e.$page.props.errors)==null?void 0:f.description,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full"},null,8,["label","modelValue","errors"])]),l("div",N,[s(x,{loading:r.sending,class:"btn-gray",type:"submit"},{default:c(()=>[a(i(e.$t("create_x",{x:e.$tc("Expense")})),1)]),_:1},8,["loading"])])],32)])])}const G=y(k,[["render",T]]);export{G as default};
