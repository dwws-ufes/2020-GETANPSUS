(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["detailsUser"],{2957:function(s,t,e){"use strict";var a=function(){var s=this,t=s.$createElement,e=s._self._c||t;return e("v-container",[e("v-card-title",[e("v-row",[e("v-col",{staticClass:"d-flex justify-center",attrs:{cols:"12"}},[e("v-avatar",{attrs:{color:"primary",size:"64"}},[e("span",{staticClass:"white--text headline"},[s._v(" "+s._s(new String(s.user.first_name).charAt(0).toUpperCase())+s._s(new String(s.user.last_name).charAt(0).toUpperCase())+" ")])])],1),e("v-col",{staticClass:"d-flex justify-center",attrs:{cols:"12"}},[e("span",[s._v(s._s(s.user.first_name)+" "+s._s(s.user.last_name))])]),e("v-card-text",{staticClass:"d-flex justify-center pt-0"},[s.user.roles?e("v-row",[s.user.roles.length>0?e("v-col",{staticClass:"d-flex justify-center pb-0",attrs:{cols:"12"}},[e("span",[e("b",[s._v(s._s(s.user.roles[0].name))])])]):e("v-col",{staticClass:"d-flex justify-center pb-0",attrs:{cols:"12"}},[e("span",[e("b",[s._v("User")])])]),e("v-col",{staticClass:"d-flex justify-center pb-0",attrs:{cols:"12"}},[e("span",[s._v(s._s(s.user.email))])]),null!=s.username?e("v-col",{staticClass:"d-flex justify-center",attrs:{cols:"12"}},[e("span",[s._v("Username: "+s._s(s.user.username))])]):s._e()],1):s._e()],1)],1)],1),e("v-card-actions",[s.user.id==s.getUserId&&null!=s.username?e("v-row",[e("v-col",{staticClass:"d-flex justify-flex-end"},[e("v-btn",{staticClass:"primary",attrs:{to:{name:"EditUser",params:{id:s.user.id}}}},[e("v-icon",{staticClass:"mr-2",attrs:{small:""}},[s._v("mdi-pencil")]),s._v(" Edit")],1)],1)],1):s._e()],1)],1)},r=[],n=e("2f62"),c={props:{user:{roles:[]},username:String},computed:{...Object(n["c"])(["getUserId"])}},l=c,i=e("2877"),o=e("6544"),u=e.n(o),d=e("8212"),v=e("8336"),f=e("99d9"),p=e("62ad"),m=e("a523"),_=e("132d"),C=e("0fd9"),h=Object(i["a"])(l,a,r,!1,null,null,null);t["a"]=h.exports;u()(h,{VAvatar:d["a"],VBtn:v["a"],VCardActions:f["a"],VCardText:f["b"],VCardTitle:f["c"],VCol:p["a"],VContainer:m["a"],VIcon:_["a"],VRow:C["a"]})},ce41:function(s,t,e){"use strict";e.r(t);var a=function(){var s=this,t=s.$createElement,e=s._self._c||t;return e("v-container",{staticClass:"details"},[e("v-row",{attrs:{justify:"center"}},[e("v-col",{attrs:{cols:"12",sm:"4","d-flex":"","justify-center":""}},[e("div",{staticClass:"d-flex"},[e("span",{staticClass:"back-btn",on:{click:function(t){return s.$router.go(-1)}}},[e("v-icon",[s._v("mdi-chevron-left")]),s._v(" Back")],1)]),e("v-card",[e("UserCard",{attrs:{user:this.user,username:this.user.username}})],1)],1)],1)],1)},r=[],n=e("365c"),c=e("2957"),l={name:"DetailsUser",data(){return{userId:this.$route.params.id,user:[]}},created:function(){this.getData()},methods:{getData:function(){Object(n["p"])(this.userId).then(s=>{this.user=s.data}).catch(s=>{console.log(s.response)})}},components:{UserCard:c["a"]}},i=l,o=e("2877"),u=e("6544"),d=e.n(u),v=e("b0af"),f=e("62ad"),p=e("a523"),m=e("132d"),_=e("0fd9"),C=Object(o["a"])(i,a,r,!1,null,null,null);t["default"]=C.exports;d()(C,{VCard:v["a"],VCol:f["a"],VContainer:p["a"],VIcon:m["a"],VRow:_["a"]})}}]);
//# sourceMappingURL=detailsUser.6f4c0a0c.js.map