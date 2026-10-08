Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMeshDetail?download=true
inline.NumInlined: 290
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z21rcBuildPolyMeshDetailP9rcContextRK10rcPolyMeshRK20rcCompactHeightfieldffR16rcPolyMeshDetail:bb.a
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
  %i.adm = call noundef float @_Z6rcSqrtf(float noundef %i.adk) #7 ; 4 uses
  br i1 %i.es, label %bb.cb, label %._crit_edge.i347

_ZL13polyMinExtentPKfi.exit.thread.i:             ; preds = %_ZL13getHeightDataP9rcContextRK20rcCompactHeightfieldPKtiS5_iR13rcHeightPatchR12rcTempVectorIiEi.exit
  store i64 0, ptr %6, align 8, !tbaa !67
  %i.adn = load float, ptr %i.er, align 4, !tbaa !143 ; 2 uses
  %i.ado = fdiv float 1.000000e+00, %i.adn
  %i.adp = call noundef float @_Z6rcSqrtf(float noundef f0x7F7FFFFF) #7
  br label %._crit_edge.i347

.lr.ph.i334:                                      ; preds = %.lr.ph.i334, %.lr.ph.preheader.i.new
  %indvars.iv.i335 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i336.1, %.lr.ph.i334 ] ; 3 uses
  %niter1185 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1185.next.1, %.lr.ph.i334 ]
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
  %niter1185.next.1 = add i64 %niter1185, 2       ; 2 uses
  %niter1185.ncmp.1 = icmp eq i64 %niter1185.next.1, %unroll_iter1184
  br i1 %niter1185.ncmp.1, label %.lr.ph.us.preheader.i.i.unr-lcssa, label %.lr.ph.i334

bb.cb:                                            ; preds = %_ZL13polyMinExtentPKfi.exit.i
  %i.aef = add nsw i32 %.0254.lcssa, -1
  %i.aeg = add nsw i32 %i.go, -1
  %i.aeh = add nsw i32 %i.gs, -1
  %i.aei = insertelement <2 x float> poison, float %i.adl, i64 0
  %i.aej = shufflevector <2 x float> %i.aei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aek = insertelement <2 x i32> poison, i32 %i.gk, i64 0
  %i.ael = insertelement <2 x i32> %i.aek, i32 %i.gh, i64 1
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit.i346, %bb.cb
  %.4 = phi i32 [ %.0254.lcssa, %bb.cb ], [ %.5, %.loopexit.i346 ] ; 7 uses
  %indvars.iv589.i = phi i64 [ 0, %bb.cb ], [ %indvars.iv.next590.i, %.loopexit.i346 ] ; 3 uses
  %.0238484.i = phi i32 [ 0, %bb.cb ], [ %.3241.i, %.loopexit.i346 ] ; 2 uses
  %.0247483.i = phi i32 [ %i.aef, %bb.cb ], [ %i.anu, %.loopexit.i346 ] ; 2 uses
  %i.aem = mul nsw i32 %.0247483.i, 3
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aen ; 5 uses
  %.idx.i = mul nuw nsw i64 %indvars.iv589.i, 12
  %i.aep = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i ; 5 uses
  %i.aeq = load float, ptr %i.aeo, align 4, !tbaa !62 ; 5 uses
  %i.aer = load float, ptr %i.aep, align 4, !tbaa !62 ; 5 uses
  %i.aes = fsub float %i.aeq, %i.aer
  %i.aet = call float @llvm.fabs.f32(float %i.aes)
  %i.aeu = fcmp olt float %i.aet, f0x358637BD
  br i1 %i.aeu, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !62
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aep, i64 8
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !62
  %i.aez = fcmp ogt float %i.aew, %i.aey
  br i1 %i.aez, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.afa = fcmp ogt float %i.aeq, %i.aer
  br i1 %i.afa, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.afb = phi float [ %i.aeq, %bb.ce ], [ %i.aeq, %bb.cd ], [ %i.aer, %bb.cf ]
  %i.afc = phi float [ %i.aer, %bb.ce ], [ %i.aer, %bb.cd ], [ %i.aeq, %bb.cf ]
  %.0435.i = phi ptr [ %i.aeo, %bb.ce ], [ %i.aeo, %bb.cd ], [ %i.aep, %bb.cf ] ; 2 uses
  %.0434.i = phi ptr [ %i.aep, %bb.ce ], [ %i.aep, %bb.cd ], [ %i.aeo, %bb.cf ] ; 2 uses
  %.0245.i = phi i1 [ false, %bb.ce ], [ false, %bb.cd ], [ true, %bb.cf ]
  %i.afd = getelementptr inbounds nuw i8, ptr %.0434.i, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !62
  %i.aff = getelementptr inbounds nuw i8, ptr %.0435.i, i64 4
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !62 ; 2 uses
  %i.afh = fsub float %i.afe, %i.afg
  %i.afi = getelementptr inbounds nuw i8, ptr %.0434.i, i64 8
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !62
  %i.afk = getelementptr inbounds nuw i8, ptr %.0435.i, i64 8
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !62
  %i.afm = insertelement <2 x float> poison, float %i.afj, i64 0
  %i.afn = insertelement <2 x float> %i.afm, float %i.afc, i64 1
  %i.afo = insertelement <2 x float> poison, float %i.afl, i64 0
  %i.afp = insertelement <2 x float> %i.afo, float %i.afb, i64 1 ; 2 uses
  %i.afq = fsub <2 x float> %i.afn, %i.afp        ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.afq, %i.afq
  %i.afr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.afs = extractelement <2 x float> %i.afq, i64 1 ; 2 uses
  %i.aft = call float @llvm.fmuladd.f32(float %i.afs, float %i.afs, float %i.afr)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.aft)
  %i.afu = fdiv float %sqrt.i, %3
  %i.afv = call float @llvm.floor.f32(float %i.afu)
  %i.afw = fptosi float %i.afv to i32
  %i.afx = call i32 @llvm.smin.i32(i32 %i.afw, i32 30)
  %spec.store.select.i = add nsw i32 %i.afx, 1    ; 2 uses
  %i.afy = add nsw i32 %spec.store.select.i, %.4  ; 2 uses
  %i.afz = icmp sgt i32 %i.afy, 126
  %i.aga = sub nsw i32 126, %.4
  %spec.select.i = select i1 %i.afz, i32 %i.aga, i32 %spec.store.select.i ; 3 uses
  %.not260452.i = icmp slt i32 %spec.select.i, 0
  br i1 %.not260452.i, label %._crit_edge456.i, label %.lr.ph455.i

