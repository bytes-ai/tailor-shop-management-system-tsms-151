import{g as we}from"./debounce.382cac71.js";import{T as Se}from"./TextInput.52b29758.js";import{C as _e}from"./CheckboxInput.cd92fff4.js";import{T as Ae}from"./TextareaInput.1d17a2de.js";import{L as Ce}from"./LoadingButton.5bbbf3d3.js";import{_ as xe,r as U,o as M,c as z,a as g,t as L,d as Q,n as G,w as ke,b as O,f as Pe,e as Oe,h as Te}from"./app.be70addd.js";import"./InputError.8ccdc6e5.js";var q={};const Ie="@vue-stripe/vue-stripe",je="4.4.4",Le="Stripe Checkout & Elements for Vue.js",Re="jofftiquez@gmail.com",Be={build:"rollup -c",lint:"vue-cli-service lint --fix",prebuild:"rimraf dist",test:"jest"},$e="dist/index.js",De="dist",Fe={"@stripe/stripe-js":"^1.13.2","vue-coerce-props":"^1.0.0"},Ve={"@babel/cli":"^7.7.5","@babel/core":"^7.7.5","@babel/plugin-proposal-export-default-from":"^7.7.4","@babel/plugin-proposal-optional-chaining":"^7.10.4","@babel/plugin-transform-runtime":"^7.7.5","@babel/preset-env":"^7.7.5","@babel/preset-es2015":"^7.0.0-beta.53","@babel/runtime":"^7.7.5","@rollup/plugin-node-resolve":"^6.0.0","@vue/cli-plugin-eslint":"~4.5.0","@vue/cli-service":"^4.5.10","@vue/eslint-config-standard":"^5.1.2","babel-eslint":"^10.1.0","babel-minify":"^0.5.1","cross-env":"^6.0.3",eslint:"^6.8.0","eslint-plugin-import":"^2.20.2","eslint-plugin-node":"^11.1.0","eslint-plugin-promise":"^4.2.1","eslint-plugin-standard":"^4.0.0","eslint-plugin-vue":"^6.2.2",jest:"^24.9.0","lint-staged":"^9.5.0",rimraf:"^3.0.0",rollup:"^1.27.9","rollup-plugin-babel":"^4.3.3","rollup-plugin-commonjs":"^10.1.0","rollup-plugin-postcss":"^2.0.3","rollup-plugin-terser":"^5.1.3","rollup-plugin-uglify":"^6.0.3","rollup-plugin-vue":"^5.1.4","vue-template-compiler":"^2.6.11"},Ne={url:"https://github.com/vue-stripe/vue-stripe/issues"},Ue={"pre-commit":"lint-staged"},Me="https://github.com/vue-stripe/vue-stripe#readme",Ge=["vue","vuejs","stripe","checkout","payment"],qe="MIT",He={type:"git",url:"git@github.com:vue-stripe/vue-stripe.git"},ze="typings/index.d.ts",Ye={name:Ie,version:je,description:Le,author:Re,scripts:Be,main:$e,module:De,dependencies:Fe,devDependencies:Ve,bugs:Ne,gitHooks:Ue,homepage:Me,keywords:Ge,license:qe,"lint-staged":{"*.{js,jsx,vue}":["vue-cli-service lint","git add"]},repository:He,typings:ze};var de;Object.defineProperty(q,"__esModule",{value:!0});var te="auto",Xe=["auto","bg","cs","da","de","el","en","en-GB","es","es-419","et","fi","fr","fr-CA","hu","id","it","ja","lt","lv","ms","mt","nb","nl","pl","pt","pt-BR","ro","ru","sk","sl","sv","tr","zh","zh-HK","zh-TW"],Ke=["auto","book","donate","pay"],Qe=["required","auto"],We={base:{color:"#32325d",fontFamily:'"Helvetica Neue", Helvetica, sans-serif',fontSmoothing:"antialiased",fontSize:"16px","::placeholder":{color:"#aab7c4"}},invalid:{color:"#fa755a",iconColor:"#fa755a"}},Je=Ye.version,Y={name:"vue-stripe",version:Je,url:"https://vuestripe.com",partner_id:"pp_partner_IqtOXpBSuz0IE2"},Ze={install:function(e,n){var r=n.pk,t=n.stripeAccount,s=n.apiVersion,u=n.locale,l=window.Stripe(r,{stripeAccount:t,apiVersion:s,locale:u});l.registerAppInfo(Y),e.prototype.$stripe=l}};function en(e,n){return e(n={exports:{}},n.exports),n.exports}var nn=en(function(e){var n=function(r){var t,s=Object.prototype,u=s.hasOwnProperty,l=typeof Symbol=="function"?Symbol:{},f=l.iterator||"@@iterator",w=l.asyncIterator||"@@asyncIterator",p=l.toStringTag||"@@toStringTag";function v(i,o,c,d){var a=o&&o.prototype instanceof $?o:$,E=Object.create(a.prototype),F=new ee(d||[]);return E._invoke=function(P,H,h){var A=y;return function(j,V){if(A===k)throw new Error("Generator is already running");if(A===T){if(j==="throw")throw V;return ae()}for(h.method=j,h.arg=V;;){var N=h.delegate;if(N){var x=se(N,h);if(x){if(x===b)continue;return x}}if(h.method==="next")h.sent=h._sent=h.arg;else if(h.method==="throw"){if(A===y)throw A=T,h.arg;h.dispatchException(h.arg)}else h.method==="return"&&h.abrupt("return",h.arg);A=k;var _=S(P,H,h);if(_.type==="normal"){if(A=h.done?T:B,_.arg===b)continue;return{value:_.arg,done:h.done}}_.type==="throw"&&(A=T,h.method="throw",h.arg=_.arg)}}}(i,c,F),E}function S(i,o,c){try{return{type:"normal",arg:i.call(o,c)}}catch(d){return{type:"throw",arg:d}}}r.wrap=v;var y="suspendedStart",B="suspendedYield",k="executing",T="completed",b={};function $(){}function I(){}function m(){}var W={};W[f]=function(){return this};var J=Object.getPrototypeOf,X=J&&J(J(ne([])));X&&X!==s&&u.call(X,f)&&(W=X);var D=m.prototype=$.prototype=Object.create(W);function ie(i){["next","throw","return"].forEach(function(o){i[o]=function(c){return this._invoke(o,c)}})}function K(i){var o;this._invoke=function(c,d){function a(){return new Promise(function(E,F){(function P(H,h,A,j){var V=S(i[H],i,h);if(V.type!=="throw"){var N=V.arg,x=N.value;return x&&typeof x=="object"&&u.call(x,"__await")?Promise.resolve(x.__await).then(function(_){P("next",_,A,j)},function(_){P("throw",_,A,j)}):Promise.resolve(x).then(function(_){N.value=_,A(N)},function(_){return P("throw",_,A,j)})}j(V.arg)})(c,d,E,F)})}return o=o?o.then(a,a):a()}}function se(i,o){var c=i.iterator[o.method];if(c===t){if(o.delegate=null,o.method==="throw"){if(i.iterator.return&&(o.method="return",o.arg=t,se(i,o),o.method==="throw"))return b;o.method="throw",o.arg=new TypeError("The iterator does not provide a 'throw' method")}return b}var d=S(c,i.iterator,o.arg);if(d.type==="throw")return o.method="throw",o.arg=d.arg,o.delegate=null,b;var a=d.arg;return a?a.done?(o[i.resultName]=a.value,o.next=i.nextLoc,o.method!=="return"&&(o.method="next",o.arg=t),o.delegate=null,b):a:(o.method="throw",o.arg=new TypeError("iterator result is not an object"),o.delegate=null,b)}function Ee(i){var o={tryLoc:i[0]};1 in i&&(o.catchLoc=i[1]),2 in i&&(o.finallyLoc=i[2],o.afterLoc=i[3]),this.tryEntries.push(o)}function Z(i){var o=i.completion||{};o.type="normal",delete o.arg,i.completion=o}function ee(i){this.tryEntries=[{tryLoc:"root"}],i.forEach(Ee,this),this.reset(!0)}function ne(i){if(i){var o=i[f];if(o)return o.call(i);if(typeof i.next=="function")return i;if(!isNaN(i.length)){var c=-1,d=function a(){for(;++c<i.length;)if(u.call(i,c))return a.value=i[c],a.done=!1,a;return a.value=t,a.done=!0,a};return d.next=d}}return{next:ae}}function ae(){return{value:t,done:!0}}return I.prototype=D.constructor=m,m.constructor=I,m[p]=I.displayName="GeneratorFunction",r.isGeneratorFunction=function(i){var o=typeof i=="function"&&i.constructor;return!!o&&(o===I||(o.displayName||o.name)==="GeneratorFunction")},r.mark=function(i){return Object.setPrototypeOf?Object.setPrototypeOf(i,m):(i.__proto__=m,p in i||(i[p]="GeneratorFunction")),i.prototype=Object.create(D),i},r.awrap=function(i){return{__await:i}},ie(K.prototype),K.prototype[w]=function(){return this},r.AsyncIterator=K,r.async=function(i,o,c,d){var a=new K(v(i,o,c,d));return r.isGeneratorFunction(o)?a:a.next().then(function(E){return E.done?E.value:a.next()})},ie(D),D[p]="Generator",D[f]=function(){return this},D.toString=function(){return"[object Generator]"},r.keys=function(i){var o=[];for(var c in i)o.push(c);return o.reverse(),function d(){for(;o.length;){var a=o.pop();if(a in i)return d.value=a,d.done=!1,d}return d.done=!0,d}},r.values=ne,ee.prototype={constructor:ee,reset:function(i){if(this.prev=0,this.next=0,this.sent=this._sent=t,this.done=!1,this.delegate=null,this.method="next",this.arg=t,this.tryEntries.forEach(Z),!i)for(var o in this)o.charAt(0)==="t"&&u.call(this,o)&&!isNaN(+o.slice(1))&&(this[o]=t)},stop:function(){this.done=!0;var i=this.tryEntries[0].completion;if(i.type==="throw")throw i.arg;return this.rval},dispatchException:function(i){if(this.done)throw i;var o=this;function c(H,h){return E.type="throw",E.arg=i,o.next=H,h&&(o.method="next",o.arg=t),!!h}for(var d=this.tryEntries.length-1;d>=0;--d){var a=this.tryEntries[d],E=a.completion;if(a.tryLoc==="root")return c("end");if(a.tryLoc<=this.prev){var F=u.call(a,"catchLoc"),P=u.call(a,"finallyLoc");if(F&&P){if(this.prev<a.catchLoc)return c(a.catchLoc,!0);if(this.prev<a.finallyLoc)return c(a.finallyLoc)}else if(F){if(this.prev<a.catchLoc)return c(a.catchLoc,!0)}else{if(!P)throw new Error("try statement without catch or finally");if(this.prev<a.finallyLoc)return c(a.finallyLoc)}}}},abrupt:function(i,o){for(var c=this.tryEntries.length-1;c>=0;--c){var d=this.tryEntries[c];if(d.tryLoc<=this.prev&&u.call(d,"finallyLoc")&&this.prev<d.finallyLoc){var a=d;break}}a&&(i==="break"||i==="continue")&&a.tryLoc<=o&&o<=a.finallyLoc&&(a=null);var E=a?a.completion:{};return E.type=i,E.arg=o,a?(this.method="next",this.next=a.finallyLoc,b):this.complete(E)},complete:function(i,o){if(i.type==="throw")throw i.arg;return i.type==="break"||i.type==="continue"?this.next=i.arg:i.type==="return"?(this.rval=this.arg=i.arg,this.method="return",this.next="end"):i.type==="normal"&&o&&(this.next=o),b},finish:function(i){for(var o=this.tryEntries.length-1;o>=0;--o){var c=this.tryEntries[o];if(c.finallyLoc===i)return this.complete(c.completion,c.afterLoc),Z(c),b}},catch:function(i){for(var o=this.tryEntries.length-1;o>=0;--o){var c=this.tryEntries[o];if(c.tryLoc===i){var d=c.completion;if(d.type==="throw"){var a=d.arg;Z(c)}return a}}throw new Error("illegal catch attempt")},delegateYield:function(i,o,c){return this.delegate={iterator:ne(i),resultName:o,nextLoc:c},this.method==="next"&&(this.arg=t),b}},r}(e.exports);try{regeneratorRuntime=n}catch{Function("r","regeneratorRuntime = r")(n)}}),C=nn;function pe(e){return(pe=typeof Symbol=="function"&&typeof Symbol.iterator=="symbol"?function(n){return typeof n}:function(n){return n&&typeof Symbol=="function"&&n.constructor===Symbol&&n!==Symbol.prototype?"symbol":typeof n})(e)}var me,he="https://js.stripe.com/v3",tn=/^https:\/\/js\.stripe\.com\/v3\/?(\?.*)?$/,le="loadStripe.setLoadParameters was called but an existing Stripe.js script already exists in the document; existing script parameters will be used",rn=function(){for(var e=document.querySelectorAll('script[src^="'.concat(he,'"]')),n=0;n<e.length;n++){var r=e[n];if(tn.test(r.src))return r}return null},on=function(e){var n=e&&!e.advancedFraudSignals?"?advancedFraudSignals=false":"",r=document.createElement("script");r.src="".concat(he).concat(n);var t=document.head||document.body;if(!t)throw new Error("Expected document.body not to be null. Stripe.js requires a <body> element.");return t.appendChild(r),r},sn=function(e,n){e&&e._registerWrapper&&e._registerWrapper({name:"stripe-js",version:"1.13.2",startTime:n})},re=null,an=function(e){return re!==null?re:re=new Promise(function(n,r){if(typeof window<"u")if(window.Stripe&&e&&console.warn(le),window.Stripe)n(window.Stripe);else try{var t=rn();t&&e?console.warn(le):t||(t=on(e)),t.addEventListener("load",function(){window.Stripe?n(window.Stripe):r(new Error("Stripe.js not available"))}),t.addEventListener("error",function(){r(new Error("Failed to load Stripe.js"))})}catch(s){return void r(s)}else n(null)})},ln=function(e,n,r){if(e===null)return null;var t=e.apply(void 0,n);return sn(t,r),t},cn=function(e){var n=`invalid load parameters; expected object of shape

    {advancedFraudSignals: boolean}

but received

    `.concat(JSON.stringify(e),`
`);if(e===null||pe(e)!=="object")throw new Error(n);if(Object.keys(e).length===1&&typeof e.advancedFraudSignals=="boolean")return e;throw new Error(n)},fe=!1,R=function(){for(var e=arguments.length,n=new Array(e),r=0;r<e;r++)n[r]=arguments[r];fe=!0;var t=Date.now();return an(me).then(function(s){return ln(s,n,t)})};R.setLoadParameters=function(e){if(fe)throw new Error("You cannot change load parameters after calling loadStripe");me=cn(e)};/**
 * vue-coerce-props v1.0.0
 * (c) 2018 Eduardo San Martin Morote <posva13@gmail.com>
 * @license MIT
 */var un={beforeCreate:function(){var e=this.$options.props;e&&(this._$coertions=Object.keys(e).filter(function(n){return e[n].coerce}).map(function(n){return[n,e[n].coerce]}))},computed:{$coerced:function(){var e=this;return this._$coertions.reduce(function(n,r){var t=r[0],s=r[1];return n[t]=s.call(e,e.$props[t]),n},{})}}},dn={pk:{type:String,required:!0},mode:{type:String,validator:function(e){return["payment","subscription"].includes(e)}},lineItems:{type:Array,default:void 0},items:{type:Array},successUrl:{type:String,default:window.location.href},cancelUrl:{type:String,default:window.location.href},submitType:{type:String,validator:function(e){return Ke.includes(e)}},billingAddressCollection:{type:String,default:"auto",validator:function(e){return Qe.includes(e)}},clientReferenceId:{type:String},customerEmail:{type:String},sessionId:{type:String},stripeAccount:{type:String,default:void 0},apiVersion:{type:String,default:void 0},locale:{type:String,default:te,coerce:function(e){return Xe.includes(e)?e:(console.warn("VueStripe Warning: '".concat(e,"' is not supported by Stripe yet. Falling back to default '").concat(te,"'.")),te)}},shippingAddressCollection:{type:Object,validator:function(e){return Object.prototype.hasOwnProperty.call(e,"allowedCountries")}},disableAdvancedFraudDetection:{type:Boolean},stripeOptions:{type:Object,default:null}},pn={props:dn,mixins:[un],render:function(e){return e},methods:{redirectToCheckout:function(){var e,n,r;return C.async(function(t){for(;;)switch(t.prev=t.next){case 0:return t.prev=0,this.$emit("loading",!0),this.disableAdvancedFraudDetection&&R.setLoadParameters({advancedFraudSignals:!1}),e={stripeAccount:this.stripeAccount,apiVersion:this.apiVersion,locale:this.locale},t.next=6,C.awrap(R(this.pk,e));case 6:if((n=t.sent).registerAppInfo(Y),!this.sessionId){t.next=11;break}return n.redirectToCheckout({sessionId:this.sessionId}),t.abrupt("return");case 11:if(!this.lineItems||!this.lineItems.length||this.mode){t.next=14;break}return console.error("Error: Property 'mode' is required when using 'lineItems'. See https://stripe.com/docs/js/checkout/redirect_to_checkout#stripe_checkout_redirect_to_checkout-options-mode"),t.abrupt("return");case 14:return r={billingAddressCollection:this.billingAddressCollection,cancelUrl:this.cancelUrl,clientReferenceId:this.clientReferenceId,customerEmail:this.customerEmail,items:this.items,lineItems:this.lineItems,locale:this.$coerced.locale,mode:this.mode,shippingAddressCollection:this.shippingAddressCollection,submitType:this.submitType,successUrl:this.successUrl},t.abrupt("return",n.redirectToCheckout(r));case 18:t.prev=18,t.t0=t.catch(0),console.error(t.t0),this.$emit("error",t.t0);case 22:case"end":return t.stop()}},null,this,[[0,18]])}}};function mn(e,n,r){return n in e?Object.defineProperty(e,n,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[n]=r,e}var hn=mn;function ce(e,n){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var t=Object.getOwnPropertySymbols(e);n&&(t=t.filter(function(s){return Object.getOwnPropertyDescriptor(e,s).enumerable})),r.push.apply(r,t)}return r}function fn(e){for(var n=1;n<arguments.length;n++){var r=arguments[n]!=null?arguments[n]:{};n%2?ce(Object(r),!0).forEach(function(t){hn(e,t,r[t])}):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):ce(Object(r)).forEach(function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))})}return e}var yn="card",gn={props:{pk:{type:String,required:!0},testMode:{type:Boolean,default:!1},stripeAccount:{type:String,default:void 0},apiVersion:{type:String,default:void 0},locale:{type:String,default:"auto"},elementsOptions:{type:Object,default:function(){return{}}},tokenData:{type:Object,default:function(){return{}}},disableAdvancedFraudDetection:{type:Boolean},classes:{type:Object,default:function(){return{}}},elementStyle:{type:Object,default:function(){return We}},value:{type:String,default:void 0},hidePostalCode:Boolean,iconStyle:{type:String,default:"default",validator:function(e){return["solid","default"].includes(e)}},hideIcon:Boolean,disabled:Boolean},data:function(){return{loading:!1,stripe:null,elements:null,element:null,card:null}},computed:{form:function(){return document.getElementById("stripe-element-form")}},mounted:function(){var e,n,r=this;return C.async(function(t){for(;;)switch(t.prev=t.next){case 0:return this.disableAdvancedFraudDetection&&R.setLoadParameters({advancedFraudSignals:!1}),e={stripeAccount:this.stripeAccount,apiVersion:this.apiVersion,locale:this.locale},n={classes:this.classes,style:this.elementStyle,value:this.value,hidePostalCode:this.hidePostalCode,iconStyle:this.iconStyle,hideIcon:this.hideIcon,disabled:this.disabled},t.next=5,C.awrap(R(this.pk,e));case 5:this.stripe=t.sent,this.stripe.registerAppInfo(Y),this.elements=this.stripe.elements(this.elementsOptions),this.element=this.elements.create(yn,n),this.element.mount("#stripe-element-mount-point"),this.element.on("change",function(s){var u=document.getElementById("stripe-element-errors");s.error?u.textContent=s.error.message:u.textContent="",r.onChange(s)}),this.element.on("blur",this.onBlur),this.element.on("click",this.onClick),this.element.on("escape",this.onEscape),this.element.on("focus",this.onFocus),this.element.on("ready",this.onReady),this.form.addEventListener("submit",function(s){var u,l,f,w;return C.async(function(p){for(;;)switch(p.prev=p.next){case 0:return p.prev=0,r.$emit("loading",!0),s.preventDefault(),u=fn({},r.element),r.amount&&(u.amount=r.amount),p.next=7,C.awrap(r.stripe.createToken(u,r.tokenData));case 7:if(l=p.sent,f=l.token,!(w=l.error)){p.next=15;break}return document.getElementById("stripe-element-errors").textContent=w.message,r.$emit("error",w),p.abrupt("return");case 15:r.$emit("token",f),p.next=22;break;case 18:p.prev=18,p.t0=p.catch(0),console.error(p.t0),r.$emit("error",p.t0);case 22:return p.prev=22,r.$emit("loading",!1),p.finish(22);case 25:case"end":return p.stop()}},null,null,[[0,18,22,25]])});case 17:case"end":return t.stop()}},null,this)},methods:{submit:function(){this.$refs.submitButtonRef.click()},clear:function(){this.element.clear()},destroy:function(){this.element.destroy()},focus:function(){console.warn("This method will currently not work on iOS 13+ due to a system limitation."),this.element.focus()},unmount:function(){this.element.unmount()},update:function(e){this.element.update(e)},onChange:function(e){this.$emit("element-change",e)},onReady:function(e){this.$emit("element-ready",e)},onFocus:function(e){this.$emit("element-focus",e)},onBlur:function(e){this.$emit("element-blur",e)},onEscape:function(e){this.$emit("element-escape",e)},onClick:function(e){this.$emit("element-click",e)}}};function ye(e,n,r,t,s,u,l,f,w,p){typeof l!="boolean"&&(w=f,f=l,l=!1);const v=typeof r=="function"?r.options:r;let S;if(e&&e.render&&(v.render=e.render,v.staticRenderFns=e.staticRenderFns,v._compiled=!0,s&&(v.functional=!0)),t&&(v._scopeId=t),u?(S=function(y){(y=y||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||typeof __VUE_SSR_CONTEXT__>"u"||(y=__VUE_SSR_CONTEXT__),n&&n.call(this,w(y)),y&&y._registeredComponents&&y._registeredComponents.add(u)},v._ssrRegister=S):n&&(S=l?function(y){n.call(this,p(y,this.$root.$options.shadowRoot))}:function(y){n.call(this,f(y))}),S)if(v.functional){const y=v.render;v.render=function(B,k){return S.call(k),y(B,k)}}else{const y=v.beforeCreate;v.beforeCreate=y?[].concat(y,S):[S]}return r}const vn=typeof navigator<"u"&&/msie [6-9]\\b/.test(navigator.userAgent.toLowerCase());function ge(e){return(n,r)=>bn(n,r)}let oe;const ue={};function bn(e,n){const r=vn?n.media||"default":e,t=ue[r]||(ue[r]={ids:new Set,styles:[]});if(!t.ids.has(e)){t.ids.add(e);let s=n.source;if(n.map&&(s+=`
/*# sourceURL=`+n.map.sources[0]+" */",s+=`
/*# sourceMappingURL=data:application/json;base64,`+btoa(unescape(encodeURIComponent(JSON.stringify(n.map))))+" */"),t.element||(t.element=document.createElement("style"),t.element.type="text/css",n.media&&t.element.setAttribute("media",n.media),oe===void 0&&(oe=document.head||document.getElementsByTagName("head")[0]),oe.appendChild(t.element)),"styleSheet"in t.element)t.styles.push(s),t.element.styleSheet.cssText=t.styles.filter(Boolean).join(`
`);else{const u=t.ids.size-1,l=document.createTextNode(s),f=t.element.childNodes;f[u]&&t.element.removeChild(f[u]),f.length?t.element.insertBefore(l,f[u]):t.element.appendChild(l)}}}const En=gn;var ve=function(){var e=this.$createElement,n=this._self._c||e;return n("div",[n("form",{attrs:{id:"stripe-element-form"}},[n("div",{attrs:{id:"stripe-element-mount-point"}}),this._v(" "),this._t("stripe-element-errors",[n("div",{attrs:{id:"stripe-element-errors",role:"alert"}})]),this._v(" "),n("button",{ref:"submitButtonRef",staticClass:"hide",attrs:{type:"submit"}})],2)])},wn=[];ve._withStripped=!0;const Sn=function(e){e&&e("data-v-4dd8360e_0",{source:`





















































































































































































































































/**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
.StripeElement[data-v-4dd8360e] {
  box-sizing: border-box;

  height: 40px;

  padding: 10px 12px;

  border: 1px solid transparent;
  border-radius: 4px;
  background-color: white;

  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}
.StripeElement--focus[data-v-4dd8360e] {
  box-shadow: 0 1px 3px 0 #cfd7df;
}
.StripeElement--invalid[data-v-4dd8360e] {
  border-color: #fa755a;
}
.StripeElement--webkit-autofill[data-v-4dd8360e] {
  background-color: #fefde5 !important;
}
.hide[data-v-4dd8360e] {
  display: none;
}
`,map:{version:3,sources:["/home/runner/work/vue-stripe/vue-stripe/src/elements/Card.vue"],names:[],mappings:";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAsPA;;;EAGA;AACA;EACA,sBAAA;;EAEA,YAAA;;EAEA,kBAAA;;EAEA,6BAAA;EACA,kBAAA;EACA,uBAAA;;EAEA,+BAAA;EACA,yCAAA;EACA,iCAAA;AACA;AAEA;EACA,+BAAA;AACA;AAEA;EACA,qBAAA;AACA;AAEA;EACA,oCAAA;AACA;AAEA;EACA,aAAA;AACA",file:"Card.vue",sourcesContent:[`<template>
  <div>
    <form id="stripe-element-form">
      <div id="stripe-element-mount-point" />
      <slot name="stripe-element-errors">
        <div
          id="stripe-element-errors"
          role="alert"
        />
      </slot>
      <button
        ref="submitButtonRef"
        type="submit"
        class="hide"
      />
    </form>
  </div>
</template>

<script>
import { loadStripe } from '@stripe/stripe-js/dist/pure.esm.js';
// import { isSecureHost } from '../utils';
import {
  DEFAULT_ELEMENT_STYLE,
  STRIPE_PARTNER_DETAILS,
  // INSECURE_HOST_ERROR_MESSAGE,
} from '../constants';
const ELEMENT_TYPE = 'card';
export default {
  props: {
    pk: {
      type: String,
      required: true,
    },
    testMode: {
      type: Boolean,
      default: false,
    },
    stripeAccount: {
      type: String,
      default: undefined,
    },
    apiVersion: {
      type: String,
      default: undefined,
    },
    locale: {
      type: String,
      default: 'auto',
    },
    elementsOptions: {
      type: Object,
      default: () => ({}),
    },
    tokenData: {
      type: Object,
      default: () => ({}),
    },
    disableAdvancedFraudDetection: {
      type: Boolean,
    },
    // element specific options
    classes: {
      type: Object,
      default: () => ({}),
    },
    elementStyle: {
      type: Object,
      default: () => (DEFAULT_ELEMENT_STYLE),
    },
    value: {
      type: String,
      default: undefined,
    },
    hidePostalCode: Boolean,
    iconStyle: {
      type: String,
      default: 'default',
      validator: value => ['solid', 'default'].includes(value),
    },
    hideIcon: Boolean,
    disabled: Boolean,
  },
  data () {
    return {
      loading: false,
      stripe: null,
      elements: null,
      element: null,
      card: null,
    };
  },
  computed: {
    form () {
      return document.getElementById('stripe-element-form');
    },
  },
  async mounted () {
    // FIXME: temporarily remove to avoid problems with remote non-production deployments
    // if (!isSecureHost(this.testMode)) {
    //   document.getElementById('stripe-element-mount-point').innerHTML = \`<p style="color: red">\${INSECURE_HOST_ERROR_MESSAGE}</p>\`;
    //   return;
    // }

    if (this.disableAdvancedFraudDetection) loadStripe.setLoadParameters({ advancedFraudSignals: false });

    const stripeOptions = {
      stripeAccount: this.stripeAccount,
      apiVersion: this.apiVersion,
      locale: this.locale,
    };
    const createOptions = {
      classes: this.classes,
      style: this.elementStyle,
      value: this.value,
      hidePostalCode: this.hidePostalCode,
      iconStyle: this.iconStyle,
      hideIcon: this.hideIcon,
      disabled: this.disabled,
    };

    this.stripe = await loadStripe(this.pk, stripeOptions);
    this.stripe.registerAppInfo(STRIPE_PARTNER_DETAILS);
    this.elements = this.stripe.elements(this.elementsOptions);
    this.element = this.elements.create(ELEMENT_TYPE, createOptions);
    this.element.mount('#stripe-element-mount-point');

    this.element.on('change', (event) => {
      var displayError = document.getElementById('stripe-element-errors');
      if (event.error) {
        displayError.textContent = event.error.message;
      } else {
        displayError.textContent = '';
      }
      this.onChange(event);
    });

    this.element.on('blur', this.onBlur);
    this.element.on('click', this.onClick);
    this.element.on('escape', this.onEscape);
    this.element.on('focus', this.onFocus);
    this.element.on('ready', this.onReady);

    this.form.addEventListener('submit', async (event) => {
      try {
        this.$emit('loading', true);
        event.preventDefault();
        const data = {
          ...this.element,
        };
        if (this.amount) data.amount = this.amount;
        const { token, error } = await this.stripe.createToken(data, this.tokenData);
        if (error) {
          const errorElement = document.getElementById('stripe-element-errors');
          errorElement.textContent = error.message;
          this.$emit('error', error);
          return;
        }
        this.$emit('token', token);
      } catch (error) {
        console.error(error);
        this.$emit('error', error);
      } finally {
        this.$emit('loading', false);
      }
    });
  },
  methods: {
    /**
     * Triggers the submission of the form
     * @return {void}
     */
    submit () {
      this.$refs.submitButtonRef.click();
    },
    /**
     * Clears the element
     * @return {void}
     */
    clear () {
      this.element.clear();
    },
    /**
     * Destroys the element
     * @return {void}
     */
    destroy () {
      this.element.destroy();
    },
    /**
     * Focuses on the element
     * @return {void}
     */
    focus () {
      console.warn('This method will currently not work on iOS 13+ due to a system limitation.');
      this.element.focus();
    },
    /**
     * Unmounts the element
     * @return {void}
     */
    unmount () {
      this.element.unmount();
    },
    /**
     * Updates the element
     * @param {string} opts.classes.base The base class applied to the container. Defaults to StripeElement.
     * @param {string} opts.classes.complete The class name to apply when the Element is complete. Defaults to StripeElement--complete.
     * @param {string} opts.classes.empty The class name to apply when the Element is empty. Defaults to StripeElement--empty.
     * @param {string} opts.classes.focus The class name to apply when the Element is focused. Defaults to StripeElement--focus.
     * @param {string} opts.classes.invalid The class name to apply when the Element is invalid. Defaults to StripeElement--invalid.
     * @param {string} opts.classes.webkitAutoFill The class name to apply when the Element has its value autofilled by the browser (only on Chrome and Safari). Defaults to StripeElement--webkit-autofill.
     * @param {Object} opts.style Customize the appearance of this element using CSS properties passed in a Style object.
     * @param {string} opts.value A pre-filled set of values to include in the input (e.g., {postalCode: '94110'}). Note that sensitive card information (card number, CVC, and expiration date) cannot be pre-filled
     * @param {boolean} opts.hidePostalCode Hide the postal code field. Default is false. If you are already collecting a full billing address or postal code elsewhere, set this to true.
     * @param {string} opts.iconStyle Appearance of the icon in the Element. Either solid or default.
     * @param {boolean} opts.hideIcon Hides the icon in the Element. Default is false.
     * @param {boolean} opts.disabled Applies a disabled state to the Element such that user input is not accepted. Default is false.
     */
    update (opts) {
      this.element.update(opts);
    },
    // events
    onChange (e) {
      this.$emit('element-change', e);
    },
    onReady (e) {
      this.$emit('element-ready', e);
    },
    onFocus (e) {
      this.$emit('element-focus', e);
    },
    onBlur (e) {
      this.$emit('element-blur', e);
    },
    onEscape (e) {
      this.$emit('element-escape', e);
    },
    onClick (e) {
      this.$emit('element-click', e);
    },
  },
};
<\/script>

<style scoped>
/**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
.StripeElement {
  box-sizing: border-box;

  height: 40px;

  padding: 10px 12px;

  border: 1px solid transparent;
  border-radius: 4px;
  background-color: white;

  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}

.StripeElement--focus {
  box-shadow: 0 1px 3px 0 #cfd7df;
}

.StripeElement--invalid {
  border-color: #fa755a;
}

.StripeElement--webkit-autofill {
  background-color: #fefde5 !important;
}

.hide {
  display: none;
}
</style>
`]},media:void 0})},_n="data-v-4dd8360e",An=ye({render:ve,staticRenderFns:wn},Sn,En,_n,!1,void 0,!1,ge,void 0,void 0);var Cn="payment",xn={props:{pk:{type:String,required:!0},testMode:{type:Boolean,default:!1},elementsOptions:{type:Object,required:!0,default:function(){return{}}},confirmParams:{type:Object,required:!0,default:function(){return{}}},redirect:{type:String,default:"always"},createOptions:{type:Object,default:function(){return{}}},stripeAccount:{type:String,default:void 0},apiVersion:{type:String,default:void 0},locale:{type:String,default:"auto"},disableAdvancedFraudDetection:{type:Boolean}},data:function(){return{loading:!1,stripe:null,elements:null,element:null}},computed:{form:function(){return document.getElementById("stripe-payment-element-form")}},mounted:function(){var e,n=this;return C.async(function(r){for(;;)switch(r.prev=r.next){case 0:return this.disableAdvancedFraudDetection&&R.setLoadParameters({advancedFraudSignals:!1}),e={stripeAccount:this.stripeAccount,apiVersion:this.apiVersion,locale:this.locale},r.next=4,C.awrap(R(this.pk,e));case 4:this.stripe=r.sent,this.stripe.registerAppInfo(Y),this.elements=this.stripe.elements(this.elementsOptions),this.element=this.elements.create(Cn,this.createOptions),this.element.mount("#stripe-payment-element-mount-point"),this.element.on("change",function(t){var s=document.getElementById("stripe-payment-element-errors");t.error?s.textContent=t.error.message:s.textContent="",n.onChange(t)}),this.element.on("blur",this.onBlur),this.element.on("click",this.onClick),this.element.on("escape",this.onEscape),this.element.on("focus",this.onFocus),this.element.on("ready",this.onReady),this.form.addEventListener("submit",function(t){var s,u;return C.async(function(l){for(;;)switch(l.prev=l.next){case 0:return l.prev=0,n.$emit("loading",!0),t.preventDefault(),l.next=5,C.awrap(n.stripe.confirmPayment({elements:n.elements,confirmParams:n.confirmParams,redirect:n.redirect}));case 5:if(s=l.sent,!(u=s.error)){l.next=12;break}return document.getElementById("stripe-payment-element-errors").textContent=u.message,n.$emit("error",u),l.abrupt("return");case 12:l.next=18;break;case 14:l.prev=14,l.t0=l.catch(0),console.error(l.t0),n.$emit("error",l.t0);case 18:return l.prev=18,n.$emit("loading",!1),l.finish(18);case 21:case"end":return l.stop()}},null,null,[[0,14,18,21]])});case 16:case"end":return r.stop()}},null,this)},methods:{submit:function(){this.$refs.submitButtonRef.click()},clear:function(){this.element.clear()},destroy:function(){this.element.destroy()},focus:function(){console.warn("This method will currently not work on iOS 13+ due to a system limitation."),this.element.focus()},collapse:function(){this.element.collapse()},getElement:function(){this.element.getElement()},unmount:function(){this.element.unmount()},update:function(e){this.element.update(e)},onChange:function(e){this.$emit("element-change",e)},onReady:function(e){this.$emit("element-ready",e)},onFocus:function(e){this.$emit("element-focus",e)},onBlur:function(e){this.$emit("element-blur",e)},onEscape:function(e){this.$emit("element-escape",e)},onClick:function(e){this.$emit("element-click",e)}}};const kn=xn;var be=function(){var e=this.$createElement,n=this._self._c||e;return n("div",[n("form",{attrs:{id:"stripe-payment-element-form"}},[n("div",{attrs:{id:"stripe-payment-element-mount-point"}}),this._v(" "),this._t("stripe-payment-element-errors",[n("div",{attrs:{id:"stripe-payment-element-errors",role:"alert"}})]),this._v(" "),n("button",{ref:"submitButtonRef",staticClass:"hide",attrs:{type:"submit"}})],2)])},Pn=[];be._withStripped=!0;const On=function(e){e&&e("data-v-3329b3f8_0",{source:`


































































































































































































































































/**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
.hide[data-v-3329b3f8] {
  display: none;
}
`,map:{version:3,sources:["/home/runner/work/vue-stripe/vue-stripe/src/elements/Payment.vue"],names:[],mappings:";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAmQA;;;EAGA;AACA;EACA,aAAA;AACA",file:"Payment.vue",sourcesContent:[`<template>
  <div>
    <form id="stripe-payment-element-form">
      <div id="stripe-payment-element-mount-point" />
      <slot name="stripe-payment-element-errors">
        <div
          id="stripe-payment-element-errors"
          role="alert"
        />
      </slot>
      <button
        ref="submitButtonRef"
        type="submit"
        class="hide"
      />
    </form>
  </div>
</template>

<script>
import { loadStripe } from '@stripe/stripe-js/dist/pure.esm.js';
// import { isSecureHost } from '../utils';
import {
  STRIPE_PARTNER_DETAILS,
  // INSECURE_HOST_ERROR_MESSAGE,
} from '../constants';
const ELEMENT_TYPE = 'payment';
export default {
  props: {
    pk: {
      type: String,
      required: true,
    },
    testMode: {
      type: Boolean,
      default: false,
    },
    elementsOptions: {
      type: Object,
      required: true,
      default: () => ({}),
    },
    confirmParams: {
      type: Object,
      required: true,
      default: () => ({}),
    },
    redirect: {
      type: String,
      default: 'always',
    },
    createOptions: {
      type: Object,
      default: () => ({}),
    },
    stripeAccount: {
      type: String,
      default: undefined,
    },
    apiVersion: {
      type: String,
      default: undefined,
    },
    locale: {
      type: String,
      default: 'auto',
    },
    disableAdvancedFraudDetection: {
      type: Boolean,
    },
  },
  data () {
    return {
      loading: false,
      stripe: null,
      elements: null,
      element: null,
    };
  },
  computed: {
    form () {
      return document.getElementById('stripe-payment-element-form');
    },
  },
  async mounted () {
    // FIXME: temporarily remove to avoid problems with remote non-production deployments
    // if (!isSecureHost(this.testMode)) {
    //   document.getElementById(
    //     'stripe-payment-element-mount-point',
    //   ).innerHTML = \`<p style="color: red">\${INSECURE_HOST_ERROR_MESSAGE}</p>\`;
    //   return;
    // }

    if (this.disableAdvancedFraudDetection) {
      loadStripe.setLoadParameters({ advancedFraudSignals: false });
    }

    const stripeOptions = {
      stripeAccount: this.stripeAccount,
      apiVersion: this.apiVersion,
      locale: this.locale,
    };

    this.stripe = await loadStripe(this.pk, stripeOptions);
    this.stripe.registerAppInfo(STRIPE_PARTNER_DETAILS);

    this.elements = this.stripe.elements(this.elementsOptions);
    this.element = this.elements.create(ELEMENT_TYPE, this.createOptions);
    this.element.mount('#stripe-payment-element-mount-point');

    this.element.on('change', event => {
      var displayError = document.getElementById(
        'stripe-payment-element-errors',
      );
      if (event.error) {
        displayError.textContent = event.error.message;
      } else {
        displayError.textContent = '';
      }
      this.onChange(event);
    });

    this.element.on('blur', this.onBlur);
    this.element.on('click', this.onClick);
    this.element.on('escape', this.onEscape);
    this.element.on('focus', this.onFocus);
    this.element.on('ready', this.onReady);

    this.form.addEventListener('submit', async event => {
      try {
        this.$emit('loading', true);
        event.preventDefault();
        const { error } = await this.stripe.confirmPayment({
          elements: this.elements,
          confirmParams: this.confirmParams,
          redirect: this.redirect,
        });
        if (error) {
          const errorElement = document.getElementById(
            'stripe-payment-element-errors',
          );
          errorElement.textContent = error.message;
          this.$emit('error', error);
          return;
        }
      } catch (error) {
        console.error(error);
        this.$emit('error', error);
      } finally {
        this.$emit('loading', false);
      }
    });
  },
  methods: {
    /**
     * Triggers the submission of the form
     * @return {void}
     */
    submit () {
      this.$refs.submitButtonRef.click();
    },
    /**
     * Clears the element
     * @return {void}
     */
    clear () {
      this.element.clear();
    },
    /**
     * Destroys the element
     * @return {void}
     */
    destroy () {
      this.element.destroy();
    },
    /**
     * Focuses on the element
     * @return {void}
     */
    focus () {
      console.warn(
        'This method will currently not work on iOS 13+ due to a system limitation.',
      );
      this.element.focus();
    },
    /**
     * Collapses the Payment Element into a row of payment method tabs
     * @return {void}
     */
    collapse () {
      this.element.collapse();
    },
    /**
     * Retrieves a previously created element
     */
    getElement () {
      this.element.getElement();
    },
    /**
     * Unmounts the element
     * @return {void}
     */
    unmount () {
      this.element.unmount();
    },
    /**
     * Updates the element. See official docs for more detail: https://site-admin.stripe.com/docs/js/elements_object/update_payment_element
     * @param {string} opts.business.name  Information about your business that will be displayed in the Payment Element. This information will be retrieved from the Stripe account if not provided.
     * @param {array} opts.paymentMethodOrder Sets order in which payment methods are displayed. Otherwise payment methods are ordered dynamically to optimize for conversion.
     * @param {string | Object} opts.fields.billingDetails The Payment Element automatically creates input fields to collect required billing information for some payment methods like SEPA debit. Specify 'never' to avoid collecting billing details in the Payment Element if you're collecting them outside of the Payment Element.
     * @param {string} opts.fields.billingDetails.name Specify 'never' to avoid collecting a name as part of the billing details in the Payment Element.
     * @param {string} opts.fields.billingDetails.email Specify 'never' to avoid collecting an email address as part of the billing details in the Payment Element.
     * @param {string} opts.fields.billingDetails.phone Specify 'never' to avoid collecting a phone number as part of the billing details in the Payment Element.
     * @param {string | Object} opts.fields.billingDetails.address Specify 'never' to avoid collecting an address as part of the billing details in the Payment Element.
     * @param {string} opts.fields.billingDetails.address.line1 Specify 'never' to avoid collecting an address line1 as part of the billing details in the Payment Element.
     * @param {string} opts.fields.billingDetails.address.line2 Specify 'never' to avoid collecting an address line2 as part of the billing details in the Payment Element.
     * @param {string} opts.fields.billingDetails.address.city Specify 'never' to avoid collecting an address city as part of the billing details in the Payment Element.
     * @param {string} opts.fields.billingDetails.address.state Specify 'never' to avoid collecting an address state as part of the billing details in the Payment Element.
     * @param {string} opts.fields.billingDetails.address.country Specify 'never' to avoid collecting an address country as part of the billing details in the Payment Element.
     * @param {string} opts.fields.billingDetails.address.postalCode Specify 'never' to avoid collecting an address postal code as part of the billing details in the Payment Element.
     * @param {string} opts.fields.terms The Payment Element automatically displays mandates or other legal agreements when required by the payment method, like SEPA debit. Specify 'never' to never show legal agreements.
     * @param {string} opts.fields.terms.auBecsDebit Specify 'never' to never show legal agreements for the BECS Debit payment method.
     * @param {string} opts.fields.terms.bancontact Specify 'never' to never show legal agreements for the Bancontact payment method.
     * @param {string} opts.fields.terms.card Specify 'never' to never show legal agreements for the credit card payment method.
     * @param {string} opts.fields.terms.ideal Specify 'never' to never show legal agreements for the iDEAL payment method.
     * @param {string} opts.fields.terms.sepaDebit Specify 'never' to never show legal agreements for the SEPA Debit payment method.
     * @param {string} opts.fields.terms.sofort Specify 'never' to never show legal agreements for the SOFORT payment method.
     * @param {string} opts.fields.terms.usBankAccount Specify 'never' to never show legal agreements for the US Bank accounts payment method.
     * @param {string} opts.wallets Specify 'never' to never show digital wallet payment methods like Apple Pay and Google Pay.
     * @param {string} opts.wallets.applePay Specify 'never' to never show the Apple Pay digital wallet payment method.
     * @param {string} opts.wallets.googlePay Specify 'never' to never show the Google Pay digital wallet payment method.
     */
    update (opts) {
      this.element.update(opts);
    },
    // events
    onChange (e) {
      this.$emit('element-change', e);
    },
    onReady (e) {
      this.$emit('element-ready', e);
    },
    onFocus (e) {
      this.$emit('element-focus', e);
    },
    onBlur (e) {
      this.$emit('element-blur', e);
    },
    onEscape (e) {
      this.$emit('element-escape', e);
    },
    onClick (e) {
      this.$emit('element-click', e);
    },
  },
};
<\/script>

<style scoped>
/**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
.hide {
  display: none;
}
</style>
`]},media:void 0})},Tn=ye({render:be,staticRenderFns:Pn},On,kn,"data-v-3329b3f8",!1,void 0,!1,ge,void 0,void 0);var In={install:function(e,n){var r,t,s,u,l,f,w;return C.async(function(p){for(;;)switch(p.prev=p.next){case 0:r=n.pk,t=n.stripeAccount,s=n.apiVersion,u=n.locale,l=n.elementsOptions,(f=window.Stripe(r,{stripeAccount:t,apiVersion:s,locale:u})).registerAppInfo(Y),w=f.elements(l),e.prototype.$stripe=f,e.prototype.$stripeElements=w;case 6:case"end":return p.stop()}})}};q.StripeCheckout=pn,de=q.StripeElementCard=An,q.StripeElementPayment=Tn,q.StripeElementsPlugin=In,q.StripePlugin=Ze;const jn={remember:"form",components:{CheckboxInput:_e,LoadingButton:Ce,TextInput:Se,TextareaInput:Ae,StripeElementCard:de},props:{modal:Boolean,c:Object,icustomers:Array,amount:Number,oId:{default:!1}},data(){return{loading:!1,sending:!1,form:{date:null,reference:null,amount:null,gateway:null,received:null,order_id:null,customer_id:null,token:null,token_id:null,description:null},paid:0,errors:{},error:null,gateways:[],customers:[],message:null,customer:null,publishableKey:null}},watch:{c:function(e){this.c&&(this.customers.push(this.c),this.form.customer_id=this.c.value,this.customer=this.c)},amount:function(e){this.amount&&(this.form.amount=this.$number(this.amount)+"")}},mounted(){this.customers=this.icustomers||[],this.oId?this.$axios.post(this.route("payments.order",this.oId)).then(({data:e})=>this.paid=e.reduce((n,r)=>n+parseFloat(r.amount),0)).then(()=>{this.amount&&(this.form.amount=this.$number(this.amount-this.paid)+"")}).catch(e=>console.log(e)):this.amount&&(this.form.amount=this.$number(this.amount)+""),this.form.date=new Date().toISOString().split("T")[0],this.gateways=this.$page.props.user.account.gateways.split(","),this.c&&(this.customers.push(this.c),this.form.customer_id=this.c.value,this.customer=this.c),this.$page.props.user.account.payu&&this.gateways.push("PayU"),this.$page.props.user.account.stripe&&(this.gateways.push("Stripe"),this.publishableKey=this.$page.props.user.account.stripe_key)},methods:{customerChanged(e){console.log(e),this.customer=e||null,this.form.customer_id=e?e.value:null},searchCustomers(e,n){e&&(n(!0),this.searchingCustomers(n,e,this))},searchingCustomers:we((e,n,r)=>{fetch(r.route("ajax.customers")+"?search="+escape(n)).then(t=>{t.json().then(s=>r.customers=s),e(!1)})},350),submit(){this.sending=!0,this.form.gateway=="Stripe"&&!this.form.token_id?this.$refs.stripeCard.submit():this.$axios.post(this.route("payments.store"),this.form).then(e=>{this.sending=!1,e.data.success&&(e.data.payu&&(window.location.href=this.route("payu.request",e.data.id)),this.modal?this.$emit("close"):(this.form={date:new Date,reference:null,amount:null,gateway:null,received:null,order_id:null,customer_id:null,token:null,token_id:null,description:null},this.customer=null))}).catch(e=>{this.sending=!1,this.form.token=null,this.form.token_id=null,this.errors=e.response.data.errors,this.$page.props.flash.error=e.response.data.message,this.$nextTick(()=>{document.getElementById("page-contents").scrollTop=0})})},tokenCreated(e){this.form.token=e,this.form.token_id=e.id,this.submit()}}},Ln={class:"ltr:text-left rtl:text-right"},Rn={key:0,class:"np flex justify-between items-center px-6 py-4 mb-4 bg-gray-100 border-b rounded-t"},Bn={class:"font-bold flex-1"},$n={class:"flex items-center"},Dn=g("svg",{class:"fill-current text-black",xmlns:"http://www.w3.org/2000/svg",width:"18",height:"18",viewBox:"0 0 18 18"},[g("path",{d:"M14.53 4.53l-1.06-1.06L9 7.94 4.53 3.47 3.47 4.53 7.94 9l-4.47 4.47 1.06 1.06L9 10.06l4.47 4.47 1.06-1.06L10.06 9z"})],-1),Fn=[Dn],Vn={class:"p-8 ltr:-mr-6 rtl:-ml-6 ltr:ml-0 rtl:mr-0 -mb-8 flex flex-wrap"},Nn={class:"ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2"},Un={class:"form-label",for:"gateway"},Mn={key:0,class:"form-error"},Gn={class:"ltr:pr-6 rtl:pl-6 pb-8 w-full"},qn={class:"form-label",for:"customer_id"},Hn={key:0,class:"form-error"},zn={class:"px-8 pb-8 ltr:-mr-6 rtl:-ml-6 ltr:ml-0 rtl:mr-0 -mb-8 flex flex-wrap"},Yn={key:0,class:"w-full"},Xn={for:"card-element"};function Kn(e,n,r,t,s,u){var y,B,k,T,b,$,I;const l=U("text-input"),f=U("v-select"),w=U("textarea-input"),p=U("stripe-element-card"),v=U("checkbox-input"),S=U("loading-button");return M(),z("div",{class:G(r.modal?"modal flex items-center w-full h-full":"")},[g("div",{class:G(r.modal?"bg-white w-full rounded shadow-lg max-w-2xl mx-auto my-auto animate zoomIn":"")},[g("div",Ln,[r.modal?(M(),z("div",Rn,[g("p",Bn,L(e.$t("add_x",{x:e.$tc("Payment")})),1),g("div",$n,[g("a",{class:"modal-close cursor-pointer z-50",onClick:n[0]||(n[0]=m=>e.$emit("close"))},Fn)])])):Q("",!0),g("div",{class:G(r.modal?"print":"")},[g("form",{onSubmit:n[9]||(n[9]=ke((...m)=>u.submit&&u.submit(...m),["prevent"])),autocomplete:"off"},[g("div",Vn,[O(l,{type:"date",label:e.$t("Date"),modelValue:s.form.date,"onUpdate:modelValue":n[1]||(n[1]=m=>s.form.date=m),pattern:"\\d{4}-\\d{2}-\\d{2}",errors:(y=s.errors)==null?void 0:y.date,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2"},null,8,["label","modelValue","errors"]),O(l,{label:e.$t("Reference"),modelValue:s.form.reference,"onUpdate:modelValue":n[2]||(n[2]=m=>s.form.reference=m),errors:(B=s.errors)==null?void 0:B.reference,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2"},null,8,["label","modelValue","errors"]),O(l,{step:"0.01",type:"number",label:e.$t("Amount"),modelValue:s.form.amount,"onUpdate:modelValue":n[3]||(n[3]=m=>s.form.amount=m),errors:(k=s.errors)==null?void 0:k.amount,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full lg:w-1/2"},null,8,["label","modelValue","errors"]),g("div",Nn,[g("label",Un,L(e.$t("Gateway")),1),O(f,{transition:"",clearable:!1,"input-id":"gateway",options:s.gateways,modelValue:s.form.gateway,"onUpdate:modelValue":n[4]||(n[4]=m=>s.form.gateway=m),dir:e.$user.account.direction,placeholder:e.$t("select_x",{x:e.$t("Gateway")}),class:G({error:s.errors.gateway&&s.errors.gateway.length})},null,8,["options","modelValue","dir","placeholder","class"]),(T=s.errors)!=null&&T.gateway?(M(),z("div",Mn,L(s.errors.gateway[0]),1)):Q("",!0)]),g("div",Gn,[g("label",qn,L(e.$tc("Customer")),1),O(f,{transition:"",modelValue:s.customer,"onUpdate:modelValue":n[5]||(n[5]=m=>s.customer=m),clearable:!1,options:s.customers,"input-id":"customer_id",onInput:u.customerChanged,onSearch:u.searchCustomers,dir:e.$user.account.direction,"onOption:selected":u.customerChanged,placeholder:e.$t("search_x",{x:e.$tc("Customer")}),class:G({error:((b=s.errors)==null?void 0:b.customer_id)&&s.errors.customer_id.length})},null,8,["modelValue","options","onInput","onSearch","dir","onOption:selected","placeholder","class"]),($=s.errors)!=null&&$.customer_id?(M(),z("div",Hn,L(s.errors.customer_id[0]),1)):Q("",!0)])]),g("div",zn,[O(w,{label:e.$t("Description"),modelValue:s.form.description,"onUpdate:modelValue":n[6]||(n[6]=m=>s.form.description=m),errors:(I=s.errors)==null?void 0:I.description,class:"ltr:pr-6 rtl:pl-6 pb-8 w-full"},null,8,["label","modelValue","errors"]),s.form.gateway=="Stripe"?(M(),z("div",Yn,[g("label",Xn,L(e.$t("Credit or debit card")),1),O(p,{amount:r.amount,ref:"stripeCard",pk:s.publishableKey,onToken:u.tokenCreated,onLoading:n[7]||(n[7]=m=>s.loading=m),class:"stripe-card w-full mt-2 mb-6 pr-6"},null,8,["amount","pk","onToken"])])):s.form.gateway!="PayU"?(M(),Pe(v,{key:1,class:"mb-8",id:"received",checked:s.form.received,"onUpdate:checked":n[8]||(n[8]=m=>s.form.received=m),label:e.$t("I am receiving this amount")},null,8,["checked","label"])):Q("",!0)]),g("div",{class:G([{"rounded-b":r.modal},"px-8 py-4 bg-gray-100 border-t border-gray-200 rounded-b-md flex justify-end items-center"])},[O(S,{loading:s.sending,class:"btn-gray",type:"submit"},{default:Oe(()=>[Te(L(e.$t("create_x",{x:e.$tc("Payment")})),1)]),_:1},8,["loading"])],2)],32)],2)])],2)],2)}const rt=xe(jn,[["render",Kn]]);export{rt as default};
