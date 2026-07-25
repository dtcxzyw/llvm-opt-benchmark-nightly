inline.NumInlined: 1437
inline.NumDeleted: 593
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE24_M_get_insert_unique_posERS6_:bb.a

_ZNK2v84base6VectorIKjE6lengthEv.exit10.i:        ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit.i
  %.not.i = icmp eq i64 %.sroa.26.0.copyload.fr, %.sroa.24.0.copyload
  br i1 %.not.i, label %.lr.ph.i, label %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i

_ZNK2v84base6VectorIKjE6lengthEv.exit12.i:        ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i
  %i.g = icmp samesign ugt i64 %.sroa.26.0.copyload.fr, %.sroa.24.0.copyload
  br i1 %i.g, label %bb.c, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread

_ZNK2v84base6VectorIKjE6lengthEv.exit13.i:        ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.26.0.copyload.fr
  br i1 %exitcond.not.i, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread, label %.lr.ph.i, !llvm.loop !27

.lr.ph.i:                                         ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i ], [ 0, %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload, i64 %indvars.iv.i
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.copyload, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not9.i = icmp eq i32 %i.i, %i.k
  br i1 %.not9.i, label %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit

_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit: ; preds = %.lr.ph.i
  %i.l = icmp ult i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread

_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread: ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread
  %.sink = phi i64 [ 24, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread ], [ 16, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i ], [ 16, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit ]
  %.1.i42 = phi i1 [ false, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread ], [ true, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i ], [ true, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.04061, i64 %.sink
  %.040 = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not = icmp eq ptr %.040, null
  br i1 %.not, label %._crit_edge, label %_ZNK2v84base6VectorIKjE6lengthEv.exit.i, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.c
  br i1 %.1.i42, label %._crit_edge.thread, label %._crit_edge.thread85

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.039.lcssa84 = phi ptr [ %.04061, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.039.lcssa84, %i.o
  br i1 %i.p, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.039.lcssa84) #23
  br label %._crit_edge.thread85

._crit_edge.thread85:                             ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i.us, %bb.d, %._crit_edge
  %.039.lcssa83 = phi ptr [ %.039.lcssa84, %bb.d ], [ %.04061, %._crit_edge ], [ %.04061.us, %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i.us ] ; 2 uses
  %.sroa.025.0 = phi ptr [ %i.q, %bb.d ], [ %.04061, %._crit_edge ], [ %.04061.us, %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i.us ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 32
  %.sroa.01.0.copyload = load ptr, ptr %i.r, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 40
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %i.s = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.s, label %_ZNK2v84base6VectorIKjE6lengthEv.exit.i11, label %bb.e, !prof !6

bb.e:                                             ; preds = %._crit_edge.thread85
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #21
  unreachable

_ZNK2v84base6VectorIKjE6lengthEv.exit.i11:        ; preds = %._crit_edge.thread85
  %i.t = icmp ult i64 %.sroa.2.0.copyload, 2147483648
  br i1 %i.t, label %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i12, label %bb.f, !prof !6

bb.f:                                             ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit.i11
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #21
  unreachable

_ZNK2v84base6VectorIKjE6lengthEv.exit10.i12:      ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit.i11
  %.not.i13 = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  br i1 %.not.i13, label %_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i16, label %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i14

_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i16: ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i12
  %.not25.i17 = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not25.i17, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24.thread, label %.lr.ph.i18

_ZNK2v84base6VectorIKjE6lengthEv.exit12.i14:      ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i12
  %i.u = icmp samesign ugt i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  br i1 %i.u, label %bb.g, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24.thread

_ZNK2v84base6VectorIKjE6lengthEv.exit13.i21:      ; preds = %.lr.ph.i18
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %.sroa.22.0.copyload
  br i1 %exitcond.not.i23, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24.thread, label %.lr.ph.i18, !llvm.loop !27

.lr.ph.i18:                                       ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i16, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i21
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i22, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i21 ], [ 0, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i16 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.copyload, i64 %indvars.iv.i19
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv.i19
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %.not9.i20 = icmp eq i32 %i.w, %i.y
  br i1 %.not9.i20, label %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i21, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24

_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24: ; preds = %.lr.ph.i18
  %i.z = icmp ult i32 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24.thread

_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24.thread: ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i21, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i16, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i14, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i14, %._crit_edge.thread, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24.thread
  %.sroa.038.0 = phi ptr [ %.sroa.025.0, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24.thread ], [ null, %._crit_edge.thread ], [ null, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i14 ], [ null, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24 ]
  %.sroa.4.0 = phi ptr [ null, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24.thread ], [ %.039.lcssa84, %._crit_edge.thread ], [ %.039.lcssa83, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i14 ], [ %.039.lcssa83, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit24 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.038.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE4findERS6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not18.i = icmp eq ptr %i.b, null
  br i1 %.not18.i, label %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.2.0.copyload.fr.i = freeze i64 %.sroa.2.0.copyload.i ; 9 uses
  %i.d = icmp ult i64 %.sroa.2.0.copyload.fr.i, 2147483648
  br i1 %i.d, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i, !prof !6

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %.not25.i.us.i = icmp eq i64 %.sroa.2.0.copyload.fr.i, 0
  br i1 %.not25.i.us.i, label %.lr.ph.split.us.i.us, label %.lr.ph.split.us.i

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.preheader.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i.us
  %.020.us.i.us = phi ptr [ %.1.us.i.us, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i.us ], [ %i.b, %.lr.ph.split.us.preheader.i ] ; 3 uses
  %.01019.us.i.us = phi ptr [ %.111.us.i.us, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i.us ], [ %i.c, %.lr.ph.split.us.preheader.i ]
  %.sroa.22.0..sroa_idx.us.i.us = getelementptr inbounds nuw i8, ptr %.020.us.i.us, i64 40
  %.sroa.22.0.copyload.us.i.us = load i64, ptr %.sroa.22.0..sroa_idx.us.i.us, align 8 ; 2 uses
  %i.e = icmp ult i64 %.sroa.22.0.copyload.us.i.us, 2147483648
  br i1 %i.e, label %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i.us, label %.split.us.i, !prof !6

_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i.us:  ; preds = %.lr.ph.split.us.i.us
  %or.cond.not = icmp eq i64 %.sroa.22.0.copyload.us.i.us, 0 ; 2 uses
  %.sink.i.us = select i1 %or.cond.not, i64 16, i64 24
  %.111.us.i.us = select i1 %or.cond.not, ptr %.020.us.i.us, ptr %.01019.us.i.us ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.020.us.i.us, i64 %.sink.i.us
  %.1.us.i.us = load ptr, ptr %i.f, align 8       ; 2 uses
  %.not.us.i.us = icmp eq ptr %.1.us.i.us, null
  br i1 %.not.us.i.us, label %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit, label %.lr.ph.split.us.i.us, !llvm.loop !80

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.preheader.i, %bb.b
  %.020.us.i = phi ptr [ %.1.us.i, %bb.b ], [ %i.b, %.lr.ph.split.us.preheader.i ] ; 4 uses
  %.01019.us.i = phi ptr [ %.111.us.i, %bb.b ], [ %i.c, %.lr.ph.split.us.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 32
  %.sroa.01.0.copyload.us.i = load ptr, ptr %i.g, align 8
  %.sroa.22.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 40
  %.sroa.22.0.copyload.us.i = load i64, ptr %.sroa.22.0..sroa_idx.us.i, align 8 ; 3 uses
  %i.h = icmp ult i64 %.sroa.22.0.copyload.us.i, 2147483648
  br i1 %i.h, label %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i, label %.split.us.i, !prof !6

_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i:     ; preds = %.lr.ph.split.us.i
  %.not.i.us.i = icmp eq i64 %.sroa.22.0.copyload.us.i, %.sroa.2.0.copyload.fr.i
  br i1 %.not.i.us.i, label %.lr.ph.i.us.i, label %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i.us.i

_ZNK2v84base6VectorIKjE6lengthEv.exit12.i.us.i:   ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i
  %i.i = icmp samesign ugt i64 %.sroa.22.0.copyload.us.i, %.sroa.2.0.copyload.fr.i
  br i1 %i.i, label %bb.b, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread.us.i

.lr.ph.i.us.i:                                    ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i.us.i ], [ 0, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01.0.copyload.us.i, i64 %indvars.iv.i.us.i
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv.i.us.i
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not9.i.us.i = icmp eq i32 %i.k, %i.m
  br i1 %.not9.i.us.i, label %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i.us.i, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.us.i.a

_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.us.i.a: ; preds = %.lr.ph.i.us.i
  %2 = icmp ult i32 %i.k, %i.m
  br i1 %2, label %bb.b, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread.us.i

_ZNK2v84base6VectorIKjE6lengthEv.exit13.i.us.i:   ; preds = %.lr.ph.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %.sroa.2.0.copyload.fr.i
  br i1 %exitcond.not.i.us.i, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread.us.i, label %.lr.ph.i.us.i, !llvm.loop !27

_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread.us.i: ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i.us.i, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.us.i.a, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i.us.i
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread.us.i, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.us.i.a, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i.us.i
  %.sink.i = phi i64 [ 16, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread.us.i ], [ 24, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.us.i.a ], [ 24, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i.us.i ]
  %.111.us.i = phi ptr [ %.020.us.i, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread.us.i ], [ %.01019.us.i, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.us.i.a ], [ %.01019.us.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i.us.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %.sink.i
  %.1.us.i = load ptr, ptr %i.n, align 8          ; 2 uses
  %.not.us.i = icmp eq ptr %.1.us.i, null
  br i1 %.not.us.i, label %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit, label %.lr.ph.split.us.i, !llvm.loop !80

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8
  %i.o = icmp ult i64 %.sroa.22.0.copyload.i, 2147483648
  br i1 %i.o, label %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.i, label %.split.us.i, !prof !6

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.us, %.lr.ph.split.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #21
  unreachable

_ZNK2v84base6VectorIKjE6lengthEv.exit.i.i:        ; preds = %.lr.ph.split.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #21
  unreachable

_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit: ; preds = %bb.b, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i.us
  %.us-phi = phi ptr [ %.111.us.i.us, %_ZNK2v84base6VectorIKjE6lengthEv.exit.i.us.i.us ], [ %.111.us.i, %bb.b ] ; 4 uses
  %i.p = icmp eq ptr %.us-phi, %i.c
  br i1 %i.p, label %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit.thread, label %_ZNK2v84base6VectorIKjE6lengthEv.exit.i

_ZNK2v84base6VectorIKjE6lengthEv.exit.i:          ; preds = %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.us-phi, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %i.r = icmp ult i64 %.sroa.2.0.copyload, 2147483648
  br i1 %i.r, label %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #21
  unreachable

_ZNK2v84base6VectorIKjE6lengthEv.exit10.i:        ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit.i
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.fr.i, %.sroa.2.0.copyload
  br i1 %.not.i, label %_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i, label %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i

_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i: ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i
  %.not25.i = icmp eq i64 %.sroa.2.0.copyload.fr.i, 0
  br i1 %.not25.i, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread, label %.lr.ph.i6

_ZNK2v84base6VectorIKjE6lengthEv.exit12.i:        ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit10.i
  %i.s = icmp samesign ugt i64 %.sroa.2.0.copyload.fr.i, %.sroa.2.0.copyload
  br i1 %i.s, label %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit.thread, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread

_ZNK2v84base6VectorIKjE6lengthEv.exit13.i:        ; preds = %.lr.ph.i6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.2.0.copyload.fr.i
  br i1 %exitcond.not.i, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread, label %.lr.ph.i6, !llvm.loop !27

.lr.ph.i6:                                        ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i ], [ 0, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not9.i = icmp eq i32 %i.u, %i.w
  br i1 %.not9.i, label %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit

_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit: ; preds = %.lr.ph.i6
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit.thread, label %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread

_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread: ; preds = %_ZNK2v84base6VectorIKjE6lengthEv.exit13.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit13.preheader.i, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit
  br label %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit.thread

_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit.thread: ; preds = %bb.a, %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread
  %.sroa.05.0 = phi ptr [ %.us-phi, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit.thread ], [ %i.c, %_ZNK2v84base6VectorIKjE6lengthEv.exit12.i ], [ %i.c, %_ZNSt8_Rb_treeIN2v84base6VectorIKjEESt4pairIKS4_PNS0_8internal10RegExpTreeEESt10_Select1stISA_ENS7_24CharacterClassStringLessENS7_13ZoneAllocatorISA_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS6_.exit ], [ %i.c, %_ZNK2v88internal24CharacterClassStringLessclENS_4base6VectorIKjEES5_.exit ], [ %i.c, %bb.a ]
  ret ptr %.sroa.05.0
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_SF_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIPPN2v88internal10RegExpTreeElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef 7, ptr %4)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPPN2v88internal10RegExpTreeES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %.021.i, ptr %4)
  %i.g = shl nuw nsw i64 %.021.i, 1
  tail call void @_ZSt17__merge_sort_loopIPPN2v88internal10RegExpTreeES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr noundef %0, i64 noundef %i.g, ptr %4)
  %i.h = shl nsw i64 %.021.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit, !llvm.loop !81

_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIPPN2v88internal10RegExpTreeElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_(ptr noundef %1, ptr noundef %2, i64 noundef 7, ptr %4)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i17, label %_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit19

.lr.ph.i17:                                       ; preds = %_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit, %.lr.ph.i17
  %.021.i18 = phi i64 [ %i.p, %.lr.ph.i17 ], [ 7, %_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPPN2v88internal10RegExpTreeES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_T2_(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %.021.i18, ptr %4)
  %i.o = shl nuw nsw i64 %.021.i18, 1
  tail call void @_ZSt17__merge_sort_loopIPPN2v88internal10RegExpTreeES4_lN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr noundef %1, i64 noundef %i.o, ptr %4)
  %i.p = shl nsw i64 %.021.i18, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i17, label %_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit19, !llvm.loop !81

_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit19: ; preds = %.lr.ph.i17, %_ZSt24__merge_sort_with_bufferIPPN2v88internal10RegExpTreeES4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_T1_.exit
  %i.r = ptrtoint ptr %4 to i64
  tail call void @_ZSt16__merge_adaptiveIPPN2v88internal10RegExpTreeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_SF_T0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3, i64 %i.r)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIPPN2v88internal10RegExpTreeEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp slt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, %1
  %.018.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, %1
  %or.cond = select i1 %i.g, i1 true, i1 %.not19.i
  br i1 %or.cond, label %common.ret25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.h
  %.021.i = phi ptr [ %.0.i, %bb.h ], [ %.018.i, %bb.b ] ; 8 uses
  %.pn20.i = phi ptr [ %.021.i, %bb.h ], [ %0, %bb.b ] ; 4 uses
  %i.h = call noundef i32 %2(ptr noundef nonnull align 8 dereferenceable(8) %.021.i, ptr noundef nonnull align 8 dereferenceable(8) %0) #20, !inline_history !82
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = load ptr, ptr %.021.i, align 8
  %i.k = ptrtoint ptr %.021.i to i64
  %i.l = sub i64 %i.k, %i.c                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 8
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.t = load ptr, ptr %0, align 8
  store ptr %i.t, ptr %i.s, align 8
  br label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit.i

_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.j, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.u = load ptr, ptr %.021.i, align 8
  store ptr %i.u, ptr %i.a, align 8
  %i.v = call noundef i32 %2(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %.pn20.i) #20, !inline_history !83
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPPN2v88internal10RegExpTreeEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.g ] ; 4 uses
  %.0911.i.i = phi ptr [ %.012.i.i, %.lr.ph.i.i ], [ %.021.i, %bb.g ]
  %i.x = load ptr, ptr %.012.i.i, align 8
  store ptr %i.x, ptr %.0911.i.i, align 8
  %.0.i.i = getelementptr inbounds i8, ptr %.012.i.i, i64 -8 ; 2 uses
  %i.y = call noundef i32 %2(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i) #20, !inline_history !83
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPPN2v88internal10RegExpTreeEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_T0_.exit.i, !llvm.loop !84

_ZSt25__unguarded_linear_insertIPPN2v88internal10RegExpTreeEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.09.lcssa.i.i = phi ptr [ %.021.i, %bb.g ], [ %.012.i.i, %.lr.ph.i.i ]
  %i.aa = load ptr, ptr %i.a, align 8
  store ptr %i.aa, ptr %.09.lcssa.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h
end_hunk_0
