Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanTransforms?download=true
inline.NumInlined: 28623
inline.NumDeleted: 13159
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4llvm15VPlanTransforms33createAndOptimizeReplicateRegionsERNS_5VPlanE:bb.a
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !229, !range !213, !noundef !214 ; 2 uses
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !229, !range !213, !noundef !214
  %i.fo = icmp eq i8 %i.fk, %i.fn                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.fo, %i.fl
  br i1 %brmerge.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIPN4llvm11VPBlockBaseESt8optionalINS0_30VPHierarchicalChildrenIteratorIS2_Lb1EEEEEbRKSt4pairIT_T0_ESC_.exit.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.r
  %i.fp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !230
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !230
  %i.ft = icmp eq ptr %i.fr, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = icmp eq i64 %i.fv, %i.fx
  %i.fz = select i1 %i.ft, i1 %i.fy, i1 false
  br i1 %i.fz, label %bb.s, label %.loopexit.i.i.i.i

_ZSteqIPN4llvm11VPBlockBaseESt8optionalINS0_30VPHierarchicalChildrenIteratorIS2_Lb1EEEEEbRKSt4pairIT_T0_ESC_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  br i1 %i.fo, label %bb.s, label %.loopexit.i.i.i.i

bb.s:                                             ; preds = %_ZSteqIPN4llvm11VPBlockBaseESt8optionalINS0_30VPHierarchicalChildrenIteratorIS2_Lb1EEEEEbRKSt4pairIT_T0_ESC_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ga, %i.ev
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SH_EEDaSJ_EUlSL_E_St20forward_iterator_tagEEZNSE_ISF_SH_EEDaSJ_EUlSL_E0_PSF_EESP_SO_SR_lPSR_SR_EppEv.exit.i.backedge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !232

.loopexit.i.i.i.i:                                ; preds = %_ZSteqIPN4llvm11VPBlockBaseESt8optionalINS0_30VPHierarchicalChildrenIteratorIS2_Lb1EEEEEbRKSt4pairIT_T0_ESC_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i
  %i.gc = getelementptr inbounds i8, ptr %i.ev, i64 -32
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !29
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 104
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !33
  %i.gg = add i8 %i.gf, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.gg, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SH_EEDaSJ_EUlSL_E_St20forward_iterator_tagEEZNSE_ISF_SH_EEDaSJ_EUlSL_E0_PSF_EESP_SO_SR_lPSR_SR_EppEv.exit.i.backedge, label %._crit_edge.i, !llvm.loop !233

.lr.ph.i:                                         ; preds = %.loopexit.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE9push_backES2_.exit.i
  %.sroa.050.065.i = phi ptr [ %.sroa.050.0.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE9push_backES2_.exit.i ], [ %.sroa.050.063.i, %.loopexit.i ] ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.050.065.i, i64 -16 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.050.065.i, i64 72
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !68
  %.not56.i = icmp eq i8 %i.gj, 10
  br i1 %.not56.i, label %bb.t, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE9push_backES2_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.050.065.i, i64 209
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !143, !range !213, !noundef !214
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.u, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE9push_backES2_.exit.i

bb.u:                                             ; preds = %bb.t
  %i.gn = load i32, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.go = load i32, ptr %i.d, align 4, !tbaa !15
  %.not.i.i = icmp ult i32 %i.gn, %i.go
  br i1 %.not.i.i, label %bb.w, label %bb.v, !prof !150

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %i.gh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE9push_backES2_.exit.i

bb.w:                                             ; preds = %bb.u
  %i.gp = zext i32 %i.gn to i64
  %i.gq = load ptr, ptr %25, align 8, !tbaa !12
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gp
  store ptr %i.gh, ptr %i.gr, align 1
  %i.gs = load i32, ptr %i.c, align 8, !tbaa !14
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.c, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE9push_backES2_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_17VPReplicateRecipeELb1EE9push_backES2_.exit.i: ; preds = %bb.w, %bb.v, %bb.t, %.lr.ph.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.050.065.i, i64 8
  %.sroa.050.0.i = load ptr, ptr %i.gu, align 8, !tbaa !50 ; 2 uses
  %.not55.i = icmp eq ptr %.sroa.050.0.i, %i.eu
  br i1 %.not55.i, label %._crit_edge.i.preheader, label %.lr.ph.i

._crit_edge70.loopexit.i:                         ; preds = %bb.ax
  %.pre74.i = load ptr, ptr %25, align 8, !tbaa !12
  br label %._crit_edge70.i

._crit_edge70.i:                                  ; preds = %._crit_edge70.loopexit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SH_EEDaSJ_EUlSL_E_St20forward_iterator_tagEEZNSE_ISF_SH_EEDaSJ_EUlSL_E0_PSF_EESP_SO_SR_lPSR_SR_ED2Ev.exit46.i
  %i.gv = phi ptr [ %.pre74.i, %._crit_edge70.loopexit.i ], [ %i.dn, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS1_INS_11df_iteratorINS_27VPBlockDeepTraversalWrapperIPNS_11VPBlockBaseEEENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS7_EEEEZNS_12VPBlockUtils10blocksOnlyINS_12VPBasicBlockENS_14iterator_rangeISC_EEEEDaOT0_EUlS6_E_RS5_EEZNSE_ISF_SH_EEDaSJ_EUlSL_E_St20forward_iterator_tagEEZNSE_ISF_SH_EEDaSJ_EUlSL_E0_PSF_EESP_SO_SR_lPSR_SR_ED2Ev.exit46.i ] ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.b
  br i1 %i.gw, label %_ZL19addReplicateRegionsRN4llvm5VPlanE.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge70.i
  call void @free(ptr noundef %i.gv) #25
  br label %_ZL19addReplicateRegionsRN4llvm5VPlanE.exit

bb.y:                                             ; preds = %bb.ax, %.lr.ph69.i
  %.068.i = phi ptr [ %i.dn, %.lr.ph69.i ], [ %i.ne, %bb.ax ] ; 2 uses
  %.03667.i = phi i32 [ 0, %.lr.ph69.i ], [ %.1.i, %bb.ax ] ; 3 uses
  %i.gx = load ptr, ptr %.068.i, align 8, !tbaa !254 ; 14 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !151 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hb = call noundef ptr @_ZN4llvm12VPBasicBlock7splitAtENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(128) %i.gz, ptr nonnull %i.ha) #25 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 136 ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !55
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = and i32 %i.hh, 536870912
  %.not57.i = icmp eq i32 %i.hi, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  br i1 %.not57.i, label %bb.z, label %_ZN4llvmplERKNS_5TwineES2_.exit.i

_ZN4llvmplERKNS_5TwineES2_.exit.i:                ; preds = %bb.y
  %i.hj = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hf) #25 ; 2 uses
  %i.hk = extractvalue { ptr, i64 } %i.hj, 0
  %i.hl = extractvalue { ptr, i64 } %i.hj, 1
  store i8 5, ptr %i.dr, align 8, !tbaa !106, !alias.scope !257
  store i8 3, ptr %i.ds, align 1, !tbaa !109, !alias.scope !257
  store ptr %i.hk, ptr %31, align 8, !tbaa !110, !alias.scope !257
  store i64 %i.hl, ptr %i.dt, align 8, !tbaa !110, !alias.scope !257
  store ptr @.str.26, ptr %i.du, align 8, !tbaa !110, !alias.scope !257
  %i.hm = add i32 %.03667.i, 1
  %.sroa.0.0.insert.ext.i = zext i32 %.03667.i to i64
  %i.hn = inttoptr i64 %.sroa.0.0.insert.ext.i to ptr
  store ptr %31, ptr %30, align 8, !alias.scope !260
  store ptr %i.hn, ptr %i.dv, align 8, !alias.scope !260
  store i8 2, ptr %i.dw, align 8, !tbaa !106, !alias.scope !260
  store i8 9, ptr %i.dx, align 1, !tbaa !109, !alias.scope !260
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i16 257, ptr %i.dw, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN4llvmplERKNS_5TwineES2_.exit.i
  %.1.i = phi i32 [ %i.hm, %_ZN4llvmplERKNS_5TwineES2_.exit.i ], [ %.03667.i, %bb.z ]
  call void @_ZN4llvm11VPBlockBase7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(105) %i.hb, ptr noundef nonnull align 8 dereferenceable(34) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  %i.hq = load ptr, ptr %i.hc, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.hr = load i8, ptr %i.hq, align 8, !tbaa !63
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add nsw i32 %i.hs, -30
  %i.hu = call noundef ptr @_ZN4llvm11Instruction13getOpcodeNameEj(i32 noundef %i.ht) #25 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !110
  %.not.i.i.i = icmp eq i8 %i.hv, 0
  store ptr @.str.50, ptr %19, align 8
  br i1 %.not.i.i.i, label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.hu, ptr %i.dy, align 8, !alias.scope !265
  br label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i

_ZN4llvmplERKNS_5TwineES2_.exit.i.i:              ; preds = %bb.ab, %bb.aa
  %storemerge.i = phi i8 [ 3, %bb.ab ], [ 1, %bb.aa ]
  store i8 3, ptr %i.dz, align 8, !tbaa !270
  store i8 %storemerge.i, ptr %i.ea, align 1, !tbaa !270
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(34) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gx, i64 48 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !14
  %i.hy = add i32 %i.hx, -1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 2 uses
  %i.ia = zext i32 %i.hy to i64
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !12
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ia
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !111 ; 5 uses
  %i.ie = call noundef ptr @_ZN4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.id) #25 ; 2 uses
  %i.if = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26 ; 13 uses
  %.not.i47.i = icmp eq ptr %i.ie, null
  br i1 %.not.i47.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 80
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ig, align 8, !tbaa !105
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN4llvmplERKNS_5TwineES2_.exit.i.i
  %.sroa.017.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.ac ], [ null, %_ZN4llvmplERKNS_5TwineES2_.exit.i.i ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm5VPDefE, i64 16), ptr %i.if, align 8, !tbaa !113
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store i64 0, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm6VPUserE, i64 16), ptr %i.ij, align 8, !tbaa !113
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 56 ; 2 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !12
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 52
  store i32 2, ptr %i.in, align 4, !tbaa !15
  store ptr %i.id, ptr %i.il, align 8
  store i32 1, ptr %i.im, align 8, !tbaa !14
  %32 = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.id, i64 24 ; 3 uses
  %.pre.i.i.i.a = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert4.i.i.i = getelementptr inbounds nuw i8, ptr %i.id, i64 28
  %.pre5.i.i.i = load i32, ptr %.phi.trans.insert4.i.i.i, align 4, !tbaa !15
  %.not.i.i.i.i.i.i.i48.i = icmp ult i32 %.pre.i.i.i.a, %.pre5.i.i.i
  br i1 %.not.i.i.i.i.i.i.i48.i, label %bb.af, label %bb.ae, !prof !150

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(40) %i.ij)
  br label %_ZN4llvmplERKNS_5TwineES2_.exit55.i.i

bb.af:                                            ; preds = %bb.ad
  %i.io = zext i32 %.pre.i.i.i.a to i64
  %i.ip = load ptr, ptr %32, align 8, !tbaa !12
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.io
  store ptr %i.ij, ptr %i.iq, align 1
  %i.ir = load i32, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !14
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !14
  br label %_ZN4llvmplERKNS_5TwineES2_.exit55.i.i

_ZN4llvmplERKNS_5TwineES2_.exit55.i.i:            ; preds = %bb.af, %bb.ae
  %i.it = getelementptr inbounds nuw i8, ptr %i.if, i64 72
  store ptr null, ptr %i.it, align 8, !tbaa !151
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 80
  store ptr %.sroa.017.0.i.i, ptr %i.iu, align 8, !tbaa !105
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 88
  store i8 0, ptr %i.iv, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm20VPBranchOnMaskRecipeE, i64 16), ptr %i.if, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm20VPBranchOnMaskRecipeE, i64 80), ptr %i.ij, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  store ptr %18, ptr %20, align 8, !alias.scope !271
  store ptr @.str.51, ptr %i.eb, align 8, !alias.scope !271
  store i8 4, ptr %i.ec, align 8, !tbaa !106, !alias.scope !271
  store i8 3, ptr %i.ed, align 1, !tbaa !109, !alias.scope !271
  %i.iw = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26 ; 5 uses
  call void @_ZN4llvm12VPBasicBlockC2ERKNS_5TwineEPNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(128) %i.iw, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr noundef nonnull %i.if)
  %i.ix = load i32, ptr %i.ef, align 8, !tbaa !14 ; 2 uses
  %i.iy = load i32, ptr %i.eg, align 4, !tbaa !15
  %.not.i.i.i.i = icmp ult i32 %i.ix, %i.iy
  br i1 %.not.i.i.i.i, label %bb.ah, label %bb.ag, !prof !150

bb.ag:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit55.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11VPBlockBaseELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %i.iw)
  br label %_ZN4llvm5VPlan18createVPBasicBlockERKNS_5TwineEPNS_12VPRecipeBaseE.exit.i.i

bb.ah:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit55.i.i
  %i.iz = zext i32 %i.ix to i64
  %i.ja = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.iz
  store ptr %i.iw, ptr %i.jb, align 1
  %i.jc = load i32, ptr %i.ef, align 8, !tbaa !14
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr %i.ef, align 8, !tbaa !14
  br label %_ZN4llvm5VPlan18createVPBasicBlockERKNS_5TwineEPNS_12VPRecipeBaseE.exit.i.i

_ZN4llvm5VPlan18createVPBasicBlockERKNS_5TwineEPNS_12VPRecipeBaseE.exit.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.je = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 15 uses
  %i.jf = load ptr, ptr %i.hc, align 8, !tbaa !55 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gx, i64 225
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !143, !range !213, !noundef !214
  %i.ji = trunc nuw i8 %i.jh to i1
  %i.jj = load ptr, ptr %i.hz, align 8            ; 2 uses
  %i.jk = load i32, ptr %i.hw, align 8
  %i.jl = zext i32 %i.jk to i64
  %.pn4.idx.i.i.i = select i1 %i.ji, i64 -8, i64 0
  %.idx.i.i = shl nuw nsw i64 %i.jl, 3
  %i.jm = add nsw i64 %.idx.i.i, %.pn4.idx.i.i.i
  %i.jn = ashr exact i64 %i.jm, 3                 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gx, i64 224
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !141, !range !213, !noundef !214
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gx, i64 152
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gx, i64 160 ; 2 uses
  store ptr %i.eh, ptr %21, align 8, !tbaa !12
  store i32 0, ptr %i.ei, align 8, !tbaa !14
  store i32 3, ptr %i.ej, align 4, !tbaa !15
  %i.js = getelementptr inbounds nuw i8, ptr %i.gx, i64 168 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !14 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.jt, 0
  %i.ju = icmp eq ptr %21, %i.jr
  %or.cond.i.i.i.i = or i1 %i.ju, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm12VPIRMetadataC2ERKS0_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm5VPlan18createVPBasicBlockERKNS_5TwineEPNS_12VPRecipeBaseE.exit.i.i
  %i.jv = zext i32 %i.jt to i64                   ; 2 uses
  %i.jw = icmp ugt i32 %i.jt, 3
  br i1 %i.jw, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i: ; preds = %bb.ai
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef nonnull %i.eh, i64 noundef %i.jv, i64 noundef 16) #25
  %.pre.i.i.i.i.i = load i32, ptr %i.js, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i49.i = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i49.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i
  %.pre37.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.pre.i56.i.i = load ptr, ptr %21, align 8, !tbaa !12
  br label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i, %bb.ai
  %i.jx = phi ptr [ %.pre.i56.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i ], [ %i.eh, %bb.ai ]
  %.pre-phi.i8.i.i.i.i = phi i64 [ %.pre37.i.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i ], [ %i.jv, %bb.ai ]
  %i.jy = load ptr, ptr %i.jr, align 8, !tbaa !12
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %.pre-phi.i8.i.i.i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jx, ptr align 8 %i.jy, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i
  store i32 %i.jt, ptr %i.ei, align 8, !tbaa !14
  br label %_ZN4llvm12VPIRMetadataC2ERKS0_.exit.i.i

_ZN4llvm12VPIRMetadataC2ERKS0_.exit.i.i:          ; preds = %.sink.split.i.i.i.i.i, %_ZN4llvm5VPlan18createVPBasicBlockERKNS_5TwineEPNS_12VPRecipeBaseE.exit.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gx, i64 80
  %.sroa.0.0.copyload.i57.i.i = load ptr, ptr %i.jz, align 8, !tbaa !105
  %i.ka = ptrtoint ptr %.sroa.0.0.copyload.i57.i.i to i64
  %i.kb = call noundef ptr @_ZN4llvm17VPReplicateRecipe17computeScalarTypeEPKNS_11InstructionENS_8ArrayRefIPNS_7VPValueEEE(ptr noundef %i.jf, ptr %i.jj, i64 %i.jn) #25
  call void @_ZN4llvm17VPSingleDefRecipeC2ENS_12VPRecipeBase10VPRecipeTyENS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeEPNS_5ValueENS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(226) %i.je, i8 noundef zeroext 10, ptr %i.jj, i64 %i.jn, ptr noundef %i.kb, ptr noundef null, i64 %i.ka)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.je, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.kc, ptr noundef nonnull align 8 dereferenceable(3) %i.jq, i64 3, i1 false), !tbaa.struct !137
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 16), ptr %i.je, align 8, !tbaa !113
  %i.kd = getelementptr inbounds nuw i8, ptr %i.je, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 72), ptr %i.kd, align 8, !tbaa !113
  %i.ke = getelementptr inbounds nuw i8, ptr %i.je, i64 96 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 128), ptr %i.ke, align 8, !tbaa !113
  %i.kf = getelementptr inbounds nuw i8, ptr %i.je, i64 160 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.je, i64 176 ; 3 uses
  store ptr %i.kg, ptr %i.kf, align 8, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %i.je, i64 168 ; 2 uses
  store i32 0, ptr %i.kh, align 8, !tbaa !14
  %i.ki = getelementptr inbounds nuw i8, ptr %i.je, i64 172
  store i32 3, ptr %i.ki, align 4, !tbaa !15
  %i.kj = load i32, ptr %i.ei, align 8, !tbaa !14 ; 4 uses
  %.not.i.i.i.i58.i.i = icmp eq i32 %i.kj, 0
  br i1 %.not.i.i.i.i58.i.i, label %_ZN4llvm17VPReplicateRecipeC2EPNS_11InstructionENS_8ArrayRefIPNS_7VPValueEEEbS5_RKNS_9VPIRFlagsENS_12VPIRMetadataENS_8DebugLocE.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm12VPIRMetadataC2ERKS0_.exit.i.i
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = icmp ugt i32 %i.kj, 3
  br i1 %i.kl, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i.i: ; preds = %bb.aj
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.kf, ptr noundef nonnull %i.kg, i64 noundef %i.kk, i64 noundef 16) #25
  %.pre.i.i.i.i.i.i = load i32, ptr %i.ei, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i.i
  %.pre37.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i to i64
  %.pre.i.i.i.i = load ptr, ptr %i.kf, align 8, !tbaa !12
  br label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i.i, %bb.aj
  %i.km = phi ptr [ %.pre.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i.i ], [ %i.kg, %bb.aj ]
  %.pre-phi.i8.i.i.i.i.i = phi i64 [ %.pre37.i.i.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i.i ], [ %i.kk, %bb.aj ]
  %i.kn = load ptr, ptr %21, align 8, !tbaa !12
  %gepdiff.i.i.i.i.i.i = shl nuw nsw i64 %.pre-phi.i8.i.i.i.i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.km, ptr align 8 %i.kn, i64 %gepdiff.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i.i
  store i32 %i.kj, ptr %i.kh, align 8, !tbaa !14
  br label %_ZN4llvm17VPReplicateRecipeC2EPNS_11InstructionENS_8ArrayRefIPNS_7VPValueEEEbS5_RKNS_9VPIRFlagsENS_12VPIRMetadataENS_8DebugLocE.exit.i.i

