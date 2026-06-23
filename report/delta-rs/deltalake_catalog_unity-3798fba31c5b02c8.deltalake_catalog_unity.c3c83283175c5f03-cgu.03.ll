inline.NumInlined: 699
inline.NumDeleted: 264
begin_hunk_0_@_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.d:                                             ; preds = %.noexc.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i: ; preds = %bb.d, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 24, i64 noundef 8) #26
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 24, i64 noundef 8) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.b = atomicrmw sub ptr %i.a, i32 1 release, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3d_(ptr noalias noundef nonnull align 8 dereferenceable(304) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1o_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3N_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 304, i64 noundef 8) #26
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1o_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3N_.exit: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 304, i64 noundef 8) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1o_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3N_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCslfDARg5dRCJ_8lock_api5mutex5MutexNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtB7_8DeqNodesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = atomicrmw sub ptr %i.a, i32 1 release, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !2857, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !2860
  %.promoted2 = load ptr, ptr %i.a, align 8
  %.promoted5 = load ptr, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %.preheader.i
  %.promoted14.i.i7 = phi ptr [ %.promoted5, %.preheader.i ], [ %.promoted14.i.i6, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ] ; 2 uses
  %.lcssa14 = phi ptr [ %.promoted2, %.preheader.i ], [ %.lcssa13, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ] ; 2 uses
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.q, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.t, %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  %.not12.i.i = icmp eq i16 %i.g, 0
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !2860
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !2860
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.i = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.promoted14.i.i7, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.l, %.lr.ph.i.i ], [ %.lcssa14, %bb.b ]
  %.val10.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !2860
  %i.k = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %.promoted14.i.i6 = phi ptr [ %i.m, %._crit_edge.i.i ], [ %.promoted14.i.i7, %bb.b ]
  %.lcssa13 = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.lcssa14, %bb.b ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i.i                ; 2 uses
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !2860
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %.lcssa13, i64 %i.r
  %i.t = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !alias.scope !2857
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -48
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBH_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %i.u), !noalias !2857
  %.old3.i = icmp eq i64 %i.t, 0
  br i1 %.old3.i, label %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.a
  %i.v = load i64, ptr %0, align 8, !range !19, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.v) #26
  br label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.d, %bb.c, %_RNvMso_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_7RawIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_EE13drop_elementsCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !2864, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !2864 ; 2 uses
  br i1 %.not12.i, label %.lr.ph.i, label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted14.i = load ptr, ptr %i.g, align 8, !alias.scope !2864
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !2864
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !2864
  br label %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted14.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val10.i = load <16 x i8>, ptr %i.h, align 16, !noalias !2864
  %i.j = icmp sgt <16 x i8> %.val10.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !2864
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -48
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !4

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !2745

_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2867
  %i.o = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #26, !noalias !2867 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !2867
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i
  %i.r = tail call { i64, i64 } @_RNvMNtCs3gpiEk3WpjL_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !2867
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.o, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.t = icmp ult i64 %i.d, 8
  %i.u = lshr i64 %i.f, 3
  %i.v = mul nuw nsw i64 %i.u, 7
  %.sroa.07.0.i.i = select i1 %i.t, i64 %i.d, i64 %i.v
  br label %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.s, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  %i.w = load ptr, ptr %1, align 8, !alias.scope !2882, !noalias !2883, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.w, i64 %.pre-phi, i1 false), !noalias !2884
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2882, !noalias !2883, !noundef !3 ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !2885
  %i.aa = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ae = ptrtoint ptr %i.w to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.au, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown10scopeguard10ScopeGuardTjQINtNtBL_3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1W_EEENCNvMse_B1D_B1A_15clone_from_impl0EECsgO8S5jLFugx_23deltalake_catalog_unity(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #29
          to label %.body unwind label %bb.m, !noalias !2882

bb.j:                                             ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bc, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %.sroa.1015.027.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.ar, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ]
  %.sroa.013.026.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.sroa.6.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.sroa.814.024.i.i = phi i16 [ %i.ab, %.lr.ph.i.i ], [ %i.ao, %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ] ; 2 uses
  %.not12.i.i.i = icmp eq i16 %.sroa.814.024.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.ag = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.sroa.6.025.i.i, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.013.026.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.ag, align 16, !noalias !2888
  %i.ai = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -768 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ai to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.025.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.026.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.024.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.al = add i16 %.lcssa.i.i.i, -1
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = and i16 %i.al, %.lcssa.i.i.i
  %i.ap = sub nsw i64 0, %i.an
  %i.aq = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.ap ; 3 uses
  %i.ar = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2884
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -48
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2884

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.k, !noalias !2884

