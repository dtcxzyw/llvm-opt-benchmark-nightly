Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ado ; 2 uses
  %i.adr = load <2 x float>, ptr %i.adq, align 4, !tbaa !62
  store <2 x float> %i.adr, ptr %i.adp, align 8, !tbaa !62
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !62
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  store float %i.adt, ptr %i.adu, align 8, !tbaa !62
  %i.adv = mul nuw i64 %indvars.iv.i336, 3
  %i.adw = add nuw i64 %i.adv, 3                  ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.adw ; 2 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.adw ; 2 uses
  %i.adz = load <2 x float>, ptr %i.ady, align 4, !tbaa !62
  store <2 x float> %i.adz, ptr %i.adx, align 4, !tbaa !62
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !62
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  store float %i.aeb, ptr %i.aec, align 4, !tbaa !62
  %indvars.iv.next.i337.1 = add nuw nsw i64 %indvars.iv.i336, 2 ; 2 uses
  %niter1181.next.1 = add i64 %niter1181, 2       ; 2 uses
  %niter1181.ncmp.1 = icmp eq i64 %niter1181.next.1, %unroll_iter1180
  br i1 %niter1181.ncmp.1, label %.lr.ph.us.preheader.i.i.unr-lcssa, label %.lr.ph.i335

bb.cb:                                            ; preds = %_ZL13polyMinExtentPKfi.exit.i
  %i.aed = add nsw i32 %.0254.lcssa, -1
  %i.aee = add nsw i32 %i.go, -1
  %i.aef = add nsw i32 %i.gs, -1
  %i.aeg = insertelement <2 x float> poison, float %i.adj, i64 0
  %i.aeh = shufflevector <2 x float> %i.aeg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aei = insertelement <2 x i32> poison, i32 %i.gk, i64 0
  %i.aej = insertelement <2 x i32> %i.aei, i32 %i.gh, i64 1
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i346, %bb.cb
  %.4 = phi i32 [ %.0254.lcssa, %bb.cb ], [ %.5, %.loopexit.i346 ] ; 7 uses
  %indvars.iv588.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next589.i, %.loopexit.i346 ] ; 3 uses
  %.0238483.i = phi i32 [ 0, %bb.cb ], [ %.3241.i, %.loopexit.i346 ] ; 2 uses
  %.0247482.i = phi i32 [ %i.aed, %bb.cb ], [ %i.ans, %.loopexit.i346 ] ; 2 uses
  %i.aek = mul nsw i32 %.0247482.i, 3
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ael ; 5 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv588.i, 12
  %i.aen = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i ; 5 uses
  %i.aeo = load float, ptr %i.aem, align 4, !tbaa !62 ; 5 uses
  %i.aep = load float, ptr %i.aen, align 4, !tbaa !62 ; 5 uses
  %i.aeq = fsub float %i.aeo, %i.aep
  %i.aer = call float @llvm.fabs.f32(float %i.aeq)
  %i.aes = fcmp olt float %i.aer, f0x358637BD
  br i1 %i.aes, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.aeu = load float, ptr %i.aet, align 4, !tbaa !62
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !62
  %i.aex = fcmp ogt float %i.aeu, %i.aew
  br i1 %i.aex, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.aey = fcmp ogt float %i.aeo, %i.aep
  br i1 %i.aey, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.aez = phi float [ %i.aeo, %bb.ce ], [ %i.aeo, %bb.cd ], [ %i.aep, %bb.cf ]
  %i.afa = phi float [ %i.aep, %bb.ce ], [ %i.aep, %bb.cd ], [ %i.aeo, %bb.cf ]
  %.0434.i = phi ptr [ %i.aem, %bb.ce ], [ %i.aem, %bb.cd ], [ %i.aen, %bb.cf ] ; 2 uses
  %.0433.i = phi ptr [ %i.aen, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.aem, %bb.cf ] ; 2 uses
  %.0245.i = phi i1 [ false, %bb.ce ], [ false, %bb.cd ], [ true, %bb.cf ]
  %i.afb = getelementptr inbounds nuw i8, ptr %.0433.i, i64 4
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !62
  %i.afd = getelementptr inbounds nuw i8, ptr %.0434.i, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !62 ; 2 uses
  %i.aff = fsub float %i.afc, %i.afe
  %i.afg = getelementptr inbounds nuw i8, ptr %.0433.i, i64 8
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !62
  %i.afi = getelementptr inbounds nuw i8, ptr %.0434.i, i64 8
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !62
  %i.afk = insertelement <2 x float> poison, float %i.afh, i64 0
  %i.afl = insertelement <2 x float> %i.afk, float %i.afa, i64 1
  %i.afm = insertelement <2 x float> poison, float %i.afj, i64 0
  %i.afn = insertelement <2 x float> %i.afm, float %i.aez, i64 1 ; 2 uses
  %i.afo = fsub <2 x float> %i.afl, %i.afn        ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.afo, %i.afo
  %i.afp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.afq = extractelement <2 x float> %i.afo, i64 1 ; 2 uses
  %i.afr = call float @llvm.fmuladd.f32(float %i.afq, float %i.afq, float %i.afp)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.afr)
  %i.afs = fdiv float %sqrt.i, %3
  %i.aft = call float @llvm.floor.f32(float %i.afs)
  %i.afu = fptosi float %i.aft to i32
  %i.afv = call i32 @llvm.smin.i32(i32 %i.afu, i32 30)
  %spec.store.select.i = add nsw i32 %i.afv, 1    ; 2 uses
  %i.afw = add nsw i32 %spec.store.select.i, %.4  ; 2 uses
  %i.afx = icmp sgt i32 %i.afw, 126
  %i.afy = sub nsw i32 126, %.4
  %spec.select.i = select i1 %i.afx, i32 %i.afy, i32 %spec.store.select.i ; 3 uses
  %.not260451.i = icmp slt i32 %spec.select.i, 0
  br i1 %.not260451.i, label %._crit_edge455.i, label %.lr.ph454.i

.lr.ph454.i:                                      ; preds = %bb.cg
  %i.afz = uitofp nneg i32 %spec.select.i to float
  %i.aga = load float, ptr %i.et, align 8, !tbaa !144 ; 2 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %i.afw, i32 126)
  %reass.sub = sub i32 %smin.i, %.4
  %i.agb = add i32 %reass.sub, 1
  %wide.trip.count553.i = zext i32 %i.agb to i64
  br label %bb.ch

._crit_edge455.i:                                 ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  store i32 %spec.select.i, ptr %i.ey, align 4, !tbaa !68
  br label %bb.cu

bb.ch:                                            ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, %.lr.ph454.i
  %indvars.iv550.i = phi i64 [ 0, %.lr.ph454.i ], [ %indvars.iv.next551.i, %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i ] ; 3 uses
  %i.agc = trunc nuw nsw i64 %indvars.iv550.i to i32
  %i.agd = uitofp nneg i32 %i.agc to float
  %i.age = fdiv float %i.agd, %i.afz              ; 2 uses
  %.idx696.i = mul nuw nsw i64 %indvars.iv550.i, 12
  %i.agf = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx696.i ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.agi = insertelement <2 x float> poison, float %i.age, i64 0
  %i.agj = shufflevector <2 x float> %i.agi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afo, <2 x float> %i.agj, <2 x float> %i.afn) ; 3 uses
  %i.agl = extractelement <2 x float> %i.agk, i64 1
  store float %i.agl, ptr %i.agf, align 4, !tbaa !62
  %i.agm = extractelement <2 x float> %i.agk, i64 0
  store float %i.agm, ptr %i.agh, align 4, !tbaa !62
  %i.agn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agk, <2 x float> %i.aeh, <2 x float> splat (float f0x3C23D70A))
  %i.ago = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.agn)
  %i.agp = fptosi <2 x float> %i.ago to <2 x i32>
  %i.agq = sub nsw <2 x i32> %i.agp, %i.aej       ; 3 uses
  %i.agr = extractelement <2 x i32> %i.agq, i64 1
  %i.ags = call i32 @llvm.smin.i32(i32 %i.agr, i32 %i.aee)
  %i.agt = icmp slt <2 x i32> %i.agq, zeroinitializer ; 2 uses
  %i.agu = extractelement <2 x i1> %i.agt, i64 1
  %i.agv = select i1 %i.agu, i32 0, i32 %i.ags    ; 2 uses
  %i.agw = extractelement <2 x i32> %i.agq, i64 0
  %i.agx = call i32 @llvm.smin.i32(i32 %i.agw, i32 %i.aef)
  %i.agy = extractelement <2 x i1> %i.agt, i64 0
  %i.agz = select i1 %i.agy, i32 0, i32 %i.agx    ; 2 uses
  %i.aha = mul nsw i32 %i.agz, %i.go
  %i.ahb = add nsw i32 %i.aha, %i.agv
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.ahc
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !132 ; 2 uses
  %.not865 = icmp eq i16 %i.ahe, -1
  br i1 %.not865, label %.lr.ph.i.i343, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i

