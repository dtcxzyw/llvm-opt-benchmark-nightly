Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btDiscreteDynamicsWorld?download=true
inline.NumInlined: 1209
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3:bb.a
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 88
  %i.aen = load ptr, ptr %i.aem, align 8
  %i.aeo = call noundef float %i.aen(ptr noundef nonnull align 8 dereferenceable(68) %2), !inline_history !215
  %i.aep = load ptr, ptr %2, align 8, !tbaa !12
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 88
  %i.aer = load ptr, ptr %i.aeq, align 8
  %i.aes = call noundef float %i.aer(ptr noundef nonnull align 8 dereferenceable(68) %2), !inline_history !215
  %i.aet = insertelement <2 x float> poison, float %i.aek, i64 0
  %i.aeu = insertelement <2 x float> %i.aet, float %i.aeo, i64 1
  %i.aev = fadd <2 x float> %.sroa.03.0.copyload.i, %i.aeu
  %.sroa.67.8.vec.extract.i = extractelement <2 x float> %.sroa.67.0.copyload.i, i64 0
  %i.aew = fadd float %.sroa.67.8.vec.extract.i, %i.aes
  %.sroa.67.8.vec.insert.i = insertelement <2 x float> %.sroa.67.0.copyload.i, float %i.aew, i64 0
  store <2 x float> %i.aev, ptr %36, align 8
  %i.aex = getelementptr inbounds nuw i8, ptr %36, i64 8
  store <2 x float> %.sroa.67.8.vec.insert.i, ptr %i.aex, align 8
  %i.aey = sext i32 %i.aeb to i64                 ; 2 uses
  %i.aez = getelementptr inbounds [4 x i8], ptr %36, i64 %i.aey
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  %.sroa.11644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.11644.0.copyload = load float, ptr %.sroa.11644.0..sroa_idx, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.afb = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.afc = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.afd = getelementptr inbounds [4 x i8], ptr %37, i64 %i.aey
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  store float %i.afa, ptr %i.afd, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.afe = getelementptr inbounds nuw i8, ptr %38, i64 4
  %i.aff = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.afg = add nsw i32 %i.aeb, 1
  %i.afh = srem i32 %i.afg, 3
  %i.afi = sext i32 %i.afh to i64
  %i.afj = getelementptr inbounds [4 x i8], ptr %38, i64 %i.afi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  store float %i.aef, ptr %i.afj, align 4, !tbaa !9
  %i.afk = load ptr, ptr %0, align 8, !tbaa !12
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 32
  %i.afm = load ptr, ptr %i.afl, align 8
  %i.afn = load <2 x float>, ptr %i.a, align 4    ; 4 uses
  %i.afo = call noundef ptr %i.afm(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  %i.afp = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.afq = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.afr = shufflevector <2 x float> %i.afp, <2 x float> %i.afq, <2 x i32> <i32 1, i32 3>
  %i.afs = shufflevector <2 x float> %i.afp, <2 x float> %i.afq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aft = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.afu = load float, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.afv = load float, ptr %i.r, align 4, !tbaa !9 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.afx = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.afy = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.afz = shufflevector <2 x float> %i.afx, <2 x float> %i.afy, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aga = shufflevector <2 x float> %i.afx, <2 x float> %i.afy, <2 x i32> <i32 0, i32 2>
  %i.agb = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.agc = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.agd = load float, ptr %37, align 4, !tbaa !9 ; 4 uses
  %i.age = load float, ptr %38, align 4, !tbaa !9 ; 4 uses
  %i.agf = fadd float %i.agd, %i.age              ; 2 uses
  %i.agg = load float, ptr %i.afb, align 4, !tbaa !9 ; 4 uses
  %i.agh = load float, ptr %i.afe, align 4, !tbaa !9 ; 4 uses
  %i.agi = fadd float %i.agg, %i.agh              ; 2 uses
  %i.agj = load float, ptr %i.afc, align 4, !tbaa !9 ; 4 uses
  %i.agk = load float, ptr %i.aff, align 4, !tbaa !9 ; 4 uses
  %i.agl = fadd float %i.agj, %i.agk              ; 2 uses
  %i.agm = insertelement <2 x float> poison, float %i.agi, i64 0
  %i.agn = shufflevector <2 x float> %i.agm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ago = fmul <2 x float> %i.agn, %i.afr
  %i.agp = insertelement <2 x float> poison, float %i.agf, i64 0
  %i.agq = shufflevector <2 x float> %i.agp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afs, <2 x float> %i.agq, <2 x float> %i.ago)
  %i.ags = insertelement <2 x float> poison, float %i.agl, i64 0
  %i.agt = shufflevector <2 x float> %i.ags, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afz, <2 x float> %i.agt, <2 x float> %i.agr)
  %i.agv = fmul float %i.agi, %i.afu
  %i.agw = call float @llvm.fmuladd.f32(float %i.aft, float %i.agf, float %i.agv)
  %i.agx = call noundef float @llvm.fmuladd.f32(float %i.afv, float %i.agl, float %i.agw)
  %i.agy = fadd <2 x float> %i.afn, %i.agu
  %i.agz = fadd float %.sroa.11644.0.copyload, %i.agx
  %.sroa.3.12.vec.insert.i418 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agz, i64 0
  store <2 x float> %i.agy, ptr %39, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i418, ptr %i.afw, align 8
  %i.aha = fneg float %i.agd
  %i.ahb = fneg float %i.agg
  %i.ahc = fneg float %i.agj
  %i.ahd = fsub float %i.age, %i.agd              ; 2 uses
  %i.ahe = fsub float %i.agh, %i.agg              ; 2 uses
  %i.ahf = fsub float %i.agk, %i.agj              ; 2 uses
  %i.ahg = insertelement <2 x float> poison, float %i.ahe, i64 0
  %i.ahh = shufflevector <2 x float> %i.ahg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahi = fmul <2 x float> %i.ahh, %i.aga
  %i.ahj = insertelement <2 x float> poison, float %i.ahd, i64 0
  %i.ahk = shufflevector <2 x float> %i.ahj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afs, <2 x float> %i.ahk, <2 x float> %i.ahi)
  %i.ahm = insertelement <2 x float> poison, float %i.ahf, i64 0
  %i.ahn = shufflevector <2 x float> %i.ahm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afz, <2 x float> %i.ahn, <2 x float> %i.ahl)
  %i.ahp = fmul float %i.ahe, %i.afu
  %i.ahq = call float @llvm.fmuladd.f32(float %i.aft, float %i.ahd, float %i.ahp)
  %i.ahr = call noundef float @llvm.fmuladd.f32(float %i.afv, float %i.ahf, float %i.ahq)
  %i.ahs = fadd <2 x float> %i.afn, %i.aho
  %i.aht = fadd float %.sroa.11644.0.copyload, %i.ahr
  %.sroa.3.12.vec.insert.i438 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aht, i64 0
  store <2 x float> %i.ahs, ptr %40, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i438, ptr %i.agb, align 8
  %i.ahu = load ptr, ptr %i.afo, align 8, !tbaa !12
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 40
  %i.ahw = load ptr, ptr %i.ahv, align 8
  call void %i.ahw(ptr noundef nonnull align 8 dereferenceable(8) %i.afo, ptr noundef nonnull align 4 dereferenceable(16) %39, ptr noundef nonnull align 4 dereferenceable(16) %40, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %i.ahx = load ptr, ptr %0, align 8, !tbaa !12
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32
  %i.ahz = load ptr, ptr %i.ahy, align 8
  %i.aia = call noundef ptr %i.ahz(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.aib = fsub float %i.agd, %i.age              ; 2 uses
  %i.aic = fsub float %i.agg, %i.agh              ; 2 uses
  %i.aid = fsub float %i.agj, %i.agk              ; 2 uses
  %i.aie = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.aif = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.aig = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.aih = insertelement <2 x float> poison, float %i.aic, i64 0
  %i.aii = shufflevector <2 x float> %i.aih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aij = shufflevector <2 x float> %i.aie, <2 x float> %i.aig, <2 x i32> <i32 1, i32 3>
  %i.aik = fmul <2 x float> %i.aii, %i.aij
  %i.ail = shufflevector <2 x float> %i.aie, <2 x float> %i.aig, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aim = insertelement <2 x float> poison, float %i.aib, i64 0
  %i.ain = shufflevector <2 x float> %i.aim, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aio = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ail, <2 x float> %i.ain, <2 x float> %i.aik)
  %i.aip = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.aiq = shufflevector <2 x float> %i.aif, <2 x float> %i.aip, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.air = insertelement <2 x float> poison, float %i.aid, i64 0
  %i.ais = shufflevector <2 x float> %i.air, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ait = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiq, <2 x float> %i.ais, <2 x float> %i.aio)
  %i.aiu = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.aiv = load float, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.aiw = fmul float %i.aic, %i.aiv
  %i.aix = call float @llvm.fmuladd.f32(float %i.aiu, float %i.aib, float %i.aiw)
  %i.aiy = load float, ptr %i.r, align 4, !tbaa !9 ; 2 uses
  %i.aiz = call noundef float @llvm.fmuladd.f32(float %i.aiy, float %i.aid, float %i.aix)
  %i.aja = fadd <2 x float> %i.afn, %i.ait
  %i.ajb = fadd float %.sroa.11644.0.copyload, %i.aiz
  %.sroa.3.12.vec.insert.i453 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ajb, i64 0
  store <2 x float> %i.aja, ptr %41, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i453, ptr %i.agc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  %i.ajc = fsub float %i.aha, %i.age              ; 2 uses
  %i.ajd = fsub float %i.ahb, %i.agh              ; 2 uses
  %i.aje = fsub float %i.ahc, %i.agk              ; 2 uses
  %i.ajf = insertelement <2 x float> poison, float %i.ajd, i64 0
  %i.ajg = shufflevector <2 x float> %i.ajf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajh = shufflevector <2 x float> %i.aif, <2 x float> %i.aip, <2 x i32> <i32 0, i32 2>
  %i.aji = fmul <2 x float> %i.ajg, %i.ajh
  %i.ajj = insertelement <2 x float> poison, float %i.ajc, i64 0
  %i.ajk = shufflevector <2 x float> %i.ajj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ail, <2 x float> %i.ajk, <2 x float> %i.aji)
  %i.ajm = insertelement <2 x float> poison, float %i.aje, i64 0
  %i.ajn = shufflevector <2 x float> %i.ajm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiq, <2 x float> %i.ajn, <2 x float> %i.ajl)
  %i.ajp = fmul float %i.ajd, %i.aiv
  %i.ajq = call float @llvm.fmuladd.f32(float %i.aiu, float %i.ajc, float %i.ajp)
  %i.ajr = call noundef float @llvm.fmuladd.f32(float %i.aiy, float %i.aje, float %i.ajq)
  %i.ajs = fadd <2 x float> %i.afn, %i.ajo
  %i.ajt = fadd float %.sroa.11644.0.copyload, %i.ajr
  %.sroa.3.12.vec.insert.i473 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ajt, i64 0
  store <2 x float> %i.ajs, ptr %42, align 8
  %i.aju = getelementptr inbounds nuw i8, ptr %42, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i473, ptr %i.aju, align 8
  %i.ajv = load ptr, ptr %i.aia, align 8, !tbaa !12
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 40
  %i.ajx = load ptr, ptr %i.ajw, align 8
  call void %i.ajx(ptr noundef nonnull align 8 dereferenceable(8) %i.aia, ptr noundef nonnull align 4 dereferenceable(16) %41, ptr noundef nonnull align 4 dereferenceable(16) %42, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.ajy = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !9 ; 3 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.akb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.akc = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.akd = load float, ptr %i.aka, align 4, !tbaa !9 ; 6 uses
  %i.ake = fmul float %i.ajz, %i.akd              ; 4 uses
  %i.akf = load float, ptr %i.akb, align 8, !tbaa !9 ; 7 uses
  %i.akg = fmul float %i.ajz, %i.akf              ; 4 uses
  %i.akh = load float, ptr %i.akc, align 4, !tbaa !9 ; 7 uses
  %i.aki = fmul float %i.ajz, %i.akh              ; 4 uses
  %i.akj = call noundef float @llvm.fabs.f32(float %i.akh)
  %i.akk = fcmp ogt float %i.akj, f0x3F3504F3
  br i1 %i.akk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.akl = fmul nnan float %i.akh, %i.akh
  %i.akm = call float @llvm.fmuladd.f32(float %i.akf, float %i.akf, float %i.akl) ; 2 uses
  %i.akn = call noundef float @sqrtf(float noundef %i.akm) #20, !tbaa !7
  %i.ako = fdiv float 1.000000e+00, %i.akn        ; 3 uses
  %i.akp = fneg float %i.akh
  %i.akq = fmul float %i.ako, %i.akp              ; 2 uses
  %i.akr = fmul float %i.akf, %i.ako              ; 2 uses
  %i.aks = fmul float %i.akm, %i.ako
  %i.akt = fneg float %i.akd
  %i.aku = fmul float %i.akr, %i.akt
  %i.akv = fmul float %i.akd, %i.akq
  %i.akw = fmul float %i.akr, 1.000000e+02
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.l:                                             ; preds = %bb.j
  %i.akx = fmul float %i.akf, %i.akf
  %i.aky = call float @llvm.fmuladd.f32(float %i.akd, float %i.akd, float %i.akx) ; 2 uses
  %i.akz = call noundef float @sqrtf(float noundef %i.aky) #20, !tbaa !7
  %i.ala = fdiv float 1.000000e+00, %i.akz        ; 3 uses
  %i.alb = fneg float %i.akf
  %i.alc = fmul float %i.ala, %i.alb              ; 2 uses
  %i.ald = fmul float %i.akd, %i.ala              ; 2 uses
  %i.ale = fneg float %i.akh
  %i.alf = fmul float %i.ald, %i.ale
  %i.alg = fmul float %i.akh, %i.alc
  %i.alh = fmul float %i.aky, %i.ala
  %i.ali = fmul float %i.alc, 1.000000e+02
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.k, %bb.l
  %.sroa.0586.0 = phi float [ 0.000000e+00, %bb.k ], [ %i.ali, %bb.l ] ; 2 uses
  %.sroa.6.0 = phi float [ %i.akq, %bb.k ], [ %i.ald, %bb.l ]
  %.sroa.10.0 = phi float [ %i.akw, %bb.k ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %.sink47.i.a = phi float [ %i.aks, %bb.k ], [ %i.alf, %bb.l ]
  %.sink46.i = phi float [ %i.aku, %bb.k ], [ %i.alg, %bb.l ]
  %.sink.i = phi float [ %i.akv, %bb.k ], [ %i.alh, %bb.l ]
  %i.alj = fmul float %.sink47.i.a, 1.000000e+02  ; 2 uses
  %i.alk = fmul float %.sink46.i, 1.000000e+02    ; 2 uses
  %i.all = fmul float %.sink.i, 1.000000e+02      ; 2 uses
  %i.alm = load ptr, ptr %0, align 8, !tbaa !12
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 32
  %i.alo = load ptr, ptr %i.aln, align 8
  %i.alp = call noundef ptr %i.alo(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #20
  %i.alq = fadd float %i.ake, %.sroa.0586.0       ; 2 uses
  %i.alr = fadd float %i.aki, %.sroa.10.0         ; 2 uses
  %i.als = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.alt = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.alu = shufflevector <2 x float> %i.als, <2 x float> %i.alt, <2 x i32> <i32 1, i32 3>
  %i.alv = shufflevector <2 x float> %i.als, <2 x float> %i.alt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.alw = insertelement <2 x float> poison, float %i.alq, i64 0
  %i.alx = shufflevector <2 x float> %i.alw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aly = insertelement <2 x float> poison, float %i.alr, i64 0
  %i.alz = shufflevector <2 x float> %i.aly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ama = load <2 x float>, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %i.amb = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.amc = load float, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.amd = load float, ptr %i.r, align 4, !tbaa !9 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !9 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %43, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  %i.amh = fsub float %i.ake, %.sroa.0586.0       ; 2 uses
  %i.ami = fsub float %i.aki, %.sroa.10.0         ; 2 uses
  %i.amj = fmul float %.sroa.6.0, 1.000000e+02    ; 2 uses
  %i.amk = fadd float %i.akg, %i.amj              ; 2 uses
  %i.aml = fsub float %i.akg, %i.amj              ; 2 uses
  %i.amm = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.amn = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.amo = insertelement <2 x float> poison, float %i.amk, i64 0
  %i.amp = shufflevector <2 x float> %i.amo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amq = fmul <2 x float> %i.amp, %i.alu
  %i.amr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alv, <2 x float> %i.alx, <2 x float> %i.amq)
  %i.ams = shufflevector <2 x float> %i.amm, <2 x float> %i.amn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.amt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ams, <2 x float> %i.alz, <2 x float> %i.amr)
  %i.amu = fadd <2 x float> %i.ama, %i.amt
  %i.amv = fmul float %i.amk, %i.amc
  %i.amw = call float @llvm.fmuladd.f32(float %i.amb, float %i.alq, float %i.amv)
  %i.amx = call noundef float @llvm.fmuladd.f32(float %i.amd, float %i.alr, float %i.amw)
  %i.amy = fadd float %i.amf, %i.amx
  %.sroa.3.12.vec.insert.i.i523 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.amy, i64 0
  store <2 x float> %i.amu, ptr %43, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i523, ptr %i.amg, align 8
  %i.amz = insertelement <2 x float> poison, float %i.aml, i64 0
  %i.ana = shufflevector <2 x float> %i.amz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anb = shufflevector <2 x float> %i.amm, <2 x float> %i.amn, <2 x i32> <i32 0, i32 2>
  %i.anc = fmul <2 x float> %i.ana, %i.anb
  %i.and = insertelement <2 x float> poison, float %i.amh, i64 0
  %i.ane = shufflevector <2 x float> %i.and, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alv, <2 x float> %i.ane, <2 x float> %i.anc)
  %i.ang = insertelement <2 x float> poison, float %i.ami, i64 0
  %i.anh = shufflevector <2 x float> %i.ang, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ani = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ams, <2 x float> %i.anh, <2 x float> %i.anf)
  %i.anj = fadd <2 x float> %i.ama, %i.ani
  %i.ank = fmul float %i.aml, %i.amc
  %i.anl = call float @llvm.fmuladd.f32(float %i.amb, float %i.amh, float %i.ank)
  %i.anm = call noundef float @llvm.fmuladd.f32(float %i.amd, float %i.ami, float %i.anl)
  %i.ann = fadd float %i.amf, %i.anm
  %.sroa.3.12.vec.insert.i.i528 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ann, i64 0
  store <2 x float> %i.anj, ptr %44, align 8
  %i.ano = getelementptr inbounds nuw i8, ptr %44, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i528, ptr %i.ano, align 8
  %i.anp = load ptr, ptr %i.alp, align 8, !tbaa !12
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 40
  %i.anr = load ptr, ptr %i.anq, align 8
  call void %i.anr(ptr noundef nonnull align 8 dereferenceable(8) %i.alp, ptr noundef nonnull align 4 dereferenceable(16) %43, ptr noundef nonnull align 4 dereferenceable(16) %44, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #20
  %i.ans = load ptr, ptr %0, align 8, !tbaa !12
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 32
  %i.anu = load ptr, ptr %i.ant, align 8
  %i.anv = call noundef ptr %i.anu(ptr noundef nonnull align 8 dereferenceable(129) %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.anw = fadd float %i.ake, %i.alj              ; 2 uses
  %i.anx = fadd float %i.akg, %i.alk              ; 2 uses
  %i.any = fadd float %i.aki, %i.all              ; 2 uses
  %i.anz = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 2 uses
  %i.aoa = load <2 x float>, ptr %i.i, align 4, !tbaa !9 ; 2 uses
  %i.aob = insertelement <2 x float> poison, float %i.anx, i64 0
  %i.aoc = shufflevector <2 x float> %i.aob, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aod = shufflevector <2 x float> %i.anz, <2 x float> %i.aoa, <2 x i32> <i32 1, i32 3>
  %i.aoe = fmul <2 x float> %i.aoc, %i.aod
  %i.aof = shufflevector <2 x float> %i.anz, <2 x float> %i.aoa, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aog = insertelement <2 x float> poison, float %i.anw, i64 0
  %i.aoh = shufflevector <2 x float> %i.aog, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aoi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aof, <2 x float> %i.aoh, <2 x float> %i.aoe)
  %i.aoj = insertelement <2 x float> poison, float %i.any, i64 0
  %i.aok = shufflevector <2 x float> %i.aoj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aol = load <2 x float>, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %i.aom = load float, ptr %i.m, align 4, !tbaa !9 ; 2 uses
  %i.aon = load float, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.aoo = fmul float %i.anx, %i.aon
  %i.aop = call float @llvm.fmuladd.f32(float %i.aom, float %i.anw, float %i.aoo)
  %i.aoq = load float, ptr %i.r, align 4, !tbaa !9 ; 2 uses
  %i.aor = call noundef float @llvm.fmuladd.f32(float %i.aoq, float %i.any, float %i.aop)
  %i.aos = load float, ptr %i.ame, align 4, !tbaa !9 ; 2 uses
  %i.aot = fadd float %i.aos, %i.aor
  %.sroa.3.12.vec.insert.i.i533 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aot, i64 0
  %i.aou = getelementptr inbounds nuw i8, ptr %45, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i533, ptr %i.aou, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  %i.aov = fsub float %i.ake, %i.alj              ; 2 uses
  %i.aow = fsub float %i.akg, %i.alk              ; 2 uses
  %i.aox = fsub float %i.aki, %i.all              ; 2 uses
  %i.aoy = load <2 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.aoz = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.apa = shufflevector <2 x float> %i.aoy, <2 x float> %i.aoz, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.apb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apa, <2 x float> %i.aok, <2 x float> %i.aoi)
  %i.apc = fadd <2 x float> %i.aol, %i.apb
  store <2 x float> %i.apc, ptr %45, align 8
  %i.apd = insertelement <2 x float> poison, float %i.aow, i64 0
  %i.ape = shufflevector <2 x float> %i.apd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apf = shufflevector <2 x float> %i.aoy, <2 x float> %i.aoz, <2 x i32> <i32 0, i32 2>
  %i.apg = fmul <2 x float> %i.ape, %i.apf
  %i.aph = insertelement <2 x float> poison, float %i.aov, i64 0
  %i.api = shufflevector <2 x float> %i.aph, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aof, <2 x float> %i.api, <2 x float> %i.apg)
  %i.apk = insertelement <2 x float> poison, float %i.aox, i64 0
  %i.apl = shufflevector <2 x float> %i.apk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apa, <2 x float> %i.apl, <2 x float> %i.apj)
  %i.apn = fadd <2 x float> %i.aol, %i.apm
  %i.apo = fmul float %i.aow, %i.aon
  %i.app = call float @llvm.fmuladd.f32(float %i.aom, float %i.aov, float %i.apo)
  %i.apq = call noundef float @llvm.fmuladd.f32(float %i.aoq, float %i.aox, float %i.app)
  %i.apr = fadd float %i.aos, %i.apq
  %.sroa.3.12.vec.insert.i.i538 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.apr, i64 0
  store <2 x float> %i.apn, ptr %46, align 8
  %i.aps = getelementptr inbounds nuw i8, ptr %46, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i538, ptr %i.aps, align 8
  %i.apt = load ptr, ptr %i.anv, align 8, !tbaa !12
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 40
  %i.apv = load ptr, ptr %i.apu, align 8
  call void %i.apv(ptr noundef nonnull align 8 dereferenceable(8) %i.anv, ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull align 4 dereferenceable(16) %46, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.apw = add i32 %i.co, -21
  %i.apx = icmp ult i32 %i.apw, 9
  br i1 %i.apx, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %47, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %48, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  %i.apy = load ptr, ptr %0, align 8, !tbaa !12
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 32
  %i.aqa = load ptr, ptr %i.apz, align 8
  %i.aqb = call noundef ptr %i.aqa(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %i.aqc = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17DebugDrawcallback, i64 16), ptr %49, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DebugDrawcallback, i64 64), ptr %i.aqc, align 8, !tbaa !12
  %i.aqd = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %i.aqb, ptr %i.aqd, align 8, !tbaa !96
  %i.aqe = getelementptr inbounds nuw i8, ptr %49, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqe, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !88
  %i.aqf = getelementptr inbounds nuw i8, ptr %49, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aqf, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !88
  %i.aqg = getelementptr inbounds nuw i8, ptr %49, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqg, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !88
  %i.aqh = getelementptr inbounds nuw i8, ptr %49, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqh, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !88
  %i.aqi = getelementptr inbounds nuw i8, ptr %49, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqi, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !88
  %i.aqj = load ptr, ptr %2, align 8, !tbaa !12
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 96
  %i.aql = load ptr, ptr %i.aqk, align 8
  invoke void %i.aql(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull %49, ptr noundef nonnull align 4 dereferenceable(16) %48, ptr noundef nonnull align 4 dereferenceable(16) %47)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aqc)
          to label %_ZN17DebugDrawcallbackD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_:.peel.next
  store float %i.az, ptr %4, align 8, !tbaa !9
  store float %i.bj, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !9
  store float %i.bf, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !9
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !76
  store float %i.az, ptr %5, align 4, !tbaa !9
  store <2 x float> %i.bi, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !9
  %i.bn = load ptr, ptr %0, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !76
  %i.bq = fsub <2 x float> %i.n, %i.h             ; 2 uses
  store <2 x float> %i.bq, ptr %4, align 8, !tbaa !9
  %i.br = fadd float %i.q, %i.k                   ; 5 uses
  store float %i.br, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !9
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !76
  %i.bs = fadd float %i.t, %i.s                   ; 5 uses
  store float %i.bs, ptr %5, align 4, !tbaa !9
  %i.bt = extractelement <2 x float> %i.bq, i64 1 ; 2 uses
  store float %i.bt, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !9
  store float %i.br, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !9
  %i.bu = load ptr, ptr %0, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !76
  store float %i.bs, ptr %4, align 8, !tbaa !9
  store float %i.bt, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !9
  store float %i.br, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !9
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !76
  store float %i.bs, ptr %5, align 4, !tbaa !9
  %i.bx = extractelement <2 x float> %i.h, i64 1
  %i.by = extractelement <2 x float> %i.n, i64 1
  %i.bz = fadd float %i.by, %i.bx                 ; 3 uses
  store float %i.bz, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !9
  store float %i.br, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !9
  %i.ca = load ptr, ptr %0, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store float 0.000000e+00, ptr %.sroa.644.0..sroa_idx, align 4, !tbaa !76
  store float %i.bs, ptr %4, align 8, !tbaa !9
  store float %i.bz, ptr %.sroa.442.0..sroa_idx, align 4, !tbaa !9
  store float %i.br, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !9
  store float 0.000000e+00, ptr %.sroa.637.0..sroa_idx, align 4, !tbaa !76
  store float %i.bs, ptr %5, align 4, !tbaa !9
  store float %i.bz, ptr %.sroa.435.0..sroa_idx, align 4, !tbaa !9
  %i.cd = fsub float %i.q, %i.k
  store float %i.cd, ptr %.sroa.536.0..sroa_idx, align 4, !tbaa !9
  %i.ce = load ptr, ptr %0, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld11clearForcesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !47
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld12applyGravityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 228
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70
  switch i32 %i.j, label %bb.c [
    i32 5, label %bb.d
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11btRigidBody12applyGravityEv(ptr noundef nonnull align 8 dereferenceable(564) %i.h)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %i.k = phi i32 [ %i.e, %bb.b ], [ %i.e, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge
}

declare void @_ZN11btRigidBody12applyGravityEv(ptr noundef nonnull align 8 dereferenceable(564)) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %i.e = and i32 %i.d, 3
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.j = load float, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.l = load float, ptr %i.k, align 4, !tbaa !99
  %i.m = fmul float %i.j, %i.l
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, float noundef %i.m, ptr noundef nonnull align 4 dereferenceable(64) %2)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 4 dereferenceable(64) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !9
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !9
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !9
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !9
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i19, ptr %.sroa.460.0..sroa_idx, align 4, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load <2 x float>, ptr %2, align 4, !tbaa !9 ; 5 uses
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !9 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.p
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.s = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %i.u = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %i.w = tail call noundef float @sqrtf(float noundef %i.v) #20, !tbaa !7 ; 2 uses
  %i.x = fmul float %3, %i.w
  %i.y = fcmp ogt float %i.x, f0x3F490FDB
  %i.z = fdiv float f0x3F490FDB, %3
  %.0 = select i1 %i.y, float %i.z, float %i.w    ; 6 uses
  %i.aa = fcmp olt float %.0, 1.000000e-03
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = fmul float %3, %3
  %i.ac = fmul float %3, %i.ab
  %i.ad = fmul float %i.ac, f0x3CAAAAAB
  %i.ae = fmul float %i.ad, %.0
  %i.af = fneg float %.0
  %i.ag = fmul float %i.ae, %i.af
  %i.ah = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.ag)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fmul float %.0, 5.000000e-01
  %i.aj = fmul float %3, %i.ai
  %i.ak = tail call noundef float @sinf(float noundef %i.aj) #20, !tbaa !7
  %i.al = fdiv float %i.ak, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink69 = phi float [ %i.al, %bb.c ], [ %i.ah, %bb.b ]
  %i.am = insertelement <2 x float> poison, float %.sink69, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ao = fmul <2 x float> %i.p, %i.an            ; 3 uses
  %i.ap = shufflevector <2 x float> %i.q, <2 x float> %i.p, <2 x i32> <i32 1, i32 2>
  %i.aq = fmul <2 x float> %i.ap, %i.an           ; 2 uses
  %i.ar = fmul <2 x float> %i.q, %i.an
  %i.as = fmul float %3, %.0
  %i.at = fmul float %i.as, 5.000000e-01
  %i.au = tail call noundef float @cosf(float noundef %i.at) #20, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.av = extractelement <2 x float> %i.aq, i64 0
  %i.aw = fneg float %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ay = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ar, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bc, <2 x float> %i.az)
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %.fca.0.load.i, <2 x float> %i.bd)
  %i.bf = fneg <2 x float> %i.ao                  ; 2 uses
  %i.bg = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> %i.be) ; 4 uses
  %i.bi = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fneg <2 x float> %.fca.0.load.i
  %i.bk = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %i.bj, <2 x i32> <i32 1, i32 2>
  %i.bl = fmul <2 x float> %i.bi, %i.bk
  %i.bm = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 3>
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bm, <2 x float> %i.bl)
  %i.bo = shufflevector <2 x float> %i.ao, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3>
  %i.bp = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 3>
  %i.bq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bp, <2 x float> %i.bn)
  %i.br = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bc, <2 x float> %i.bq) ; 3 uses
  %foldExtExtBinop71 = fmul <2 x float> %i.bh, %i.bh
  %i.bu = extractelement <2 x float> %foldExtExtBinop71, i64 0
  %i.bv = extractelement <2 x float> %i.bt, i64 0 ; 2 uses
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu)
  %i.bx = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %i.ca = call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by)
  %i.cb = call noundef float @sqrtf(float noundef %i.ca) #20, !tbaa !7
  %i.cc = fdiv float 1.000000e+00, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cf = fmul <2 x float> %i.ce, %i.bh           ; 6 uses
  %i.cg = fmul <2 x float> %i.ce, %i.bt           ; 4 uses
  %i.ch = extractelement <2 x float> %i.cf, i64 0
  %foldExtExtBinop73 = fmul <2 x float> %i.cf, %i.cf
  %i.ci = extractelement <2 x float> %foldExtExtBinop73, i64 0
  %i.cj = extractelement <2 x float> %i.cg, i64 0 ; 4 uses
  %i.ck = call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ci)
  %i.cl = extractelement <2 x float> %i.cf, i64 1 ; 3 uses
  %i.cm = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ck)
  %i.cn = extractelement <2 x float> %i.cg, i64 1 ; 3 uses
  %i.co = call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cm)
  %i.cp = fdiv float 2.000000e+00, %i.co          ; 2 uses
  %i.cq = fmul float %i.cj, %i.cp                 ; 2 uses
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.cf, %i.cs           ; 4 uses
  %i.cu = fmul float %i.cn, %i.cq                 ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cx = fmul <2 x float> %i.cv, %i.cw           ; 4 uses
  %i.cy = fmul float %i.cj, %i.cq                 ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cz, %i.ct           ; 4 uses
  %foldExtExtBinop75 = fmul <2 x float> %i.cf, %i.ct
  %i.db = extractelement <2 x float> %foldExtExtBinop75, i64 0 ; 2 uses
  %i.dc = extractelement <2 x float> %i.ct, i64 1 ; 2 uses
  %i.dd = fmul float %i.ch, %i.dc                 ; 2 uses
  %i.de = fmul float %i.cl, %i.dc                 ; 2 uses
  %i.df = fadd float %i.db, %i.de
  %i.dg = fsub float 1.000000e+00, %i.df
  %i.dh = fsub <2 x float> %i.da, %i.cx
  %i.di = fadd <2 x float> %i.da, %i.cx
  %i.dj = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop77 = fadd <2 x float> %i.da, %i.cx
  %i.dk = extractelement <2 x float> %foldExtExtBinop77, i64 0
  %i.dl = fadd float %i.cy, %i.de
  %i.dm = fsub float 1.000000e+00, %i.dl
  %i.dn = fsub float %i.dd, %i.cu
  %foldExtExtBinop79 = fsub <2 x float> %i.da, %i.cx
  %i.do = extractelement <2 x float> %foldExtExtBinop79, i64 1
  %i.dp = fadd float %i.dd, %i.cu
  %i.dq = fadd float %i.cy, %i.db
  %i.dr = fsub float 1.000000e+00, %i.dq
  store float %i.dg, ptr %4, align 4, !tbaa !9
  store <2 x float> %i.dj, ptr %i.ax, align 4, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.dk, ptr %i.dt, align 4, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.dm, ptr %i.du, align 4, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.dn, ptr %i.dv, align 4, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.dw, align 4, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.do, ptr %i.dx, align 4, !tbaa !9
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.dp, ptr %i.dy, align 4, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dr, ptr %i.dz, align 4, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.ea, align 4, !tbaa !9
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.btTransform, align 4         ; 4 uses
  %2 = alloca %class.btTransform, align 4         ; 4 uses
  tail call void @_ZN15CProfileManager13Start_ProfileEPKc(ptr noundef nonnull @.str.1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 334
  %i.b = load i8, ptr %i.a, align 2, !tbaa !50, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !47   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !60   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph32, label %.loopexit

.lr.ph32:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph32, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit
  %i.n = phi i32 [ %i.j, %.lr.ph32 ], [ %i.ak, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit ] ; 3 uses
  %indvars.iv36 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next37, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv36
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !63   ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 256
  %i.s = load i32, ptr %i.r, align 8, !tbaa !69
  %i.t = icmp ne i32 %i.s, 2
  %.not26 = icmp eq ptr %i.q, null
  %.not = or i1 %.not26, %i.t
  br i1 %.not, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 512 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !98
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  %i.x = load i32, ptr %i.w, align 8, !tbaa !71
  %i.y = and i32 %i.x, 3
  %.not8.i = icmp eq i32 %i.y, 0
  br i1 %.not8.i, label %bb.e, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.ac = load float, ptr %i.m, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 260
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !99
  %i.af = fmul float %i.ac, %i.ae
  invoke void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, float noundef %i.af, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !98  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %2)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !249

