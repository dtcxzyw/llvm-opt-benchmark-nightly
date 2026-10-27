Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexConvexAlgorithm?download=true
inline.NumInlined: 595
inline.NumDeleted: 165
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN23btConvexConvexAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vr, ptr noundef nonnull align 4 dereferenceable(16) %i.vs, i64 16, i1 false), !tbaa.struct !69
  store i8 %i.vt, ptr %i.vu, align 8, !tbaa !89
  store ptr %i.aiv, ptr %i.vv, align 8, !tbaa !133
  call void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(100) %9, ptr noundef nonnull align 4 dereferenceable(132) %7, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %i.aiv, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  %i.aiw = add nuw nsw i32 %.0185528, 1           ; 2 uses
  %i.aix = load i32, ptr %i.sm, align 4, !tbaa !34 ; 2 uses
  %i.aiy = icmp slt i32 %i.aiw, %i.aix
  br i1 %i.aiy, label %.lr.ph530.split, label %._crit_edge531.split, !llvm.loop !109

._crit_edge531.split:                             ; preds = %bb.cp, %.lr.ph530, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.cq

.critedge:                                        ; preds = %bb.cd, %_ZN16btManifoldResult20refreshContactPointsEv.exit295
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.cq:                                            ; preds = %bb.cj, %._crit_edge531.split, %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.aiz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aja = load i8, ptr %i.aiz, align 8, !tbaa !31, !range !36, !noundef !37
  %i.ajb = trunc nuw i8 %i.aja to i1
  br i1 %i.ajb, label %bb.cr, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.cr:                                            ; preds = %bb.cq
  %i.ajc = load ptr, ptr %i.u, align 8, !tbaa !48 ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 856
  %i.aje = load i32, ptr %i.ajd, align 8, !tbaa !57
  %.not.i362 = icmp eq i32 %i.aje, 0
  br i1 %.not.i362, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i364

.sink.split.i364:                                 ; preds = %bb.cr
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajc, i64 840
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !58
  %i.ajh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !59
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !44 ; 3 uses
  %.not1.i363 = icmp eq ptr %i.ajg, %i.ajk        ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !60
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 16
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !44 ; 2 uses
  %.576 = select i1 %.not1.i363, ptr %i.ajo, ptr %i.ajk
  %.577 = select i1 %.not1.i363, ptr %i.ajk, ptr %i.ajo
  %.sink.i367 = getelementptr inbounds nuw i8, ptr %.577, i64 8
  %i.ajp = getelementptr inbounds nuw i8, ptr %.576, i64 8
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.ajc, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i367, ptr noundef nonnull align 4 dereferenceable(64) %i.ajp)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i364, %bb.cr, %.sink.split.i283, %bb.n, %.sink.split.i276, %bb.j, %.sink.split.i, %bb.g, %bb.cq, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc noundef float @_ZL22capsuleCapsuleDistanceR9btVector3S0_ffffiiRK11btTransformS3_f(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %9, float noundef %10) unnamed_addr #11 {
bb.a:
  %i.a = sext i32 %6 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %8, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.d = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.a
  %i.g = load float, ptr %i.b, align 4, !tbaa !54 ; 6 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !54 ; 9 uses
  %i.i = load float, ptr %i.f, align 4, !tbaa !54 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.093.0.copyload = load float, ptr %i.j, align 4
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 52
  %.sroa.494.0.copyload = load float, ptr %.sroa.494.0..sroa_idx, align 4
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.sroa.595.0.copyload = load float, ptr %.sroa.595.0..sroa_idx, align 4
  %i.k = sext i32 %7 to i64                       ; 3 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %9, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.k
  %i.q = load float, ptr %i.l, align 4, !tbaa !54 ; 3 uses
  %i.r = load float, ptr %i.n, align 4, !tbaa !54 ; 3 uses
  %i.s = load float, ptr %i.p, align 4, !tbaa !54 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %.sroa.081.0.copyload = load float, ptr %i.t, align 4
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  %.sroa.482.0.copyload = load float, ptr %.sroa.482.0..sroa_idx, align 4
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %.sroa.583.0.copyload = load float, ptr %.sroa.583.0..sroa_idx, align 4
  %i.u = fsub float %.sroa.081.0.copyload, %.sroa.093.0.copyload ; 3 uses
  %i.v = fsub float %.sroa.482.0.copyload, %.sroa.494.0.copyload ; 3 uses
  %i.w = fsub float %.sroa.583.0.copyload, %.sroa.595.0.copyload ; 3 uses
  %i.x = fmul float %i.h, %i.r
  %i.y = tail call float @llvm.fmuladd.f32(float %i.g, float %i.q, float %i.x)
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.s, float %i.y) ; 6 uses
  %i.aa = fmul float %i.h, %i.v
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.g, float %i.u, float %i.aa)
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.w, float %i.ab) ; 3 uses
  %i.ad = fmul float %i.r, %i.v
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.q, float %i.u, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.w, float %i.ae)
  %i.ag = fneg float %i.z
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.z, float 1.000000e+00) ; 2 uses
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  %.pre98.i = fneg float %i.af                    ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = tail call float @llvm.fmuladd.f32(float %.pre98.i, float %i.z, float %i.ac)
  %i.ak = fdiv float %i.aj, %i.ah                 ; 3 uses
  %i.al = fneg float %2                           ; 2 uses
  %i.am = fcmp olt float %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = fcmp ogt float %i.ak, %2
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0128 = phi float [ %i.al, %bb.b ], [ %i.ak, %bb.c ], [ %2, %bb.d ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %.0128, float %i.z, float %.pre98.i) ; 3 uses
  %i.ap = fneg float %4                           ; 5 uses
  %i.aq = fcmp olt float %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.z, float %i.ac) ; 3 uses
  %i.as = fneg float %2                           ; 2 uses
  %i.at = fcmp olt float %i.ar, %i.as
  br i1 %i.at, label %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = fcmp ogt float %i.ar, %2
  br i1 %i.au, label %bb.h, label %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

