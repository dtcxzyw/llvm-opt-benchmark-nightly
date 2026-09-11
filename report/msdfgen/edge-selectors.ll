Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-selectors?download=true
inline.NumInlined: 92
inline.NumDeleted: 12
begin_hunk_0_@_ZN7msdfgen29PerpendicularDistanceSelector5resetERKNS_7Vector2E:bb.a
  %.sroa.22.0.copyload = load double, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.a, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %i.b = fsub double %.sroa.01.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %i.c = fsub double %.sroa.22.0.copyload, %.sroa.2.0.copyload ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = tail call double @llvm.fmuladd.f64(double %i.b, double %i.b, double %i.d)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.e)
  %i.f = fmul double %sqrt.i, 1.001000e+00
  %i.g = load double, ptr %0, align 8, !tbaa !20  ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = select i1 %i.h, double 1.000000e+00, double -1.000000e+00
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.f, double %i.g) ; 2 uses
  store double %i.j, ptr %0, align 8, !tbaa !20
  %i.k = tail call double @llvm.fabs.f64(double %i.j) ; 2 uses
  %i.l = fneg double %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.l, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.k, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen29PerpendicularDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.sroa.01.0.copyload.i = load double, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.22.0.copyload.i = load double, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !9 ; 2 uses
  %.sroa.0.0.copyload.i = load double, ptr %1, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9
  %i.c = fsub double %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i ; 2 uses
  %i.d = fsub double %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i ; 2 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = tail call double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.e)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.f)
  %i.g = fmul double %sqrt.i.i, 1.001000e+00      ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = fsub double %i.i, %i.g
  %i.k = load double, ptr %0, align 8, !tbaa !20
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ugt double %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !25 ; 2 uses
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp olt double %i.p, %i.g
  br i1 %i.q, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !26 ; 2 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.s)
  %i.u = fcmp olt double %i.t, %i.g
  br i1 %i.u, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = fcmp ogt double %i.o, 0.000000e+00
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !27 ; 3 uses
  %i.y = fcmp olt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = fadd double %i.g, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !21
  %i.ac = fcmp ult double %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ad = fsub double %i.x, %i.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !22
  %i.ag = fcmp ugt double %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ah = fcmp ogt double %i.s, 0.000000e+00
  br i1 %i.ah, label %bb.i, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread128

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !28 ; 3 uses
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %.split, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit

.split:                                           ; preds = %bb.i
  %i.al = fadd double %i.g, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !21
  %i.ao = fcmp ult double %i.al, %i.an
  br i1 %i.ao, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread128, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit: ; preds = %bb.i
  %i.ap = fsub double %i.aj, %i.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  %i.as = fcmp ugt double %i.ap, %i.ar
  br i1 %i.as, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread128, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.f, %bb.g, %.split, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.at = load ptr, ptr %3, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call { double, double } %i.av(ptr noundef nonnull align 8 dereferenceable(12) %3, double %.sroa.01.0.copyload.i, double %.sroa.22.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.ax = extractvalue { double, double } %i.aw, 0 ; 6 uses
  %i.ay = extractvalue { double, double } %i.aw, 1 ; 2 uses
  %.sroa.0.0.copyload.i54 = load double, ptr %0, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i56 = load double, ptr %.sroa.2.0..sroa_idx.i55, align 8, !tbaa !9
  %i.az = call double @llvm.fabs.f64(double %i.ax) ; 5 uses
  %i.ba = call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i54) ; 2 uses
  %i.bb = fcmp olt double %i.az, %i.ba
  %i.bc = fcmp oeq double %i.az, %i.ba
  %i.bd = fcmp olt double %i.ay, %.sroa.2.0.copyload.i56
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  %i.bf = select i1 %i.bb, i1 true, i1 %i.be
  br i1 %i.bf, label %bb.j, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit

