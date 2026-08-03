inline.NumInlined: 1044
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE:bb.a
  %i.afq = load float, ptr %i.zr, align 4, !tbaa !65 ; 2 uses
  %i.afr = fmul float %i.zf, %i.afp
  %i.afs = call float @llvm.fmuladd.f32(float %i.ze, float %i.afo, float %i.afr)
  %i.aft = call noundef float @llvm.fmuladd.f32(float %i.zg, float %i.afq, float %i.afs)
  %i.afu = load float, ptr %i.zh, align 4, !tbaa !65
  %i.afv = fdiv float 1.000000e+00, %i.afu        ; 2 uses
  %i.afw = insertelement <2 x float> poison, float %i.afp, i64 0
  %i.afx = shufflevector <2 x float> %i.afw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afy = fmul <2 x float> %i.zc, %i.afx
  %i.afz = insertelement <2 x float> poison, float %i.afo, i64 0
  %i.aga = shufflevector <2 x float> %i.afz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zb, <2 x float> %i.aga, <2 x float> %i.afy)
  %i.agc = insertelement <2 x float> poison, float %i.afq, i64 0
  %i.agd = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.age = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zd, <2 x float> %i.agd, <2 x float> %i.agb)
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
  %i.agj = load <2 x float>, ptr %i.aaa, align 4, !tbaa !65
  %i.agk = load <2 x float>, ptr %13, align 8, !tbaa !65
  %i.agl = fadd <2 x float> %i.agj, %i.agk
  %i.agm = load float, ptr %i.aac, align 4, !tbaa !65
  %i.agn = load float, ptr %.sroa.4469.0..sroa_idx, align 8, !tbaa !65
  %i.ago = fadd float %i.agm, %i.agn
  %.sroa.3.12.vec.insert.i245 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ago, i64 0
  store <2 x float> %i.agl, ptr %16, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i245, ptr %.sroa.4465.0..sroa_idx, align 8, !tbaa !89
  call void @_ZN24btInverseDynamicsBullet313tildeOperatorERKNS_4vec3E(ptr dead_on_unwind nonnull writable sret(%"class.btInverseDynamicsBullet3::mat33") align 4 %15, ptr noundef nonnull align 4 dereferenceable(16) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.agp = load float, ptr %i.zh, align 4, !tbaa !65, !noalias !211
  %i.agq = load float, ptr %i.yi, align 8, !tbaa !65
  %i.agr = load float, ptr %i.yj, align 8, !tbaa !65
  %i.ags = load float, ptr %i.yk, align 8, !tbaa !65
  %i.agt = load <2 x float>, ptr %14, align 8, !tbaa !65, !noalias !216 ; 3 uses
  %i.agu = load <2 x float>, ptr %i.wl, align 8, !tbaa !65, !noalias !216 ; 4 uses
  %i.agv = load <2 x float>, ptr %i.wn, align 8, !tbaa !65, !noalias !216 ; 3 uses
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
  %i.ahg = load <2 x float>, ptr %i.wt, align 8, !tbaa !65, !noalias !219 ; 4 uses
  %i.ahh = load <2 x float>, ptr %i.wv, align 8, !tbaa !65, !noalias !219 ; 3 uses
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
  %i.aht = load <2 x float>, ptr %i.xx, align 8, !tbaa !65
  %i.ahu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.agq, i64 2
  %i.ahv = shufflevector <2 x float> %i.aht, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahw = shufflevector <4 x float> %i.ahv, <4 x float> %i.ahu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ahx = load <2 x float>, ptr %i.xz, align 8, !tbaa !65
  %i.ahy = load <2 x float>, ptr %i.wm, align 4, !tbaa !65, !noalias !216 ; 2 uses
  %i.ahz = load float, ptr %i.wo, align 8, !tbaa !65, !noalias !216
  %i.aia = load <2 x float>, ptr %i.wp, align 4, !tbaa !65, !noalias !216 ; 3 uses
  %i.aib = load float, ptr %i.wr, align 8, !tbaa !65, !noalias !216
  %i.aic = load <2 x float>, ptr %i.wq, align 4, !tbaa !65, !noalias !216 ; 3 uses
  %i.aid = load float, ptr %i.ws, align 8, !tbaa !65, !noalias !216
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
  %i.aiv = shufflevector <2 x float> %i.agu, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aiw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiu, <4 x float> %i.aiv, <4 x float> %i.ais)
  %i.aix = shufflevector <2 x float> %i.agv, <2 x float> %i.aic, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.aiy = insertelement <4 x float> %i.aix, float 0.000000e+00, i64 3 ; 2 uses
  %i.aiz = shufflevector <4 x float> %i.aiq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.aja = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiy, <4 x float> %i.aiz, <4 x float> %i.aiw)
  %i.ajb = load <2 x float>, ptr %i.wu, align 4, !tbaa !65, !noalias !219 ; 2 uses
  %i.ajc = load float, ptr %i.ww, align 8, !tbaa !65, !noalias !219
  %i.ajd = load <2 x float>, ptr %i.wx, align 4, !tbaa !65, !noalias !219 ; 3 uses
  %i.aje = load float, ptr %i.wz, align 8, !tbaa !65, !noalias !219
  %i.ajf = load <2 x float>, ptr %i.wy, align 4, !tbaa !65, !noalias !219 ; 3 uses
  %i.ajg = load float, ptr %i.xa, align 8, !tbaa !65, !noalias !219
  %i.ajh = shufflevector <2 x float> %i.ajd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aji = shufflevector <4 x float> %i.ahn, <4 x float> %i.ajh, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ajj = fmul <4 x float> %i.ahj, %i.aji
  %i.ajk = shufflevector <2 x float> %i.ajb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ajl = shufflevector <4 x float> %i.aho, <4 x float> %i.ajk, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ajm = shufflevector <4 x float> %i.ahk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ajn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajl, <4 x float> %i.ajm, <4 x float> %i.ajj)
  %i.ajo = shufflevector <2 x float> %i.ajf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ajp = shufflevector <4 x float> %i.ahq, <4 x float> %i.ajo, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ajq = shufflevector <4 x float> %i.ajk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ajr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajp, <4 x float> %i.ajq, <4 x float> %i.ajn)
  %i.ajs = shufflevector <2 x float> %i.ajd, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ajt = shufflevector <2 x float> %i.ahg, <2 x float> %i.ajd, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.aju = insertelement <4 x float> %i.ajt, float 1.000000e+00, i64 3 ; 2 uses
  %i.ajv = fmul <4 x float> %i.ajs, %i.aju
  %i.ajw = shufflevector <2 x float> %i.ahf, <2 x float> %i.ajb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ajx = insertelement <4 x float> %i.ajw, float 0.000000e+00, i64 3 ; 2 uses
  %i.ajy = shufflevector <2 x float> %i.ahg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ajz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajx, <4 x float> %i.ajy, <4 x float> %i.ajv)
  %i.aka = shufflevector <2 x float> %i.ahh, <2 x float> %i.ajf, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.akb = insertelement <4 x float> %i.aka, float 0.000000e+00, i64 3 ; 2 uses
  %i.akc = shufflevector <4 x float> %i.ajt, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.akd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akb, <4 x float> %i.akc, <4 x float> %i.ajz)
  %i.ake = fsub <4 x float> %i.aio, %i.ajr
  %i.akf = fsub <4 x float> %i.aja, %i.akd
  %i.akg = fmul <4 x float> %i.ahs, %i.ake
  %i.akh = fmul <4 x float> %i.ahs, %i.akf
  %i.aki = fadd <4 x float> %i.ahw, %i.akg
  %i.akj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.agr, i64 2
  %i.akk = shufflevector <2 x float> %i.ahx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akl = shufflevector <4 x float> %i.akk, <4 x float> %i.akj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.akm = fadd <4 x float> %i.akl, %i.akh
  store <4 x float> %i.aki, ptr %i.xx, align 8, !tbaa !65
  store <4 x float> %i.akm, ptr %i.xz, align 8, !tbaa !65
  %i.akn = load <2 x float>, ptr %i.yb, align 8, !tbaa !65
  %i.ako = shufflevector <2 x float> %i.aic, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.akp = insertelement <4 x float> %i.air, float %i.aib, i64 2
  %i.akq = fmul <4 x float> %i.ako, %i.akp
  %i.akr = insertelement <4 x float> %i.aiu, float %i.ahz, i64 2
  %i.aks = shufflevector <2 x float> %i.agv, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.akt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akr, <4 x float> %i.aks, <4 x float> %i.akq)
  %i.aku = insertelement <4 x float> %i.aiy, float %i.aid, i64 2 ; 2 uses
  %i.akv = shufflevector <4 x float> %i.aku, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.akw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aku, <4 x float> %i.akv, <4 x float> %i.akt)
  %i.akx = shufflevector <2 x float> %i.ajf, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aky = insertelement <4 x float> %i.aju, float %i.aje, i64 2
  %i.akz = fmul <4 x float> %i.akx, %i.aky
  %i.ala = insertelement <4 x float> %i.ajx, float %i.ajc, i64 2
  %i.alb = shufflevector <2 x float> %i.ahh, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.alc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ala, <4 x float> %i.alb, <4 x float> %i.akz)
  %i.ald = insertelement <4 x float> %i.akb, float %i.ajg, i64 2 ; 2 uses
  %i.ale = shufflevector <4 x float> %i.ald, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.alf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ald, <4 x float> %i.ale, <4 x float> %i.alc)
  %i.alg = fsub <4 x float> %i.akw, %i.alf
  %i.alh = fmul <4 x float> %i.ahs, %i.alg
  %i.ali = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ags, i64 2
  %i.alj = shufflevector <2 x float> %i.akn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.alk = shufflevector <4 x float> %i.alj, <4 x float> %i.ali, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.all = fadd <4 x float> %i.alk, %i.alh
  store <4 x float> %i.all, ptr %i.yb, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %i.alm = load ptr, ptr %i.wk, align 8, !tbaa !45 ; 2 uses
  %i.aln = getelementptr inbounds nuw [32 x i8], ptr %i.alm, i64 %indvars.iv.next711
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 4
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !42
  %i.alq = sext i32 %i.alp to i64
  %i.alr = icmp slt i64 %indvars.iv.next708, %i.alq
  br i1 %i.alr, label %bb.k, label %.loopexit632, !llvm.loop !222

