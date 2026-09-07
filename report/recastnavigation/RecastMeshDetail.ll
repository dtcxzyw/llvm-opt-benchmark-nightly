Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  store i32 %i.aaz, ptr %i.aax, align 4, !tbaa !68
  %i.aba = add nuw nsw i64 %.07.i.i.i.i.i167.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i168.i.3 = icmp eq i64 %i.aba, %i.zx
  br i1 %exitcond.not.i.i.i.i.i168.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %.lr.ph.i.i.i.i.i166.i, !llvm.loop !88

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i: ; preds = %.lr.ph.i.i.i.i.i166.i.prol.loopexit, %.lr.ph.i.i.i.i.i166.i, %middle.block1081, %bb.bw, %bb.bv
  call void @_Z6rcFreePv(ptr noundef %.pre.i.i164.i) #7
  store ptr %i.zv, ptr %i.ak, align 8, !tbaa !66
  store i64 %.0.i.i.i.i161.i, ptr %i.aj, align 8, !tbaa !124
  br label %_ZL5push3R12rcTempVectorIiEiii.exit169.i

_ZL5push3R12rcTempVectorIiEiii.exit169.i:         ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, %._ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit_crit_edge.i157.i
  %i.abb = phi ptr [ %.pre.i159.i, %._ZN12rcVectorBaseIiL11rcAllocHint1EE6resizeEl.exit_crit_edge.i157.i ], [ %i.zv, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i ]
  store i64 %i.zq, ptr %7, align 8, !tbaa !67
  %i.abc = getelementptr [4 x i8], ptr %i.abb, i64 %i.yi ; 3 uses
  store i32 %i.ys, ptr %i.abc, align 4, !tbaa !68
  %i.abd = getelementptr i8, ptr %i.abc, i64 4
  store i32 %i.yv, ptr %i.abd, align 4, !tbaa !68
  %i.abe = getelementptr i8, ptr %i.abc, i64 8
  store i32 %i.zl, ptr %i.abe, align 4, !tbaa !68
  br label %bb.bx

bb.bx:                                            ; preds = %_ZL5push3R12rcTempVectorIiEiii.exit169.i, %bb.bt, %bb.bs, %bb.br
  %i.abf = phi i64 [ %i.zq, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yh, %bb.br ], [ %i.yh, %bb.bs ], [ %i.yh, %bb.bt ] ; 3 uses
  %i.abg = phi i64 [ %i.zq, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yi, %bb.br ], [ %i.yi, %bb.bs ], [ %i.yi, %bb.bt ]
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next228.i, 4
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.br

_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit: ; preds = %.loopexit.i, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %.not497 = icmp eq i32 %.0254.lcssa, 0          ; 3 uses
  br i1 %.not497, label %_ZL13polyMinExtentPKfi.exit.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  %wide.trip.count.i = zext nneg i32 %.0254.lcssa to i64 ; 5 uses
  %xtraiter1183 = and i64 %wide.trip.count.i, 1
  %i.abh = icmp eq i32 %.0254.lcssa, 1
  br i1 %i.abh, label %.lr.ph.i335.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1186 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i335

.lr.ph.us.preheader.i.i.unr-lcssa:                ; preds = %.lr.ph.i335
  %lcmp.mod1184.not = icmp eq i64 %xtraiter1183, 0
  br i1 %lcmp.mod1184.not, label %.lr.ph.us.preheader.i.i, label %.lr.ph.i335.epil.preheader

.lr.ph.i335.epil.preheader:                       ; preds = %.lr.ph.us.preheader.i.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i336.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i337.1, %.lr.ph.us.preheader.i.i.unr-lcssa ]
  %lcmp.mod1185 = trunc i32 %.0254.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1185)
  %i.abi = mul nuw nsw i64 %indvars.iv.i336.epil.init, 3 ; 2 uses
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.abi ; 2 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.abi ; 2 uses
  %i.abl = load <2 x float>, ptr %i.abk, align 4, !tbaa !62
  store <2 x float> %i.abl, ptr %i.abj, align 4, !tbaa !62
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !62
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  store float %i.abn, ptr %i.abo, align 4, !tbaa !62
  br label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.lr.ph.us.preheader.i.i.unr-lcssa, %.lr.ph.i335.epil.preheader
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.abp = load float, ptr %i.er, align 4, !tbaa !143 ; 5 uses
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph.us.preheader.i.i
  %indvars.iv42.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next43.i.i, %._crit_edge.us.i.i ] ; 3 uses
  %.036.us.i.i = phi float [ f0x7F7FFFFF, %.lr.ph.us.preheader.i.i ], [ %i.adi, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1 ; 3 uses
  %i.abq = icmp eq i64 %indvars.iv.next43.i.i, %wide.trip.count.i ; 2 uses
  %i.abr = trunc nuw nsw i64 %indvars.iv.next43.i.i to i32
  %iv.rem.i.i = select i1 %i.abq, i32 0, i32 %i.abr ; 2 uses
  %.idx.i.i339 = mul nuw nsw i64 %indvars.iv42.i.i, 12
  %i.abs = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i339 ; 2 uses
  %i.abt = mul nuw nsw i32 %iv.rem.i.i, 3
  %i.abu = zext nneg i32 %i.abt to i64
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.abu ; 2 uses
  %i.abw = getelementptr i8, ptr %i.abs, i64 8
  %i.abx = getelementptr i8, ptr %i.abv, i64 8
  %i.aby = zext i32 %iv.rem.i.i to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph.us.i.i
  %indvars.iv.i.i340 = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i341, %bb.ca ] ; 4 uses
  %.02533.us.i.i = phi float [ 0.000000e+00, %.lr.ph.us.i.i ], [ %.1.us.i.i, %bb.ca ] ; 3 uses
  %i.abz = icmp eq i64 %indvars.iv.i.i340, %indvars.iv42.i.i
  %i.aca = icmp eq i64 %indvars.iv.i.i340, %i.aby
  %or.cond.us.i.i = select i1 %i.abz, i1 true, i1 %i.aca
  br i1 %or.cond.us.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.idx48.i.i = mul nuw nsw i64 %indvars.iv.i.i340, 12
  %i.acb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx48.i.i ; 2 uses
  %.val.us.i.i = load float, ptr %i.acb, align 4, !tbaa !62 ; 2 uses
  %i.acc = getelementptr i8, ptr %i.acb, i64 8
  %.val28.us.i.i = load float, ptr %i.acc, align 4, !tbaa !62 ; 2 uses
  %.val29.us.i.i = load float, ptr %i.abs, align 4, !tbaa !62 ; 2 uses
  %.val30.us.i.i = load float, ptr %i.abw, align 4, !tbaa !62 ; 2 uses
  %.val31.us.i.i = load float, ptr %i.abv, align 4, !tbaa !62
  %.val32.us.i.i = load float, ptr %i.abx, align 4, !tbaa !62
  %i.acd = insertelement <2 x float> poison, float %.val.us.i.i, i64 0
  %i.ace = insertelement <2 x float> %i.acd, float %.val31.us.i.i, i64 1
  %i.acf = insertelement <2 x float> poison, float %.val29.us.i.i, i64 0
  %i.acg = shufflevector <2 x float> %i.acf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ach = fsub <2 x float> %i.ace, %i.acg        ; 3 uses
  %i.aci = insertelement <2 x float> poison, float %.val28.us.i.i, i64 0
  %i.acj = insertelement <2 x float> %i.aci, float %.val32.us.i.i, i64 1
  %i.ack = insertelement <2 x float> poison, float %.val30.us.i.i, i64 0
  %i.acl = shufflevector <2 x float> %i.ack, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acm = fsub <2 x float> %i.acj, %i.acl        ; 3 uses
  %i.acn = shufflevector <2 x float> %i.acm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aco = fmul <2 x float> %i.acn, %i.acm
  %i.acp = shufflevector <2 x float> %i.ach, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acp, <2 x float> %i.ach, <2 x float> %i.aco) ; 2 uses
  %i.acr = extractelement <2 x float> %i.acq, i64 1 ; 2 uses
  %i.acs = fcmp ogt float %i.acr, 0.000000e+00
  %i.act = extractelement <2 x float> %i.acq, i64 0 ; 2 uses
  %i.acu = fdiv float %i.act, %i.acr
  %.0.i.us.i.i = select i1 %i.acs, float %i.acu, float %i.act ; 3 uses
  %i.acv = fcmp olt float %.0.i.us.i.i, 0.000000e+00
  %i.acw = fcmp ogt float %.0.i.us.i.i, 1.000000e+00
  %spec.store.select.i.us.i.i = select i1 %i.acw, float 1.000000e+00, float %.0.i.us.i.i
  %.1.i.us.i.i = select i1 %i.acv, float 0.000000e+00, float %spec.store.select.i.us.i.i ; 2 uses
  %i.acx = extractelement <2 x float> %i.ach, i64 1
  %i.acy = call float @llvm.fmuladd.f32(float %.1.i.us.i.i, float %i.acx, float %.val29.us.i.i)
  %i.acz = fsub float %i.acy, %.val.us.i.i        ; 2 uses
  %i.ada = extractelement <2 x float> %i.acm, i64 1
  %i.adb = call float @llvm.fmuladd.f32(float %.1.i.us.i.i, float %i.ada, float %.val30.us.i.i)
  %i.adc = fsub float %i.adb, %.val28.us.i.i      ; 2 uses
  %i.add = fmul float %i.adc, %i.adc
  %i.ade = call noundef float @llvm.fmuladd.f32(float %i.acz, float %i.acz, float %i.add) ; 2 uses
  %i.adf = fcmp ogt float %.02533.us.i.i, %i.ade
  %i.adg = select i1 %i.adf, float %.02533.us.i.i, float %i.ade
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.1.us.i.i = phi float [ %.02533.us.i.i, %bb.by ], [ %i.adg, %bb.bz ] ; 3 uses
  %indvars.iv.next.i.i341 = add nuw nsw i64 %indvars.iv.i.i340, 1 ; 2 uses
  %exitcond.not.i.i342 = icmp eq i64 %indvars.iv.next.i.i341, %wide.trip.count.i
  br i1 %exitcond.not.i.i342, label %._crit_edge.us.i.i, label %bb.by

