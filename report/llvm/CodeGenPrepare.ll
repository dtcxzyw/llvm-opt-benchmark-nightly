Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenPrepare?download=true
inline.NumInlined: 15763
inline.NumDeleted: 7319
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN12_GLOBAL__N_114CodeGenPrepare18optimizeSelectInstEPN4llvm10SelectInstE:bb.a
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !63
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull %i.fq, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i) #27, !inline_history !1985
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull %i.fq) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.fw = load i32, ptr %i.ef, align 8, !tbaa !163
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.ad, label %bb.ae

bb.s:                                             ; preds = %.lr.ph333, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206
  %.0163331 = phi ptr [ %i.ek, %.lr.ph333 ], [ %i.hl, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206 ] ; 2 uses
  %i.fy = load ptr, ptr %.0163331, align 8, !tbaa !2014 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -64
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !279 ; 6 uses
  %i.gb = load ptr, ptr %i.eo, align 8, !tbaa !175
  %i.gc = load i8, ptr %i.ga, align 8, !tbaa !274
  %i.gd = icmp ult i8 %i.gc, 30
  br i1 %i.gd, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !317 ; 2 uses
  %.not.i.i199 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i199, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit, label %_ZNK4llvm5Value9hasOneUseEv.exit.i200

_ZNK4llvm5Value9hasOneUseEv.exit.i200:            ; preds = %bb.t
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !316
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.u, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

bb.u:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i200
  %i.gj = call noundef zeroext i1 @_ZN4llvm28isSafeToSpeculativelyExecuteEPKNS_11InstructionES2_PNS_15AssumptionCacheEPKNS_13DominatorTreeEPKNS_17TargetLibraryInfoEbb(ptr noundef nonnull %i.ga, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true) #27
  br i1 %i.gj, label %_ZL17sinkSelectOperandPKN4llvm19TargetTransformInfoEPNS_5ValueE.exit, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

_ZL17sinkSelectOperandPKN4llvm19TargetTransformInfoEPNS_5ValueE.exit: ; preds = %bb.u
  %i.gk = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo33isExpensiveToSpeculativelyExecuteEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull %i.ga) #27
  br i1 %i.gk, label %bb.v, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

bb.v:                                             ; preds = %_ZL17sinkSelectOperandPKN4llvm19TargetTransformInfoEPNS_5ValueE.exit
  %i.gl = load i32, ptr %i.ef, align 8, !tbaa !163 ; 2 uses
  %i.gm = load i32, ptr %i.eg, align 4, !tbaa !164
  %.not.i201 = icmp ult i32 %i.gl, %i.gm
  br i1 %.not.i201, label %bb.x, label %bb.w, !prof !189

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ga)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

bb.x:                                             ; preds = %bb.v
  %i.gn = zext i32 %i.gl to i64
  %i.go = load ptr, ptr %5, align 8, !tbaa !75
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gn
  store ptr %i.ga, ptr %i.gp, align 1
  %i.gq = load i32, ptr %i.ef, align 8, !tbaa !163
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.ef, align 8, !tbaa !163
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit: ; preds = %bb.t, %bb.s, %_ZNK4llvm5Value9hasOneUseEv.exit.i200, %bb.u, %bb.x, %bb.w, %_ZL17sinkSelectOperandPKN4llvm19TargetTransformInfoEPNS_5ValueE.exit
  %i.gs = getelementptr inbounds i8, ptr %i.fy, i64 -32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !279 ; 6 uses
  %i.gu = load ptr, ptr %i.eo, align 8, !tbaa !175
  %i.gv = load i8, ptr %i.gt, align 8, !tbaa !274
  %i.gw = icmp ult i8 %i.gv, 30
  br i1 %i.gw, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !317 ; 2 uses
  %.not.i.i202 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i202, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206, label %_ZNK4llvm5Value9hasOneUseEv.exit.i203

_ZNK4llvm5Value9hasOneUseEv.exit.i203:            ; preds = %bb.y
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !316
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.z, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206

