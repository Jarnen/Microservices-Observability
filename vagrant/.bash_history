exit
kubectl get pods
kubectl get pods -a
kubectl get pods -A
clear
kubectl get pods -A
clear
cd ..
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/service_account.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/role.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/role_binding.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/operator.yaml
kubectl apply -f - <<EOF
apiVersion: jaegertracing.io/v1
kind: Jaeger
metadata:
  name: simplest
EOF

kubectl get pods
kubectl apply -f manifests/added/jaeger_instance.yaml
kubectl get pods
kubectl port-forward $(kubectl get pods -l=app="jaeger" -o name) 16686:16686
kubectl l get pods
kubectl get pods
kubectl apply -f manifests/app/backend.yaml
clear
kubectl get pods
clear
kubectl get pods
kubectl get svc
kubectl get pods
exit
kubectl get pods
kubectl get pods -A
clear
exit
kubectl get pods
kubectl get pods -A
kubectl get svc -A
kubectl get pods -A
kubectl get pods
clear
kubectl get pods
kubectl port-forward $(kubectl get pods -l=app="jaeger" -o name) 16686:16686
kubectl port-forward -nervice/hsimplestq-uery --address 0.0.0.0 16686:16686
clear
kubectl port-forward -n default service/simplest-query --address 0.0.0.0 16686:16686
kubectl get -n default backend-app -o jsonpath='{.items[0].metadata.name}'
kubectl get -n default backend -o jsonpath='{.items[0].metadata.name}'
kubectl get -n observability backend -o jsonpath='{.items[0].metadata.name}'
kubectl get svc -A
kubectl get servicemonitor
kubectl get servicemonitor -n monitoring
kubectl get servicemonitor prometheus-kube-prometheus-operator -n monitoring -o yaml
kubectl get crd
kubectl get crd prometheuses.monitoring.coreos.com -oyaml
clear
kubectl get crd prometheuses.monitoring.coreos.com -o yaml
clear
kubectl get crd prometheuses.monitoring.coreos.com -o yaml
clear
kubectl get crd -n monitoring
kubectl get crd prometheuses.monitoring.coreos.com -n monitoring -o yaml
kubectl get pods
kubectl get pods -n monitoring
exit
cd ..
kubectl apply -f manifests/app/frontend.yaml
kubectl get pods -A
kubectl get svc -A
clear
kubectl get svc -A
kubectl get pods -A
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
kubectl create namespace monitoring
kubectl get pods -A
kubectl get svc -A
kubectl get ns
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack --namespace monitoring --kubeconfig /etc/rancher/k3s/k3s.yaml
kubectl --namespace monitoring get pods -l "release=prometheus"
cldear
clear
kubectl --namespace monitoring get pods -l "release=prometheus"
kubectl get svc -A
kubectl get pods -A
kubectl get pod -n monitoring | grep grafana
kubectl get -n observability  ingress -o jsonpath='{.items[0].metadata.name}
'
kubectl get -n observability  ingress -o jsonpath='{.items[0].metadata.name}'
kubectl get -n default ingress -o jsonpath='{.items[0].metadata.name}'
kubectl get -n observability ingress -o jsonpath='{.items[0].spec.defaultBackend.service.port.number}'
kubectl get -n default ingress -o jsonpath='{.items[0].spec.defaultBackend.service.port.number}'
kubectl get pods
clear
kubectl get pods
clear
kubectl get pods
kubectl get svc
kubectl get svc -n productions
kubectl get svc -n production
kubectl describe pod mongodb-kubernetes-operator-586d794c64-mt8k7
kubectl get svc -A
kubectl get pods
kubectl get mdb mongodb-kubernetes-operator-586d794c64-mt8k7 -o yaml -w
kubectl get mdb mongodb-kubernetes-operator -o yaml -w
kubectl get pods
kubectl describe pod backend-app-59bb456865-kcrds
kubectl get svc
kubectl describe svc backend-app
kubectl describe svc frontend-service
curl backend-app.default.svc.cluster.local:8081
curl http://backend-app.default.svc.cluster.local:8081
kubectl describe svc backend-app
curl backend-app.default.svc.cluster.local:8081

