inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint:bb.a
  %i.amm = fmul <2 x float> %i.aky, %i.aml
  %i.amn = shufflevector <2 x float> %i.als, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akx, <2 x float> %i.amn, <2 x float> %i.amm)
  %i.amp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akz, <2 x float> %i.alj, <2 x float> %i.amo)
  %i.amq = load <2 x float>, ptr %i.akw, align 4, !tbaa !8, !noalias !154 ; 4 uses
  %i.amr = shufflevector <2 x float> %i.amq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ams = load <2 x float>, ptr %i.ale, align 4, !tbaa !8, !noalias !154 ; 4 uses
  %i.amt = shufflevector <2 x float> %i.ams, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.amu = load <2 x float>, ptr %i.all, align 8, !tbaa !8, !noalias !159
  %i.amv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akz, <2 x float> %i.amr, <2 x float> %i.alq)
  %i.amw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akz, <2 x float> %i.amt, <2 x float> %i.amk)
  %i.amx = shufflevector <2 x float> %i.amq, <2 x float> %i.ams, <2 x i32> <i32 0, i32 2>
  %i.amy = insertelement <2 x float> poison, float %i.alu, i64 0
  %i.amz = shufflevector <2 x float> %i.amy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ana = fmul <2 x float> %i.amx, %i.amz
  %i.anb = shufflevector <2 x float> %i.alm, <2 x float> %i.alr, <2 x i32> <i32 0, i32 2>
  %i.anc = shufflevector <2 x float> %i.alt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.and = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anb, <2 x float> %i.anc, <2 x float> %i.ana)
  %i.ane = shufflevector <2 x float> %i.amq, <2 x float> %i.ams, <2 x i32> <i32 1, i32 3>
  %i.anf = insertelement <2 x float> poison, float %i.alk, i64 0
  %i.ang = shufflevector <2 x float> %i.anf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ane, <2 x float> %i.ang, <2 x float> %i.and)
  %i.ani = fadd <2 x float> %i.amu, %i.anh
  %i.anj = insertelement <4 x float> poison, float %i.alk, i64 0
  %i.ank = insertelement <4 x float> %i.anj, float %i.alc, i64 1
  %i.anl = shufflevector <4 x float> %i.ank, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.anm = shufflevector <2 x float> %i.amq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ann = insertelement <4 x float> %i.anm, float %i.alh, i64 0
  %i.ano = shufflevector <2 x float> %i.ams, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.anp = shufflevector <4 x float> %i.ann, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.anq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anl, <4 x float> %i.anp, <4 x float> %i.amg)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink538 = phi ptr [ %i.aku, %bb.t ], [ %i.afn, %bb.s ]
  %i.anr = phi <2 x float> [ %i.amv, %bb.t ], [ %i.ajy, %bb.s ]
  %i.ans = phi <2 x float> [ %i.amw, %bb.t ], [ %i.ajz, %bb.s ] ; 3 uses
  %i.ant = phi <2 x float> [ %i.amp, %bb.t ], [ %i.ajs, %bb.s ] ; 3 uses
  %i.anu = phi <4 x float> [ %i.anq, %bb.t ], [ %i.akt, %bb.s ] ; 4 uses
  %i.anv = phi <2 x float> [ %i.ani, %bb.t ], [ %i.akl, %bb.s ]
  %i.anw = getelementptr inbounds nuw i8, ptr %.sink538, i64 64
  %i.anx = load float, ptr %i.anw, align 8, !tbaa !8, !noalias !68
  %i.any = extractelement <4 x float> %i.anu, i64 0
  %i.anz = fadd float %i.any, %i.anx
  %.sroa.3.12.vec.insert.i.i270 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.anz, i64 0
  store <2 x float> %i.anr, ptr %7, align 16
  %i.aoa = extractelement <4 x float> %i.anu, i64 1
  store float %i.aoa, ptr %.sroa.5.0..sroa_idx.i210, align 8
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i211, align 4, !tbaa !88
  store <2 x float> %i.ans, ptr %i.sq, align 16
  %i.aob = extractelement <4 x float> %i.anu, i64 2
  store float %i.aob, ptr %.sroa.10.16..sroa_idx.i213, align 8
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx.i214, align 4, !tbaa !88
  store <2 x float> %i.ant, ptr %i.um, align 16
  %i.aoc = extractelement <4 x float> %i.anu, i64 3
  store float %i.aoc, ptr %.sroa.15.32..sroa_idx.i216, align 8
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx.i217, align 4, !tbaa !88
  store <2 x float> %i.anv, ptr %i.vh, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i270, ptr %.sroa.4.0..sroa_idx.i218, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %i.vh, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %.sroa.0.0.vec.insert.i281 = load <2 x float>, ptr %7, align 16
  %i.aod = shufflevector <2 x float> %.sroa.0.0.vec.insert.i281, <2 x float> %i.ans, <2 x i32> <i32 0, i32 2>
  %i.aoe = insertelement <2 x float> %i.ant, float 0.000000e+00, i64 1
  store <2 x float> %i.aod, ptr %13, align 8
  %i.aof = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %i.aoe, ptr %i.aof, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %.sroa.0.0.vec.insert.i286 = load <2 x float>, ptr %.sroa.44.0..sroa_idx.i209, align 4
  %i.aog = shufflevector <2 x float> %.sroa.0.0.vec.insert.i286, <2 x float> %i.ans, <2 x i32> <i32 0, i32 3>
  %i.aoh = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ant, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.aog, ptr %14, align 8
  %i.aoi = getelementptr inbounds nuw i8, ptr %14, i64 8
  store <2 x float> %i.aoh, ptr %i.aoi, align 8
  %i.aoj = load ptr, ptr %0, align 8, !tbaa !19
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 32
  %i.aol = load ptr, ptr %i.aok, align 8
  %i.aom = call noundef ptr %i.aol(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %i.aon = fneg float %i.afl
  %i.aoo = fsub float %i.aon, %i.afj
  %i.aop = fsub float %i.afj, %i.afl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf(ptr noundef nonnull align 8 dereferenceable(8) %i.aom, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14, float noundef %i.t, float noundef %i.t, float noundef %i.aoo, float noundef %i.aop, ptr noundef nonnull align 4 dereferenceable(16) %15, i1 noundef zeroext true, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.aj

bb.w:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.aoq = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %i.aoq, i64 16, i1 false), !tbaa.struct !147
  %i.aor = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aos, ptr noundef nonnull align 4 dereferenceable(16) %i.aor, i64 16, i1 false), !tbaa.struct !147
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aou, ptr noundef nonnull align 4 dereferenceable(16) %i.aot, i64 16, i1 false), !tbaa.struct !147
  %i.aov = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 5 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aov, ptr noundef nonnull align 4 dereferenceable(16) %i.aow, i64 16, i1 false), !tbaa.struct !147
  br i1 %.not, label %.critedge164, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aox = load ptr, ptr %0, align 8, !tbaa !19
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 32
  %i.aoz = load ptr, ptr %i.aoy, align 8
  %i.apa = tail call noundef ptr %i.aoz(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.apa, ptr noundef nonnull align 4 dereferenceable(64) %16, float noundef %i.t)
  %i.apb = getelementptr inbounds nuw i8, ptr %1, i64 1104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %i.apb, i64 16, i1 false), !tbaa.struct !147
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aos, ptr noundef nonnull align 4 dereferenceable(16) %i.apc, i64 16, i1 false), !tbaa.struct !147
  %i.apd = getelementptr inbounds nuw i8, ptr %1, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aou, ptr noundef nonnull align 4 dereferenceable(16) %i.apd, i64 16, i1 false), !tbaa.struct !147
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aov, ptr noundef nonnull align 4 dereferenceable(16) %i.ape, i64 16, i1 false), !tbaa.struct !147
  %i.apf = load ptr, ptr %0, align 8, !tbaa !19
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 32
  %i.aph = load ptr, ptr %i.apg, align 8
  %i.api = call noundef ptr %i.aph(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.api, ptr noundef nonnull align 4 dereferenceable(64) %16, float noundef %i.t)
  br label %.critedge164

