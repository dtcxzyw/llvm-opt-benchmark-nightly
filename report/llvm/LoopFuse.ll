Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopFuse?download=true
inline.NumInlined: 2163
inline.NumDeleted: 1157
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm12LoopFusePass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a

_ZNK12_GLOBAL__N_113LoopDepthTree13isRemovedLoopEPKN4llvm4LoopE.exit.i.i: ; preds = %.lr.ph.i.i
  %i.gl = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(304) %i.af, ptr noundef %i.gc) #17
  %.not34.i.i = icmp eq ptr %i.gl, null
  br i1 %.not34.i.i, label %_ZNK12_GLOBAL__N_113LoopDepthTree13isRemovedLoopEPKN4llvm4LoopE.exit.thread.i.i, label %.critedge.i.i

_ZNK12_GLOBAL__N_113LoopDepthTree13isRemovedLoopEPKN4llvm4LoopE.exit.thread.i.i: ; preds = %bb.q, %_ZNK12_GLOBAL__N_113LoopDepthTree13isRemovedLoopEPKN4llvm4LoopE.exit.i.i, %bb.p
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !28
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !28
  %.not35.i.i = icmp eq ptr %i.gn, %i.gp
  br i1 %.not35.i.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNK12_GLOBAL__N_113LoopDepthTree13isRemovedLoopEPKN4llvm4LoopE.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !28 ; 3 uses
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !28
  store ptr %i.eq, ptr %7, align 8, !tbaa !26
  store i32 0, ptr %i.er, align 8, !tbaa !97
  store i32 4, ptr %i.es, align 4, !tbaa !98
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 4 uses
  %i.gv = ashr exact i64 %i.gu, 3                 ; 3 uses
  %i.gw = icmp ugt i64 %i.gv, 4
  br i1 %i.gw, label %bb.s, label %_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i.i.i41

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.eq, i64 noundef %i.gv, i64 noundef 8) #17
  %.pre.i.i.i.i = load i32, ptr %i.er, align 8, !tbaa !97 ; 2 uses
  %.pre12.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i24.i.i = load ptr, ptr %7, align 8, !tbaa !26
  br label %_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i.i.i41

_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i.i.i41: ; preds = %bb.s, %bb.r
  %i.gx = phi ptr [ %i.eq, %bb.r ], [ %.pre.i24.i.i, %bb.s ]
  %.pre-phi.i.i.i.i = phi i64 [ 0, %bb.r ], [ %.pre12.i.i.i.i, %bb.s ]
  %i.gy = phi i32 [ 0, %bb.r ], [ %.pre.i.i.i.i, %bb.s ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %.pre-phi.i.i.i.i ; 2 uses
  %i.ha = icmp sgt i64 %i.gu, 8
  br i1 %i.ha, label %bb.t, label %bb.u, !prof !110

bb.t:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i.i.i41
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gz, ptr align 8 %i.gq, i64 %i.gu, i1 false)
  %.pre11.i.i.i.i = load i32, ptr %i.er, align 8, !tbaa !97
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2IN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEET_SD_.exit.i.i

bb.u:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_4LoopEE7reserveEm.exit.i.i.i.i41
  %i.hb = icmp eq i64 %i.gu, 8
  br i1 %i.hb, label %bb.v, label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2IN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEET_SD_.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.hc = load ptr, ptr %i.gq, align 8, !tbaa !30
  store ptr %i.hc, ptr %i.gz, align 8, !tbaa !30
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2IN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEET_SD_.exit.i.i

_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2IN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEET_SD_.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.hd = phi i32 [ %.pre11.i.i.i.i, %bb.t ], [ %i.gy, %bb.u ], [ %i.gy, %bb.v ]
  %i.he = trunc i64 %i.gv to i32
  %i.hf = add i32 %i.hd, %i.he
  store i32 %i.hf, ptr %i.er, align 8, !tbaa !97
  %i.hg = load i32, ptr %i.eo, align 8, !tbaa !97 ; 2 uses
  %i.hh = load i32, ptr %i.ep, align 4, !tbaa !98
  %.not.i.i.i42 = icmp ult i32 %i.hg, %i.hh
  br i1 %.not.i.i.i42, label %bb.x, label %bb.w, !prof !110

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2IN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEET_SD_.exit.i.i
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_4LoopELj4EEELb0EE18growAndEmplaceBackIJS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(48) %7) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_4LoopELj4EEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i.i43

