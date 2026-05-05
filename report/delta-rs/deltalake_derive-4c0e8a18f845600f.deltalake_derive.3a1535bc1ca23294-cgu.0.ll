inline.NumInlined: 116
inline.NumDeleted: 77
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsbjGuDcEILED_11proc_macro211TokenStreamECs4ZaLwAtrTbk_16deltalake_derive:bb.a
bb.c:                                             ; preds = %.lr.ph10
  %lsr.iv.next17 = add i64 %lsr.iv16, -1          ; 2 uses
  %scevgep22 = getelementptr i8, ptr %lsr.iv21, i64 32
  %i.e = icmp eq i64 %lsr.iv, %lsr.iv.next17
  br i1 %i.e, label %._crit_edge11.loopexit, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsbjGuDcEILED_11proc_macro211TokenStreamECs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %bb.c
  %lsr.iv21 = phi ptr [ %lsr.iv19, %.lr.ph10.preheader ], [ %scevgep22, %bb.c ] ; 2 uses
  %lsr.iv16 = phi i64 [ %1, %.lr.ph10.preheader ], [ %lsr.iv.next17, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECsBGNUbrdbJ0_5quote(ptr align 8 %lsr.iv21) #22
          to label %bb.c unwind label %bb.e
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr4MetaECs4ZaLwAtrTbk_16deltalake_derive:bb.a
bb.c:                                             ; preds = %.lr.ph10
  %lsr.iv.next17 = add i64 %lsr.iv16, -1          ; 2 uses
  %scevgep22 = getelementptr i8, ptr %lsr.iv21, i64 232
  %i.e = icmp eq i64 %lsr.iv, %lsr.iv.next17
  br i1 %i.e, label %._crit_edge11.loopexit, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr4MetaECs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %bb.c
  %lsr.iv21 = phi ptr [ %lsr.iv19, %.lr.ph10.preheader ], [ %scevgep22, %bb.c ] ; 2 uses
  %lsr.iv16 = phi i64 [ %1, %.lr.ph10.preheader ], [ %lsr.iv.next17, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8 %lsr.iv21) #22
          to label %bb.c unwind label %bb.e
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBM_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7: ; preds = %.lr.ph10
  %lsr.iv.next16 = add i64 %lsr.iv15, -1          ; 2 uses
  %scevgep21 = getelementptr i8, ptr %lsr.iv20, i64 240
  %i.e = icmp eq i64 %lsr.iv, %lsr.iv.next16
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7._crit_edge.loopexit, label %.lr.ph10

bb.b:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBM_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7
  %lsr.iv20 = phi ptr [ %lsr.iv18, %.lr.ph10.preheader ], [ %scevgep21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7 ] ; 2 uses
  %lsr.iv15 = phi i64 [ %1, %.lr.ph10.preheader ], [ %lsr.iv.next16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaEBK_(ptr align 8 %lsr.iv20)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4attr4MetaNtNtBL_5token5CommaEECs4ZaLwAtrTbk_16deltalake_derive.exit7 unwind label %bb.c
end_hunk_5