bb.h:                                             ; preds = %bb.g
  br label %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

bb.i:                                             ; preds = %bb.e
  %i.av = fcmp ogt float %i.ao, %4
  br i1 %i.av, label %bb.j, label %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call float @llvm.fmuladd.f32(float %4, float %i.z, float %i.ac) ; 3 uses
  %i.ax = fneg float %2                           ; 2 uses
  %i.ay = fcmp olt float %i.aw, %i.ax
  br i1 %i.ay, label %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = fcmp ogt float %i.aw, %2
  br i1 %i.az, label %bb.l, label %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

bb.l:                                             ; preds = %bb.k
  br label %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit

_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.g, %bb.h, %bb.k, %bb.l
  %.0 = phi float [ %i.ap, %bb.f ], [ %i.ap, %bb.h ], [ %i.ap, %bb.g ], [ %i.ao, %bb.i ], [ %4, %bb.l ], [ %4, %bb.k ], [ %4, %bb.j ] ; 3 uses
  %i.ba = phi float [ %i.as, %bb.f ], [ %2, %bb.h ], [ %i.ar, %bb.g ], [ %.0128, %bb.i ], [ %2, %bb.l ], [ %i.aw, %bb.k ], [ %i.ax, %bb.j ] ; 3 uses
  %i.bb = fmul float %i.g, %i.ba
  %i.bc = fmul float %i.h, %i.ba
  %i.bd = fmul float %i.i, %i.ba
  %i.be = fmul float %i.q, %.0                    ; 2 uses
  %i.bf = fmul float %i.r, %.0                    ; 2 uses
  %i.bg = fmul float %i.s, %.0                    ; 2 uses
  %i.bh = fsub float %i.u, %i.bb
  %i.bi = fsub float %i.v, %i.bc
  %i.bj = fsub float %i.w, %i.bd
  %i.bk = fadd float %i.be, %i.bh                 ; 3 uses
  %i.bl = fadd float %i.bf, %i.bi                 ; 3 uses
  %i.bm = fadd float %i.bg, %i.bj                 ; 3 uses
  %i.bn = fmul float %i.bl, %i.bl
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bo) ; 2 uses
  %i.bq = tail call noundef float @sqrtf(float noundef %i.bp) #21 ; 2 uses
  %i.br = fsub float %i.bq, %3
  %i.bs = fsub float %i.br, %5                    ; 2 uses
  %i.bt = fcmp ogt float %i.bs, %10
  br i1 %i.bt, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit
  %i.bu = fcmp ugt float %i.bp, f0x28800000
  br i1 %i.bu, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.i)
  %i.bw = fcmp ogt float %i.bv, f0x3F3504F3
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = fmul nnan float %i.i, %i.i
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.by)
  %i.ca = tail call noundef float @sqrtf(float noundef %i.bz) #21
  %i.cb = fdiv float 1.000000e+00, %i.ca          ; 2 uses
  store float 0.000000e+00, ptr %0, align 4, !tbaa !54
  %i.cc = fneg float %i.i
  %i.cd = fmul float %i.cb, %i.cc                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.cd, ptr %i.ce, align 4, !tbaa !54
  %i.cf = fmul float %i.h, %i.cb
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.sink.split

bb.p:                                             ; preds = %bb.n
  %i.cg = fmul float %i.h, %i.h
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.cg)
  %i.ci = tail call noundef float @sqrtf(float noundef %i.ch) #21
  %i.cj = fdiv float 1.000000e+00, %i.ci          ; 2 uses
  %i.ck = fneg float %i.h
  %i.cl = fmul float %i.cj, %i.ck                 ; 2 uses
  store float %i.cl, ptr %0, align 4, !tbaa !54
  %i.cm = fmul float %i.g, %i.cj                  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !54
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.sink.split

