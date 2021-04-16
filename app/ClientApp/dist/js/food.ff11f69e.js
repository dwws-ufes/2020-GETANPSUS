(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["food"],{"0798":function(t,e,i){"use strict";i("0c18");var s=i("10d2"),a=i("afdd"),o=i("9d26"),r=i("f2e7"),n=i("7560"),l=i("2b0e"),d=l["a"].extend({name:"transitionable",props:{mode:String,origin:String,transition:String}}),c=i("58df"),h=i("d9bd");e["a"]=Object(c["a"])(s["a"],r["a"],d).extend({name:"v-alert",props:{border:{type:String,validator(t){return["top","right","bottom","left"].includes(t)}},closeLabel:{type:String,default:"$vuetify.close"},coloredBorder:Boolean,dense:Boolean,dismissible:Boolean,closeIcon:{type:String,default:"$cancel"},icon:{default:"",type:[Boolean,String],validator(t){return"string"===typeof t||!1===t}},outlined:Boolean,prominent:Boolean,text:Boolean,type:{type:String,validator(t){return["info","error","success","warning"].includes(t)}},value:{type:Boolean,default:!0}},computed:{__cachedBorder(){if(!this.border)return null;let t={staticClass:"v-alert__border",class:{["v-alert__border--"+this.border]:!0}};return this.coloredBorder&&(t=this.setBackgroundColor(this.computedColor,t),t.class["v-alert__border--has-color"]=!0),this.$createElement("div",t)},__cachedDismissible(){if(!this.dismissible)return null;const t=this.iconColor;return this.$createElement(a["a"],{staticClass:"v-alert__dismissible",props:{color:t,icon:!0,small:!0},attrs:{"aria-label":this.$vuetify.lang.t(this.closeLabel)},on:{click:()=>this.isActive=!1}},[this.$createElement(o["a"],{props:{color:t}},this.closeIcon)])},__cachedIcon(){return this.computedIcon?this.$createElement(o["a"],{staticClass:"v-alert__icon",props:{color:this.iconColor}},this.computedIcon):null},classes(){const t={...s["a"].options.computed.classes.call(this),"v-alert--border":Boolean(this.border),"v-alert--dense":this.dense,"v-alert--outlined":this.outlined,"v-alert--prominent":this.prominent,"v-alert--text":this.text};return this.border&&(t["v-alert--border-"+this.border]=!0),t},computedColor(){return this.color||this.type},computedIcon(){return!1!==this.icon&&("string"===typeof this.icon&&this.icon?this.icon:!!["error","info","success","warning"].includes(this.type)&&"$"+this.type)},hasColoredIcon(){return this.hasText||Boolean(this.border)&&this.coloredBorder},hasText(){return this.text||this.outlined},iconColor(){return this.hasColoredIcon?this.computedColor:void 0},isDark(){return!(!this.type||this.coloredBorder||this.outlined)||n["a"].options.computed.isDark.call(this)}},created(){this.$attrs.hasOwnProperty("outline")&&Object(h["a"])("outline","outlined",this)},methods:{genWrapper(){const t=[this.$slots.prepend||this.__cachedIcon,this.genContent(),this.__cachedBorder,this.$slots.append,this.$scopedSlots.close?this.$scopedSlots.close({toggle:this.toggle}):this.__cachedDismissible],e={staticClass:"v-alert__wrapper"};return this.$createElement("div",e,t)},genContent(){return this.$createElement("div",{staticClass:"v-alert__content"},this.$slots.default)},genAlert(){let t={staticClass:"v-alert",attrs:{role:"alert"},on:this.listeners$,class:this.classes,style:this.styles,directives:[{name:"show",value:this.isActive}]};if(!this.coloredBorder){const e=this.hasText?this.setTextColor:this.setBackgroundColor;t=e(this.computedColor,t)}return this.$createElement("div",t,[this.genWrapper()])},toggle(){this.isActive=!this.isActive}},render(t){const e=this.genAlert();return this.transition?t("transition",{props:{name:this.transition,origin:this.origin,mode:this.mode}},[e]):e}})},"0c18":function(t,e,i){},"1f09":function(t,e,i){},3129:function(t,e,i){"use strict";i("1f09");var s=i("c995"),a=i("24b2"),o=i("7560"),r=i("58df"),n=i("80d2");e["a"]=Object(r["a"])(s["a"],a["a"],o["a"]).extend({name:"VSkeletonLoader",props:{boilerplate:Boolean,loading:Boolean,tile:Boolean,transition:String,type:String,types:{type:Object,default:()=>({})}},computed:{attrs(){return this.isLoading?this.boilerplate?{}:{"aria-busy":!0,"aria-live":"polite",role:"alert",...this.$attrs}:this.$attrs},classes(){return{"v-skeleton-loader--boilerplate":this.boilerplate,"v-skeleton-loader--is-loading":this.isLoading,"v-skeleton-loader--tile":this.tile,...this.themeClasses,...this.elevationClasses}},isLoading(){return!("default"in this.$scopedSlots)||this.loading},rootTypes(){return{actions:"button@2",article:"heading, paragraph",avatar:"avatar",button:"button",card:"image, card-heading","card-avatar":"image, list-item-avatar","card-heading":"heading",chip:"chip","date-picker":"list-item, card-heading, divider, date-picker-options, date-picker-days, actions","date-picker-options":"text, avatar@2","date-picker-days":"avatar@28",heading:"heading",image:"image","list-item":"text","list-item-avatar":"avatar, text","list-item-two-line":"sentences","list-item-avatar-two-line":"avatar, sentences","list-item-three-line":"paragraph","list-item-avatar-three-line":"avatar, paragraph",paragraph:"text@3",sentences:"text@2",table:"table-heading, table-thead, table-tbody, table-tfoot","table-heading":"heading, text","table-thead":"heading@6","table-tbody":"table-row-divider@6","table-row-divider":"table-row, divider","table-row":"table-cell@6","table-cell":"text","table-tfoot":"text@2, avatar@2",text:"text",...this.types}}},methods:{genBone(t,e){return this.$createElement("div",{staticClass:`v-skeleton-loader__${t} v-skeleton-loader__bone`},e)},genBones(t){const[e,i]=t.split("@"),s=()=>this.genStructure(e);return Array.from({length:i}).map(s)},genStructure(t){let e=[];t=t||this.type||"";const i=this.rootTypes[t]||"";if(t===i);else{if(t.indexOf(",")>-1)return this.mapBones(t);if(t.indexOf("@")>-1)return this.genBones(t);i.indexOf(",")>-1?e=this.mapBones(i):i.indexOf("@")>-1?e=this.genBones(i):i&&e.push(this.genStructure(i))}return[this.genBone(t,e)]},genSkeleton(){const t=[];return this.isLoading?t.push(this.genStructure()):t.push(Object(n["r"])(this)),this.transition?this.$createElement("transition",{props:{name:this.transition},on:{afterEnter:this.resetStyles,beforeEnter:this.onBeforeEnter,beforeLeave:this.onBeforeLeave,leaveCancelled:this.resetStyles}},t):t},mapBones(t){return t.replace(/\s/g,"").split(",").map(this.genStructure)},onBeforeEnter(t){this.resetStyles(t),this.isLoading&&(t._initialStyle={display:t.style.display,transition:t.style.transition},t.style.setProperty("transition","none","important"))},onBeforeLeave(t){t.style.setProperty("display","none","important")},resetStyles(t){t._initialStyle&&(t.style.display=t._initialStyle.display||"",t.style.transition=t._initialStyle.transition,delete t._initialStyle)}},render(t){return t("div",{staticClass:"v-skeleton-loader",attrs:this.attrs,on:this.$listeners,class:this.classes,style:this.isLoading?this.measurableStyles:void 0},[this.genSkeleton()])}})},b733:function(t,e,i){"use strict";i.r(e);var s=function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{staticClass:"list"},[t.isTable?[i("div",{staticClass:"list"},[i("div",[i("v-col",{staticClass:"pb-0"},[i("h1",[t._v("Foods")])]),i("v-container",[t.loadSkeleton?i("v-sheet",{staticClass:"pa-3",attrs:{color:"grey lighten-4"}},[i("v-container",[i("v-row",[i("v-skeleton-loader",{staticClass:"mx-auto w-100",attrs:{type:"image"}})],1)],1)],1):0==t.foodList.length?i("v-alert",{attrs:{prominent:"",dense:"",text:"",type:"warning"}},[i("v-card-text",[t._v(" No food found. ")])],1):i("v-row",t._l(t.foodList,(function(e){return i("v-col",{key:e.name,attrs:{cols:"12",xs:"12",sm:"6",lg:"4"}},[i("router-link",{staticClass:"text-decoration-none title-link",attrs:{to:{name:"DetailsFood",params:{id:e.id}}}},[i("v-card",[i("v-card-title",{staticClass:"primary"},[t._v(t._s(e.name))]),i("div",{staticClass:"my-2"},[i("v-container",[e.nutrition_facts?i("v-row",[i("v-col",[i("b",[t._v("Serving Size: ")]),t._v(t._s(e.nutrition_facts.serving_size)+t._s(t.getMeasureName(e.nutrition_facts.serving_size_unit))+" ")])],1):i("v-row",[i("v-col",[t._v(" - ")])],1)],1)],1)],1)],1)],1)})),1)],1)],1)])]:[i("h1",[t._v("Foods")]),i("v-btn",{attrs:{elevation:"2",to:{name:"CreateFood"},color:"primary",dark:""}},[t._v(" Create Food ")]),i("v-data-table",{staticClass:"elevation-1",attrs:{loading:t.load,"loading-text":"Loading... Please wait",headers:t.headers,items:t.foodList,"items-per-page":10},scopedSlots:t._u([{key:"item.name",fn:function(e){var s=e.item;return[i("v-row",[i("router-link",{staticClass:"text-decoration-none",attrs:{to:{name:"DetailsFood",params:{id:s.id}}}},[t._v(t._s(s.name))])],1)]}},{key:"item.serving_size",fn:function(e){var s=e.item;return[s.nutrition_facts?i("v-row",[t._v(" "+t._s(s.nutrition_facts.serving_size)+t._s(t.getMeasureName(s.nutrition_facts.serving_size_unit))+" ")]):i("v-row",[t._v(" - ")])]}},{key:"item.actions",fn:function(e){var s=e.item;return[i("v-row",[i("DetailsButton",{attrs:{id:s.id,name:"DetailsFood"}}),i("EditButton",{attrs:{id:s.id,name:"EditFood"}}),i("DeleteButton",{attrs:{id:s.id,name:s.name},on:{delete:function(e){return t.deleteFood(s.id)}}})],1)]}}],null,!1,2316610082)})]],2)},a=[],o=i("365c"),r=i("03e0"),n=i("1a5f"),l=i("b79f"),d={data(){return{load:!0,loadSkeleton:!0,headers:[{text:"Nº",align:"start",value:"number",class:"primary"},{text:"Name",value:"name",class:"primary"},{text:"Serving Size",value:"serving_size",class:"primary"},{text:"Actions",value:"actions",class:"primary"}],foodList:[]}},props:{isTable:Boolean},components:{EditButton:r["a"],DetailsButton:n["a"],DeleteButton:l["a"]},created:function(){this.getData(),setTimeout(()=>{this.loadSkeleton=!1},300)},methods:{getData:function(){Object(o["k"])().then(t=>{this.foodList=t.data,this.foodList.map((t,e)=>{t.number=e+1}),this.changeLoading()}).catch(t=>{console.log(t.response)})},getMeasureName:function(t){if(t>0)return this.$store.state.ingredients_measures.find(e=>e.id==t).name},deleteFood(t){this.changeLoading(),Object(o["g"])(t).then(e=>{console.log(e);let i=this.foodList.findIndex(e=>e.id===t);this.foodList.splice(i,1),this.changeLoading()}).catch(t=>{console.log(t.response)})},changeLoading(){this.load=!this.load}}},c=d,h=i("2877"),u=i("6544"),p=i.n(u),v=i("0798"),g=i("8336"),m=i("b0af"),f=i("99d9"),b=i("62ad"),_=i("a523"),y=i("8fea"),B=i("0fd9"),C=i("8dd9"),S=i("3129"),x=Object(h["a"])(c,s,a,!1,null,null,null);e["default"]=x.exports;p()(x,{VAlert:v["a"],VBtn:g["a"],VCard:m["a"],VCardText:f["b"],VCardTitle:f["c"],VCol:b["a"],VContainer:_["a"],VDataTable:y["a"],VRow:B["a"],VSheet:C["a"],VSkeletonLoader:S["a"]})}}]);
//# sourceMappingURL=food.ff11f69e.js.map