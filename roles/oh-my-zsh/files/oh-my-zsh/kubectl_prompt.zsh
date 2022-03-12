function _get_k8s_context() {
    local context

    kubeconfig="$HOME/.kube/config"
    if [[ -n "$KUBECONFIG" ]]; then
        kubeconfig="$KUBECONFIG"
    fi

    context="$(kubectl config current-context 2>/dev/null)"
    [ -z "$context" ] && echo "" || echo "$context"
}

function _get_k8s_namespace() {
    local k8sNamespace

    kubeconfig="$HOME/.kube/config"
    if [[ -n "$KUBECONFIG" ]]; then
        kubeconfig="$KUBECONFIG"
    fi

    k8sNamespace="$(kubectl config view --minify --output 'jsonpath={..namespace}' 2>/dev/null)"
    [ -z "$k8sNamespace" ] && echo "" || echo "$k8sNamespace"
}