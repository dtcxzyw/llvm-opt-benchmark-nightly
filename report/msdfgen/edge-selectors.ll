Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/edge-selectors?download=true
inline.NumInlined: 92
inline.NumDeleted: 12
begin_hunk_0_@_ZN7msdfgen29PerpendicularDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit
  %i.ft = fcmp ugt double %i.fl, 0.000000e+00
  br i1 %i.ft, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !22
  %i.fw = fcmp ogt double %i.fv, %i.fo
  br i1 %i.fw, label %bb.q, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

bb.q:                                             ; preds = %bb.p
  store double %i.fo, ptr %i.fu, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit: ; preds = %bb.k, %bb.l, %bb.q, %bb.p, %bb.o
  %.0127 = phi double [ %i.fo, %bb.q ], [ %i.fo, %bb.o ], [ %i.fo, %bb.p ], [ %i.ax, %bb.l ], [ %i.ax, %bb.k ]
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.0127, ptr %i.fx, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit
  %i.fy = fcmp olt double %i.ex, 0.000000e+00
  br i1 %i.fy, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop = fmul <2 x double> %i.ce, %i.dz
  %i.fz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ga = extractelement <2 x double> %i.ea, i64 0 ; 2 uses
  %i.gb = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.gc = call noundef double @llvm.fmuladd.f64(double %i.gb, double %i.ga, double %i.fz)
  %i.gd = fcmp ogt double %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.t, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101

bb.t:                                             ; preds = %bb.s
  %i.ge = extractelement <2 x double> %i.ce, i64 0
  %i.gf = extractelement <2 x double> %i.dz, i64 0
  %i.gg = fneg double %i.ga
  %i.gh = fmul double %i.ge, %i.gg
  %i.gi = call noundef double @llvm.fmuladd.f64(double %i.gb, double %i.gf, double %i.gh) ; 10 uses
  %i.gj = call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp uge double %i.gj, %i.az
  br i1 %i.gk, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit100

_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit100: ; preds = %bb.t
  %i.gl = fcmp ugt double %i.gi, 0.000000e+00
  br i1 %i.gl, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit100
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !21
  %i.go = fcmp ogt double %i.gi, %i.gn
  br i1 %i.go, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %i.gi, ptr %i.gm, align 8, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit100
  %i.gp = fcmp ult double %i.gi, 0.000000e+00
  br i1 %i.gp, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !22
  %i.gs = fcmp olt double %i.gi, %i.gr
  br i1 %i.gs, label %bb.y, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101

bb.y:                                             ; preds = %bb.x
  store double %i.gi, ptr %i.gq, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101: ; preds = %bb.s, %bb.t, %bb.y, %bb.x, %bb.w
  %.0133 = phi double [ %i.gi, %bb.y ], [ %i.gi, %bb.w ], [ %i.gi, %bb.x ], [ %i.ax, %bb.t ], [ %i.ax, %bb.s ]
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %.0133, ptr %i.gt, align 8, !tbaa !28
  br label %bb.z

bb.z:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit101, %bb.r
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.ez, ptr %i.gu, align 8, !tbaa !25
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.ey, ptr %i.gv, align 8, !tbaa !26
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
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !20
  %i.w = insertelement <2 x double> %i.q, double %i.v, i64 1 ; 2 uses
  %i.x = fcmp ogt <2 x double> %i.w, zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x double> splat (double 1.000000e+00), <2 x double> splat (double -1.000000e+00)
  %i.z = insertelement <2 x double> poison, double %i.e, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.aa, <2 x double> %i.w) ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  store double %i.ac, ptr %i.p, align 8, !tbaa !20
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac) ; 2 uses
  %i.ae = fneg double %i.ad
  store double %i.ae, ptr %i.r, align 8, !tbaa !21
  store double %i.ad, ptr %i.s, align 8, !tbaa !22
  %i.af = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  store double %i.af, ptr %i.u, align 8, !tbaa !20
  %i.ag = tail call double @llvm.fabs.f64(double %i.af) ; 2 uses
  %i.ah = fneg double %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.ah, ptr %i.ai, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.ag, ptr %i.aj, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen21MultiDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_(ptr nofree noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  %5 = and i32 %i.c, 1
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread201, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload.i = load double, ptr %0, align 8, !tbaa !9 ; 8 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i = load double, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !9 ; 8 uses
  %.sroa.0.0.copyload.i = load double, ptr %1, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9
  %i.e = fsub double %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i ; 2 uses
  %i.f = fsub double %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i ; 2 uses
  %i.g = fmul double %i.f, %i.f
  %i.h = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.g)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.h)
  %i.i = fmul double %sqrt.i.i, 1.001000e+00      ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !24
  %i.l = fsub double %i.k, %i.i
  %i.m = load double, ptr %i.d, align 8, !tbaa !20
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp ugt double %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !25 ; 2 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp olt double %i.r, %i.i
  br i1 %i.s, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !26 ; 2 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp olt double %i.v, %i.i
  br i1 %i.w, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp ogt double %i.q, 0.000000e+00
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load double, ptr %i.y, align 8, !tbaa !27 ; 3 uses
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = fadd double %i.i, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !21
  %i.ae = fcmp ult double %i.ab, %i.ad
  br i1 %i.ae, label %bb.i, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.af = fsub double %i.z, %i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !22
  %i.ai = fcmp ugt double %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.aj = fcmp ogt double %i.u, 0.000000e+00
  br i1 %i.aj, label %bb.j, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread201

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load double, ptr %i.ak, align 8, !tbaa !28 ; 3 uses
  %i.am = fcmp olt double %i.al, 0.000000e+00
  br i1 %i.am, label %.split, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit

.split:                                           ; preds = %bb.j
  %i.an = fadd double %i.i, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !21
  %i.aq = fcmp ult double %i.an, %i.ap
  br i1 %i.aq, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread201, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit: ; preds = %bb.j
  %i.ar = fsub double %i.al, %i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load double, ptr %i.as, align 8, !tbaa !22
  %i.au = fcmp ugt double %i.ar, %i.at
  br i1 %i.au, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread201, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread201: ; preds = %bb.i, %.split, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit, %bb.a
  %i.av = and i32 %i.c, 2
  %.not69.a = icmp eq i32 %i.av, 0
  br i1 %.not69.a, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87.thread202, label %bb.k

bb.k:                                             ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread201
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.01.0.copyload.i80 = load double, ptr %0, align 8, !tbaa !9 ; 8 uses
  %.sroa.22.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i82 = load double, ptr %.sroa.22.0..sroa_idx.i81, align 8, !tbaa !9 ; 8 uses
  %.sroa.0.0.copyload.i83 = load double, ptr %1, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i85 = load double, ptr %.sroa.2.0..sroa_idx.i84, align 8, !tbaa !9
  %i.ax = fsub double %.sroa.01.0.copyload.i80, %.sroa.0.0.copyload.i83 ; 2 uses
  %i.ay = fsub double %.sroa.22.0.copyload.i82, %.sroa.2.0.copyload.i85 ; 2 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.az)
  %sqrt.i.i86 = tail call noundef double @llvm.sqrt.f64(double %i.ba)
  %i.bb = fmul double %sqrt.i.i86, 1.001000e+00   ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fsub double %i.bd, %i.bb
  %i.bf = load double, ptr %i.aw, align 8, !tbaa !20
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp ugt double %i.be, %i.bg
  br i1 %i.bh, label %bb.l, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !25 ; 2 uses
  %i.bk = tail call double @llvm.fabs.f64(double %i.bj)
  %i.bl = fcmp olt double %i.bk, %i.bb
  br i1 %i.bl, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !26 ; 2 uses
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp olt double %i.bo, %i.bb
  br i1 %i.bp, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = fcmp ogt double %i.bj, 0.000000e+00
  br i1 %i.bq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load double, ptr %i.br, align 8, !tbaa !27 ; 3 uses
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = fadd double %i.bb, %i.bs
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !21
  %i.bx = fcmp ult double %i.bu, %i.bw
  br i1 %i.bx, label %bb.r, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.by = fsub double %i.bs, %i.bb
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !22
  %i.cb = fcmp ugt double %i.by, %i.ca
  br i1 %i.cb, label %bb.r, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %i.cc = fcmp ogt double %i.bn, 0.000000e+00
  br i1 %i.cc, label %bb.s, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87.thread202

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !28 ; 3 uses
  %i.cf = fcmp olt double %i.ce, 0.000000e+00
  br i1 %i.cf, label %.split203, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87

.split203:                                        ; preds = %bb.s
  %i.cg = fadd double %i.bb, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !21
  %i.cj = fcmp ult double %i.cg, %i.ci
  br i1 %i.cj, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87.thread202, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87: ; preds = %bb.s
  %i.ck = fsub double %i.ce, %i.bb
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !22
  %i.cn = fcmp ugt double %i.ck, %i.cm
  br i1 %i.cn, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87.thread202, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87.thread202: ; preds = %bb.r, %.split203, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread201
  %i.co = and i32 %i.c, 4
  %.not70 = icmp eq i32 %i.co, 0
  br i1 %.not70, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204, label %bb.t