._crit_edge687:                                   ; preds = %._crit_edge682, %.loopexit634, %._crit_edge659
  br i1 %4, label %.preheader630, label %.loopexit

.preheader630:                                    ; preds = %._crit_edge687
  %i.als = load i32, ptr %i.c, align 4, !tbaa !35 ; 2 uses
  %i.alt = icmp sgt i32 %i.als, 0
  br i1 %i.alt, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader630
  %i.alu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.alv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count724 = zext nneg i32 %i.als to i64
  br label %.preheader

bb.n:                                             ; preds = %.lr.ph686, %._crit_edge682
  %indvars.iv713 = phi i64 [ %i.xp, %.lr.ph686 ], [ %indvars.iv.next714, %._crit_edge682 ] ; 2 uses
  %indvars.iv.next714 = add nsw i64 %indvars.iv713, -1 ; 4 uses
  %i.alw = load ptr, ptr %i.xe, align 8, !tbaa !37
  %i.alx = getelementptr inbounds nuw [816 x i8], ptr %i.alw, i64 %indvars.iv.next714 ; 17 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 536
  %i.alz = load i32, ptr %i.aly, align 8, !tbaa !100 ; 8 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alx, i64 420 ; 5 uses
  %.val207 = load i32, ptr %i.ama, align 4, !tbaa !97
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
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alx, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %i.amb, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alx, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.amc, i64 16, i1 false)
  %i.amd = add nsw i32 %.0.i.ph, %i.alz
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alx, i64 560
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alx, i64 564
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alx, i64 568
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alx, i64 576
  %21 = getelementptr inbounds nuw i8, ptr %i.alx, i64 580
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alx, i64 584
  %i.amj = getelementptr inbounds nuw i8, ptr %i.alx, i64 592
  %22 = getelementptr inbounds nuw i8, ptr %i.alx, i64 596
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alx, i64 600
  %i.aml = getelementptr inbounds nuw i8, ptr %i.alx, i64 544
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alx, i64 548
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alx, i64 552
  %i.amo = getelementptr inbounds nuw i8, ptr %i.alx, i64 540
  %i.amp = trunc nuw nsw i64 %indvars.iv.next714 to i32
  br label %bb.r

