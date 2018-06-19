{% macro render(post) %}
  <article class="post">
    <header class="post-header">
      <h1 class="post-title">
        {{ post.title }}
      </h1>

      <div class="post-meta">
        <span class="post-time">
          {{ full_date(post.date, 'YYYY-MM-DD') }}
        </span>
        {% if post.categories and post.categories.length %}
          <div class="post-category">
            {% for category in post.categories %}
              <a href="{{ url_for(category.path) }}">{{ category.name }}</a>
            {% endfor %}
          </div>
        {% endif %}
        {% if theme.leancloud.app_id and theme.leancloud.app_key %}
        <div class="post-visits"
             data-url="{{ url_for(post.path) }}"
             data-title="{{ post.title }}">
            {{ __('posts.visits') }} 0
          </div>
        {% endif %}
      </div>
    </header>

    {# Post TOC #}
    {% include "../_partial/_post/toc.swig" %}

    <div class="post-content">
      {{ post.content }}
    </div>

    {# Post Copyright #}
    {% include "../_partial/_post/copyright.swig" %}

    {# Reward #}
    {% include "../_partial/_post/reward.swig" %}

    <footer id="post-footer" class="post-footer">
      {% if post.tags and post.tags.length %}
        <div class="post-tags">
          {% for tag in post.tags %}
            <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
          {% endfor %}
        </div>
      {% endif %}
      {# Post Pagination #}
      {% include "../_partial/pagination.swig" %}
    </footer>

  </article>
{% endmacro %}