bb.t:                                             ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87.thread202
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.01.0.copyload.i88 = load double, ptr %0, align 8, !tbaa !9 ; 8 uses
  %.sroa.22.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i90 = load double, ptr %.sroa.22.0..sroa_idx.i89, align 8, !tbaa !9 ; 8 uses
  %.sroa.0.0.copyload.i91 = load double, ptr %1, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i93 = load double, ptr %.sroa.2.0..sroa_idx.i92, align 8, !tbaa !9
  %i.cq = fsub double %.sroa.01.0.copyload.i88, %.sroa.0.0.copyload.i91 ; 2 uses
  %i.cr = fsub double %.sroa.22.0.copyload.i90, %.sroa.2.0.copyload.i93 ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cq, double %i.cq, double %i.cs)
  %sqrt.i.i94 = tail call noundef double @llvm.sqrt.f64(double %i.ct)
  %i.cu = fmul double %sqrt.i.i94, 1.001000e+00   ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !24
  %i.cx = fsub double %i.cw, %i.cu
  %i.cy = load double, ptr %i.cp, align 8, !tbaa !20
  %i.cz = tail call double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp ugt double %i.cx, %i.cz
  br i1 %i.da, label %bb.u, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = load double, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %i.dd = tail call double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp olt double %i.dd, %i.cu
  br i1 %i.de, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dg = load double, ptr %i.df, align 8, !tbaa !26 ; 2 uses
  %i.dh = tail call double @llvm.fabs.f64(double %i.dg)
  %i.di = fcmp olt double %i.dh, %i.cu
  br i1 %i.di, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = fcmp ogt double %i.dc, 0.000000e+00
  br i1 %i.dj, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !27 ; 3 uses
  %i.dm = fcmp olt double %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dn = fadd double %i.cu, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dp = load double, ptr %i.do, align 8, !tbaa !21
  %i.dq = fcmp ult double %i.dn, %i.dp
  br i1 %i.dq, label %bb.aa, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.z:                                             ; preds = %bb.x
  %i.dr = fsub double %i.dl, %i.cu
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = fcmp ugt double %i.dr, %i.dt
  br i1 %i.du, label %bb.aa, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  %i.dv = fcmp ogt double %i.dg, 0.000000e+00
  br i1 %i.dv, label %bb.ab, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204

bb.ab:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !28 ; 3 uses
  %i.dy = fcmp olt double %i.dx, 0.000000e+00
  br i1 %i.dy, label %.split205, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95