bb.x:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2IN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEEvEET_SD_.exit.i.i
  %i.hj = zext i32 %i.hg to i64
  %i.hk = load ptr, ptr %6, align 8, !tbaa !26
  %i.hl = getelementptr inbounds nuw [48 x i8], ptr %i.hk, i64 %i.hj ; 8 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 3 uses
  store ptr %i.hm, ptr %i.hl, align 8, !tbaa !26
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 3 uses
  store i32 0, ptr %i.hn, align 8, !tbaa !97
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 12 ; 2 uses
  store i32 4, ptr %i.ho, align 4, !tbaa !98
  %i.hp = load i32, ptr %i.er, align 8, !tbaa !97 ; 6 uses
  %.not.i.i.i25.i.i = icmp eq i32 %i.hp, 0
  %i.hq = icmp eq ptr %i.hl, %7
  %or.cond.i.i = or i1 %i.hq, %.not.i.i.i25.i.i
  br i1 %or.cond.i.i, label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2EOS3_.exit.i.i.i45, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hr = load ptr, ptr %7, align 8, !tbaa !26    ; 3 uses
  %i.hs = icmp eq ptr %i.hr, %i.eq
  br i1 %i.hs, label %bb.z, label %_ZN4llvm15SmallVectorImplIPNS_4LoopEE12assignRemoteEOS3_.exit.i.i.i

_ZN4llvm15SmallVectorImplIPNS_4LoopEE12assignRemoteEOS3_.exit.i.i.i: ; preds = %bb.y
  store ptr %i.hr, ptr %i.hl, align 8, !tbaa !26
  store i32 %i.hp, ptr %i.hn, align 8, !tbaa !97
  %i.ht = load i32, ptr %i.es, align 4, !tbaa !98
  store i32 %i.ht, ptr %i.ho, align 4, !tbaa !98
  store ptr %i.eq, ptr %7, align 8, !tbaa !26
  store i32 0, ptr %i.es, align 4, !tbaa !98
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2EOS3_.exit.i.sink.split.i.i

bb.z:                                             ; preds = %bb.y
  %i.hu = icmp ugt i32 %i.hp, 4
  br i1 %i.hu, label %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i.i, label %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i.i

_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i.i: ; preds = %bb.z
  %i.hv = zext i32 %i.hp to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.hl, ptr noundef nonnull %i.hm, i64 noundef %i.hv, i64 noundef 8) #17
  %.pre.i.i = load i32, ptr %i.er, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i29.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i29.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4LoopELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i, label %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i._ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i_crit_edge.i

_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i._ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i_crit_edge.i: ; preds = %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i.i
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !26
  %.pre22.i = load ptr, ptr %i.hl, align 8, !tbaa !26
  br label %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i.i

_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i.i: ; preds = %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i._ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i_crit_edge.i, %bb.z
  %i.hw = phi ptr [ %.pre22.i, %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i._ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i_crit_edge.i ], [ %i.hm, %bb.z ]
  %i.hx = phi ptr [ %.pre.i, %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i._ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i_crit_edge.i ], [ %i.hr, %bb.z ]
  %i.hy = phi i32 [ %.pre.i.i, %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i._ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i_crit_edge.i ], [ %i.hp, %bb.z ]
  %i.hz = zext i32 %i.hy to i64
  %gepdiff.i.i.i = shl nuw nsw i64 %i.hz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hw, ptr align 8 %i.hx, i64 %gepdiff.i.i.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_4LoopELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_4LoopELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i: ; preds = %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.thread.i.i, %_ZSt4moveIPPN4llvm4LoopES3_ET0_T_S5_S4_.exit34.i.i.i
  store i32 %i.hp, ptr %i.hn, align 8, !tbaa !97
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2EOS3_.exit.i.sink.split.i.i

