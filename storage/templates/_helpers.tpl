{{/*
Generate tolerations
{{- $params := dict "Values" $.Values -}}
*/}}
{{- define "infra.tolerations" -}}
  {{- if (default $.Values.global.infraNodes.taints $.Values.infraNodes.taints) -}}
  {{ toYaml (default $.Values.global.infraNodes.taints $.Values.infraNodes.taints) | nindent 4 -}}
  {{- end -}}
{{ end -}}


{{- define "storage.tolerations" -}}
  {{- if (default $.Values.global.storageNodes.taints $.Values.storageNodes.taints) -}}
  {{ toYaml (default $.Values.global.storageNodes.taints $.Values.storageNodes.taints) | nindent 4 -}}
  {{- end -}}
{{ end -}}


{{- define "storage.replicationEnabled" -}}
  {{- if .Values.replication -}}
    {{- if .Values.replication.enabled -}}
      {{- if eq .Values.replication.enabled true -}}
        true
      {{- else -}}
        false
      {{- end -}}
    {{- end -}}
  {{- end -}}
{{- end -}}