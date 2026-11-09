Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rewireMiaig?download=true
inline.NumInlined: 1410
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN6Rewire5Miaig9expandOneEiiiiPmiii:bb.a
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !47
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.ht, align 4, !tbaa !47
  %i.hw = add nsw i32 %.0107, 1                   ; 2 uses
  br i1 %.not, label %.loopexit86, label %bb.y

bb.y:                                             ; preds = %.loopexit85.split.us._crit_edge
  tail call void @_ZN6Rewire5Miaig16updateLevels_recEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  tail call void @_ZN6Rewire5Miaig17updateRequire_recEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1)
  %.pre136.pre.pre = load ptr, ptr %i.n, align 8, !tbaa !78
  br label %.loopexit86

.loopexit86:                                      ; preds = %.lr.ph25.i.us.1, %.loopexit85.split.us._crit_edge, %bb.y
  %.pre136.pre = phi ptr [ %.pre136.pre.pre, %bb.y ], [ %i.hp, %.loopexit85.split.us._crit_edge ], [ %.pre136.pre141, %.lr.ph25.i.us.1 ] ; 3 uses
  %.1 = phi i32 [ %i.hw, %bb.y ], [ %i.hw, %.loopexit85.split.us._crit_edge ], [ %.0107, %.lr.ph25.i.us.1 ] ; 2 uses
  %i.hx = icmp eq i32 %.1, %2
  br i1 %i.hx, label %.critedge2, label %.loopexit86._crit_edge

.loopexit86._crit_edge:                           ; preds = %.loopexit86, %bb.t
  %.pre136.pre142 = phi ptr [ %.pre136.pre141, %bb.t ], [ %.pre136.pre, %.loopexit86 ]
  %i.hy = phi ptr [ %i.fz, %bb.t ], [ %.pre136.pre, %.loopexit86 ] ; 3 uses
  %.2 = phi i32 [ %.0107, %bb.t ], [ %.1, %.loopexit86 ] ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 152
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !133 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !55
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp slt i64 %indvars.iv.next129, %i.ic
  br i1 %i.id, label %bb.s, label %.critedge2, !llvm.loop !443

.critedge2:                                       ; preds = %.loopexit86, %.loopexit86._crit_edge, %_ZL12Vi_RandomizeP3vi_.exit
  %i.ie = phi ptr [ %i.fu, %_ZL12Vi_RandomizeP3vi_.exit ], [ %i.hy, %.loopexit86._crit_edge ], [ %.pre136.pre, %.loopexit86 ]
  %.3 = phi i32 [ 0, %_ZL12Vi_RandomizeP3vi_.exit ], [ %.2, %.loopexit86._crit_edge ], [ %2, %.loopexit86 ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 168
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !135
  tail call void @_ZN6Rewire5Miaig11truthUpdateEP3vi_Pmi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ig, ptr noundef %5, i32 noundef %7)
  br label %bb.z

bb.z:                                             ; preds = %bb.b, %.critedge2
  %.065 = phi i32 [ %.3, %.critedge2 ], [ 0, %bb.b ]
  ret i32 %.065
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Rewire5Miaig22reduceOneHeuristicSortEPii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %.val6 = load i32, ptr %i.d, align 8, !tbaa !55 ; 3 uses
  %i.e = sext i32 %.val6 to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.e, 2                     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %.idx ; 4 uses
  %i.g = icmp eq i32 %.val6, 0
  br i1 %i.g, label %"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EvT_S4_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.e, 1
  %i.i = sdiv i64 %i.h, 2                         ; 4 uses
  %i.j = icmp sgt i32 %.val6, 0
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.o, %select.unfold.i.i.i.i ], [ %i.i, %bb.b ] ; 4 uses
  %i.k = shl nuw nsw i64 %.010.i.i.i.i, 2
  %i.l = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.k, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.m = icmp eq i64 %.010.i.i.i.i, 1
  %i.n = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.o = lshr i64 %i.n, 1
  br i1 %i.m, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i:    ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.b
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i = phi ptr [ null, %bb.b ], [ %i.l, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 6 uses
  %i.p = icmp eq i64 %i.i, %.sroa.4.0.i.i
  br i1 %i.p, label %bb.c, label %bb.d, !prof !147

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i
  %.idx14 = shl nsw i64 %i.i, 2                   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %1, i64 %.idx14 ; 3 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EEEvT_S8_T0_T1_"(ptr noundef %1, ptr noundef %i.q, ptr noundef %.sroa.10.0.i.i, ptr nonnull %0)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EEEvT_S8_T0_T1_"(ptr noundef %i.q, ptr noundef nonnull %i.f, ptr noundef %.sroa.10.0.i.i, ptr nonnull %0)
  %gepdiff = sub nsw i64 %.idx, %.idx14
  %i.r = ashr exact i64 %gepdiff, 2
  %i.s = ptrtoint ptr %0 to i64
  tail call fastcc void @"_ZSt16__merge_adaptiveIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EEEvT_S8_S8_T0_S9_T1_T2_"(ptr noundef %1, ptr noundef %i.q, ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef %i.r, ptr noundef %.sroa.10.0.i.i, i64 %i.s)
  br label %"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EvT_S4_T0_.exit"

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i
  %i.t = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.t, label %bb.e, label %bb.f, !prof !148

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EEEvT_S8_T0_"(ptr noundef %1, ptr noundef nonnull %i.f, ptr nonnull %0)
  br label %"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EvT_S4_T0_.exit"

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EEEvT_S8_T0_T1_T2_"(ptr noundef %1, ptr noundef nonnull %i.f, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr nonnull %0)
  br label %"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EvT_S4_T0_.exit"

"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EvT_S4_T0_.exit": ; preds = %bb.c, %bb.e, %bb.f
  %i.u = shl i64 %.sroa.4.0.i.i, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i, i64 noundef %i.u) #37
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !78
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 152
  %.pre18 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !133
  %.val.pre = load i32, ptr %.pre18, align 8, !tbaa !55 ; 3 uses
  %i.v = sext i32 %.val.pre to i64                ; 2 uses
  %.idx15 = shl nsw i64 %i.v, 2                   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %1, i64 %.idx15 ; 4 uses
  %i.x = icmp eq i32 %.val.pre, 0
  br i1 %i.x, label %"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EvT_S4_T0_.exit", label %bb.g