bb.z:                                             ; preds = %_ZNK4llvm5Value9hasOneUseEv.exit.i203
  %i.hc = call noundef zeroext i1 @_ZN4llvm28isSafeToSpeculativelyExecuteEPKNS_11InstructionES2_PNS_15AssumptionCacheEPKNS_13DominatorTreeEPKNS_17TargetLibraryInfoEbb(ptr noundef nonnull %i.gt, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true) #27
  br i1 %i.hc, label %_ZL17sinkSelectOperandPKN4llvm19TargetTransformInfoEPNS_5ValueE.exit204, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206

_ZL17sinkSelectOperandPKN4llvm19TargetTransformInfoEPNS_5ValueE.exit204: ; preds = %bb.z
  %i.hd = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo33isExpensiveToSpeculativelyExecuteEPKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull %i.gt) #27
  br i1 %i.hd, label %bb.aa, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206

bb.aa:                                            ; preds = %_ZL17sinkSelectOperandPKN4llvm19TargetTransformInfoEPNS_5ValueE.exit204
  %i.he = load i32, ptr %i.ei, align 8, !tbaa !163 ; 2 uses
  %i.hf = load i32, ptr %i.ej, align 4, !tbaa !164
  %.not.i205 = icmp ult i32 %i.he, %i.hf
  br i1 %.not.i205, label %bb.ac, label %bb.ab, !prof !189

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.gt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206

bb.ac:                                            ; preds = %bb.aa
  %i.hg = zext i32 %i.he to i64
  %i.hh = load ptr, ptr %6, align 8, !tbaa !75
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hg
  store ptr %i.gt, ptr %i.hi, align 1
  %i.hj = load i32, ptr %i.ei, align 8, !tbaa !163
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.ei, align 8, !tbaa !163
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206

_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit206: ; preds = %bb.y, %_ZN4llvm23SmallVectorTemplateBaseIPNS_11InstructionELb1EE9push_backES2_.exit, %_ZNK4llvm5Value9hasOneUseEv.exit.i203, %bb.z, %bb.ac, %bb.ab, %_ZL17sinkSelectOperandPKN4llvm19TargetTransformInfoEPNS_5ValueE.exit204
  %i.hl = getelementptr inbounds nuw i8, ptr %.0163331, i64 8 ; 2 uses
  %.not176 = icmp eq ptr %i.hl, %i.en
  br i1 %.not176, label %._crit_edge334, label %bb.s

bb.ad:                                            ; preds = %._crit_edge334
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !216
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !176
  %i.hq = call noundef ptr @_ZN4llvm25SplitBlockAndInsertIfElseEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEbPNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPS6_(ptr noundef nonnull %i.fq, ptr %i.eq, i64 1, i1 noundef zeroext false, ptr noundef null, ptr noundef %i.hn, ptr noundef %i.hp, ptr noundef null) #27 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 40
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !301
  %i.ht = getelementptr inbounds i8, ptr %i.hq, i64 -32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !279
  br label %bb.ah