.loopexit631:                                     ; preds = %._crit_edge668, %._crit_edge663
  %.not204.not = icmp sgt i32 %.0195680, %i.alz
  br i1 %.not204.not, label %bb.r, label %._crit_edge682, !llvm.loop !223

._crit_edge682:                                   ; preds = %.loopexit631, %_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.amq = icmp sgt i64 %indvars.iv713, 1
  br i1 %i.amq, label %bb.n, label %._crit_edge687, !llvm.loop !224

bb.r:                                             ; preds = %.lr.ph681, %.loopexit631
  %.0195.in679 = phi i32 [ %i.amd, %.lr.ph681 ], [ %.0195680, %.loopexit631 ] ; 2 uses
  %.0195680 = add nsw i32 %.0195.in679, -1        ; 8 uses
  %i.amr = load i32, ptr %i.ama, align 4, !tbaa !107 ; 2 uses
  %i.ams = icmp eq i32 %i.amr, 3
  br i1 %i.ams, label %bb.s, label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit

bb.s:                                             ; preds = %bb.r
  %i.amt = sub nsw i32 %.0195680, %i.alz
  switch i32 %i.amt, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit [
    i32 0, label %bb.t
    i32 1, label %bb.u
    i32 2, label %bb.v
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
  ]

bb.t:                                             ; preds = %bb.s
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !65
  store float 0.000000e+00, ptr %i.xi, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.u:                                             ; preds = %bb.s
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %17, align 16, !tbaa !65
  store float 0.000000e+00, ptr %i.xi, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.v:                                             ; preds = %bb.s
  store <2 x float> zeroinitializer, ptr %17, align 16, !tbaa !65
  store float 1.000000e+00, ptr %i.xi, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.w:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %18, align 8, !tbaa !65
  store float 0.000000e+00, ptr %i.xg, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.x:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %18, align 8, !tbaa !65
  store float 0.000000e+00, ptr %i.xg, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

bb.y:                                             ; preds = %bb.s
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !65
  store float 1.000000e+00, ptr %i.xg, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split

_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split: ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.pr = load i32, ptr %i.ama, align 4, !tbaa !107
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit

_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit: ; preds = %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split, %bb.r
  %i.amu = phi i32 [ %.pr, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exitthread-pre-split ], [ %i.amr, %bb.r ]
  %i.amv = icmp eq i32 %i.amu, 4
  br i1 %i.amv, label %bb.z, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

bb.z:                                             ; preds = %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit
  %i.amw = sub nsw i32 %.0195680, %i.alz          ; 4 uses
  %i.amx = icmp ult i32 %i.amw, 3
  br i1 %i.amx, label %switch.lookup, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

switch.lookup:                                    ; preds = %bb.z
  %i.amy = zext nneg i32 %i.amw to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.7, i64 %i.amy
  %switch.load = load float, ptr %switch.gep, align 4
  %i.amz = zext nneg i32 %i.amw to i64
  %switch.gep748 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.8, i64 %i.amz
  %switch.load749 = load float, ptr %switch.gep748, align 4
  %i.ana = zext nneg i32 %i.amw to i64
  %switch.gep750 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.9, i64 %i.ana
  %switch.load751 = load float, ptr %switch.gep750, align 4
  store float %switch.load, ptr %17, align 16, !tbaa !65
  store float %switch.load749, ptr %i.xh, align 4, !tbaa !65
  store float %switch.load751, ptr %i.xi, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit

_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit: ; preds = %bb.z, %bb.s, %switch.lookup, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit
  %i.anb = load float, ptr %i.ame, align 8, !tbaa !65
  %i.anc = load float, ptr %i.amf, align 4, !tbaa !65
  %i.and = load float, ptr %i.amg, align 8, !tbaa !65
  %23 = load float, ptr %i.amh, align 8, !tbaa !65
  %24 = load float, ptr %21, align 4, !tbaa !65
  %i.ane = load float, ptr %i.ami, align 8, !tbaa !65
  %25 = load float, ptr %i.amj, align 8, !tbaa !65
  %26 = load float, ptr %22, align 4, !tbaa !65
  %i.anf = load float, ptr %i.amk, align 8, !tbaa !65
  %i.ang = load float, ptr %i.amm, align 4, !tbaa !65
  %i.anh = load float, ptr %i.amn, align 8, !tbaa !65
  %i.ani = load float, ptr %i.aml, align 8, !tbaa !65
  %i.anj = load float, ptr %i.amo, align 4, !tbaa !65 ; 3 uses
  %27 = load <2 x float>, ptr %17, align 16, !tbaa !65 ; 4 uses
  %28 = extractelement <2 x float> %27, i64 0     ; 3 uses
  %i.ank = load <2 x float>, ptr %18, align 8, !tbaa !65 ; 4 uses
  %i.anl = extractelement <2 x float> %i.ank, i64 0
  %29 = fmul float %i.anl, %i.anj
  %i.anm = shufflevector <2 x float> %i.ank, <2 x float> %27, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ann = fneg <2 x float> %i.anm
  %i.ano = insertelement <2 x float> poison, float %i.anh, i64 0
  %i.anp = shufflevector <2 x float> %i.ano, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.anq = fmul <2 x float> %i.anp, %i.ann
  %i.anr = insertelement <2 x float> poison, float %i.ang, i64 0
  %i.ans = shufflevector <2 x float> %i.anr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ant = insertelement <2 x float> poison, float %i.ani, i64 0
  %i.anu = shufflevector <2 x float> %i.ant, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.anv = shufflevector <2 x float> %i.ank, <2 x float> %27, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.anw = fneg <2 x float> %i.anv
  %i.anx = fmul <2 x float> %i.ans, %i.anw
  %i.any = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anu, <2 x float> %i.anm, <2 x float> %i.anx) ; 2 uses
  %i.anz = load <2 x float>, ptr %i.xf, align 4, !tbaa !65 ; 4 uses
  %i.aoa = load float, ptr %i.xg, align 8, !tbaa !65
  %i.aob = fmul float %i.aoa, %i.anj
  %i.aoc = load <2 x float>, ptr %i.xh, align 4, !tbaa !65 ; 4 uses
  %i.aod = load float, ptr %i.xi, align 8, !tbaa !65 ; 3 uses
  %i.aoe = extractelement <2 x float> %i.aoc, i64 0 ; 3 uses
  %i.aof = fmul float %i.anc, %i.aoe
  %i.aog = call float @llvm.fmuladd.f32(float %i.anb, float %28, float %i.aof)
  %i.aoh = call noundef float @llvm.fmuladd.f32(float %i.and, float %i.aod, float %i.aog)
  %30 = fmul float %i.aoe, %24
  %31 = call float @llvm.fmuladd.f32(float %23, float %28, float %30)
  %32 = call noundef float @llvm.fmuladd.f32(float %i.ane, float %i.aod, float %31)
  %33 = fmul float %i.aoe, %26
  %34 = call float @llvm.fmuladd.f32(float %25, float %28, float %33)
  %35 = call noundef float @llvm.fmuladd.f32(float %i.anf, float %i.aod, float %34)
  %36 = shufflevector <2 x float> %i.aoc, <2 x float> %i.anz, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.aoi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ans, <2 x float> %36, <2 x float> %i.anq) ; 2 uses
  %37 = insertelement <2 x float> poison, float %i.aoh, i64 0
  %38 = insertelement <2 x float> %37, float %29, i64 1 ; 2 uses
  %39 = fadd <2 x float> %38, %i.aoi              ; 2 uses
  %40 = fsub <2 x float> %38, %i.aoi              ; 2 uses
  %41 = shufflevector <2 x float> %39, <2 x float> %40, <2 x i32> <i32 0, i32 3> ; 3 uses
  %42 = extractelement <2 x float> %i.anz, i64 0
  %43 = fmul float %42, %i.anj
  %44 = fneg <2 x float> %36
  %45 = fmul <2 x float> %i.anu, %44
  %46 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anp, <2 x float> %i.anv, <2 x float> %45) ; 2 uses
  %i.aoj = insertelement <2 x float> poison, float %32, i64 0
  %i.aok = insertelement <2 x float> %i.aoj, float %43, i64 1 ; 2 uses
  %i.aol = fadd <2 x float> %i.aok, %46           ; 2 uses
  %i.aom = fsub <2 x float> %i.aok, %46           ; 2 uses
  %i.aon = shufflevector <2 x float> %i.aol, <2 x float> %i.aom, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.aoo = shufflevector <2 x float> %39, <2 x float> %i.aol, <2 x i32> <i32 0, i32 2>
  %47 = insertelement <2 x float> poison, float %35, i64 0
  %i.aop = insertelement <2 x float> %47, float %i.aob, i64 1 ; 2 uses
  %i.aoq = fadd <2 x float> %i.aop, %i.any
  %i.aor = fsub <2 x float> %i.aop, %i.any        ; 2 uses
  %i.aos = shufflevector <2 x float> %i.aoq, <2 x float> %i.aor, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.aot = insertelement <2 x float> %i.aos, float 0.000000e+00, i64 1
  %i.aou = shufflevector <2 x float> %40, <2 x float> %i.aom, <2 x i32> <i32 1, i32 3>
  %i.aov = shufflevector <2 x float> %i.aor, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.aow = shufflevector <2 x float> %i.aoc, <2 x float> %i.anz, <2 x i32> <i32 0, i32 2>
  %i.aox = fmul <2 x float> %i.aow, %i.aon
  %i.aoy = shufflevector <2 x float> %27, <2 x float> %i.ank, <2 x i32> <i32 0, i32 2>
  %i.aoz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aoy, <2 x float> %41, <2 x float> %i.aox)
  %i.apa = shufflevector <2 x float> %i.aoc, <2 x float> %i.anz, <2 x i32> <i32 1, i32 3>
  %i.apb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apa, <2 x float> %i.aos, <2 x float> %i.aoz) ; 2 uses
  %shift = shufflevector <2 x float> %i.apb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.apb, %shift
  %i.apc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.apd = load i32, ptr %i.xj, align 8, !tbaa !56
  %i.ape = add nsw i32 %i.apd, 1                  ; 2 uses
  store i32 %i.ape, ptr %i.xj, align 8, !tbaa !56
  %i.apf = load i32, ptr %i.f, align 4, !tbaa !53 ; 2 uses
  %i.apg = add i32 %i.apf, 1
  %i.aph = mul i32 %i.apg, %.0195680
  %i.api = load ptr, ptr %i.xk, align 8, !tbaa !58 ; 2 uses
  %i.apj = sext i32 %i.aph to i64
  %i.apk = getelementptr inbounds [4 x i8], ptr %i.api, i64 %i.apj
  store float %i.apc, ptr %i.apk, align 4, !tbaa !65
  %i.apl = add nsw i32 %.0195.in679, -2           ; 2 uses
  %.not205660 = icmp slt i32 %i.apl, %i.alz
  br i1 %.not205660, label %._crit_edge663, label %.lr.ph662

