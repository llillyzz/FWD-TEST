pm.test("status code is 200", function () {
  pm.response.to.have.status(200);
});
pm.test("Content-Type is present", function () {
  pm.response.to.have.header("Content-Type");
});
pm.test("Response match word in body", function () {
  pm.expect(pm.response.text()).to.include('49.228.227.188');
})
pm.test("body content is correct ", function () {
  var jsonData = pm.response.json()
  pm.expect(jsonData.headers.Accept).to.equal('*/*');
  pm.expect(jsonData.url).to.equal('http://httpbin.org/post');

})