bb.k:                                             ; preds = %.noexc.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #29
          to label %.body.i.i unwind label %bb.l, !noalias !2884

bb.l:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !2884
  unreachable

_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %.noexc.i.i
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = sub i64 %i.ae, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 48                ; 2 uses
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !2884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  %i.bc = add nsw i64 %i.ay, 1
  %i.bd = icmp eq i64 %i.ar, 0
  br i1 %i.bd, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28, !noalias !2884
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.b) #29
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCs6Po7BT7Nknu_5alloc6string6StringB3_ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE17new_uninitializedCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2883, !noalias !2882
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !2882, !noalias !2883, !noundef !3
  store i64 %i.bg, ptr %.sroa.52.0..sroa_idx, align 8, !alias.scope !2883, !noalias !2882
end_hunk_0
begin_hunk_1_@_RNvNtCsbvkFyIu7lgC_4core9panicking5panic
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13invalid_value(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error15duplicate_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNtB28_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvNtNtCs6sYutav3ODB_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer15deserialize_anyNtNvXs19_NtB28_5implsyNtB28_11Deserialize11deserialize16PrimitiveVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs1gOyXocuPRE_10serde_core2deReNtB5_8Expected3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error14invalid_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error13missing_fieldCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1W_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBe_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1A_7Visitor9visit_mapNtB3_17___DeserializeWithB1y_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3V_4read9SliceReadEEBg_(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBe_16MsiTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1A_7Visitor9visit_seqNtB3_17___DeserializeWithB1y_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3V_4read9SliceReadEEBg_(ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtBe_21AzureCliTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1E_7Visitor9visit_mapNtB3_17___DeserializeWithB1C_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3Z_4read7StrReadEEBg_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtBe_21AzureCliTokenResponseNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB9_9___VisitorNtB1E_7Visitor9visit_seqNtB3_17___DeserializeWithB1C_11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB3Z_4read7StrReadEEBg_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials_1__NtBG_21AzureCliTokenResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_strNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_seqINtNtCseqDwI8vvjGQ_10serde_json2de9SeqAccessNtNtB24_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsj_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de7Visitor9visit_mapINtNtCseqDwI8vvjGQ_10serde_json2de9MapAccessNtNtB24_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential1__NtBG_13TokenResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentials0_1__NtBG_16MsiTokenResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss_1__NtBG_18TokenErrorResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsi_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB2h_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsi_NtNtNtCs6sYutav3ODB_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs1gOyXocuPRE_10serde_core2de15DeserializeSeed11deserializeINtNtCseqDwI8vvjGQ_10serde_json2de6MapKeyNtNtB2g_4read9SliceReadEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1K_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterhEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24), i1 noundef zeroext, i8) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE22parse_decimal_overflowB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #10

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE18parse_long_integerB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i64 noundef) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #19

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(80), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error12invalid_type(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtCseqDwI8vvjGQ_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCseqDwI8vvjGQ_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef align 8 ptr @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE22parse_decimal_overflowCsjyY8HP3IvQ6_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext, i64 noundef, i32 noundef) unnamed_addr #10

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCsjyY8HP3IvQ6_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext, i64 noundef) unnamed_addr #10

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMs3_NtCseqDwI8vvjGQ_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCsjyY8HP3IvQ6_12object_store(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(64), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json4readNtB5_9SliceReadNtB5_4Read8position(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE25insert_if_not_present_andB29_NCNvMs_NtB7_7segmentINtB50_7HashMapB1e_B29_E21insert_if_not_present0NCB4V_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, i64 noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtCseKAYRfgxGTE_14event_listener5InneruEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCs2pqxYH9ZEk8_3std7process5abort() unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB2_9RawRwLock12write_unlock(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { noinline }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { cold }
attributes #30 = { noreturn }
attributes #31 = { noinline noreturn }
attributes #32 = { inlinehint }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB1N_: argument 0"}
!7 = distinct !{!7, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB1N_"}
!8 = !{i64 0, i64 -9223372036854775802}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB37_4SendEL_EEEB16_: argument 0"}
!11 = distinct !{!11, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB37_4SendEL_EEEB16_"}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!14 = distinct !{!14, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!17 = distinct !{!17, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!18 = !{!16, !13, !10, !6}
!19 = !{i64 0, i64 -9223372036854775807}
!20 = !{i8 0, i8 23}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!23 = distinct !{!23, !"_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!26 = distinct !{!26, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity"}
!27 = !{!25, !22}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!30 = distinct !{!30, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsgO8S5jLFugx_23deltalake_catalog_unity"}
!31 = !{!29, !25, !22}
!32 = !{!33, !29, !25, !22}
!33 = distinct !{!33, !34, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!34 = distinct !{!34, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsgO8S5jLFugx_23deltalake_catalog_unity"}
!35 = !{!36, !29, !25, !22}
!36 = distinct !{!36, !37, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!37 = distinct !{!37, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtB4_3any6TypeIdEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!40 = distinct !{!40, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtB4_3any6TypeIdEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!41 = !{!42, !44, !46, !39}
!42 = distinct !{!42, !43, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!43 = distinct !{!43, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!44 = distinct !{!44, !45, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!45 = distinct !{!45, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!46 = distinct !{!46, !47, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!47 = distinct !{!47, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtB4_3any6TypeIdEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!50 = distinct !{!50, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtB4_3any6TypeIdEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!51 = !{!52, !54, !56, !49}
!52 = distinct !{!52, !53, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!53 = distinct !{!53, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!54 = distinct !{!54, !55, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!55 = distinct !{!55, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!56 = distinct !{!56, !57, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!57 = distinct !{!57, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!58 = !{i64 8}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!61 = distinct !{!61, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!64 = distinct !{!64, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3gpiEk3WpjL_9hashbrown3raw8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1n_EEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!67 = distinct !{!67, !"_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!70 = distinct !{!70, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity"}
!71 = !{!69, !66, !63, !60}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!74 = distinct !{!74, !"_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1a_EECsgO8S5jLFugx_23deltalake_catalog_unity"}
!75 = !{!73, !69, !66, !63, !60}
!76 = !{!77, !73, !69, !66, !63, !60}
!77 = distinct !{!77, !78, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!78 = distinct !{!78, !"_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBU_EE3newCsgO8S5jLFugx_23deltalake_catalog_unity"}
!79 = !{!80, !73, !69, !66, !63, !60}
!80 = distinct !{!80, !81, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!81 = distinct !{!81, !"_RINvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringBV_EE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!84 = distinct !{!84, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!85 = distinct !{!85, !86, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!86 = distinct !{!86, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2w_: argument 0"}
!89 = distinct !{!89, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2w_"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7kfTgH1B6X1_10async_lock6rwlock3raw9RawRwLockECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!92 = distinct !{!92, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7kfTgH1B6X1_10async_lock6rwlock3raw9RawRwLockECsgO8S5jLFugx_23deltalake_catalog_unity"}
!93 = !{!91, !88}
!94 = !{!95, !97, !91, !88}
!95 = distinct !{!95, !96, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!96 = distinct !{!96, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!97 = distinct !{!97, !98, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!98 = distinct !{!98, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!99 = !{!100, !102, !91, !88}
!100 = distinct !{!100, !101, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!101 = distinct !{!101, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!102 = distinct !{!102, !103, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!103 = distinct !{!103, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!104 = !{!105, !107, !91, !88}
!105 = distinct !{!105, !106, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!106 = distinct !{!106, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!107 = distinct !{!107, !108, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!108 = distinct !{!108, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2c_: argument 0"}
!111 = distinct !{!111, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2c_"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB1N_: argument 0"}
!114 = distinct !{!114, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB1N_"}
!115 = !{!113, !110, !88}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB37_4SendEL_EEEB16_: argument 0"}
!118 = distinct !{!118, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB37_4SendEL_EEEB16_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!121 = distinct !{!121, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!124 = distinct !{!124, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!125 = !{!123, !120, !117, !113, !110, !88}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!128 = distinct !{!128, !"_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtBL_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!131 = distinct !{!131, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7ArcDataINtNtBL_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!134 = distinct !{!134, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!137 = distinct !{!137, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7KeyHashNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!140 = distinct !{!140, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!143 = distinct !{!143, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!144 = !{!142, !139, !136, !133, !130}
!145 = !{!142, !139, !136, !133, !130, !127}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!148 = distinct !{!148, !"_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!149 = !{!150, !152, !147}
!150 = distinct !{!150, !151, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!151 = distinct !{!151, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!152 = distinct !{!152, !153, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!153 = distinct !{!153, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!154 = !{!155, !157}
!155 = distinct !{!155, !156, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!156 = distinct !{!156, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!157 = distinct !{!157, !158, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!158 = distinct !{!158, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!159 = !{i8 0, i8 9}
!160 = !{i64 0, i64 25}
!161 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!162 = !{i64 0, i64 -9223372036854775808}
end_hunk_1
