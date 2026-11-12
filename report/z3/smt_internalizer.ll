Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_internalizer?download=true
inline.NumInlined: 2077
inline.NumDeleted: 1019
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE6resizeIS3_EEvjRKT_:bb.a
  br i1 %i.b, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit.thread

_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit: ; preds = %bb.a
  %.not.not = icmp eq i32 %1, 0
  br i1 %.not.not, label %_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE6shrinkEj.exit, label %thread-pre-split.preheader

_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit.thread: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !554  ; 4 uses
  %.not16 = icmp ugt i32 %1, %i.d
  br i1 %.not16, label %thread-pre-split.preheader, label %_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE3endEv.exit.i

thread-pre-split.preheader:                       ; preds = %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit.thread
  %.ph = phi ptr [ %i.a, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit.thread ], [ null, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit ]
  %.0.i17.ph = phi i32 [ %i.d, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit.thread ], [ 0, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit ] ; 2 uses
  br label %thread-pre-split

_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE3endEv.exit.i: ; preds = %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit.thread
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %.not78.i = icmp eq i32 %1, %i.d
  br i1 %.not78.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE3endEv.exit.i
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIPN3smt6clauseELb0EjED2Ev.exit.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.m, %_ZN6vectorIPN3smt6clauseELb0EjED2Ev.exit.i ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = load ptr, ptr %.09.i, align 8, !tbaa !725 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN6vectorIPN3smt6clauseELb0EjED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.j)
          to label %_ZN6vectorIPN3smt6clauseELb0EjED2Ev.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #23
  unreachable

_ZN6vectorIPN3smt6clauseELb0EjED2Ev.exit.i:       ; preds = %bb.b, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not7.i = icmp eq ptr %i.m, %i.f
  br i1 %.not7.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !848

._crit_edge.loopexit.i:                           ; preds = %_ZN6vectorIPN3smt6clauseELb0EjED2Ev.exit.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !724
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE3endEv.exit.i
  %i.n = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.a, %_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE3endEv.exit.i ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4
  store i32 %1, ptr %i.o, align 4, !tbaa !554
  br label %_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE6shrinkEj.exit

thread-pre-split:                                 ; preds = %thread-pre-split.preheader, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit.thread
  %i.p = phi ptr [ %.pr.pre, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit.thread ], [ %.ph, %thread-pre-split.preheader ] ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit.thread, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit

_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit: ; preds = %thread-pre-split
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !554
  %i.t = icmp ugt i32 %1, %i.s
  br i1 %i.t, label %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit.thread, label %bb.d

_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit.thread: ; preds = %thread-pre-split, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit
  tail call void @_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !724
  br label %thread-pre-split, !llvm.loop !849

bb.d:                                             ; preds = %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE8capacityEv.exit
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 %1, ptr %i.u, align 4, !tbaa !554
  %i.v = zext i32 %1 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v
  %.not1319 = icmp eq i32 %.0.i17.ph, %1
  br i1 %.not1319, label %_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE6shrinkEj.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.x = zext i32 %.0.i17.ph to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.x
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit
  %.020 = phi ptr [ %i.ar, %_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  store ptr null, ptr %.020, align 8, !tbaa !725
  %i.z = load ptr, ptr %2, align 8, !tbaa !725    ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit, label %_ZNK6vectorIPN3smt6clauseELb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIPN3smt6clauseELb0EjE8capacityEv.exit.i.i.i: ; preds = %.lr.ph
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.ab = load <2 x i32>, ptr %i.aa, align 4, !tbaa !554
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !554
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 8
  %i.ag = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.af) ; 2 uses
  store <2 x i32> %i.ab, ptr %i.ag, align 4, !tbaa !554
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store ptr %i.ah, ptr %.020, align 8, !tbaa !725
  %i.ai = load ptr, ptr %2, align 8, !tbaa !725   ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit, label %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i.i.i

_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i.i.i: ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE8capacityEv.exit.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !554 ; 3 uses
  %i.am = icmp ugt i32 %i.al, 1
  br i1 %i.am, label %bb.e, label %bb.f, !prof !851

bb.e:                                             ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i.i.i
  %i.an = zext i32 %i.al to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.ai, i64 %i.ao, i1 false)
  br label %_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit

bb.f:                                             ; preds = %_ZNK6vectorIPN3smt6clauseELb0EjE3endEv.exit.i.i.i
  %i.ap = icmp eq i32 %i.al, 1
  br i1 %i.ap, label %bb.g, label %_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !727
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !727
  br label %_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit

_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit:      ; preds = %.lr.ph, %_ZNK6vectorIPN3smt6clauseELb0EjE8capacityEv.exit.i.i.i, %bb.e, %bb.f, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %.not13 = icmp eq ptr %i.ar, %i.w
  br i1 %.not13, label %_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE6shrinkEj.exit, label %.lr.ph, !llvm.loop !850

