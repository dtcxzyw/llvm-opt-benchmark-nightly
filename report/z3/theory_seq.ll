Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_seq?download=true
inline.NumInlined: 5630
inline.NumDeleted: 2057
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3smt10theory_seq6mk_varEPNS_5enodeE:bb.a

_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.thread.i: ; preds = %bb.e, %_ZNK3smt6theory18is_attached_to_varEPKNS_5enodeE.exit.thread
  %i.bf = phi ptr [ %i.az, %bb.e ], [ %i.ax, %_ZNK3smt6theory18is_attached_to_varEPKNS_5enodeE.exit.thread ] ; 2 uses
  %.0.i3.i = phi i32 [ %i.bb, %bb.e ], [ 0, %_ZNK3smt6theory18is_attached_to_varEPKNS_5enodeE.exit.thread ]
  tail call void @_ZN6vectorIPN3smt5enodeELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i = load ptr, ptr %i.bf, align 8, !tbaa !791 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !52
  br label %_ZN3smt6theory6mk_varEPNS_5enodeE.exit

_ZN3smt6theory6mk_varEPNS_5enodeE.exit:           ; preds = %bb.e, %_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.thread.i
  %.0.i2.i = phi i32 [ %.0.i3.i, %_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.thread.i ], [ %i.bb, %bb.e ] ; 2 uses
  %i.bg = phi i32 [ %.pre2.i.i, %_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.thread.i ], [ %i.bb, %bb.e ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i.i, %_ZNK6vectorIPN3smt5enodeELb0EjE4sizeEv.exit.thread.i ], [ %.pre, %bb.e ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  store ptr %1, ptr %i.bk, align 8, !tbaa !823
  %i.bl = add i32 %i.bg, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !52
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bn = tail call noundef i32 @_ZN10union_findIN3smt10theory_seqEE6mk_varEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bm) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !795, !nonnull !62, !align !63
  tail call void @_ZN3smt7context13attach_th_varEPNS_5enodeEPNS_6theoryEi(ptr noundef nonnull align 8 dereferenceable(10728) %i.bp, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef %.0.i2.i)
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !795, !nonnull !62, !align !63
  %i.br = load ptr, ptr %1, align 8, !tbaa !839
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 7544 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !841 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !98
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef %i.br), !inline_history !22
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !841 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bx), !inline_history !22
  br label %_ZNK8seq_util3str8is_nth_uEPK4expr.exit.thread

_ZNK8seq_util3str8is_nth_uEPK4expr.exit.thread:   ; preds = %bb.b, %_ZNK8seq_util5is_reEP4expr.exit.thread, %_ZNK8seq_util3str8is_nth_uEPK4expr.exit, %_ZN3smt6theory6mk_varEPNS_5enodeE.exit, %bb.d
  %.0 = phi i32 [ %i.aw, %bb.d ], [ %.0.i2.i, %_ZN3smt6theory6mk_varEPNS_5enodeE.exit ], [ -1, %_ZNK8seq_util3str8is_nth_uEPK4expr.exit ], [ -1, %_ZNK8seq_util5is_reEP4expr.exit.thread ], [ -1, %bb.b ]
  ret i32 %.0
}