.lr.ph455.i:                                      ; preds = %bb.cg
  %i.agb = uitofp nneg i32 %spec.select.i to float
  %i.agc = load float, ptr %i.et, align 8, !tbaa !144 ; 2 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %i.afy, i32 126)
  %reass.sub = sub i32 %smin.i, %.4
  %i.agd = add i32 %reass.sub, 1
  %wide.trip.count554.i = zext i32 %i.agd to i64
  br label %bb.ch

._crit_edge456.i:                                 ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.e, i8 0, i64 128, i1 false)
  store i32 %spec.select.i, ptr %i.ey, align 4, !tbaa !68
  br label %bb.cu

bb.ch:                                            ; preds = %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, %.lr.ph455.i
  %indvars.iv551.i = phi i64 [ 0, %.lr.ph455.i ], [ %indvars.iv.next552.i, %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i ] ; 3 uses
  %i.age = trunc nuw nsw i64 %indvars.iv551.i to i32
  %i.agf = uitofp nneg i32 %i.age to float
  %i.agg = fdiv float %i.agf, %i.agb              ; 2 uses
  %.idx697.i = mul nuw nsw i64 %indvars.iv551.i, 12
  %i.agh = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx697.i ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agk = insertelement <2 x float> poison, float %i.agg, i64 0
  %i.agl = shufflevector <2 x float> %i.agk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afq, <2 x float> %i.agl, <2 x float> %i.afp) ; 3 uses
  %i.agn = extractelement <2 x float> %i.agm, i64 1
  store float %i.agn, ptr %i.agh, align 4, !tbaa !62
  %i.ago = extractelement <2 x float> %i.agm, i64 0
  store float %i.ago, ptr %i.agj, align 4, !tbaa !62
  %i.agp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agm, <2 x float> %i.aej, <2 x float> splat (float f0x3C23D70A))
  %i.agq = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.agp)
  %i.agr = fptosi <2 x float> %i.agq to <2 x i32>
  %i.ags = sub nsw <2 x i32> %i.agr, %i.ael       ; 3 uses
  %i.agt = extractelement <2 x i32> %i.ags, i64 1
  %i.agu = call i32 @llvm.smin.i32(i32 %i.agt, i32 %i.aeg)
  %i.agv = icmp slt <2 x i32> %i.ags, zeroinitializer ; 2 uses
  %i.agw = extractelement <2 x i1> %i.agv, i64 1
  %i.agx = select i1 %i.agw, i32 0, i32 %i.agu    ; 2 uses
  %i.agy = extractelement <2 x i32> %i.ags, i64 0
  %i.agz = call i32 @llvm.smin.i32(i32 %i.agy, i32 %i.aeh)
  %i.aha = extractelement <2 x i1> %i.agv, i64 0
  %i.ahb = select i1 %i.aha, i32 0, i32 %i.agz    ; 2 uses
  %i.ahc = mul nsw i32 %i.ahb, %i.go
  %i.ahd = add nsw i32 %i.ahc, %i.agx
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.ahe
  %i.ahg = load i16, ptr %i.ahf, align 2, !tbaa !132 ; 2 uses
  %.not866 = icmp eq i16 %i.ahg, -1
  br i1 %.not866, label %.lr.ph.i.i343, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i