.split205:                                        ; preds = %bb.ab
  %i.dz = fadd double %i.cu, %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !21
  %i.ec = fcmp ult double %i.dz, %i.eb
  br i1 %i.ec, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95: ; preds = %bb.ab
  %i.ed = fsub double %i.dx, %i.cu
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !22
  %i.eg = fcmp ugt double %i.ed, %i.ef
  br i1 %i.eg, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204, label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread: ; preds = %bb.t, %bb.u, %bb.v, %bb.y, %bb.z, %bb.k, %bb.l, %bb.m, %bb.p, %bb.q, %bb.b, %bb.c, %bb.d, %bb.g, %bb.h, %.split205, %.split203, %.split, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit
  %.sroa.233.0.copyload = phi double [ %.sroa.22.0.copyload.i90, %bb.t ], [ %.sroa.22.0.copyload.i90, %bb.u ], [ %.sroa.22.0.copyload.i90, %bb.v ], [ %.sroa.22.0.copyload.i90, %bb.y ], [ %.sroa.22.0.copyload.i90, %bb.z ], [ %.sroa.22.0.copyload.i82, %bb.k ], [ %.sroa.22.0.copyload.i82, %bb.l ], [ %.sroa.22.0.copyload.i82, %bb.m ], [ %.sroa.22.0.copyload.i82, %bb.p ], [ %.sroa.22.0.copyload.i82, %bb.q ], [ %.sroa.22.0.copyload.i, %bb.b ], [ %.sroa.22.0.copyload.i, %bb.c ], [ %.sroa.22.0.copyload.i, %bb.d ], [ %.sroa.22.0.copyload.i, %bb.g ], [ %.sroa.22.0.copyload.i, %bb.h ], [ %.sroa.22.0.copyload.i90, %.split205 ], [ %.sroa.22.0.copyload.i82, %.split203 ], [ %.sroa.22.0.copyload.i, %.split ], [ %.sroa.22.0.copyload.i90, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95 ], [ %.sroa.22.0.copyload.i82, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87 ], [ %.sroa.22.0.copyload.i, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit ]
  %.sroa.032.0.copyload = phi double [ %.sroa.01.0.copyload.i88, %bb.t ], [ %.sroa.01.0.copyload.i88, %bb.u ], [ %.sroa.01.0.copyload.i88, %bb.v ], [ %.sroa.01.0.copyload.i88, %bb.y ], [ %.sroa.01.0.copyload.i88, %bb.z ], [ %.sroa.01.0.copyload.i80, %bb.k ], [ %.sroa.01.0.copyload.i80, %bb.l ], [ %.sroa.01.0.copyload.i80, %bb.m ], [ %.sroa.01.0.copyload.i80, %bb.p ], [ %.sroa.01.0.copyload.i80, %bb.q ], [ %.sroa.01.0.copyload.i, %bb.b ], [ %.sroa.01.0.copyload.i, %bb.c ], [ %.sroa.01.0.copyload.i, %bb.d ], [ %.sroa.01.0.copyload.i, %bb.g ], [ %.sroa.01.0.copyload.i, %bb.h ], [ %.sroa.01.0.copyload.i88, %.split205 ], [ %.sroa.01.0.copyload.i80, %.split203 ], [ %.sroa.01.0.copyload.i, %.split ], [ %.sroa.01.0.copyload.i88, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95 ], [ %.sroa.01.0.copyload.i80, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87 ], [ %.sroa.01.0.copyload.i, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eh = load ptr, ptr %3, align 8, !tbaa !16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call { double, double } %i.ej(ptr noundef nonnull align 8 dereferenceable(12) %3, double %.sroa.032.0.copyload, double %.sroa.233.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.el = extractvalue { double, double } %i.ek, 0 ; 11 uses
  %i.em = extractvalue { double, double } %i.ek, 1 ; 6 uses
  %i.en = load i32, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %6 = and i32 %i.en, 1
  %.not71 = icmp eq i32 %6, 0
  br i1 %.not71, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i99 = load double, ptr %i.eo, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.2.0.copyload.i101 = load double, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !9
  %i.ep = call double @llvm.fabs.f64(double %i.el) ; 2 uses
  %i.eq = call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i99) ; 2 uses
  %i.er = fcmp olt double %i.ep, %i.eq
  %i.es = fcmp oeq double %i.ep, %i.eq
  %i.et = fcmp olt double %i.em, %.sroa.2.0.copyload.i101
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  %i.ev = select i1 %i.er, i1 true, i1 %i.eu
  br i1 %i.ev, label %bb.ad, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ew = load double, ptr %i.a, align 8, !tbaa !9
  store double %i.el, ptr %i.eo, align 8, !tbaa !9
  store double %i.em, ptr %.sroa.2.0..sroa_idx.i100, align 8, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.ex, align 8, !tbaa !29
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ew, ptr %i.ey, align 8, !tbaa !30
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit: ; preds = %bb.ad, %bb.ac, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit.thread
  %i.ez = and i32 %i.en, 2
  %.not72.a = icmp eq i32 %i.ez, 0
  br i1 %.not72.a, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108, label %bb.ae

bb.ae:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i105 = load double, ptr %i.fa, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i107 = load double, ptr %.sroa.2.0..sroa_idx.i106, align 8, !tbaa !9
  %i.fb = call double @llvm.fabs.f64(double %i.el) ; 2 uses
  %i.fc = call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i105) ; 2 uses
  %i.fd = fcmp olt double %i.fb, %i.fc
  %i.fe = fcmp oeq double %i.fb, %i.fc
  %i.ff = fcmp olt double %i.em, %.sroa.2.0.copyload.i107
  %i.fg = select i1 %i.fe, i1 %i.ff, i1 false
  %i.fh = select i1 %i.fd, i1 true, i1 %i.fg
  br i1 %i.fh, label %bb.af, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108

bb.af:                                            ; preds = %bb.ae
  %i.fi = load double, ptr %i.a, align 8, !tbaa !9
  store double %i.el, ptr %i.fa, align 8, !tbaa !9
  store double %i.em, ptr %.sroa.2.0..sroa_idx.i106, align 8, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %3, ptr %i.fj, align 8, !tbaa !29
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.fi, ptr %i.fk, align 8, !tbaa !30
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108: ; preds = %bb.af, %bb.ae, %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit
  %i.fl = and i32 %i.en, 4
  %.not73 = icmp eq i32 %i.fl, 0
  br i1 %.not73, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108._ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115_crit_edge, label %bb.ag

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108._ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115_crit_edge: ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108
  %.pre = call double @llvm.fabs.f64(double %i.el)
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115

bb.ag:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i112 = load double, ptr %i.fm, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.sroa.2.0.copyload.i114 = load double, ptr %.sroa.2.0..sroa_idx.i113, align 8, !tbaa !9
  %i.fn = call double @llvm.fabs.f64(double %i.el) ; 4 uses
  %i.fo = call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i112) ; 2 uses
  %i.fp = fcmp olt double %i.fn, %i.fo
  %i.fq = fcmp oeq double %i.fn, %i.fo
  %i.fr = fcmp olt double %i.em, %.sroa.2.0.copyload.i114
  %i.fs = select i1 %i.fq, i1 %i.fr, i1 false
  %i.ft = select i1 %i.fp, i1 true, i1 %i.fs
  br i1 %i.ft, label %bb.ah, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115

