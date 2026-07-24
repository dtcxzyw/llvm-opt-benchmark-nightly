inline.NumInlined: 36270
inline.NumDeleted: 7697
loop-unroll.NumCompletelyUnrolled: 285
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 376
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE5applyILNS0_8TypeKindE30EEENS3_10error_codeES6_RNS0_4exec13GenericWriterE:bb.a
    i8 93, label %bb.bh
    i8 125, label %bb.bh
  ]

bb.bg:                                            ; preds = %.lr.ph, %.lr.ph
  %i.qn = add nuw nsw i32 %i.qg, 1                ; 2 uses
  store i32 %i.qn, ptr %i.an, align 4, !tbaa !9615
  br label %bb.bi

bb.bh:                                            ; preds = %.lr.ph, %.lr.ph
  %i.qo = add nsw i32 %i.qg, -1                   ; 4 uses
  store i32 %i.qo, ptr %i.an, align 4, !tbaa !9615
  %.not8.i.i.i.i = icmp sgt i32 %i.qo, %.sroa.0.sroa.2.0.copyload
  br i1 %.not8.i.i.i.i, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %.lr.ph, %bb.bh, %bb.bg
  %i.qp = phi i32 [ %i.qg, %.lr.ph ], [ %i.qo, %bb.bh ], [ %i.qn, %bb.bg ] ; 2 uses
  %i.qq = load ptr, ptr %i.qb, align 8, !tbaa !1292
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.qc
  %i.qs = icmp ult ptr %i.qi, %i.qr
  br i1 %i.qs, label %.lr.ph, label %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i, !llvm.loop !9629

_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i: ; preds = %bb.bi, %bb.bf
  %i.qt = phi i32 [ %i.pu, %bb.bf ], [ %i.qp, %bb.bi ]
  store i32 3, ptr %i.ao, align 8, !tbaa !9796
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

.loopexit:                                        ; preds = %bb.bh, %bb.az, %bb.bb, %bb.be
  %i.qu = phi i32 [ %i.pt, %bb.be ], [ %.pre436, %bb.az ], [ %i.pm, %bb.bb ], [ %i.qo, %bb.bh ]
  %i.qv = phi ptr [ %i.ph, %bb.be ], [ %i.pe, %bb.az ], [ %i.ph, %bb.bb ], [ %i.qi, %bb.bh ] ; 3 uses
  %i.qw = icmp ugt ptr %i.qv, %.sroa.0.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.qw)
  %i.qx = icmp eq i32 %i.qu, %.sroa.0.sroa.2.0.copyload
  tail call void @llvm.assume(i1 %i.qx)
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 4
  store ptr %i.qy, ptr %i.i, align 8, !tbaa !9617
  %i.qz = load i32, ptr %i.qv, align 4, !tbaa !3
  %i.ra = zext i32 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr %.pre435, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !37
  switch i8 %i.rc, label %bb.bk [
    i8 93, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.thread
    i8 44, label %bb.bj
  ]

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.thread: ; preds = %.loopexit
  tail call void @llvm.assume(i1 %or.cond.i.i.i47.i)
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE30EvE5applyES6_RNS0_4exec13GenericWriterE.exit.sink.split

bb.bj:                                            ; preds = %.loopexit
  tail call void @llvm.assume(i1 %or.cond.i.i.i)
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !9615
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

bb.bk:                                            ; preds = %.loopexit
  store i32 3, ptr %i.ao, align 8, !tbaa !9796
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i: ; preds = %bb.bj, %bb.bk, %bb.ay, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i
  %i.rd = phi i32 [ %i.qt, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ], [ %i.ap, %bb.bj ], [ %.sroa.0.sroa.2.0.copyload, %bb.bk ], [ %.pre436, %bb.ay ] ; 2 uses
  %i.re = phi i32 [ 3, %_ZN8simdjson8fallback8ondemand14value_iterator10skip_childEv.exit.i.i ], [ 0, %bb.bj ], [ 3, %bb.bk ], [ %i.pd, %bb.ay ]
  %.not396.not = icmp slt i32 %i.rd, %.sroa.0.sroa.2.0.copyload
  br i1 %.not396.not, label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE30EvE5applyES6_RNS0_4exec13GenericWriterE.exit, label %bb.f

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE30EvE5applyES6_RNS0_4exec13GenericWriterE.exit.sink.split: ; preds = %bb.g, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.thread
  %.sink = phi i32 [ %i.aw, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.thread ], [ 0, %bb.g ]
  %.7.i.ph = phi i32 [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i.thread ], [ %i.ay, %bb.g ]
  store i32 %.sink, ptr %i.an, align 4, !tbaa !9615
  br label %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE30EvE5applyES6_RNS0_4exec13GenericWriterE.exit