bb.g:                                             ; preds = %"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EvT_S4_T0_.exit"
  %i.y = add nsw i64 %i.v, 1
  %i.z = sdiv i64 %i.y, 2                         ; 4 uses
  %i.aa = icmp sgt i32 %.val.pre, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i10, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i7

.lr.ph.i.i.i.i10:                                 ; preds = %bb.g, %select.unfold.i.i.i.i13
  %.010.i.i.i.i11 = phi i64 [ %i.af, %select.unfold.i.i.i.i13 ], [ %i.z, %bb.g ] ; 4 uses
  %i.ab = shl nuw nsw i64 %.010.i.i.i.i11, 2
  %i.ac = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ab, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #36 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i12, label %select.unfold.i.i.i.i13, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i7

select.unfold.i.i.i.i13:                          ; preds = %.lr.ph.i.i.i.i10
  %i.ad = icmp eq i64 %.010.i.i.i.i11, 1
  %i.ae = add nuw nsw i64 %.010.i.i.i.i11, 1
  %i.af = lshr i64 %i.ae, 1
  br i1 %i.ad, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i7, label %.lr.ph.i.i.i.i10, !llvm.loop !17

_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i7:   ; preds = %select.unfold.i.i.i.i13, %.lr.ph.i.i.i.i10, %bb.g
  %.sroa.4.0.i.i8 = phi i64 [ 0, %bb.g ], [ %.010.i.i.i.i11, %.lr.ph.i.i.i.i10 ], [ 0, %select.unfold.i.i.i.i13 ] ; 3 uses
  %.sroa.10.0.i.i9 = phi ptr [ null, %bb.g ], [ %i.ac, %.lr.ph.i.i.i.i10 ], [ null, %select.unfold.i.i.i.i13 ] ; 6 uses
  %i.ag = icmp eq i64 %i.z, %.sroa.4.0.i.i8
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !147

bb.h:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i7
  %.idx16 = shl nsw i64 %i.z, 2                   ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %.idx16 ; 3 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_T0_T1_"(ptr noundef %1, ptr noundef %i.ah, ptr noundef %.sroa.10.0.i.i9, ptr nonnull %0)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_T0_T1_"(ptr noundef %i.ah, ptr noundef nonnull %i.w, ptr noundef %.sroa.10.0.i.i9, ptr nonnull %0)
  %gepdiff17 = sub nsw i64 %.idx15, %.idx16
  %i.ai = ashr exact i64 %gepdiff17, 2
  %i.aj = ptrtoint ptr %0 to i64
  tail call fastcc void @"_ZSt16__merge_adaptiveIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_S8_T0_S9_T1_T2_"(ptr noundef %1, ptr noundef %i.ah, ptr noundef nonnull %i.w, i64 noundef %i.z, i64 noundef %i.ai, ptr noundef %.sroa.10.0.i.i9, i64 %i.aj)
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i7
  %i.ak = icmp eq ptr %.sroa.10.0.i.i9, null
  br i1 %i.ak, label %bb.j, label %bb.k, !prof !148

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZSt21__inplace_stable_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_T0_"(ptr noundef %1, ptr noundef nonnull %i.w, ptr nonnull %0)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EEEvT_S8_T0_T1_T2_"(ptr noundef %1, ptr noundef nonnull %i.w, ptr noundef nonnull %.sroa.10.0.i.i9, i64 noundef %.sroa.4.0.i.i8, ptr nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.al = shl i64 %.sroa.4.0.i.i8, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i9, i64 noundef %i.al) #37
  br label %"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EvT_S4_T0_.exit"

"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_1EvT_S4_T0_.exit": ; preds = %bb.a, %"_ZSt11stable_sortIPiZN6Rewire5Miaig22reduceOneHeuristicSortES0_iE3$_0EvT_S4_T0_.exit", %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN6Rewire5Miaig9reduceOneEiiiiPmiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.e = sext i32 %1 to i64                       ; 9 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.e
  %.val.i = load i32, ptr %i.f, align 8, !tbaa !55 ; 7 uses
  %i.g = tail call noundef ptr @_ZN6Rewire5Miaig14computeCareSetEiPm(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %5) ; 3 uses
  %i.h = tail call noundef i32 @_ZN6Rewire5Miaig10checkConstEiPmS1_ii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %i.g, ptr noundef %5, i32 noundef %7, i32 noundef %8)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %.not84 = icmp ne i32 %2, 0
  %i.i = icmp eq i32 %.val.i, 1
  %or.cond = or i1 %.not84, %i.i
  br i1 %or.cond, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !78   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !90   ; 3 uses
  %9 = ptrtoaddr ptr %i.l to i64                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !89   ; 6 uses
  %i.o = mul nsw i32 %i.n, %1
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107  ; 2 uses
  %i.t = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.e ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %.val95 = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !138  ; 14 uses
  %i.z = ptrtoaddr ptr %i.y to i64                ; 2 uses
  %i.aa = icmp sgt i32 %i.n, 0                    ; 2 uses
  %wide.trip.count.i = zext i32 %i.n to i64       ; 11 uses
  %wide.trip.count = zext nneg i32 %i.u to i64
  %min.iters.check258 = icmp ult i32 %i.n, 4
  %invariant.op = sub i64 %9, %i.z
  %n.vec262 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n269 = icmp eq i64 %n.vec262, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %i.n, 6
  %invariant.op383 = sub i64 %9, %i.z
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter362 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZL14Tt_EqualOnCarePmS_S_i.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL14Tt_EqualOnCarePmS_S_i.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !47 ; 3 uses
  %i.ad = ashr i32 %i.ac, 1
  %i.ae = mul i32 %i.ad, %i.n
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.af ; 12 uses
  %i.ah = and i32 %i.ac, 1
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.d
  br i1 %i.aa, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader14.i
  br i1 %min.iters.check258, label %.lr.ph.i.preheader356, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.lr.ph.i.preheader
  %i.ai = shl nsw i64 %i.af, 3
  %.reass = add i64 %i.ai, %invariant.op
  %diff.check260 = icmp ugt i64 %.reass, -32
  br i1 %diff.check260, label %.lr.ph.i.preheader356, label %vector.body263