._crit_edge663:                                   ; preds = %bb.aj, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit
  %i.apm = load ptr, ptr %i.xl, align 8, !tbaa !41 ; 2 uses
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.apm, i64 %indvars.iv.next714
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !67 ; 2 uses
  %i.app = icmp sgt i32 %i.apo, -1
  br i1 %i.app, label %.lr.ph676, label %.loopexit631

.lr.ph662:                                        ; preds = %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit, %bb.aj
  %i.apq = phi ptr [ %i.aru, %bb.aj ], [ %i.api, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit ] ; 2 uses
  %i.apr = phi i32 [ %i.arv, %bb.aj ], [ %i.apf, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit ] ; 2 uses
  %i.aps = phi i32 [ %i.arw, %bb.aj ], [ %i.ape, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit ] ; 2 uses
  %.0194661 = phi i32 [ %i.arx, %bb.aj ], [ %i.apl, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit ] ; 6 uses
  %i.apt = load i32, ptr %i.ama, align 4, !tbaa !107 ; 2 uses
  %i.apu = icmp eq i32 %i.apt, 4
  br i1 %i.apu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph662
  %i.apv = sub nsw i32 %.0194661, %i.alz          ; 4 uses
  %i.apw = icmp ult i32 %i.apv, 3
  br i1 %i.apw, label %switch.lookup752, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282

switch.lookup752:                                 ; preds = %bb.aa
  %i.apx = zext nneg i32 %i.apv to i64
  %switch.gep753 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.7, i64 %i.apx
  %switch.load754 = load float, ptr %switch.gep753, align 4
  %i.apy = zext nneg i32 %i.apv to i64
  %switch.gep755 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.8, i64 %i.apy
  %switch.load756 = load float, ptr %switch.gep755, align 4
  %i.apz = zext nneg i32 %i.apv to i64
  %switch.gep757 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.9, i64 %i.apz
  %switch.load758 = load float, ptr %switch.gep757, align 4
  store float %switch.load754, ptr %17, align 16, !tbaa !65
  store float %switch.load756, ptr %i.xh, align 4, !tbaa !65
  store float %switch.load758, ptr %i.xi, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  %.pre726 = load i32, ptr %i.xj, align 8, !tbaa !56
  %.pre727 = load i32, ptr %i.f, align 4, !tbaa !53
  %.pre728 = load ptr, ptr %i.xk, align 8, !tbaa !58
  %.pr628.pre = load i32, ptr %i.ama, align 4, !tbaa !107
  br label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282

_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282: ; preds = %bb.aa, %switch.lookup752
  %.pr628 = phi i32 [ 4, %bb.aa ], [ %.pr628.pre, %switch.lookup752 ]
  %i.aqa = phi ptr [ %i.apq, %bb.aa ], [ %.pre728, %switch.lookup752 ] ; 2 uses
  %i.aqb = phi i32 [ %i.apr, %bb.aa ], [ %.pre727, %switch.lookup752 ] ; 2 uses
  %i.aqc = phi i32 [ %i.aps, %bb.aa ], [ %.pre726, %switch.lookup752 ]
  %i.aqd = load <4 x float>, ptr %17, align 16
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.aqf = load float, ptr %i.xg, align 8, !tbaa !65
  %i.aqg = load <2 x float>, ptr %17, align 16, !tbaa !65 ; 2 uses
  %i.aqh = load <2 x float>, ptr %18, align 8, !tbaa !65 ; 2 uses
  %i.aqi = shufflevector <2 x float> %i.aqg, <2 x float> %i.aqh, <2 x i32> <i32 1, i32 3>
  %i.aqj = fmul <2 x float> %i.aon, %i.aqi
  %i.aqk = shufflevector <2 x float> %i.aqg, <2 x float> %i.aqh, <2 x i32> <i32 0, i32 2>
  %i.aql = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqk, <2 x float> %41, <2 x float> %i.aqj)
  %i.aqm = insertelement <2 x float> %i.aqe, float %i.aqf, i64 1
  %i.aqn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aqm, <2 x float> %i.aos, <2 x float> %i.aql) ; 2 uses
  %shift768 = shufflevector <2 x float> %i.aqn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop769 = fadd <2 x float> %i.aqn, %shift768
  %i.aqo = extractelement <2 x float> %foldExtExtBinop769, i64 0
  %i.aqp = add nsw i32 %i.aqc, 1                  ; 2 uses
  store i32 %i.aqp, ptr %i.xj, align 8, !tbaa !56
  %i.aqq = mul nsw i32 %i.aqb, %.0195680
  %i.aqr = add nsw i32 %i.aqq, %.0194661
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds [4 x i8], ptr %i.aqa, i64 %i.aqs
  store float %i.aqo, ptr %i.aqt, align 4, !tbaa !65
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282, %.lr.ph662
  %i.aqu = phi ptr [ %i.aqa, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282 ], [ %i.apq, %.lr.ph662 ]
  %i.aqv = phi i32 [ %i.aqb, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282 ], [ %i.apr, %.lr.ph662 ]
  %i.aqw = phi i32 [ %i.aqp, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282 ], [ %i.aps, %.lr.ph662 ]
  %i.aqx = phi i32 [ %.pr628, %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit282 ], [ %i.apt, %.lr.ph662 ]
  %i.aqy = icmp eq i32 %i.aqx, 3
  br i1 %i.aqy, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.aqz = sub nsw i32 %.0194661, %i.alz
  switch i32 %i.aqz, label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283 [
    i32 0, label %bb.ad
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 3, label %bb.ag
    i32 4, label %bb.ah
    i32 5, label %bb.ai
  ]