.noexc18:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pre39 = load i32, ptr %i.i, align 4, !tbaa !60
  br label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit

_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit: ; preds = %.noexc18, %bb.d, %bb.c, %bb.b
  %i.ak = phi i32 [ %.pre39, %.noexc18 ], [ %i.n, %bb.d ], [ %i.n, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next37, %i.al
  br i1 %i.am, label %bb.b, label %.loopexit

bb.f:                                             ; preds = %.lr.ph, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit24
  %i.an = phi i32 [ %i.e, %.lr.ph ], [ %i.bj, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit24 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit24 ] ; 2 uses
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !97 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 228
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  switch i32 %i.as, label %bb.g [
    i32 5, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit24
    i32 2, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit24
  ]

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 512 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !98
  %.not.i20 = icmp eq ptr %i.au, null
  br i1 %.not.i20, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit24, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !71
  %i.ax = and i32 %i.aw, 3
  %.not8.i21 = icmp eq i32 %i.ax, 0
  br i1 %.not8.i21, label %bb.i, label %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit24

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  %i.bb = load float, ptr %i.h, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 260
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !99
  %i.be = fmul float %i.bb, %i.bd
  invoke void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %i.az, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, float noundef %i.be, ptr noundef nonnull align 4 dereferenceable(64) %1)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.i
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !98 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 4 dereferenceable(64) %1)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !249
end_hunk_1
begin_hunk_2_@_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83, !nonnull !59, !align !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 220
  %i.k = load i32, ptr %i.j, align 4, !tbaa !115  ; 3 uses
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %.split.us.us, label %tailrecurse.split

