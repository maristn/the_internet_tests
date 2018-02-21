# Setup

- Clone the project
> git clone git@github.com:maristn/the_internet_tests.git && cd the_internet_tests

- Build the project
> docker-compose build

- Execute all the tests
> docker-compose run --rm gauge --verbose specs/the_internet_specs.md


# Tools

Tests are developed using
- Docker
- Ruby
- [Gauge](http://getgauge.io/index.html).
- Capybara
- Selenium
- Chromedriver


# Results

- Gauge reports:
> ~/the_internet_tests/reports/html-report/index.html

- Screenshot of results:
> ~/the_internet_tests/reports/images

- VNC Viewer:
It's possible to see the tests execution using VNC Viewer:
  * Download: https://www.realvnc.com/en/connect/download/viewer/
  * Enter VNC Server: 127.0.0.1:5900 (password: secret)