._crit_edge.us.i.i:                               ; preds = %bb.ca
  %i.adh = fcmp olt float %.036.us.i.i, %.1.us.i.i
  %i.adi = select i1 %i.adh, float %.036.us.i.i, float %.1.us.i.i ; 2 uses
  br i1 %i.abq, label %_ZL13polyMinExtentPKfi.exit.i, label %.lr.ph.us.i.i

_ZL13polyMinExtentPKfi.exit.i:                    ; preds = %._crit_edge.us.i.i
  %i.adj = fdiv float 1.000000e+00, %i.abp        ; 5 uses
  %i.adk = call noundef float @_Z6rcSqrtf(float noundef %i.adi) #7 ; 4 uses
  br i1 %i.es, label %bb.cb, label %._crit_edge.i348

_ZL13polyMinExtentPKfi.exit.thread.i:             ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.adl = load float, ptr %i.er, align 4, !tbaa !143 ; 2 uses
  %i.adm = fdiv float 1.000000e+00, %i.adl
  %i.adn = call noundef float @_Z6rcSqrtf(float noundef f0x7F7FFFFF) #7
  br label %._crit_edge.i348

.lr.ph.i335:                                      ; preds = %.lr.ph.i335, %.lr.ph.preheader.i.new
  %indvars.iv.i336 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i337.1, %.lr.ph.i335 ] ; 3 uses
  %niter1187 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1187.next.1, %.lr.ph.i335 ]
  %i.ado = mul nuw nsw i64 %indvars.iv.i336, 3    ; 2 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ado ; 2 uses
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
  %niter1187.next.1 = add i64 %niter1187, 2       ; 2 uses
  %niter1187.ncmp.1 = icmp eq i64 %niter1187.next.1, %unroll_iter1186
  br i1 %niter1187.ncmp.1, label %.lr.ph.us.preheader.i.i.unr-lcssa, label %.lr.ph.i335

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
  %.4 = phi i32 [ %.0254.lcssa, %bb.cb ], [ %.5, %.loopexit.i346 ] ; 6 uses
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
  %i.afw = add nsw i32 %spec.store.select.i, %.4
  %i.afx = icmp sgt i32 %i.afw, 126
  %i.afy = sub nsw i32 126, %.4
  %spec.select.i = select i1 %i.afx, i32 %i.afy, i32 %spec.store.select.i ; 4 uses
  %.not260451.i = icmp slt i32 %spec.select.i, 0
  br i1 %.not260451.i, label %._crit_edge455.i, label %.lr.ph454.i

.lr.ph454.i:                                      ; preds = %bb.cg
  %i.afz = uitofp nneg i32 %spec.select.i to float
  %i.aga = load float, ptr %i.et, align 8, !tbaa !144 ; 2 uses
  %i.agb = add nuw i32 %spec.select.i, 1
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
  %i.ahw = add nuw i32 %.066110.i.i, 1            ; 3 uses
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
end_hunk_0
begin_hunk_1_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  %.not21.i28.i.i = icmp slt i32 %i.bdc, %.4242.i486 ; 2 uses
  %or.cond.i29.i.i = and i1 %.not21.i.i.i, %.not21.i28.i.i
  br i1 %or.cond.i29.i.i, label %.lr.ph.i34.i.i, label %_ZL6onHulliiiPi.exit39.i.i

.lr.ph.i34.i.i:                                   ; preds = %_ZL6onHulliiiPi.exit.i.i, %bb.ei
  %indvars.iv.i35.i.i = phi i64 [ %indvars.iv.next.i37.i.i, %bb.ei ], [ 0, %_ZL6onHulliiiPi.exit.i.i ] ; 3 uses
  %.01623.i36.i.i = phi i64 [ %indvars.iv.i35.i.i, %bb.ei ], [ %i.bcc, %_ZL6onHulliiiPi.exit.i.i ]
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01623.i36.i.i
  %i.bdk = load i32, ptr %i.bdj, align 4, !tbaa !68
  %i.bdl = icmp eq i32 %i.bda, %i.bdk
  br i1 %i.bdl, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph.i34.i.i
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i35.i.i
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !68
  %i.bdo = icmp eq i32 %i.bdc, %i.bdn
  br i1 %i.bdo, label %_ZL6onHulliiiPi.exit39.loopexit.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.i34.i.i
  %indvars.iv.next.i37.i.i = add nuw nsw i64 %indvars.iv.i35.i.i, 1 ; 2 uses
  %exitcond.not.i38.i.i = icmp eq i64 %indvars.iv.next.i37.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i38.i.i, label %_ZL6onHulliiiPi.exit39.loopexit.i.i, label %.lr.ph.i34.i.i

_ZL6onHulliiiPi.exit39.loopexit.i.i:              ; preds = %bb.ei, %bb.eh
  %.ph5.i.i = phi i32 [ 4, %bb.eh ], [ 0, %bb.ei ]
  %i.bdp = or disjoint i32 %.ph5.i.i, %.1.i.i.i
  br label %_ZL6onHulliiiPi.exit39.i.i

_ZL6onHulliiiPi.exit39.i.i:                       ; preds = %_ZL6onHulliiiPi.exit39.loopexit.i.i, %_ZL6onHulliiiPi.exit.i.i
  %i.bdq = phi i32 [ %.1.i.i.i, %_ZL6onHulliiiPi.exit.i.i ], [ %i.bdp, %_ZL6onHulliiiPi.exit39.loopexit.i.i ] ; 2 uses
  %or.cond.i42.i.i = and i1 %.not.i.i.i, %.not21.i28.i.i
  br i1 %or.cond.i42.i.i, label %.lr.ph.i47.i.i, label %_ZL6onHulliiiPi.exit52.i.i

.lr.ph.i47.i.i:                                   ; preds = %_ZL6onHulliiiPi.exit39.i.i, %bb.ek
  %indvars.iv.i48.i.i = phi i64 [ %indvars.iv.next.i50.i.i, %bb.ek ], [ 0, %_ZL6onHulliiiPi.exit39.i.i ] ; 3 uses
  %.01623.i49.i.i = phi i64 [ %indvars.iv.i48.i.i, %bb.ek ], [ %i.bcc, %_ZL6onHulliiiPi.exit39.i.i ]
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01623.i49.i.i
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !68
  %i.bdt = icmp eq i32 %i.bdc, %i.bds
  br i1 %i.bdt, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %.lr.ph.i47.i.i
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i48.i.i
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !68
  %i.bdw = icmp eq i32 %i.bcy, %i.bdv
  br i1 %i.bdw, label %_ZL6onHulliiiPi.exit52.loopexit.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.lr.ph.i47.i.i
  %indvars.iv.next.i50.i.i = add nuw nsw i64 %indvars.iv.i48.i.i, 1 ; 2 uses
  %exitcond.not.i51.i.i = icmp eq i64 %indvars.iv.next.i50.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i51.i.i, label %_ZL6onHulliiiPi.exit52.loopexit.i.i, label %.lr.ph.i47.i.i

_ZL6onHulliiiPi.exit52.loopexit.i.i:              ; preds = %bb.ek, %bb.ej
  %.ph.i.i = phi i32 [ 16, %bb.ej ], [ 0, %bb.ek ]
  %i.bdx = or disjoint i32 %.ph.i.i, %i.bdq
  br label %_ZL6onHulliiiPi.exit52.i.i

_ZL6onHulliiiPi.exit52.i.i:                       ; preds = %_ZL6onHulliiiPi.exit52.loopexit.i.i, %_ZL6onHulliiiPi.exit39.i.i
  %i.bdy = phi i32 [ %i.bdq, %_ZL6onHulliiiPi.exit39.i.i ], [ %i.bdx, %_ZL6onHulliiiPi.exit52.loopexit.i.i ]
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bcx, i64 12
  store i32 %i.bdy, ptr %i.bdz, align 4, !tbaa !68
  %indvars.iv.next9.i.i = add nuw nsw i64 %indvars.iv8.i.i, 4 ; 2 uses
  %i.bea = icmp sgt i64 %.val263.i, %indvars.iv.next9.i.i
  br i1 %i.bea, label %.lr.ph.split.i.i, label %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit

