### Hi there 👋

I'm a boring developer, who happens to do something, sometimes.

[![Top Langs](https://github-readme-stats.vercel.app/api/top-langs/?username=ping-localhost&langs_count=8&theme=dracula&layout=compact)](https://github.com/anuraghazra/github-readme-stats)

---

{{- $recentContributions := recentContributions 5 -}}
{{- $recentRepos := recentRepos 5 -}}
{{- $recentReleases := recentReleases 5 -}}
{{- $recentPullRequests := recentPullRequests 5 -}}
{{- $recentStars := recentStars 5 -}}
{{- $followers := followers 5 -}}

{{ if gt (len $recentContributions) 0 }}
#### 👷 Check out what I'm currently working on
{{range $recentContributions}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .OccurredAt}})
{{- end}}
{{ end }}

{{ if gt (len $recentRepos) 0 }}
#### 🌱 My latest projects
{{range $recentRepos}}
- [{{.Name}}]({{.URL}}) - {{.Description}}
{{- end}}
{{ end }}

{{ if gt (len $recentReleases) 0 }}
#### 🔭 Latest releases I've contributed to
{{range $recentReleases}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}) - {{.Description}}
{{- end}}
{{ end }}

{{ if gt (len $recentPullRequests) 0 }}
#### 🔨 My recent Pull Requests
{{range $recentPullRequests}}
- [{{.Title}}]({{.URL}}) on [{{.Repo.Name}}]({{.Repo.URL}}) ({{humanize .CreatedAt}})
{{- end}}
{{ end }}

{{ if gt (len $recentStars) 0 }}
#### ⭐ Recent Stars
{{range $recentStars}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .StarredAt}})
{{- end}}
{{ end }}

{{ if gt (len $followers) 0 }}
#### 👯 Check out some of my recent followers
{{range $followers}}
- [{{.Login}}]({{.URL}})
{{- end}}
{{ end }}
>>>>>>> edb76ea (Updated the template)
