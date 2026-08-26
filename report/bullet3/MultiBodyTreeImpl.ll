Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/MultiBodyTreeImpl?download=true
inline.NumInlined: 1044
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateKinematicsERKNS_4vecxES4_S4_NS1_13KinUpdateTypeE:bb.a
  %i.adm = call noundef float @llvm.fmuladd.f32(float %i.abs, float %i.ada, float %i.adl)
  %.sroa.3.12.vec.insert.i293 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.adm, i64 0
  store <2 x float> %i.adj, ptr %i.acv, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i293, ptr %i.acz, align 4, !tbaa !89
  br i1 %i.js, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.adn = load ptr, ptr %i.jt, align 8, !tbaa !58 ; 3 uses
  %i.ado = getelementptr inbounds [4 x i8], ptr %i.adn, i64 %i.ach
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !65
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ve, i64 388
  store float %i.adp, ptr %i.adq, align 4, !tbaa !65
  %i.adr = getelementptr inbounds [4 x i8], ptr %i.adn, i64 %i.acm
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !65
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ve, i64 392
  store float %i.ads, ptr %i.adt, align 8, !tbaa !65
  %i.adu = getelementptr inbounds [4 x i8], ptr %i.adn, i64 %i.acr
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !65
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ve, i64 396
  store float %i.adv, ptr %i.adw, align 4, !tbaa !65
  %i.adx = getelementptr inbounds nuw i8, ptr %i.ve, i64 404 ; 2 uses
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !65 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ve, i64 408
  %i.aea = load float, ptr %i.adz, align 8, !tbaa !65 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ve, i64 412 ; 2 uses
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !65 ; 2 uses
  %i.aed = insertelement <2 x float> poison, float %i.aea, i64 0
  %i.aee = shufflevector <2 x float> %i.aed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aef = fmul <2 x float> %i.abg, %i.aee
  %i.aeg = insertelement <2 x float> poison, float %i.ady, i64 0
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aba, <2 x float> %i.aeh, <2 x float> %i.aef)
  %i.aej = insertelement <2 x float> poison, float %i.aec, i64 0
  %i.aek = shufflevector <2 x float> %i.aej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ael = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abp, <2 x float> %i.aek, <2 x float> %i.aei)
  %i.aem = fmul float %i.abu, %i.aea
  %i.aen = call float @llvm.fmuladd.f32(float %i.abt, float %i.ady, float %i.aem)
  %i.aeo = call noundef float @llvm.fmuladd.f32(float %i.abs, float %i.aec, float %i.aen)
  %.sroa.3.12.vec.insert.i298 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aeo, i64 0
  store <2 x float> %i.ael, ptr %i.adx, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i298, ptr %i.aeb, align 4, !tbaa !89
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1 ; 2 uses
  %i.aep = load i32, ptr %i.ir, align 4, !tbaa !42
  %i.aeq = sext i32 %i.aep to i64
  %i.aer = icmp slt i64 %indvars.iv.next668, %i.aeq
  br i1 %i.aer, label %bb.q, label %._crit_edge, !llvm.loop !166

bb.u:                                             ; preds = %._crit_edge
  %i.aes = getelementptr inbounds nuw i8, ptr %i.tg, i64 356
  %i.aet = getelementptr inbounds nuw i8, ptr %i.tg, i64 212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aet, ptr noundef nonnull align 4 dereferenceable(16) %i.aes, i64 16, i1 false)
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.tg, i64 372
  %i.aev = getelementptr inbounds nuw i8, ptr %i.tg, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aev, ptr noundef nonnull align 4 dereferenceable(16) %i.aeu, i64 16, i1 false)
  %i.aew = icmp eq i32 %4, 2
  br i1 %i.aew, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.aex = getelementptr inbounds nuw i8, ptr %i.tg, i64 388
  %i.aey = getelementptr inbounds nuw i8, ptr %i.tg, i64 228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aey, ptr noundef nonnull align 4 dereferenceable(16) %i.aex, i64 16, i1 false)
  %i.aez = getelementptr inbounds nuw i8, ptr %i.tg, i64 404
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !65 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.tg, i64 408
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !65 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.tg, i64 412
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !65 ; 2 uses
  %i.aff = insertelement <2 x float> poison, float %i.afc, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afh = shufflevector <2 x float> %i.ts, <2 x float> %i.tt, <2 x i32> <i32 1, i32 3>
  %i.afi = fmul <2 x float> %i.afg, %i.afh
  %i.afj = insertelement <2 x float> poison, float %i.afa, i64 0
  %i.afk = shufflevector <2 x float> %i.afj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ud, <2 x float> %i.afk, <2 x float> %i.afi)
  %i.afm = shufflevector <2 x float> %i.tv, <2 x float> %i.tx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.afn = insertelement <2 x float> poison, float %i.afe, i64 0
  %i.afo = shufflevector <2 x float> %i.afn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afm, <2 x float> %i.afo, <2 x float> %i.afl) ; 2 uses
  %i.afq = fmul float %i.afc, %i.up
  %i.afr = call float @llvm.fmuladd.f32(float %i.un, float %i.afa, float %i.afq)
  %i.afs = call noundef float @llvm.fmuladd.f32(float %i.ut, float %i.afe, float %i.afr) ; 2 uses
  %.sroa.3.12.vec.insert.i303 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.afs, i64 0
  %i.aft = getelementptr inbounds nuw i8, ptr %i.tg, i64 196 ; 2 uses
  store <2 x float> %i.afp, ptr %i.aft, align 4
  %.sroa.4477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tg, i64 204 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i303, ptr %.sroa.4477.0..sroa_idx, align 4, !tbaa !89
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.afv = load float, ptr %i.afu, align 8, !tbaa !65 ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.afx = load float, ptr %i.afw, align 4, !tbaa !65 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.afz = load float, ptr %i.afy, align 8, !tbaa !65 ; 2 uses
  %i.aga = fmul float %i.up, %i.afx
  %i.agb = call float @llvm.fmuladd.f32(float %i.un, float %i.afv, float %i.aga)
  %i.agc = call noundef float @llvm.fmuladd.f32(float %i.ut, float %i.afz, float %i.agb)
  %i.agd = insertelement <2 x float> poison, float %i.afx, i64 0
  %i.age = shufflevector <2 x float> %i.agd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agf = fmul <2 x float> %i.tz, %i.age
  %i.agg = insertelement <2 x float> poison, float %i.afv, i64 0
  %i.agh = shufflevector <2 x float> %i.agg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ud, <2 x float> %i.agh, <2 x float> %i.agf)
  %i.agj = insertelement <2 x float> poison, float %i.afz, i64 0
  %i.agk = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afm, <2 x float> %i.agk, <2 x float> %i.agi)
  %i.agm = fsub <2 x float> %i.afp, %i.agl
  %i.agn = fsub float %i.afs, %i.agc
  %.sroa.3.12.vec.insert.i313 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agn, i64 0
  store <2 x float> %i.agm, ptr %i.aft, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i313, ptr %.sroa.4477.0..sroa_idx, align 4, !tbaa !89
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.v, %bb.u
  %i.ago = phi i1 [ false, %bb.u ], [ true, %bb.v ], [ false, %._crit_edge ]
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !38
  %i.agr = icmp sgt i32 %i.agq, 1
  br i1 %i.agr, label %.lr.ph659, label %.loopexit

