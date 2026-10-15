Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %i.aaz
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i164.i, i64 %i.aaz
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !68
  store i32 %i.abc, ptr %i.aba, align 4, !tbaa !68
  %i.abd = add nuw nsw i64 %.07.i.i.i.i.i167.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i168.i.3 = icmp eq i64 %i.abd, %i.aaa
  br i1 %exitcond.not.i.i.i.i.i168.i.3, label %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, label %.lr.ph.i.i.i.i.i166.i, !llvm.loop !88

_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i: ; preds = %.lr.ph.i.i.i.i.i166.i.prol.loopexit, %.lr.ph.i.i.i.i.i166.i, %middle.block1084, %bb.bw, %bb.bv
  call void @_Z6rcFreePv(ptr noundef %.pre.i.i164.i) #8
  store ptr %i.zy, ptr %i.ak, align 8, !tbaa !66
  store i64 %.0.i.i.i.i161.i, ptr %i.aj, align 8, !tbaa !124
  br label %_ZL5push3R12rcTempVectorIiEiii.exit169.i

_ZL5push3R12rcTempVectorIiEiii.exit169.i:         ; preds = %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i, %bb.bu
  %.pre.i159239.i = phi ptr [ %i.zy, %_ZN12rcVectorBaseIiL11rcAllocHint1EE17allocate_and_copyEl.exit.i.i.i165.i ], [ %.pre.i159.i, %bb.bu ] ; 3 uses
  store i64 %i.zt, ptr %7, align 8, !tbaa !67
  %i.abe = getelementptr [4 x i8], ptr %.pre.i159239.i, i64 %i.yk ; 3 uses
  store i32 %i.yv, ptr %i.abe, align 4, !tbaa !68
  %i.abf = getelementptr i8, ptr %i.abe, i64 4
  store i32 %i.yy, ptr %i.abf, align 4, !tbaa !68
  %i.abg = getelementptr i8, ptr %i.abe, i64 8
  store i32 %i.zo, ptr %i.abg, align 4, !tbaa !68
  br label %bb.bx

bb.bx:                                            ; preds = %_ZL5push3R12rcTempVectorIiEiii.exit169.i, %bb.bt, %bb.bs, %bb.br
  %i.abh = phi i64 [ %i.zt, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yj, %bb.br ], [ %i.yj, %bb.bs ], [ %i.yj, %bb.bt ] ; 3 uses
  %.pre.i159238.i = phi ptr [ %.pre.i159239.i, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %.pre.i159.i, %bb.br ], [ %.pre.i159.i, %bb.bs ], [ %.pre.i159.i, %bb.bt ] ; 2 uses
  %i.abi = phi i64 [ %i.zt, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yk, %bb.br ], [ %i.yk, %bb.bs ], [ %i.yk, %bb.bt ]
  %i.abj = phi ptr [ %.pre.i159239.i, %_ZL5push3R12rcTempVectorIiEiii.exit169.i ], [ %i.yl, %bb.br ], [ %i.yl, %bb.bs ], [ %i.yl, %bb.bt ] ; 2 uses
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next228.i, 4
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.br

_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit: ; preds = %.loopexit.i, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %.not496 = icmp eq i32 %.0254.lcssa, 0          ; 3 uses
  br i1 %.not496, label %_ZL13polyMinExtentPKfi.exit.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  %wide.trip.count.i = zext nneg i32 %.0254.lcssa to i64 ; 5 uses
  %xtraiter1175 = and i64 %wide.trip.count.i, 1
  %i.abk = icmp eq i32 %.0254.lcssa, 1
  br i1 %i.abk, label %.lr.ph.i334.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1178 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i334

.lr.ph.us.preheader.i.i.unr-lcssa:                ; preds = %.lr.ph.i334
  %lcmp.mod1176.not = icmp eq i64 %xtraiter1175, 0
  br i1 %lcmp.mod1176.not, label %.lr.ph.us.preheader.i.i, label %.lr.ph.i334.epil.preheader

