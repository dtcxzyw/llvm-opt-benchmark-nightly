Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btRigidBody?download=true
inline.NumInlined: 729
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
@gDisableDeactivation = dso_local local_unnamed_addr global i8 0, align 1
@_ZTV11btRigidBody = dso_local constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI11btRigidBody, ptr @_ZN11btRigidBodyD2Ev, ptr @_ZN11btRigidBodyD0Ev, ptr @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape, ptr @_ZNK17btCollisionObject24checkCollideWithOverrideEPKS_, ptr @_ZNK11btRigidBody28calculateSerializeBufferSizeEv, ptr @_ZNK11btRigidBody9serializeEPvP12btSerializer, ptr @_ZNK11btRigidBody21serializeSingleObjectEP12btSerializer] }, align 8
@_ZL8uniqueId = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"btRigidBodyFloatData\00", align 1
@_ZTI11btRigidBody = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11btRigidBody, ptr @_ZTI17btCollisionObject }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS11btRigidBody = dso_local constant [14 x i8] c"11btRigidBody\00", align 1
@_ZTI17btCollisionObject = external constant ptr
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN11btRigidBodyC1ERKNS_27btRigidBodyConstructionInfoE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE
@_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3 = dso_local unnamed_addr alias void (ptr, float, ptr, ptr, ptr), ptr @_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(372) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.d, align 8, !tbaa !22
  invoke void @_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(156) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.f) #22
  tail call void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(372) dereferenceable(372) %0) #22
  resume { ptr, i32 } %i.e
}

declare void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE(ptr noundef nonnull align 8 dereferenceable(744) initializes((272, 276), (420, 452), (456, 504), (520, 561), (564, 588), (592, 600), (672, 688), (736, 744)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(156) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 2, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.j = load <2 x float>, ptr %i.h, align 8, !tbaa !33 ; 3 uses
  %i.k = fcmp olt <2 x float> %i.j, zeroinitializer
  %i.l = fcmp ogt <2 x float> %i.j, splat (float 1.000000e+00)
  %i.m = select <2 x i1> %i.l, <2 x float> splat (float 1.000000e+00), <2 x float> %i.j
  %i.n = select <2 x i1> %i.k, <2 x float> zeroinitializer, <2 x float> %i.m
  store <2 x float> %i.n, ptr %i.i, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.q = load <2 x float>, ptr %i.o, align 8, !tbaa !33
  store <2 x float> %i.q, ptr %i.p, align 4, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.s, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i32 0, ptr %i.u, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 740
  store i32 0, ptr %i.v, align 4, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.x = load i8, ptr %i.w, align 8, !tbaa !39, !range !40, !noundef !41
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 %i.x, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.ab = load <4 x float>, ptr %i.z, align 4, !tbaa !33
  store <4 x float> %i.ab, ptr %i.aa, align 4, !tbaa !33
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 4 dereferenceable(64) %i.ac)
  br label %_ZN11btRigidBody12setMassPropsEfRK9btVector3.exit

bb.c:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 16, i1 false), !tbaa.struct !44
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !44
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !44
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !44
  br label %_ZN11btRigidBody12setMassPropsEfRK9btVector3.exit

