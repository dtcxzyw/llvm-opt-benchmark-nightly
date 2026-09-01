Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/Shape?download=true
inline.NumInlined: 510
inline.NumDeleted: 232
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7msdfgen5Shape8validateEv:bb.a
  ret i1 %.not2529
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen5Shape9normalizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %2 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %i.a = alloca [3 x ptr], align 16               ; 8 uses
  %3 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 8 uses
  %4 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 8 uses
  %5 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %.not90 = icmp eq ptr %i.b, %i.d
  br i1 %.not90, label %._crit_edge, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph92, %.loopexit
  %.sroa.074.091 = phi ptr [ %i.b, %.lr.ph92 ], [ %i.er, %.loopexit ] ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.074.091, i64 8 ; 12 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %i.i = load ptr, ptr %.sroa.074.091, align 8, !tbaa !19 ; 4 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.l, 8
  br i1 %i.m, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.n = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.r = load ptr, ptr %.sroa.074.091, align 8, !tbaa !19 ; 4 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.r, %bb.c ] ; 2 uses
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #17
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.r, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = phi ptr [ %i.s, %bb.c ], [ %i.r, %_ZSt8_DestroyIPN7msdfgen10EdgeHolderES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.v = load ptr, ptr %i.a, align 16, !tbaa !28
  store ptr %i.v, ptr %3, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.074.091, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %.not.i.i27 = icmp eq ptr %i.u, %i.x
  br i1 %.not.i.i27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit
  invoke void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE5clearEv.exit
  invoke void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.091, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit unwind label %bb.j

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc, %bb.e
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !28
  store ptr %i.aa, ptr %4, align 8, !tbaa !30
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !20  ; 3 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !15
  %.not.i.i29 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i.i29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit
  invoke void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc30 unwind label %bb.k

.noexc30:                                         ; preds = %bb.f
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit32

bb.g:                                             ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit
  invoke void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.091, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit32 unwind label %bb.k

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit32: ; preds = %.noexc30, %bb.g
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.af = load ptr, ptr %i.f, align 16, !tbaa !28
  store ptr %i.af, ptr %5, align 8, !tbaa !30
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !20  ; 3 uses
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !15
  %.not.i.i33 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit32
  invoke void @_ZN7msdfgen10EdgeHolderC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc34 unwind label %bb.l

.noexc34:                                         ; preds = %bb.h
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit36

bb.i:                                             ; preds = %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit32
  invoke void @_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.074.091, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit36 unwind label %bb.l

_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit36: ; preds = %.noexc34, %bb.i
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.loopexit

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.m

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.m

common.resume:                                    ; preds = %bb.w, %bb.s, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.dp, %bb.s ], [ %i.eo, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.al, %bb.k ], [ %i.ak, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %common.resume

bb.n:                                             ; preds = %bb.b
  %i.an = icmp eq ptr %i.i, %i.h
  br i1 %i.an, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.ao = getelementptr inbounds i8, ptr %i.h, i64 -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58
  %.02589 = phi ptr [ %.sroa.067.088, %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58 ], [ %i.ao, %.lr.ph.preheader ] ; 6 uses
  %.sroa.067.088 = phi ptr [ %i.ep, %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58 ], [ %i.i, %.lr.ph.preheader ] ; 8 uses
  %i.ap = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.02589) ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call { double, double } %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.ap, double noundef 1.000000e+00) ; 2 uses
  %i.au = extractvalue { double, double } %i.at, 0 ; 2 uses
  %i.av = extractvalue { double, double } %i.at, 1 ; 2 uses
  %i.aw = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088) ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call { double, double } %i.az(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, double noundef 0.000000e+00) ; 2 uses
  %i.bb = extractvalue { double, double } %i.ba, 0 ; 2 uses
  %i.bc = extractvalue { double, double } %i.ba, 1
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0 ; 2 uses
  %i.be = insertelement <2 x double> %i.bd, double %i.av, i64 1 ; 2 uses
  %i.bf = fmul <2 x double> %i.be, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.au, i64 1 ; 2 uses
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bh, <2 x double> %i.bf) ; 2 uses
  %i.bj = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bi) ; 2 uses
  %6 = fcmp une <2 x double> %i.bi, zeroinitializer ; 2 uses
  %i.bk = insertelement <2 x double> poison, double %i.av, i64 0
  %7 = insertelement <2 x double> %i.bk, double %i.au, i64 1
  %8 = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %9 = fdiv <2 x double> %7, %8
  %i.bl = shufflevector <2 x i1> %6, <2 x i1> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = select <2 x i1> %i.bl, <2 x double> %9, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 3 uses
  %i.bn = insertelement <2 x double> %i.bd, double %i.bb, i64 1
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fdiv <2 x double> %i.bn, %i.bo
  %i.bq = shufflevector <2 x i1> %6, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.br = select <2 x i1> %i.bq, <2 x double> %i.bp, <2 x double> <double 1.000000e+00, double 0.000000e+00> ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.bm, %i.br
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bt = extractelement <2 x double> %i.br, i64 1
  %i.bu = extractelement <2 x double> %i.bm, i64 1
  %i.bv = call noundef double @llvm.fmuladd.f64(double %i.bu, double %i.bt, double %i.bs)
  %i.bw = fcmp olt double %i.bv, f0xBFEFFFFDE7210BE9
  br i1 %i.bw, label %bb.o, label %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58

