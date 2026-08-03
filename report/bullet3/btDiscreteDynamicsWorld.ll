inline.NumInlined: 953
inline.NumDeleted: 286
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint:bb.a
  %i.aij = load ptr, ptr %i.aii, align 8
  call void %i.aij(ptr noundef nonnull align 8 dereferenceable(8) %i.aig, ptr noundef nonnull align 4 dereferenceable(16) %i.vx, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.aik = add nuw nsw i32 %.0214565, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.aik, 32
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !289

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ail = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 388
  call void @_ZNK11btTransformmlERKS_(ptr dead_on_unwind nonnull writable sret(%class.btTransform) align 4 %12, ptr noundef nonnull align 4 dereferenceable(64) %i.ail, ptr noundef nonnull align 4 dereferenceable(64) %i.aim)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %12, i64 16, i1 false), !tbaa.struct !127
  %i.ain = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tg, ptr noundef nonnull align 4 dereferenceable(16) %i.ain, i64 16, i1 false), !tbaa.struct !127
  %i.aio = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vc, ptr noundef nonnull align 4 dereferenceable(16) %i.aio, i64 16, i1 false), !tbaa.struct !127
  %i.aip = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vx, ptr noundef nonnull align 4 dereferenceable(16) %i.aip, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.aiq = load ptr, ptr %i.rp, align 8, !tbaa !163, !nonnull !96, !align !167
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 8
  call void @_ZNK11btTransformmlERKS_(ptr dead_on_unwind nonnull writable sret(%class.btTransform) align 4 %13, ptr noundef nonnull align 4 dereferenceable(64) %i.air, ptr noundef nonnull align 4 dereferenceable(64) %i.rs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(64) %13, i64 16, i1 false), !tbaa.struct !127
  %i.ais = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tg, ptr noundef nonnull align 4 dereferenceable(16) %i.ais, i64 16, i1 false), !tbaa.struct !127
  %i.ait = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vc, ptr noundef nonnull align 4 dereferenceable(16) %i.ait, i64 16, i1 false), !tbaa.struct !127
  %i.aiu = getelementptr inbounds nuw i8, ptr %13, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vx, ptr noundef nonnull align 4 dereferenceable(16) %i.aiu, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %i.vx, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %.sroa.0.0.vec.insert.i322 = load <2 x float>, ptr %7, align 16
  %i.aiv = load float, ptr %i.tg, align 16, !tbaa !9
  %.sroa.0.4.vec.insert.i323 = insertelement <2 x float> %.sroa.0.0.vec.insert.i322, float %i.aiv, i64 1
  %i.aiw = load float, ptr %i.vc, align 16, !tbaa !9
  %.sroa.3.12.vec.insert.i324 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aiw, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i323, ptr %15, align 8
  %i.aix = getelementptr inbounds nuw i8, ptr %15, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i324, ptr %i.aix, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %.sroa.0.0.vec.insert.i327 = load <2 x float>, ptr %.sroa.44.0..sroa_idx.i276, align 4
  %i.aiy = load float, ptr %.sroa.9.16..sroa_idx.i279, align 4, !tbaa !9
  %.sroa.0.4.vec.insert.i328 = insertelement <2 x float> %.sroa.0.0.vec.insert.i327, float %i.aiy, i64 1
  %i.aiz = load float, ptr %.sroa.14.32..sroa_idx.i282, align 4, !tbaa !9
  %.sroa.3.12.vec.insert.i329 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aiz, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i328, ptr %16, align 8
  %i.aja = getelementptr inbounds nuw i8, ptr %16, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i329, ptr %i.aja, align 8
  %i.ajb = load ptr, ptr %0, align 8, !tbaa !24
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 40
  %i.ajd = load ptr, ptr %i.ajc, align 8
  %i.aje = call noundef ptr %i.ajd(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.ajf = fneg float %i.agh
  %i.ajg = fsub float %i.ajf, %i.agf
  %i.ajh = fsub float %i.agf, %i.agh
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.aji = load ptr, ptr %i.aje, align 8, !tbaa !24
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 136
  %i.ajk = load ptr, ptr %i.ajj, align 8
  call void %i.ajk(ptr noundef nonnull align 8 dereferenceable(8) %i.aje, ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %16, float noundef %i.t, float noundef %i.t, float noundef %i.ajg, float noundef %i.ajh, ptr noundef nonnull align 4 dereferenceable(16) %17, i1 noundef zeroext true, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.at

bb.w:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %18, ptr noundef nonnull align 4 dereferenceable(64) %i.ajl, i64 16, i1 false), !tbaa.struct !127
  %i.ajm = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajn, ptr noundef nonnull align 4 dereferenceable(16) %i.ajm, i64 16, i1 false), !tbaa.struct !127
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajp, ptr noundef nonnull align 4 dereferenceable(16) %i.ajo, i64 16, i1 false), !tbaa.struct !127
  %i.ajq = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 5 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajq, ptr noundef nonnull align 4 dereferenceable(16) %i.ajr, i64 16, i1 false), !tbaa.struct !127
  br i1 %.not, label %.critedge229, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ajs = load ptr, ptr %0, align 8, !tbaa !24
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 40
  %i.aju = load ptr, ptr %i.ajt, align 8
  %i.ajv = tail call noundef ptr %i.aju(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !24
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 128
  %i.ajy = load ptr, ptr %i.ajx, align 8
  call void %i.ajy(ptr noundef nonnull align 8 dereferenceable(8) %i.ajv, ptr noundef nonnull align 4 dereferenceable(64) %18, float noundef %i.t)
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 1152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %18, ptr noundef nonnull align 4 dereferenceable(64) %i.ajz, i64 16, i1 false), !tbaa.struct !127
  %i.aka = getelementptr inbounds nuw i8, ptr %1, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajn, ptr noundef nonnull align 4 dereferenceable(16) %i.aka, i64 16, i1 false), !tbaa.struct !127
  %i.akb = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajp, ptr noundef nonnull align 4 dereferenceable(16) %i.akb, i64 16, i1 false), !tbaa.struct !127
  %i.akc = getelementptr inbounds nuw i8, ptr %1, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajq, ptr noundef nonnull align 4 dereferenceable(16) %i.akc, i64 16, i1 false), !tbaa.struct !127
  %i.akd = load ptr, ptr %0, align 8, !tbaa !24
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 40
  %i.akf = load ptr, ptr %i.ake, align 8
  %i.akg = call noundef ptr %i.akf(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !24
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 128
  %i.akj = load ptr, ptr %i.aki, align 8
  call void %i.akj(ptr noundef nonnull align 8 dereferenceable(8) %i.akg, ptr noundef nonnull align 4 dereferenceable(64) %18, float noundef %i.t)
  br label %.critedge229

.critedge229:                                     ; preds = %bb.w, %bb.x
  br i1 %.not225, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %.critedge229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %18, ptr noundef nonnull align 4 dereferenceable(64) %i.ajl, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajn, ptr noundef nonnull align 4 dereferenceable(16) %i.ajm, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajp, ptr noundef nonnull align 4 dereferenceable(16) %i.ajo, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajq, ptr noundef nonnull align 4 dereferenceable(16) %i.ajr, i64 16, i1 false), !tbaa.struct !127
  %i.akk = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.akl = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.akm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.akn = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ako = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.akp = load <4 x float>, ptr %i.akm, align 8  ; 2 uses
  %.sroa.0.0.vec.insert.i332 = shufflevector <4 x float> %i.akp, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.akq = load float, ptr %i.akn, align 8, !tbaa !9
  %.sroa.0.4.vec.insert.i333 = insertelement <2 x float> %.sroa.0.0.vec.insert.i332, float %i.akq, i64 1
  %i.akr = load float, ptr %i.ako, align 8, !tbaa !9
  %.sroa.3.12.vec.insert.i334 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akr, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i333, ptr %19, align 8
  %i.aks = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i334, ptr %i.aks, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %.sroa.0.0.vec.insert.i337 = load <2 x float>, ptr %18, align 16
  %i.akt = shufflevector <4 x float> %i.akp, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.sroa.0.4.vec.insert.i338 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i337, <2 x float> %i.akt, <2 x i32> <i32 0, i32 2>
  %i.aku = load float, ptr %i.ajp, align 16, !tbaa !9
  %.sroa.3.12.vec.insert.i339 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aku, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i338, ptr %20, align 8
  %i.akv = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i339, ptr %i.akv, align 8
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 892
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 956
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !290
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.ala = load float, ptr %i.akz, align 8, !tbaa !292
  %i.alb = getelementptr inbounds nuw i8, ptr %1, i64 1020
  %i.alc = load float, ptr %i.alb, align 4, !tbaa !290
  %i.ald = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ale = load float, ptr %i.ald, align 8, !tbaa !292
  %i.alf = load ptr, ptr %0, align 8, !tbaa !24
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 40
  %i.alh = load ptr, ptr %i.alg, align 8
  %i.ali = call noundef ptr %i.alh(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.alj = fmul float %i.t, f0x3F666666
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.alk = load ptr, ptr %i.ali, align 8, !tbaa !24
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 144
  %i.alm = load ptr, ptr %i.all, align 8
  call void %i.alm(ptr noundef nonnull align 8 dereferenceable(8) %i.ali, ptr noundef nonnull align 4 dereferenceable(16) %i.akl, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, float noundef %i.alj, float noundef %i.aky, float noundef %i.ala, float noundef %i.alc, float noundef %i.ale, ptr noundef nonnull align 4 dereferenceable(16) %21, float noundef 1.000000e+01, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.aln = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.alo = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.alp = getelementptr inbounds nuw i8, ptr %18, i64 36
  %.sroa.0.0.vec.insert.i342 = load <2 x float>, ptr %i.aln, align 4
  %i.alq = load float, ptr %i.alo, align 4, !tbaa !9
  %.sroa.0.4.vec.insert.i343 = insertelement <2 x float> %.sroa.0.0.vec.insert.i342, float %i.alq, i64 1
  %i.alr = load float, ptr %i.alp, align 4, !tbaa !9
  %.sroa.3.12.vec.insert.i344 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.alr, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i343, ptr %20, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i344, ptr %i.akv, align 8, !tbaa !126
  %i.als = call noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr noundef nonnull align 8 dereferenceable(1333) %1, i32 noundef 1) ; 2 uses
  %i.alt = call noundef float @_ZNK23btGeneric6DofConstraint8getAngleEi(ptr noundef nonnull align 8 dereferenceable(1333) %1, i32 noundef 2) ; 2 uses
  %i.alu = call noundef float @cosf(float noundef %i.als) #21 ; 3 uses
  %i.alv = call noundef float @sinf(float noundef %i.als) #21 ; 3 uses
  %i.alw = call noundef float @cosf(float noundef %i.alt) #21 ; 3 uses
  %i.alx = call noundef float @sinf(float noundef %i.alt) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.aly = fmul float %i.alu, %i.alw
  %i.alz = fmul float %i.alu, %i.alx
  %i.ama = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.amb = load float, ptr %i.ama, align 4, !tbaa !9 ; 3 uses
  %i.amc = fmul float %i.alw, %i.amb
  %47 = load float, ptr %20, align 8, !tbaa !9    ; 3 uses
  %48 = fmul float %i.alz, %i.amb
  %49 = load float, ptr %i.akv, align 8, !tbaa !9 ; 2 uses
  %i.amd = insertelement <2 x float> poison, float %i.alv, i64 0
  %i.ame = insertelement <2 x float> %i.amd, float %i.alx, i64 1
  %i.amf = fneg <2 x float> %i.ame
  %50 = call float @llvm.fmuladd.f32(float %i.aly, float %47, float %48)
  %i.amg = insertelement <2 x float> poison, float %49, i64 0
  %i.amh = insertelement <2 x float> %i.amg, float %47, i64 1
  %i.ami = insertelement <2 x float> poison, float %50, i64 0
  %i.amj = insertelement <2 x float> %i.ami, float %i.amc, i64 1
  %i.amk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amf, <2 x float> %i.amh, <2 x float> %i.amj)
  store <2 x float> %i.amk, ptr %22, align 8, !tbaa !9
  %i.aml = fmul float %i.alv, %i.alw
  %i.amm = fmul float %i.alv, %i.alx
  %i.amn = fmul float %i.amm, %i.amb
  %i.amo = call float @llvm.fmuladd.f32(float %i.aml, float %47, float %i.amn)
  %i.amp = call float @llvm.fmuladd.f32(float %i.alu, float %49, float %i.amo)
  %i.amq = getelementptr inbounds nuw i8, ptr %22, i64 8
  store float %i.amp, ptr %i.amq, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %18, ptr noundef nonnull align 4 dereferenceable(64) %i.akk, i64 16, i1 false), !tbaa.struct !127
  %i.amr = getelementptr inbounds nuw i8, ptr %1, i64 1168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajn, ptr noundef nonnull align 4 dereferenceable(16) %i.amr, i64 16, i1 false), !tbaa.struct !127
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 1184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajp, ptr noundef nonnull align 4 dereferenceable(16) %i.ams, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajq, ptr noundef nonnull align 4 dereferenceable(16) %i.akl, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.amt = load <4 x float>, ptr %18, align 16
  %i.amu = shufflevector <4 x float> %i.amt, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.amv = load float, ptr %i.ajn, align 16, !tbaa !9
  %i.amw = load float, ptr %i.ajp, align 16, !tbaa !9
  %i.amx = insertelement <2 x float> %i.amu, float %i.amv, i64 1
  %i.amy = fneg <2 x float> %i.amx
  %i.amz = fneg float %i.amw
  %.sroa.3.12.vec.insert.i354 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.amz, i64 0
  store <2 x float> %i.amy, ptr %23, align 8
  %i.ana = getelementptr inbounds nuw i8, ptr %23, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i354, ptr %i.ana, align 8
  %i.anb = load float, ptr %i.akw, align 4, !tbaa !290 ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.and = load float, ptr %i.anc, align 8, !tbaa !292 ; 3 uses
  %i.ane = fcmp ogt float %i.anb, %i.and
  br i1 %i.ane, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.anf = load ptr, ptr %0, align 8, !tbaa !24
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 40
  %i.anh = load ptr, ptr %i.ang, align 8
  %i.ani = call noundef ptr %i.anh(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !24
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 136
  %i.anl = load ptr, ptr %i.ank, align 8
  call void %i.anl(ptr noundef nonnull align 8 dereferenceable(8) %i.ani, ptr noundef nonnull align 4 dereferenceable(16) %i.akl, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %22, float noundef %i.t, float noundef %i.t, float noundef f0xC0490FDB, float noundef f0x40490FDB, ptr noundef nonnull align 4 dereferenceable(16) %24, i1 noundef zeroext false, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.anm = fcmp olt float %i.anb, %i.and
  br i1 %i.anm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ann = load ptr, ptr %0, align 8, !tbaa !24
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 40
  %i.anp = load ptr, ptr %i.ano, align 8
  %i.anq = call noundef ptr %i.anp(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !24
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 136
  %i.ant = load ptr, ptr %i.ans, align 8
  call void %i.ant(ptr noundef nonnull align 8 dereferenceable(8) %i.anq, ptr noundef nonnull align 4 dereferenceable(16) %i.akl, ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 4 dereferenceable(16) %22, float noundef %i.t, float noundef %i.t, float noundef %i.anb, float noundef %i.and, ptr noundef nonnull align 4 dereferenceable(16) %25, i1 noundef zeroext true, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %18, ptr noundef nonnull align 4 dereferenceable(64) %i.ajl, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajn, ptr noundef nonnull align 4 dereferenceable(16) %i.ajm, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajp, ptr noundef nonnull align 4 dereferenceable(16) %i.ajo, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ajq, ptr noundef nonnull align 4 dereferenceable(16) %i.ajr, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %i.anu, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(16) %i.anv, i64 16, i1 false), !tbaa.struct !127
  %i.anw = load ptr, ptr %0, align 8, !tbaa !24
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 40
  %i.any = load ptr, ptr %i.anx, align 8
  %i.anz = call noundef ptr %i.any(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !24
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 160
  %i.aoc = load ptr, ptr %i.aob, align 8
  call void %i.aoc(ptr noundef nonnull align 8 dereferenceable(8) %i.anz, ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(64) %18, ptr noundef nonnull align 4 dereferenceable(16) %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge229
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.at

bb.ae:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  %i.aod = getelementptr inbounds nuw i8, ptr %1, i64 1260 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %29, ptr noundef nonnull align 4 dereferenceable(64) %i.aod, i64 16, i1 false), !tbaa.struct !127
  %i.aoe = getelementptr inbounds nuw i8, ptr %1, i64 1276 ; 3 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aof, ptr noundef nonnull align 4 dereferenceable(16) %i.aoe, i64 16, i1 false), !tbaa.struct !127
  %i.aog = getelementptr inbounds nuw i8, ptr %1, i64 1292 ; 3 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoh, ptr noundef nonnull align 4 dereferenceable(16) %i.aog, i64 16, i1 false), !tbaa.struct !127
  %i.aoi = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 5 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 1308 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoi, ptr noundef nonnull align 4 dereferenceable(16) %i.aoj, i64 16, i1 false), !tbaa.struct !127
  br i1 %.not, label %.critedge231, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aok = load ptr, ptr %0, align 8, !tbaa !24
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 40
  %i.aom = load ptr, ptr %i.aol, align 8
  %i.aon = tail call noundef ptr %i.aom(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !24
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 128
  %i.aoq = load ptr, ptr %i.aop, align 8
  call void %i.aoq(ptr noundef nonnull align 8 dereferenceable(8) %i.aon, ptr noundef nonnull align 4 dereferenceable(64) %29, float noundef %i.t)
  %i.aor = getelementptr inbounds nuw i8, ptr %1, i64 1324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %29, ptr noundef nonnull align 4 dereferenceable(64) %i.aor, i64 16, i1 false), !tbaa.struct !127
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 1340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aof, ptr noundef nonnull align 4 dereferenceable(16) %i.aos, i64 16, i1 false), !tbaa.struct !127
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 1356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoh, ptr noundef nonnull align 4 dereferenceable(16) %i.aot, i64 16, i1 false), !tbaa.struct !127
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoi, ptr noundef nonnull align 4 dereferenceable(16) %i.aou, i64 16, i1 false), !tbaa.struct !127
  %i.aov = load ptr, ptr %0, align 8, !tbaa !24
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 40
  %i.aox = load ptr, ptr %i.aow, align 8
  %i.aoy = call noundef ptr %i.aox(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !24
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 128
  %i.apb = load ptr, ptr %i.apa, align 8
  call void %i.apb(ptr noundef nonnull align 8 dereferenceable(8) %i.aoy, ptr noundef nonnull align 4 dereferenceable(64) %29, float noundef %i.t)
  br label %.critedge231

.critedge231:                                     ; preds = %bb.ae, %bb.af
  br i1 %.not225, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %.critedge231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %29, ptr noundef nonnull align 4 dereferenceable(64) %i.aod, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aof, ptr noundef nonnull align 4 dereferenceable(16) %i.aoe, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoh, ptr noundef nonnull align 4 dereferenceable(16) %i.aog, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoi, ptr noundef nonnull align 4 dereferenceable(16) %i.aoj, i64 16, i1 false), !tbaa.struct !127
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 1324
  %i.apd = getelementptr inbounds nuw i8, ptr %1, i64 1372 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  %i.ape = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.apf = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.apg = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.aph = load <4 x float>, ptr %i.ape, align 8  ; 3 uses
  %.sroa.0.0.vec.insert.i357 = shufflevector <4 x float> %i.aph, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.api = load float, ptr %i.apf, align 8, !tbaa !9
  %.sroa.0.4.vec.insert.i358 = insertelement <2 x float> %.sroa.0.0.vec.insert.i357, float %i.api, i64 1
  %i.apj = load float, ptr %i.apg, align 8, !tbaa !9
  %.sroa.3.12.vec.insert.i359 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.apj, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i358, ptr %30, align 8
  %i.apk = getelementptr inbounds nuw i8, ptr %30, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i359, ptr %i.apk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  %.sroa.0.0.vec.insert.i362 = load <2 x float>, ptr %29, align 16
  %i.apl = shufflevector <4 x float> %i.aph, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %.sroa.0.4.vec.insert.i363 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i362, <2 x float> %i.apl, <2 x i32> <i32 0, i32 2>
  %i.apm = load float, ptr %i.aoh, align 16, !tbaa !9
  %.sroa.3.12.vec.insert.i364 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.apm, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i363, ptr %31, align 8
  %i.apn = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i364, ptr %i.apn, align 8
  %i.apo = getelementptr inbounds nuw i8, ptr %1, i64 992
  %i.app = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.apq = load float, ptr %i.app, align 8, !tbaa !293 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %1, i64 1084
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !295 ; 2 uses
  %i.apt = fcmp ugt float %i.apq, %i.aps
  %i.apu = extractelement <4 x float> %i.aph, i64 3
  br i1 %i.apt, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.apv = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.apw = load float, ptr %i.apv, align 8, !tbaa !293
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 1172
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !295
  %i.apz = load ptr, ptr %0, align 8, !tbaa !24
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 40
  %i.aqb = load ptr, ptr %i.aqa, align 8
  %i.aqc = call noundef ptr %i.aqb(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.aqd = fmul float %i.t, f0x3F666666
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %i.aqe = load ptr, ptr %i.aqc, align 8, !tbaa !24
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 144
  %i.aqg = load ptr, ptr %i.aqf, align 8
  call void %i.aqg(ptr noundef nonnull align 8 dereferenceable(8) %i.aqc, ptr noundef nonnull align 4 dereferenceable(16) %i.apd, ptr noundef nonnull align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %31, float noundef %i.aqd, float noundef %i.apq, float noundef %i.aps, float noundef %i.apw, float noundef %i.apy, ptr noundef nonnull align 4 dereferenceable(16) %32, float noundef 1.000000e+01, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %29, i64 20
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !9
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.aqh = phi float [ %.pre, %bb.ah ], [ %i.apu, %bb.ag ] ; 4 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.aqj = getelementptr inbounds nuw i8, ptr %29, i64 36
  %i.aqk = load <4 x float>, ptr %i.aqi, align 4  ; 2 uses
  %.sroa.0.0.vec.insert.i367 = shufflevector <4 x float> %i.aqk, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.0.4.vec.insert.i368 = insertelement <2 x float> %.sroa.0.0.vec.insert.i367, float %i.aqh, i64 1
  %i.aql = load float, ptr %i.aqj, align 4, !tbaa !9 ; 3 uses
  %.sroa.3.12.vec.insert.i369 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aql, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i368, ptr %31, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i369, ptr %i.apn, align 8, !tbaa !126
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 1392
  %i.aqn = load float, ptr %i.aqm, align 8, !tbaa !9 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 1396
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !9 ; 2 uses
  %i.aqq = call noundef float @cosf(float noundef %i.aqn) #21 ; 3 uses
  %i.aqr = call noundef float @sinf(float noundef %i.aqn) #21 ; 3 uses
  %i.aqs = call noundef float @cosf(float noundef %i.aqp) #21 ; 3 uses
  %i.aqt = call noundef float @sinf(float noundef %i.aqp) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  %i.aqu = fmul float %i.aqq, %i.aqs
  %i.aqv = extractelement <4 x float> %i.aqk, i64 0 ; 2 uses
  %i.aqw = fmul float %i.aqq, %i.aqt
  %i.aqx = fmul float %i.aqw, %i.aqh
  %i.aqy = fmul float %i.aqs, %i.aqh
  %i.aqz = insertelement <2 x float> poison, float %i.aqr, i64 0
  %i.ara = insertelement <2 x float> %i.aqz, float %i.aqt, i64 1
  %i.arb = fneg <2 x float> %i.ara
  %51 = call float @llvm.fmuladd.f32(float %i.aqu, float %i.aqv, float %i.aqx)
  %i.arc = insertelement <2 x float> %.sroa.0.0.vec.insert.i367, float %i.aql, i64 0
  %i.ard = insertelement <2 x float> poison, float %51, i64 0
  %i.are = insertelement <2 x float> %i.ard, float %i.aqy, i64 1
  %i.arf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arb, <2 x float> %i.arc, <2 x float> %i.are)
  store <2 x float> %i.arf, ptr %33, align 8, !tbaa !9
  %i.arg = fmul float %i.aqr, %i.aqs
  %i.arh = fmul float %i.aqr, %i.aqt
  %i.ari = fmul float %i.arh, %i.aqh
  %i.arj = call float @llvm.fmuladd.f32(float %i.arg, float %i.aqv, float %i.ari)
  %i.ark = call float @llvm.fmuladd.f32(float %i.aqq, float %i.aql, float %i.arj)
  %i.arl = getelementptr inbounds nuw i8, ptr %33, i64 8
  store float %i.ark, ptr %i.arl, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %29, ptr noundef nonnull align 4 dereferenceable(64) %i.apc, i64 16, i1 false), !tbaa.struct !127
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 1340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aof, ptr noundef nonnull align 4 dereferenceable(16) %i.arm, i64 16, i1 false), !tbaa.struct !127
  %i.arn = getelementptr inbounds nuw i8, ptr %1, i64 1356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoh, ptr noundef nonnull align 4 dereferenceable(16) %i.arn, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoi, ptr noundef nonnull align 4 dereferenceable(16) %i.apd, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  %i.aro = load <4 x float>, ptr %29, align 16
  %i.arp = shufflevector <4 x float> %i.aro, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.arq = load float, ptr %i.aof, align 16, !tbaa !9
  %i.arr = load float, ptr %i.aoh, align 16, !tbaa !9
  %i.ars = insertelement <2 x float> %i.arp, float %i.arq, i64 1
  %i.art = fneg <2 x float> %i.ars
  %i.aru = fneg float %i.arr
  %.sroa.3.12.vec.insert.i379 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aru, i64 0
  store <2 x float> %i.art, ptr %34, align 8
  %i.arv = getelementptr inbounds nuw i8, ptr %34, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i379, ptr %i.arv, align 8
  %i.arw = load float, ptr %i.apo, align 8, !tbaa !293 ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 996
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !295 ; 3 uses
  %i.arz = fcmp ogt float %i.arw, %i.ary
  br i1 %i.arz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.asa = load ptr, ptr %0, align 8, !tbaa !24
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 40
  %i.asc = load ptr, ptr %i.asb, align 8
  %i.asd = call noundef ptr %i.asc(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !24
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 136
  %i.asg = load ptr, ptr %i.asf, align 8
  call void %i.asg(ptr noundef nonnull align 8 dereferenceable(8) %i.asd, ptr noundef nonnull align 4 dereferenceable(16) %i.apd, ptr noundef nonnull align 4 dereferenceable(16) %34, ptr noundef nonnull align 4 dereferenceable(16) %33, float noundef %i.t, float noundef %i.t, float noundef f0xC0490FDB, float noundef f0x40490FDB, ptr noundef nonnull align 4 dereferenceable(16) %35, i1 noundef zeroext false, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ash = fcmp olt float %i.arw, %i.ary
  br i1 %i.ash, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.asi = load ptr, ptr %0, align 8, !tbaa !24
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 40
  %i.ask = load ptr, ptr %i.asj, align 8
  %i.asl = call noundef ptr %i.ask(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !24
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 136
  %i.aso = load ptr, ptr %i.asn, align 8
  call void %i.aso(ptr noundef nonnull align 8 dereferenceable(8) %i.asl, ptr noundef nonnull align 4 dereferenceable(16) %i.apd, ptr noundef nonnull align 4 dereferenceable(16) %34, ptr noundef nonnull align 4 dereferenceable(16) %33, float noundef %i.t, float noundef %i.t, float noundef %i.arw, float noundef %i.ary, ptr noundef nonnull align 4 dereferenceable(16) %36, i1 noundef zeroext true, float noundef 1.000000e+01)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %29, ptr noundef nonnull align 4 dereferenceable(64) %i.aod, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aof, ptr noundef nonnull align 4 dereferenceable(16) %i.aoe, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoh, ptr noundef nonnull align 4 dereferenceable(16) %i.aog, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aoi, ptr noundef nonnull align 4 dereferenceable(16) %i.aoj, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  %i.asp = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %37, ptr noundef nonnull align 4 dereferenceable(16) %i.asp, i64 16, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  %i.asq = getelementptr inbounds nuw i8, ptr %1, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %38, ptr noundef nonnull align 4 dereferenceable(16) %i.asq, i64 16, i1 false), !tbaa.struct !127
  %i.asr = load ptr, ptr %0, align 8, !tbaa !24
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 40
  %i.ast = load ptr, ptr %i.ass, align 8
  %i.asu = call noundef ptr %i.ast(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !24
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 160
  %i.asx = load ptr, ptr %i.asw, align 8
  call void %i.asx(ptr noundef nonnull align 8 dereferenceable(8) %i.asu, ptr noundef nonnull align 4 dereferenceable(16) %37, ptr noundef nonnull align 4 dereferenceable(16) %38, ptr noundef nonnull align 4 dereferenceable(64) %29, ptr noundef nonnull align 4 dereferenceable(16) %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.critedge231
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.at

bb.ao:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  %i.asy = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %40, ptr noundef nonnull align 4 dereferenceable(64) %i.asy, i64 16, i1 false), !tbaa.struct !127
  %i.asz = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ata = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ata, ptr noundef nonnull align 4 dereferenceable(16) %i.asz, i64 16, i1 false), !tbaa.struct !127
  %i.atb = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.atc = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.atc, ptr noundef nonnull align 4 dereferenceable(16) %i.atb, i64 16, i1 false), !tbaa.struct !127
  %i.atd = getelementptr inbounds nuw i8, ptr %40, i64 48 ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %1, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.atd, ptr noundef nonnull align 4 dereferenceable(16) %i.ate, i64 16, i1 false), !tbaa.struct !127
  br i1 %.not, label %.critedge233, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.atf = load ptr, ptr %0, align 8, !tbaa !24
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 40
  %i.ath = load ptr, ptr %i.atg, align 8
  %i.ati = tail call noundef ptr %i.ath(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !24
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 128
  %i.atl = load ptr, ptr %i.atk, align 8
  call void %i.atl(ptr noundef nonnull align 8 dereferenceable(8) %i.ati, ptr noundef nonnull align 4 dereferenceable(64) %40, float noundef %i.t)
  %i.atm = getelementptr inbounds nuw i8, ptr %1, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %40, ptr noundef nonnull align 4 dereferenceable(64) %i.atm, i64 16, i1 false), !tbaa.struct !127
  %i.atn = getelementptr inbounds nuw i8, ptr %1, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ata, ptr noundef nonnull align 4 dereferenceable(16) %i.atn, i64 16, i1 false), !tbaa.struct !127
  %i.ato = getelementptr inbounds nuw i8, ptr %1, i64 944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.atc, ptr noundef nonnull align 4 dereferenceable(16) %i.ato, i64 16, i1 false), !tbaa.struct !127
  %i.atp = getelementptr inbounds nuw i8, ptr %1, i64 960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.atd, ptr noundef nonnull align 4 dereferenceable(16) %i.atp, i64 16, i1 false), !tbaa.struct !127
  %i.atq = load ptr, ptr %0, align 8, !tbaa !24
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 40
  %i.ats = load ptr, ptr %i.atr, align 8
  %i.att = call noundef ptr %i.ats(ptr noundef nonnull align 8 dereferenceable(121) %0) ; 2 uses
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !24
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 128
  %i.atw = load ptr, ptr %i.atv, align 8
  call void %i.atw(ptr noundef nonnull align 8 dereferenceable(8) %i.att, ptr noundef nonnull align 4 dereferenceable(64) %40, float noundef %i.t)
  br label %bb.aq

