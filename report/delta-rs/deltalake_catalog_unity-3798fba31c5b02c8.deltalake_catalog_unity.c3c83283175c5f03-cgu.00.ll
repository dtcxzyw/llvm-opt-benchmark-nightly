inline.NumInlined: 1645
inline.NumDeleted: 746
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.lcssa = phi i64 [ %lsr.iv, %bb.b ]
  %i.k = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i
  %lsr.iv20 = phi ptr [ %lsr.iv18, %.lr.ph12.i.preheader ], [ %scevgep21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i ] ; 3 uses
  %lsr.iv15 = phi i64 [ %i.c, %.lr.ph12.i.preheader ], [ %lsr.iv.next16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware10middleware10MiddlewareEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %lsr.iv.next16 = add i64 %lsr.iv15, -1          ; 2 uses
  %scevgep21 = getelementptr i8, ptr %lsr.iv20, i64 16
  %i.p = icmp eq i64 %lsr.iv, %lsr.iv.next16
  br i1 %i.p, label %.loopexit.loopexit, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.lcssa = phi i64 [ %lsr.iv, %bb.b ]
  %i.k = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i
  %lsr.iv20 = phi ptr [ %lsr.iv18, %.lr.ph12.i.preheader ], [ %scevgep21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i ] ; 3 uses
  %lsr.iv15 = phi i64 [ %i.c, %.lr.ph12.i.preheader ], [ %lsr.iv.next16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %lsr.iv.next16 = add i64 %lsr.iv15, -1          ; 2 uses
  %scevgep21 = getelementptr i8, ptr %lsr.iv20, i64 16
  %i.p = icmp eq i64 %lsr.iv, %lsr.iv.next16
  br i1 %i.p, label %.loopexit.loopexit, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
end_hunk_5