_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2EOS3_.exit.i.sink.split.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_4LoopELb1EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i.i.i, %_ZN4llvm15SmallVectorImplIPNS_4LoopEE12assignRemoteEOS3_.exit.i.i.i
  store i32 0, ptr %i.er, align 8, !tbaa !97
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2EOS3_.exit.i.i.i45

_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2EOS3_.exit.i.i.i45: ; preds = %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2EOS3_.exit.i.sink.split.i.i, %bb.x
  %i.ia = load i32, ptr %i.eo, align 8, !tbaa !97
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.eo, align 8, !tbaa !97
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_4LoopELj4EEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i.i43

_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_4LoopELj4EEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i.i43: ; preds = %_ZN4llvm11SmallVectorIPNS_4LoopELj4EEC2EOS3_.exit.i.i.i45, %bb.w
  %i.ic = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.eq
  br i1 %i.id, label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EED2Ev.exit.i.i44, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_4LoopELj4EEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i.i43
  call void @free(ptr noundef %i.ic) #17
  br label %_ZN4llvm11SmallVectorIPNS_4LoopELj4EED2Ev.exit.i.i44

_ZN4llvm11SmallVectorIPNS_4LoopELj4EED2Ev.exit.i.i44: ; preds = %bb.aa, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_4LoopELj4EEEE12emplace_backIJS4_EEERS4_DpOT_.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm11SmallVectorIPNS_4LoopELj4EED2Ev.exit.i.i44, %_ZNK12_GLOBAL__N_113LoopDepthTree13isRemovedLoopEPKN4llvm4LoopE.exit.thread.i.i, %_ZNK12_GLOBAL__N_113LoopDepthTree13isRemovedLoopEPKN4llvm4LoopE.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.02037.i.i, i64 8 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ie, %i.ga
  br i1 %.not21.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_113LoopDepthTree7descendEv.exit.i: ; preds = %bb.o, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_4LoopELj4EEELb0EE13destroy_rangeEPS4_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.val.i39 = load i32, ptr %i.ai, align 4, !tbaa !100
  %.val12.i40 = load i32, ptr %i.an, align 8, !tbaa !97 ; 2 uses
  %i.if = icmp eq i32 %.val12.i40, %.val.i39
  br i1 %i.if, label %_ZN12_GLOBAL__N_19LoopFuser9fuseLoopsERN4llvm8FunctionE.exit.loopexit, label %bb.i, !llvm.loop !259