.lr.ph659:                                        ; preds = %.thread
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph659, %bb.aa
  %indvars.iv670 = phi i64 [ 1, %.lr.ph659 ], [ %indvars.iv.next671, %bb.aa ] ; 3 uses
  %i.agt = load ptr, ptr %i.tf, align 8, !tbaa !37 ; 2 uses
  %i.agu = getelementptr inbounds nuw [816 x i8], ptr %i.agt, i64 %indvars.iv670 ; 40 uses
  %i.agv = load ptr, ptr %i.ags, align 8, !tbaa !41
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %indvars.iv670
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !67
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [816 x i8], ptr %i.agt, i64 %i.agy ; 26 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agu, i64 292 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 164
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agu, i64 340 ; 2 uses
  %i.ahd = load float, ptr %i.ahb, align 4, !tbaa !65
  %i.ahe = load float, ptr %i.ahc, align 4, !tbaa !65 ; 3 uses
  %i.ahf = fadd float %i.ahd, %i.ahe              ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agz, i64 168
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !65
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agu, i64 344
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !65 ; 3 uses
  %i.ahk = fadd float %i.ahh, %i.ahj              ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agz, i64 172
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !65
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.agu, i64 348
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !65 ; 3 uses
  %i.ahp = fadd float %i.ahm, %i.aho              ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agu, i64 296 ; 2 uses
  %i.ahr = load <2 x float>, ptr %i.aha, align 4, !tbaa !65 ; 4 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agu, i64 300
  %i.aht = getelementptr inbounds nuw i8, ptr %i.agu, i64 308
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agu, i64 312
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agu, i64 316
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agu, i64 324
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.agu, i64 328
  %i.ahy = load <2 x float>, ptr %i.aht, align 4, !tbaa !65 ; 7 uses
  %i.ahz = load <2 x float>, ptr %i.ahu, align 4, !tbaa !65 ; 8 uses
  %i.aia = load float, ptr %i.ahv, align 4, !tbaa !65 ; 3 uses
  %i.aib = load <2 x float>, ptr %i.ahw, align 4, !tbaa !65 ; 6 uses
  %i.aic = extractelement <2 x float> %i.aib, i64 0 ; 5 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.agu, i64 332
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agu, i64 164
  %.sroa.4471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 172
  %i.aif = getelementptr inbounds nuw i8, ptr %i.agz, i64 244
  %i.aig = getelementptr inbounds nuw i8, ptr %i.agz, i64 260
  %i.aih = getelementptr inbounds nuw i8, ptr %i.agz, i64 276
  %i.aii = getelementptr inbounds nuw i8, ptr %i.agz, i64 248
  %i.aij = getelementptr inbounds nuw i8, ptr %i.agz, i64 264
  %i.aik = getelementptr inbounds nuw i8, ptr %i.agz, i64 280
  %i.ail = getelementptr inbounds nuw i8, ptr %i.agz, i64 252
  %i.aim = getelementptr inbounds nuw i8, ptr %i.agz, i64 268
  %i.ain = getelementptr inbounds nuw i8, ptr %i.agz, i64 284
  %i.aio = getelementptr inbounds nuw i8, ptr %i.agu, i64 244
  %i.aip = load <2 x float>, ptr %i.ahq, align 4, !tbaa !65 ; 8 uses
  %i.aiq = load float, ptr %i.ahs, align 4, !tbaa !65
  %i.air = insertelement <2 x float> poison, float %i.ahk, i64 0
  %i.ais = shufflevector <2 x float> %i.air, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ait = shufflevector <2 x float> %i.aip, <2 x float> %i.ahz, <2 x i32> <i32 0, i32 2>
  %i.aiu = fmul <2 x float> %i.ais, %i.ait
  %i.aiv = shufflevector <2 x float> %i.ahr, <2 x float> %i.ahy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aiw = insertelement <2 x float> poison, float %i.ahf, i64 0
  %i.aix = shufflevector <2 x float> %i.aiw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aiy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiv, <2 x float> %i.aix, <2 x float> %i.aiu)
  %i.aiz = insertelement <2 x float> poison, float %i.aiq, i64 0
  %i.aja = insertelement <2 x float> %i.aiz, float %i.aia, i64 1
  %i.ajb = insertelement <2 x float> poison, float %i.ahp, i64 0
  %i.ajc = shufflevector <2 x float> %i.ajb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aja, <2 x float> %i.ajc, <2 x float> %i.aiy)
  store <2 x float> %i.ajd, ptr %i.aie, align 4
  %i.aje = load <2 x float>, ptr %i.aif, align 4, !tbaa !65, !noalias !167 ; 2 uses
  %i.ajf = load <2 x float>, ptr %i.aig, align 4, !tbaa !65, !noalias !167 ; 3 uses
  %i.ajg = load <2 x float>, ptr %i.aih, align 4, !tbaa !65, !noalias !167 ; 2 uses
  %i.ajh = shufflevector <2 x float> %i.aip, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aji = shufflevector <2 x float> %i.ajf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajj = insertelement <4 x float> %i.aji, float 1.000000e+00, i64 3
  %i.ajk = shufflevector <2 x float> %i.aje, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajl = insertelement <4 x float> %i.ajk, float 0.000000e+00, i64 3
  %12 = shufflevector <2 x float> %i.ahr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %13 = insertelement <4 x float> %12, float -0.000000e+00, i64 3
  %i.ajm = shufflevector <2 x float> %i.ajg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajn = insertelement <4 x float> %i.ajm, float 0.000000e+00, i64 3
  %i.ajo = shufflevector <2 x float> %i.aip, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.agu, i64 260
  %i.ajq = load <2 x float>, ptr %i.aij, align 4, !tbaa !65, !noalias !167 ; 3 uses
  %i.ajr = load float, ptr %i.aim, align 4, !tbaa !65, !noalias !167
  %i.ajs = load <2 x float>, ptr %i.aii, align 4, !tbaa !65, !noalias !167 ; 2 uses
  %i.ajt = load float, ptr %i.ail, align 4, !tbaa !65, !noalias !167
  %i.aju = load <2 x float>, ptr %i.aik, align 4, !tbaa !65, !noalias !167 ; 2 uses
  %i.ajv = load float, ptr %i.ain, align 4, !tbaa !65, !noalias !167
  %i.ajw = shufflevector <2 x float> %i.ajq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ajx = shufflevector <4 x float> %i.ajj, <4 x float> %i.ajw, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ajy = fmul <4 x float> %i.ajh, %i.ajx
  %i.ajz = shufflevector <2 x float> %i.ajs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aka = shufflevector <4 x float> %i.ajl, <4 x float> %i.ajz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.akb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aka, <4 x float> %13, <4 x float> %i.ajy)
  %i.akc = shufflevector <2 x float> %i.aju, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.akd = shufflevector <4 x float> %i.ajn, <4 x float> %i.akc, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ake = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.ajo, <4 x float> %i.akb)
  %i.akf = shufflevector <2 x float> %i.ahz, <2 x float> %i.ajq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.akg = insertelement <4 x float> %i.akf, float 0.000000e+00, i64 3
  %i.akh = shufflevector <2 x float> %i.ajf, <2 x float> %i.ahz, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.aki = insertelement <4 x float> %i.akh, float 1.000000e+00, i64 3
  %i.akj = fmul <4 x float> %i.akg, %i.aki
  %i.akk = shufflevector <2 x float> %i.aje, <2 x float> %i.ajs, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.akl = insertelement <4 x float> %i.akk, float 0.000000e+00, i64 3 ; 2 uses
  %14 = shufflevector <2 x float> %i.ahy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %15 = insertelement <4 x float> %14, float -0.000000e+00, i64 3
  %i.akm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akl, <4 x float> %15, <4 x float> %i.akj)
  %i.akn = shufflevector <2 x float> %i.ajg, <2 x float> %i.aju, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ako = insertelement <4 x float> %i.akn, float 0.000000e+00, i64 3 ; 2 uses
  %i.akp = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.aia, i64 0
  %i.akq = shufflevector <4 x float> %i.akp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.akr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ako, <4 x float> %i.akq, <4 x float> %i.akm)
  store <4 x float> %i.ake, ptr %i.aio, align 4
  store <4 x float> %i.akr, ptr %i.ajp, align 4
  %i.aks = getelementptr inbounds nuw i8, ptr %i.agu, i64 276
  %i.akt = load <2 x float>, ptr %i.ahx, align 4, !tbaa !65 ; 5 uses
  %i.aku = load float, ptr %i.aid, align 4, !tbaa !65 ; 5 uses
  %i.akv = extractelement <2 x float> %i.akt, i64 0 ; 5 uses
  %i.akw = fmul float %i.ahk, %i.akv
  %i.akx = call float @llvm.fmuladd.f32(float %i.aic, float %i.ahf, float %i.akw)
  %i.aky = call noundef float @llvm.fmuladd.f32(float %i.aku, float %i.ahp, float %i.akx)
  %.sroa.3.12.vec.insert.i323 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aky, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i323, ptr %.sroa.4471.0..sroa_idx, align 4, !tbaa !89
  %i.akz = shufflevector <2 x float> %i.akt, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ala = shufflevector <2 x float> %i.ajf, <2 x float> %i.ajq, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.alb = insertelement <4 x float> %i.ala, float 1.000000e+00, i64 3
  %i.alc = insertelement <4 x float> %i.alb, float %i.ajr, i64 2
  %i.ald = fmul <4 x float> %i.akz, %i.alc
  %i.ale = insertelement <4 x float> %i.akl, float %i.ajt, i64 2
  %16 = shufflevector <2 x float> %i.aib, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %17 = insertelement <4 x float> %16, float -0.000000e+00, i64 3
  %i.alf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ale, <4 x float> %17, <4 x float> %i.ald)
  %i.alg = insertelement <4 x float> %i.ako, float %i.ajv, i64 2
  %i.alh = shufflevector <2 x float> %i.akt, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ali = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alg, <4 x float> %i.alh, <4 x float> %i.alf)
  store <4 x float> %i.ali, ptr %i.aks, align 4
  br i1 %.not228, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.alj = getelementptr inbounds nuw i8, ptr %i.agz, i64 212 ; 2 uses
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !65 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.agz, i64 216 ; 2 uses
  %i.alm = load float, ptr %i.all, align 4, !tbaa !65 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.agz, i64 220 ; 2 uses
  %i.alo = load float, ptr %i.aln, align 4, !tbaa !65 ; 2 uses
  %i.alp = extractelement <2 x float> %i.ahz, i64 0
  %i.alq = fmul float %i.akv, %i.alm
  %i.alr = call float @llvm.fmuladd.f32(float %i.aic, float %i.alk, float %i.alq)
  %i.als = call noundef float @llvm.fmuladd.f32(float %i.aku, float %i.alo, float %i.alr)
  %i.alt = getelementptr inbounds nuw i8, ptr %i.agu, i64 356
  %i.alu = shufflevector <2 x float> %i.ahr, <2 x float> %i.ahz, <2 x i32> <i32 1, i32 2>
  %i.alv = insertelement <2 x float> poison, float %i.alm, i64 0
  %i.alw = shufflevector <2 x float> %i.alv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.alx = fmul <2 x float> %i.alu, %i.alw
  %i.aly = shufflevector <2 x float> %i.ahr, <2 x float> %i.ahy, <2 x i32> <i32 0, i32 2>
  %i.alz = insertelement <2 x float> poison, float %i.alk, i64 0
  %i.ama = shufflevector <2 x float> %i.alz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aly, <2 x float> %i.ama, <2 x float> %i.alx)
  %i.amc = shufflevector <2 x float> %i.aip, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.amd = insertelement <2 x float> %i.amc, float %i.aia, i64 1 ; 2 uses
  %i.ame = insertelement <2 x float> poison, float %i.alo, i64 0
  %i.amf = shufflevector <2 x float> %i.ame, <2 x float> poison, <2 x i32> zeroinitializer
  %i.amg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amd, <2 x float> %i.amf, <2 x float> %i.amb)
  %i.amh = load <2 x float>, ptr %i.alt, align 4, !tbaa !65
  %i.ami = fadd <2 x float> %i.amh, %i.amg
  %i.amj = getelementptr inbounds nuw i8, ptr %i.agu, i64 364
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !65
  %i.aml = fadd float %i.als, %i.amk
  %.sroa.3.12.vec.insert.i333 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aml, i64 0
  %i.amm = getelementptr inbounds nuw i8, ptr %i.agu, i64 212
  store <2 x float> %i.ami, ptr %i.amm, align 4
  %.sroa.4464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 220
  store <2 x float> %.sroa.3.12.vec.insert.i333, ptr %.sroa.4464.0..sroa_idx, align 4, !tbaa !89
  %i.amn = getelementptr inbounds nuw i8, ptr %i.agz, i64 180
  %i.amo = load float, ptr %i.all, align 4, !tbaa !65 ; 2 uses
  %i.amp = load float, ptr %i.aln, align 4, !tbaa !65 ; 2 uses
  %i.amq = fneg float %i.ahj
  %i.amr = fmul float %i.amp, %i.amq
  %i.ams = call float @llvm.fmuladd.f32(float %i.amo, float %i.aho, float %i.amr)
  %i.amt = load float, ptr %i.alj, align 4, !tbaa !65 ; 2 uses
  %i.amu = fneg float %i.aho
  %i.amv = fmul float %i.amt, %i.amu
  %i.amw = call float @llvm.fmuladd.f32(float %i.amp, float %i.ahe, float %i.amv)
  %i.amx = fneg float %i.ahe
  %i.amy = fmul float %i.amo, %i.amx
  %i.amz = call float @llvm.fmuladd.f32(float %i.amt, float %i.ahj, float %i.amy)
  %i.ana = load float, ptr %i.amn, align 4, !tbaa !65
  %i.anb = fadd float %i.ana, %i.ams
  %i.anc = getelementptr inbounds nuw i8, ptr %i.agz, i64 184
  %i.and = load float, ptr %i.anc, align 4, !tbaa !65
  %i.ane = fadd float %i.and, %i.amw
  %i.anf = getelementptr inbounds nuw i8, ptr %i.agz, i64 188
  %i.ang = load float, ptr %i.anf, align 4, !tbaa !65
  %i.anh = fadd float %i.amz, %i.ang
  %i.ani = getelementptr inbounds nuw i8, ptr %i.agu, i64 372
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !65
  %i.ank = fadd float %i.anb, %i.anj              ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.agu, i64 376
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !65
  %i.ann = fadd float %i.ane, %i.anm              ; 3 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.agu, i64 380
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !65
  %i.anq = fadd float %i.anh, %i.anp              ; 2 uses
  %i.anr = fmul float %i.alp, %i.ann
  %i.ans = extractelement <2 x float> %i.aip, i64 0
  %i.ant = fmul float %i.ans, %i.ann
  %i.anu = insertelement <2 x float> poison, float %i.ank, i64 0
  %i.anv = shufflevector <2 x float> %i.anu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anw = insertelement <2 x float> poison, float %i.ant, i64 0
  %i.anx = insertelement <2 x float> %i.anw, float %i.anr, i64 1
  %i.any = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aiv, <2 x float> %i.anv, <2 x float> %i.anx)
  %i.anz = insertelement <2 x float> poison, float %i.anq, i64 0
  %i.aoa = shufflevector <2 x float> %i.anz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aob = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amd, <2 x float> %i.aoa, <2 x float> %i.any)
  %i.aoc = fmul float %i.akv, %i.ann
  %i.aod = call float @llvm.fmuladd.f32(float %i.aic, float %i.ank, float %i.aoc)
  %i.aoe = call noundef float @llvm.fmuladd.f32(float %i.aku, float %i.anq, float %i.aod)
  %.sroa.3.12.vec.insert.i353 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aoe, i64 0
  %i.aof = getelementptr inbounds nuw i8, ptr %i.agu, i64 180
  store <2 x float> %i.aob, ptr %i.aof, align 4
  %.sroa.4460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 188
  store <2 x float> %.sroa.3.12.vec.insert.i353, ptr %.sroa.4460.0..sroa_idx, align 4, !tbaa !89
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.ago, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aog = getelementptr inbounds nuw i8, ptr %i.agz, i64 228 ; 2 uses
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !65 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.agz, i64 232 ; 2 uses
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !65 ; 2 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.agz, i64 236 ; 2 uses
  %i.aol = load float, ptr %i.aok, align 4, !tbaa !65 ; 2 uses
  %i.aom = fmul float %i.aoj, %i.akv
  %i.aon = call float @llvm.fmuladd.f32(float %i.aic, float %i.aoh, float %i.aom)
  %i.aoo = call noundef float @llvm.fmuladd.f32(float %i.aku, float %i.aol, float %i.aon)
  %i.aop = getelementptr inbounds nuw i8, ptr %i.agu, i64 356
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.agz, i64 212
  %i.aor = getelementptr inbounds nuw i8, ptr %i.agz, i64 216
  %i.aos = getelementptr inbounds nuw i8, ptr %i.agz, i64 220
  %i.aot = getelementptr inbounds nuw i8, ptr %i.agu, i64 360
  %i.aou = load float, ptr %i.aop, align 4, !tbaa !65 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.agu, i64 388
  %i.aow = load <2 x float>, ptr %i.aha, align 4, !tbaa !65 ; 4 uses
  %i.aox = load float, ptr %i.ahq, align 4, !tbaa !65
  %i.aoy = insertelement <2 x float> poison, float %i.aoj, i64 0
  %i.aoz = shufflevector <2 x float> %i.aoy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apa = shufflevector <2 x float> %i.aow, <2 x float> %i.ahy, <2 x i32> <i32 1, i32 3>
  %i.apb = fmul <2 x float> %i.aoz, %i.apa
  %i.apc = shufflevector <2 x float> %i.aow, <2 x float> %i.ahy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.apd = insertelement <2 x float> poison, float %i.aoh, i64 0
  %i.ape = shufflevector <2 x float> %i.apd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apc, <2 x float> %i.ape, <2 x float> %i.apb)
  %i.apg = shufflevector <2 x float> %i.aip, <2 x float> %i.ahz, <2 x i32> <i32 1, i32 3>
  %i.aph = insertelement <2 x float> poison, float %i.aol, i64 0
  %i.api = shufflevector <2 x float> %i.aph, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apg, <2 x float> %i.api, <2 x float> %i.apf)
  %i.apk = shufflevector <2 x float> %i.aib, <2 x float> %i.aow, <2 x i32> <i32 1, i32 3>
  %i.apl = shufflevector <2 x float> %i.ahy, <2 x float> %i.aib, <2 x i32> <i32 1, i32 3>
  %i.apm = shufflevector <2 x float> %i.aib, <2 x float> %i.aow, <2 x i32> <i32 0, i32 2>
  %i.apn = shufflevector <2 x float> %i.ahy, <2 x float> %i.aib, <2 x i32> <i32 0, i32 2>
  %i.apo = shufflevector <2 x float> %i.akt, <2 x float> %i.aip, <2 x i32> <i32 1, i32 3>
  %i.app = shufflevector <2 x float> %i.ahz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.apq = shufflevector <2 x float> %i.app, <2 x float> %i.akt, <2 x i32> <i32 0, i32 3>
  %i.apr = load <2 x float>, ptr %i.aot, align 4, !tbaa !65 ; 3 uses
  %i.aps = shufflevector <2 x float> %i.apr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.apt = insertelement <2 x float> %i.aps, float %i.aou, i64 1
  %i.apu = extractelement <2 x float> %i.apr, i64 0
  %i.apv = load <2 x float>, ptr %i.aov, align 4, !tbaa !65
  %i.apw = getelementptr inbounds nuw i8, ptr %i.agu, i64 396
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !65
  %i.apy = getelementptr inbounds nuw i8, ptr %i.agu, i64 228
  %.sroa.4452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 236
  %i.apz = getelementptr inbounds nuw i8, ptr %i.agz, i64 196
  %i.aqa = load float, ptr %i.apz, align 4, !tbaa !65
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.agz, i64 200
  %i.aqc = load <2 x float>, ptr %i.aoq, align 4, !tbaa !65 ; 7 uses
  %i.aqd = shufflevector <2 x float> %i.aqc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aqe = fmul <2 x float> %i.apk, %i.aqd
  %i.aqf = fmul <2 x float> %i.apl, %i.aqd
  %i.aqg = shufflevector <2 x float> %i.aqc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apm, <2 x float> %i.aqg, <2 x float> %i.aqe)
  %i.aqi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apn, <2 x float> %i.aqg, <2 x float> %i.aqf)
  %i.aqj = load <3 x float>, ptr %i.ahc, align 4, !tbaa !65 ; 4 uses
  %i.aqk = shufflevector <3 x float> %i.aqj, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0>
  %i.aql = fneg <3 x float> %i.aqj                ; 3 uses
  %i.aqm = shufflevector <3 x float> %i.aql, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.aqn = extractelement <3 x float> %i.aql, i64 1
  %i.aqo = extractelement <3 x float> %i.aqj, i64 2
  %i.aqp = extractelement <3 x float> %i.aql, i64 0
  %i.aqq = extractelement <3 x float> %i.aqj, i64 1
  %i.aqr = extractelement <2 x float> %i.aqc, i64 0
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.agu, i64 372
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.agu, i64 380
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !65 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.agu, i64 376
  %i.aqw = load <2 x float>, ptr %i.aor, align 4, !tbaa !65 ; 5 uses
  %i.aqx = load float, ptr %i.aos, align 4, !tbaa !65 ; 2 uses
  %i.aqy = shufflevector <2 x float> %i.aqw, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aqz = load <2 x float>, ptr %i.aqb, align 4, !tbaa !65
  %i.ara = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apo, <2 x float> %i.aqy, <2 x float> %i.aqh) ; 2 uses
  %i.arb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apq, <2 x float> %i.aqy, <2 x float> %i.aqi) ; 2 uses
  %i.arc = fneg <2 x float> %i.arb
  %i.ard = fmul <2 x float> %i.apt, %i.arc
  %i.are = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apr, <2 x float> %i.ara, <2 x float> %i.ard)
  %i.arf = extractelement <2 x float> %i.ara, i64 1
  %i.arg = fneg float %i.arf
  %i.arh = fmul float %i.apu, %i.arg
  %i.ari = extractelement <2 x float> %i.arb, i64 0
  %i.arj = call float @llvm.fmuladd.f32(float %i.aou, float %i.ari, float %i.arh)
  %i.ark = fsub <2 x float> %i.apj, %i.are
  %i.arl = fsub float %i.aoo, %i.arj
  %i.arm = fadd <2 x float> %i.apv, %i.ark
  %i.arn = fadd float %i.arl, %i.apx
  %.sroa.3.12.vec.insert.i378 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.arn, i64 0
  store <2 x float> %i.arm, ptr %i.apy, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i378, ptr %.sroa.4452.0..sroa_idx, align 4, !tbaa !89
  %i.aro = load float, ptr %i.aok, align 4, !tbaa !65 ; 2 uses
  %i.arp = fmul float %i.aro, %i.aqn
  %i.arq = load <2 x float>, ptr %i.aog, align 4, !tbaa !65 ; 2 uses
  %i.arr = load float, ptr %i.aoi, align 4, !tbaa !65
  %i.ars = call float @llvm.fmuladd.f32(float %i.arr, float %i.aqo, float %i.arp)
  %i.art = fadd float %i.ars, %i.aqa
  %i.aru = shufflevector <2 x float> %i.arq, <2 x float> %i.aqc, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.arv = shufflevector <2 x float> %i.aqw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.arw = shufflevector <4 x float> %i.aru, <4 x float> %i.arv, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.arx = fmul <4 x float> %i.arw, %i.aqm
  %i.ary = shufflevector <2 x float> %i.arq, <2 x float> %i.aqc, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.arz = insertelement <4 x float> %i.ary, float %i.aro, i64 2
  %i.asa = shufflevector <4 x float> %i.arz, <4 x float> %i.arv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.asb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.asa, <4 x float> %i.aqk, <4 x float> %i.arx) ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE:bb.a
  %i.aby = extractelement <4 x float> %i.abx, i64 0
  %i.abz = call noundef float @llvm.fmuladd.f32(float %i.aaw, float %i.zo, float %i.aby) ; 2 uses
  %i.aca = extractelement <4 x float> %i.abx, i64 1
  %i.acb = call noundef float @llvm.fmuladd.f32(float %i.aaw, float %i.zp, float %i.aca) ; 2 uses
  %i.acc = extractelement <4 x float> %i.abx, i64 2
  %i.acd = call noundef float @llvm.fmuladd.f32(float %i.abj, float %i.zo, float %i.acc) ; 2 uses
  %i.ace = extractelement <4 x float> %i.abx, i64 3
  %i.acf = call noundef float @llvm.fmuladd.f32(float %i.abi, float %i.zo, float %i.ace) ; 2 uses
  %i.acg = shufflevector <2 x float> %i.yy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ach = insertelement <2 x float> %i.acg, float %i.zb, i64 1
  %i.aci = shufflevector <2 x float> %i.ach, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.acj = shufflevector <3 x float> %i.abk, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ack = insertelement <2 x float> %i.acj, float %i.abm, i64 0
  %i.acl = shufflevector <2 x float> %i.ack, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.acm = fmul <4 x float> %i.aci, %i.acl
  %i.acn = shufflevector <3 x float> %i.abq, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.aco = insertelement <2 x float> %i.acn, float %i.abs, i64 0
  %i.acp = shufflevector <2 x float> %i.aco, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.acq = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.acr = insertelement <2 x float> %i.acq, float %i.za, i64 1
  %i.acs = shufflevector <2 x float> %i.acr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.act = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acp, <4 x float> %i.acs, <4 x float> %i.acm) ; 4 uses
  %i.acu = extractelement <4 x float> %i.act, i64 0
  %i.acv = call noundef float @llvm.fmuladd.f32(float %i.abj, float %i.zp, float %i.acu) ; 2 uses
  %i.acw = extractelement <4 x float> %i.act, i64 2
  %i.acx = call noundef float @llvm.fmuladd.f32(float %i.abi, float %i.zp, float %i.acw) ; 2 uses
  %i.acy = extractelement <4 x float> %i.act, i64 1
  %i.acz = call noundef float @llvm.fmuladd.f32(float %i.abj, float %i.zc, float %i.acy) ; 2 uses
  %i.ada = extractelement <4 x float> %i.act, i64 3
  %i.adb = call noundef float @llvm.fmuladd.f32(float %i.abi, float %i.zc, float %i.ada) ; 2 uses
  %i.adc = fmul float %i.acx, %i.aay
  %i.add = call float @llvm.fmuladd.f32(float %i.aax, float %i.acv, float %i.adc)
  %i.ade = call noundef float @llvm.fmuladd.f32(float %i.aaz, float %i.acb, float %i.add)
  %i.adf = fmul float %i.adb, %i.aay
  %i.adg = call float @llvm.fmuladd.f32(float %i.aax, float %i.acz, float %i.adf)
  %i.adh = call noundef float @llvm.fmuladd.f32(float %i.aaz, float %i.abv, float %i.adg)
  %i.adi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.abb, i64 2
  %i.adj = shufflevector <2 x float> %i.abh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adk = shufflevector <4 x float> %i.adj, <4 x float> %i.adi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adl = fadd float %i.adh, %i.abc
  %i.adm = load <2 x float>, ptr %i.xx, align 8, !tbaa !65
  %i.adn = load <2 x float>, ptr %i.yr, align 4, !tbaa !65, !noalias !208 ; 4 uses
  %i.ado = load <2 x float>, ptr %i.ys, align 4, !tbaa !65, !noalias !208 ; 4 uses
  %i.adp = load <2 x float>, ptr %i.yt, align 4, !tbaa !65, !noalias !208 ; 4 uses
  %i.adq = extractelement <2 x float> %i.ado, i64 0
  %i.adr = fmul float %i.acf, %i.adq
  %i.ads = extractelement <2 x float> %i.adn, i64 0
  %i.adt = call float @llvm.fmuladd.f32(float %i.ads, float %i.acd, float %i.adr)
  %i.adu = insertelement <2 x float> poison, float %i.acf, i64 0
  %i.adv = shufflevector <2 x float> %i.adu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adw = shufflevector <2 x float> %i.ado, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.adx = insertelement <2 x float> %i.adw, float %i.aay, i64 1
  %i.ady = fmul <2 x float> %i.adv, %i.adx
  %i.adz = shufflevector <2 x float> %i.adn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aea = insertelement <2 x float> %i.adz, float %i.aax, i64 1
  %i.aeb = insertelement <2 x float> poison, float %i.acd, i64 0
  %i.aec = shufflevector <2 x float> %i.aeb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aea, <2 x float> %i.aec, <2 x float> %i.ady)
  %i.aee = shufflevector <2 x float> %i.adp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aef = insertelement <2 x float> %i.aee, float %i.aaz, i64 1
  %i.aeg = insertelement <2 x float> poison, float %i.abz, i64 0
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aef, <2 x float> %i.aeh, <2 x float> %i.aed)
  %i.aej = extractelement <2 x float> %i.adp, i64 0
  %i.aek = call noundef float @llvm.fmuladd.f32(float %i.aej, float %i.abz, float %i.adt)
  %i.ael = insertelement <2 x float> poison, float %i.acx, i64 0
  %i.aem = shufflevector <2 x float> %i.ael, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aen = fmul <2 x float> %i.aem, %i.ado
  %i.aeo = insertelement <2 x float> poison, float %i.acv, i64 0
  %i.aep = shufflevector <2 x float> %i.aeo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aeq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adn, <2 x float> %i.aep, <2 x float> %i.aen)
  %i.aer = insertelement <2 x float> poison, float %i.acb, i64 0
  %i.aes = shufflevector <2 x float> %i.aer, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aet = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adp, <2 x float> %i.aes, <2 x float> %i.aeq)
  %i.aeu = insertelement <2 x float> poison, float %i.adb, i64 0
  %i.aev = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aew = fmul <2 x float> %i.aev, %i.ado
  %i.aex = insertelement <2 x float> poison, float %i.acz, i64 0
  %i.aey = shufflevector <2 x float> %i.aex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aez = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adn, <2 x float> %i.aey, <2 x float> %i.aew)
  %i.afa = insertelement <2 x float> poison, float %i.abv, i64 0
  %i.afb = shufflevector <2 x float> %i.afa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adp, <2 x float> %i.afb, <2 x float> %i.aez)
  %i.afd = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.aek, i64 0
  %i.afe = shufflevector <2 x float> %i.aei, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aff = shufflevector <4 x float> %i.afd, <4 x float> %i.afe, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.afg = fadd <4 x float> %i.abg, %i.aff
  %i.afh = shufflevector <2 x float> %i.aet, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.afi = insertelement <4 x float> %i.afh, float -0.000000e+00, i64 3
  %i.afj = insertelement <4 x float> %i.afi, float %i.ade, i64 2
  %i.afk = fadd <4 x float> %i.adk, %i.afj
  %i.afl = fadd <2 x float> %i.afc, %i.adm
  store <4 x float> %i.afg, ptr %i.xt, align 8, !tbaa !65
  store <4 x float> %i.afk, ptr %i.xv, align 8, !tbaa !65
  store <2 x float> %i.afl, ptr %i.xx, align 8, !tbaa !65
  store float %i.adl, ptr %i.yg, align 8, !tbaa !65
  store float 0.000000e+00, ptr %i.yh, align 4, !tbaa !65
  %i.afm = load float, ptr %i.zd, align 4, !tbaa !201
  %i.afn = fcmp ogt float %i.afm, 0.000000e+00
  br i1 %i.afn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.afo = load float, ptr %i.zh, align 4, !tbaa !65 ; 2 uses
  %i.afp = load float, ptr %i.zj, align 4, !tbaa !65 ; 2 uses
  %i.afq = load float, ptr %i.zm, align 4, !tbaa !65 ; 2 uses
  %i.afr = fmul float %i.zb, %i.afp
  %i.afs = call float @llvm.fmuladd.f32(float %i.za, float %i.afo, float %i.afr)
  %i.aft = call noundef float @llvm.fmuladd.f32(float %i.zc, float %i.afq, float %i.afs)
  %i.afu = load float, ptr %i.zd, align 4, !tbaa !65
  %i.afv = fdiv float 1.000000e+00, %i.afu        ; 2 uses
  %i.afw = insertelement <2 x float> poison, float %i.afp, i64 0
  %i.afx = shufflevector <2 x float> %i.afw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afy = fmul <2 x float> %i.yy, %i.afx
  %i.afz = insertelement <2 x float> poison, float %i.afo, i64 0
  %i.aga = shufflevector <2 x float> %i.afz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yx, <2 x float> %i.aga, <2 x float> %i.afy)
  %i.agc = insertelement <2 x float> poison, float %i.afq, i64 0
  %i.agd = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.age = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yz, <2 x float> %i.agd, <2 x float> %i.agb)
  %i.agf = insertelement <2 x float> poison, float %i.afv, i64 0
  %i.agg = shufflevector <2 x float> %i.agf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agh = fmul <2 x float> %i.age, %i.agg
  %i.agi = fmul float %i.afv, %i.aft
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agi, i64 0
  store <2 x float> %i.agh, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4469.0..sroa_idx, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN24btInverseDynamicsBullet313tildeOperatorERKNS_4vec3E(ptr dead_on_unwind nonnull writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4 %14, ptr noundef nonnull align 4 dereferenceable(16) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.agj = load <2 x float>, ptr %i.zt, align 4, !tbaa !65
  %i.agk = load <2 x float>, ptr %13, align 8, !tbaa !65
  %i.agl = fadd <2 x float> %i.agj, %i.agk
  %i.agm = load float, ptr %i.zv, align 4, !tbaa !65
  %i.agn = load float, ptr %.sroa.4469.0..sroa_idx, align 8, !tbaa !65
  %i.ago = fadd float %i.agm, %i.agn
  %.sroa.3.12.vec.insert.i245 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ago, i64 0
  store <2 x float> %i.agl, ptr %16, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i245, ptr %.sroa.4465.0..sroa_idx, align 8, !tbaa !89
  call void @_ZN24btInverseDynamicsBullet313tildeOperatorERKNS_4vec3E(ptr dead_on_unwind nonnull writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4 %15, ptr noundef nonnull align 4 dereferenceable(16) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.agp = load float, ptr %i.zd, align 4, !tbaa !65, !noalias !211
  %i.agq = load float, ptr %i.ye, align 8, !tbaa !65
  %i.agr = load float, ptr %i.yf, align 8, !tbaa !65
  %i.ags = load float, ptr %i.yg, align 8, !tbaa !65
  %i.agt = load <2 x float>, ptr %14, align 8, !tbaa !65, !noalias !216 ; 3 uses
  %i.agu = load <2 x float>, ptr %i.wh, align 8, !tbaa !65, !noalias !216 ; 4 uses
  %i.agv = load <2 x float>, ptr %i.wj, align 8, !tbaa !65, !noalias !216 ; 3 uses
  %i.agw = shufflevector <2 x float> %i.agu, <2 x float> %i.agt, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.agx = insertelement <4 x float> %i.agw, float 1.000000e+00, i64 3
  %i.agy = shufflevector <2 x float> %i.agt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.agz = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.agy, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.aha = shufflevector <2 x float> %i.agu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ahb = shufflevector <4 x float> %i.agz, <4 x float> %i.aha, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ahc = insertelement <4 x float> %i.agy, float 0.000000e+00, i64 3
  %i.ahd = shufflevector <2 x float> %i.agv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahe = insertelement <4 x float> %i.ahd, float 0.000000e+00, i64 3
  %i.ahf = load <2 x float>, ptr %15, align 8, !tbaa !65, !noalias !219 ; 3 uses
  %i.ahg = load <2 x float>, ptr %i.wp, align 8, !tbaa !65, !noalias !219 ; 4 uses
  %i.ahh = load <2 x float>, ptr %i.wr, align 8, !tbaa !65, !noalias !219 ; 3 uses
  %i.ahi = shufflevector <2 x float> %i.ahg, <2 x float> %i.ahf, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ahj = insertelement <4 x float> %i.ahi, float 0.000000e+00, i64 3
  %i.ahk = shufflevector <2 x float> %i.ahf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.ahl = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ahk, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ahm = shufflevector <2 x float> %i.ahg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ahn = shufflevector <4 x float> %i.ahl, <4 x float> %i.ahm, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.aho = insertelement <4 x float> %i.ahk, float 0.000000e+00, i64 3
  %i.ahp = shufflevector <2 x float> %i.ahh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahq = insertelement <4 x float> %i.ahp, float 0.000000e+00, i64 3
  %i.ahr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.agp, i64 0
  %i.ahs = shufflevector <4 x float> %i.ahr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %i.aht = load <2 x float>, ptr %i.xt, align 8, !tbaa !65
  %i.ahu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.agq, i64 2
  %i.ahv = shufflevector <2 x float> %i.aht, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahw = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ahx = load <2 x float>, ptr %i.xv, align 8, !tbaa !65
  %i.ahy = load <2 x float>, ptr %i.wi, align 4, !tbaa !65, !noalias !216 ; 2 uses
  %i.ahz = load float, ptr %i.wk, align 8, !tbaa !65, !noalias !216
  %i.aia = load <2 x float>, ptr %i.wl, align 4, !tbaa !65, !noalias !216 ; 3 uses
  %i.aib = load float, ptr %i.wn, align 8, !tbaa !65, !noalias !216
  %i.aic = load <2 x float>, ptr %i.wm, align 4, !tbaa !65, !noalias !216 ; 3 uses
  %i.aid = load float, ptr %i.wo, align 8, !tbaa !65, !noalias !216
  %i.aie = shufflevector <2 x float> %i.aia, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aif = shufflevector <4 x float> %i.ahb, <4 x float> %i.aie, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aig = fmul <4 x float> %i.agx, %i.aif
  %i.aih = shufflevector <2 x float> %i.ahy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aii = shufflevector <4 x float> %i.ahc, <4 x float> %i.aih, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aij = shufflevector <4 x float> %i.agy, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.aik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aii, <4 x float> %i.aij, <4 x float> %i.aig)
  %i.ail = shufflevector <2 x float> %i.aic, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aim = shufflevector <4 x float> %i.ahe, <4 x float> %i.ail, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ain = shufflevector <4 x float> %i.aih, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.aio = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aim, <4 x float> %i.ain, <4 x float> %i.aik)
  %i.aip = shufflevector <2 x float> %i.aia, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aiq = shufflevector <2 x float> %i.agu, <2 x float> %i.aia, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.air = insertelement <4 x float> %i.aiq, float 1.000000e+00, i64 3 ; 2 uses
  %i.ais = fmul <4 x float> %i.aip, %i.air
  %i.ait = shufflevector <2 x float> %i.agt, <2 x float> %i.ahy, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aiu = insertelement <4 x float> %i.ait, float 0.000000e+00, i64 3 ; 2 uses
  %21 = shufflevector <2 x float> %i.agu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %22 = insertelement <4 x float> %21, float -0.000000e+00, i64 3
  %i.aiv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiu, <4 x float> %22, <4 x float> %i.ais)
  %i.aiw = shufflevector <2 x float> %i.agv, <2 x float> %i.aic, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aix = insertelement <4 x float> %i.aiw, float 0.000000e+00, i64 3 ; 2 uses
  %i.aiy = shufflevector <4 x float> %i.aiq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.aiz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aix, <4 x float> %i.aiy, <4 x float> %i.aiv)
  %i.aja = load <2 x float>, ptr %i.wq, align 4, !tbaa !65, !noalias !219 ; 2 uses
  %i.ajb = load float, ptr %i.ws, align 8, !tbaa !65, !noalias !219
  %i.ajc = load <2 x float>, ptr %i.wt, align 4, !tbaa !65, !noalias !219 ; 3 uses
  %i.ajd = load float, ptr %i.wv, align 8, !tbaa !65, !noalias !219
  %i.aje = load <2 x float>, ptr %i.wu, align 4, !tbaa !65, !noalias !219 ; 3 uses
  %i.ajf = load float, ptr %i.ww, align 8, !tbaa !65, !noalias !219
  %i.ajg = shufflevector <2 x float> %i.ajc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ajh = shufflevector <4 x float> %i.ahn, <4 x float> %i.ajg, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.aji = fmul <4 x float> %i.ahj, %i.ajh
  %i.ajj = shufflevector <2 x float> %i.aja, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ajk = shufflevector <4 x float> %i.aho, <4 x float> %i.ajj, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ajl = shufflevector <4 x float> %i.ahk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ajm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajk, <4 x float> %i.ajl, <4 x float> %i.aji)
  %i.ajn = shufflevector <2 x float> %i.aje, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ajo = shufflevector <4 x float> %i.ahq, <4 x float> %i.ajn, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ajp = shufflevector <4 x float> %i.ajj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ajq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajo, <4 x float> %i.ajp, <4 x float> %i.ajm)
  %i.ajr = shufflevector <2 x float> %i.ajc, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ajs = shufflevector <2 x float> %i.ahg, <2 x float> %i.ajc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.ajt = insertelement <4 x float> %i.ajs, float 1.000000e+00, i64 3 ; 2 uses
  %i.aju = fmul <4 x float> %i.ajr, %i.ajt
  %i.ajv = shufflevector <2 x float> %i.ahf, <2 x float> %i.aja, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ajw = insertelement <4 x float> %i.ajv, float 0.000000e+00, i64 3 ; 2 uses
  %23 = shufflevector <2 x float> %i.ahg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %24 = insertelement <4 x float> %23, float -0.000000e+00, i64 3
  %i.ajx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajw, <4 x float> %24, <4 x float> %i.aju)
  %i.ajy = shufflevector <2 x float> %i.ahh, <2 x float> %i.aje, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ajz = insertelement <4 x float> %i.ajy, float 0.000000e+00, i64 3 ; 2 uses
  %i.aka = shufflevector <4 x float> %i.ajs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.akb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajz, <4 x float> %i.aka, <4 x float> %i.ajx)
  %i.akc = fsub <4 x float> %i.aio, %i.ajq
  %i.akd = fsub <4 x float> %i.aiz, %i.akb
  %i.ake = fmul <4 x float> %i.ahs, %i.akc
  %i.akf = fmul <4 x float> %i.ahs, %i.akd
  %i.akg = fadd <4 x float> %i.ahw, %i.ake
  %i.akh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.agr, i64 2
  %i.aki = shufflevector <2 x float> %i.ahx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akj = shufflevector <4 x float> %i.aki, <4 x float> %i.akh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.akk = fadd <4 x float> %i.akj, %i.akf
  store <4 x float> %i.akg, ptr %i.xt, align 8, !tbaa !65
  store <4 x float> %i.akk, ptr %i.xv, align 8, !tbaa !65
  %i.akl = load <2 x float>, ptr %i.xx, align 8, !tbaa !65
  %25 = shufflevector <2 x float> %i.aic, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %26 = insertelement <4 x float> %25, float 1.000000e+00, i64 3
  %i.akm = insertelement <4 x float> %i.air, float %i.aib, i64 2
  %i.akn = fmul <4 x float> %26, %i.akm
  %i.ako = insertelement <4 x float> %i.aiu, float %i.ahz, i64 2
  %27 = shufflevector <2 x float> %i.agv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %28 = insertelement <4 x float> %27, float -0.000000e+00, i64 3
  %i.akp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ako, <4 x float> %28, <4 x float> %i.akn)
  %i.akq = insertelement <4 x float> %i.aix, float %i.aid, i64 2 ; 2 uses
  %i.akr = shufflevector <4 x float> %i.akq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.aks = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akq, <4 x float> %i.akr, <4 x float> %i.akp)
  %29 = shufflevector <2 x float> %i.aje, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %30 = insertelement <4 x float> %29, float 0.000000e+00, i64 3
  %i.akt = insertelement <4 x float> %i.ajt, float %i.ajd, i64 2
  %i.aku = fmul <4 x float> %30, %i.akt
  %i.akv = insertelement <4 x float> %i.ajw, float %i.ajb, i64 2
  %31 = shufflevector <2 x float> %i.ahh, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %32 = insertelement <4 x float> %31, float -0.000000e+00, i64 3
  %i.akw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akv, <4 x float> %32, <4 x float> %i.aku)
  %i.akx = insertelement <4 x float> %i.ajz, float %i.ajf, i64 2 ; 2 uses
  %i.aky = shufflevector <4 x float> %i.akx, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.akz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akx, <4 x float> %i.aky, <4 x float> %i.akw)
  %i.ala = fsub <4 x float> %i.aks, %i.akz
  %i.alb = fmul <4 x float> %i.ahs, %i.ala
  %i.alc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ags, i64 2
  %i.ald = shufflevector <2 x float> %i.akl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ale = shufflevector <4 x float> %i.ald, <4 x float> %i.alc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.alf = fadd <4 x float> %i.ale, %i.alb
  store <4 x float> %i.alf, ptr %i.xx, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %i.alg = load ptr, ptr %i.wg, align 8, !tbaa !45 ; 2 uses
  %i.alh = getelementptr inbounds nuw [32 x i8], ptr %i.alg, i64 %indvars.iv.next711
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 4
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !42
  %i.alk = sext i32 %i.alj to i64
  %i.all = icmp slt i64 %indvars.iv.next708, %i.alk
  br i1 %i.all, label %bb.k, label %.loopexit632, !llvm.loop !222

