Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Format?download=true
inline.NumInlined: 8543
inline.NumDeleted: 3503
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5clang6format12_GLOBAL__N_17Cleaner7analyzeERNS0_14TokenAnnotatorERN4llvm15SmallVectorImplIPNS0_13AnnotatedLineEEERNS0_16FormatTokenLexerE:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4864
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4880 ; 2 uses
  br label %bb.d

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.p = phi i32 [ %i.x, %bb.c ], [ 0, %bb.a ]    ; 3 uses
  %i.q = zext i32 %i.p to i64
  %i.r = load ptr, ptr %3, align 8, !tbaa !357
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !560
  %i.u = call noundef zeroext i1 @_ZNK5clang6format13AnnotatedLine19startsWithNamespaceEv(ptr noundef nonnull align 8 dereferenceable(84) %i.t)
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.v = call fastcc noundef zeroext i1 @_ZN5clang6format12_GLOBAL__N_17Cleaner19checkEmptyNamespaceERN4llvm15SmallVectorImplIPNS0_13AnnotatedLineEEEjRjRSt3setIjSt4lessIjESaIjEE(ptr noundef nonnull align 8 dereferenceable(4888) %1, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %12) ; 0 uses
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !233
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.w = phi i32 [ %.pre.i, %bb.b ], [ %i.p, %.lr.ph.i ]
  %i.x = add i32 %i.w, 1                          ; 3 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !233
  %.not.i = icmp eq i32 %i.x, %i.j
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1323

bb.d:                                             ; preds = %._crit_edge24.i, %.lr.ph28.i
  %.sroa.014.026.i = phi ptr [ %.pre30.i, %.lr.ph28.i ], [ %i.aw, %._crit_edge24.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.026.i, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !233
  %i.aa = zext i32 %i.z to i64
  %i.ab = load ptr, ptr %3, align 8, !tbaa !357
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !560
  %.019.i = load ptr, ptr %i.ad, align 8, !tbaa !593 ; 2 uses
  %.not1320.i = icmp eq ptr %.019.i, null
  br i1 %.not1320.i, label %._crit_edge24.i, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.d, %_ZN5clang6format12_GLOBAL__N_17Cleaner11deleteTokenEPNS0_11FormatTokenE.exit.i
  %.021.i = phi ptr [ %.0.i, %_ZN5clang6format12_GLOBAL__N_17Cleaner11deleteTokenEPNS0_11FormatTokenE.exit.i ], [ %.019.i, %bb.d ] ; 5 uses
  %.02931.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !324 ; 2 uses
  %.not32.i.i.i.i.i = icmp eq ptr %.02931.i.i.i.i.i, null
  br i1 %.not32.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph23.i, %.lr.ph.i.i.i.i.i
  %.02933.i.i.i.i.i = phi ptr [ %.029.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.02931.i.i.i.i.i, %.lr.ph23.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02933.i.i.i.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !593
  %.val8.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !595
  %.val9.i.i.i.i.i = load i32, ptr %.021.i, align 8, !tbaa !503
  %.val10.i.i.i.i.i = load i32, ptr %i.af, align 8, !tbaa !503
  %i.ag = call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %.val8.i.i.i.i.i, i32 %.val9.i.i.i.i.i, i32 %.val10.i.i.i.i.i) #28 ; 2 uses
  %.in.v.i.i.i.i.i = select i1 %i.ag, i64 16, i64 24
  %.in.i.i.i.i.i = getelementptr i8, ptr %.02933.i.i.i.i.i, i64 %.in.v.i.i.i.i.i
  %.029.i.i.i.i.i = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !324 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.029.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ag, label %._crit_edge.thread.i.i.i.i.i, label %bb.f

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph23.i
  %.028.lcssa38.i.i.i.i.i = phi ptr [ %.02933.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.m, %.lr.ph23.i ] ; 4 uses
  %.val13.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !321
  %i.ah = icmp eq ptr %.028.lcssa38.i.i.i.i.i, %.val13.i.i.i.i.i
  br i1 %i.ah, label %select.unfold.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i.i.i.i
  %i.ai = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa38.i.i.i.i.i) #33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i
  %.028.lcssa37.i.i.i.i.i = phi ptr [ %.028.lcssa38.i.i.i.i.i, %bb.e ], [ %.02933.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %.sroa.014.0.i.i.i.i.i = phi ptr [ %i.ai, %bb.e ], [ %.02933.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i.i, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !593
  %.val5.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !595
  %.val6.i.i.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !503
  %.val7.i.i.i.i.i = load i32, ptr %.021.i, align 8, !tbaa !503
  %i.al = call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %.val5.i.i.i.i.i, i32 %.val6.i.i.i.i.i, i32 %.val7.i.i.i.i.i) #28
  br i1 %i.al, label %select.unfold.i.i.i.i, label %_ZN5clang6format12_GLOBAL__N_17Cleaner11deleteTokenEPNS0_11FormatTokenE.exit.i

select.unfold.i.i.i.i:                            ; preds = %bb.f, %._crit_edge.thread.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i = phi ptr [ %.028.lcssa38.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %.028.lcssa37.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.am = icmp eq ptr %.sroa.4.0.i.ph.i.i.i.i, %i.m
  br i1 %i.am, label %_ZNSt8_Rb_treeIPN5clang6format11FormatTokenES3_St9_IdentityIS3_ENS1_12_GLOBAL__N_17Cleaner15FormatTokenLessESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !593
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !595
  %.val10.i6.i.i.i.i = load i32, ptr %.021.i, align 8, !tbaa !503
  %.val11.i.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !503
  %i.ap = call noundef zeroext i1 @_ZNK5clang13SourceManager25isBeforeInTranslationUnitENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(776) %.val.i.i.i.i.i, i32 %.val10.i6.i.i.i.i, i32 %.val11.i.i.i.i.i) #28
  br label %_ZNSt8_Rb_treeIPN5clang6format11FormatTokenES3_St9_IdentityIS3_ENS1_12_GLOBAL__N_17Cleaner15FormatTokenLessESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i.i.i

_ZNSt8_Rb_treeIPN5clang6format11FormatTokenES3_St9_IdentityIS3_ENS1_12_GLOBAL__N_17Cleaner15FormatTokenLessESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i.i.i: ; preds = %bb.g, %select.unfold.i.i.i.i
  %i.aq = phi i1 [ %i.ap, %bb.g ], [ true, %select.unfold.i.i.i.i ]
  %i.ar = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %.021.i, ptr %i.as, align 8, !tbaa !593
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #28
  %i.at = load i64, ptr %i.o, align 8, !tbaa !323
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.o, align 8, !tbaa !323
  br label %_ZN5clang6format12_GLOBAL__N_17Cleaner11deleteTokenEPNS0_11FormatTokenE.exit.i

_ZN5clang6format12_GLOBAL__N_17Cleaner11deleteTokenEPNS0_11FormatTokenE.exit.i: ; preds = %_ZNSt8_Rb_treeIPN5clang6format11FormatTokenES3_St9_IdentityIS3_ENS1_12_GLOBAL__N_17Cleaner15FormatTokenLessESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i.i.i, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.021.i, i64 216
  %.0.i = load ptr, ptr %i.av, align 8, !tbaa !593 ; 2 uses
  %.not13.i = icmp eq ptr %.0.i, null
  br i1 %.not13.i, label %._crit_edge24.i, label %.lr.ph23.i, !llvm.loop !1324

._crit_edge24.i:                                  ; preds = %_ZN5clang6format12_GLOBAL__N_17Cleaner11deleteTokenEPNS0_11FormatTokenE.exit.i, %bb.d
  %i.aw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.014.026.i) #33 ; 2 uses
  %.not17.i = icmp eq ptr %i.aw, %i.d
  br i1 %.not17.i, label %_ZN5clang6format12_GLOBAL__N_17Cleaner19checkEmptyNamespaceERN4llvm15SmallVectorImplIPNS0_13AnnotatedLineEEE.exit, label %bb.d