kubectl config get-contexts | awk {'print $2'}
curl backend-app.default.svc.default:8081
curl backend-app.default.svc.cluster.local:8081
kubectl get -n default backend-app -o jsonpath='{.items[0].metadata.name}'
kubectl get -n default svc backend-app -o jsonpath='{.items[0].metadata.name}'
kubectl describe svc backend-app
curl backend-app.default.svc.local
nslookup backend-app
nslookup frontend-service
kubectl get svc backend-app
nslookup backend-app.default
nslookup backend-app.default.svc.cluster.local
nslookup backend-app.default.svc.cluster.local 10.0.2.3
nslookup backend-app
kubectl get svc backend-app.
nslookup backend-app.deafult
nslookup backend-app.default.svc.cluster.local
cat /etc/resolv.conf
nslookup kubernetes.default
vim /etc/resolv.conf
kubectl get pods -l app=backend-app
ps auxw | grep kube-proxy
iptables-save | grep backend-app
curl backend-app.default.svc.local
kubectl run -i --tty busybox --image=busybox -- sh
kubectl get pods
kubectl delete pod busybox
kubectl get pods
kubectl run -i --tty alpine --image=alpine --restart=Never
kubectl get pods
clear
kubectl get ns
kubectl port-forward -n monitoring service/prometheus-kube-prometheus-prometheus 9090
kubectl port-forward -n monitoring service/prometheus-kube-prometheus-prometheus 0.0.0.0 9090:9091
kubectl port-forward -n monitoring service/prometheus-kube-prometheus-prometheus  9090:9091
kubectl port-forward -n monitoring service/prometheus-kube-prometheus-prometheus  9091:9090
kubectl port-forward -n monitoring service/prometheus-kube-prometheus-prometheus  9090
kubectl --namespace monitoring port-forward svc/ prometheus-kube-prometheus-prometheus --address 0.0.0.0 9091:9090
kubectl port-forward -n monitoring svc/ prometheus-kube-prometheus-prometheus --address 0.0.0.0 9091:9090
kubectl port-forward -n monitoring svc/prometheus-kube-prometheus-prometheus --address 0.0.0.0 9091:9090
kubectl port-forward -n monitoring svc/prometheus-kube-prometheus-prometheus --address 0.0.0.0 909091:9090
kubectl port-forward -n monitoring svc/prometheus-kube-prometheus-prometheus --address 0.0.0.0 9091:9090
kubectl port-forward -n monitoring svc/prometheus-kube-prometheus-prometheus --address 0.0.0.0 9090:9090
cd ..
ls
kubectl apply -f manifests/app/backend.yaml
kubectl get pods
clear
kubectl get pods
kubectl port-forward $(kubectl get pods -l=app="do-visit-counter-frontend" -o name) 8000:8000
kubectl port-forward $(kubectl get pods -l=app="backend-app" -o name) 8081:8081
kubectl port-forward backend-app-6fcdc9ff56-lt5l4 8081:8081
kubectl logs backend-app-6fcdc9ff56-lt5l4
kubectl port-forward backend-app-6fcdc9ff56-lt5l4 --address 0.0.0. 8080:8080
kubectl port-forward backend-app-6fcdc9ff56-lt5l4 --address 0.0.0.0 8080:8080
kubectl logs backend-app-6fcdc9ff56-lt5l4
clear
kubectl logs backend-app-6fcdc9ff56-lt5l4
clear
vim manifests/app/backend.yaml 
kubectl apply -f manifests/app/backend.yaml 
kubectl get pods
kubectl port-forward backend-app-6fcdc9ff56-lt5l4 --address 0.0.0.0 8080:8080
kubectl port-forward backend-app-755bf6bb57-zzjqt --address 0.0.0.0 8080:8080
kubectl logs backend-app-755bf6bb57-zzjqt 
clear
kubectl logs backend-app-755bf6bb57-zzjqt 
clear
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/service_account.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/role.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/role_binding.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/operator.yaml
kubectl apply -f - <<EOF
apiVersion: jaegertracing.io/v1
kind: Jaeger
metadata:
  name: simplest
EOF

