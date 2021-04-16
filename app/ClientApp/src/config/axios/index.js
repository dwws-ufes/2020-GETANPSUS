import axios from 'axios';

// --- Config

// Common
axios.defaults.headers.common['Content-Type'] = 'application/json';
axios.defaults.headers.common.Accept = 'application/json';
let token_type = localStorage.getItem('token_type');
let access_token = localStorage.getItem("access_token");
if (access_token != null && token_type != null) {
  createAuthAPI(token_type, access_token);
}

// --- Instances

// TasteUfes API

var authAPI;

const notAuthAPI = axios.create({
  baseURL: process.env.VUE_APP_API_URL,
});

function createAuthAPI(token_type, access_token) {
  authAPI = axios.create({
    baseURL: process.env.VUE_APP_API_URL,
    headers: {
      Authorization: token_type + ' ' + access_token
    }
  });
}

function deleteAuthAPI() {
  authAPI = null;
}

// --- Export
export {
  createAuthAPI,
  deleteAuthAPI,
  authAPI,
  notAuthAPI,
};