.lr.ph.i334.epil.preheader:                       ; preds = %.lr.ph.us.preheader.i.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i335.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i336.1, %.lr.ph.us.preheader.i.i.unr-lcssa ]
  %lcmp.mod1177 = trunc i32 %.0254.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1177)
  %i.abl = mul nuw nsw i64 %indvars.iv.i335.epil.init, 3 ; 2 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.abl ; 2 uses
  %i.abo = load <2 x float>, ptr %i.abn, align 4, !tbaa !62
  store <2 x float> %i.abo, ptr %i.abm, align 4, !tbaa !62
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !62
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store float %i.abq, ptr %i.abr, align 4, !tbaa !62
  br label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.lr.ph.us.preheader.i.i.unr-lcssa, %.lr.ph.i334.epil.preheader
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.abs = load float, ptr %i.er, align 4, !tbaa !143 ; 5 uses
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %._crit_edge.us.i.i, %.lr.ph.us.preheader.i.i
  %indvars.iv42.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next43.i.i, %._crit_edge.us.i.i ] ; 3 uses
  %.036.us.i.i = phi float [ f0x7F7FFFFF, %.lr.ph.us.preheader.i.i ], [ %i.adk, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1 ; 3 uses
  %.not.i.i338 = icmp eq i64 %indvars.iv.next43.i.i, %wide.trip.count.i ; 2 uses
  %i.abt = trunc nuw nsw i64 %indvars.iv.next43.i.i to i32
  %iv.rem.i.i = select i1 %.not.i.i338, i32 0, i32 %i.abt ; 2 uses
  %.idx.i.i339 = mul nuw nsw i64 %indvars.iv42.i.i, 12
  %i.abu = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i339 ; 2 uses
  %i.abv = mul nuw nsw i32 %iv.rem.i.i, 3
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.abw ; 2 uses
  %i.aby = getelementptr i8, ptr %i.abu, i64 8
  %i.abz = getelementptr i8, ptr %i.abx, i64 8
  %i.aca = zext i32 %iv.rem.i.i to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph.us.i.i
  %indvars.iv.i.i340 = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i341, %bb.ca ] ; 4 uses
  %.02533.us.i.i = phi float [ 0.000000e+00, %.lr.ph.us.i.i ], [ %.1.us.i.i, %bb.ca ] ; 3 uses
  %i.acb = icmp eq i64 %indvars.iv.i.i340, %indvars.iv42.i.i
  %i.acc = icmp eq i64 %indvars.iv.i.i340, %i.aca
  %or.cond.us.i.i = select i1 %i.acb, i1 true, i1 %i.acc
  br i1 %or.cond.us.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.idx47.i.i = mul nuw nsw i64 %indvars.iv.i.i340, 12
  %i.acd = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx47.i.i ; 2 uses
  %.val.us.i.i = load float, ptr %i.acd, align 4, !tbaa !62 ; 2 uses
  %i.ace = getelementptr i8, ptr %i.acd, i64 8
  %.val28.us.i.i = load float, ptr %i.ace, align 4, !tbaa !62 ; 2 uses
  %.val29.us.i.i = load float, ptr %i.abu, align 4, !tbaa !62 ; 2 uses
  %.val30.us.i.i = load float, ptr %i.aby, align 4, !tbaa !62 ; 2 uses
  %.val31.us.i.i = load float, ptr %i.abx, align 4, !tbaa !62
  %.val32.us.i.i = load float, ptr %i.abz, align 4, !tbaa !62
  %i.acf = insertelement <2 x float> poison, float %.val.us.i.i, i64 0
  %i.acg = insertelement <2 x float> %i.acf, float %.val31.us.i.i, i64 1
  %i.ach = insertelement <2 x float> poison, float %.val29.us.i.i, i64 0
  %i.aci = shufflevector <2 x float> %i.ach, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acj = fsub <2 x float> %i.acg, %i.aci        ; 3 uses
  %i.ack = insertelement <2 x float> poison, float %.val28.us.i.i, i64 0
  %i.acl = insertelement <2 x float> %i.ack, float %.val32.us.i.i, i64 1
  %i.acm = insertelement <2 x float> poison, float %.val30.us.i.i, i64 0
  %i.acn = shufflevector <2 x float> %i.acm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aco = fsub <2 x float> %i.acl, %i.acn        ; 3 uses
  %i.acp = shufflevector <2 x float> %i.aco, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acq = fmul <2 x float> %i.acp, %i.aco
  %i.acr = shufflevector <2 x float> %i.acj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acr, <2 x float> %i.acj, <2 x float> %i.acq) ; 2 uses
  %i.act = extractelement <2 x float> %i.acs, i64 1 ; 2 uses
  %i.acu = fcmp ogt float %i.act, 0.000000e+00
  %i.acv = extractelement <2 x float> %i.acs, i64 0 ; 2 uses
  %i.acw = fdiv float %i.acv, %i.act
  %.0.i.us.i.i = select i1 %i.acu, float %i.acw, float %i.acv ; 3 uses
  %i.acx = fcmp olt float %.0.i.us.i.i, 0.000000e+00
  %i.acy = fcmp ogt float %.0.i.us.i.i, 1.000000e+00
  %spec.store.select.i.us.i.i = select i1 %i.acy, float 1.000000e+00, float %.0.i.us.i.i
  %.1.i.us.i.i = select i1 %i.acx, float 0.000000e+00, float %spec.store.select.i.us.i.i ; 2 uses
  %i.acz = extractelement <2 x float> %i.acj, i64 1
  %i.ada = call float @llvm.fmuladd.f32(float %.1.i.us.i.i, float %i.acz, float %.val29.us.i.i)
  %i.adb = fsub float %i.ada, %.val.us.i.i        ; 2 uses
  %i.adc = extractelement <2 x float> %i.aco, i64 1
  %i.add = call float @llvm.fmuladd.f32(float %.1.i.us.i.i, float %i.adc, float %.val30.us.i.i)
  %i.ade = fsub float %i.add, %.val28.us.i.i      ; 2 uses
  %i.adf = fmul float %i.ade, %i.ade
  %i.adg = call noundef float @llvm.fmuladd.f32(float %i.adb, float %i.adb, float %i.adf) ; 2 uses
  %i.adh = fcmp ogt float %.02533.us.i.i, %i.adg
  %i.adi = select i1 %i.adh, float %.02533.us.i.i, float %i.adg
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.1.us.i.i = phi float [ %.02533.us.i.i, %bb.by ], [ %i.adi, %bb.bz ] ; 3 uses
  %indvars.iv.next.i.i341 = add nuw nsw i64 %indvars.iv.i.i340, 1 ; 2 uses
  %exitcond.not.i.i342 = icmp eq i64 %indvars.iv.next.i.i341, %wide.trip.count.i
  br i1 %exitcond.not.i.i342, label %._crit_edge.us.i.i, label %bb.by

._crit_edge.us.i.i:                               ; preds = %bb.ca
  %i.adj = fcmp olt float %.036.us.i.i, %.1.us.i.i
  %i.adk = select i1 %i.adj, float %.036.us.i.i, float %.1.us.i.i ; 2 uses
  br i1 %.not.i.i338, label %_ZL13polyMinExtentPKfi.exit.i, label %.lr.ph.us.i.i

_ZL13polyMinExtentPKfi.exit.i:                    ; preds = %._crit_edge.us.i.i
  %i.adl = fdiv float 1.000000e+00, %i.abs        ; 5 uses
  %i.adm = call noundef float @_Z6rcSqrtf(float noundef %i.adk) #8 ; 4 uses
  br i1 %i.es, label %bb.cb, label %._crit_edge.i347

_ZL13polyMinExtentPKfi.exit.thread.i:             ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.adn = load float, ptr %i.er, align 4, !tbaa !143 ; 2 uses
  %i.ado = fdiv float 1.000000e+00, %i.adn
  %i.adp = call noundef float @_Z6rcSqrtf(float noundef f0x7F7FFFFF) #8
  br label %._crit_edge.i347

