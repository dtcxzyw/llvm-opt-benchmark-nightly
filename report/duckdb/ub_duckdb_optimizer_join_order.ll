Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_join_order?download=true
inline.NumInlined: 7873
inline.NumDeleted: 3418
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6duckdb20CardinalityEstimator21CalculateUpdatedDenomENS_20Subgraph2DenominatorES1_RNS_26FilterInfoWithTotalDomainsE:bb.a
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.s = load i8, ptr %i.a, align 1, !tbaa !417
  switch i8 %i.s, label %bb.l [
    i8 0, label %bb.f
    i8 25, label %bb.j
    i8 40, label %bb.j
    i8 29, label %bb.k
    i8 27, label %bb.k
    i8 30, label %bb.k
    i8 28, label %bb.k
    i8 26, label %bb.k
    i8 37, label %bb.k
  ]

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !422, !range !325, !noundef !268
  %i.v = trunc nuw i8 %i.u to i1
  %.in27.in.v = select i1 %i.v, i64 8, i64 16
  %.in27.in = getelementptr inbounds nuw i8, ptr %3, i64 %.in27.in.v
  %.in27 = load i64, ptr %.in27.in, align 8, !tbaa !88
  %i.w = uitofp i64 %.in27 to double
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !148  ; 2 uses
  %.not.i28 = icmp eq ptr %i.y, null
  br i1 %.not.i28, label %_ZNSt14_Function_baseD2Ev.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit29 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit29:                 ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.x

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !422, !range !325, !noundef !268
  %i.ae = trunc nuw i8 %i.ad to i1
  %.in26.in.v = select i1 %i.ae, i64 8, i64 16
  %.in26.in = getelementptr inbounds nuw i8, ptr %3, i64 %.in26.in.v
  %.in26 = load i64, ptr %.in26.in, align 8, !tbaa !88
  %i.af = uitofp i64 %.in26 to double
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !422, !range !325, !noundef !268
  %i.ai = trunc nuw i8 %i.ah to i1
  %.in.in.v = select i1 %i.ai, i64 8, i64 16
  %.in.in = getelementptr inbounds nuw i8, ptr %3, i64 %.in.in.v
  %.in = load i64, ptr %.in.in, align 8, !tbaa !88
  %i.aj = uitofp i64 %.in to double
  %i.ak = call double @pow(double noundef %i.aj, double noundef f0x3FE5555555555555) #28, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_ZNSt14_Function_baseD2Ev.exit, %bb.f
  %.pn = phi double [ %i.w, %bb.f ], [ 1.000000e+00, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.af, %bb.j ], [ %i.ak, %bb.k ]
  %.024 = fmul double %i.f, %.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.t

bb.m:                                             ; preds = %bb.a, %bb.a
  call void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.al = load ptr, ptr %1, align 8, !tbaa !98    ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.am = load ptr, ptr %3, align 8, !tbaa !400
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !98 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !118 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !118 ; 3 uses
  %i.at = icmp ule i64 %i.aq, %i.as
  %.not18.i = icmp ne i64 %i.as, 0
  %or.cond.i = and i1 %i.at, %.not18.i
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.m
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !104
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !104
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %.01320.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.p ] ; 2 uses
  %.01419.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.p ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.01419.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.01320.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !88
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = add i64 %.01419.i, 1                    ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %i.aq
  br i1 %i.bc, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i = phi i64 [ %i.bb, %bb.o ], [ %.01419.i, %bb.n ]
  %i.bd = add nuw i64 %.01320.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bd, %i.as
  br i1 %exitcond.not.i, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread, label %bb.n, !llvm.loop !11

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit: ; preds = %bb.o
  call void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.be = load ptr, ptr %2, align 8, !tbaa !98    ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bf = load ptr, ptr %3, align 8, !tbaa !400
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !98 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !118 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !118 ; 3 uses
  %i.bm = icmp ule i64 %i.bj, %i.bl
  %.not18.i30 = icmp ne i64 %i.bl, 0
  %or.cond.i31 = and i1 %i.bm, %.not18.i30
  br i1 %or.cond.i31, label %.lr.ph.i33, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread

.lr.ph.i33:                                       ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !104
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !104
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i33
  %.01320.i34 = phi i64 [ 0, %.lr.ph.i33 ], [ %i.bw, %bb.s ] ; 2 uses
  %.01419.i35 = phi i64 [ 0, %.lr.ph.i33 ], [ %.1.i36, %bb.s ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.01419.i35
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.01320.i34
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !88
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = add i64 %.01419.i35, 1                  ; 2 uses
  %i.bv = icmp eq i64 %i.bu, %i.bj
  br i1 %i.bv, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit38, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i36 = phi i64 [ %i.bu, %bb.r ], [ %.01419.i35, %bb.q ]
  %i.bw = add nuw i64 %.01320.i34, 1              ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.bw, %i.bl
  br i1 %exitcond.not.i37, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread, label %bb.q, !llvm.loop !11

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit38: ; preds = %bb.r
  %i.bx = load double, ptr %i.b, align 8, !tbaa !415
  %i.by = fmul double %i.bx, 5.000000e+00
  br label %bb.t

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread: ; preds = %bb.p, %bb.s, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit, %bb.m
  %i.bz = load double, ptr %i.d, align 8, !tbaa !415
  %i.ca = fmul double %i.bz, 5.000000e+00
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit38, %bb.l
  %.1 = phi double [ %i.ca, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread ], [ %.024, %bb.l ], [ %i.by, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit38 ], [ %i.f, %bb.a ]
  ret double %.1
}

