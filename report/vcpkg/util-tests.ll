Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/util-tests?download=true
inline.NumInlined: 1180
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_2v:bb.a
  %27 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = alloca [6 x i32], align 4                ; 6 uses
  %28 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %29 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %30 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %31 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %32 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %33 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %34 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %35 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %36 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %37 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %38 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %39 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %40 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %41 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %42 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %43 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %44 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %45 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %46 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %47 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %48 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %49 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %50 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %51 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %52 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %53 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %54 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %55 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %56 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %57 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %58 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %59 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %60 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %61 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %62 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %63 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %64 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %65 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %66 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %67 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %68 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %69 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %70 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %71 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %72 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %73 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %74 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %75 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %76 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  store ptr @.str.10, ptr %22, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 5, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  store ptr @.str, ptr %23, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 32, ptr %i.g, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.21) #20
  %i.h = load ptr, ptr %24, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr %i.h, i64 %i.j, i32 noundef 2)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.k = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 12 uses
  store ptr null, ptr %26, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  store ptr null, ptr %27, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.19) #20, !noalias !70
  %i.l = load ptr, ptr %19, align 8, !noalias !70
  %i.m = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !70
  %i.o = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i8 1, ptr %i.o, align 8, !tbaa !18, !alias.scope !70
  %i.p = getelementptr inbounds nuw i8, ptr %25, i64 9
  store i8 1, ptr %i.p, align 1, !tbaa !21, !alias.scope !70
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EE, i64 16), ptr %25, align 8, !tbaa !22, !alias.scope !70
  %i.q = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %26, ptr %i.q, align 8, !tbaa !24, !alias.scope !70
  %i.r = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %i.l, ptr %i.r, align 8, !tbaa !26, !alias.scope !70
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27, !alias.scope !70
  %i.s = getelementptr inbounds nuw i8, ptr %25, i64 40
  store ptr %27, ptr %i.s, align 8, !tbaa !24, !alias.scope !70
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(10) %25)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.aa

bb.d:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %.1 = extractvalue { ptr, i32 } %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  %i.v = call ptr @__cxa_begin_catch(ptr %.1) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %bb.e unwind label %bb.x

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e, %bb.b
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %21, i64 58
  %i.x = load i8, ptr %i.w, align 2, !tbaa !28, !range !35, !noundef !36
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %21)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) @constinit.22, i64 24, i1 false), !tbaa.struct !41
  %i.ah = load ptr, ptr %20, align 8, !tbaa !39   ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIPKiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.am)
          to label %bb.j unwind label %bb.ab

bb.j:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  store ptr @.str.10, ptr %29, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 5, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  store ptr @.str, ptr %30, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 36, ptr %i.ao, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull @.str.23) #20
  %i.ap = load ptr, ptr %31, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr %i.ap, i64 %i.ar, i32 noundef 2)
          to label %bb.k unwind label %bb.ac

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !39, !noalias !73 ; 5 uses
  %i.at = load ptr, ptr %20, align 8, !tbaa !39, !noalias !76 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64               ; 4 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 4 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = ashr i64 %i.aw, 4                       ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i112, label %._crit_edge.i.i.i.i104

.lr.ph.i.i.i.i112:                                ; preds = %bb.k
  %77 = and i64 %i.aw, -16
  %78 = sub i64 %i.au, %77                        ; 2 uses
  %i.az = mul nsw i64 %i.ax, -16
  %scevgep.i.i.i113 = getelementptr i8, ptr %i.as, i64 %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i112
  %i.ba = phi ptr [ %i.as, %.lr.ph.i.i.i.i112 ], [ %i.bo, %bb.s ] ; 6 uses
  %i.bb = phi i64 [ %i.au, %.lr.ph.i.i.i.i112 ], [ %i.bu, %bb.s ] ; 2 uses
  %.031.i.i.i.i114 = phi i64 [ %i.ax, %.lr.ph.i.i.i.i112 ], [ %i.bs, %bb.s ] ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43, !noalias !79
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %.noexc62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !43, !noalias !79
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %.cast.i.i.i.i119 = ptrtoint ptr %i.bj to i64
  br label %.noexc62

bb.o:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds i8, ptr %i.ba, i64 -12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !43, !noalias !79
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %.cast17.i.i.i.i118 = ptrtoint ptr %i.bn to i64
  br label %.noexc62

bb.q:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds i8, ptr %i.ba, i64 -16 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43, !noalias !79
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds i8, ptr %i.ba, i64 -12
  %.cast18.i.i.i.i117 = ptrtoint ptr %i.br to i64
  br label %.noexc62

bb.s:                                             ; preds = %bb.q
  %i.bs = add nsw i64 %.031.i.i.i.i114, -1
  %i.bt = icmp sgt i64 %.031.i.i.i.i114, 1
  %i.bu = ptrtoint ptr %i.bo to i64
  br i1 %i.bt, label %bb.l, label %._crit_edge.loopexit.i.i.i.i115, !llvm.loop !88

._crit_edge.loopexit.i.i.i.i115:                  ; preds = %bb.s
  %.pre51.i.i.i.i116 = sub i64 %78, %i.av
  br label %._crit_edge.i.i.i.i104

