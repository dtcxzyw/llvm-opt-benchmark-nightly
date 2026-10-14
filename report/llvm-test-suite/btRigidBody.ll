Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btRigidBody?download=true
inline.NumInlined: 392
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
$_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf = comdat any

@gDeactivationTime = dso_local local_unnamed_addr global float 2.000000e+00, align 4
@gDisableDeactivation = dso_local local_unnamed_addr global i8 0, align 1
@_ZTV11btRigidBody = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI11btRigidBody, ptr @_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject, ptr @_ZN11btRigidBodyD2Ev, ptr @_ZN11btRigidBodyD0Ev, ptr @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape] }, align 8
@_ZL8uniqueId = internal unnamed_addr global i32 0, align 4
@_ZTI11btRigidBody = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11btRigidBody, ptr @_ZTI17btCollisionObject }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS11btRigidBody = dso_local constant [14 x i8] c"11btRigidBody\00", align 1
@_ZTI17btCollisionObject = external constant ptr

@_ZN11btRigidBodyC1ERKNS_27btRigidBodyConstructionInfoE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE
@_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3 = dso_local unnamed_addr alias void (ptr, float, ptr, ptr, ptr), ptr @_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3

; Function Attrs: uwtable
define dso_local void @_ZN11btRigidBodyC2ERKNS_27btRigidBodyConstructionInfoE(ptr noundef nonnull align 8 dereferenceable(564) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.d, align 8, !tbaa !19
  invoke void @_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE(ptr noundef nonnull align 8 dereferenceable(564) %0, ptr noundef nonnull align 8 dereferenceable(148) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.f, null
  %i.g = load i8, ptr %i.a, align 8, !range !20
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.h, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit unwind label %bb.f

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit: ; preds = %bb.c, %bb.d
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.d, %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #18
  unreachable
}

declare void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(280)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define dso_local void @_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE(ptr noundef nonnull align 8 dereferenceable(564) initializes((256, 260), (328, 360), (364, 428), (444, 485), (488, 520), (552, 560)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 2, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 364
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 380
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  store float 5.000000e-01, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.k = load <2 x float>, ptr %i.i, align 8, !tbaa !29
  store <2 x float> %i.k, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.m, ptr %i.n, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 0, ptr %i.o, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 0, ptr %i.p, align 4, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = load i8, ptr %i.q, align 8, !tbaa !36, !range !20, !noundef !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 484
  store i8 %i.r, ptr %i.s, align 4, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.v = load <4 x float>, ptr %i.t, align 4, !tbaa !29
  store <4 x float> %i.v, ptr %i.u, align 8, !tbaa !29
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(64) %i.w)
  br label %_ZN11btRigidBody12setMassPropsEfRK9btVector3.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 16, i1 false), !tbaa.struct !40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !40
  br label %_ZN11btRigidBody12setMassPropsEfRK9btVector3.exit

_ZN11btRigidBody12setMassPropsEfRK9btVector3.exit: ; preds = %bb.c, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 16, i1 false), !tbaa.struct !40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.au = load <2 x float>, ptr %i.as, align 8, !tbaa !29
  store <2 x float> %i.au, ptr %i.at, align 4, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41
  %i.ax = load ptr, ptr %0, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.aw)
  %i.ba = load i32, ptr @_ZL8uniqueId, align 4, !tbaa !7 ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZL8uniqueId, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !54
  %i.bd = load float, ptr %1, align 8, !tbaa !42  ; 2 uses
  %i.be = fcmp oeq float %i.bd, 0.000000e+00      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !43
  %i.bh = and i32 %i.bg, -2
  %i.bi = fdiv float 1.000000e+00, %i.bd
  %masksel = zext i1 %i.be to i32
  %.sink = or disjoint i32 %i.bh, %masksel
  %.sink.i = select i1 %i.be, float 0.000000e+00, float %i.bi
  store i32 %.sink, ptr %i.bf, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 360
  store float %.sink.i, ptr %i.bk, align 8, !tbaa !44
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bw = load <2 x float>, ptr %i.aj, align 8, !tbaa !29, !noalias !55 ; 3 uses
  %i.bx = load <2 x float>, ptr %i.al, align 8, !tbaa !29, !noalias !55 ; 3 uses
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <4 x i32> <i32 0, i32 poison, i32 2, i32 2> ; 2 uses
  %i.bz = insertelement <4 x float> %i.by, float -0.000000e+00, i64 1
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <4 x i32> <i32 1, i32 poison, i32 3, i32 3> ; 2 uses
  %i.cb = insertelement <4 x float> %i.ca, float 1.000000e+00, i64 1
  %i.cc = load <2 x float>, ptr %i.an, align 8, !tbaa !29, !noalias !55 ; 3 uses
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> %i.ca, <4 x i32> <i32 1, i32 poison, i32 4, i32 6>
  %i.cf = insertelement <4 x float> %i.ce, float 0.000000e+00, i64 1
  %i.cg = shufflevector <4 x float> %i.cd, <4 x float> %i.by, <4 x i32> <i32 0, i32 poison, i32 4, i32 6>
  %i.ch = insertelement <4 x float> %i.cg, float 0.000000e+00, i64 1
  %i.ci = load <2 x float>, ptr %i.bp, align 4, !tbaa !29, !noalias !55 ; 3 uses
  %2 = load <4 x float>, ptr %i.bq, align 8
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cj = load <2 x float>, ptr %i.br, align 4, !tbaa !29, !noalias !55 ; 3 uses
  %i.ck = load float, ptr %i.bs, align 8, !tbaa !29, !noalias !55
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x float> %i.cl, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.co = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.cp = shufflevector <4 x float> %i.cm, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.cq = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cr = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cs = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 1, i32 3>
  %i.ct = shufflevector <4 x float> %i.co, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 2>
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.sroa.1117.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cv = load <3 x float>, ptr %i.bj, align 8, !tbaa !29
  %i.cw = shufflevector <3 x float> %i.cv, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.cx = fcmp une <3 x float> %i.cw, zeroinitializer
  %i.cy = fdiv <3 x float> splat (float 1.000000e+00), %i.cw
  %i.cz = select <3 x i1> %i.cx, <3 x float> %i.cy, <3 x float> zeroinitializer ; 4 uses
  %i.da = shufflevector <3 x float> %i.cz, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.da, ptr %i.bl, align 4, !tbaa !29
  %i.db = extractelement <3 x float> %i.cz, i64 0
  store float %i.db, ptr %i.bm, align 4, !tbaa !29
  store float 0.000000e+00, ptr %i.bn, align 8, !tbaa !29
  %i.dc = load <2 x float>, ptr %i.bo, align 8, !tbaa !29 ; 3 uses
  %i.dd = fcmp olt <2 x float> %i.dc, zeroinitializer
  %i.de = fcmp ogt <2 x float> %i.dc, splat (float 1.000000e+00)
  %i.df = select <2 x i1> %i.de, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dc
  %i.dg = select <2 x i1> %i.dd, <2 x float> zeroinitializer, <2 x float> %i.df
  store <2 x float> %i.dg, ptr %i.ai, align 4, !tbaa !29
  %i.dh = shufflevector <3 x float> %i.cz, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1>
  %i.dj = fmul <4 x float> %i.bz, %i.di           ; 3 uses
  %i.dk = shufflevector <4 x float> %i.dh, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 5, i32 2, i32 2>
  %i.dl = fmul <4 x float> %i.cb, %i.dk           ; 3 uses
  %i.dm = shufflevector <4 x float> %i.dh, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 0>
  %i.dn = load <2 x float>, ptr %i.bt, align 4, !tbaa !29, !noalias !55 ; 4 uses
  %4 = load <4 x float>, ptr %i.bu, align 8
  %i.do = shufflevector <2 x float> %i.cc, <2 x float> %i.dn, <3 x i32> <i32 3, i32 0, i32 2>
  %i.dp = fmul <3 x float> %i.cz, %i.do           ; 5 uses
  %i.dq = fmul <4 x float> %i.cf, %i.dl
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.dj, <4 x float> %i.dq)
  %i.ds = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dt = fmul <4 x float> %i.cp, %i.dm           ; 3 uses
  %i.du = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.cq, %i.du
  %i.dw = shufflevector <4 x float> %i.dj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.dy, <2 x float> %i.dx)
  %i.ea = shufflevector <4 x float> %i.ds, <4 x float> %i.ct, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.dt, <4 x float> %i.dr)
  %i.ec = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> %i.dl, <2 x i32> <i32 0, i32 6>
  %i.ee = shufflevector <2 x float> %i.dn, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ef = shufflevector <3 x float> %i.dp, <3 x float> %i.ee, <2 x i32> <i32 2, i32 3>
  %i.eg = fmul <2 x float> %i.ed, %i.ef
  %i.eh = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <3 x float> %i.dp, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> %i.dj, <2 x i32> <i32 1, i32 6>
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ej, <2 x float> %i.eg)
  %i.el = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %i.em = shufflevector <4 x float> %i.ei, <4 x float> %i.dt, <2 x i32> <i32 0, i32 6>
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.em, <2 x float> %i.ek) ; 2 uses
  %i.eo = shufflevector <3 x float> %i.dp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ep = fmul <2 x float> %i.cq, %i.eo
  %i.eq = shufflevector <3 x float> %i.dp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.eq, <2 x float> %i.ep)
  %i.es = insertelement <2 x float> %3, float %i.ck, i64 1
  %i.et = shufflevector <3 x float> %i.dp, <3 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.et, <2 x float> %i.er)
  store <2 x float> %i.dz, ptr %i.bv, align 8
  store <4 x float> %i.eb, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.ev = extractelement <2 x float> %i.en, i64 1
  store float %i.ev, ptr %.sroa.10.16..sroa_idx.i, align 8
  store float 0.000000e+00, ptr %.sroa.1117.16..sroa_idx.i, align 4, !tbaa !39
  store <2 x float> %i.eu, ptr %i.cu, align 8
  %.sroa.1518.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ew = extractelement <2 x float> %i.en, i64 0
  store float %i.ew, ptr %.sroa.1518.32..sroa_idx.i, align 8
  %.sroa.1619.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 324
  store float 0.000000e+00, ptr %.sroa.1619.32..sroa_idx.i, align 4, !tbaa !39
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