declare void @_ZN6duckdb18ExpressionIterator19EnumerateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERKSt8functionIFvRS2_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20CardinalityEstimator14GetDenominatorERNS_15JoinRelationSetE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::DenomInfo") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %4 = alloca %"struct.std::__detail::_AllocNode.939", align 8 ; 4 uses
  %5 = alloca %"class.duckdb::vector.452", align 8 ; 12 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %7 = alloca %"class.duckdb::vector.445", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.duckdb::vector", align 8   ; 8 uses
  %11 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 4 uses
  %12 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 4 uses
  %13 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 4 uses
  %14 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 4 uses
  %15 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 15 uses
  %16 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 2 uses
  %17 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 2 uses
  %18 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 2 uses
  %19 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 2 uses
  %20 = alloca %"struct.duckdb::Subgraph2Denominator", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN6duckdb8GetEdgesERNS_6vectorINS_19RelationsSetToStatsELb1ESaIS1_EEERNS_15JoinRelationSetE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.445") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %7, align 8, !tbaa !920    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !920  ; 2 uses
  %.not334369 = icmp eq ptr %i.f, %i.h
  br i1 %.not334369, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.10.0..sroa_idx307 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.12.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.7.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.8.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.bx
  %.pre411 = load ptr, ptr %i.i, align 8, !tbaa !412
  %.pre410.a = load ptr, ptr %5, align 8, !tbaa !413
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.s = phi ptr [ %.pre410.a, %._crit_edge.loopexit ], [ null, %bb.b ] ; 17 uses
  %i.t = phi ptr [ %.pre411, %._crit_edge.loopexit ], [ null, %bb.b ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !169
  %i.w = uitofp i64 %i.v to double
  %i.x = fadd nnan double %i.w, 1.000000e+00
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = icmp ugt i64 %i.ab, 1
  br i1 %i.ac, label %bb.bz, label %bb.ci

bb.c:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb26FilterInfoWithTotalDomainsESaIS1_EED2Ev.exit271

bb.d:                                             ; preds = %.lr.ph, %bb.bx
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.hl, %bb.bx ] ; 21 uses
  %i.af = phi ptr [ null, %.lr.ph ], [ %i.hm, %bb.bx ] ; 18 uses
  %.sroa.0326.0370 = phi ptr [ %i.f, %.lr.ph ], [ %i.hn, %bb.bx ] ; 32 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = sdiv exact i64 %i.ai, 24                ; 8 uses
  %i.ak = icmp eq i64 %i.ai, 24
  br i1 %i.ak, label %bb.e, label %.critedge127.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !98
  invoke void @_ZNK6duckdb15JoinRelationSet8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.al)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNK6duckdb15JoinRelationSet8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.j, align 8, !tbaa !85  ; 3 uses
  %i.an = load i64, ptr %i.k, align 8, !tbaa !85  ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.h
  %.pre.a = load ptr, ptr %9, align 8, !tbaa !90
  br label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp eq i64 %i.am, 0
  %.pre408 = load ptr, ptr %9, align 8, !tbaa !90 ; 3 uses
  br i1 %i.ap, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %8, align 8, !tbaa !90
  %bcmp.i = call i32 @bcmp(ptr %i.aq, ptr %.pre408, i64 %i.am)
  %i.ar = icmp eq i32 %bcmp.i, 0
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.j, %bb.i
  %i.as = phi ptr [ %.pre408, %bb.i ], [ %.pre408, %bb.j ], [ %.pre.a, %..critedge_crit_edge ] ; 2 uses
  %.ph = phi i1 [ true, %bb.i ], [ %i.ar, %bb.j ], [ false, %..critedge_crit_edge ]
  %i.at = icmp eq ptr %i.as, %i.l
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge
  %i.au = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.au)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.as) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.av = load ptr, ptr %8, align 8, !tbaa !90    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.m
  br i1 %i.aw, label %.critedge127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.av) #27
  br label %.critedge127

.critedge127:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %.ph, label %bb.k, label %.critedge127.thread

bb.k:                                             ; preds = %.critedge127
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0326.0370, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !422, !range !325, !noundef !268
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.bx

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0326.0370, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %6, ptr %4, align 8, !tbaa !344
  %i.bb = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE6insertERKm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE6insertERKm.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.bx

bb.m:                                             ; preds = %bb.e, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.n:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.be = load ptr, ptr %8, align 8, !tbaa !90    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.m
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.be) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.m
  %.pn108 = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %i.bd, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body

.critedge127.thread:                              ; preds = %bb.d, %.critedge127
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN6duckdb24SubgraphsConnectedByEdgeERNS_26FilterInfoWithTotalDomainsERNS_6vectorINS_20Subgraph2DenominatorELb1ESaIS3_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0326.0370, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.o unwind label %bb.ab