._crit_edge.i.i.i.i104:                           ; preds = %._crit_edge.loopexit.i.i.i.i115, %bb.k
  %.pre-phi52.i.i.i.i105 = phi i64 [ %.pre51.i.i.i.i116, %._crit_edge.loopexit.i.i.i.i115 ], [ %i.aw, %bb.k ]
  %i.bv = phi i64 [ %78, %._crit_edge.loopexit.i.i.i.i115 ], [ %i.au, %bb.k ] ; 4 uses
  %i.bw = phi ptr [ %scevgep.i.i.i113, %._crit_edge.loopexit.i.i.i.i115 ], [ %i.as, %bb.k ] ; 2 uses
  %i.bx = ashr exact i64 %.pre-phi52.i.i.i.i105, 2
  switch i64 %i.bx, label %.noexc62 [
    i64 3, label %bb.t
    i64 2, label %._crit_edge._crit_edge.i.i.i.i110
    i64 1, label %._crit_edge._crit_edge47.i.i.i.i106
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i104
  %i.by = inttoptr i64 %i.bv to ptr
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !43, !noalias !79
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.noexc62, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 2 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  br label %._crit_edge._crit_edge.i.i.i.i110

._crit_edge._crit_edge.i.i.i.i110:                ; preds = %._crit_edge.i.i.i.i104, %bb.u
  %i.ce = phi ptr [ %i.cc, %bb.u ], [ %i.bw, %._crit_edge.i.i.i.i104 ]
  %i.cf = phi i64 [ %i.cd, %bb.u ], [ %i.bv, %._crit_edge.i.i.i.i104 ] ; 2 uses
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !43, !noalias !79
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %.noexc62, label %bb.v

bb.v:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i110
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.cl = ptrtoint ptr %i.ck to i64
  br label %._crit_edge._crit_edge47.i.i.i.i106

._crit_edge._crit_edge47.i.i.i.i106:              ; preds = %._crit_edge.i.i.i.i104, %bb.v
  %i.cm = phi i64 [ %i.cl, %bb.v ], [ %i.bv, %._crit_edge.i.i.i.i104 ] ; 2 uses
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !43, !noalias !79
  %i.cq = icmp eq i32 %i.cp, 1
  %spec.select.i.i.i108 = select i1 %i.cq, i64 %i.cm, i64 %i.av
  br label %.noexc62

.noexc62:                                         ; preds = %bb.l, %._crit_edge._crit_edge47.i.i.i.i106, %._crit_edge._crit_edge.i.i.i.i110, %bb.t, %._crit_edge.i.i.i.i104, %bb.r, %bb.p, %bb.n
  %.sink.i.i.i.i109 = phi i64 [ %spec.select.i.i.i108, %._crit_edge._crit_edge47.i.i.i.i106 ], [ %i.cf, %._crit_edge._crit_edge.i.i.i.i110 ], [ %i.bv, %bb.t ], [ %i.av, %._crit_edge.i.i.i.i104 ], [ %.cast18.i.i.i.i117, %bb.r ], [ %.cast17.i.i.i.i118, %bb.p ], [ %.cast.i.i.i.i119, %bb.n ], [ %i.bb, %bb.l ]
  %i.cr = inttoptr i64 %.sink.i.i.i.i109 to ptr   ; 2 uses
  %i.cs = icmp eq ptr %i.at, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %spec.select202 = select i1 %i.cs, ptr %i.as, ptr %i.ct ; 2 uses
  store ptr %spec.select202, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  %i.cu = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  store ptr %i.cu, ptr %34, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  %i.cv = icmp eq ptr %spec.select202, %i.cu
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.19) #20, !noalias !89
  %i.cw = load ptr, ptr %18, align 8, !noalias !89
  %i.cx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !89
  %i.cz = zext i1 %i.cv to i8
  %i.da = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i8 1, ptr %i.da, align 8, !tbaa !18, !alias.scope !89
  %i.db = getelementptr inbounds nuw i8, ptr %32, i64 9
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !21, !alias.scope !89
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EE, i64 16), ptr %32, align 8, !tbaa !22, !alias.scope !89
  %i.dc = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %33, ptr %i.dc, align 8, !tbaa !24, !alias.scope !89
  %i.dd = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %i.cw, ptr %i.dd, align 8, !tbaa !26, !alias.scope !89
  %.sroa.2.0..sroa_idx.i.i64 = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i64 %i.cy, ptr %.sroa.2.0..sroa_idx.i.i64, align 8, !tbaa !27, !alias.scope !89
  %i.de = getelementptr inbounds nuw i8, ptr %32, i64 40
  store ptr %34, ptr %i.de, align 8, !tbaa !24, !alias.scope !89
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(10) %32)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %.noexc62
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %bb.af

bb.x:                                             ; preds = %bb.d
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.eu

bb.y:                                             ; preds = %bb.f, %bb.e
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pn27 = phi { ptr, i32 } [ %i.dg, %bb.y ], [ %i.df, %bb.x ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %21) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.c
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.z ], [ %i.t, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.es

bb.ab:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.es

bb.ac:                                            ; preds = %bb.j
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %bb.az

bb.ad:                                            ; preds = %.noexc62
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  %.5 = extractvalue { ptr, i32 } %i.dj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.dk = call ptr @__cxa_begin_catch(ptr %.5) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %bb.ae unwind label %bb.aw

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.ax

bb.af:                                            ; preds = %bb.ae, %bb.w
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %bb.ag unwind label %bb.ax

bb.ag:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %28, i64 58
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !28, !range !35, !noundef !36
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN5Catch16AssertionHandlerD2Ev.exit65, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.do = getelementptr inbounds nuw i8, ptr %28, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !22
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 112
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 8 dereferenceable(72) %28)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit65 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit65:           ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  store ptr @.str.10, ptr %36, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 5, ptr %i.dv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  store ptr @.str, ptr %37, align 8, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 37, ptr %i.dw, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull @.str.24) #20
  %i.dx = load ptr, ptr %38, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.dz = load i64, ptr %i.dy, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, ptr %i.dx, i64 %i.dz, i32 noundef 2)
          to label %bb.aj unwind label %bb.ba

bb.aj:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !39, !noalias !92 ; 5 uses
  %i.eb = load ptr, ptr %20, align 8, !tbaa !39, !noalias !95 ; 3 uses
  %i.ec = ptrtoint ptr %i.ea to i64               ; 4 uses
  %i.ed = ptrtoint ptr %i.eb to i64               ; 4 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 3 uses
  %i.ef = ashr i64 %i.ee, 4                       ; 3 uses
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i.i.i.i129, label %._crit_edge.i.i.i.i121