bb.j:                                             ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread
  %i.bg = load double, ptr %i.a, align 8, !tbaa !9
  store double %i.ax, ptr %0, align 8, !tbaa !9
  store double %i.ay, ptr %.sroa.2.0..sroa_idx.i55, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.bh, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bg, ptr %i.bi, align 8, !tbaa !30
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit: ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !14
  store double %i.az, ptr %i.h, align 8, !tbaa !24
  %.sroa.030.0.copyload = load double, ptr %i.b, align 8, !tbaa !9
  %.sroa.231.0.copyload = load double, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !9
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call { double, double } %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 0.000000e+00) ; 2 uses
  %i.bn = extractvalue { double, double } %i.bm, 0
  %i.bo = extractvalue { double, double } %i.bm, 1
  %i.bp = load ptr, ptr %3, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load <2 x double>, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %i.bt = call { double, double } %i.br(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 1.000000e+00) ; 2 uses
  %i.bu = extractvalue { double, double } %i.bt, 0
  %i.bv = extractvalue { double, double } %i.bt, 1
  %i.bw = insertelement <2 x double> %i.bs, double %.sroa.030.0.copyload, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bn, i64 1
  %i.bz = fsub <2 x double> %i.bw, %i.by          ; 3 uses
  %i.ca = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cb = insertelement <2 x double> %i.ca, double %.sroa.231.0.copyload, i64 1
  %i.cc = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.bo, i64 1
  %i.ce = fsub <2 x double> %i.cb, %i.cd          ; 4 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call { double, double } %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 0.000000e+00) ; 2 uses
  %i.cj = extractvalue { double, double } %i.ci, 0
  %i.ck = extractvalue { double, double } %i.ci, 1
  %i.cl = load ptr, ptr %3, align 8, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call { double, double } %i.cn(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 1.000000e+00) ; 2 uses
  %i.cp = extractvalue { double, double } %i.co, 0
  %i.cq = extractvalue { double, double } %i.co, 1
  %i.cr = load ptr, ptr %2, align 8, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call { double, double } %i.ct(ptr noundef nonnull align 8 dereferenceable(12) %2, double noundef 1.000000e+00) ; 2 uses
  %i.cv = extractvalue { double, double } %i.cu, 0
  %i.cw = extractvalue { double, double } %i.cu, 1
  %i.cx = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cw, i64 1 ; 3 uses
  %i.cz = fmul <2 x double> %i.cy, %i.cy
  %i.da = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cv, i64 1 ; 3 uses
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.db, <2 x double> %i.cz) ; 2 uses
  %i.dd = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.dc) ; 2 uses
  %i.de = fcmp une <2 x double> %i.dc, zeroinitializer ; 2 uses
  %i.df = fdiv <2 x double> %i.db, %i.dd
  %i.dg = fdiv <2 x double> %i.cy, %i.dd
  %i.dh = select <2 x i1> %i.de, <2 x double> %i.dg, <2 x double> zeroinitializer ; 3 uses
  %i.di = select <2 x i1> %i.de, <2 x double> %i.df, <2 x double> zeroinitializer ; 3 uses
  %i.dj = load ptr, ptr %4, align 8, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call { double, double } %i.dl(ptr noundef nonnull align 8 dereferenceable(12) %4, double noundef 0.000000e+00) ; 2 uses
  %i.dn = extractvalue { double, double } %i.dm, 0
  %i.do = extractvalue { double, double } %i.dm, 1
  %i.dp = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.do, i64 1 ; 3 uses
  %i.dr = fmul <2 x double> %i.dq, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dn, i64 1 ; 3 uses
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.dt, <2 x double> %i.dr) ; 2 uses
  %i.dv = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.du) ; 2 uses
  %i.dw = fcmp une <2 x double> %i.du, zeroinitializer ; 2 uses
  %i.dx = fdiv <2 x double> %i.dt, %i.dv
  %i.dy = fdiv <2 x double> %i.dq, %i.dv
  %i.dz = select <2 x i1> %i.dw, <2 x double> %i.dy, <2 x double> zeroinitializer ; 4 uses
  %i.ea = select <2 x i1> %i.dw, <2 x double> %i.dx, <2 x double> zeroinitializer ; 3 uses
  %5 = shufflevector <2 x double> %i.ea, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %6 = shufflevector <2 x double> %i.ea, <2 x double> %i.di, <2 x i32> <i32 1, i32 3>
  %7 = fadd <2 x double> %5, %6                   ; 4 uses
  %8 = shufflevector <2 x double> %i.dz, <2 x double> %i.dh, <2 x i32> <i32 0, i32 2>
  %9 = shufflevector <2 x double> %i.dz, <2 x double> %i.dh, <2 x i32> <i32 1, i32 3>
  %10 = fadd <2 x double> %8, %9                  ; 4 uses
  %i.eb = fmul <2 x double> %10, %10
  %11 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %7, <2 x double> %i.eb) ; 2 uses
  %12 = shufflevector <2 x double> %7, <2 x double> %10, <2 x i32> <i32 1, i32 3>
  %13 = fcmp une <2 x double> %11, zeroinitializer ; 2 uses
  %14 = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %11) ; 2 uses
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = fdiv <2 x double> %12, %15              ; 2 uses
  %16 = shufflevector <2 x double> %7, <2 x double> %10, <2 x i32> <i32 0, i32 2>
  %17 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fdiv <2 x double> %16, %17              ; 2 uses
  %18 = shufflevector <2 x double> %i.ed, <2 x double> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.ee = select <2 x i1> %13, <2 x double> %18, <2 x double> zeroinitializer
  %19 = shufflevector <2 x double> %i.ed, <2 x double> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.ef = select <2 x i1> %13, <2 x double> %19, <2 x double> zeroinitializer
  %i.eg = fmul <2 x double> %i.ce, %i.ee
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ef, <2 x double> %i.eg) ; 2 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 0 ; 2 uses
  %i.ej = fneg double %i.ei
  %i.ek = extractelement <2 x double> %i.eh, i64 1 ; 2 uses
  %i.el = fcmp ogt double %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.k, label %bb.r

bb.k:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit
  %i.em = extractelement <2 x double> %i.di, i64 0 ; 2 uses
  %i.en = fneg double %i.em
  %i.eo = extractelement <2 x double> %i.dh, i64 0
  %i.ep = fneg double %i.eo                       ; 2 uses
  %i.eq = extractelement <2 x double> %i.ce, i64 1 ; 2 uses
  %i.er = fmul double %i.eq, %i.ep
  %i.es = extractelement <2 x double> %i.bz, i64 1 ; 2 uses
  %i.et = call noundef double @llvm.fmuladd.f64(double %i.es, double %i.en, double %i.er)
  %i.eu = fcmp ogt double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.l, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

bb.l:                                             ; preds = %bb.k
  %i.ev = fmul double %i.eq, %i.em
  %i.ew = call noundef double @llvm.fmuladd.f64(double %i.es, double %i.ep, double %i.ev) ; 4 uses
  %i.ex = call double @llvm.fabs.f64(double %i.ew)
  %i.ey = fcmp uge double %i.ex, %i.az
  br i1 %i.ey, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit: ; preds = %bb.l
  %i.ez = fneg double %i.ew                       ; 7 uses
  %i.fa = fcmp ult double %i.ew, 0.000000e+00
  br i1 %i.fa, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !21
  %i.fd = fcmp olt double %i.fc, %i.ez
  br i1 %i.fd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ez, ptr %i.fb, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit
  %i.fe = fcmp ugt double %i.ew, 0.000000e+00
  br i1 %i.fe, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !22
  %i.fh = fcmp ogt double %i.fg, %i.ez
  br i1 %i.fh, label %bb.q, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

bb.q:                                             ; preds = %bb.p
  store double %i.ez, ptr %i.ff, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit: ; preds = %bb.k, %bb.l, %bb.q, %bb.p, %bb.o
  %.0127 = phi double [ %i.ez, %bb.q ], [ %i.ez, %bb.o ], [ %i.ez, %bb.p ], [ %i.ax, %bb.l ], [ %i.ax, %bb.k ]
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.0127, ptr %i.fi, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit
  %i.fj = fcmp olt double %i.ei, 0.000000e+00
  br i1 %i.fj, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop = fmul <2 x double> %i.ce, %i.dz
  %i.fk = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fl = extractelement <2 x double> %i.ea, i64 0 ; 2 uses
  %i.fm = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.fn = call noundef double @llvm.fmuladd.f64(double %i.fm, double %i.fl, double %i.fk)
  %i.fo = fcmp ogt double %i.fn, 0.000000e+00
  br i1 %i.fo, label %bb.t, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101

