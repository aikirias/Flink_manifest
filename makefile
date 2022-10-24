non-ha:
	kubectl create -f ./non-ha/flink-configuration-configmap.yaml
	kubectl create -f ./non-ha/jobmanager-service.yaml
	kubectl create -f ./non-ha/jobmanager-session-deployment-non-ha.yaml
	kubectl create -f ./non-ha/taskmanager-session-deployment.yaml
stop-non-ha:
	kubectl delete -f ./non-ha/jobmanager-service.yaml 
	kubectl delete -f ./non-ha/flink-configuration-configmap.yaml 
	kubectl delete -f ./non-ha/taskmanager-session-deployment.yaml 
	kubectl delete -f ./non-ha/jobmanager-session-deployment-non-ha.yaml 
ha:
	kubectl create -f ./ha/flink-configuration-configmap.yaml
	kubectl create -f ./ha/jobmanager-service.yaml
	kubectl create -f ./ha/jobmanager-session-deployment-ha.yaml
	kubectl create -f ./ha/taskmanager-session-deployment.yaml
stop-ha:
	kubectl delete -f ./ha/jobmanager-service.yaml
	kubectl delete -f ./ha/flink-configuration-configmap.yaml
	kubectl delete -f ./ha/taskmanager-session-deployment.yaml
	kubectl delete -f ./ha/jobmanager-session-deployment-ha.yaml
