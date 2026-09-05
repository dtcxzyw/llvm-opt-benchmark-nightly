Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BinaryFunction?download=true
inline.NumInlined: 14780
inline.NumDeleted: 6683
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4llvm4bolt14BinaryFunction8buildCFGEt:bb.a
  br i1 %i.gu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i136
  %i.gv = load ptr, ptr %12, align 8, !tbaa !894
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -128 ; 3 uses
  store ptr %i.gw, ptr %12, align 8, !tbaa !894
  %.not.i139 = icmp eq ptr %i.gw, %i.gc
  br i1 %.not.i139, label %.critedge.i140, label %.lr.ph.i136, !llvm.loop !1919

bb.af:                                            ; preds = %bb.ad
  %i.gx = load i64, ptr %12, align 8, !tbaa !588
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.ha = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.hb = call i64 @_ZNK4llvm4bolt13MCPlusBuilder9getOffsetERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.ha, ptr noundef nonnull align 8 dereferenceable(128) %i.gz) #30
  %i.hc = and i64 %i.hb, 4294967296
  %.not7.i138 = icmp eq i64 %i.hc, 0
  br i1 %.not7.i138, label %bb.ag, label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_1clEm.exit141"

bb.ag:                                            ; preds = %bb.af
  %i.hd = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.he = trunc nuw i64 %.0111286 to i32
  %i.hf = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder9setOffsetERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.hd, ptr noundef nonnull align 8 dereferenceable(128) %i.gz, i32 noundef %i.he) #30 ; 0 uses
  br label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_1clEm.exit141"

.critedge.i140:                                   ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_1clEm.exit141"

"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_1clEm.exit141": ; preds = %.critedge.i140, %bb.ag, %bb.af, %bb.z, %.critedge
  %.3 = phi ptr [ %.1115, %.critedge ], [ %.1, %bb.z ], [ %i.fr, %bb.af ], [ %i.fr, %bb.ag ], [ %i.fr, %.critedge.i140 ] ; 11 uses
  %i.hg = zext i32 %i.ai to i64                   ; 2 uses
  %i.hh = load i64, ptr %i.s, align 8, !tbaa !528
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_ZNK4llvm4bolt14BinaryFunction25getFirstInstructionOffsetEv.exit, label %bb.ah

bb.ah:                                            ; preds = %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_1clEm.exit141"
  %i.hj = load ptr, ptr %i.k, align 8, !tbaa !664
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !673
  %i.hm = zext i32 %i.hl to i64
  br label %_ZNK4llvm4bolt14BinaryFunction25getFirstInstructionOffsetEv.exit

