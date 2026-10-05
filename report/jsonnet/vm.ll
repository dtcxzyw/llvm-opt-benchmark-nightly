Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/vm?download=true
inline.NumInlined: 10178
inline.NumDeleted: 3163
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN7jsonnet8internal12_GLOBAL__N_15Stack4markERNS1_4HeapE:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 2 uses
  %.not22.i = icmp eq ptr %i.i, null
  br i1 %.not22.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val33.i = load i8, ptr %i.a, align 8, !tbaa !87
  tail call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS1_10HeapEntityE(i8 %.val33.i, ptr noundef nonnull %i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 376
  %.val23.i = load ptr, ptr %i.j, align 8, !tbaa !166 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 360 ; 2 uses
  %.not4952.i = icmp eq ptr %.val23.i, %i.k
  br i1 %.not4952.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 208
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !166 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 192 ; 2 uses
  %.not5054.i = icmp eq ptr %.val.i, %i.m
  br i1 %.not5054.i, label %._crit_edge58.i, label %.lr.ph57.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.sroa.048.053.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.val23.i, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.048.053.i, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !259
  %.val32.i = load i8, ptr %i.a, align 8, !tbaa !87
  tail call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS1_10HeapEntityE(i8 %.val32.i, ptr noundef %i.o)
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.048.053.i) #43 ; 2 uses
  %.not49.i = icmp eq ptr %i.p, %i.k
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge58.i:                                  ; preds = %.lr.ph57.i, %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 232
  %.val37.i = load ptr, ptr %i.q, align 8, !tbaa !273 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 240
  %.val38.i = load ptr, ptr %i.r, align 8, !tbaa !273 ; 2 uses
  %.not5159.i = icmp eq ptr %.val37.i, %.val38.i
  br i1 %.not5159.i, label %_ZNK7jsonnet8internal12_GLOBAL__N_15Frame4markERNS1_4HeapE.exit, label %.lr.ph62.i

.lr.ph57.i:                                       ; preds = %._crit_edge.i, %.lr.ph57.i
  %.sroa.046.055.i = phi ptr [ %i.u, %.lr.ph57.i ], [ %.val.i, %._crit_edge.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.046.055.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !259
  %.val31.i = load i8, ptr %i.a, align 8, !tbaa !87
  tail call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS1_10HeapEntityE(i8 %.val31.i, ptr noundef %i.t)
  %i.u = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.046.055.i) #43 ; 2 uses
  %.not50.i = icmp eq ptr %i.u, %i.m
  br i1 %.not50.i, label %._crit_edge58.i, label %.lr.ph57.i

.lr.ph62.i:                                       ; preds = %._crit_edge58.i, %.lr.ph62.i
  %.sroa.044.060.i = phi ptr [ %i.w, %.lr.ph62.i ], [ %.val37.i, %._crit_edge58.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.044.060.i, align 8, !tbaa !217
  %.val30.i = load i8, ptr %i.a, align 8, !tbaa !87
  tail call fastcc void @_ZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS1_10HeapEntityE(i8 %.val30.i, ptr noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.044.060.i, i64 8 ; 2 uses
  %.not51.i = icmp eq ptr %i.w, %.val38.i
  br i1 %.not51.i, label %_ZNK7jsonnet8internal12_GLOBAL__N_15Frame4markERNS1_4HeapE.exit, label %.lr.ph62.i

_ZNK7jsonnet8internal12_GLOBAL__N_15Frame4markERNS1_4HeapE.exit: ; preds = %.lr.ph62.i, %._crit_edge58.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.01.03, i64 400 ; 2 uses
  %.not = icmp eq ptr %i.x, %.24.val
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7jsonnet8internal12_GLOBAL__N_19HeapThunkD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(112) dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal12_GLOBAL__N_19HeapThunkE, i64 16), ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.a, align 8, !tbaa !60
  tail call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7jsonnet8internal12_GLOBAL__N_19HeapThunkD0Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7jsonnet8internal12_GLOBAL__N_19HeapThunkE, i64 16), ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !60
  tail call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.val.i), !inline_history !913
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02 = phi ptr [ %.0.val6, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val = load ptr, ptr %i.a, align 8, !tbaa !171
  tail call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef %.0.val)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val6 = load ptr, ptr %i.b, align 8, !tbaa !169 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 48) #40
  %.not = icmp eq ptr %.0.val6, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !914

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateSaIS6_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !430    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !431  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i.i, label %_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateEvPT_.exit.i.i
  %.06.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.06.i.i, i64 8
  %.0.val.i.i = load ptr, ptr %i.d, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr i8, ptr %.06.i.i, i64 24
  %.0.val4.i.i = load ptr, ptr %i.e, align 8
  %i.f = ptrtoint ptr %.0.val4.i.i to i64
  %i.g = ptrtoint ptr %.0.val.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i, i64 noundef %i.h) #40
  br label %_ZSt8_DestroyIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateEvPT_.exit.i.i