bb.t:                                             ; preds = %bb.s
  %i.fp = extractelement <2 x double> %i.ce, i64 0
  %i.fq = extractelement <2 x double> %i.dz, i64 0
  %i.fr = fneg double %i.fl
  %i.fs = fmul double %i.fp, %i.fr
  %i.ft = call noundef double @llvm.fmuladd.f64(double %i.fm, double %i.fq, double %i.fs) ; 10 uses
  %i.fu = call double @llvm.fabs.f64(double %i.ft)
  %i.fv = fcmp uge double %i.fu, %i.az
  br i1 %i.fv, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit100

_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit100: ; preds = %bb.t
  %i.fw = fcmp ugt double %i.ft, 0.000000e+00
  br i1 %i.fw, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit100
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !21
  %i.fz = fcmp ogt double %i.ft, %i.fy
  br i1 %i.fz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %i.ft, ptr %i.fx, align 8, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit100
  %i.ga = fcmp ult double %i.ft, 0.000000e+00
  br i1 %i.ga, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !22
  %i.gd = fcmp olt double %i.ft, %i.gc
  br i1 %i.gd, label %bb.y, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101

bb.y:                                             ; preds = %bb.x
  store double %i.ft, ptr %i.gb, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101: ; preds = %bb.s, %bb.t, %bb.y, %bb.x, %bb.w
  %.0133 = phi double [ %i.ft, %bb.y ], [ %i.ft, %bb.w ], [ %i.ft, %bb.x ], [ %i.ax, %bb.t ], [ %i.ax, %bb.s ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %.0133, ptr %i.ge, align 8, !tbaa !28
  br label %bb.z

bb.z:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101, %bb.r
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.ek, ptr %i.gf, align 8, !tbaa !25
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.ej, ptr %i.gg, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread128

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread128: ; preds = %bb.h, %.split, %bb.z, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK7msdfgen29PerpendicularDistanceSelector8distanceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.msdfgen::SignedDistance", align 8 ; 5 uses
  %i.a = load double, ptr %0, align 8, !tbaa !20
  %i.b = fcmp olt double %i.a, 0.000000e+00
  %.in.v.i = select i1 %i.b, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.c = load double, ptr %.in.i, align 8, !tbaa !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull readonly align 8 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !14
  %.sroa.0.0.copyload.i = load double, ptr %i.f, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !30
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, double %.sroa.0.0.copyload.i, double %.sroa.2.0.copyload.i, double noundef %i.h), !inline_history !32
  %i.l = load double, ptr %1, align 8, !tbaa !31  ; 2 uses
  %i.m = call double @llvm.fabs.f64(double %i.l)
  %i.n = call double @llvm.fabs.f64(double %i.c)
  %i.o = fcmp olt double %i.m, %i.n
  %.0.i = select i1 %i.o, double %i.l, double %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit

_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi double [ %.0.i, %bb.b ], [ %i.c, %bb.a ]
  ret double %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7msdfgen21MultiDistanceSelector5resetERKNS_7Vector2E(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) initializes((32, 64), (80, 112), (128, 160)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.01.0.copyload = load double, ptr %1, align 8, !tbaa !9
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load double, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !9
  %.sroa.0.0.copyload = load double, ptr %0, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %i.a = fsub double %.sroa.01.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %i.b = fsub double %.sroa.22.0.copyload, %.sroa.2.0.copyload ; 2 uses
  %i.c = fmul double %i.b, %i.b
  %i.d = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double %i.c)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.d)
  %i.e = fmul double %sqrt.i, 1.001000e+00        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !20 ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = select i1 %i.h, double 1.000000e+00, double -1.000000e+00
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.e, double %i.g) ; 2 uses
  store double %i.j, ptr %i.f, align 8, !tbaa !20
  %i.k = tail call double @llvm.fabs.f64(double %i.j) ; 2 uses
  %i.l = fneg double %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.l, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.k, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
end_hunk_0
begin_hunk_1_@_ZN7msdfgen21MultiDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_:bb.a
  %i.dn = fcmp olt double %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.do = fadd double %i.cv, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !21
  %i.dr = fcmp ult double %i.do, %i.dq
  br i1 %i.dr, label %bb.aa, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.ds = fsub double %i.dm, %i.cv
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.du = load double, ptr %i.dt, align 8, !tbaa !22
  %i.dv = fcmp ugt double %i.ds, %i.du
  br i1 %i.dv, label %bb.aa, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  %i.dw = fcmp ogt double %i.dh, 0.000000e+00
  br i1 %i.dw, label %bb.ab, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !28 ; 3 uses
  %i.dz = fcmp olt double %i.dy, 0.000000e+00
  br i1 %i.dz, label %.split205, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95