.lr.ph.i334:                                      ; preds = %.lr.ph.i334, %.lr.ph.preheader.i.new
  %indvars.iv.i335 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i336.1, %.lr.ph.i334 ] ; 3 uses
  %niter1179 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1179.next.1, %.lr.ph.i334 ]
  %i.adq = mul nuw nsw i64 %indvars.iv.i335, 3    ; 2 uses
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.adq ; 2 uses
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.adq ; 2 uses
  %i.adt = load <2 x float>, ptr %i.ads, align 4, !tbaa !62
  store <2 x float> %i.adt, ptr %i.adr, align 8, !tbaa !62
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !62
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  store float %i.adv, ptr %i.adw, align 8, !tbaa !62
  %i.adx = mul nuw i64 %indvars.iv.i335, 3
  %i.ady = add nuw i64 %i.adx, 3                  ; 2 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ady ; 2 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ady ; 2 uses
  %i.aeb = load <2 x float>, ptr %i.aea, align 4, !tbaa !62
  store <2 x float> %i.aeb, ptr %i.adz, align 4, !tbaa !62
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !62
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store float %i.aed, ptr %i.aee, align 4, !tbaa !62
  %indvars.iv.next.i336.1 = add nuw nsw i64 %indvars.iv.i335, 2 ; 2 uses
  %niter1179.next.1 = add i64 %niter1179, 2       ; 2 uses
  %niter1179.ncmp.1 = icmp eq i64 %niter1179.next.1, %unroll_iter1178
  br i1 %niter1179.ncmp.1, label %.lr.ph.us.preheader.i.i.unr-lcssa, label %.lr.ph.i334

bb.cb:                                            ; preds = %_ZL13polyMinExtentPKfi.exit.i
  %i.aef = add nsw i32 %.0254.lcssa, -1
  %i.aeg = add nsw i32 %i.go, -1
  %i.aeh = add nsw i32 %i.gs, -1
  %i.aei = insertelement <2 x float> poison, float %i.adl, i64 0
  %i.aej = shufflevector <2 x float> %i.aei, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x i32> poison, i32 %i.gk, i64 0
  %9 = insertelement <2 x i32> %8, i32 %i.gh, i64 1
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i346, %bb.cb
  %.4 = phi i32 [ %.0254.lcssa, %bb.cb ], [ %.5, %.loopexit.i346 ] ; 7 uses
  %indvars.iv589.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next590.i, %.loopexit.i346 ] ; 3 uses
  %.0238484.i = phi i32 [ 0, %bb.cb ], [ %.3241.i, %.loopexit.i346 ] ; 2 uses
  %.0247483.i = phi i32 [ %i.aef, %bb.cb ], [ %i.anj, %.loopexit.i346 ] ; 2 uses
  %i.aek = mul nsw i32 %.0247483.i, 3
  %i.ael = sext i32 %i.aek to i64
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ael ; 5 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv589.i, 12
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
  %.0435.i = phi ptr [ %i.aem, %bb.ce ], [ %i.aem, %bb.cd ], [ %i.aen, %bb.cf ] ; 2 uses
  %.0434.i = phi ptr [ %i.aen, %bb.ce ], [ %i.aen, %bb.cd ], [ %i.aem, %bb.cf ] ; 2 uses
  %.0245.i = phi i1 [ false, %bb.ce ], [ false, %bb.cd ], [ true, %bb.cf ]
  %i.afb = getelementptr inbounds nuw i8, ptr %.0434.i, i64 4
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !62
  %i.afd = getelementptr inbounds nuw i8, ptr %.0435.i, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !62 ; 2 uses
  %i.aff = fsub float %i.afc, %i.afe
  %i.afg = getelementptr inbounds nuw i8, ptr %.0434.i, i64 8
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !62
  %i.afi = getelementptr inbounds nuw i8, ptr %.0435.i, i64 8
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
  %i.afs = call float @sqrtf(float noundef %i.afr) #8
  %i.aft = fdiv float %i.afs, %3
  %i.afu = call float @llvm.floor.f32(float %i.aft)
  %i.afv = fptosi float %i.afu to i32
  %i.afw = call i32 @llvm.smin.i32(i32 %i.afv, i32 30)
  %spec.store.select.i = add nsw i32 %i.afw, 1    ; 2 uses
  %i.afx = add nsw i32 %spec.store.select.i, %.4  ; 2 uses
  %i.afy = icmp sgt i32 %i.afx, 126
  %i.afz = sub nsw i32 126, %.4
  %spec.select.i = select i1 %i.afy, i32 %i.afz, i32 %spec.store.select.i ; 3 uses
  %.not260452.i = icmp slt i32 %spec.select.i, 0
  br i1 %.not260452.i, label %._crit_edge456.i, label %.lr.ph455.i

.lr.ph455.i:                                      ; preds = %bb.cg
  %i.aga = uitofp nneg i32 %spec.select.i to float
  %i.agb = load float, ptr %i.et, align 8, !tbaa !144 ; 2 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %i.afx, i32 126)
  %reass.sub = sub i32 %smin.i, %.4
  %i.agc = add i32 %reass.sub, 1
  %wide.trip.count554.i = zext i32 %i.agc to i64
  br label %bb.ch

._crit_edge456.i:                                 ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  store i32 %spec.select.i, ptr %i.ey, align 4, !tbaa !68
  br label %bb.cu

