#!/bin/bash

octok () {
  echo "oc_token: $(oc whoami -t)"
}

#ansible-playbook -i inv/lab pb/list_all_openshift_pods.yaml -e@<(echo "oc_token: $(oc whoami -t)")
ansible-playbook -i inv/lab pb/list_all_openshift_pods.yaml -e@<(octok)