.lr.ph.i.i343:                                    ; preds = %bb.ch
  %i.ahf = call float @llvm.fmuladd.f32(float %i.aff, float %i.age, float %i.afe)
  %i.ahg = fneg float %i.ahf
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cs, %.lr.ph.i.i343
  %.066110.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %i.ahw, %bb.cs ]
  %.067109.i.i = phi float [ f0x7F7FFFFF, %.lr.ph.i.i343 ], [ %.3.i.i345, %bb.cs ] ; 4 uses
  %.068108.i.i = phi i32 [ 16, %.lr.ph.i.i343 ], [ %.169.i.i, %bb.cs ] ; 3 uses
  %.071107.i.i = phi i32 [ 8, %.lr.ph.i.i343 ], [ %.172.i.i, %bb.cs ] ; 3 uses
  %.074106.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %.175.i.i, %bb.cs ] ; 2 uses
  %.077105.i.i = phi i32 [ 1, %.lr.ph.i.i343 ], [ %.178.i.i, %bb.cs ] ; 2 uses
  %.080103.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %i.aij, %bb.cs ] ; 5 uses
  %.082101.i.i = phi i32 [ 1, %.lr.ph.i.i343 ], [ %i.aii, %bb.cs ] ; 7 uses
  %.084100.i.i = phi i16 [ -1, %.lr.ph.i.i343 ], [ %.387.i.i, %bb.cs ] ; 3 uses
  %i.ahh = add nsw i32 %.082101.i.i, %i.agv       ; 3 uses
  %i.ahi = add nsw i32 %.080103.i.i, %i.agz       ; 3 uses
  %i.ahj = icmp sgt i32 %i.ahh, -1
  %i.ahk = icmp sgt i32 %i.ahi, -1
  %or.cond.i.i344 = select i1 %i.ahj, i1 %i.ahk, i1 false
  %i.ahl = icmp slt i32 %i.ahh, %i.go
  %or.cond98.i.i = and i1 %i.ahl, %or.cond.i.i344
  %i.ahm = icmp slt i32 %i.ahi, %i.gs
  %or.cond99.i.i = select i1 %or.cond98.i.i, i1 %i.ahm, i1 false
  br i1 %or.cond99.i.i, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ahn = mul nuw nsw i32 %i.ahi, %i.go
  %i.aho = add nuw nsw i32 %i.ahn, %i.ahh
  %i.ahp = zext nneg i32 %i.aho to i64
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ahp
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !132 ; 3 uses
  %.not.i.i347 = icmp eq i16 %i.ahr, -1
  br i1 %.not.i.i347, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ahs = uitofp i16 %i.ahr to float
  %i.aht = call float @llvm.fmuladd.f32(float %i.ahs, float %i.aga, float %i.ahg)
  %i.ahu = call float @llvm.fabs.f32(float %i.aht) ; 2 uses
  %i.ahv = fcmp olt float %i.ahu, %.067109.i.i    ; 2 uses
  %.185.i.i = select i1 %i.ahv, i16 %i.ahr, i16 %.084100.i.i
  %.1.i.i = select i1 %i.ahv, float %i.ahu, float %.067109.i.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %.387.i.i = phi i16 [ %.084100.i.i, %bb.ci ], [ %.185.i.i, %bb.ck ], [ %.084100.i.i, %bb.cj ] ; 4 uses
  %.3.i.i345 = phi float [ %.067109.i.i, %bb.ci ], [ %.1.i.i, %bb.ck ], [ %.067109.i.i, %bb.cj ]
  %i.ahw = add nuw nsw i32 %.066110.i.i, 1        ; 3 uses
  %i.ahx = icmp eq i32 %i.ahw, %.071107.i.i
  br i1 %i.ahx, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %.not93.i.i = icmp eq i16 %.387.i.i, -1
  br i1 %.not93.i.i, label %bb.cn, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.ahy = add nsw i32 %.071107.i.i, %.068108.i.i
  %i.ahz = add nsw i32 %.068108.i.i, 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cl
  %.172.i.i = phi i32 [ %i.ahy, %bb.cn ], [ %.071107.i.i, %bb.cl ]
  %.169.i.i = phi i32 [ %i.ahz, %bb.cn ], [ %.068108.i.i, %bb.cl ]
  %i.aia = icmp eq i32 %.082101.i.i, %.080103.i.i
  br i1 %i.aia, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aib = icmp slt i32 %.082101.i.i, 0
  %i.aic = sub nsw i32 0, %.080103.i.i
  %i.aid = icmp eq i32 %.082101.i.i, %i.aic
  %or.cond95.i.i = select i1 %i.aib, i1 %i.aid, i1 false
  br i1 %or.cond95.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aie = icmp sgt i32 %.082101.i.i, 0
  %i.aif = sub nsw i32 1, %.080103.i.i
  %i.aig = icmp eq i32 %.082101.i.i, %i.aif
  %or.cond97.i.i = select i1 %i.aie, i1 %i.aig, i1 false
  br i1 %or.cond97.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co
  %i.aih = sub nsw i32 0, %.074106.i.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.178.i.i = phi i32 [ %i.aih, %bb.cr ], [ %.077105.i.i, %bb.cq ] ; 2 uses
  %.175.i.i = phi i32 [ %.077105.i.i, %bb.cr ], [ %.074106.i.i, %bb.cq ] ; 2 uses
  %i.aii = add nsw i32 %.178.i.i, %.082101.i.i
  %i.aij = add nsw i32 %.175.i.i, %.080103.i.i
  %exitcond.not.i267.i = icmp eq i32 %i.ahw, %i.ex
  br i1 %exitcond.not.i267.i, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, label %bb.ci

_ZL9getHeightffffffiRK13rcHeightPatch.exit.i:     ; preds = %bb.cs, %bb.cm, %bb.ch
  %.5.i.i = phi i16 [ %i.ahe, %bb.ch ], [ %.387.i.i, %bb.cm ], [ %.387.i.i, %bb.cs ]
  %i.aik = uitofp i16 %.5.i.i to float
  %i.ail = fmul float %i.aga, %i.aik
  store float %i.ail, ptr %i.agg, align 4, !tbaa !62
  %indvars.iv.next551.i = add nuw nsw i64 %indvars.iv550.i, 1 ; 2 uses
  %exitcond554.not.i = icmp eq i64 %indvars.iv.next551.i, %wide.trip.count553.i
  br i1 %exitcond554.not.i, label %._crit_edge455.i, label %bb.ch

bb.ct:                                            ; preds = %._crit_edge462.thread.i
  %i.aim = add i32 %.0238483.i, 1                 ; 4 uses
  %i.ain = sext i32 %.0238483.i to i64
  %i.aio = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ain
  store i32 %.0247482.i, ptr %i.aio, align 4, !tbaa !68
  %i.aip = icmp sgt i32 %.1236.i, 2               ; 2 uses
  br i1 %.0245.i, label %bb.cv, label %.preheader442.i

.preheader442.i:                                  ; preds = %bb.ct
  br i1 %i.aip, label %.lr.ph471.i, label %.loopexit.i346

.lr.ph471.i:                                      ; preds = %.preheader442.i
  %i.aiq = sext i32 %.4 to i64
  %i.air = sext i32 %i.aim to i64
  %wide.trip.count575.i = zext nneg i32 %i.aml to i64
  br label %bb.cx

bb.cu:                                            ; preds = %._crit_edge462.thread.i, %._crit_edge455.i
  %.0233468.i = phi i32 [ 0, %._crit_edge455.i ], [ %.1234.i, %._crit_edge462.thread.i ] ; 5 uses
  %.0235467.i = phi i32 [ 2, %._crit_edge455.i ], [ %.1236.i, %._crit_edge462.thread.i ] ; 6 uses
  %i.ais = sext i32 %.0233468.i to i64
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ais
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !68 ; 3 uses
  %i.aiv = add nsw i32 %.0233468.i, 1             ; 3 uses
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aiw ; 2 uses
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !68 ; 4 uses
  %.0228456.i = add nsw i32 %i.aiu, 1
  %i.aiz = icmp slt i32 %.0228456.i, %i.aiy
  br i1 %i.aiz, label %.lr.ph461.i, label %._crit_edge462.thread.i

.lr.ph461.i:                                      ; preds = %bb.cu
  %i.aja = mul nsw i32 %i.aiy, 3
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ajb ; 3 uses
  %i.ajd = mul nsw i32 %i.aiu, 3
  %i.aje = sext i32 %i.ajd to i64
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.aje ; 2 uses
  %i.ajg = load float, ptr %i.ajc, align 4, !tbaa !62
  %i.ajh = load float, ptr %i.ajf, align 4, !tbaa !62 ; 5 uses
  %i.aji = fsub float %i.ajg, %i.ajh              ; 6 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajc, i64 4
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !62
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajf, i64 4
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !62
  %i.ajo = load <2 x float>, ptr %i.ajl, align 4, !tbaa !62 ; 4 uses
  %i.ajp = extractelement <2 x float> %i.ajo, i64 0 ; 3 uses
  %i.ajq = fsub float %i.ajk, %i.ajp              ; 6 uses
  %i.ajr = extractelement <2 x float> %i.ajo, i64 1 ; 3 uses
  %i.ajs = fsub float %i.ajn, %i.ajr              ; 6 uses
  %i.ajt = fmul float %i.ajq, %i.ajq
  %i.aju = call float @llvm.fmuladd.f32(float %i.aji, float %i.aji, float %i.ajt)
  %i.ajv = call float @llvm.fmuladd.f32(float %i.ajs, float %i.ajs, float %i.aju)
  %.fr593 = freeze float %i.ajv                   ; 2 uses
  %i.ajw = fcmp ogt float %.fr593, 0.000000e+00
  %i.ajx = sext i32 %i.aiu to i64
  %i.ajy = add nsw i64 %i.ajx, 1                  ; 2 uses
  br i1 %i.ajw, label %.lr.ph461.i.split.us, label %.lr.ph461.i.split

.lr.ph461.i.split.us:                             ; preds = %.lr.ph461.i, %.lr.ph461.i.split.us
  %indvars.iv555.i.us = phi i64 [ %indvars.iv.next556.i.us, %.lr.ph461.i.split.us ], [ %i.ajy, %.lr.ph461.i ] ; 3 uses
  %.0229458.i.us = phi i32 [ %.1230.i.us, %.lr.ph461.i.split.us ], [ -1, %.lr.ph461.i ]
  %.0231457.i.us = phi float [ %.1232.i.us, %.lr.ph461.i.split.us ], [ 0.000000e+00, %.lr.ph461.i ] ; 2 uses
  %.idx697.i.us = mul nsw i64 %indvars.iv555.i.us, 12
  %i.ajz = getelementptr inbounds i8, ptr %i.c, i64 %.idx697.i.us ; 2 uses
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !62 ; 2 uses
  %i.akb = fsub float %i.aka, %i.ajh
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajz, i64 4
  %i.akd = load <2 x float>, ptr %i.akc, align 4, !tbaa !62 ; 3 uses
  %i.ake = fsub <2 x float> %i.akd, %i.ajo        ; 2 uses
  %i.akf = extractelement <2 x float> %i.ake, i64 0
  %i.akg = fmul float %i.ajq, %i.akf
  %i.akh = call float @llvm.fmuladd.f32(float %i.aji, float %i.akb, float %i.akg)
  %i.aki = extractelement <2 x float> %i.ake, i64 1
  %i.akj = call float @llvm.fmuladd.f32(float %i.ajs, float %i.aki, float %i.akh)
  %i.akk = fdiv float %i.akj, %.fr593             ; 3 uses
  %i.akl = fcmp olt float %i.akk, 0.000000e+00
  %i.akm = fcmp ogt float %i.akk, 1.000000e+00
  %spec.store.select.i.i.us = select i1 %i.akm, float 1.000000e+00, float %i.akk
  %.1.i268.i.us = select i1 %i.akl, float 0.000000e+00, float %spec.store.select.i.i.us ; 3 uses
  %i.akn = call float @llvm.fmuladd.f32(float %.1.i268.i.us, float %i.aji, float %i.ajh)
  %i.ako = fsub float %i.akn, %i.aka              ; 2 uses
  %i.akp = call float @llvm.fmuladd.f32(float %.1.i268.i.us, float %i.ajq, float %i.ajp)
  %i.akq = extractelement <2 x float> %i.akd, i64 0
  %i.akr = fsub float %i.akp, %i.akq              ; 2 uses
  %i.aks = call float @llvm.fmuladd.f32(float %.1.i268.i.us, float %i.ajs, float %i.ajr)
  %i.akt = extractelement <2 x float> %i.akd, i64 1
  %i.aku = fsub float %i.aks, %i.akt              ; 2 uses
  %i.akv = fmul float %i.akr, %i.akr
  %i.akw = call float @llvm.fmuladd.f32(float %i.ako, float %i.ako, float %i.akv)
  %i.akx = call noundef float @llvm.fmuladd.f32(float %i.aku, float %i.aku, float %i.akw) ; 2 uses
  %i.aky = fcmp ogt float %i.akx, %.0231457.i.us  ; 2 uses
  %.1232.i.us = select i1 %i.aky, float %i.akx, float %.0231457.i.us ; 2 uses
  %i.akz = trunc nsw i64 %indvars.iv555.i.us to i32
  %.1230.i.us = select i1 %i.aky, i32 %i.akz, i32 %.0229458.i.us ; 2 uses
  %indvars.iv.next556.i.us = add nsw i64 %indvars.iv555.i.us, 1 ; 2 uses
  %lftr.wideiv.i.us = trunc i64 %indvars.iv.next556.i.us to i32
  %exitcond558.not.i.us = icmp eq i32 %i.aiy, %lftr.wideiv.i.us
  br i1 %exitcond558.not.i.us, label %._crit_edge462.i, label %.lr.ph461.i.split.us