bb.o:                                             ; preds = %.lr.ph
  %i.bx = fsub <2 x double> %i.br, %i.bm          ; 4 uses
  %foldExtExtBinop106 = fmul <2 x double> %i.bx, %i.bx
  %i.by = extractelement <2 x double> %foldExtExtBinop106, i64 0
  %i.bz = extractelement <2 x double> %i.bx, i64 1 ; 2 uses
  %i.ca = call double @llvm.fmuladd.f64(double %i.bz, double %i.bz, double %i.by) ; 2 uses
  %sqrt.i.i44 = call noundef double @llvm.sqrt.f64(double %i.ca)
  %i.cb = fcmp une double %i.ca, 0.000000e+00
  %i.cc = call noundef ptr @_ZN7msdfgen10EdgeHoldercvPNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.02589)
  %i.cd = call noundef ptr @_ZN7msdfgen10EdgeHoldercvPNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088)
  %i.ce = call noundef i32 @_ZN7msdfgen23convergentCurveOrderingEPKNS_11EdgeSegmentES2_(ptr noundef %i.cc, ptr noundef %i.cd)
  %i.cf = icmp slt i32 %i.ce, 0
  %i.cg = insertelement <2 x double> poison, double %sqrt.i.i44, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = fdiv <2 x double> %i.bx, %i.ch
  %i.cj = fmul <2 x double> %i.ci, splat (double f0xBF59BEB7C3F3C4E6)
  %i.ck = insertelement <2 x i1> poison, i1 %i.cb, i64 0
  %i.cl = shufflevector <2 x i1> %i.ck, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cm = select <2 x i1> %i.cl, <2 x double> %i.cj, <2 x double> <double f0xBF59BEB7C3F3C4E6, double -0.000000e+00> ; 2 uses
  %i.cn = fneg <2 x double> %i.cm
  %i.co = insertelement <2 x i1> poison, i1 %i.cf, i64 0
  %i.cp = shufflevector <2 x i1> %i.co, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cq = select <2 x i1> %i.cp, <2 x double> %i.cn, <2 x double> %i.cm ; 2 uses
  %i.cr = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.02589) ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef i32 %i.cu(ptr noundef nonnull align 8 dereferenceable(12) %i.cr), !inline_history !32
  switch i32 %i.cv, label %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit [
    i32 2, label %bb.p
    i32 3, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.cw = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.02589)
  %i.cx = call noundef ptr @_ZNK7msdfgen16QuadraticSegment14convertToCubicEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cw)
  store ptr %i.cx, ptr %2, align 8, !tbaa !30
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7msdfgen10EdgeHolderaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.02589, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.q unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %i.cz = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.02589) ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %.sroa.01.0.copyload.i = load double, ptr %i.db, align 8, !tbaa !33
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %.sroa.22.0.copyload.i = load double, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !33
  %i.dc = load <2 x double>, ptr %i.da, align 8, !tbaa !33 ; 4 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = fsub double %i.dd, %.sroa.01.0.copyload.i ; 2 uses
  %i.df = extractelement <2 x double> %i.dc, i64 1
  %i.dg = fsub double %i.df, %.sroa.22.0.copyload.i ; 2 uses
  %i.dh = fmul double %i.dg, %i.dg
  %i.di = call double @llvm.fmuladd.f64(double %i.de, double %i.de, double %i.dh)
  %sqrt.i31.i = call noundef double @llvm.sqrt.f64(double %i.di)
  %i.dj = insertelement <2 x double> poison, double %sqrt.i31.i, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x double> %i.cq, %i.dk          ; 2 uses
  %i.dm = fsub <2 x double> %i.dc, %i.dl
  %i.dn = fadd <2 x double> %i.dc, %i.dl
  %i.do = shufflevector <2 x double> %i.dm, <2 x double> %i.dn, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.do, ptr %i.da, align 8, !tbaa !33
  br label %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit

bb.s:                                             ; preds = %bb.p
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit: ; preds = %bb.o, %bb.r
  %i.dq = call noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088) ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = call noundef i32 %i.dt(ptr noundef nonnull align 8 dereferenceable(12) %i.dq), !inline_history !32
  switch i32 %i.du, label %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58 [
    i32 2, label %bb.t
    i32 3, label %bb.v
  ]

bb.t:                                             ; preds = %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.dv = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088)
  %i.dw = call noundef ptr @_ZNK7msdfgen16QuadraticSegment14convertToCubicEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dv)
  store ptr %i.dw, ptr %1, align 8, !tbaa !30
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7msdfgen10EdgeHolderaSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.u unwind label %bb.w       ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit
  %i.dy = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN7msdfgen10EdgeHolderdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.067.088) ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 2 uses
  %.sroa.09.0.copyload.i = load double, ptr %i.dz, align 8, !tbaa !33
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %.sroa.210.0.copyload.i = load double, ptr %.sroa.210.0..sroa_idx.i, align 8, !tbaa !33
  %i.eb = load <2 x double>, ptr %i.ea, align 8, !tbaa !33 ; 4 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %i.ed = fsub double %i.ec, %.sroa.09.0.copyload.i ; 2 uses
  %i.ee = extractelement <2 x double> %i.eb, i64 1
  %i.ef = fsub double %i.ee, %.sroa.210.0.copyload.i ; 2 uses
  %i.eg = fmul double %i.ef, %i.ef
  %i.eh = call double @llvm.fmuladd.f64(double %i.ed, double %i.ed, double %i.eg)
  %sqrt.i.i57 = call noundef double @llvm.sqrt.f64(double %i.eh)
  %i.ei = insertelement <2 x double> poison, double %sqrt.i.i57, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x double> %i.cq, %i.ej          ; 2 uses
  %i.el = fadd <2 x double> %i.eb, %i.ek
  %i.em = fsub <2 x double> %i.eb, %i.ek
  %i.en = shufflevector <2 x double> %i.el, <2 x double> %i.em, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.en, ptr %i.ea, align 8, !tbaa !33
  br label %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58

bb.w:                                             ; preds = %bb.t
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %common.resume

_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58: ; preds = %bb.v, %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit, %.lr.ph
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.067.088, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !13
  %.not86 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not86, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %_ZN7msdfgenL14deconvergeEdgeERNS_10EdgeHolderEiNS_7Vector2E.exit58, %_ZNSt6vectorIN7msdfgen10EdgeHolderESaIS1_EE9push_backEOS1_.exit36, %bb.n
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.074.091, i64 24 ; 2 uses
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !18
  %.not = icmp eq ptr %i.er, %i.es
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !36
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef ptr @_ZN7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef i32 @_ZN7msdfgen23convergentCurveOrderingEPKNS_11EdgeSegmentES2_(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN7msdfgen10EdgeHoldercvPNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen5Shape5boundERdS1_S1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %.not8 = icmp eq ptr %i.a, %i.c
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.09 = phi ptr [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZNK7msdfgen7Contour5boundERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.09, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !18
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37
}

declare void @_ZNK7msdfgen7Contour5boundERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen5Shape11boundMitersERdS1_S1_S1_ddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, double noundef %5, double noundef %6, i32 noundef %7) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  %.not10 = icmp eq ptr %i.a, %i.c
  br i1 %.not10, label %._crit_edge, label %.lr.ph

end_hunk_0