.critedge164:                                     ; preds = %bb.w, %bb.x
  br i1 %.not160, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %.critedge164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %i.aoq, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aos, ptr noundef nonnull align 4 dereferenceable(16) %i.aor, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aou, ptr noundef nonnull align 4 dereferenceable(16) %i.aot, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aov, ptr noundef nonnull align 4 dereferenceable(16) %i.aow, i64 16, i1 false), !tbaa.struct !147
  %i.apj = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 1152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.apl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.apm = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.apn = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.apo = load <4 x float>, ptr %i.apl, align 8  ; 2 uses
  %.sroa.0.0.vec.insert.i291 = shufflevector <4 x float> %i.apo, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.app = load float, ptr %i.apm, align 8, !tbaa !8
  %.sroa.0.4.vec.insert.i292 = insertelement <2 x float> %.sroa.0.0.vec.insert.i291, float %i.app, i64 1
  %i.apq = load float, ptr %i.apn, align 8, !tbaa !8
  %.sroa.3.12.vec.insert.i293 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.apq, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i292, ptr %17, align 8
  %i.apr = getelementptr inbounds nuw i8, ptr %17, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i293, ptr %i.apr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %.sroa.0.0.vec.insert.i296 = load <2 x float>, ptr %16, align 16
  %i.aps = shufflevector <4 x float> %i.apo, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.sroa.0.4.vec.insert.i297 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i296, <2 x float> %i.aps, <2 x i32> <i32 0, i32 2>
  %i.apt = load float, ptr %i.aou, align 16, !tbaa !8
  %.sroa.3.12.vec.insert.i298 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.apt, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i297, ptr %18, align 8
  %i.apu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i298, ptr %i.apu, align 8
  %i.apv = getelementptr inbounds nuw i8, ptr %1, i64 868
  %i.apw = getelementptr inbounds nuw i8, ptr %1, i64 924
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !160
  %i.apy = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.apz = load float, ptr %i.apy, align 8, !tbaa !162
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 980
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !160
  %i.aqc = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.aqd = load float, ptr %i.aqc, align 8, !tbaa !162
  %i.aqe = load ptr, ptr %0, align 8, !tbaa !19
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 32
  %i.aqg = load ptr, ptr %i.aqf, align 8
  %i.aqh = call noundef ptr %i.aqg(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %i.aqi = fmul float %i.t, f0x3F666666
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f(ptr noundef nonnull align 8 dereferenceable(8) %i.aqh, ptr noundef nonnull align 4 dereferenceable(16) %i.apk, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18, float noundef %i.aqi, float noundef %i.apx, float noundef %i.apz, float noundef %i.aqb, float noundef %i.aqd, ptr noundef nonnull align 4 dereferenceable(16) %19, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %i.aqj = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.aqk = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.aql = getelementptr inbounds nuw i8, ptr %16, i64 36
  %.sroa.0.0.vec.insert.i301 = load <2 x float>, ptr %i.aqj, align 4
  %i.aqm = load float, ptr %i.aqk, align 4, !tbaa !8
  %.sroa.0.4.vec.insert.i302 = insertelement <2 x float> %.sroa.0.0.vec.insert.i301, float %i.aqm, i64 1
  %i.aqn = load float, ptr %i.aql, align 4, !tbaa !8
  %.sroa.3.12.vec.insert.i303 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aqn, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i302, ptr %18, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i303, ptr %i.apu, align 8, !tbaa !88
  %i.aqo = call noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr noundef nonnull align 8 dereferenceable(1266) %1, i32 noundef 1) ; 2 uses
  %i.aqp = call noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr noundef nonnull align 8 dereferenceable(1266) %1, i32 noundef 2) ; 2 uses
  %i.aqq = call noundef float @cosf(float noundef %i.aqo) #20, !tbaa !4 ; 3 uses
  %i.aqr = call noundef float @sinf(float noundef %i.aqo) #20, !tbaa !4 ; 3 uses
  %i.aqs = call noundef float @cosf(float noundef %i.aqp) #20, !tbaa !4 ; 3 uses
  %i.aqt = call noundef float @sinf(float noundef %i.aqp) #20, !tbaa !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.aqu = fmul float %i.aqq, %i.aqs
  %34 = load float, ptr %18, align 8, !tbaa !8    ; 3 uses
  %i.aqv = fmul float %i.aqq, %i.aqt
  %i.aqw = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !8 ; 3 uses
  %i.aqy = fmul float %i.aqv, %i.aqx
  %35 = call float @llvm.fmuladd.f32(float %i.aqu, float %34, float %i.aqy)
  %36 = load float, ptr %i.apu, align 8, !tbaa !8 ; 2 uses
  %37 = fmul float %i.aqs, %i.aqx
  %i.aqz = insertelement <2 x float> poison, float %i.aqr, i64 0
  %i.ara = insertelement <2 x float> %i.aqz, float %i.aqt, i64 1
  %i.arb = fneg <2 x float> %i.ara
  %i.arc = insertelement <2 x float> poison, float %36, i64 0
  %i.ard = insertelement <2 x float> %i.arc, float %34, i64 1
  %i.are = insertelement <2 x float> poison, float %35, i64 0
  %i.arf = insertelement <2 x float> %i.are, float %37, i64 1
  %i.arg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arb, <2 x float> %i.ard, <2 x float> %i.arf)
  store <2 x float> %i.arg, ptr %20, align 8, !tbaa !8
  %i.arh = fmul float %i.aqr, %i.aqs
  %i.ari = fmul float %i.aqr, %i.aqt
  %i.arj = fmul float %i.ari, %i.aqx
  %i.ark = call float @llvm.fmuladd.f32(float %i.arh, float %34, float %i.arj)
  %i.arl = call float @llvm.fmuladd.f32(float %i.aqq, float %36, float %i.ark)
  %i.arm = getelementptr inbounds nuw i8, ptr %20, i64 8
  store float %i.arl, ptr %i.arm, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %i.apj, i64 16, i1 false), !tbaa.struct !147
  %i.arn = getelementptr inbounds nuw i8, ptr %1, i64 1120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aos, ptr noundef nonnull align 4 dereferenceable(16) %i.arn, i64 16, i1 false), !tbaa.struct !147
  %i.aro = getelementptr inbounds nuw i8, ptr %1, i64 1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aou, ptr noundef nonnull align 4 dereferenceable(16) %i.aro, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aov, ptr noundef nonnull align 4 dereferenceable(16) %i.apk, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.arp = load <4 x float>, ptr %16, align 16
  %i.arq = shufflevector <4 x float> %i.arp, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.arr = load float, ptr %i.aos, align 16, !tbaa !8
  %i.ars = load float, ptr %i.aou, align 16, !tbaa !8
  %i.art = insertelement <2 x float> %i.arq, float %i.arr, i64 1
  %i.aru = fneg <2 x float> %i.art
  %i.arv = fneg float %i.ars
  %.sroa.3.12.vec.insert.i313 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.arv, i64 0
  store <2 x float> %i.aru, ptr %21, align 8
  %i.arw = getelementptr inbounds nuw i8, ptr %21, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i313, ptr %i.arw, align 8
  %i.arx = load float, ptr %i.apv, align 4, !tbaa !160 ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.arz = load float, ptr %i.ary, align 8, !tbaa !162 ; 3 uses
  %i.asa = fcmp ogt float %i.arx, %i.arz
  br i1 %i.asa, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.asb = load ptr, ptr %0, align 8, !tbaa !19
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 32
  %i.asd = load ptr, ptr %i.asc, align 8
  %i.ase = call noundef ptr %i.asd(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf(ptr noundef nonnull align 8 dereferenceable(8) %i.ase, ptr noundef nonnull align 4 dereferenceable(16) %i.apk, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %20, float noundef %i.t, float noundef %i.t, float noundef f0xC0490FDB, float noundef f0x40490FDB, ptr noundef nonnull align 4 dereferenceable(16) %22, i1 noundef zeroext false, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.asf = fcmp olt float %i.arx, %i.arz
  br i1 %i.asf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.asg = load ptr, ptr %0, align 8, !tbaa !19
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 32
  %i.asi = load ptr, ptr %i.ash, align 8
  %i.asj = call noundef ptr %i.asi(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf(ptr noundef nonnull align 8 dereferenceable(8) %i.asj, ptr noundef nonnull align 4 dereferenceable(16) %i.apk, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %20, float noundef %i.t, float noundef %i.t, float noundef %i.arx, float noundef %i.arz, ptr noundef nonnull align 4 dereferenceable(16) %23, i1 noundef zeroext true, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %i.aoq, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aos, ptr noundef nonnull align 4 dereferenceable(16) %i.aor, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aou, ptr noundef nonnull align 4 dereferenceable(16) %i.aot, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aov, ptr noundef nonnull align 4 dereferenceable(16) %i.aow, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.ask = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %i.ask, i64 16, i1 false), !tbaa.struct !147
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.asl = getelementptr inbounds nuw i8, ptr %1, i64 744
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) %i.asl, i64 16, i1 false), !tbaa.struct !147
  %i.asm = load ptr, ptr %0, align 8, !tbaa !19
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 32
  %i.aso = load ptr, ptr %i.asn, align 8
  %i.asp = call noundef ptr %i.aso(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.asp, ptr noundef nonnull align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(16) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge164
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.aj

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.asq = getelementptr inbounds nuw i8, ptr %1, i64 844 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(64) %i.asq, i64 16, i1 false), !tbaa.struct !147
  %i.asr = getelementptr inbounds nuw i8, ptr %1, i64 860 ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ass, ptr noundef nonnull align 4 dereferenceable(16) %i.asr, i64 16, i1 false), !tbaa.struct !147
  %i.ast = getelementptr inbounds nuw i8, ptr %1, i64 876 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asu, ptr noundef nonnull align 4 dereferenceable(16) %i.ast, i64 16, i1 false), !tbaa.struct !147
  %i.asv = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 3 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %1, i64 892 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asv, ptr noundef nonnull align 4 dereferenceable(16) %i.asw, i64 16, i1 false), !tbaa.struct !147
  br i1 %.not, label %.critedge166, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.asx = load ptr, ptr %0, align 8, !tbaa !19
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 32
  %i.asz = load ptr, ptr %i.asy, align 8
  %i.ata = tail call noundef ptr %i.asz(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.ata, ptr noundef nonnull align 4 dereferenceable(64) %27, float noundef %i.t)
  %i.atb = getelementptr inbounds nuw i8, ptr %1, i64 908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(64) %i.atb, i64 16, i1 false), !tbaa.struct !147
  %i.atc = getelementptr inbounds nuw i8, ptr %1, i64 924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ass, ptr noundef nonnull align 4 dereferenceable(16) %i.atc, i64 16, i1 false), !tbaa.struct !147
  %i.atd = getelementptr inbounds nuw i8, ptr %1, i64 940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asu, ptr noundef nonnull align 4 dereferenceable(16) %i.atd, i64 16, i1 false), !tbaa.struct !147
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asv, ptr noundef nonnull align 4 dereferenceable(16) %i.ate, i64 16, i1 false), !tbaa.struct !147
  %i.atf = load ptr, ptr %0, align 8, !tbaa !19
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 32
  %i.ath = load ptr, ptr %i.atg, align 8
  %i.ati = call noundef ptr %i.ath(ptr noundef nonnull align 8 dereferenceable(129) %0)
  call void @_ZN12btIDebugDraw13drawTransformERK11btTransformf(ptr noundef nonnull align 8 dereferenceable(8) %i.ati, ptr noundef nonnull align 4 dereferenceable(64) %27, float noundef %i.t)
  br label %bb.ag