._crit_edge462.i:                                 ; preds = %.lr.ph461.i.split, %.lr.ph461.i.split.us
  %.us-phi = phi float [ %.1232.i.us, %.lr.ph461.i.split.us ], [ %.1232.i, %.lr.ph461.i.split ]
  %.us-phi565 = phi i32 [ %.1230.i.us, %.lr.ph461.i.split.us ], [ %.1230.i, %.lr.ph461.i.split ] ; 2 uses
  %.not261.i = icmp ne i32 %.us-phi565, -1
  %i.ala = fcmp ogt float %.us-phi, %i.ez
  %or.cond436.i = select i1 %.not261.i, i1 %i.ala, i1 false
  br i1 %or.cond436.i, label %.preheader441.i, label %._crit_edge462.thread.i

.preheader441.i:                                  ; preds = %._crit_edge462.i
  %i.alb = icmp sgt i32 %.0235467.i, %.0233468.i
  br i1 %i.alb, label %.lr.ph465.preheader.i, label %._crit_edge466.i

.lr.ph465.preheader.i:                            ; preds = %.preheader441.i
  %i.alc = sext i32 %.0235467.i to i64
  %i.ald = xor i32 %.0233468.i, -1
  %i.ale = add i32 %.0235467.i, %i.ald
  %i.alf = zext i32 %i.ale to i64                 ; 2 uses
  %i.alg = shl nuw nsw i64 %i.alf, 2
  %i.alh = sub nsw i64 %i.alc, %i.alf
  %i.ali = shl nsw i64 %i.alh, 2                  ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.ali
  %scevgep560.i = getelementptr i8, ptr %scevgep559.i, i64 %i.ali
  %i.alj = add nuw nsw i64 %i.alg, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep560.i, i64 %i.alj, i1 false), !tbaa !68
  br label %._crit_edge466.i

.lr.ph461.i.split:                                ; preds = %.lr.ph461.i, %.lr.ph461.i.split
  %indvars.iv555.i = phi i64 [ %indvars.iv.next556.i, %.lr.ph461.i.split ], [ %i.ajy, %.lr.ph461.i ] ; 3 uses
  %.0229458.i = phi i32 [ %.1230.i, %.lr.ph461.i.split ], [ -1, %.lr.ph461.i ]
  %.0231457.i = phi float [ %.1232.i, %.lr.ph461.i.split ], [ 0.000000e+00, %.lr.ph461.i ] ; 2 uses
  %.idx697.i = mul nsw i64 %indvars.iv555.i, 12
  %i.alk = getelementptr inbounds i8, ptr %i.c, i64 %.idx697.i ; 2 uses
  %i.all = load float, ptr %i.alk, align 4, !tbaa !62 ; 2 uses
  %i.alm = fsub float %i.all, %i.ajh
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alk, i64 4
  %i.alo = load <2 x float>, ptr %i.aln, align 4, !tbaa !62 ; 3 uses
  %i.alp = fsub <2 x float> %i.alo, %i.ajo        ; 2 uses
  %i.alq = extractelement <2 x float> %i.alp, i64 0
  %i.alr = fmul float %i.ajq, %i.alq
  %i.als = call float @llvm.fmuladd.f32(float %i.aji, float %i.alm, float %i.alr)
  %i.alt = extractelement <2 x float> %i.alp, i64 1
  %i.alu = call float @llvm.fmuladd.f32(float %i.ajs, float %i.alt, float %i.als) ; 3 uses
  %i.alv = fcmp olt float %i.alu, 0.000000e+00
  %i.alw = fcmp ogt float %i.alu, 1.000000e+00
  %spec.store.select.i.i = select i1 %i.alw, float 1.000000e+00, float %i.alu
  %.1.i268.i = select i1 %i.alv, float 0.000000e+00, float %spec.store.select.i.i ; 3 uses
end_hunk_0
begin_hunk_1_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  %i.bid = fcmp ogt float %.0.i.i.i, 1.000000e+00
  %spec.store.select.i.i.i = select i1 %i.bid, float 1.000000e+00, float %.0.i.i.i
  %.1.i.i276.i = select i1 %i.bic, float 0.000000e+00, float %spec.store.select.i.i.i ; 2 uses
  %i.bie = extractelement <2 x float> %i.bhp, i64 1
  %i.bif = call float @llvm.fmuladd.f32(float %.1.i.i276.i, float %i.bie, float %.val33.pre.i.i)
  %i.big = fsub float %i.bif, %i.bgs              ; 2 uses
  %i.bih = extractelement <2 x float> %i.bht, i64 1
  %i.bii = call float @llvm.fmuladd.f32(float %.1.i.i276.i, float %i.bih, float %i.bhc)
  %i.bij = fsub float %i.bii, %i.bfy              ; 2 uses
  %i.bik = fmul float %i.bij, %i.bij
  %i.bil = call noundef float @llvm.fmuladd.f32(float %i.big, float %i.big, float %i.bik) ; 2 uses
  %i.bim = fcmp olt float %.0291.i.i, %i.bil
  %i.bin = select i1 %i.bim, float %.0291.i.i, float %i.bil ; 3 uses
  %indvars.iv.next.i277.i = add nuw nsw i64 %indvars.iv.i273.i, 1 ; 2 uses
  %i.bio = trunc nuw nsw i64 %indvars.iv.i273.i to i32
  %exitcond.not.i278.i = icmp eq i64 %indvars.iv.next.i277.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i278.i, label %._crit_edge.i.i334, label %.lr.ph.i272.i

._crit_edge.i.i334:                               ; preds = %bb.es
  %i.bip = icmp eq i32 %.1.i275.i, 0
  %i.biq = fneg float %i.bin
  br i1 %i.bip, label %bb.et, label %_ZL10distToPolyiPKfS0_.exit.i

bb.et:                                            ; preds = %._crit_edge.i.i334
  br label %_ZL10distToPolyiPKfS0_.exit.i

_ZL10distToPolyiPKfS0_.exit.i:                    ; preds = %bb.et, %._crit_edge.i.i334, %bb.ep
  %i.bir = phi float [ %i.biq, %._crit_edge.i.i334 ], [ %i.bin, %bb.et ], [ f0x7F7FFFFF, %bb.ep ]
  %i.bis = fcmp ogt float %i.bir, %i.fc
  br i1 %i.bis, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i, label %bb.eu

bb.eu:                                            ; preds = %_ZL10distToPolyiPKfS0_.exit.i
  %i.bit = icmp slt i64 %.sroa.0450.1, %.sroa.23.4
  br i1 %i.bit, label %bb.ev, label %bb.ew, !prof !142

bb.ev:                                            ; preds = %bb.eu
  %i.biu = getelementptr inbounds [4 x i8], ptr %.sroa.32.7, i64 %.sroa.0450.1
  store i32 %storemerge259503.i, ptr %i.biu, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i

bb.ew:                                            ; preds = %bb.eu
  %i.biv = add nsw i64 %.sroa.23.4, 1
  %i.biw = icmp sgt i64 %.sroa.23.4, 4611686018427387902
  %i.bix = shl nsw i64 %.sroa.23.4, 1
  %..i.i.i = call i64 @llvm.smax.i64(i64 %i.bix, i64 %i.biv)
  %.0.i.i279.i = select i1 %i.biw, i64 9223372036854775807, i64 %..i.i.i, !prof !141 ; 2 uses
  %i.biy = shl i64 %.0.i.i279.i, 2
  %i.biz = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.biy, i32 noundef 1) #7 ; 10 uses
  %.not.i379.i = icmp ne ptr %i.biz, null
  %i.bja = icmp sgt i64 %.sroa.0450.1, 0
  %or.cond721.i = select i1 %.not.i379.i, i1 %i.bja, i1 false
  br i1 %or.cond721.i, label %.lr.ph.i.i380.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i

.lr.ph.i.i380.i.preheader:                        ; preds = %bb.ew
  %i.bjb = ptrtoaddr ptr %i.biz to i64
  %min.iters.check1058 = icmp ult i64 %.sroa.0450.1, 8
  %i.bjc = sub i64 %.sroa.32.71055, %i.bjb
  %diff.check1056 = icmp ugt i64 %i.bjc, -32
  %or.cond1101 = select i1 %min.iters.check1058, i1 true, i1 %diff.check1056
  br i1 %or.cond1101, label %.lr.ph.i.i380.i.preheader1122, label %vector.ph1059

vector.ph1059:                                    ; preds = %.lr.ph.i.i380.i.preheader
  %n.vec1060 = and i64 %.sroa.0450.1, 9223372036854775800 ; 3 uses
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %vector.ph1059
  %index1062 = phi i64 [ 0, %vector.ph1059 ], [ %index.next1065, %vector.body1061 ] ; 3 uses
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %index1062 ; 2 uses
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.7, i64 %index1062 ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 16
  %wide.load1063 = load <4 x i32>, ptr %i.bje, align 4, !tbaa !68
  %wide.load1064 = load <4 x i32>, ptr %i.bjf, align 4, !tbaa !68
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjd, i64 16
  store <4 x i32> %wide.load1063, ptr %i.bjd, align 4, !tbaa !68
  store <4 x i32> %wide.load1064, ptr %i.bjg, align 4, !tbaa !68
  %index.next1065 = add nuw i64 %index1062, 8     ; 2 uses
  %i.bjh = icmp eq i64 %index.next1065, %n.vec1060
  br i1 %i.bjh, label %middle.block1066, label %vector.body1061, !llvm.loop !90

middle.block1066:                                 ; preds = %vector.body1061
  %cmp.n1067 = icmp eq i64 %.sroa.0450.1, %n.vec1060
  br i1 %cmp.n1067, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i, label %.lr.ph.i.i380.i.preheader1122

.lr.ph.i.i380.i.preheader1122:                    ; preds = %.lr.ph.i.i380.i.preheader, %middle.block1066
  %.07.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i380.i.preheader ], [ %n.vec1060, %middle.block1066 ] ; 3 uses
  %xtraiter1182 = and i64 %.sroa.0450.1, 3        ; 2 uses
  %lcmp.mod1183.not = icmp eq i64 %xtraiter1182, 0
  br i1 %lcmp.mod1183.not, label %.lr.ph.i.i380.i.prol.loopexit, label %.lr.ph.i.i380.i.prol

