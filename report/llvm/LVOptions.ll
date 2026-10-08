Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LVOptions?download=true
inline.NumInlined: 3459
inline.NumDeleted: 1818
begin_hunk_0_@_ZN4llvm11logicalview10LVPatterns10addElementEPNS0_9LVElementE:bb.a

bb.k:                                             ; preds = %_ZN4llvm11logicalview18LVScopeCompileUnit10addMatchedEPNS0_7LVScopeE.exit, %bb.j, %_ZN4llvm11logicalview18LVScopeCompileUnit10addMatchedEPNS0_9LVElementE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm11logicalview10LVPatterns19updateReportOptionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !531
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !231
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !532
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !229
  %.not1 = icmp eq ptr %i.g, %i.h
  br i1 %.not1, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !533
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !227
  %.not2 = icmp eq ptr %i.k, %i.l
  br i1 %.not2, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !534
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !225
  %.not3 = icmp eq ptr %i.o, %i.p
  br i1 %.not3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !535
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !223
  %.not4 = icmp eq ptr %i.s, %i.t
  br i1 %.not4, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 338), align 2, !tbaa !197, !range !168
  %i.u = trunc nuw i8 %.pre to i1
  %i.v = xor i1 %i.u, true
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 339), align 1, !tbaa !198
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 338), align 2, !tbaa !197
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.not5 = phi i1 [ %i.v, %._crit_edge ], [ false, %bb.f ]
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 329), align 1, !range !168
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond = select i1 %.not5, i1 true, i1 %i.x
  br i1 %or.cond, label %_ZN4llvm11logicalview9LVOptions13setReportListEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 329), align 1, !tbaa !176
  %.02022.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 296), align 8, !tbaa !31 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %bb.h ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !174  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 2                    ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.aa, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  br i1 %i.aa, label %._crit_edge.thread.i.i.i.i, label %bb.j

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 288), %bb.h ] ; 4 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 304), align 8, !tbaa !38
  %i.ac = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.ab
  br i1 %i.ac, label %select.unfold.i.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #24
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !174
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %i.ae = phi i32 [ %.pre.i.i.i, %bb.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.i ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.af = icmp slt i32 %i.ae, 2
  br i1 %i.af, label %select.unfold.i.i.i, label %_ZN4llvm11logicalview9LVOptions13setReportListEv.exit

select.unfold.i.i.i:                              ; preds = %bb.j, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.j ] ; 3 uses
  %i.ag = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 288)
  br i1 %i.ag, label %_ZNSt8_Rb_treeIN4llvm11logicalview12LVReportKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !174
  %i.aj = icmp sgt i32 %i.ai, 2
  br label %_ZNSt8_Rb_treeIN4llvm11logicalview12LVReportKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIN4llvm11logicalview12LVReportKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i: ; preds = %bb.k, %select.unfold.i.i.i
  %i.ak = phi i1 [ %i.aj, %bb.k ], [ true, %select.unfold.i.i.i ]
  %i.al = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 2, ptr %i.am, align 4, !tbaa !174
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 288)) #22
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 320), align 8, !tbaa !40
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 320), align 8, !tbaa !40
  br label %_ZN4llvm11logicalview9LVOptions13setReportListEv.exit

_ZN4llvm11logicalview9LVOptions13setReportListEv.exit: ; preds = %_ZNSt8_Rb_treeIN4llvm11logicalview12LVReportKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i.i.i, %bb.j, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm11logicalview10LVPatterns12matchPatternENS_9StringRefERKSt6vectorINS1_7LVMatchESaIS4_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.thread28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !536    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !536  ; 2 uses
  %.not30 = icmp eq ptr %i.c, %i.e
  br i1 %.not30, label %.thread28, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.thread
  %.sroa.023.031 = phi ptr [ %i.w, %.thread ], [ %i.c, %bb.b ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.023.031, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !254
  switch i32 %i.g, label %.thread [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %.split
  ]

bb.c:                                             ; preds = %.lr.ph
  %.sroa.02.0.copyload = load ptr, ptr %4, align 8, !tbaa !274
  %.sroa.23.0.copyload = load i64, ptr %i.a, align 8, !tbaa !83 ; 3 uses
  %i.h = load ptr, ptr %.sroa.023.031, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.023.031, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !82
  %.not.i = icmp eq i64 %.sroa.23.0.copyload, %i.j
  br i1 %.not.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %.sroa.23.0.copyload, 0
  br i1 %i.k, label %.thread28, label %.split38

.split38:                                         ; preds = %bb.d
  %bcmp.i = call i32 @bcmp(ptr %.sroa.02.0.copyload, ptr %i.h, i64 %.sroa.23.0.copyload)
  %i.l = icmp eq i32 %bcmp.i, 0
  br i1 %i.l, label %.thread28, label %.thread

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.023.031, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !82   ; 2 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !538
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %.thread

.split:                                           ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.023.031, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !246
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !274
  %.sroa.2.0.copyload = load i64, ptr %i.a, align 8, !tbaa !83
  %i.s = call noundef zeroext i1 @_ZNK4llvm5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef null, ptr noundef null) #22
  br i1 %i.s, label %.thread28, label %.thread

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.e
  %i.t = load ptr, ptr %.sroa.023.031, align 8, !tbaa !29
  %i.u = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.t, i64 %i.n) #22
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread28, label %.thread