bb.o:                                             ; preds = %.critedge127.thread
  %i.bg = load ptr, ptr %10, align 8, !tbaa !104  ; 5 uses
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !104 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.ac

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.q unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !144
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.r unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !144
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.s unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !144 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.t unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !144 ; 2 uses
  store i64 %i.bl, ptr %11, align 8, !tbaa !144
  store i64 %i.bo, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !144
  store double 1.000000e+00, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !423
  store i64 %i.br, ptr %12, align 8, !tbaa !144
  store i64 %i.bu, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !144
  store double 1.000000e+00, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !423
  %i.bv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb20CardinalityEstimator24UpdateNumeratorRelationsENS_20Subgraph2DenominatorES1_RNS_26FilterInfoWithTotalDomainsE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %11, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %12, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0326.0370)
          to label %bb.u unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.bw = ptrtoint ptr %i.bv to i64               ; 3 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.v unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !342
  %i.ca = ptrtoint ptr %i.bz to i64               ; 3 uses
  store i64 %i.ca, ptr %13, align 8, !tbaa !144
  store i64 %i.bw, ptr %.sroa.10.0..sroa_idx307, align 8, !tbaa !144
  store double 1.000000e+00, ptr %.sroa.12.0..sroa_idx313, align 8, !tbaa !423
  store i64 %i.br, ptr %14, align 8, !tbaa !144
  store i64 %i.bu, ptr %.sroa.7.0..sroa_idx297, align 8, !tbaa !144
  store double 1.000000e+00, ptr %.sroa.8.0..sroa_idx299, align 8, !tbaa !423
  %i.cb = invoke noundef double @_ZN6duckdb20CardinalityEstimator21CalculateUpdatedDenomENS_20Subgraph2DenominatorES1_RNS_26FilterInfoWithTotalDomainsE(ptr nonnull align 8 poison, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %13, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %14, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0326.0370)
          to label %bb.w unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cc = load ptr, ptr %i.r, align 8, !tbaa !921
  %.not.i = icmp eq ptr %i.af, %i.cc
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %i.ca, ptr %i.af, align 8, !tbaa !144
  %.sroa.10.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.bw, ptr %.sroa.10.0..sroa_idx309, align 8, !tbaa !144
  %.sroa.12.0..sroa_idx315 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store double %i.cb, ptr %.sroa.12.0..sroa_idx315, align 8, !tbaa !423
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  store ptr %i.cd, ptr %i.i, align 8, !tbaa !412
  br label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit

bb.y:                                             ; preds = %bb.w
  %i.ce = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.ce, label %bb.z, label %_ZNKSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc147 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

.noexc147:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.aj
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 384307168202282325)
  %i.ci = select i1 %i.cg, i64 384307168202282325, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = mul nuw nsw i64 %i.ci, 24
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #30
          to label %.noexc148 unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ai ; 3 uses
  store i64 %i.ca, ptr %i.cl, align 8, !tbaa !144
  %.sroa.10.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.bw, ptr %.sroa.10.0..sroa_idx311, align 8, !tbaa !144
  %.sroa.12.0..sroa_idx317 = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store double %i.cb, ptr %.sroa.12.0..sroa_idx317, align 8, !tbaa !423
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc148, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %.noexc148 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %.noexc148 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !922, !alias.scope !923
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !915

_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc148
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ck, %.noexc148 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ae) #27
  br label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ck, ptr %5, align 8, !tbaa !413
  store ptr %i.co, ptr %i.i, align 8, !tbaa !412
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cp, ptr %i.r, align 8, !tbaa !921
  br label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit

bb.ab:                                            ; preds = %.critedge127.thread
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit221

bb.ac:                                            ; preds = %bb.o
  %i.cr = ptrtoint ptr %i.bh to i64
  %i.cs = ptrtoint ptr %i.bg to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3
  switch i64 %i.cu, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit [
    i64 1, label %_ZNSt6vectorImSaImEE2atEm.exit
    i64 2, label %_ZNSt6vectorImSaImEE2atEm.exit201
  ]

_ZNSt6vectorImSaImEE2atEm.exit:                   ; preds = %bb.ac
  %i.cv = load i64, ptr %i.bg, align 8, !tbaa !88 ; 3 uses
  %.not.i.i151 = icmp ult i64 %i.cv, %i.aj
  br i1 %.not.i.i151, label %bb.ad, label %.invoke

.invoke:                                          ; preds = %bb.be, %_ZNSt6vectorImSaImEE2atEm.exit201, %_ZNSt6vectorImSaImEE2atEm.exit
  %i.cw = phi i64 [ %i.fx, %_ZNSt6vectorImSaImEE2atEm.exit201 ], [ %i.cv, %_ZNSt6vectorImSaImEE2atEm.exit ], [ %i.ga, %bb.be ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.cw, i64 noundef %i.aj) #29
          to label %.cont unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE2atEm.exit
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.cv ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !415
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.ae unwind label %bb.bd

bb.ae:                                            ; preds = %bb.ad
  %i.cy = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !144
  store i64 %i.da, ptr %15, align 8, !tbaa !144
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.af unwind label %bb.bd

bb.af:                                            ; preds = %bb.ae
  %i.db = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !144
  store i64 %i.dd, ptr %i.q, align 8, !tbaa !144
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.ag unwind label %bb.bd

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !98 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ah unwind label %bb.bd

bb.ah:                                            ; preds = %bb.ag
  %i.df = load ptr, ptr %15, align 8, !tbaa !98   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !118 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !118 ; 3 uses
  %i.dk = icmp ule i64 %i.dh, %i.dj
  %.not18.i = icmp ne i64 %i.dj, 0
  %or.cond.i = and i1 %i.dk, %.not18.i
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.ah
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !104
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !104
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i
  %.01320.i = phi i64 [ 0, %.lr.ph.i ], [ %i.du, %bb.ak ] ; 2 uses
  %.01419.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.ak ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.01419.i
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !88
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.01320.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !88
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ds = add i64 %.01419.i, 1                    ; 2 uses
  %i.dt = icmp eq i64 %i.ds, %i.dh
  br i1 %i.dt, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1.i = phi i64 [ %i.ds, %bb.aj ], [ %.01419.i, %bb.ai ]
  %i.du = add nuw i64 %.01320.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.du, %i.dj
  br i1 %exitcond.not.i, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread, label %bb.ai, !llvm.loop !11

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit: ; preds = %bb.aj
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.al unwind label %bb.bd