.lr.ph.i.i380.i.prol:                             ; preds = %.lr.ph.i.i380.i.preheader1122, %.lr.ph.i.i380.i.prol
  %.07.i.i.i.prol = phi i64 [ %i.bjl, %.lr.ph.i.i380.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i380.i.preheader1122 ] ; 3 uses
  %prol.iter1184 = phi i64 [ %prol.iter1184.next, %.lr.ph.i.i380.i.prol ], [ 0, %.lr.ph.i.i380.i.preheader1122 ]
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %.07.i.i.i.prol
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.7, i64 %.07.i.i.i.prol
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !68
  store i32 %i.bjk, ptr %i.bji, align 4, !tbaa !68
  %i.bjl = add nuw nsw i64 %.07.i.i.i.prol, 1     ; 2 uses
  %prol.iter1184.next = add i64 %prol.iter1184, 1 ; 2 uses
  %prol.iter1184.cmp.not = icmp eq i64 %prol.iter1184.next, %xtraiter1182
  br i1 %prol.iter1184.cmp.not, label %.lr.ph.i.i380.i.prol.loopexit, label %.lr.ph.i.i380.i.prol, !llvm.loop !91

.lr.ph.i.i380.i.prol.loopexit:                    ; preds = %.lr.ph.i.i380.i.prol, %.lr.ph.i.i380.i.preheader1122
  %.07.i.i.i.unr = phi i64 [ %.07.i.i.i.ph, %.lr.ph.i.i380.i.preheader1122 ], [ %i.bjl, %.lr.ph.i.i380.i.prol ]
  %i.bjm = sub nsw i64 %.07.i.i.i.ph, %.sroa.0450.1
  %i.bjn = icmp ugt i64 %i.bjm, -4
  br i1 %i.bjn, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i, label %.lr.ph.i.i380.i

.lr.ph.i.i380.i:                                  ; preds = %.lr.ph.i.i380.i.prol.loopexit, %.lr.ph.i.i380.i
  %.07.i.i.i = phi i64 [ %i.bkd, %.lr.ph.i.i380.i ], [ %.07.i.i.i.unr, %.lr.ph.i.i380.i.prol.loopexit ] ; 6 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %.07.i.i.i
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.7, i64 %.07.i.i.i
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !68
  store i32 %i.bjq, ptr %i.bjo, align 4, !tbaa !68
  %i.bjr = add nuw nsw i64 %.07.i.i.i, 1          ; 2 uses
  %i.bjs = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.bjr
  %i.bjt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.7, i64 %i.bjr
  %i.bju = load i32, ptr %i.bjt, align 4, !tbaa !68
  store i32 %i.bju, ptr %i.bjs, align 4, !tbaa !68
  %i.bjv = add nuw nsw i64 %.07.i.i.i, 2          ; 2 uses
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.bjv
  %i.bjx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.7, i64 %i.bjv
  %i.bjy = load i32, ptr %i.bjx, align 4, !tbaa !68
  store i32 %i.bjy, ptr %i.bjw, align 4, !tbaa !68
  %i.bjz = add nuw nsw i64 %.07.i.i.i, 3          ; 2 uses
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.bjz
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.7, i64 %i.bjz
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !68
  store i32 %i.bkc, ptr %i.bka, align 4, !tbaa !68
  %i.bkd = add nuw nsw i64 %.07.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i381.i.3 = icmp eq i64 %i.bkd, %.sroa.0450.1
  br i1 %exitcond.not.i.i381.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i, label %.lr.ph.i.i380.i, !llvm.loop !92

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i: ; preds = %.lr.ph.i.i380.i.prol.loopexit, %.lr.ph.i.i380.i, %middle.block1066, %bb.ew
  %i.bke = getelementptr inbounds [4 x i8], ptr %i.biz, i64 %.sroa.0450.1
  store i32 %storemerge259503.i, ptr %i.bke, align 4, !tbaa !68
  call void @_Z6rcFreePv(ptr noundef %.sroa.32.7) #7
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i: ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i, %bb.ev
  %.sroa.23.5 = phi i64 [ %.sroa.23.4, %bb.ev ], [ %.0.i.i279.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i ] ; 5 uses
  %.sroa.32.8 = phi ptr [ %.sroa.32.7, %bb.ev ], [ %i.biz, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i ] ; 10 uses
  %.sroa.32.81040 = ptrtoaddr ptr %.sroa.32.8 to i64
  %.sroa.0450.2 = add i64 %.sroa.0450.1, 1        ; 6 uses
  %i.bkf = load float, ptr %i.et, align 8, !tbaa !144
  %i.bkg = call float @llvm.fmuladd.f32(float %i.bgs, float %i.apr, float f0x3C23D70A)
  %i.bkh = call float @llvm.floor.f32(float %i.bkg)
  %i.bki = fptosi float %i.bkh to i32
  %i.bkj = sub nsw i32 %i.bki, %i.gh              ; 2 uses
  %i.bkk = icmp slt i32 %i.bkj, 0
  %i.bkl = call i32 @llvm.smin.i32(i32 %i.bkj, i32 %i.bfh)
  %i.bkm = select i1 %i.bkk, i32 0, i32 %i.bkl    ; 2 uses
  %i.bkn = add nsw i32 %i.bkm, %i.bgg
  %i.bko = sext i32 %i.bkn to i64
  %i.bkp = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.bko
  %i.bkq = load i16, ptr %i.bkp, align 2, !tbaa !132 ; 2 uses
  %.not866 = icmp eq i16 %i.bkq, -1
  br i1 %.not866, label %.lr.ph.i282.i, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit308.i

.lr.ph.i282.i:                                    ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i, %bb.fg
  %.066110.i283.i = phi i32 [ %i.blg, %bb.fg ], [ 0, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ]
  %.067109.i284.i = phi float [ %.3.i296.i, %bb.fg ], [ f0x7F7FFFFF, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ] ; 4 uses
  %.068108.i285.i = phi i32 [ %.169.i298.i, %bb.fg ], [ 16, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ] ; 3 uses
  %.071107.i286.i = phi i32 [ %.172.i297.i, %bb.fg ], [ 8, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ] ; 3 uses
  %.074106.i287.i = phi i32 [ %.175.i302.i, %bb.fg ], [ 0, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ] ; 2 uses
  %.077105.i288.i = phi i32 [ %.178.i301.i, %bb.fg ], [ 1, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ] ; 2 uses
  %.080103.i289.i = phi i32 [ %i.blt, %bb.fg ], [ 0, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ] ; 5 uses
  %.082101.i290.i = phi i32 [ %i.bls, %bb.fg ], [ 1, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ] ; 7 uses
  %.084100.i291.i = phi i16 [ %.387.i295.i, %bb.fg ], [ -1, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ] ; 3 uses
  %i.bkr = add nsw i32 %.082101.i290.i, %i.bkm    ; 3 uses
  %i.bks = add nsw i32 %.080103.i289.i, %i.bgf    ; 3 uses
  %i.bkt = icmp sgt i32 %i.bkr, -1
  %i.bku = icmp sgt i32 %i.bks, -1
  %or.cond.i292.i = select i1 %i.bkt, i1 %i.bku, i1 false
  %i.bkv = icmp slt i32 %i.bkr, %i.go
  %or.cond98.i293.i = and i1 %i.bkv, %or.cond.i292.i
  %i.bkw = icmp slt i32 %i.bks, %i.gs
  %or.cond99.i294.i = select i1 %or.cond98.i293.i, i1 %i.bkw, i1 false
  br i1 %or.cond99.i294.i, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %.lr.ph.i282.i
  %i.bkx = mul nuw nsw i32 %i.bks, %i.go
  %i.bky = add nuw nsw i32 %i.bkx, %i.bkr
  %i.bkz = zext nneg i32 %i.bky to i64
  %i.bla = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bkz
  %i.blb = load i16, ptr %i.bla, align 2, !tbaa !132 ; 3 uses
  %.not.i305.i = icmp eq i16 %i.blb, -1
  br i1 %.not.i305.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.blc = uitofp i16 %i.blb to float
  %i.bld = call float @llvm.fmuladd.f32(float %i.blc, float %i.bkf, float %i.bfg)
  %i.ble = call float @llvm.fabs.f32(float %i.bld) ; 2 uses
  %i.blf = fcmp olt float %i.ble, %.067109.i284.i ; 2 uses
  %.185.i306.i = select i1 %i.blf, i16 %i.blb, i16 %.084100.i291.i
  %.1.i307.i = select i1 %i.blf, float %i.ble, float %.067109.i284.i
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %.lr.ph.i282.i
  %.387.i295.i = phi i16 [ %.084100.i291.i, %.lr.ph.i282.i ], [ %.185.i306.i, %bb.ey ], [ %.084100.i291.i, %bb.ex ] ; 4 uses
  %.3.i296.i = phi float [ %.067109.i284.i, %.lr.ph.i282.i ], [ %.1.i307.i, %bb.ey ], [ %.067109.i284.i, %bb.ex ]
  %i.blg = add nuw nsw i32 %.066110.i283.i, 1     ; 3 uses
  %i.blh = icmp eq i32 %i.blg, %.071107.i286.i
  br i1 %i.blh, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %.not93.i304.i = icmp eq i16 %.387.i295.i, -1
  br i1 %.not93.i304.i, label %bb.fb, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit308.i

bb.fb:                                            ; preds = %bb.fa
  %i.bli = add nsw i32 %.071107.i286.i, %.068108.i285.i
  %i.blj = add nsw i32 %.068108.i285.i, 8
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ez
  %.172.i297.i = phi i32 [ %i.bli, %bb.fb ], [ %.071107.i286.i, %bb.ez ]
  %.169.i298.i = phi i32 [ %i.blj, %bb.fb ], [ %.068108.i285.i, %bb.ez ]
  %i.blk = icmp eq i32 %.082101.i290.i, %.080103.i289.i
  br i1 %i.blk, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.bll = icmp slt i32 %.082101.i290.i, 0
  %i.blm = sub nsw i32 0, %.080103.i289.i
  %i.bln = icmp eq i32 %.082101.i290.i, %i.blm
  %or.cond95.i299.i = select i1 %i.bll, i1 %i.bln, i1 false
  br i1 %or.cond95.i299.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.blo = icmp sgt i32 %.082101.i290.i, 0
  %i.blp = sub nsw i32 1, %.080103.i289.i
  %i.blq = icmp eq i32 %.082101.i290.i, %i.blp
  %or.cond97.i300.i = select i1 %i.blo, i1 %i.blq, i1 false
  br i1 %or.cond97.i300.i, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc
  %i.blr = sub nsw i32 0, %.074106.i287.i
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.178.i301.i = phi i32 [ %i.blr, %bb.ff ], [ %.077105.i288.i, %bb.fe ] ; 2 uses
  %.175.i302.i = phi i32 [ %.077105.i288.i, %bb.ff ], [ %.074106.i287.i, %bb.fe ] ; 2 uses
  %i.bls = add nsw i32 %.178.i301.i, %.082101.i290.i
  %i.blt = add nsw i32 %.175.i302.i, %.080103.i289.i
  %exitcond.not.i303.i = icmp eq i32 %i.blg, %i.ex
  br i1 %exitcond.not.i303.i, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit308.i, label %.lr.ph.i282.i