._crit_edge687:                                   ; preds = %._crit_edge682, %.loopexit634, %._crit_edge659
  br i1 %4, label %.preheader630, label %.loopexit

.preheader630:                                    ; preds = %._crit_edge687
  %i.alm = load i32, ptr %i.c, align 4, !tbaa !35 ; 2 uses
  %i.aln = icmp sgt i32 %i.alm, 0
  br i1 %i.aln, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader630
  %i.alo = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.alp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count724 = zext nneg i32 %i.alm to i64
  br label %.preheader

bb.n:                                             ; preds = %.lr.ph686, %._crit_edge682
  %indvars.iv713 = phi i64 [ %i.xl, %.lr.ph686 ], [ %indvars.iv.next714, %._crit_edge682 ] ; 2 uses
  %indvars.iv.next714 = add nsw i64 %indvars.iv713, -1 ; 4 uses
  %i.alq = load ptr, ptr %i.xa, align 8, !tbaa !37
  %i.alr = getelementptr inbounds nuw [816 x i8], ptr %i.alq, i64 %indvars.iv.next714 ; 17 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 536
  %i.alt = load i32, ptr %i.als, align 8, !tbaa !100 ; 8 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alr, i64 420 ; 5 uses
  %.val207 = load i32, ptr %i.alu, align 4, !tbaa !97
  switch i32 %.val207, label %bb.q [
    i32 0, label %_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit
    i32 1, label %.lr.ph681
    i32 2, label %.lr.ph681
    i32 3, label %bb.o
    i32 4, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  br label %.lr.ph681

bb.p:                                             ; preds = %bb.n
  br label %.lr.ph681

bb.q:                                             ; preds = %bb.n
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 766)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.36)
  call void @abort() #18
  unreachable

