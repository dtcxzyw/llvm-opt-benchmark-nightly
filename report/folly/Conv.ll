Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3fmt2v96detail23parse_replacement_fieldIcRZNS1_10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS5_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS5_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS4_ISF_EEEE4typeESF_EEEENS1_10locale_refEE14format_handlerEEPKS5_SS_SS_OT0_:bb.a
  %.sroa.2.0.copyload.i94 = load ptr, ptr %.sroa.2.0..sroa_idx.i93, align 8, !tbaa !71
  store ptr %.sroa.0.0.copyload.i76, ptr %4, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.01.0.copyload.i92, ptr %i.is, align 8, !tbaa !124
  %.sroa.2.0..sroa_idx.i4.i96 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sroa.2.0.copyload.i94, ptr %.sroa.2.0..sroa_idx.i4.i96, align 8, !tbaa !71
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.copyload.i77, ptr %i.it, align 8, !tbaa !125
  call void %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i.i(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !22
  %.sroa.0.0.copyload.i.i97 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler20on_replacement_fieldEiPKc.exit

_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler20on_replacement_fieldEiPKc.exit: ; preds = %_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_.exit75, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %_ZN3fmt2v96detail21default_arg_formatterIcEclIcEENS0_8appenderET_.exit87, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg
  %.sroa.033.0.i.i = phi ptr [ %i.ir, %bb.bf ], [ %.sroa.0.0.copyload.i.i97, %bb.bg ], [ %i.hr, %bb.ar ], [ %i.hs, %bb.as ], [ %i.ht, %bb.at ], [ %i.hu, %bb.au ], [ %i.hv, %bb.av ], [ %i.hw, %bb.aw ], [ %i.hy, %bb.ax ], [ %.sroa.0.0.copyload.i76, %_ZN3fmt2v96detail21default_arg_formatterIcEclIcEENS0_8appenderET_.exit87 ], [ %i.il, %bb.ba ], [ %i.im, %bb.bb ], [ %i.in, %bb.bc ], [ %i.io, %bb.bd ], [ %i.iq, %bb.be ], [ %.sroa.0.0.copyload.i76, %_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_.exit75 ]
  store ptr %.sroa.033.0.i.i, ptr %i.gg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.bk

bb.bh:                                            ; preds = %bb.am
  %i.iu = load i32, ptr %i.fy, align 8, !tbaa !358
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.iw = call noundef ptr @_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler15on_format_specsEiPKcSQ_(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.iu, ptr noundef nonnull %i.iv, ptr noundef %1) ; 3 uses
  %i.ix = icmp eq ptr %i.iw, %1
  br i1 %i.ix, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iy = load i8, ptr %i.iw, align 1, !tbaa !71
  %.not39 = icmp eq i8 %i.iy, 125
  br i1 %.not39, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.39) #27
  unreachable

.thread:                                          ; preds = %_ZN3fmt2v96detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRZNS1_10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS6_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS6_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS5_ISG_EEEE4typeESG_EEEENS1_10locale_refEE14format_handlerEEPKS6_ST_ST_OT0_E10id_adapterEEST_ST_ST_SV_.exit, %bb.am
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.40) #27
  unreachable

