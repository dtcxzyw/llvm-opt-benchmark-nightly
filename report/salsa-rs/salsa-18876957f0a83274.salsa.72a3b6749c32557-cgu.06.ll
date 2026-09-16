Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.06?download=true
inline.NumInlined: 248
inline.NumDeleted: 126
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryEENCNCNCNvMs7_B1F_NtB1F_9Backtrace7capture000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callNtB1F_13CapturedQueryNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4I_3VecB4e_E14extend_trustedBN_E0E0EB1H_:bb.a
  %i.b = getelementptr inbounds i8, ptr %.sroa.2.012.i.i, i64 -184 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.sroa.2.012.i.i, i64 -2
  %i.d = load i8, ptr %i.c, align 2, !range !31, !alias.scope !32, !noalias !33, !noundef !5
  %i.e = getelementptr inbounds i8, ptr %.sroa.2.012.i.i, i64 -128
  %i.f = load i64, ptr %i.e, align 8, !range !34, !alias.scope !32, !noalias !33, !noundef !5
  %i.g = getelementptr inbounds i8, ptr %.sroa.2.012.i.i, i64 -24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !32, !noalias !33, !nonnull !5, !noundef !5
  %i.i = icmp eq ptr %i.h, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.i, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = invoke noundef i64 @_RINvNvXsp_Csa3bo7ChGFM8_8thin_vecINtB8_7ThinVecpENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone19clone_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEB1P_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtBX_13CapturedQueryuNCNCNCNvMs7_BX_NtBX_9Backtrace7capture000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3P_3VecB1J_E14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterBV_EEB24_EE0E0E0BZ_.exit.i.i unwind label %bb.d, !noalias !35

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = invoke noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE13with_capacityBK_(i64 noundef 0)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtBX_13CapturedQueryuNCNCNCNvMs7_BX_NtBX_9Backtrace7capture000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3P_3VecB1J_E14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterBV_EEB24_EE0E0E0BZ_.exit.i.i unwind label %bb.d, !noalias !35

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtBX_13CapturedQueryuNCNCNCNvMs7_BX_NtBX_9Backtrace7capture000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3P_3VecB1J_E14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterBV_EEB24_EE0E0E0BZ_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  %i.l = getelementptr inbounds i8, ptr %.sroa.2.012.i.i, i64 -16
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i.i ; 4 uses
  store i64 %i.f, ptr %i.m, align 8, !noalias !36
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.02.0.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !36
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.54.0..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.l, i64 12, i1 false), !noalias !37
  %.sroa.65.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i8 %i.d, ptr %.sroa.65.0..sroa_idx.i.i.i, align 4, !noalias !36
  %i.n = add i64 %.val7.i.i, 1                    ; 2 uses
  %i.o = icmp eq ptr %0, %i.b
  br i1 %i.o, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtB1o_13CapturedQueryuNCNCNCNvMs7_B1o_NtB1o_9Backtrace7capture000NCINvNvB2c_8for_each4callB3i_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4X_3VecB3i_E14extend_trustedINtB2V_3MapBM_B3E_EE0E0E0EB1q_.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !35
  resume { ptr, i32 } %i.p

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtB1o_13CapturedQueryuNCNCNCNvMs7_B1o_NtB1o_9Backtrace7capture000NCINvNvB2c_8for_each4callB3i_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4X_3VecB3i_E14extend_trustedINtB2V_3MapBM_B3E_EE0E0E0EB1q_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtBX_13CapturedQueryuNCNCNCNvMs7_BX_NtBX_9Backtrace7capture000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3P_3VecB1J_E14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterBV_EEB24_EE0E0E0BZ_.exit.i.i, %bb.a
  %.val5.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryNtBX_13CapturedQueryuNCNCNCNvMs7_BX_NtBX_9Backtrace7capture000NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1J_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3P_3VecB1J_E14extend_trustedINtB4_3MapINtNtB6_3rev3RevINtNtNtBa_5slice4iter4IterBV_EEB24_EE0E0E0BZ_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !35
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENCNvMsm_B27_NtB27_10QueryEdges12iter_outputs0ENCINvXs8_NtCsffXo9NmvYC7_8indexmap3setINtB3K_8IndexSetB25_INtNtBc_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtBa_6traits7collect6ExtendB25_E6extendBX_E0ENtNtB5M_8iterator8Iterator4folduNCINvNvB6v_8for_each4callTB25_uENCINvXsb_NtB3M_3mapINtB7G_8IndexMapB25_uB4x_EIB5I_B7q_E6extendBN_E0E0EB29_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(56) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_6filter11filter_foldB1s_uNCNvMsm_B1u_NtB1u_10QueryEdges12iter_outputs0NCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXs8_NtCsffXo9NmvYC7_8indexmap3setINtB4S_8IndexSetB1s_INtNtBb_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtB2i_7collect6ExtendB1s_E6extendINtB2X_6FilterBP_B3r_EE0NCINvNvB2e_8for_each4callB4B_NCINvXsb_NtB4U_3mapINtB8p_8IndexMapB1s_uB5F_EIB6Q_B4B_E6extendINtB4f_3MapB7p_B4J_EE0E0E0E0EB1w_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB1w_15LazyMemoEntries10initialize0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callNtB1w_9MemoEntryNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB47_3VecB3I_E14extend_trustedBN_E0E0EB1A_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryuNCNvMs_B27_NtB27_15LazyMemoEntries10initialize0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4c_3VecB25_E14extend_trustedINtB1B_3MapB3_B2Q_EE0E0E0EB2b_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.b = shl i64 %.sroa.4.0.copyload, 3
  %scevgep.i = getelementptr nuw i8, ptr %.sroa.6.0.copyload, i64 %i.b
  %i.c = sub nuw i64 %1, %0                       ; 2 uses
  %i.d = shl i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.d, i1 false), !noalias !46
  %i.e = add i64 %i.c, %.sroa.4.0.copyload
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryuNCNvMs_B27_NtB27_15LazyMemoEntries10initialize0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4c_3VecB25_E14extend_trustedINtB1B_3MapB3_B2Q_EE0E0E0EB2b_.exit

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryuNCNvMs_B27_NtB27_15LazyMemoEntries10initialize0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4c_3VecB25_E14extend_trustedINtB1B_3MapB3_B2Q_EE0E0E0EB2b_.exit: ; preds = %bb.a, %.lr.ph.i
  %.val5.i = phi i64 [ %i.e, %.lr.ph.i ], [ %.sroa.4.0.copyload, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !47
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsC8CapfvpQ1_5salsa8interned10new_shardss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtB1t_15IngredientShardEENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6g_3VecB3g_E14extend_trustedBN_E0E0EB1v_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.04.sroa.4.i.i.i = alloca [39 x i8], align 1 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEuNCNvB4z_10new_shardss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6l_3VecB25_E14extend_trustedINtB1B_3MapB3_B5n_EE0E0E0EB4B_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.04.sroa.4.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.sroa.4.i.i.i, i64 7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.b = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.011.i = phi i64 [ %0, %.lr.ph.i ], [ %i.c, %bb.b ]
  %i.c = add nuw i64 %.sroa.0.011.i, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.04.sroa.4.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false), !noalias !56
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %.sroa.6.0.copyload, i64 %i.b ; 3 uses
  store i8 0, ptr %i.d, align 128, !noalias !57
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.43.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.04.sroa.4.i.i.i, i64 39, i1 false), !noalias !56
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !56
  %i.e = add i64 %i.b, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.sroa.4.i.i.i)
  %exitcond.not.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEuNCNvB4z_10new_shardss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6l_3VecB25_E14extend_trustedINtB1B_3MapB3_B5n_EE0E0E0EB4B_.exit, label %bb.b

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEuNCNvB4z_10new_shardss_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6l_3VecB25_E14extend_trustedINtB1B_3MapB3_B5n_EE0E0E0EB4B_.exit: ; preds = %bb.b, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.e, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !58
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXst_Csi1wr4QBDb3z_8smallvecINtB6_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters3map3MapINtNtNtB1I_3ops5range5RangejENCNvMse_NtBN_8internedNtB3G_13RevisionQueue3new0EEBN_(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !74, !noalias !75, !noundef !5 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !76
  %i.e = select i1 %i.c, i64 %.val.i, i64 %i.b    ; 3 uses
  %i.f = sub i64 %.sink.i.i, %i.e
  %.not.i = icmp ult i64 %i.f, %spec.select.i.i
  br i1 %.not.i, label %bb.b, label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, %spec.select.i.i           ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit.thread, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.g, 2
  %i.j = add i64 %i.g, -1
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 true)
  %i.l = lshr i64 -1, %i.k
  %.sroa.010.0.i = select i1 %i.i, i64 0, i64 %i.l ; 2 uses
  %i.m = icmp eq i64 %.sroa.010.0.i, -1
  br i1 %i.m, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit.thread, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit, !prof !8

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit: ; preds = %bb.c
  %i.n = add nuw i64 %.sroa.010.0.i, 1
  %i.o = tail call fastcc { i64, i64 } @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E8try_growBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.n) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0        ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 -1, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit._RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit_crit_edge
    i64 0, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit.thread
  ], !prof !77

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit._RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit_crit_edge: ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit
  %.pre = load i64, ptr %i.a, align 8, !alias.scope !78, !noalias !79
  br label %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit
  %i.q = extractvalue { i64, i64 } %i.o, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.p, i64 noundef %i.q) #26
  unreachable

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
  unreachable