_ZN4llvm17VPReplicateRecipeC2EPNS_11InstructionENS_8ArrayRefIPNS_7VPValueEEEbS5_RKNS_9VPIRFlagsENS_12VPIRMetadataENS_8DebugLocE.exit.i.i: ; preds = %.sink.split.i.i.i.i.i.i, %_ZN4llvm12VPIRMetadataC2ERKS0_.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm17VPReplicateRecipeE, i64 16), ptr %i.je, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPReplicateRecipeE, i64 88), ptr %i.kd, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPReplicateRecipeE, i64 144), ptr %i.ke, align 8, !tbaa !113
  %i.ko = getelementptr inbounds nuw i8, ptr %i.je, i64 224
  store i8 %i.jp, ptr %i.ko, align 8, !tbaa !141
  %i.kp = getelementptr inbounds nuw i8, ptr %i.je, i64 225
  store i8 0, ptr %i.kp, align 1, !tbaa !143
  %i.kq = getelementptr inbounds nuw i8, ptr %i.je, i64 136
  store ptr %i.jf, ptr %i.kq, align 8, !tbaa !55
  %i.kr = load ptr, ptr %21, align 8, !tbaa !12   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.eh
  br i1 %i.ks, label %_ZN4llvmplERKNS_5TwineES2_.exit74.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm17VPReplicateRecipeC2EPNS_11InstructionENS_8ArrayRefIPNS_7VPValueEEEbS5_RKNS_9VPIRFlagsENS_12VPIRMetadataENS_8DebugLocE.exit.i.i
  call void @free(ptr noundef %i.kr) #25
  br label %_ZN4llvmplERKNS_5TwineES2_.exit74.i.i

_ZN4llvmplERKNS_5TwineES2_.exit74.i.i:            ; preds = %bb.ak, %_ZN4llvm17VPReplicateRecipeC2EPNS_11InstructionENS_8ArrayRefIPNS_7VPValueEEEbS5_RKNS_9VPIRFlagsENS_12VPIRMetadataENS_8DebugLocE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store ptr %18, ptr %22, align 8, !alias.scope !276
  store ptr @.str.52, ptr %i.ek, align 8, !alias.scope !276
  store i8 4, ptr %i.el, align 8, !tbaa !106, !alias.scope !276
  store i8 3, ptr %i.em, align 1, !tbaa !109, !alias.scope !276
  %i.kt = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26 ; 9 uses
  call void @_ZN4llvm12VPBasicBlockC2ERKNS_5TwineEPNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(128) %i.kt, ptr noundef nonnull align 8 dereferenceable(34) %22, ptr noundef nonnull %i.je)
  %i.ku = load i32, ptr %i.ef, align 8, !tbaa !14 ; 2 uses
  %i.kv = load i32, ptr %i.eg, align 4, !tbaa !15
  %.not.i.i75.i.i = icmp ult i32 %i.ku, %i.kv
  br i1 %.not.i.i75.i.i, label %bb.am, label %bb.al, !prof !150

bb.al:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit74.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11VPBlockBaseELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %i.kt)
  br label %_ZN4llvmplERKNS_5TwineES2_.exit92.i.i

bb.am:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit74.i.i
  %i.kw = zext i32 %i.ku to i64
  %i.kx = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kw
  store ptr %i.kt, ptr %i.ky, align 1
end_hunk_0
begin_hunk_1_@_ZN4llvm15VPlanTransforms26truncateToMinimalBitwidthsERNS_5VPlanERKNS_9MapVectorIPNS_11InstructionEmNS_8DenseMapIS5_jNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEENS_11SmallVectorISt4pairIS5_mELj0EEELj0EEE:bb.a

_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i: ; preds = %bb.al
  %.not.i.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i
  %.pre8.i.i205 = phi i64 [ %i.kt, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i ]
  %.pre164204 = phi ptr [ %.pre164.pre, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i.thread ], [ %i.bh, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.pre164204, i64 %.pre8.i.i205
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ku, ptr align 8 %i.ko, i64 %.idx, i1 false)
  %.pre.i.i88 = load i32, ptr %i.bi, align 8, !tbaa !14
  %.pre163 = load ptr, ptr %11, align 8, !tbaa !12
  br label %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorIPNS_7VPValueELj6EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i, %bb.am
  %i.kv = phi ptr [ %i.bh, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i ], [ %.pre163, %bb.am ] ; 3 uses
  %i.kw = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIPNS_7VPValueEE7reserveEm.exit.i.i ], [ %.pre.i.i88, %bb.am ]
  %i.kx = add i32 %i.kw, %i.kq                    ; 3 uses
  store i32 %i.kx, ptr %i.bi, align 8, !tbaa !14
  %i.ky = zext i32 %i.kx to i64                   ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ky
  %i.la = zext i1 %i.km to i32
  %.not74149 = icmp eq i32 %i.kx, %i.la
  br i1 %.not74149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit
  %.sroa.sel.idx = select i1 %i.km, i64 8, i64 0
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.kv, i64 %.sroa.sel.idx
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0122.0153, i64 56
  br label %bb.ap

._crit_edge.loopexit:                             ; preds = %bb.bb
  %.pre171 = load ptr, ptr %11, align 8, !tbaa !12
  %.pre172 = load i32, ptr %i.bi, align 8, !tbaa !14
  %.pre174 = zext i32 %.pre172 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit
  %.pre-phi = phi i64 [ %.pre174, %._crit_edge.loopexit ], [ %i.ky, %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit ]
  %i.lc = phi ptr [ %.pre171, %._crit_edge.loopexit ], [ %i.kv, %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EEC2IPS2_EERKNS_14iterator_rangeIT_EE.exit ]
  %i.ld = call noundef ptr @_ZN4llvm13VPWidenRecipe17cloneWithOperandsENS_8ArrayRefIPNS_7VPValueEEE(ptr noundef nonnull align 8 dereferenceable(228) %i.gu, ptr %i.lc, i64 %.pre-phi) ; 4 uses
  call void @_ZN4llvm12VPRecipeBase12insertBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(89) %i.ld, ptr noundef nonnull %i.gu) #25
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %.0.copyload.i.i.i.i.i.i.i91 = load i64, ptr %i.le, align 8 ; 3 uses
  %i.lf = and i64 %.0.copyload.i.i.i.i.i.i.i91, 4
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge
  %i.lh = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i91 to ptr
  br label %_ZN4llvm5VPDef16getVPSingleValueEv.exit93

bb.ao:                                            ; preds = %._crit_edge
  %i.li = and i64 %.0.copyload.i.i.i.i.i.i.i91, -5
  %i.lj = inttoptr i64 %i.li to ptr
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !12
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !53
  br label %_ZN4llvm5VPDef16getVPSingleValueEv.exit93

_ZN4llvm5VPDef16getVPSingleValueEv.exit93:        ; preds = %bb.an, %bb.ao
  %.0.i.i92 = phi ptr [ %i.lh, %bb.an ], [ %i.ll, %bb.ao ] ; 2 uses
  %.not75 = icmp eq i32 %i.jb, %i.iz
  br i1 %.not75, label %bb.bf, label %bb.bc

bb.ap:                                            ; preds = %.lr.ph, %bb.bb
  %.069150 = phi ptr [ %.sroa.sel, %.lr.ph ], [ %i.qr, %bb.bb ] ; 7 uses
  %i.lm = load ptr, ptr %.069150, align 8, !tbaa !111
  %i.ln = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.lm) #25
  %i.lo = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ln) #27
  %i.lp = icmp eq i32 %i.lo, %i.iz
  br i1 %i.lp, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.lq = load ptr, ptr %4, align 8, !tbaa !994, !noalias !1012 ; 3 uses
  %i.lr = load ptr, ptr %i.bk, align 8, !tbaa !1021, !noalias !1012 ; 3 uses
  %i.ls = load i32, ptr %i.bl, align 4, !tbaa !991, !noalias !1012 ; 4 uses
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %.loopexit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lu = add i32 %i.ls, -1                       ; 2 uses
  %i.lv = load ptr, ptr %.069150, align 8, !tbaa !111, !noalias !1022 ; 2 uses
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = mul i64 %i.lw, -4658895280553007687     ; 2 uses
  %i.ly = lshr i64 %i.lx, 31
  %i.lz = xor i64 %i.ly, %i.lx
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = and i32 %i.lu, %i.ma                    ; 3 uses
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.mc ; 2 uses
  %i.me = lshr i64 %i.mc, 5
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !153, !noalias !1022
  %i.mh = and i32 %i.mb, 31
  %i.mi = lshr i32 %i.mg, %i.mh
  %i.mj = trunc i32 %i.mi to i1
  br i1 %i.mj, label %.lr.ph.i.i, label %.loopexit.i, !prof !317

.lr.ph.i.i:                                       ; preds = %bb.ar, %bb.as
  %i.mk = phi ptr [ %i.mq, %bb.as ], [ %i.md, %bb.ar ] ; 2 uses
  %.024.i.i = phi i32 [ %i.mo, %bb.as ], [ %i.mb, %bb.ar ]
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !111, !noalias !1022
  %i.mm = icmp eq ptr %i.lv, %i.ml
  br i1 %i.mm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit, label %bb.as, !prof !150

bb.as:                                            ; preds = %.lr.ph.i.i
  %i.mn = add nuw i32 %.024.i.i, 1
  %i.mo = and i32 %i.mn, %i.lu                    ; 3 uses
  %i.mp = zext i32 %i.mo to i64                   ; 2 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.mp ; 2 uses
  %i.mr = lshr i64 %i.mp, 5
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !153, !noalias !1022
  %i.mu = and i32 %i.mo, 31
  %i.mv = lshr i32 %i.mt, %i.mu
  %i.mw = trunc i32 %i.mv to i1
  br i1 %i.mw, label %.lr.ph.i.i, label %.loopexit.i, !prof !321, !llvm.loop !1023

.loopexit.i:                                      ; preds = %bb.as, %bb.ar, %bb.aq
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.md, %bb.ar ], [ null, %bb.aq ], [ %i.mq, %bb.as ]
  %i.mx = load i32, ptr %i.bm, align 8, !tbaa !1024, !noalias !1022
  %i.my = shl i32 %i.mx, 2
  %i.mz = add i32 %i.my, 4
  %i.na = mul i32 %i.ls, 3
  %.not.i.i101 = icmp ult i32 %i.mz, %i.na
  br i1 %.not.i.i101, label %.loopexit.i..loopexit_crit_edge, label %bb.at, !prof !150

.loopexit.i..loopexit_crit_edge:                  ; preds = %.loopexit.i
  %.pre165 = load ptr, ptr %.069150, align 8, !tbaa !111, !noalias !1022
  br label %.loopexit

bb.at:                                            ; preds = %.loopexit.i
  %i.nb = shl i32 %i.ls, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %4, i32 noundef %i.nb), !noalias !1022
  %i.nc = load ptr, ptr %4, align 8, !tbaa !994, !noalias !1025 ; 5 uses
  %i.nd = load ptr, ptr %i.bk, align 8, !tbaa !1021, !noalias !1025 ; 5 uses
  %i.ne = load i32, ptr %i.bl, align 4, !tbaa !991, !noalias !1025 ; 2 uses
  %i.nf = icmp ne i32 %i.ne, 0
  call void @llvm.assume(i1 %i.nf)
  %i.ng = add i32 %i.ne, -1                       ; 2 uses
  %i.nh = load ptr, ptr %.069150, align 8, !tbaa !111, !noalias !1022 ; 5 uses
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = mul i64 %i.ni, -4658895280553007687     ; 2 uses
  %i.nk = lshr i64 %i.nj, 31
  %i.nl = xor i64 %i.nk, %i.nj
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = and i32 %i.ng, %i.nm                    ; 3 uses
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  %i.np = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %i.no ; 2 uses
  %i.nq = lshr i64 %i.no, 5
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !153, !noalias !1022
  %i.nt = and i32 %i.nn, 31
  %i.nu = lshr i32 %i.ns, %i.nt
  %i.nv = trunc i32 %i.nu to i1
  br i1 %i.nv, label %.lr.ph.i, label %.loopexit, !prof !317

.lr.ph.i:                                         ; preds = %bb.at, %bb.au
  %i.nw = phi ptr [ %i.oc, %bb.au ], [ %i.np, %bb.at ] ; 2 uses
  %.024.i = phi i32 [ %i.oa, %bb.au ], [ %i.nn, %bb.at ]
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !111, !noalias !1022
  %i.ny = icmp eq ptr %i.nh, %i.nx
  br i1 %i.ny, label %.loopexit, label %bb.au, !prof !150

bb.au:                                            ; preds = %.lr.ph.i
  %i.nz = add nuw i32 %.024.i, 1
  %i.oa = and i32 %i.nz, %i.ng                    ; 3 uses
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %i.ob ; 2 uses
  %i.od = lshr i64 %i.ob, 5
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !153, !noalias !1022
  %i.og = and i32 %i.oa, 31
  %i.oh = lshr i32 %i.of, %i.og
  %i.oi = trunc i32 %i.oh to i1
  br i1 %i.oi, label %.lr.ph.i, label %.loopexit, !prof !321, !llvm.loop !1023

.loopexit:                                        ; preds = %.lr.ph.i, %bb.au, %.loopexit.i..loopexit_crit_edge, %bb.at
  %i.oj = phi ptr [ %.pre165, %.loopexit.i..loopexit_crit_edge ], [ %i.nh, %bb.at ], [ %i.nh, %bb.au ], [ %i.nh, %.lr.ph.i ]
  %i.ok = phi ptr [ %i.lq, %.loopexit.i..loopexit_crit_edge ], [ %i.nc, %bb.at ], [ %i.nc, %bb.au ], [ %i.nc, %.lr.ph.i ]
  %i.ol = phi ptr [ %i.lr, %.loopexit.i..loopexit_crit_edge ], [ %i.nd, %bb.at ], [ %i.nd, %bb.au ], [ %i.nd, %.lr.ph.i ]
  %i.om = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i..loopexit_crit_edge ], [ %i.np, %bb.at ], [ %i.nw, %.lr.ph.i ], [ %i.oc, %bb.au ] ; 3 uses
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ok to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = ashr exact i64 %i.op, 4                 ; 2 uses
  %i.or = trunc i64 %i.oq to i32
  %i.os = and i32 %i.or, 31
  %i.ot = shl nuw i32 1, %i.os
  %i.ou = lshr i64 %i.oq, 5
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.ou ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !153, !noalias !1022
  %i.ox = or i32 %i.ot, %i.ow
  store i32 %i.ox, ptr %i.ov, align 4, !tbaa !153, !noalias !1022
  %i.oy = load i32, ptr %i.bm, align 8, !tbaa !1024, !noalias !1022
  %i.oz = add i32 %i.oy, 1
  store i32 %i.oz, ptr %i.bm, align 8, !tbaa !1024, !noalias !1022
  store ptr %i.oj, ptr %i.om, align 8, !tbaa !111, !noalias !1022
  %i.pa = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  store ptr null, ptr %i.pa, align 8, !tbaa !1030, !noalias !1022
  %i.pb = load ptr, ptr %.069150, align 8, !tbaa !111 ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load i8, ptr %i.pc, align 8, !tbaa !399
  %i.pe = icmp eq i8 %i.pd, 0
  br i1 %i.pe, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.loopexit
  %i.pf = load ptr, ptr %i.lb, align 8, !tbaa !151
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i: ; preds = %.loopexit, %bb.av
  %.sroa.0108.0 = phi ptr [ %i.pf, %bb.av ], [ %i.r, %.loopexit ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %.sroa.0122.0153, %bb.av ], [ %i.bn, %.loopexit ] ; 3 uses
  %i.pg = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 25 uses
  %i.ph = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef 39, ptr noundef null) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i8 0, i64 48, i1 false)
  store ptr %i.bo, ptr %2, align 8, !tbaa !12
  store i32 0, ptr %i.bp, align 8, !tbaa !14
  store i32 3, ptr %i.bq, align 4, !tbaa !15
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm5VPDefE, i64 16), ptr %i.pg, align 8, !tbaa !113
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store i64 0, ptr %i.pj, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 32 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm6VPUserE, i64 16), ptr %i.pk, align 8, !tbaa !113
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 40
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pg, i64 56 ; 2 uses
  store ptr %i.pm, ptr %i.pl, align 8, !tbaa !12
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  %i.po = getelementptr inbounds nuw i8, ptr %i.pg, i64 52
  store i32 2, ptr %i.po, align 4, !tbaa !15
  store ptr %i.pb, ptr %i.pm, align 8
  store i32 1, ptr %i.pn, align 8, !tbaa !14
  %13 = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 2 uses
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %i.pb, i64 24 ; 3 uses
  %.pre166.a = load i32, ptr %.phi.trans.insert.a, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert167 = getelementptr inbounds nuw i8, ptr %i.pb, i64 28
  %.pre168 = load i32, ptr %.phi.trans.insert167, align 4, !tbaa !15
  %.not.i.i.i.i.i.i106 = icmp ult i32 %.pre166.a, %.pre168
  br i1 %.not.i.i.i.i.i.i106, label %bb.ax, label %bb.aw, !prof !150

bb.aw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(40) %i.pk)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i