.split205:                                        ; preds = %bb.ab
  %i.ea = fadd double %i.cv, %i.dy
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !21
  %i.ed = fcmp ult double %i.ea, %i.ec
  br i1 %i.ed, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95: ; preds = %bb.ab
  %i.ee = fsub double %i.dy, %i.cv
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !22
  %i.eh = fcmp ugt double %i.ee, %i.eg
  br i1 %i.eh, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread: ; preds = %bb.t, %bb.u, %bb.v, %bb.y, %bb.z, %bb.k, %bb.l, %bb.m, %bb.p, %bb.q, %bb.b, %bb.c, %bb.d, %bb.g, %bb.h, %.split205, %.split203, %.split, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit
  %.sroa.233.0.copyload = phi double [ %.sroa.22.0.copyload.i90, %bb.t ], [ %.sroa.22.0.copyload.i90, %bb.u ], [ %.sroa.22.0.copyload.i90, %bb.v ], [ %.sroa.22.0.copyload.i90, %bb.y ], [ %.sroa.22.0.copyload.i90, %bb.z ], [ %.sroa.22.0.copyload.i82, %bb.k ], [ %.sroa.22.0.copyload.i82, %bb.l ], [ %.sroa.22.0.copyload.i82, %bb.m ], [ %.sroa.22.0.copyload.i82, %bb.p ], [ %.sroa.22.0.copyload.i82, %bb.q ], [ %.sroa.22.0.copyload.i, %bb.b ], [ %.sroa.22.0.copyload.i, %bb.c ], [ %.sroa.22.0.copyload.i, %bb.d ], [ %.sroa.22.0.copyload.i, %bb.g ], [ %.sroa.22.0.copyload.i, %bb.h ], [ %.sroa.22.0.copyload.i90, %.split205 ], [ %.sroa.22.0.copyload.i82, %.split203 ], [ %.sroa.22.0.copyload.i, %.split ], [ %.sroa.22.0.copyload.i90, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95 ], [ %.sroa.22.0.copyload.i82, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87 ], [ %.sroa.22.0.copyload.i, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit ]
  %.sroa.032.0.copyload = phi double [ %.sroa.01.0.copyload.i88, %bb.t ], [ %.sroa.01.0.copyload.i88, %bb.u ], [ %.sroa.01.0.copyload.i88, %bb.v ], [ %.sroa.01.0.copyload.i88, %bb.y ], [ %.sroa.01.0.copyload.i88, %bb.z ], [ %.sroa.01.0.copyload.i80, %bb.k ], [ %.sroa.01.0.copyload.i80, %bb.l ], [ %.sroa.01.0.copyload.i80, %bb.m ], [ %.sroa.01.0.copyload.i80, %bb.p ], [ %.sroa.01.0.copyload.i80, %bb.q ], [ %.sroa.01.0.copyload.i, %bb.b ], [ %.sroa.01.0.copyload.i, %bb.c ], [ %.sroa.01.0.copyload.i, %bb.d ], [ %.sroa.01.0.copyload.i, %bb.g ], [ %.sroa.01.0.copyload.i, %bb.h ], [ %.sroa.01.0.copyload.i88, %.split205 ], [ %.sroa.01.0.copyload.i80, %.split203 ], [ %.sroa.01.0.copyload.i, %.split ], [ %.sroa.01.0.copyload.i88, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95 ], [ %.sroa.01.0.copyload.i80, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87 ], [ %.sroa.01.0.copyload.i, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load ptr, ptr %3, align 8, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call { double, double } %i.ek(ptr noundef nonnull align 8 dereferenceable(12) %3, double %.sroa.032.0.copyload, double %.sroa.233.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.em = extractvalue { double, double } %i.el, 0 ; 11 uses
  %i.en = extractvalue { double, double } %i.el, 1 ; 6 uses
  %i.eo = load i32, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.ep = and i32 %i.eo, 1
  %.not71 = icmp eq i32 %i.ep, 0
  br i1 %.not71, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i99 = load double, ptr %i.eq, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i101 = load double, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !9
  %i.er = call double @llvm.fabs.f64(double %i.em) ; 2 uses
  %i.es = call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i99) ; 2 uses
  %i.et = fcmp olt double %i.er, %i.es
  %i.eu = fcmp oeq double %i.er, %i.es
  %i.ev = fcmp olt double %i.en, %.sroa.2.0.copyload.i101
  %i.ew = select i1 %i.eu, i1 %i.ev, i1 false
  %i.ex = select i1 %i.et, i1 true, i1 %i.ew
  br i1 %i.ex, label %bb.ad, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load double, ptr %i.a, align 8, !tbaa !9
  store double %i.em, ptr %i.eq, align 8, !tbaa !9
  store double %i.en, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.ez, align 8, !tbaa !29
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ey, ptr %i.fa, align 8, !tbaa !30
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit: ; preds = %bb.ad, %bb.ac, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread
  %i.fb = and i32 %i.eo, 2
  %.not72 = icmp eq i32 %i.fb, 0
  br i1 %.not72, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108, label %bb.ae

bb.ae:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i105 = load double, ptr %i.fc, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i107 = load double, ptr %.sroa.2.0..sroa_idx.i106, align 8, !tbaa !9
  %i.fd = call double @llvm.fabs.f64(double %i.em) ; 2 uses
  %i.fe = call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i105) ; 2 uses
  %i.ff = fcmp olt double %i.fd, %i.fe
  %i.fg = fcmp oeq double %i.fd, %i.fe
  %i.fh = fcmp olt double %i.en, %.sroa.2.0.copyload.i107
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  %i.fj = select i1 %i.ff, i1 true, i1 %i.fi
  br i1 %i.fj, label %bb.af, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108

bb.af:                                            ; preds = %bb.ae
  %i.fk = load double, ptr %i.a, align 8, !tbaa !9
  store double %i.em, ptr %i.fc, align 8, !tbaa !9
  store double %i.en, ptr %.sroa.2.0..sroa_idx.i106, align 8, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.fl, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.fk, ptr %i.fm, align 8, !tbaa !30
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108: ; preds = %bb.af, %bb.ae, %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit
  %i.fn = and i32 %i.eo, 4
  %.not73 = icmp eq i32 %i.fn, 0
  br i1 %.not73, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108._ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115_crit_edge, label %bb.ag

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108._ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115_crit_edge: ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108
  %.pre = call double @llvm.fabs.f64(double %i.em)
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115

bb.ag:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i112 = load double, ptr %i.fo, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.sroa.2.0.copyload.i114 = load double, ptr %.sroa.2.0..sroa_idx.i113, align 8, !tbaa !9
  %i.fp = call double @llvm.fabs.f64(double %i.em) ; 4 uses
  %i.fq = call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i112) ; 2 uses
  %i.fr = fcmp olt double %i.fp, %i.fq
  %i.fs = fcmp oeq double %i.fp, %i.fq
  %i.ft = fcmp olt double %i.en, %.sroa.2.0.copyload.i114
  %i.fu = select i1 %i.fs, i1 %i.ft, i1 false
  %i.fv = select i1 %i.fr, i1 true, i1 %i.fu
  br i1 %i.fv, label %bb.ah, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115