vector.body263:                                   ; preds = %vector.memcheck259, %vector.body263
  %index264 = phi i64 [ %index.next267, %vector.body263 ], [ 0, %vector.memcheck259 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index264 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load265 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !91
  %wide.load266 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !91
  %i.al = xor <2 x i64> %wide.load265, splat (i64 -1)
  %i.am = xor <2 x i64> %wide.load266, splat (i64 -1)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index264 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x i64> %i.al, ptr %i.an, align 8, !tbaa !91
  store <2 x i64> %i.am, ptr %i.ao, align 8, !tbaa !91
  %index.next267 = add nuw i64 %index264, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next267, %n.vec262
  br i1 %i.ap, label %middle.block268, label %vector.body263, !llvm.loop !446

middle.block268:                                  ; preds = %vector.body263
  br i1 %cmp.n269, label %.lr.ph.i103.preheader, label %.lr.ph.i.preheader356

.lr.ph.i.preheader356:                            ; preds = %vector.memcheck259, %.lr.ph.i.preheader, %middle.block268
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck259 ], [ 0, %.lr.ph.i.preheader ], [ %n.vec262, %middle.block268 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader356, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader356 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader356 ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.prol
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !91
  %i.as = xor i64 %i.ar, -1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.prol
  store i64 %i.as, ptr %i.at, align 8, !tbaa !91
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !447

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader356
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader356 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.au = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %.lr.ph.i103.preheader, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.aa, label %.lr.ph18.i.preheader, label %.loopexit

.lr.ph18.i.preheader:                             ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph18.i.preheader355, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph18.i.preheader
  %i.aw = shl nsw i64 %i.af, 3
  %.reass384 = add i64 %i.aw, %invariant.op383
  %diff.check = icmp ugt i64 %.reass384, -32
  br i1 %diff.check, label %.lr.ph18.i.preheader355, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <2 x i64>, ptr %i.ax, align 8, !tbaa !91
  %wide.load254 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %wide.load, ptr %i.az, align 8, !tbaa !91
  store <2 x i64> %wide.load254, ptr %i.ba, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !448

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i103.preheader, label %.lr.ph18.i.preheader355

.lr.ph18.i.preheader355:                          ; preds = %vector.memcheck, %.lr.ph18.i.preheader, %middle.block
  %indvars.iv21.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod363.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol

.lr.ph18.i.prol:                                  ; preds = %.lr.ph18.i.preheader355, %.lr.ph18.i.prol
  %indvars.iv21.i.prol = phi i64 [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ], [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader355 ] ; 3 uses
  %prol.iter364 = phi i64 [ %prol.iter364.next, %.lr.ph18.i.prol ], [ 0, %.lr.ph18.i.preheader355 ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv21.i.prol
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !91
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv21.i.prol
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !91
  %indvars.iv.next22.i.prol = add nuw nsw i64 %indvars.iv21.i.prol, 1 ; 2 uses
  %prol.iter364.next = add i64 %prol.iter364, 1   ; 2 uses
  %prol.iter364.cmp.not = icmp eq i64 %prol.iter364.next, %xtraiter362
  br i1 %prol.iter364.cmp.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol, !llvm.loop !449

.lr.ph18.i.prol.loopexit:                         ; preds = %.lr.ph18.i.prol, %.lr.ph18.i.preheader355
  %indvars.iv21.i.unr = phi i64 [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader355 ], [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ]
  %i.bf = sub nsw i64 %indvars.iv21.i.ph, %wide.trip.count.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.lr.ph.i103.preheader, label %.lr.ph18.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !91
  %i.bj = xor i64 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !91
  %i.bn = xor i64 %i.bm, -1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !91
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.1
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !91
  %i.br = xor i64 %i.bq, -1
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.1
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !91
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.2
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !91
  %i.bv = xor i64 %i.bu, -1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.2
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !91
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph.i103.preheader, label %.lr.ph.i, !llvm.loop !450

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i.3, %.lr.ph18.i ], [ %indvars.iv21.i.unr, %.lr.ph18.i.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv21.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !91
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv21.i
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !91
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next22.i
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !91
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next22.i
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !91
  %indvars.iv.next22.i.1 = add nuw nsw i64 %indvars.iv21.i, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next22.i.1
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !91
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next22.i.1
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !91
  %indvars.iv.next22.i.2 = add nuw nsw i64 %indvars.iv21.i, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next22.i.2
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !91
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next22.i.2
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !91
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %exitcond25.not.i.3 = icmp eq i64 %indvars.iv.next22.i.3, %wide.trip.count.i
  br i1 %exitcond25.not.i.3, label %.lr.ph.i103.preheader, label %.lr.ph18.i, !llvm.loop !451

.lr.ph.i103.preheader:                            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph18.i.prol.loopexit, %.lr.ph18.i, %middle.block268, %middle.block
  br label %.lr.ph.i103

bb.e:                                             ; preds = %.lr.ph.i103
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i107 = icmp eq i64 %indvars.iv.next.i106, %wide.trip.count.i
  br i1 %exitcond.not.i107, label %.loopexit, label %.lr.ph.i103, !llvm.loop !12

.lr.ph.i103:                                      ; preds = %.lr.ph.i103.preheader, %bb.e
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i106, %bb.e ], [ 0, %.lr.ph.i103.preheader ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i104
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !91
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i104
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !91
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i104
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !91
  %i.cp = xor i64 %i.co, %i.cm
  %i.cq = and i64 %i.cp, %i.ck
  %.not.i105 = icmp eq i64 %i.cq, 0
  br i1 %.not.i105, label %bb.e, label %_ZL14Tt_EqualOnCarePmS_S_i.exit

.loopexit:                                        ; preds = %.preheader14.i, %.preheader.i, %bb.e
  tail call void @_ZN6Rewire5Miaig8setFaninEii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %i.ac)
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 168
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !135
  tail call void @_ZN6Rewire5Miaig11truthUpdateEP3vi_Pmi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ct, ptr noundef %5, i32 noundef %7)
  %.not92 = icmp eq i32 %8, 0
  br i1 %.not92, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 176
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !107
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.e
  %.val.i108 = load i32, ptr %i.cx, align 8, !tbaa !55
  %i.cy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %1, i32 noundef %.val.i, i32 noundef %.val.i108) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.cz = add nsw i32 %.val.i, -1
  br label %bb.ak