_ZL9getHeightffffffiRK13rcHeightPatch.exit308.i:  ; preds = %bb.fg, %bb.fa, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i
  %.5.i280.i = phi i16 [ %i.bkq, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit.i ], [ %.387.i295.i, %bb.fa ], [ %.387.i295.i, %bb.fg ]
  %i.blu = zext i16 %.5.i280.i to i32             ; 2 uses
  %i.blv = icmp slt i64 %.sroa.0450.2, %.sroa.23.5
  br i1 %i.blv, label %bb.fh, label %bb.fi, !prof !142

bb.fh:                                            ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit308.i
  %i.blw = getelementptr inbounds [4 x i8], ptr %.sroa.32.8, i64 %.sroa.0450.2
  store i32 %i.blu, ptr %i.blw, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i

bb.fi:                                            ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit308.i
  %i.blx = add nsw i64 %.sroa.23.5, 1
  %i.bly = icmp sgt i64 %.sroa.23.5, 4611686018427387902
  %i.blz = shl nsw i64 %.sroa.23.5, 1
  %..i.i309.i = call i64 @llvm.smax.i64(i64 %i.blz, i64 %i.blx)
  %.0.i.i310.i = select i1 %i.bly, i64 9223372036854775807, i64 %..i.i309.i, !prof !141 ; 2 uses
  %i.bma = shl i64 %.0.i.i310.i, 2
  %i.bmb = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bma, i32 noundef 1) #7 ; 10 uses
  %.not.i382.i = icmp ne ptr %i.bmb, null
  %i.bmc = icmp sgt i64 %.sroa.0450.1, -1
  %or.cond722.i = select i1 %.not.i382.i, i1 %i.bmc, i1 false
  br i1 %or.cond722.i, label %.lr.ph.i.i383.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i

.lr.ph.i.i383.i.preheader:                        ; preds = %bb.fi
  %i.bmd = ptrtoaddr ptr %i.bmb to i64
  %min.iters.check1043 = icmp ult i64 %.sroa.0450.2, 8
  %i.bme = sub i64 %.sroa.32.81040, %i.bmd
  %diff.check1041 = icmp ugt i64 %i.bme, -32
  %or.cond1102 = select i1 %min.iters.check1043, i1 true, i1 %diff.check1041
  br i1 %or.cond1102, label %.lr.ph.i.i383.i.preheader1121, label %vector.ph1044

vector.ph1044:                                    ; preds = %.lr.ph.i.i383.i.preheader
  %n.vec1045 = and i64 %.sroa.0450.2, -8          ; 3 uses
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %vector.ph1044
  %index1047 = phi i64 [ 0, %vector.ph1044 ], [ %index.next1050, %vector.body1046 ] ; 3 uses
  %i.bmf = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %index1047 ; 2 uses
  %i.bmg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %index1047 ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 16
  %wide.load1048 = load <4 x i32>, ptr %i.bmg, align 4, !tbaa !68
  %wide.load1049 = load <4 x i32>, ptr %i.bmh, align 4, !tbaa !68
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmf, i64 16
  store <4 x i32> %wide.load1048, ptr %i.bmf, align 4, !tbaa !68
  store <4 x i32> %wide.load1049, ptr %i.bmi, align 4, !tbaa !68
  %index.next1050 = add nuw i64 %index1047, 8     ; 2 uses
  %i.bmj = icmp eq i64 %index.next1050, %n.vec1045
  br i1 %i.bmj, label %middle.block1051, label %vector.body1046, !llvm.loop !93

middle.block1051:                                 ; preds = %vector.body1046
  %cmp.n1052 = icmp eq i64 %.sroa.0450.2, %n.vec1045
  br i1 %cmp.n1052, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i, label %.lr.ph.i.i383.i.preheader1121

.lr.ph.i.i383.i.preheader1121:                    ; preds = %.lr.ph.i.i383.i.preheader, %middle.block1051
  %.07.i.i384.i.ph = phi i64 [ 0, %.lr.ph.i.i383.i.preheader ], [ %n.vec1045, %middle.block1051 ] ; 3 uses
  %i.bmk = add nuw i64 %.sroa.0450.1, 1
  %i.bml = sub i64 %.sroa.0450.1, %.07.i.i384.i.ph
  %xtraiter1185 = and i64 %i.bmk, 3               ; 2 uses
  %lcmp.mod1186.not = icmp eq i64 %xtraiter1185, 0
  br i1 %lcmp.mod1186.not, label %.lr.ph.i.i383.i.prol.loopexit, label %.lr.ph.i.i383.i.prol

.lr.ph.i.i383.i.prol:                             ; preds = %.lr.ph.i.i383.i.preheader1121, %.lr.ph.i.i383.i.prol
  %.07.i.i384.i.prol = phi i64 [ %i.bmp, %.lr.ph.i.i383.i.prol ], [ %.07.i.i384.i.ph, %.lr.ph.i.i383.i.preheader1121 ] ; 3 uses
  %prol.iter1187 = phi i64 [ %prol.iter1187.next, %.lr.ph.i.i383.i.prol ], [ 0, %.lr.ph.i.i383.i.preheader1121 ]
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %.07.i.i384.i.prol
  %i.bmn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %.07.i.i384.i.prol
  %i.bmo = load i32, ptr %i.bmn, align 4, !tbaa !68
  store i32 %i.bmo, ptr %i.bmm, align 4, !tbaa !68
  %i.bmp = add nuw nsw i64 %.07.i.i384.i.prol, 1  ; 2 uses
  %prol.iter1187.next = add i64 %prol.iter1187, 1 ; 2 uses
  %prol.iter1187.cmp.not = icmp eq i64 %prol.iter1187.next, %xtraiter1185
  br i1 %prol.iter1187.cmp.not, label %.lr.ph.i.i383.i.prol.loopexit, label %.lr.ph.i.i383.i.prol, !llvm.loop !94

.lr.ph.i.i383.i.prol.loopexit:                    ; preds = %.lr.ph.i.i383.i.prol, %.lr.ph.i.i383.i.preheader1121
  %.07.i.i384.i.unr = phi i64 [ %.07.i.i384.i.ph, %.lr.ph.i.i383.i.preheader1121 ], [ %i.bmp, %.lr.ph.i.i383.i.prol ]
  %i.bmq = icmp ult i64 %i.bml, 3
  br i1 %i.bmq, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i, label %.lr.ph.i.i383.i

.lr.ph.i.i383.i:                                  ; preds = %.lr.ph.i.i383.i.prol.loopexit, %.lr.ph.i.i383.i
  %.07.i.i384.i = phi i64 [ %i.bng, %.lr.ph.i.i383.i ], [ %.07.i.i384.i.unr, %.lr.ph.i.i383.i.prol.loopexit ] ; 6 uses
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %.07.i.i384.i
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %.07.i.i384.i
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !68
  store i32 %i.bmt, ptr %i.bmr, align 4, !tbaa !68
  %i.bmu = add nuw nsw i64 %.07.i.i384.i, 1       ; 2 uses
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %i.bmu
  %i.bmw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %i.bmu
  %i.bmx = load i32, ptr %i.bmw, align 4, !tbaa !68
  store i32 %i.bmx, ptr %i.bmv, align 4, !tbaa !68
  %i.bmy = add nuw nsw i64 %.07.i.i384.i, 2       ; 2 uses
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %i.bmy
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %i.bmy
  %i.bnb = load i32, ptr %i.bna, align 4, !tbaa !68
  store i32 %i.bnb, ptr %i.bmz, align 4, !tbaa !68
  %i.bnc = add nuw nsw i64 %.07.i.i384.i, 3       ; 3 uses
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %i.bnc
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %i.bnc
  %i.bnf = load i32, ptr %i.bne, align 4, !tbaa !68
  store i32 %i.bnf, ptr %i.bnd, align 4, !tbaa !68
  %i.bng = add nuw nsw i64 %.07.i.i384.i, 4
  %exitcond.not.i.i385.i.3 = icmp eq i64 %i.bnc, %.sroa.0450.1
  br i1 %exitcond.not.i.i385.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i, label %.lr.ph.i.i383.i, !llvm.loop !95

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i: ; preds = %.lr.ph.i.i383.i.prol.loopexit, %.lr.ph.i.i383.i, %middle.block1051, %bb.fi
  %i.bnh = getelementptr inbounds [4 x i8], ptr %i.bmb, i64 %.sroa.0450.2
  store i32 %i.blu, ptr %i.bnh, align 4, !tbaa !68
  call void @_Z6rcFreePv(ptr noundef %.sroa.32.8) #7
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i: ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i, %bb.fh
  %.sroa.23.6 = phi i64 [ %.sroa.23.5, %bb.fh ], [ %.0.i.i310.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i ] ; 5 uses
  %.sroa.32.9 = phi ptr [ %.sroa.32.8, %bb.fh ], [ %i.bmb, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i ] ; 10 uses
  %.sroa.32.91025 = ptrtoaddr ptr %.sroa.32.9 to i64
  %.sroa.0450.3 = add nsw i64 %.sroa.0450.1, 2    ; 7 uses
  %i.bni = icmp slt i64 %.sroa.0450.3, %.sroa.23.6
  br i1 %i.bni, label %bb.fj, label %bb.fk, !prof !142

bb.fj:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i
  %i.bnj = getelementptr inbounds [4 x i8], ptr %.sroa.32.9, i64 %.sroa.0450.3
  store i32 %storemerge507.i, ptr %i.bnj, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit314.i

bb.fk:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i
  %i.bnk = add nsw i64 %.sroa.23.6, 1
  %i.bnl = icmp sgt i64 %.sroa.23.6, 4611686018427387902
  %i.bnm = shl nsw i64 %.sroa.23.6, 1
  %..i.i312.i = call i64 @llvm.smax.i64(i64 %i.bnm, i64 %i.bnk)
  %.0.i.i313.i = select i1 %i.bnl, i64 9223372036854775807, i64 %..i.i312.i, !prof !141 ; 2 uses
  %i.bnn = shl i64 %.0.i.i313.i, 2
  %i.bno = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bnn, i32 noundef 1) #7 ; 10 uses
  %.not.i387.i = icmp ne ptr %i.bno, null
  %i.bnp = icmp sgt i64 %.sroa.0450.1, -2
  %or.cond723.i = select i1 %.not.i387.i, i1 %i.bnp, i1 false
  br i1 %or.cond723.i, label %.lr.ph.i.i388.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i