bb.bk:                                            ; preds = %bb.bi, %_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler20on_replacement_fieldEiPKc.exit
  %.032 = phi ptr [ %.0.i, %_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler20on_replacement_fieldEiPKc.exit ], [ %i.iw, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.bl

bb.bl:                                            ; preds = %_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler20on_replacement_fieldEiPKc.exit44, %bb.ah, %bb.bk
  %.1 = phi ptr [ %i.b, %_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler20on_replacement_fieldEiPKc.exit44 ], [ %i.b, %bb.ah ], [ %.032, %bb.bk ]
  %i.iz = getelementptr inbounds nuw i8, ptr %.1, i64 1
  ret ptr %i.iz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN3fmt2v96detail19parse_format_stringILb0EcZNS1_10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS5_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS5_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS4_ISF_EEEE4typeESF_EEEENS1_10locale_refEE14format_handlerEEvNS8_IT0_EEOT1_EN6writerclEPKcSW_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = tail call noundef ptr @memchr(ptr noundef %1, i32 noundef 125, i64 noundef %i.d) #28 ; 2 uses
  %.not1619 = icmp eq ptr %i.e, null
  br i1 %.not1619, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.d, %.preheader
  %.09.lcssa = phi ptr [ %1, %.preheader ], [ %i.u, %bb.d ] ; 2 uses
  %.lcssa = phi i64 [ %i.d, %.preheader ], [ %i.w, %bb.d ]
  %i.f = load ptr, ptr %0, align 8, !tbaa !698, !nonnull !78, !align !262
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.09.lcssa, i64 %.lcssa
  %i.i = tail call ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPKcNS0_8appenderEEET1_T0_S7_S6_(ptr noundef %.09.lcssa, ptr noundef %i.h, ptr %.sroa.0.0.copyload.i.i)
  store ptr %i.i, ptr %i.g, align 8
  br label %bb.e

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.j = phi ptr [ %i.x, %bb.d ], [ %i.e, %.preheader ] ; 2 uses
  %i.k = phi i64 [ %i.v, %bb.d ], [ %i.c, %.preheader ]
  %.0920 = phi ptr [ %i.u, %bb.d ], [ %1, %.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i8, ptr %i.l, align 1, !tbaa !71
  %.not = icmp eq i8 %i.n, 125
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.37) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !698, !nonnull !78, !align !262
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.0920, i64 %i.q
  %i.t = tail call ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPKcNS0_8appenderEEET1_T0_S7_S6_(ptr noundef %.0920, ptr noundef %i.s, ptr %.sroa.0.0.copyload.i.i12)
  store ptr %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = sub i64 %i.b, %i.v                       ; 2 uses
  %i.x = tail call noundef ptr @memchr(ptr noundef nonnull %i.u, i32 noundef 125, i64 noundef %i.w) #28 ; 2 uses
  %.not16 = icmp eq ptr %i.x, null
  br i1 %.not16, label %.thread, label %.lr.ph

bb.e:                                             ; preds = %.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZZN3fmt2v96detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS4_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS3_ISE_EEEE4typeESE_EEEENS1_10locale_refEEN14format_handler15on_format_specsEiPKcSQ_(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.121, align 8            ; 5 uses
  %5 = alloca %"struct.fmt::v9::detail::write_int_arg.142", align 16 ; 6 uses
  %6 = alloca %"struct.fmt::v9::detail::write_int_arg.142", align 16 ; 5 uses
  %.sroa.092 = alloca i128, align 16              ; 22 uses
  %7 = alloca %"struct.fmt::v9::basic_format_specs", align 8 ; 24 uses
  %8 = alloca %"class.fmt::v9::detail::specs_checker", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.092)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !356, !noalias !710 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.c to i32
  %i.f = icmp slt i32 %1, %i.e
  br i1 %i.f, label %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.i, label %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread.i

bb.c:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %1, 14
  br i1 %i.g, label %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nsw i32 %1, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 %i.c, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 15                         ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread.i, label %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread8.i

_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread8.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71, !noalias !710
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %.sroa.092.0.copyload120209 = load i80, ptr %i.q, align 16
  %.sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %.sroa.092.0.copyload120211 = load i48, ptr %.sroa_idx210, align 2
  %.sroa.092.0.copyload120 = load i128, ptr %i.q, align 16, !tbaa !71 ; 2 uses
  store i80 %.sroa.092.0.copyload120209, ptr %.sroa.092, align 16
  %.sroa.092.10.sroa_idx212.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.092, i64 10
  store i48 %.sroa.092.0.copyload120211, ptr %.sroa.092.10.sroa_idx212.sroa_idx, align 2
  %i.r = trunc i128 %.sroa.092.0.copyload120 to i64
  %i.s = lshr i128 %.sroa.092.0.copyload120, 64
  %i.t = trunc nuw i128 %i.s to i64
  br label %_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_.exit

_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.i: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71, !noalias !710
  %i.w = sext i32 %1 to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w ; 4 uses
  %.sroa.092.0.copyload205 = load i80, ptr %i.x, align 16
  %.sroa_idx206 = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %.sroa.092.0.copyload207 = load i48, ptr %.sroa_idx206, align 2
  %.sroa.092.0.copyload = load i128, ptr %i.x, align 16, !tbaa !71 ; 2 uses
  store i80 %.sroa.092.0.copyload205, ptr %.sroa.092, align 16
  %.sroa.092.10.sroa_idx208.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.092, i64 10
  store i48 %.sroa.092.0.copyload207, ptr %.sroa.092.10.sroa_idx208.sroa_idx, align 2
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.38.0.copyload = load i32, ptr %.sroa.38.0..sroa_idx, align 16, !tbaa !122 ; 2 uses
  %i.y = icmp eq i32 %.sroa.38.0.copyload, 0
  %i.z = trunc i128 %.sroa.092.0.copyload to i64
  %i.aa = lshr i128 %.sroa.092.0.copyload, 64
  %i.ab = trunc nuw i128 %i.aa to i64
  br i1 %i.y, label %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread.i, label %_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_.exit

_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread.i: ; preds = %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.i, %bb.d, %bb.c, %bb.b
  tail call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.16) #27, !noalias !711
  unreachable