_ZL14Tt_EqualOnCarePmS_S_i.exit:                  ; preds = %.lr.ph.i103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !452

.critedge:                                        ; preds = %_ZL14Tt_EqualOnCarePmS_S_i.exit, %bb.c
  %.not85 = icmp eq i32 %3, 0
  br i1 %.not85, label %bb.h, label %bb.ak

bb.h:                                             ; preds = %.critedge
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !133
  store i32 0, ptr %i.db, align 8, !tbaa !55
  %i.dc = load i32, ptr %i.t, align 8, !tbaa !55
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph164, label %_ZL12Vi_RandomizeP3vi_.exit

.lr.ph164:                                        ; preds = %bb.h, %_ZL7Vi_PushP3vi_i.exit
  %i.de = phi ptr [ %i.el, %_ZL7Vi_PushP3vi_i.exit ], [ %i.j, %bb.h ] ; 2 uses
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %_ZL7Vi_PushP3vi_i.exit ], [ 0, %bb.h ] ; 2 uses
  %i.df = phi ptr [ %i.et, %_ZL7Vi_PushP3vi_i.exit ], [ %i.s, %bb.h ]
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.df, i64 %i.e
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %.val94 = load ptr, ptr %i.dh, align 8, !tbaa !53
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %indvars.iv185
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !47
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !133 ; 6 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !55 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !57 ; 3 uses
  %i.dp = icmp slt i32 %i.dm, %i.do
  br i1 %i.dp, label %_ZL7Vi_PushP3vi_i.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph164
  %i.dq = icmp slt i32 %i.do, 4
  %i.dr = lshr i32 %i.do, 1
  %i.ds = mul nuw nsw i32 %i.dr, 3
  %i.dt = select i1 %i.dq, i32 8, i32 %i.ds       ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !53
  %i.dw = zext nneg i32 %i.dt to i64
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %i.dy = tail call ptr @realloc(ptr noundef %i.dv, i64 noundef %i.dx) #41 ; 2 uses
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !53
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ea = load i32, ptr %i.dn, align 4, !tbaa !57
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = fmul nnan double %i.eb, 4.000000e+00
  %i.ed = fmul nnan double %i.ec, f0x3EB0000000000000
  %i.ee = uitofp nneg i32 %i.dt to float
  %i.ef = fmul nnan float %i.ee, 4.000000e+00
  %i.eg = fmul nnan float %i.ef, f0x35800000
  %i.eh = fpext float %i.eg to double
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, double noundef %i.ed, double noundef %i.eh) ; 0 uses
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !144
  %i.ek = tail call i32 @fflush(ptr noundef %i.ej) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.dt, ptr %i.dn, align 4, !tbaa !57
  %.pre.i = load i32, ptr %i.dl, align 8, !tbaa !55
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %_ZL7Vi_PushP3vi_i.exit