_ZN5clang6format12_GLOBAL__N_17Cleaner19checkEmptyNamespaceERN4llvm15SmallVectorImplIPNS0_13AnnotatedLineEEE.exit: ; preds = %._crit_edge24.i, %._crit_edge.thread.i, %._crit_edge.i
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !325
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ay = load ptr, ptr %3, align 8, !tbaa !357   ; 2 uses
  %i.az = load i32, ptr %i.i, align 8, !tbaa !358 ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %.idx = shl nuw nsw i64 %i.ba, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %.not17 = icmp eq i32 %i.az, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5clang6format12_GLOBAL__N_17Cleaner19checkEmptyNamespaceERN4llvm15SmallVectorImplIPNS0_13AnnotatedLineEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !369, !alias.scope !1331
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !325, !alias.scope !1331
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !321, !alias.scope !1331
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !322, !alias.scope !1331
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !323, !alias.scope !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1331
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !357, !noalias !1331
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !358, !noalias !1331
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 6, ptr %i.bj, align 4, !tbaa !359, !noalias !1331
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4864
  %.val.i = load ptr, ptr %i.bk, align 8, !tbaa !321, !noalias !1331 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4848 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %.val.i, %i.bl
  br i1 %.not5.i.i.i.i.i.i, label %._crit_edge.i13, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPN5clang6format11FormatTokenELj6EEEEaSERKS5_.exit.i.i.i.i.i.i
  %.sroa.02.06.i.i.i.i.i.i = phi ptr [ %i.bv, %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPN5clang6format11FormatTokenELj6EEEEaSERKS5_.exit.i.i.i.i.i.i ], [ %.val.i, %._crit_edge ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i.i.i, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !593 ; 2 uses
  %i.bo = load i32, ptr %i.bi, align 8, !tbaa !358, !noalias !1331 ; 2 uses
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !359, !noalias !1331
  %.not.i.i.i.i.i.i.i.i = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h, !prof !364

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang6format11FormatTokenELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bn)
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPN5clang6format11FormatTokenELj6EEEEaSERKS5_.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %5, align 8, !tbaa !357, !noalias !1331
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bn, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.bi, align 8, !tbaa !358, !noalias !1331
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !358, !noalias !1331
  br label %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPN5clang6format11FormatTokenELj6EEEEaSERKS5_.exit.i.i.i.i.i.i

