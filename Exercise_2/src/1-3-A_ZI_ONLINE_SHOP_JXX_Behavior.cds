managed implementation in class zbp_i_online_shop_jxx unique;
define behavior for ZI_ONLINE_SHOP_JXX alias Online_Shop
persistent table zonlineshop_JXX
with additional save
lock master
authorization master ( instance )
//etag master <field_name>
{
  field ( numbering : managed, readonly ) order_Uuid;
  field ( mandatory ) Ordereditem;
  field ( readonly ) Creationdate, order_id;
  determination calculate_order_id on modify { create; }
  internal action create_pr parameter $self;
  internal action set_inforecord;
  internal action update_inforecord;
  create;
  update;
  delete;
  mapping for zonlineshop_jxx
  {
    PackageId = pkgid;
    Order_Id = order_id;
    Creationdate = creationdate;
    Deliverydate = deliverydate;
    Order_Uuid = order_uuid;
    Ordereditem = ordereditem;
  }
}