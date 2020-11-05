select lil.value as "Group Name", pl.name as "Policy name", hnm.is_default, hnm.hier_node_key,hn.hier_key 

from ct_config_hier_node_map hnm 

join ct_hierarchy_node hn with(nolock) on hnm.hier_node_key = hn.hier_node_key 

join ct_list_item_lang lil with(nolock) on hn.segment_1 = lil.li_key and lil.lang_code = 'en' 

join ct_policy_lang pl on hnm.key_value = pl.pol_key and pl.lang_code = 'en' 

join ct_hierarchy_lang hl on hn.hier_key = hl.hier_key and hl.lang_code = 'en' and hl.name = 'Expense Reports' 

where hnm.is_active = 'Y' and hnm.table_ref = 'CT_POLICY' 

and lil.lang_code = 'en' 

order by 1,2 