_ZN6vectorI10ptr_vectorIN3smt6clauseEELb1EjE6shrinkEj.exit: ; preds = %_ZN10ptr_vectorIN3smt6clauseEEC2ERKS2_.exit, %bb.d, %._crit_edge.i, %_ZNK6vectorI10ptr_vectorIN3smt6clauseEELb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIPN3smt6clauseELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !725    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIPN3smt6clauseELb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIPN3smt6clauseELb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIPN3smt6clauseELb0EjE7destroyEv.exit:   ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 8388608) i32 @_ZNK3smt7context18get_max_iscope_lvlEjPKN3sat7literalE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !682  ; 3 uses
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0911.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.e = load i32, ptr %i.d, align 4, !tbaa !728
  %i.f = lshr i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %3 = load i32, ptr %i.i, align 4
  %i.j = and i32 %3, 8388607
  %spec.select.epil = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %.0911.epil.init)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  ret i32 %.09.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.0911 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !728
  %i.m = lshr i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %4 = load i32, ptr %i.p, align 4
  %i.q = and i32 %4, 8388607
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %.0911)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !728
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %5 = load i32, ptr %i.x, align 4
  %i.y = and i32 %5, 8388607
  %spec.select.1 = tail call i32 @llvm.umax.i32(i32 %i.y, i32 %spec.select) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !9
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !561, !nonnull !562, !align !563
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  %i.d = load i32, ptr %i.c, align 8, !tbaa !645
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.thread

_ZNK3smt7context25binary_clause_opt_enabledEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !691, !nonnull !562, !align !563
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 517
  %i.h = load i8, ptr %i.g, align 1, !tbaa !729, !range !588, !noundef !562
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.thread

bb.b:                                             ; preds = %_ZNK3smt7context25binary_clause_opt_enabledEv.exit
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZNK3smt7context13relevancy_lvlEv(ptr noundef nonnull align 8 dereferenceable(10728) %0)
  %i.k = icmp ugt i32 %i.j, 1
  br i1 %i.k, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.m = load i32, ptr %i.l, align 4, !tbaa !723
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.thread

.thread:                                          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.o = load i32, ptr %i.n, align 4, !tbaa !723
  %.not7 = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.q = load i32, ptr %i.p, align 8
  %.not3 = icmp eq i32 %i.q, 0
  %or.cond = select i1 %.not7, i1 %.not3, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.thread

bb.e:                                             ; preds = %.thread, %bb.d
  %i.r = lshr i32 %1, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !682  ; 2 uses
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %4 = load i32, ptr %i.w, align 4
  %5 = and i32 %4, 8388607
  %.not4 = icmp eq i32 %5, 0
  br i1 %.not4, label %bb.f, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i32 %2, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %6 = load i32, ptr %i.aa, align 4
  %7 = and i32 %6, 8388607
  %.not5 = icmp eq i32 %7, 0
  br label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.thread

_ZNK3smt7context25binary_clause_opt_enabledEv.exit.thread: ; preds = %bb.a, %.thread, %bb.f, %bb.e, %bb.d, %bb.c, %_ZNK3smt7context25binary_clause_opt_enabledEv.exit
  %.0 = phi i1 [ false, %_ZNK3smt7context25binary_clause_opt_enabledEv.exit ], [ false, %bb.c ], [ false, %bb.a ], [ %.not5, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %.thread ]
  ret i1 %.0
}

