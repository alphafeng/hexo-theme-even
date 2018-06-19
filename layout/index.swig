{% extends "_layout.swig" %}
{% import '_macro/index.swig' as index_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}

  <article class="post">
    {# index sidebar #}
    {% include "_partial/sidebar.swig" %}

    <section id="posts" class="posts">
      {% for post in page.posts %}
        {{ index_template.render(post) }}
      {% endfor %}
    </section>

    {# Post Pagination #}
    <footer id="post-footer" class="post-footer">
      {% include "_partial/pagination.swig" %}
    </footer>
  </article>
{% endblock %}