_ZL7Vi_PushP3vi_i.exit:                           ; preds = %.lr.ph164, %bb.k
  %i.el = phi ptr [ %i.de, %.lr.ph164 ], [ %.pre, %bb.k ] ; 4 uses
  %i.em = phi i32 [ %i.dm, %.lr.ph164 ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !53
  %i.ep = add nsw i32 %i.em, 1
  store i32 %i.ep, ptr %i.dl, align 8, !tbaa !55
  %i.eq = sext i32 %i.em to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.eq
  store i32 %i.dj, ptr %i.er, align 4, !tbaa !47
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 176
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !107 ; 2 uses
  %i.eu = getelementptr inbounds [16 x i8], ptr %i.et, i64 %i.e
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !55
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next186, %i.ew
  br i1 %i.ex, label %.lr.ph164, label %.critedge2, !llvm.loop !453

.critedge2:                                       ; preds = %_ZL7Vi_PushP3vi_i.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.el, i64 152
  %.pre197 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !133 ; 4 uses
  %.pre198 = load i32, ptr %.pre197, align 8, !tbaa !55
  %i.ey = icmp sgt i32 %.pre198, 0
  br i1 %i.ey, label %.lr.ph.i109, label %_ZL12Vi_RandomizeP3vi_.exit

.lr.ph.i109:                                      ; preds = %.critedge2
  %i.ez = getelementptr inbounds nuw i8, ptr %.pre197, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i109
  %indvars.iv.i110 = phi i64 [ 0, %.lr.ph.i109 ], [ %indvars.iv.next.i111, %bb.l ] ; 2 uses
  %i.fa = tail call i32 @Random_Num(i32 noundef 0) #37
  %i.fb = load i32, ptr %.pre197, align 8, !tbaa !55
  %i.fc = urem i32 %i.fa, %i.fb
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !53 ; 2 uses
  %i.fe = sext i32 %i.fc to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !47
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i110 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !47
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !47
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !47
  %indvars.iv.next.i111 = add nuw nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %i.fj = load i32, ptr %.pre197, align 8, !tbaa !55
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next.i111, %i.fk
  br i1 %i.fl, label %bb.l, label %_ZL12Vi_RandomizeP3vi_.exit.loopexit, !llvm.loop !10

_ZL12Vi_RandomizeP3vi_.exit.loopexit:             ; preds = %bb.l
  %.pre200.pre = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %_ZL12Vi_RandomizeP3vi_.exit

_ZL12Vi_RandomizeP3vi_.exit:                      ; preds = %bb.h, %_ZL12Vi_RandomizeP3vi_.exit.loopexit, %.critedge2
  %.pre200 = phi ptr [ %.pre200.pre, %_ZL12Vi_RandomizeP3vi_.exit.loopexit ], [ %i.el, %.critedge2 ], [ %i.j, %bb.h ] ; 2 uses
  %.not86 = icmp eq i32 %4, 0
  br i1 %.not86, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZL12Vi_RandomizeP3vi_.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %.pre200, i64 152
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !133
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %.val100 = load ptr, ptr %i.fo, align 8, !tbaa !53
  tail call void @_ZN6Rewire5Miaig22reduceOneHeuristicSortEPii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.val100, i32 poison)
  %.pre199 = load ptr, ptr %i.a, align 8, !tbaa !78
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL12Vi_RandomizeP3vi_.exit
  %i.fp = phi ptr [ %.pre199, %bb.m ], [ %.pre200, %_ZL12Vi_RandomizeP3vi_.exit ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 152
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !133
  %.val99 = load i32, ptr %i.fr, align 8, !tbaa !55 ; 3 uses
  %i.fs = icmp sgt i32 %.val99, 0
  br i1 %i.fs, label %.lr.ph168.preheader, label %._crit_edge

.lr.ph168.preheader:                              ; preds = %bb.n
  %i.ft = zext nneg i32 %.val99 to i64
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %_ZL14Tt_EqualOnCarePmS_S_i.exit130.thread
  %indvars.iv188 = phi i64 [ %i.ft, %.lr.ph168.preheader ], [ %indvars.iv.next189, %_ZL14Tt_EqualOnCarePmS_S_i.exit130.thread ] ; 3 uses
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, -1 ; 3 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !78  ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 152
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !133 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !53 ; 6 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.next189
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !47
  %i.gb = load i32, ptr %i.fw, align 8, !tbaa !55 ; 2 uses
  %i.gc = add nsw i32 %i.gb, -1
  %i.gd = sext i32 %i.gb to i64
  %i.ge = icmp slt i64 %indvars.iv188, %i.gd
  br i1 %i.ge, label %.lr.ph.i112, label %_ZL7Vi_DropP3vi_i.exit

.lr.ph.i112:                                      ; preds = %.lr.ph168, %.lr.ph.i112
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i114, %.lr.ph.i112 ], [ %indvars.iv.next189, %.lr.ph168 ] ; 2 uses
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i113, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.next.i114
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !47
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.i113
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !47
  %i.gi = load i32, ptr %i.fw, align 8, !tbaa !55
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next.i114, %i.gk
  br i1 %i.gl, label %.lr.ph.i112, label %_ZL7Vi_DropP3vi_i.exit, !llvm.loop !7

_ZL7Vi_DropP3vi_i.exit:                           ; preds = %.lr.ph.i112, %.lr.ph168
  %.lcssa.i = phi i32 [ %i.gc, %.lr.ph168 ], [ %i.gj, %.lr.ph.i112 ] ; 5 uses
  store i32 %.lcssa.i, ptr %i.fw, align 8, !tbaa !55
  %i.gm = icmp sgt i32 %.lcssa.i, 0
  br i1 %i.gm, label %.lr.ph.i116, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %_ZL7Vi_DropP3vi_i.exit
  %.phi.trans.insert33.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  %.pre34.i = load ptr, ptr %.phi.trans.insert33.i, align 8, !tbaa !138
  br label %_ZN6Rewire5Miaig19truthSimNodeSubset2EiP3vi_i.exit