.split.us.us:                                     ; preds = %tailrecurse, %bb.f
  %.026.us = phi i32 [ %.228.us, %bb.f ], [ %.tr34, %tailrecurse ]
  %.0.us = phi i32 [ %.2.us, %bb.f ], [ %2, %tailrecurse ]
  %i.m = sext i32 %.026.us to i64
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us: ; preds = %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us, %.split.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us ], [ %i.m, %.split.us.us ] ; 5 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv76
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83, !nonnull !59, !align !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 220
  %i.s = load i32, ptr %i.r, align 4, !tbaa !115  ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us, label %bb.b

bb.b:                                             ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !85, !nonnull !59, !align !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  %i.x = load i32, ptr %i.w, align 4, !tbaa !115
  br label %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us

_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us: ; preds = %bb.b, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us
  %i.y = phi i32 [ %i.x, %bb.b ], [ %i.s, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us ]
  %i.z = icmp slt i32 %i.y, %i.k
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1
  br i1 %i.z, label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us, label %.preheader.split.us.us

.preheader.split.us.us:                           ; preds = %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv76
  %i.ab = sext i32 %.0.us to i64
  br label %bb.c

bb.c:                                             ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32.us.us, %.preheader.split.us.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32.us.us ], [ %i.ab, %.preheader.split.us.us ] ; 5 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv79
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83, !nonnull !59, !align !84
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 220
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !115 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85, !nonnull !59, !align !84
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 220
  %i.am = load i32, ptr %i.al, align 4, !tbaa !115
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32.us.us

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32.us.us: ; preds = %bb.d, %bb.c
  %i.an = phi i32 [ %i.am, %bb.d ], [ %i.ah, %bb.c ]
  %i.ao = icmp slt i32 %i.k, %i.an
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  br i1 %i.ao, label %bb.c, label %.split49.us.us