bb.el:                                            ; preds = %_ZL15triangulateHulliPKfiPKiiR12rcTempVectorIiE.exit
  %i.beb = icmp eq i64 %.val263.i, 0
  br i1 %i.beb, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %.0485) #7
  br label %_ZL15buildPolyDetailP9rcContextPKfiffiRK20rcCompactHeightfieldRK13rcHeightPatchPfRiR12rcTempVectorIiESD_SD_.exit

bb.en:                                            ; preds = %bb.el
  br i1 %i.apt, label %bb.eo, label %.critedge.i318

bb.eo:                                            ; preds = %bb.en
  %i.bec = load float, ptr %i.av, align 4, !tbaa !62 ; 4 uses
  %i.bed = load <2 x float>, ptr %i.fb, align 4, !tbaa !62 ; 4 uses
  %i.bee = icmp samesign ugt i32 %.0254.lcssa, 1
  %i.bef = extractelement <2 x float> %i.bed, i64 0 ; 2 uses
  %i.beg = extractelement <2 x float> %i.bed, i64 1 ; 2 uses
  br i1 %i.bee, label %.lr.ph495.preheader.i, label %._crit_edge496.i

.lr.ph495.preheader.i:                            ; preds = %bb.eo
  %wide.trip.count596.i = zext nneg i32 %.0254.lcssa to i64
  br label %.lr.ph495.i

._crit_edge496.i.loopexit:                        ; preds = %.lr.ph495.i
  %i.beh = extractelement <2 x float> %i.bfw, i64 1
  %i.bei = extractelement <2 x float> %i.bfw, i64 0
  %i.bej = extractelement <2 x float> %i.bfu, i64 1
  %i.bek = extractelement <2 x float> %i.bfu, i64 0
  br label %._crit_edge496.i

._crit_edge496.i:                                 ; preds = %._crit_edge496.i.loopexit, %bb.eo
  %.sroa.10424.0.lcssa.i = phi float [ %i.beg, %bb.eo ], [ %i.bej, %._crit_edge496.i.loopexit ]
  %.sroa.6422.0.lcssa.i = phi float [ %i.bef, %bb.eo ], [ %i.bek, %._crit_edge496.i.loopexit ]
  %.sroa.0420.0.lcssa.i = phi float [ %i.bec, %bb.eo ], [ %i.bft, %._crit_edge496.i.loopexit ]
  %.sroa.10.0.lcssa.i = phi float [ %i.beg, %bb.eo ], [ %i.beh, %._crit_edge496.i.loopexit ]
  %.sroa.6417.0.lcssa.i = phi float [ %i.bef, %bb.eo ], [ %i.bei, %._crit_edge496.i.loopexit ]
  %.sroa.0415.0.lcssa.i = phi float [ %i.bec, %bb.eo ], [ %i.bfv, %._crit_edge496.i.loopexit ]
  %i.bel = insertelement <4 x float> poison, float %.sroa.0420.0.lcssa.i, i64 0
  %i.bem = insertelement <4 x float> %i.bel, float %.sroa.10424.0.lcssa.i, i64 1
  %i.ben = insertelement <4 x float> %i.bem, float %.sroa.0415.0.lcssa.i, i64 2
  %i.beo = insertelement <4 x float> %i.ben, float %.sroa.10.0.lcssa.i, i64 3
  %i.bep = fdiv <4 x float> %i.beo, %i.fg         ; 4 uses
  %i.beq = extractelement <4 x float> %i.bep, i64 0
  %i.ber = call float @llvm.floor.f32(float %i.beq)
  %i.bes = fptosi float %i.ber to i32             ; 2 uses
  %i.bet = extractelement <4 x float> %i.bep, i64 2
  %i.beu = call float @llvm.ceil.f32(float %i.bet)
  %i.bev = fptosi float %i.beu to i32             ; 2 uses
  %i.bew = extractelement <4 x float> %i.bep, i64 1
  %i.bex = call float @llvm.floor.f32(float %i.bew)
  %i.bey = fptosi float %i.bex to i32             ; 2 uses
  %i.bez = extractelement <4 x float> %i.bep, i64 3
  %i.bfa = call float @llvm.ceil.f32(float %i.bez)
  %i.bfb = fptosi float %i.bfa to i32             ; 2 uses
  %i.bfc = icmp slt i32 %i.bey, %i.bfb
  br i1 %i.bfc, label %.preheader440.lr.ph.i, label %.critedgethread-pre-split.i

.preheader440.lr.ph.i:                            ; preds = %._crit_edge496.i
  %i.bfd = icmp slt i32 %i.bes, %i.bev
  %i.bfe = fadd float %.sroa.6422.0.lcssa.i, %.sroa.6417.0.lcssa.i
  %i.bff = add nsw i32 %.0254.lcssa, -1
  %wide.trip.count.i.i = zext nneg i32 %.0254.lcssa to i64
  %i.bfg = fmul float %i.bfe, -5.000000e-01
  br i1 %i.bfd, label %.preheader440.i.preheader, label %.critedgethread-pre-split.i

.preheader440.i.preheader:                        ; preds = %.preheader440.lr.ph.i
  %i.bfh = add nsw i32 %i.go, -1
  %i.bfi = add nsw i32 %i.gs, -1
  br label %.preheader440.i

.lr.ph495.i:                                      ; preds = %.lr.ph495.i, %.lr.ph495.preheader.i
  %indvars.iv593.i = phi i64 [ 1, %.lr.ph495.preheader.i ], [ %indvars.iv.next594.i, %.lr.ph495.i ] ; 2 uses
  %.sroa.0415.0492.i = phi float [ %i.bec, %.lr.ph495.preheader.i ], [ %i.bfv, %.lr.ph495.i ] ; 2 uses
  %.sroa.0420.0489.i = phi float [ %i.bec, %.lr.ph495.preheader.i ], [ %i.bft, %.lr.ph495.i ] ; 2 uses
  %i.bfj = phi <2 x float> [ %i.bed, %.lr.ph495.preheader.i ], [ %i.bfu, %.lr.ph495.i ] ; 2 uses
  %i.bfk = phi <2 x float> [ %i.bed, %.lr.ph495.preheader.i ], [ %i.bfw, %.lr.ph495.i ] ; 2 uses
  %.idx700.i = mul nuw nsw i64 %indvars.iv593.i, 12
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx700.i ; 2 uses
  %i.bfm = load float, ptr %i.bfl, align 4, !tbaa !62 ; 4 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfl, i64 4
  %i.bfo = load <2 x float>, ptr %i.bfn, align 4, !tbaa !62 ; 4 uses
  %i.bfp = fcmp olt <2 x float> %i.bfj, %i.bfo
  %i.bfq = fcmp ogt <2 x float> %i.bfk, %i.bfo
  %i.bfr = fcmp ogt float %.sroa.0415.0492.i, %i.bfm
  %i.bfs = fcmp olt float %.sroa.0420.0489.i, %i.bfm
  %i.bft = select i1 %i.bfs, float %.sroa.0420.0489.i, float %i.bfm ; 2 uses
  %i.bfu = select <2 x i1> %i.bfp, <2 x float> %i.bfj, <2 x float> %i.bfo ; 3 uses
  %i.bfv = select i1 %i.bfr, float %.sroa.0415.0492.i, float %i.bfm ; 2 uses
  %i.bfw = select <2 x i1> %i.bfq, <2 x float> %i.bfk, <2 x float> %i.bfo ; 3 uses
  %indvars.iv.next594.i = add nuw nsw i64 %indvars.iv593.i, 1 ; 2 uses
  %exitcond597.not.i = icmp eq i64 %indvars.iv.next594.i, %wide.trip.count596.i
  br i1 %exitcond597.not.i, label %._crit_edge496.i.loopexit, label %.lr.ph495.i

.preheader440.i:                                  ; preds = %.preheader440.i.preheader, %._crit_edge506.i
  %.sroa.0450.0 = phi i64 [ %.sroa.0450.5, %._crit_edge506.i ], [ 0, %.preheader440.i.preheader ]
  %.sroa.23.3 = phi i64 [ %.sroa.23.8, %._crit_edge506.i ], [ %.sroa.23.0583, %.preheader440.i.preheader ]
  %.sroa.32.6 = phi ptr [ %.sroa.32.11, %._crit_edge506.i ], [ %.sroa.32.0584, %.preheader440.i.preheader ]
  %storemerge507.i = phi i32 [ %i.bgq, %._crit_edge506.i ], [ %i.bey, %.preheader440.i.preheader ] ; 4 uses
  %i.bfx = sitofp i32 %storemerge507.i to float
  %i.bfy = fmul float %3, %i.bfx                  ; 6 uses
  %i.bfz = call float @llvm.fmuladd.f32(float %i.bfy, float %i.apr, float f0x3C23D70A)
  %i.bga = call float @llvm.floor.f32(float %i.bfz)
  %i.bgb = fptosi float %i.bga to i32
  %i.bgc = sub nsw i32 %i.bgb, %i.gk              ; 2 uses
  %i.bgd = icmp slt i32 %i.bgc, 0
  %i.bge = call i32 @llvm.smin.i32(i32 %i.bgc, i32 %i.bfi)
  %i.bgf = select i1 %i.bgd, i32 0, i32 %i.bge    ; 2 uses
  %i.bgg = mul nsw i32 %i.bgf, %i.go
  %i.bgh = insertelement <2 x float> poison, float %i.bfy, i64 0
  br label %bb.ep