.lr.ph.i.i.i.i129:                                ; preds = %bb.aj
  %79 = and i64 %i.ee, -16
  %80 = sub i64 %i.ec, %79                        ; 2 uses
  %i.eh = mul nsw i64 %i.ef, -16
  %scevgep.i.i.i130 = getelementptr i8, ptr %i.ea, i64 %i.eh
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i129
  %i.ei = phi ptr [ %i.ea, %.lr.ph.i.i.i.i129 ], [ %i.ew, %bb.ar ] ; 6 uses
  %i.ej = phi i64 [ %i.ec, %.lr.ph.i.i.i.i129 ], [ %i.fc, %bb.ar ] ; 2 uses
  %.031.i.i.i.i131 = phi i64 [ %i.ef, %.lr.ph.i.i.i.i129 ], [ %i.fa, %bb.ar ] ; 2 uses
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !43, !noalias !98
  %i.en = icmp eq i32 %i.em, 2
  br i1 %i.en, label %.noexc68, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eo = getelementptr inbounds i8, ptr %i.ei, i64 -8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !43, !noalias !98
  %i.eq = icmp eq i32 %i.ep, 2
  br i1 %i.eq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.er = getelementptr inbounds i8, ptr %i.ei, i64 -4
  %.cast.i.i.i.i136 = ptrtoint ptr %i.er to i64
  br label %.noexc68

bb.an:                                            ; preds = %bb.al
  %i.es = getelementptr inbounds i8, ptr %i.ei, i64 -12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !43, !noalias !98
  %i.eu = icmp eq i32 %i.et, 2
  br i1 %i.eu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ev = getelementptr inbounds i8, ptr %i.ei, i64 -8
  %.cast17.i.i.i.i135 = ptrtoint ptr %i.ev to i64
  br label %.noexc68

bb.ap:                                            ; preds = %bb.an
  %i.ew = getelementptr inbounds i8, ptr %i.ei, i64 -16 ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !43, !noalias !98
  %i.ey = icmp eq i32 %i.ex, 2
  br i1 %i.ey, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ez = getelementptr inbounds i8, ptr %i.ei, i64 -12
  %.cast18.i.i.i.i134 = ptrtoint ptr %i.ez to i64
  br label %.noexc68

bb.ar:                                            ; preds = %bb.ap
  %i.fa = add nsw i64 %.031.i.i.i.i131, -1
  %i.fb = icmp sgt i64 %.031.i.i.i.i131, 1
  %i.fc = ptrtoint ptr %i.ew to i64
  br i1 %i.fb, label %bb.ak, label %._crit_edge.loopexit.i.i.i.i132, !llvm.loop !88

._crit_edge.loopexit.i.i.i.i132:                  ; preds = %bb.ar
  %.pre51.i.i.i.i133 = sub i64 %80, %i.ed
  br label %._crit_edge.i.i.i.i121

._crit_edge.i.i.i.i121:                           ; preds = %._crit_edge.loopexit.i.i.i.i132, %bb.aj
  %.pre-phi52.i.i.i.i122 = phi i64 [ %.pre51.i.i.i.i133, %._crit_edge.loopexit.i.i.i.i132 ], [ %i.ee, %bb.aj ]
  %i.fd = phi i64 [ %80, %._crit_edge.loopexit.i.i.i.i132 ], [ %i.ec, %bb.aj ] ; 4 uses
  %i.fe = phi ptr [ %scevgep.i.i.i130, %._crit_edge.loopexit.i.i.i.i132 ], [ %i.ea, %bb.aj ] ; 2 uses
  %i.ff = ashr exact i64 %.pre-phi52.i.i.i.i122, 2
  switch i64 %i.ff, label %.noexc68 [
    i64 3, label %bb.as
    i64 2, label %._crit_edge._crit_edge.i.i.i.i127
    i64 1, label %._crit_edge._crit_edge47.i.i.i.i123
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i.i121
  %i.fg = inttoptr i64 %i.fd to ptr
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !43, !noalias !98
  %i.fj = icmp eq i32 %i.fi, 2
  br i1 %i.fj, label %.noexc68, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fk = getelementptr inbounds i8, ptr %i.fe, i64 -4 ; 2 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  br label %._crit_edge._crit_edge.i.i.i.i127

._crit_edge._crit_edge.i.i.i.i127:                ; preds = %._crit_edge.i.i.i.i121, %bb.at
  %i.fm = phi ptr [ %i.fk, %bb.at ], [ %i.fe, %._crit_edge.i.i.i.i121 ]
  %i.fn = phi i64 [ %i.fl, %bb.at ], [ %i.fd, %._crit_edge.i.i.i.i121 ] ; 2 uses
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !43, !noalias !98
  %i.fr = icmp eq i32 %i.fq, 2
  br i1 %i.fr, label %.noexc68, label %bb.au

bb.au:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i127
  %i.fs = getelementptr inbounds i8, ptr %i.fm, i64 -4
  %i.ft = ptrtoint ptr %i.fs to i64
  br label %._crit_edge._crit_edge47.i.i.i.i123

._crit_edge._crit_edge47.i.i.i.i123:              ; preds = %._crit_edge.i.i.i.i121, %bb.au
  %i.fu = phi i64 [ %i.ft, %bb.au ], [ %i.fd, %._crit_edge.i.i.i.i121 ] ; 2 uses
  %i.fv = inttoptr i64 %i.fu to ptr
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !43, !noalias !98
  %i.fy = icmp eq i32 %i.fx, 2
  %spec.select.i.i.i125 = select i1 %i.fy, i64 %i.fu, i64 %i.ed
  br label %.noexc68

.noexc68:                                         ; preds = %bb.ak, %._crit_edge._crit_edge47.i.i.i.i123, %._crit_edge._crit_edge.i.i.i.i127, %bb.as, %._crit_edge.i.i.i.i121, %bb.aq, %bb.ao, %bb.am
  %.sink.i.i.i.i126 = phi i64 [ %spec.select.i.i.i125, %._crit_edge._crit_edge47.i.i.i.i123 ], [ %i.fn, %._crit_edge._crit_edge.i.i.i.i127 ], [ %i.fd, %bb.as ], [ %i.ed, %._crit_edge.i.i.i.i121 ], [ %.cast18.i.i.i.i134, %bb.aq ], [ %.cast17.i.i.i.i135, %bb.ao ], [ %.cast.i.i.i.i136, %bb.am ], [ %i.ej, %bb.ak ]
  %i.fz = inttoptr i64 %.sink.i.i.i.i126 to ptr   ; 2 uses
  %i.ga = icmp eq ptr %i.eb, %i.fz
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 -4
  %spec.select203 = select i1 %i.ga, ptr %i.ea, ptr %i.gb ; 2 uses
  store ptr %spec.select203, ptr %40, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  store ptr %i.gc, ptr %41, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.gd = icmp eq ptr %spec.select203, %i.gc
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.19) #20, !noalias !107
  %i.ge = load ptr, ptr %17, align 8, !noalias !107
  %i.gf = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !107
  %i.gh = zext i1 %i.gd to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i8 1, ptr %i.gi, align 8, !tbaa !18, !alias.scope !107
  %i.gj = getelementptr inbounds nuw i8, ptr %39, i64 9
  store i8 %i.gh, ptr %i.gj, align 1, !tbaa !21, !alias.scope !107
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EE, i64 16), ptr %39, align 8, !tbaa !22, !alias.scope !107
  %i.gk = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %40, ptr %i.gk, align 8, !tbaa !24, !alias.scope !107
  %i.gl = getelementptr inbounds nuw i8, ptr %39, i64 24
  store ptr %i.ge, ptr %i.gl, align 8, !tbaa !26, !alias.scope !107
  %.sroa.2.0..sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i64 %i.gg, ptr %.sroa.2.0..sroa_idx.i.i70, align 8, !tbaa !27, !alias.scope !107
  %i.gm = getelementptr inbounds nuw i8, ptr %39, i64 40
  store ptr %41, ptr %i.gm, align 8, !tbaa !24, !alias.scope !107
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %35, ptr noundef nonnull align 8 dereferenceable(10) %39)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %.noexc68
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.bd