bb.ah:                                            ; preds = %bb.ag
  %i.fu = load double, ptr %i.a, align 8, !tbaa !9
  store double %i.el, ptr %i.fm, align 8, !tbaa !9
  store double %i.em, ptr %.sroa.2.0..sroa_idx.i113, align 8, !tbaa !9
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %3, ptr %i.fv, align 8, !tbaa !29
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.fu, ptr %i.fw, align 8, !tbaa !30
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115

_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115: ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108._ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115_crit_edge, %bb.ah, %bb.ag
  %.pre-phi = phi double [ %.pre, %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit108._ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115_crit_edge ], [ %i.fn, %bb.ah ], [ %i.fn, %bb.ag ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !14
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %.pre-phi, ptr %i.fx, align 8, !tbaa !24
  %.sroa.030.0.copyload = load double, ptr %0, align 8, !tbaa !9
  %.sroa.231.0.copyload = load double, ptr %.sroa.233.0..sroa_idx, align 8, !tbaa !9
  %i.fy = load ptr, ptr %3, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call { double, double } %i.ga(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 0.000000e+00) ; 2 uses
  %i.gc = extractvalue { double, double } %i.gb, 0
  %i.gd = extractvalue { double, double } %i.gb, 1
  %i.ge = load ptr, ptr %3, align 8, !tbaa !16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = load <2 x double>, ptr %0, align 8, !tbaa !9 ; 2 uses
  %i.gi = call { double, double } %i.gg(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 1.000000e+00) ; 2 uses
  %i.gj = extractvalue { double, double } %i.gi, 0
  %i.gk = extractvalue { double, double } %i.gi, 1
  %i.gl = insertelement <2 x double> %i.gh, double %.sroa.030.0.copyload, i64 1
  %i.gm = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gc, i64 1
  %i.go = fsub <2 x double> %i.gl, %i.gn          ; 3 uses
  %i.gp = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gq = insertelement <2 x double> %i.gp, double %.sroa.231.0.copyload, i64 1
  %i.gr = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.gd, i64 1
  %i.gt = fsub <2 x double> %i.gq, %i.gs          ; 4 uses
  %i.gu = load ptr, ptr %3, align 8, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call { double, double } %i.gw(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 0.000000e+00) ; 2 uses
  %i.gy = extractvalue { double, double } %i.gx, 0
  %i.gz = extractvalue { double, double } %i.gx, 1
  %i.ha = load ptr, ptr %3, align 8, !tbaa !16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = call { double, double } %i.hc(ptr noundef nonnull align 8 dereferenceable(12) %3, double noundef 1.000000e+00) ; 2 uses
  %i.he = extractvalue { double, double } %i.hd, 0
  %i.hf = extractvalue { double, double } %i.hd, 1
  %i.hg = load ptr, ptr %2, align 8, !tbaa !16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call { double, double } %i.hi(ptr noundef nonnull align 8 dereferenceable(12) %2, double noundef 1.000000e+00) ; 2 uses
  %i.hk = extractvalue { double, double } %i.hj, 0
  %i.hl = extractvalue { double, double } %i.hj, 1
  %i.hm = insertelement <2 x double> poison, double %i.gz, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hl, i64 1 ; 3 uses
  %i.ho = fmul <2 x double> %i.hn, %i.hn
  %i.hp = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.hk, i64 1 ; 3 uses
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.hq, <2 x double> %i.ho) ; 2 uses
  %i.hs = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.hr) ; 2 uses
  %i.ht = fcmp une <2 x double> %i.hr, zeroinitializer ; 2 uses
  %i.hu = fdiv <2 x double> %i.hq, %i.hs
  %i.hv = fdiv <2 x double> %i.hn, %i.hs
  %i.hw = select <2 x i1> %i.ht, <2 x double> %i.hv, <2 x double> zeroinitializer ; 3 uses
  %i.hx = select <2 x i1> %i.ht, <2 x double> %i.hu, <2 x double> zeroinitializer ; 3 uses
  %i.hy = load ptr, ptr %4, align 8, !tbaa !16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = call { double, double } %i.ia(ptr noundef nonnull align 8 dereferenceable(12) %4, double noundef 0.000000e+00) ; 2 uses
  %i.ic = extractvalue { double, double } %i.ib, 0
  %i.id = extractvalue { double, double } %i.ib, 1
  %i.ie = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.id, i64 1 ; 3 uses
  %i.ig = fmul <2 x double> %i.if, %i.if
  %i.ih = insertelement <2 x double> poison, double %i.he, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.ic, i64 1 ; 3 uses
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ii, <2 x double> %i.ig) ; 2 uses
  %i.ik = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ij) ; 2 uses
  %i.il = fcmp une <2 x double> %i.ij, zeroinitializer ; 2 uses
  %i.im = fdiv <2 x double> %i.ii, %i.ik
  %i.in = fdiv <2 x double> %i.if, %i.ik
  %i.io = select <2 x i1> %i.il, <2 x double> %i.in, <2 x double> zeroinitializer ; 4 uses
  %i.ip = select <2 x i1> %i.il, <2 x double> %i.im, <2 x double> zeroinitializer ; 3 uses
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> %i.hx, <2 x i32> <i32 0, i32 2>
  %i.ir = shufflevector <2 x double> %i.ip, <2 x double> %i.hx, <2 x i32> <i32 1, i32 3>
  %i.is = fadd <2 x double> %i.iq, %i.ir          ; 4 uses
  %i.it = shufflevector <2 x double> %i.io, <2 x double> %i.hw, <2 x i32> <i32 0, i32 2>
  %i.iu = shufflevector <2 x double> %i.io, <2 x double> %i.hw, <2 x i32> <i32 1, i32 3>
  %i.iv = fadd <2 x double> %i.it, %i.iu          ; 4 uses
  %i.iw = fmul <2 x double> %i.iv, %i.iv
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.is, <2 x double> %i.iw) ; 2 uses
  %i.iy = shufflevector <2 x double> %i.is, <2 x double> %i.iv, <2 x i32> <i32 1, i32 3>
  %i.iz = fcmp une <2 x double> %i.ix, zeroinitializer ; 2 uses
  %i.ja = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ix) ; 2 uses
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jc = fdiv <2 x double> %i.iy, %i.jb          ; 2 uses
  %i.jd = shufflevector <2 x double> %i.is, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.je = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = fdiv <2 x double> %i.jd, %i.je          ; 2 uses
  %i.jg = shufflevector <2 x double> %i.jf, <2 x double> %i.jc, <2 x i32> <i32 1, i32 3>
  %i.jh = select <2 x i1> %i.iz, <2 x double> %i.jg, <2 x double> zeroinitializer
  %i.ji = shufflevector <2 x double> %i.jf, <2 x double> %i.jc, <2 x i32> <i32 0, i32 2>
  %i.jj = select <2 x i1> %i.iz, <2 x double> %i.ji, <2 x double> zeroinitializer
  %i.jk = fmul <2 x double> %i.gt, %i.jh
  %i.jl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.jj, <2 x double> %i.jk) ; 2 uses
  %i.jm = extractelement <2 x double> %i.jl, i64 0 ; 2 uses
  %i.jn = fneg double %i.jm
  %i.jo = extractelement <2 x double> %i.jl, i64 1 ; 2 uses
  %i.jp = fcmp ogt double %i.jo, 0.000000e+00
  br i1 %i.jp, label %bb.ai, label %bb.bc