bb.ae:                                            ; preds = %._crit_edge334
  %i.hv = load i32, ptr %i.ei, align 8, !tbaa !163
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !216
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !176
  %i.ib = call noundef ptr @_ZN4llvm25SplitBlockAndInsertIfThenEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEbPNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoEPS6_(ptr noundef nonnull %i.fq, ptr %i.eq, i64 1, i1 noundef zeroext false, ptr noundef null, ptr noundef %i.hy, ptr noundef %i.ia, ptr noundef null) #27 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !301
  %i.ie = getelementptr inbounds i8, ptr %i.ib, i64 -32
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !279
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store ptr null, ptr %i.c, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store ptr null, ptr %i.d, align 8, !tbaa !379
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !216
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !176
  call void @_ZN4llvm29SplitBlockAndInsertIfThenElseEPNS_5ValueENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEPPS5_SA_PNS_6MDNodeEPNS_14DomTreeUpdaterEPNS_8LoopInfoE(ptr noundef nonnull %i.fq, ptr %i.eq, i64 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef %i.ih, ptr noundef %i.ij) #27
  %i.ik = load ptr, ptr %i.c, align 8, !tbaa !379 ; 3 uses
  %i.il = load ptr, ptr %i.d, align 8, !tbaa !379 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !301
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !301
  %i.iq = getelementptr inbounds i8, ptr %i.ik, i64 -32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ad
  %.0171 = phi ptr [ %i.hq, %bb.ad ], [ null, %bb.af ], [ %i.il, %bb.ag ]
  %.0169 = phi ptr [ null, %bb.ad ], [ %i.ib, %bb.af ], [ %i.ik, %bb.ag ]
  %.0168 = phi ptr [ %i.hu, %bb.ad ], [ %i.if, %bb.af ], [ %i.ir, %bb.ag ] ; 4 uses
  %.0166 = phi ptr [ %i.hs, %bb.ad ], [ null, %bb.af ], [ %i.ip, %bb.ag ] ; 4 uses
  %.0164 = phi ptr [ null, %bb.ad ], [ %i.id, %bb.af ], [ %i.in, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.it, align 1, !tbaa !341
  store ptr @.str.127, ptr %9, align 8, !tbaa !295
  store i8 3, ptr %i.is, align 8, !tbaa !340
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %.0168, ptr noundef nonnull align 8 dereferenceable(34) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.not177 = icmp eq ptr %.0164, null             ; 4 uses
  br i1 %.not177, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.iv, align 1, !tbaa !341
  store ptr @.str.128, ptr %10, align 8, !tbaa !295
  store i8 3, ptr %i.iu, align 8, !tbaa !340
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %.0164, ptr noundef nonnull align 8 dereferenceable(34) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.not178 = icmp ne ptr %.0166, null             ; 3 uses
  br i1 %.not178, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.iw = load i32, ptr %i.ei, align 8, !tbaa !163
  %17 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %18, align 1, !tbaa !341
  %19 = icmp eq i32 %i.iw, 0
  %20 = select i1 %19, ptr @.str.129, ptr @.str.130
  store ptr %20, ptr %11, align 8, !tbaa !295
  store i8 3, ptr %17, align 8, !tbaa !340
  call void @_ZN4llvm5Value7setNameERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(24) %.0166, ptr noundef nonnull align 8 dereferenceable(34) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !170, !range !71, !noundef !72
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %.not177, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.411") align 8 %12, ptr noundef nonnull align 8 dereferenceable(17) %i.ja, ptr noundef nonnull %.0164)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %.not178, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.411") align 8 %13, ptr noundef nonnull align 8 dereferenceable(17) %i.jb, ptr noundef nonnull %.0166)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 848
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.411") align 8 %14, ptr noundef nonnull align 8 dereferenceable(17) %i.jc, ptr noundef nonnull %.0168)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.al
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !178 ; 2 uses
  %i.jf = call i64 @_ZNK4llvm18BlockFrequencyInfo12getBlockFreqEPKNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef %i.ep) #27
  call void @_ZN4llvm18BlockFrequencyInfo12setBlockFreqEPKNS_10BasicBlockENS_14BlockFrequencyE(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull %.0168, i64 %i.jf) #27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ep, i64 48 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !302
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -24
  call void @_ZN4llvm11Instruction12copyMetadataERKS0_NS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ji, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @_ZZN12_GLOBAL__N_114CodeGenPrepare18optimizeSelectInstEPN4llvm10SelectInstEE2MD, i64 4) #27
  %i.jj = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.jk = load i32, ptr %i.ef, align 8, !tbaa !163 ; 2 uses
  %i.jl = zext i32 %i.jk to i64
  %.idx350 = shl nuw nsw i64 %i.jl, 3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.idx350
  %.not179335 = icmp eq i32 %i.jk, 0
  br i1 %.not179335, label %._crit_edge339, label %.lr.ph338

.lr.ph338:                                        ; preds = %bb.ar
  %i.jn = getelementptr inbounds nuw i8, ptr %.0169, i64 24
  br label %bb.as

._crit_edge339:                                   ; preds = %bb.as, %bb.ar
  %i.jo = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
  %i.jp = load i32, ptr %i.ei, align 8, !tbaa !163 ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %.idx351 = shl nuw nsw i64 %i.jq, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.idx351
  %.not180340 = icmp eq i32 %i.jp, 0
  br i1 %.not180340, label %._crit_edge344, label %.lr.ph343