kubectl get pods
kubectl port-forward $(kubectl get pods -l=app="jaeger" -o name) 16686:16686
kubectl port-forward $(kubectl get pods -l=app="simplest" -o name) 16686:16686
kubectl port-forward $(kubectl get pods -l=app="backend-app" -o name) 8081:8081
kubectl get pods
kubectl get svc
kubectl port-forward -n default  service/simplest-query --address 0.0.0.0 16686:16686
kubectl
kubectl  logs backend-app-7b88c668f8-skmgq -c backend-app
kubectl  logs backend-app-7b88c668f8-skmgq -c jaeger-agent
kubectl port-forward -n default  service/backend-app --address 0.0.0.0 8080:8080
kubectl port-forward pods/backend-app-7b88c668f8-skmgq 8080:8080
kubectl  logs backend-app-7b88c668f8-skmgq -c backend-app
kubectl port-forward backend-app-7b88c668f8-skmgq --address 0.0.0.0 8080:8080
kubectl  logs backend-app-7b88c668f8-skmgq -c backend-app
vim manifests/app/backend.yaml
kubectl port-forward backend-app-7b88c668f8-skmgq --address 0.0.0.0 8080:8080
kubectl  logs backend-app-7b88c668f8-skmgq -c backend-app
clear
vim manifests/app/backend.yaml
kubectl apply -f manifests/app/backend.yaml
kubectl port-forward backend-app-7b88c668f8-skmgq --address 0.0.0.0 8080:8080
kubectl port-forward backend-app-59bb456865-htznb --address 0.0.0.0 8080:8080
kubectl get pods
kubectl port-forward frontend-app-5ccb7dfd57-c58g6 --address 0.0.0.0 8080:8080
kubectl get pods
kubectl port-forward frontend-app-5ccb7dfd57-c58g6 --address 0.0.0.0 8080:8080
ls
kubectl apply -f reference-app/manifests/mongo/
kubectl apply -f reference-app/manifests/mongo/mongodb-cr.yaml 
kubectl apply -f reference-app/manifests/mongo/mongodb-crds.yaml 
kubectl apply -f reference-app/manifests/mongo/mongodb-enterprise.yaml 
kubectl create -namespace production
kubectl create namespace production
kubectl apply -f reference-app/manifests/mongo/mongodb-enterprise.yaml 
kubectl apply -f reference-app/manifests/mongo/mongodb-enterprise.yaml -n production
kubectl apply -f reference-app/manifests/mongo/mongodb-perms.yaml 
kubectl apply -f reference-app/manifests/mongo/mongodb-enterprise.yaml
helm ls
kubectl get servicemonitor
kubectl get servicemonitor -ns monitoring
kubectl get servicemonitor -n monitoring
kubectl get servicemonitor prometheus-kube-prometheus-grafana -n monitoring  -o yaml
kubectl get crd -n monitoring
kubectl get crd 
kubectl get prometheuses.monitoring.coreos.com -oyaml
kubectl get prometheuses.monitoring.coreos.com -o yaml
kubectl get prometheuses.monitoring.coreos.com -o yaml -n monitoring
kubectl port-forward -n monitoring prometheus-grafana-55464db9f4-vvpd4 3000
kubectl --namespace monitoring port-forward svc/prometheus-grafana --address 0.0.0.0 3000:80
cd ..
kubectl apply -f manifests/app/backend.yaml 
kubectl get pod
kubectl get servicemonitor -n monitoring
kubectl delete servicemonitor backend-app
kubectl delete servicemonitor backend-app -n monitoring
kubectl get servicemonitor -n monitoring
kubectl apply -f manifests/service_monitors/backend_svc_monitor.yaml -n default
kubectl apply -f manifests/app/backend.yaml
vim manifests/service_monitors/backend_svc_monitor.yaml
kubectl apply -f manifests/service_monitors/backend_svc_monitor.yaml -n monitoring
kubectl get pod -n monitoring
kubectl get servicemonitor -n monitoring
kubectl delete deployment front-end
kubectl delete deployment frontend-app
kubectl delete svc frontend-service
kubectl delete svc 
kubectl get svc 
kubectl get pod 
kubectl apply -f manifests/app/gunicorn.yaml
kubectl get pod 
kubectl apply -f manifests/service_monitors/gunicorn_svc_monitor.yaml -n monitoring
kubectl get servicemonitor -n monitoring
kubectl get pod 
kubectl get deployment
kubectl get delete deployment gunicorn-app
kubectl get delete deployment gunicorn-app -n default
kubectl delete deployment gunicorn-app -n default
kubectl get svc
kubectl delete svc gunicorn-service
kubectl apply -f manifests/app/gunicorn.yaml -n monitoring
kubectl get svc -n monitoring
kubectl get pods -n monitoring
kubectl get pods -A
kubectl get svc -A
kubectl create namespace observability
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml
clear
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl get servicemonitor
kubectl get servicemonitor -n monitoring
kubectl describe servicemonitor -n monitoring -oyaml
kubectl get servicemonitor -n monitoring -oyaml
kubectl get servicemonitor backend-app -n monitoring -oyaml
clear
kubectl get servicemonitor backend-app -n monitoring -oyaml
kubectl apply -f manifests/service_monitors/backend_svc_monitor.yaml -n monitoring
kubectl get servicemonitor backend-app -n monitoring -oyaml
kubectl get servicemonitor -n monitoring
kubectl apply -f manifests/service_monitors/gunicorn_svc_monitor.yaml -n monitoring
kubectl apply -f manifests/app/backend.yaml 
kubectl get pods
kubectl apply -f manifests/service_monitors/gunicorn_svc_monitor.yaml -n monitoring
clear
kubectl apply -f manifests/app/gunicorn.yaml
kubectl get pods
kubectl get svc
kubectl apply -f manifests/service_monitors/gunicorn_svc_monitor.yaml -n monitoring
kubectl apply -f manifests/service_monitors/backend_svc_monitor.yaml -n monitoring
kubectl apply -f manifests/app/backend.yaml 
clear
kubectl get svc
kubectl get svc gunicorn-service -oyaml
clear
kubectl delete svc gunicorn-service
kubectl get deployment
kubectl delete deployment gunicorn-app
kubectl get pods
kubectl delete pod alpine
kubectl get pods
kubectl get servicemonitor -n monitoring
kubectl delete servicemonitor gunicorn -n monitoring
clear
kubectl get servicemonitor -n monitoring
kubectl get pods
kubectl get pods -n monitoring
kubectl get deployment -n monitoring
kubectl delete deployment gunicorn-app -n monitoring
clear
kubectl get pods -n monitoring
clear
kubectl get pods -n monitoring
cd ..
clear
kubectl get pods
kubectl get svc
kubectl apply -f manifests/app/frontend.yaml 
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/service_account.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/service_account.yaml
kubectl get jaegertracer -n observability
exit
kubectl get ns
kubectl run -i --tty alpine2 --image=alpine --restart=Never -n monitoring
kubectl get pods
kubectl get pods -n monitorinh
kubectl get pods -n monitoring
cd ..
kubectl port-forward -n monitoring prometheus-grafana-55464db9f4-vvpd4 3000
clear
kubectl get pods
kubectl get pods -A
kubectl describe pod local-path-provisioner-5ff76fc89d-bpfnb -n kybe-system -o yaml
kubectl describe pod local-path-provisioner-5ff76fc89d-bpfnb -n kybe-system -oyaml
kubectl get pod local-path-provisioner-5ff76fc89d-bpfnb -n kybe-system -oyaml
kubectl get pod local-path-provisioner-5ff76fc89d-bpfnb -n kube-system -oyaml
clear
kubectl get pods -A
kubectl get svc -A
cd ..
ls
kubectl apply -f manifests/service_monitors/backend_svc_monitor.yaml -n monitoring
kubectl apply -f manifests/app/backend.yaml 
kubectl get pods -n monitoring
kubectl get servicemonitor -n monitoring
kubectl get servicemonitor 
kubectl get pods -n default
kubectl get servicemonitor backend -n monitoring 
kubectl get servicemonitor backend -n monitoring -oyaml
clear
kubectl get pods -n default
kubectl apply -f manifests/service_monitors/backend_svc_monitor.yaml -n monitoring
kubectl get svc
kubectl apply -f manifests/app/backend.yaml -n monitoring
kubectl get pods -n monitoring
kubectl delete deployment backend-app -n default
kubectl get pods -n default
kubectl get pods -n monitoring
kubectl delete servicemonitor backend -n monitoring
kubectl port-forward backend-app-59bb456865-htznb --address 0.0.0.0 8080:8080 -n monitoring
kubectl port-forward backend-app-5888d9789f-h62d5 --address 0.0.0.0 8080:8080 -n monitoring
kubectl port-forward backend-app-5888d9789f-h62d5 --address 0.0.0.0 8081:8081 -n monitoring
kubectl get svc -n default
kubectl delete svc backend-app -n default
kubectl get svc -n monitoring
kubectl port-forward svc/backend-app --address 8081 -n monitoring
kubectl port-forward svc/backend-app 8081 -n monitoring
kubectl port-forward svc/backend-app 8081:8081 -n monitoring
kubectl port-forward svc/backend-app -n monitoring
kubectl port-forward service/backend-app 8081:8081
kubectl port-forward service/backend-app 8081:8081 -n monitoring
kubectl apply manifests/app/backend.yaml -n monitoring
kubectl apply -f manifests/app/backend.yaml -n monitoring
kubectl get svc -n monitoring
kubectl port-forward service/backend-app 8081:8081
kubectl port-forward service/backend-app 8081:8081 -n monitoring
kubectl port-forward $(kubectl get pods -l=app="backend-app" -o name) 8081:8081 -n monitoring
kubectl port-forward $(kubectl get pods -l=app="backend-app" -o name -n monitoring) 8081:8081 
kubectl get pods -n monitoring
kubectl port-forward $(kubectl get pods -n monitoring -l=app="backend-app" -o name) 8081:8081 
kubectl port-forward $(kubectl get pods -l=app="backend-app" -o name -n monitoring) 8081:8081 
kubectl port-forward pod/backend-app-5888d9789f-smwpj 8081:8081  -n monitoring
kubectl get pods -n monitoring
kubectl get svc -n monitoring
kubectl port-forward backend-app-5888d9789f-smwpj 8080:8080  -n monitoring
kubectl get endpoint --namespace default
kubectl delete deployment backend-app  -n monitoring
kubectl delete svc backend-app  -n monitoring
clear
kubectl get svc -n monitoring
kubectl get pod -n monitoring
kubectl get pod -n default
kubectl apply -f manifests/app/backend.yaml 
kubectl get pod -n default
kubectl run -i --tty alpine --image=alpine --restart=Never -> going into the pod
kubectl run -i --tty alpine --image=alpine --restart=Never
kubectl run alpine
kubectl exec -it alpine sh
kubectl exec alpine -it sh
clear
kubectl get pods
kubectl run -i --tty alpine2 --image=alpine --restart=Never
exit
kubectl get services
kubectl port-forward svc/backend-app 8081
kubectl port-forward svc/backend-app 32118
kubectl port-forward svc/backend-app 8080
kubectl port-forward svc/backend-app 8081
kubectl get pd
kubectl get pod
kubectl port-forward -n default  service/backend-app --address 0.0.0.0 8080:8080
kubectl port-forward -n default  service/backend-app --address 0.0.0.0 8081:8081
kubectl port-forward -n default  service/backend-app --address 0.0.0.0 8080:8080
kubectl port-forward -n default  service/backend-app --address 0.0.0.0 8081:8081
kubectl port-forward -n default  service/backend-app --address 0.0.0.0 8081:8080
kubectl port-forward -n default  service/backend-app --address 0.0.0.0 8080:8081
kubectl port-forward -n default  service/backend-app --address 0.0.0.0 8081:8080
kubectl get pods -A
kubectl delete pod ingress-nginx-controller-5cc57bf6c7-9478m -n ingress-nginx
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
kubectl get svc -A
clear
kubectl get pods -A
kubectl get -n observability ingresses.v1.networking.k8s.io -o yaml | tail
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.3/deploy/static/provider/cloud/deploy.yaml
kubectl get nodes
kubectl get svc -n ingress-nginx
kubectl get svc --all-namespaces
kubectl get po -n ingress-nginx
kubectl describe pod ingress-nginx-controller-5cc57bf6c7-s6lhv -n ingress-nginx
kubectl get svc --all-namespaces
clear
kubectl get svc --all-namespaces
kubectl get pods --all-namespaces
ls /var/run/traefik
ls /var/run/traefik/
ls /var/run/traefikee/
helm uninstall traefik
helm uninstall traefik -n kubesystem
helm uninstall traefik -n kube-system
clear
kubectl get pods --all-namespaces
kubectl get svc --all-namespaces
helm uninstall traefik-operator -n traefik
helm uninstall traefik-operator -n kube-system
kubectl delete -n kube-system helmcharts traefik
kubectl get svc --all-namespaces
kubectl get pods --all-namespaces
kubectl delete pod frontend-app-977d9fbd8-nv6lp
kubectl delete pod backend-app-759697458d-sf6jc
kubectl delete pod ingress-nginx-controller-5cc57bf6c7-s6lhv
kubectl delete pod ingress-nginx-controller-5cc57bf6c7-s6lhv -n ingress-nginx
kubectl get pods --all-namespaces
clear
kubectl get pods --all-namespaces
kubectl get svc --all-namespaces
kubect delete svc gunicorn-service -n monitoring
kubectl delete svc gunicorn-service -n monitoring
kubectl get pods --all-namespaces
clear
kubectl get pods --all-namespaces
kubectl get svc --all-namespaces
kubectl get deployment --all-namespaces
clear
kubectl get pods --all-namespaces
kubectl get pod ingress-nginx-controller-5cc57bf6c7-jtj9b -n ingress-nginx
kubectl get pod ingress-nginx-controller-5cc57bf6c7-jtj9b -n ingress-nginx -oyaml
kubectl get -n observability ingresses.v1.networking.k8s.io -o yaml | tail
clear
kubectl get pod ingress-nginx-controller-5cc57bf6c7-jtj9b -n ingress-nginx -oyaml
clear
kubectl get pods --all-namespaces
kubectl describe pod ingress-nginx-controller-5cc57bf6c7-jtj9b -n ingress-nginx
cd ..
ls
kubectl apply -f manifests/added/ingress_deploy_v2.yaml 
clear
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.3/deploy/static/provider/cloud/deploy.yaml
kubectl get pods --all-namespaces
clear
kubectl get pods --all-namespaces
clear
kubectl get pods --all-namespaces
kubectl describe pod frontend-app-977d9fbd8-hzvjj
clear
kubectl get pods --all-namespaces
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.3/deploy/static/provider/cloud/deploy.yaml
exit
kubectl get pods -A
clear
kubectl get pods -A
kubectl describe pod frontend-app-977d9fbd8-2q9cq
kubectl get pods -A
kubectl delete pod frontend-app-977d9fbd8-2q9cq
kubectl get pods -A
kubectl describe pod frontend-app-64f85c956b-fcc8l
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.3/deploy/static/provider/cloud/deploy.yaml
kubectl get pods -A
clear
kubectl get pods -A
kubectl describe pod backend-app-759697458d-v8r7v
kubectl describe pod frontend-app-977d9fbd8-hzvjj
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.3/deploy/static/provider/cloud/deploy.yaml
iptables --flush 
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.3/deploy/static/provider/cloud/deploy.yaml
clear
kubectl get pods -A
exit
clear
kubectl get svc -A
kubectl get pods -A
kubectl create namespace observability
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/service_account.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/role.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/role_binding.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/operator.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/cluster_role.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/cluster_role_binding.yaml
clear
kubectl get pods -A
kubectl get svc -A
kubectl get deployment  -n observability
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.3/deploy/static/provider/cloud/deploy.yaml
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
kubectl apply -n observability -f - <<EOF
apiVersion: jaegertracing.io/v1
kind: Jaeger
metadata:
  name: simplest