_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit: ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit._RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit_crit_edge, %bb.a
  %i.r = phi i64 [ %.pre, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E11try_reserveBM_.exit._RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.s = icmp ugt i64 %i.r, 3
  br i1 %i.s, label %bb.e, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit

bb.e:                                             ; preds = %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !78, !noalias !79, !nonnull !5, !noundef !5
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit: ; preds = %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit, %bb.e
  %.sink11.i = phi ptr [ %i.u, %bb.e ], [ %i.d, %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit ] ; 2 uses
  %.sink10.i = phi ptr [ %i.d, %bb.e ], [ %i.a, %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit ] ; 3 uses
  %.sink.i15 = phi i64 [ %i.r, %bb.e ], [ 3, %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit ] ; 4 uses
  %i.v = load i64, ptr %.sink10.i, align 8, !noundef !5 ; 6 uses
  %i.w = icmp ult i64 %i.v, %.sink.i15
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %1) ; 2 uses
  %i.x = xor i64 %i.v, -1
  %i.y = add i64 %.sink.i15, %i.x
  %i.z = sub i64 %umax, %1
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.z)
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 5
  br i1 %min.iters.check, label %.lr.ph.preheader74, label %vector.ph

.lr.ph.preheader74:                               ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.0.052.ph = phi i64 [ %1, %.lr.ph.preheader ], [ %3, %vector.body ]
  %.sroa.7.051.ph = phi i64 [ %i.v, %.lr.ph.preheader ], [ %4, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.ac = and i64 %i.ab, 3                        ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 4, i64 %i.ac
  %n.vec = sub i64 %i.ab, %i.ae                   ; 3 uses
  %3 = add i64 %1, %n.vec
  %4 = add i64 %i.v, %n.vec
  %i.af = getelementptr [8 x i8], ptr %.sink11.i, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ag, align 8
  store <2 x i64> splat (i64 1), ptr %i.ah, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %.lr.ph.preheader74, label %vector.body, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.i, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.v, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit ], [ %.sink.i15, %bb.i ]
  %.sroa.0.0.lcssa = phi i64 [ %1, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit ], [ %i.aw, %bb.i ] ; 2 uses
  store i64 %.sroa.7.0.lcssa, ptr %.sink10.i, align 8
  %i.aj = icmp ult i64 %.sroa.0.0.lcssa, %2
  br i1 %i.aj, label %.lr.ph56, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit17