bb.ai:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115
  %i.jq = extractelement <2 x double> %i.hx, i64 0 ; 2 uses
  %i.jr = fneg double %i.jq
  %i.js = extractelement <2 x double> %i.hw, i64 0
  %i.jt = fneg double %i.js                       ; 2 uses
  %i.ju = extractelement <2 x double> %i.gt, i64 1 ; 2 uses
  %i.jv = fmul double %i.ju, %i.jt
  %i.jw = extractelement <2 x double> %i.go, i64 1 ; 2 uses
  %i.jx = call noundef double @llvm.fmuladd.f64(double %i.jw, double %i.jr, double %i.jv)
  %i.jy = fcmp ogt double %i.jx, 0.000000e+00
  br i1 %i.jy, label %bb.aj, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153

bb.aj:                                            ; preds = %bb.ai
  %i.jz = fmul double %i.ju, %i.jq
  %i.ka = call noundef double @llvm.fmuladd.f64(double %i.jw, double %i.jt, double %i.jz) ; 8 uses
  %i.kb = call double @llvm.fabs.f64(double %i.ka)
  %i.kc = fcmp uge double %i.kb, %.pre-phi
  br i1 %i.kc, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit: ; preds = %bb.aj
  %i.kd = fneg double %i.ka                       ; 16 uses
  %i.ke = load i32, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %7 = and i32 %i.ke, 1
  %.not74 = icmp eq i32 %7, 0
  br i1 %.not74, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit
  %i.kf = fcmp ult double %i.ka, 0.000000e+00
  br i1 %i.kf, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !21
  %i.ki = fcmp olt double %i.kh, %i.kd
  br i1 %i.ki, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store double %i.kd, ptr %i.kg, align 8, !tbaa !21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.kj = fcmp ugt double %i.ka, 0.000000e+00
  br i1 %i.kj, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !22
  %i.km = fcmp ogt double %i.kl, %i.kd
  br i1 %i.km, label %bb.ap, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

bb.ap:                                            ; preds = %bb.ao
  store double %i.kd, ptr %i.kk, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit: ; preds = %bb.ap, %bb.ao, %bb.an, %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit
  %i.kn = and i32 %i.ke, 2
  %.not75.a = icmp eq i32 %i.kn, 0
  br i1 %.not75.a, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152.a, label %bb.aq

