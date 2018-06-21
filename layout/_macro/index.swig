{% macro render(post) %}
    <header class="post-header">
      <h1 class="post-title">
        <a class="post-link" href="{{ url_for(post.path) }}">{{ post.title }}</a>
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
      </div>
    </header>

    <div class="post-content">
        {% if post.description %}
          {% set excerpt = post.description %}
        {% elif post.excerpt %}
          {% set excerpt = post.excerpt %}
        {% endif %}

        {% if excerpt %}
        {{ excerpt }}
        <div class="read-more">
          <a href="{{ url_for(post.path) }}" class="read-more-link">{{ __('posts.readmore') }}</a>
        </div>
        {% endif %}
    </div>
{% endmacro %}