._crit_edge508.split.i:                           ; preds = %._crit_edge506.i
  %i.bgi = trunc i64 %.sroa.0450.5 to i32         ; 2 uses
  %i.bgj = sdiv i32 %i.bgi, 4                     ; 2 uses
  %i.bgk = icmp sgt i32 %i.bgi, 3
  br i1 %i.bgk, label %.lr.ph524.i, label %.critedgethread-pre-split.i

.lr.ph524.i:                                      ; preds = %._crit_edge508.split.i
  %wide.trip.count.i331.i = zext nneg i32 %.4242.i486 to i64 ; 2 uses
  %wide.trip.count603.i = zext nneg i32 %i.bgj to i64
  %i.bgl = getelementptr [4 x i8], ptr %i.d, i64 %wide.trip.count.i331.i
  %.phi.trans.insert.i = getelementptr i8, ptr %i.bgl, i64 -4
  %i.bgm = sext i32 %.0485 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.0485, i32 127) ; 2 uses
  %i.bgn = sub i32 %smax, %.0485
  %i.bgo = insertelement <2 x float> poison, float %i.aps, i64 0
  %i.bgp = shufflevector <2 x float> %i.bgo, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.fn

._crit_edge506.i:                                 ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i
  %i.bgq = add i32 %storemerge507.i, 1            ; 2 uses
  %exitcond599.not.i = icmp eq i32 %i.bgq, %i.bfb
  br i1 %exitcond599.not.i, label %._crit_edge508.split.i, label %.preheader440.i

bb.ep:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i, %.preheader440.i
  %.sroa.0450.1 = phi i64 [ %.sroa.0450.0, %.preheader440.i ], [ %.sroa.0450.5, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i ] ; 21 uses
  %.sroa.23.4 = phi i64 [ %.sroa.23.3, %.preheader440.i ], [ %.sroa.23.8, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i ] ; 6 uses
  %.sroa.32.7 = phi ptr [ %.sroa.32.6, %.preheader440.i ], [ %.sroa.32.11, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i ] ; 11 uses
  %storemerge259503.i = phi i32 [ %i.bes, %.preheader440.i ], [ %i.bqi, %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i ] ; 4 uses
  %.sroa.32.71055 = ptrtoaddr ptr %.sroa.32.7 to i64
  %i.bgr = sitofp i32 %storemerge259503.i to float
  %i.bgs = fmul float %3, %i.bgr                  ; 4 uses
  br i1 %.not497, label %_ZL10distToPolyiPKfS0_.exit.i, label %.lr.ph.i272.i.preheader

.lr.ph.i272.i.preheader:                          ; preds = %bb.ep
  %i.bgt = insertelement <2 x float> poison, float %i.bgs, i64 0
  br label %.lr.ph.i272.i

.lr.ph.i272.i:                                    ; preds = %.lr.ph.i272.i.preheader, %bb.es
  %indvars.iv.i273.i = phi i64 [ %indvars.iv.next.i277.i, %bb.es ], [ 0, %.lr.ph.i272.i.preheader ] ; 3 uses
  %.04.i.i = phi i32 [ %.1.i275.i, %bb.es ], [ 0, %.lr.ph.i272.i.preheader ] ; 3 uses
  %.0273.i.i = phi i32 [ %i.bio, %bb.es ], [ %i.bff, %.lr.ph.i272.i.preheader ]
  %.0291.i.i = phi float [ %i.bin, %bb.es ], [ f0x7F7FFFFF, %.lr.ph.i272.i.preheader ] ; 2 uses
  %.idx.i274.i = mul nuw nsw i64 %indvars.iv.i273.i, 12
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i274.i ; 2 uses
  %i.bgv = mul nsw i32 %.0273.i.i, 3
  %i.bgw = sext i32 %i.bgv to i64
  %i.bgx = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bgw ; 2 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgu, i64 8
  %i.bgz = load float, ptr %i.bgy, align 4, !tbaa !62 ; 4 uses
  %i.bha = fcmp ogt float %i.bgz, %i.bfy
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgx, i64 8
  %i.bhc = load float, ptr %i.bhb, align 4, !tbaa !62 ; 4 uses
  %i.bhd = fcmp ule float %i.bhc, %i.bfy
  %.not30.i.i = xor i1 %i.bha, %i.bhd
  %.val33.pre.i.i = load float, ptr %i.bgx, align 4, !tbaa !62 ; 3 uses
  %.val35.pre.i.i = load float, ptr %i.bgu, align 4, !tbaa !62 ; 3 uses
  br i1 %.not30.i.i, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph.i272.i
  %i.bhe = fsub float %.val33.pre.i.i, %.val35.pre.i.i
  %i.bhf = fsub float %i.bfy, %i.bgz
  %i.bhg = fmul float %i.bhf, %i.bhe
  %i.bhh = fsub float %i.bhc, %i.bgz
  %i.bhi = fdiv float %i.bhg, %i.bhh
  %i.bhj = fadd float %.val35.pre.i.i, %i.bhi
  %i.bhk = fcmp olt float %i.bgs, %i.bhj
  br i1 %i.bhk, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %.not31.i.i = icmp eq i32 %.04.i.i, 0
  %i.bhl = zext i1 %.not31.i.i to i32
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %.lr.ph.i272.i
  %.1.i275.i = phi i32 [ %i.bhl, %bb.er ], [ %.04.i.i, %bb.eq ], [ %.04.i.i, %.lr.ph.i272.i ] ; 2 uses
  %i.bhm = insertelement <2 x float> %i.bgt, float %.val35.pre.i.i, i64 1
  %i.bhn = insertelement <2 x float> poison, float %.val33.pre.i.i, i64 0
  %i.bho = shufflevector <2 x float> %i.bhn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhp = fsub <2 x float> %i.bhm, %i.bho        ; 3 uses
  %i.bhq = insertelement <2 x float> %i.bgh, float %i.bgz, i64 1
  %i.bhr = insertelement <2 x float> poison, float %i.bhc, i64 0
  %i.bhs = shufflevector <2 x float> %i.bhr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bht = fsub <2 x float> %i.bhq, %i.bhs        ; 3 uses
  %i.bhu = shufflevector <2 x float> %i.bht, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bhv = fmul <2 x float> %i.bhu, %i.bht
  %i.bhw = shufflevector <2 x float> %i.bhp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bhx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhw, <2 x float> %i.bhp, <2 x float> %i.bhv) ; 2 uses
  %i.bhy = extractelement <2 x float> %i.bhx, i64 1 ; 2 uses
  %i.bhz = fcmp ogt float %i.bhy, 0.000000e+00
  %i.bia = extractelement <2 x float> %i.bhx, i64 0 ; 2 uses
  %i.bib = fdiv float %i.bia, %i.bhy
  %.0.i.i.i = select i1 %i.bhz, float %i.bib, float %i.bia ; 3 uses
  %i.bic = fcmp olt float %.0.i.i.i, 0.000000e+00
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
  br i1 %or.cond1101, label %.lr.ph.i.i380.i.preheader1128, label %vector.ph1059

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
  br i1 %cmp.n1067, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i, label %.lr.ph.i.i380.i.preheader1128

.lr.ph.i.i380.i.preheader1128:                    ; preds = %.lr.ph.i.i380.i.preheader, %middle.block1066
  %.07.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i380.i.preheader ], [ %n.vec1060, %middle.block1066 ] ; 3 uses
  %xtraiter1188 = and i64 %.sroa.0450.1, 3        ; 2 uses
  %lcmp.mod1189.not = icmp eq i64 %xtraiter1188, 0
  br i1 %lcmp.mod1189.not, label %.lr.ph.i.i380.i.prol.loopexit, label %.lr.ph.i.i380.i.prol

.lr.ph.i.i380.i.prol:                             ; preds = %.lr.ph.i.i380.i.preheader1128, %.lr.ph.i.i380.i.prol
  %.07.i.i.i.prol = phi i64 [ %i.bjl, %.lr.ph.i.i380.i.prol ], [ %.07.i.i.i.ph, %.lr.ph.i.i380.i.preheader1128 ] ; 3 uses
  %prol.iter1190 = phi i64 [ %prol.iter1190.next, %.lr.ph.i.i380.i.prol ], [ 0, %.lr.ph.i.i380.i.preheader1128 ]
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %.07.i.i.i.prol
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.7, i64 %.07.i.i.i.prol
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !68
  store i32 %i.bjk, ptr %i.bji, align 4, !tbaa !68
  %i.bjl = add nuw nsw i64 %.07.i.i.i.prol, 1     ; 2 uses
  %prol.iter1190.next = add i64 %prol.iter1190, 1 ; 2 uses
  %prol.iter1190.cmp.not = icmp eq i64 %prol.iter1190.next, %xtraiter1188
  br i1 %prol.iter1190.cmp.not, label %.lr.ph.i.i380.i.prol.loopexit, label %.lr.ph.i.i380.i.prol, !llvm.loop !91