.lr.ph56:                                         ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader74, %bb.i
  %.sroa.0.052 = phi i64 [ %i.aw, %bb.i ], [ %.sroa.0.052.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.sroa.7.051 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.7.051.ph, %.lr.ph.preheader74 ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.0.052, %umax
  br i1 %exitcond.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit, label %bb.i

bb.f:                                             ; preds = %.lr.ph56, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit
  %.sroa.034.054 = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph56 ], [ %i.al, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit ]
  %i.al = add i64 %.sroa.034.054, 1               ; 2 uses
  %i.am = load i64, ptr %i.a, align 8, !alias.scope !82, !noalias !83, !noundef !5 ; 3 uses
  %i.an = icmp ugt i64 %i.am, 3
  br i1 %i.an, label %bb.g, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.ak, align 8, !alias.scope !82, !noalias !83, !nonnull !5, !noundef !5
  %.pre62 = load i64, ptr %i.d, align 8, !alias.scope !84
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i: ; preds = %bb.f, %bb.g
  %i.ap = phi i64 [ %.pre62, %bb.g ], [ %i.am, %bb.f ] ; 2 uses
  %.sink11.i.i = phi ptr [ %i.ao, %bb.g ], [ %i.d, %bb.f ]
  %.sink10.i.i = phi ptr [ %i.d, %bb.g ], [ %i.a, %bb.f ]
  %.sink.i.i18 = phi i64 [ %i.am, %bb.g ], [ 3, %bb.f ]
  %i.aq = icmp eq i64 %i.ap, %.sink.i.i18
  br i1 %i.aq, label %bb.h, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit, !prof !8