declare noundef i32 @_ZNK3smt7context13relevancy_lvlEv(ptr noundef nonnull align 8 dereferenceable(10728)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK3smt7context24select_learned_watch_litEPKNS_6clauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !731    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !661
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.i = load ptr, ptr %i.h, align 8
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1, %bb.d ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.021 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.01620 = phi i32 [ -1, %.lr.ph ], [ %.117, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 4, !tbaa !554 ; 2 uses
  %i.k = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !558
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i32 %.sroa.0.0.copyload.i.i, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 16777215
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.v = phi i32 [ %i.u, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.w = icmp eq i32 %.021, -1
  %i.x = icmp ugt i32 %i.v, %.01620
  %or.cond = select i1 %i.w, i1 true, i1 %i.x     ; 2 uses
  %.117 = select i1 %or.cond, i32 %i.v, i32 %.01620
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %or.cond, i32 %i.y, i32 %.021   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK3smt7context16select_watch_litEPKNS_6clauseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !731    ; 2 uses
  %i.b = icmp slt i32 %2, %i.a
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !661
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h
  %.not = icmp eq i32 %.129, -1
  %.not30 = icmp eq i32 %.1, -1
  %.127.lcssa..1.lcssa = select i1 %.not30, i32 %.127, i32 %.1
  %spec.select = select i1 %.not, i32 %.127.lcssa..1.lcssa, i32 %.129
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %i.h = phi i32 [ %spec.select, %._crit_edge ], [ -1, %bb.a ]
  ret i32 %i.h

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.02439 = phi i32 [ %2, %.lr.ph ], [ %i.ax, %bb.h ] ; 5 uses
  %.02538 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.h ] ; 5 uses
  %.02637 = phi i32 [ -1, %.lr.ph ], [ %.127, %bb.h ] ; 7 uses
  %.02836 = phi i32 [ -1, %.lr.ph ], [ %.129, %bb.h ] ; 7 uses
  %i.i = zext i32 %.02439 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.j, align 4, !tbaa !554 ; 3 uses
  %i.k = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !558
  switch i8 %i.m, label %bb.h [
    i8 -1, label %bb.c
    i8 0, label %bb.e
    i8 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %.02637, -1
  br i1 %i.n, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i32 %.sroa.0.0.copyload.i.i, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 16777215
  %i.v = zext i32 %.02637 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %.sroa.0.0.copyload.i.i31 = load i32, ptr %i.w, align 4, !tbaa !554
  %i.x = lshr i32 %.sroa.0.0.copyload.i.i31, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 16777215
  %i.ae = icmp samesign ugt i32 %i.u, %i.ad
  br i1 %i.ae, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.c, %bb.d
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.af = icmp eq i32 %.02836, -1
  br i1 %i.af, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = lshr i32 %.sroa.0.0.copyload.i.i, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 16777215
  %i.an = zext i32 %.02836 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.an
  %.sroa.0.0.copyload.i.i32 = load i32, ptr %i.ao, align 4, !tbaa !554
  %i.ap = lshr i32 %.sroa.0.0.copyload.i.i32, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i32
  %i.av = and i32 %i.au, 16777215
  %i.aw = icmp samesign ult i32 %i.am, %i.av
  br i1 %i.aw, label %.critedge2, label %bb.h

.critedge2:                                       ; preds = %bb.f, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge2, %bb.d, %.critedge, %bb.e, %bb.b
  %.129 = phi i32 [ %.02836, %bb.b ], [ %.02836, %.critedge ], [ %.02836, %bb.d ], [ %.02836, %bb.e ], [ %.02439, %.critedge2 ], [ %.02836, %bb.g ] ; 3 uses
  %.127 = phi i32 [ %.02637, %bb.b ], [ %.02439, %.critedge ], [ %.02637, %bb.d ], [ %.02637, %bb.e ], [ %.02637, %.critedge2 ], [ %.02637, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %.02538, %bb.b ], [ %.02538, %.critedge ], [ %.02538, %bb.d ], [ %.02439, %bb.e ], [ %.02538, %.critedge2 ], [ %.02538, %bb.g ] ; 3 uses
  %i.ax = add i32 %.02439, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt7context17add_watch_literalEPNS_6clauseEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10728) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %.sroa.01.0.copyload = load i32, ptr %i.c, align 4, !tbaa !554
  %i.d = xor i32 %.sroa.01.0.copyload, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8952
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !688
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !690  ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !554  ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 8
  %i.o = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !554
end_hunk_0
begin_hunk_1_@_ZN3smt7context9mk_clauseEjPN3sat7literalEPNS_13justificationENS_11clause_kindEPNS_13clause_del_ehE:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8624 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !649 ; 4 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !554 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !554
  %i.eg = icmp eq i32 %i.ed, %i.ef
  br i1 %i.eg, label %bb.aj, label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  invoke void @_ZN6vectorIPN3smt13justificationELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dz)
          to label %.noexc113 unwind label %bb.cq

.noexc113:                                        ; preds = %bb.aj
  %.pre.i112 = load ptr, ptr %i.dz, align 8, !tbaa !649 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i112, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !554
  br label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit

_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit: ; preds = %bb.ai, %.noexc113
  %i.eh = phi i32 [ %.pre2.i, %.noexc113 ], [ %i.ed, %bb.ai ] ; 2 uses
  %i.ei = phi ptr [ %.pre.i112, %.noexc113 ], [ %i.ea, %bb.ai ] ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4
  %i.ek = zext i32 %i.eh to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ek
  store ptr %.0, ptr %i.el, align 8, !tbaa !651
  %i.em = add i32 %i.eh, 1
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !554
  br label %bb.al

bb.ak:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  br label %bb.am

bb.al:                                            ; preds = %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.en = ptrtoint ptr %.0 to i64
  %i.eo = or i64 %i.en, 3
  %i.ep = inttoptr i64 %i.eo to ptr
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %storemerge = phi ptr [ %i.ep, %bb.al ], [ inttoptr (i64 2 to ptr), %bb.ak ]
  store ptr %storemerge, ptr %9, align 8
  invoke void @_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 -2)
          to label %_ZN3smt7context12set_conflictERKNS_15b_justificationE.exit unwind label %bb.an

_ZN3smt7context12set_conflictERKNS_15b_justificationE.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_Z7deallocIN3smt13justificationEEvPT_.exit

bb.an:                                            ; preds = %bb.am
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.dx

bb.ao:                                            ; preds = %_ZN3smt7context10add_scoresEjPKN3sat7literalE.exit
  %.sroa.032.0.copyload = load i32, ptr %2, align 4, !tbaa !554 ; 4 uses
  %.not88 = icmp eq ptr %.0, null                 ; 2 uses
  br i1 %.not88, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.es = load i8, ptr %i.er, align 8
  %i.et = and i8 %i.es, 2
  %.not303 = icmp eq i8 %i.et, 0
  br i1 %.not303, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8624 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !649 ; 4 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !554 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ev, i64 -8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !554
  %i.fb = icmp eq i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.as, label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit119