bb.aw:                                            ; preds = %bb.ad
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.eu

bb.ax:                                            ; preds = %bb.af, %bb.ae
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.pn31 = phi { ptr, i32 } [ %i.go, %bb.ax ], [ %i.gn, %bb.aw ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %28) #20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ac
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.ay ], [ %i.di, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.es

bb.ba:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit65
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %bb.bx

bb.bb:                                            ; preds = %.noexc68
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  %.9 = extractvalue { ptr, i32 } %i.gq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %i.gr = call ptr @__cxa_begin_catch(ptr %.9) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %35)
          to label %bb.bc unwind label %bb.bu

bb.bc:                                            ; preds = %bb.bb
  invoke void @__cxa_end_catch()
          to label %bb.bd unwind label %bb.bv

bb.bd:                                            ; preds = %bb.bc, %bb.av
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %35)
          to label %bb.be unwind label %bb.bv

bb.be:                                            ; preds = %bb.bd
  %i.gs = getelementptr inbounds nuw i8, ptr %35, i64 58
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !28, !range !35, !noundef !36
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %_ZN5Catch16AssertionHandlerD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gv = getelementptr inbounds nuw i8, ptr %35, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !22
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 112
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull align 8 dereferenceable(72) %35)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit71 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit71:           ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  store ptr @.str.10, ptr %43, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 5, ptr %i.hc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  store ptr @.str, ptr %44, align 8, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 38, ptr %i.hd, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull @.str.25) #20
  %i.he = load ptr, ptr %45, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.hg = load i64, ptr %i.hf, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr %i.he, i64 %i.hg, i32 noundef 2)
          to label %bb.bh unwind label %bb.by

bb.bh:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  %i.hh = load ptr, ptr %i.k, align 8, !tbaa !39, !noalias !110 ; 7 uses
  %i.hi = load ptr, ptr %20, align 8, !tbaa !39, !noalias !113 ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64               ; 4 uses
  %i.hk = ptrtoint ptr %i.hi to i64               ; 4 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 3 uses
  %i.hm = ashr i64 %i.hl, 4                       ; 3 uses
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.i.i.i.i146, label %._crit_edge.i.i.i.i138

.lr.ph.i.i.i.i146:                                ; preds = %bb.bh
  %81 = and i64 %i.hl, -16
  %82 = sub i64 %i.hj, %81                        ; 2 uses
  %i.ho = mul nsw i64 %i.hm, -16
  %scevgep.i.i.i147 = getelementptr i8, ptr %i.hh, i64 %i.ho
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i146
  %i.hp = phi ptr [ %i.hh, %.lr.ph.i.i.i.i146 ], [ %i.id, %bb.bp ] ; 6 uses
  %i.hq = phi i64 [ %i.hj, %.lr.ph.i.i.i.i146 ], [ %i.ij, %bb.bp ] ; 2 uses
  %.031.i.i.i.i148 = phi i64 [ %i.hm, %.lr.ph.i.i.i.i146 ], [ %i.ih, %bb.bp ] ; 2 uses
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !43, !noalias !116
  %i.hu = icmp eq i32 %i.ht, 5
  br i1 %i.hu, label %.noexc74, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hv = getelementptr inbounds i8, ptr %i.hp, i64 -8
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !43, !noalias !116
  %i.hx = icmp eq i32 %i.hw, 5
  br i1 %i.hx, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hy = getelementptr inbounds i8, ptr %i.hp, i64 -4
  %.cast.i.i.i.i153 = ptrtoint ptr %i.hy to i64
  br label %.noexc74

bb.bl:                                            ; preds = %bb.bj
  %i.hz = getelementptr inbounds i8, ptr %i.hp, i64 -12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !43, !noalias !116
  %i.ib = icmp eq i32 %i.ia, 5
  br i1 %i.ib, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ic = getelementptr inbounds i8, ptr %i.hp, i64 -8
  %.cast17.i.i.i.i152 = ptrtoint ptr %i.ic to i64
  br label %.noexc74

bb.bn:                                            ; preds = %bb.bl
  %i.id = getelementptr inbounds i8, ptr %i.hp, i64 -16 ; 3 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !43, !noalias !116
  %i.if = icmp eq i32 %i.ie, 5
  br i1 %i.if, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ig = getelementptr inbounds i8, ptr %i.hp, i64 -12
  %.cast18.i.i.i.i151 = ptrtoint ptr %i.ig to i64
  br label %.noexc74