_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_.exit: ; preds = %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread8.i, %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.i
  %.sroa.092.8..sroa.092.8..sroa.092.8..sroa.2.0.copyload.i.in = phi i64 [ %i.t, %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread8.i ], [ %i.ab, %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.i ]
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.0.0.copyload.i.in = phi i64 [ %i.r, %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread8.i ], [ %i.z, %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.i ]
  %i.ac = phi i32 [ %i.l, %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.thread8.i ], [ %.sroa.38.0.copyload, %_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi.exit.i ] ; 14 uses
  %i.ad = icmp eq i32 %i.ac, 15
  br i1 %i.ad, label %_ZN3fmt2v916visit_format_argINS0_6detail16custom_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit, label %bb.e

_ZN3fmt2v916visit_format_argINS0_6detail16custom_formatterIcEENS0_20basic_format_contextINS0_8appenderEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE.exit: ; preds = %_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_.exit
  %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.0.0.copyload.i = inttoptr i64 %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.0.0.copyload.i.in to ptr
  %.sroa.092.8..sroa.092.8..sroa.092.8..sroa.2.0.copyload.i = inttoptr i64 %.sroa.092.8..sroa.092.8..sroa.092.8..sroa.2.0.copyload.i.in to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !712 ; 2 uses
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !712
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !713
  %9 = sub i64 %i.al, %i.ai
  store i64 %9, ptr %i.ak, align 8, !tbaa !713
  tail call void %.sroa.092.8..sroa.092.8..sroa.092.8..sroa.2.0.copyload.i(ptr noundef %.sroa.092.0..sroa.092.0..sroa.092.0..sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.a), !inline_history !705
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !712
  br label %bb.bt

bb.e:                                             ; preds = %_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 0, ptr %7, align 8, !tbaa !205
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.an, align 4, !tbaa !206
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store i8 0, ptr %i.ao, align 8, !tbaa !207
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 9 ; 13 uses
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = and i16 %i.aq, -512                     ; 4 uses
  store i16 %i.ar, ptr %i.ap, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 11 ; 3 uses
  store <4 x i8> <i8 32, i8 0, i8 0, i8 0>, ptr %i.as, align 1, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 15 ; 2 uses
  store i8 1, ptr %i.at, align 1, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %7, ptr %8, align 8, !tbaa !714
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.au, ptr %i.av, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %.sroa.6.8..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i32 %i.ac, ptr %i.aw, align 8, !tbaa !365
  %i.ax = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ay = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !71
  %i.bd = icmp eq i8 %i.bc, 125
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %2, align 1, !tbaa !71     ; 3 uses
  %i.bf = and i8 %i.be, -33
  %i.bg = add i8 %i.bf, -91
  %i.bh = icmp ult i8 %i.bg, -26
  %.not.i = icmp eq i8 %i.be, 76
  %or.cond = or i1 %.not.i, %i.bh
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = call noundef zeroext i8 @_ZN3fmt2v96detail23parse_presentation_typeIcEENS0_17presentation_typeET_(i8 noundef signext %i.be) ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %.split67.i, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit.sink.split

.split67.i:                                       ; preds = %bb.h
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.20) #27
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bk = icmp eq ptr %2, %3
  br i1 %i.bk, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load i8, ptr %2, align 1, !tbaa !71     ; 3 uses
  %i.bm = lshr i8 %i.bl, 3
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @.str.44, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !71
  %i.bq = call i8 @llvm.umax.i8(i8 %i.bp, i8 1)
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %2, i64 %i.br ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.ax, %i.bt
  %i.bv = icmp slt i64 %i.bu, 1
  %spec.select.i = select i1 %i.bv, ptr %2, ptr %i.bs ; 5 uses
  %i.bw = load i8, ptr %spec.select.i, align 1, !tbaa !71
  switch i8 %i.bw, label %bb.k [
    i8 60, label %.loopexit.i
    i8 62, label %.loopexit50.i
    i8 94, label %.loopexit56.i
  ]

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp eq ptr %spec.select.i, %2
  br i1 %i.bx, label %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.k
  switch i8 %i.bl, label %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit [
    i8 60, label %.loopexit56.thread62.i
    i8 62, label %.loopexit56.thread66.i
    i8 94, label %.loopexit56.thread.i
  ]

.loopexit56.thread66.i:                           ; preds = %.peel.next.i
  br label %.loopexit56.thread.i

.loopexit56.thread62.i:                           ; preds = %.peel.next.i
  br label %.loopexit56.thread.i

.loopexit.i:                                      ; preds = %bb.j
  br label %.loopexit56.i

.loopexit50.i:                                    ; preds = %bb.j
  br label %.loopexit56.i