_ZNK4llvm4bolt14BinaryFunction25getFirstInstructionOffsetEv.exit: ; preds = %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_1clEm.exit141", %bb.ah
  %.0.i = phi i64 [ %i.hm, %bb.ah ], [ 0, %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_1clEm.exit141" ]
  %i.hn = icmp eq i64 %.0.i, %i.hg
  br i1 %i.hn, label %bb.ai, label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit"

bb.ai:                                            ; preds = %_ZNK4llvm4bolt14BinaryFunction25getFirstInstructionOffsetEv.exit
  %i.ho = load ptr, ptr %i.t, align 8, !tbaa !662 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not10.i.i.i.i, label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ai, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ho, %bb.ai ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.u, %bb.ai ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !583
  %i.hr = icmp ult i32 %i.hq, %i.ai               ; 2 uses
  %.19.i.i.i.i = select i1 %i.hr, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.hr, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !674 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i6.i, label %.lr.ph.i.i.i.i, !llvm.loop !1926

.lr.ph.i.i.i6.i:                                  ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i6.i
  %.012.i.i.i7.i = phi ptr [ %.1.i.i.i12.i, %.lr.ph.i.i.i6.i ], [ %i.ho, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0811.i.i.i8.i = phi ptr [ %.19.i.i.i9.i, %.lr.ph.i.i.i6.i ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i, i64 32
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !583
  %i.hu = icmp ugt i32 %i.ht, %i.ai               ; 2 uses
  %.19.i.i.i9.i = select i1 %i.hu, ptr %.012.i.i.i7.i, ptr %.0811.i.i.i8.i ; 3 uses
  %.1.in.v.i.i.i10.i = select i1 %i.hu, i64 16, i64 24
  %.1.in.i.i.i11.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i, i64 %.1.in.v.i.i.i10.i
  %.1.i.i.i12.i = load ptr, ptr %.1.in.i.i.i11.i, align 8, !tbaa !674 ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %.1.i.i.i12.i, null
  br i1 %.not.i.i.i13.i, label %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE11upper_boundERS3_.exit.i, label %.lr.ph.i.i.i6.i, !llvm.loop !1927

_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE11upper_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i6.i
  %.not7.i142 = icmp eq ptr %.19.i.i.i.i, %.19.i.i.i9.i
  br i1 %.not7.i142, label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit", label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE11upper_boundERS3_.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.3, i64 168 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i, %.lr.ph.i143
  %.sroa.02.08.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i143 ], [ %i.im, %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i ] ; 2 uses
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !588
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i, i64 36
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !710
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %11, i8 0, i64 16, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !89
  store i32 0, ptr %i.x, align 8, !tbaa !478
  store i32 6, ptr %i.y, align 4, !tbaa !597
  %i.ia = load ptr, ptr %i.a, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1568
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !589 ; 2 uses
  %i.id = zext i32 %i.hz to i64
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !77
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1480
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(536) %i.ic, ptr noundef nonnull align 8 dereferenceable(128) %11, i64 noundef %i.id) #30, !inline_history !1928
  %i.ih = load i32, ptr %i.hw, align 8, !tbaa !897
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr %i.hw, align 8, !tbaa !897
  %i.ij = call ptr @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(192) %.3, ptr %i.hx, ptr noundef nonnull align 8 dereferenceable(128) %11) ; 0 uses
  %i.ik = load ptr, ptr %i.v, align 8, !tbaa !89  ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.w
  br i1 %i.il, label %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.ik) #30
  br label %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i

_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.im = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.08.i) #35 ; 2 uses
  %.not.i144 = icmp eq ptr %i.im, %.19.i.i.i9.i
  br i1 %.not.i144, label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit", label %bb.aj, !llvm.loop !1929

"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit": ; preds = %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i, %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE11upper_boundERS3_.exit.i, %bb.ai, %_ZNK4llvm4bolt14BinaryFunction25getFirstInstructionOffsetEv.exit
  %i.in = load ptr, ptr %i.c, align 8, !tbaa !589 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !77
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 352
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = call noundef zeroext i1 %i.iq(ptr noundef nonnull align 8 dereferenceable(536) %i.in, ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #30 ; 2 uses
  %i.is = load ptr, ptr %i.c, align 8, !tbaa !589 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !77
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 360
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = call noundef zeroext i1 %i.iv(ptr noundef nonnull align 8 dereferenceable(536) %i.is, ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #30 ; 2 uses
  %.1112 = select i1 %i.iw, i64 %.0111286, i64 %i.hg
  call void @_ZN4llvm4bolt16BinaryBasicBlock16adjustNumPseudosERKNS_6MCInstEi(ptr noundef nonnull align 8 dereferenceable(192) %.3, ptr noundef nonnull align 8 dereferenceable(128) %i.aj, i32 noundef 1) #30
  %i.ix = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 4 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !681 ; 8 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !882
  %.not.i.i145 = icmp eq ptr %i.iy, %i.ja
  br i1 %.not.i.i145, label %bb.an, label %bb.al

bb.al:                                            ; preds = %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.iy, ptr noundef nonnull align 8 dereferenceable(128) %i.aj, i64 16, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0225.0283, i64 56
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 32 ; 3 uses
  store ptr %i.jd, ptr %i.jb, align 8, !tbaa !89
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 24 ; 2 uses
  store i32 0, ptr %i.je, align 8, !tbaa !478
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 28
  store i32 6, ptr %i.jf, align 4, !tbaa !597
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0225.0283, i64 64 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !478 ; 5 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.jh, 0
  %i.ji = icmp eq ptr %i.iy, %i.aj
  %or.cond.i.i.i.i = or i1 %i.ji, %.not.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm6MCInstC2ERKS0_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jj = icmp ugt i32 %i.jh, 6
  br i1 %i.jj, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i: ; preds = %bb.am
  %i.jk = zext i32 %i.jh to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.jb, ptr noundef nonnull %i.jd, i64 noundef %i.jk, i64 noundef 16) #30
  %.pre.i.i.i.i = load i32, ptr %i.jg, align 8, !tbaa !478 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.jb, align 8, !tbaa !89
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i, %bb.am
  %i.jl = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.jd, %bb.am ]
  %i.jm = phi i32 [ %.pre.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.jh, %bb.am ]
  %i.jn = zext i32 %i.jm to i64
  %i.jo = load ptr, ptr %i.jc, align 8, !tbaa !89
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.jn, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jl, ptr align 8 %i.jo, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i
  store i32 %i.jh, ptr %i.je, align 8, !tbaa !478
  br label %_ZN4llvm6MCInstC2ERKS0_.exit.i.i