bb.as:                                            ; preds = %bb.ar, %bb.aq
  invoke void @_ZN6vectorIPN3smt13justificationELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %.noexc118 unwind label %bb.cq

.noexc118:                                        ; preds = %bb.as
  %.pre.i115 = load ptr, ptr %i.eu, align 8, !tbaa !649 ; 2 uses
  %.phi.trans.insert.i116 = getelementptr inbounds i8, ptr %.pre.i115, i64 -4
  %.pre2.i117 = load i32, ptr %.phi.trans.insert.i116, align 4, !tbaa !554
  br label %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit119

_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit119: ; preds = %bb.ar, %.noexc118
  %i.fc = phi i32 [ %.pre2.i117, %.noexc118 ], [ %i.ey, %bb.ar ] ; 2 uses
  %i.fd = phi ptr [ %.pre.i115, %.noexc118 ], [ %i.ev, %bb.ar ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 -4
  %i.ff = zext i32 %i.fc to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff
  store ptr %.0, ptr %i.fg, align 8, !tbaa !651
  %i.fh = add i32 %i.fc, 1
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !554
  br label %bb.at

bb.at:                                            ; preds = %_ZN6vectorIPN3smt13justificationELb0EjE9push_backERKS2_.exit119, %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.fi = ptrtoint ptr %.0 to i64
  %i.fj = or i64 %i.fi, 3
  %i.fk = inttoptr i64 %i.fj to ptr
  %storemerge.i = select i1 %.not88, ptr inttoptr (i64 2 to ptr), ptr %i.fk ; 2 uses
  store ptr %storemerge.i, ptr %6, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !661
  %i.fn = zext i32 %.sroa.032.0.copyload to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !558
  switch i8 %i.fp, label %bb.aw [
    i8 -1, label %bb.au
    i8 0, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.fq = xor i32 %.sroa.032.0.copyload, 1
  invoke void @_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 %i.fq)
          to label %bb.aw unwind label %bb.cq

bb.av:                                            ; preds = %bb.at
  invoke void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %.sroa.032.0.copyload, ptr nonnull %storemerge.i, i1 noundef zeroext false)
          to label %bb.aw unwind label %bb.cq

bb.aw:                                            ; preds = %bb.at, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_ZN3smt7context7inc_refEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %.sroa.032.0.copyload)
          to label %_Z7deallocIN3smt13justificationEEvPT_.exit unwind label %bb.cq

bb.ax:                                            ; preds = %_ZN3smt7context10add_scoresEjPKN3sat7literalE.exit
  %.sroa.029.0.copyload = load i32, ptr %2, align 4, !tbaa !554
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.028.0.copyload = load i32, ptr %i.fr, align 4, !tbaa !554
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !561, !nonnull !562, !align !563
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 712
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !645
  %.not.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i, label %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.i, label %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread

_ZNK3smt7context25binary_clause_opt_enabledEv.exit.i: ; preds = %bb.ax
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !691, !nonnull !562, !align !563
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 517
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !729, !range !588, !noundef !562
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ay, label %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread

bb.ay:                                            ; preds = %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.i
  br i1 %i.ds, label %bb.az, label %.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.gb = invoke noundef i32 @_ZNK3smt7context13relevancy_lvlEv(ptr noundef nonnull align 8 dereferenceable(10728) %0)
          to label %.noexc125 unwind label %bb.cq

.noexc125:                                        ; preds = %bb.az
  %i.gc = icmp ugt i32 %i.gb, 1
  br i1 %i.gc, label %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread, label %bb.ba

bb.ba:                                            ; preds = %.noexc125
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !723
  %.not.i124 = icmp eq i32 %i.ge, 0
  br i1 %.not.i124, label %bb.bb, label %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread

.thread.i:                                        ; preds = %bb.ay
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !723
  %.not7.i = icmp eq i32 %i.gg, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.gi = load i32, ptr %i.gh, align 8
  %.not3.i = icmp eq i32 %i.gi, 0
  %or.cond.i123 = select i1 %.not7.i, i1 %.not3.i, i1 false
  br i1 %or.cond.i123, label %bb.bb, label %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread300

_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread300: ; preds = %.thread.i
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !854
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !854
  br label %_ZNK3smt7context18get_max_iscope_lvlEjPKN3sat7literalE.exit

bb.bb:                                            ; preds = %.thread.i, %bb.ba
  %i.gm = lshr i32 %.sroa.029.0.copyload, 1
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !682 ; 2 uses
  %i.gp = zext nneg i32 %i.gm to i64
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  %13 = load i32, ptr %i.gr, align 4
  %14 = and i32 %13, 8388607
  %.not4.i = icmp eq i32 %14, 0
  br i1 %.not4.i, label %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit, label %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread

_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit: ; preds = %bb.bb
  %i.gs = lshr i32 %.sroa.028.0.copyload, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %15 = load i32, ptr %i.gv, align 4
  %16 = and i32 %15, 8388607
  %.not5.i = icmp eq i32 %16, 0
  br i1 %.not5.i, label %bb.bc, label %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread

bb.bc:                                            ; preds = %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit
  %i.gw = load i32, ptr %2, align 4, !tbaa !554   ; 6 uses
  %i.gx = load i32, ptr %i.fr, align 4, !tbaa !554 ; 7 uses
  invoke void @_ZN3smt7context7inc_refEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %i.gw)
          to label %bb.bd unwind label %bb.cq

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN3smt7context7inc_refEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %i.gx)
          to label %bb.be unwind label %bb.cq

bb.be:                                            ; preds = %bb.bd
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8952 ; 2 uses
  %i.gz = xor i32 %i.gw, 1
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !688 ; 2 uses
  %i.hb = zext i32 %i.gz to i64                   ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hb ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !690 ; 4 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -8
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !554 ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %i.hd, i64 -12
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !554
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add nuw nsw i64 %i.hk, 4
  %.not.i126 = icmp samesign ult i64 %i.hl, %i.hh
  br i1 %.not.i126, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  invoke void @_ZN3smt10watch_list6expandEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %.noexc130 unwind label %bb.cq

.noexc130:                                        ; preds = %bb.bg
  %.pre.i127 = load ptr, ptr %i.hc, align 8, !tbaa !690 ; 2 uses
  %.phi.trans.insert.i128 = getelementptr inbounds i8, ptr %.pre.i127, i64 -8
  %.pre2.i129 = load i32, ptr %.phi.trans.insert.i128, align 4, !tbaa !554
  %.pre = load ptr, ptr %i.gy, align 8, !tbaa !688
  br label %bb.bh

bb.bh:                                            ; preds = %.noexc130, %bb.bf
  %i.hm = phi ptr [ %.pre, %.noexc130 ], [ %i.ha, %bb.bf ]
  %i.hn = phi i32 [ %.pre2.i129, %.noexc130 ], [ %i.hg, %bb.bf ]
  %i.ho = phi ptr [ %.pre.i127, %.noexc130 ], [ %i.hd, %bb.bf ] ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -8
  %i.hq = add i32 %i.hn, -4                       ; 2 uses
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !554
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hr
  store i32 %i.gx, ptr %i.hs, align 4, !tbaa !554
  %i.ht = xor i32 %i.gx, 1                        ; 2 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %i.hu ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !690 ; 4 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 -8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !554 ; 2 uses
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hw, i64 -12
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !554
  %i.id = zext i32 %i.ic to i64
  %i.ie = add nuw nsw i64 %i.id, 4
  %.not.i131 = icmp samesign ult i64 %i.ie, %i.ia
  br i1 %.not.i131, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  invoke void @_ZN3smt10watch_list6expandEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
          to label %.noexc135 unwind label %bb.cq

.noexc135:                                        ; preds = %bb.bj
  %.pre.i132 = load ptr, ptr %i.hv, align 8, !tbaa !690 ; 2 uses
  %.phi.trans.insert.i133 = getelementptr inbounds i8, ptr %.pre.i132, i64 -8
  %.pre2.i134 = load i32, ptr %.phi.trans.insert.i133, align 4, !tbaa !554
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %.noexc135
  %i.if = phi i32 [ %.pre2.i134, %.noexc135 ], [ %i.hz, %bb.bi ]
  %i.ig = phi ptr [ %.pre.i132, %.noexc135 ], [ %i.hw, %bb.bi ] ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -8
  %i.ii = add i32 %i.if, -4                       ; 2 uses
  store i32 %i.ii, ptr %i.ih, align 4, !tbaa !554
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ij
  store i32 %i.gw, ptr %i.ik, align 4, !tbaa !554
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !661 ; 3 uses
  %i.in = zext i32 %i.gw to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !558 ; 2 uses
  %i.iq = icmp eq i8 %i.ip, -1
  br i1 %i.iq, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ir = shl nuw nsw i64 %i.hb, 3
  %i.is = or disjoint i64 %i.ir, 1
  %i.it = inttoptr i64 %i.is to ptr               ; 2 uses
  store ptr %i.it, ptr %10, align 8, !tbaa !660
  %i.iu = zext i32 %i.gx to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !558
  switch i8 %i.iw, label %_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit [
    i8 -1, label %bb.bm
    i8 0, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN3smt7context12set_conflictERKNS_15b_justificationEN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 %i.ht)
          to label %_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  invoke void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %i.gx, ptr nonnull %i.it, i1 noundef zeroext false)
          to label %_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit unwind label %bb.bo

_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit: ; preds = %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit142

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.dx

bb.bp:                                            ; preds = %bb.bk
  %i.iy = zext i32 %i.gx to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !558
  %i.jb = icmp eq i8 %i.ja, -1
  %cond343 = icmp eq i8 %i.ip, 0
  %or.cond = and i1 %i.jb, %cond343
  br i1 %or.cond, label %bb.bq, label %_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit142