bb.ah:                                            ; preds = %bb.ag
  %i.fw = load double, ptr %i.a, align 8, !tbaa !9
  store double %i.em, ptr %i.fo, align 8, !tbaa !9
  store double %i.en, ptr %.sroa.2.0..sroa_idx.i113, align 8, !tbaa !9
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %3, ptr %i.fx, align 8, !tbaa !29
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.fw, ptr %i.fy, align 8, !tbaa !30
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115: ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108._ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115_crit_edge, %bb.ah, %bb.ag
  %.pre-phi = phi double [ %.pre, %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108._ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115_crit_edge ], [ %i.fp, %bb.ah ], [ %i.fp, %bb.ag ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !14
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.pre-phi, ptr %i.fz, align 8, !tbaa !24
  %.sroa.030.0.copyload = load double, ptr %0, align 8, !tbaa !9
  %.sroa.231.0.copyload = load double, ptr %.sroa.233.0..sroa_idx, align 8, !tbaa !9
  %i.ga = load ptr, ptr %3, align 8, !tbaa !16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call { double, double } %i.gc(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 0.000000e+00) ; 2 uses
  %i.ge = extractvalue { double, double } %i.gd, 0
  %i.gf = extractvalue { double, double } %i.gd, 1
  %i.gg = load ptr, ptr %3, align 8, !tbaa !16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.gk = call { double, double } %i.gi(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 1.000000e+00) ; 2 uses
  %i.gl = extractvalue { double, double } %i.gk, 0
  %i.gm = extractvalue { double, double } %i.gk, 1
  %i.gn = insertelement <2 x double> %i.gj, double %.sroa.030.0.copyload, i64 1
  %i.go = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.ge, i64 1
  %i.gq = fsub <2 x double> %i.gn, %i.gp          ; 3 uses
  %i.gr = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x double> %i.gr, double %.sroa.231.0.copyload, i64 1
  %i.gt = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gf, i64 1
  %i.gv = fsub <2 x double> %i.gs, %i.gu          ; 4 uses
  %i.gw = load ptr, ptr %3, align 8, !tbaa !16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call { double, double } %i.gy(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 0.000000e+00) ; 2 uses
  %i.ha = extractvalue { double, double } %i.gz, 0
  %i.hb = extractvalue { double, double } %i.gz, 1
  %i.hc = load ptr, ptr %3, align 8, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call { double, double } %i.he(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 1.000000e+00) ; 2 uses
  %i.hg = extractvalue { double, double } %i.hf, 0
  %i.hh = extractvalue { double, double } %i.hf, 1
  %i.hi = load ptr, ptr %2, align 8, !tbaa !16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = call { double, double } %i.hk(ptr noundef nonnull align 8 dereferenceable(12) %2, double noundef 1.000000e+00) ; 2 uses
  %i.hm = extractvalue { double, double } %i.hl, 0
  %i.hn = extractvalue { double, double } %i.hl, 1
  %i.ho = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hn, i64 1 ; 3 uses
  %i.hq = fmul <2 x double> %i.hp, %i.hp
  %i.hr = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %i.hm, i64 1 ; 3 uses
  %i.ht = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.hs, <2 x double> %i.hq) ; 2 uses
  %i.hu = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ht) ; 2 uses
  %i.hv = fcmp une <2 x double> %i.ht, zeroinitializer ; 2 uses
  %i.hw = fdiv <2 x double> %i.hs, %i.hu
  %i.hx = fdiv <2 x double> %i.hp, %i.hu
  %i.hy = select <2 x i1> %i.hv, <2 x double> %i.hx, <2 x double> zeroinitializer ; 3 uses
  %i.hz = select <2 x i1> %i.hv, <2 x double> %i.hw, <2 x double> zeroinitializer ; 3 uses
  %i.ia = load ptr, ptr %4, align 8, !tbaa !16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = call { double, double } %i.ic(ptr noundef nonnull align 8 dereferenceable(12) %4, double noundef 0.000000e+00) ; 2 uses
  %i.ie = extractvalue { double, double } %i.id, 0
  %i.if = extractvalue { double, double } %i.id, 1
  %i.ig = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.if, i64 1 ; 3 uses
  %i.ii = fmul <2 x double> %i.ih, %i.ih
  %i.ij = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.ie, i64 1 ; 3 uses
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.ik, <2 x double> %i.ii) ; 2 uses
  %i.im = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.il) ; 2 uses
  %i.in = fcmp une <2 x double> %i.il, zeroinitializer ; 2 uses
  %i.io = fdiv <2 x double> %i.ik, %i.im
  %i.ip = fdiv <2 x double> %i.ih, %i.im
  %i.iq = select <2 x i1> %i.in, <2 x double> %i.ip, <2 x double> zeroinitializer ; 4 uses
  %i.ir = select <2 x i1> %i.in, <2 x double> %i.io, <2 x double> zeroinitializer ; 3 uses
  %5 = shufflevector <2 x double> %i.ir, <2 x double> %i.hz, <2 x i32> <i32 0, i32 2>
  %6 = shufflevector <2 x double> %i.ir, <2 x double> %i.hz, <2 x i32> <i32 1, i32 3>
  %7 = fadd <2 x double> %5, %6                   ; 4 uses
  %8 = shufflevector <2 x double> %i.iq, <2 x double> %i.hy, <2 x i32> <i32 0, i32 2>
  %9 = shufflevector <2 x double> %i.iq, <2 x double> %i.hy, <2 x i32> <i32 1, i32 3>
  %10 = fadd <2 x double> %8, %9                  ; 4 uses
  %i.is = fmul <2 x double> %10, %10
  %11 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %7, <2 x double> %i.is) ; 2 uses
  %12 = shufflevector <2 x double> %7, <2 x double> %10, <2 x i32> <i32 1, i32 3>
  %13 = fcmp une <2 x double> %11, zeroinitializer ; 2 uses
  %14 = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %11) ; 2 uses
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.it = fdiv <2 x double> %12, %15              ; 2 uses
  %16 = shufflevector <2 x double> %7, <2 x double> %10, <2 x i32> <i32 0, i32 2>
  %17 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iu = fdiv <2 x double> %16, %17              ; 2 uses
  %18 = shufflevector <2 x double> %i.iu, <2 x double> %i.it, <2 x i32> <i32 1, i32 3>
  %i.iv = select <2 x i1> %13, <2 x double> %18, <2 x double> zeroinitializer
  %19 = shufflevector <2 x double> %i.iu, <2 x double> %i.it, <2 x i32> <i32 0, i32 2>
  %i.iw = select <2 x i1> %13, <2 x double> %19, <2 x double> zeroinitializer
  %i.ix = fmul <2 x double> %i.gv, %i.iv
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.iw, <2 x double> %i.ix) ; 2 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 0 ; 2 uses
  %i.ja = fneg double %i.iz
  %i.jb = extractelement <2 x double> %i.iy, i64 1 ; 2 uses
  %i.jc = fcmp ogt double %i.jb, 0.000000e+00
  br i1 %i.jc, label %bb.ai, label %bb.bc