.critedge233:                                     ; preds = %bb.ao
  %i.atx = getelementptr inbounds nuw i8, ptr %1, i64 912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %40, ptr noundef nonnull align 4 dereferenceable(64) %i.atx, i64 16, i1 false), !tbaa.struct !127
  %i.aty = getelementptr inbounds nuw i8, ptr %1, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ata, ptr noundef nonnull align 4 dereferenceable(16) %i.aty, i64 16, i1 false), !tbaa.struct !127
  %i.atz = getelementptr inbounds nuw i8, ptr %1, i64 944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.atc, ptr noundef nonnull align 4 dereferenceable(16) %i.atz, i64 16, i1 false), !tbaa.struct !127
  %i.aua = getelementptr inbounds nuw i8, ptr %1, i64 960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.atd, ptr noundef nonnull align 4 dereferenceable(16) %i.aua, i64 16, i1 false), !tbaa.struct !127
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge233, %bb.ap
  br i1 %.not225, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.aub = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.auc = load i8, ptr %i.aub, align 4, !tbaa !296, !range !95, !noundef !96
  %i.aud = trunc nuw i8 %i.auc to i1
  %i.aue = getelementptr inbounds nuw i8, ptr %1, i64 912
  %spec.select = select i1 %i.aud, ptr %i.asy, ptr %i.aue ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.auf = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %.sroa.18.16..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %.sroa.18.16.copyload = load float, ptr %.sroa.18.16..sroa_idx, align 4
  %i.aug = getelementptr inbounds nuw i8, ptr %spec.select, i64 32
  %.sroa.20430.32.copyload = load float, ptr %i.aug, align 4 ; 3 uses
  %.sroa.24.32..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select, i64 36
  %.sroa.24.32.copyload = load float, ptr %.sroa.24.32..sroa_idx, align 4 ; 2 uses
  %.sroa.27.32..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select, i64 40
  %.sroa.27.32.copyload = load float, ptr %.sroa.27.32..sroa_idx, align 4 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  %.sroa.34.48..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select, i64 56
  %.sroa.34.48.copyload = load float, ptr %.sroa.34.48..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  %i.aui = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.auj = load float, ptr %i.aui, align 8, !tbaa !298 ; 2 uses
  %i.auk = fmul float %.sroa.24.32.copyload, 0.000000e+00 ; 2 uses
  %i.aul = call float @llvm.fmuladd.f32(float %i.auj, float %.sroa.20430.32.copyload, float %i.auk)
  %i.aum = call noundef float @llvm.fmuladd.f32(float %.sroa.27.32.copyload, float 0.000000e+00, float %i.aul)
  %i.aun = load <2 x float>, ptr %spec.select, align 4 ; 2 uses
  %i.auo = load <2 x float>, ptr %i.auf, align 4  ; 2 uses
  %i.aup = load <2 x float>, ptr %i.auh, align 4  ; 2 uses
  %i.auq = shufflevector <2 x float> %i.aun, <2 x float> %i.auo, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aur = fmul <2 x float> %i.auq, zeroinitializer ; 2 uses
  %i.aus = insertelement <2 x float> poison, float %i.auj, i64 0
  %i.aut = shufflevector <2 x float> %i.aus, <2 x float> poison, <2 x i32> zeroinitializer
  %i.auu = shufflevector <2 x float> %i.aun, <2 x float> %i.auo, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.auv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aut, <2 x float> %i.auu, <2 x float> %i.aur)
  %i.auw = insertelement <2 x float> poison, float %.sroa.9.0.copyload, i64 0
  %i.aux = insertelement <2 x float> %i.auw, float %.sroa.18.16.copyload, i64 1 ; 2 uses
  %i.auy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aux, <2 x float> zeroinitializer, <2 x float> %i.auv)
  %i.auz = fadd <2 x float> %i.aup, %i.auy
  %i.ava = fadd float %.sroa.34.48.copyload, %i.aum
  %.sroa.3.12.vec.insert.i4.i.i384 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ava, i64 0
  store <2 x float> %i.auz, ptr %41, align 8
end_hunk_0