.lr.ph.i.i388.i.preheader:                        ; preds = %bb.fk
  %i.bnq = ptrtoaddr ptr %i.bno to i64
  %min.iters.check1028 = icmp ult i64 %.sroa.0450.3, 8
  %i.bnr = sub i64 %.sroa.32.91025, %i.bnq
  %diff.check1026 = icmp ugt i64 %i.bnr, -32
  %or.cond1103 = select i1 %min.iters.check1028, i1 true, i1 %diff.check1026
  br i1 %or.cond1103, label %.lr.ph.i.i388.i.preheader1120, label %vector.ph1029

vector.ph1029:                                    ; preds = %.lr.ph.i.i388.i.preheader
  %n.vec1030 = and i64 %.sroa.0450.3, -8          ; 3 uses
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1029
  %index1032 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1035, %vector.body1031 ] ; 3 uses
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %i.bno, i64 %index1032 ; 2 uses
  %i.bnt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.9, i64 %index1032 ; 2 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 16
  %wide.load1033 = load <4 x i32>, ptr %i.bnt, align 4, !tbaa !68
  %wide.load1034 = load <4 x i32>, ptr %i.bnu, align 4, !tbaa !68
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bns, i64 16
end_hunk_1
begin_hunk_2_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  %i.cfc = load i32, ptr %i.cfb, align 4, !tbaa !68
  %i.cfd = icmp eq i32 %i.ces, %i.cfc
  br i1 %i.cfd, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.lr.ph.i34.i366.i
  %i.cfe = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i35.i367.i
  %i.cff = load i32, ptr %i.cfe, align 4, !tbaa !68
  %i.cfg = icmp eq i32 %i.ceu, %i.cff
  br i1 %i.cfg, label %_ZL6onHulliiiPi.exit39.loopexit.i371.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.lr.ph.i34.i366.i
  %indvars.iv.next.i37.i369.i = add nuw nsw i64 %indvars.iv.i35.i367.i, 1 ; 2 uses
  %exitcond.not.i38.i370.i = icmp eq i64 %indvars.iv.next.i37.i369.i, %wide.trip.count.i.i342.i
  br i1 %exitcond.not.i38.i370.i, label %_ZL6onHulliiiPi.exit39.loopexit.i371.i, label %.lr.ph.i34.i366.i

_ZL6onHulliiiPi.exit39.loopexit.i371.i:           ; preds = %bb.hh, %bb.hg
  %.ph5.i372.i = phi i32 [ 4, %bb.hg ], [ 0, %bb.hh ]
  %i.cfh = or disjoint i32 %.ph5.i372.i, %.1.i.i352.i
  br label %_ZL6onHulliiiPi.exit39.i355.i

_ZL6onHulliiiPi.exit39.i355.i:                    ; preds = %_ZL6onHulliiiPi.exit39.loopexit.i371.i, %_ZL6onHulliiiPi.exit.i351.i
  %i.cfi = phi i32 [ %.1.i.i352.i, %_ZL6onHulliiiPi.exit.i351.i ], [ %i.cfh, %_ZL6onHulliiiPi.exit39.loopexit.i371.i ] ; 2 uses
  %or.cond.i42.i356.i = and i1 %.not.i.i348.i, %.not21.i28.i353.i
  br i1 %or.cond.i42.i356.i, label %.lr.ph.i47.i359.i, label %_ZL6onHulliiiPi.exit52.i357.i

.lr.ph.i47.i359.i:                                ; preds = %_ZL6onHulliiiPi.exit39.i355.i, %bb.hj
  %indvars.iv.i48.i360.i = phi i64 [ %indvars.iv.next.i50.i362.i, %bb.hj ], [ 0, %_ZL6onHulliiiPi.exit39.i355.i ] ; 3 uses
  %.01623.i49.i361.i = phi i64 [ %indvars.iv.i48.i360.i, %bb.hj ], [ %i.cdu, %_ZL6onHulliiiPi.exit39.i355.i ]
  %i.cfj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01623.i49.i361.i
  %i.cfk = load i32, ptr %i.cfj, align 4, !tbaa !68
  %i.cfl = icmp eq i32 %i.ceu, %i.cfk
  br i1 %i.cfl, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %.lr.ph.i47.i359.i
  %i.cfm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i48.i360.i
  %i.cfn = load i32, ptr %i.cfm, align 4, !tbaa !68
  %i.cfo = icmp eq i32 %i.ceq, %i.cfn
  br i1 %i.cfo, label %_ZL6onHulliiiPi.exit52.loopexit.i364.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %.lr.ph.i47.i359.i
  %indvars.iv.next.i50.i362.i = add nuw nsw i64 %indvars.iv.i48.i360.i, 1 ; 2 uses
  %exitcond.not.i51.i363.i = icmp eq i64 %indvars.iv.next.i50.i362.i, %wide.trip.count.i.i342.i
  br i1 %exitcond.not.i51.i363.i, label %_ZL6onHulliiiPi.exit52.loopexit.i364.i, label %.lr.ph.i47.i359.i

_ZL6onHulliiiPi.exit52.loopexit.i364.i:           ; preds = %bb.hj, %bb.hi
  %.ph.i365.i = phi i32 [ 16, %bb.hi ], [ 0, %bb.hj ]
  %i.cfp = or disjoint i32 %.ph.i365.i, %i.cfi
  br label %_ZL6onHulliiiPi.exit52.i357.i

_ZL6onHulliiiPi.exit52.i357.i:                    ; preds = %_ZL6onHulliiiPi.exit52.loopexit.i364.i, %_ZL6onHulliiiPi.exit39.i355.i
  %i.cfq = phi i32 [ %i.cfi, %_ZL6onHulliiiPi.exit39.i355.i ], [ %i.cfp, %_ZL6onHulliiiPi.exit52.loopexit.i364.i ]
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cep, i64 12
  store i32 %i.cfq, ptr %i.cfr, align 4, !tbaa !68
  %indvars.iv.next9.i358.i = add nuw nsw i64 %indvars.iv8.i347.i, 4 ; 2 uses
  %i.cfs = icmp sgt i64 %.val.i, %indvars.iv.next9.i358.i
  br i1 %i.cfs, label %.lr.ph.split.i346.i, label %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit

_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa: ; preds = %_ZL6onHulliiiPi.exit.us.i.i
  %lcmp.mod1207.not = icmp eq i64 %xtraiter1205, 0
  br i1 %lcmp.mod1207.not, label %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit, label %_ZL6onHulliiiPi.exit.us.i.i.epil.preheader

_ZL6onHulliiiPi.exit.us.i.i.epil.preheader:       ; preds = %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa, %_ZL6onHulliiiPi.exit.us.i.i.preheader
  %indvars.iv.i270.i.epil.init = phi i64 [ 0, %_ZL6onHulliiiPi.exit.us.i.i.preheader ], [ %indvars.iv.next.i271.i.7, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa ]
  %lcmp.mod1208 = icmp ne i64 %xtraiter1205, 0
  call void @llvm.assume(i1 %lcmp.mod1208)
  br label %_ZL6onHulliiiPi.exit.us.i.i.epil