.lr.ph.i116:                                      ; preds = %_ZL7Vi_DropP3vi_i.exit
  %i.gn = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  %wide.trip.count.i118 = zext nneg i32 %.lcssa.i to i64
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !138 ; 27 uses
  %i.gs = ptrtoaddr ptr %i.gr to i64              ; 2 uses
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !90 ; 4 uses
  %i.gu = ptrtoaddr ptr %i.gt to i64              ; 2 uses
  %i.gv = load i32, ptr %i.gq, align 4, !tbaa !89 ; 7 uses
  %i.gw = icmp sgt i32 %i.gv, 0                   ; 4 uses
  %wide.trip.count.i13.i = zext i32 %i.gv to i64  ; 23 uses
  %i.gx = shl nuw nsw i64 %wide.trip.count.i13.i, 3
  %scevgep = getelementptr i8, ptr %i.gr, i64 %i.gx ; 2 uses
  %min.iters.check328 = icmp ult i32 %i.gv, 4
  %n.vec334 = and i64 %wide.trip.count.i13.i, 2147483644 ; 3 uses
  %cmp.n343 = icmp eq i64 %n.vec334, %wide.trip.count.i13.i
  %xtraiter365 = and i64 %wide.trip.count.i13.i, 1
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  %i.gy = add nsw i64 %wide.trip.count.i13.i, -1
  %min.iters.check307 = icmp ult i32 %i.gv, 4
  %n.vec310 = and i64 %wide.trip.count.i13.i, 2147483644 ; 3 uses
  %cmp.n319 = icmp eq i64 %n.vec310, %wide.trip.count.i13.i
  %xtraiter368 = and i64 %wide.trip.count.i13.i, 3 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  %min.iters.check290 = icmp ult i32 %i.gv, 4
  %invariant.op385 = sub i64 %i.gu, %i.gs
  %n.vec294 = and i64 %wide.trip.count.i13.i, 2147483644 ; 3 uses
  %cmp.n301 = icmp eq i64 %n.vec294, %wide.trip.count.i13.i
  %xtraiter371 = and i64 %wide.trip.count.i13.i, 3 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  %min.iters.check274 = icmp ult i32 %i.gv, 6
  %invariant.op387 = sub i64 %i.gu, %i.gs
  %n.vec278 = and i64 %wide.trip.count.i13.i, 2147483644 ; 3 uses
  %cmp.n285 = icmp eq i64 %n.vec278, %wide.trip.count.i13.i
  %xtraiter374 = and i64 %wide.trip.count.i13.i, 3 ; 2 uses
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br label %bb.o

bb.o:                                             ; preds = %_ZL7Tt_DupCPmS_ii.exit.i, %.lr.ph.i116
  %indvars.iv.i119 = phi i64 [ 0, %.lr.ph.i116 ], [ %indvars.iv.next.i120, %_ZL7Tt_DupCPmS_ii.exit.i ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.i119
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !47 ; 2 uses
  %i.hb = icmp eq i64 %indvars.iv.i119, 0
  %i.hc = ashr i32 %i.ha, 1
  %i.hd = mul i32 %i.gv, %i.hc
  %i.he = sext i32 %i.hd to i64                   ; 5 uses
  %i.hf = getelementptr [8 x i8], ptr %i.gt, i64 %i.he ; 24 uses
  %i.hg = and i32 %i.ha, 1
  %.not.i.i = icmp eq i32 %i.hg, 0                ; 2 uses
  br i1 %i.hb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader14.i.i

.preheader14.i.i:                                 ; preds = %bb.p
  br i1 %i.gw, label %.lr.ph.i.i.preheader, label %_ZL7Tt_DupCPmS_ii.exit.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader14.i.i
  br i1 %min.iters.check290, label %.lr.ph.i.i.preheader347, label %vector.memcheck291

vector.memcheck291:                               ; preds = %.lr.ph.i.i.preheader
  %i.hh = shl nsw i64 %i.he, 3
  %.reass386 = add i64 %i.hh, %invariant.op385
  %diff.check292 = icmp ugt i64 %.reass386, -32
  br i1 %diff.check292, label %.lr.ph.i.i.preheader347, label %vector.body295

vector.body295:                                   ; preds = %vector.memcheck291, %vector.body295
  %index296 = phi i64 [ %index.next299, %vector.body295 ], [ 0, %vector.memcheck291 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %index296 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load297 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !91
  %wide.load298 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !91
  %i.hk = xor <2 x i64> %wide.load297, splat (i64 -1)
  %i.hl = xor <2 x i64> %wide.load298, splat (i64 -1)
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index296 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store <2 x i64> %i.hk, ptr %i.hm, align 8, !tbaa !91
  store <2 x i64> %i.hl, ptr %i.hn, align 8, !tbaa !91
  %index.next299 = add nuw i64 %index296, 4       ; 2 uses
  %i.ho = icmp eq i64 %index.next299, %n.vec294
  br i1 %i.ho, label %middle.block300, label %vector.body295, !llvm.loop !454

middle.block300:                                  ; preds = %vector.body295
  br i1 %cmp.n301, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph.i.i.preheader347

.lr.ph.i.i.preheader347:                          ; preds = %vector.memcheck291, %.lr.ph.i.i.preheader, %middle.block300
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck291 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec294, %middle.block300 ] ; 3 uses
  br i1 %lcmp.mod372.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader347, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader347 ] ; 3 uses
  %prol.iter373 = phi i64 [ %prol.iter373.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader347 ]
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i.i.prol
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !91
  %i.hr = xor i64 %i.hq, -1
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i.i.prol
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !91
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter373.next = add i64 %prol.iter373, 1   ; 2 uses
  %prol.iter373.cmp.not = icmp eq i64 %prol.iter373.next, %xtraiter371
  br i1 %prol.iter373.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !455

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader347
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader347 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ht = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i13.i
  %i.hu = icmp ugt i64 %i.ht, -4
  br i1 %i.hu, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.p
  br i1 %i.gw, label %.lr.ph18.i.i.preheader, label %_ZL7Tt_DupCPmS_ii.exit.i

.lr.ph18.i.i.preheader:                           ; preds = %.preheader.i.i
  br i1 %min.iters.check274, label %.lr.ph18.i.i.preheader346, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph18.i.i.preheader
  %i.hv = shl nsw i64 %i.he, 3
  %.reass388 = add i64 %i.hv, %invariant.op387
  %diff.check276 = icmp ugt i64 %.reass388, -32
  br i1 %diff.check276, label %.lr.ph18.i.i.preheader346, label %vector.body279