.lr.ph.i.i343:                                    ; preds = %bb.ch
  %i.ahh = call float @llvm.fmuladd.f32(float %i.afh, float %i.agg, float %i.afg)
  %i.ahi = fneg float %i.ahh
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cs, %.lr.ph.i.i343
  %.066110.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %i.ahy, %bb.cs ]
  %.067109.i.i = phi float [ f0x7F7FFFFF, %.lr.ph.i.i343 ], [ %.3.i.i345, %bb.cs ] ; 4 uses
  %.068108.i.i = phi i32 [ 16, %.lr.ph.i.i343 ], [ %.169.i.i, %bb.cs ] ; 3 uses
  %.071107.i.i = phi i32 [ 8, %.lr.ph.i.i343 ], [ %.172.i.i, %bb.cs ] ; 3 uses
  %.074106.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %.175.i.i, %bb.cs ] ; 2 uses
  %.077105.i.i = phi i32 [ 1, %.lr.ph.i.i343 ], [ %.178.i.i, %bb.cs ] ; 2 uses
  %.080103.i.i = phi i32 [ 0, %.lr.ph.i.i343 ], [ %i.ail, %bb.cs ] ; 5 uses
  %.082101.i.i = phi i32 [ 1, %.lr.ph.i.i343 ], [ %i.aik, %bb.cs ] ; 7 uses
  %.084100.i.i = phi i16 [ -1, %.lr.ph.i.i343 ], [ %.387.i.i, %bb.cs ] ; 3 uses
  %i.ahj = add nsw i32 %.082101.i.i, %i.agx       ; 3 uses
  %i.ahk = add nsw i32 %.080103.i.i, %i.ahb       ; 3 uses
  %i.ahl = icmp sgt i32 %i.ahj, -1
  %i.ahm = icmp sgt i32 %i.ahk, -1
  %or.cond.i.i344 = select i1 %i.ahl, i1 %i.ahm, i1 false
  %i.ahn = icmp slt i32 %i.ahj, %i.go
  %or.cond98.i.i = and i1 %i.ahn, %or.cond.i.i344
  %i.aho = icmp slt i32 %i.ahk, %i.gs
  %or.cond99.i.i = select i1 %or.cond98.i.i, i1 %i.aho, i1 false
  br i1 %or.cond99.i.i, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.ahp = mul nuw nsw i32 %i.ahk, %i.go
  %i.ahq = add nuw nsw i32 %i.ahp, %i.ahj
  %i.ahr = zext nneg i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ahr
  %i.aht = load i16, ptr %i.ahs, align 2, !tbaa !132 ; 3 uses
  %.not.i268.i = icmp eq i16 %i.aht, -1
  br i1 %.not.i268.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ahu = uitofp i16 %i.aht to float
  %i.ahv = call float @llvm.fmuladd.f32(float %i.ahu, float %i.agc, float %i.ahi)
  %i.ahw = call float @llvm.fabs.f32(float %i.ahv) ; 2 uses
  %i.ahx = fcmp olt float %i.ahw, %.067109.i.i    ; 2 uses
  %.185.i.i = select i1 %i.ahx, i16 %i.aht, i16 %.084100.i.i
  %.1.i.i = select i1 %i.ahx, float %i.ahw, float %.067109.i.i
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %.387.i.i = phi i16 [ %.084100.i.i, %bb.ci ], [ %.185.i.i, %bb.ck ], [ %.084100.i.i, %bb.cj ] ; 4 uses
  %.3.i.i345 = phi float [ %.067109.i.i, %bb.ci ], [ %.1.i.i, %bb.ck ], [ %.067109.i.i, %bb.cj ]
  %i.ahy = add nuw i32 %.066110.i.i, 1            ; 3 uses
  %i.ahz = icmp eq i32 %i.ahy, %.071107.i.i
  br i1 %i.ahz, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %.not93.i.i = icmp eq i16 %.387.i.i, -1
  br i1 %.not93.i.i, label %bb.cn, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.aia = add nsw i32 %.071107.i.i, %.068108.i.i
  %i.aib = add nsw i32 %.068108.i.i, 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cl
  %.172.i.i = phi i32 [ %i.aia, %bb.cn ], [ %.071107.i.i, %bb.cl ]
  %.169.i.i = phi i32 [ %i.aib, %bb.cn ], [ %.068108.i.i, %bb.cl ]
  %i.aic = icmp eq i32 %.082101.i.i, %.080103.i.i
  br i1 %i.aic, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aid = icmp slt i32 %.082101.i.i, 0
  %i.aie = sub nsw i32 0, %.080103.i.i
  %i.aif = icmp eq i32 %.082101.i.i, %i.aie
  %or.cond95.i.i = select i1 %i.aid, i1 %i.aif, i1 false
  br i1 %or.cond95.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aig = icmp sgt i32 %.082101.i.i, 0
  %i.aih = sub nsw i32 1, %.080103.i.i
  %i.aii = icmp eq i32 %.082101.i.i, %i.aih
  %or.cond97.i.i = select i1 %i.aig, i1 %i.aii, i1 false
  br i1 %or.cond97.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co
  %i.aij = sub nsw i32 0, %.074106.i.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.178.i.i = phi i32 [ %i.aij, %bb.cr ], [ %.077105.i.i, %bb.cq ] ; 2 uses
  %.175.i.i = phi i32 [ %.077105.i.i, %bb.cr ], [ %.074106.i.i, %bb.cq ] ; 2 uses
  %i.aik = add nsw i32 %.178.i.i, %.082101.i.i
  %i.ail = add nsw i32 %.175.i.i, %.080103.i.i
  %exitcond.not.i267.i = icmp eq i32 %i.ahy, %i.ex
  br i1 %exitcond.not.i267.i, label %_ZL9getHeightffffffiRK13rcHeightPatch.exit.i, label %bb.ci