_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPN5clang6format11FormatTokenELj6EEEEaSERKS5_.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.bv = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.06.i.i.i.i.i.i) #33 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bl
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4copyISt23_Rb_tree_const_iteratorIPN5clang6format11FormatTokenEESt20back_insert_iteratorIN4llvm11SmallVectorIS4_Lj6EEEEET0_T_SC_SB_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1327

_ZSt4copyISt23_Rb_tree_const_iteratorIPN5clang6format11FormatTokenEESt20back_insert_iteratorIN4llvm11SmallVectorIS4_Lj6EEEEET0_T_SC_SB_.exit.i: ; preds = %_ZNSt20back_insert_iteratorIN4llvm11SmallVectorIPN5clang6format11FormatTokenELj6EEEEaSERKS5_.exit.i.i.i.i.i.i
  %.pre.i11 = load i32, ptr %i.bi, align 8, !tbaa !358, !noalias !1331 ; 2 uses
  %.not23.i = icmp eq i32 %.pre.i11, 0
  br i1 %.not23.i, label %._crit_edge.i13, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZSt4copyISt23_Rb_tree_const_iteratorIPN5clang6format11FormatTokenEESt20back_insert_iteratorIN4llvm11SmallVectorIS4_Lj6EEEEET0_T_SC_SB_.exit.i
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 2352
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4llvm5ErrorD2Ev.exit21.i, %.preheader.lr.ph.i
  %i.cc = phi i32 [ %.pre.i11, %.preheader.lr.ph.i ], [ %i.et, %_ZN4llvm5ErrorD2Ev.exit21.i ] ; 2 uses
  %i.cd = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.es, %_ZN4llvm5ErrorD2Ev.exit21.i ]
  %.022.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.lcssa.i, %_ZN4llvm5ErrorD2Ev.exit21.i ] ; 2 uses
  %i.ce = load ptr, ptr %5, align 8, !noalias !1331 ; 4 uses
  %i.cf = add i32 %i.cc, -1                       ; 3 uses
  %exitcond.not.i45 = icmp eq i32 %.022.i, %i.cf
  br i1 %exitcond.not.i45, label %..critedge_crit_edge.i, label %.lr.ph47

bb.j:                                             ; preds = %.lr.ph47
  %exitcond.not.i = icmp eq i32 %i.cg, %i.cf
  br i1 %exitcond.not.i, label %..critedge_crit_edge.i, label %.lr.ph47, !llvm.loop !1328

..critedge_crit_edge.i:                           ; preds = %bb.j, %.preheader.i
  %.pre24.i = zext i32 %i.cf to i64
  br label %.critedge.i

.lr.ph47:                                         ; preds = %.preheader.i, %bb.j
  %.017.i46 = phi i32 [ %i.cg, %bb.j ], [ %.022.i, %.preheader.i ] ; 2 uses
  %i.cg = add i32 %.017.i46, 1                    ; 4 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = zext i32 %.017.i46 to i64               ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !593
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 216
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !588
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ch
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !593
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.j, label %.critedge.i, !llvm.loop !1328

.critedge.i:                                      ; preds = %.lr.ph47, %..critedge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre24.i, %..critedge_crit_edge.i ], [ %i.ci, %.lr.ph47 ]
  %.lcssa.i = phi i32 [ %i.cc, %..critedge_crit_edge.i ], [ %i.cg, %.lr.ph47 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1331
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !593
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !503
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.pre-phi.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !593 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !590
  %i.cx = call noundef zeroext i1 @_ZN5clang3tok12isAnnotationENS0_9TokenKindE(i16 noundef zeroext %i.cw) #28
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !504 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cz, 0
  %i.da = load i32, ptr %i.cu, align 8
  %i.db = select i1 %.not.i.i.i, i32 %i.da, i32 %i.cz
  br label %_ZNK5clang5Token9getEndLocEv.exit.i

bb.l:                                             ; preds = %.critedge.i
  %i.dc = load i32, ptr %i.cu, align 8, !tbaa !503
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !504
  %i.df = add i32 %i.de, %i.dc
  br label %_ZNK5clang5Token9getEndLocEv.exit.i

_ZNK5clang5Token9getEndLocEv.exit.i:              ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i = phi i32 [ %i.db, %bb.k ], [ %i.df, %bb.l ]
  %.sroa.2.0.insert.ext.i.i = zext i32 %.sroa.0.0.i.i to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cs to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %6, align 8, !noalias !1331
  store i8 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !1331
  %i.dg = load ptr, ptr %i.bw, align 8, !tbaa !589, !noalias !1331, !nonnull !315, !align !355
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !495, !nonnull !315, !align !355
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !1331
  call void @_ZN5clang11LangOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(1136) %9) #28
  call void @_ZN5clang7tooling11ReplacementC1ERKNS_13SourceManagerERKNS_15CharSourceRangeEN4llvm9StringRefERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(776) %i.di, ptr noundef nonnull align 4 dereferenceable(9) %6, ptr nonnull @.str.41, i64 0, ptr noundef nonnull align 8 dereferenceable(1136) %9) #28
  call void @_ZN5clang7tooling12Replacements3addERKNS0_11ReplacementE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(72) %8) #28
  %i.dj = load ptr, ptr %i.bx, align 8, !tbaa !69, !noalias !1331 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.by
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNK5clang5Token9getEndLocEv.exit.i
  %i.dl = load i64, ptr %i.by, align 8, !tbaa !67, !noalias !1331
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNK5clang5Token9getEndLocEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dn = load ptr, ptr %8, align 8, !tbaa !69, !noalias !1331 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bz
  br i1 %i.do, label %_ZN5clang7tooling11ReplacementD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.dp = load i64, ptr %i.bz, align 8, !tbaa !67, !noalias !1331
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #29
  br label %_ZN5clang7tooling11ReplacementD2Ev.exit.i

