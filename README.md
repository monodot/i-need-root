# i-need-root
A Dockerfile that needs to be root to do its stuff. For testing. 


    oc import-image fis-java-openshift --from=registry.access.redhat.com/jboss-fuse-6/fis-java-openshift --confirm

Import the build config into OpenShift by using:

    oc create -f bc.json
