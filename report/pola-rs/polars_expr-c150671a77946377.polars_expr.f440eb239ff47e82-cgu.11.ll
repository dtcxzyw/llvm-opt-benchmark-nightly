inline.NumInlined: 9010
inline.NumDeleted: 3867
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvXs1_NtNtCs8774dFTUdNv_12polars_arrow5array20static_array_collectINtNtB8_9primitive14PrimitiveArrayxEINtB6_13ArrayFromIterINtNtCscgRAwXFJnXP_4core6option6OptionxEE17try_arr_from_iterNtCsgjwxzEoLG5s_12polars_error11PolarsErrorINtNtNtNtB24_4iter8adapters3map3MapINtNtB3J_3zip3ZipIB4e_IB4e_IB4e_IB4e_IB4e_INtNtBa_11trusted_len13TrustMyLengthINtNtB3J_7flatten7FlatMapIB3F_INtNtNtB24_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB8_5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB7p_12ChunkedArrayNtNtB7r_9datatypes9Int32TypeE13downcast_iter0EINtNtNtNtBa_6bitmap5utils12zip_validity11ZipValiditylINtNtB3J_6copied6CopiedIB5Y_lEENtNtB9u_8iterator10BitmapIterENCNvMNtB7p_8iteratorB8k_4iter0EIB20_lEEIB4U_IB5u_IB3F_B5X_NCNvMs_B7l_IB8l_NtB8H_8Int8TypeE13downcast_iter0EIB9q_aIBah_IB5Y_aEEBaL_ENCNvMBbk_Bcm_4iter0EIB20_aEEEBbS_EBbS_EBbS_EBbS_EB4T_ENCNvYINtNtB7p_7logical7LogicalNtB8H_12DatetimeTypeNtB8H_9Int64TypeENtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray8datetime15DatetimeMethods14new_from_parts0EECskY9G75ZWc4U_11polars_expr:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !147456 ; 4 uses
  store ptr %i.ac, ptr %i.ae, align 8, !dbg !147456
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !147456 ; 6 uses
  store i64 0, ptr %i.af, align 8, !dbg !147456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !147457
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.h unwind label %bb.g, !dbg !147459

bb.f:                                             ; preds = %.thread150
  br i1 %.sroa.026.1154, label %.thread, label %common.resume, !dbg !147460

bb.g:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.h:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.3.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.t, i64 152, !dbg !147461 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !147461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.3.0..sroa_idx101, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.6.0..sroa_idx71, i64 144, i1 false), !dbg !147461
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 304, !dbg !147461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5103.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.775.0..sroa_idx76, i64 160, i1 false), !dbg !147461
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 472, !dbg !147461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.7105.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.8.0..sroa_idx80, i64 160, i1 false), !dbg !147461
  %.sroa.9107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 640, !dbg !147461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9107.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx84, i64 160, i1 false), !dbg !147461
  %.sroa.11109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 808, !dbg !147461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.11109.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.1088.0..sroa_idx89, i64 160, i1 false), !dbg !147461
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 976, !dbg !147461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.11.0..sroa_idx93, i64 160, i1 false), !dbg !147461
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1144, !dbg !147461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx97, i64 24, i1 false), !dbg !147461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.t, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false), !dbg !147461
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 144, !dbg !147461
  store i64 %.sroa.568.0.copyload70, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !147461
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 296, !dbg !147461
  store i64 %.sroa.672.0.copyload74, ptr %.sroa.4102.0..sroa_idx, align 8, !dbg !147461
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 464, !dbg !147461
  store i64 %.sroa.777.0.copyload79, ptr %.sroa.6104.0..sroa_idx, align 8, !dbg !147461
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 632, !dbg !147461
  store i64 %.sroa.881.0.copyload83, ptr %.sroa.8106.0..sroa_idx, align 8, !dbg !147461
  %.sroa.10108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 800, !dbg !147461
  store i64 %.sroa.985.0.copyload87, ptr %.sroa.10108.0..sroa_idx, align 8, !dbg !147461
  %.sroa.12110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 968, !dbg !147461
  store i64 %.sroa.1090.0.copyload92, ptr %.sroa.12110.0..sroa_idx, align 8, !dbg !147461
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1136, !dbg !147461
  store i64 %.sroa.1194.0.copyload96, ptr %.sroa.14.0..sroa_idx, align 8, !dbg !147461
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 488
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 824
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 992
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 1160
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %.sroa.8113.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.9114.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !147463

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.backedge, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !147465), !dbg !147468
  %i.az = invoke fastcc { i32, i32 } @_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes9Int32TypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValiditylINtNtB1c_6copied6CopiedIB2l_lEENtNtB5Z_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionlEENtNtNtB1e_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(1168) %i.t) #49
          to label %.noexc unwind label %.loopexit.loopexit, !dbg !147469 ; 2 uses

