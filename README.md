### Ansible k8s module Examples
Repo contains example that shows how to safely retrieve your openshift user token 
and use it to run Ansible against the Openshift API. This can be use for Kubernetes as well.

#### Ex 1

method 1:
```
$ ansible-playbook -i inv/lab pb/list_all_openshift_pods.yaml -e@<(echo "oc_token: $(oc whoami -t)")
```

method 2:
```
octok () {
  echo "oc_token: $(oc whoami -t)"
}

ansible-playbook -i inv/lab pb/list_all_openshift_pods.yaml -e@<(octok)
```

method 3:
```
$ alias octok='echo "oc_token: $(oc whoami -t)"'
$ ansible-playbook -i inv/lab pb/list_all_openshift_pods.yaml -e@<(octok)
```