bb.bq:                                            ; preds = %bb.bp
  %i.jc = shl nuw nsw i64 %i.hu, 3
  %i.jd = or disjoint i64 %i.jc, 1
  %i.je = inttoptr i64 %i.jd to ptr
  invoke void @_ZN3smt7context11assign_coreEN3sat7literalENS_15b_justificationEb(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 %i.gw, ptr nonnull %i.je, i1 noundef zeroext false)
          to label %_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit142 unwind label %bb.cq

_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit142: ; preds = %bb.bq, %bb.bp, %_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit
  invoke void @_ZN3smt12clause_proof3addEN3sat7literalES2_NS_11clause_kindEPNS_13justificationEPK7sbufferIS2_Lj16EE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 %i.gw, i32 %i.gx, i32 noundef %4, ptr noundef %.0, ptr noundef nonnull %7)
          to label %bb.br unwind label %bb.cq

bb.br:                                            ; preds = %_ZN3smt7context6assignEN3sat7literalERKNS_15b_justificationEb.exit142
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !855
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.jf, align 8, !tbaa !855
  br label %_Z7deallocIN3smt13justificationEEvPT_.exit

_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread: ; preds = %bb.ba, %.noexc125
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !854
  %i.jk = add i32 %i.jj, 1
  store i32 %i.jk, ptr %i.ji, align 8, !tbaa !854
  br label %.lr.ph.i144

_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread: ; preds = %bb.bb, %bb.ax, %_ZNK3smt7context25binary_clause_opt_enabledEv.exit.i, %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit, %_ZN3smt7context10add_scoresEjPKN3sat7literalE.exit
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !854
  %i.jn = add i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jl, align 8, !tbaa !854
  br i1 %i.ds, label %.lr.ph.i144, label %_ZNK3smt7context18get_max_iscope_lvlEjPKN3sat7literalE.exit

.lr.ph.i144:                                      ; preds = %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread, %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !682 ; 3 uses
  %wide.trip.count.i145 = zext i32 %i.dq to i64   ; 2 uses
  %xtraiter356 = and i64 %wide.trip.count.i145, 1
  %i.jq = icmp eq i32 %i.dq, 1
  br i1 %i.jq, label %.epil.preheader355, label %.lr.ph.i144.new

.lr.ph.i144.new:                                  ; preds = %.lr.ph.i144
  %unroll_iter360 = and i64 %wide.trip.count.i145, 4294967294
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.lr.ph.i144.new
  %indvars.iv.i146 = phi i64 [ 0, %.lr.ph.i144.new ], [ %indvars.iv.next.i147.1, %bb.bs ] ; 3 uses
  %.0911.i = phi i32 [ 0, %.lr.ph.i144.new ], [ %spec.select.i.1, %bb.bs ]
  %niter361 = phi i64 [ 0, %.lr.ph.i144.new ], [ %niter361.next.1, %bb.bs ]
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i146
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !728
  %i.jt = lshr i32 %i.js, 1
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  %17 = load i32, ptr %i.jw, align 4
  %i.jx = and i32 %17, 8388607
  %spec.select.i = call i32 @llvm.umax.i32(i32 %i.jx, i32 %.0911.i)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i146
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !728
  %i.kb = lshr i32 %i.ka, 1
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %18 = load i32, ptr %i.ke, align 4
  %i.kf = and i32 %18, 8388607
  %spec.select.i.1 = call i32 @llvm.umax.i32(i32 %i.kf, i32 %spec.select.i) ; 3 uses
  %indvars.iv.next.i147.1 = add nuw nsw i64 %indvars.iv.i146, 2 ; 2 uses
  %niter361.next.1 = add i64 %niter361, 2         ; 2 uses
  %niter361.ncmp.1 = icmp eq i64 %niter361.next.1, %unroll_iter360
  br i1 %niter361.ncmp.1, label %.unr-lcssa, label %bb.bs, !llvm.loop !9

.unr-lcssa:                                       ; preds = %bb.bs
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %bb.bt, label %.epil.preheader355

.epil.preheader355:                               ; preds = %.unr-lcssa, %.lr.ph.i144
  %indvars.iv.i146.epil.init = phi i64 [ 0, %.lr.ph.i144 ], [ %indvars.iv.next.i147.1, %.unr-lcssa ]
  %.0911.i.epil.init = phi i32 [ 0, %.lr.ph.i144 ], [ %spec.select.i.1, %.unr-lcssa ]
  %lcmp.mod359 = trunc i32 %i.dq to i1
  call void @llvm.assume(i1 %lcmp.mod359)
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i146.epil.init
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !728
  %i.ki = lshr i32 %i.kh, 1
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  %19 = load i32, ptr %i.kl, align 4
  %i.km = and i32 %19, 8388607
  %spec.select.i.epil = call i32 @llvm.umax.i32(i32 %i.km, i32 %.0911.i.epil.init)
  br label %bb.bt

bb.bt:                                            ; preds = %.unr-lcssa, %.epil.preheader355
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader355 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 9612
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !723
  %i.kp = icmp ugt i32 %spec.select.i.lcssa, %i.ko
  br label %_ZNK3smt7context18get_max_iscope_lvlEjPKN3sat7literalE.exit