.critedge166:                                     ; preds = %bb.ae
  %i.atj = getelementptr inbounds nuw i8, ptr %1, i64 908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %27, ptr noundef nonnull align 4 dereferenceable(64) %i.atj, i64 16, i1 false), !tbaa.struct !147
  %i.atk = getelementptr inbounds nuw i8, ptr %1, i64 924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ass, ptr noundef nonnull align 4 dereferenceable(16) %i.atk, i64 16, i1 false), !tbaa.struct !147
  %i.atl = getelementptr inbounds nuw i8, ptr %1, i64 940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asu, ptr noundef nonnull align 4 dereferenceable(16) %i.atl, i64 16, i1 false), !tbaa.struct !147
  %i.atm = getelementptr inbounds nuw i8, ptr %1, i64 956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.asv, ptr noundef nonnull align 4 dereferenceable(16) %i.atm, i64 16, i1 false), !tbaa.struct !147
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge166, %bb.af
  br i1 %.not160, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 852
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.18.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 868
  %.sroa.18.16.copyload = load float, ptr %.sroa.18.16..sroa_idx, align 4
  %.sroa.20364.32.copyload = load float, ptr %i.ast, align 4 ; 3 uses
  %.sroa.24.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 880
  %.sroa.24.32.copyload = load float, ptr %.sroa.24.32..sroa_idx, align 8 ; 2 uses
  %.sroa.27.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 884
  %.sroa.27.32.copyload = load float, ptr %.sroa.27.32..sroa_idx, align 4 ; 2 uses
  %.sroa.34.48..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 900
  %.sroa.34.48.copyload = load float, ptr %.sroa.34.48..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.atn = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ato = load float, ptr %i.atn, align 8, !tbaa !163 ; 2 uses
  %i.atp = load <2 x float>, ptr %i.asq, align 4  ; 2 uses
  %i.atq = load <2 x float>, ptr %i.asr, align 4  ; 2 uses
  %i.atr = load <2 x float>, ptr %i.asw, align 4  ; 2 uses
  %i.ats = shufflevector <2 x float> %i.atp, <2 x float> %i.atq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.att = fmul <2 x float> %i.ats, zeroinitializer ; 2 uses
  %i.atu = shufflevector <2 x float> %i.atp, <2 x float> %i.atq, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.atv = insertelement <2 x float> poison, float %i.ato, i64 0
  %i.atw = shufflevector <2 x float> %i.atv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atu, <2 x float> %i.atw, <2 x float> %i.att)
  %i.aty = insertelement <2 x float> poison, float %.sroa.9.0.copyload, i64 0
  %i.atz = insertelement <2 x float> %i.aty, float %.sroa.18.16.copyload, i64 1 ; 2 uses
  %i.aua = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atz, <2 x float> zeroinitializer, <2 x float> %i.atx)
  %i.aub = fadd <2 x float> %i.atr, %i.aua
  %i.auc = fmul float %.sroa.24.32.copyload, 0.000000e+00 ; 2 uses
  %i.aud = call float @llvm.fmuladd.f32(float %.sroa.20364.32.copyload, float %i.ato, float %i.auc)
  %i.aue = call noundef float @llvm.fmuladd.f32(float %.sroa.27.32.copyload, float 0.000000e+00, float %i.aud)
  %i.auf = fadd float %.sroa.34.48.copyload, %i.aue
  %.sroa.3.12.vec.insert.i.i318 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.auf, i64 0
  store <2 x float> %i.aub, ptr %28, align 8
  %i.aug = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i318, ptr %i.aug, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.auh = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !165 ; 2 uses
  %i.auj = insertelement <2 x float> poison, float %i.aui, i64 0
  %i.auk = shufflevector <2 x float> %i.auj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atu, <2 x float> %i.auk, <2 x float> %i.att)
  %i.aum = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atz, <2 x float> zeroinitializer, <2 x float> %i.aul)
  %i.aun = fadd <2 x float> %i.atr, %i.aum
  %i.auo = call float @llvm.fmuladd.f32(float %.sroa.20364.32.copyload, float %i.aui, float %i.auc)
  %i.aup = call noundef float @llvm.fmuladd.f32(float %.sroa.27.32.copyload, float 0.000000e+00, float %i.auo)
  %i.auq = fadd float %.sroa.34.48.copyload, %i.aup
  %.sroa.3.12.vec.insert.i.i323 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.auq, i64 0
  store <2 x float> %i.aun, ptr %29, align 8
  %i.aur = getelementptr inbounds nuw i8, ptr %29, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i323, ptr %i.aur, align 8
  %i.aus = load ptr, ptr %0, align 8, !tbaa !19
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 32
  %i.auu = load ptr, ptr %i.aut, align 8
  %i.auv = call noundef ptr %i.auu(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !19
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 40
  %i.auy = load ptr, ptr %i.aux, align 8
end_hunk_0
