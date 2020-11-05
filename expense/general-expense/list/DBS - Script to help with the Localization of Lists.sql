-- Enter List name in XXX 

Select '64.CT_LIST_ITEM_LANG.VALUE.SYNC_GUID.' + right(CONVERT(CHAR(34), li.SYNC_GUID,1),32) + '=' + lil.VALUE 

From CT_LIST_ITEM li 

    join CT_LIST_ITEM_LANG lil on lil.LI_KEY = li.LI_KEY 

    join CT_LIST_ITEM_MAP lim on lim.LI_KEY = li.LI_KEY 

    join CT_LIST_LANG ll on ll.LIST_KEY = lim.LIST_KEY 

Where lil.LANG_CO_DE = 'en' 

    and ll.LANG_CODE = 'en' 

    and li.IS_DELETED = 'N' 

    and ll.NAME = 'XXX' 
