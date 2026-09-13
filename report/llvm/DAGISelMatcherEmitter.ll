Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGISelMatcherEmitter?download=true
inline.NumInlined: 4945
inline.NumDeleted: 2230
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZNSt8_Rb_treeISt6vectorIhSaIhEESt4pairIKS2_jESt10_Select1stIS5_EN4llvm21SequenceToOffsetTableIS2_St4lessIhEE7SeqLessESaIS5_EE10_M_insert_IS5_NSF_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSL_OT_RT0_:bb.a
  br i1 %i.ar, label %bb.h, label %_ZNKSt8_Rb_treeISt6vectorIhSaIhEESt4pairIKS2_jESt10_Select1stIS5_EN4llvm21SequenceToOffsetTableIS2_St4lessIhEE7SeqLessESaIS5_EE11_Alloc_nodeclIS5_EEPSt13_Rb_tree_nodeIS5_EOT_.exit

bb.h:                                             ; preds = %bb.g
  %i.as = load i8, ptr %i.al, align 1, !tbaa !113
  store i8 %i.as, ptr %i.am, align 1, !tbaa !113
  br label %_ZNKSt8_Rb_treeISt6vectorIhSaIhEESt4pairIKS2_jESt10_Select1stIS5_EN4llvm21SequenceToOffsetTableIS2_St4lessIhEE7SeqLessESaIS5_EE11_Alloc_nodeclIS5_EEPSt13_Rb_tree_nodeIS5_EOT_.exit