EOF

kubectl get pods -A
kubectl get -n observability ingresses.v1.networking.k8s.io -o yaml | tail
clear
kubectl get pods -A
kubectl get svc -A
cd ..
kubectl apply -f manifests/app/backend.yaml 
kubectl apply -f manifests/app/frontend.yaml 
clear
kubectl get pods -A
clear
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
ls manifests/added/
ls manifests/
vim manifests/added/jaeger_instance.yaml 
kubectl apply -f manifests/added/jaeger_instance.yaml 
kubectl get svc
kubectl get pods
kubectl get svc
kubectl get svc -n observability
kubectl get svc 
clear
kubectl get svc -A
kubectl apply -f manifests/added/jaeger_instance.yaml -n default
kubectl get jaeger -n observability
kubectl delete jaeger simplest -n observability
clear
kubectl get svc -A
kubectl get pods -A 
kubectl apply -f manifests/added/jaeger_instance.yaml -n default
kubectl get svc -A
kubectl get pods -A 
kubectl get jaeger 
kubectl delete jaeger simplest 
clear
kubectl get pods -A 
kubectl get svc -A 
kubectl apply -f manifests/added/jaeger_instance.yaml -n default
kubectl get jaeger 
kubectl delete jaeger simplest 
clear
kubectl get jaeger -n observability
kubectl get jaeger -n default
kubectl apply -f manifests/added/jaeger_instance.yaml -n observability
kubectl get jaeger -n observability
kubectl delete deployment backend-app
kubectl delete svc backend-app
kubectl get svc
kubectl get pods
kubectl apply -f manifests/app/backend.yaml -n observability
kubectl get pods -n observability
clear
kubectl get pods -n observability
clear
kubectl get pods -n observability
kubectl apply -f manifests/added/jaeger_instance.yaml 
kubectl get pods 
kubectl get jaeger
kubectl describe jaeger -oyaml
kubectl describe jaeger 
kubectl get jaeger 
kubectl get jaeger -oyaml
clear
kubectl get jaeger
kubectl delete jaeger simplest
kubectl get svc -A
kubectl get pods -A
kubectl apply -f manifests/added/cluster_role_binding.yaml 
kubectl apply -f manifests/added/cluster_role_binding.yaml -n observability
kubectl apply -f manifests/added/jaegertracing.io_jaegers_crd.yaml -n observability
clear
kubectl get pods -A
kubectl port-forward frontend-app-5ccb7dfd57-c58g6 --address 0.0.0.0 8080:8080
kubectl port-forward frontend-app-5b6cb7449c-4bzr7 --address 0.0.0.0 8080:8080
clear
kubectl get pods 
kubectl get pods -A
exit
kubectl get pods -A
clear
kubectl get pods -A
kubectl get jaeger -A
kubectl get jaeger
cd ..
kubectl apply -f manifests/added/jaeger_instance.yaml 
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
kubectl create namespace monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack --namespace monitoring --kubeconfig /etc/rancher/k3s/k3s.yaml
kubectl create namespace observability
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/master/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/crds/jaegertracing.io_jaegers_crd.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/service_account.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/role.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/role_binding.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/operator.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.17.0/deploy/cluster_role.yaml
kubectl apply -f manifests/added/cluster_role_binding.yaml  -n observability
kubectl apply -f manifests/added/jaeger_instance.yaml 
kubectl get pods
kubectl get jaeger
kubectl get pods -A
kubectl apply -f manifests/added/jaeger_instance.yaml -n observability
kubectl get jaeger -n observability
kubectl apply -f manifests/app/backend.yaml 
kubectl apply -f manifests/app/frontend.yaml 
clear
kubectl get pods -A
kubectl get svc -A
kubectl get -n observability ingresses.v1.networking.k8s.io -o yaml | tail
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.3/deploy/static/provider/cloud/deploy.yaml
kubectl get svc -A
kubectl get jaeger
kubectl get -n default ingresses.v1.networking.k8s.io -o yaml | tail
kubectl get -n observability ingresses.v1.networking.k8s.io -o yaml | tail
kubectl describe jaeger
clear
kubectl apply -f manifests/service_monitors/backend_svc_monitor.yaml -n monitoring
kubectl apply -f manifests/service_monitors/frontend_svc_monitor.yaml -n monitoring
kubectl get pods
kubectl get pods -A
kubectl get svc -A
kubectl apply -f manifests/added/operator.yaml -n observability
kubectl delete namespace ingress-nginx
kubectl get svc -A
kubectl create -f manifests/added/operator.yaml -n observability
clear
kubectl apply -f manifests/added/operator.yaml -n observability
kubectl get svc -A
kubectl get pods -A
kubectl apply -f manifests/added/operator.yaml -n observability
kubectl get jaeger -n monitoring
kubectl get jaeger -n observibility
kubectl get jaeger -n observability
kubectl get jaeger -n default
kubectl delete namespace observability
clear
kubectl get pods -A
kubectl get svc -A
kubectl create namespace observability # <1>
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/crds/jaegertracing.io_jaegers_crd.yaml # <2>
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/service_account.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/role.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/role_binding.yaml
kubectl create -n observability -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/operator.yaml
kubectl apply -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/crds/jaegertracing.io_jaegers_crd.yaml 
clear
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/cluster_role.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/cluster_role_binding.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/cluster_role.yaml
kubectl create -f https://raw.githubusercontent.com/jaegertracing/jaeger-operator/v1.28.0/deploy/cluster_role_binding.yaml
kubectl get pods -l app.kubernetes.io/instance=simplest
clear
kubectl get pods -A
kubectl get svc -A
kubectl get jaeger
kubectl get svc -A
kubectl get pods -A
kubectl apply -f manifests/app/backend.yaml -n observability
clear
kubectl get pods -A
kubectl get svc -A
kubectl delete deployment backend-app
kubectl get svc -A
kubectl delete svc backend-app
kubectl get svc -A
exit
clear
kubectl get pods -A
kubectl get svc -A
clear
kubectl get svc -A
exit
cd ..
ls
vim manifests/app/backend.yaml 
kubectl apply -f manifests/app/backend.yaml 
clear
kubectl get pods
clear
kubectl get pods
kubectl get svc
kubectl logs backend-app-b47b9fb7f-rzjsd
kubectl logs backend-app-b47b9fb7f-rzjsd -c backend-app
clear
kubectl get pods
kubectl logs backend-app-b47b9fb7f-gwxnn -c backend-app
kubectl logs backend-app-b47b9fb7f-gwxnn 
kubectl logs backend-app-b47b9fb7f-gwxnn -c jaeger-agent
clear
kubectl logs backend-app-b47b9fb7f-gwxnn -c backend-app
kubectl logs backend-app-b47b9fb7f-gwxnn -c jaeger-agent
clear
kubectl apply -f manifests/app/backend.yaml
kubectl get pods
clear
kubectl get pods
kubectl logs backend-app-7f777c7c8c-xms5c
kubectl logs backend-app-7f777c7c8c-xms5c -c backend-app
clear
kubectl apply -f manifests/app/backend.yaml
kubectl get pods
clear
kubectl get pods
clear
kubectl get pods
kubectl logs backend-app-c68df5f88-pg4l6
kubectl logs backend-app-c68df5f88-pg4l6 -c backend-app
clear
kubectl apply -f manifests/app/backend.yaml
kubectl get pods
kubectl get logs backend-app-7d5b556cf7-fcgjz -c backend-app
kubectl logs backend-app-7d5b556cf7-fcgjz -c backend-app
kubectl logs backend-app-7d5b556cf7-fcgjz
kubectl logs backend-app-7d5b556cf7-fcgjz -c jaeger-agent
kubectl logs backend-app-7d5b556cf7-fcgjz -c backend-app
kubectl get pods
kubectl get svc
kubectl port-forward svc/backend-app --address 0.0.0.0 8081:8081
kubectl get svc
kubectl port-forward svc/backend-app 8081
kubectl apply -f manifests/app/backend.yaml
kubectl get svc
kubectl port-forward svc/backend-app --address 0.0.0.0 8081:8081
kubectl get svc
kubectl get pods
kubectl port-forward svc/backend-app --address 0.0.0.0 3030:8081
kubectl port-forward svc/backend-app 3030:8081
kubectl port-forward svc/backend-app 8081
kubectl port-forward svc/backend-app 8081:8081
kubectl port-forward svc/backend-app 8888:8081
kubectl get pods