bb.al:                                            ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit
  %i.dv = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !144
  store i64 %i.dx, ptr %15, align 8, !tbaa !144
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.am unwind label %bb.bd

bb.am:                                            ; preds = %bb.al
  %i.dy = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !144
  store i64 %i.ea, ptr %i.q, align 8, !tbaa !144
  br label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread: ; preds = %bb.ak, %bb.ah, %bb.am
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.an unwind label %bb.bd

bb.an:                                            ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread
  %i.eb = load ptr, ptr %i.cx, align 8, !tbaa !98 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.ao unwind label %bb.bd

bb.ao:                                            ; preds = %bb.an
  %i.ec = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %bb.ap unwind label %bb.bd

bb.ap:                                            ; preds = %bb.ao
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !98 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !118 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !118 ; 3 uses
  %i.ej = icmp ule i64 %i.eg, %i.ei
  %.not18.i171 = icmp ne i64 %i.ei, 0
  %or.cond.i172 = and i1 %i.ej, %.not18.i171
  br i1 %or.cond.i172, label %.lr.ph.i174, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179.thread

.lr.ph.i174:                                      ; preds = %bb.ap
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !104
  %i.el = load ptr, ptr %i.eb, align 8, !tbaa !104
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %.lr.ph.i174
  %.01320.i175 = phi i64 [ 0, %.lr.ph.i174 ], [ %i.et, %bb.as ] ; 2 uses
  %.01419.i176 = phi i64 [ 0, %.lr.ph.i174 ], [ %.1.i177, %bb.as ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.01419.i176
  %i.en = load i64, ptr %i.em, align 8, !tbaa !88
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.01320.i175
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !88
  %i.eq = icmp eq i64 %i.en, %i.ep
  br i1 %i.eq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.er = add i64 %.01419.i176, 1                 ; 2 uses
  %i.es = icmp eq i64 %i.er, %i.eg
  br i1 %i.es, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.1.i177 = phi i64 [ %i.er, %bb.ar ], [ %.01419.i176, %bb.aq ]
  %i.et = add nuw i64 %.01320.i175, 1             ; 2 uses
  %exitcond.not.i178 = icmp eq i64 %i.et, %i.ei
  br i1 %exitcond.not.i178, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179.thread, label %bb.aq, !llvm.loop !11

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179: ; preds = %bb.ar
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179
  %i.eu = load ptr, ptr %i.cx, align 8, !tbaa !98 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0326.0370)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.ev = load ptr, ptr %.sroa.0326.0370, align 8, !tbaa !400
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !98 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !118 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !118 ; 3 uses
  %i.fc = icmp ule i64 %i.ez, %i.fb
  %.not18.i186 = icmp ne i64 %i.fb, 0
  %or.cond.i187 = and i1 %i.fc, %.not18.i186
  br i1 %or.cond.i187, label %.lr.ph.i189, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179.thread

.lr.ph.i189:                                      ; preds = %bb.av
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !104
  %i.fe = load ptr, ptr %i.eu, align 8, !tbaa !104
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.lr.ph.i189
  %.01320.i190 = phi i64 [ 0, %.lr.ph.i189 ], [ %i.fm, %bb.ay ] ; 2 uses
  %.01419.i191 = phi i64 [ 0, %.lr.ph.i189 ], [ %.1.i192, %bb.ay ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.01419.i191
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !88
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.01320.i190
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !88
  %i.fj = icmp eq i64 %i.fg, %i.fi
  br i1 %i.fj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fk = add i64 %.01419.i191, 1                 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, %i.ez
  br i1 %i.fl, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit194, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.1.i192 = phi i64 [ %i.fk, %bb.ax ], [ %.01419.i191, %bb.aw ]
  %i.fm = add nuw i64 %.01320.i190, 1             ; 2 uses
  %exitcond.not.i193 = icmp eq i64 %i.fm, %i.fb
  br i1 %exitcond.not.i193, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179.thread, label %bb.aw, !llvm.loop !11

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179.thread: ; preds = %bb.as, %bb.ay, %bb.av, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !922
  %i.fn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb20CardinalityEstimator24UpdateNumeratorRelationsENS_20Subgraph2DenominatorES1_RNS_26FilterInfoWithTotalDomainsE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %16, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %15, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0326.0370)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179.thread
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.fp = ptrtoint ptr %i.fn to i64
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !144
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.fq = load ptr, ptr %i.cx, align 8, !tbaa !98
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.fr = load ptr, ptr %15, align 8, !tbaa !98
  %i.fs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ft = ptrtoint ptr %i.fs to i64
  store i64 %i.ft, ptr %i.cx, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !922
  %i.fu = invoke noundef double @_ZN6duckdb20CardinalityEstimator21CalculateUpdatedDenomENS_20Subgraph2DenominatorES1_RNS_26FilterInfoWithTotalDomainsE(ptr nonnull align 8 poison, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %17, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %15, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0326.0370)
          to label %.critedge129 unwind label %bb.bd