.lr.ph.i:                                         ; preds = %bb.i, %bb.ba
  %.07.i = phi ptr [ %i.qo, %bb.ba ], [ %.val13.i, %bb.i ] ; 3 uses
  %.16.i = phi i1 [ %.2.i, %bb.ba ], [ %.01110.i, %bb.i ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !97 ; 3 uses
  %i.ii = icmp eq i32 %i.ih, 1
  br i1 %i.ii, label %bb.ba, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i
  %i.ij = zext i32 %i.ih to i64
  %.0.val.i = load ptr, ptr %.07.i, align 8, !tbaa !26 ; 2 uses
  %.idx.i17.i = shl nuw nsw i64 %i.ij, 3
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 %.idx.i17.i
  %.not15.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not15.i.i, label %_ZN12_GLOBAL__N_19LoopFuser23collectFusionCandidatesERKN4llvm11SmallVectorIPNS1_4LoopELj4EEE.exit.i, label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %bb.ab, %_ZN12_GLOBAL__N_115FusionCandidateD2Ev.exit.i.i
  %.02516.i.i = phi ptr [ %i.py, %_ZN12_GLOBAL__N_115FusionCandidateD2Ev.exit.i.i ], [ %.0.val.i, %bb.ab ] ; 2 uses
  %i.il = load ptr, ptr %.02516.i.i, align 8, !tbaa !30 ; 2 uses
  %i.im = load ptr, ptr %i.dv, align 8, !tbaa !143, !nonnull !23, !align !144
  %i.in = load ptr, ptr %i.dz, align 8, !tbaa !279, !nonnull !23, !align !144
  %i.io = call i64 @_ZN4llvm24gatherPeelingPreferencesEPNS_4LoopERNS_15ScalarEvolutionERKNS_19TargetTransformInfoESt8optionalIbES8_b(ptr noundef %i.il, ptr noundef nonnull align 8 dereferenceable(1152) %i.im, ptr noundef nonnull align 8 dereferenceable(8) %i.in, i16 0, i16 0, i1 noundef zeroext false) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ip = load ptr, ptr %i.dt, align 8, !tbaa !145, !nonnull !23, !align !144
  %i.iq = load ptr, ptr %i.dw, align 8, !tbaa !146, !nonnull !23, !align !144
  %i.ir = load ptr, ptr %i.dx, align 8, !tbaa !147, !nonnull !23, !align !144
  call fastcc void @_ZN12_GLOBAL__N_115FusionCandidateC2EPN4llvm4LoopERNS1_13DominatorTreeEPKNS1_17PostDominatorTreeERNS1_25OptimizationRemarkEmitterENS1_19TargetTransformInfo18PeelingPreferencesE(ptr noundef nonnull align 8 dereferenceable(392) %4, ptr noundef %i.il, ptr noundef nonnull align 8 dereferenceable(204) %i.ip, ptr noundef %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i64 %i.io)
  %i.is = load ptr, ptr %4, align 8, !tbaa !157
  %i.it = load ptr, ptr %i.ea, align 8
  %i.iu = load <2 x ptr>, ptr %i.eb, align 8
  %i.iv = insertelement <4 x ptr> poison, ptr %i.is, i64 0
  %i.iw = insertelement <4 x ptr> %i.iv, ptr %i.it, i64 1
  %i.ix = shufflevector <2 x ptr> %i.iu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iy = shufflevector <4 x ptr> %i.iw, <4 x ptr> %i.ix, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %.fr = freeze <4 x ptr> %i.iy
  %i.iz = load ptr, ptr %i.ec, align 8
  %.fr164 = freeze ptr %i.iz                      ; 2 uses
  %.not4.i.i.i19.i = icmp ne ptr %.fr164, null
  %i.ja = load i8, ptr %i.ed, align 8, !range !22
  %i.jb = trunc nuw i8 %i.ja to i1
  %i.jc = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.jd = bitcast <4 x i1> %i.jc to i4
  %i.je = icmp eq i4 %i.jd, 0
  %op.rdx = and i1 %i.je, %.not4.i.i.i19.i
  %op.rdx163 = select i1 %op.rdx, i1 %i.jb, i1 false
  br i1 %op.rdx163, label %bb.ac, label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.thread.i.i

bb.ac:                                            ; preds = %.lr.ph18.i.i
  %i.jf = load ptr, ptr %i.dv, align 8, !tbaa !143, !nonnull !23, !align !144
  %i.jg = call noundef zeroext i1 @_ZN4llvm15ScalarEvolution34hasLoopInvariantBackedgeTakenCountEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.jf, ptr noundef nonnull %.fr164) #17
  br i1 %i.jg, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @_ZNK12_GLOBAL__N_115FusionCandidate22reportInvalidCandidateEN4llvm9StringRefES2_(ptr noundef nonnull readonly align 8 dereferenceable(392) %4, ptr nonnull @.str.16, i64 16, ptr nonnull @.str.17, i64 27)
  br label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.jh = load ptr, ptr %i.ec, align 8, !tbaa !158
  %i.ji = call noundef zeroext i1 @_ZNK4llvm4Loop18isLoopSimplifyFormEv(ptr noundef nonnull align 8 dereferenceable(144) %i.jh) #17
  br i1 %i.ji, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_ZNK12_GLOBAL__N_115FusionCandidate22reportInvalidCandidateEN4llvm9StringRefES2_(ptr noundef nonnull readonly align 8 dereferenceable(392) %4, ptr nonnull @.str.18, i64 17, ptr nonnull @.str.19, i64 30)
  br label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.thread.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.jj = load ptr, ptr %i.ec, align 8, !tbaa !158 ; 4 uses
  %i.jk = call noundef ptr @_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE12getLoopLatchEv(ptr noundef nonnull align 8 dereferenceable(144) %i.jj) #17 ; 2 uses
  %.not.i40.i = icmp eq ptr %i.jk, null
  br i1 %.not.i40.i, label %_ZNK4llvm4Loop13isRotatedFormEv.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !161
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -24
  %i.jo = call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jn) #18 ; 2 uses
  %i.jp = extractvalue { ptr, ptr } %i.jo, 0      ; 3 uses
  %i.jq = extractvalue { ptr, ptr } %i.jo, 1      ; 3 uses
  %.not21.not.i.i.i = icmp eq ptr %i.jp, %i.jq
  br i1 %.not21.not.i.i.i, label %_ZNK4llvm4Loop13isRotatedFormEv.exit.i, label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %bb.ah
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 56 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jj, i64 72 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 68 ; 2 uses
  %i.ju = load i8, ptr %i.js, align 8, !tbaa !21, !range !22, !noundef !23
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i41.i
  %i.jw = load ptr, ptr %i.jr, align 8, !tbaa !24 ; 2 uses
  %i.jx = load i32, ptr %i.jt, align 4, !tbaa !100 ; 2 uses
  %i.jy = zext i32 %i.jx to i64
  %.idx.i.i.i.us.i.i.i = shl nuw nsw i64 %i.jy, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i.i.us.i.i.i
  %.not17.i.i.i.us.i.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not17.i.i.i.us.i.i.i, label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.i.i, label %.lr.ph.i.i.i.preheader.us.i.i.i

