{# Social Links #}
{% include "./_footer/social.swig" %}

<div class="copyright">
  <span class="power-by">
    {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/" target="_blank">Hexo</a>') }}
  </span>
  <span class="division">|</span>
  <span class="theme-info">
    {{ __('footer.theme') }} - 
    <a class="theme-link" href="https://github.com/ahonn/hexo-theme-even" target="_blank">Even</a>
  </span>
  <span class="division">|</span>
  <span>
    <a class="theme-link" href="http://www.miitbeian.gov.cn/" target="_blank">沪ICP备18019201号</a>
  </span>

  <span class="copyright-year">
    {% set current = date(Date.now(), "YYYY") %}
    &copy; 
    {% if theme.since and theme.since != current %} 
      {{ theme.since }} - 
    {% endif %}
    {{ current }}

    <span class="heart">
      <i class="iconfont icon-heart"></i>
    </span>
    <span class="author">{{ config.author }}</span>
  </span>
</div>
