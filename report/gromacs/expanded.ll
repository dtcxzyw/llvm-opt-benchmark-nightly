Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/expanded?download=true
inline.NumInlined: 758
inline.NumDeleted: 308
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_Z33expandedEnsembleUpdateLambdaStateP8_IO_FILEPK10t_inputrecPK14gmx_enerdata_tiP12df_history_tl:bb.a
  %indvars.iv.next.i434.i.6 = or disjoint i64 %indvars.iv.i429.i, 7 ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv.next.i434.i.6
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !53 ; 2 uses
  %i.afd = fcmp olt float %i.afc, %spec.select.i432.i.6 ; 2 uses
  %spec.select.i432.i.7 = select i1 %i.afd, float %i.afc, float %spec.select.i432.i.6 ; 2 uses
  %i.afe = trunc nuw nsw i64 %indvars.iv.next.i434.i.6 to i32
  %spec.select14.i433.i.7 = select i1 %i.afd, i32 %i.afe, i32 %spec.select14.i433.i.6 ; 2 uses
  %indvars.iv.next.i434.i.7 = add nuw nsw i64 %indvars.iv.i429.i, 8 ; 2 uses
  %niter947.next.7 = add i64 %niter947, 8         ; 2 uses
  %niter947.ncmp.7 = icmp eq i64 %niter947.next.7, %unroll_iter946
  br i1 %niter947.ncmp.7, label %.lr.ph.i428.i.epil.preheader, label %.lr.ph.i428.i, !llvm.loop !237

.lr.ph.i428.i.epil.preheader:                     ; preds = %.lr.ph.i428.i, %.lr.ph.preheader.i426.i.epilog-lcssa
  %indvars.iv.i429.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i426.i.epilog-lcssa ], [ %indvars.iv.next.i434.i.7, %.lr.ph.i428.i ]
  %.01016.i430.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i426.i.epilog-lcssa ], [ %spec.select14.i433.i.7, %.lr.ph.i428.i ]
  %.01115.i431.i.epil.init = phi float [ %i.adv, %.lr.ph.preheader.i426.i.epilog-lcssa ], [ %spec.select.i432.i.7, %.lr.ph.i428.i ]
  br label %.lr.ph.i428.i.epil

.lr.ph.i428.i.epil:                               ; preds = %.lr.ph.i428.i.epil, %.lr.ph.i428.i.epil.preheader
  %indvars.iv.i429.i.epil = phi i64 [ %indvars.iv.i429.i.epil.init, %.lr.ph.i428.i.epil.preheader ], [ %indvars.iv.next.i434.i.epil, %.lr.ph.i428.i.epil ] ; 3 uses
  %.01016.i430.i.epil = phi i32 [ %.01016.i430.i.epil.init, %.lr.ph.i428.i.epil.preheader ], [ %spec.select14.i433.i.epil, %.lr.ph.i428.i.epil ]
  %.01115.i431.i.epil = phi float [ %.01115.i431.i.epil.init, %.lr.ph.i428.i.epil.preheader ], [ %spec.select.i432.i.epil, %.lr.ph.i428.i.epil ] ; 2 uses
  %epil.iter942 = phi i64 [ 0, %.lr.ph.i428.i.epil.preheader ], [ %epil.iter942.next, %.lr.ph.i428.i.epil ]
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv.i429.i.epil
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !53 ; 2 uses
  %i.afh = fcmp olt float %i.afg, %.01115.i431.i.epil ; 2 uses
  %spec.select.i432.i.epil = select i1 %i.afh, float %i.afg, float %.01115.i431.i.epil
  %i.afi = trunc nuw nsw i64 %indvars.iv.i429.i.epil to i32
  %spec.select14.i433.i.epil = select i1 %i.afh, i32 %i.afi, i32 %.01016.i430.i.epil ; 2 uses
  %indvars.iv.next.i434.i.epil = add nuw nsw i64 %indvars.iv.i429.i.epil, 1
  %epil.iter942.next = add i64 %epil.iter942, 1   ; 2 uses
  %epil.iter942.cmp.not = icmp eq i64 %epil.iter942.next, %xtraiter941
  br i1 %epil.iter942.cmp.not, label %_ZL11FindMinimumPKfi.exit436.loopexit.i.epilog-lcssa, label %.lr.ph.i428.i.epil, !llvm.loop !239