_ZNK3smt7context18get_max_iscope_lvlEjPKN3sat7literalE.exit: ; preds = %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread300, %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread, %bb.bt
  %i.kq = phi i32 [ %spec.select.i.lcssa, %bb.bt ], [ 0, %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread ], [ 0, %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread300 ] ; 3 uses
  %i.kr = phi i1 [ %i.kp, %bb.bt ], [ false, %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread ], [ false, %_ZNK3smt7context21use_binary_clause_optEN3sat7literalES2_b.exit.thread.thread300 ] ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !561, !nonnull !562, !align !563
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8936
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !652
  %i.kw = invoke noundef ptr @_ZN3smt6clause2mkER11ast_managerjPN3sat7literalENS_11clause_kindEPNS_13justificationEPNS_13clause_del_ehEbPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.kt, i32 noundef %i.dq, ptr noundef %2, i32 noundef %4, ptr noundef %.0, ptr noundef %5, i1 noundef zeroext %i.kr, ptr noundef %i.kv)
          to label %bb.bu unwind label %bb.cq     ; 22 uses

bb.bu:                                            ; preds = %_ZNK3smt7context18get_max_iscope_lvlEjPKN3sat7literalE.exit
  invoke void @_ZN3smt12clause_proof3addERNS_6clauseEPK7sbufferIN3sat7literalELj16EE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %i.kw, ptr noundef nonnull %7)
          to label %bb.bv unwind label %bb.cq

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.ds, label %bb.bw, label %bb.dh

bb.bw:                                            ; preds = %bb.bv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 16 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.kz = load i32, ptr %i.ky, align 4
  %i.la = and i32 %i.kz, 16777215
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.lb
  store i32 1, ptr %i.lc, align 4, !tbaa !554
  %i.ld = icmp eq i32 %4, 2
  %i.le = load i32, ptr %i.kw, align 4, !tbaa !731 ; 6 uses
  br i1 %i.ld, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %.lr.ph.i151, label %_ZNK3smt7context24select_learned_watch_litEPKNS_6clauseE.exit

.lr.ph.i151:                                      ; preds = %bb.bx
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !661
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 9608
  %i.lj = load i32, ptr %i.li, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.ll = load ptr, ptr %i.lk, align 8
  %wide.trip.count.i152 = zext nneg i32 %i.le to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %.lr.ph.i151
  %indvars.iv.i153 = phi i64 [ 1, %.lr.ph.i151 ], [ %indvars.iv.next.i155, %bb.ca ] ; 3 uses
  %.021.i = phi i32 [ -1, %.lr.ph.i151 ], [ %.1.i, %bb.ca ] ; 2 uses
  %.01620.i = phi i32 [ -1, %.lr.ph.i151 ], [ %.117.i, %bb.ca ] ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv.i153
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.lm, align 4, !tbaa !554 ; 2 uses
  %i.ln = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !558
  %i.lq = icmp eq i8 %i.lp, -1
  br i1 %i.lq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lr = lshr i32 %.sroa.0.0.copyload.i.i.i, 1
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load i64, ptr %i.lu, align 8
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = and i32 %i.lw, 16777215
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ly = phi i32 [ %i.lx, %bb.bz ], [ %i.lj, %bb.by ] ; 2 uses
  %i.lz = icmp eq i32 %.021.i, -1
  %i.ma = icmp ugt i32 %i.ly, %.01620.i
  %or.cond.i154 = select i1 %i.lz, i1 true, i1 %i.ma ; 2 uses
  %.117.i = select i1 %or.cond.i154, i32 %i.ly, i32 %.01620.i
  %i.mb = trunc nuw nsw i64 %indvars.iv.i153 to i32
  %.1.i = select i1 %or.cond.i154, i32 %i.mb, i32 %.021.i ; 2 uses
  %indvars.iv.next.i155 = add nuw nsw i64 %indvars.iv.i153, 1 ; 2 uses
  %exitcond.not.i156 = icmp eq i64 %indvars.iv.next.i155, %wide.trip.count.i152
  br i1 %exitcond.not.i156, label %_ZNK3smt7context24select_learned_watch_litEPKNS_6clauseE.exit, label %bb.by, !llvm.loop !10

bb.cb:                                            ; preds = %bb.bw
  %i.mc = icmp sgt i32 %i.le, 0
  br i1 %i.mc, label %.lr.ph.i158, label %_ZNK3smt7context16select_watch_litEPKNS_6clauseEi.exit.thread

_ZNK3smt7context16select_watch_litEPKNS_6clauseEi.exit.thread: ; preds = %bb.cb
  %i.md = getelementptr inbounds nuw i8, ptr %i.kw, i64 17179869188 ; 2 uses
  %.sroa.0.0.copyload.i.i166341 = load i32, ptr %i.kx, align 4, !tbaa !554
  %i.me = load i32, ptr %i.md, align 4, !tbaa !554
  store i32 %i.me, ptr %i.kx, align 4, !tbaa !554
  store i32 %.sroa.0.0.copyload.i.i166341, ptr %i.md, align 4, !tbaa !554
  br label %_ZNK3smt7context24select_learned_watch_litEPKNS_6clauseE.exit