_ZL6onHulliiiPi.exit.us.i.i.epil:                 ; preds = %_ZL6onHulliiiPi.exit.us.i.i.epil, %_ZL6onHulliiiPi.exit.us.i.i.epil.preheader
  %indvars.iv.i270.i.epil = phi i64 [ %indvars.iv.next.i271.i.epil, %_ZL6onHulliiiPi.exit.us.i.i.epil ], [ %indvars.iv.i270.i.epil.init, %_ZL6onHulliiiPi.exit.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter1206 = phi i64 [ %epil.iter1206.next, %_ZL6onHulliiiPi.exit.us.i.i.epil ], [ 0, %_ZL6onHulliiiPi.exit.us.i.i.epil.preheader ]
  %i.cft = getelementptr inbounds nuw [4 x i8], ptr %.val264.i, i64 %indvars.iv.i270.i.epil
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cft, i64 12
  store i32 0, ptr %i.cfu, align 4, !tbaa !68
  %indvars.iv.next.i271.i.epil = add nuw nsw i64 %indvars.iv.i270.i.epil, 4
  %epil.iter1206.next = add i64 %epil.iter1206, 1 ; 2 uses
  %epil.iter1206.cmp.not = icmp eq i64 %epil.iter1206.next, %xtraiter1205
  br i1 %epil.iter1206.cmp.not, label %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit, label %_ZL6onHulliiiPi.exit.us.i.i.epil, !llvm.loop !108

_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa: ; preds = %_ZL6onHulliiiPi.exit.us.i343.i
  %lcmp.mod1201.not = icmp eq i64 %xtraiter1200, 0
  br i1 %lcmp.mod1201.not, label %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit, label %_ZL6onHulliiiPi.exit.us.i343.i.epil.preheader

_ZL6onHulliiiPi.exit.us.i343.i.epil.preheader:    ; preds = %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa, %_ZL6onHulliiiPi.exit.us.i343.i.preheader
  %indvars.iv.i344.i.epil.init = phi i64 [ 0, %_ZL6onHulliiiPi.exit.us.i343.i.preheader ], [ %indvars.iv.next.i345.i.7, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa ]
  %lcmp.mod1202 = icmp ne i64 %xtraiter1200, 0
  call void @llvm.assume(i1 %lcmp.mod1202)
  br label %_ZL6onHulliiiPi.exit.us.i343.i.epil

_ZL6onHulliiiPi.exit.us.i343.i.epil:              ; preds = %_ZL6onHulliiiPi.exit.us.i343.i.epil, %_ZL6onHulliiiPi.exit.us.i343.i.epil.preheader
  %indvars.iv.i344.i.epil = phi i64 [ %indvars.iv.next.i345.i.epil, %_ZL6onHulliiiPi.exit.us.i343.i.epil ], [ %indvars.iv.i344.i.epil.init, %_ZL6onHulliiiPi.exit.us.i343.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL6onHulliiiPi.exit.us.i343.i.epil ], [ 0, %_ZL6onHulliiiPi.exit.us.i343.i.epil.preheader ]
  %i.cfv = getelementptr inbounds nuw [4 x i8], ptr %.val262.i, i64 %indvars.iv.i344.i.epil
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cfv, i64 12
  store i32 0, ptr %i.cfw, align 4, !tbaa !68
  %indvars.iv.next.i345.i.epil = add nuw nsw i64 %indvars.iv.i344.i.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1200
  br i1 %epil.iter.cmp.not, label %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit, label %_ZL6onHulliiiPi.exit.us.i343.i.epil, !llvm.loop !109

_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit: ; preds = %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa, %_ZL6onHulliiiPi.exit.us.i343.i.epil, %_ZL6onHulliiiPi.exit52.i357.i, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa, %_ZL6onHulliiiPi.exit.us.i.i.epil, %_ZL6onHulliiiPi.exit52.i.i, %bb.ee, %bb.em, %bb.hd
  %.sroa.11.6 = phi i64 [ %.sroa.11.1, %bb.hd ], [ %.sroa.11.0581, %_ZL6onHulliiiPi.exit52.i.i ], [ %.sroa.11.0581, %bb.ee ], [ %.sroa.11.0581, %bb.em ], [ %.sroa.11.0581, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa ], [ %.sroa.11.1, %_ZL6onHulliiiPi.exit52.i357.i ], [ %.sroa.11.0581, %_ZL6onHulliiiPi.exit.us.i.i.epil ], [ %.sroa.11.1, %_ZL6onHulliiiPi.exit.us.i343.i.epil ], [ %.sroa.11.1, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa ]
  %.sroa.14472.9 = phi ptr [ %.sroa.14472.4, %bb.hd ], [ %.sroa.14472.0582, %_ZL6onHulliiiPi.exit52.i.i ], [ %.sroa.14472.0582, %bb.ee ], [ %.sroa.14472.0582, %bb.em ], [ %.sroa.14472.0582, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa ], [ %.sroa.14472.4, %_ZL6onHulliiiPi.exit52.i357.i ], [ %.sroa.14472.0582, %_ZL6onHulliiiPi.exit.us.i.i.epil ], [ %.sroa.14472.4, %_ZL6onHulliiiPi.exit.us.i343.i.epil ], [ %.sroa.14472.4, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa ] ; 4 uses
  %.sroa.23.9 = phi i64 [ %.sroa.23.1, %bb.hd ], [ %.sroa.23.0583, %_ZL6onHulliiiPi.exit52.i.i ], [ %.sroa.23.0583, %bb.ee ], [ %.sroa.23.0583, %bb.em ], [ %.sroa.23.0583, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa ], [ %.sroa.23.1, %_ZL6onHulliiiPi.exit52.i357.i ], [ %.sroa.23.0583, %_ZL6onHulliiiPi.exit.us.i.i.epil ], [ %.sroa.23.1, %_ZL6onHulliiiPi.exit.us.i343.i.epil ], [ %.sroa.23.1, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa ]
  %.sroa.32.12 = phi ptr [ %.sroa.32.4, %bb.hd ], [ %.sroa.32.0584, %_ZL6onHulliiiPi.exit52.i.i ], [ %.sroa.32.0584, %bb.ee ], [ %.sroa.32.0584, %bb.em ], [ %.sroa.32.0584, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa ], [ %.sroa.32.4, %_ZL6onHulliiiPi.exit52.i357.i ], [ %.sroa.32.0584, %_ZL6onHulliiiPi.exit.us.i.i.epil ], [ %.sroa.32.4, %_ZL6onHulliiiPi.exit.us.i343.i.epil ], [ %.sroa.32.4, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa ] ; 4 uses
  %.6 = phi i32 [ %.1, %bb.hd ], [ %.0485, %_ZL6onHulliiiPi.exit52.i.i ], [ %.0485, %bb.ee ], [ %.0485, %bb.em ], [ %.0485, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1129.unr-lcssa ], [ %.1, %_ZL6onHulliiiPi.exit52.i357.i ], [ %.0485, %_ZL6onHulliiiPi.exit.us.i.i.epil ], [ %.1, %_ZL6onHulliiiPi.exit.us.i343.i.epil ], [ %.1, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit.loopexit1131.unr-lcssa ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.cfx = icmp sgt i32 %.6, 0                    ; 2 uses
  br i1 %i.cfx, label %.lr.ph567, label %.preheader505

.lr.ph567:                                        ; preds = %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit
  %i.cfy = load float, ptr %i.x, align 8, !tbaa !62 ; 2 uses
  %i.cfz = load float, ptr %i.fd, align 4, !tbaa !62
  %i.cga = load float, ptr %i.et, align 8, !tbaa !144
  %i.cgb = fadd float %i.cfz, %i.cga              ; 2 uses
  %i.cgc = load float, ptr %i.fe, align 8, !tbaa !62 ; 2 uses
  %wide.trip.count657 = zext nneg i32 %.6 to i64  ; 3 uses
  %min.iters.check965 = icmp ult i32 %.6, 4
  br i1 %min.iters.check965, label %scalar.ph964.preheader, label %vector.ph966

vector.ph966:                                     ; preds = %.lr.ph567
  %n.vec967 = and i64 %wide.trip.count657, 2147483644 ; 3 uses
  %broadcast.splatinsert968 = insertelement <4 x float> poison, float %i.cfy, i64 0
  %broadcast.splat969 = shufflevector <4 x float> %broadcast.splatinsert968, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert970 = insertelement <4 x float> poison, float %i.cgb, i64 0
  %broadcast.splat971 = shufflevector <4 x float> %broadcast.splatinsert970, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert972 = insertelement <4 x float> poison, float %i.cgc, i64 0
  %broadcast.splat973 = shufflevector <4 x float> %broadcast.splatinsert972, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body974

vector.body974:                                   ; preds = %vector.body974, %vector.ph966
  %index975 = phi i64 [ 0, %vector.ph966 ], [ %index.next977, %vector.body974 ] ; 5 uses
  %i.cgd = mul nuw nsw i64 %index975, 12
  %i.cge = mul nuw i64 %index975, 12
  %i.cgf = mul nuw i64 %index975, 12
  %i.cgg = mul nuw i64 %index975, 12
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cgd ; 4 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cge ; 3 uses
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgi, i64 12
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cgf ; 3 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgk, i64 24
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cgg ; 3 uses
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgm, i64 36
  %i.cgo = load float, ptr %i.cgh, align 16, !tbaa !62
  %i.cgp = load float, ptr %i.cgj, align 4, !tbaa !62
  %i.cgq = load float, ptr %i.cgl, align 8, !tbaa !62
  %i.cgr = load float, ptr %i.cgn, align 4, !tbaa !62
  %i.cgs = insertelement <4 x float> poison, float %i.cgo, i64 0
  %i.cgt = insertelement <4 x float> %i.cgs, float %i.cgp, i64 1
  %i.cgu = insertelement <4 x float> %i.cgt, float %i.cgq, i64 2
  %i.cgv = insertelement <4 x float> %i.cgu, float %i.cgr, i64 3
  %i.cgw = fadd <4 x float> %broadcast.splat969, %i.cgv
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgh, i64 4
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.cgi, i64 16
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgk, i64 28
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgm, i64 40
  %i.chb = load float, ptr %i.cgx, align 4, !tbaa !62
  %i.chc = load float, ptr %i.cgy, align 16, !tbaa !62
  %i.chd = load float, ptr %i.cgz, align 4, !tbaa !62
  %i.che = load float, ptr %i.cha, align 8, !tbaa !62
  %i.chf = insertelement <4 x float> poison, float %i.chb, i64 0
  %i.chg = insertelement <4 x float> %i.chf, float %i.chc, i64 1
  %i.chh = insertelement <4 x float> %i.chg, float %i.chd, i64 2
  %i.chi = insertelement <4 x float> %i.chh, float %i.che, i64 3
  %i.chj = fadd <4 x float> %i.chi, %broadcast.splat971
  %i.chk = getelementptr inbounds nuw i8, ptr %i.cgh, i64 8
  %i.chl = getelementptr inbounds nuw i8, ptr %i.cgi, i64 20
  %i.chm = getelementptr inbounds nuw i8, ptr %i.cgk, i64 32
  %i.chn = getelementptr inbounds nuw i8, ptr %i.cgm, i64 44
  %i.cho = load float, ptr %i.chk, align 8, !tbaa !62
  %i.chp = load float, ptr %i.chl, align 4, !tbaa !62
  %i.chq = load float, ptr %i.chm, align 16, !tbaa !62
  %i.chr = load float, ptr %i.chn, align 4, !tbaa !62
  %i.chs = insertelement <4 x float> poison, float %i.cho, i64 0
  %i.cht = insertelement <4 x float> %i.chs, float %i.chp, i64 1
  %i.chu = insertelement <4 x float> %i.cht, float %i.chq, i64 2
  %i.chv = insertelement <4 x float> %i.chu, float %i.chr, i64 3
  %i.chw = fadd <4 x float> %broadcast.splat973, %i.chv
  %i.chx = shufflevector <4 x float> %i.cgw, <4 x float> %i.chj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.chy = shufflevector <4 x float> %i.chw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec976 = shufflevector <8 x float> %i.chx, <8 x float> %i.chy, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec976, ptr %i.cgh, align 16, !tbaa !62
  %index.next977 = add nuw i64 %index975, 4       ; 2 uses
  %i.chz = icmp eq i64 %index.next977, %n.vec967
  br i1 %i.chz, label %middle.block978, label %vector.body974, !llvm.loop !110

middle.block978:                                  ; preds = %vector.body974
  %cmp.n979 = icmp eq i64 %n.vec967, %wide.trip.count657
  br i1 %cmp.n979, label %.preheader505, label %scalar.ph964.preheader

scalar.ph964.preheader:                           ; preds = %.lr.ph567, %middle.block978
  %indvars.iv653.ph = phi i64 [ 0, %.lr.ph567 ], [ %n.vec967, %middle.block978 ]
  %i.cia = insertelement <2 x float> poison, float %i.cfy, i64 0
  %i.cib = insertelement <2 x float> %i.cia, float %i.cgb, i64 1
  br label %scalar.ph964

.preheader505:                                    ; preds = %scalar.ph964, %middle.block978, %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit
  br i1 %.not497, label %._crit_edge570, label %.lr.ph569.preheader

.lr.ph569.preheader:                              ; preds = %.preheader505
  %smax663 = call i32 @llvm.smax.i32(i32 %.0254.lcssa, i32 1)
  %wide.trip.count663 = zext nneg i32 %smax663 to i64 ; 4 uses
  %min.iters.check = icmp slt i32 %.0254.lcssa, 4
  br i1 %min.iters.check, label %.lr.ph569.preheader1128, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph569.preheader
  %i.cic = mul nuw nsw i64 %wide.trip.count663, 12
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.cic
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph569.preheader1128, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count663, 2147483644 ; 3 uses
  %i.cid = load float, ptr %i.x, align 8, !tbaa !62, !alias.scope !146
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cid, i64 0
  %i.cie = load float, ptr %i.fd, align 4, !tbaa !62, !alias.scope !146
  %broadcast.splatinsert960 = insertelement <4 x float> poison, float %i.cie, i64 0
  %i.cif = load float, ptr %i.fe, align 8, !tbaa !62, !alias.scope !146
  %broadcast.splatinsert962 = insertelement <4 x float> poison, float %i.cif, i64 0
  %broadcast.splat963 = shufflevector <4 x float> %broadcast.splatinsert962, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cig = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert960, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cih = mul nuw nsw i64 %index, 12
  %i.cii = mul nuw i64 %index, 12
  %i.cij = mul nuw i64 %index, 12
  %i.cik = mul nuw i64 %index, 12
  %i.cil = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cih ; 4 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cii ; 3 uses
  %i.cin = getelementptr inbounds nuw i8, ptr %i.cim, i64 12
  %i.cio = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cij ; 3 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 24
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cik ; 3 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 36
  %i.cis = load float, ptr %i.cil, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cit = load float, ptr %i.cin, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.ciu = load float, ptr %i.cip, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.civ = load float, ptr %i.cir, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.ciw = insertelement <4 x float> poison, float %i.cis, i64 0
  %i.cix = insertelement <4 x float> %i.ciw, float %i.cit, i64 1
  %i.ciy = insertelement <4 x float> %i.cix, float %i.ciu, i64 2
  %i.ciz = insertelement <4 x float> %i.ciy, float %i.civ, i64 3
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cil, i64 4
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cim, i64 16
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cio, i64 28
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.ciq, i64 40
  %i.cje = load float, ptr %i.cja, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjf = load float, ptr %i.cjb, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjg = load float, ptr %i.cjc, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjh = load float, ptr %i.cjd, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cji = insertelement <4 x float> poison, float %i.cje, i64 0
  %i.cjj = insertelement <4 x float> %i.cji, float %i.cjf, i64 1
  %i.cjk = insertelement <4 x float> %i.cjj, float %i.cjg, i64 2
  %i.cjl = insertelement <4 x float> %i.cjk, float %i.cjh, i64 3
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cil, i64 8
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cim, i64 20
  %i.cjo = getelementptr inbounds nuw i8, ptr %i.cio, i64 32
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.ciq, i64 44
  %i.cjq = load float, ptr %i.cjm, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjr = load float, ptr %i.cjn, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjs = load float, ptr %i.cjo, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cjt = load float, ptr %i.cjp, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %i.cju = insertelement <4 x float> poison, float %i.cjq, i64 0
  %i.cjv = insertelement <4 x float> %i.cju, float %i.cjr, i64 1
  %i.cjw = insertelement <4 x float> %i.cjv, float %i.cjs, i64 2
  %i.cjx = insertelement <4 x float> %i.cjw, float %i.cjt, i64 3
  %i.cjy = fadd <4 x float> %broadcast.splat963, %i.cjx
  %i.cjz = shufflevector <4 x float> %i.ciz, <4 x float> %i.cjl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cka = fadd <8 x float> %i.cig, %i.cjz
  %i.ckb = shufflevector <4 x float> %i.cjy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.cka, <8 x float> %i.ckb, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.cil, align 4, !tbaa !62, !alias.scope !147, !noalias !146
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ckc = icmp eq i64 %index.next, %n.vec
  br i1 %i.ckc, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count663
  br i1 %cmp.n, label %._crit_edge570, label %.lr.ph569.preheader1128

.lr.ph569.preheader1128:                          ; preds = %vector.memcheck, %.lr.ph569.preheader, %middle.block
  %indvars.iv659.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph569.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph569

scalar.ph964:                                     ; preds = %scalar.ph964.preheader, %scalar.ph964
  %indvars.iv653 = phi i64 [ %indvars.iv.next654, %scalar.ph964 ], [ %indvars.iv653.ph, %scalar.ph964.preheader ] ; 2 uses
  %.idx868 = mul nuw nsw i64 %indvars.iv653, 12
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx868 ; 3 uses
  %i.cke = load <2 x float>, ptr %i.ckd, align 4, !tbaa !62
  %i.ckf = fadd <2 x float> %i.cib, %i.cke
  store <2 x float> %i.ckf, ptr %i.ckd, align 4, !tbaa !62
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckd, i64 8 ; 2 uses
  %i.ckh = load float, ptr %i.ckg, align 4, !tbaa !62
  %i.cki = fadd float %i.cgc, %i.ckh
  store float %i.cki, ptr %i.ckg, align 4, !tbaa !62
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next654, %wide.trip.count657
  br i1 %exitcond658.not, label %.preheader505, label %scalar.ph964, !llvm.loop !115

._crit_edge570:                                   ; preds = %.lr.ph569, %middle.block, %.preheader505
  %i.ckj = load i64, ptr %6, align 8, !tbaa !67
  %i.ckk = trunc i64 %i.ckj to i32                ; 2 uses
  %i.ckl = sdiv i32 %i.ckk, 4                     ; 3 uses
  %i.ckm = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.ckn = load ptr, ptr %5, align 8, !tbaa !74   ; 4 uses
  %i.cko = getelementptr inbounds nuw [4 x i8], ptr %i.ckn, i64 %i.gf
  store i32 %i.ckm, ptr %i.cko, align 4, !tbaa !68
  %i.ckp = getelementptr inbounds nuw [4 x i8], ptr %i.ckn, i64 %i.gl
  store i32 %.6, ptr %i.ckp, align 4, !tbaa !68
  %i.ckq = load i32, ptr %i.dr, align 8, !tbaa !73
  %i.ckr = getelementptr inbounds nuw [4 x i8], ptr %i.ckn, i64 %i.gi
  store i32 %i.ckq, ptr %i.ckr, align 4, !tbaa !68
  %i.cks = getelementptr inbounds nuw [4 x i8], ptr %i.ckn, i64 %i.gp
  store i32 %i.ckl, ptr %i.cks, align 4, !tbaa !68
  %i.ckt = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.cku = add nsw i32 %i.ckt, %.6                ; 2 uses
  %i.ckv = icmp sgt i32 %i.cku, %.0261585
  br i1 %i.ckv, label %.preheader504.preheader, label %bb.hn

.preheader504.preheader:                          ; preds = %._crit_edge570
  %i.ckw = add i32 %i.cku, 255
  %i.ckx = sub i32 %i.ckw, %.0261585
  %i.cky = and i32 %i.ckx, -256
  %i.ckz = add i32 %.0261585, %i.cky              ; 3 uses
  %i.cla = sext i32 %i.ckz to i64
  %i.clb = mul nsw i64 %i.cla, 12
  %i.clc = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.clb, i32 noundef 0) #7 ; 3 uses
  %.not287.not = icmp eq ptr %i.clc, null
  br i1 %.not287.not, label %.thread, label %bb.hk

.lr.ph569:                                        ; preds = %.lr.ph569.preheader1128, %.lr.ph569
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %.lr.ph569 ], [ %indvars.iv659.ph, %.lr.ph569.preheader1128 ] ; 2 uses
  %i.cld = load float, ptr %i.x, align 8, !tbaa !62
  %.idx869 = mul nuw nsw i64 %indvars.iv659, 12
  %i.cle = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx869 ; 4 uses
  %i.clf = load float, ptr %i.cle, align 4, !tbaa !62
  %i.clg = fadd float %i.cld, %i.clf
  store float %i.clg, ptr %i.cle, align 4, !tbaa !62
  %i.clh = load float, ptr %i.fd, align 4, !tbaa !62
  %i.cli = getelementptr inbounds nuw i8, ptr %i.cle, i64 4 ; 2 uses
  %i.clj = load float, ptr %i.cli, align 4, !tbaa !62
  %i.clk = fadd float %i.clh, %i.clj
  store float %i.clk, ptr %i.cli, align 4, !tbaa !62
  %i.cll = load float, ptr %i.fe, align 8, !tbaa !62
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cle, i64 8 ; 2 uses
  %i.cln = load float, ptr %i.clm, align 4, !tbaa !62
  %i.clo = fadd float %i.cll, %i.cln
  store float %i.clo, ptr %i.clm, align 4, !tbaa !62
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond664.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count663
  br i1 %exitcond664.not, label %._crit_edge570, label %.lr.ph569, !llvm.loop !116

