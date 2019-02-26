FROM payara/server-full:latest
COPY target/javaee.war $DEPLOY_DIR