bb.ai:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115
  %i.jd = extractelement <2 x double> %i.hz, i64 0 ; 2 uses
  %i.je = fneg double %i.jd
  %i.jf = extractelement <2 x double> %i.hy, i64 0
  %i.jg = fneg double %i.jf                       ; 2 uses
  %i.jh = extractelement <2 x double> %i.gv, i64 1 ; 2 uses
  %i.ji = fmul double %i.jh, %i.jg
  %i.jj = extractelement <2 x double> %i.gq, i64 1 ; 2 uses
  %i.jk = call noundef double @llvm.fmuladd.f64(double %i.jj, double %i.je, double %i.ji)
  %i.jl = fcmp ogt double %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.aj, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153

bb.aj:                                            ; preds = %bb.ai
  %i.jm = fmul double %i.jh, %i.jd
  %i.jn = call noundef double @llvm.fmuladd.f64(double %i.jj, double %i.jg, double %i.jm) ; 8 uses
  %i.jo = call double @llvm.fabs.f64(double %i.jn)
  %i.jp = fcmp uge double %i.jo, %.pre-phi
  br i1 %i.jp, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit: ; preds = %bb.aj
  %i.jq = fneg double %i.jn                       ; 16 uses
  %i.jr = load i32, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.js = and i32 %i.jr, 1
  %.not74 = icmp eq i32 %i.js, 0
  br i1 %.not74, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit
  %i.jt = fcmp ult double %i.jn, 0.000000e+00
  br i1 %i.jt, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !21
  %i.jw = fcmp olt double %i.jv, %i.jq
  br i1 %i.jw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store double %i.jq, ptr %i.ju, align 8, !tbaa !21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.jx = fcmp ugt double %i.jn, 0.000000e+00
  br i1 %i.jx, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !22
  %i.ka = fcmp ogt double %i.jz, %i.jq
  br i1 %i.ka, label %bb.ap, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

bb.ap:                                            ; preds = %bb.ao
  store double %i.jq, ptr %i.jy, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit: ; preds = %bb.ap, %bb.ao, %bb.an, %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit
  %i.kb = and i32 %i.jr, 2
  %.not75 = icmp eq i32 %i.kb, 0
  br i1 %.not75, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152, label %bb.aq

bb.aq:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit
  %i.kc = fcmp ult double %i.jn, 0.000000e+00
  br i1 %i.kc, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !21
  %i.kf = fcmp olt double %i.ke, %i.jq
  br i1 %i.kf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store double %i.jq, ptr %i.kd, align 8, !tbaa !21
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.kg = fcmp ugt double %i.jn, 0.000000e+00
  br i1 %i.kg, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !22
  %i.kj = fcmp ogt double %i.ki, %i.jq
  br i1 %i.kj, label %bb.av, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152

bb.av:                                            ; preds = %bb.au
  store double %i.jq, ptr %i.kh, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152: ; preds = %bb.av, %bb.au, %bb.at, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit
  %i.kk = and i32 %i.jr, 4
  %.not76 = icmp eq i32 %i.kk, 0
  br i1 %.not76, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153, label %bb.aw

bb.aw:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152
  %i.kl = fcmp ult double %i.jn, 0.000000e+00
  br i1 %i.kl, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.kn = load double, ptr %i.km, align 8, !tbaa !21
  %i.ko = fcmp olt double %i.kn, %i.jq
  br i1 %i.ko, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store double %i.jq, ptr %i.km, align 8, !tbaa !21
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.kp = fcmp ugt double %i.jn, 0.000000e+00
  br i1 %i.kp, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !22
  %i.ks = fcmp ogt double %i.kr, %i.jq
  br i1 %i.ks, label %bb.bb, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153

bb.bb:                                            ; preds = %bb.ba
  store double %i.jq, ptr %i.kq, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153: ; preds = %bb.ai, %bb.aj, %bb.bb, %bb.ba, %bb.az, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152
  %.0200 = phi double [ %i.jq, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152 ], [ %i.jq, %bb.bb ], [ %i.jq, %bb.az ], [ %i.jq, %bb.ba ], [ %i.em, %bb.aj ], [ %i.em, %bb.ai ]
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.0200, ptr %i.kt, align 8, !tbaa !27
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153, %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115
  %i.ku = fcmp olt double %i.iz, 0.000000e+00
  br i1 %i.ku, label %bb.bd, label %bb.bx

bb.bd:                                            ; preds = %bb.bc
  %foldExtExtBinop = fmul <2 x double> %i.gv, %i.iq
  %i.kv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.kw = extractelement <2 x double> %i.ir, i64 0 ; 2 uses
  %i.kx = extractelement <2 x double> %i.gq, i64 0 ; 2 uses
  %i.ky = call noundef double @llvm.fmuladd.f64(double %i.kx, double %i.kw, double %i.kv)
  %i.kz = fcmp ogt double %i.ky, 0.000000e+00
  br i1 %i.kz, label %bb.be, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164