.noexc:                                           ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  %i.ba = extractvalue { i32, i32 } %i.az, 0, !dbg !147469 ; 2 uses
  %i.bb = extractvalue { i32, i32 } %i.az, 1, !dbg !147469 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ba, 2, !dbg !147496
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.i, !dbg !147499

bb.i:                                             ; preds = %.noexc
  %i.bc = invoke fastcc { i8, i8 } @_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes8Int8TypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityaINtNtB1c_6copied6CopiedIB2l_aEENtNtB5Y_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionaEENtNtNtB1e_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(152) %.sroa.3.0..sroa_idx101)
          to label %.noexc51 unwind label %.loopexit.loopexit, !dbg !147500 ; 2 uses

.noexc51:                                         ; preds = %bb.i
  %i.bd = extractvalue { i8, i8 } %i.bc, 0, !dbg !147502 ; 2 uses
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bd, 2, !dbg !147503
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.j, !dbg !147506

bb.j:                                             ; preds = %.noexc51
  %i.be = invoke fastcc { i8, i8 } @_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes8Int8TypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityaINtNtB1c_6copied6CopiedIB2l_aEENtNtB5Y_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionaEENtNtNtB1e_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(152) %i.ah)
          to label %.noexc52 unwind label %.loopexit.loopexit, !dbg !147507 ; 2 uses

.noexc52:                                         ; preds = %bb.j
  %i.bf = extractvalue { i8, i8 } %i.be, 0, !dbg !147509 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bf, 2, !dbg !147510
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.k, !dbg !147513

bb.k:                                             ; preds = %.noexc52
  %i.bg = invoke fastcc { i8, i8 } @_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes8Int8TypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityaINtNtB1c_6copied6CopiedIB2l_aEENtNtB5Y_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionaEENtNtNtB1e_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(152) %i.ai)
          to label %.noexc53 unwind label %.loopexit.loopexit, !dbg !147514 ; 2 uses

.noexc53:                                         ; preds = %bb.k
  %i.bh = extractvalue { i8, i8 } %i.bg, 0, !dbg !147516 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bh, 2, !dbg !147517
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.l, !dbg !147520

bb.l:                                             ; preds = %.noexc53
  %i.bi = invoke fastcc { i8, i8 } @_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes8Int8TypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityaINtNtB1c_6copied6CopiedIB2l_aEENtNtB5Y_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionaEENtNtNtB1e_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(152) %i.aj)
          to label %.noexc54 unwind label %.loopexit.loopexit, !dbg !147521 ; 2 uses

.noexc54:                                         ; preds = %bb.l
  %i.bj = extractvalue { i8, i8 } %i.bi, 0, !dbg !147523 ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq i8 %i.bj, 2, !dbg !147524
  br i1 %.not10.i.i.i.i.i.i.i, label %bb.ae, label %bb.m, !dbg !147527

bb.m:                                             ; preds = %.noexc54
  %i.bk = invoke fastcc { i8, i8 } @_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes8Int8TypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValidityaINtNtB1c_6copied6CopiedIB2l_aEENtNtB5Y_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionaEENtNtNtB1e_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(152) %i.ak)
          to label %.noexc55 unwind label %.loopexit.loopexit, !dbg !147528 ; 2 uses

