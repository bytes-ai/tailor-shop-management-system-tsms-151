import{L as N}from"./Layout.7cfde331.js";import{T as R}from"./TextInput.52b29758.js";import{d as T}from"./DeleteMixin.5c695c3e.js";import{L as U}from"./LoadingButton.5bbbf3d3.js";import{C as B}from"./CheckboxInput.cd92fff4.js";import{T as I}from"./TrashedMessage.b0e3b0f8.js";import{D as M}from"./DeleteRestoreComponent.85d66cb6.js";import{_ as A,r as l,o as u,f,e as d,a as s,b as i,h as _,t as p,d as w,w as F}from"./app.be70addd.js";import"./Dropdown.838ec547.js";import"./FlashMessages.58fb813e.js";import"./InputError.8ccdc6e5.js";import"./Dialog.3833b22c.js";import"./Modal.13d78bfa.js";const j={mixins:[T("service")],props:{service:Object,customers:Array},components:{Layout:N,LoadingButton:U,TextInput:R,TrashedMessage:I,CheckboxInput:B,DeleteRestoreComponent:M},data(){var r,o,n,c,e,m;return{errors:{},restore:!1,sending:!1,form:{id:(r=this.service)==null?void 0:r.id,code:(o=this.service)==null?void 0:o.code,name:(n=this.service)==null?void 0:n.name,price:(c=this.service)==null?void 0:c.price,description:(e=this.service)==null?void 0:e.description,active:((m=this.service)==null?void 0:m.active)==1}}},methods:{submit(){this.sending=!0,this.$inertia[this.form.id?"put":"post"](this.form.id?route("services.update",this.service.id):route("services.store"),this.form,{onSuccess:()=>this.errors={},onFinish:()=>this.sending=!1,onError:r=>this.errors=r})}}},E={class:"mb-6 mt-2 font-bold text-lg md:text-2xl"},O=s("span",{class:"text-gray-400 font-medium mx-1"},"/",-1),P={class:"bg-white rounded shadow overflow-hidden max-w-3xl"},q={class:"p-8 ltr:-mr-6 rtl:-ml-6 ltr:ml-0 rtl:mr-0 -mb-8 flex flex-wrap"},z={class:"px-8 pb-8 ltr:-mr-6 rtl:-ml-6 ltr:ml-0 rtl:mr-0 -mb-8 flex flex-wrap"},G={class:"px-8 py-4 bg-gray-100 border-t border-gray-200 flex items-center"};function H(r,o,n,c,e,m){const y=l("Icons"),V=l("Link"),k=l("trashed-message"),a=l("text-input"),C=l("checkbox-input"),D=l("DeleteRestoreComponent"),L=l("loading-button"),S=l("layout");return u(),f(S,{title:e.form.id?r.$t("update_x",{x:e.form.name}):r.$t("create_x",{x:r.$t("service")})},{default:d(()=>{var b,v,h,g,x;return[s("div",null,[s("h1",E,[i(V,{class:"text-gray-600 hover:text-gray-800 inline-flex items-center",href:r.route("services")},{default:d(()=>[i(y,{name:"back",class:"flex-shrink-0 w-3 h-3 md:w-5 md:h-5 fill-current ltr:mr-2 rtl:ml-2 rtl:rotate"}),_(" "+p(r.$tc("Service",2)),1)]),_:1},8,["href"]),O,s("span",null,p(e.form.id?e.form.name:r.$t("create_x",{x:r.$t("service")})),1)]),(b=n.service)!=null&&b.deleted_at?(u(),f(k,{key:0,class:"mb-6",onRestore:o[0]||(o[0]=()=>e.restore=!0)},{default:d(()=>[s("span",null,p(r.$t("already_deleted_x",{x:r.$tc("Service")})),1)]),_:1})):w("",!0),s("div",P,[s("form",{onSubmit:o[7]||(o[7]=F((...t)=>m.submit&&m.submit(...t),["prevent"])),autocomplete:"off"},[s("div",q,[i(a,{modelValue:e.form.code,"onUpdate:modelValue":o[1]||(o[1]=t=>e.form.code=t),error:(v=e.errors)==null?void 0:v.code,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2",label:r.$t("Code")},null,8,["modelValue","error","label"]),i(a,{modelValue:e.form.name,"onUpdate:modelValue":o[2]||(o[2]=t=>e.form.name=t),error:(h=e.errors)==null?void 0:h.name,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2",label:r.$t("Name")},null,8,["modelValue","error","label"])]),s("div",z,[i(a,{modelValue:e.form.price,"onUpdate:modelValue":o[3]||(o[3]=t=>e.form.price=t),error:(g=e.errors)==null?void 0:g.price,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full",label:r.$t("Price")},null,8,["modelValue","error","label"]),i(a,{label:r.$t("Description"),modelValue:e.form.description,"onUpdate:modelValue":o[4]||(o[4]=t=>e.form.description=t),error:(x=e.errors)==null?void 0:x.description,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full"},null,8,["label","modelValue","error"]),i(C,{id:"active",label:r.$t("Active"),checked:e.form.active,"onUpdate:checked":o[5]||(o[5]=t=>e.form.active=t),class:"mb-8"},null,8,["label","checked"])]),s("div",G,[n.service?(u(),f(D,{key:0,restore:e.restore,data:n.service,model:"Service",routeM:"services",onCloseRestore:o[6]||(o[6]=()=>e.restore=!1)},null,8,["restore","data"])):w("",!0),i(L,{loading:e.sending,class:"btn-gray ltr:ml-auto rtl:mr-auto",type:"submit"},{default:d(()=>[_(p(e.form.id?r.$t("update_x",{x:r.$t("service")}):r.$t("create_x",{x:r.$t("service")})),1)]),_:1},8,["loading"])])],32)])])]}),_:1},8,["title"])}const le=A(j,[["render",H]]);export{le as default};