_ZL11FindMinimumPKfi.exit436.loopexit.i.epilog-lcssa: ; preds = %.lr.ph.i428.i.epil
  %i.afj = sext i32 %spec.select14.i433.i.epil to i64
  br label %_ZL11FindMinimumPKfi.exit436.i

_ZL11FindMinimumPKfi.exit436.i:                   ; preds = %_ZL11FindMinimumPKfi.exit436.loopexit.i.epilog-lcssa, %_ZL11FindMinimumPKfi.exit.i
  %i.afk = phi float [ %i.adj, %_ZL11FindMinimumPKfi.exit.i ], [ %i.adu, %_ZL11FindMinimumPKfi.exit436.loopexit.i.epilog-lcssa ]
  %i.afl = phi float [ %i.adi, %_ZL11FindMinimumPKfi.exit.i ], [ %i.ads, %_ZL11FindMinimumPKfi.exit436.loopexit.i.epilog-lcssa ]
  %i.afm = phi float [ %i.adh, %_ZL11FindMinimumPKfi.exit.i ], [ %i.adq, %_ZL11FindMinimumPKfi.exit436.loopexit.i.epilog-lcssa ]
  %.010.lcssa.i425.i = phi i64 [ 0, %_ZL11FindMinimumPKfi.exit.i ], [ %i.afj, %_ZL11FindMinimumPKfi.exit436.loopexit.i.epilog-lcssa ] ; 3 uses
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.xs, i64 %.010.lcssa.i425.i
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !53
  %i.afp = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %.010.lcssa.i425.i
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !53
  %i.afr = getelementptr inbounds [4 x i8], ptr %i.xu, i64 %.010.lcssa.i425.i
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !53
  %i.aft = fadd float %i.afm, %i.afo              ; 2 uses
  %i.afu = fcmp ogt float %i.aft, 0.000000e+00
  br i1 %i.afu, label %bb.bc, label %bb.bd