.noexc55:                                         ; preds = %bb.m
  %i.bl = extractvalue { i8, i8 } %i.bk, 0, !dbg !147530 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i8 %i.bl, 2, !dbg !147531
  br i1 %.not10.i.i.i.i.i, label %bb.ae, label %bb.n, !dbg !147534

bb.n:                                             ; preds = %.noexc55
  %i.bm = invoke fastcc { i32, i32 } @_RNvXsr_NtCs8774dFTUdNv_12polars_arrow11trusted_lenINtB5_13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten7FlatMapINtNtB1c_3map3MapINtNtNtB1g_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB7_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3U_12ChunkedArrayNtNtB3W_9datatypes9Int32TypeE13downcast_iter0EINtNtNtNtB7_6bitmap5utils12zip_validity11ZipValiditylINtNtB1c_6copied6CopiedIB2l_lEENtNtB5Z_8iterator10BitmapIterENCNvMNtB3U_8iteratorB4P_4iter0EINtNtB1g_6option6OptionlEENtNtNtB1e_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(152) %i.al)
          to label %.noexc56 unwind label %.loopexit.loopexit, !dbg !147535 ; 2 uses

.noexc56:                                         ; preds = %bb.n
  %i.bn = extractvalue { i32, i32 } %i.bm, 0, !dbg !147537 ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.bn, 2, !dbg !147538
  br i1 %.not9.i.i.i, label %bb.ae, label %bb.o, !dbg !147541

bb.o:                                             ; preds = %.noexc56
  %i.bo = extractvalue { i8, i8 } %i.bk, 1, !dbg !147530 ; 4 uses
  %i.bp = extractvalue { i8, i8 } %i.bg, 1, !dbg !147516 ; 3 uses
  %i.bq = extractvalue { i8, i8 } %i.bc, 1, !dbg !147502 ; 2 uses
  %i.br = extractvalue { i8, i8 } %i.be, 1, !dbg !147509 ; 2 uses
  %i.bs = extractvalue { i8, i8 } %i.bi, 1, !dbg !147523 ; 3 uses
  %i.bt = extractvalue { i32, i32 } %i.bm, 1, !dbg !147537 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !147542, !noalias !147546
  %.val.i = load ptr, ptr %i.am, align 8, !dbg !147548, !alias.scope !147465, !noalias !147551 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !147552), !dbg !147548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !147555, !noalias !147546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !147555, !noalias !147546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !147555, !noalias !147546
  %i.bu = trunc nuw i32 %i.ba to i1, !dbg !147562
  br i1 %i.bu, label %bb.p, label %.thread143, !dbg !147562

bb.p:                                             ; preds = %bb.o
  %i.bv = trunc nuw i8 %i.bl to i1, !dbg !147565
  %i.bw = and i8 %i.bf, %i.bd, !dbg !147562
  %.not.i.i = icmp ne i8 %i.bw, 0, !dbg !147562
  %i.bx = and i8 %i.bj, %i.bh, !dbg !147562
  %i.by = icmp ne i8 %i.bx, 0, !dbg !147562
  %brmerge24.not.i.i = and i1 %.not.i.i, %i.by, !dbg !147562
  %brmerge26.not4.i.i = and i1 %brmerge24.not.i.i, %i.bv, !dbg !147562
  %i.bz = trunc nuw i32 %i.bn to i1, !dbg !147562
  %or.cond.i.i = and i1 %brmerge26.not4.i.i, %i.bz, !dbg !147562
  br i1 %or.cond.i.i, label %bb.q, label %.thread143, !dbg !147562

.thread143:                                       ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !147566, !noalias !147546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !147566, !noalias !147546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !147566, !noalias !147546
  br label %bb.aw, !dbg !147567