bb.ch:                                            ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, %.lr.ph455.i
  %indvars.iv551.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next552.i, %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i ] ; 3 uses
  %i.agd = trunc nuw nsw i64 %indvars.iv551.i to i32
  %i.age = uitofp nneg i32 %i.agd to float
  %i.agf = fdiv float %i.age, %i.aga              ; 2 uses
  %.idx697.i = mul nuw nsw i64 %indvars.iv551.i, 12
  %i.agg = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx697.i ; 3 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 4
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agj = insertelement <2 x float> poison, float %i.agf, i64 0
  %i.agk = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afo, <2 x float> %i.agk, <2 x float> %i.afn) ; 3 uses
  %i.agm = extractelement <2 x float> %i.agl, i64 1
  store float %i.agm, ptr %i.agg, align 4, !tbaa !62
  %i.agn = extractelement <2 x float> %i.agl, i64 0
  store float %i.agn, ptr %i.agi, align 4, !tbaa !62
  %i.ago = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agl, <2 x float> %i.aej, <2 x float> splat (float f0x3C23D70A))
  %10 = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ago)
  %11 = fptosi <2 x float> %10 to <2 x i32>
  %12 = sub nsw <2 x i32> %11, %9                 ; 3 uses
  %13 = extractelement <2 x i32> %12, i64 1
  %14 = call i32 @llvm.smin.i32(i32 %13, i32 %i.aeg)
  %15 = icmp slt <2 x i32> %12, zeroinitializer   ; 2 uses
  %16 = extractelement <2 x i1> %15, i64 1
  %i.agp = select i1 %16, i32 0, i32 %14          ; 2 uses
  %17 = extractelement <2 x i32> %12, i64 0
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 %i.aeh)
  %19 = extractelement <2 x i1> %15, i64 0
  %i.agq = select i1 %19, i32 0, i32 %18          ; 2 uses
  %i.agr = mul nsw i32 %i.agq, %i.go
  %i.ags = add nsw i32 %i.agr, %i.agp
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.agt
  %i.agv = load i16, ptr %i.agu, align 2, !tbaa !132 ; 2 uses
  %.not866 = icmp eq i16 %i.agv, -1
  br i1 %.not866, label %.lr.ph.i.i343, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i

.lr.ph.i.i343:                                    ; preds = %bb.ch
  %i.agw = call float @llvm.fmuladd.f32(float %i.aff, float %i.agf, float %i.afe)
  %i.agx = fneg float %i.agw
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cs, %.lr.ph.i.i343
  %.066110.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %i.ahn, %bb.cs ]
  %.067109.i.i = phi float [ f0x7F7FFFFF, %.lr.ph.i.i343 ], [ %.3.i.i345, %bb.cs ] ; 4 uses
  %.068108.i.i = phi i32 [ 16, %.lr.ph.i.i343 ], [ %.169.i.i, %bb.cs ] ; 3 uses
  %.071107.i.i = phi i32 [ 8, %.lr.ph.i.i343 ], [ %.172.i.i, %bb.cs ] ; 3 uses
  %.074106.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %.175.i.i, %bb.cs ] ; 2 uses
  %.077105.i.i = phi i32 [ 1, %.lr.ph.i.i343 ], [ %.178.i.i, %bb.cs ] ; 2 uses
  %.080103.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %i.aia, %bb.cs ] ; 5 uses
  %.082101.i.i = phi i32 [ 1, %.lr.ph.i.i343 ], [ %i.ahz, %bb.cs ] ; 7 uses
  %.084100.i.i = phi i16 [ -1, %.lr.ph.i.i343 ], [ %.387.i.i, %bb.cs ] ; 3 uses
  %i.agy = add nsw i32 %.082101.i.i, %i.agp       ; 3 uses
  %i.agz = add nsw i32 %.080103.i.i, %i.agq       ; 3 uses
  %i.aha = icmp sgt i32 %i.agy, -1
  %i.ahb = icmp sgt i32 %i.agz, -1
  %or.cond.i.i344 = select i1 %i.aha, i1 %i.ahb, i1 false
  %i.ahc = icmp slt i32 %i.agy, %i.go
  %or.cond98.i.i = and i1 %i.ahc, %or.cond.i.i344
  %i.ahd = icmp slt i32 %i.agz, %i.gs
  %or.cond99.i.i = select i1 %or.cond98.i.i, i1 %i.ahd, i1 false
  br i1 %or.cond99.i.i, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ahe = mul nuw nsw i32 %i.agz, %i.go
  %i.ahf = add nuw nsw i32 %i.ahe, %i.agy
  %i.ahg = zext nneg i32 %i.ahf to i64
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ahg
  %i.ahi = load i16, ptr %i.ahh, align 2, !tbaa !132 ; 3 uses
  %.not.i268.i = icmp eq i16 %i.ahi, -1
  br i1 %.not.i268.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ahj = uitofp i16 %i.ahi to float
  %i.ahk = call float @llvm.fmuladd.f32(float %i.ahj, float %i.agb, float %i.agx)
  %i.ahl = call float @llvm.fabs.f32(float %i.ahk) ; 2 uses
  %i.ahm = fcmp olt float %i.ahl, %.067109.i.i    ; 2 uses
  %.185.i.i = select i1 %i.ahm, i16 %i.ahi, i16 %.084100.i.i
  %.1.i.i = select i1 %i.ahm, float %i.ahl, float %.067109.i.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %.387.i.i = phi i16 [ %.084100.i.i, %bb.ci ], [ %.185.i.i, %bb.ck ], [ %.084100.i.i, %bb.cj ] ; 4 uses
  %.3.i.i345 = phi float [ %.067109.i.i, %bb.ci ], [ %.1.i.i, %bb.ck ], [ %.067109.i.i, %bb.cj ]
  %i.ahn = add nuw i32 %.066110.i.i, 1            ; 3 uses
  %i.aho = icmp eq i32 %i.ahn, %.071107.i.i
  br i1 %i.aho, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %.not93.i.i = icmp eq i16 %.387.i.i, -1
  br i1 %.not93.i.i, label %bb.cn, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.ahp = add nsw i32 %.071107.i.i, %.068108.i.i
  %i.ahq = add nsw i32 %.068108.i.i, 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cl
  %.172.i.i = phi i32 [ %i.ahp, %bb.cn ], [ %.071107.i.i, %bb.cl ]
  %.169.i.i = phi i32 [ %i.ahq, %bb.cn ], [ %.068108.i.i, %bb.cl ]
  %i.ahr = icmp eq i32 %.082101.i.i, %.080103.i.i
  br i1 %i.ahr, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ahs = icmp slt i32 %.082101.i.i, 0
  %i.aht = sub nsw i32 0, %.080103.i.i
  %i.ahu = icmp eq i32 %.082101.i.i, %i.aht
  %or.cond95.i.i = select i1 %i.ahs, i1 %i.ahu, i1 false
  br i1 %or.cond95.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ahv = icmp sgt i32 %.082101.i.i, 0
  %i.ahw = sub nsw i32 1, %.080103.i.i
  %i.ahx = icmp eq i32 %.082101.i.i, %i.ahw
  %or.cond97.i.i = select i1 %i.ahv, i1 %i.ahx, i1 false
  br i1 %or.cond97.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co
  %i.ahy = sub nsw i32 0, %.074106.i.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.178.i.i = phi i32 [ %i.ahy, %bb.cr ], [ %.077105.i.i, %bb.cq ] ; 2 uses
  %.175.i.i = phi i32 [ %.077105.i.i, %bb.cr ], [ %.074106.i.i, %bb.cq ] ; 2 uses
  %i.ahz = add nsw i32 %.178.i.i, %.082101.i.i
  %i.aia = add nsw i32 %.175.i.i, %.080103.i.i
  %exitcond.not.i267.i = icmp eq i32 %i.ahn, %i.ex
  br i1 %exitcond.not.i267.i, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, label %bb.ci