_ZN5clang7tooling11ReplacementD2Ev.exit.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @_ZN5clang11LangOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(1136) dereferenceable(1136) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1331
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1331
  %i.dr = load ptr, ptr %7, align 8, !tbaa !384, !noalias !1331
  %.not.i12 = icmp eq ptr %i.dr, null
  br i1 %.not.i12, label %_ZN4llvm5ErrorD2Ev.exit21.i, label %bb.m

bb.m:                                             ; preds = %_ZN5clang7tooling11ReplacementD2Ev.exit.i
  %i.ds = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !1331
  %i.dt = load ptr, ptr %7, align 8, !tbaa !384, !noalias !1331
  store ptr %i.dt, ptr %11, align 8, !tbaa !384, !noalias !1331
  store ptr null, ptr %7, align 8, !tbaa !384, !noalias !1331
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11) #28
  %i.du = load ptr, ptr %10, align 8, !tbaa !69, !noalias !1331
  %i.dv = load i64, ptr %i.ca, align 8, !tbaa !66, !noalias !1331
  %i.dw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr noundef %i.du, i64 noundef %i.dv) #28 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !385
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 32 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !386 ; 2 uses
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ec = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull @.str.80, i64 noundef 1) #28 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.o:                                             ; preds = %bb.m
  store i8 10, ptr %i.ea, align 1
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !386
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !386
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.o, %bb.n
  %i.ef = load ptr, ptr %10, align 8, !tbaa !69, !noalias !1331 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.cb
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.eh = load i64, ptr %i.cb, align 8, !tbaa !67, !noalias !1331
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ej = load ptr, ptr %11, align 8, !tbaa !384, !noalias !1331 ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !262
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ej) #28, !inline_history !1329
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1331
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !384, !noalias !1331 ; 3 uses
  %i.eo = icmp eq ptr %.pr.i, null
  br i1 %i.eo, label %_ZN4llvm5ErrorD2Ev.exit21.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = load ptr, ptr %.pr.i, align 8, !tbaa !262
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(8) %.pr.i) #28, !inline_history !1329
  br label %_ZN4llvm5ErrorD2Ev.exit21.i

_ZN4llvm5ErrorD2Ev.exit21.i:                      ; preds = %bb.r, %bb.q, %_ZN5clang7tooling11ReplacementD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1331
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1331
  %i.es = zext i32 %.lcssa.i to i64
  %i.et = load i32, ptr %i.bi, align 8, !tbaa !358, !noalias !1331 ; 2 uses
  %i.eu = icmp ugt i32 %i.et, %.lcssa.i
  br i1 %i.eu, label %.preheader.i, label %._crit_edge.i13, !llvm.loop !1330

._crit_edge.i13:                                  ; preds = %_ZN4llvm5ErrorD2Ev.exit21.i, %_ZSt4copyISt23_Rb_tree_const_iteratorIPN5clang6format11FormatTokenEESt20back_insert_iteratorIN4llvm11SmallVectorIS4_Lj6EEEEET0_T_SC_SB_.exit.i, %._crit_edge
  %i.ev = load ptr, ptr %5, align 8, !tbaa !357, !noalias !1331 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.bh
  br i1 %i.ew, label %_ZN5clang6format12_GLOBAL__N_17Cleaner13generateFixesEv.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i13
  call void @free(ptr noundef %i.ev) #28
  br label %_ZN5clang6format12_GLOBAL__N_17Cleaner13generateFixesEv.exit

_ZN5clang6format12_GLOBAL__N_17Cleaner13generateFixesEv.exit: ; preds = %._crit_edge.i13, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1331
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ey = load ptr, ptr %i.bd, align 8, !tbaa !325 ; 3 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i14, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN5clang6format12_GLOBAL__N_17Cleaner13generateFixesEv.exit
  %i.ez = load i32, ptr %i.bc, align 8, !tbaa !369
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !325
  %i.fb = load ptr, ptr %i.be, align 8, !tbaa !321
  %i.fc = load ptr, ptr %i.bf, align 8, !tbaa !322
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ex, ptr %i.fd, align 8, !tbaa !398
  %i.fe = load i64, ptr %i.bg, align 8, !tbaa !323
  store ptr null, ptr %i.bd, align 8, !tbaa !325
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !321
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !322
  store i64 0, ptr %i.bg, align 8, !tbaa !323
  br label %_ZNSt4pairIN5clang7tooling12ReplacementsEjEC2IS2_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_.exit