.lr.ph.i.i380.i.prol.loopexit:                    ; preds = %.lr.ph.i.i380.i.prol, %.lr.ph.i.i380.i.preheader1128
  %.07.i.i.i.unr = phi i64 [ %.07.i.i.i.ph, %.lr.ph.i.i380.i.preheader1128 ], [ %i.bjl, %.lr.ph.i.i380.i.prol ]
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
  %.sroa.0450.2 = add i64 %.sroa.0450.1, 1        ; 8 uses
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
  %i.blg = add nuw i32 %.066110.i283.i, 1         ; 3 uses
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
  br i1 %or.cond1102, label %.lr.ph.i.i383.i.preheader1127, label %vector.ph1044

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
  br i1 %cmp.n1052, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i, label %.lr.ph.i.i383.i.preheader1127

.lr.ph.i.i383.i.preheader1127:                    ; preds = %.lr.ph.i.i383.i.preheader, %middle.block1051
  %.07.i.i384.i.ph = phi i64 [ 0, %.lr.ph.i.i383.i.preheader ], [ %n.vec1045, %middle.block1051 ] ; 3 uses
  %i.bmk = sub i64 %.sroa.0450.1, %.07.i.i384.i.ph
  %xtraiter1191 = and i64 %.sroa.0450.2, 3        ; 2 uses
  %lcmp.mod1192.not = icmp eq i64 %xtraiter1191, 0
  br i1 %lcmp.mod1192.not, label %.lr.ph.i.i383.i.prol.loopexit, label %.lr.ph.i.i383.i.prol

.lr.ph.i.i383.i.prol:                             ; preds = %.lr.ph.i.i383.i.preheader1127, %.lr.ph.i.i383.i.prol
  %.07.i.i384.i.prol = phi i64 [ %i.bmo, %.lr.ph.i.i383.i.prol ], [ %.07.i.i384.i.ph, %.lr.ph.i.i383.i.preheader1127 ] ; 3 uses
  %prol.iter1193 = phi i64 [ %prol.iter1193.next, %.lr.ph.i.i383.i.prol ], [ 0, %.lr.ph.i.i383.i.preheader1127 ]
  %i.bml = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %.07.i.i384.i.prol
  %i.bmm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %.07.i.i384.i.prol
  %i.bmn = load i32, ptr %i.bmm, align 4, !tbaa !68
  store i32 %i.bmn, ptr %i.bml, align 4, !tbaa !68
  %i.bmo = add nuw nsw i64 %.07.i.i384.i.prol, 1  ; 2 uses
  %prol.iter1193.next = add i64 %prol.iter1193, 1 ; 2 uses
  %prol.iter1193.cmp.not = icmp eq i64 %prol.iter1193.next, %xtraiter1191
  br i1 %prol.iter1193.cmp.not, label %.lr.ph.i.i383.i.prol.loopexit, label %.lr.ph.i.i383.i.prol, !llvm.loop !94

.lr.ph.i.i383.i.prol.loopexit:                    ; preds = %.lr.ph.i.i383.i.prol, %.lr.ph.i.i383.i.preheader1127
  %.07.i.i384.i.unr = phi i64 [ %.07.i.i384.i.ph, %.lr.ph.i.i383.i.preheader1127 ], [ %i.bmo, %.lr.ph.i.i383.i.prol ]
  %i.bmp = icmp ult i64 %i.bmk, 3
  br i1 %i.bmp, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i, label %.lr.ph.i.i383.i

.lr.ph.i.i383.i:                                  ; preds = %.lr.ph.i.i383.i.prol.loopexit, %.lr.ph.i.i383.i
  %.07.i.i384.i = phi i64 [ %i.bnf, %.lr.ph.i.i383.i ], [ %.07.i.i384.i.unr, %.lr.ph.i.i383.i.prol.loopexit ] ; 6 uses
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %.07.i.i384.i
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %.07.i.i384.i
  %i.bms = load i32, ptr %i.bmr, align 4, !tbaa !68
  store i32 %i.bms, ptr %i.bmq, align 4, !tbaa !68
  %i.bmt = add nuw nsw i64 %.07.i.i384.i, 1       ; 2 uses
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %i.bmt
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %i.bmt
  %i.bmw = load i32, ptr %i.bmv, align 4, !tbaa !68
  store i32 %i.bmw, ptr %i.bmu, align 4, !tbaa !68
  %i.bmx = add nuw nsw i64 %.07.i.i384.i, 2       ; 2 uses
  %i.bmy = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %i.bmx
  %i.bmz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %i.bmx
  %i.bna = load i32, ptr %i.bmz, align 4, !tbaa !68
  store i32 %i.bna, ptr %i.bmy, align 4, !tbaa !68
  %i.bnb = add nuw nsw i64 %.07.i.i384.i, 3       ; 3 uses
  %i.bnc = getelementptr inbounds nuw [4 x i8], ptr %i.bmb, i64 %i.bnb
  %i.bnd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.8, i64 %i.bnb
  %i.bne = load i32, ptr %i.bnd, align 4, !tbaa !68
  store i32 %i.bne, ptr %i.bnc, align 4, !tbaa !68
  %i.bnf = add nuw nsw i64 %.07.i.i384.i, 4
  %exitcond.not.i.i385.i.3 = icmp eq i64 %i.bnb, %.sroa.0450.1
  br i1 %exitcond.not.i.i385.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i, label %.lr.ph.i.i383.i, !llvm.loop !95

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i: ; preds = %.lr.ph.i.i383.i.prol.loopexit, %.lr.ph.i.i383.i, %middle.block1051, %bb.fi
  %i.bng = getelementptr inbounds [4 x i8], ptr %i.bmb, i64 %.sroa.0450.2
  store i32 %i.blu, ptr %i.bng, align 4, !tbaa !68
  call void @_Z6rcFreePv(ptr noundef %.sroa.32.8) #7
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i: ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i, %bb.fh
  %.sroa.23.6 = phi i64 [ %.sroa.23.5, %bb.fh ], [ %.0.i.i310.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i ] ; 5 uses
  %.sroa.32.9 = phi ptr [ %.sroa.32.8, %bb.fh ], [ %i.bmb, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit386.i ] ; 10 uses
  %.sroa.32.91025 = ptrtoaddr ptr %.sroa.32.9 to i64
  %.sroa.0450.3 = add nsw i64 %.sroa.0450.1, 2    ; 9 uses
  %i.bnh = icmp slt i64 %.sroa.0450.3, %.sroa.23.6
  br i1 %i.bnh, label %bb.fj, label %bb.fk, !prof !142

bb.fj:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i
  %i.bni = getelementptr inbounds [4 x i8], ptr %.sroa.32.9, i64 %.sroa.0450.3
  store i32 %storemerge507.i, ptr %i.bni, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit314.i

bb.fk:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit311.i
  %i.bnj = add nsw i64 %.sroa.23.6, 1
  %i.bnk = icmp sgt i64 %.sroa.23.6, 4611686018427387902
  %i.bnl = shl nsw i64 %.sroa.23.6, 1
  %..i.i312.i = call i64 @llvm.smax.i64(i64 %i.bnl, i64 %i.bnj)
  %.0.i.i313.i = select i1 %i.bnk, i64 9223372036854775807, i64 %..i.i312.i, !prof !141 ; 2 uses
  %i.bnm = shl i64 %.0.i.i313.i, 2
  %i.bnn = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bnm, i32 noundef 1) #7 ; 10 uses
  %.not.i387.i = icmp ne ptr %i.bnn, null
  %i.bno = icmp sgt i64 %.sroa.0450.1, -2
  %or.cond723.i = select i1 %.not.i387.i, i1 %i.bno, i1 false
  br i1 %or.cond723.i, label %.lr.ph.i.i388.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i

.lr.ph.i.i388.i.preheader:                        ; preds = %bb.fk
  %i.bnp = ptrtoaddr ptr %i.bnn to i64
  %min.iters.check1028 = icmp ult i64 %.sroa.0450.3, 8
  %i.bnq = sub i64 %.sroa.32.91025, %i.bnp
  %diff.check1026 = icmp ugt i64 %i.bnq, -32
  %or.cond1103 = select i1 %min.iters.check1028, i1 true, i1 %diff.check1026
  br i1 %or.cond1103, label %.lr.ph.i.i388.i.preheader1126, label %vector.ph1029