declare noundef i32 @_ZNK3smt5enode10get_th_varEi(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN10union_findIN3smt10theory_seqEE6mk_varEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52   ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %bb.a, %bb.b
  %.0.i13 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !96 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !52
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.b, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  %.0.i12 = phi i32 [ %.0.i13, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread ], [ %i.e, %bb.b ] ; 3 uses
  %i.i = phi i32 [ %.pre2.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread ], [ %i.b, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  store i32 %.0.i12, ptr %i.m, align 4, !tbaa !52
  %i.n = add i32 %i.i, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !96   ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !52   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !52
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZN6vectorIjLb0EjE9push_backEOj.exit

bb.d:                                             ; preds = %bb.c, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  %.pre.i1 = load ptr, ptr %i.o, align 8, !tbaa !96 ; 2 uses
  %.phi.trans.insert.i2 = getelementptr inbounds i8, ptr %.pre.i1, i64 -4
  %.pre2.i3 = load i32, ptr %.phi.trans.insert.i2, align 4, !tbaa !52
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit

_ZN6vectorIjLb0EjE9push_backEOj.exit:             ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %.pre2.i3, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %.pre.i1, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z
  store i32 1, ptr %i.aa, align 4, !tbaa !52
  %i.ab = add i32 %i.w, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !52 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN6vectorIjLb0EjE9push_backERKj.exit7

bb.f:                                             ; preds = %bb.e, %_ZN6vectorIjLb0EjE9push_backEOj.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %.pre.i4 = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %.phi.trans.insert.i5 = getelementptr inbounds i8, ptr %.pre.i4, i64 -4
  %.pre2.i6 = load i32, ptr %.phi.trans.insert.i5, align 4, !tbaa !52
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit7

_ZN6vectorIjLb0EjE9push_backERKj.exit7:           ; preds = %bb.e, %bb.f
  %i.ak = phi i32 [ %.pre2.i6, %bb.f ], [ %i.ag, %bb.e ] ; 2 uses
  %i.al = phi ptr [ %.pre.i4, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.an
  store i32 %.0.i12, ptr %i.ao, align 4, !tbaa !52
  %i.ap = add i32 %i.ak, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !917, !nonnull !62, !align !63 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !780 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit7
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !52 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !52
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.h, label %_ZN11trail_stack8push_ptrEP5trail.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIjLb0EjE9push_backERKj.exit7
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ar)
  %.pre.i.i = load ptr, ptr %i.ar, align 8, !tbaa !780 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !52
  br label %_ZN11trail_stack8push_ptrEP5trail.exit

_ZN11trail_stack8push_ptrEP5trail.exit:           ; preds = %bb.g, %bb.h
  %i.az = phi i32 [ %.pre2.i.i, %bb.h ], [ %i.av, %bb.g ] ; 2 uses
  %i.ba = phi ptr [ %.pre.i.i, %bb.h ], [ %i.as, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = zext i32 %i.az to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !793
  %i.bf = add i32 %i.az, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !52
  ret i32 %.0.i12
}

declare void @_ZN3smt7context13attach_th_varEPNS_5enodeEPNS_6theoryEi(ptr noundef nonnull align 8 dereferenceable(10728), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN3smt10theory_seq13can_propagateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5688) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.e = load i32, ptr %i.d, align 8, !tbaa !737
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %i.h = icmp ult i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread: ; preds = %bb.a, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !782  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.thread, label %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit

_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52
  %1 = icmp ne i32 %i.m, 0
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5561
  %3 = load i8, ptr %2, align 1, !range !770
  %4 = trunc nuw i8 %3 to i1
  %or.cond = select i1 %1, i1 true, i1 %4
  br i1 %or.cond, label %bb.b, label %5

_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.thread: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5561
  %i.o = load i8, ptr %i.n, align 1, !tbaa !772, !range !770, !noundef !62
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %5

5:                                                ; preds = %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.thread
  br label %bb.b

bb.b:                                             ; preds = %5, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.thread, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %6 = phi i1 [ true, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit.thread ], [ true, %_ZNK17scoped_ptr_vectorIN3smt10theory_seq5applyEE5emptyEv.exit ], [ true, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ false, %5 ]
  ret i1 %6
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3smt10theory_seq6expandEP4exprRPN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyER7obj_refIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52   ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread:      ; preds = %bb.a, %bb.b
  %.0.i13 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !52
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %bb.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread
  %.0.i12 = phi i32 [ %.0.i13, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ], [ %i.e, %bb.b ]
  %i.i = phi i32 [ %.pre2.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %.pre.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ], [ %i.b, %bb.b ] ; 4 uses
  %.0.i12.fr = freeze i32 %.0.i12                 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  store ptr %1, ptr %i.m, align 8, !tbaa !58
  %i.n = add i32 %i.i, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !52
  %.not = icmp eq i32 %.0.i12.fr, 0
  br i1 %.not, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread.us, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread.us: ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit, %bb.e
  %i.o = phi ptr [ %.pre, %bb.e ], [ %i.j, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52   ; 2 uses
  %.not15.us = icmp eq i32 %i.q, 0
  br i1 %.not15.us, label %.critedge, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.us

_ZN6vectorIP4exprLb0EjE4backEv.exit.us:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread.us
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58
  %i.v = tail call noundef zeroext i1 @_ZN3smt10theory_seq7expand1EP4exprRPN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyER7obj_refIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.us
  %i.w = load ptr, ptr %3, align 8, !tbaa !787
  %.not21.us = icmp eq ptr %i.w, null
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !56  ; 3 uses
  br i1 %.not21.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %.pre, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !52
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = icmp eq ptr %.pre, null
  br i1 %i.aa, label %.critedge, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread.us

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split: ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split.backedge
  %i.ab = phi ptr [ %.pre.pre, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split.backedge ], [ %i.j, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ] ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN6vectorIP4exprLb0EjE4backEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread:    ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !52 ; 2 uses
  %.not15 = icmp eq i32 %i.ae, %.0.i12.fr
  br i1 %.not15, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread
  %i.af = add i32 %i.ae, -1
  %i.ag = zext i32 %i.af to i64
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit

_ZN6vectorIP4exprLb0EjE4backEv.exit:              ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split, %bb.f
  %.0.i.i = phi i64 [ %i.ag, %bb.f ], [ 4294967295, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.0.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.aj = tail call noundef zeroext i1 @_ZN3smt10theory_seq7expand1EP4exprRPN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyER7obj_refIS1_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.aj, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !787
  %.not21 = icmp eq ptr %i.ak, null
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !56 ; 2 uses
  br i1 %.not21, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split.backedge, label %bb.h

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split.backedge: ; preds = %bb.g, %bb.h
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %.pre.pre, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !52
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !52
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.split.backedge

.critedge:                                        ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread, %bb.e, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread.us, %_ZN6vectorIP4exprLb0EjE4backEv.exit.us
  %.us-phi = phi i1 [ true, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread.us ], [ true, %bb.e ], [ false, %_ZN6vectorIP4exprLb0EjE4backEv.exit.us ], [ true, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit10.thread ], [ false, %_ZN6vectorIP4exprLb0EjE4backEv.exit ]
  ret i1 %.us-phi
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3smt10theory_seq8canonizeEP4exprR10ref_vectorIS1_11ast_managerERPN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyERb(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.obj_ref.69, align 8          ; 9 uses
  %6 = alloca %class.obj_ref.69, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !617, !nonnull !62, !align !63 ; 2 uses
  store ptr %1, ptr %5, align 8, !tbaa !787
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !618
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !65
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %bb.a, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 65535
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %bb.h
  %i.l = phi ptr [ %i.ad, %bb.h ], [ %1, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit ] ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !813
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !816  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %_ZNK8seq_util3str9is_concatEPK4expr.exit.i

_ZNK8seq_util3str9is_concatEPK4expr.exit.i:       ; preds = %.lr.ph
  %i.q = load i32, ptr %i.g, align 8, !tbaa !758
  %i.r = load i32, ptr %i.p, align 8, !tbaa !820
  %i.s = icmp eq i32 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, 2
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %_ZNK8seq_util3str9is_concatEPK4expr.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !821
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 6 uses
  %i.ae = invoke noundef zeroext i1 @_ZN3smt10theory_seq8canonizeEP4exprR10ref_vectorIS1_11ast_managerERPN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyERb(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  br i1 %i.ae, label %bb.e, label %.loopexit29.thread

.loopexit:                                        ; preds = %bb.c, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.f, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !65
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !65
end_hunk_0