.lr.ph.i.i.i.preheader.us.i.i.i:                  ; preds = %.lr.ph.split.us.i.i.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.loopexit.us.i.i.i
  %.sroa.09.022.us.i.i.i = phi ptr [ %i.kd, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.loopexit.us.i.i.i ], [ %i.jp, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %i.ka = load ptr, ptr %.sroa.09.022.us.i.i.i, align 8, !tbaa !166
  br label %.lr.ph.i.i.i.us.i.i.i

.lr.ph.i.i.i.us.i.i.i:                            ; preds = %bb.ai, %.lr.ph.i.i.i.preheader.us.i.i.i
  %.01218.i.i.i.us.i.i.i = phi ptr [ %i.kc, %bb.ai ], [ %i.jw, %.lr.ph.i.i.i.preheader.us.i.i.i ] ; 2 uses
  %i.kb = load ptr, ptr %.01218.i.i.i.us.i.i.i, align 8, !tbaa !130
  %.not15.i.i.i.us.i.i.i = icmp eq ptr %i.kb, %i.ka
  br i1 %.not15.i.i.i.us.i.i.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.loopexit.us.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.us.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.us.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.us.i.i.i = icmp eq ptr %i.kc, %i.jz
  br i1 %.not.i.i.i.us.i.i.i, label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.i.i, label %.lr.ph.i.i.i.us.i.i.i

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.loopexit.us.i.i.i: ; preds = %.lr.ph.i.i.i.us.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.09.022.us.i.i.i, i64 32 ; 2 uses
  %.not.us.not.i.i.i = icmp eq ptr %i.kd, %i.jq
  br i1 %.not.us.not.i.i.i, label %_ZNK4llvm4Loop13isRotatedFormEv.exit.i, label %.lr.ph.i.i.i.preheader.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i41.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.i.i.i
  %.sroa.09.022.i.i.i = phi ptr [ %i.ko, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.i.i.i ], [ %i.jp, %.lr.ph.i.i41.i ] ; 2 uses
  %i.ke = load ptr, ptr %.sroa.09.022.i.i.i, align 8, !tbaa !166 ; 2 uses
  %i.kf = load i8, ptr %i.js, align 8, !tbaa !21, !range !22, !noundef !23
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.aj, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.i.i.i

bb.aj:                                            ; preds = %.lr.ph.split.i.i.i
  %i.kh = load ptr, ptr %i.jr, align 8, !tbaa !24 ; 2 uses
  %i.ki = load i32, ptr %i.jt, align 4, !tbaa !100 ; 2 uses
  %i.kj = zext i32 %i.ki to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.kj, 3
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.idx.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not17.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i42.i = icmp eq ptr %i.kl, %i.kk
  br i1 %.not.i.i.i.i.i42.i, label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aj, %bb.ak
  %.01218.i.i.i.i.i.i = phi ptr [ %i.kl, %bb.ak ], [ %i.kh, %bb.aj ] ; 2 uses
  %i.km = load ptr, ptr %.01218.i.i.i.i.i.i, align 8, !tbaa !130
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.km, %i.ke
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.i.i.i, label %bb.ak

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.kn = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.jr, ptr noundef %i.ke) #17
  %.not17.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not17.i.i.i, label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.i.i, label %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.i.i.i