bb.bp:                                            ; preds = %bb.bn
  %i.ih = add nsw i64 %.031.i.i.i.i148, -1
  %i.ii = icmp sgt i64 %.031.i.i.i.i148, 1
  %i.ij = ptrtoint ptr %i.id to i64
  br i1 %i.ii, label %bb.bi, label %._crit_edge.loopexit.i.i.i.i149, !llvm.loop !88

._crit_edge.loopexit.i.i.i.i149:                  ; preds = %bb.bp
  %.pre51.i.i.i.i150 = sub i64 %82, %i.hk
  br label %._crit_edge.i.i.i.i138

._crit_edge.i.i.i.i138:                           ; preds = %._crit_edge.loopexit.i.i.i.i149, %bb.bh
  %.pre-phi52.i.i.i.i139 = phi i64 [ %.pre51.i.i.i.i150, %._crit_edge.loopexit.i.i.i.i149 ], [ %i.hl, %bb.bh ]
  %i.ik = phi i64 [ %82, %._crit_edge.loopexit.i.i.i.i149 ], [ %i.hj, %bb.bh ] ; 4 uses
  %i.il = phi ptr [ %scevgep.i.i.i147, %._crit_edge.loopexit.i.i.i.i149 ], [ %i.hh, %bb.bh ] ; 2 uses
  %i.im = ashr exact i64 %.pre-phi52.i.i.i.i139, 2
  switch i64 %i.im, label %.noexc74 [
    i64 3, label %bb.bq
    i64 2, label %._crit_edge._crit_edge.i.i.i.i144
    i64 1, label %._crit_edge._crit_edge47.i.i.i.i140
  ]

bb.bq:                                            ; preds = %._crit_edge.i.i.i.i138
  %i.in = inttoptr i64 %i.ik to ptr
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 -4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !43, !noalias !116
  %i.iq = icmp eq i32 %i.ip, 5
  br i1 %i.iq, label %.noexc74, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ir = getelementptr inbounds i8, ptr %i.il, i64 -4 ; 2 uses
  %i.is = ptrtoint ptr %i.ir to i64
  br label %._crit_edge._crit_edge.i.i.i.i144

._crit_edge._crit_edge.i.i.i.i144:                ; preds = %._crit_edge.i.i.i.i138, %bb.br
  %i.it = phi ptr [ %i.ir, %bb.br ], [ %i.il, %._crit_edge.i.i.i.i138 ]
  %i.iu = phi i64 [ %i.is, %bb.br ], [ %i.ik, %._crit_edge.i.i.i.i138 ] ; 2 uses
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !43, !noalias !116
  %i.iy = icmp eq i32 %i.ix, 5
  br i1 %i.iy, label %.noexc74, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i144
  %i.iz = getelementptr inbounds i8, ptr %i.it, i64 -4
  %i.ja = ptrtoint ptr %i.iz to i64
  br label %._crit_edge._crit_edge47.i.i.i.i140

._crit_edge._crit_edge47.i.i.i.i140:              ; preds = %._crit_edge.i.i.i.i138, %bb.bs
  %i.jb = phi i64 [ %i.ja, %bb.bs ], [ %i.ik, %._crit_edge.i.i.i.i138 ] ; 2 uses
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !43, !noalias !116
  %i.jf = icmp eq i32 %i.je, 5
  %spec.select.i.i.i142 = select i1 %i.jf, i64 %i.jb, i64 %i.hk
  br label %.noexc74

.noexc74:                                         ; preds = %bb.bi, %._crit_edge._crit_edge47.i.i.i.i140, %._crit_edge._crit_edge.i.i.i.i144, %bb.bq, %._crit_edge.i.i.i.i138, %bb.bo, %bb.bm, %bb.bk
  %.sink.i.i.i.i143 = phi i64 [ %spec.select.i.i.i142, %._crit_edge._crit_edge47.i.i.i.i140 ], [ %i.iu, %._crit_edge._crit_edge.i.i.i.i144 ], [ %i.ik, %bb.bq ], [ %i.hk, %._crit_edge.i.i.i.i138 ], [ %.cast18.i.i.i.i151, %bb.bo ], [ %.cast17.i.i.i.i152, %bb.bm ], [ %.cast.i.i.i.i153, %bb.bk ], [ %i.hq, %bb.bi ]
  %i.jg = inttoptr i64 %.sink.i.i.i.i143 to ptr   ; 2 uses
  %i.jh = icmp eq ptr %i.hi, %i.jg
  %i.ji = getelementptr inbounds i8, ptr %i.jg, i64 -4
  %spec.select204 = select i1 %i.jh, ptr %i.hh, ptr %i.ji ; 2 uses
  store ptr %spec.select204, ptr %47, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  store ptr %i.hh, ptr %48, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.jj = icmp eq ptr %spec.select204, %i.hh
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.19) #20, !noalias !125
  %i.jk = load ptr, ptr %16, align 8, !noalias !125
  %i.jl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !noalias !125
  %i.jn = zext i1 %i.jj to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i8 1, ptr %i.jo, align 8, !tbaa !18, !alias.scope !125
  %i.jp = getelementptr inbounds nuw i8, ptr %46, i64 9
  store i8 %i.jn, ptr %i.jp, align 1, !tbaa !21, !alias.scope !125
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES9_EE, i64 16), ptr %46, align 8, !tbaa !22, !alias.scope !125
  %i.jq = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %47, ptr %i.jq, align 8, !tbaa !24, !alias.scope !125
  %i.jr = getelementptr inbounds nuw i8, ptr %46, i64 24
  store ptr %i.jk, ptr %i.jr, align 8, !tbaa !26, !alias.scope !125
  %.sroa.2.0..sroa_idx.i.i76 = getelementptr inbounds nuw i8, ptr %46, i64 32
  store i64 %i.jm, ptr %.sroa.2.0..sroa_idx.i.i76, align 8, !tbaa !27, !alias.scope !125
  %i.js = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr %48, ptr %i.js, align 8, !tbaa !24, !alias.scope !125
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %42, ptr noundef nonnull align 8 dereferenceable(10) %46)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %.noexc74
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %46) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  br label %bb.cb