bb.u:                                             ; preds = %bb.bb, %.lr.ph528.i
  %indvars.iv565.i = phi i64 [ 0, %.lr.ph528.i ], [ %indvars.iv.next566.i, %bb.bb ] ; 22 uses
  %i.afv = load i32, ptr %i.xl, align 4, !tbaa !304
  %i.afw = trunc nuw nsw i64 %indvars.iv565.i to i32
  %i.afx = sub nsw i32 %i.afw, %i.afv
  %i.afy = sitofp i32 %i.afx to float             ; 8 uses
  br i1 %i.zl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.afz = load float, ptr %i.zn, align 4, !tbaa !53
  %i.aga = load float, ptr %i.zo, align 4, !tbaa !53
  %i.agb = fsub float %i.aga, %i.afz
  %i.agc = fadd float %i.agb, %i.afy
  %i.agd = load i32, ptr %i.lo, align 4, !tbaa !59
  %i.age = tail call noundef float @_ZN3gmx25calculateAcceptanceWeightE23LambdaWeightCalculationf(i32 noundef %i.agd, float noundef %i.agc) ; 3 uses
  %i.agf = load ptr, ptr %i.zp, align 8, !tbaa !67
  %i.agg = load i64, ptr %i.zq, align 8
  %i.agh = mul nsw i64 %i.agg, %i.zm
  %i.agi = getelementptr [4 x i8], ptr %i.agf, i64 %i.agh
  %i.agj = getelementptr [4 x i8], ptr %i.agi, i64 %indvars.iv565.i ; 2 uses
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !53
  %i.agl = fadd float %i.age, %i.agk
  store float %i.agl, ptr %i.agj, align 4, !tbaa !53
  %i.agm = load ptr, ptr %i.zr, align 8, !tbaa !67
  %i.agn = load i64, ptr %i.zs, align 8
  %i.ago = mul nsw i64 %i.agn, %i.zm
  %i.agp = getelementptr [4 x i8], ptr %i.agm, i64 %i.ago
  %i.agq = getelementptr [4 x i8], ptr %i.agp, i64 %indvars.iv565.i ; 2 uses
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !53
  %i.ags = tail call float @llvm.fmuladd.f32(float %i.age, float %i.age, float %i.agr)
  store float %i.ags, ptr %i.agq, align 4, !tbaa !53
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.zt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.agt = load float, ptr %i.zv, align 4, !tbaa !53
  %i.agu = load float, ptr %i.zu, align 4, !tbaa !53
  %i.agv = fsub float %i.agt, %i.agu
  %i.agw = fsub float %i.agv, %i.afy
  %i.agx = load i32, ptr %i.lo, align 4, !tbaa !59
  %i.agy = tail call noundef float @_ZN3gmx25calculateAcceptanceWeightE23LambdaWeightCalculationf(i32 noundef %i.agx, float noundef %i.agw) ; 3 uses
  %i.agz = load ptr, ptr %i.zw, align 8, !tbaa !67
  %i.aha = load i64, ptr %i.zx, align 8
  %i.ahb = mul nsw i64 %i.aha, %i.p
  %i.ahc = getelementptr [4 x i8], ptr %i.agz, i64 %i.ahb
  %i.ahd = getelementptr [4 x i8], ptr %i.ahc, i64 %indvars.iv565.i ; 2 uses
  %i.ahe = load float, ptr %i.ahd, align 4, !tbaa !53
  %i.ahf = fadd float %i.agy, %i.ahe
  store float %i.ahf, ptr %i.ahd, align 4, !tbaa !53
  %i.ahg = load ptr, ptr %i.zy, align 8, !tbaa !67
  %i.ahh = load i64, ptr %i.zz, align 8
  %i.ahi = mul nsw i64 %i.ahh, %i.p
  %i.ahj = getelementptr [4 x i8], ptr %i.ahg, i64 %i.ahi
  %i.ahk = getelementptr [4 x i8], ptr %i.ahj, i64 %indvars.iv565.i ; 2 uses
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !53
  %i.ahm = tail call float @llvm.fmuladd.f32(float %i.agy, float %i.agy, float %i.ahl)
  store float %i.ahm, ptr %i.ahk, align 4, !tbaa !53
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ahn = load ptr, ptr %i.o, align 8, !tbaa !52 ; 2 uses
  %i.aho = getelementptr [4 x i8], ptr %i.ahn, i64 %i.p ; 2 uses
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !54 ; 6 uses
  br i1 %i.zl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ahq = getelementptr [4 x i8], ptr %i.ahn, i64 %i.zm
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 -4
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0373.i = phi i32 [ %i.ahs, %bb.z ], [ 0, %bb.y ] ; 4 uses
  br i1 %i.zt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aht = getelementptr i8, ptr %i.aho, i64 4
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0372.i = phi i32 [ %i.ahu, %bb.ab ], [ 0, %bb.aa ] ; 4 uses
  %i.ahv = icmp sgt i32 %i.ahp, 0                 ; 5 uses
  br i1 %i.ahv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ahw = load ptr, ptr %i.zp, align 8, !tbaa !67
  %i.ahx = load i64, ptr %i.zq, align 8
  %i.ahy = mul nsw i64 %i.ahx, %i.p
  %i.ahz = getelementptr [4 x i8], ptr %i.ahw, i64 %i.ahy
  %i.aia = getelementptr [4 x i8], ptr %i.ahz, i64 %indvars.iv565.i
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !53
  %i.aic = uitofp nneg i32 %i.ahp to float        ; 3 uses
  %i.aid = fdiv float %i.aib, %i.aic
  %i.aie = load ptr, ptr %i.zw, align 8, !tbaa !67
  %i.aif = load i64, ptr %i.zx, align 8
  %i.aig = mul nsw i64 %i.aif, %i.p
  %i.aih = getelementptr [4 x i8], ptr %i.aie, i64 %i.aig
  %i.aii = getelementptr [4 x i8], ptr %i.aih, i64 %indvars.iv565.i
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !53
  %i.aik = load ptr, ptr %i.zr, align 8, !tbaa !67
  %i.ail = load i64, ptr %i.zs, align 8
  %i.aim = mul nsw i64 %i.ail, %i.p
  %i.ain = getelementptr [4 x i8], ptr %i.aik, i64 %i.aim
  %i.aio = getelementptr [4 x i8], ptr %i.ain, i64 %indvars.iv565.i
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !53
  %i.aiq = insertelement <2 x float> poison, float %i.aip, i64 0
  %i.air = insertelement <2 x float> %i.aiq, float %i.aij, i64 1
  %i.ais = insertelement <2 x float> poison, float %i.aic, i64 0
  %i.ait = shufflevector <2 x float> %i.ais, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aiu = fdiv <2 x float> %i.air, %i.ait
  %i.aiv = load ptr, ptr %i.zy, align 8, !tbaa !67
  %i.aiw = load i64, ptr %i.zz, align 8
  %i.aix = mul nsw i64 %i.aiw, %i.p
  %i.aiy = getelementptr [4 x i8], ptr %i.aiv, i64 %i.aix
  %i.aiz = getelementptr [4 x i8], ptr %i.aiy, i64 %indvars.iv565.i
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !53
  %i.ajb = fdiv float %i.aja, %i.aic
  %i.ajc = fcmp oge float %i.ajb, 0.000000e+00
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0371.i = phi float [ %i.aid, %bb.ad ], [ 0.000000e+00, %bb.ac ] ; 6 uses
  %.0368.i = phi i1 [ %i.ajc, %bb.ad ], [ true, %bb.ac ]
  %i.ajd = phi <2 x float> [ %i.aiu, %bb.ad ], [ zeroinitializer, %bb.ac ] ; 3 uses
  %i.aje = icmp sgt i32 %.0373.i, 0               ; 3 uses
  %or.cond.i = select i1 %i.zl, i1 %i.aje, i1 false
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ajf = load ptr, ptr %i.zw, align 8, !tbaa !67
  %i.ajg = load i64, ptr %i.zx, align 8
  %i.ajh = mul nsw i64 %i.ajg, %i.aab
  %i.aji = getelementptr [4 x i8], ptr %i.ajf, i64 %i.ajh
  %i.ajj = getelementptr [4 x i8], ptr %i.aji, i64 %indvars.iv565.i
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !53
  %i.ajl = uitofp nneg i32 %.0373.i to float      ; 2 uses
  %i.ajm = fdiv float %i.ajk, %i.ajl
  %i.ajn = load ptr, ptr %i.zy, align 8, !tbaa !67
  %i.ajo = load i64, ptr %i.zz, align 8
  %i.ajp = mul nsw i64 %i.ajo, %i.aab
  %i.ajq = getelementptr [4 x i8], ptr %i.ajn, i64 %i.ajp
  %i.ajr = getelementptr [4 x i8], ptr %i.ajq, i64 %indvars.iv565.i
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !53
  %i.ajt = fdiv float %i.ajs, %i.ajl
  %7 = freeze float %i.ajt
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0367.i = phi float [ %i.ajm, %bb.af ], [ 0.000000e+00, %bb.ae ] ; 6 uses
  %.0366.i = phi float [ %7, %bb.af ], [ 0.000000e+00, %bb.ae ] ; 2 uses
  %i.aju = icmp sgt i32 %.0372.i, 0               ; 3 uses
  %or.cond3.i = select i1 %i.zt, i1 %i.aju, i1 false
  br i1 %or.cond3.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ajv = load ptr, ptr %i.zp, align 8, !tbaa !67
  %i.ajw = load i64, ptr %i.zq, align 8
  %i.ajx = mul nsw i64 %i.ajw, %i.aad
  %i.ajy = getelementptr [4 x i8], ptr %i.ajv, i64 %i.ajx
  %i.ajz = getelementptr [4 x i8], ptr %i.ajy, i64 %indvars.iv565.i
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !53
  %i.akb = uitofp nneg i32 %.0372.i to float      ; 2 uses
  %i.akc = fdiv float %i.aka, %i.akb
  %i.akd = load ptr, ptr %i.zr, align 8, !tbaa !67
  %i.ake = load i64, ptr %i.zs, align 8
  %i.akf = mul nsw i64 %i.ake, %i.aad
  %i.akg = getelementptr [4 x i8], ptr %i.akd, i64 %i.akf
  %i.akh = getelementptr [4 x i8], ptr %i.akg, i64 %indvars.iv565.i
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !53
  %i.akj = fdiv float %i.aki, %i.akb
  %8 = freeze float %i.akc
  %9 = freeze float %i.akj
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0365.i = phi float [ %8, %bb.ah ], [ 0.000000e+00, %bb.ag ] ; 6 uses
  %.0364.i = phi float [ %9, %bb.ah ], [ 0.000000e+00, %bb.ag ] ; 2 uses
  %i.akk = insertelement <4 x float> poison, float %.0371.i, i64 0
  %i.akl = shufflevector <2 x float> %i.ajd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akm = shufflevector <4 x float> %i.akk, <4 x float> %i.akl, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.akn = insertelement <4 x float> %i.akm, float %.0367.i, i64 3
  %.fr = freeze <4 x float> %i.akn
  %i.ako = fcmp oge float %.0366.i, 0.000000e+00
  %i.akp = fcmp oge float %.0365.i, 0.000000e+00
  %i.akq = fcmp oge float %.0364.i, 0.000000e+00
  %i.akr = fcmp ult <4 x float> %.fr, zeroinitializer
  %i.aks = bitcast <4 x i1> %i.akr to i4
  %i.akt = icmp eq i4 %i.aks, 0
  %op.rdx = and i1 %i.akt, %i.ako
  %10 = and i1 %op.rdx, %i.akp
  %op.rdx870 = and i1 %10, %i.akq
  %op.rdx871 = select i1 %op.rdx870, i1 %.0368.i, i1 false
  br i1 %op.rdx871, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL13UpdateWeightsiP10t_expandedP12df_history_tiPKfS4_lENK3$_0clEv", ptr noundef nonnull @.str.25, i32 noundef 566) #20
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %or.cond25.i = and i1 %i.zl, %i.ahv
  br i1 %or.cond25.i, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.aku = fcmp ogt float %.0371.i, 0.000000e+00
  %i.akv = fmul nnan float %.0371.i, %.0371.i
  %i.akw = extractelement <2 x float> %i.ajd, i64 0
  %i.akx = fdiv float %i.akw, %i.akv
  %i.aky = fadd float %i.akx, -1.000000e+00
  %.0362.i = select i1 %i.aku, float %i.aky, float 0.000000e+00 ; 3 uses
  br i1 %i.aje, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.akz = fcmp ogt float %.0367.i, 0.000000e+00
  %i.ala = fmul nnan float %.0367.i, %.0367.i
  %i.alb = fdiv float %.0366.i, %i.ala
  %i.alc = fadd float %i.alb, -1.000000e+00
  %i.ald = fpext float %i.alc to double
  %.0354.i = select i1 %i.akz, double %i.ald, double 0.000000e+00
  %i.ale = fcmp oeq float %.0371.i, 0.000000e+00
  %i.alf = fcmp oeq float %.0367.i, 0.000000e+00
  %or.cond19.i = select i1 %i.ale, i1 true, i1 %i.alf
  br i1 %or.cond19.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.alg = load float, ptr %i.zu, align 4, !tbaa !53
  %i.alh = load float, ptr %i.zo, align 4, !tbaa !53
  %i.ali = fsub float %i.alg, %i.alh
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.alj = tail call noundef float @logf(float noundef %.0371.i) #19
  %i.alk = tail call float @llvm.log.f32(float %.0367.i)
  %i.all = fsub float %i.alj, %i.alk
  %i.alm = fadd float %i.all, %i.afy
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0358.i = phi float [ %i.ali, %bb.an ], [ %i.alm, %bb.ao ]
  %i.aln = insertelement <2 x i32> poison, i32 %i.ahp, i64 0
  %i.alo = insertelement <2 x i32> %i.aln, i32 %.0373.i, i64 1
  %i.alp = uitofp <2 x i32> %i.alo to <2 x double>
  %i.alq = fpext float %.0362.i to double
  %i.alr = fdiv <2 x double> splat (double 1.000000e+00), %i.alp ; 2 uses
  %i.als = extractelement <2 x double> %i.alr, i64 1
  %i.alt = fmul double %i.als, %.0354.i
  %i.alu = extractelement <2 x double> %i.alr, i64 0
  %i.alv = tail call double @llvm.fmuladd.f64(double %i.alu, double %i.alq, double %i.alt)
  %i.alw = fptrunc double %i.alv to float
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.al, %bb.ak
  %.1363.i = phi float [ %.0362.i, %bb.ap ], [ %.0362.i, %bb.al ], [ 0.000000e+00, %bb.ak ] ; 3 uses
  %.1359.i = phi float [ %.0358.i, %bb.ap ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %.0356.i = phi float [ %i.alw, %bb.ap ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.ak ]
  %or.cond27.i = and i1 %i.zt, %i.ahv
  br i1 %or.cond27.i, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.aju, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.alx = fcmp ogt float %.0365.i, 0.000000e+00
  %i.aly = fmul nnan float %.0365.i, %.0365.i
  %i.alz = fdiv float %.0364.i, %i.aly
  %i.ama = fadd float %i.alz, -1.000000e+00
  %i.amb = fpext float %i.ama to double
  %.0.i = select i1 %i.alx, double %i.amb, double 0.000000e+00
  %i.amc = fcmp oeq float %.0365.i, 0.000000e+00
  %i.amd = extractelement <2 x float> %i.ajd, i64 1 ; 2 uses
  %i.ame = fcmp oeq float %i.amd, 0.000000e+00
  %or.cond21.i = select i1 %i.amc, i1 true, i1 %i.ame
  br i1 %or.cond21.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.amf = load float, ptr %i.zv, align 4, !tbaa !53
  %i.amg = load float, ptr %i.zu, align 4, !tbaa !53
  %i.amh = fsub float %i.amf, %i.amg
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ami = tail call float @llvm.log.f32(float %.0365.i)
  %i.amj = tail call float @llvm.log.f32(float %i.amd)
  %i.amk = fsub float %i.ami, %i.amj
  %i.aml = fadd float %i.amk, %i.afy
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0357.i = phi float [ %i.amh, %bb.at ], [ %i.aml, %bb.au ]
  %i.amm = insertelement <2 x i32> poison, i32 %.0372.i, i64 0
  %i.amn = insertelement <2 x i32> %i.amm, i32 %i.ahp, i64 1
  %i.amo = uitofp <2 x i32> %i.amn to <2 x double>
  %i.amp = fdiv <2 x double> splat (double 1.000000e+00), %i.amo ; 2 uses
  %i.amq = extractelement <2 x double> %i.amp, i64 1
  %i.amr = fmul double %i.amq, 0.000000e+00
  %i.ams = extractelement <2 x double> %i.amp, i64 0
  %i.amt = tail call double @llvm.fmuladd.f64(double %i.ams, double %.0.i, double %i.amr)
  %i.amu = fptrunc double %i.amt to float
  br label %.thread.i

bb.aw:                                            ; preds = %bb.aq
  %spec.select610.i = select i1 %i.ahv, float %.1363.i, float 0.000000e+00
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aw, %bb.av, %bb.ar
  %.sink604.i = phi float [ %spec.select610.i, %bb.aw ], [ %.1363.i, %bb.ar ], [ %.1363.i, %bb.av ]
  %.0355500.i = phi float [ 0.000000e+00, %bb.aw ], [ 0.000000e+00, %bb.ar ], [ %i.amu, %bb.av ]
  %.1498.i = phi float [ 0.000000e+00, %bb.aw ], [ 0.000000e+00, %bb.ar ], [ %.0357.i, %bb.av ]
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv565.i
  store float %.sink604.i, ptr %i.amv, align 4, !tbaa !53
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv565.i
  store float %.1359.i, ptr %i.amw, align 4, !tbaa !53
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %indvars.iv565.i
  store float %.0356.i, ptr %i.amx, align 4, !tbaa !53
  br i1 %i.aje, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread.i
  %i.amy = fpext float %i.afy to double
  %i.amz = sitofp i32 %i.ahp to double
  %i.ana = uitofp nneg i32 %.0373.i to double
  %i.anb = fdiv double %i.amz, %i.ana
  %i.anc = tail call double @log(double noundef %i.anb) #19
  %i.and = fadd double %i.anc, %i.amy
  %i.ane = load float, ptr %i.aaf, align 4, !tbaa !53
  %i.anf = fpext float %i.ane to double
  %i.ang = fsub double %i.and, %i.anf
  %i.anh = fptrunc double %i.ang to float
  br label %bb.az

bb.ay:                                            ; preds = %.thread.i
  %i.ani = load float, ptr %i.aaf, align 4, !tbaa !53
  %i.anj = fsub float %i.afy, %i.ani
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sink606.i = phi float [ %i.anj, %bb.ay ], [ %i.anh, %bb.ax ]
  %i.ank = tail call float @llvm.fabs.f32(float %.sink606.i)
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %indvars.iv565.i
  store float %i.ank, ptr %i.anl, align 4, !tbaa !53
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv565.i
  store float 0.000000e+00, ptr %i.anm, align 4, !tbaa !53
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv565.i
  store float %.1498.i, ptr %i.ann, align 4, !tbaa !53
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv565.i
  store float %.0355500.i, ptr %i.ano, align 4, !tbaa !53
  %i.anp = select i1 %i.ahv, i1 %i.aju, i1 false
  br i1 %i.anp, label %bb.ba, label %.thread502.i

bb.ba:                                            ; preds = %bb.az
  %i.anq = fpext float %i.afy to double
  %i.anr = uitofp nneg i32 %.0372.i to double
  %i.ans = uitofp nneg i32 %i.ahp to double
  %i.ant = fdiv double %i.anr, %i.ans
  %i.anu = tail call double @log(double noundef %i.ant) #19
  %i.anv = fadd double %i.anu, %i.anq
  %i.anw = load float, ptr %i.aae, align 4, !tbaa !53
  %i.anx = fpext float %i.anw to double
  %i.any = fsub double %i.anv, %i.anx
  %i.anz = fptrunc double %i.any to float
  br label %bb.bb

.thread502.i:                                     ; preds = %bb.az
  %i.aoa = load float, ptr %i.aae, align 4, !tbaa !53
  %i.aob = fsub float %i.afy, %i.aoa
  br label %bb.bb

bb.bb:                                            ; preds = %.thread502.i, %bb.ba
  %.sink608.i = phi float [ %i.aob, %.thread502.i ], [ %i.anz, %bb.ba ]
  %i.aoc = tail call float @llvm.fabs.f32(float %.sink608.i)
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %indvars.iv565.i
  store float %i.aoc, ptr %i.aod, align 4, !tbaa !53
  %indvars.iv.next566.i = add nuw nsw i64 %indvars.iv565.i, 1 ; 2 uses
  %exitcond569.not.i = icmp eq i64 %indvars.iv.next566.i, %wide.trip.count568.i
  br i1 %exitcond569.not.i, label %._crit_edge529.i, label %bb.u, !llvm.loop !240

bb.bc:                                            ; preds = %_ZL11FindMinimumPKfi.exit436.i
  %i.aoe = tail call nnan float @llvm.log.f32(float %i.aft)
  %i.aof = fmul nnan float %i.aoe, 5.000000e-01
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZL11FindMinimumPKfi.exit436.i
  %.0378.i = phi float [ %i.aof, %bb.bc ], [ 0.000000e+00, %_ZL11FindMinimumPKfi.exit436.i ] ; 11 uses
  %i.aog = icmp sgt i32 %3, 0
  br i1 %i.aog, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aoh = add nsw i32 %3, -1
  %i.aoi = zext nneg i32 %i.aoh to i64            ; 2 uses
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.aoi
  store float %i.afl, ptr %i.aoj, align 4, !tbaa !53
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.aoi
  store float %i.afk, ptr %i.aok, align 4, !tbaa !53
  br label %bb.bf
end_hunk_0