.lr.ph.i158:                                      ; preds = %bb.cb
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8944
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !661
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8968
  %i.mi = load ptr, ptr %i.mh, align 8            ; 4 uses
  %i.mj = zext nneg i32 %i.le to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ci, %.lr.ph.i158
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ci ], [ 0, %.lr.ph.i158 ] ; 5 uses
  %.02538.i = phi i32 [ %.1.i160, %bb.ci ], [ -1, %.lr.ph.i158 ] ; 5 uses
  %.02637.i = phi i32 [ %.127.i, %bb.ci ], [ -1, %.lr.ph.i158 ] ; 7 uses
  %.02836.i = phi i32 [ %.129.i, %bb.ci ], [ -1, %.lr.ph.i158 ] ; 7 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i.i159 = load i32, ptr %i.mk, align 4, !tbaa !554 ; 3 uses
  %i.ml = zext i32 %.sroa.0.0.copyload.i.i.i159 to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !558
  switch i8 %i.mn, label %bb.ci [
    i8 -1, label %bb.cd
    i8 0, label %bb.cf
    i8 1, label %bb.cg
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.mo = icmp eq i32 %.02637.i, -1
  br i1 %i.mo, label %.critedge.i165, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mp = lshr i32 %.sroa.0.0.copyload.i.i.i159, 1
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i64, ptr %i.ms, align 8
  %i.mu = trunc i64 %i.mt to i32
  %i.mv = and i32 %i.mu, 16777215
  %i.mw = zext i32 %.02637.i to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.mw
  %.sroa.0.0.copyload.i.i31.i = load i32, ptr %i.mx, align 4, !tbaa !554
  %i.my = lshr i32 %.sroa.0.0.copyload.i.i31.i, 1
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load i64, ptr %i.nb, align 8
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = and i32 %i.nd, 16777215
  %i.nf = icmp samesign ugt i32 %i.mv, %i.ne
  br i1 %i.nf, label %.critedge.i165, label %bb.ci

.critedge.i165:                                   ; preds = %bb.ce, %bb.cd
  %i.ng = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cc
  %i.nh = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cc
  %i.ni = icmp eq i32 %.02836.i, -1
  br i1 %i.ni, label %.critedge2.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nj = lshr i32 %.sroa.0.0.copyload.i.i.i159, 1
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %i.nk
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load i64, ptr %i.nm, align 8
  %i.no = trunc i64 %i.nn to i32
  %i.np = and i32 %i.no, 16777215
  %i.nq = zext i32 %.02836.i to i64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.nq
  %.sroa.0.0.copyload.i.i32.i = load i32, ptr %i.nr, align 4, !tbaa !554
  %i.ns = lshr i32 %.sroa.0.0.copyload.i.i32.i, 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = trunc i64 %i.nw to i32
  %i.ny = and i32 %i.nx, 16777215
  %i.nz = icmp samesign ult i32 %i.np, %i.ny
  br i1 %i.nz, label %.critedge2.i, label %bb.ci

.critedge2.i:                                     ; preds = %bb.ch, %bb.cg
  %i.oa = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge2.i, %bb.ch, %bb.cf, %.critedge.i165, %bb.ce, %bb.cc
  %.129.i = phi i32 [ %.02836.i, %bb.cc ], [ %.02836.i, %.critedge.i165 ], [ %.02836.i, %bb.ce ], [ %.02836.i, %bb.cf ], [ %i.oa, %.critedge2.i ], [ %.02836.i, %bb.ch ] ; 3 uses
  %.127.i = phi i32 [ %.02637.i, %bb.cc ], [ %i.ng, %.critedge.i165 ], [ %.02637.i, %bb.ce ], [ %.02637.i, %bb.cf ], [ %.02637.i, %.critedge2.i ], [ %.02637.i, %bb.ch ] ; 2 uses
  %.1.i160 = phi i32 [ %.02538.i, %bb.cc ], [ %.02538.i, %.critedge.i165 ], [ %.02538.i, %bb.ce ], [ %i.nh, %bb.cf ], [ %.02538.i, %.critedge2.i ], [ %.02538.i, %bb.ch ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i161 = icmp eq i64 %indvars.iv.next, %i.mj
  br i1 %exitcond.not.i161, label %_ZNK3smt7context16select_watch_litEPKNS_6clauseEi.exit, label %bb.cc, !llvm.loop !11

_ZNK3smt7context16select_watch_litEPKNS_6clauseEi.exit: ; preds = %bb.ci
  %.not.i163 = icmp eq i32 %.129.i, -1
  %.not30.i = icmp eq i32 %.1.i160, -1
  %.127.lcssa..1.lcssa.i = select i1 %.not30.i, i32 %.127.i, i32 %.1.i160
  %spec.select.i164 = select i1 %.not.i163, i32 %.127.lcssa..1.lcssa.i, i32 %.129.i
  %i.ob = zext i32 %spec.select.i164 to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ob ; 2 uses
end_hunk_1