_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE30EvE5applyES6_RNS0_4exec13GenericWriterE.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i, %bb.ax, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE30EvE5applyES6_RNS0_4exec13GenericWriterE.exit.sink.split, %bb.b, %bb.c, %.preheader
  %.7.i = phi i32 [ 17, %bb.b ], [ %.7.i.ph, %_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE30EvE5applyES6_RNS0_4exec13GenericWriterE.exit.sink.split ], [ 0, %.preheader ], [ 17, %bb.c ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.i ], [ %.0.i1, %bb.ax ]
  ret i32 %.7.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE31EvE5applyES6_RNS0_4exec13GenericWriterE(ptr nofree noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %3 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.296", align 16 ; 5 uses
  %5 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %6 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %7 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %8 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %9 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %10 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %11 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %12 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %13 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"struct.fmt::v11::detail::format_arg_store.296", align 16 ; 5 uses
  %16 = alloca %"class.folly::Range", align 8     ; 7 uses
  %17 = alloca %"class.folly::Expected.2357", align 16 ; 6 uses
  %18 = alloca %"class.folly::Range", align 8     ; 7 uses
  %19 = alloca %"class.folly::Range", align 8     ; 7 uses
  %20 = alloca %"class.folly::Range", align 8     ; 7 uses
  %21 = alloca %"class.folly::Range", align 8     ; 7 uses
  %22 = alloca %"class.folly::Range", align 8     ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"struct.fmt::v11::detail::format_arg_store.296", align 16 ; 5 uses
  %25 = alloca %"class.folly::Range", align 8     ; 7 uses
  %26 = alloca %"class.folly::Expected.2357", align 16 ; 6 uses
  %27 = alloca %"class.folly::Range", align 8     ; 7 uses
  %28 = alloca %"class.folly::Range", align 8     ; 7 uses
  %29 = alloca %"class.folly::Range", align 8     ; 7 uses
  %30 = alloca %"class.folly::Range", align 8     ; 7 uses
  %31 = alloca %"class.folly::Range", align 8     ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::basic_string_view", align 8 ; 9 uses
  %34 = alloca %"class.std::tuple.2326", align 8  ; 16 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN8facebook5velox4exec13GenericWriter10castToImplINS0_3MapINS0_7GenericINS0_7AnyTypeELb0ELb0EEES7_EEEERNS1_12VectorWriterIT_vE10exec_out_tEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 15 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2600
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef 0) ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !2600
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !7    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 1) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !10059, !noalias !10061 ; 23 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 13 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9617, !noalias !10061 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10064, !noalias !10061 ; 8 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !9618, !noalias !10061 ; 2 uses
  %i.x = load i32, ptr %i.u, align 4, !tbaa !3, !noalias !10061
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37, !noalias !10061
  %.not.i.i61 = icmp eq i8 %i.aa, 123
  br i1 %.not.i.i61, label %._crit_edge, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

._crit_edge:                                      ; preds = %bb.b
  %.pre1140 = load i32, ptr %i.p, align 8, !tbaa !10065, !noalias !10061
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9615, !noalias !10061 ; 3 uses
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !10065, !noalias !10061
  %i.ae = icmp eq i32 %i.ac, %i.ad
  tail call void @llvm.assume(i1 %i.ae), !noalias !10061
  %i.af = icmp sgt i32 %i.ac, 0
  tail call void @llvm.assume(i1 %i.af), !noalias !10061
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !9618, !noalias !10061 ; 2 uses
  %i.ah = load i32, ptr %i.s, align 4, !tbaa !3, !noalias !10061
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37, !noalias !10061
  %.not8.i.i = icmp eq i8 %i.ak, 123
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.al, ptr %i.r, align 8, !tbaa !9617, !noalias !10061
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.am = phi ptr [ %i.w, %._crit_edge ], [ %i.ag, %bb.d ]
  %i.an = phi i32 [ %.pre1140, %._crit_edge ], [ %i.ac, %bb.d ] ; 3 uses
  %i.ao = phi ptr [ %i.s, %._crit_edge ], [ %i.al, %bb.d ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aq = icmp eq ptr %i.ao, %i.ap
  tail call void @llvm.assume(i1 %i.aq), !noalias !10061
  %i.ar = icmp sgt i32 %i.an, 0
  tail call void @llvm.assume(i1 %i.ar), !noalias !10061
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !10061
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37, !noalias !10061
  %i.aw = icmp eq i8 %i.av, 125
  br i1 %i.aw, label %bb.f, label %.lr.ph985

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ay, ptr %i.r, align 8, !tbaa !9617, !noalias !10061
  %i.az = add nsw i32 %i.an, -1
  %or.cond.i.i.i.i = icmp ne i32 %i.an, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i), !noalias !10061
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !9615, !noalias !10061
  br label %.lr.ph985