bb.aq:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit
  %i.ko = fcmp ult double %i.ka, 0.000000e+00
  br i1 %i.ko, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !21
  %i.kr = fcmp olt double %i.kq, %i.kd
  br i1 %i.kr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store double %i.kd, ptr %i.kp, align 8, !tbaa !21
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ks = fcmp ugt double %i.ka, 0.000000e+00
  br i1 %i.ks, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152.a, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !22
  %i.kv = fcmp ogt double %i.ku, %i.kd
  br i1 %i.kv, label %bb.av, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152.a

bb.av:                                            ; preds = %bb.au
  store double %i.kd, ptr %i.kt, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152.a

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152.a: ; preds = %bb.av, %bb.au, %bb.at, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit
  %i.kw = and i32 %i.ke, 4
  %.not76 = icmp eq i32 %i.kw, 0
  br i1 %.not76, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153, label %bb.aw

bb.aw:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152.a
  %i.kx = fcmp ult double %i.ka, 0.000000e+00
  br i1 %i.kx, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !21
  %i.la = fcmp olt double %i.kz, %i.kd
  br i1 %i.la, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store double %i.kd, ptr %i.ky, align 8, !tbaa !21
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.lb = fcmp ugt double %i.ka, 0.000000e+00
  br i1 %i.lb, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !22
  %i.le = fcmp ogt double %i.ld, %i.kd
  br i1 %i.le, label %bb.bb, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153

bb.bb:                                            ; preds = %bb.ba
  store double %i.kd, ptr %i.lc, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153: ; preds = %bb.ai, %bb.aj, %bb.bb, %bb.ba, %bb.az, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152.a
  %.0200 = phi double [ %i.kd, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit152.a ], [ %i.kd, %bb.bb ], [ %i.kd, %bb.az ], [ %i.kd, %bb.ba ], [ %i.el, %bb.aj ], [ %i.el, %bb.ai ]
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 40
  store double %.0200, ptr %i.lf, align 8, !tbaa !27
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit153, %_ZN7msdfgen33PerpendicularDistanceSelectorBase19addEdgeTrueDistanceEPKNS_11EdgeSegmentERKNS_14SignedDistanceEd.exit115
  %i.lg = fcmp olt double %i.jm, 0.000000e+00
  br i1 %i.lg, label %bb.bd, label %bb.bx

bb.bd:                                            ; preds = %bb.bc
  %foldExtExtBinop = fmul <2 x double> %i.gt, %i.io
  %i.lh = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.li = extractelement <2 x double> %i.ip, i64 0 ; 2 uses
  %i.lj = extractelement <2 x double> %i.go, i64 0 ; 2 uses
  %i.lk = call noundef double @llvm.fmuladd.f64(double %i.lj, double %i.li, double %i.lh)
  %i.ll = fcmp ogt double %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.be, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164

bb.be:                                            ; preds = %bb.bd
  %i.lm = extractelement <2 x double> %i.gt, i64 0
  %i.ln = extractelement <2 x double> %i.io, i64 0
  %i.lo = fneg double %i.li
  %i.lp = fmul double %i.lm, %i.lo
  %i.lq = call noundef double @llvm.fmuladd.f64(double %i.lj, double %i.ln, double %i.lp) ; 23 uses
  %i.lr = call double @llvm.fabs.f64(double %i.lq)
  %i.ls = fcmp uge double %i.lr, %.pre-phi
  br i1 %i.ls, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit161

_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit161: ; preds = %bb.be
  %i.lt = load i32, ptr %i.b, align 8, !tbaa !39  ; 3 uses
  %8 = and i32 %i.lt, 1
  %.not77 = icmp eq i32 %8, 0
  br i1 %.not77, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162.a, label %bb.bf

bb.bf:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit161
  %i.lu = fcmp ugt double %i.lq, 0.000000e+00
  br i1 %i.lu, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !21
  %i.lx = fcmp ogt double %i.lq, %i.lw
  br i1 %i.lx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store double %i.lq, ptr %i.lv, align 8, !tbaa !21
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %i.ly = fcmp ult double %i.lq, 0.000000e+00
  br i1 %i.ly, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162.a, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !22
  %i.mb = fcmp olt double %i.lq, %i.ma
  br i1 %i.mb, label %bb.bk, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162.a

bb.bk:                                            ; preds = %bb.bj
  store double %i.lq, ptr %i.lz, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162.a

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162.a: ; preds = %bb.bk, %bb.bj, %bb.bi, %_ZN7msdfgen33PerpendicularDistanceSelectorBase24getPerpendicularDistanceERdRKNS_7Vector2ES4_.exit161
  %i.mc = and i32 %i.lt, 2
  %.not78.a = icmp eq i32 %i.mc, 0
  br i1 %.not78.a, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163.a, label %bb.bl