.thread:                                          ; preds = %.preheader504.preheader
  %i.clp = mul nsw i32 %i.ckz, 3
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %i.clp) #7
  br label %.critedge

bb.hk:                                            ; preds = %.preheader504.preheader
  %i.clq = load i32, ptr %i.dq, align 4, !tbaa !72 ; 2 uses
  %.not288 = icmp eq i32 %i.clq, 0
  br i1 %.not288, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.clr = load ptr, ptr %i.ec, align 8, !tbaa !75
  %i.cls = sext i32 %i.clq to i64
  %i.clt = mul nsw i64 %i.cls, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.clc, ptr align 4 %i.clr, i64 %i.clt, i1 false)
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hk, %bb.hl
  %i.clu = load ptr, ptr %i.ec, align 8, !tbaa !75
  call void @_Z6rcFreePv(ptr noundef %i.clu) #7
  store ptr %i.clc, ptr %i.ec, align 8, !tbaa !75
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %._crit_edge570
  %.2263 = phi i32 [ %i.ckz, %bb.hm ], [ %.0261585, %._crit_edge570 ]
  br i1 %i.cfx, label %.lr.ph573, label %bb.ho

.lr.ph573:                                        ; preds = %bb.hn
  %i.clv = load ptr, ptr %i.ec, align 8, !tbaa !75 ; 3 uses
  %.promoted = load i32, ptr %i.dq, align 4, !tbaa !72
  %i.clw = sext i32 %.promoted to i64             ; 2 uses
  %wide.trip.count674 = zext nneg i32 %.6 to i64  ; 2 uses
  %xtraiter1211 = and i64 %wide.trip.count674, 1
  %i.clx = icmp eq i32 %.6, 1
  br i1 %i.clx, label %.epil.preheader, label %.lr.ph573.new

.lr.ph573.new:                                    ; preds = %.lr.ph573
  %unroll_iter1216 = and i64 %wide.trip.count674, 2147483646
  br label %bb.hp

._crit_edge574.unr-lcssa:                         ; preds = %bb.hp
  %lcmp.mod1213.not = icmp eq i64 %xtraiter1211, 0
  br i1 %lcmp.mod1213.not, label %._crit_edge574, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge574.unr-lcssa, %.lr.ph573
  %indvars.iv668.epil.init = phi i64 [ 0, %.lr.ph573 ], [ %indvars.iv.next669.1, %._crit_edge574.unr-lcssa ]
  %indvars.iv666.epil.init = phi i64 [ %i.clw, %.lr.ph573 ], [ %indvars.iv.next667.1, %._crit_edge574.unr-lcssa ] ; 2 uses
  %lcmp.mod1215 = trunc i32 %.6 to i1
  call void @llvm.assume(i1 %lcmp.mod1215)
  %.idx870.epil = mul nuw nsw i64 %indvars.iv668.epil.init, 12
  %i.cly = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx870.epil ; 3 uses
  %i.clz = load float, ptr %i.cly, align 4, !tbaa !62
  %.idx871.epil = mul nsw i64 %indvars.iv666.epil.init, 12
  %i.cma = getelementptr inbounds i8, ptr %i.clv, i64 %.idx871.epil ; 3 uses
  store float %i.clz, ptr %i.cma, align 4, !tbaa !62
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cly, i64 4
  %i.cmc = load float, ptr %i.cmb, align 4, !tbaa !62
  %i.cmd = getelementptr i8, ptr %i.cma, i64 4
  store float %i.cmc, ptr %i.cmd, align 4, !tbaa !62
end_hunk_2