_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.i.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.09.022.i.i.i, i64 32 ; 2 uses
  %.not.not.i.i.i = icmp eq ptr %i.ko, %i.jq
  br i1 %.not.not.i.i.i, label %_ZNK4llvm4Loop13isRotatedFormEv.exit.i, label %.lr.ph.split.i.i.i, !llvm.loop !260

_ZNK4llvm4Loop13isRotatedFormEv.exit.i:           ; preds = %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.i.i.i, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.thread14.loopexit.us.i.i.i, %bb.ah, %bb.ag
  call fastcc void @_ZNK12_GLOBAL__N_115FusionCandidate22reportInvalidCandidateEN4llvm9StringRefES2_(ptr noundef nonnull readonly align 8 dereferenceable(392) %4, ptr nonnull @.str.20, i64 10, ptr nonnull @.str.21, i64 24)
  br label %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.thread.i.i

_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.i.i: ; preds = %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS1_.exit.i.i.i, %bb.aj, %bb.ak, %bb.ai, %.lr.ph.split.us.i.i.i
  %.val.i22.i = load ptr, ptr %9, align 8, !tbaa !26 ; 2 uses
  %.val28.i.i = load i32, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %i.kp = zext i32 %.val28.i.i to i64
  %.idx20.i.i = mul nuw nsw i64 %i.kp, 24
  %i.kq = getelementptr inbounds nuw i8, ptr %.val.i22.i, i64 %.idx20.i.i
  %.not2613.i.i = icmp eq i32 %.val28.i.i, 0
  br i1 %.not2613.i.i, label %._crit_edge.i25.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.i.i, %_ZNK12_GLOBAL__N_19LoopFuser18isStrictlyAdjacentERKNS_15FusionCandidateES3_.exit.thread.i.i
  %.014.i.i = phi ptr [ %i.mj, %_ZNK12_GLOBAL__N_19LoopFuser18isStrictlyAdjacentERKNS_15FusionCandidateES3_.exit.thread.i.i ], [ %.val.i22.i, %_ZNK12_GLOBAL__N_115FusionCandidate19isEligibleForFusionERN4llvm15ScalarEvolutionE.exit.i.i ] ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !169 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 360
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !170 ; 2 uses
  %.not.i.i24.i = icmp eq ptr %i.ku, null
  %.val9.i.i.i = load ptr, ptr %i.ee, align 8, !tbaa !170 ; 2 uses
  %.not.i22.i.i.i = icmp eq ptr %.val9.i.i.i, null
  %i.kv = getelementptr inbounds nuw i8, ptr %.val9.i.i.i, i64 40
  %spec.select2.i.i.i = select i1 %.not.i22.i.i.i, ptr %4, ptr %i.kv
  %.0.i23.i.i.i = load ptr, ptr %spec.select2.i.i.i, align 8 ; 2 uses
  br i1 %.not.i.i24.i, label %_ZNK12_GLOBAL__N_115FusionCandidate13getEntryBlockEv.exit24.i.i.i, label %_ZNK12_GLOBAL__N_115FusionCandidate13getEntryBlockEv.exit.i.i.i

_ZNK12_GLOBAL__N_115FusionCandidate13getEntryBlockEv.exit.i.i.i: ; preds = %.lr.ph.i23.i
  %.val29.i.i = load ptr, ptr %i.dt, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !172
  %i.ky = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %.val29.i.i, ptr noundef %i.kx, ptr noundef %.0.i23.i.i.i) #17
  br i1 %i.ky, label %_ZNK12_GLOBAL__N_19LoopFuser18isStrictlyAdjacentERKNS_15FusionCandidateES3_.exit.i.i, label %_ZNK12_GLOBAL__N_19LoopFuser18isStrictlyAdjacentERKNS_15FusionCandidateES3_.exit.thread.i.i