.lr.ph343:                                        ; preds = %._crit_edge339
  %i.js = getelementptr inbounds nuw i8, ptr %.0171, i64 24
  br label %bb.av

bb.as:                                            ; preds = %.lr.ph338, %bb.as
  %.0172336 = phi ptr [ %i.jj, %.lr.ph338 ], [ %i.ju, %bb.as ] ; 2 uses
  %i.jt = load ptr, ptr %.0172336, align 8, !tbaa !379
  call void @_ZN4llvm11Instruction10moveBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.jt, ptr nonnull %i.jn, i64 0) #27
  %i.ju = getelementptr inbounds nuw i8, ptr %.0172336, i64 8 ; 2 uses
  %.not179 = icmp eq ptr %i.ju, %i.jm
  br i1 %.not179, label %._crit_edge339, label %bb.as

._crit_edge344:                                   ; preds = %bb.av, %._crit_edge339
  %i.jv = or i1 %.not178, %.not177
  %.1167 = select i1 %i.jv, ptr %.0166, ptr %i.ep
  %.1165 = select i1 %.not177, ptr %i.ep, ptr %.0164
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.jw = load ptr, ptr %4, align 8, !tbaa !75    ; 2 uses
  %i.jx = load i32, ptr %i.w, align 8, !tbaa !163 ; 2 uses
  %i.jy = zext i32 %i.jx to i64
  %.idx.i = shl nuw nsw i64 %i.jy, 3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i
  %i.ka = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.ka, ptr %15, align 8, !tbaa !73
  %i.kb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 2, ptr %i.kb, align 8, !tbaa !161
  %i.kc = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 11 uses
  store i32 0, ptr %i.kc, align 4, !tbaa !162
  %i.kd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 8 uses
  store i8 1, ptr %i.kd, align 8, !tbaa !70
  %.not6.i.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not6.i.i.i, label %._crit_edge347.thread, label %.lr.ph.i.i.i

._crit_edge347.thread:                            ; preds = %._crit_edge344
  store ptr %i.jg, ptr %i.bh, align 8
  store i16 0, ptr %.sroa.4132.0..sroa_idx408, align 8
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

.lr.ph.i.i.i:                                     ; preds = %._crit_edge344, %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i
  %i.ke = phi i8 [ %i.ks, %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i ], [ 1, %._crit_edge344 ] ; 2 uses
  %i.kf = phi i8 [ %i.kt, %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i ], [ 1, %._crit_edge344 ]
  %.07.i.i.i = phi ptr [ %i.ku, %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i ], [ %i.jw, %._crit_edge344 ] ; 2 uses
  %i.kg = load ptr, ptr %.07.i.i.i, align 8, !tbaa !2014 ; 3 uses
  %i.kh = trunc nuw i8 %i.kf to i1
  br i1 %i.kh, label %bb.at, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i
  %i.ki = load ptr, ptr %15, align 8, !tbaa !73, !noalias !2017 ; 2 uses
  %i.kj = load i32, ptr %i.kc, align 4, !tbaa !162, !noalias !2017 ; 4 uses
  %i.kk = zext i32 %i.kj to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.kk, 3
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i32 %i.kj, 0
  br i1 %.not22.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.at, %.critedge.i.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %i.kn, %.critedge.i.i.i.i.i ], [ %i.ki, %bb.at ] ; 2 uses
  %i.km = load ptr, ptr %.023.i.i.i.i.i, align 8, !tbaa !76, !noalias !2017
  %.not15.i.i.i.i.i = icmp eq ptr %i.km, %i.kg
  br i1 %.not15.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kn, %i.kl
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i, %bb.at
  %i.ko = load i32, ptr %i.kb, align 8, !tbaa !161, !noalias !2017
  %i.kp = icmp ult i32 %i.kj, %i.ko
  br i1 %i.kp, label %bb.au, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.kq = add nuw i32 %i.kj, 1
  store i32 %i.kq, ptr %i.kc, align 4, !tbaa !162, !noalias !2017
  store ptr %i.kg, ptr %i.kl, align 8, !tbaa !76, !noalias !2017
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph.i.i.i
  %i.kr = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %i.kg) #27, !noalias !2017 ; 0 uses
  %.pre.i.i.i.i = load i8, ptr %i.kd, align 8, !tbaa !70, !range !71, !noalias !2017
  %.pre.fr.i.i.i.i = freeze i8 %.pre.i.i.i.i      ; 2 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i