bb.q:                                             ; preds = %bb.p
  store i32 %i.bb, ptr %i.k, align 4, !dbg !147571, !noalias !147572
  store i8 %i.bq, ptr %i.j, align 1, !dbg !147574, !noalias !147572
  store i8 %i.br, ptr %i.i, align 1, !dbg !147575, !noalias !147572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !147576, !noalias !147572
  store i8 %i.bp, ptr %i.h, align 1, !dbg !147576, !noalias !147572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !147577, !noalias !147572
  store i8 %i.bs, ptr %i.g, align 1, !dbg !147577, !noalias !147572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !147578, !noalias !147572
  store i8 %i.bo, ptr %i.f, align 1, !dbg !147578, !noalias !147572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !147579, !noalias !147572
  store i32 %i.bt, ptr %i.e, align 4, !dbg !147579, !noalias !147572
  %i.ca = sext i8 %i.bq to i32, !dbg !147580
  %i.cb = sext i8 %i.br to i32, !dbg !147581
  %i.cc = invoke noundef i32 @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate12from_ymd_opt(i32 noundef %i.bb, i32 noundef %i.ca, i32 noundef %i.cb)
          to label %.noexc57 unwind label %.loopexit.loopexit, !dbg !147582 ; 5 uses

.noexc57:                                         ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !147583), !dbg !147586
  %.not.i.i.i = icmp eq i32 %i.cc, 0, !dbg !147587
  br i1 %.not.i.i.i, label %bb.ac, label %bb.r, !dbg !147590

bb.r:                                             ; preds = %.noexc57
  call void @llvm.experimental.noalias.scope.decl(metadata !147591), !dbg !147594
  %2 = zext nneg i8 %i.bp to i32, !dbg !147596
  %3 = zext nneg i8 %i.bs to i32, !dbg !147600
  %4 = zext nneg i8 %i.bo to i32, !dbg !147601
  %i.cd = icmp ugt i8 %i.bp, 23, !dbg !147602
  %i.ce = icmp ugt i8 %i.bs, 59
  %or.cond.i.i.i.i.i = or i1 %i.cd, %i.ce, !dbg !147602
  %i.cf = icmp ugt i8 %i.bo, 59
  %or.cond1.i.i.i.i.i = or i1 %or.cond.i.i.i.i.i, %i.cf, !dbg !147602
  br i1 %or.cond1.i.i.i.i.i, label %bb.ab, label %bb.s, !dbg !147602

bb.s:                                             ; preds = %bb.r
  %i.cg = icmp ugt i32 %i.bt, 999999999, !dbg !147615
  br i1 %i.cg, label %bb.t, label %bb.u, !dbg !147615

bb.t:                                             ; preds = %bb.s
  %i.ch = icmp ne i8 %i.bo, 59, !dbg !147616
  %i.ci = icmp ugt i32 %i.bt, 1999999999
  %or.cond2.i.i.i.i.i = or i1 %i.ch, %i.ci, !dbg !147616
  br i1 %or.cond2.i.i.i.i.i, label %bb.ab, label %bb.u, !dbg !147616

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cj = mul nuw nsw i32 %2, 3600, !dbg !147617
  %i.ck = mul nuw nsw i32 %3, 60, !dbg !147618
  %i.cl = add nuw nsw i32 %i.ck, %i.cj, !dbg !147617
  %i.cm = add nuw nsw i32 %i.cl, %4, !dbg !147617 ; 3 uses
  %.val1.i.i.i.i = load i8, ptr %.val.i, align 1, !dbg !147619, !noalias !147620
  call void @llvm.experimental.noalias.scope.decl(metadata !147624), !dbg !147619
  %i.cn = ashr i32 %i.cc, 13, !dbg !147627        ; 5 uses
  %i.co = add nsw i32 %i.cn, -1, !dbg !147627     ; 6 uses
  %i.cp = icmp slt i32 %i.cn, 1, !dbg !147627     ; 3 uses
  switch i8 %.val1.i.i.i.i, label %default.unreachable.i.i.i.i.i.i [
    i8 0, label %bb.v
    i8 1, label %bb.x
    i8 2, label %bb.z
  ], !dbg !147635

default.unreachable.i.i.i.i.i.i:                  ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.w, label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i.i.i.i.i, !dbg !147636