_ZN4llvm6MCInstC2ERKS0_.exit.i.i:                 ; preds = %.sink.split.i.i.i.i.i, %bb.al
  %i.jp = load ptr, ptr %i.ix, align 8, !tbaa !681
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 128
  store ptr %i.jq, ptr %i.ix, align 8, !tbaa !681
  br label %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionEONS_6MCInstE.exit

bb.an:                                            ; preds = %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit"
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(192) %.3, ptr %i.iy, ptr noundef nonnull align 8 dereferenceable(128) %i.aj)
  br label %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionEONS_6MCInstE.exit

_ZN4llvm4bolt16BinaryBasicBlock14addInstructionEONS_6MCInstE.exit: ; preds = %bb.an, %_ZN4llvm6MCInstC2ERKS0_.exit.i.i
  %i.jr = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0225.0283) #35 ; 2 uses
  %.not271 = icmp eq ptr %i.jr, %i.m
  br i1 %.not271, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionEONS_6MCInstE.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !673
  br label %bb.aq

bb.ap:                                            ; preds = %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionEONS_6MCInstE.exit
  %i.ju = load i64, ptr %i.z, align 8, !tbaa !501
  %i.jv = trunc i64 %i.ju to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0108 = phi i32 [ %i.jt, %bb.ao ], [ %i.jv, %bb.ap ] ; 2 uses
  %i.jw = load ptr, ptr %i.t, align 8, !tbaa !662 ; 3 uses
  %.not10.i.i.i.i146 = icmp eq ptr %i.jw, null
  br i1 %.not10.i.i.i.i146, label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit170", label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %bb.aq, %.lr.ph.i.i.i.i147
  %.012.i.i.i.i148 = phi ptr [ %.1.i.i.i.i153, %.lr.ph.i.i.i.i147 ], [ %i.jw, %bb.aq ] ; 3 uses
  %.0811.i.i.i.i149 = phi ptr [ %.19.i.i.i.i150, %.lr.ph.i.i.i.i147 ], [ %i.u, %bb.aq ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i148, i64 32
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !583
  %i.jz = icmp ult i32 %i.jy, %.0108              ; 2 uses
  %.19.i.i.i.i150 = select i1 %i.jz, ptr %.0811.i.i.i.i149, ptr %.012.i.i.i.i148 ; 3 uses
  %.1.in.v.i.i.i.i151 = select i1 %i.jz, i64 24, i64 16
  %.1.in.i.i.i.i152 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i148, i64 %.1.in.v.i.i.i.i151
  %.1.i.i.i.i153 = load ptr, ptr %.1.in.i.i.i.i152, align 8, !tbaa !674 ; 2 uses
  %.not.i.i.i.i154 = icmp eq ptr %.1.i.i.i.i153, null
  br i1 %.not.i.i.i.i154, label %.lr.ph.i.i.i6.i156, label %.lr.ph.i.i.i.i147, !llvm.loop !1926

.lr.ph.i.i.i6.i156:                               ; preds = %.lr.ph.i.i.i.i147, %.lr.ph.i.i.i6.i156
  %.012.i.i.i7.i157 = phi ptr [ %.1.i.i.i12.i162, %.lr.ph.i.i.i6.i156 ], [ %i.jw, %.lr.ph.i.i.i.i147 ] ; 3 uses
  %.0811.i.i.i8.i158 = phi ptr [ %.19.i.i.i9.i159, %.lr.ph.i.i.i6.i156 ], [ %i.u, %.lr.ph.i.i.i.i147 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i157, i64 32
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !583
  %i.kc = icmp ugt i32 %i.kb, %.0108              ; 2 uses
  %.19.i.i.i9.i159 = select i1 %i.kc, ptr %.012.i.i.i7.i157, ptr %.0811.i.i.i8.i158 ; 3 uses
  %.1.in.v.i.i.i10.i160 = select i1 %i.kc, i64 16, i64 24
  %.1.in.i.i.i11.i161 = getelementptr inbounds nuw i8, ptr %.012.i.i.i7.i157, i64 %.1.in.v.i.i.i10.i160
  %.1.i.i.i12.i162 = load ptr, ptr %.1.in.i.i.i11.i161, align 8, !tbaa !674 ; 2 uses
  %.not.i.i.i13.i163 = icmp eq ptr %.1.i.i.i12.i162, null
  br i1 %.not.i.i.i13.i163, label %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE11upper_boundERS3_.exit.i164, label %.lr.ph.i.i.i6.i156, !llvm.loop !1927

_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE11upper_boundERS3_.exit.i164: ; preds = %.lr.ph.i.i.i6.i156
  %.not7.i165 = icmp eq ptr %.19.i.i.i.i150, %.19.i.i.i9.i159
  br i1 %.not7.i165, label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit170", label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE11upper_boundERS3_.exit.i164
  %i.kd = getelementptr inbounds nuw i8, ptr %.3, i64 168 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i168, %.lr.ph.i166
  %.sroa.02.08.i167 = phi ptr [ %.19.i.i.i.i150, %.lr.ph.i166 ], [ %i.kt, %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i168 ] ; 2 uses
  %i.ke = load ptr, ptr %i.ix, align 8, !tbaa !588
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i167, i64 36
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !710
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, i8 0, i64 16, i1 false)
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !89
  store i32 0, ptr %i.ac, align 8, !tbaa !478
  store i32 6, ptr %i.ad, align 4, !tbaa !597
  %i.kh = load ptr, ptr %i.a, align 8, !tbaa !218, !nonnull !86, !align !219
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1568
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !589 ; 2 uses
  %i.kk = zext i32 %i.kg to i64
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !77
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1480
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(536) %i.kj, ptr noundef nonnull align 8 dereferenceable(128) %10, i64 noundef %i.kk) #30, !inline_history !1928
  %i.ko = load i32, ptr %i.kd, align 8, !tbaa !897
  %i.kp = add i32 %i.ko, 1
  store i32 %i.kp, ptr %i.kd, align 8, !tbaa !897
  %i.kq = call ptr @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(192) %.3, ptr %i.ke, ptr noundef nonnull align 8 dereferenceable(128) %10) ; 0 uses
  %i.kr = load ptr, ptr %i.aa, align 8, !tbaa !89 ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.ab
  br i1 %i.ks, label %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i168, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef %i.kr) #30
  br label %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i168