vector.ph1029:                                    ; preds = %.lr.ph.i.i388.i.preheader
  %n.vec1030 = and i64 %.sroa.0450.3, -8          ; 3 uses
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1029
  %index1032 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1035, %vector.body1031 ] ; 3 uses
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %index1032 ; 2 uses
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.9, i64 %index1032 ; 2 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 16
  %wide.load1033 = load <4 x i32>, ptr %i.bns, align 4, !tbaa !68
  %wide.load1034 = load <4 x i32>, ptr %i.bnt, align 4, !tbaa !68
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnr, i64 16
  store <4 x i32> %wide.load1033, ptr %i.bnr, align 4, !tbaa !68
  store <4 x i32> %wide.load1034, ptr %i.bnu, align 4, !tbaa !68
  %index.next1035 = add nuw i64 %index1032, 8     ; 2 uses
  %i.bnv = icmp eq i64 %index.next1035, %n.vec1030
  br i1 %i.bnv, label %middle.block1036, label %vector.body1031, !llvm.loop !96

middle.block1036:                                 ; preds = %vector.body1031
  %cmp.n1037 = icmp eq i64 %.sroa.0450.3, %n.vec1030
  br i1 %cmp.n1037, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i, label %.lr.ph.i.i388.i.preheader1126

.lr.ph.i.i388.i.preheader1126:                    ; preds = %.lr.ph.i.i388.i.preheader, %middle.block1036
  %.07.i.i389.i.ph = phi i64 [ 0, %.lr.ph.i.i388.i.preheader ], [ %n.vec1030, %middle.block1036 ] ; 3 uses
  %i.bnw = sub i64 %.sroa.0450.2, %.07.i.i389.i.ph
  %i.bnx = and i64 %.sroa.0450.3, 3               ; 2 uses
  %lcmp.mod1195.not = icmp eq i64 %i.bnx, 0
  br i1 %lcmp.mod1195.not, label %.lr.ph.i.i388.i.prol.loopexit, label %.lr.ph.i.i388.i.prol

.lr.ph.i.i388.i.prol:                             ; preds = %.lr.ph.i.i388.i.preheader1126, %.lr.ph.i.i388.i.prol
  %.07.i.i389.i.prol = phi i64 [ %i.bob, %.lr.ph.i.i388.i.prol ], [ %.07.i.i389.i.ph, %.lr.ph.i.i388.i.preheader1126 ] ; 3 uses
  %prol.iter1196 = phi i64 [ %prol.iter1196.next, %.lr.ph.i.i388.i.prol ], [ 0, %.lr.ph.i.i388.i.preheader1126 ]
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %.07.i.i389.i.prol
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.9, i64 %.07.i.i389.i.prol
  %i.boa = load i32, ptr %i.bnz, align 4, !tbaa !68
  store i32 %i.boa, ptr %i.bny, align 4, !tbaa !68
  %i.bob = add nuw nsw i64 %.07.i.i389.i.prol, 1  ; 2 uses
  %prol.iter1196.next = add i64 %prol.iter1196, 1 ; 2 uses
  %prol.iter1196.cmp.not = icmp eq i64 %prol.iter1196.next, %i.bnx
  br i1 %prol.iter1196.cmp.not, label %.lr.ph.i.i388.i.prol.loopexit, label %.lr.ph.i.i388.i.prol, !llvm.loop !97

.lr.ph.i.i388.i.prol.loopexit:                    ; preds = %.lr.ph.i.i388.i.prol, %.lr.ph.i.i388.i.preheader1126
  %.07.i.i389.i.unr = phi i64 [ %.07.i.i389.i.ph, %.lr.ph.i.i388.i.preheader1126 ], [ %i.bob, %.lr.ph.i.i388.i.prol ]
  %i.boc = icmp ult i64 %i.bnw, 3
  br i1 %i.boc, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i, label %.lr.ph.i.i388.i

.lr.ph.i.i388.i:                                  ; preds = %.lr.ph.i.i388.i.prol.loopexit, %.lr.ph.i.i388.i
  %.07.i.i389.i = phi i64 [ %i.bos, %.lr.ph.i.i388.i ], [ %.07.i.i389.i.unr, %.lr.ph.i.i388.i.prol.loopexit ] ; 6 uses
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %.07.i.i389.i
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.9, i64 %.07.i.i389.i
  %i.bof = load i32, ptr %i.boe, align 4, !tbaa !68
  store i32 %i.bof, ptr %i.bod, align 4, !tbaa !68
  %i.bog = add nuw nsw i64 %.07.i.i389.i, 1       ; 2 uses
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %i.bog
  %i.boi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.9, i64 %i.bog
  %i.boj = load i32, ptr %i.boi, align 4, !tbaa !68
  store i32 %i.boj, ptr %i.boh, align 4, !tbaa !68
  %i.bok = add nuw nsw i64 %.07.i.i389.i, 2       ; 2 uses
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %i.bok
  %i.bom = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.9, i64 %i.bok
  %i.bon = load i32, ptr %i.bom, align 4, !tbaa !68
  store i32 %i.bon, ptr %i.bol, align 4, !tbaa !68
  %i.boo = add nuw nsw i64 %.07.i.i389.i, 3       ; 2 uses
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %i.bnn, i64 %i.boo
  %i.boq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.9, i64 %i.boo
  %i.bor = load i32, ptr %i.boq, align 4, !tbaa !68
  store i32 %i.bor, ptr %i.bop, align 4, !tbaa !68
  %i.bos = add nuw nsw i64 %.07.i.i389.i, 4       ; 2 uses
  %exitcond.not.i.i390.i.3 = icmp eq i64 %i.bos, %.sroa.0450.3
  br i1 %exitcond.not.i.i390.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i, label %.lr.ph.i.i388.i, !llvm.loop !98

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i: ; preds = %.lr.ph.i.i388.i.prol.loopexit, %.lr.ph.i.i388.i, %middle.block1036, %bb.fk
  %i.bot = getelementptr inbounds [4 x i8], ptr %i.bnn, i64 %.sroa.0450.3
  store i32 %storemerge507.i, ptr %i.bot, align 4, !tbaa !68
  call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.32.9) #7
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit314.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit314.i: ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i, %bb.fj
  %.sroa.23.7 = phi i64 [ %.sroa.23.6, %bb.fj ], [ %.0.i.i313.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i ] ; 5 uses
  %.sroa.32.10 = phi ptr [ %.sroa.32.9, %bb.fj ], [ %i.bnn, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit391.i ] ; 10 uses
  %.sroa.32.101010 = ptrtoaddr ptr %.sroa.32.10 to i64
  %.sroa.0450.4 = add nsw i64 %.sroa.0450.1, 3    ; 8 uses
  %i.bou = icmp slt i64 %.sroa.0450.4, %.sroa.23.7
  br i1 %i.bou, label %bb.fl, label %bb.fm, !prof !142

bb.fl:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit314.i
  %i.bov = add nsw i64 %.sroa.0450.1, 4
  %i.bow = getelementptr inbounds [4 x i8], ptr %.sroa.32.10, i64 %.sroa.0450.4
  store i32 0, ptr %i.bow, align 4, !tbaa !68
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i

bb.fm:                                            ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit314.i
  %i.box = add nsw i64 %.sroa.23.7, 1
  %i.boy = icmp sgt i64 %.sroa.23.7, 4611686018427387902
  %i.boz = shl nsw i64 %.sroa.23.7, 1
  %..i.i315.i = call i64 @llvm.smax.i64(i64 %i.boz, i64 %i.box)
  %.0.i.i316.i = select i1 %i.boy, i64 9223372036854775807, i64 %..i.i315.i, !prof !141 ; 2 uses
  %i.bpa = shl i64 %.0.i.i316.i, 2
  %i.bpb = call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bpa, i32 noundef 1) #7 ; 10 uses
  %.not.i392.i = icmp ne ptr %i.bpb, null
  %i.bpc = icmp sgt i64 %.sroa.0450.1, -3
  %or.cond724.i = select i1 %.not.i392.i, i1 %i.bpc, i1 false
  br i1 %or.cond724.i, label %.lr.ph.i.i393.i.preheader, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i

.lr.ph.i.i393.i.preheader:                        ; preds = %bb.fm
  %i.bpd = ptrtoaddr ptr %i.bpb to i64
  %min.iters.check1013 = icmp ult i64 %.sroa.0450.4, 8
  %i.bpe = sub i64 %.sroa.32.101010, %i.bpd
  %diff.check1011 = icmp ugt i64 %i.bpe, -32
  %or.cond1104 = select i1 %min.iters.check1013, i1 true, i1 %diff.check1011
  br i1 %or.cond1104, label %.lr.ph.i.i393.i.preheader1125, label %vector.ph1014

vector.ph1014:                                    ; preds = %.lr.ph.i.i393.i.preheader
  %n.vec1015 = and i64 %.sroa.0450.4, -8          ; 3 uses
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1014
  %index1017 = phi i64 [ 0, %vector.ph1014 ], [ %index.next1020, %vector.body1016 ] ; 3 uses
  %i.bpf = getelementptr inbounds nuw [4 x i8], ptr %i.bpb, i64 %index1017 ; 2 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.10, i64 %index1017 ; 2 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 16
  %wide.load1018 = load <4 x i32>, ptr %i.bpg, align 4, !tbaa !68
  %wide.load1019 = load <4 x i32>, ptr %i.bph, align 4, !tbaa !68
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpf, i64 16
  store <4 x i32> %wide.load1018, ptr %i.bpf, align 4, !tbaa !68
  store <4 x i32> %wide.load1019, ptr %i.bpi, align 4, !tbaa !68
  %index.next1020 = add nuw i64 %index1017, 8     ; 2 uses
  %i.bpj = icmp eq i64 %index.next1020, %n.vec1015
  br i1 %i.bpj, label %middle.block1021, label %vector.body1016, !llvm.loop !99

