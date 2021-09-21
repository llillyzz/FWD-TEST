*** Settings ***
Library    Collections
Library    RequestsLibrary

Suite Setup    Create Session  jsonplaceholder  https://jsonplaceholder.typicode.com

*** Variables ***
${base_url}     https://jsonplaceholder.typicode.com/posts

*** Test Cases ***
Q1:Check status code
    Create Session    openurl     https://jsonplaceholder.typicode.com/posts
    ${resp_url}=   POST On Session  openurl   /  expected_status=201

Q2:Check response Header
    ${headers}=     Create Dictionary  Content-Type=application/json
    ${headers}=     Create Dictionary   Content-Length=15

Q3:Check response match with Request
    ${response}=    POST  https://jsonplaceholder.typicode.com/posts
    Should Be Equal As Strings     101  ${response.json()}[id]