.critedge129:                                     ; preds = %bb.bc
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store double %i.fu, ptr %i.fv, align 8, !tbaa !415
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit194: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit

bb.bd:                                            ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179.thread, %bb.bc, %bb.ad, %bb.ae, %bb.af, %bb.ag, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit, %bb.al, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.thread, %bb.an, %bb.ao, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit179, %bb.at, %bb.au, %bb.ba, %bb.az, %bb.bb
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %.loopexit.split-lp339

_ZNSt6vectorImSaImEE2atEm.exit201:                ; preds = %bb.ac
  %i.fx = load i64, ptr %i.bg, align 8, !tbaa !88 ; 3 uses
  %.not.i.i202 = icmp ult i64 %i.fx, %i.aj
  br i1 %.not.i.i202, label %bb.be, label %.invoke

bb.be:                                            ; preds = %_ZNSt6vectorImSaImEE2atEm.exit201
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.fx ; 7 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !88 ; 3 uses
  %.not.i.i208 = icmp ult i64 %i.ga, %i.aj
  br i1 %.not.i.i208, label %bb.bf, label %.invoke

bb.bf:                                            ; preds = %bb.be
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.ga ; 5 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %bb.bg unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !98
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %bb.bh unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %i.gd = load ptr, ptr %i.gb, align 8, !tbaa !98
  %i.ge = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %i.gd)
          to label %bb.bi unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  %i.gf = ptrtoint ptr %i.ge to i64
  store i64 %i.gf, ptr %i.fy, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i64 24, i1 false), !tbaa.struct !922
  %i.gg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb20CardinalityEstimator24UpdateNumeratorRelationsENS_20Subgraph2DenominatorES1_RNS_26FilterInfoWithTotalDomainsE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %18, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %i.gb, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0326.0370)
          to label %bb.bj unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gi = ptrtoint ptr %i.gg to i64
  store i64 %i.gi, ptr %i.gh, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i64 24, i1 false), !tbaa.struct !922
  %i.gj = invoke noundef double @_ZN6duckdb20CardinalityEstimator21CalculateUpdatedDenomENS_20Subgraph2DenominatorES1_RNS_26FilterInfoWithTotalDomainsE(ptr nonnull align 8 poison, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %19, ptr noundef nonnull byval(%"struct.duckdb::Subgraph2Denominator") align 8 %i.gb, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.0326.0370)
          to label %bb.bk unwind label %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store double %i.gj, ptr %i.gk, align 8, !tbaa !415
  store i64 0, ptr %i.gb, align 8, !tbaa !144
  %i.gl = ashr i64 %i.aj, 2                       ; 3 uses
  %i.gm = icmp sgt i64 %i.gl, 0
  br i1 %i.gm, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bk
  %i.gn = mul nuw nsw i64 %i.gl, 96
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ae, i64 %i.gn ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bo, %.lr.ph.preheader.i.i.i.i
  %.057.i.i.i.i = phi i64 [ %i.gs, %bb.bo ], [ %i.gl, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.037.056.i.i.i.i = phi ptr [ %i.gr, %bb.bo ], [ %i.ae, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.037.056.i.i.i.i, align 8, !tbaa !98
  %.not.i.i.i.i.i.i216 = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i216, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i", label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 24
  %.val.i16.i.i.i.i = load ptr, ptr %i.go, align 8, !tbaa !98
  %.not.i.i17.i.i.i.i = icmp eq ptr %.val.i16.i.i.i.i, null
  br i1 %.not.i.i17.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 48
  %.val.i18.i.i.i.i = load ptr, ptr %i.gp, align 8, !tbaa !98
  %.not.i.i19.i.i.i.i = icmp eq ptr %.val.i18.i.i.i.i, null
  br i1 %.not.i.i19.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit486", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 72
  %.val.i20.i.i.i.i = load ptr, ptr %i.gq, align 8, !tbaa !98
  %.not.i.i21.i.i.i.i = icmp eq ptr %.val.i20.i.i.i.i, null
  br i1 %.not.i.i21.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit488", label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 96
  %i.gs = add nsw i64 %.057.i.i.i.i, -1
  %i.gt = icmp sgt i64 %.057.i.i.i.i, 1
  br i1 %i.gt, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !916

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.bo
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre62.i.i.i.i = sub i64 %i.ag, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.bk
  %.pre-phi63.i.i.i.i = phi i64 [ %.pre62.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ai, %bb.bk ]
  %.sroa.037.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.ae, %bb.bk ] ; 5 uses
  %i.gu = sdiv exact i64 %.pre-phi63.i.i.i.i, 24
  switch i64 %i.gu, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit" [
    i64 3, label %bb.bp
    i64 2, label %bb.br
    i64 1, label %bb.bt
  ]

