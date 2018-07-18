let M = require('materialize');

function createTenant() {
  const tenantName = document.querySelector('#tenant_name').value;
  console.log(tenantName);

  const request = new XMLHttpRequest();
  const formData = new FormData();
  formData.append('name', tenantName);
  request.open('POST', 'tenants', false);
  // request.send(formData);
  M.toast({html: 'I am a toast!'})
}