_ZL9getHeightffffffiRK13rcHeightPatch.exit.i:     ; preds = %bb.cs, %bb.cm, %bb.ch
  %.5.i.i = phi i16 [ %i.agv, %bb.ch ], [ %.387.i.i, %bb.cm ], [ %.387.i.i, %bb.cs ]
  %i.aib = uitofp i16 %.5.i.i to float
  %i.aic = fmul float %i.agb, %i.aib
  store float %i.aic, ptr %i.agh, align 4, !tbaa !62
  %indvars.iv.next552.i = add nuw nsw i64 %indvars.iv551.i, 1 ; 2 uses
  %exitcond555.not.i = icmp eq i64 %indvars.iv.next552.i, %wide.trip.count554.i
  br i1 %exitcond555.not.i, label %._crit_edge456.i, label %bb.ch

bb.ct:                                            ; preds = %._crit_edge463.thread.i
  %i.aid = add i32 %.0238484.i, 1                 ; 4 uses
  %i.aie = sext i32 %.0238484.i to i64
  %i.aif = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aie
  store i32 %.0247483.i, ptr %i.aif, align 4, !tbaa !68
  %i.aig = icmp sgt i32 %.1236.i, 2               ; 2 uses
  br i1 %.0245.i, label %bb.cv, label %.preheader443.i

.preheader443.i:                                  ; preds = %bb.ct
  br i1 %i.aig, label %.lr.ph472.i, label %.loopexit.i346

.lr.ph472.i:                                      ; preds = %.preheader443.i
  %i.aih = sext i32 %.4 to i64
  %i.aii = sext i32 %i.aid to i64
  %wide.trip.count576.i = zext nneg i32 %i.amc to i64
  br label %bb.cx

bb.cu:                                            ; preds = %._crit_edge463.thread.i, %._crit_edge456.i
  %.0233469.i = phi i32 [ 0, %._crit_edge456.i ], [ %.1234.i, %._crit_edge463.thread.i ] ; 5 uses
  %.0235468.i = phi i32 [ 2, %._crit_edge456.i ], [ %.1236.i, %._crit_edge463.thread.i ] ; 6 uses
  %i.aij = sext i32 %.0233469.i to i64
  %i.aik = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aij
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !68 ; 3 uses
  %i.aim = add nsw i32 %.0233469.i, 1             ; 3 uses
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ain ; 2 uses
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !68 ; 4 uses
  %.0228457.i = add nsw i32 %i.ail, 1
  %i.aiq = icmp slt i32 %.0228457.i, %i.aip
  br i1 %i.aiq, label %.lr.ph462.i, label %._crit_edge463.thread.i

.lr.ph462.i:                                      ; preds = %bb.cu
  %i.air = mul nsw i32 %i.aip, 3
  %i.ais = sext i32 %i.air to i64
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ais ; 3 uses
  %i.aiu = mul nsw i32 %i.ail, 3
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.aiv ; 2 uses
  %i.aix = load float, ptr %i.ait, align 4, !tbaa !62
  %i.aiy = load float, ptr %i.aiw, align 4, !tbaa !62 ; 5 uses
  %i.aiz = fsub float %i.aix, %i.aiy              ; 6 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.ait, i64 4
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !62
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !62
  %i.ajf = load <2 x float>, ptr %i.ajc, align 4, !tbaa !62 ; 4 uses
  %i.ajg = extractelement <2 x float> %i.ajf, i64 0 ; 3 uses
  %i.ajh = fsub float %i.ajb, %i.ajg              ; 6 uses
  %i.aji = extractelement <2 x float> %i.ajf, i64 1 ; 3 uses
  %i.ajj = fsub float %i.aje, %i.aji              ; 6 uses
  %i.ajk = fmul float %i.ajh, %i.ajh
  %i.ajl = call float @llvm.fmuladd.f32(float %i.aiz, float %i.aiz, float %i.ajk)
  %i.ajm = call float @llvm.fmuladd.f32(float %i.ajj, float %i.ajj, float %i.ajl)
  %.fr593 = freeze float %i.ajm                   ; 2 uses
  %i.ajn = fcmp ogt float %.fr593, 0.000000e+00
  %i.ajo = sext i32 %i.ail to i64
  %i.ajp = add nsw i64 %i.ajo, 1                  ; 2 uses
  br i1 %i.ajn, label %.lr.ph462.i.split.us, label %.lr.ph462.i.split

