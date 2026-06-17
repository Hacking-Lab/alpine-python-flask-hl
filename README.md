# Alpine Python Flask
## Introduction
This image provides a small Flask-based Hacking-Lab landing page. It is built on `hackinglab/alpine-base-hl` and uses the base image's s6-overlay v3 runtime to start the web service, cron, user setup, and dynamic flag deployment hooks.

## Usage
* xss landing page
* lightweight CTF web landing service
* base image for simple Flask challenges

## Document Root
* `/opt/app/`

## Runtime
* Flask application: `/opt/app/app.py`
* Static assets: `/opt/app/static/`
* Templates: `/opt/app/templates/`
* Container port: `8080`
* Python dependencies are installed from `requirements.txt` with pinned transitive versions in `constraints.txt`

## Smoke Test
Run the local build and runtime smoke test:

```bash
./smoke-test.sh
```

## s6 overlay framework
* version 3

## Purpose
Give cyber security specialists a `landing page` for controlled Hacking-Lab and CTF scenarios.

## UUID
This docker was created for the Hacking-Lab CTF framework. Thus, you will find dynamic flag deployment files and scripts. Ignore or override them in your own setup.
