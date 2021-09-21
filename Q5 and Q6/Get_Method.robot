*** Settings ***
Library    Collections
Library    RequestsLibrary

Suite Setup    Create Session  jsonplaceholder  https://jsonplaceholder.typicode.com

*** Variables ***
${base_url}     https://jsonplaceholder.typicode.com/users

*** Test Cases ***
 Q1-Q2:Check status code and response return type
    Create Session    openurl     https://jsonplaceholder.typicode.com/users
    ${resp_url}=   GET On Session  openurl   /  expected_status=200
    Should Be Equal As Strings          ${resp_url.reason}  OK

Q3:Check Response Data type
    ${headers}=     Create Dictionary  Content-Type=application/json

Q4Check Response Data size
    ${bodys}=       Create Dictionary      Response Size=6.62KB
    ${body}
















