{{- define "serviceName" -}}
{{- printf "%s-%s" .Release.Namespace .Release.Name | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "serviceName.labels" -}}
helm.sh/chart: {{ include "serviceName" . }}
{{- end }}

{{- define "date.labels" }}
{{ now | htmlDate }}
{{- end }}