middle.block1021:                                 ; preds = %vector.body1016
  %cmp.n1022 = icmp eq i64 %.sroa.0450.4, %n.vec1015
  br i1 %cmp.n1022, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i, label %.lr.ph.i.i393.i.preheader1125

.lr.ph.i.i393.i.preheader1125:                    ; preds = %.lr.ph.i.i393.i.preheader, %middle.block1021
  %.07.i.i394.i.ph = phi i64 [ 0, %.lr.ph.i.i393.i.preheader ], [ %n.vec1015, %middle.block1021 ] ; 3 uses
  %i.bpk = sub i64 %.sroa.0450.3, %.07.i.i394.i.ph
  %xtraiter1197 = and i64 %.sroa.0450.4, 3        ; 2 uses
  %lcmp.mod1198.not = icmp eq i64 %xtraiter1197, 0
  br i1 %lcmp.mod1198.not, label %.lr.ph.i.i393.i.prol.loopexit, label %.lr.ph.i.i393.i.prol

.lr.ph.i.i393.i.prol:                             ; preds = %.lr.ph.i.i393.i.preheader1125, %.lr.ph.i.i393.i.prol
  %.07.i.i394.i.prol = phi i64 [ %i.bpo, %.lr.ph.i.i393.i.prol ], [ %.07.i.i394.i.ph, %.lr.ph.i.i393.i.preheader1125 ] ; 3 uses
  %prol.iter1199 = phi i64 [ %prol.iter1199.next, %.lr.ph.i.i393.i.prol ], [ 0, %.lr.ph.i.i393.i.preheader1125 ]
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %i.bpb, i64 %.07.i.i394.i.prol
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.10, i64 %.07.i.i394.i.prol
  %i.bpn = load i32, ptr %i.bpm, align 4, !tbaa !68
  store i32 %i.bpn, ptr %i.bpl, align 4, !tbaa !68
  %i.bpo = add nuw nsw i64 %.07.i.i394.i.prol, 1  ; 2 uses
  %prol.iter1199.next = add i64 %prol.iter1199, 1 ; 2 uses
  %prol.iter1199.cmp.not = icmp eq i64 %prol.iter1199.next, %xtraiter1197
  br i1 %prol.iter1199.cmp.not, label %.lr.ph.i.i393.i.prol.loopexit, label %.lr.ph.i.i393.i.prol, !llvm.loop !100

.lr.ph.i.i393.i.prol.loopexit:                    ; preds = %.lr.ph.i.i393.i.prol, %.lr.ph.i.i393.i.preheader1125
  %.07.i.i394.i.unr = phi i64 [ %.07.i.i394.i.ph, %.lr.ph.i.i393.i.preheader1125 ], [ %i.bpo, %.lr.ph.i.i393.i.prol ]
  %i.bpp = icmp ult i64 %i.bpk, 3
  br i1 %i.bpp, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i, label %.lr.ph.i.i393.i

.lr.ph.i.i393.i:                                  ; preds = %.lr.ph.i.i393.i.prol.loopexit, %.lr.ph.i.i393.i
  %.07.i.i394.i = phi i64 [ %i.bqf, %.lr.ph.i.i393.i ], [ %.07.i.i394.i.unr, %.lr.ph.i.i393.i.prol.loopexit ] ; 6 uses
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.bpb, i64 %.07.i.i394.i
  %i.bpr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.10, i64 %.07.i.i394.i
  %i.bps = load i32, ptr %i.bpr, align 4, !tbaa !68
  store i32 %i.bps, ptr %i.bpq, align 4, !tbaa !68
  %i.bpt = add nuw nsw i64 %.07.i.i394.i, 1       ; 2 uses
  %i.bpu = getelementptr inbounds nuw [4 x i8], ptr %i.bpb, i64 %i.bpt
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.10, i64 %i.bpt
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !68
  store i32 %i.bpw, ptr %i.bpu, align 4, !tbaa !68
  %i.bpx = add nuw nsw i64 %.07.i.i394.i, 2       ; 2 uses
  %i.bpy = getelementptr inbounds nuw [4 x i8], ptr %i.bpb, i64 %i.bpx
  %i.bpz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.10, i64 %i.bpx
  %i.bqa = load i32, ptr %i.bpz, align 4, !tbaa !68
  store i32 %i.bqa, ptr %i.bpy, align 4, !tbaa !68
  %i.bqb = add nuw nsw i64 %.07.i.i394.i, 3       ; 2 uses
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %i.bpb, i64 %i.bqb
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.32.10, i64 %i.bqb
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !68
  store i32 %i.bqe, ptr %i.bqc, align 4, !tbaa !68
  %i.bqf = add nuw nsw i64 %.07.i.i394.i, 4       ; 2 uses
  %exitcond.not.i.i395.i.3 = icmp eq i64 %i.bqf, %.sroa.0450.4
  br i1 %exitcond.not.i.i395.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i, label %.lr.ph.i.i393.i, !llvm.loop !101

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i: ; preds = %.lr.ph.i.i393.i.prol.loopexit, %.lr.ph.i.i393.i, %middle.block1021, %bb.fm
  %i.bqg = getelementptr inbounds [4 x i8], ptr %i.bpb, i64 %.sroa.0450.4
  store i32 0, ptr %i.bqg, align 4, !tbaa !68
  %i.bqh = add nsw i64 %.sroa.0450.1, 4
  call void @_Z6rcFreePv(ptr noundef nonnull %.sroa.32.10) #7
  br label %_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i

_ZN12rcVectorBaseIiL11rcAllocHint1EE9push_backERKi.exit317.i: ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i, %bb.fl, %_ZL10distToPolyiPKfS0_.exit.i
  %.sroa.0450.5 = phi i64 [ %.sroa.0450.1, %_ZL10distToPolyiPKfS0_.exit.i ], [ %i.bov, %bb.fl ], [ %i.bqh, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i ] ; 3 uses
  %.sroa.23.8 = phi i64 [ %.sroa.23.4, %_ZL10distToPolyiPKfS0_.exit.i ], [ %.sroa.23.7, %bb.fl ], [ %.0.i.i316.i, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i ] ; 6 uses
  %.sroa.32.11 = phi ptr [ %.sroa.32.7, %_ZL10distToPolyiPKfS0_.exit.i ], [ %.sroa.32.10, %bb.fl ], [ %i.bpb, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit396.i ] ; 8 uses
  %i.bqi = add i32 %storemerge259503.i, 1         ; 2 uses
  %exitcond598.not.i = icmp eq i32 %i.bqi, %i.bev
  br i1 %exitcond598.not.i, label %._crit_edge506.i, label %bb.ep

bb.fn:                                            ; preds = %_ZL12delaunayHullP9rcContextiPKfiPKiR12rcTempVectorIiES7_.exit.i, %.lr.ph524.i
  %indvars.iv649 = phi i64 [ %indvars.iv.next650, %_ZL12delaunayHullP9rcContextiPKfiPKiR12rcTempVectorIiES7_.exit.i ], [ %i.bgm, %.lr.ph524.i ] ; 4 uses
  %.sroa.11.3 = phi i64 [ %.sroa.11.4, %_ZL12delaunayHullP9rcContextiPKfiPKiR12rcTempVectorIiES7_.exit.i ], [ %.sroa.11.0581, %.lr.ph524.i ] ; 5 uses
  %.sroa.14472.6 = phi ptr [ %.sroa.14472.7, %_ZL12delaunayHullP9rcContextiPKfiPKiR12rcTempVectorIiES7_.exit.i ], [ %.sroa.14472.0582, %.lr.ph524.i ] ; 4 uses
  %.0223522.i = phi i32 [ %i.cby, %_ZL12delaunayHullP9rcContextiPKfiPKiR12rcTempVectorIiES7_.exit.i ], [ 0, %.lr.ph524.i ] ; 2 uses
  %exitcond652 = icmp eq i32 %.0223522.i, %i.bgn
  br i1 %exitcond652, label %.critedgethread-pre-split.i, label %.lr.ph515.i.preheader

.lr.ph515.i.preheader:                            ; preds = %bb.fn
  %i.bqj = load i64, ptr %6, align 8              ; 3 uses
  %i.bqk = icmp eq i64 %i.bqj, 0
  %i.bql = load ptr, ptr %i.ah, align 8
  %i.bqm = trunc i64 %i.bqj to i32
  %i.bqn = icmp sgt i32 %i.bqm, 3
  %i.bqo = lshr i64 %i.bqj, 2
  %wide.trip.count.i320.i = and i64 %i.bqo, 536870911
  br label %.lr.ph515.i