_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  br label %._crit_edge682

.lr.ph681:                                        ; preds = %bb.n, %bb.n, %bb.p, %bb.o
  %.0.i.ph = phi i32 [ 6, %bb.o ], [ 3, %bb.p ], [ 1, %bb.n ], [ 1, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %i.alv, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alr, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.alw, i64 16, i1 false)
  %i.alx = add nsw i32 %.0.i.ph, %i.alt
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alr, i64 560
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alr, i64 564
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alr, i64 568
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alr, i64 576
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alr, i64 580
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alr, i64 584
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alr, i64 592
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alr, i64 596
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alr, i64 600
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alr, i64 544
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alr, i64 548
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alr, i64 552
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alr, i64 540
  %i.aml = trunc nuw nsw i64 %indvars.iv.next714 to i32
  br label %bb.r

.loopexit631:                                     ; preds = %._crit_edge668, %._crit_edge663
  %.not204.not = icmp sgt i32 %.0191680, %i.alt
  br i1 %.not204.not, label %bb.r, label %._crit_edge682, !llvm.loop !223

._crit_edge682:                                   ; preds = %.loopexit631, %_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.amm = icmp sgt i64 %indvars.iv713, 1
  br i1 %i.amm, label %bb.n, label %._crit_edge687, !llvm.loop !224