_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i168: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.kt = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.08.i167) #35 ; 2 uses
  %.not.i169 = icmp eq ptr %i.kt, %.19.i.i.i9.i159
  br i1 %.not.i169, label %"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit170", label %bb.ar, !llvm.loop !1929

"_ZZN4llvm4bolt14BinaryFunction8buildCFGEtENK3$_0clEmPNS0_16BinaryBasicBlockE.exit170": ; preds = %_ZN4llvm4bolt14BinaryFunction12addCFIPseudoEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEj.exit.i168, %bb.aq, %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE11upper_boundERS3_.exit.i164
  %spec.select = select i1 %i.ir, ptr %.3, ptr %.1
  %spec.select266 = select i1 %i.ir, ptr null, ptr %.3
  %i.ku = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0225.0283) #35 ; 2 uses
  %.not267 = icmp eq ptr %i.ku, %i.m
  br i1 %.not267, label %._crit_edge, label %bb.f, !llvm.loop !1930

bb.at:                                            ; preds = %._crit_edge
  store i8 0, ptr %i.d, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.kv = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i16 257, ptr %i.kv, align 8
  call void @_ZN4llvm4bolt23createNonFatalBOLTErrorERKNS_5TwineE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.ci

bb.au:                                            ; preds = %._crit_edge
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !478 ; 2 uses
  %.not.i.i.i.i171 = icmp eq i32 %i.ky, 0
  br i1 %.not.i.i.i.i171, label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairIjjELj0EEEEEvOT_.exit.thread, label %_ZN4llvm4sortIRNS_11SmallVectorISt4pairIjjELj0EEEEEvOT_.exit