bb.bu:                                            ; preds = %bb.bb
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bw unwind label %bb.eu

bb.bv:                                            ; preds = %bb.bd, %bb.bc
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.pn35 = phi { ptr, i32 } [ %i.ju, %bb.bv ], [ %i.jt, %bb.bu ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %35) #20
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.ba
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %bb.bw ], [ %i.gp, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  br label %bb.es

bb.by:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit71
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  br label %bb.ck

bb.bz:                                            ; preds = %.noexc74
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %46) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #20
  %.13 = extractvalue { ptr, i32 } %i.jw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  %i.jx = call ptr @__cxa_begin_catch(ptr %.13) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %42)
          to label %bb.ca unwind label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_end_catch()
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca, %bb.bt
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %42)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  %i.jy = getelementptr inbounds nuw i8, ptr %42, i64 58
  %i.jz = load i8, ptr %i.jy, align 2, !tbaa !28, !range !35, !noundef !36
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %_ZN5Catch16AssertionHandlerD2Ev.exit77, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kb = getelementptr inbounds nuw i8, ptr %42, i64 64
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !22
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 112
  %i.kf = load ptr, ptr %i.ke, align 8
  invoke void %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef nonnull align 8 dereferenceable(72) %42)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit77 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit77:           ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #20
  store ptr @.str.10, ptr %50, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 5, ptr %i.ki, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #20
  store ptr @.str, ptr %51, align 8, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i64 39, ptr %i.kj, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull @.str.26) #20
  %i.kk = load ptr, ptr %52, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.km = load i64, ptr %i.kl, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %49, ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %51, ptr %i.kk, i64 %i.km, i32 noundef 2)
          to label %bb.cf unwind label %bb.cl

bb.cf:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 2, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.kn = load ptr, ptr %i.k, align 8, !tbaa !39, !noalias !128
  store ptr %i.kn, ptr %14, align 8, !tbaa !39, !alias.scope !128
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ko = load ptr, ptr %20, align 8, !tbaa !39, !noalias !131
  store ptr %i.ko, ptr %15, align 8, !tbaa !39, !alias.scope !131
  invoke void @_ZN5vcpkg4Util8find_nthISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiEEDaT_SB_RKT0_m(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 1)
          to label %.noexc80 unwind label %bb.cm

.noexc80:                                         ; preds = %bb.cf
  %i.kp = load ptr, ptr %20, align 8, !tbaa !39, !noalias !134
  %.sroa.0.0.copyload.i.i.i78 = load ptr, ptr %13, align 8, !tbaa !39 ; 2 uses
  %i.kq = icmp eq ptr %.sroa.0.0.copyload.i.i.i78, %i.kp
  %i.kr = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.ks = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i78, i64 -4
  %.sroa.0.0.i79 = select i1 %i.kq, ptr %i.kr, ptr %i.ks ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE15_M_range_insertIPKiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_S9_St20forward_iterator_tag:bb.a
_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !239

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !43
  store i32 %i.ag, ptr %1, align 4, !tbaa !43
  br label %_ZSt4copyIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !239