declare void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN11btRigidBodyC2EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) %0, float noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.btRigidBody::btRigidBodyConstructionInfo", align 8 ; 18 uses
  tail call void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i32 0, ptr %i.d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store float %1, ptr %5, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %3, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !40
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 104
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00>, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 120
  store <2 x float> <float 8.000000e-01, float 1.000000e+00>, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i8 0, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 132
  store <4 x float> <float 5.000000e-03, float f0x3C23D70A, float f0x3C23D70A, float f0x3C23D70A>, ptr %i.l, align 4, !tbaa !29
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  invoke void @_ZN11btRigidBody14setupRigidBodyERKNS_27btRigidBodyConstructionInfoE(ptr noundef nonnull align 8 dereferenceable(564) %0, ptr noundef nonnull align 8 dereferenceable(148) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.s, null
  %i.t = load i8, ptr %i.a, align 8, !range !20
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.u, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.s)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit unwind label %bb.f

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit: ; preds = %bb.c, %bb.d
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.d, %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody12setMassPropsEfRK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) initializes((360, 364), (428, 444)) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = fcmp oeq float %1, 0.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !43
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, -2
  store i32 %i.e, ptr %i.b, align 8, !tbaa !43
  %i.f = fdiv float 1.000000e+00, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ 0.000000e+00, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  store float %.sink, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !29 ; 2 uses
  %i.j = fcmp une float %i.i, 0.000000e+00
  %i.k = fdiv float 1.000000e+00, %i.i
  %i.l = select i1 %i.j, float %i.k, float 0.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !29 ; 2 uses
  %i.o = fcmp une <2 x float> %i.n, zeroinitializer
  %i.p = fdiv <2 x float> splat (float 1.000000e+00), %i.n
  %i.q = select <2 x i1> %i.o, <2 x float> %i.p, <2 x float> zeroinitializer
  store <2 x float> %i.q, ptr %i.m, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 436
  store float %i.l, ptr %i.r, align 4, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440
  store float 0.000000e+00, ptr %i.s, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btRigidBody10setDampingEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(564) initializes((476, 484)) %0, float noundef %1, float noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  %i.b = fcmp ogt float %1, 1.000000e+00
  %.sroa.speculate.load.false4.sroa.speculated = select i1 %i.b, float 1.000000e+00, float %1
  %.sroa.speculated5 = select i1 %i.a, float 0.000000e+00, float %.sroa.speculate.load.false4.sroa.speculated
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 476
  store float %.sroa.speculated5, ptr %i.c, align 4, !tbaa !45
  %i.d = fcmp olt float %2, 0.000000e+00
  %i.e = fcmp ogt float %2, 1.000000e+00
  %.sroa.speculate.load.false.sroa.speculated = select i1 %i.e, float 1.000000e+00, float %2
  %.sroa.speculated = select i1 %i.d, float 0.000000e+00, float %.sroa.speculate.load.false.sroa.speculated
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 480
  store float %.sroa.speculated, ptr %i.f, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody19updateInertiaTensorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) initializes((280, 328)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float 0.000000e+00, ptr %.sroa.615.0..sroa_idx, align 4, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sroa.916.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.o = load <2 x float>, ptr %i.a, align 8, !tbaa !29, !noalias !58 ; 4 uses
  %i.p = load <2 x float>, ptr %i.b, align 4, !tbaa !29, !noalias !58 ; 3 uses
  %i.q = extractelement <2 x float> %i.o, i64 0
  %i.r = load <2 x float>, ptr %i.g, align 8, !tbaa !29, !noalias !58 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN11btRigidBody12applyGravityEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btRigidBody18proceedToTransformERK11btTransform(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform(ptr noundef nonnull align 8 dereferenceable(564) %0, ptr noundef nonnull align 4 dereferenceable(64) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink3 = phi ptr [ %i.p, %bb.c ], [ %i.j, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %.sink3, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float 0.000000e+00, ptr %.sroa.615.0..sroa_idx.i, align 4, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sroa.916.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.an = load <2 x float>, ptr %i.v, align 8, !tbaa !29, !noalias !63 ; 4 uses
  %i.ao = load <2 x float>, ptr %i.ac, align 4, !tbaa !29, !noalias !63 ; 3 uses
  %i.ap = extractelement <2 x float> %i.an, i64 0
  %i.aq = load <2 x float>, ptr %i.x, align 8, !tbaa !29, !noalias !63 ; 4 uses
  %i.ar = load <2 x float>, ptr %i.z, align 8, !tbaa !29, !noalias !63 ; 4 uses
  %i.as = shufflevector <2 x float> %i.ao, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.at = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <4 x i32> <i32 0, i32 0, i32 poison, i32 2> ; 2 uses
  %i.au = insertelement <4 x float> %i.at, float 1.000000e+00, i64 2
  %i.av = fmul <4 x float> %i.as, %i.au           ; 3 uses
  %i.aw = shufflevector <2 x float> %i.ao, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.ax = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <4 x i32> <i32 1, i32 1, i32 poison, i32 3> ; 2 uses
  %i.ay = insertelement <4 x float> %i.ax, float 1.000000e+00, i64 2
  %i.az = fmul <4 x float> %i.aw, %i.ay           ; 3 uses
  %i.ba = extractelement <2 x float> %i.ar, i64 0
  %i.bb = extractelement <4 x float> %i.az, i64 0
  %i.bc = extractelement <4 x float> %i.av, i64 0
  %i.bd = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.be = shufflevector <4 x float> %i.ax, <4 x float> %i.bd, <4 x i32> <i32 0, i32 3, i32 poison, i32 5>
  %i.bf = insertelement <4 x float> %i.be, float 0.000000e+00, i64 2
  %i.bg = fmul <4 x float> %i.bf, %i.az
  %i.bh = shufflevector <4 x float> %i.at, <4 x float> %i.bd, <4 x i32> <i32 0, i32 3, i32 poison, i32 4>
  %i.bi = insertelement <4 x float> %i.bh, float 0.000000e+00, i64 2
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.av, <4 x float> %i.bg)
  %i.bk = load float, ptr %i.ag, align 4, !tbaa !29, !noalias !63 ; 2 uses
  %i.bl = load <2 x float>, ptr %i.ad, align 4, !tbaa !29, !noalias !63 ; 4 uses
  %i.bm = load float, ptr %i.af, align 8, !tbaa !29, !noalias !63 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bk                 ; 2 uses
  %i.bo = load float, ptr %i.ae, align 8, !tbaa !29, !noalias !63
  %foldExtExtBinop = fmul <2 x float> %i.an, %i.ao ; 2 uses
  %i.bp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bq = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.br = fmul float %i.bq, %i.bo                 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.ah, align 4, !tbaa !29, !noalias !63 ; 4 uses
  %i.bt = load float, ptr %i.ai, align 8, !tbaa !29, !noalias !63
  %i.bu = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.bk, i64 0
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bw = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.bw, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.by = shufflevector <2 x float> %i.bl, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bz = insertelement <2 x float> poison, float %i.br, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.by, %i.ca
  %i.cc = shufflevector <2 x float> %i.an, <2 x float> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.cd = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cd, <2 x float> %i.cb)
  %i.cf = shufflevector <2 x float> %i.bl, <2 x float> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.cg = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.ce)
  %i.cj = fmul float %i.bq, %i.bb
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.bc, float %i.cj)
  %i.cl = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  store <2 x float> %i.ci, ptr %i.al, align 8
  %.sroa.14.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.cm = load <2 x float>, ptr %i.aj, align 4, !tbaa !29, !noalias !63 ; 4 uses
  %i.cn = load float, ptr %i.ak, align 8, !tbaa !29, !noalias !63
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.bx, <4 x float> %i.co, <4 x i32> <i32 0, i32 poison, i32 2, i32 5> ; 2 uses
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cr = fmul <4 x float> %i.bv, %i.cq           ; 3 uses
  %i.cs = extractelement <2 x float> %i.cm, i64 0
  %i.ct = fmul float %i.br, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bp, float %i.ct)
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.bn, float %i.cu)
  %i.cw = extractelement <4 x float> %i.cr, i64 0
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.cw, float %i.ck)
  %i.cy = shufflevector <4 x float> %i.cp, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 3, i32 6, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.cr, <4 x float> %i.bj)
  %i.db = shufflevector <2 x float> %i.bs, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.dc = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %i.de = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dd)
  %i.dh = insertelement <2 x float> %i.cm, float %i.bt, i64 0
  %i.di = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.di, <2 x float> %i.dg)
  store float %i.cv, ptr %.sroa.5.0..sroa_idx.i, align 8
  store float %i.cx, ptr %i.am, align 8
  store <4 x float> %i.da, ptr %.sroa.916.16..sroa_idx.i, align 4
  store <2 x float> %i.dj, ptr %.sroa.14.32..sroa_idx.i, align 4
  %.sroa.1619.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 324
  store float 0.000000e+00, ptr %.sroa.1619.32..sroa_idx.i, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody19integrateVelocitiesEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, float noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load float, ptr %i.e, align 8, !tbaa !44
  %i.g = fmul float %1, %i.f                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.i = load float, ptr %i.h, align 4, !tbaa !29
  %i.j = fmul float %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.l = load <2 x float>, ptr %i.d, align 4, !tbaa !29
  %i.m = insertelement <2 x float> poison, float %i.g, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = load <2 x float>, ptr %i.k, align 8, !tbaa !29
  %i.q = fadd <2 x float> %i.o, %i.p
  store <2 x float> %i.q, ptr %i.k, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !29
  %i.t = fadd float %i.j, %i.s
  store float %i.t, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.w = load float, ptr %i.v, align 4, !tbaa !29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.y = load float, ptr %i.x, align 8, !tbaa !29 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %2 = load <4 x float>, ptr %i.z, align 8
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ag = load float, ptr %i.af, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !29
  %i.aj = fmul float %i.y, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.w, float %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.am = load float, ptr %i.al, align 8, !tbaa !29
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.ab, float %i.ak)
  %i.ao = fmul float %1, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.aq = load <2 x float>, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x float> %i.as, float %i.y, i64 1
  %i.au = insertelement <2 x float> %i.ar, float %i.y, i64 0
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.ax = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av)
  %i.ba = insertelement <2 x float> %3, float %i.ae, i64 1
  %i.bb = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.bc, <2 x float> %i.az)
  %i.be = insertelement <2 x float> poison, float %1, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = load <2 x float>, ptr %i.ap, align 8, !tbaa !29
  %i.bi = fadd <2 x float> %i.bg, %i.bh           ; 5 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  store <2 x float> %i.bi, ptr %i.ap, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !29
  %i.bm = fadd float %i.ao, %i.bl                 ; 4 uses
  store float %i.bm, ptr %i.bk, align 8, !tbaa !29
  %foldExtExtBinop = fmul <2 x float> %i.bi, %i.bi
  %i.bn = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bo)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bp) ; 2 uses
  %i.bq = fmul float %1, %sqrt.i
  %i.br = fcmp ogt float %i.bq, f0x3FC90FDB
  br i1 %i.br, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bs = fdiv float f0x3FC90FDB, %1
  %i.bt = fdiv float %i.bs, %sqrt.i               ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bi, %i.bv
  store <2 x float> %i.bw, ptr %i.ap, align 8, !tbaa !29
  %i.bx = fmul float %i.bm, %i.bt
  store float %i.bx, ptr %i.bk, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK11btRigidBody14getOrientationEv(ptr noundef nonnull align 8 dereferenceable(564) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btQuaternion, align 8        ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %.fca.0.load = load <2 x float>, ptr %1, align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load = load <2 x float>, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.fca.1.load, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !29 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !29 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #19, !tbaa !7 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.m, align 4, !tbaa !29
  %i.t = load float, ptr %i.n, align 4, !tbaa !29
  %i.u = fsub float %i.s, %i.t
  %i.v = load float, ptr %i.o, align 4, !tbaa !29
  %i.w = load float, ptr %i.j, align 4, !tbaa !29
  %i.x = fsub float %i.v, %i.w
  %i.y = load float, ptr %i.k, align 4, !tbaa !29
  %i.z = load float, ptr %i.p, align 4, !tbaa !29
  %i.aa = fsub float %i.y, %i.z
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.u, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.x, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.aa, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !29
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !29
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #19, !tbaa !7 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !29
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !29
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !29
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !29
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !29
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !29
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !29
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !29
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !29
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !29
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(564) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %i.c = icmp ne i32 %i.b, 2
  %.not23 = icmp eq ptr %1, null
  %.not = or i1 %i.c, %.not23
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %.not1718 = icmp slt i32 %i.e, 1
  br i1 %.not1718, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67, !nonnull !37, !align !68
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
end_hunk_1