bb.u:                                             ; preds = %_ZN5clang6format12_GLOBAL__N_17Cleaner13generateFixesEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ff, align 8, !tbaa !325
  br label %_ZNSt4pairIN5clang7tooling12ReplacementsEjEC2IS2_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_.exit

_ZNSt4pairIN5clang7tooling12ReplacementsEjEC2IS2_iTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_.exit: ; preds = %bb.t, %bb.u
  %.sink22 = phi ptr [ %i.ex, %bb.u ], [ %i.fb, %bb.t ]
  %.sink21 = phi ptr [ %i.ex, %bb.u ], [ %i.fc, %bb.t ]
  %.sink = phi i64 [ 0, %bb.u ], [ %i.fe, %bb.t ]
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.u ], [ %i.ez, %bb.t ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink22, ptr %i.fg, align 8, !tbaa !321
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink21, ptr %i.fh, align 8, !tbaa !322
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.fi, align 8, !tbaa !323
  store i32 %.sink.i.i.i.i.i.i, ptr %i.ex, align 8, !tbaa !369
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.fj, align 8, !tbaa !420
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  ret void

.lr.ph:                                           ; preds = %_ZN5clang6format12_GLOBAL__N_17Cleaner19checkEmptyNamespaceERN4llvm15SmallVectorImplIPNS0_13AnnotatedLineEEE.exit, %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN5clang6format12_GLOBAL__N_121TrailingCommaInserter20insertTrailingCommasERN4llvm15SmallVectorImplIPNS0_13AnnotatedLineEEERNS_7tooling12ReplacementsE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bd = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.j
  br i1 %i.be, label %_ZN5clang7tooling11ReplacementD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !67
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #29
  br label %_ZN5clang7tooling11ReplacementD2Ev.exit

_ZN5clang7tooling11ReplacementD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread

_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread: ; preds = %.preheader, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit40, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit40, %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit, %bb.e, %bb.c, %bb.f, %_ZN5clang7tooling11ReplacementD2Ev.exit, %_ZNK5clang13SourceManager23getSpellingColumnNumberENS_14SourceLocationEPb.exit, %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.03146, i64 216
  %.031 = load ptr, ptr %i.bh, align 8, !tbaa !593 ; 2 uses
  %.not33 = icmp eq ptr %.031, null
  br i1 %.not33, label %.loopexit, label %.lr.ph, !llvm.loop !1996

.loopexit:                                        ; preds = %_ZNK5clang6format11FormatToken21getPreviousNonCommentEv.exit.thread, %.preheader43, %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %.048, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef i32 @_ZNK5clang13SourceManager15getColumnNumberENS_14SourceLocationEPb(ptr noundef nonnull align 8 dereferenceable(776), i32, ptr noundef) local_unnamed_addr #7

declare i32 @_ZNK5clang13SourceManager22getSpellingLocSlowCaseENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(776), i32) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE18growAndEmplaceBackIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !358  ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load i64, ptr %1, align 8, !tbaa !514
  store i64 %i.h, ptr %i.g, align 8, !tbaa !514
  store ptr null, ptr %1, align 8, !tbaa !514
  %i.i = load ptr, ptr %0, align 8, !tbaa !357    ; 8 uses
  %.idx.i = shl nuw nsw i64 %i.f, 3               ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %.idx.i  ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %i.k = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.l = lshr exact i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.n = getelementptr i8, ptr %i.c, i64 %.idx.i
  %bound0 = icmp ult ptr %i.c, %i.j
  %bound1 = icmp ult ptr %i.i, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.o = shl i64 %n.vec, 3                        ; 2 uses
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr i8, ptr %i.i, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.r ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.i, i64 %i.r ; 4 uses
  %i.s = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !514, !alias.scope !2004
  %wide.load9 = load <2 x i64>, ptr %i.s, align 8, !tbaa !514, !alias.scope !2004
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !514, !alias.scope !2005, !noalias !2004
  store <2 x i64> %wide.load9, ptr %i.t, align 8, !tbaa !514, !alias.scope !2005, !noalias !2004
  %i.u = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !514, !alias.scope !2004
  store <2 x ptr> splat (ptr null), ptr %i.u, align 8, !tbaa !514, !alias.scope !2004
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !2001

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.preheader11:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.p, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader11 ] ; 3 uses
  %i.w = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !514
  store i64 %i.w, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !514
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !514
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.j
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2002

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i
  %.05.i.i = phi ptr [ %i.z, %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.j, %.lr.ph.i.i.preheader ]
  %i.z = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !514 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i.i: ; preds = %.lr.ph.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !262
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #28, !inline_history !2003
  br label %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.i, %i.z
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !17

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit: ; preds = %_ZNSt10unique_ptrIN4llvm12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !357
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit, %bb.a
  %i.ae = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !68
  %i.ag = icmp eq ptr %i.ae, %i.b
  br i1 %i.ag, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE21takeAllocationForGrowEPS5_m.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit
  call void @free(ptr noundef %i.ae) #28
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE21takeAllocationForGrowEPS5_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE21takeAllocationForGrowEPS5_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EELb0EE19moveElementsForGrowEPS5_.exit, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !357
  %i.ah = trunc i64 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !359
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !358
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.ak, ptr %i.d, align 8, !tbaa !358
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %i.an
}

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #7

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin nounwind allocsize(0) }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!51, !52}
!llvm.ident = !{!53}
!llvm.errno.tbaa = !{!58}