bb.ax:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i
  %i.pp = zext i32 %.pre166.a to i64
  %i.pq = load ptr, ptr %13, align 8, !tbaa !12
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pp
  store ptr %i.pk, ptr %i.pr, align 1
  %i.ps = load i32, ptr %.phi.trans.insert.a, align 8, !tbaa !14
  %i.pt = add i32 %i.ps, 1
  store i32 %i.pt, ptr %.phi.trans.insert.a, align 8, !tbaa !14
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i: ; preds = %bb.ax, %bb.aw
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pg, i64 72 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pg, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pu, i8 0, i64 16, i1 false)
  store i8 16, ptr %i.pv, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 16), ptr %i.pg, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 72), ptr %i.pk, align 8, !tbaa !113
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pg, i64 96 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 128), ptr %i.pw, align 8, !tbaa !113
  call void @_ZN4llvm16VPSingleDefValueC2EPNS_17VPSingleDefRecipeEPNS_5ValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %i.pw, ptr noundef nonnull align 8 dereferenceable(228) %i.pg, ptr noundef null, ptr noundef %i.jg) #25
  %i.px = getelementptr inbounds nuw i8, ptr %i.pg, i64 152
  store i24 %i.ph, ptr %i.px, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 16), ptr %i.pg, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 72), ptr %i.pk, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 128), ptr %i.pw, align 8, !tbaa !113
  %i.py = getelementptr inbounds nuw i8, ptr %i.pg, i64 160 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pg, i64 176 ; 3 uses
  store ptr %i.pz, ptr %i.py, align 8, !tbaa !12
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pg, i64 168 ; 2 uses
  store i32 0, ptr %i.qa, align 8, !tbaa !14
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pg, i64 172
  store i32 3, ptr %i.qb, align 4, !tbaa !15
  %i.qc = load i32, ptr %i.bp, align 8, !tbaa !14 ; 4 uses
  %.not.i.i.i.i.i94 = icmp eq i32 %i.qc, 0
  br i1 %.not.i.i.i.i.i94, label %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i
  %i.qd = zext i32 %i.qc to i64                   ; 2 uses
  %i.qe = icmp ugt i32 %i.qc, 3
  br i1 %i.qe, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i: ; preds = %bb.ay
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.py, ptr noundef nonnull %i.pz, i64 noundef %i.qd, i64 noundef 16) #25
  %.pre.i.i.i.i.i = load i32, ptr %i.bp, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i
  %.pre37.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.pre.i.i.i = load ptr, ptr %i.py, align 8, !tbaa !12
  br label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i, %bb.ay
  %i.qf = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i ], [ %i.pz, %bb.ay ]
  %.pre-phi.i8.i.i.i.i = phi i64 [ %.pre37.i.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i ], [ %i.qd, %bb.ay ]
  %i.qg = load ptr, ptr %2, align 8, !tbaa !12
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %.pre-phi.i8.i.i.i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qf, ptr align 8 %i.qg, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i
  store i32 %i.qc, ptr %i.qa, align 8, !tbaa !14
  br label %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i

_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i: ; preds = %.sink.split.i.i.i.i.i, %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 16), ptr %i.pg, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 72), ptr %i.pk, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 128), ptr %i.pw, align 8, !tbaa !113
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pg, i64 224
  store i32 39, ptr %i.qh, align 8, !tbaa !144
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pg, i64 136
  store ptr null, ptr %i.qi, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %.sroa.0108.0, null
  br i1 %.not.i.i, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i
  store ptr %.sroa.0108.0, ptr %i.pu, align 8, !tbaa !151
  %i.qj = load ptr, ptr %.sroa.6.0, align 8, !tbaa !286 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store ptr %.sroa.6.0, ptr %i.qk, align 8, !tbaa !50
  store ptr %i.qj, ptr %i.pi, align 8, !tbaa !286
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store ptr %i.pi, ptr %i.ql, align 8, !tbaa !50
  store ptr %i.pi, ptr %.sroa.6.0, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i

_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i: ; preds = %bb.az, %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i
  %i.qm = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.bo
  br i1 %i.qn, label %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i
  call void @free(ptr noundef %i.qm) #25
  br label %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit

_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit: ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  store ptr %i.pg, ptr %i.pa, align 8, !tbaa !1032
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert169 = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %.pre170 = load ptr, ptr %.phi.trans.insert169, align 8, !tbaa !1032
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit
  %i.qo = phi ptr [ %i.pg, %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit ], [ %.pre170, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.qp = icmp eq ptr %i.qo, null
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 96
  %spec.select2 = select i1 %i.qp, ptr null, ptr %i.qq
  store ptr %spec.select2, ptr %.069150, align 8, !tbaa !111
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit
  %i.qr = getelementptr inbounds nuw i8, ptr %.069150, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.qr, %i.kz
  br i1 %.not74, label %._crit_edge.loopexit, label %bb.ap

bb.bc:                                            ; preds = %_ZN4llvm5VPDef16getVPSingleValueEv.exit93
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ld, i64 72
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !151
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !50
  store ptr %i.qt, ptr %12, align 8
  store ptr %i.qv, ptr %i.br, align 8
  %i.qw = call noundef ptr @_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef 40, ptr noundef %.0.i.i92, ptr noundef nonnull %i.ja)
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %.0.copyload.i.i.i.i.i.i.i98 = load i64, ptr %i.qx, align 8 ; 3 uses
  %i.qy = and i64 %.0.copyload.i.i.i.i.i.i.i98, 4
  %i.qz = icmp eq i64 %i.qy, 0
  br i1 %i.qz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ra = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i98 to ptr
  br label %_ZN4llvm5VPDef16getVPSingleValueEv.exit100

bb.be:                                            ; preds = %bb.bc
  %i.rb = and i64 %.0.copyload.i.i.i.i.i.i.i98, -5
  %i.rc = inttoptr i64 %i.rb to ptr
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !12
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !53
  br label %_ZN4llvm5VPDef16getVPSingleValueEv.exit100

_ZN4llvm5VPDef16getVPSingleValueEv.exit100:       ; preds = %bb.bd, %bb.be
  %.0.i.i99 = phi ptr [ %i.ra, %bb.bd ], [ %i.re, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm5VPDef16getVPSingleValueEv.exit100, %_ZN4llvm5VPDef16getVPSingleValueEv.exit93
  %.0 = phi ptr [ %.0.i.i99, %_ZN4llvm5VPDef16getVPSingleValueEv.exit100 ], [ %.0.i.i92, %_ZN4llvm5VPDef16getVPSingleValueEv.exit93 ]
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %.0) #25
  %i.rf = call ptr @_ZN4llvm12VPRecipeBase15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(89) %i.gu) #25 ; 0 uses
  %i.rg = load ptr, ptr %11, align 8, !tbaa !12   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.bh
  br i1 %i.rh, label %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef %i.rg) #25
  br label %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_7VPValueELj6EED2Ev.exit: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZNK4llvm9MapVectorIPNS_11InstructionEmNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_mELj0EEELj0EE6lookupERKS2_.exit.thread

_ZNK4llvm9MapVectorIPNS_11InstructionEmNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_mELj0EEELj0EE6lookupERKS2_.exit.thread: ; preds = %bb.aa, %bb.aa, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_11InstructionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4findEPKS2_.exit.i.i, %_ZNK4llvm9MapVectorIPNS_11InstructionEmNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_mELj0EEELj0EE6lookupERKS2_.exit, %bb.aj, %bb.ak, %_ZN4llvm11SmallVectorIPNS_7VPValueELj6EED2Ev.exit, %_ZN4llvm3isaIJNS_13VPWidenRecipeENS_17VPWidenCastRecipeENS_17VPReplicateRecipeENS_17VPWidenLoadRecipeENS_22VPWidenIntrinsicRecipeEEPNS_12VPRecipeBaseEEEbRKT0_.exit
  %.not136 = icmp eq ptr %i.gt, %i.ff
  br i1 %.not136, label %._crit_edge156.preheader, label %.lr.ph155

bb.bh:                                            ; preds = %_ZNK4llvm5VPlan15hasScalarVFOnlyEv.exit, %_ZN4llvm8DenseMapIPNS_7VPValueEPNS_17VPWidenCastRecipeENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit
  ret void
}

declare noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::VPIRMetadata", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 16 uses
  %i.c = tail call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef %1, ptr noundef null) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 3, ptr %i.g, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !111
  call void @_ZN4llvm17VPSingleDefRecipeC2ENS_12VPRecipeBase10VPRecipeTyENS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeEPNS_5ValueENS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(228) %i.b, i8 noundef zeroext 16, ptr nonnull %i.a, i64 1, ptr noundef %3, ptr noundef null, i64 0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i24 %i.c, ptr %i.h, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 16), ptr %i.b, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 72), ptr %i.i, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 128), ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm15VPlanTransforms24convertToConcreteRecipesERNS_5VPlanE:bb.a
  %.not = icmp eq i8 %i.pp, 32
  br i1 %.not, label %bb.u, label %.critedge

bb.u:                                             ; preds = %.lr.ph457
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.0394.0454, i64 56 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !151
  %i.ps = call noundef ptr @_ZN4llvm11VPBlockBase7getPlanEv(ptr noundef nonnull align 8 dereferenceable(105) %i.pr) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #25
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0394.0454, i64 24 ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !12 ; 3 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !111
  store ptr %i.pv, ptr %i.z, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #25
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !111 ; 3 uses
  store ptr %i.px, ptr %i.aa, align 8, !tbaa !111
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !111 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0394.0454, i64 64 ; 3 uses
  %.sroa.0.0.copyload.i91.i = load ptr, ptr %i.qa, align 8, !tbaa !105 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0394.0454, i64 128
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !412 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #25
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0394.0454, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %79, ptr noundef nonnull align 8 dereferenceable(3) %i.qd, i64 3, i1 false), !tbaa.struct !137
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0394.0454, i64 168
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !465
  %i.qg = icmp eq i32 %i.qf, 1
  br i1 %i.qg, label %_ZNK4llvm19InductionDescriptor18getInductionOpcodeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.0394.0454, i64 184
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !466 ; 2 uses
  %.not.i.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i, label %_ZNK4llvm19InductionDescriptor18getInductionOpcodeEv.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.qj = load i8, ptr %i.qi, align 8, !tbaa !63
  %i.qk = zext i8 %i.qj to i32
  %i.ql = add nsw i32 %i.qk, -30
  br label %_ZNK4llvm19InductionDescriptor18getInductionOpcodeEv.exit.i

_ZNK4llvm19InductionDescriptor18getInductionOpcodeEv.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %.084.i = phi i32 [ 18, %bb.u ], [ 19, %bb.v ], [ 19, %bb.w ] ; 2 uses
  %.083.i = phi i32 [ 14, %bb.u ], [ 32, %bb.v ], [ %i.ql, %bb.w ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #25
  %i.qm = call noundef ptr @_ZNK4llvm5VPlan19getVectorLoopRegionEv(ptr noundef nonnull align 8 dereferenceable(816) %i.ps) #25 ; 3 uses
  %.not.i92.i = icmp eq ptr %i.qm, null
  br i1 %.not.i92.i, label %_ZNK4llvm5VPlan18getVectorPreheaderEv.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm19InductionDescriptor18getInductionOpcodeEv.exit.i
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 56
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !14
  %i.qp = icmp eq i32 %i.qo, 1
  br i1 %i.qp, label %bb.y, label %_ZNK4llvm5VPlan18getVectorPreheaderEv.exit.i

bb.y:                                             ; preds = %bb.x
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 48
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !12
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !29
  br label %_ZNK4llvm5VPlan18getVectorPreheaderEv.exit.i

_ZNK4llvm5VPlan18getVectorPreheaderEv.exit.i:     ; preds = %bb.y, %bb.x, %_ZNK4llvm19InductionDescriptor18getInductionOpcodeEv.exit.i
  %i.qt = phi ptr [ null, %_ZNK4llvm19InductionDescriptor18getInductionOpcodeEv.exit.i ], [ %i.qs, %bb.y ], [ null, %bb.x ] ; 2 uses
  store ptr %i.qt, ptr %80, align 8, !tbaa !391
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 112
  store ptr %i.qu, ptr %i.ih, align 8
  %i.qv = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.px) #25 ; 2 uses
  %i.qw = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qc) #27
  %i.qx = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.qv) #27
  %i.qy = icmp ult i32 %i.qw, %i.qx
  br i1 %i.qy, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %_ZNK4llvm5VPlan18getVectorPreheaderEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, i8 0, i64 48, i1 false)
  store ptr %i.ii, ptr %81, align 8, !tbaa !12
  store i32 0, ptr %i.ij, align 8, !tbaa !14
  store i32 3, ptr %i.ik, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.px, ptr %i.y, align 8, !tbaa !111
  %i.qz = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #25
  %i.ra = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef 39, ptr noundef null) #25
  store i24 %i.ra, ptr %77, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #25
  %i.rb = ptrtoint ptr %.sroa.0.0.copyload.i91.i to i64 ; 2 uses
  store i16 257, ptr %i.il, align 8
  call void @_ZN4llvm13VPInstructionC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.qz, i32 noundef 39, ptr nonnull %i.y, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %77, ptr noundef nonnull align 8 dereferenceable(64) %81, i64 %i.rb, ptr noundef nonnull align 8 dereferenceable(34) %78, ptr noundef nonnull %i.qc) #25
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 16), ptr %i.qz, align 8, !tbaa !113
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 96), ptr %i.rc, align 8, !tbaa !113
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 96 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 152), ptr %i.rd, align 8, !tbaa !113
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 136
  store ptr null, ptr %i.re, align 8, !tbaa !55
  %i.rf = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i, label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 72
  store ptr %i.rf, ptr %i.rg, align 8, !tbaa !151
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qz, i64 16 ; 3 uses
  %i.ri = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !286 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.rj, align 8, !tbaa !50
  store ptr %i.ri, ptr %i.rh, align 8, !tbaa !286
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %i.rh, ptr %i.rk, align 8, !tbaa !50
  store ptr %i.rh, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit.i

_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store ptr %i.rd, ptr %i.aa, align 8, !tbaa !111
  %i.rl = load ptr, ptr %81, align 8, !tbaa !12   ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.ii
  br i1 %i.rm, label %_ZN4llvm12VPIRMetadataD2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit.i
  call void @free(ptr noundef %i.rl) #25
  br label %_ZN4llvm12VPIRMetadataD2Ev.exit.i

_ZN4llvm12VPIRMetadataD2Ev.exit.i:                ; preds = %bb.ab, %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #25
  %i.rn = load ptr, ptr %i.z, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.im, i8 0, i64 48, i1 false)
  store ptr %i.im, ptr %82, align 8, !tbaa !12
  store i32 0, ptr %i.in, align 8, !tbaa !14
  store i32 3, ptr %i.io, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.rn, ptr %i.x, align 8, !tbaa !111
  %i.ro = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #25
  %i.rp = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef 39, ptr noundef null) #25
  store i24 %i.rp, ptr %75, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #25
  store i16 257, ptr %i.ip, align 8
  call void @_ZN4llvm13VPInstructionC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.ro, i32 noundef 39, ptr nonnull %i.x, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %75, ptr noundef nonnull align 8 dereferenceable(64) %82, i64 %i.rb, ptr noundef nonnull align 8 dereferenceable(34) %76, ptr noundef nonnull %i.qc) #25
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 16), ptr %i.ro, align 8, !tbaa !113
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 96), ptr %i.rq, align 8, !tbaa !113
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 96 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 152), ptr %i.rr, align 8, !tbaa !113
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 136
  store ptr null, ptr %i.rs, align 8, !tbaa !55
  %i.rt = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i93.i = icmp eq ptr %i.rt, null
  br i1 %.not.i.i93.i, label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit95.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm12VPIRMetadataD2Ev.exit.i
  %.sroa.0.0.copyload.i.i94.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 72
  store ptr %i.rt, ptr %i.ru, align 8, !tbaa !151
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ro, i64 16 ; 3 uses
  %i.rw = load ptr, ptr %.sroa.0.0.copyload.i.i94.i, align 8, !tbaa !286 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  store ptr %.sroa.0.0.copyload.i.i94.i, ptr %i.rx, align 8, !tbaa !50
  store ptr %i.rw, ptr %i.rv, align 8, !tbaa !286
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store ptr %i.rv, ptr %i.ry, align 8, !tbaa !50
  store ptr %i.rv, ptr %.sroa.0.0.copyload.i.i94.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit95.i

_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit95.i: ; preds = %bb.ac, %_ZN4llvm12VPIRMetadataD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store ptr %i.rr, ptr %i.z, align 8, !tbaa !111
  %i.rz = load ptr, ptr %82, align 8, !tbaa !12   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.im
  br i1 %i.sa, label %_ZN4llvm12VPIRMetadataD2Ev.exit96.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit95.i
  call void @free(ptr noundef %i.rz) #25
  br label %_ZN4llvm12VPIRMetadataD2Ev.exit96.i

_ZN4llvm12VPIRMetadataD2Ev.exit96.i:              ; preds = %bb.ad, %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit95.i
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #25
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm12VPIRMetadataD2Ev.exit96.i, %_ZNK4llvm5VPlan18getVectorPreheaderEv.exit.i
  %.085.i = phi ptr [ %i.qc, %_ZN4llvm12VPIRMetadataD2Ev.exit96.i ], [ %i.qv, %_ZNK4llvm5VPlan18getVectorPreheaderEv.exit.i ] ; 5 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !495
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 128
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !496
  %i.sf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.se) #25
  %i.sg = call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %.085.i) #27
  %i.sh = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.sf, i32 noundef %i.sg) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #25
  store i8 10, ptr %83, align 1, !tbaa !152
  store i16 0, ptr %i.iq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #25
  store i16 257, ptr %i.ir, align 8
  %i.si = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.is, i8 0, i64 48, i1 false)
  store ptr %i.is, ptr %74, align 8, !tbaa !12
  store i32 0, ptr %i.it, align 8, !tbaa !14
  store i32 3, ptr %i.iu, align 4, !tbaa !15
  call void @_ZN4llvm13VPInstructionC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.si, i32 noundef 105, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(3) %83, ptr noundef nonnull align 8 dereferenceable(64) %74, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %84, ptr noundef %i.sh) #25
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 16), ptr %i.si, align 8, !tbaa !113
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 96), ptr %i.sj, align 8, !tbaa !113
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 96 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 152), ptr %i.sk, align 8, !tbaa !113
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 136
  store ptr null, ptr %i.sl, align 8, !tbaa !55
  %i.sm = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i97.i = icmp eq ptr %i.sm, null
  br i1 %.not.i.i97.i, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_21VPInstructionWithTypeEEEPT_S4_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i98.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.si, i64 72
  store ptr %i.sm, ptr %i.sn, align 8, !tbaa !151
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 3 uses
  %i.sp = load ptr, ptr %.sroa.0.0.copyload.i.i98.i, align 8, !tbaa !286 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  store ptr %.sroa.0.0.copyload.i.i98.i, ptr %i.sq, align 8, !tbaa !50
  store ptr %i.sp, ptr %i.so, align 8, !tbaa !286
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  store ptr %i.so, ptr %i.sr, align 8, !tbaa !50
  store ptr %i.so, ptr %.sroa.0.0.copyload.i.i98.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_21VPInstructionWithTypeEEEPT_S4_.exit.i.i