bb.ad:                                            ; preds = %bb.ac
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !65
  store float 0.000000e+00, ptr %i.xi, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.ae:                                            ; preds = %bb.ac
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %17, align 16, !tbaa !65
  store float 0.000000e+00, ptr %i.xi, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.af:                                            ; preds = %bb.ac
  store <2 x float> zeroinitializer, ptr %17, align 16, !tbaa !65
  store float 1.000000e+00, ptr %i.xi, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %18)
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.ag:                                            ; preds = %bb.ac
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %18, align 8, !tbaa !65
  store float 0.000000e+00, ptr %i.xg, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.ah:                                            ; preds = %bb.ac
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %18, align 8, !tbaa !65
  store float 0.000000e+00, ptr %i.xg, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

bb.ai:                                            ; preds = %bb.ac
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %17)
  store <2 x float> zeroinitializer, ptr %18, align 8, !tbaa !65
  store float 1.000000e+00, ptr %i.xg, align 8, !tbaa !65
  br label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283

_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %i.ara = load <4 x float>, ptr %17, align 16
  %i.arb = shufflevector <4 x float> %i.ara, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.arc = load float, ptr %i.xg, align 8, !tbaa !65
  %i.ard = load <2 x float>, ptr %17, align 16, !tbaa !65 ; 2 uses
  %i.are = load <2 x float>, ptr %18, align 8, !tbaa !65 ; 2 uses
  %i.arf = shufflevector <2 x float> %i.ard, <2 x float> %i.are, <2 x i32> <i32 1, i32 3>
  %i.arg = fmul <2 x float> %i.aon, %i.arf
  %i.arh = shufflevector <2 x float> %i.ard, <2 x float> %i.are, <2 x i32> <i32 0, i32 2>
  %i.ari = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arh, <2 x float> %41, <2 x float> %i.arg)
  %i.arj = insertelement <2 x float> %i.arb, float %i.arc, i64 1
  %i.ark = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.arj, <2 x float> %i.aos, <2 x float> %i.ari) ; 2 uses
  %shift771 = shufflevector <2 x float> %i.ark, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop772 = fadd <2 x float> %i.ark, %shift771
  %i.arl = extractelement <2 x float> %foldExtExtBinop772, i64 0
  %i.arm = load i32, ptr %i.xj, align 8, !tbaa !56
  %i.arn = add nsw i32 %i.arm, 1                  ; 2 uses
  store i32 %i.arn, ptr %i.xj, align 8, !tbaa !56
  %i.aro = load i32, ptr %i.f, align 4, !tbaa !53 ; 2 uses
  %i.arp = mul nsw i32 %i.aro, %.0195680
  %i.arq = add nsw i32 %i.arp, %.0194661
  %i.arr = load ptr, ptr %i.xk, align 8, !tbaa !58 ; 2 uses
  %i.ars = sext i32 %i.arq to i64
  %i.art = getelementptr inbounds [4 x i8], ptr %i.arr, i64 %i.ars
  store float %i.arl, ptr %i.art, align 4, !tbaa !65
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ab, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283
  %i.aru = phi ptr [ %i.aqu, %bb.ab ], [ %i.arr, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283 ]
  %i.arv = phi i32 [ %i.aqv, %bb.ab ], [ %i.aro, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283 ]
  %i.arw = phi i32 [ %i.aqw, %bb.ab ], [ %i.arn, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit283 ]
  %i.arx = add nsw i32 %.0194661, -1
  %.not205.not = icmp sgt i32 %.0194661, %i.alz
  br i1 %.not205.not, label %.lr.ph662, label %._crit_edge663, !llvm.loop !225