bb.bp:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i22.i.i.i.i = load ptr, ptr %.sroa.037.0.lcssa.i.i.i.i, align 8, !tbaa !98
  %.not.i.i23.i.i.i.i = icmp eq ptr %.val.i22.i.i.i.i, null
  br i1 %.not.i.i23.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i.i, i64 24
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge.i.i.i.i
  %.sroa.037.1.i.i.i.i = phi ptr [ %i.gv, %bb.bq ], [ %.sroa.037.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.val.i24.i.i.i.i = load ptr, ptr %.sroa.037.1.i.i.i.i, align 8, !tbaa !98
  %.not.i.i25.i.i.i.i = icmp eq ptr %.val.i24.i.i.i.i, null
  br i1 %.not.i.i25.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i", label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i.i, i64 24
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %._crit_edge.i.i.i.i
  %.sroa.037.2.i.i.i.i = phi ptr [ %i.gw, %bb.bs ], [ %.sroa.037.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.val.i26.i.i.i.i = load ptr, ptr %.sroa.037.2.i.i.i.i, align 8, !tbaa !98
  %.not.i.i27.i.i.i.i = icmp eq ptr %.val.i26.i.i.i.i, null
  %spec.select.i.i.i.i = select i1 %.not.i.i27.i.i.i.i, ptr %.sroa.037.2.i.i.i.i, ptr %i.af
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit": ; preds = %bb.bl
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 24
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit486": ; preds = %bb.bm
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 48
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit488": ; preds = %bb.bn
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i, i64 72
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit486", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit488", %bb.bt, %bb.br, %bb.bp
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.037.1.i.i.i.i, %bb.br ], [ %spec.select.i.i.i.i, %bb.bt ], [ %.sroa.037.0.lcssa.i.i.i.i, %bb.bp ], [ %i.gz, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit488" ], [ %i.gy, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit486" ], [ %i.gx, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit" ], [ %.sroa.037.056.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.ha = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.af
  %.sroa.06.025.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 24 ; 2 uses
  %.not26.i.i = icmp eq ptr %.sroa.06.025.i.i, %i.af
  %or.cond.i.i = select i1 %i.ha, i1 true, i1 %.not26.i.i
  br i1 %or.cond.i.i, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i", %bb.bv
  %.sroa.06.028.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.bv ], [ %.sroa.06.025.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i" ] ; 3 uses
  %.sroa.012.027.i.i = phi ptr [ %.sroa.012.1.i.i, %bb.bv ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i" ] ; 3 uses
  %.val.i.i.i = load ptr, ptr %.sroa.06.028.i.i, align 8, !tbaa !98
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.027.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.028.i.i, i64 24, i1 false), !tbaa.struct !922
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i.i, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph.i.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.027.i.i, %.lr.ph.i.i ], [ %i.hb, %bb.bu ] ; 2 uses
  %.sroa.06.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.028.i.i, i64 24 ; 2 uses
  %.not.i.i215 = icmp eq ptr %.sroa.06.0.i.i, %i.af
  br i1 %.not.i.i215, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit.loopexit", label %.lr.ph.i.i, !llvm.loop !917

"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit.loopexit": ; preds = %bb.bv
  %.pre409 = load ptr, ptr %5, align 8, !tbaa !413
  br label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit"

"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit": ; preds = %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit.loopexit", %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i", %._crit_edge.i.i.i.i
  %i.hc = phi ptr [ %i.ae, %._crit_edge.i.i.i.i ], [ %i.ae, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i" ], [ %.pre409, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit.loopexit" ]
  %.sroa.012.2.i.i = phi ptr [ %i.af, %._crit_edge.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predIZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0EEET_SG_SG_T0_.exit.i.i" ], [ %.sroa.012.1.i.i, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit.loopexit" ] ; 2 uses
  %21 = load ptr, ptr %i.i, align 8, !tbaa !410   ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %21, %.sroa.012.2.i.i
  br i1 %.not.i.i.i218, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit, label %_ZSt8_DestroyIPN6duckdb20Subgraph2DenominatorES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20Subgraph2DenominatorES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit"
  %i.hd = load ptr, ptr %5, align 8, !tbaa !410   ; 3 uses
  %i.he = ptrtoint ptr %.sroa.012.2.i.i to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = getelementptr inbounds i8, ptr %i.hd, i64 %i.hg ; 2 uses
  store ptr %i.hh, ptr %i.i, align 8, !tbaa !412
  br label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit

.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bh, %bb.bf, %bb.bg, %bb.bj, %bb.u, %_ZNKSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.v, %bb.t, %bb.bi, %.invoke, %bb.z
  %lpad.loopexit.split-lp530 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp339

_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.ac, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit", %_ZSt8_DestroyIPN6duckdb20Subgraph2DenominatorES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.x, %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %.critedge129, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit194
  %i.hi = phi ptr [ %i.ae, %bb.ac ], [ %i.hc, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit" ], [ %i.hd, %_ZSt8_DestroyIPN6duckdb20Subgraph2DenominatorES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.ae, %bb.x ], [ %i.ck, %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ae, %.critedge129 ], [ %i.ae, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit194 ]
  %i.hj = phi ptr [ %i.af, %bb.ac ], [ %21, %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN6duckdb20Subgraph2DenominatorESt6vectorIS3_SaIS3_EEEEZNS2_20CardinalityEstimator14GetDenominatorERNS2_15JoinRelationSetEE3$_0ET_SD_SD_T0_.exit" ], [ %i.hh, %_ZSt8_DestroyIPN6duckdb20Subgraph2DenominatorES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.cd, %bb.x ], [ %i.co, %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.af, %.critedge129 ], [ %i.af, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit194 ]
  %i.hk = load ptr, ptr %10, align 8, !tbaa !79   ; 2 uses
  %.not.i.i.i219 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i219, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.hk) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE9push_backERKS1_.exit, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE6insertERKm.exit, %bb.k, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.hl = phi ptr [ %i.ae, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE6insertERKm.exit ], [ %i.ae, %bb.k ], [ %i.hi, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %i.hm = phi ptr [ %i.af, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE6insertERKm.exit ], [ %i.af, %bb.k ], [ %i.hj, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0326.0370, i64 32 ; 2 uses
  %.not334 = icmp eq ptr %i.hn, %i.h
  br i1 %.not334, label %._crit_edge.loopexit, label %bb.d

.loopexit.split-lp339:                            ; preds = %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp, %bb.bd
  %.pn117.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.bd ], [ %lpad.loopexit.split-lp530, %.loopexit.split-lp339.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %22 = load ptr, ptr %10, align 8, !tbaa !79     ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %22, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorImSaImEED2Ev.exit221, label %bb.by

bb.by:                                            ; preds = %.loopexit.split-lp339
  call void @_ZdlPv(ptr noundef nonnull %22) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit221

_ZNSt6vectorImSaImEED2Ev.exit221:                 ; preds = %bb.by, %.loopexit.split-lp339, %bb.ab
  %.pn117.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.ab ], [ %.pn117.pn.pn, %.loopexit.split-lp339 ], [ %.pn117.pn.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.body

bb.bz:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !922
  %.sroa.0279.0371 = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %.not335372 = icmp eq ptr %.sroa.0279.0371, %i.t
  br i1 %.not335372, label %._crit_edge377, label %.lr.ph376

.lr.ph376:                                        ; preds = %bb.bz
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  br label %bb.ca

._crit_edge377:                                   ; preds = %bb.cg, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.ci

bb.ca:                                            ; preds = %.lr.ph376, %bb.cg
  %.sroa.0279.0374 = phi ptr [ %.sroa.0279.0371, %.lr.ph376 ], [ %.sroa.0279.0, %bb.cg ] ; 4 uses
  %.pn373 = phi ptr [ %i.s, %.lr.ph376 ], [ %.sroa.0279.0374, %bb.cg ] ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.cb unwind label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.hr = load ptr, ptr %20, align 8, !tbaa !98
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0279.0374)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  %i.hs = load ptr, ptr %.sroa.0279.0374, align 8, !tbaa !98
  %i.ht = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %i.hs)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  %i.hu = ptrtoint ptr %i.ht to i64
  store i64 %i.hu, ptr %20, align 8, !tbaa !144
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.hv = load ptr, ptr %i.hp, align 8, !tbaa !98
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn373, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !98
  %i.hy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %i.hx)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.hz = ptrtoint ptr %i.hy to i64
  store i64 %i.hz, ptr %i.hp, align 8, !tbaa !144
  %i.ia = getelementptr inbounds nuw i8, ptr %.pn373, i64 40
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !415
  %i.ic = load double, ptr %i.hq, align 8, !tbaa !415
  %i.id = fmul double %i.ib, %i.ic
  store double %i.id, ptr %i.hq, align 8, !tbaa !415
  %.sroa.0279.0 = getelementptr inbounds nuw i8, ptr %.sroa.0279.0374, i64 24 ; 2 uses
  %.not335 = icmp eq ptr %.sroa.0279.0, %i.t
  br i1 %.not335, label %._crit_edge377, label %bb.ca, !llvm.loop !918

bb.ch:                                            ; preds = %bb.cc, %bb.ca, %bb.cb, %bb.ce, %bb.cd, %bb.cf
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %.body

bb.ci:                                            ; preds = %._crit_edge377, %._crit_edge
  %i.if = icmp eq ptr %i.s, %i.t
  br i1 %i.if, label %.thread, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit235

_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit235: ; preds = %bb.ci
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit235
  %i.ig = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !118
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !118 ; 2 uses
  %.not = icmp eq i64 %i.ii, %i.ik
  %.not380 = icmp eq i64 %i.ik, 0
  %or.cond = or i1 %.not, %.not380
  br i1 %or.cond, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit257, label %.lr.ph379

.lr.ph379:                                        ; preds = %bb.cj
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph379, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit250
  %.0378 = phi i64 [ 0, %.lr.ph379 ], [ %i.js, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit250 ] ; 2 uses
  %i.in = load ptr, ptr %2, align 8, !tbaa !104
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %.0378
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.iq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %.noexc239 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc239:                                        ; preds = %bb.ck
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !88
  %i.ir = ptrtoint ptr %i.iq to i64
  store i64 %i.ir, ptr %3, align 8, !tbaa !104
  %i.is = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %i.il, ptr noundef nonnull %3, i64 noundef 1)
          to label %bb.cl unwind label %bb.cm     ; 4 uses