_ZL9getHeightffffffiRK13rcHeightPatch.exit.i:     ; preds = %bb.cs, %bb.cm, %bb.ch
  %.5.i.i = phi i16 [ %i.ahg, %bb.ch ], [ %.387.i.i, %bb.cm ], [ %.387.i.i, %bb.cs ]
  %i.aim = uitofp i16 %.5.i.i to float
  %i.ain = fmul float %i.agc, %i.aim
  store float %i.ain, ptr %i.agi, align 4, !tbaa !62
  %indvars.iv.next552.i = add nuw nsw i64 %indvars.iv551.i, 1 ; 2 uses
  %exitcond555.not.i = icmp eq i64 %indvars.iv.next552.i, %wide.trip.count554.i
  br i1 %exitcond555.not.i, label %._crit_edge456.i, label %bb.ch

bb.ct:                                            ; preds = %._crit_edge463.thread.i
  %i.aio = add i32 %.0238484.i, 1                 ; 4 uses
  %i.aip = sext i32 %.0238484.i to i64
  %i.aiq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aip
  store i32 %.0247483.i, ptr %i.aiq, align 4, !tbaa !68
  %i.air = icmp sgt i32 %.1236.i, 2               ; 2 uses
  br i1 %.0245.i, label %bb.cv, label %.preheader443.i

.preheader443.i:                                  ; preds = %bb.ct
  br i1 %i.air, label %.lr.ph472.i, label %.loopexit.i346

.lr.ph472.i:                                      ; preds = %.preheader443.i
  %i.ais = sext i32 %.4 to i64
  %i.ait = sext i32 %i.aio to i64
  %wide.trip.count576.i = zext nneg i32 %i.amn to i64
  br label %bb.cx

bb.cu:                                            ; preds = %._crit_edge463.thread.i, %._crit_edge456.i
  %.0233469.i = phi i32 [ 0, %._crit_edge456.i ], [ %.1234.i, %._crit_edge463.thread.i ] ; 5 uses
  %.0235468.i = phi i32 [ 2, %._crit_edge456.i ], [ %.1236.i, %._crit_edge463.thread.i ] ; 6 uses
  %i.aiu = sext i32 %.0233469.i to i64
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !68 ; 3 uses
  %i.aix = add nsw i32 %.0233469.i, 1             ; 3 uses
  %i.aiy = sext i32 %i.aix to i64
  %i.aiz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aiy ; 2 uses
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !68 ; 4 uses
  %.0228457.i = add nsw i32 %i.aiw, 1
  %i.ajb = icmp slt i32 %.0228457.i, %i.aja
  br i1 %i.ajb, label %.lr.ph462.i, label %._crit_edge463.thread.i

.lr.ph462.i:                                      ; preds = %bb.cu
  %i.ajc = mul nsw i32 %i.aja, 3
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ajd ; 3 uses
  %i.ajf = mul nsw i32 %i.aiw, 3
  %i.ajg = sext i32 %i.ajf to i64
  %i.ajh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ajg ; 2 uses
  %i.aji = load float, ptr %i.aje, align 4, !tbaa !62
  %i.ajj = load float, ptr %i.ajh, align 4, !tbaa !62 ; 5 uses
end_hunk_0