._crit_edge516.i:                                 ; preds = %bb.fs
  %i.bqp = fcmp ugt float %.4222.i, %4
  %i.bqq = icmp ne i32 %.4.i321, -1
  %or.cond.not.i = select i1 %i.bqp, i1 %i.bqq, i1 false
  br i1 %or.cond.not.i, label %bb.ft, label %.critedgethread-pre-split.i.loopexit.split.loop.exit911

.lr.ph515.i:                                      ; preds = %.lr.ph515.i.preheader, %bb.fs
  %indvars.iv600.i = phi i64 [ %indvars.iv.next601.i, %bb.fs ], [ 0, %.lr.ph515.i.preheader ] ; 3 uses
  %.0217513.i = phi i32 [ %.4.i321, %bb.fs ], [ -1, %.lr.ph515.i.preheader ] ; 3 uses
  %.0218512.i = phi float [ %.4222.i, %bb.fs ], [ 0.000000e+00, %.lr.ph515.i.preheader ] ; 4 uses
  %.sroa.6.0510.i = phi float [ %.sroa.6.2.i, %bb.fs ], [ 0.000000e+00, %.lr.ph515.i.preheader ] ; 3 uses
  %i.bqr = phi <2 x float> [ %i.buz, %bb.fs ], [ zeroinitializer, %.lr.ph515.i.preheader ] ; 3 uses
  %.idx701.i = shl nuw nsw i64 %indvars.iv600.i, 4
  %i.bqs = getelementptr inbounds nuw i8, ptr %.sroa.32.11, i64 %.idx701.i ; 4 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 12
  %i.bqu = load i32, ptr %i.bqt, align 4, !tbaa !68
  %.not.i320 = icmp eq i32 %i.bqu, 0
  br i1 %.not.i320, label %bb.fo, label %bb.fs

bb.fo:                                            ; preds = %.lr.ph515.i
  %i.bqv = load i32, ptr %i.bqs, align 4, !tbaa !68
  %i.bqw = trunc nuw nsw i64 %indvars.iv600.i to i32 ; 3 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqs, i64 4
  %i.bqy = load i32, ptr %i.bqx, align 4, !tbaa !68
  %i.bqz = sitofp i32 %i.bqy to float
  %i.bra = load float, ptr %i.et, align 8, !tbaa !144
  %i.brb = fmul float %i.bra, %i.bqz              ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqs, i64 8
  %i.brd = load i32, ptr %i.brc, align 4, !tbaa !68
  %i.bre = insertelement <2 x i32> poison, i32 %i.bqv, i64 0
  %i.brf = insertelement <2 x i32> %i.bre, i32 %i.brd, i64 1
  %i.brg = sitofp <2 x i32> %i.brf to <2 x float>
  %i.brh = mul i32 %i.bqw, 14401
  %i.bri = mul i32 %i.bqw, 45891
  %i.brj = and i32 %i.brh, 65535
  %i.brk = and i32 %i.bri, 65535
  %i.brl = uitofp nneg i32 %i.brj to float
  %i.brm = uitofp nneg i32 %i.brk to float
  %i.brn = insertelement <2 x float> poison, float %i.brm, i64 0
  %i.bro = insertelement <2 x float> %i.brn, float %i.brl, i64 1
  %i.brp = fdiv nnan <2 x float> %i.bro, splat (float 6.553500e+04)
  %i.brq = call nnan <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brp, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  %i.brr = fmul <2 x float> %i.bgp, %i.brq
  %i.brs = fmul <2 x float> %i.brr, splat (float 1.000000e-01)
  %i.brt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brg, <2 x float> %i.fj, <2 x float> %i.brs) ; 2 uses
  br i1 %i.bqk, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.bqn, label %.lr.ph.i319.i, label %_ZL13distToTriMeshPKfS0_iPKii.exit.i

.lr.ph.i319.i:                                    ; preds = %bb.fp, %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i
  %indvars.iv.i321.i = phi i64 [ %indvars.iv.next.i325.i, %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i ], [ 0, %bb.fp ] ; 2 uses
  %.02124.i.i = phi float [ %.1.i324.i, %_ZL9distPtTriPKfS0_S0_S0_.exit.i.i ], [ f0x7F7FFFFF, %bb.fp ] ; 2 uses
  %.idx.i322.i = shl nuw nsw i64 %indvars.iv.i321.i, 4
  %i.bru = getelementptr inbounds nuw i8, ptr %i.bql, i64 %.idx.i322.i ; 3 uses
  %i.brv = load i32, ptr %i.bru, align 4, !tbaa !68
  %i.brw = mul nsw i32 %i.brv, 3
  %i.brx = sext i32 %i.brw to i64
  %i.bry = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.brx ; 3 uses
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bru, i64 4
  %i.bsa = load i32, ptr %i.brz, align 4, !tbaa !68
  %i.bsb = mul nsw i32 %i.bsa, 3
  %i.bsc = sext i32 %i.bsb to i64
  %i.bsd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bsc ; 3 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bru, i64 8
  %i.bsf = load i32, ptr %i.bse, align 4, !tbaa !68
  %i.bsg = mul nsw i32 %i.bsf, 3
  %i.bsh = sext i32 %i.bsg to i64
  %i.bsi = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bsh ; 3 uses
  %i.bsj = load float, ptr %i.bsi, align 4, !tbaa !62
  %i.bsk = load float, ptr %i.bry, align 4, !tbaa !62
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsi, i64 8
  %i.bsm = load float, ptr %i.bsl, align 4, !tbaa !62
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bry, i64 8
  %i.bso = load float, ptr %i.bsn, align 4, !tbaa !62 ; 2 uses
  %i.bsp = load float, ptr %i.bsd, align 4, !tbaa !62
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsd, i64 8
  %i.bsr = load float, ptr %i.bsq, align 4, !tbaa !62
  %i.bss = insertelement <2 x float> poison, float %i.bsp, i64 0
  %i.bst = insertelement <2 x float> %i.bss, float %i.bsj, i64 1
  %i.bsu = insertelement <2 x float> poison, float %i.bsk, i64 0 ; 2 uses
  %i.bsv = shufflevector <2 x float> %i.bsu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bsw = fsub <2 x float> %i.bst, %i.bsv        ; 5 uses
  %i.bsx = insertelement <2 x float> poison, float %i.bsr, i64 0
  %i.bsy = insertelement <2 x float> %i.bsx, float %i.bsm, i64 1
  %i.bsz = insertelement <2 x float> poison, float %i.bso, i64 0
  %i.bta = shufflevector <2 x float> %i.bsz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btb = fsub <2 x float> %i.bsy, %i.bta        ; 5 uses
  %shift1119 = shufflevector <2 x float> %i.btb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1120 = fmul <2 x float> %shift1119, %i.btb
  %i.btc = extractelement <2 x float> %foldExtExtBinop1120, i64 0
  %i.btd = extractelement <2 x float> %i.bsw, i64 0
  %i.bte = extractelement <2 x float> %i.bsw, i64 1
  %i.btf = call noundef float @llvm.fmuladd.f32(float %i.bte, float %i.btd, float %i.btc) ; 3 uses
  %i.btg = fmul <2 x float> %i.btb, %i.btb
  %i.bth = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsw, <2 x float> %i.bsw, <2 x float> %i.btg) ; 3 uses
  %i.bti = insertelement <2 x float> %i.bsu, float %i.bso, i64 1
  %i.btj = fsub <2 x float> %i.brt, %i.bti        ; 2 uses
  %i.btk = shufflevector <2 x float> %i.btj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.btl = fmul <2 x float> %i.btb, %i.btk
  %i.btm = shufflevector <2 x float> %i.btj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsw, <2 x float> %i.btm, <2 x float> %i.btl) ; 2 uses
  %i.bto = fneg float %i.btf
  %i.btp = fmul float %i.btf, %i.bto
  %i.btq = extractelement <2 x float> %i.bth, i64 0
  %i.btr = extractelement <2 x float> %i.bth, i64 1
  %i.bts = call float @llvm.fmuladd.f32(float %i.btr, float %i.btq, float %i.btp)
  %i.btt = fdiv float 1.000000e+00, %i.bts
  %i.btu = shufflevector <2 x float> %i.btn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.btv = insertelement <2 x float> poison, float %i.btf, i64 0
  %i.btw = shufflevector <2 x float> %i.btv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.btx = fneg <2 x float> %i.btn
  %i.bty = fmul <2 x float> %i.btw, %i.btx
  %i.btz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bth, <2 x float> %i.btu, <2 x float> %i.bty)
  %i.bua = insertelement <2 x float> poison, float %i.btt, i64 0
  %i.bub = shufflevector <2 x float> %i.bua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.buc = fmul <2 x float> %i.btz, %i.bub        ; 3 uses
  %i.bud = fcmp ult <2 x float> %i.buc, splat (float f0xB8D1B717)
  %i.bue = bitcast <2 x i1> %i.bud to i2
  %or.cond.not54.i.i.i = icmp ne i2 %i.bue, 0
  %i.buf = extractelement <2 x float> %i.buc, i64 0 ; 2 uses
  %i.bug = extractelement <2 x float> %i.buc, i64 1 ; 2 uses
end_hunk_1