_ZSt8_DestroyIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !915

_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !430
  br label %_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateSaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !tbaa !432
  %i.k = ptrtoint ptr %.val1 to i64
  %i.l = ptrtoint ptr %.val to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.m) #40
  br label %_ZNSt12_Vector_baseIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateSaIS6_EED2Ev.exit

_ZNSt12_Vector_baseIZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateSaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPZN7jsonnet8internal12_GLOBAL__N_14Heap8markFromEPNS2_10HeapEntityEE5StateS6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull ptr @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !426  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !235  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !426
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !171
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !171  ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !916

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.m, null
  %spec.store.select.i.i.i = select i1 %.not12.i.i.i, ptr %storemerge.i.i.i, ptr %i.m
  store ptr %spec.store.select.i.i.i, ptr %i.a, align 8
  br label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !169
  br label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !425
  br label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit

_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41
  br label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit

_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink12.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink12.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.r = load i32, ptr %0, align 8, !tbaa !417
  store i32 %i.r, ptr %.sink12.i.i, align 8, !tbaa !417
  %i.s = getelementptr inbounds nuw i8, ptr %.sink12.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sink12.i.i, i64 8
  store ptr %1, ptr %i.t, align 8, !tbaa !235
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !171  ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit
  %i.w = invoke fastcc noundef ptr @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull %i.v, ptr noundef %.sink12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sink12.i.i, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !171
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.k:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE13_M_clone_nodeILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_RT0_.exit
  %.030.in2 = getelementptr i8, ptr %0, i64 16
  %.0303 = load ptr, ptr %.030.in2, align 8, !tbaa !169 ; 2 uses
  %.not324 = icmp eq ptr %.0303, null
  br i1 %.not324, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.w
  %.0306 = phi ptr [ %.030, %bb.w ], [ %.0303, %bb.k ] ; 4 uses
  %.0315 = phi ptr [ %.sink12.i.i38, %bb.w ], [ %.sink12.i.i, %bb.k ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !426  ; 7 uses
  %.not.i.i.i36 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i36, label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i45, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !235 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !426
  %.not9.i.i.i37 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i37, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !171
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ac, align 8, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !169 ; 2 uses
  %.not10.i.i.i39 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i39, label %bb.r, label %.preheader.i.i.i40

.preheader.i.i.i40:                               ; preds = %bb.n, %.preheader.i.i.i40
  %storemerge.i.i.i41 = phi ptr [ %i.ai, %.preheader.i.i.i40 ], [ %i.ag, %bb.n ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i41, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !171 ; 2 uses
  %.not11.i.i.i42 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i42, label %bb.o, label %.preheader.i.i.i40, !llvm.loop !916

bb.o:                                             ; preds = %.preheader.i.i.i40
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i41, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !169 ; 2 uses
  %.not12.i.i.i43 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i44 = select i1 %.not12.i.i.i43, ptr %storemerge.i.i.i41, ptr %i.ak
  store ptr %spec.store.select.i.i.i44, ptr %i.a, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !169
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %2, align 8, !tbaa !425
  br label %bb.r

_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i45: ; preds = %.lr.ph
  %i.am = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #41
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i45
  %.sink12.i.i38 = phi ptr [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.z, %bb.p ], [ %i.am, %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i45 ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0306, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink12.i.i38, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %i.ap = load i32, ptr %.0306, align 8, !tbaa !417
  store i32 %i.ap, ptr %.sink12.i.i38, align 8, !tbaa !417
  %i.aq = getelementptr inbounds nuw i8, ptr %.sink12.i.i38, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.0315, i64 16
  store ptr %.sink12.i.i38, ptr %i.ar, align 8, !tbaa !169
  %i.as = getelementptr inbounds nuw i8, ptr %.sink12.i.i38, i64 8
  store ptr %.0315, ptr %i.as, align 8, !tbaa !235
  %i.at = getelementptr inbounds nuw i8, ptr %.0306, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !171 ; 2 uses
  %.not33 = icmp eq ptr %i.au, null
  br i1 %.not33, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = invoke fastcc noundef ptr @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull %i.au, ptr noundef %.sink12.i.i38, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink12.i.i38, i64 24
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !171
  br label %bb.w

bb.u:                                             ; preds = %bb.s, %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i45
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.u ], [ %i.y, %bb.j ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %.0) #39 ; 0 uses
  tail call fastcc void @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull %.sink12.i.i)
  invoke void @__cxa_rethrow() #42
          to label %bb.aa unwind label %bb.x

bb.w:                                             ; preds = %bb.t, %bb.r
  %.030.in = getelementptr i8, ptr %.0306, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !169 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !917

bb.x:                                             ; preds = %bb.v
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  resume { ptr, i32 } %i.az

._crit_edge:                                      ; preds = %bb.w, %bb.k
  ret ptr %.sink12.i.i

bb.z:                                             ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #38
  unreachable

bb.aa:                                            ; preds = %bb.v
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc { ptr, ptr } @_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr nofree readnone captures(address) %.0.val) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load i64, ptr %i.c, align 8, !tbaa !168
  %.not = icmp eq i64 %.val12, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.h = icmp ult ptr %i.g, %.0.val
  br i1 %i.h, label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE24_M_get_insert_unique_posERS6_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.01113.i = load ptr, ptr %i.i, align 8, !tbaa !170 ; 2 uses
  %.not14.i = icmp eq ptr %.01113.i, null
  br i1 %.not14.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01115.i = phi ptr [ %.011.i, %.lr.ph.i ], [ %.01113.i, %bb.d ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01115.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  %i.l = icmp ult ptr %.0.val, %i.k               ; 2 uses
  %.in.v.i = select i1 %i.l, i64 16, i64 24
  %.in.i = getelementptr i8, ptr %.01115.i, i64 %.in.v.i
  %.011.i = load ptr, ptr %.in.i, align 8, !tbaa !170 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.l, label %._crit_edge.thread.i, label %bb.f

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.010.lcssa20.i = phi ptr [ %.01115.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7.i = load ptr, ptr %i.m, align 8, !tbaa !166
  %i.n = icmp eq ptr %.010.lcssa20.i, %.val7.i
  br i1 %i.n, label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE24_M_get_insert_unique_posERS6_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i) #43 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.pre32 = load ptr, ptr %.phi.trans.insert31, align 8, !tbaa !131
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.p = phi ptr [ %.pre32, %bb.e ], [ %i.k, %._crit_edge.i ]
  %.010.lcssa19.i = phi ptr [ %.010.lcssa20.i, %bb.e ], [ %.01115.i, %._crit_edge.i ]
  %.sroa.01.0.i = phi ptr [ %i.o, %bb.e ], [ %.01115.i, %._crit_edge.i ]
  %i.q = icmp ult ptr %i.p, %.0.val               ; 2 uses
  %spec.select.i = select i1 %i.q, ptr null, ptr %.sroa.01.0.i
  %spec.select12.i = select i1 %i.q, ptr %.010.lcssa19.i, ptr null
  br label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE24_M_get_insert_unique_posERS6_.exit

bb.g:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !131  ; 2 uses
  %i.t = icmp ult ptr %.0.val, %i.s
  br i1 %i.t, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !170  ; 4 uses
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE24_M_get_insert_unique_posERS6_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #43 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.aa = icmp ult ptr %i.z, %.0.val
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %i.x, i64 24
  %.val10 = load ptr, ptr %i.ab, align 8, !tbaa !171
  %i.ac = icmp eq ptr %.val10, null               ; 2 uses
  %spec.select = select i1 %i.ac, ptr null, ptr %1
  %spec.select22 = select i1 %i.ac, ptr %i.x, ptr %1
  br label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE24_M_get_insert_unique_posERS6_.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.01113.i16 = load ptr, ptr %i.ad, align 8, !tbaa !170 ; 2 uses
  %.not14.i17 = icmp eq ptr %.01113.i16, null
  br i1 %.not14.i17, label %._crit_edge.thread.i33, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.k, %.lr.ph.i18
  %.01115.i19 = phi ptr [ %.011.i22, %.lr.ph.i18 ], [ %.01113.i16, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01115.i19, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !131 ; 2 uses
  %i.ag = icmp ult ptr %.0.val, %i.af             ; 2 uses
  %.in.v.i20 = select i1 %i.ag, i64 16, i64 24
  %.in.i21 = getelementptr i8, ptr %.01115.i19, i64 %.in.v.i20
  %.011.i22 = load ptr, ptr %.in.i21, align 8, !tbaa !170 ; 2 uses
  %.not.i23 = icmp eq ptr %.011.i22, null
  br i1 %.not.i23, label %._crit_edge.i24, label %.lr.ph.i18, !llvm.loop !14

._crit_edge.i24:                                  ; preds = %.lr.ph.i18
  br i1 %i.ag, label %._crit_edge.thread.i33, label %bb.m

._crit_edge.thread.i33:                           ; preds = %._crit_edge.i24, %bb.k
  %.010.lcssa20.i34 = phi ptr [ %.01115.i19, %._crit_edge.i24 ], [ %i.a, %bb.k ] ; 4 uses
  %i.ah = icmp eq ptr %.010.lcssa20.i34, %i.v
  br i1 %i.ah, label %_ZNSt8_Rb_treeIPKN7jsonnet8internal10IdentifierESt4pairIKS4_PNS1_12_GLOBAL__N_19HeapThunkEESt10_Select1stISA_ESt4lessIS4_ESaISA_EE24_M_get_insert_unique_posERS6_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i33
end_hunk_0