.thread:                                          ; preds = %.split38, %.split, %bb.c, %bb.e, %.lr.ph, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.023.031, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.e
  br i1 %.not, label %.thread28, label %.lr.ph

.thread28:                                        ; preds = %.thread, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.d, %.split, %.split38, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.split38 ], [ true, %.split ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ false, %.thread ], [ true, %bb.d ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZNK4llvm5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12), ptr, i64, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm11logicalview10LVPatterns12printElementEPKNS0_6LVLineE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 240), align 8, !tbaa !25 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not10.i.i.i.i, label %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 232), %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85
  %i.d = icmp slt i32 %i.c, 3                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.d, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.d, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.e = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 232)
  br i1 %i.e, label %.lr.ph.i.i.i.i3.preheader, label %_ZNK4llvm11logicalview9LVOptions13getPrintLinesEv.exit

_ZNK4llvm11logicalview9LVOptions13getPrintLinesEv.exit: ; preds = %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !85
  %i.h = icmp slt i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %.lr.ph.i.i.i.i3.preheader

bb.b:                                             ; preds = %_ZNK4llvm11logicalview9LVOptions13getPrintLinesEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i32, ptr %i.i, align 4, !tbaa !540
  %i.k = and i32 %i.j, 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.lr.ph.i.i.i.i3.preheader, label %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit.thread

.lr.ph.i.i.i.i3.preheader:                        ; preds = %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i, %bb.b, %_ZNK4llvm11logicalview9LVOptions13getPrintLinesEv.exit
  br label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %.lr.ph.i.i.i.i3.preheader, %.lr.ph.i.i.i.i3
  %.012.i.i.i.i4 = phi ptr [ %.1.i.i.i.i9, %.lr.ph.i.i.i.i3 ], [ %i.a, %.lr.ph.i.i.i.i3.preheader ] ; 3 uses
  %.0811.i.i.i.i5 = phi ptr [ %.19.i.i.i.i6, %.lr.ph.i.i.i.i3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 232), %.lr.ph.i.i.i.i3.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !85
  %i.n = icmp slt i32 %i.m, 2                     ; 2 uses
  %.19.i.i.i.i6 = select i1 %i.n, ptr %.0811.i.i.i.i5, ptr %.012.i.i.i.i4 ; 3 uses
  %.1.in.v.i.i.i.i7 = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 %.1.in.v.i.i.i.i7
  %.1.i.i.i.i9 = load ptr, ptr %.1.in.i.i.i.i8, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %.1.i.i.i.i9, null
  br i1 %.not.i.i.i.i10, label %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i11, label %.lr.ph.i.i.i.i3, !llvm.loop !4

_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i11: ; preds = %.lr.ph.i.i.i.i3
  %i.o = icmp eq ptr %.19.i.i.i.i6, getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 232)
  br i1 %i.o, label %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit.thread, label %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit

_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit: ; preds = %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i11
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i6, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !85
  %i.r = icmp slt i32 %i.q, 3
  br i1 %i.r, label %bb.c, label %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit.thread

bb.c:                                             ; preds = %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = load i32, ptr %i.s, align 4, !tbaa !540
  %i.u = and i32 %i.t, 32
  %i.v = icmp ne i32 %i.u, 0
  br label %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit.thread

_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit.thread: ; preds = %bb.a, %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i11, %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit, %bb.c, %bb.b
  %i.w = phi i1 [ true, %bb.b ], [ false, %_ZNK4llvm11logicalview9LVOptions20getPrintInstructionsEv.exit ], [ %i.v, %bb.c ], [ false, %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i11 ], [ false, %bb.a ]
  ret i1 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm11logicalview10LVPatterns11printObjectEPKNS0_10LVLocationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 32), align 8, !tbaa !25 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.a, null        ; 2 uses
  br i1 %.not10.i.i.i.i, label %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 24), %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !78
  %i.d = icmp slt i32 %i.c, 0                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.d, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.d, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.e = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 24)
  br i1 %i.e, label %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit.thread, label %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit

_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit: ; preds = %_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %_ZNK4llvm11logicalview9LVOptions16getAttributeGapsEv.exit, label %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit.thread

_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i, %bb.a, %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 65), align 1, !tbaa !182, !range !168, !noundef !169
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  %i.k = icmp ne ptr %1, null
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.b, label %_ZNK4llvm11logicalview9LVOptions16getAttributeGapsEv.exit