_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i, %bb.au
  %i.ks = phi i8 [ %.pre.fr.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i ], [ %i.ke, %bb.au ], [ %i.ke, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.kt = phi i8 [ %.pre.fr.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i ], [ 1, %bb.au ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.ku = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i210 = icmp eq ptr %i.ku, %i.jz
  br i1 %.not.i.i.i210, label %_ZN4llvm11SmallPtrSetIPKNS_11InstructionELj2EEC2IRNS_11SmallVectorIPNS_10SelectInstELj2EEEEENS_12from_range_tEOT_.exit, label %.lr.ph.i.i.i, !llvm.loop !1988

_ZN4llvm11SmallPtrSetIPKNS_11InstructionELj2EEC2IRNS_11SmallVectorIPNS_10SelectInstELj2EEEEENS_12from_range_tEOT_.exit: ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i.i.i
  %.pre366 = load ptr, ptr %4, align 8, !tbaa !75, !noalias !2018 ; 2 uses
  %.pre367 = load i32, ptr %i.w, align 8, !tbaa !163, !noalias !2018 ; 2 uses
  %.not304345 = icmp eq i32 %.pre367, 0
  br i1 %.not304345, label %._crit_edge347, label %.lr.ph.i.lr.ph

.lr.ph.i.lr.ph:                                   ; preds = %_ZN4llvm11SmallPtrSetIPKNS_11InstructionELj2EEC2IRNS_11SmallVectorIPNS_10SelectInstELj2EEEEENS_12from_range_tEOT_.exit
  %i.kv = zext i32 %.pre367 to i64
  %.idx352 = shl nuw nsw i64 %i.kv, 3
  %i.kw = getelementptr inbounds nuw i8, ptr %.pre366, i64 %.idx352
  %i.kx = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ky = getelementptr inbounds nuw i8, ptr %.0168, i64 56
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 856
  br label %.lr.ph.i

bb.av:                                            ; preds = %.lr.ph343, %bb.av
  %.0170341 = phi ptr [ %i.jo, %.lr.ph343 ], [ %i.le, %bb.av ] ; 2 uses
  %i.ld = load ptr, ptr %.0170341, align 8, !tbaa !379
  call void @_ZN4llvm11Instruction10moveBeforeENS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsIS0_Lb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ld, ptr nonnull %i.js, i64 0) #27
  %i.le = getelementptr inbounds nuw i8, ptr %.0170341, i64 8 ; 2 uses
  %.not180 = icmp eq ptr %i.le, %i.jr
  br i1 %.not180, label %._crit_edge344, label %bb.av

._crit_edge347.loopexit:                          ; preds = %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE5eraseES3_.exit
  %.pre368 = load i8, ptr %i.kd, align 8, !tbaa !70, !range !71
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %._crit_edge347.loopexit, %_ZN4llvm11SmallPtrSetIPKNS_11InstructionELj2EEC2IRNS_11SmallVectorIPNS_10SelectInstELj2EEEEENS_12from_range_tEOT_.exit
  %i.lf = phi i8 [ %.pre368, %._crit_edge347.loopexit ], [ %i.ks, %_ZN4llvm11SmallPtrSetIPKNS_11InstructionELj2EEC2IRNS_11SmallVectorIPNS_10SelectInstELj2EEEEENS_12from_range_tEOT_.exit ]
  store ptr %i.jg, ptr %i.bh, align 8
  store i16 0, ptr %.sroa.4132.0..sroa_idx408, align 8
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge347
  %i.lh = load ptr, ptr %15, align 8, !tbaa !73
  call void @free(ptr noundef %i.lh) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %._crit_edge347.thread, %._crit_edge347, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eu) #27
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.et) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.li = load ptr, ptr %6, align 8, !tbaa !75    ; 2 uses
end_hunk_0