.lr.ph985:                                        ; preds = %bb.f, %bb.e
  %.sroa.0341.sroa.4.0.copyload = load i32, ptr %i.p, align 8, !tbaa !3, !noalias !10061 ; 17 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 36 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  %i.bc = add nuw nsw i32 %.sroa.0341.sroa.4.0.copyload, 1 ; 13 uses
  %or.cond.i.i.i = icmp ult i32 %.sroa.0341.sroa.4.0.copyload, 2147483646
  %i.bd = icmp ne i32 %.sroa.0341.sroa.4.0.copyload, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.sroa.0264.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %.sroa.0466.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0466.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.0466.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0467.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0467.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0467.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.29.8..sroa_idx515 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.36.8..sroa_idx544 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %.sroa.37.8..sroa_idx568 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.29.8..sroa_idx509 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.36.8..sroa_idx538 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %.sroa.37.8..sroa_idx562 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.29.8..sroa_idx507 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.36.8..sroa_idx536 = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.37.8..sroa_idx560 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.29.8..sroa_idx505 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.36.8..sroa_idx534 = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.sroa.37.8..sroa_idx558 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.29.8..sroa_idx501 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.36.8..sroa_idx530 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.37.8..sroa_idx554 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.29.8..sroa_idx499 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.36.8..sroa_idx528 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.37.8..sroa_idx552 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.29.8..sroa_idx497 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.36.8..sroa_idx526 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.37.8..sroa_idx550 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.29.8..sroa_idx495 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.36.8..sroa_idx524 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.37.8..sroa_idx548 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.29.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.36.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.37.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = add nsw i32 %.sroa.0341.sroa.4.0.copyload, -1 ; 2 uses
  %.pre1141 = load i32, ptr %i.ba, align 4, !tbaa !9615 ; 2 uses
  %i.bw = icmp sgt i32 %.sroa.0341.sroa.4.0.copyload, 0
  %.not7081511 = icmp slt i32 %.pre1141, %.sroa.0341.sroa.4.0.copyload
  br i1 %.not7081511, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %.lr.ph1512

.lr.ph1512:                                       ; preds = %.lr.ph985, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit
  %i.bx = phi i32 [ %i.uj, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ], [ %.pre1141, %.lr.ph985 ]
  %i.by = load i32, ptr %i.bb, align 8, !tbaa !9796, !noalias !10066 ; 2 uses
  %.not.i67 = icmp eq i32 %i.by, 0
  br i1 %.not.i67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph1512
  store ptr null, ptr %i.be, align 8, !tbaa !9145, !noalias !10066
  store i32 0, ptr %i.ba, align 4, !tbaa !9615, !noalias !10066
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.h:                                             ; preds = %.lr.ph1512
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !9625, !noalias !10069 ; 4 uses
  %i.ca = icmp ugt ptr %i.bz, %i.u
  call void @llvm.assume(i1 %i.ca), !noalias !10069
  %i.cb = icmp eq i32 %i.bx, %.sroa.0341.sroa.4.0.copyload
  call void @llvm.assume(i1 %i.cb), !noalias !10069
  call void @llvm.assume(i1 %i.bw), !noalias !10069
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !9618, !noalias !10069 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 3 uses
  store ptr %i.cd, ptr %i.r, align 8, !tbaa !9617, !noalias !10069
  %i.ce = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !10069
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !37, !noalias !10069
  %.not.i.i68 = icmp eq i8 %i.ch, 34
  br i1 %.not.i.i68, label %.critedge.i70, label %bb.i