bb.bl:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162.a
  %i.md = fcmp ugt double %i.lq, 0.000000e+00
  br i1 %i.md, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !21
  %i.mg = fcmp ogt double %i.lq, %i.mf
  br i1 %i.mg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store double %i.lq, ptr %i.me, align 8, !tbaa !21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.mh = fcmp ult double %i.lq, 0.000000e+00
  br i1 %i.mh, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163.a, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !22
  %i.mk = fcmp olt double %i.lq, %i.mj
  br i1 %i.mk, label %bb.bq, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163.a

bb.bq:                                            ; preds = %bb.bp
  store double %i.lq, ptr %i.mi, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163.a

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163.a: ; preds = %bb.bq, %bb.bp, %bb.bo, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit162.a
  %i.ml = and i32 %i.lt, 4
  %.not79 = icmp eq i32 %i.ml, 0
  br i1 %.not79, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164, label %bb.br

bb.br:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163.a
  %i.mm = fcmp ugt double %i.lq, 0.000000e+00
  br i1 %i.mm, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !21
  %i.mp = fcmp ogt double %i.lq, %i.mo
  br i1 %i.mp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store double %i.lq, ptr %i.mn, align 8, !tbaa !21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.mq = fcmp ult double %i.lq, 0.000000e+00
  br i1 %i.mq, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !22
  %i.mt = fcmp olt double %i.lq, %i.ms
  br i1 %i.mt, label %bb.bw, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164

bb.bw:                                            ; preds = %bb.bv
  store double %i.lq, ptr %i.mr, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164

_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164: ; preds = %bb.bd, %bb.be, %bb.bw, %bb.bv, %bb.bu, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163.a
  %.0210 = phi double [ %i.lq, %bb.bw ], [ %i.lq, %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit163.a ], [ %i.lq, %bb.bu ], [ %i.lq, %bb.bv ], [ %i.el, %bb.be ], [ %i.el, %bb.bd ]
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 48
  store double %.0210, ptr %i.mu, align 8, !tbaa !28
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase28addEdgePerpendicularDistanceEd.exit164, %bb.bc
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.jo, ptr %i.mv, align 8, !tbaa !25
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double %i.jn, ptr %i.mw, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204

_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95.thread204: ; preds = %bb.aa, %.split205, %bb.bx, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit95, %_ZNK7msdfgen33PerpendicularDistanceSelectorBase14isEdgeRelevantERKNS0_9EdgeCacheEPKNS_11EdgeSegmentERKNS_7Vector2E.exit87.thread202
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7msdfgen21MultiDistanceSelector5mergeERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.01.0.copyload.i = load double, ptr %i.b, align 8, !tbaa !9
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.22.0.copyload.i = load double, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.0.0.copyload.i = load double, ptr %i.a, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !9
  %i.c = tail call double @llvm.fabs.f64(double %.sroa.01.0.copyload.i) ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i) ; 2 uses
  %i.e = fcmp olt double %i.c, %i.d
  %i.f = fcmp oeq double %i.c, %i.d
  %i.g = fcmp olt double %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, i64 16, i1 false), !tbaa.struct !14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load double, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.n, ptr %i.o, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !21 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !21
  %i.t = fcmp ogt double %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double %i.q, ptr %i.r, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load double, ptr %i.u, align 8, !tbaa !22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !22
  %i.y = fcmp olt double %i.v, %i.x
  br i1 %i.y, label %bb.f, label %_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_.exit

bb.f:                                             ; preds = %bb.e
  store double %i.v, ptr %i.w, align 8, !tbaa !22
  br label %_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_.exit

_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_.exit: ; preds = %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.01.0.copyload.i4 = load double, ptr %i.aa, align 8, !tbaa !9
  %.sroa.22.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.22.0.copyload.i6 = load double, ptr %.sroa.22.0..sroa_idx.i5, align 8, !tbaa !9
  %.sroa.0.0.copyload.i7 = load double, ptr %i.z, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i9 = load double, ptr %.sroa.2.0..sroa_idx.i8, align 8, !tbaa !9
  %i.ab = tail call double @llvm.fabs.f64(double %.sroa.01.0.copyload.i4) ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i7) ; 2 uses
  %i.ad = fcmp olt double %i.ab, %i.ac
  %i.ae = fcmp oeq double %i.ab, %i.ac
  %i.af = fcmp olt double %.sroa.22.0.copyload.i6, %.sroa.2.0.copyload.i9
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aa, i64 16, i1 false), !tbaa.struct !14
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = load double, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.am, ptr %i.an, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7msdfgen33PerpendicularDistanceSelectorBase5mergeERKS0_.exit
end_hunk_0