_ZN4llvm9VPBuilder20tryInsertInstructionINS_21VPInstructionWithTypeEEEPT_S4_.exit.i.i: ; preds = %bb.af, %bb.ae
  %i.ss = load ptr, ptr %74, align 8, !tbaa !12   ; 2 uses
  %i.st = icmp eq ptr %i.ss, %i.is
  br i1 %i.st, label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_21VPInstructionWithTypeEEEPT_S4_.exit.i.i
  call void @free(ptr noundef %i.ss) #25
  br label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i

_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i: ; preds = %bb.ag, %_ZN4llvm9VPBuilder20tryInsertInstructionINS_21VPInstructionWithTypeEEEPT_S4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #25
  %i.su = getelementptr inbounds nuw i8, ptr %.085.i, i64 8 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 8            ; 2 uses
  %trunc.i.i.i = trunc i32 %i.sv to i8
  switch i8 %trunc.i.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i [
    i8 3, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356
    i8 2, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356
    i8 0, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356
    i8 1, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356
    i8 5, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit.i:       ; preds = %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i
  %i.sw = and i32 %i.sv, 253
  %spec.select.i.i221 = icmp eq i32 %i.sw, 4
  br i1 %spec.select.i.i221, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356, label %bb.am

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356: ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_4TypeERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i
  %i.sx = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 23 uses
  %i.sy = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef 44, ptr noundef null) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iv, i8 0, i64 48, i1 false)
  store ptr %i.iv, ptr %7, align 8, !tbaa !12
  store i32 0, ptr %i.iw, align 8, !tbaa !14
  store i32 3, ptr %i.ix, align 4, !tbaa !15
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sz, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm5VPDefE, i64 16), ptr %i.sx, align 8, !tbaa !113
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store i64 0, ptr %i.ta, align 8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 32 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm6VPUserE, i64 16), ptr %i.tb, align 8, !tbaa !113
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 56 ; 2 uses
  store ptr %i.td, ptr %i.tc, align 8, !tbaa !12
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sx, i64 52
  store i32 2, ptr %i.tf, align 4, !tbaa !15
  store ptr %i.sk, ptr %i.td, align 8
  store i32 1, ptr %i.te, align 8, !tbaa !14
  %129 = getelementptr inbounds nuw i8, ptr %i.si, i64 112 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.si, i64 120 ; 3 uses
  %.pre481 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert482 = getelementptr inbounds nuw i8, ptr %i.si, i64 124
  %.pre483 = load i32, ptr %.phi.trans.insert482, align 4, !tbaa !15
  %.not.i.i.i.i.i.i357 = icmp ult i32 %.pre481, %.pre483
  br i1 %.not.i.i.i.i.i.i357, label %bb.ai, label %bb.ah, !prof !150

bb.ah:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %129, ptr noundef nonnull align 8 dereferenceable(40) %i.tb)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i358

bb.ai:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i356
  %i.tg = zext i32 %.pre481 to i64
  %i.th = load ptr, ptr %129, align 8, !tbaa !12
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.tg
  store ptr %i.tb, ptr %i.ti, align 1
  %i.tj = load i32, ptr %.phi.trans.insert, align 8, !tbaa !14
  %i.tk = add i32 %i.tj, 1
  store i32 %i.tk, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i358

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i358: ; preds = %bb.ai, %bb.ah
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sx, i64 72 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sx, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tl, i8 0, i64 16, i1 false)
  store i8 16, ptr %i.tm, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 16), ptr %i.sx, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 72), ptr %i.tb, align 8, !tbaa !113
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sx, i64 96 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 128), ptr %i.tn, align 8, !tbaa !113
  call void @_ZN4llvm16VPSingleDefValueC2EPNS_17VPSingleDefRecipeEPNS_5ValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %i.tn, ptr noundef nonnull align 8 dereferenceable(228) %i.sx, ptr noundef null, ptr noundef nonnull %.085.i) #25
  %i.to = getelementptr inbounds nuw i8, ptr %i.sx, i64 152
  store i24 %i.sy, ptr %i.to, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 16), ptr %i.sx, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 72), ptr %i.tb, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 128), ptr %i.tn, align 8, !tbaa !113
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sx, i64 160 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sx, i64 176 ; 3 uses
  store ptr %i.tq, ptr %i.tp, align 8, !tbaa !12
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sx, i64 168 ; 2 uses
  store i32 0, ptr %i.tr, align 8, !tbaa !14
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sx, i64 172
  store i32 3, ptr %i.ts, align 4, !tbaa !15
  %i.tt = load i32, ptr %i.iw, align 8, !tbaa !14 ; 4 uses
  %.not.i.i.i.i.i337 = icmp eq i32 %i.tt, 0
  br i1 %.not.i.i.i.i.i337, label %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i358
  %i.tu = zext i32 %i.tt to i64                   ; 2 uses
  %i.tv = icmp ugt i32 %i.tt, 3
  br i1 %i.tv, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i: ; preds = %bb.aj
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.tp, ptr noundef nonnull %i.tq, i64 noundef %i.tu, i64 noundef 16) #25
  %.pre.i.i.i.i.i = load i32, ptr %i.iw, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i341 = icmp eq i32 %.pre.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i341, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i
  %.pre37.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i to i64
  %.pre.i.i.i342 = load ptr, ptr %i.tp, align 8, !tbaa !12
  br label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i, %bb.aj
  %i.tw = phi ptr [ %.pre.i.i.i342, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i ], [ %i.tq, %bb.aj ]
  %.pre-phi.i8.i.i.i.i = phi i64 [ %.pre37.i.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i ], [ %i.tu, %bb.aj ]
  %i.tx = load ptr, ptr %7, align 8, !tbaa !12
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %.pre-phi.i8.i.i.i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tw, ptr align 8 %i.tx, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i
  store i32 %i.tt, ptr %i.tr, align 8, !tbaa !14
  br label %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i

_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i: ; preds = %.sink.split.i.i.i.i.i, %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i358
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 16), ptr %i.sx, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 72), ptr %i.tb, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 128), ptr %i.tn, align 8, !tbaa !113
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sx, i64 224
  store i32 44, ptr %i.ty, align 8, !tbaa !144
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sx, i64 136
  store ptr null, ptr %i.tz, align 8, !tbaa !55
  %i.ua = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i338 = icmp eq ptr %i.ua, null
  br i1 %.not.i.i338, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i
  %.sroa.0.0.copyload.i.i339 = load ptr, ptr %i.ih, align 8 ; 3 uses
  store ptr %i.ua, ptr %i.tl, align 8, !tbaa !151
  %i.ub = load ptr, ptr %.sroa.0.0.copyload.i.i339, align 8, !tbaa !286 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  store ptr %.sroa.0.0.copyload.i.i339, ptr %i.uc, align 8, !tbaa !50
  store ptr %i.ub, ptr %i.sz, align 8, !tbaa !286
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store ptr %i.sz, ptr %i.ud, align 8, !tbaa !50
  store ptr %i.sz, ptr %.sroa.0.0.copyload.i.i339, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i

_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i: ; preds = %bb.ak, %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i
  %i.ue = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.iv
  br i1 %i.uf, label %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i
  call void @free(ptr noundef %i.ue) #25
  br label %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit

_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit: ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i
  %.0476 = phi ptr [ %i.tn, %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit ], [ %i.sk, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #25
  store i8 10, ptr %85, align 1, !tbaa !152
  store i16 0, ptr %i.iy, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, i8 0, i64 48, i1 false)
  store ptr %i.iz, ptr %86, align 8, !tbaa !12
  store i32 0, ptr %i.ja, align 8, !tbaa !14
  store i32 3, ptr %i.jb, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #25
  store i16 257, ptr %i.jc, align 8
  %i.ug = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 6 uses
  call void @_ZN4llvm13VPInstructionC1EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.ug, i32 noundef 81, ptr nonnull %i.z, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %85, ptr noundef nonnull align 8 dereferenceable(64) %86, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %87, ptr noundef null) #25
  %i.uh = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i99.i = icmp eq ptr %i.uh, null
  br i1 %.not.i.i99.i, label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.0.0.copyload.i.i100.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 72
  store ptr %i.uh, ptr %i.ui, align 8, !tbaa !151
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 16 ; 3 uses
  %i.uk = load ptr, ptr %.sroa.0.0.copyload.i.i100.i, align 8, !tbaa !286 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 24
  store ptr %.sroa.0.0.copyload.i.i100.i, ptr %i.ul, align 8, !tbaa !50
  store ptr %i.uk, ptr %i.uj, align 8, !tbaa !286
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  store ptr %i.uj, ptr %i.um, align 8, !tbaa !50
  store ptr %i.uj, ptr %.sroa.0.0.copyload.i.i100.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit.i

_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit.i: ; preds = %bb.an, %bb.am
  %i.un = getelementptr inbounds nuw i8, ptr %i.ug, i64 136
  store ptr null, ptr %i.un, align 8, !tbaa !55
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ug, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #25
  %i.up = load ptr, ptr %86, align 8, !tbaa !12   ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.iz
  br i1 %i.uq, label %_ZN4llvm12VPIRMetadataD2Ev.exit101.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit.i
  call void @free(ptr noundef %i.up) #25
  br label %_ZN4llvm12VPIRMetadataD2Ev.exit101.i

_ZN4llvm12VPIRMetadataD2Ev.exit101.i:             ; preds = %bb.ao, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #25
  store i8 10, ptr %88, align 1, !tbaa !152
  store i16 0, ptr %i.jd, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.je, i8 0, i64 48, i1 false)
  store ptr %i.je, ptr %89, align 8, !tbaa !12
  store i32 0, ptr %i.jf, align 8, !tbaa !14
  store i32 3, ptr %i.jg, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #25
  store i16 257, ptr %i.jh, align 8
  %i.ur = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 6 uses
  call void @_ZN4llvm13VPInstructionC1EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.ur, i32 noundef 81, ptr nonnull %i.aa, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %88, ptr noundef nonnull align 8 dereferenceable(64) %89, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %90, ptr noundef null) #25
  %i.us = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i102.i = icmp eq ptr %i.us, null
  br i1 %.not.i.i102.i, label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit104.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm12VPIRMetadataD2Ev.exit101.i
  %.sroa.0.0.copyload.i.i103.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 72
  store ptr %i.us, ptr %i.ut, align 8, !tbaa !151
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 16 ; 3 uses
  %i.uv = load ptr, ptr %.sroa.0.0.copyload.i.i103.i, align 8, !tbaa !286 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  store ptr %.sroa.0.0.copyload.i.i103.i, ptr %i.uw, align 8, !tbaa !50
  store ptr %i.uv, ptr %i.uu, align 8, !tbaa !286
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store ptr %i.uu, ptr %i.ux, align 8, !tbaa !50
  store ptr %i.uu, ptr %.sroa.0.0.copyload.i.i103.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit104.i

_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit104.i: ; preds = %bb.ap, %_ZN4llvm12VPIRMetadataD2Ev.exit101.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ur, i64 136
  store ptr null, ptr %i.uy, align 8, !tbaa !55
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ur, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #25
  %i.va = load ptr, ptr %89, align 8, !tbaa !12   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.je
  br i1 %i.vb, label %_ZN4llvm12VPIRMetadataD2Ev.exit105.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit104.i
  call void @free(ptr noundef %i.va) #25
  br label %_ZN4llvm12VPIRMetadataD2Ev.exit105.i

_ZN4llvm12VPIRMetadataD2Ev.exit105.i:             ; preds = %bb.aq, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEEPNS_11InstructionERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE.exit104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #25
  store ptr %.0476, ptr %i.ab, align 8, !tbaa !111
  store ptr %i.uz, ptr %i.ji, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #25
  store i16 257, ptr %i.jj, align 8
  %i.vc = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jk, i8 0, i64 48, i1 false)
  store ptr %i.jk, ptr %73, align 8, !tbaa !12
  store i32 0, ptr %i.jl, align 8, !tbaa !14
  store i32 3, ptr %i.jm, align 4, !tbaa !15
  call void @_ZN4llvm13VPInstructionC1EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.vc, i32 noundef %.084.i, ptr nonnull %i.ab, i64 2, ptr noundef nonnull align 1 dereferenceable(3) %79, ptr noundef nonnull align 8 dereferenceable(64) %73, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %91, ptr noundef null) #25
  %i.vd = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i107.i = icmp eq ptr %i.vd, null
  br i1 %.not.i.i107.i, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm12VPIRMetadataD2Ev.exit105.i
  %.sroa.0.0.copyload.i.i108.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 72
  store ptr %i.vd, ptr %i.ve, align 8, !tbaa !151
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 16 ; 3 uses
  %i.vg = load ptr, ptr %.sroa.0.0.copyload.i.i108.i, align 8, !tbaa !286 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 24
  store ptr %.sroa.0.0.copyload.i.i108.i, ptr %i.vh, align 8, !tbaa !50
  store ptr %i.vg, ptr %i.vf, align 8, !tbaa !286
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store ptr %i.vf, ptr %i.vi, align 8, !tbaa !50
  store ptr %i.vf, ptr %.sroa.0.0.copyload.i.i108.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i.i

_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i.i: ; preds = %bb.ar, %_ZN4llvm12VPIRMetadataD2Ev.exit105.i
  %i.vj = load ptr, ptr %73, align 8, !tbaa !12   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.jk
  br i1 %i.vk, label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i.i
  call void @free(ptr noundef %i.vj) #25
  br label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i

_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i: ; preds = %bb.as, %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vc, i64 96
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #25
  store ptr %i.uo, ptr %i.ac, align 8, !tbaa !111
  store ptr %i.vl, ptr %i.jn, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #25
  store i8 1, ptr %i.jp, align 1, !tbaa !109
  store ptr @.str.42, ptr %92, align 8, !tbaa !110
  store i8 3, ptr %i.jo, align 8, !tbaa !106
  %i.vm = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jq, i8 0, i64 48, i1 false)
  store ptr %i.jq, ptr %72, align 8, !tbaa !12
  store i32 0, ptr %i.jr, align 8, !tbaa !14
  store i32 3, ptr %i.js, align 4, !tbaa !15
  call void @_ZN4llvm13VPInstructionC1EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.vm, i32 noundef %.083.i, ptr nonnull %i.ac, i64 2, ptr noundef nonnull align 1 dereferenceable(3) %79, ptr noundef nonnull align 8 dereferenceable(64) %72, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %92, ptr noundef null) #25
  %i.vn = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i110.i = icmp eq ptr %i.vn, null
  br i1 %.not.i.i110.i, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i112.i, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i
  %.sroa.0.0.copyload.i.i111.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 72
  store ptr %i.vn, ptr %i.vo, align 8, !tbaa !151
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 16 ; 3 uses
  %i.vq = load ptr, ptr %.sroa.0.0.copyload.i.i111.i, align 8, !tbaa !286 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  store ptr %.sroa.0.0.copyload.i.i111.i, ptr %i.vr, align 8, !tbaa !50
  store ptr %i.vq, ptr %i.vp, align 8, !tbaa !286
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store ptr %i.vp, ptr %i.vs, align 8, !tbaa !50
  store ptr %i.vp, ptr %.sroa.0.0.copyload.i.i111.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i112.i

_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i112.i: ; preds = %bb.at, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit.i
  %i.vt = load ptr, ptr %72, align 8, !tbaa !12   ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.jq
  br i1 %i.vu, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i112.i
  call void @free(ptr noundef %i.vt) #25
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i: ; preds = %bb.au, %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i112.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vm, i64 96 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #25
  %i.vw = load ptr, ptr %i.pq, align 8, !tbaa !151 ; 2 uses
  %.sroa.0.0.copyload.i114.i = load ptr, ptr %i.qa, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #25
  store i8 1, ptr %i.ju, align 1, !tbaa !109
  store ptr @.str.61, ptr %93, align 8, !tbaa !110
  store i8 3, ptr %i.jt, align 8, !tbaa !106
  %i.vx = call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #26 ; 18 uses
  %i.vy = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.vv) #25
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vz, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm5VPDefE, i64 16), ptr %i.vx, align 8, !tbaa !113
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  store i64 0, ptr %i.wa, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vx, i64 32 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm6VPUserE, i64 16), ptr %i.wb, align 8, !tbaa !113
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vx, i64 40
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 56 ; 2 uses
  store ptr %i.wd, ptr %i.wc, align 8, !tbaa !12
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 48
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vx, i64 52
  store i32 2, ptr %i.wf, align 4, !tbaa !15
  store ptr %i.vv, ptr %i.wd, align 8
  store i32 1, ptr %i.we, align 8, !tbaa !14
  %130 = getelementptr inbounds nuw i8, ptr %i.vm, i64 112 ; 2 uses
  %.phi.trans.insert484 = getelementptr inbounds nuw i8, ptr %i.vm, i64 120 ; 3 uses
  %.pre485 = load i32, ptr %.phi.trans.insert484, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert486 = getelementptr inbounds nuw i8, ptr %i.vm, i64 124
  %.pre487 = load i32, ptr %.phi.trans.insert486, align 4, !tbaa !15
  %.not.i.i.i.i.i.i = icmp ult i32 %.pre485, %.pre487
  br i1 %.not.i.i.i.i.i.i, label %bb.aw, label %bb.av, !prof !150

bb.av:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %130, ptr noundef nonnull align 8 dereferenceable(40) %i.wb)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i

