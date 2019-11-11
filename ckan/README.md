## Deployment

In the deployment process we have several steps to do: a) release a new querytool version; b) build an updated docker image; c) trigger the deployment process.

a) These are instructions on how to release a new 'ckanext-querytool' version:

Note that the extension is located here - https://github.com/ViderumGlobal/ckanext-querytool

1. Once all the changes are on the master branch, you need to update extension's version in the `setup.py`. I think having an example is very helpful so here is the one - https://github.com/ViderumGlobal/ckanext-querytool/commit/0e27500e306005f6c562a6f19f2aa31c0cadf07a
2. Next, you need to do git release, e.g., you can do it via github's UI here - https://github.com/ViderumGlobal/ckanext-querytool/releases

b) Once you have done it, next is to build a docker image using the latest querytool:

3. In this repo, update `Dockerfile` so that it uses the released version of the 'ckanext-querytool', e.g., see this commit as an example - https://gitlab.com/viderum/cloud-vitalstrategies-staging/commit/eacc9134038c38a830cfda657c80cf011dcd0288
4. Once you push it into master branch, it will start running the build script. Now you need to wait until it finishes successfully.

c) Next is to trigger a deployment process:

5. Go to Jenkins page where we manage all CKAN instances - https://cc-p-jenkins.ckan.io/ (if you don't have permissions to access the page, please, ask on the chat).
6. On the left hand side, press on 'Build with parameters' link.
7. You now should have a dropdown with list of CKAN instances. For this project, you need to select 'vitalstrategies-staging' and then press on submit button.
8. Now the deployment process is started. Normally it takes about 2 minutes to finish and then you can check the updated website.