vector.body279:                                   ; preds = %vector.memcheck275, %vector.body279
  %index280 = phi i64 [ %index.next283, %vector.body279 ], [ 0, %vector.memcheck275 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %index280 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load281 = load <2 x i64>, ptr %i.hw, align 8, !tbaa !91
  %wide.load282 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !91
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index280 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store <2 x i64> %wide.load281, ptr %i.hy, align 8, !tbaa !91
  store <2 x i64> %wide.load282, ptr %i.hz, align 8, !tbaa !91
  %index.next283 = add nuw i64 %index280, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next283, %n.vec278
  br i1 %i.ia, label %middle.block284, label %vector.body279, !llvm.loop !456

middle.block284:                                  ; preds = %vector.body279
  br i1 %cmp.n285, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph18.i.i.preheader346

.lr.ph18.i.i.preheader346:                        ; preds = %vector.memcheck275, %.lr.ph18.i.i.preheader, %middle.block284
  %indvars.iv21.i.i.ph = phi i64 [ 0, %vector.memcheck275 ], [ 0, %.lr.ph18.i.i.preheader ], [ %n.vec278, %middle.block284 ] ; 3 uses
  br i1 %lcmp.mod375.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol

.lr.ph18.i.i.prol:                                ; preds = %.lr.ph18.i.i.preheader346, %.lr.ph18.i.i.prol
  %indvars.iv21.i.i.prol = phi i64 [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ], [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader346 ] ; 3 uses
  %prol.iter376 = phi i64 [ %prol.iter376.next, %.lr.ph18.i.i.prol ], [ 0, %.lr.ph18.i.i.preheader346 ]
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv21.i.i.prol
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !91
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv21.i.i.prol
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !91
  %indvars.iv.next22.i.i.prol = add nuw nsw i64 %indvars.iv21.i.i.prol, 1 ; 2 uses
  %prol.iter376.next = add i64 %prol.iter376, 1   ; 2 uses
  %prol.iter376.cmp.not = icmp eq i64 %prol.iter376.next, %xtraiter374
  br i1 %prol.iter376.cmp.not, label %.lr.ph18.i.i.prol.loopexit, label %.lr.ph18.i.i.prol, !llvm.loop !457

.lr.ph18.i.i.prol.loopexit:                       ; preds = %.lr.ph18.i.i.prol, %.lr.ph18.i.i.preheader346
  %indvars.iv21.i.i.unr = phi i64 [ %indvars.iv21.i.i.ph, %.lr.ph18.i.i.preheader346 ], [ %indvars.iv.next22.i.i.prol, %.lr.ph18.i.i.prol ]
  %i.ie = sub nsw i64 %indvars.iv21.i.i.ph, %wide.trip.count.i13.i
  %i.if = icmp ugt i64 %i.ie, -4
  br i1 %i.if, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph18.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i.i
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !91
  %i.ii = xor i64 %i.ih, -1
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i.i
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !91
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !91
  %i.im = xor i64 %i.il, -1
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next.i.i
  store i64 %i.im, ptr %i.in, align 8, !tbaa !91
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.1
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !91
  %i.iq = xor i64 %i.ip, -1
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next.i.i.1
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !91
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.2
  %i.it = load i64, ptr %i.is, align 8, !tbaa !91
  %i.iu = xor i64 %i.it, -1
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next.i.i.2
  store i64 %i.iu, ptr %i.iv, align 8, !tbaa !91
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i13.i
  br i1 %exitcond.not.i.i.3, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph.i.i, !llvm.loop !458

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i.prol.loopexit, %.lr.ph18.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ], [ %indvars.iv21.i.i.unr, %.lr.ph18.i.i.prol.loopexit ] ; 6 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv21.i.i
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !91
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv21.i.i
  store i64 %i.ix, ptr %i.iy, align 8, !tbaa !91
  %indvars.iv.next22.i.i = add nuw nsw i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next22.i.i
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !91
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next22.i.i
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !91
  %indvars.iv.next22.i.i.1 = add nuw nsw i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next22.i.i.1
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !91
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next22.i.i.1
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !91
  %indvars.iv.next22.i.i.2 = add nuw nsw i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next22.i.i.2
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !91
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next22.i.i.2
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !91
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %exitcond25.not.i.i.3 = icmp eq i64 %indvars.iv.next22.i.i.3, %wide.trip.count.i13.i
  br i1 %exitcond25.not.i.i.3, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph18.i.i, !llvm.loop !459

bb.q:                                             ; preds = %bb.o
  br i1 %.not.i.i, label %.preheader.i18.i, label %.preheader14.i11.i

.preheader14.i11.i:                               ; preds = %bb.q
  br i1 %i.gw, label %.lr.ph.i14.i.preheader, label %_ZL7Tt_DupCPmS_ii.exit.i

.lr.ph.i14.i.preheader:                           ; preds = %.preheader14.i11.i
  br i1 %min.iters.check328, label %.lr.ph.i14.i.preheader351, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.lr.ph.i14.i.preheader
  %i.ji = add nsw i64 %i.he, %wide.trip.count.i13.i
  %i.jj = shl nsw i64 %i.ji, 3
  %i.jk = getelementptr i8, ptr %i.gt, i64 %i.jj
  %bound0330 = icmp ult ptr %i.gr, %i.jk
  %bound1331 = icmp ult ptr %i.hf, %scevgep
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %.lr.ph.i14.i.preheader351, label %vector.body335