bb.aw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i
  %i.wg = zext i32 %.pre485 to i64
  %i.wh = load ptr, ptr %130, align 8, !tbaa !12
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.wg
  store ptr %i.wb, ptr %i.wi, align 1
  %i.wj = load i32, ptr %.phi.trans.insert484, align 8, !tbaa !14
  %i.wk = add i32 %i.wj, 1
  store i32 %i.wk, ptr %.phi.trans.insert484, align 8, !tbaa !14
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i: ; preds = %bb.aw, %bb.av
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vx, i64 72 ; 2 uses
  store ptr null, ptr %i.wl, align 8, !tbaa !151
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vx, i64 80
  store ptr %.sroa.0.0.copyload.i114.i, ptr %i.wm, align 8, !tbaa !105
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vx, i64 88
  store i8 27, ptr %i.wn, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 16), ptr %i.vx, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 72), ptr %i.wb, align 8, !tbaa !113
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vx, i64 96 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 128), ptr %i.wo, align 8, !tbaa !113
  call void @_ZN4llvm16VPSingleDefValueC2EPNS_17VPSingleDefRecipeEPNS_5ValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %i.wo, ptr noundef nonnull align 8 dereferenceable(192) %i.vx, ptr noundef null, ptr noundef %i.vy) #25
  %i.wp = getelementptr inbounds nuw i8, ptr %i.vx, i64 152 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm16VPWidenPHIRecipeE, i64 16), ptr %i.vx, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm16VPWidenPHIRecipeE, i64 80), ptr %i.wb, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm16VPWidenPHIRecipeE, i64 136), ptr %i.wo, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm16VPWidenPHIRecipeE, i64 168), ptr %i.wp, align 8, !tbaa !113
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vx, i64 160
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.wq, ptr noundef nonnull align 8 dereferenceable(34) %93) #25
  %.not.i.i115.i = icmp eq ptr %i.vw, null
  br i1 %.not.i.i115.i, label %_ZN4llvm9VPBuilder14createWidenPhiENS_8ArrayRefIPNS_7VPValueEEENS_8DebugLocERKNS_5TwineE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i
  store ptr %i.vw, ptr %i.wl, align 8, !tbaa !151
  %i.wr = load ptr, ptr %.sroa.0394.0454, align 8, !tbaa !286 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  store ptr %.sroa.0394.0454, ptr %i.ws, align 8, !tbaa !50
  store ptr %i.wr, ptr %i.vz, align 8, !tbaa !286
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %i.vz, ptr %i.wt, align 8, !tbaa !50
  store ptr %i.vz, ptr %.sroa.0394.0454, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder14createWidenPhiENS_8ArrayRefIPNS_7VPValueEEENS_8DebugLocERKNS_5TwineE.exit.i

_ZN4llvm9VPBuilder14createWidenPhiENS_8ArrayRefIPNS_7VPValueEEENS_8DebugLocERKNS_5TwineE.exit.i: ; preds = %bb.ax, %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #25
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0394.0454, i64 32
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !14
  %i.ww = icmp eq i32 %i.wv, 5
  br i1 %i.ww, label %_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.i, label %_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.thread.i

_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.i: ; preds = %_ZN4llvm9VPBuilder14createWidenPhiENS_8ArrayRefIPNS_7VPValueEEENS_8DebugLocERKNS_5TwineE.exit.i
  %i.wx = load ptr, ptr %i.pt, align 8, !tbaa !12 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %i.wz, null
  br i1 %.not.i, label %_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.thread.i, label %_ZN4llvm29VPWidenIntOrFpInductionRecipe26getLastUnrolledPartOperandEv.exit.i

_ZN4llvm29VPWidenIntOrFpInductionRecipe26getLastUnrolledPartOperandEv.exit.i: ; preds = %_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.i
  store ptr %i.wz, ptr %i.ad, align 8, !tbaa !111
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 32
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !111
  br label %bb.bi

_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.thread.i: ; preds = %_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.i, %_ZN4llvm9VPBuilder14createWidenPhiENS_8ArrayRefIPNS_7VPValueEEENS_8DebugLocERKNS_5TwineE.exit.i
  %i.xc = call noundef ptr @_ZN4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.pz) #25 ; 3 uses
  %.not89.i = icmp eq ptr %i.xc, null
  br i1 %.not89.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.thread.i
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 72 ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !151
  %i.xf = call noundef ptr @_ZN4llvm12VPBasicBlock22getEnclosingLoopRegionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.xe) #25
  %.not90.i = icmp eq ptr %i.xf, null
  br i1 %.not90.i, label %bb.az, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %bb.ay
  %i.xg = load ptr, ptr %i.xd, align 8, !tbaa !151
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xc, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !50
  store ptr %i.xg, ptr %80, align 8, !tbaa !391
  store ptr %i.xi, ptr %i.ih, align 8
  br label %bb.az

bb.az:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, %bb.ay, %_ZNK4llvm29VPWidenIntOrFpInductionRecipe15getSplatVFValueEv.exit.thread.i
  %i.xj = load i32, ptr %i.su, align 8            ; 2 uses
  %trunc.i.i117.i = trunc i32 %i.xj to i8
  switch i8 %trunc.i.i117.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.i [
    i8 3, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i
    i8 2, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i
    i8 0, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i
    i8 1, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i
    i8 5, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit120.i:    ; preds = %bb.az
  %i.xk = and i32 %i.xj, 253
  %spec.select.i119.i = icmp eq i32 %i.xk, 4
  br i1 %spec.select.i119.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i, label %bb.bc

_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i: ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.i, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jv, i8 0, i64 48, i1 false)
  store ptr %i.jv, ptr %94, align 8, !tbaa !12
  store i32 0, ptr %i.jw, align 8, !tbaa !14
  store i32 3, ptr %i.jx, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.pz, ptr %i.w, align 8, !tbaa !111
  %i.xl = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #25
  %i.xm = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef 44, ptr noundef null) #25
  store i24 %i.xm, ptr %70, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #25
  %i.xn = ptrtoint ptr %.sroa.0.0.copyload.i91.i to i64
  store i16 257, ptr %i.jy, align 8
  call void @_ZN4llvm13VPInstructionC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.xl, i32 noundef 44, ptr nonnull %i.w, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %70, ptr noundef nonnull align 8 dereferenceable(64) %94, i64 %i.xn, ptr noundef nonnull align 8 dereferenceable(34) %71, ptr noundef nonnull %.085.i) #25
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 16), ptr %i.xl, align 8, !tbaa !113
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xl, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 96), ptr %i.xo, align 8, !tbaa !113
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 96 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 152), ptr %i.xp, align 8, !tbaa !113
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xl, i64 136
  store ptr null, ptr %i.xq, align 8, !tbaa !55
  %i.xr = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i121.i = icmp eq ptr %i.xr, null
  br i1 %.not.i.i121.i, label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit124.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i
  %.sroa.0.0.copyload.i.i122.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xl, i64 72
  store ptr %i.xr, ptr %i.xs, align 8, !tbaa !151
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 3 uses
  %i.xu = load ptr, ptr %.sroa.0.0.copyload.i.i122.i, align 8, !tbaa !286 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xl, i64 24
  store ptr %.sroa.0.0.copyload.i.i122.i, ptr %i.xv, align 8, !tbaa !50
  store ptr %i.xu, ptr %i.xt, align 8, !tbaa !286
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store ptr %i.xt, ptr %i.xw, align 8, !tbaa !50
  store ptr %i.xt, ptr %.sroa.0.0.copyload.i.i122.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit124.i

_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit124.i: ; preds = %bb.ba, %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.xx = load ptr, ptr %94, align 8, !tbaa !12   ; 2 uses
  %i.xy = icmp eq ptr %i.xx, %i.jv
  br i1 %i.xy, label %_ZN4llvm12VPIRMetadataD2Ev.exit125.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit124.i
  call void @free(ptr noundef %i.xx) #25
  br label %_ZN4llvm12VPIRMetadataD2Ev.exit125.i

_ZN4llvm12VPIRMetadataD2Ev.exit125.i:             ; preds = %bb.bb, %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #25
  br label %bb.bd

bb.bc:                                            ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit120.i
  %i.xz = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.pz) #25
  %i.ya = call noundef ptr @_ZN4llvm9VPBuilder23createScalarZExtOrTruncEPNS_7VPValueEPNS_4TypeES4_NS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull %i.pz, ptr noundef nonnull %.085.i, ptr noundef %i.xz, ptr %.sroa.0.0.copyload.i91.i)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN4llvm12VPIRMetadataD2Ev.exit125.i
  %.0.i = phi ptr [ %i.xp, %_ZN4llvm12VPIRMetadataD2Ev.exit125.i ], [ %i.ya, %bb.bc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #25
  %i.yb = load ptr, ptr %i.aa, align 8, !tbaa !111
  store ptr %i.yb, ptr %i.ae, align 8, !tbaa !111
  store ptr %.0.i, ptr %i.jz, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #25
  store i16 257, ptr %i.ka, align 8
  %i.yc = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #26 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kb, i8 0, i64 48, i1 false)
  store ptr %i.kb, ptr %69, align 8, !tbaa !12
  store i32 0, ptr %i.kc, align 8, !tbaa !14
  store i32 3, ptr %i.kd, align 4, !tbaa !15
  call void @_ZN4llvm13VPInstructionC1EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.yc, i32 noundef %.084.i, ptr nonnull %i.ae, i64 2, ptr noundef nonnull align 1 dereferenceable(3) %79, ptr noundef nonnull align 8 dereferenceable(64) %69, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %95, ptr noundef null) #25
  %i.yd = load ptr, ptr %80, align 8, !tbaa !391  ; 2 uses
  %.not.i.i127.i = icmp eq ptr %i.yd, null
  br i1 %.not.i.i127.i, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i129.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.sroa.0.0.copyload.i.i128.i = load ptr, ptr %i.ih, align 8 ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 72
  store ptr %i.yd, ptr %i.ye, align 8, !tbaa !151
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 16 ; 3 uses
  %i.yg = load ptr, ptr %.sroa.0.0.copyload.i.i128.i, align 8, !tbaa !286 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 24
  store ptr %.sroa.0.0.copyload.i.i128.i, ptr %i.yh, align 8, !tbaa !50
  store ptr %i.yg, ptr %i.yf, align 8, !tbaa !286
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  store ptr %i.yf, ptr %i.yi, align 8, !tbaa !50
  store ptr %i.yf, ptr %.sroa.0.0.copyload.i.i128.i, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i129.i

_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i129.i: ; preds = %bb.be, %bb.bd
  %i.yj = load ptr, ptr %69, align 8, !tbaa !12   ; 2 uses
  %i.yk = icmp eq ptr %i.yj, %i.kb
  br i1 %i.yk, label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit130.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i129.i
  call void @free(ptr noundef %i.yj) #25
  br label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit130.i

_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit130.i: ; preds = %bb.bf, %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i129.i
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yc, i64 96
  store ptr %i.yl, ptr %i.ad, align 8, !tbaa !111
end_hunk_2
begin_hunk_3_@_ZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeE:bb.a
  br i1 %i.sf, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit40.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit40.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit40.i.i.i.i.i.i", %bb.bk
  %i.sg = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.bl

bb.bl:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit40.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.sg, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit40.thread.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.1.val.i.i.i.i.i.i, i64 56
  %i.si = load i8, ptr %i.sh, align 8, !tbaa !68
  %.not.i.i41.i.i.i.i.i.i = icmp eq i8 %i.si, 10
  br i1 %.not.i.i41.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.i.i.i.i.i.i": ; preds = %bb.bl
  %i.sj = getelementptr inbounds nuw i8, ptr %.1.val.i.i.i.i.i.i, i64 104
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !55
  %i.sl = load i8, ptr %i.sk, align 8, !tbaa !63
  %i.sm = icmp eq i8 %i.sl, 64
  br i1 %i.sm, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.thread.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.i.i.i.i.i.i", %bb.bl
  %i.sn = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.thread.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.sn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.thread.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !331 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.2.val.i.i.i.i.i.i, i64 56
  %i.sp = load i8, ptr %i.so, align 8, !tbaa !68
  %.not.i.i43.i.i.i.i.i.i = icmp eq i8 %i.sp, 10
  br i1 %.not.i.i43.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit44.i.i.i.i.i.i", label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit44.i.i.i.i.i.i": ; preds = %bb.bm
  %i.sq = getelementptr inbounds nuw i8, ptr %.2.val.i.i.i.i.i.i, i64 104
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !55
  %i.ss = load i8, ptr %i.sr, align 8, !tbaa !63
  %i.st = icmp eq i8 %i.ss, 64
  br i1 %i.st, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit", label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit34.i.i.i.i.i.i"
  %i.su = getelementptr inbounds nuw i8, ptr %.02955.i.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit1028": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit36.i.i.i.i.i.i"
  %i.sv = getelementptr inbounds nuw i8, ptr %.02955.i.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit1030": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit38.i.i.i.i.i.i"
  %i.sw = getelementptr inbounds nuw i8, ptr %.02955.i.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit"

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit.i.i.i.i.i.i", %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit1028", %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit1030", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit40.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit44.i.i.i.i.i.i"
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit42.i.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit40.i.i.i.i.i.i" ], [ %.2.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit44.i.i.i.i.i.i" ], [ %i.sw, %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit1030" ], [ %i.sv, %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit1028" ], [ %i.su, %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02955.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit.i.i.i.i.i.i" ]
  %.not647 = icmp eq ptr %i.qs, %.028.i.i.i.i.i.i
  br i1 %.not647, label %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.thread", label %.critedge.sink.split

"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.thread": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm15VPlanTransforms23createPartialReductionsERNS2_5VPlanERNS2_13VPCostContextERNS2_7VFRangeEE3$_4EclIPPNS2_6VPUserEEEbT_.exit44.i.i.i.i.i.i", %bb.bm, %._crit_edge.i.i.i.i.i.i, %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit", %bb.bi
  %i.sx = getelementptr inbounds nuw i8, ptr %.084697, i64 72 ; 2 uses
  %.not94 = icmp eq ptr %i.sx, %i.oc
  br i1 %.not94, label %.critedge, label %.lr.ph699

.critedge.sink.split:                             ; preds = %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit", %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_3EEbOT_T0_.exit", %"_ZN4llvm6all_ofINS_14iterator_rangeIPPNS_7VPValueEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_1EEbOT_T0_.exit"
  store i32 0, ptr %i.oa, align 8, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %"_ZN4llvm6any_ofINS_14iterator_rangeIPPNS_6VPUserEEEZNS_15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeEE3$_4EEbOT_T0_.exit.thread", %.critedge.sink.split, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  store ptr %i.nz, ptr %53, align 8, !tbaa !2455
  store ptr %52, ptr %.sroa.4.0..sroa_idx582, align 8, !tbaa !381
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbN4llvm12ElementCountEEZNS0_15VPlanTransforms23createPartialReductionsERNS0_5VPlanERNS0_13VPCostContextERNS0_7VFRangeEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbN4llvm12ElementCountEEZNS0_15VPlanTransforms23createPartialReductionsERNS0_5VPlanERNS0_13VPCostContextERNS0_7VFRangeEE3$_0E9_M_invokeERKSt9_Any_dataOS1_">, ptr %i.gg, align 8, !tbaa !381
  %i.sy = call noundef zeroext i1 @_ZN4llvm24LoopVectorizationPlanner24getDecisionAndClampRangeERKSt8functionIFbNS_12ElementCountEEERNS_7VFRangeE(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 4 dereferenceable(16) %2) #25
  %i.sz = load ptr, ptr %i.gg, align 8, !tbaa !1907 ; 2 uses
  %.not.i178 = icmp eq ptr %i.sz, null
  br i1 %.not.i178, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %.critedge
  %i.ta = call noundef zeroext i1 %i.sz(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(32) %53, i32 noundef 3) #25, !inline_history !2322 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.critedge, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  br i1 %i.sy, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  store i32 0, ptr %i.oa, align 8, !tbaa !14
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNSt14_Function_baseD2Ev.exit
  %i.tb = getelementptr inbounds nuw i8, ptr %.085701, i64 96 ; 2 uses
  %.not91 = icmp eq ptr %i.tb, %i.gf
  br i1 %.not91, label %._crit_edge705, label %bb.ap

._crit_edge747:                                   ; preds = %._crit_edge742, %._crit_edge671, %._crit_edge705
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  %i.tc = getelementptr inbounds nuw i8, ptr %51, i64 20
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !2483 ; 2 uses
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge747
  %i.tf = load ptr, ptr %51, align 8, !tbaa !2474
  %i.tg = zext i32 %i.td to i64                   ; 2 uses
  %i.th = shl nuw nsw i64 %i.tg, 4
  %i.ti = add nuw nsw i64 %i.tg, 31
  %i.tj = lshr i64 %i.ti, 3
  %i.tk = and i64 %i.tj, 1073741820
  %i.tl = add nuw nsw i64 %i.tk, %i.th
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.tf, i64 noundef %i.tl, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %._crit_edge747, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  %i.tm = load i8, ptr %i.fz, align 8, !tbaa !210, !range !213, !noundef !214
  %i.tn = trunc nuw i8 %i.tm to i1
  br i1 %i.tn, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit
  %i.to = load ptr, ptr %50, align 8, !tbaa !215
  call void @free(ptr noundef %i.to) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm8DenseMapIPNS_17VPSingleDefRecipeEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #25
  %i.tp = load i8, ptr %i.fv, align 8, !tbaa !210, !range !213, !noundef !214
  %i.tq = trunc nuw i8 %i.tp to i1
  br i1 %i.tq, label %bb.kk, label %bb.bs

bb.bs:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  %i.tr = load ptr, ptr %49, align 8, !tbaa !215
  call void @free(ptr noundef %i.tr) #25
  br label %bb.kk

bb.bt:                                            ; preds = %.lr.ph746, %._crit_edge742
  %.083744 = phi ptr [ %.val112.pre, %.lr.ph746 ], [ %i.tw, %._crit_edge742 ] ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.083744, i64 8
  %.val99 = load ptr, ptr %i.ts, align 8, !tbaa !12 ; 2 uses
  %i.tt = getelementptr i8, ptr %.083744, i64 16
  %.val102 = load i32, ptr %i.tt, align 8, !tbaa !14 ; 2 uses
  %i.tu = zext i32 %.val102 to i64
  %.idx753 = mul nuw nsw i64 %i.tu, 72
  %i.tv = getelementptr inbounds nuw i8, ptr %.val99, i64 %.idx753
  %.not93738 = icmp eq i32 %.val102, 0
  br i1 %.not93738, label %._crit_edge742, label %.lr.ph741

._crit_edge742:                                   ; preds = %_ZN12_GLOBAL__N_127transformToPartialReductionERKNS_23VPPartialReductionChainERN4llvm5VPlanEPNS3_20VPReductionPHIRecipeE.exit, %bb.bt
  %i.tw = getelementptr inbounds nuw i8, ptr %.083744, i64 96 ; 2 uses
  %.not92 = icmp eq ptr %i.tw, %i.lc
  br i1 %.not92, label %._crit_edge747, label %bb.bt

.lr.ph741:                                        ; preds = %bb.bt, %_ZN12_GLOBAL__N_127transformToPartialReductionERKNS_23VPPartialReductionChainERN4llvm5VPlanEPNS3_20VPReductionPHIRecipeE.exit
  %.0739 = phi ptr [ %i.bvo, %_ZN12_GLOBAL__N_127transformToPartialReductionERKNS_23VPPartialReductionChainERN4llvm5VPlanEPNS3_20VPReductionPHIRecipeE.exit ], [ %.val99, %bb.bt ] ; 8 uses
  %i.tx = load ptr, ptr %.083744, align 8, !tbaa !2413 ; 15 uses
  %i.ty = load ptr, ptr %.0739, align 8, !tbaa !2429 ; 14 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.0739, i64 52
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !2435 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 40
  %i.uc = zext i32 %i.ua to i64
  %i.ud = load ptr, ptr %i.ub, align 8, !tbaa !12 ; 2 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.uc
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !111 ; 6 uses
  %i.ug = sub i32 1, %i.ua
  %i.uh = zext i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.uh
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !111 ; 32 uses
  %i.uk = icmp eq ptr %i.uj, null
  %i.ul = getelementptr inbounds i8, ptr %i.uj, i64 -96 ; 26 uses
  %i.um = select i1 %i.uk, ptr null, ptr %i.ul    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store i64 %i.ld, ptr %21, align 8, !tbaa !2494, !alias.scope !2496
  %i.un = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEENS0_10bind_apintEEELj18ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.um)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br i1 %i.un, label %bb.bu, label %bb.cv