!0 = distinct !{!0, !203}
!1 = distinct !{!1, !203}
!2 = distinct !{!2, !203}
!3 = distinct !{!3, !203}
!4 = distinct !{!4, !203}
!5 = distinct !{!5, !203}
!6 = distinct !{!6, !203}
!7 = distinct !{null, null, null, null, null}
!8 = distinct !{!8, !203}
!9 = distinct !{!9, !203}
!10 = distinct !{null}
!11 = distinct !{!11, !203}
!12 = distinct !{!12, !203}
!13 = distinct !{null, null, null}
!14 = distinct !{!14, !203}
!15 = distinct !{null, null}
!16 = distinct !{null, null, null}
!17 = distinct !{!17, !203}
!18 = distinct !{!18, !203}
!19 = distinct !{!19, !203}
!20 = distinct !{!20, !203}
!21 = distinct !{!21, !203}
!22 = distinct !{!22, !203}
!23 = distinct !{!23, !203}
!24 = distinct !{!24, !203}
!25 = distinct !{!25, !203}
!26 = distinct !{!26, !203}
!27 = distinct !{!27, !203}
!28 = distinct !{!28, !203}
!29 = distinct !{!29, !203}
!30 = distinct !{!30, !203}
!31 = distinct !{!31, !203}
!32 = distinct !{!32, !203}
!33 = distinct !{!33, !203}
!34 = distinct !{null, null, null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{null, null, null}
!38 = distinct !{null, null, null, null}
!39 = distinct !{null, null, null}
!40 = distinct !{null, null, null, null}
!41 = distinct !{null, null, null}
!42 = distinct !{null, null}
!43 = distinct !{null, null, null}
!44 = distinct !{null, null, null}
!45 = distinct !{null, null, null}
!46 = distinct !{!46, !203}
!47 = distinct !{!47, !203}
!48 = distinct !{!48, !203}
!49 = distinct !{!49, !203}
!50 = distinct !{null, null, null}
!51 = !{i32 8, !"PIC Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!"omnipotent char", !54, i64 0}
!56 = !{!"int", !55, i64 0}
!57 = !{!"__libc_errno", !56, i64 0}
!58 = !{!57, !56, i64 0}
!59 = !{!"branch_weights", i32 1, i32 1048575}
!60 = !{!"any pointer", !55, i64 0}
!61 = !{!"p1 omnipotent char", !60, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !61, i64 0}
!63 = !{!62, !61, i64 0}
!64 = !{!"long", !55, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !62, i64 0, !64, i64 8, !55, i64 16}
!66 = !{!65, !64, i64 8}
!67 = !{!55, !55, i64 0}
!68 = !{!64, !64, i64 0}
!69 = !{!65, !61, i64 0}
!70 = !{!"bool", !55, i64 0}
!71 = !{!"_ZTSN5clang6format11FormatStyle18ShortFunctionStyleE", !70, i64 0, !70, i64 1, !70, i64 2}
!72 = !{!71, !70, i64 0}
!73 = !{!70, !70, i64 0}
!74 = !{!"_ZTSN5clang6format11FormatStyle30ArrayInitializerAlignmentStyleE", !55, i64 0}
!75 = !{!"_ZTSN5clang6format11FormatStyle21AlignConsecutiveStyleE", !70, i64 0, !70, i64 1, !70, i64 2, !70, i64 3, !70, i64 4, !70, i64 5, !70, i64 6, !70, i64 7}
!76 = !{!"_ZTSN5clang6format11FormatStyle33ShortCaseStatementsAlignmentStyleE", !70, i64 0, !70, i64 1, !70, i64 2, !70, i64 3, !70, i64 4}
!77 = !{!"_ZTSN5clang6format11FormatStyle28EscapedNewlineAlignmentStyleE", !55, i64 0}
!78 = !{!"_ZTSN5clang6format11FormatStyle21OperandAlignmentStyleE", !55, i64 0}
!79 = !{!"_ZTSN5clang6format11FormatStyle30TrailingCommentsAlignmentKindsE", !55, i64 0}
!80 = !{!"_ZTSN5clang6format11FormatStyle30TrailingCommentsAlignmentStyleE", !79, i64 0, !56, i64 4, !70, i64 8}
!81 = !{!"_ZTSN5clang6format11FormatStyle33BreakBeforeNoexceptSpecifierStyleE", !55, i64 0}
!82 = !{!"_ZTSN5clang6format11FormatStyle15ShortBlockStyleE", !55, i64 0}
!83 = !{!"_ZTSN5clang6format11FormatStyle12ShortIfStyleE", !55, i64 0}
!84 = !{!"_ZTSN5clang6format11FormatStyle16ShortLambdaStyleE", !55, i64 0}
!85 = !{!"_ZTSN5clang6format11FormatStyle16ShortRecordStyleE", !55, i64 0}
!86 = !{!"_ZTSN5clang6format11FormatStyle33DefinitionReturnTypeBreakingStyleE", !55, i64 0}
!87 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !60, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !90, i64 0}
!92 = !{!"_ZTSN5clang6format11FormatStyle25BitFieldColonSpacingStyleE", !55, i64 0}
!93 = !{!"_ZTSN5clang6format11FormatStyle39BraceWrappingAfterControlStatementStyleE", !55, i64 0}
!94 = !{!"_ZTSN5clang6format11FormatStyle18BraceWrappingFlagsE", !70, i64 0, !70, i64 1, !93, i64 2, !70, i64 3, !70, i64 4, !70, i64 5, !70, i64 6, !70, i64 7, !70, i64 8, !70, i64 9, !70, i64 10, !70, i64 11, !70, i64 12, !70, i64 13, !70, i64 14, !70, i64 15, !70, i64 16, !70, i64 17}
!95 = !{!"_ZTSN5clang6format11FormatStyle22AttributeBreakingStyleE", !55, i64 0}
!96 = !{!"_ZTSN5clang6format11FormatStyle23ReturnTypeBreakingStyleE", !55, i64 0}
!97 = !{!"_ZTSN5clang6format11FormatStyle19BinaryOperatorStyleE", !55, i64 0}
!98 = !{!"_ZTSN5clang6format11FormatStyle18BraceBreakingStyleE", !55, i64 0}
!99 = !{!"_ZTSN5clang6format11FormatStyle35BreakBeforeConceptDeclarationsStyleE", !55, i64 0}
!100 = !{!"_ZTSN5clang6format11FormatStyle30BreakBeforeInlineASMColonStyleE", !55, i64 0}
!101 = !{!"_ZTSN5clang6format11FormatStyle26BreakBeforeReturnTypeStyleE", !55, i64 0}
!102 = !{!"_ZTSN5clang6format11FormatStyle26BreakBinaryOperationsStyleE", !55, i64 0}
!103 = !{!"p1 _ZTSN5clang6format11FormatStyle24BinaryOperationBreakRuleE", !60, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN5clang6format11FormatStyle24BinaryOperationBreakRuleESaIS3_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!105 = !{!"_ZTSNSt12_Vector_baseIN5clang6format11FormatStyle24BinaryOperationBreakRuleESaIS3_EE12_Vector_implE", !104, i64 0}
!106 = !{!"_ZTSSt12_Vector_baseIN5clang6format11FormatStyle24BinaryOperationBreakRuleESaIS3_EE", !105, i64 0}
!107 = !{!"_ZTSSt6vectorIN5clang6format11FormatStyle24BinaryOperationBreakRuleESaIS3_EE", !106, i64 0}
!108 = !{!"_ZTSN5clang6format11FormatStyle28BreakBinaryOperationsOptionsE", !102, i64 0, !107, i64 8}
!109 = !{!"_ZTSN5clang6format11FormatStyle33BreakConstructorInitializersStyleE", !55, i64 0}
!110 = !{!"_ZTSN5clang6format11FormatStyle25BreakInheritanceListStyleE", !55, i64 0}
!111 = !{!"_ZTSN5clang6format11FormatStyle30BreakTemplateDeclarationsStyleE", !55, i64 0}
!112 = !{!"_ZTSN5clang6format11FormatStyle15BracedListStyleE", !55, i64 0}
!113 = !{!"_ZTSN5clang6format11FormatStyle33EmptyLineAfterAccessModifierStyleE", !55, i64 0}
!114 = !{!"_ZTSN5clang6format11FormatStyle34EmptyLineBeforeAccessModifierStyleE", !55, i64 0}
!115 = !{!"_ZTSN5clang6format11FormatStyle22EnumTrailingCommaStyleE", !55, i64 0}
!116 = !{!"_ZTSN5clang7tooling12IncludeStyle18IncludeBlocksStyleE", !55, i64 0}
!117 = !{!"p1 _ZTSN5clang7tooling12IncludeStyle15IncludeCategoryE", !60, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIN5clang7tooling12IncludeStyle15IncludeCategoryESaIS3_EE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!119 = !{!"_ZTSNSt12_Vector_baseIN5clang7tooling12IncludeStyle15IncludeCategoryESaIS3_EE12_Vector_implE", !118, i64 0}
!120 = !{!"_ZTSSt12_Vector_baseIN5clang7tooling12IncludeStyle15IncludeCategoryESaIS3_EE", !119, i64 0}
!121 = !{!"_ZTSSt6vectorIN5clang7tooling12IncludeStyle15IncludeCategoryESaIS3_EE", !120, i64 0}
!122 = !{!"_ZTSN5clang7tooling12IncludeStyle28MainIncludeCharDiscriminatorE", !55, i64 0}
!123 = !{!"_ZTSN5clang7tooling12IncludeStyleE", !116, i64 0, !121, i64 8, !65, i64 32, !65, i64 64, !122, i64 96}
!124 = !{!"_ZTSN5clang6format11FormatStyle22IndentExternBlockStyleE", !55, i64 0}
!125 = !{!"_ZTSN5clang6format11FormatStyle20IndentGotoLabelStyleE", !55, i64 0}
!126 = !{!"_ZTSN5clang6format11FormatStyle22PPDirectiveIndentStyleE", !55, i64 0}
!127 = !{!"_ZTSN5clang6format11FormatStyle18TrailingCommaStyleE", !55, i64 0}
!128 = !{!"_ZTSN5clang6format11FormatStyle28IntegerLiteralSeparatorStyleE", !55, i64 0, !55, i64 1, !55, i64 2, !55, i64 3, !55, i64 4, !55, i64 5, !55, i64 6, !55, i64 7, !55, i64 8}
!129 = !{!"_ZTSN5clang6format11FormatStyle20JavaScriptQuoteStyleE", !55, i64 0}
!130 = !{!"_ZTSN5clang6format11FormatStyle19KeepEmptyLinesStyleE", !70, i64 0, !70, i64 1, !70, i64 2}
!131 = !{!"_ZTSN5clang6format11FormatStyle25LambdaBodyIndentationKindE", !55, i64 0}
!132 = !{!"_ZTSN5clang6format11FormatStyle12LanguageKindE", !55, i64 0}
!133 = !{!"_ZTSN5clang6format11FormatStyle15LineEndingStyleE", !55, i64 0}
!134 = !{!"_ZTSN5clang6format11FormatStyle24NamespaceIndentationKindE", !55, i64 0}
!135 = !{!"_ZTSN5clang6format11FormatStyle28NumericLiteralComponentStyleE", !55, i64 0}
!136 = !{!"_ZTSN5clang6format11FormatStyle23NumericLiteralCaseStyleE", !135, i64 0, !135, i64 1, !135, i64 2, !135, i64 3}
!137 = !{!"_ZTSN5clang6format11FormatStyle12BinPackStyleE", !55, i64 0}
!138 = !{!"_ZTSN5clang6format11FormatStyle21BinPackArgumentsStyleE", !55, i64 0}
!139 = !{!"_ZTSN5clang6format11FormatStyle18PackArgumentsStyleE", !138, i64 0, !56, i64 4}
!140 = !{!"_ZTSN5clang6format11FormatStyle32PackConstructorInitializersStyleE", !55, i64 0}
!141 = !{!"_ZTSN5clang6format11FormatStyle22BinPackParametersStyleE", !55, i64 0}
!142 = !{!"_ZTSN5clang6format11FormatStyle19PackParametersStyleE", !141, i64 0, !56, i64 4}
!143 = !{!"_ZTSN5clang6format11FormatStyle21PointerAlignmentStyleE", !55, i64 0}
!144 = !{!"_ZTSN5clang6format11FormatStyle23QualifierAlignmentStyleE", !55, i64 0}
!145 = !{!"p1 _ZTSN5clang6format11FormatStyle15RawStringFormatE", !60, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIN5clang6format11FormatStyle15RawStringFormatESaIS3_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!147 = !{!"_ZTSNSt12_Vector_baseIN5clang6format11FormatStyle15RawStringFormatESaIS3_EE12_Vector_implE", !146, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseIN5clang6format11FormatStyle15RawStringFormatESaIS3_EE", !147, i64 0}
!149 = !{!"_ZTSSt6vectorIN5clang6format11FormatStyle15RawStringFormatESaIS3_EE", !148, i64 0}
!150 = !{!"_ZTSN5clang6format11FormatStyle23ReferenceAlignmentStyleE", !55, i64 0}
!151 = !{!"_ZTSN5clang6format11FormatStyle19ReflowCommentsStyleE", !55, i64 0}
!152 = !{!"_ZTSN5clang6format11FormatStyle22RemoveParenthesesStyleE", !55, i64 0}
!153 = !{!"_ZTSN5clang6format11FormatStyle27RequiresClausePositionStyleE", !55, i64 0}
!154 = !{!"_ZTSN5clang6format11FormatStyle33RequiresExpressionIndentationKindE", !55, i64 0}
!155 = !{!"_ZTSN5clang6format11FormatStyle23SeparateDefinitionStyleE", !55, i64 0}
!156 = !{!"_ZTSN5clang6format11FormatStyle19SortIncludesOptionsE", !70, i64 0, !70, i64 1, !70, i64 2}
!157 = !{!"_ZTSN5clang6format11FormatStyle27SortJavaStaticImportOptionsE", !55, i64 0}
!158 = !{!"_ZTSN5clang6format11FormatStyle28SortUsingDeclarationsOptionsE", !55, i64 0}
!159 = !{!"_ZTSN5clang6format11FormatStyle33SpaceAroundPointerQualifiersStyleE", !55, i64 0}
end_hunk_1