vector.body335:                                   ; preds = %vector.memcheck329, %vector.body335
  %index336 = phi i64 [ %index.next341, %vector.body335 ], [ 0, %vector.memcheck329 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %index336 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %wide.load337 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !91, !alias.scope !474
  %wide.load338 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !91, !alias.scope !474
  %i.jn = xor <2 x i64> %wide.load337, splat (i64 -1)
  %i.jo = xor <2 x i64> %wide.load338, splat (i64 -1)
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index336 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %wide.load339 = load <2 x i64>, ptr %i.jp, align 8, !tbaa !91, !alias.scope !475, !noalias !474
  %wide.load340 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !91, !alias.scope !475, !noalias !474
  %i.jr = and <2 x i64> %wide.load339, %i.jn
  %i.js = and <2 x i64> %wide.load340, %i.jo
  store <2 x i64> %i.jr, ptr %i.jp, align 8, !tbaa !91, !alias.scope !475, !noalias !474
  store <2 x i64> %i.js, ptr %i.jq, align 8, !tbaa !91, !alias.scope !475, !noalias !474
  %index.next341 = add nuw i64 %index336, 4       ; 2 uses
  %i.jt = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.jt, label %middle.block342, label %vector.body335, !llvm.loop !463

middle.block342:                                  ; preds = %vector.body335
  br i1 %cmp.n343, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph.i14.i.preheader351

.lr.ph.i14.i.preheader351:                        ; preds = %vector.memcheck329, %.lr.ph.i14.i.preheader, %middle.block342
  %indvars.iv.i15.i.ph = phi i64 [ 0, %vector.memcheck329 ], [ 0, %.lr.ph.i14.i.preheader ], [ %n.vec334, %middle.block342 ] ; 5 uses
  br i1 %lcmp.mod366.not, label %.lr.ph.i14.i.prol.loopexit, label %.lr.ph.i14.i.prol

.lr.ph.i14.i.prol:                                ; preds = %.lr.ph.i14.i.preheader351
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i15.i.ph
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !91
  %i.jw = xor i64 %i.jv, -1
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i15.i.ph ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !91
  %i.jz = and i64 %i.jy, %i.jw
  store i64 %i.jz, ptr %i.jx, align 8, !tbaa !91
  %indvars.iv.next.i16.i.prol = or disjoint i64 %indvars.iv.i15.i.ph, 1
  br label %.lr.ph.i14.i.prol.loopexit

.lr.ph.i14.i.prol.loopexit:                       ; preds = %.lr.ph.i14.i.prol, %.lr.ph.i14.i.preheader351
  %indvars.iv.i15.i.unr = phi i64 [ %indvars.iv.i15.i.ph, %.lr.ph.i14.i.preheader351 ], [ %indvars.iv.next.i16.i.prol, %.lr.ph.i14.i.prol ]
  %i.ka = icmp eq i64 %indvars.iv.i15.i.ph, %i.gy
  br i1 %i.ka, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph.i14.i

.preheader.i18.i:                                 ; preds = %bb.q
  br i1 %i.gw, label %.lr.ph18.i21.i.preheader, label %_ZL7Tt_DupCPmS_ii.exit.i

.lr.ph18.i21.i.preheader:                         ; preds = %.preheader.i18.i
  br i1 %min.iters.check307, label %.lr.ph18.i21.i.preheader349, label %vector.memcheck308

vector.memcheck308:                               ; preds = %.lr.ph18.i21.i.preheader
  %i.kb = add nsw i64 %i.he, %wide.trip.count.i13.i
  %i.kc = shl nsw i64 %i.kb, 3
  %i.kd = getelementptr i8, ptr %i.gt, i64 %i.kc
  %bound0 = icmp ult ptr %i.gr, %i.kd
  %bound1 = icmp ult ptr %i.hf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph18.i21.i.preheader349, label %vector.body311

vector.body311:                                   ; preds = %vector.memcheck308, %vector.body311
  %index312 = phi i64 [ %index.next317, %vector.body311 ], [ 0, %vector.memcheck308 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %index312 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %wide.load313 = load <2 x i64>, ptr %i.ke, align 8, !tbaa !91, !alias.scope !476
  %wide.load314 = load <2 x i64>, ptr %i.kf, align 8, !tbaa !91, !alias.scope !476
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index312 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %wide.load315 = load <2 x i64>, ptr %i.kg, align 8, !tbaa !91, !alias.scope !477, !noalias !476
  %wide.load316 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !91, !alias.scope !477, !noalias !476
  %i.ki = and <2 x i64> %wide.load315, %wide.load313
  %i.kj = and <2 x i64> %wide.load316, %wide.load314
  store <2 x i64> %i.ki, ptr %i.kg, align 8, !tbaa !91, !alias.scope !477, !noalias !476
  store <2 x i64> %i.kj, ptr %i.kh, align 8, !tbaa !91, !alias.scope !477, !noalias !476
  %index.next317 = add nuw i64 %index312, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next317, %n.vec310
  br i1 %i.kk, label %middle.block318, label %vector.body311, !llvm.loop !467

middle.block318:                                  ; preds = %vector.body311
  br i1 %cmp.n319, label %_ZL7Tt_DupCPmS_ii.exit.i, label %.lr.ph18.i21.i.preheader349

.lr.ph18.i21.i.preheader349:                      ; preds = %vector.memcheck308, %.lr.ph18.i21.i.preheader, %middle.block318
  %indvars.iv21.i22.i.ph = phi i64 [ 0, %vector.memcheck308 ], [ 0, %.lr.ph18.i21.i.preheader ], [ %n.vec310, %middle.block318 ] ; 3 uses
  br i1 %lcmp.mod369.not, label %.lr.ph18.i21.i.prol.loopexit, label %.lr.ph18.i21.i.prol

.lr.ph18.i21.i.prol:                              ; preds = %.lr.ph18.i21.i.preheader349, %.lr.ph18.i21.i.prol
  %indvars.iv21.i22.i.prol = phi i64 [ %indvars.iv.next22.i23.i.prol, %.lr.ph18.i21.i.prol ], [ %indvars.iv21.i22.i.ph, %.lr.ph18.i21.i.preheader349 ] ; 3 uses
  %prol.iter370 = phi i64 [ %prol.iter370.next, %.lr.ph18.i21.i.prol ], [ 0, %.lr.ph18.i21.i.preheader349 ]
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv21.i22.i.prol
end_hunk_0