_ZN4llvm4sortIRNS_11SmallVectorISt4pairIjjELj0EEEEEvOT_.exit.thread: ; preds = %bb.au
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !89 ; 2 uses
  br label %_ZN4llvm15SmallVectorImplISt4pairIjjEE5eraseEPKS2_S5_.exit

_ZN4llvm4sortIRNS_11SmallVectorISt4pairIjjELj0EEEEEvOT_.exit: ; preds = %bb.au
  %i.la = zext i32 %i.ky to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.la, 3
  %i.lb = load ptr, ptr %i.kw, align 8, !tbaa !89 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.idx.i ; 2 uses
  %i.ld = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.la, i1 true)
  %i.le = shl nuw nsw i64 %i.ld, 1
  %i.lf = xor i64 %i.le, 126
  call void @_ZSt16__introsort_loopIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.lb, ptr noundef nonnull %i.lc, i64 noundef %i.lf)
  call void @_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.lb, ptr noundef nonnull %i.lc)
  %.pr = load i32, ptr %i.kx, align 8, !tbaa !478 ; 2 uses
  %i.lg = load ptr, ptr %i.kw, align 8, !tbaa !89 ; 6 uses
  %i.lh = zext i32 %.pr to i64
  %.idx.i172 = shl nuw nsw i64 %i.lh, 3           ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.idx.i172 ; 5 uses
  %switch = icmp ult i32 %.pr, 2
  br i1 %switch, label %_ZN4llvm15SmallVectorImplISt4pairIjjEE5eraseEPKS2_S5_.exit, label %.lr.ph391

.lr.ph391:                                        ; preds = %_ZN4llvm4sortIRNS_11SmallVectorISt4pairIjjELj0EEEEEvOT_.exit
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  br label %bb.av

.preheader.i.i.i.i:                               ; preds = %bb.av
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %.not.i.i.i.i173 = icmp eq ptr %i.lk, %i.li
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i173, label %_ZN4llvm15SmallVectorImplISt4pairIjjEE5eraseEPKS2_S5_.exit, label %bb.av, !llvm.loop !1931