.split49.us.us:                                   ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32.us.us
  %i.ap = trunc nsw i64 %indvars.iv76 to i32      ; 2 uses
  %i.aq = trunc nsw i64 %indvars.iv79 to i32      ; 2 uses
  %.not.us = icmp sgt i64 %indvars.iv76, %indvars.iv79
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split49.us.us
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv79
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !105
  store ptr %i.o, ptr %i.ar, align 8, !tbaa !105
  %i.as = add nsw i32 %i.ap, 1
  %i.at = add nsw i32 %i.aq, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split49.us.us
  %.228.us = phi i32 [ %i.as, %bb.e ], [ %i.ap, %.split49.us.us ] ; 3 uses
  %.2.us = phi i32 [ %i.at, %bb.e ], [ %i.aq, %.split49.us.us ] ; 3 uses
  %.not31.us = icmp sgt i32 %.228.us, %.2.us
  br i1 %.not31.us, label %.split61.us, label %.split.us.us

tailrecurse.split:                                ; preds = %tailrecurse
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !85, !nonnull !59, !align !84
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 220
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !115 ; 2 uses
  br label %.split

.split:                                           ; preds = %bb.k, %tailrecurse.split
  %.026 = phi i32 [ %.tr34, %tailrecurse.split ], [ %.228, %bb.k ]
  %.0 = phi i32 [ %2, %tailrecurse.split ], [ %.2, %bb.k ]
  %i.ay = sext i32 %.026 to i64
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i: ; preds = %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit ], [ %i.ay, %.split ] ; 5 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !105 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !83, !nonnull !59, !align !84
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 220
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !115 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit, label %bb.g