bb.be:                                            ; preds = %bb.bd
  %i.la = extractelement <2 x double> %i.gv, i64 0
  %i.lb = extractelement <2 x double> %i.iq, i64 0
  %i.lc = fneg double %i.kw
  %i.ld = fmul double %i.la, %i.lc
  %i.le = call noundef double @llvm.fmuladd.f64(double %i.kx, double %i.lb, double %i.ld) ; 23 uses
  %i.lf = call double @llvm.fabs.f64(double %i.le)
  %i.lg = fcmp uge double %i.lf, %.pre-phi
  br i1 %i.lg, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit161

_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit161: ; preds = %bb.be
  %i.lh = load i32, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %i.li = and i32 %i.lh, 1
  %.not77 = icmp eq i32 %i.li, 0
  br i1 %.not77, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162, label %bb.bf

bb.bf:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit161
  %i.lj = fcmp ugt double %i.le, 0.000000e+00
  br i1 %i.lj, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !21
  %i.lm = fcmp ogt double %i.le, %i.ll
  br i1 %i.lm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.le, ptr %i.lk, align 8, !tbaa !21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.ln = fcmp ult double %i.le, 0.000000e+00
  br i1 %i.ln, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !22
  %i.lq = fcmp olt double %i.le, %i.lp
  br i1 %i.lq, label %bb.bk, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162

bb.bk:                                            ; preds = %bb.bj
  store double %i.le, ptr %i.lo, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162: ; preds = %bb.bk, %bb.bj, %bb.bi, %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit161
  %i.lr = and i32 %i.lh, 2
  %.not78 = icmp eq i32 %i.lr, 0
  br i1 %.not78, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163, label %bb.bl

bb.bl:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162
  %i.ls = fcmp ugt double %i.le, 0.000000e+00
  br i1 %i.ls, label %bb.bo, label %bb.bm

end_hunk_1
begin_hunk_2_@_ZNK7msdfgen21MultiDistanceSelector8distanceEv:bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.in.v.i
  %i.d = load double, ptr %.in.i, align 8, !tbaa !9 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 16, i1 false), !tbaa.struct !14
  %.sroa.0.0.copyload.i = load double, ptr %1, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load double, ptr %i.g, align 8, !tbaa !30
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %4, double %.sroa.0.0.copyload.i, double %.sroa.2.0.copyload.i, double noundef %i.h), !inline_history !32
  %i.l = load double, ptr %4, align 8, !tbaa !31  ; 2 uses
  %i.m = call double @llvm.fabs.f64(double %i.l)
  %i.n = call double @llvm.fabs.f64(double %i.d)
  %i.o = fcmp olt double %i.m, %i.n
  %.0.i = select i1 %i.o, double %i.l, double %i.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit

_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi double [ %.0.i, %bb.b ], [ %i.d, %bb.a ]
  store double %.1.i, ptr %0, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !20
  %i.r = fcmp olt double %i.q, 0.000000e+00
  %.in.v.i1 = select i1 %i.r, i64 16, i64 24
  %.in.i2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.in.v.i1
  %i.s = load double, ptr %.in.i2, align 8, !tbaa !9 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29   ; 3 uses
  %.not.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i3, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit9, label %bb.c

bb.c:                                             ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.p, i64 16, i1 false), !tbaa.struct !14
  %.sroa.0.0.copyload.i4 = load double, ptr %1, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i6 = load double, ptr %.sroa.2.0..sroa_idx.i5, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load double, ptr %i.v, align 8, !tbaa !30
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3, double %.sroa.0.0.copyload.i4, double %.sroa.2.0.copyload.i6, double noundef %i.w), !inline_history !32
  %i.aa = load double, ptr %3, align 8, !tbaa !31 ; 2 uses
  %i.ab = call double @llvm.fabs.f64(double %i.aa)
  %i.ac = call double @llvm.fabs.f64(double %i.s)
  %i.ad = fcmp olt double %i.ab, %i.ac
  %.0.i7 = select i1 %i.ad, double %i.aa, double %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit9

_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit9: ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit, %bb.c
  %.1.i8 = phi double [ %.0.i7, %bb.c ], [ %i.s, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.1.i8, ptr %i.ae, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !20
  %i.ah = fcmp olt double %i.ag, 0.000000e+00
  %.in.v.i10 = select i1 %i.ah, i64 16, i64 24
  %.in.i11 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.in.v.i10
  %i.ai = load double, ptr %.in.i11, align 8, !tbaa !9 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 3 uses
  %.not.i12 = icmp eq ptr %i.ak, null
  br i1 %.not.i12, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit18, label %bb.d

bb.d:                                             ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.af, i64 16, i1 false), !tbaa.struct !14
  %.sroa.0.0.copyload.i13 = load double, ptr %1, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i15 = load double, ptr %.sroa.2.0..sroa_idx.i14, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.am = load double, ptr %i.al, align 8, !tbaa !30
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %2, double %.sroa.0.0.copyload.i13, double %.sroa.2.0.copyload.i15, double noundef %i.am), !inline_history !32
  %i.aq = load double, ptr %2, align 8, !tbaa !31 ; 2 uses
  %i.ar = call double @llvm.fabs.f64(double %i.aq)
  %i.as = call double @llvm.fabs.f64(double %i.ai)
  %i.at = fcmp olt double %i.ar, %i.as
  %.0.i16 = select i1 %i.at, double %i.aq, double %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit18