bb.bu:                                            ; preds = %.lr.ph741
  %i.uo = getelementptr inbounds i8, ptr %i.uj, i64 -64 ; 9 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 40 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !12
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !111 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 128
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !144 ; 3 uses
  %i.uu = getelementptr inbounds i8, ptr %i.ur, i64 -56
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !12
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !111
  %i.ux = call noundef ptr @_ZNK4llvm7VPValue13getScalarTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.uw) #25 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !14
  %i.va = icmp eq i32 %i.uz, 1
  br i1 %i.va, label %bb.bv, label %_ZN12_GLOBAL__N_134optimizeExtendsForPartialReductionEPN4llvm17VPSingleDefRecipeE.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.vb = load ptr, ptr %i.i, align 8, !tbaa !641
  %i.vc = call noundef i32 @_ZN4llvm19TargetTransformInfo29getPartialReductionExtendKindENS_11Instruction7CastOpsE(i32 noundef %i.ut) #25
  %i.vd = call noundef zeroext i1 @_ZN4llvm21canConstantBeExtendedEPKNS_5APIntEPNS_4TypeENS_19TargetTransformInfo26PartialReductionExtendKindE(ptr noundef %i.vb, ptr noundef %i.ux, i32 noundef %i.vc) #25
  br i1 %i.vd, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i577, label %_ZN12_GLOBAL__N_134optimizeExtendsForPartialReductionEPN4llvm17VPSingleDefRecipeE.exit.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i577: ; preds = %bb.bv
  %i.ve = getelementptr inbounds i8, ptr %i.uj, i64 -24
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !151 ; 3 uses
  %54 = getelementptr inbounds i8, ptr %i.uj, i64 -80 ; 6 uses
  %i.vg = load ptr, ptr %i.up, align 8, !tbaa !12
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !111 ; 4 uses
  %i.vj = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 26 uses
  %i.vk = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef 39, ptr noundef null) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.md, i8 0, i64 48, i1 false)
  store ptr %i.md, ptr %3, align 8, !tbaa !12
  store i32 0, ptr %i.me, align 8, !tbaa !14
  store i32 3, ptr %i.mf, align 4, !tbaa !15
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vl, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm5VPDefE, i64 16), ptr %i.vj, align 8, !tbaa !113
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  store i64 0, ptr %i.vm, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 32 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm6VPUserE, i64 16), ptr %i.vn, align 8, !tbaa !113
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vj, i64 40
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 56 ; 2 uses
  store ptr %i.vp, ptr %i.vo, align 8, !tbaa !12
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 48
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vj, i64 52
  store i32 2, ptr %i.vr, align 4, !tbaa !15
  store ptr %i.vi, ptr %i.vp, align 8
  store i32 1, ptr %i.vq, align 8, !tbaa !14
  %55 = getelementptr inbounds nuw i8, ptr %i.vi, i64 16 ; 2 uses
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %i.vi, i64 24 ; 3 uses
  %.pre806.a = load i32, ptr %.phi.trans.insert.a, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert807.a = getelementptr inbounds nuw i8, ptr %i.vi, i64 28
  %.pre808.a = load i32, ptr %.phi.trans.insert807.a, align 4, !tbaa !15
  %.not.i.i.i.i.i.i578 = icmp ult i32 %.pre806.a, %.pre808.a
  br i1 %.not.i.i.i.i.i.i578, label %bb.bx, label %bb.bw, !prof !150

bb.bw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i577
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(40) %i.vn)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i579

bb.bx:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i577
  %i.vs = zext i32 %.pre806.a to i64
  %i.vt = load ptr, ptr %55, align 8, !tbaa !12
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %i.vs
  store ptr %i.vn, ptr %i.vu, align 1
  %i.vv = load i32, ptr %.phi.trans.insert.a, align 8, !tbaa !14
  %i.vw = add i32 %i.vv, 1
  store i32 %i.vw, ptr %.phi.trans.insert.a, align 8, !tbaa !14
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i579

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i579: ; preds = %bb.bx, %bb.bw
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vj, i64 72 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vj, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vx, i8 0, i64 16, i1 false)
  store i8 16, ptr %i.vy, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 16), ptr %i.vj, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 72), ptr %i.vn, align 8, !tbaa !113
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vj, i64 96 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 128), ptr %i.vz, align 8, !tbaa !113
  call void @_ZN4llvm16VPSingleDefValueC2EPNS_17VPSingleDefRecipeEPNS_5ValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %i.vz, ptr noundef nonnull align 8 dereferenceable(228) %i.vj, ptr noundef null, ptr noundef %i.ux) #25
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vj, i64 152
  store i24 %i.vk, ptr %i.wa, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 16), ptr %i.vj, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 72), ptr %i.vn, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 128), ptr %i.vz, align 8, !tbaa !113
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vj, i64 160 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vj, i64 176 ; 3 uses
  store ptr %i.wc, ptr %i.wb, align 8, !tbaa !12
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vj, i64 168 ; 2 uses
  store i32 0, ptr %i.wd, align 8, !tbaa !14
  %i.we = getelementptr inbounds nuw i8, ptr %i.vj, i64 172
  store i32 3, ptr %i.we, align 4, !tbaa !15
  %i.wf = load i32, ptr %i.me, align 8, !tbaa !14 ; 4 uses
  %.not.i.i.i.i.i364 = icmp eq i32 %i.wf, 0
  br i1 %.not.i.i.i.i.i364, label %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i369, label %bb.by

bb.by:                                            ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i579
  %i.wg = zext i32 %i.wf to i64                   ; 2 uses
  %i.wh = icmp ugt i32 %i.wf, 3
  br i1 %i.wh, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i374, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i365

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i374: ; preds = %bb.by
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.wb, ptr noundef nonnull %i.wc, i64 noundef %i.wg, i64 noundef 16) #25
  %.pre.i.i.i.i.i375 = load i32, ptr %i.me, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i376 = icmp eq i32 %.pre.i.i.i.i.i375, 0
  br i1 %.not.i.i.i.i.i.i376, label %.sink.split.i.i.i.i.i368, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i377

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i377: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i374
  %.pre37.i.i.i.i.i378 = zext i32 %.pre.i.i.i.i.i375 to i64
  %.pre.i.i.i379 = load ptr, ptr %i.wb, align 8, !tbaa !12
  br label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i365

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i365: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i377, %bb.by
  %i.wi = phi ptr [ %.pre.i.i.i379, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i377 ], [ %i.wc, %bb.by ]
  %.pre-phi.i8.i.i.i.i366 = phi i64 [ %.pre37.i.i.i.i.i378, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i377 ], [ %i.wg, %bb.by ]
  %i.wj = load ptr, ptr %3, align 8, !tbaa !12
  %gepdiff.i.i.i.i.i367 = shl nuw nsw i64 %.pre-phi.i8.i.i.i.i366, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wi, ptr align 8 %i.wj, i64 %gepdiff.i.i.i.i.i367, i1 false)
  br label %.sink.split.i.i.i.i.i368

.sink.split.i.i.i.i.i368:                         ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i365, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i374
  store i32 %i.wf, ptr %i.wd, align 8, !tbaa !14
  br label %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i369

_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i369: ; preds = %.sink.split.i.i.i.i.i368, %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i579
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 16), ptr %i.vj, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 72), ptr %i.vn, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 128), ptr %i.vz, align 8, !tbaa !113
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vj, i64 224
  store i32 39, ptr %i.wk, align 8, !tbaa !144
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vj, i64 136
  store ptr null, ptr %i.wl, align 8, !tbaa !55
  %.not.i.i370 = icmp eq ptr %i.vf, null          ; 2 uses
  br i1 %.not.i.i370, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i372, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i369
  store ptr %i.vf, ptr %i.vx, align 8, !tbaa !151
  %i.wm = load ptr, ptr %54, align 8, !tbaa !286  ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vj, i64 24
  store ptr %54, ptr %i.wn, align 8, !tbaa !50
  store ptr %i.wm, ptr %i.vl, align 8, !tbaa !286
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store ptr %i.vl, ptr %i.wo, align 8, !tbaa !50
  store ptr %i.vl, ptr %54, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i372

_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i372: ; preds = %bb.bz, %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i369
  %i.wp = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.md
  br i1 %i.wq, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i569, label %bb.ca

bb.ca:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i372
  call void @free(ptr noundef %i.wp) #25
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i569

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i569: ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i372, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ur, i64 48
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !412
  %i.wt = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 26 uses
  %i.wu = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef %i.ut, ptr noundef null) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mg, i8 0, i64 48, i1 false)
  store ptr %i.mg, ptr %4, align 8, !tbaa !12
  store i32 0, ptr %i.mh, align 8, !tbaa !14
  store i32 3, ptr %i.mi, align 4, !tbaa !15
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wv, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm5VPDefE, i64 16), ptr %i.wt, align 8, !tbaa !113
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store i64 0, ptr %i.ww, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 32 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm6VPUserE, i64 16), ptr %i.wx, align 8, !tbaa !113
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 40
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 56 ; 2 uses
  store ptr %i.wz, ptr %i.wy, align 8, !tbaa !12
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wt, i64 48
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wt, i64 52
  store i32 2, ptr %i.xb, align 4, !tbaa !15
  store ptr %i.vz, ptr %i.wz, align 8
  store i32 1, ptr %i.xa, align 8, !tbaa !14
  %56 = getelementptr inbounds nuw i8, ptr %i.vj, i64 112 ; 2 uses
  %.phi.trans.insert809.a = getelementptr inbounds nuw i8, ptr %i.vj, i64 120 ; 3 uses
  %.pre810.a = load i32, ptr %.phi.trans.insert809.a, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert811.a = getelementptr inbounds nuw i8, ptr %i.vj, i64 124
  %.pre812.a = load i32, ptr %.phi.trans.insert811.a, align 4, !tbaa !15
  %.not.i.i.i.i.i.i570 = icmp ult i32 %.pre810.a, %.pre812.a
  br i1 %.not.i.i.i.i.i.i570, label %bb.cc, label %bb.cb, !prof !150

bb.cb:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i569
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef nonnull align 8 dereferenceable(40) %i.wx)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i571

bb.cc:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i569
  %i.xc = zext i32 %.pre810.a to i64
  %i.xd = load ptr, ptr %56, align 8, !tbaa !12
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.xc
  store ptr %i.wx, ptr %i.xe, align 1
  %i.xf = load i32, ptr %.phi.trans.insert809.a, align 8, !tbaa !14
  %i.xg = add i32 %i.xf, 1
  store i32 %i.xg, ptr %.phi.trans.insert809.a, align 8, !tbaa !14
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i571

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i571: ; preds = %bb.cc, %bb.cb
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wt, i64 72 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wt, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xh, i8 0, i64 16, i1 false)
  store i8 16, ptr %i.xi, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 16), ptr %i.wt, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 72), ptr %i.wx, align 8, !tbaa !113
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wt, i64 96 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 128), ptr %i.xj, align 8, !tbaa !113
  call void @_ZN4llvm16VPSingleDefValueC2EPNS_17VPSingleDefRecipeEPNS_5ValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %i.xj, ptr noundef nonnull align 8 dereferenceable(228) %i.wt, ptr noundef null, ptr noundef %i.ws) #25
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wt, i64 152
  store i24 %i.wu, ptr %i.xk, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 16), ptr %i.wt, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 72), ptr %i.wx, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 128), ptr %i.xj, align 8, !tbaa !113
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wt, i64 160 ; 3 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wt, i64 176 ; 3 uses
  store ptr %i.xm, ptr %i.xl, align 8, !tbaa !12
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wt, i64 168 ; 2 uses
  store i32 0, ptr %i.xn, align 8, !tbaa !14
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wt, i64 172
  store i32 3, ptr %i.xo, align 4, !tbaa !15
  %i.xp = load i32, ptr %i.mh, align 8, !tbaa !14 ; 4 uses
  %.not.i.i.i.i.i351 = icmp eq i32 %i.xp, 0
  br i1 %.not.i.i.i.i.i351, label %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i571
  %i.xq = zext i32 %i.xp to i64                   ; 2 uses
  %i.xr = icmp ugt i32 %i.xp, 3
  br i1 %i.xr, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i358, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i352

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i358: ; preds = %bb.cd
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.xl, ptr noundef nonnull %i.xm, i64 noundef %i.xq, i64 noundef 16) #25
  %.pre.i.i.i.i.i359 = load i32, ptr %i.mh, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i360 = icmp eq i32 %.pre.i.i.i.i.i359, 0
  br i1 %.not.i.i.i.i.i.i360, label %.sink.split.i.i.i.i.i355, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i361

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i361: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i358
  %.pre37.i.i.i.i.i362 = zext i32 %.pre.i.i.i.i.i359 to i64
  %.pre.i.i.i363 = load ptr, ptr %i.xl, align 8, !tbaa !12
  br label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i352

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i352: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i361, %bb.cd
  %i.xs = phi ptr [ %.pre.i.i.i363, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i361 ], [ %i.xm, %bb.cd ]
  %.pre-phi.i8.i.i.i.i353 = phi i64 [ %.pre37.i.i.i.i.i362, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i361 ], [ %i.xq, %bb.cd ]
  %i.xt = load ptr, ptr %4, align 8, !tbaa !12
  %gepdiff.i.i.i.i.i354 = shl nuw nsw i64 %.pre-phi.i8.i.i.i.i353, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xs, ptr align 8 %i.xt, i64 %gepdiff.i.i.i.i.i354, i1 false)
  br label %.sink.split.i.i.i.i.i355

.sink.split.i.i.i.i.i355:                         ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i352, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i358
  store i32 %i.xp, ptr %i.xn, align 8, !tbaa !14
  br label %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i

_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i: ; preds = %.sink.split.i.i.i.i.i355, %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i571
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 16), ptr %i.wt, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 72), ptr %i.wx, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPWidenCastRecipeE, i64 128), ptr %i.xj, align 8, !tbaa !113
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wt, i64 224
  store i32 %i.ut, ptr %i.xu, align 8, !tbaa !144
  %i.xv = getelementptr inbounds nuw i8, ptr %i.wt, i64 136
  store ptr null, ptr %i.xv, align 8, !tbaa !55
  br i1 %.not.i.i370, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i
  store ptr %i.vf, ptr %i.xh, align 8, !tbaa !151
  %i.xw = load ptr, ptr %54, align 8, !tbaa !286  ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  store ptr %54, ptr %i.xx, align 8, !tbaa !50
  store ptr %i.xw, ptr %i.wv, align 8, !tbaa !286
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  store ptr %i.wv, ptr %i.xy, align 8, !tbaa !50
  store ptr %i.wv, ptr %54, align 8, !tbaa !286
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i

_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i: ; preds = %bb.ce, %_ZN4llvm17VPWidenCastRecipeC2ENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeEPNS_8CastInstERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i
  %i.xz = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.mg
  br i1 %i.ya, label %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i
  call void @free(ptr noundef %i.xz) #25
  br label %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit

_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit: ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_17VPWidenCastRecipeEEEPT_S4_.exit.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.yb = getelementptr inbounds i8, ptr %i.uj, i64 -56 ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !12 ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !111 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !12 ; 5 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 24 ; 3 uses
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !14 ; 5 uses
  %i.yj = zext i32 %i.yi to i64                   ; 3 uses
  %.idx3.i.i.i324 = shl nuw nsw i64 %i.yj, 3      ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yg, i64 %.idx3.i.i.i324
  %i.yl = lshr i64 %i.yj, 2                       ; 2 uses
  %.not.i.i.i325 = icmp eq i64 %i.yl, 0
  br i1 %.not.i.i.i325, label %._crit_edge.i.i.i.i.i.i331, label %.lr.ph.i.i.i.i.i.i326

.lr.ph.i.i.i.i.i.i326:                            ; preds = %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit
  %i.ym = and i64 %.idx3.i.i.i324, 34359738336
  %scevgep.i.i.i.i.i.i327 = getelementptr i8, ptr %i.yg, i64 %i.ym
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %.lr.ph.i.i.i.i.i.i326
  %.047.i.i.i.i.i.i328 = phi i64 [ %i.yl, %.lr.ph.i.i.i.i.i.i326 ], [ %i.yz, %bb.ck ] ; 2 uses
  %.02946.i.i.i.i.i.i329 = phi ptr [ %i.yg, %.lr.ph.i.i.i.i.i.i326 ], [ %i.yy, %bb.ck ] ; 9 uses
  %i.yn = load ptr, ptr %.02946.i.i.i.i.i.i329, align 8, !tbaa !331
  %i.yo = icmp eq ptr %i.yn, %i.uo
  br i1 %i.yo, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.yp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i329, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !331
  %i.yr = icmp eq ptr %i.yq, %i.uo
  br i1 %i.yr, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ys = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i329, i64 16
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !331
  %i.yu = icmp eq ptr %i.yt, %i.uo
  br i1 %i.yu, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit1036, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.yv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i329, i64 24
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !331
  %i.yx = icmp eq ptr %i.yw, %i.uo
  br i1 %i.yx, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit1038, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.yy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i329, i64 32
  %i.yz = add nsw i64 %.047.i.i.i.i.i.i328, -1
  %i.za = icmp sgt i64 %.047.i.i.i.i.i.i328, 1
  br i1 %i.za, label %bb.cg, label %._crit_edge.loopexit.i.i.i.i.i.i330, !llvm.loop !512

._crit_edge.loopexit.i.i.i.i.i.i330:              ; preds = %bb.ck
  %i.zb = and i32 %i.yi, 3
  br label %._crit_edge.i.i.i.i.i.i331