bb.g:                                             ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85, !nonnull !59, !align !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 220
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !115
  br label %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit

_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit: ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i, %bb.g
  %i.bk = phi i32 [ %i.bj, %bb.g ], [ %i.be, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i ]
  %i.bl = icmp slt i32 %i.bk, %i.ax
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.bl, label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i, label %.preheader.split

.preheader.split:                                 ; preds = %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.bn = sext i32 %.0 to i64
  br label %bb.h

bb.h:                                             ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32, %.preheader.split
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32 ], [ %i.bn, %.preheader.split ] ; 5 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv73
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !105 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !83, !nonnull !59, !align !84
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 220
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !115 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !85, !nonnull !59, !align !84
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 220
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !115
  br label %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32

_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32: ; preds = %bb.i, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.i ], [ %i.bt, %bb.h ]
  %i.ca = icmp slt i32 %i.ax, %i.bz
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, -1
  br i1 %i.ca, label %bb.h, label %.split49

.split49:                                         ; preds = %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i32
  %i.cb = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.cc = trunc nsw i64 %indvars.iv73 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv73
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split49
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv73
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !105
  store ptr %i.ba, ptr %i.cd, align 8, !tbaa !105
  %i.ce = add nsw i32 %i.cb, 1
  %i.cf = add nsw i32 %i.cc, -1
  br label %bb.k