bb.cl:                                            ; preds = %.noexc239
  %i.it = load ptr, ptr %3, align 8, !tbaa !104   ; 2 uses
  %.not.i.i238 = icmp eq ptr %i.it, null
  br i1 %.not.i.i238, label %bb.cn, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.cl
  call void @_ZdaPv(ptr noundef nonnull %i.it) #27
  br label %bb.cn

bb.cm:                                            ; preds = %.noexc239
  %i.iu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iv = load ptr, ptr %3, align 8, !tbaa !104   ; 2 uses
  %.not.i7.i = icmp eq ptr %i.iv, null
  br i1 %.not.i7.i, label %.body, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i: ; preds = %bb.cm
  call void @_ZdaPv(ptr noundef nonnull %i.iv) #27
  br label %.body

bb.cn:                                            ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.co:                                            ; preds = %bb.cn
  %i.iw = load ptr, ptr %i.s, align 8, !tbaa !98  ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !118 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !118 ; 3 uses
  %i.jb = icmp ule i64 %i.iy, %i.ja
  %.not18.i242 = icmp ne i64 %i.ja, 0
  %or.cond.i243 = and i1 %i.jb, %.not18.i242
  br i1 %or.cond.i243, label %.lr.ph.i245, label %.loopexit

.lr.ph.i245:                                      ; preds = %bb.co
  %i.jc = load ptr, ptr %i.is, align 8, !tbaa !104
  %i.jd = load ptr, ptr %i.iw, align 8, !tbaa !104
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cr, %.lr.ph.i245
  %.01320.i246 = phi i64 [ 0, %.lr.ph.i245 ], [ %i.jl, %bb.cr ] ; 2 uses
  %.01419.i247 = phi i64 [ 0, %.lr.ph.i245 ], [ %.1.i248, %bb.cr ] ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.01419.i247
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !88
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.01320.i246
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !88
  %i.ji = icmp eq i64 %i.jf, %i.jh
  br i1 %i.ji, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.jj = add i64 %.01419.i247, 1                 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, %i.iy
  br i1 %i.jk, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit250, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.1.i248 = phi i64 [ %i.jj, %bb.cq ], [ %.01419.i247, %bb.cp ]
  %i.jl = add nuw i64 %.01320.i246, 1             ; 2 uses
  %exitcond.not.i249 = icmp eq i64 %i.jl, %i.ja
  br i1 %exitcond.not.i249, label %.loopexit, label %bb.cp, !llvm.loop !11