bb.r:                                             ; preds = %.lr.ph681, %.loopexit631
  %.0191.in679 = phi i32 [ %i.alx, %.lr.ph681 ], [ %.0191680, %.loopexit631 ] ; 2 uses
  %.0191680 = add nsw i32 %.0191.in679, -1        ; 8 uses
  %i.amn = load i32, ptr %i.alu, align 4, !tbaa !107 ; 2 uses
  %i.amo = icmp eq i32 %i.amn, 3
  br i1 %i.amo, label %bb.s, label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit

bb.s:                                             ; preds = %bb.r
  %i.amp = sub nsw i32 %.0191680, %i.alt
  switch i32 %i.amp, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !65
  store float 0.000000e+00, ptr %i.xe, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.u:                                             ; preds = %bb.s
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %17, align 16, !tbaa !65
  store float 0.000000e+00, ptr %i.xe, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.v:                                             ; preds = %bb.s
  store <2 x float> zeroinitializer, ptr %17, align 16, !tbaa !65
  store float 1.000000e+00, ptr %i.xe, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.w:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %18, align 8, !tbaa !65
  store float 0.000000e+00, ptr %i.xc, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.x:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %18, align 8, !tbaa !65
  store float 0.000000e+00, ptr %i.xc, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.y:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !65
  store float 1.000000e+00, ptr %i.xc, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split: ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.pr = load i32, ptr %i.alu, align 4, !tbaa !107
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit

_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit: ; preds = %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split, %bb.r
  %i.amq = phi i32 [ %.pr, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split ], [ %i.amn, %bb.r ]
  %i.amr = icmp eq i32 %i.amq, 4
  br i1 %i.amr, label %bb.z, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

bb.z:                                             ; preds = %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit
  %i.ams = sub nsw i32 %.0191680, %i.alt          ; 4 uses
  %i.amt = icmp ult i32 %i.ams, 3
  br i1 %i.amt, label %switch.lookup, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

switch.lookup:                                    ; preds = %bb.z
  %i.amu = zext nneg i32 %i.ams to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.7, i64 %i.amu
  %switch.load = load float, ptr %switch.gep, align 4
  %i.amv = zext nneg i32 %i.ams to i64
  %switch.gep748 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.8, i64 %i.amv
  %switch.load749 = load float, ptr %switch.gep748, align 4
  %i.amw = zext nneg i32 %i.ams to i64
  %switch.gep750 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.9, i64 %i.amw
  %switch.load751 = load float, ptr %switch.gep750, align 4
  store float %switch.load, ptr %17, align 16, !tbaa !65
  store float %switch.load749, ptr %i.xd, align 4, !tbaa !65
  store float %switch.load751, ptr %i.xe, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit: ; preds = %bb.z, %bb.s, %switch.lookup, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit
  %i.amx = load float, ptr %i.aly, align 8, !tbaa !65
  %i.amy = load float, ptr %i.alz, align 4, !tbaa !65
  %i.amz = load float, ptr %i.ama, align 8, !tbaa !65
  %i.ana = load float, ptr %i.amb, align 8, !tbaa !65
  %i.anb = load float, ptr %i.amc, align 4, !tbaa !65
  %i.anc = load float, ptr %i.amd, align 8, !tbaa !65
  %i.and = load float, ptr %i.ame, align 8, !tbaa !65
end_hunk_1
