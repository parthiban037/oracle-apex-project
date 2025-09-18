select 'fa-comments' card_icon,
       'Comments' card_title,
       count(cmt_id) value,
       apex_util.prepare_url('f?p=' || :app_id || ':26:' || :app_session || '.:::26') card_link
from cmt
UNION ALL
select 'fa-thumbs-up' card_icon,
       'Likes' card_title,
       count(lik_id) value,
       apex_util.prepare_url('f?p=' || :app_id || ':28:' || :app_session || '.:::28') card_link
from lik
UNION ALL
select 'fa-heart-o' card_icon,
       'Favorites' card_title,
       count(ubm_cpy_id) value,
       apex_util.prepare_url('f?p=' || :app_id || ':27:' || :app_session || '.:::27') card_link
from ubm 
UNION ALL
select 'fa-bullhorn' card_icon,
       'Notification' card_title,
       count(ntf_id) value,
       apex_util.prepare_url('f?p=' || :app_id || ':27:' || :app_session || '.:::27') card_link
from ntf
UNION ALL
select 'fa-hand-o-up' card_icon,
       'Follow Up' card_title,
       count(flp_id) value,
       apex_util.prepare_url('f?p=' || :app_id || ':26:' || :app_session || '.:::26') card_link
from flp
UNION ALL
select 'fa-calendar' card_icon,
       'Calendar' card_title,
       count(sld_id) value,
       apex_util.prepare_url('f?p=' || :app_id || ':25:' || :app_session || '.:::25') card_link
from sld_sales_lead 