.loopexit:                                        ; preds = %bb.cr, %bb.co
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.im)
          to label %bb.cs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %.loopexit
  %i.jm = load ptr, ptr %i.im, align 8, !tbaa !98
  %i.jn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.jm, ptr noundef nonnull align 8 dereferenceable(16) %i.is)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  %i.jo = ptrtoint ptr %i.jn to i64
  store i64 %i.jo, ptr %i.im, align 8, !tbaa !144
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  %i.jp = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.jq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.is)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  %i.jr = ptrtoint ptr %i.jq to i64
  store i64 %i.jr, ptr %i.s, align 8, !tbaa !144
  br label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit250

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %.loopexit, %bb.cn, %bb.ck, %bb.ct, %bb.cu, %bb.l, %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit260, %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit235
  %lpad.loopexit.split-lp533 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit250: ; preds = %bb.cq, %bb.cv
  %i.js = add nuw i64 %.0378, 1                   ; 2 uses
  %i.jt = load i64, ptr %i.ij, align 8, !tbaa !118
  %i.ju = icmp ult i64 %i.js, %i.jt
  br i1 %i.ju, label %bb.ck, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit257, !llvm.loop !919

_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit257: ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit250, %bb.cj
  %i.jv = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !415
  %i.jx = fcmp oeq double %i.jw, 0.000000e+00
  br i1 %i.jx, label %.thread, label %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit260

_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit260: ; preds = %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit257
  %i.jy = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jy)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit260
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !98
  %i.ka = load double, ptr %i.jv, align 8, !tbaa !415
  %i.kb = fmul double %i.x, %i.ka
  br label %.thread

.thread:                                          ; preds = %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit257, %bb.ci, %bb.cw
  %.sink496 = phi ptr [ %i.jz, %bb.cw ], [ %2, %bb.ci ], [ %2, %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit257 ]
  %.sink = phi double [ %i.kb, %bb.cw ], [ 1.000000e+00, %bb.ci ], [ 1.000000e+00, %_ZNSt6vectorIN6duckdb20Subgraph2DenominatorESaIS1_EE2atEm.exit257 ]
  store ptr %.sink496, ptr %0, align 8, !tbaa !144
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 1.000000e+00, ptr %i.kc, align 8, !tbaa !924
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink, ptr %i.kd, align 8, !tbaa !425
  %i.ke = load ptr, ptr %7, align 8, !tbaa !925   ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i266, label %_ZNSt6vectorIN6duckdb26FilterInfoWithTotalDomainsESaIS1_EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %.thread
  call void @_ZdlPv(ptr noundef nonnull %i.ke) #27
  br label %_ZNSt6vectorIN6duckdb26FilterInfoWithTotalDomainsESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb26FilterInfoWithTotalDomainsESaIS1_EED2Ev.exit: ; preds = %.thread, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.kf = load ptr, ptr %i.c, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i267

.lr.ph.i.i.i.i267:                                ; preds = %_ZNSt6vectorIN6duckdb26FilterInfoWithTotalDomainsESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i267
  %.06.i.i.i.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i267 ], [ %i.kf, %_ZNSt6vectorIN6duckdb26FilterInfoWithTotalDomainsESaIS1_EED2Ev.exit ] ; 2 uses
  %i.kg = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i268 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i268, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i267, !llvm.loop !10

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i267, %_ZNSt6vectorIN6duckdb26FilterInfoWithTotalDomainsESaIS1_EED2Ev.exit
  %i.kh = load ptr, ptr %6, align 8, !tbaa !152
  %i.ki = load i64, ptr %i.b, align 8, !tbaa !153
  %i.kj = shl i64 %i.ki, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kh, i8 0, i64 %i.kj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.kk = load ptr, ptr %6, align 8, !tbaa !152   ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.a
  br i1 %i.kl, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.kk) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

end_hunk_0
