import{_ as s,m as l,p as u,o as a,c as n,v as f,a as d,n as p,d as m}from"./app.be70addd.js";import{a as k}from"./InputError.8ccdc6e5.js";const x={emits:["update:checked"],props:{checked:{type:[Array,Boolean],default:!1},value:{default:null}},computed:{proxyChecked:{get(){return this.checked},set(t){this.$emit("update:checked",t)}}}},y=["value"];function _(t,r,e,i,h,o){return l((a(),n("input",{type:"checkbox",value:e.value,"onUpdate:modelValue":r[0]||(r[0]=c=>o.proxyChecked=c),class:"rounded border-gray-300 text-indigo-600 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"},null,8,y)),[[u,o.proxyChecked]])}const b=s(x,[["render",_]]),g={emits:["update:checked"],components:{TecCheckbox:b,TecInputError:k},props:{id:{type:String,default(){return f()}},checked:{type:[Array,Boolean],default:!1},value:{default:null},label:String,error:String},computed:{proxyChecked:{get(){return this.checked},set(t){this.$emit("update:checked",t)}}}},v=["for"],C=["id","value"],B=["innerHTML"];function T(t,r,e,i,h,o){return a(),n("div",null,[d("label",{for:e.id,class:"inline-flex items-center"},[l(d("input",{id:e.id,value:e.value,type:"checkbox","onUpdate:modelValue":r[0]||(r[0]=c=>o.proxyChecked=c),class:p([{"border-red-500":e.error},"rounded border-gray-300 text-blue-600 shadow-sm focus:border-blue-300 focus:ring focus:ring-blue-200 focus:ring-opacity-50"])},null,10,C),[[u,o.proxyChecked]]),e.label?(a(),n("span",{key:0,innerHTML:e.label,class:"ml-2 text-gray-600 inline-block"},null,8,B)):m("",!0)],8,v)])}const M=s(g,[["render",T]]);export{M as C};
