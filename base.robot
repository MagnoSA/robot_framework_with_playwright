*** Settings ***
Library    Browser
Resource   ./tests/ui_tests/keywords/login_keyword.robot

*** Variables ***
${BROWSER}  chromium
${URL}      https://the-internet.herokuapp.com/login