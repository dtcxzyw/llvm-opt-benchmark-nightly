inline.NumInlined: 1088
inline.NumDeleted: 543
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtBL_4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsjkRrtHEnRPD_18reqwest_middleware8req_init18RequestInitialiserEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %lsr.iv.next16 = add i64 %lsr.iv15, -1          ; 2 uses
  %scevgep21 = getelementptr i8, ptr %lsr.iv20, i64 16
  %i.p = icmp eq i64 %lsr.iv, %lsr.iv.next16
  br i1 %i.p, label %.loopexit.loopexit, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj1_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.d:                                             ; preds = %.lr.ph5
  %lsr.iv.next11 = add i64 %lsr.iv10, -1          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %lsr.iv15, i64 48
  %i.i = icmp eq i64 %lsr.iv, %lsr.iv.next11
  br i1 %i.i, label %._crit_edge.loopexit, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %.lcssa = phi i64 [ %lsr.iv, %bb.c ]
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj1_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph5.preheader, %bb.d
  %lsr.iv15 = phi ptr [ %lsr.iv13, %.lr.ph5.preheader ], [ %scevgep16, %bb.d ] ; 2 uses
  %lsr.iv10 = phi i64 [ %i.b, %.lr.ph5.preheader ], [ %lsr.iv.next11, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %lsr.iv15) #20
          to label %bb.d unwind label %bb.f
end_hunk_7
begin_hunk_8_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj2_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.d:                                             ; preds = %.lr.ph5
  %lsr.iv.next11 = add i64 %lsr.iv10, -1          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %lsr.iv15, i64 48
  %i.i = icmp eq i64 %lsr.iv, %lsr.iv.next11
  br i1 %i.i, label %._crit_edge.loopexit, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %.lcssa = phi i64 [ %lsr.iv, %bb.c ]
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj2_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph5.preheader, %bb.d
  %lsr.iv15 = phi ptr [ %lsr.iv13, %.lr.ph5.preheader ], [ %scevgep16, %bb.d ] ; 2 uses
  %lsr.iv10 = phi i64 [ %i.b, %.lr.ph5.preheader ], [ %lsr.iv.next11, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %lsr.iv15) #20
          to label %bb.d unwind label %bb.f
end_hunk_9
begin_hunk_10_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj3_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.d:                                             ; preds = %.lr.ph5
  %lsr.iv.next11 = add i64 %lsr.iv10, -1          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %lsr.iv15, i64 48
  %i.i = icmp eq i64 %lsr.iv, %lsr.iv.next11
  br i1 %i.i, label %._crit_edge.loopexit, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %.lcssa = phi i64 [ %lsr.iv, %bb.c ]
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_10
begin_hunk_11_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1x_EEj3_NtB4_11PartialDrop12partial_dropCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph5.preheader, %bb.d
  %lsr.iv15 = phi ptr [ %lsr.iv13, %.lr.ph5.preheader ], [ %scevgep16, %bb.d ] ; 2 uses
  %lsr.iv10 = phi i64 [ %i.b, %.lr.ph5.preheader ], [ %lsr.iv.next11, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %lsr.iv15) #20
          to label %bb.d unwind label %bb.f
end_hunk_11