.critedge.i70:                                    ; preds = %bb.h
  %i.ci = icmp ugt ptr %i.cd, %i.u
  call void @llvm.assume(i1 %i.ci), !noalias !10069
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 15 uses
  store ptr %i.cj, ptr %i.r, align 8, !tbaa !9617, !noalias !10069
  %i.ck = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !10069
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !37, !noalias !10069
  %.not.i15.i = icmp eq i8 %i.cn, 58
  br i1 %.not.i15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge.i70, %bb.h
  store i32 3, ptr %i.bb, align 8, !tbaa !9796, !noalias !10069
  store ptr null, ptr %i.be, align 8, !tbaa !9145
  store i32 0, ptr %i.ba, align 4, !tbaa !9615
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.j:                                             ; preds = %.critedge.i70
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  call void @llvm.assume(i1 %or.cond.i.i.i)
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !9615, !noalias !10069
  %i.cp = icmp ugt ptr %i.cj, %i.u
  call void @llvm.assume(i1 %i.cp), !noalias !10072
  call void @llvm.assume(i1 %i.bd), !noalias !10072
  %i.cq = load ptr, ptr %i.be, align 8, !tbaa !9145, !noalias !10077
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !9148, !noalias !10082 ; 2 uses
  %i.ct = load ptr, ptr %i.bf, align 8, !tbaa !241, !noalias !10082
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !19, !noalias !10082
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !10082
  %i.cx = call noundef ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull %i.co, ptr noundef %i.ct, i1 noundef zeroext true) #38, !noalias !10082, !inline_history !10085 ; 5 uses
  %.not.i.i65 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i65, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j
  %i.cy = load ptr, ptr %i.bf, align 8, !tbaa !241, !noalias !10082 ; 30 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 17 uses
  store ptr %i.cx, ptr %i.bf, align 8, !tbaa !241, !noalias !10082
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  store i64 %i.db, ptr %33, align 8, !tbaa !163
  store ptr %i.cy, ptr %.sroa.0264.sroa.5.0..sroa_idx, align 8, !tbaa !241
  %i.dc = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.dd = icmp eq ptr %i.dc, @_ZZN8facebook5velox8JsonType3getEvE9kInstance
  br i1 %i.dd, label %.critedge, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !9617 ; 3 uses
  %i.df = icmp eq ptr %i.de, %i.cj                ; 2 uses
  %spec.select = select i1 %i.df, ptr %i.de, ptr %i.cj
  %.sink = load ptr, ptr %i.q, align 8, !tbaa !9618
  %.sink1352 = load i32, ptr %spec.select, align 4, !tbaa !3
  %i.dg = zext i32 %.sink1352 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.dg ; 2 uses
  %.0.copyload.i.i = load i32, ptr %i.dh, align 1 ; 2 uses
  %.not.i58 = icmp eq i32 %.0.copyload.i.i, 1819047278
  br i1 %.not.i58, label %bb.k, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit

bb.k:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !37
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !146, !range !110, !noundef !111
  %.not709 = icmp eq i8 %i.dm, 0
  br i1 %.not709, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit, label %.critedge.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit
  %i.dn = and i32 %.0.copyload.i.i, 255
  %.not = icmp eq i32 %i.dn, 110                  ; 2 uses
  %i.do = select i1 %.not, i64 73014444032, i64 0
  br i1 %.not, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit
  %.sroa.0331.0.insert.insert1188 = phi i64 [ %i.do, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit ], [ 1, %bb.k ] ; 3 uses
  %i.dp = trunc nuw i64 %.sroa.0331.0.insert.insert1188 to i1
  %brmerge.not = and i1 %i.df, %i.dp
  br i1 %brmerge.not, label %bb.l, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit

bb.l:                                             ; preds = %.critedge.i
  %i.dq = load i32, ptr %i.ba, align 4, !tbaa !9615
  %i.dr = icmp eq i32 %i.dq, %i.bc
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store ptr %i.ds, ptr %i.r, align 8, !tbaa !9617
  store i32 %.sroa.0341.sroa.4.0.copyload, ptr %i.ba, align 4, !tbaa !9615
  br label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit

_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit: ; preds = %bb.k, %.critedge.i, %bb.l, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit
  %.sroa.0331.0.insert.insert1189 = phi i64 [ 73014444032, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit ], [ 1, %bb.l ], [ %.sroa.0331.0.insert.insert1188, %.critedge.i ], [ 73014444032, %bb.k ]
  %.sroa.0323.0 = phi i64 [ 0, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit ], [ 1, %bb.l ], [ %.sroa.0331.0.insert.insert1188, %.critedge.i ], [ 0, %bb.k ]
  %.sroa.5262.0.extract.shift = lshr i64 %.sroa.0331.0.insert.insert1189, 32 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5262.0.extract.shift, 0
  br i1 %.not.i, label %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit
  %.sroa.5262.0.extract.trunc = trunc nuw nsw i64 %.sroa.5262.0.extract.shift to i32
  %i.dt = call ptr @__cxa_allocate_exception(i64 16) #38 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8simdjson14simdjson_errorE, i64 16), ptr %i.dt, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %.sroa.5262.0.extract.trunc, ptr %i.du, align 8, !tbaa !9158
  call void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTIN8simdjson14simdjson_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #46
  unreachable

_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit
  %i.dv = trunc i64 %.sroa.0323.0 to i1
  br i1 %i.dv, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
end_hunk_0