bb.q:                                             ; preds = %bb.m
  %i.co = fdiv float -1.000000e+00, %i.bq         ; 3 uses
  %i.cp = fmul float %i.co, %i.bk                 ; 2 uses
  %i.cq = fmul float %i.co, %i.bl                 ; 2 uses
  %i.cr = fmul float %i.co, %i.bm                 ; 2 uses
  %.sroa.0.0.vec.insert.i32 = insertelement <2 x float> poison, float %i.cp, i64 0
  %.sroa.0.4.vec.insert.i33 = insertelement <2 x float> %.sroa.0.0.vec.insert.i32, float %i.cq, i64 1
  %.sroa.3.12.vec.insert.i34 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cr, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i33, ptr %0, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i34, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !68
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.sink.split: ; preds = %bb.p, %bb.o
  %.sink = phi float [ %i.cf, %bb.o ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %.ph141 = phi float [ %i.cd, %bb.o ], [ %i.cm, %bb.p ]
  %.ph142 = phi float [ 0.000000e+00, %bb.o ], [ %i.cl, %bb.p ]
  store float %.sink, ptr %i.bx, align 4, !tbaa !54
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.sink.split, %bb.q
  %11 = phi float [ %i.cr, %bb.q ], [ %.sink, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.sink.split ]
  %12 = phi float [ %i.cq, %bb.q ], [ %.ph141, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.sink.split ]
  %13 = phi float [ %i.cp, %bb.q ], [ %.ph142, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.sink.split ]
  %i.cs = load float, ptr %i.t, align 4, !tbaa !54
  %i.ct = fadd float %i.be, %i.cs
  %i.cu = load float, ptr %.sroa.482.0..sroa_idx, align 4, !tbaa !54
  %i.cv = fadd float %i.bf, %i.cu
  %i.cw = load float, ptr %.sroa.583.0..sroa_idx, align 4, !tbaa !54
  %i.cx = fadd float %i.bg, %i.cw
  %i.cy = fmul float %5, %13
  %i.cz = fmul float %5, %12
  %i.da = fmul float %5, %11
  %i.db = fadd float %i.ct, %i.cy
  %i.dc = fadd float %i.cv, %i.cz
  %i.dd = fadd float %i.cx, %i.da
  %.sroa.0.0.vec.insert.i47 = insertelement <2 x float> poison, float %i.db, i64 0
  %.sroa.0.4.vec.insert.i48 = insertelement <2 x float> %.sroa.0.0.vec.insert.i47, float %i.dc, i64 1
  %.sroa.3.12.vec.insert.i49 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dd, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i48, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i49, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !68
  br label %bb.r

bb.r:                                             ; preds = %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  ret float %i.bs
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN16btManifoldResult20refreshContactPointsEv(ptr noundef nonnull align 8 dereferenceable(52) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 840
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  %.not1 = icmp eq ptr %i.f, %i.j                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %. = select i1 %.not1, ptr %i.n, ptr %i.j
  %.4 = select i1 %.not1, ptr %i.j, ptr %i.n
  %.sink = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %., i64 8
  tail call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %.sink, ptr noundef nonnull align 4 dereferenceable(64) %i.o)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN27btPolyhedralContactClipping18findSeparatingAxisERK18btConvexPolyhedronS2_RK11btTransformS5_R9btVector3RN36btDiscreteCollisionDetectorInterface6ResultE(ptr noundef nonnull align 8 dereferenceable(172), ptr noundef nonnull align 8 dereferenceable(172), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 3 uses
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  %i.f = icmp slt i32 %i.e, %1
  br i1 %i.f, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = sext i32 %1 to i64
  %i.h = shl nsw i64 %i.g, 4
  %i.i = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.h, i32 noundef 16)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !29
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i: ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.b, %bb.c ] ; 4 uses
  %.0.i.i = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.j to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.m = icmp eq i32 %i.j, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %indvars.iv.next.i.i
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !0

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %indvars.iv.i.i.epil.init
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !69
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %.not.i5.i = icmp eq ptr %i.x, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !27, !range !36, !noundef !37
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.x)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i: ; preds = %bb.g, %bb.f, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ab, align 8, !tbaa !27
  store ptr %.0.i.i, ptr %i.w, align 8, !tbaa !28
  store i32 %1, ptr %i.d, align 8, !tbaa !30
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = sext i32 %i.b to i64                    ; 5 uses
  %wide.trip.count = sext i32 %1 to i64           ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count, %i.ad
  %xtraiter28 = and i64 %i.ae, 1
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.prol = add nsw i64 %i.ad, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ad, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %i.ah, %i.ad
  br i1 %i.ai, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !69
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.am = getelementptr [16 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !69
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.new, !llvm.loop !134

end_hunk_0