kubectl get svc
clear
kubectl get svc -A
kubectl apply -f manifests/app/backend.yaml
clear
kubectl apply -f manifests/app/backend.yaml
kubectl get svc -A
kubectl apply -f manifests/app/backend.yaml
kubectl get svc -A
kubectl apply -f manifests/app/backend.yaml
kubectl get svc -A
kubectl apply -f manifests/app/backend.yaml
kubectl get svc -A
clear
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
kubectl logs prometheus-prometheus-node-exporter-kpj8w
kubectl get pods -A
kubectl logs prometheus-prometheus-node-exporter-kpj8w
kubectl get pods -A
kubectl apply -f manifests/app/backend.yaml
kubectl get pods -A
kubectl get svc -A
clear
kubectl get pods -A
kubectl get svc -A
kubect get svc backend-app -oyaml
kubectl get svc backend-app -oyaml
kubectl get svc -A
kubectl get pods -A
kubectl logs simplest-746f54765d-ld524 -n observability 
kubectl describe  simplest-746f54765d-ld524 -n observability 
kubectl describe  pod simplest-746f54765d-ld524 -n observability 
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
kubectl logs traefik-97b44b794-7t8wq -n kube-system
kubectl logs local-path-provisioner-5ff76fc89d-h4k42 -n monitoring
kubectl get pods -A
kubectl logs prometheus-prometheus-node-exporter-kpj8w -n monitoring
kubectl get svc -A
kubectl get svc backend-app -oyaml
kubectl apply -f manifests/app/backend.yaml 
clear
kubectl get svc -A
kubectl get pods -A
clear
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
kubectl delete deployment backend-app
kubectl delete svc backend-app
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get svc -A
kubectl get servicemonitor -A
kubectl get servicemonitor -n monitoring -oyaml
clear
kubectl get servicemonitor -A
kubectl get servicemonitor backend-app -oyaml
kubectl get servicemonitor frontend-app -oyaml
kubectl servicemonitor frontend-app -oyaml
kubectl describe servicemonitor backend-app -oyaml
kubectl describe servicemonitor backend-app 
kubectl get servicemonitor backend-app -n monitoring -oyaml
clear
kubectl get pods -A
kubectl get svc -A
clear
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
kubectl get svc -A
kubectl apply -f manifests/app/backend.yaml
kubectl get svc -A
kubectl get pods -A
kubectl get svc -A
kubectl get pods -A
kubectl logs local-path-provisioner-5ff76fc89d-h4k42 -n observability
kubectl get pods -A
clear
kubectl get svc -A
kubectl apply -f manifests/app/backend.yaml
kubectl delete svc backend-app
kubectl delete deployment backend-app
kubectl get svc -A
kubectl apply -f manifests/app/backend.yaml
kubectl get svc -A
clear
kubectl get pods -A
kubectl get svc 
kubectl get pods -A
kubectl get pods
kubectl get svc -A
kubectl get pods
clear
kubectl get pods
kubectl get svc -A
kubectl port-forward svc/backend-app 5000:5000
kubectl get pods
kubectl apply -f manifests/app/backend.yaml
clear
kubectl get pods -A
kubectl get svc -A
kubectl get pods 
kubectl get svc -A
kubectl get pods -A
clear
kubectl get pods -A
kubectl get pods 
clear
kubectl get pods -A
kubectl describe pod coredns-7448499f4d-zhz8m -n kube-system
kubectl delete svc/frontend-app 
kubectl delete deployment frontend-app 
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
kubectl describe pod prometheus-prometheus-node-exporter-kpj8w -n  monitoring
clear
kubectl get pods -A
kubectl describe pod local-path-provisioner-5ff76fc89d-h4k42 -n kube-system
kubectl logs local-path-provisioner-5ff76fc89d-h4k42 -n kube-system
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get svc -A
kubectl get pods -A
kubectl delete deployment backend-app
kubectl delete svc backend-app
kubectl get pods -A
clear
kubectl get pods -A
kubectl logs local-path-provisioner-5ff76fc89d-h4k42 -n kube-system
kubectl get pods -A
kubectl logs local-path-provisioner-5ff76fc89d-h4k42 -n kube-system
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
clear
kubectl get pods -A
kubectl logs local-path-provisioner-5ff76fc89d-h4k42 -n kube-system
kubectl apply -f manifests/app/backend.yaml 
kubectl apply -f manifests/app/frontend.yaml 
kubectl get pods -A
clear
kubectl get pods -A
kubectl delete svc backend-app
exit
kubectl port-forward -n monitoring svc/prometheus-kube-prometheus-prometheus --address 0.0.0.0 9090:9090
clear
exit
kubectl get pods -A
clear
exit