.lr.ph462.i.split.us:                             ; preds = %.lr.ph462.i, %.lr.ph462.i.split.us
  %indvars.iv556.i.us = phi i64 [ %indvars.iv.next557.i.us, %.lr.ph462.i.split.us ], [ %i.ajp, %.lr.ph462.i ] ; 3 uses
  %.0229459.i.us = phi i32 [ %.1230.i.us, %.lr.ph462.i.split.us ], [ -1, %.lr.ph462.i ]
  %.0231458.i.us = phi float [ %.1232.i.us, %.lr.ph462.i.split.us ], [ 0.000000e+00, %.lr.ph462.i ] ; 2 uses
  %.idx698.i.us = mul nsw i64 %indvars.iv556.i.us, 12
  %i.ajq = getelementptr inbounds i8, ptr %i.c, i64 %.idx698.i.us ; 2 uses
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !62 ; 2 uses
  %i.ajs = fsub float %i.ajr, %i.aiy
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4
  %i.aju = load <2 x float>, ptr %i.ajt, align 4, !tbaa !62 ; 3 uses
  %i.ajv = fsub <2 x float> %i.aju, %i.ajf        ; 2 uses
  %i.ajw = extractelement <2 x float> %i.ajv, i64 0
  %i.ajx = fmul float %i.ajh, %i.ajw
  %i.ajy = call float @llvm.fmuladd.f32(float %i.aiz, float %i.ajs, float %i.ajx)
  %i.ajz = extractelement <2 x float> %i.ajv, i64 1
  %i.aka = call float @llvm.fmuladd.f32(float %i.ajj, float %i.ajz, float %i.ajy)
  %i.akb = fdiv float %i.aka, %.fr593             ; 3 uses
  %i.akc = fcmp olt float %i.akb, 0.000000e+00
  %i.akd = fcmp ogt float %i.akb, 1.000000e+00
  %spec.store.select.i.i.us = select i1 %i.akd, float 1.000000e+00, float %i.akb
  %.1.i269.i.us = select i1 %i.akc, float 0.000000e+00, float %spec.store.select.i.i.us ; 3 uses
  %i.ake = call float @llvm.fmuladd.f32(float %.1.i269.i.us, float %i.aiz, float %i.aiy)
  %i.akf = fsub float %i.ake, %i.ajr              ; 2 uses
  %i.akg = call float @llvm.fmuladd.f32(float %.1.i269.i.us, float %i.ajh, float %i.ajg)
  %i.akh = extractelement <2 x float> %i.aju, i64 0
  %i.aki = fsub float %i.akg, %i.akh              ; 2 uses
  %i.akj = call float @llvm.fmuladd.f32(float %.1.i269.i.us, float %i.ajj, float %i.aji)
  %i.akk = extractelement <2 x float> %i.aju, i64 1
  %i.akl = fsub float %i.akj, %i.akk              ; 2 uses
  %i.akm = fmul float %i.aki, %i.aki
  %i.akn = call float @llvm.fmuladd.f32(float %i.akf, float %i.akf, float %i.akm)
end_hunk_0
begin_hunk_1_@_ZL13completeFacetP9rcContextPKfiPiRiiS4_i:bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i146 ; 3 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !68 ; 2 uses
  %i.jq = icmp eq i32 %i.jp, %.0103
  br i1 %i.jq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i144
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !68
  %i.jt = icmp eq i32 %i.js, %.3
  br i1 %i.jt, label %_ZL8findEdgePKiiii.exit151, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i144
  %i.ju = icmp eq i32 %i.jp, %.3
  br i1 %i.ju, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !68
  %i.jx = icmp eq i32 %i.jw, %.0103
  br i1 %i.jx, label %_ZL8findEdgePKiiii.exit151, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %indvars.iv.next.i147 = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %exitcond.not.i148 = icmp eq i64 %indvars.iv.next.i147, %wide.trip.count.i143
  br i1 %exitcond.not.i148, label %_ZL8findEdgePKiiii.exit151.thread.loopexit, label %.lr.ph.i144

_ZL8findEdgePKiiii.exit151:                       ; preds = %bb.ap, %bb.an
  %i.jy = trunc i64 %indvars.iv.i145 to i32       ; 2 uses
  %i.jz = icmp eq i32 %i.jy, -1
  %.pre207 = load i32, ptr %6, align 4, !tbaa !68 ; 3 uses
  br i1 %i.jz, label %_ZL8findEdgePKiiii.exit151.thread, label %bb.aw

_ZL8findEdgePKiiii.exit151.thread.loopexit:       ; preds = %bb.aq
  %.pre206 = load i32, ptr %6, align 4, !tbaa !68
  br label %_ZL8findEdgePKiiii.exit151.thread

_ZL8findEdgePKiiii.exit151.thread:                ; preds = %_ZL8findEdgePKiiii.exit151.thread.loopexit, %_ZL8findEdgePKiiii.exit151
  %i.ka = phi i32 [ %.pre206, %_ZL8findEdgePKiiii.exit151.thread.loopexit ], [ %.pre207, %_ZL8findEdgePKiiii.exit151 ] ; 2 uses
  %.not.i152 = icmp slt i32 %i.jm, %5
  br i1 %.not.i152, label %.lr.ph.i.i157, label %bb.ar

_ZL8findEdgePKiiii.exit151.thread.thread:         ; preds = %_ZL7addEdgeP9rcContextPiRiiiiii.exit
  %i.kb = load i32, ptr %6, align 4, !tbaa !68
  %.not.i152187 = icmp slt i32 %i.jm, %5
  br i1 %.not.i152187, label %_ZL8findEdgePKiiii.exit.thread.i154, label %bb.ar

bb.ar:                                            ; preds = %_ZL8findEdgePKiiii.exit151.thread.thread, %_ZL8findEdgePKiiii.exit151.thread
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %i.jm, i32 noundef %5) #8
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit163