bb.w:                                             ; preds = %bb.v
  %i.cq = sub nsw i32 1, %i.cn, !dbg !147648
  %i.cr = udiv i32 %i.cq, 400, !dbg !147648
  %i.cs = add nuw nsw i32 %i.cr, 1, !dbg !147649  ; 2 uses
  %i.ct = mul nuw nsw i32 %i.cs, 400, !dbg !147650
  %i.cu = add nsw i32 %i.ct, %i.co, !dbg !147652
  %.neg.i.i.i.i.i.i.i.i = mul nsw i32 %i.cs, -146097, !dbg !147653
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i.i.i.i.i, !dbg !147654

_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.sroa.05.0.i.i.i.i.i.i.i.i = phi i32 [ %.neg.i.i.i.i.i.i.i.i, %bb.w ], [ 0, %bb.v ], !dbg !147655
  %.sroa.0.0.i.i.i.i.i.i.i.i50 = phi i32 [ %i.cu, %bb.w ], [ %i.co, %bb.v ], !dbg !147656 ; 2 uses
  %i.cv = sdiv i32 %.sroa.0.0.i.i.i.i.i.i.i.i50, 100, !dbg !147657 ; 2 uses
  %i.cw = mul nsw i32 %.sroa.0.0.i.i.i.i.i.i.i.i50, 1461, !dbg !147658
  %i.cx = ashr i32 %i.cw, 2, !dbg !147660
  %i.cy = ashr i32 %i.cv, 2, !dbg !147661
  %i.cz = lshr i32 %i.cc, 4, !dbg !147662
  %i.da = and i32 %i.cz, 511, !dbg !147662
  %i.db = zext nneg i32 %i.cm to i64, !dbg !147665
  %i.dc = add nuw nsw i32 %i.da, -719163, !dbg !147660
  %i.dd = add nsw i32 %i.dc, %.sroa.05.0.i.i.i.i.i.i.i.i, !dbg !147660
  %i.de = sub nsw i32 %i.dd, %i.cv, !dbg !147667
  %i.df = add nsw i32 %i.de, %i.cx, !dbg !147668
  %narrow.i.i.i.i.i.i.i = add nsw i32 %i.df, %i.cy, !dbg !147669
  %i.dg = sext i32 %narrow.i.i.i.i.i.i.i to i64, !dbg !147669
  %i.dh = mul nsw i64 %i.dg, 86400, !dbg !147669
  %i.di = add nsw i64 %i.dh, %i.db, !dbg !147669  ; 3 uses
  %.lobit.i.i.i.i.i.i.i = lshr i64 %i.di, 63, !dbg !147671
  %.sroa.01.0.i.i.i.i.i.i.i = add nsw i64 %.lobit.i.i.i.i.i.i.i, %i.di, !dbg !147671
  %i.dj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.01.0.i.i.i.i.i.i.i, i64 1000000000), !dbg !147674 ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 1, !dbg !147674
  br i1 %i.dk, label %_RNvMNtCs9o5SvTbM2BP_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE19timestamp_nanos_optCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i.i.i, label %_RNvMNtCs9o5SvTbM2BP_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE19timestamp_nanos_optCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !147679, !prof !395

_RNvMNtCs9o5SvTbM2BP_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE19timestamp_nanos_optCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i.i.i.i.i
  %i.dl = icmp slt i64 %i.di, 0, !dbg !147671
  %i.dm = zext nneg i32 %i.bt to i64, !dbg !147683 ; 2 uses
  %i.dn = add nsw i64 %i.dm, -1000000000, !dbg !147671
  %.sroa.04.0.i.i.i.i.i.i.i = select i1 %i.dl, i64 %i.dn, i64 %i.dm, !dbg !147671
  %i.do = extractvalue { i64, i1 } %i.dj, 0, !dbg !147674
  %i.dp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.do, i64 %.sroa.04.0.i.i.i.i.i.i.i), !dbg !147684 ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 1, !dbg !147684
  %i.dr = extractvalue { i64, i1 } %i.dp, 0, !dbg !147689
  br i1 %i.dq, label %_RNvMNtCs9o5SvTbM2BP_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE19timestamp_nanos_optCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i.i.i, label %bb.ad, !dbg !147692, !prof !147695

bb.x:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.y, label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i.i.i.i, !dbg !147696