_ZN11btRigidBody12setMassPropsEfRK9btVector3.exit: ; preds = %bb.c, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 16, i1 false), !tbaa.struct !44
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !44
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !44
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !44
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bd = load <4 x float>, ptr %i.bb, align 8, !tbaa !33
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  store <4 x float> %i.be, ptr %i.bc, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !45
  %i.bh = load ptr, ptr %0, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %i.bg)
  %i.bk = load i32, ptr @_ZL8uniqueId, align 4, !tbaa !72 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZL8uniqueId, align 4, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !73
  %i.bn = load float, ptr %1, align 8, !tbaa !46  ; 4 uses
  %i.bo = fcmp oeq float %i.bn, 0.000000e+00      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !47
  %i.br = and i32 %i.bq, -2
  %i.bs = fdiv float 1.000000e+00, %i.bn
  %masksel = zext i1 %i.bo to i32
  %.sink = or disjoint i32 %i.br, %masksel
  %.sink.i = select i1 %i.bo, float 0.000000e+00, float %i.bs ; 3 uses
  store i32 %.sink, ptr %i.bp, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 452
  store float %.sink.i, ptr %i.bu, align 4, !tbaa !48
  %i.bv = load <2 x float>, ptr %i.ap, align 8, !tbaa !33
  %i.bw = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bx, %i.bv
  %i.bz = load float, ptr %i.ao, align 8, !tbaa !33
  %i.ca = fmul float %i.bn, %i.bz
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ca, i64 0
  store <2 x float> %i.by, ptr %i.ar, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %i.aq, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ce = load <2 x float>, ptr %i.d, align 8, !tbaa !33
  %i.cf = insertelement <2 x float> poison, float %.sink.i, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.cg, %i.ce
  %i.ci = load float, ptr %i.e, align 8, !tbaa !33
  %i.cj = fmul float %.sink.i, %i.ci
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cj, i64 0
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 688
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 372
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.cs = load <2 x float>, ptr %i.as, align 8, !tbaa !33, !noalias !74 ; 3 uses
  %i.ct = load <2 x float>, ptr %i.au, align 8, !tbaa !33, !noalias !74 ; 3 uses
  %i.cu = shufflevector <2 x float> %i.cs, <2 x float> %i.ct, <4 x i32> <i32 0, i32 poison, i32 2, i32 2> ; 2 uses
  %i.cv = insertelement <4 x float> %i.cu, float -0.000000e+00, i64 1
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> %i.ct, <4 x i32> <i32 1, i32 poison, i32 3, i32 3> ; 2 uses
  %i.cx = insertelement <4 x float> %i.cw, float 1.000000e+00, i64 1
  %i.cy = load <2 x float>, ptr %i.aw, align 8, !tbaa !33, !noalias !74 ; 3 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> %i.cw, <4 x i32> <i32 1, i32 poison, i32 4, i32 6>
  %i.db = insertelement <4 x float> %i.da, float 0.000000e+00, i64 1
  %i.dc = shufflevector <4 x float> %i.cz, <4 x float> %i.cu, <4 x i32> <i32 0, i32 poison, i32 4, i32 6>
  %i.dd = insertelement <4 x float> %i.dc, float 0.000000e+00, i64 1
  %i.de = load <2 x float>, ptr %i.cl, align 4, !tbaa !33, !noalias !74 ; 3 uses
  %i.df = load float, ptr %i.cm, align 8, !tbaa !33, !noalias !74
  %i.dg = load <2 x float>, ptr %i.cn, align 4, !tbaa !33, !noalias !74 ; 3 uses
  %i.dh = load float, ptr %i.co, align 8, !tbaa !33, !noalias !74
  %i.di = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x float> %i.di, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dk = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dj, <4 x float> %i.dk, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.dn = shufflevector <2 x float> %i.de, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.do = shufflevector <2 x float> %i.cs, <2 x float> %i.ct, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dp = shufflevector <2 x float> %i.de, <2 x float> %i.dg, <2 x i32> <i32 1, i32 3>
  %i.dq = shufflevector <4 x float> %i.dl, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 2>
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 396
  %.sroa.1117.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.ds = load <3 x float>, ptr %i.bt, align 8, !tbaa !33
  %i.dt = shufflevector <3 x float> %i.ds, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.du = fcmp une <3 x float> %i.dt, zeroinitializer
  %i.dv = fdiv <3 x float> splat (float 1.000000e+00), %i.dt
  %i.dw = select <3 x i1> %i.du, <3 x float> %i.dv, <3 x float> zeroinitializer ; 4 uses
  %i.dx = shufflevector <3 x float> %i.dw, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.dx, ptr %i.cb, align 8, !tbaa !33
  %i.dy = extractelement <3 x float> %i.dw, i64 0
  store float %i.dy, ptr %i.cc, align 8, !tbaa !33
  store float 0.000000e+00, ptr %i.cd, align 4, !tbaa !33
  %i.dz = shufflevector <3 x float> %i.dw, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.eb = fmul <4 x float> %i.cv, %i.ea           ; 3 uses
  %i.ec = shufflevector <4 x float> %i.dz, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 5, i32 2, i32 2>
  %i.ed = fmul <4 x float> %i.cx, %i.ec           ; 3 uses
  %i.ee = shufflevector <4 x float> %i.dz, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 0>
  %i.ef = load <2 x float>, ptr %i.cp, align 4, !tbaa !33, !noalias !74 ; 4 uses
  %i.eg = load float, ptr %i.cq, align 8, !tbaa !33, !noalias !74
  %i.eh = shufflevector <2 x float> %i.cy, <2 x float> %i.ef, <3 x i32> <i32 3, i32 0, i32 2>
  %i.ei = fmul <3 x float> %i.dw, %i.eh           ; 5 uses
  %i.ej = fmul <4 x float> %i.db, %i.ed
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.eb, <4 x float> %i.ej)
  %i.el = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %2 = fmul <4 x float> %i.dm, %i.ee              ; 3 uses
  %3 = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> zeroinitializer
  %4 = fmul <2 x float> %i.dn, %3
  %5 = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> zeroinitializer
  %6 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %5, <2 x float> %4)
  %7 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> zeroinitializer
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %7, <2 x float> %6)
  %9 = shufflevector <4 x float> %i.el, <4 x float> %i.dq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %2, <4 x float> %i.ek)
  %11 = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <4 x float> %11, <4 x float> %i.ed, <2 x i32> <i32 0, i32 6>
  %13 = shufflevector <2 x float> %i.ef, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %14 = shufflevector <3 x float> %i.ei, <3 x float> %13, <2 x i32> <i32 2, i32 3>
  %i.em = fmul <2 x float> %12, %14
  %i.en = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <3 x float> %i.ei, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %16 = shufflevector <4 x float> %15, <4 x float> %i.eb, <2 x i32> <i32 1, i32 6>
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %16, <2 x float> %i.em)
  %17 = insertelement <2 x float> poison, float %i.eg, i64 0
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %19 = shufflevector <4 x float> %15, <4 x float> %2, <2 x i32> <i32 0, i32 6>
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %19, <2 x float> %i.eo) ; 2 uses
  %i.ep = shufflevector <3 x float> %i.ei, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.eq = fmul <2 x float> %i.dn, %i.ep
  %i.er = shufflevector <3 x float> %i.ei, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.er, <2 x float> %i.eq)
  %i.et = insertelement <2 x float> poison, float %i.df, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.dh, i64 1
  %i.ev = shufflevector <3 x float> %i.ei, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ev, <2 x float> %i.es)
  store <2 x float> %8, ptr %i.cr, align 4
  store <4 x float> %10, ptr %.sroa.5.0..sroa_idx.i, align 4
  %21 = extractelement <2 x float> %20, i64 1
  store float %21, ptr %.sroa.10.16..sroa_idx.i, align 4
  store float 0.000000e+00, ptr %.sroa.1117.16..sroa_idx.i, align 8, !tbaa !43
  store <2 x float> %i.ew, ptr %i.dr, align 4
  %.sroa.1518.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 412
  %22 = extractelement <2 x float> %20, i64 0
  store float %22, ptr %.sroa.1518.32..sroa_idx.i, align 4
  %.sroa.1619.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  store float 0.000000e+00, ptr %.sroa.1619.32..sroa_idx.i, align 8, !tbaa !43
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 8, ptr %i.ex, align 8, !tbaa !75
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, i8 0, i64 32, i1 false)
  store <2 x float> %i.ch, ptr %i.ck, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !43
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ez, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !40
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #23
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(372) dereferenceable(372)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.btRigidBody::btRigidBodyConstructionInfo", align 8 ; 18 uses
  tail call void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(372) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i8 1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 604
  store i32 0, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i32 0, ptr %i.d, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store float %1, ptr %5, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %3, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !44
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 104
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00>, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 120
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 8.000000e-01, float 1.000000e+00>, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i8 0, ptr %i.k, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 140
  store <4 x float> <float 5.000000e-03, float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A>, ptr %i.l, align 4, !tbaa !33
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  invoke void @_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(156) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  tail call void @_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.s) #22
  tail call void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(372) dereferenceable(372) %0) #22
  resume { ptr, i32 } %i.r
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btRigidBody10setDampingEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(744) initializes((552, 560)) %0, float noundef %1, float noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  %i.b = fcmp ogt float %1, 1.000000e+00
  %.sroa.speculate.load.false4.sroa.speculated = select i1 %i.b, float 1.000000e+00, float %1
  %.sroa.speculated5 = select i1 %i.a, float 0.000000e+00, float %.sroa.speculate.load.false4.sroa.speculated
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 552
  store float %.sroa.speculated5, ptr %i.c, align 8, !tbaa !49
  %i.d = fcmp olt float %2, 0.000000e+00
  %i.e = fcmp ogt float %2, 1.000000e+00
  %.sroa.speculate.load.false.sroa.speculated = select i1 %i.e, float 1.000000e+00, float %2
  %.sroa.speculated = select i1 %i.d, float 0.000000e+00, float %.sroa.speculate.load.false.sroa.speculated
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float %.sroa.speculated, ptr %i.f, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody12setMassPropsEfRK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(744) initializes((452, 456), (472, 488), (504, 520), (688, 704)) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = fcmp oeq float %1, 0.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, -2
  store i32 %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = fdiv float 1.000000e+00, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ 0.000000e+00, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 452
  store float %.sink, ptr %i.g, align 4, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.i = load <2 x float>, ptr %i.h, align 8, !tbaa !33
  %i.j = insertelement <2 x float> poison, float %1, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.n = load float, ptr %i.m, align 8, !tbaa !33
  %i.o = fmul float %1, %i.n
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.o, i64 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <2 x float> %i.l, ptr %i.p, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !33 ; 2 uses
  %i.s = fcmp une float %i.r, 0.000000e+00
  %i.t = fdiv float 1.000000e+00, %i.r
  %i.u = select i1 %i.s, float %i.t, float 0.000000e+00
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.w = load <2 x float>, ptr %2, align 4, !tbaa !33 ; 2 uses
  %i.x = fcmp une <2 x float> %i.w, zeroinitializer
  %i.y = fdiv <2 x float> splat (float 1.000000e+00), %i.w
  %i.z = select <2 x i1> %i.x, <2 x float> %i.y, <2 x float> zeroinitializer
  store <2 x float> %i.z, ptr %i.v, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 512
  store float %i.u, ptr %i.aa, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 516
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !33
  %i.ae = insertelement <2 x float> poison, float %.sink, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !33
  %i.aj = fmul float %.sink, %i.ai
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <2 x float> %i.ag, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody19updateInertiaTensorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(744) initializes((372, 420)) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 508
end_hunk_0