.lr.ph.i.i157:                                    ; preds = %_ZL8findEdgePKiiii.exit151.thread, %bb.av
  %indvars.iv.i.i158 = phi i64 [ %indvars.iv.next.i.i160, %bb.av ], [ 0, %_ZL8findEdgePKiiii.exit151.thread ] ; 3 uses
  %.idx.i.i159 = shl nuw nsw i64 %indvars.iv.i.i158, 4
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i.i159 ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !68 ; 2 uses
  %i.ke = icmp eq i32 %i.kd, %.0103
  br i1 %i.ke, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i.i157
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !68
  %i.kh = icmp eq i32 %i.kg, %.3
  br i1 %i.kh, label %_ZL8findEdgePKiiii.exit.i162, label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.i157
  %i.ki = icmp eq i32 %i.kd, %.3
  br i1 %i.ki, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !68
  %i.kl = icmp eq i32 %i.kk, %.0103
  br i1 %i.kl, label %_ZL8findEdgePKiiii.exit.i162, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i158, 1 ; 2 uses
  %exitcond.not.i.i161 = icmp eq i64 %indvars.iv.next.i.i160, %wide.trip.count.i143
  br i1 %exitcond.not.i.i161, label %_ZL8findEdgePKiiii.exit.thread.i154, label %.lr.ph.i.i157

_ZL8findEdgePKiiii.exit.i162:                     ; preds = %bb.au, %bb.as
  %i.km = and i64 %indvars.iv.i.i158, 4294967295
  %i.kn = icmp eq i64 %i.km, 4294967295
  br i1 %i.kn, label %_ZL8findEdgePKiiii.exit.thread.i154, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit163

_ZL8findEdgePKiiii.exit.thread.i154:              ; preds = %bb.av, %_ZL8findEdgePKiiii.exit151.thread.thread, %_ZL8findEdgePKiiii.exit.i162
  %i.ko = phi i32 [ %i.kb, %_ZL8findEdgePKiiii.exit151.thread.thread ], [ %i.ka, %_ZL8findEdgePKiiii.exit.i162 ], [ %i.ka, %bb.av ]
  %i.kp = shl nsw i32 %i.jm, 2
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %3, i64 %i.kq ; 4 uses
  store i32 %.0103, ptr %i.kr, align 4, !tbaa !68
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 %.3, ptr %i.ks, align 4, !tbaa !68
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i32 %i.ko, ptr %i.kt, align 4, !tbaa !68
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  store i32 -1, ptr %i.ku, align 4, !tbaa !68
  %i.kv = load i32, ptr %4, align 4, !tbaa !68
  %i.kw = add nsw i32 %i.kv, 1
  store i32 %i.kw, ptr %4, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit163

bb.aw:                                            ; preds = %_ZL8findEdgePKiiii.exit151
  %i.kx = shl nsw i32 %i.jy, 2
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ky ; 4 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !68 ; 2 uses
  %i.lb = icmp eq i32 %i.la, %.0103
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !68 ; 2 uses
  %i.le = icmp eq i32 %i.ld, %.3
  %or.cond14.i164 = select i1 %i.lb, i1 %i.le, i1 false
  br i1 %or.cond14.i164, label %bb.ax, label %._crit_edge.i165

bb.ax:                                            ; preds = %bb.aw
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !68
  %i.lh = icmp eq i32 %i.lg, -1
  br i1 %i.lh, label %bb.ay, label %._crit_edge.i165

bb.ay:                                            ; preds = %bb.ax
  store i32 %.pre207, ptr %i.lf, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit163

._crit_edge.i165:                                 ; preds = %bb.ax, %bb.aw
  %i.li = phi i32 [ %i.ld, %bb.aw ], [ %.3, %bb.ax ]
  %i.lj = icmp eq i32 %i.li, %.0103
  %i.lk = icmp eq i32 %i.la, %.3
  %or.cond.i166 = and i1 %i.lk, %i.lj
  br i1 %or.cond.i166, label %bb.az, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit163

bb.az:                                            ; preds = %._crit_edge.i165
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kz, i64 12 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !68
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %bb.ba, label %_ZL7addEdgeP9rcContextPiRiiiiii.exit163

bb.ba:                                            ; preds = %bb.az
  store i32 %.pre207, ptr %i.ll, align 4, !tbaa !68
  br label %_ZL7addEdgeP9rcContextPiRiiiiii.exit163

_ZL7addEdgeP9rcContextPiRiiiiii.exit163:          ; preds = %bb.ba, %bb.az, %._crit_edge.i165, %bb.ay, %_ZL8findEdgePKiiii.exit.thread.i154, %_ZL8findEdgePKiiii.exit.i162, %bb.ar
  %i.lo = load i32, ptr %6, align 4, !tbaa !68
  %i.lp = add nsw i32 %i.lo, 1
  store i32 %i.lp, ptr %6, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit171

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %i.lq = load i32, ptr %i.c, align 4, !tbaa !68  ; 2 uses
  %i.lr = icmp eq i32 %i.lq, %.0104
  %i.ls = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !68 ; 2 uses
  %i.lu = icmp eq i32 %i.lt, %.0103
  %or.cond14.i168 = select i1 %i.lr, i1 %i.lu, i1 false
  br i1 %or.cond14.i168, label %bb.bb, label %._crit_edge.i169

bb.bb:                                            ; preds = %._crit_edge.thread
  %i.lv = load i32, ptr %i.d, align 4, !tbaa !68
  %i.lw = icmp eq i32 %i.lv, -1
  br i1 %i.lw, label %bb.bc, label %._crit_edge.i169

bb.bc:                                            ; preds = %bb.bb
  store i32 -2, ptr %i.d, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit171

._crit_edge.i169:                                 ; preds = %bb.bb, %._crit_edge.thread
  %i.lx = phi i32 [ %i.lt, %._crit_edge.thread ], [ %.0103, %bb.bb ]
  %i.ly = icmp eq i32 %i.lx, %.0104
  %i.lz = icmp eq i32 %i.lq, %.0103
  %or.cond.i170 = and i1 %i.lz, %i.ly
  br i1 %or.cond.i170, label %bb.bd, label %_ZL14updateLeftFacePiiii.exit171

bb.bd:                                            ; preds = %._crit_edge.i169
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !68
  %i.mc = icmp eq i32 %i.mb, -1
  br i1 %i.mc, label %bb.be, label %_ZL14updateLeftFacePiiii.exit171