bb.b:                                             ; preds = %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i32, ptr %i.l, align 4, !tbaa !542
  %i.n = and i32 %i.m, 64
  %.not19 = icmp eq i32 %i.n, 0                   ; 2 uses
  %brmerge = or i1 %.not10.i.i.i.i, %.not19
  br i1 %brmerge, label %_ZNK4llvm11logicalview9LVOptions16getAttributeGapsEv.exit, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %bb.b, %.lr.ph.i.i.i.i8
  %.012.i.i.i.i9 = phi ptr [ %.1.i.i.i.i14, %.lr.ph.i.i.i.i8 ], [ %i.a, %bb.b ] ; 3 uses
  %.0811.i.i.i.i10 = phi ptr [ %.19.i.i.i.i11, %.lr.ph.i.i.i.i8 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 24), %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i9, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  %i.q = icmp slt i32 %i.p, 12                    ; 2 uses
  %.19.i.i.i.i11 = select i1 %i.q, ptr %.0811.i.i.i.i10, ptr %.012.i.i.i.i9 ; 3 uses
  %.1.in.v.i.i.i.i12 = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i13 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i9, i64 %.1.in.v.i.i.i.i12
  %.1.i.i.i.i14 = load ptr, ptr %.1.in.i.i.i.i13, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %.1.i.i.i.i14, null
  br i1 %.not.i.i.i.i15, label %_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i16, label %.lr.ph.i.i.i.i8, !llvm.loop !2

_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i16: ; preds = %.lr.ph.i.i.i.i8
  %i.r = icmp eq ptr %.19.i.i.i.i11, getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 24)
  br i1 %i.r, label %_ZNK4llvm11logicalview9LVOptions16getAttributeGapsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i16
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i11, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !78
  %i.u = icmp slt i32 %i.t, 13
  br label %_ZNK4llvm11logicalview9LVOptions16getAttributeGapsEv.exit

_ZNK4llvm11logicalview9LVOptions16getAttributeGapsEv.exit: ; preds = %bb.b, %bb.c, %_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i16, %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit.thread, %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit
  %.05 = phi i1 [ true, %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit ], [ %i.j, %_ZNK4llvm11logicalview9LVOptions15getAttributeAllEv.exit.thread ], [ %.not19, %bb.b ], [ %i.u, %bb.c ], [ false, %_ZNKSt8_Rb_treeIN4llvm11logicalview15LVAttributeKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i16 ]
  ret i1 %.05
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm11logicalview10LVPatterns12printElementEPKNS0_7LVScopeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 240), align 8, !tbaa !25 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.a, null        ; 2 uses
  br i1 %.not10.i.i.i.i, label %_ZNK4llvm11logicalview9LVOptions15getPrintSymbolsEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 232), %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !85
  %i.d = icmp slt i32 %i.c, 4                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.d, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.d, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.e = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 232)
  br i1 %i.e, label %.lr.ph.i.i.i.i6.preheader, label %_ZNK4llvm11logicalview9LVOptions14getPrintScopesEv.exit

_ZNK4llvm11logicalview9LVOptions14getPrintScopesEv.exit: ; preds = %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !85
  %i.h = icmp slt i32 %i.g, 5
  br i1 %i.h, label %_ZNK4llvm11logicalview9LVOptions16getPrintWarningsEv.exit.thread, label %.lr.ph.i.i.i.i6.preheader

.lr.ph.i.i.i.i6.preheader:                        ; preds = %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i, %_ZNK4llvm11logicalview9LVOptions14getPrintScopesEv.exit
  br label %.lr.ph.i.i.i.i6

.lr.ph.i.i.i.i6:                                  ; preds = %.lr.ph.i.i.i.i6.preheader, %.lr.ph.i.i.i.i6
  %.012.i.i.i.i7 = phi ptr [ %.1.i.i.i.i12, %.lr.ph.i.i.i.i6 ], [ %i.a, %.lr.ph.i.i.i.i6.preheader ] ; 3 uses
  %.0811.i.i.i.i8 = phi ptr [ %.19.i.i.i.i9, %.lr.ph.i.i.i.i6 ], [ getelementptr inbounds nuw (i8, ptr @_ZL7Options, i64 232), %.lr.ph.i.i.i.i6.preheader ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i7, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !85
  %i.k = icmp slt i32 %i.j, 6                     ; 2 uses
  %.19.i.i.i.i9 = select i1 %i.k, ptr %.0811.i.i.i.i8, ptr %.012.i.i.i.i7 ; 3 uses
  %.1.in.v.i.i.i.i10 = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i7, i64 %.1.in.v.i.i.i.i10
  %.1.i.i.i.i12 = load ptr, ptr %.1.in.i.i.i.i11, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %.1.i.i.i.i12, null
  br i1 %.not.i.i.i.i13, label %_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i14, label %.lr.ph.i.i.i.i6, !llvm.loop !4

_ZNKSt8_Rb_treeIN4llvm11logicalview11LVPrintKindES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_.exit.i.i.i14: ; preds = %.lr.ph.i.i.i.i6
end_hunk_0