bb.n:                                             ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !176
  br label %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !43
  store i32 %i.an, ptr %i.h, align 4, !tbaa !43
  br label %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !176
  %i.ar = icmp sgt i64 %i.m, 4
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !239

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aq, ptr align 4 %1, i64 %i.m, i1 false)
  %.pre70 = load ptr, ptr %i.g, align 8, !tbaa !176
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.as = load i32, ptr %1, align 4, !tbaa !43
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !43
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre70, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !176
  %i.av = icmp sgt i64 %i.m, 4
  br i1 %i.av, label %bb.t, label %bb.u, !prof !239

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit55
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i32, ptr %2, align 4, !tbaa !43
  store i32 %i.ax, ptr %1, align 4, !tbaa !43
  br label %_ZSt4copyIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !67    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !239

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i32, ptr %i.ay, align 4, !tbaa !43
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 4
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !239

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i32, ptr %2, align 4, !tbaa !43
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !43
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !239

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %1, align 4, !tbaa !43
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !43
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i59 = icmp eq ptr %i.ay, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !67
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !176
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !69
  br label %_ZSt4copyIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKiN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg4Util8find_nthISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiEEDaT_SB_RKT0_m(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i64 noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !39     ; 5 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !39     ; 4 uses
  %i.c = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.d = sub i64 %i.a, %i.b                       ; 3 uses
  %i.e = ashr i64 %i.d, 4                         ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !43, !noalias !240 ; 4 uses
  %5 = and i64 %i.d, -16
  %6 = sub i64 %i.a, %5                           ; 2 uses
  %i.h = mul nsw i64 %i.e, -16
  %scevgep.i.i = getelementptr i8, ptr %i.c, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i.i.i
  %i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.w, %bb.i ] ; 6 uses
  %i.j = phi i64 [ %i.a, %.lr.ph.i.i.i ], [ %i.ac, %bb.i ] ; 2 uses
  %.031.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i ], [ %i.aa, %bb.i ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43, !noalias !240
  %i.n = icmp eq i32 %i.m, %i.g
  br i1 %i.n, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43, !noalias !240
  %i.q = icmp eq i32 %i.p, %i.g
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 -4
  %.cast.i.i.i = ptrtoint ptr %i.r to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 -12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43, !noalias !240
  %i.u = icmp eq i32 %i.t, %i.g
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.cast17.i.i.i = ptrtoint ptr %i.v to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43, !noalias !240
  %i.y = icmp eq i32 %i.x, %i.g
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds i8, ptr %i.i, i64 -12
  %.cast18.i.i.i = ptrtoint ptr %i.z to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = add nsw i64 %.031.i.i.i, -1
  %i.ab = icmp sgt i64 %.031.i.i.i, 1
  %i.ac = ptrtoint ptr %i.w to i64
  br i1 %i.ab, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !88

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre51.i.i.i = sub i64 %6, %i.b
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi52.i.i.i = phi i64 [ %.pre51.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.d, %bb.a ]
  %i.ad = phi i64 [ %6, %._crit_edge.loopexit.i.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.ae = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.af = ashr exact i64 %.pre-phi52.i.i.i, 2
  switch i64 %i.af, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit [
    i64 3, label %bb.j
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge47.i.i.i
  ]

._crit_edge._crit_edge47.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre48.i.i.i = load i32, ptr %3, align 4, !tbaa !43, !noalias !240
  br label %bb.n

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %3, align 4, !tbaa !43, !noalias !240
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = inttoptr i64 %i.ad to ptr
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !43, !noalias !240
  %i.aj = load i32, ptr %3, align 4, !tbaa !43, !noalias !240 ; 2 uses
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge.i.i.i
  %i.an = phi ptr [ %i.al, %bb.k ], [ %i.ae, %._crit_edge._crit_edge.i.i.i ]
  %i.ao = phi i32 [ %i.aj, %bb.k ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %i.ap = phi i64 [ %i.am, %bb.k ], [ %i.ad, %._crit_edge._crit_edge.i.i.i ] ; 2 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !43, !noalias !240
  %i.at = icmp eq i32 %i.as, %i.ao
  br i1 %i.at, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.av = ptrtoint ptr %i.au to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge._crit_edge47.i.i.i
  %i.aw = phi i32 [ %i.ao, %bb.m ], [ %.pre48.i.i.i, %._crit_edge._crit_edge47.i.i.i ]
  %i.ax = phi i64 [ %i.av, %bb.m ], [ %i.ad, %._crit_edge._crit_edge47.i.i.i ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43, !noalias !240
  %i.bb = icmp eq i32 %i.ba, %i.aw
  %spec.select.i.i = select i1 %i.bb, i64 %i.ax, i64 %i.b
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit

_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %._crit_edge.i.i.i, %bb.j, %bb.l, %bb.n
  %.sink.i.i.i = phi i64 [ %spec.select.i.i, %bb.n ], [ %i.ap, %bb.l ], [ %i.ad, %bb.j ], [ %i.b, %._crit_edge.i.i.i ], [ %.cast18.i.i.i, %bb.h ], [ %.cast17.i.i.i, %bb.f ], [ %.cast.i.i.i, %bb.d ], [ %i.j, %bb.b ] ; 3 uses
  store i64 %.sink.i.i.i, ptr %1, align 8
  %.not65 = icmp eq i64 %4, 0
  br i1 %.not65, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20
  %i.bc = phi i64 [ %.sink.i.i.i9, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20 ], [ %.sink.i.i.i, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit ] ; 2 uses
  %.063 = phi i64 [ %i.df, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20 ], [ 0, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit ]
  %.sroa.0.0.copyload.i.i.i = inttoptr i64 %i.bc to ptr ; 2 uses
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %2, align 8, !tbaa !39
  %.not = icmp eq ptr %.sroa.0.0.copyload.i2.i.i, %.sroa.0.0.copyload.i.i.i
  br i1 %.not, label %.critedge, label %bb.o

.critedge:                                        ; preds = %.lr.ph, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit
  %i.bd = phi i64 [ %.sink.i.i.i, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit ], [ %i.bc, %.lr.ph ], [ %.sink.i.i.i9, %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20 ]
  store i64 %i.bd, ptr %0, align 8, !tbaa !39
  ret void

bb.o:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -4 ; 5 uses
  store ptr %i.be, ptr %1, align 8, !tbaa !247
  %.cast = ptrtoint ptr %i.be to i64              ; 4 uses
  %i.bf = load i64, ptr %2, align 8, !tbaa !39    ; 4 uses
  %i.bg = sub i64 %.cast, %i.bf                   ; 3 uses
  %i.bh = ashr i64 %i.bg, 4                       ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i12, label %._crit_edge.i.i.i4

.lr.ph.i.i.i12:                                   ; preds = %bb.o
  %i.bj = load i32, ptr %3, align 4, !tbaa !43, !noalias !249 ; 4 uses
  %7 = and i64 %i.bg, -16
  %8 = sub i64 %.cast, %7                         ; 2 uses
  %i.bk = mul nsw i64 %i.bh, -16
  %scevgep.i.i13 = getelementptr i8, ptr %i.be, i64 %i.bk
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %.lr.ph.i.i.i12
  %i.bl = phi ptr [ %i.be, %.lr.ph.i.i.i12 ], [ %i.bz, %bb.w ] ; 6 uses
  %i.bm = phi i64 [ %.cast, %.lr.ph.i.i.i12 ], [ %i.cf, %bb.w ] ; 2 uses
  %.031.i.i.i14 = phi i64 [ %i.bh, %.lr.ph.i.i.i12 ], [ %i.cd, %bb.w ] ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !43, !noalias !249
  %i.bq = icmp eq i32 %i.bp, %i.bj
  br i1 %i.bq, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !43, !noalias !249
  %i.bt = icmp eq i32 %i.bs, %i.bj
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %.cast.i.i.i19 = ptrtoint ptr %i.bu to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20

bb.s:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds i8, ptr %i.bl, i64 -12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !43, !noalias !249
  %i.bx = icmp eq i32 %i.bw, %i.bj
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %.cast17.i.i.i18 = ptrtoint ptr %i.by to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20

bb.u:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds i8, ptr %i.bl, i64 -16 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !43, !noalias !249
  %i.cb = icmp eq i32 %i.ca, %i.bj
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds i8, ptr %i.bl, i64 -12
  %.cast18.i.i.i17 = ptrtoint ptr %i.cc to i64
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20

bb.w:                                             ; preds = %bb.u
  %i.cd = add nsw i64 %.031.i.i.i14, -1
  %i.ce = icmp sgt i64 %.031.i.i.i14, 1
  %i.cf = ptrtoint ptr %i.bz to i64
  br i1 %i.ce, label %bb.p, label %._crit_edge.loopexit.i.i.i15, !llvm.loop !88

._crit_edge.loopexit.i.i.i15:                     ; preds = %bb.w
  %.pre51.i.i.i16 = sub i64 %8, %i.bf
  br label %._crit_edge.i.i.i4

._crit_edge.i.i.i4:                               ; preds = %._crit_edge.loopexit.i.i.i15, %bb.o
  %.pre-phi52.i.i.i5 = phi i64 [ %.pre51.i.i.i16, %._crit_edge.loopexit.i.i.i15 ], [ %i.bg, %bb.o ]
  %i.cg = phi i64 [ %8, %._crit_edge.loopexit.i.i.i15 ], [ %.cast, %bb.o ] ; 4 uses
  %i.ch = phi ptr [ %scevgep.i.i13, %._crit_edge.loopexit.i.i.i15 ], [ %i.be, %bb.o ] ; 2 uses
  %i.ci = ashr exact i64 %.pre-phi52.i.i.i5, 2
  switch i64 %i.ci, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20 [
    i64 3, label %bb.x
    i64 2, label %._crit_edge._crit_edge.i.i.i10
    i64 1, label %._crit_edge._crit_edge47.i.i.i6
  ]

._crit_edge._crit_edge47.i.i.i6:                  ; preds = %._crit_edge.i.i.i4
  %.pre48.i.i.i7 = load i32, ptr %3, align 4, !tbaa !43, !noalias !249
  br label %bb.ab

._crit_edge._crit_edge.i.i.i10:                   ; preds = %._crit_edge.i.i.i4
  %.pre.i.i.i11 = load i32, ptr %3, align 4, !tbaa !43, !noalias !249
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge.i.i.i4
  %i.cj = inttoptr i64 %i.cg to ptr
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !43, !noalias !249
  %i.cm = load i32, ptr %3, align 4, !tbaa !43, !noalias !249 ; 2 uses
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cp = ptrtoint ptr %i.co to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge._crit_edge.i.i.i10
  %i.cq = phi ptr [ %i.co, %bb.y ], [ %i.ch, %._crit_edge._crit_edge.i.i.i10 ]
  %i.cr = phi i32 [ %i.cm, %bb.y ], [ %.pre.i.i.i11, %._crit_edge._crit_edge.i.i.i10 ] ; 2 uses
  %i.cs = phi i64 [ %i.cp, %bb.y ], [ %i.cg, %._crit_edge._crit_edge.i.i.i10 ] ; 2 uses
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !43, !noalias !249
  %i.cw = icmp eq i32 %i.cv, %i.cr
  br i1 %i.cw, label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %i.cy = ptrtoint ptr %i.cx to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge._crit_edge47.i.i.i6
  %i.cz = phi i32 [ %i.cr, %bb.aa ], [ %.pre48.i.i.i7, %._crit_edge._crit_edge47.i.i.i6 ]
  %i.da = phi i64 [ %i.cy, %bb.aa ], [ %i.cg, %._crit_edge._crit_edge47.i.i.i6 ] ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !43, !noalias !249
  %i.de = icmp eq i32 %i.dd, %i.cz
  %spec.select.i.i8 = select i1 %i.de, i64 %i.da, i64 %i.bf
  br label %_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20

_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEiET_S9_S9_RKT0_.exit20: ; preds = %bb.p, %bb.r, %bb.t, %bb.v, %._crit_edge.i.i.i4, %bb.x, %bb.z, %bb.ab
  %.sink.i.i.i9 = phi i64 [ %spec.select.i.i8, %bb.ab ], [ %i.cs, %bb.z ], [ %i.cg, %bb.x ], [ %i.bf, %._crit_edge.i.i.i4 ], [ %.cast18.i.i.i17, %bb.v ], [ %.cast17.i.i.i18, %bb.t ], [ %.cast.i.i.i19, %bb.r ], [ %i.bm, %bb.p ] ; 3 uses
  store i64 %.sink.i.i.i9, ptr %1, align 8
  %i.df = add nuw i64 %.063, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %4
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !256
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL24set_duplicates_test_caseSt6vectorIiSaIiEES1_(ptr %.0.val, ptr %.8.val, ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 6 uses
  %5 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  %7 = alloca %"class.Catch::BinaryExpr.5", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5vcpkg4Util14set_duplicatesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS7_ESt4lessIvEEEvT_SD_T0_T1_(ptr %.0.val, ptr %.8.val, ptr nonnull %2)
          to label %_ZN5vcpkg4Util14set_duplicatesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS7_EEEvT_SB_T0_.exit unwind label %bb.g

_ZN5vcpkg4Util14set_duplicatesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS7_EEEvT_SB_T0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr @.str.10, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr @.str, ptr %5, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 50, ptr %i.b, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.37) #20
  %i.c = load ptr, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i64, ptr %i.d, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.c, i64 %i.e, i32 noundef 2)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZN5vcpkg4Util14set_duplicatesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS7_EEEvT_SB_T0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176, !noalias !257 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !67, !noalias !257 ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176, !noalias !257
  %i.n = load ptr, ptr %2, align 8, !tbaa !67, !noalias !257 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.k, %i.q
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.h, ptr %i.n, i64 %i.k), !noalias !257
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  %i.s = zext i1 %.not9.i.i.i.i.i.i.i to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.t = phi i8 [ 0, %bb.b ], [ %i.s, %bb.d ], [ 1, %bb.c ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.19) #20, !noalias !257
  %i.u = load ptr, ptr %1, align 8, !noalias !257
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !257
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.x, align 8, !tbaa !18, !alias.scope !257
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 %i.t, ptr %i.y, align 1, !tbaa !21, !alias.scope !257
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKSt6vectorIiSaIiEES5_EE, i64 16), ptr %7, align 8, !tbaa !22, !alias.scope !257
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %0, ptr %i.z, align 8, !tbaa !260, !alias.scope !257
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.u, ptr %i.aa, align 8, !tbaa !26, !alias.scope !257
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.w, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27, !alias.scope !257
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %2, ptr %i.ab, align 8, !tbaa !260, !alias.scope !257
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %7)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.h:                                             ; preds = %_ZN5vcpkg4Util14set_duplicatesIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS7_EEEvT_SB_T0_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.s

bb.i:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #20
  %.04 = extractvalue { ptr, i32 } %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.af = call ptr @__cxa_begin_catch(ptr %.04) #20 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j, %bb.f
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 58
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !28, !range !35, !noundef !36
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
end_hunk_1