_ZNKSt8_Rb_treeISt6vectorIhSaIhEESt4pairIKS2_jESt10_Select1stIS5_EN4llvm21SequenceToOffsetTableIS2_St4lessIhEE7SeqLessESaIS5_EE11_Alloc_nodeclIS5_EEPSt13_Rb_tree_nodeIS5_EOT_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  store ptr %i.au, ptr %i.at, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !294
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !294
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !65
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !65
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt6vectorIhSaIhEESt4pairIKS2_jESt10_Select1stIS5_EN4llvm21SequenceToOffsetTableIS2_St4lessIhEE7SeqLessESaIS5_EE24_M_get_insert_unique_posERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.03143 = load ptr, ptr %i.a, align 8, !tbaa !246 ; 2 uses
  %.not44 = icmp eq ptr %.03143, null
  br i1 %.not44, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159, !noalias !571 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !159, !noalias !572
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread
  %.03145 = phi ptr [ %.03143, %.lr.ph ], [ %.031, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03145, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.03145, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159, !noalias !573 ; 4 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !159, !noalias !574 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, %i.h
  %i.q = sub i64 %i.f, %i.o
  %storemerge.i.i.i.i = select i1 %i.p, i64 %i.q, i64 %i.g ; 3 uses
  %i.r = inttoptr i64 %storemerge.i.i.i.i to ptr
  %.not17.i.i.i = icmp eq i64 %storemerge.i.i.i.i, %i.f
  br i1 %.not17.i.i.i, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.s = sub i64 %storemerge.i.i.i.i, %i.f
  %scevgep.i.i = getelementptr i8, ptr %i.k, i64 %i.s
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.preheader.i.i
  %.sroa.01.0.i.i = phi ptr [ %i.v, %bb.d ], [ %i.k, %.lr.ph.i.preheader.i.i ]
  %i.t = phi ptr [ %i.u, %bb.d ], [ %i.d, %.lr.ph.i.preheader.i.i ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -1 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !113   ; 2 uses
  %i.x = load i8, ptr %i.v, align 1, !tbaa !113   ; 2 uses
  %i.y = icmp ult i8 %i.w, %i.x
  br i1 %i.y, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = icmp ult i8 %i.x, %i.w
  br i1 %i.z, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread35, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq ptr %i.u, %i.r
  br i1 %.not.i.i.i, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit: ; preds = %bb.d, %bb.b
  %.sroa.0.0.copyload.i.i.i3.i.i.i = phi ptr [ %i.k, %bb.b ], [ %scevgep.i.i, %bb.d ]
  %.not41 = icmp eq ptr %.sroa.0.0.copyload.i.i.i3.i.i.i, %i.l
  br i1 %.not41, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread35, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread35: ; preds = %bb.c, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread: ; preds = %.lr.ph.i.i.i, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread35
  %.sink = phi i64 [ 24, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread35 ], [ 16, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit ], [ 16, %.lr.ph.i.i.i ]
  %.0.i.i.i33 = phi i1 [ false, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread35 ], [ true, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit ], [ true, %.lr.ph.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.03145, i64 %.sink
  %.031 = load ptr, ptr %i.aa, align 8, !tbaa !246 ; 2 uses
  %.not = icmp eq ptr %.031, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !562

._crit_edge:                                      ; preds = %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit.thread
  br i1 %.0.i.i.i33, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.030.lcssa59 = phi ptr [ %.03145, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = icmp eq ptr %.030.lcssa59, %i.ac
  br i1 %i.ad, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread
  %i.ae = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.030.lcssa59) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.030.lcssa58 = phi ptr [ %.030.lcssa59, %bb.e ], [ %.03145, %._crit_edge ] ; 2 uses
  %.sroa.016.0 = phi ptr [ %i.ae, %bb.e ], [ %.03145, %._crit_edge ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !159, !noalias !575 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !159, !noalias !576
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !159, !noalias !577 ; 4 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !159, !noalias !578 ; 2 uses
  %i.am = ptrtoint ptr %i.ah to i64               ; 4 uses
  %i.an = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.am, %i.an
  %i.ar = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, %i.aq
  %i.at = sub i64 %i.am, %i.ar
  %storemerge.i.i.i.i5 = select i1 %i.as, i64 %i.at, i64 %i.an ; 3 uses
  %i.au = inttoptr i64 %storemerge.i.i.i.i5 to ptr
  %.not17.i.i.i6 = icmp eq i64 %storemerge.i.i.i.i5, %i.am
  br i1 %.not17.i.i.i6, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15, label %.lr.ph.i.preheader.i.i7

.lr.ph.i.preheader.i.i7:                          ; preds = %bb.f
  %i.av = sub i64 %storemerge.i.i.i.i5, %i.am
  %scevgep.i.i8 = getelementptr i8, ptr %i.ak, i64 %i.av
  br label %.lr.ph.i.i.i9

.lr.ph.i.i.i9:                                    ; preds = %bb.h, %.lr.ph.i.preheader.i.i7
  %.sroa.01.0.i.i10 = phi ptr [ %i.ay, %bb.h ], [ %i.ak, %.lr.ph.i.preheader.i.i7 ]
  %i.aw = phi ptr [ %i.ax, %bb.h ], [ %i.ah, %.lr.ph.i.preheader.i.i7 ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -1 ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.01.0.i.i10, i64 -1 ; 2 uses
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !113 ; 2 uses
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !113 ; 2 uses
  %i.bb = icmp ult i8 %i.az, %i.ba
  br i1 %i.bb, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i9
  %i.bc = icmp ult i8 %i.ba, %i.az
  br i1 %i.bc, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i11 = icmp eq ptr %i.ax, %i.au
  br i1 %.not.i.i.i11, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15, label %.lr.ph.i.i.i9, !llvm.loop !2

_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15: ; preds = %bb.h, %bb.f
  %.sroa.0.0.copyload.i.i.i3.i.i.i13 = phi ptr [ %i.ak, %bb.f ], [ %scevgep.i.i8, %bb.h ]
  %.not42 = icmp eq ptr %.sroa.0.0.copyload.i.i.i3.i.i.i13, %i.al
  br i1 %.not42, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread39, label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread39: ; preds = %bb.g, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15
  br label %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread

_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread: ; preds = %.lr.ph.i.i.i9, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15, %._crit_edge.thread, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread39
  %.sroa.029.0 = phi ptr [ %.sroa.016.0, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread39 ], [ null, %._crit_edge.thread ], [ null, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15 ], [ null, %.lr.ph.i.i.i9 ]
  %.sroa.4.0 = phi ptr [ null, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15.thread39 ], [ %.030.lcssa59, %._crit_edge.thread ], [ %.030.lcssa58, %_ZNK4llvm21SequenceToOffsetTableISt6vectorIhSaIhEESt4lessIhEE7SeqLessclERKS3_S9_.exit15 ], [ %.030.lcssa58, %.lr.ph.i.i.i9 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.029.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEET_SG_SG_T0_.exit
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !579

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91   ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !91
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !91
  %i.ac = getelementptr i8, ptr %i.aa, i64 4
  %.val.i.i.us.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !93
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.ae = icmp ugt i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !91
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !580

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 4
  %.val.val.i.i.us.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !91 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.am, align 4, !tbaa !93
  %i.an = icmp ugt i32 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !91
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.us.i.i.i, !llvm.loop !581

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !91
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_RT0_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !582

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !91 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !91
  %i.bc = getelementptr i8, ptr %i.ba, i64 4
  %.val.i.i.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !93
  %i.bd = getelementptr i8, ptr %i.bb, i64 4
  %.val1.i.i.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !93
  %i.be = icmp ugt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !91
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !91
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !580

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !91
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 4
  %.val.val.i.i.i.i.i = load i32, ptr %i.bm, align 4, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !91 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.bp, align 4, !tbaa !93
  %i.bq = icmp ugt i32 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !91
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.i.i.i, !llvm.loop !581

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !91
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_RT0_.exit.i.i, label %.split.i.i.i, !llvm.loop !582

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_T0_SH_T1_T2_.exit.i.i.i
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_RT0_.exit.i.i ], [ %storemerge26.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_RT0_.exit.i.i ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !91 ; 2 uses
  %i.bx = load ptr, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !91
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !91
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !91
  %i.cl = getelementptr i8, ptr %i.cj, i64 4
  %.val.i.i.i.i21.i = load i32, ptr %i.cl, align 4, !tbaa !93
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  %.val1.i.i.i.i22.i = load i32, ptr %i.cm, align 4, !tbaa !93
  %i.cn = icmp ugt i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !91
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !91
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !580

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !91
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !91
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_RT0_.exit.i.i, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 4
  %.val.val.i.i.i.i14.i = load i32, ptr %i.dc, align 4, !tbaa !93
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !91 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %.val.i.i.i.i.i17.i = load i32, ptr %i.df, align 4, !tbaa !93
  %i.dg = icmp ugt i32 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_RT0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !91
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_RT0_.exit.i.i, label %bb.k, !llvm.loop !581

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_RT0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !91
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_T0_.exit, !llvm.loop !583

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02752, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !91  ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !91 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %.val.i.i.i = load i32, ptr %i.dr, align 4, !tbaa !93 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 4
  %.val1.i.i.i = load i32, ptr %i.ds, align 4, !tbaa !93 ; 3 uses
  %i.dt = icmp ugt i32 %.val.i.i.i, %.val1.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !91 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %.val1.i27.i.i = load i32, ptr %i.dv, align 4, !tbaa !93 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dw = icmp ugt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !91
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp ugt i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dz = load ptr, ptr %.fr29, align 8, !tbaa !91 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !91
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !91
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph54
  %i.ea = icmp ugt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !91
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp ugt i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.ed = load ptr, ptr %.fr29, align 8, !tbaa !91 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !91
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !91
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !91
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader, %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i.preheader ]
  %i.ee = load ptr, ptr %.fr29, align 8, !tbaa !91
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %.val1.i.i13.i = load i32, ptr %i.ef, align 4, !tbaa !93 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !91 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %.val.i.i14.i = load i32, ptr %i.eh, align 4, !tbaa !93
  %i.ei = icmp ugt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !584

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !91 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %.val1.i9.i.i = load i32, ptr %i.el, align 4, !tbaa !93
  %i.em = icmp ugt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !585

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEET_SG_SG_T0_.exit

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !91
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !91
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_SG_T0_.exit.i, !llvm.loop !586

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEET_SG_SG_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_T0_.exit, !llvm.loop !579

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEET_SG_SG_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_SG_RT0_.exit.i.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPSt4pairIjjESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitter32sortValueTypeByHwModeByFrequencyEvEUlS4_S4_E_EEEvT_SG_RT0_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_(ptr %0, ptr %1) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %common.ret30, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.08.017.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.08.017.i, %1
  br i1 %.not18.i, label %common.ret30, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.08.020.i = phi ptr [ %.sroa.08.017.i, %.lr.ph.i ], [ %.sroa.08.0.i, %bb.f ] ; 8 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.08.020.i, %bb.f ] ; 3 uses
  %i.h = getelementptr i8, ptr %.pn19.i, i64 24
  %.val.i.i = load i32, ptr %i.h, align 8, !tbaa !105 ; 5 uses
  %.val1.i.i = load i32, ptr %i.g, align 8, !tbaa !105
  %i.i = icmp ugt i32 %.val.i.i, %.val1.i.i
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.08.020.i, align 8 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %.sroa.08.020.i to i64
  %i.k = sub i64 %i.j, %i.b
  %i.l = ashr exact i64 %i.k, 4                   ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.08.020.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !102
  store ptr %i.q, ptr %i.p, align 8, !tbaa !104
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i32 %i.s, ptr %i.t, align 8, !tbaa !105
  %i.u = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !587

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.v = icmp ult i64 %i.l, 4
  br i1 %i.v, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !102
  store ptr %i.y, ptr %i.x, align 8, !tbaa !104
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !52
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !105
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !102
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !104
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !52
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !105
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !102
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !104
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.am = load i32, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !105
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !102
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !104
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !52
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i32 %i.as, ptr %i.at, align 8, !tbaa !105
  %i.au = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.av = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !4

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !104
  store i32 %.val.i.i, ptr %i.g, align 8, !tbaa !105
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aw = getelementptr i8, ptr %.pn19.i, i64 8
  %.val2.i7.i.i = load i32, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %i.ax = icmp ugt i32 %.val.i.i, %.val2.i7.i.i
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.val2.i9.i.i = phi i32 [ %.val2.i.i.i, %.lr.ph.i.i ], [ %.val2.i7.i.i, %bb.e ]
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i, %bb.e ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -16 ; 3 uses
  %i.ay = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !102
  store ptr %i.ay, ptr %.sroa.04.08.i.i, align 8, !tbaa !104
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8
  store i32 %.val2.i9.i.i, ptr %i.az, align 8, !tbaa !105
  %i.ba = getelementptr i8, ptr %.sroa.04.08.i.i, i64 -24
  %.val2.i.i.i = load i32, ptr %i.ba, align 8, !tbaa !105 ; 2 uses
  %i.bb = icmp ugt i32 %.val.i.i, %.val2.i.i.i
  br i1 %i.bb, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i, !llvm.loop !5

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i, %bb.e ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !104
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 8
  store i32 %.val.i.i, ptr %i.bc, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SQ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %1
  br i1 %.not.i, label %common.ret30, label %bb.c, !llvm.loop !6

common.ret30:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bd = lshr i64 %i.d, 1                        ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bd ; 4 uses
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_(ptr %0, ptr %i.be)
  tail call fastcc void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_(ptr %i.be, ptr %1)
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.a, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SN_SQ_SQ_T1_(ptr %0, ptr %i.be, ptr %1, i64 noundef %i.bd, i64 noundef %i.bh)
  br label %common.ret30
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SN_SQ_SQ_T1_SQ_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SQ_T1_(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm14ComplexPatternEjESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_119MatcherTableEmitterC1ERKNS3_11MatcherListERKNS3_18CodeGenDAGPatternsEEUlRKT_RKT0_E_EEEvSN_SN_SN_SQ_SQ_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret33
}

end_hunk_0
