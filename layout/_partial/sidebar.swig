{% if is_home() %}
  <div class="post-toc" id="post-toc">
    <h2 class="post-toc-title">分类</h2>
    <div class="categories-list-tags">
      {{ list_categories({depth: -1}) }}
    </div>
  </div>
{% endif %}
