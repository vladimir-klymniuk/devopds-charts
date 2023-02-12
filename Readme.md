# charts

AveLov Helm Cahrts

Add new context
gcloud container clusters get-credentials ${CLUSTER_NAME} --zone ${CLUSTER_ZONE} --project ${GCP_PROJECT_ID}

#Create Cluster Role Binding
kubectl create clusterrolebinding [cluster-role-binding-name] --clusterrole=cluster-admin --serviceaccount=[service-account-name]
