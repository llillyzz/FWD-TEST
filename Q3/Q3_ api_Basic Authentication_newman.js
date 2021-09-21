pm.test("unauthorized status code is 401 ", function () {
  pm.response.to.have.status(401);
  pm.response.to.have.status('UNAUTHORIZED')
});
pm.test("test authen ", function () {
  pm.response.to.have.header("Connection");
});
pm.test("Sucess Authorize status code is 200 ", function () {
  pm.response.to.have.status(200);
  var jsonData = pm.response.json();
  pm.expect(jsonData.authenticated).to.equal(true);
  pm.expect(jsonData.user).to.equal("user");
});