.lr.ph676:                                        ; preds = %._crit_edge663, %._crit_edge668
  %i.ary = phi ptr [ %i.auw, %._crit_edge668 ], [ %i.apm, %._crit_edge663 ]
  %.0190674 = phi i32 [ %i.auy, %._crit_edge668 ], [ %i.apo, %._crit_edge663 ] ; 2 uses
  %.0191673 = phi i32 [ %.0190674, %._crit_edge668 ], [ %i.amp, %._crit_edge663 ]
  %.sroa.18394.0672 = phi <2 x float> [ %.sroa.18394.8.vec.insert, %._crit_edge668 ], [ %i.aot, %._crit_edge663 ] ; 2 uses
  %.sroa.0371.0671 = phi <2 x float> [ %i.aui, %._crit_edge668 ], [ %i.aoo, %._crit_edge663 ] ; 4 uses
  %.sroa.16354.0670 = phi <2 x float> [ %i.atv, %._crit_edge668 ], [ %i.aov, %._crit_edge663 ]
  %.sroa.0333.0669 = phi <2 x float> [ %i.atu, %._crit_edge668 ], [ %i.aou, %._crit_edge663 ] ; 2 uses
  %i.arz = load ptr, ptr %i.xe, align 8, !tbaa !37 ; 2 uses
  %i.asa = sext i32 %.0191673 to i64
  %i.asb = getelementptr inbounds [816 x i8], ptr %i.arz, i64 %i.asa ; 11 uses
  %i.asc = zext nneg i32 %.0190674 to i64         ; 2 uses
  %i.asd = getelementptr inbounds nuw [816 x i8], ptr %i.arz, i64 %i.asc ; 6 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asb, i64 292
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asb, i64 308
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asb, i64 324
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asb, i64 296
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asb, i64 312
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asb, i64 328
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asb, i64 300
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asb, i64 316
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asb, i64 332
  %.sroa.0371.0.vec.extract377 = extractelement <2 x float> %.sroa.0371.0671, i64 0
  %.sroa.0371.4.vec.extract388 = extractelement <2 x float> %.sroa.0371.0671, i64 1
  %.sroa.18394.8.vec.extract400 = extractelement <2 x float> %.sroa.18394.0672, i64 0
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asb, i64 340
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asb, i64 344
  %i.asp = load float, ptr %i.asn, align 4, !tbaa !65 ; 2 uses
  %i.asq = load <2 x float>, ptr %i.ase, align 4, !tbaa !65, !noalias !226 ; 2 uses
  %i.asr = load <2 x float>, ptr %i.asf, align 4, !tbaa !65, !noalias !226 ; 2 uses
  %i.ass = load <2 x float>, ptr %i.asg, align 4, !tbaa !65, !noalias !226 ; 2 uses
  %i.ast = load float, ptr %i.ask, align 4, !tbaa !65, !noalias !226
  %i.asu = load <2 x float>, ptr %i.ash, align 4, !tbaa !65, !noalias !226 ; 2 uses
  %i.asv = load float, ptr %i.asl, align 4, !tbaa !65, !noalias !226
  %i.asw = load <2 x float>, ptr %i.asi, align 4, !tbaa !65, !noalias !226 ; 2 uses
  %i.asx = load float, ptr %i.asm, align 4, !tbaa !65, !noalias !226
  %i.asy = load <2 x float>, ptr %i.asj, align 4, !tbaa !65, !noalias !226 ; 2 uses
  %i.asz = shufflevector <2 x float> %.sroa.0371.0671, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ata = fmul <2 x float> %i.asz, %i.asr
  %i.atb = shufflevector <2 x float> %.sroa.0371.0671, <2 x float> poison, <2 x i32> zeroinitializer
  %i.atc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asq, <2 x float> %i.atb, <2 x float> %i.ata)
  %i.atd = shufflevector <2 x float> %.sroa.18394.0672, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ate = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ass, <2 x float> %i.atd, <2 x float> %i.atc)
  %i.atf = fmul float %.sroa.0371.4.vec.extract388, %i.asv
  %i.atg = call float @llvm.fmuladd.f32(float %i.ast, float %.sroa.0371.0.vec.extract377, float %i.atf)
  %i.ath = call noundef float @llvm.fmuladd.f32(float %i.asx, float %.sroa.18394.8.vec.extract400, float %i.atg)
  %i.ati = shufflevector <2 x float> %.sroa.0333.0669, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.atj = shufflevector <2 x float> %i.asw, <2 x float> %i.asr, <2 x i32> <i32 1, i32 2>
  %i.atk = fmul <2 x float> %i.ati, %i.atj
  %i.atl = fmul <2 x float> %i.ati, %i.asw
  %i.atm = shufflevector <2 x float> %i.asu, <2 x float> %i.asq, <2 x i32> <i32 1, i32 2>
  %i.atn = shufflevector <2 x float> %.sroa.0333.0669, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ato = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atm, <2 x float> %i.atn, <2 x float> %i.atk)
  %i.atp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asu, <2 x float> %i.atn, <2 x float> %i.atl)
  %i.atq = shufflevector <2 x float> %i.asy, <2 x float> %i.ass, <2 x i32> <i32 1, i32 2>
  %i.atr = shufflevector <2 x float> %.sroa.16354.0670, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ats = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atq, <2 x float> %i.atr, <2 x float> %i.ato) ; 6 uses
  %i.att = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.asy, <2 x float> %i.atr, <2 x float> %i.atp) ; 4 uses
  %i.atu = shufflevector <2 x float> %i.ats, <2 x float> %i.att, <2 x i32> <i32 1, i32 2>
  %i.atv = insertelement <2 x float> %i.ats, float 0.000000e+00, i64 1
  %i.atw = load <2 x float>, ptr %i.aso, align 4, !tbaa !65 ; 3 uses
  %i.atx = fneg <2 x float> %i.att
  %i.aty = shufflevector <2 x float> %i.atw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.atz = insertelement <2 x float> %i.aty, float %i.asp, i64 1
  %i.aua = fmul <2 x float> %i.atz, %i.atx
  %i.aub = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.atw, <2 x float> %i.ats, <2 x float> %i.aua)
  %i.auc = extractelement <2 x float> %i.ats, i64 1
  %i.aud = fneg float %i.auc
  %i.aue = extractelement <2 x float> %i.atw, i64 0
  %i.auf = fmul float %i.aue, %i.aud
  %i.aug = extractelement <2 x float> %i.att, i64 0
  %i.auh = call float @llvm.fmuladd.f32(float %i.asp, float %i.aug, float %i.auf)
  %i.aui = fadd <2 x float> %i.ate, %i.aub        ; 3 uses
  %i.auj = fadd float %i.ath, %i.auh              ; 2 uses
  %.sroa.18394.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.auj, i64 0
  %i.auk = getelementptr inbounds nuw i8, ptr %i.asd, i64 536
  %i.aul = load i32, ptr %i.auk, align 8, !tbaa !100 ; 4 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.asd, i64 420 ; 3 uses
  %.val = load i32, ptr %i.aum, align 4, !tbaa !97
  switch i32 %.val, label %bb.am [
    i32 0, label %_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit300
    i32 1, label %.lr.ph667.preheader
    i32 2, label %.lr.ph667.preheader
    i32 3, label %bb.ak
    i32 4, label %bb.al
  ]