bb.av:                                            ; preds = %.lr.ph391, %.preheader.i.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph391 ], [ %indvar.next, %.preheader.i.i.i.i ] ; 2 uses
  %i.ll = phi ptr [ %i.lj, %.lr.ph391 ], [ %i.lk, %.preheader.i.i.i.i ] ; 5 uses
  %.0.i.i.i.i390 = phi ptr [ %i.lg, %.lr.ph391 ], [ %i.ll, %.preheader.i.i.i.i ] ; 10 uses
  %i.lm = load <2 x i32>, ptr %.0.i.i.i.i390, align 4
  %i.ln = load <2 x i32>, ptr %i.ll, align 4
  %i.lo = icmp eq <2 x i32> %i.lm, %i.ln          ; 2 uses
  %i.lp = extractelement <2 x i1> %i.lo, i64 0
  %i.lq = extractelement <2 x i1> %i.lo, i64 1
  %i.lr = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %i.lr, label %_ZSt15__adjacent_findIPSt4pairIjjEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S6_S6_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !1931

_ZSt15__adjacent_findIPSt4pairIjjEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S6_S6_T0_.exit.i.i.i: ; preds = %bb.av
  %i.ls = load i32, ptr %.0.i.i.i.i390, align 4, !tbaa !684 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i390, i64 16 ; 4 uses
  %.not23.i.i.i = icmp eq ptr %i.lt, %i.li
  br i1 %.not23.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i174.preheader

.lr.ph.i.i.i174.preheader:                        ; preds = %_ZSt15__adjacent_findIPSt4pairIjjEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S6_S6_T0_.exit.i.i.i
  %i.lu = add nsw i64 %.idx.i172, -24             ; 2 uses
  %i.lv = shl i64 %indvar, 3                      ; 2 uses
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = and i64 %i.lw, 8
  %lcmp.mod.not.not = icmp eq i64 %i.lx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i174.prol, label %.lr.ph.i.i.i174.prol.loopexit

.lr.ph.i.i.i174.prol:                             ; preds = %.lr.ph.i.i.i174.preheader
  %i.ly = load i32, ptr %i.lt, align 4, !tbaa !684 ; 3 uses
  %i.lz = icmp eq i32 %i.ls, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i390, i64 4
  %i.mb = load i32, ptr %i.ma, align 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ll, i64 12 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4
  %i.me = icmp eq i32 %i.mb, %i.md
  %i.mf = select i1 %i.lz, i1 %i.me, i1 false
  br i1 %i.mf, label %.lr.ph.i.i.i174.prol.loopexit.unr-lcssa, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i174.prol
  %i.mg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i390, i64 8 ; 2 uses
  store i32 %i.ly, ptr %i.mg, align 4, !tbaa !684
  %i.mh = load i32, ptr %i.mc, align 4, !tbaa !583
  %i.mi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i390, i64 12
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !685
  br label %.lr.ph.i.i.i174.prol.loopexit.unr-lcssa

.lr.ph.i.i.i174.prol.loopexit.unr-lcssa:          ; preds = %bb.aw, %.lr.ph.i.i.i174.prol
  %.1.i.i.i175.prol = phi ptr [ %.0.i.i.i.i390, %.lr.ph.i.i.i174.prol ], [ %i.mg, %bb.aw ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i390, i64 24
  br label %.lr.ph.i.i.i174.prol.loopexit

.lr.ph.i.i.i174.prol.loopexit:                    ; preds = %.lr.ph.i.i.i174.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i174.preheader
  %.1.i.i.i175.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i174.preheader ], [ %.1.i.i.i175.prol, %.lr.ph.i.i.i174.prol.loopexit.unr-lcssa ]
  %.unr = phi i32 [ %i.ls, %.lr.ph.i.i.i174.preheader ], [ %i.ly, %.lr.ph.i.i.i174.prol.loopexit.unr-lcssa ]
  %.unr404 = phi ptr [ %i.lt, %.lr.ph.i.i.i174.preheader ], [ %i.mj, %.lr.ph.i.i.i174.prol.loopexit.unr-lcssa ]
  %.025.i.i.i.unr = phi ptr [ %.0.i.i.i.i390, %.lr.ph.i.i.i174.preheader ], [ %.1.i.i.i175.prol, %.lr.ph.i.i.i174.prol.loopexit.unr-lcssa ]
end_hunk_0