bb.h:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i
  tail call fastcc void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  %i.ar = load ptr, ptr %i.ak, align 8, !alias.scope !84, !nonnull !5, !noundef !5
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !84
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit: ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i, %bb.h
  %i.as = phi i64 [ %.pre.i, %bb.h ], [ %i.ap, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.d, %bb.h ], [ %.sink10.i.i, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i ] ; 2 uses
  %.sroa.08.0.i = phi ptr [ %i.ar, %bb.h ], [ %.sink11.i.i, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.08.0.i, i64 %i.as
  store i64 1, ptr %i.at, align 8
  %i.au = load i64, ptr %.sroa.04.0.i, align 8, !alias.scope !84, !noundef !5
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %.sroa.04.0.i, align 8, !alias.scope !84
  %exitcond60.not = icmp eq i64 %i.al, %2
  br i1 %exitcond60.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit17, label %bb.f

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit17: ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit, %._crit_edge, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit
  ret void

bb.i:                                             ; preds = %.lr.ph
  %i.aw = add i64 %.sroa.0.052, 1                 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i, i64 %.sroa.7.051
  store i64 1, ptr %i.ax, align 8
  %i.ay = add i64 %.sroa.7.051, 1                 ; 2 uses
  %exitcond59.not = icmp eq i64 %i.ay, %.sink.i15
  br i1 %exitcond59.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit: ; preds = %.lr.ph
  store i64 %.sroa.7.051, ptr %.sink10.i, align 8
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit17
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !144
  call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !145
  %i.f = load i8, ptr %i.b, align 8, !range !146, !noalias !144, !noundef !5 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not17.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.812.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.l ] ; 4 uses
  %.sroa.59.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !144 ; 2 uses
  %.sroa.711.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !144 ; 10 uses
  %.sroa.812.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.812.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !144 ; 10 uses
  %.sroa.913.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !144 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !144 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !148
  %i.h = load i8, ptr %i.a, align 8, !range !146, !noalias !147, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !147 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !147 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !147 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !147 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !147 ; 2 uses
  %i.i = icmp samesign ugt i8 %i.g, 5
  %i.j = zext nneg i8 %i.g to i64
  %i.k = add nsw i64 %i.j, -5
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 2 uses
  %i.m = icmp samesign ugt i8 %i.h, 5
  %i.n = zext nneg i8 %i.h to i64
  %i.o = add nsw i64 %i.n, -5
  %i.p = select i1 %i.m, i64 %i.o, i64 0
  %i.q = icmp eq i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  switch i64 %i.l, label %bb.l [
    i64 0, label %bb.e
    i64 4, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.g, %i.h
  br i1 %i.r, label %bb.f, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  switch i8 %i.g, label %default.unreachable42.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %.split26.i.i.i.i.i.i.i.i
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %.split32.i.i.i.i.i.i.i.i
  ]

default.unreachable42.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.s, label %.split30.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split30.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.711.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.711.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.812.0.copyload.i.i.i.i.i.i), !alias.scope !149, !noalias !150
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.u, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit27.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit27.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.711.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.711.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.812.0.copyload.i.i.i.i.i.i), !alias.scope !151, !noalias !150
  %i.v = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.w = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.split28.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split26.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  %i.x = icmp eq i8 %.sroa.59.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i
  %cond.fr27.i.i.i.i.i.i.i.i = freeze i1 %i.x
  br i1 %cond.fr27.i.i.i.i.i.i.i.i, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.y, label %.split.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.711.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.711.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.812.0.copyload.i.i.i.i.i.i), !alias.scope !152, !noalias !150
  %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i
  %i.z = icmp eq i32 %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
end_hunk_0