bb.y:                                             ; preds = %bb.x
  %i.ds = sub nsw i32 1, %i.cn, !dbg !147702
  %i.dt = udiv i32 %i.ds, 400, !dbg !147702
  %i.du = add nuw nsw i32 %i.dt, 1, !dbg !147703  ; 2 uses
  %i.dv = mul nuw nsw i32 %i.du, 400, !dbg !147704
  %i.dw = add nsw i32 %i.dv, %i.co, !dbg !147705
  %.neg.i.i.i.i.i.i.i = mul nsw i32 %i.du, -146097, !dbg !147706
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i.i.i.i, !dbg !147707

_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.05.0.i.i.i.i.i.i.i = phi i32 [ %.neg.i.i.i.i.i.i.i, %bb.y ], [ 0, %bb.x ], !dbg !147708
  %.sroa.0.0.i5.i.i.i.i.i.i = phi i32 [ %i.dw, %bb.y ], [ %i.co, %bb.x ], !dbg !147709 ; 2 uses
  %i.dx = sdiv i32 %.sroa.0.0.i5.i.i.i.i.i.i, 100, !dbg !147710 ; 2 uses
  %i.dy = mul nsw i32 %.sroa.0.0.i5.i.i.i.i.i.i, 1461, !dbg !147711
  %i.dz = ashr i32 %i.dy, 2, !dbg !147712
  %i.ea = ashr i32 %i.dx, 2, !dbg !147713
  %i.eb = lshr i32 %i.cc, 4, !dbg !147714
  %i.ec = and i32 %i.eb, 511, !dbg !147714
  %i.ed = zext nneg i32 %i.cm to i64, !dbg !147716
  %i.ee = add nuw nsw i32 %i.ec, -719163, !dbg !147712
  %i.ef = add nsw i32 %i.ee, %.sroa.05.0.i.i.i.i.i.i.i, !dbg !147712
  %i.eg = sub nsw i32 %i.ef, %i.dx, !dbg !147718
  %i.eh = add nsw i32 %i.eg, %i.dz, !dbg !147719
  %narrow3.i.i.i.i.i.i = add nsw i32 %i.eh, %i.ea, !dbg !147720
  %i.ei = sext i32 %narrow3.i.i.i.i.i.i to i64, !dbg !147720
  %i.ej = mul nsw i64 %i.ei, 86400, !dbg !147720
  %i.ek = add nsw i64 %i.ej, %i.ed, !dbg !147720
  %i.el = mul i64 %i.ek, 1000000, !dbg !147722
  %i.em = udiv i32 %i.bt, 1000, !dbg !147723
  %i.en = zext nneg i32 %i.em to i64, !dbg !147727
  %i.eo = add i64 %i.el, %i.en, !dbg !147728
  br label %bb.ad, !dbg !147729

bb.z:                                             ; preds = %bb.u
  br i1 %i.cp, label %bb.aa, label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit9.i.i.i.i.i.i, !dbg !147730

bb.aa:                                            ; preds = %bb.z
  %i.ep = sub nsw i32 1, %i.cn, !dbg !147735
  %i.eq = udiv i32 %i.ep, 400, !dbg !147735
  %i.er = add nuw nsw i32 %i.eq, 1, !dbg !147736  ; 2 uses
  %i.es = mul nuw nsw i32 %i.er, 400, !dbg !147737
  %i.et = add nsw i32 %i.es, %i.co, !dbg !147738
  %.neg.i8.i.i.i.i.i.i = mul nsw i32 %i.er, -146097, !dbg !147739
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit9.i.i.i.i.i.i, !dbg !147740

