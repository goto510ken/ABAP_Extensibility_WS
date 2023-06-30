@Metadata.layer: #CUSTOMER
@Search.searchable: true
@UI: { headerInfo: { typeName: 'Online Shop',
                     typeNamePlural: 'Online Shop',
                     title: { type: #STANDARD, label: 'Online Shop', value: 'order_id' }},
       presentationVariant: [{ sortOrder: [{ by: 'Creationdate',
                                             direction: #DESC }] }] }
annotate view ZC_ONLINE_SHOP_JXX with
{

  @UI.facet: [{ id:       'Orders',
                purpose:  #STANDARD,
                type:     #IDENTIFICATION_REFERENCE,
                label:    'Order',
                position: 10 }]
  Order_Uuid;
  @UI: { lineItem: [{ position: 10,label: 'Order id', importance: #HIGH }],
         identification: [{ position: 10, label: 'Order id' }]
       }
  @Search.defaultSearchElement: true
  Order_Id;
  @UI: { lineItem: [{ position: 20,label: 'Ordered item', importance: #HIGH }],
         identification: [{ position: 20, label: 'Ordered item' }]
       }
  @Search.defaultSearchElement: true
  @Consumption.valueHelpDefinition: [{ entity.element: 'Product' , entity.name: 'i_producttp_2' }]
  Ordereditem;
  @UI: { lineItem:[{ position: 50,label: 'Creation date', importance: #HIGH },
                   { type: #FOR_ACTION, dataAction: 'update_inforecord', label: 'Update IR' }],
         identification: [{ position: 50, label: 'Creation date' }]
       }
  Creationdate;
  @UI: { identification: [{ position: 60, label: 'Purchase Requisition' }] }
  Purchasereqn;
  @UI: { lineItem:       [{ position: 70,label: 'Package ID', importance: #HIGH }],
         identification: [{ position: 70, label: 'Package ID' }]
       }
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZC_PREPACKAGEDITEMS_VH', element: 'PackageId' }}]
  PackageId;
  @UI: { lineItem:       [{ position: 80,label: 'Cost Center', importance: #HIGH }],
         identification: [{ position: 80, label: 'Cost Center' }]
       }
  @Search.defaultSearchElement: true
  CostCenter;
}