.loopexit56.i:                                    ; preds = %.loopexit50.i, %.loopexit.i, %bb.j
  %.130.ph.i = phi i16 [ 1, %.loopexit.i ], [ 3, %bb.j ], [ 2, %.loopexit50.i ] ; 2 uses
  %.not38.i = icmp eq ptr %spec.select.i, %2
  br i1 %.not38.i, label %.loopexit56.thread.i, label %bb.l

bb.l:                                             ; preds = %.loopexit56.i
  %.not39.i = icmp eq i8 %i.bl, 123
  br i1 %.not39.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.43) #27
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.by = ptrtoint ptr %spec.select.i to i64
  %i.bz = sub i64 %i.by, %i.ay                    ; 3 uses
  %i.ca = icmp ugt i64 %i.bz, 4
  br i1 %i.ca, label %bb.o, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %2, i64 %i.bz, i1 false), !tbaa !71
  %i.cb = trunc nuw nsw i64 %i.bz to i8
  store i8 %i.cb, ptr %i.at, align 1, !tbaa !208
  br label %.loopexit56.thread.i

bb.o:                                             ; preds = %bb.n
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.45) #27
  unreachable

.loopexit56.thread.i:                             ; preds = %.lr.ph.i.i.i.preheader, %.loopexit56.i, %.loopexit56.thread62.i, %.loopexit56.thread66.i, %.peel.next.i
  %.130.ph61.i = phi i16 [ %.130.ph.i, %.lr.ph.i.i.i.preheader ], [ %.130.ph.i, %.loopexit56.i ], [ 3, %.peel.next.i ], [ 1, %.loopexit56.thread62.i ], [ 2, %.loopexit56.thread66.i ]
  %.pn.i = phi ptr [ %spec.select.i, %.lr.ph.i.i.i.preheader ], [ %2, %.loopexit56.i ], [ %2, %.peel.next.i ], [ %2, %.loopexit56.thread62.i ], [ %2, %.loopexit56.thread66.i ]
  %.134.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  %i.cc = or disjoint i16 %i.ar, %.130.ph61.i     ; 2 uses
  store i16 %i.cc, ptr %i.ap, align 1
  br label %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit

_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit: ; preds = %bb.k, %.peel.next.i, %.loopexit56.thread.i
  %i.cd = phi i16 [ %i.cc, %.loopexit56.thread.i ], [ %i.ar, %.peel.next.i ], [ %i.ar, %bb.k ] ; 2 uses
  %.132.i = phi ptr [ %.134.i, %.loopexit56.thread.i ], [ %2, %.peel.next.i ], [ %2, %bb.k ] ; 5 uses
  %i.ce = icmp eq ptr %.132.i, %3
  br i1 %i.ce, label %_ZN3fmt2v96detail18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN3fmt2v96detail11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_.exit
  %i.cf = load i8, ptr %.132.i, align 1, !tbaa !71
  switch i8 %i.cf, label %bb.ac [
    i8 43, label %bb.q
    i8 45, label %bb.u
    i8 32, label %bb.y
  ]

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp ult i32 %i.ac, 12
  br i1 %i.cg, label %_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE24require_numeric_argumentEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.46) #27
  unreachable

_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE24require_numeric_argumentEv.exit.i: ; preds = %bb.q
  %i.ch = icmp samesign ult i32 %i.ac, 9
  br i1 %i.ch, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE24require_numeric_argumentEv.exit.i
  %i.ci = trunc nuw i32 %i.ac to i8
  %switch.maskindex = add nsw i8 %i.ci, -1
  %switch.shifted = lshr i8 -107, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  br i1 %switch.lobit, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.47) #27
  unreachable

bb.u:                                             ; preds = %bb.p
  %i.cj = icmp ult i32 %i.ac, 12
  br i1 %i.cj, label %_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE24require_numeric_argumentEv.exit.i54, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN3fmt2v96detail18throw_format_errorEPKc(ptr noundef nonnull @.str.46) #27
  unreachable

_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE24require_numeric_argumentEv.exit.i54: ; preds = %bb.u
  %i.ck = icmp samesign ult i32 %i.ac, 9
  br i1 %i.ck, label %bb.w, label %.sink.split

bb.w:                                             ; preds = %_ZN3fmt2v96detail13specs_checkerINS1_13specs_handlerIcEEE24require_numeric_argumentEv.exit.i54
  %i.cl = trunc nuw i32 %i.ac to i8
  %switch.maskindex190 = add nsw i8 %i.cl, -1
  %switch.shifted191 = lshr i8 -107, %switch.maskindex190
  %switch.lobit192 = trunc i8 %switch.shifted191 to i1
  br i1 %switch.lobit192, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_0