_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit9.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.05.0.i6.i.i.i.i.i.i = phi i32 [ %.neg.i8.i.i.i.i.i.i, %bb.aa ], [ 0, %bb.z ], !dbg !147741
  %.sroa.0.0.i7.i.i.i.i.i.i = phi i32 [ %i.et, %bb.aa ], [ %i.co, %bb.z ], !dbg !147742 ; 2 uses
  %i.eu = sdiv i32 %.sroa.0.0.i7.i.i.i.i.i.i, 100, !dbg !147743 ; 2 uses
  %i.ev = mul nsw i32 %.sroa.0.0.i7.i.i.i.i.i.i, 1461, !dbg !147744
  %i.ew = ashr i32 %i.ev, 2, !dbg !147745
  %i.ex = ashr i32 %i.eu, 2, !dbg !147746
  %i.ey = lshr i32 %i.cc, 4, !dbg !147747
  %i.ez = and i32 %i.ey, 511, !dbg !147747
  %i.fa = zext nneg i32 %i.cm to i64, !dbg !147749
  %i.fb = add nuw nsw i32 %i.ez, -719163, !dbg !147745
  %i.fc = add nsw i32 %i.fb, %.sroa.05.0.i6.i.i.i.i.i.i, !dbg !147745
  %i.fd = sub nsw i32 %i.fc, %i.eu, !dbg !147751
  %i.fe = add nsw i32 %i.fd, %i.ew, !dbg !147752
  %narrow.i.i.i.i.i.i = add nsw i32 %i.fe, %i.ex, !dbg !147753
  %i.ff = sext i32 %narrow.i.i.i.i.i.i to i64, !dbg !147753
  %i.fg = mul nsw i64 %i.ff, 86400, !dbg !147753
  %i.fh = add nsw i64 %i.fg, %i.fa, !dbg !147753
  %i.fi = mul nsw i64 %i.fh, 1000, !dbg !147755
  %i.fj = udiv i32 %i.bt, 1000000, !dbg !147756
  %i.fk = zext nneg i32 %i.fj to i64, !dbg !147760
  %i.fl = add nsw i64 %i.fi, %i.fk, !dbg !147761
  br label %bb.ad, !dbg !147762

_RNvMNtCs9o5SvTbM2BP_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE19timestamp_nanos_optCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMNtCs9o5SvTbM2BP_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE19timestamp_nanos_optCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #47
          to label %.noexc58 unwind label %.loopexit.split-lp, !dbg !147763

.noexc58:                                         ; preds = %_RNvMNtCs9o5SvTbM2BP_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE19timestamp_nanos_optCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i.i.i
  unreachable, !dbg !147763

bb.ab:                                            ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !147764, !noalias !147767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !147770, !noalias !147773
  store ptr %i.h, ptr %i.c, align 8, !dbg !147770, !noalias !147773
  store ptr @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !147770, !noalias !147773
  store ptr %i.g, ptr %i.ao, align 8, !dbg !147770, !noalias !147773
  store ptr @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !147770, !noalias !147773
  store ptr %i.f, ptr %i.ap, align 8, !dbg !147770, !noalias !147773
  store ptr @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !147770, !noalias !147773
  store ptr %i.e, ptr %i.aq, align 8, !dbg !147770, !noalias !147773
  store ptr @_RNvXs9_NtNtNtCscgRAwXFJnXP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !147770, !noalias !147773
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @38, ptr noundef nonnull %i.c)
          to label %.noexc59 unwind label %.loopexit.loopexit.split-lp, !dbg !147777

.noexc59:                                         ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !147764, !noalias !147773
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40)
          to label %.noexc60 unwind label %.loopexit.loopexit.split-lp, !dbg !147783

.noexc60:                                         ; preds = %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !147787, !noalias !147767
  br label %bb.ar, !dbg !147788

bb.ac:                                            ; preds = %.noexc57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !147789, !noalias !147792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !147793, !noalias !147796
  store ptr %i.k, ptr %i.a, align 8, !dbg !147793, !noalias !147796
  store ptr @_RNvXs9_NtNtNtCscgRAwXFJnXP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !dbg !147793, !noalias !147796
  store ptr %i.j, ptr %i.ar, align 8, !dbg !147793, !noalias !147796
  store ptr @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !dbg !147793, !noalias !147796
  store ptr %i.i, ptr %i.as, align 8, !dbg !147793, !noalias !147796
  store ptr @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impaNtB8_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !dbg !147793, !noalias !147796
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @45, ptr noundef nonnull %i.a)
          to label %.noexc61 unwind label %.loopexit.loopexit.split-lp, !dbg !147800

.noexc61:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !147789, !noalias !147796
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46)
end_hunk_0