_ZNK12_GLOBAL__N_115FusionCandidate13getEntryBlockEv.exit24.i.i.i: ; preds = %.lr.ph.i23.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !173
  %i.lb = icmp eq ptr %i.la, %.0.i23.i.i.i
  br i1 %i.lb, label %bb.al, label %_ZNK12_GLOBAL__N_19LoopFuser18isStrictlyAdjacentERKNS_15FusionCandidateES3_.exit.thread.i.i

_ZNK12_GLOBAL__N_19LoopFuser18isStrictlyAdjacentERKNS_15FusionCandidateES3_.exit.i.i: ; preds = %_ZNK12_GLOBAL__N_115FusionCandidate13getEntryBlockEv.exit.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !173
  %i.le = call noundef ptr @_ZNK4llvm10BasicBlock18getSingleSuccessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ld) #17
  %.val11.i.i.i = load ptr, ptr %i.ee, align 8, !tbaa !170 ; 2 uses
  %.not.i19.i.i.i = icmp eq ptr %.val11.i.i.i, null
  %i.lf = getelementptr inbounds nuw i8, ptr %.val11.i.i.i, i64 40
  %spec.select1.i.i.i = select i1 %.not.i19.i.i.i, ptr %4, ptr %i.lf
  %.0.i20.i.i.i = load ptr, ptr %spec.select1.i.i.i, align 8
  %i.lg = icmp eq ptr %i.le, %.0.i20.i.i.i
  br i1 %i.lg, label %bb.al, label %_ZNK12_GLOBAL__N_19LoopFuser18isStrictlyAdjacentERKNS_15FusionCandidateES3_.exit.thread.i.i

bb.al:                                            ; preds = %_ZNK12_GLOBAL__N_19LoopFuser18isStrictlyAdjacentERKNS_15FusionCandidateES3_.exit.i.i, %_ZNK12_GLOBAL__N_115FusionCandidate13getEntryBlockEv.exit24.i.i.i
  %i.lh = call noalias noundef nonnull dereferenceable(408) ptr @_Znwm(i64 noundef 408) #19 ; 11 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.li, ptr noundef nonnull readonly align 8 dereferenceable(392) %4, i64 48, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 64 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 80 ; 3 uses
  store ptr %i.lk, ptr %i.lj, align 8, !tbaa !26
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 72 ; 2 uses
  store i32 0, ptr %i.ll, align 8, !tbaa !97
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 76
  store i32 16, ptr %i.lm, align 4, !tbaa !98
  %i.ln = load i32, ptr %i.eg, align 8, !tbaa !97 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj16EEC2ERKS3_.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lo = icmp ugt i32 %i.ln, 16
  br i1 %i.lo, label %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i, label %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i: ; preds = %bb.am
  %i.lp = zext i32 %i.ln to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %i.lj, ptr noundef nonnull %i.lk, i64 noundef %i.lp, i64 noundef 8) #17
  %.pre.i.i.i.i.i = load i32, ptr %i.eg, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i

_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i: ; preds = %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i
  %.pre.i.i.i30.i = load ptr, ptr %i.lj, align 8, !tbaa !26
  br label %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i

_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i: ; preds = %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i, %bb.am
  %i.lq = phi ptr [ %.pre.i.i.i30.i, %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.lk, %bb.am ]
  %i.lr = phi i32 [ %.pre.i.i.i.i.i, %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i ], [ %i.ln, %bb.am ]
  %i.ls = zext i32 %i.lr to i64
  %i.lt = load ptr, ptr %i.ef, align 8, !tbaa !26
  %gepdiff.i.i.i.i.i.i = shl nuw nsw i64 %i.ls, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lq, ptr align 8 %i.lt, i64 %gepdiff.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i, %_ZSt4copyIPKPN4llvm11InstructionEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i
  store i32 %i.ln, ptr %i.ll, align 8, !tbaa !97
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj16EEC2ERKS3_.exit.i.i.i.i
end_hunk_0