_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit18: ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit9, %bb.d
  %.1.i17 = phi double [ %.0.i16, %bb.d ], [ %i.ai, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E.exit9 ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.1.i17, ptr %i.au, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { double, double } @_ZNK7msdfgen21MultiDistanceSelector12trueDistanceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load double, ptr %i.a, align 8, !tbaa !9 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i11 = load double, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i13 = load double, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !9 ; 2 uses
  %i.c = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i11) ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i) ; 2 uses
  %i.e = fcmp olt double %i.c, %i.d
  %i.f = fcmp oeq double %i.c, %i.d
  %i.g = fcmp olt double %.sroa.2.0.copyload.i13, %.sroa.2.0.copyload.i
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  %i.i = select i1 %i.e, i1 true, i1 %i.h         ; 2 uses
  %.sroa.010.0 = select i1 %i.i, double %.sroa.0.0.copyload.i11, double %.sroa.0.0.copyload.i ; 2 uses
  %.sroa.6.0 = select i1 %i.i, double %.sroa.2.0.copyload.i13, double %.sroa.2.0.copyload.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.0.copyload.i21 = load double, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %.sroa.2.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.2.0.copyload.i23 = load double, ptr %.sroa.2.0..sroa_idx.i22, align 8, !tbaa !9 ; 2 uses
  %i.k = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i21) ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %.sroa.010.0) ; 2 uses
  %i.m = fcmp olt double %i.k, %i.l
  %i.n = fcmp oeq double %i.k, %i.l
  %i.o = fcmp olt double %.sroa.2.0.copyload.i23, %.sroa.6.0
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  %i.q = select i1 %i.m, i1 true, i1 %i.p         ; 2 uses
  %.sroa.010.1 = select i1 %i.q, double %.sroa.0.0.copyload.i21, double %.sroa.010.0
  %.sroa.6.1 = select i1 %i.q, double %.sroa.2.0.copyload.i23, double %.sroa.6.0
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.010.1, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.6.1, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7msdfgen28MultiAndTrueDistanceSelector8distanceEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.msdfgen::MultiAndTrueDistance") align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.msdfgen::MultiDistance", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZNK7msdfgen21MultiDistanceSelector8distanceEv(ptr dead_on_unwind nonnull writable sret(%"struct.msdfgen::MultiDistance") align 8 %2, ptr noundef nonnull align 8 dereferenceable(160) %1)
  %i.a = load <2 x double>, ptr %2, align 16, !tbaa !9
  store <2 x double> %i.a, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load double, ptr %i.b, align 16, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.c, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i = load double, ptr %i.e, align 8, !tbaa !9 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i.i = load double, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !9 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i11.i = load double, ptr %i.f, align 8, !tbaa !9 ; 2 uses
  %.sroa.2.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i13.i = load double, ptr %.sroa.2.0..sroa_idx.i12.i, align 8, !tbaa !9 ; 2 uses
  %i.g = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i11.i) ; 2 uses
  %i.h = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i.i) ; 2 uses
  %i.i = fcmp olt double %i.g, %i.h
  %i.j = fcmp oeq double %i.g, %i.h
  %i.k = fcmp olt double %.sroa.2.0.copyload.i13.i, %.sroa.2.0.copyload.i.i
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  %i.m = select i1 %i.i, i1 true, i1 %i.l         ; 2 uses
  %.sroa.010.0.i = select i1 %i.m, double %.sroa.0.0.copyload.i11.i, double %.sroa.0.0.copyload.i.i ; 2 uses
  %.sroa.6.0.i = select i1 %i.m, double %.sroa.2.0.copyload.i13.i, double %.sroa.2.0.copyload.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.0.0.copyload.i21.i = load double, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %.sroa.2.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.2.0.copyload.i23.i = load double, ptr %.sroa.2.0..sroa_idx.i22.i, align 8, !tbaa !9
  %i.o = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i21.i) ; 2 uses
  %i.p = tail call double @llvm.fabs.f64(double %.sroa.010.0.i) ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = fcmp oeq double %i.o, %i.p
  %i.s = fcmp olt double %.sroa.2.0.copyload.i23.i, %.sroa.6.0.i
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  %i.u = select i1 %i.q, i1 true, i1 %i.t
  %.sroa.010.1.i = select i1 %i.u, double %.sroa.0.0.copyload.i21.i, double %.sroa.010.0.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.010.1.i, ptr %i.v, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN7msdfgen7Vector2E", !8, i64 0, !8, i64 8}
!11 = !{!"_ZTSN7msdfgen14SignedDistanceE", !8, i64 0, !8, i64 8}
!12 = !{!"_ZTSN7msdfgen20TrueDistanceSelectorE", !10, i64 0, !11, i64 16}
!13 = !{!12, !8, i64 16}
!14 = !{i64 0, i64 8, !9, i64 8, i64 8, !9}
!15 = !{!"vtable pointer", !3, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !17, i64 0}
!19 = !{!"_ZTSN7msdfgen33PerpendicularDistanceSelectorBaseE", !11, i64 0, !8, i64 16, !8, i64 24, !18, i64 32, !8, i64 40}
!20 = !{!19, !8, i64 0}
!21 = !{!19, !8, i64 16}
!22 = !{!19, !8, i64 24}
!23 = !{!"_ZTSN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheE", !10, i64 0, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!24 = !{!23, !8, i64 16}
!25 = !{!23, !8, i64 24}
!26 = !{!23, !8, i64 32}
!27 = !{!23, !8, i64 40}
!28 = !{!23, !8, i64 48}
!29 = !{!19, !18, i64 32}
!30 = !{!19, !8, i64 40}
!31 = !{!11, !8, i64 0}
!32 = !{ptr @_ZNK7msdfgen33PerpendicularDistanceSelectorBase15computeDistanceERKNS_7Vector2E}
!33 = !{!"_ZTSN7msdfgen13MultiDistanceE", !8, i64 0, !8, i64 8, !8, i64 16}
!34 = !{!33, !8, i64 16}
!35 = !{!"_ZTSN7msdfgen20TrueDistanceSelector9EdgeCacheE", !10, i64 0, !8, i64 16}
!36 = !{!35, !8, i64 16}
!37 = !{!"_ZTSN7msdfgen9EdgeColorE", !4, i64 0}
!38 = !{!"_ZTSN7msdfgen11EdgeSegmentE", !37, i64 8}
!39 = !{!38, !37, i64 8}
!40 = !{!33, !8, i64 0}
!41 = !{!33, !8, i64 8}
!42 = !{!"_ZTSN7msdfgen20MultiAndTrueDistanceE", !33, i64 0, !8, i64 24}
!43 = !{!42, !8, i64 24}
end_hunk_2