bb.ak:                                            ; preds = %.lr.ph676
  br label %.lr.ph667.preheader

bb.al:                                            ; preds = %.lr.ph676
  br label %.lr.ph667.preheader

bb.am:                                            ; preds = %.lr.ph676
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 766)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.36)
  call void @abort() #18
  unreachable

_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit300: ; preds = %.lr.ph676
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.aun = getelementptr inbounds nuw i8, ptr %i.asd, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %i.aun, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.auo = getelementptr inbounds nuw i8, ptr %i.asd, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %i.auo, i64 16, i1 false)
  br label %._crit_edge668

.lr.ph667.preheader:                              ; preds = %.lr.ph676, %.lr.ph676, %bb.al, %bb.ak
  %.0.i299.ph = phi i32 [ 6, %bb.ak ], [ 3, %bb.al ], [ 1, %.lr.ph676 ], [ 1, %.lr.ph676 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.aup = getelementptr inbounds nuw i8, ptr %i.asd, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %i.aup, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.auq = getelementptr inbounds nuw i8, ptr %i.asd, i64 504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %i.auq, i64 16, i1 false)
  %i.aur = add nsw i32 %.0.i299.ph, %i.aul
  %i.aus = insertelement <2 x float> poison, float %i.auj, i64 0
  %i.aut = shufflevector <2 x float> %i.aui, <2 x float> %i.ats, <2 x i32> <i32 0, i32 3>
  %i.auu = shufflevector <2 x float> %i.aui, <2 x float> %i.att, <2 x i32> <i32 1, i32 2>
  %i.auv = shufflevector <2 x float> %i.aus, <2 x float> %i.ats, <2 x i32> <i32 0, i32 2>
  br label %.lr.ph667

._crit_edge668.loopexit:                          ; preds = %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit306
  %.pre730 = load ptr, ptr %i.xl, align 8, !tbaa !41
  br label %._crit_edge668

._crit_edge668:                                   ; preds = %_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit300, %._crit_edge668.loopexit
  %i.auw = phi ptr [ %.pre730, %._crit_edge668.loopexit ], [ %i.ary, %_ZN24btInverseDynamicsBullet3L12jointNumDoFsERKNS_9JointTypeE.exit300 ] ; 2 uses
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.auw, i64 %i.asc
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.auz = icmp sgt i32 %i.auy, -1
  br i1 %i.auz, label %.lr.ph676, label %.loopexit631, !llvm.loop !229

.lr.ph667:                                        ; preds = %.lr.ph667.preheader, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit306
  %.0186666.in = phi i32 [ %.0186666, %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit306 ], [ %i.aur, %.lr.ph667.preheader ]
  %.0186666 = add nsw i32 %.0186666.in, -1        ; 5 uses
  %i.ava = load i32, ptr %i.aum, align 4, !tbaa !107 ; 2 uses
  %i.avb = icmp eq i32 %i.ava, 4
  br i1 %i.avb, label %bb.an, label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit305

bb.an:                                            ; preds = %.lr.ph667
  %i.avc = sub nsw i32 %.0186666, %i.aul          ; 4 uses
  %i.avd = icmp ult i32 %i.avc, 3
  br i1 %i.avd, label %switch.lookup759, label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit306

switch.lookup759:                                 ; preds = %bb.an
  %i.ave = zext nneg i32 %i.avc to i64
  %switch.gep760 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.7, i64 %i.ave
  %switch.load761 = load float, ptr %switch.gep760, align 4
  %i.avf = zext nneg i32 %i.avc to i64
  %switch.gep762 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.8, i64 %i.avf
  %switch.load763 = load float, ptr %switch.gep762, align 4
  %i.avg = zext nneg i32 %i.avc to i64
  %switch.gep764 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN24btInverseDynamicsBullet313MultiBodyTree13MultiBodyImpl19calculateMassMatrixERKNS_4vecxEbbbP9btMatrixXIfE.9, i64 %i.avg
  %switch.load765 = load float, ptr %switch.gep764, align 4
  store float %switch.load761, ptr %19, align 16, !tbaa !65
  store float %switch.load763, ptr %i.xm, align 4, !tbaa !65
  store float %switch.load765, ptr %i.xn, align 8, !tbaa !65
  call void @_ZN24btInverseDynamicsBullet37setZeroERNS_4vec3E(ptr noundef nonnull align 4 dereferenceable(16) %20)
  %.pr629 = load i32, ptr %i.aum, align 4, !tbaa !107
  br label %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit305

_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit305: ; preds = %switch.lookup759, %.lr.ph667
  %i.avh = phi i32 [ %.pr629, %switch.lookup759 ], [ %i.ava, %.lr.ph667 ]
  %i.avi = icmp eq i32 %i.avh, 3
  br i1 %i.avi, label %bb.ao, label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit306

bb.ao:                                            ; preds = %_ZN24btInverseDynamicsBullet3L20setThreeDoFJacobiansEiRNS_4vec3ES1_.exit305
  %i.avj = sub nsw i32 %.0186666, %i.aul
  switch i32 %i.avj, label %_ZN24btInverseDynamicsBullet3L18setSixDoFJacobiansEiRNS_4vec3ES1_.exit306 [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
end_hunk_0