bb.be:                                            ; preds = %bb.bd
  store i32 -2, ptr %i.ma, align 4, !tbaa !68
  br label %_ZL14updateLeftFacePiiii.exit171

_ZL14updateLeftFacePiiii.exit171:                 ; preds = %_ZL7addEdgeP9rcContextPiRiiiiii.exit163, %bb.bc, %._crit_edge.i169, %bb.bd, %bb.be, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !22, line: 39, baseType: !28, size: 32, elements: !58, identifier: "_ZTS12rcTimerLabel")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !22, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"bool", !11, i64 0}
!16 = !{!"_ZTS9rcContext", !15, i64 8, !15, i64 9}
!17 = !{!16, !15, i64 9}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"vtable pointer", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!25 = !{null, !23, !24}
!26 = !DISubroutineType(types: !25)
!27 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !1, file: !22, line: 176, type: !26, scopeLine: 176, containingType: !1, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!35 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!36 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!37 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!38 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!39 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!40 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!41 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!42 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!43 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!44 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!45 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!46 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!47 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!48 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!49 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!50 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!51 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!52 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!53 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!54 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!55 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!56 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!57 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!58 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!59 = !{!"any pointer", !11, i64 0}
!60 = !{!"p1 omnipotent char", !59, i64 0}
!61 = !{!"float", !11, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!"long", !11, i64 0}
!64 = !{!"p1 int", !59, i64 0}
!65 = !{!"_ZTS12rcVectorBaseIiL11rcAllocHint1EE", !63, i64 0, !63, i64 8, !64, i64 16}
!66 = !{!65, !64, i64 16}
!67 = !{!65, !63, i64 0}
!68 = !{!12, !12, i64 0}
!69 = !{!"p1 float", !59, i64 0}
!70 = !{!"_ZTS16rcPolyMeshDetail", !64, i64 0, !69, i64 8, !60, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!71 = !{!70, !12, i64 24}
!72 = !{!70, !12, i64 28}
!73 = !{!70, !12, i64 32}
!74 = !{!70, !64, i64 0}
!75 = !{!70, !69, i64 8}
!76 = !{!70, !60, i64 16}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!11, !11, i64 0}
!81 = !DISubprogram(name: "doStopTimer", linkageName: "_ZN9rcContext11doStopTimerE12rcTimerLabel", scope: !1, file: !22, line: 180, type: !26, scopeLine: 180, containingType: !1, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!82 = distinct !{!82, !135}
!83 = distinct !{!83, !77, !78}
!84 = distinct !{!84, !79}
!85 = distinct !{!85, !77}
!86 = distinct !{!86, !77, !78}
!87 = distinct !{!87, !79}
!88 = distinct !{!88, !77}
!89 = distinct !{!89, !145}
!90 = distinct !{!90, !77, !78}
!91 = distinct !{!91, !79}
!92 = distinct !{!92, !77}
!93 = distinct !{!93, !77, !78}
!94 = distinct !{!94, !79}
!95 = distinct !{!95, !77}
!96 = distinct !{!96, !77, !78}
!97 = distinct !{!97, !79}
!98 = distinct !{!98, !77}
!99 = distinct !{!99, !77, !78}
!100 = distinct !{!100, !79}
!101 = distinct !{!101, !77}
!102 = distinct !{!102, !77, !78}
!103 = distinct !{!103, !79}
!104 = distinct !{!104, !77}
!105 = distinct !{!105, !77, !78}
!106 = distinct !{!106, !79}
!107 = distinct !{!107, !77}
!108 = distinct !{!108, !79}
!109 = distinct !{!109, !79}
!110 = distinct !{!110, !77, !78}
!111 = distinct !{!111, i1 false, !"LVerDomain"}
!112 = distinct !{!112, !111}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !77, !78}
!115 = distinct !{!115, !78, !77}
!116 = distinct !{!116, !77}
!117 = !{!"p1 short", !59, i64 0}
!118 = !{!"_ZTS10rcPolyMesh", !117, i64 0, !117, i64 8, !117, i64 16, !117, i64 24, !60, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !11, i64 56, !11, i64 68, !61, i64 80, !61, i64 84, !12, i64 88, !61, i64 92}
!119 = !{!118, !12, i64 40}
!120 = !{!118, !12, i64 44}
!121 = !{!118, !12, i64 52}
!122 = !{!118, !12, i64 88}
!123 = !{!118, !61, i64 92}
!124 = !{!65, !63, i64 8}
!125 = !{!118, !117, i64 8}
!126 = !{!"short", !11, i64 0}
!127 = !{!"p1 _ZTS13rcCompactCell", !59, i64 0}
!128 = !{!"p1 _ZTS13rcCompactSpan", !59, i64 0}
!129 = !{!"_ZTS20rcCompactHeightfield", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !126, i64 24, !126, i64 26, !11, i64 28, !11, i64 40, !61, i64 52, !61, i64 56, !127, i64 64, !128, i64 72, !117, i64 80, !60, i64 88}
!130 = !{!129, !12, i64 0}
!131 = !{!129, !12, i64 4}
!132 = !{!126, !126, i64 0}
!133 = !{!118, !117, i64 0}
!134 = !{!118, !117, i64 16}
!135 = !{!"llvm.loop.unswitch.partial.disable"}
!136 = !{!129, !127, i64 64}
!137 = !{!129, !128, i64 72}
!138 = !{!"_ZTS13rcCompactSpan", !126, i64 0, !126, i64 2, !12, i64 4, !12, i64 7}
!139 = !{!138, !126, i64 2}
!140 = !{!138, !126, i64 0}
!141 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!142 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!143 = !{!129, !61, i64 52}
!144 = !{!129, !61, i64 56}
!145 = !{!"llvm.loop.peeled.count", i32 1}
!146 = !{!112}
!147 = !{!113}
!148 = !{!"p1 _ZTS16rcPolyMeshDetail", !59, i64 0}
!149 = !{!148, !148, i64 0}
!150 = distinct !{!150, !77, !78}
!151 = distinct !{!151, !79}
!152 = distinct !{!152, !77}
end_hunk_1