._crit_edge.i.i.i.i.i.i331:                       ; preds = %._crit_edge.loopexit.i.i.i.i.i.i330, %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit
  %.pre-phi56.i.i.i.i.i.i332 = phi i32 [ %i.zb, %._crit_edge.loopexit.i.i.i.i.i.i330 ], [ %i.yi, %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit ]
  %.029.lcssa.i.i.i.i.i.i333 = phi ptr [ %scevgep.i.i.i.i.i.i327, %._crit_edge.loopexit.i.i.i.i.i.i330 ], [ %i.yg, %_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE.exit ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i332, label %bb.co [
    i32 3, label %bb.cl
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i345
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i334
  ]

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i.i.i331
  %i.zc = load ptr, ptr %.029.lcssa.i.i.i.i.i.i333, align 8, !tbaa !331
  %i.zd = icmp eq ptr %i.zc, %i.uo
  br i1 %i.zd, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ze = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i333, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i345

._crit_edge._crit_edge.i.i.i.i.i.i345:            ; preds = %bb.cm, %._crit_edge.i.i.i.i.i.i331
  %.1.i.i.i.i.i.i346 = phi ptr [ %i.ze, %bb.cm ], [ %.029.lcssa.i.i.i.i.i.i333, %._crit_edge.i.i.i.i.i.i331 ] ; 3 uses
  %i.zf = load ptr, ptr %.1.i.i.i.i.i.i346, align 8, !tbaa !331
  %i.zg = icmp eq ptr %i.zf, %i.uo
  br i1 %i.zg, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i345
  %i.zh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i346, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i334

._crit_edge._crit_edge52.i.i.i.i.i.i334:          ; preds = %bb.cn, %._crit_edge.i.i.i.i.i.i331
  %.2.i.i.i.i.i.i335 = phi ptr [ %i.zh, %bb.cn ], [ %.029.lcssa.i.i.i.i.i.i333, %._crit_edge.i.i.i.i.i.i331 ] ; 2 uses
  %i.zi = load ptr, ptr %.2.i.i.i.i.i.i335, align 8, !tbaa !331
  %i.zj = icmp eq ptr %i.zi, %i.uo
  br i1 %i.zj, label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336, label %bb.co

bb.co:                                            ; preds = %._crit_edge._crit_edge52.i.i.i.i.i.i334, %._crit_edge.i.i.i.i.i.i331
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336

_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit: ; preds = %bb.ch
  %i.zk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i329, i64 8
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336

_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit1036: ; preds = %bb.ci
  %i.zl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i329, i64 16
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336

_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit1038: ; preds = %bb.cj
  %i.zm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i329, i64 24
  br label %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336

_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336: ; preds = %bb.cg, %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit, %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit1036, %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit1038, %bb.co, %._crit_edge._crit_edge52.i.i.i.i.i.i334, %._crit_edge._crit_edge.i.i.i.i.i.i345, %bb.cl
  %.028.i.i.i.i.i.i337 = phi ptr [ %.1.i.i.i.i.i.i346, %._crit_edge._crit_edge.i.i.i.i.i.i345 ], [ %i.yk, %bb.co ], [ %.2.i.i.i.i.i.i335, %._crit_edge._crit_edge52.i.i.i.i.i.i334 ], [ %.029.lcssa.i.i.i.i.i.i333, %bb.cl ], [ %i.zm, %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit1038 ], [ %i.zk, %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit ], [ %i.zl, %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336.loopexit.split.loop.exit1036 ], [ %.02946.i.i.i.i.i.i329, %bb.cg ] ; 4 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.yj ; 2 uses
  %.not.i.i338 = icmp eq ptr %.028.i.i.i.i.i.i337, %i.zn
  br i1 %.not.i.i338, label %_ZN4llvm7VPValue10removeUserERNS_6VPUserE.exit.i341, label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336
  %i.zo = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i.i337, i64 8 ; 3 uses
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = ptrtoint ptr %i.zo to i64
  %i.zr = sub i64 %i.zp, %i.zq                    ; 3 uses
  %i.zs = icmp sgt i64 %i.zr, 8
  br i1 %i.zs, label %bb.cq, label %bb.cr, !prof !150

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.028.i.i.i.i.i.i337, ptr nonnull align 8 %i.zo, i64 %i.zr, i1 false)
  %.pre.i.i.i343 = load i32, ptr %i.yh, align 8, !tbaa !14
  %.pre.pre.i344 = load ptr, ptr %i.yb, align 8, !tbaa !12
  br label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE5eraseEPKS2_.exit.i.i339

bb.cr:                                            ; preds = %bb.cp
  %i.zt = icmp eq i64 %i.zr, 8
  br i1 %i.zt, label %bb.cs, label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE5eraseEPKS2_.exit.i.i339

bb.cs:                                            ; preds = %bb.cr
  %i.zu = load ptr, ptr %i.zo, align 8, !tbaa !331
  store ptr %i.zu, ptr %.028.i.i.i.i.i.i337, align 8, !tbaa !331
  br label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE5eraseEPKS2_.exit.i.i339

_ZN4llvm15SmallVectorImplIPNS_6VPUserEE5eraseEPKS2_.exit.i.i339: ; preds = %bb.cs, %bb.cr, %bb.cq
  %.pre.i340 = phi ptr [ %.pre.pre.i344, %bb.cq ], [ %i.yc, %bb.cr ], [ %i.yc, %bb.cs ]
  %i.zv = phi i32 [ %.pre.i.i.i343, %bb.cq ], [ %i.yi, %bb.cr ], [ %i.yi, %bb.cs ]
  %i.zw = add i32 %i.zv, -1
  store i32 %i.zw, ptr %i.yh, align 8, !tbaa !14
  br label %_ZN4llvm7VPValue10removeUserERNS_6VPUserE.exit.i341

_ZN4llvm7VPValue10removeUserERNS_6VPUserE.exit.i341: ; preds = %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE5eraseEPKS2_.exit.i.i339, %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336
  %i.zx = phi ptr [ %i.yc, %_ZN4llvm4findIRNS_11SmallVectorIPNS_6VPUserELj1EEES3_EEDaOT_RKT0_.exit.i.i336 ], [ %.pre.i340, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE5eraseEPKS2_.exit.i.i339 ]
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  store ptr %i.xj, ptr %i.zy, align 8, !tbaa !111
  %i.zz = getelementptr inbounds nuw i8, ptr %i.wt, i64 112 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.wt, i64 120 ; 3 uses
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !14 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.wt, i64 124
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !15
  %.not.i.i4.i342 = icmp ult i32 %i.aab, %i.aad
  br i1 %.not.i.i4.i342, label %bb.cu, label %bb.ct, !prof !150

bb.ct:                                            ; preds = %_ZN4llvm7VPValue10removeUserERNS_6VPUserE.exit.i341
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.zz, ptr noundef nonnull align 8 dereferenceable(40) %i.uo)
  br label %_ZN12_GLOBAL__N_134optimizeExtendsForPartialReductionEPN4llvm17VPSingleDefRecipeE.exit.i

bb.cu:                                            ; preds = %_ZN4llvm7VPValue10removeUserERNS_6VPUserE.exit.i341
  %i.aae = zext i32 %i.aab to i64
  %i.aaf = load ptr, ptr %i.zz, align 8, !tbaa !12
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %i.aae
  store ptr %i.uo, ptr %i.aag, align 1
  %i.aah = load i32, ptr %i.aaa, align 8, !tbaa !14
  %i.aai = add i32 %i.aah, 1
  store i32 %i.aai, ptr %i.aaa, align 8, !tbaa !14
  br label %_ZN12_GLOBAL__N_134optimizeExtendsForPartialReductionEPN4llvm17VPSingleDefRecipeE.exit.i

bb.cv:                                            ; preds = %.lr.ph741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  store i32 0, ptr %i.lg, align 8, !alias.scope !2501
  store <2 x i64> %i.nw, ptr %.sroa.4.i.i.i.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8
  store <2 x i64> %i.ny, ptr %.sroa.4.i.i.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8
  store i32 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !2501
  %i.aaj = getelementptr inbounds i8, ptr %i.uj, i64 -8 ; 3 uses
  %i.aak = load i8, ptr %i.aaj, align 8, !tbaa !68
  %i.aal = and i8 %i.aak, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aal, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm7vputils14getIntrinsicIDINS_12VPRecipeBaseEEEjPKT_.exit, label %.sink.split

_ZN4llvm7vputils14getIntrinsicIDINS_12VPRecipeBaseEEEjPKT_.exit: ; preds = %bb.cv
  %i.aam = getelementptr inbounds nuw i8, ptr %i.uj, i64 128
  %i.aan = load i32, ptr %i.aam, align 8, !tbaa !154
  %i.aao = icmp eq i32 %i.aan, 1
  br i1 %i.aao, label %_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers17match_combine_andIJNS2_9match_isaIJNS_22VPWidenIntrinsicRecipeEEEENS3_IJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_12Recipe_matchISt5tupleIJNS2_16match_combine_orIJNS9_ISA_IJNS2_10match_bindINS_7VPValueEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS9_ISF_Lj41ELb0EJSG_SH_SI_SJ_EEEEEESM_EELj16ELb0EJSG_SH_SI_SJ_EEEEEEEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i.i, label %.sink.split

_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers17match_combine_andIJNS2_9match_isaIJNS_22VPWidenIntrinsicRecipeEEEENS3_IJNS0_17IntrinsicID_matchENS0_14Argument_matchINS0_12Recipe_matchISt5tupleIJNS2_16match_combine_orIJNS9_ISA_IJNS2_10match_bindINS_7VPValueEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS9_ISF_Lj41ELb0EJSG_SH_SI_SJ_EEEEEESM_EELj16ELb0EJSG_SH_SI_SJ_EEEEEEEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i.i: ; preds = %_ZN4llvm7vputils14getIntrinsicIDINS_12VPRecipeBaseEEEjPKT_.exit
end_hunk_3
begin_hunk_4_@_ZN4llvm15VPlanTransforms23createPartialReductionsERNS_5VPlanERNS_13VPCostContextERNS_7VFRangeE:bb.a
_ZNK4llvm13VPInstruction8isMaskedEv.exit.i294:    ; preds = %bb.do
  %i.agz = add nuw i32 %i.agx, 1                  ; 2 uses
  %i.aha = load i32, ptr %i.agv, align 8, !tbaa !14
  %i.ahb = icmp eq i32 %i.agz, %i.aha
  br i1 %i.ahb, label %bb.dp, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

bb.dp:                                            ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i294
  %i.ahc = call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.ul) #25 ; 2 uses
  %i.ahd = icmp eq i32 %i.ahc, -1
  br i1 %i.ahd, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i295, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ahe = add nuw i32 %i.ahc, 1
  %i.ahf = load i32, ptr %i.agv, align 8, !tbaa !14
  %i.ahg = icmp eq i32 %i.ahe, %i.ahf
  %i.ahh = sext i1 %i.ahg to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i295

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i295: ; preds = %bb.dq, %bb.dp
  %.0.i.i.i296 = phi i32 [ %i.ahh, %bb.dq ], [ 0, %bb.dp ]
  %i.ahi = add i32 %.0.i.i.i296, %i.agz
  %.not25.i297 = icmp eq i32 %i.ahi, 1
  br i1 %.not25.i297, label %.critedge.i291, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

bb.dr:                                            ; preds = %bb.dn
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.uj, i64 129
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !143, !range !213, !noundef !214
  %i.ahl = trunc nuw i8 %i.ahk to i1
  %.not24.i299 = icmp eq i32 %i.agw, 2
  %or.cond.i300 = and i1 %.not24.i299, %i.ahl
  br i1 %or.cond.i300, label %.critedge.i291, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

.critedge.i291:                                   ; preds = %bb.dr, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i295, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 0, ptr %6, align 4
  %i.ahm = getelementptr inbounds i8, ptr %i.uj, i64 -56
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !12
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !111
  %i.ahp = call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aho) #25 ; 2 uses
  %.not.i.i.i.i292 = icmp eq ptr %i.ahp, null
  br i1 %.not.i.i.i.i292, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread625, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit

_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread625: ; preds = %.critedge.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit: ; preds = %.critedge.i291
  %i.ahq = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 1 dereferenceable(4) %6, ptr noundef nonnull %i.ahp)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %i.ahq, label %_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers16match_combine_orIJNS0_12Recipe_matchISt5tupleIJNS4_IS5_IJNS3_IJNS4_IS5_IJNS2_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS4_IS9_Lj41ELb0EJSA_SB_SC_SD_EEEEEESG_EELj18ELb0EJSA_SB_SC_SD_EEEEELj40ELb0EJSA_SB_SC_SD_EEENS4_ISJ_Lj41ELb0EJSA_SB_SC_SD_EEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers16match_combine_orIJNS0_12Recipe_matchISt5tupleIJNS4_IS5_IJNS3_IJNS4_IS5_IJNS2_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS4_IS9_Lj41ELb0EJSA_SB_SC_SD_EEEEEESG_EELj18ELb0EJSA_SB_SC_SD_EEEEELj40ELb0EJSA_SB_SC_SD_EEENS4_ISJ_Lj41ELb0EJSA_SB_SC_SD_EEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i.i: ; preds = %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj40ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit
  %i.ahr = getelementptr inbounds i8, ptr %i.uj, i64 -56
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !12
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !111 ; 5 uses
  %i.ahu = getelementptr inbounds i8, ptr %i.aht, i64 -96 ; 2 uses
  %i.ahv = getelementptr inbounds i8, ptr %i.aht, i64 -56
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !12 ; 2 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !111 ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !111 ; 3 uses
  %i.aia = icmp eq ptr %i.ahz, null               ; 2 uses
  %i.aib = getelementptr inbounds i8, ptr %i.ahz, i64 -96
  %i.aic = select i1 %i.aia, ptr null, ptr %i.aib ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aht, i64 24
  %i.aie = load i32, ptr %i.aid, align 8, !tbaa !14
  %i.aif = icmp eq i32 %i.aie, 1
  br i1 %i.aif, label %bb.ds, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

bb.ds:                                            ; preds = %_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers16match_combine_orIJNS0_12Recipe_matchISt5tupleIJNS4_IS5_IJNS3_IJNS4_IS5_IJNS2_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS4_IS9_Lj41ELb0EJSA_SB_SC_SD_EEEEEESG_EELj18ELb0EJSA_SB_SC_SD_EEEEELj40ELb0EJSA_SB_SC_SD_EEENS4_ISJ_Lj41ELb0EJSA_SB_SC_SD_EEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i.i
  %i.aig = getelementptr inbounds i8, ptr %i.ahx, i64 -96
  %i.aih = icmp eq ptr %i.ahx, null
  %i.aii = getelementptr inbounds nuw i8, ptr %i.uj, i64 128
  %i.aij = load i32, ptr %i.aii, align 8, !tbaa !144
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahx, i64 128
  %i.ail = load i32, ptr %i.aik, align 8, !tbaa !144 ; 3 uses
  %.not.i.i192 = icmp eq i32 %i.aij, %i.ail
  %.not83154.i.i = icmp eq ptr %i.aig, %i.aic     ; 2 uses
  %.not83.i.i = select i1 %i.aih, i1 %i.aia, i1 %.not83154.i.i
  %or.cond.i.i = or i1 %.not83.i.i, %.not.i.i192
  br i1 %or.cond.i.i, label %bb.dt, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

bb.dt:                                            ; preds = %bb.ds
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aic, i64 224 ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !144
  %.not84.i.i = icmp eq i32 %i.ail, %i.ain
  br i1 %.not84.i.i, label %bb.du, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.aio = getelementptr inbounds i8, ptr %i.aht, i64 -24
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !151
  store ptr %i.aip, ptr %31, align 8, !tbaa !391
  %i.aiq = getelementptr inbounds i8, ptr %i.aht, i64 -80
  store ptr %i.aiq, ptr %i.mc, align 8
  %i.air = getelementptr inbounds i8, ptr %i.ahx, i64 -56
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !12
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !111
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.uj, i64 48 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !412
  %i.aiw = call noundef ptr @_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %31, i32 noundef %i.ail, ptr noundef %i.ait, ptr noundef %i.aiv) ; 2 uses
  br i1 %.not83154.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aix = load i32, ptr %i.aim, align 8, !tbaa !144
  %i.aiy = getelementptr inbounds i8, ptr %i.ahz, i64 -56
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !12
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !111
  %i.ajb = load ptr, ptr %i.aiu, align 8, !tbaa !412
  %i.ajc = call noundef ptr @_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %31, i32 noundef %i.aix, ptr noundef %i.aja, ptr noundef %i.ajb)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.ajd = phi ptr [ %i.ajc, %bb.dv ], [ %i.aiw, %bb.du ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #25
  %i.aje = insertelement <2 x ptr> poison, ptr %i.aiw, i64 0
  %i.ajf = insertelement <2 x ptr> %i.aje, ptr %i.ajd, i64 1 ; 2 uses
  %i.ajg = icmp eq <2 x ptr> %i.ajf, splat (ptr null)
  %i.ajh = getelementptr inbounds nuw i8, <2 x ptr> %i.ajf, i64 96
  %i.aji = select <2 x i1> %i.ajg, <2 x ptr> splat (ptr null), <2 x ptr> %i.ajh
  store <2 x ptr> %i.aji, ptr %i.q, align 16, !tbaa !111
  %i.ajj = call noundef ptr @_ZN4llvm13VPWidenRecipe17cloneWithOperandsENS_8ArrayRefIPNS_7VPValueEEE(ptr noundef nonnull align 8 dereferenceable(228) %i.ahu, ptr nonnull %i.q, i64 2) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  %i.ajk = load ptr, ptr %31, align 8, !tbaa !391
  %.sroa.0.0.copyload.i118.i.i = load ptr, ptr %i.mc, align 8 ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajj, i64 72
  store ptr %i.ajk, ptr %i.ajl, align 8, !tbaa !151
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16 ; 3 uses
  %i.ajn = load ptr, ptr %.sroa.0.0.copyload.i118.i.i, align 8, !tbaa !286 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajj, i64 24
  store ptr %.sroa.0.0.copyload.i118.i.i, ptr %i.ajo, align 8, !tbaa !50
  store ptr %i.ajn, ptr %i.ajm, align 8, !tbaa !286
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajn, i64 8
  store ptr %i.ajm, ptr %i.ajp, align 8, !tbaa !50
  store ptr %i.ajm, ptr %.sroa.0.0.copyload.i118.i.i, align 8, !tbaa !286
  %i.ajq = icmp eq ptr %i.ajj, null
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajj, i64 96
  %i.ajs = select i1 %i.ajq, ptr null, ptr %i.ajr
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.uj, ptr noundef %i.ajs) #25
  %i.ajt = call ptr @_ZN4llvm12VPRecipeBase15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(89) %i.ul) #25 ; 0 uses
  %i.aju = call ptr @_ZN4llvm12VPRecipeBase15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(89) %i.ahu) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  br label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread

_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread: ; preds = %bb.dn, %_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers16match_combine_orIJNS0_12Recipe_matchISt5tupleIJNS4_IS5_IJNS3_IJNS4_IS5_IJNS2_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS4_IS9_Lj41ELb0EJSA_SB_SC_SD_EEEEEESG_EELj18ELb0EJSA_SB_SC_SD_EEEEELj40ELb0EJSA_SB_SC_SD_EEENS4_ISJ_Lj41ELb0EJSA_SB_SC_SD_EEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i.i, %bb.dr, %bb.dm, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i295, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i294, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit.i, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit.i, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit.i, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit.i, %bb.do, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread625, %bb.dw, %bb.dt, %bb.ds, %_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers16match_combine_orIJNS0_12Recipe_matchISt5tupleIJNS4_IS5_IJNS3_IJNS4_IS5_IJNS2_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS4_IS9_Lj41ELb0EJSA_SB_SC_SD_EEEEEESG_EELj18ELb0EJSA_SB_SC_SD_EEEEELj40ELb0EJSA_SB_SC_SD_EEENS4_ISJ_Lj41ELb0EJSA_SB_SC_SD_EEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i.i, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit, %_ZN4llvm12VPIRMetadataD2Ev.exit117.i.i
  %.2.i.i = phi ptr [ %i.aev, %_ZN4llvm12VPIRMetadataD2Ev.exit117.i.i ], [ %i.ul, %_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers16match_combine_orIJNS0_12Recipe_matchISt5tupleIJNS4_IS5_IJNS3_IJNS4_IS5_IJNS2_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS4_IS9_Lj41ELb0EJSA_SB_SC_SD_EEEEEESG_EELj18ELb0EJSA_SB_SC_SD_EEEEELj40ELb0EJSA_SB_SC_SD_EEENS4_ISJ_Lj41ELb0EJSA_SB_SC_SD_EEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.thread.i.i ], [ %i.ajj, %bb.dw ], [ %i.ul, %bb.ds ], [ %i.ul, %bb.dt ], [ %i.ul, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit ], [ %i.ul, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread625 ], [ %i.ul, %bb.do ], [ %i.ul, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE20matchRecipeAndOpcodeISA_EEbPKNS_12VPRecipeBaseE.exit.i ], [ %i.ul, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE20matchRecipeAndOpcodeISC_EEbPKNS_12VPRecipeBaseE.exit.i ], [ %i.ul, %_ZN4llvm17VPlanPatternMatch5matchINS_19PatternMatchHelpers16match_combine_orIJNS0_12Recipe_matchISt5tupleIJNS4_IS5_IJNS3_IJNS4_IS5_IJNS2_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS4_IS9_Lj41ELb0EJSA_SB_SC_SD_EEEEEESG_EELj18ELb0EJSA_SB_SC_SD_EEEEELj40ELb0EJSA_SB_SC_SD_EEENS4_ISJ_Lj41ELb0EJSA_SB_SC_SD_EEEEEEEEbPNS_17VPSingleDefRecipeERKT_.exit.i.i ], [ %i.ul, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE20matchRecipeAndOpcodeISB_EEbPKNS_12VPRecipeBaseE.exit.i ], [ %i.ul, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit.i ], [ %i.ul, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i294 ], [ %i.ul, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i295 ], [ %i.ul, %bb.dn ], [ %i.ul, %bb.dm ], [ %i.ul, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  br label %_ZN12_GLOBAL__N_134optimizeExtendsForPartialReductionEPN4llvm17VPSingleDefRecipeE.exit.i

_ZN12_GLOBAL__N_134optimizeExtendsForPartialReductionEPN4llvm17VPSingleDefRecipeE.exit.i: ; preds = %bb.cu, %bb.ct, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread, %bb.bv, %bb.bu
  %.3.i.i = phi ptr [ %.2.i.i, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS1_IS2_IJNS_19PatternMatchHelpers16match_combine_orIJNS1_IS2_IJNS3_9match_isaIJNS_7VPValueEEEEEELj40ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEENS1_IS8_Lj41ELb0EJS9_SA_SB_SC_EEEEEESF_EELj18ELb0EJS9_SA_SB_SC_EEEEELj41ELb0EJS9_SA_SB_SC_EE5matchEPKNS_12VPRecipeBaseE.exit.thread ], [ %i.ul, %bb.bu ], [ %i.ul, %bb.bv ], [ %i.ul, %bb.ct ], [ %i.ul, %bb.cu ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ty, i64 224
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !147
  switch i32 %i.ajw, label %.thread.i182 [
    i32 16, label %bb.dx
    i32 17, label %bb.dy
  ]

bb.dx:                                            ; preds = %_ZN12_GLOBAL__N_134optimizeExtendsForPartialReductionEPN4llvm17VPSingleDefRecipeE.exit.i
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0739, i64 48
  %i.ajy = load i32, ptr %i.ajx, align 8, !tbaa !2434
  %.not.i189 = icmp eq i32 %i.ajy, 2
  br i1 %.not.i189, label %.thread.i182, label %bb.ed

bb.dy:                                            ; preds = %_ZN12_GLOBAL__N_134optimizeExtendsForPartialReductionEPN4llvm17VPSingleDefRecipeE.exit.i
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0739, i64 48
  %i.aka = load i32, ptr %i.ajz, align 8, !tbaa !2434
  %.not109.i = icmp eq i32 %i.aka, 14
  br i1 %.not109.i, label %.thread.i182, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i283

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i283: ; preds = %bb.dy
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ty, i64 72
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !151
  %i.akd = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 96
  %i.ake = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  %i.akf = icmp eq ptr %.3.i.i, null
  %spec.select.i180 = select i1 %i.akf, ptr null, ptr %i.akd
  store ptr %spec.select.i180, ptr %i.r, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mj, i8 0, i64 48, i1 false)
  store ptr %i.mj, ptr %32, align 8, !tbaa !12
  store i32 0, ptr %i.mk, align 8, !tbaa !14
  store i32 3, ptr %i.ml, align 4, !tbaa !15
  %i.akg = call noundef ptr @_ZN4llvm31computeScalarTypeForInstructionEjNS_8ArrayRefIPNS_7VPValueEEE(i32 noundef 13, ptr nonnull %i.r, i64 1) #25
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akh, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm5VPDefE, i64 16), ptr %i.ake, align 8, !tbaa !113
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  store i64 0, ptr %i.aki, align 8
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ake, i64 32 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm6VPUserE, i64 16), ptr %i.akj, align 8, !tbaa !113
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ake, i64 40
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ake, i64 56 ; 2 uses
  store ptr %i.akl, ptr %i.akk, align 8, !tbaa !12
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ake, i64 48
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ake, i64 52
  store i32 2, ptr %i.akn, align 4, !tbaa !15
  %i.ako = load ptr, ptr %i.r, align 8, !tbaa !111 ; 4 uses
  store ptr %i.ako, ptr %i.akl, align 8
  store i32 1, ptr %i.akm, align 8, !tbaa !14
  %57 = getelementptr inbounds nuw i8, ptr %i.ako, i64 16 ; 2 uses
  %.phi.trans.insert813 = getelementptr inbounds nuw i8, ptr %i.ako, i64 24 ; 3 uses
  %.pre814 = load i32, ptr %.phi.trans.insert813, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert815 = getelementptr inbounds nuw i8, ptr %i.ako, i64 28
  %.pre816 = load i32, ptr %.phi.trans.insert815, align 4, !tbaa !15
  %.not.i.i.i.i.i.i284 = icmp ult i32 %.pre814, %.pre816
  br i1 %.not.i.i.i.i.i.i284, label %bb.ea, label %bb.dz, !prof !150

bb.dz:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i283
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(40) %i.akj)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i285

bb.ea:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i283
  %i.akp = zext i32 %.pre814 to i64
  %i.akq = load ptr, ptr %57, align 8, !tbaa !12
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %i.akp
  store ptr %i.akj, ptr %i.akr, align 1
  %i.aks = load i32, ptr %.phi.trans.insert813, align 8, !tbaa !14
  %i.akt = add i32 %i.aks, 1
  store i32 %i.akt, ptr %.phi.trans.insert813, align 8, !tbaa !14
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i285

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i285: ; preds = %bb.ea, %bb.dz
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ake, i64 72
  %i.akv = getelementptr inbounds nuw i8, ptr %i.ake, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aku, i8 0, i64 16, i1 false)
  store i8 24, ptr %i.akv, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 16), ptr %i.ake, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 72), ptr %i.akj, align 8, !tbaa !113
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ake, i64 96 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm17VPSingleDefRecipeE, i64 128), ptr %i.akw, align 8, !tbaa !113
  call void @_ZN4llvm16VPSingleDefValueC2EPNS_17VPSingleDefRecipeEPNS_5ValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %i.akw, ptr noundef nonnull align 8 dereferenceable(228) %i.ake, ptr noundef null, ptr noundef %i.akg) #25
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ake, i64 152
  store i8 10, ptr %i.akx, align 8, !tbaa !138
  %.sroa.4164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ake, i64 153
  store i16 0, ptr %.sroa.4164.0..sroa_idx.i, align 1, !tbaa !110
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 16), ptr %i.ake, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 72), ptr %i.akj, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm19VPRecipeWithIRFlagsE, i64 128), ptr %i.akw, align 8, !tbaa !113
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ake, i64 160 ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ake, i64 176 ; 3 uses
  store ptr %i.akz, ptr %i.aky, align 8, !tbaa !12
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ake, i64 168 ; 2 uses
  store i32 0, ptr %i.ala, align 8, !tbaa !14
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ake, i64 172
  store i32 3, ptr %i.alb, align 4, !tbaa !15
  %i.alc = load i32, ptr %i.mk, align 8, !tbaa !14 ; 4 uses
  %.not.i.i.i.i.i181 = icmp eq i32 %i.alc, 0
  br i1 %.not.i.i.i.i.i181, label %_ZN4llvm13VPWidenRecipeC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i, label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i285
  %i.ald = zext i32 %i.alc to i64                 ; 2 uses
  %i.ale = icmp ugt i32 %i.alc, 3
  br i1 %i.ale, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i: ; preds = %bb.eb
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.aky, ptr noundef nonnull %i.akz, i64 noundef %i.ald, i64 noundef 16) #25
  %.pre.i.i.i.i.i188 = load i32, ptr %i.mk, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i119.i = icmp eq i32 %.pre.i.i.i.i.i188, 0
  br i1 %.not.i.i.i.i.i119.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i
  %.pre37.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i188 to i64
  %.pre.i.i.i = load ptr, ptr %i.aky, align 8, !tbaa !12
  br label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i, %bb.eb
  %i.alf = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i ], [ %i.akz, %bb.eb ]
  %.pre-phi.i8.i.i.i.i = phi i64 [ %.pre37.i.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i.i ], [ %i.ald, %bb.eb ]
  %i.alg = load ptr, ptr %32, align 8, !tbaa !12
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %.pre-phi.i8.i.i.i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alf, ptr align 8 %i.alg, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i.i
  store i32 %i.alc, ptr %i.ala, align 8, !tbaa !14
  br label %_ZN4llvm13VPWidenRecipeC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i

_ZN4llvm13VPWidenRecipeC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i: ; preds = %.sink.split.i.i.i.i.i, %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i285
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm13VPWidenRecipeE, i64 16), ptr %i.ake, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm13VPWidenRecipeE, i64 80), ptr %i.akj, align 8, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm13VPWidenRecipeE, i64 136), ptr %i.akw, align 8, !tbaa !113
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ake, i64 224
  store i32 13, ptr %i.alh, align 8, !tbaa !147
  %i.ali = load ptr, ptr %32, align 8, !tbaa !12  ; 2 uses
  %i.alj = icmp eq ptr %i.ali, %i.mj
  br i1 %i.alj, label %_ZN4llvm12VPIRMetadataD2Ev.exit.i, label %bb.ec

bb.ec:                                            ; preds = %_ZN4llvm13VPWidenRecipeC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i
  call void @free(ptr noundef %i.ali) #25
  br label %_ZN4llvm12VPIRMetadataD2Ev.exit.i

_ZN4llvm12VPIRMetadataD2Ev.exit.i:                ; preds = %bb.ec, %_ZN4llvm13VPWidenRecipeC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  br label %bb.ep

bb.ed:                                            ; preds = %bb.dx
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ty, i64 72
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !151
  %i.alm = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 96
  %i.aln = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 144
  %i.alo = load ptr, ptr %i.aln, align 8, !tbaa !412
  %i.alp = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeEmbb(ptr noundef %i.alo, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.alp, ptr %i.h, align 8, !tbaa !395
  %i.alq = call { ptr, i8 } @_ZN4llvm9MapVectorIPNS_5ValueEPNS_9VPIRValueENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj16EEELj16EE16try_emplace_implIRKS2_JEEESD_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(296) %i.mm, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %.fca.0.extract.i.i.i.i190 = extractvalue { ptr, i8 } %i.alq, 0 ; 3 uses
  %.fca.1.extract.i.i.i.i191 = extractvalue { ptr, i8 } %i.alq, 1
  %i.alr = trunc nuw i8 %.fca.1.extract.i.i.i.i191 to i1
  br i1 %i.alr, label %bb.ee, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ed
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i190, i64 8
  %.pre.i.i.i120.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !396
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.als = load ptr, ptr %i.h, align 8, !tbaa !395 ; 2 uses
  %i.alt = load i8, ptr %i.als, align 8, !tbaa !63
  %.not.i.i.i.i = icmp eq i8 %i.alt, 5
  %i.alu = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26 ; 18 uses
  br i1 %.not.i.i.i.i, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  store i8 0, ptr %i.alv, align 8, !tbaa !399
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alu, i64 16
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  store ptr %i.alx, ptr %i.alw, align 8, !tbaa !12
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alu, i64 24
  store i32 0, ptr %i.aly, align 8, !tbaa !14
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alu, i64 28
  store i32 1, ptr %i.alz, align 4, !tbaa !15
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alu, i64 40
  store ptr %i.als, ptr %i.ama, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm13VPConstantIntE, i64 16), ptr %i.alu, align 8, !tbaa !113
  %i.amb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i190, i64 8
  store ptr %i.alu, ptr %i.amb, align 8, !tbaa !396
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.amc = load ptr, ptr %i.h, align 8, !tbaa !395
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  store i8 0, ptr %i.amd, align 8, !tbaa !399
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alu, i64 16
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  store ptr %i.amf, ptr %i.ame, align 8, !tbaa !12
  %i.amg = getelementptr inbounds nuw i8, ptr %i.alu, i64 24
  store i32 0, ptr %i.amg, align 8, !tbaa !14
  %i.amh = getelementptr inbounds nuw i8, ptr %i.alu, i64 28
  store i32 1, ptr %i.amh, align 4, !tbaa !15
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alu, i64 40
  store ptr %i.amc, ptr %i.ami, align 8, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm9VPIRValueE, i64 16), ptr %i.alu, align 8, !tbaa !113
  %i.amj = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i190, i64 8
  store ptr %i.alu, ptr %i.amj, align 8, !tbaa !396
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i: ; preds = %bb.eg, %bb.ef, %._crit_edge.i.i.i.i
  %i.amk = phi ptr [ %.pre.i.i.i120.i, %._crit_edge.i.i.i.i ], [ %i.alu, %bb.ef ], [ %i.alu, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aml = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #25
  store ptr %i.amk, ptr %i.s, align 8, !tbaa !111
  store ptr %i.alm, ptr %i.mn, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mo, i8 0, i64 48, i1 false)
  store ptr %i.mo, ptr %33, align 8, !tbaa !12
  store i32 0, ptr %i.mp, align 8, !tbaa !14
  store i32 3, ptr %i.mq, align 4, !tbaa !15
  %i.amm = call noundef ptr @_ZN4llvm31computeScalarTypeForInstructionEjNS_8ArrayRefIPNS_7VPValueEEE(i32 noundef 16, ptr nonnull %i.s, i64 2) #25
  %i.amn = getelementptr inbounds nuw i8, ptr %i.aml, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amn, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm5VPDefE, i64 16), ptr %i.aml, align 8, !tbaa !113
  %i.amo = getelementptr inbounds nuw i8, ptr %i.aml, i64 8
  store i64 0, ptr %i.amo, align 8
  %i.amp = getelementptr inbounds nuw i8, ptr %i.aml, i64 32 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm6VPUserE, i64 16), ptr %i.amp, align 8, !tbaa !113
  %i.amq = getelementptr inbounds nuw i8, ptr %i.aml, i64 40 ; 3 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.aml, i64 56 ; 2 uses
  store ptr %i.amr, ptr %i.amq, align 8, !tbaa !12
  %i.ams = getelementptr inbounds nuw i8, ptr %i.aml, i64 48 ; 4 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.aml, i64 52 ; 2 uses
  store i32 2, ptr %i.amt, align 4, !tbaa !15
  %i.amu = load ptr, ptr %i.s, align 8, !tbaa !111 ; 5 uses
  store ptr %i.amu, ptr %i.amr, align 8
  store i32 1, ptr %i.ams, align 8, !tbaa !14
  %.phi.trans.insert817 = getelementptr inbounds nuw i8, ptr %i.amu, i64 24
  %.pre818 = load i32, ptr %.phi.trans.insert817, align 8, !tbaa !14 ; 2 uses
  %.phi.trans.insert819 = getelementptr inbounds nuw i8, ptr %i.amu, i64 28
  %.pre820 = load i32, ptr %.phi.trans.insert819, align 4, !tbaa !15
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i278 = icmp ult i32 %.pre818, %.pre820
  br i1 %.not.i.i.i.i.i.i278, label %bb.ei, label %bb.eh, !prof !150

bb.eh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.amv, ptr noundef nonnull align 8 dereferenceable(40) %i.amp)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i

bb.ei:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.i
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amu, i64 24 ; 2 uses
  %i.amx = zext i32 %.pre818 to i64
  %i.amy = load ptr, ptr %i.amv, align 8, !tbaa !12
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.amy, i64 %i.amx
  store ptr %i.amp, ptr %i.amz, align 1
  %i.ana = load i32, ptr %i.amw, align 8, !tbaa !14
  %i.anb = add i32 %i.ana, 1
  store i32 %i.anb, ptr %i.amw, align 8, !tbaa !14
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i: ; preds = %bb.ei, %bb.eh
  %i.anc = load ptr, ptr %i.mn, align 8, !tbaa !111 ; 5 uses
  %i.and = load i32, ptr %i.ams, align 8, !tbaa !14 ; 2 uses
  %i.ane = load i32, ptr %i.amt, align 4, !tbaa !15
  %.not.i.i.i.i.i277.1 = icmp ult i32 %i.and, %i.ane
  br i1 %.not.i.i.i.i.i277.1, label %bb.ek, label %bb.ej, !prof !150

bb.ej:                                            ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.amq, ptr noundef %i.anc)
end_hunk_4