bb.k:                                             ; preds = %.split49, %bb.j
  %.228 = phi i32 [ %i.ce, %bb.j ], [ %i.cb, %.split49 ] ; 3 uses
  %.2 = phi i32 [ %i.cf, %bb.j ], [ %i.cc, %.split49 ] ; 3 uses
  %.not31 = icmp sgt i32 %.228, %.2
  br i1 %.not31, label %.split61.us, label %.split

.split61.us:                                      ; preds = %bb.k, %bb.f
  %.us-phi62 = phi i32 [ %.228.us, %bb.f ], [ %.228, %bb.k ] ; 2 uses
  %.us-phi63 = phi i32 [ %.2.us, %bb.f ], [ %.2, %bb.k ] ; 2 uses
  %i.cg = icmp slt i32 %.tr34, %.us-phi63
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split61.us
  tail call void @_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %.tr34, i32 noundef %.us-phi63)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split61.us
  %i.ch = icmp slt i32 %.us-phi62, %2
  br i1 %i.ch, label %tailrecurse, label %bb.n

bb.n:                                             ; preds = %bb.m
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTS23btContactSolverInfoData", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !6, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !6, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !6, i64 60, !6, i64 64}
!11 = !{!"vtable pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"any p2 pointer", !14, i64 0}
!16 = !{!"p2 _ZTS17btCollisionObject", !15, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !13, i64 0, !6, i64 4, !6, i64 8, !16, i64 16, !17, i64 24}
!19 = !{!"p1 _ZTS12btDispatcher", !14, i64 0}
!20 = !{!"p1 _ZTS12btIDebugDraw", !14, i64 0}
!21 = !{!"p1 _ZTS12btStackAlloc", !14, i64 0}
!22 = !{!"_ZTS16btDispatcherInfo", !8, i64 0, !6, i64 4, !6, i64 8, !8, i64 12, !17, i64 16, !20, i64 24, !17, i64 32, !17, i64 33, !17, i64 34, !8, i64 36, !17, i64 40, !8, i64 44, !21, i64 48}
!23 = !{!"p1 _ZTS21btBroadphaseInterface", !14, i64 0}
!24 = !{!"_ZTS16btCollisionWorld", !18, i64 8, !19, i64 40, !22, i64 48, !21, i64 104, !23, i64 112, !20, i64 120, !17, i64 128}
!25 = !{!"_ZTS19btContactSolverInfo", !10, i64 0}
!26 = !{!"_ZTS15btDynamicsWorld", !24, i64 0, !14, i64 136, !14, i64 144, !14, i64 152, !25, i64 160}
!27 = !{!"p1 _ZTS18btConstraintSolver", !14, i64 0}
!28 = !{!"p1 _ZTS25btSimulationIslandManager", !14, i64 0}
!29 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!30 = !{!"p2 _ZTS17btTypedConstraint", !15, i64 0}
!31 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !29, i64 0, !6, i64 4, !6, i64 8, !30, i64 16, !17, i64 24}
!32 = !{!"_ZTS18btAlignedAllocatorIP11btRigidBodyLj16EE"}
!33 = !{!"p2 _ZTS11btRigidBody", !15, i64 0}
!34 = !{!"_ZTS20btAlignedObjectArrayIP11btRigidBodyE", !32, i64 0, !6, i64 4, !6, i64 8, !33, i64 16, !17, i64 24}
!35 = !{!"_ZTS9btVector3", !5, i64 0}
!36 = !{!"_ZTS18btAlignedAllocatorIP17btActionInterfaceLj16EE"}
!37 = !{!"p2 _ZTS17btActionInterface", !15, i64 0}
!38 = !{!"_ZTS20btAlignedObjectArrayIP17btActionInterfaceE", !36, i64 0, !6, i64 4, !6, i64 8, !37, i64 16, !17, i64 24}
!39 = !{!"_ZTS23btDiscreteDynamicsWorld", !26, i64 0, !27, i64 232, !28, i64 240, !31, i64 248, !34, i64 280, !35, i64 312, !8, i64 328, !17, i64 332, !17, i64 333, !17, i64 334, !38, i64 336, !6, i64 368}
!40 = !{!39, !27, i64 232}
!41 = !{!31, !17, i64 24}
!42 = !{!31, !30, i64 16}
!43 = !{!31, !6, i64 4}
!44 = !{!31, !6, i64 8}
!45 = !{!34, !17, i64 24}
!46 = !{!34, !33, i64 16}
!47 = !{!34, !6, i64 4}
!48 = !{!34, !6, i64 8}
!49 = !{!39, !8, i64 328}
!50 = !{!39, !17, i64 334}
!51 = !{!38, !17, i64 24}
!52 = !{!38, !37, i64 16}
!53 = !{!38, !6, i64 4}
!54 = !{!38, !6, i64 8}
!55 = !{!39, !17, i64 333}
!56 = !{!39, !28, i64 240}
!57 = !{!39, !17, i64 332}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!18, !6, i64 4}
!61 = !{!18, !16, i64 16}
!62 = !{!"p1 _ZTS17btCollisionObject", !14, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!65 = !{!"_ZTS11btTransform", !64, i64 0, !35, i64 48}
!66 = !{!"p1 _ZTS17btBroadphaseProxy", !14, i64 0}
!67 = !{!"p1 _ZTS16btCollisionShape", !14, i64 0}
!68 = !{!"_ZTS17btCollisionObject", !65, i64 8, !65, i64 72, !35, i64 136, !35, i64 152, !35, i64 168, !17, i64 184, !8, i64 188, !66, i64 192, !67, i64 200, !67, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !14, i64 248, !6, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !17, i64 272, !5, i64 273}
!69 = !{!68, !6, i64 256}
!70 = !{!68, !6, i64 228}
!71 = !{!68, !6, i64 216}
!72 = !{!24, !19, i64 40}
!73 = !{!"_ZTS13btTypedObject", !6, i64 0}
!74 = !{!"_ZTS20btPersistentManifold", !73, i64 0, !5, i64 8, !14, i64 712, !14, i64 720, !6, i64 728, !8, i64 732, !8, i64 736, !6, i64 740}
!75 = !{!74, !6, i64 728}
!76 = !{!5, !5, i64 0}
!77 = !{!68, !67, i64 200}
!78 = !{!24, !20, i64 120}
!79 = !{!"p1 _ZTS17btActionInterface", !14, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"p1 _ZTS11btRigidBody", !14, i64 0}
!82 = !{!"_ZTS17btTypedConstraint", !73, i64 8, !6, i64 12, !6, i64 16, !17, i64 20, !81, i64 24, !81, i64 32, !8, i64 40, !8, i64 44, !35, i64 48, !35, i64 64, !35, i64 80}
!83 = !{!82, !81, i64 24}
!84 = !{i64 8}
!85 = !{!82, !81, i64 32}
!86 = !{!"p1 _ZTS13btMotionState", !14, i64 0}
!87 = !{!"_ZTS11btRigidBody", !68, i64 0, !64, i64 280, !35, i64 328, !35, i64 344, !8, i64 360, !35, i64 364, !35, i64 380, !35, i64 396, !35, i64 412, !35, i64 428, !35, i64 444, !35, i64 460, !8, i64 476, !8, i64 480, !17, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !8, i64 508, !86, i64 512, !31, i64 520, !6, i64 552, !6, i64 556, !6, i64 560}
!88 = !{i64 0, i64 16, !76}
!89 = !{!"_ZTS16btCollisionShape", !6, i64 8, !14, i64 16}
!90 = !{!89, !6, i64 8}
!91 = !{!"_ZTS13btConvexShape", !89, i64 0}
!92 = !{!"_ZTS21btConvexInternalShape", !91, i64 0, !35, i64 24, !35, i64 40, !8, i64 56, !8, i64 60}
!93 = !{!"_ZTS18btTriangleCallback"}
!94 = !{!"_ZTS31btInternalTriangleIndexCallback"}
!95 = !{!"_ZTS17DebugDrawcallback", !93, i64 0, !94, i64 8, !20, i64 16, !35, i64 24, !65, i64 40}
!96 = !{!95, !20, i64 16}
!97 = !{!81, !81, i64 0}
!98 = !{!87, !86, i64 512}
!99 = !{!68, !8, i64 260}
!100 = !{!17, !17, i64 0}
!101 = !{!"llvm.loop.isvectorized", i32 1}
!102 = !{!"llvm.loop.unroll.runtime.disable"}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!"p1 _ZTS17btTypedConstraint", !14, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"p1 _ZTS19btContactSolverInfo", !14, i64 0}
!107 = !{!"_ZTSN25btSimulationIslandManager14IslandCallbackE"}
!108 = !{!"_ZTSZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback", !107, i64 0, !106, i64 8, !27, i64 16, !30, i64 24, !6, i64 32, !20, i64 40, !21, i64 48, !19, i64 56}
!109 = !{!108, !27, i64 16}
!110 = !{!108, !30, i64 24}
!111 = !{!108, !6, i64 32}
!112 = !{!108, !20, i64 40}
!113 = !{!108, !21, i64 48}
!114 = !{!108, !19, i64 56}
!115 = !{!68, !6, i64 220}
!116 = !{!"short", !5, i64 0}
!117 = !{!"_ZTSN16btCollisionWorld20ConvexResultCallbackE", !8, i64 8, !116, i64 12, !116, i64 14}
!118 = !{!117, !8, i64 8}
!119 = !{!117, !116, i64 12}
!120 = !{!117, !116, i64 14}
!121 = !{!"_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE", !117, i64 0, !35, i64 16, !35, i64 32, !35, i64 48, !35, i64 64, !62, i64 80}
!122 = !{!121, !62, i64 80}
!123 = !{!"p1 _ZTS22btOverlappingPairCache", !14, i64 0}
!124 = !{!"_ZTS34btClosestNotMeConvexResultCallback", !121, i64 0, !62, i64 88, !8, i64 96, !123, i64 104, !19, i64 112}
!125 = !{!124, !62, i64 88}
!126 = !{!124, !8, i64 96}
!127 = !{!124, !123, i64 104}
!128 = !{!124, !19, i64 112}
!129 = !{!68, !66, i64 192}
!130 = !{!10, !8, i64 8}
!131 = !{!10, !8, i64 16}
!132 = !{!10, !6, i64 20}
!133 = !{!10, !8, i64 40}
!134 = !{!10, !6, i64 44}
!135 = !{!10, !8, i64 56}
!136 = !{!10, !6, i64 60}
!137 = !{!10, !6, i64 64}
!138 = !{!39, !6, i64 368}
!139 = !{!"_ZTS15btManifoldPoint", !35, i64 0, !35, i64 16, !35, i64 32, !35, i64 48, !35, i64 64, !8, i64 80, !8, i64 84, !8, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !14, i64 112, !8, i64 120, !17, i64 124, !8, i64 128, !8, i64 132, !6, i64 136, !35, i64 140, !35, i64 156}
!140 = !{!139, !8, i64 80}
!141 = !{!139, !6, i64 136}
!142 = distinct !{!142, i1 true, !"_ZNK11btTransformmlERKS_"}
!143 = distinct !{!143, !142, !"_ZNK11btTransformmlERKS_: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!145 = distinct !{!145, !144, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!146 = distinct !{!146, i1 true, !"_ZNK11btTransformmlERKS_"}
!147 = distinct !{!147, !146, !"_ZNK11btTransformmlERKS_: argument 0"}
!148 = distinct !{!148, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!149 = distinct !{!149, !148, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!150 = distinct !{!150, i1 true, !"_ZNK11btTransformmlERKS_"}
!151 = distinct !{!151, !150, !"_ZNK11btTransformmlERKS_: argument 0"}
!152 = distinct !{!152, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!153 = distinct !{!153, !152, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!154 = distinct !{!154, i1 true, !"_ZNK11btTransformmlERKS_"}
end_hunk_2
