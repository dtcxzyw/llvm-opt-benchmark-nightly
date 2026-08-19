inline.NumInlined: 628
inline.NumDeleted: 267
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3sat6solver22activate_frozen_clauseERNS_6clauseE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i32, ptr %i.aj, align 4, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 2, ptr %2, align 8, !tbaa !208
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 -1, ptr %i.ak, align 4, !tbaa !212
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !213
  call void @_ZN3sat6solver13mk_bin_clauseENS_7literalES1_NS_6statusE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %.sroa.02.0.copyload, i32 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread42

bb.p:                                             ; preds = %._crit_edge
  tail call void @_ZN3sat6solver6shrinkERNS_6clauseEjj(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %1, i32 noundef %i.c, i32 noundef %.232.ph)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @_ZN3sat6solver13attach_clauseERNS_6clauseERb(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread42

.thread42:                                        ; preds = %bb.b, %bb.h, %_ZN3sat6solver11assign_unitENS_7literalE.exit, %bb.o, %bb.p
  %.4 = phi i1 [ false, %bb.o ], [ true, %bb.p ], [ false, %bb.h ], [ false, %_ZN3sat6solver11assign_unitENS_7literalE.exit ], [ false, %bb.b ]
  ret i1 %.4
}

declare void @_ZN3sat4drat3addEv(ptr noundef nonnull align 8 dereferenceable(664)) local_unnamed_addr #3

declare void @_ZN3sat6solver6shrinkERNS_6clauseEjj(ptr noundef nonnull align 8 dereferenceable(4264), ptr noundef nonnull align 4 dereferenceable(20), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN3sat6solver15gc_reinit_stackEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(4264) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK3sat6solver12is_assertingEjRKNS_14clause_wrapperE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4264) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !214
  %.not.i = icmp eq i32 %i.b, -2
  br i1 %.not.i, label %_ZNK3sat14clause_wrapper10is_learnedEv.exit, label %_ZNK3sat14clause_wrapper10is_learnedEv.exit.thread

_ZNK3sat14clause_wrapper10is_learnedEv.exit:      ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !181    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZNK3sat14clause_wrapper10is_learnedEv.exit.thread, label %_ZNK3sat14clause_wrapper3endEv.exit

_ZNK3sat14clause_wrapper3endEv.exit:              ; preds = %_ZNK3sat14clause_wrapper10is_learnedEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !169  ; 2 uses
  %.not2728 = icmp eq i32 %i.h, 0
  br i1 %.not2728, label %_ZNK3sat14clause_wrapper10is_learnedEv.exit.thread, label %_ZN3sat14clause_wrapper8iteratordeEv.exit.lr.ph

_ZN3sat14clause_wrapper8iteratordeEv.exit.lr.ph:  ; preds = %_ZNK3sat14clause_wrapper3endEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext i32 %i.h to i64
  br label %_ZN3sat14clause_wrapper8iteratordeEv.exit

_ZN3sat14clause_wrapper8iteratordeEv.exit:        ; preds = %_ZN3sat14clause_wrapper8iteratordeEv.exit.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %_ZN3sat14clause_wrapper8iteratordeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01330 = phi i1 [ false, %_ZN3sat14clause_wrapper8iteratordeEv.exit.lr.ph ], [ %.114.ph, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.o, align 4, !tbaa !167 ; 2 uses
  %i.p = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !190
  switch i32 %i.r, label %bb.c [
    i32 1, label %bb.b
    i32 0, label %_ZNK3sat14clause_wrapper10is_learnedEv.exit.thread
  ]

bb.b:                                             ; preds = %_ZN3sat14clause_wrapper8iteratordeEv.exit
  %i.s = lshr i32 %.sroa.0.0.copyload.i.i, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.t
  %i.v = load i32, ptr %i.u, align 8, !tbaa !207
  %i.w = icmp ugt i32 %i.v, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.01330
  br i1 %or.cond, label %_ZNK3sat14clause_wrapper10is_learnedEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN3sat14clause_wrapper8iteratordeEv.exit, %bb.b
  %.114.ph = phi i1 [ %.01330, %_ZN3sat14clause_wrapper8iteratordeEv.exit ], [ true, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not27 = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not27, label %_ZNK3sat14clause_wrapper10is_learnedEv.exit.thread, label %_ZN3sat14clause_wrapper8iteratordeEv.exit

_ZNK3sat14clause_wrapper10is_learnedEv.exit.thread: ; preds = %_ZN3sat14clause_wrapper8iteratordeEv.exit, %bb.b, %bb.c, %_ZNK3sat14clause_wrapper3endEv.exit, %bb.a, %_ZNK3sat14clause_wrapper10is_learnedEv.exit
  %.4 = phi i1 [ true, %bb.a ], [ true, %_ZNK3sat14clause_wrapper10is_learnedEv.exit ], [ true, %_ZNK3sat14clause_wrapper3endEv.exit ], [ false, %bb.b ], [ false, %_ZN3sat14clause_wrapper8iteratordeEv.exit ], [ true, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver7gc_varsEj(ptr noundef nonnull align 8 dereferenceable(4264) initializes((3848, 3852)) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3840 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK3sat6solver8num_varsEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !167
  %i.g = shl i32 %i.f, 1
  br label %_ZNK3sat6solver8num_varsEv.exit.i

_ZNK3sat6solver8num_varsEv.exit.i:                ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3852 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !216  ; 3 uses
  %.not.i.i.not = icmp eq i32 %i.i, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 6 uses
  br i1 %.not.i.i.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit.i
  store i32 0, ptr %i.j, align 8, !tbaa !217
  store i32 1, ptr %i.h, align 4, !tbaa !216
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !218  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN6vectorIjLb0EjE5resetEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4
  store i32 0, ptr %i.l, align 4, !tbaa !167
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.i.i

bb.e:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit.i
  %i.m = add nuw i32 %i.i, 1
  store i32 %i.i, ptr %i.j, align 8, !tbaa !217
  store i32 %i.m, ptr %i.h, align 4, !tbaa !216
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.i.i

_ZN6vectorIjLb0EjE5resetEv.exit.i.i:              ; preds = %bb.e, %bb.d, %bb.c
  %.not5.i.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not5.i.i, label %_ZN3sat6solver12init_visitedEj.exit, label %_ZN6vectorIjLb0EjE5resetEv.exit.split.preheader.i.i

_ZN6vectorIjLb0EjE5resetEv.exit.split.preheader.i.i: ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.split.i.i

_ZN6vectorIjLb0EjE5resetEv.exit.split.i.i:        ; preds = %_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i, %_ZN6vectorIjLb0EjE5resetEv.exit.split.preheader.i.i
  %i.n = phi ptr [ %.pre.i.i, %_ZN6vectorIjLb0EjE5resetEv.exit.split.preheader.i.i ], [ %i.v, %_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i ] ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.split.i.i
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !167  ; 3 uses
  %i.r = icmp ult i32 %i.q, %.0.i.i.i
  br i1 %i.r, label %bb.f, label %_ZN3sat6solver12init_visitedEj.exit

bb.f:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !167
  %i.u = icmp eq i32 %i.q, %i.t
  br i1 %i.u, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, label %_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.f, %_ZN6vectorIjLb0EjE5resetEv.exit.split.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !167
  br label %_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i

_ZN6vectorIjLb0EjE9push_backEOj.exit.i.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.f
  %i.v = phi ptr [ %.pre.i.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ], [ %i.n, %bb.f ] ; 3 uses
  %i.w = phi i32 [ %.pre2.i.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.y
  store i32 0, ptr %i.z, align 4, !tbaa !167
  %i.aa = add i32 %i.w, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !167
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.split.i.i, !llvm.loop !219

_ZN3sat6solver12init_visitedEj.exit:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i, %_ZN6vectorIjLb0EjE5resetEv.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4216 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !175 ; 5 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3sat6solver12init_visitedEj.exit
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 0, ptr %i.ad, align 4, !tbaa !167
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %_ZN3sat6solver12init_visitedEj.exit, %bb.g
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !179 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.critedge126, label %_ZNK3sat6solver8num_varsEv.exit.lr.ph

_ZNK3sat6solver8num_varsEv.exit.lr.ph:            ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 2 uses
  br label %_ZNK3sat6solver8num_varsEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %_ZNK3sat6solver8num_varsEv.exit.lr.ph, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68"
  %i.ah = phi ptr [ %i.ac, %_ZNK3sat6solver8num_varsEv.exit.lr.ph ], [ %i.eo, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68" ] ; 4 uses
  %i.ai = phi ptr [ %i.ac, %_ZNK3sat6solver8num_varsEv.exit.lr.ph ], [ %i.ep, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68" ] ; 3 uses
  %2 = phi ptr [ %i.ae, %_ZNK3sat6solver8num_varsEv.exit.lr.ph ], [ %i.eq, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68" ]
  %.035128 = phi i32 [ %1, %_ZNK3sat6solver8num_varsEv.exit.lr.ph ], [ %3, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68" ] ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !167
  %i.al = icmp ult i32 %.035128, %i.ak
  br i1 %i.al, label %bb.h, label %.critedge126

.critedge126:                                     ; preds = %_ZNK3sat6solver8num_varsEv.exit, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68", %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.am = phi ptr [ %i.ac, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ], [ %i.ah, %_ZNK3sat6solver8num_varsEv.exit ], [ %i.eo, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68" ] ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit70, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %.critedge126
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !167 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %.not132 = icmp eq i32 %i.ap, 0
  br i1 %.not132, label %._crit_edge135.thread174, label %.lr.ph134

.lr.ph134:                                        ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3264
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !220
  br label %bb.w

bb.h:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %i.av = shl i32 %.035128, 1                     ; 2 uses
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !220
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !221 ; 5 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit", label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i:     ; preds = %bb.h
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !167 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.be
  %.not6.i = icmp eq i32 %i.bc, 0
  br i1 %.not6.i, label %._crit_edge.thread16.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i
  %.pre8.i = load ptr, ptr %i.ay, align 8, !tbaa !221 ; 2 uses
  %.not.i.i48 = icmp eq ptr %.pre8.i, null
  br i1 %.not.i.i48, label %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit", label %._crit_edge.thread16.i

._crit_edge.thread16.i:                           ; preds = %._crit_edge.i, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i
  %i.bg = phi ptr [ %i.co, %._crit_edge.i ], [ %i.ah, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i ]
  %i.bh = phi ptr [ %i.cp, %._crit_edge.i ], [ %i.ai, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i ]
  %i.bi = phi ptr [ %.pre8.i, %._crit_edge.i ], [ %i.az, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4
  store i32 0, ptr %i.bj, align 4, !tbaa !167
  br label %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit"

.lr.ph.i:                                         ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i, %.critedge.i
  %i.bk = phi ptr [ %i.co, %.critedge.i ], [ %i.ah, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i ] ; 4 uses
  %i.bl = phi ptr [ %i.cp, %.critedge.i ], [ %i.ai, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i ] ; 7 uses
  %.07.i = phi ptr [ %i.cq, %.critedge.i ], [ %i.az, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i ] ; 3 uses
  %.sroa.7.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..0.sroa_idx.i, align 8, !tbaa !167
  %i.bm = and i32 %.sroa.7.0.copyload.i, 3
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph.i
  %.sroa.02.0.copyload.i = load i64, ptr %.07.i, align 8, !tbaa !224 ; 2 uses
  %i.bo = trunc i64 %.sroa.02.0.copyload.i to i32 ; 2 uses
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = icmp ult i32 %i.bp, %1
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  %i.bs = and i64 %.sroa.02.0.copyload.i, 4294967295 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !167
  %i.bv = load i32, ptr %i.j, align 8, !tbaa !217
  %i.bw = icmp ugt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp eq ptr %i.bl, null
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !167 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !167
  %i.cc = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.m, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %.pre.i.i49 = load ptr, ptr %i.ab, align 8, !tbaa !175 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !167
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i: ; preds = %bb.m, %bb.l
  %i.cd = phi ptr [ %.pre.i.i49, %bb.m ], [ %i.bk, %bb.l ]
  %i.ce = phi ptr [ %.pre.i.i49, %bb.m ], [ %i.bl, %bb.l ] ; 3 uses
  %i.cf = phi ptr [ %.pre.i, %bb.m ], [ %i.br, %bb.l ]
  %i.cg = phi i32 [ %.pre2.i.i, %bb.m ], [ %i.bz, %bb.l ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ci
  store i32 %i.bo, ptr %i.cj, align 4, !tbaa !167
  %i.ck = add i32 %i.cg, 1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !167
  %i.cl = load i32, ptr %i.j, align 8, !tbaa !217
  %i.cm = add i32 %i.cl, 1
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.bs
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !167
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i, %bb.j, %bb.i, %.lr.ph.i
  %i.co = phi ptr [ %i.cd, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ], [ %i.bk, %bb.j ], [ %i.bk, %bb.i ], [ %i.bk, %.lr.ph.i ] ; 3 uses
  %i.cp = phi ptr [ %i.ce, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ], [ %i.bl, %bb.j ], [ %i.bl, %bb.i ], [ %i.bl, %.lr.ph.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.07.i, i64 16 ; 2 uses
  %.not.i47 = icmp eq ptr %i.cq, %i.bf
  br i1 %.not.i47, label %._crit_edge.i, label %.lr.ph.i

"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit": ; preds = %bb.h, %._crit_edge.i, %._crit_edge.thread16.i
  %i.cr = phi ptr [ %i.ah, %bb.h ], [ %i.co, %._crit_edge.i ], [ %i.bg, %._crit_edge.thread16.i ] ; 3 uses
  %i.cs = phi ptr [ %i.ai, %bb.h ], [ %i.cp, %._crit_edge.i ], [ %i.bh, %._crit_edge.thread16.i ] ; 3 uses
  %i.ct = or disjoint i32 %i.av, 1
  %i.cu = load ptr, ptr %i.ag, align 8, !tbaa !220
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !221 ; 5 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68", label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50:   ; preds = %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit"
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !167 ; 2 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dc
  %.not6.i51 = icmp eq i32 %i.da, 0
  br i1 %.not6.i51, label %._crit_edge.thread16.i61, label %.lr.ph.i52

._crit_edge.i58:                                  ; preds = %.critedge.i56
  %.pre8.i59 = load ptr, ptr %i.cw, align 8, !tbaa !221 ; 2 uses
  %.not.i.i60 = icmp eq ptr %.pre8.i59, null
  br i1 %.not.i.i60, label %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68", label %._crit_edge.thread16.i61

._crit_edge.thread16.i61:                         ; preds = %._crit_edge.i58, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50
  %i.de = phi ptr [ %i.el, %._crit_edge.i58 ], [ %i.cr, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50 ]
  %i.df = phi ptr [ %i.em, %._crit_edge.i58 ], [ %i.cs, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50 ]
  %i.dg = phi ptr [ %.pre8.i59, %._crit_edge.i58 ], [ %i.cx, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50 ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4
  store i32 0, ptr %i.dh, align 4, !tbaa !167
  br label %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68"

.lr.ph.i52:                                       ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50, %.critedge.i56
  %i.di = phi ptr [ %i.el, %.critedge.i56 ], [ %i.cr, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50 ] ; 7 uses
  %i.dj = phi ptr [ %i.em, %.critedge.i56 ], [ %i.cs, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50 ] ; 3 uses
  %.07.i53 = phi ptr [ %i.en, %.critedge.i56 ], [ %i.cx, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit.i50 ] ; 3 uses
  %.sroa.7.0..0.sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %.07.i53, i64 8
  %.sroa.7.0.copyload.i55 = load i32, ptr %.sroa.7.0..0.sroa_idx.i54, align 8, !tbaa !167
  %i.dk = and i32 %.sroa.7.0.copyload.i55, 3
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.n, label %.critedge.i56

bb.n:                                             ; preds = %.lr.ph.i52
  %.sroa.02.0.copyload.i62 = load i64, ptr %.07.i53, align 8, !tbaa !224 ; 2 uses
  %i.dm = trunc i64 %.sroa.02.0.copyload.i62 to i32 ; 2 uses
  %i.dn = lshr i32 %i.dm, 1
  %i.do = icmp ult i32 %i.dn, %1
  br i1 %i.do, label %bb.o, label %.critedge.i56

bb.o:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  %i.dq = and i64 %.sroa.02.0.copyload.i62, 4294967295 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !167
  %i.dt = load i32, ptr %i.j, align 8, !tbaa !217
  %i.du = icmp ugt i32 %i.ds, %i.dt
  br i1 %i.du, label %.critedge.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = icmp eq ptr %i.di, null
  br i1 %i.dv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !167 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.di, i64 -8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !167
  %i.ea = icmp eq i32 %i.dx, %i.dz
  br i1 %i.ea, label %bb.r, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i63

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  %.pre.i.i64 = load ptr, ptr %i.ab, align 8, !tbaa !175 ; 2 uses
  %.phi.trans.insert.i.i65 = getelementptr inbounds i8, ptr %.pre.i.i64, i64 -4
  %.pre2.i.i66 = load i32, ptr %.phi.trans.insert.i.i65, align 4, !tbaa !167
  %.pre.i67 = load ptr, ptr %i.a, align 8, !tbaa !218
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i63

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i63: ; preds = %bb.r, %bb.q
  %i.eb = phi ptr [ %.pre.i.i64, %bb.r ], [ %i.di, %bb.q ] ; 4 uses
  %i.ec = phi ptr [ %.pre.i67, %bb.r ], [ %i.dp, %bb.q ]
  %i.ed = phi i32 [ %.pre2.i.i66, %bb.r ], [ %i.dx, %bb.q ] ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 -4
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ef
  store i32 %i.dm, ptr %i.eg, align 4, !tbaa !167
  %i.eh = add i32 %i.ed, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !167
  %i.ei = load i32, ptr %i.j, align 8, !tbaa !217
  %i.ej = add i32 %i.ei, 1
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.dq
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !167
  br label %.critedge.i56

.critedge.i56:                                    ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i63, %bb.o, %bb.n, %.lr.ph.i52
  %i.el = phi ptr [ %i.eb, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i63 ], [ %i.di, %bb.o ], [ %i.di, %bb.n ], [ %i.di, %.lr.ph.i52 ] ; 3 uses
  %i.em = phi ptr [ %i.eb, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i63 ], [ %i.dj, %bb.o ], [ %i.dj, %bb.n ], [ %i.dj, %.lr.ph.i52 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.07.i53, i64 16 ; 2 uses
  %.not.i57 = icmp eq ptr %i.en, %i.dd
  br i1 %.not.i57, label %._crit_edge.i58, label %.lr.ph.i52

"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit68": ; preds = %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit", %._crit_edge.i58, %._crit_edge.thread16.i61
  %i.eo = phi ptr [ %i.cr, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit" ], [ %i.el, %._crit_edge.i58 ], [ %i.de, %._crit_edge.thread16.i61 ] ; 2 uses
  %i.ep = phi ptr [ %i.cs, %"_ZZN3sat6solver7gc_varsEjENK3$_0clENS_7literalE.exit" ], [ %i.em, %._crit_edge.i58 ], [ %i.df, %._crit_edge.thread16.i61 ]
  %3 = add i32 %.035128, 1
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !179 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %.critedge126, label %_ZNK3sat6solver8num_varsEv.exit, !llvm.loop !225

._crit_edge135.thread174:                         ; preds = %_ZN6vectorIN3sat7watchedELb1EjE6shrinkEj.exit, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.es = getelementptr inbounds i8, ptr %i.am, i64 -4
  store i32 0, ptr %i.es, align 4, !tbaa !167
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit70

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit70:   ; preds = %.critedge126, %._crit_edge135.thread174
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !166 ; 5 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %"_ZZN3sat6solver7gc_varsEjENK3$_1clER10ptr_vectorINS_6clauseEE.exit", label %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i

_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i:     ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit70
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !167 ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ez
  %.not4.i = icmp eq i32 %i.ex, 0
  br i1 %.not4.i, label %._crit_edge8.thread16.i, label %.lr.ph7.i.preheader

.lr.ph7.i.preheader:                              ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph7.i

._crit_edge8.i:                                   ; preds = %bb.t
  %.pre.i75 = load ptr, ptr %i.et, align 8, !tbaa !166 ; 2 uses
  %.not.i.i76 = icmp eq ptr %.pre.i75, null
  br i1 %.not.i.i76, label %"_ZZN3sat6solver7gc_varsEjENK3$_1clER10ptr_vectorINS_6clauseEE.exit", label %._crit_edge8.thread16.i

._crit_edge8.thread16.i:                          ; preds = %._crit_edge8.i, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i
  %.025.lcssa19.i = phi i32 [ %.1.i, %._crit_edge8.i ], [ 0, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i ]
  %i.fb = phi ptr [ %.pre.i75, %._crit_edge8.i ], [ %i.eu, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i ]
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -4
  store i32 %.025.lcssa19.i, ptr %i.fc, align 4, !tbaa !167
  br label %"_ZZN3sat6solver7gc_varsEjENK3$_1clER10ptr_vectorINS_6clauseEE.exit"

.lr.ph7.i:                                        ; preds = %.lr.ph7.i.preheader, %bb.t
  %.0246.i = phi ptr [ %i.gi, %bb.t ], [ %i.eu, %.lr.ph7.i.preheader ] ; 2 uses
  %.0255.i = phi i32 [ %.1.i, %bb.t ], [ 0, %.lr.ph7.i.preheader ] ; 3 uses
  %i.fd = load ptr, ptr %.0246.i, align 8, !tbaa !168 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 20 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !169 ; 2 uses
  %i.fh = zext i32 %i.fg to i64
  %.idx.i = shl nuw nsw i64 %i.fh, 2              ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.idx.i
  %.not261.i = icmp eq i32 %i.fg, 0
  br i1 %.not261.i, label %.critedge.i73, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %.lr.ph7.i
  %i.fj = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.fk = lshr exact i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fj, 28
  br i1 %min.iters.check, label %.lr.ph.i71.preheader222, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i71.preheader
  %n.vec = and i64 %i.fl, 9223372036854775800     ; 3 uses
  %i.fm = shl i64 %n.vec, 2
  %i.fn = getelementptr i8, ptr %i.fe, i64 %i.fm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.fu, %vector.body ]
  %vec.phi197 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.fv, %vector.body ]
  %i.fo = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fe, i64 %i.fo ; 2 uses
  %i.fp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !167
  %wide.load198 = load <4 x i32>, ptr %i.fp, align 4, !tbaa !167
  %i.fq = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.fr = lshr <4 x i32> %wide.load198, splat (i32 1)
  %i.fs = icmp uge <4 x i32> %i.fq, %broadcast.splat
  %i.ft = icmp uge <4 x i32> %i.fr, %broadcast.splat
  %i.fu = or <4 x i1> %vec.phi, %i.fs             ; 2 uses
  %i.fv = or <4 x i1> %vec.phi197, %i.ft          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.fv, %i.fu
  %i.fx = bitcast <4 x i1> %bin.rdx to i4
  %i.fy = icmp ne i4 %i.fx, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %i.fl, %n.vec
  br i1 %cmp.n, label %._crit_edge.i72, label %.lr.ph.i71.preheader222

.lr.ph.i71.preheader222:                          ; preds = %.lr.ph.i71.preheader, %middle.block
  %.03.i.ph = phi ptr [ %i.fe, %.lr.ph.i71.preheader ], [ %i.fn, %middle.block ]
  %.0232.i.ph = phi i1 [ false, %.lr.ph.i71.preheader ], [ %i.fy, %middle.block ]
  br label %.lr.ph.i71

._crit_edge.i72:                                  ; preds = %.lr.ph.i71, %middle.block
  %.lcssa192 = phi i1 [ %i.fy, %middle.block ], [ %i.gc, %.lr.ph.i71 ]
  br i1 %.lcssa192, label %bb.s, label %.critedge.i73

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader222, %.lr.ph.i71
  %.03.i = phi ptr [ %i.gd, %.lr.ph.i71 ], [ %.03.i.ph, %.lr.ph.i71.preheader222 ] ; 2 uses
  %.0232.i = phi i1 [ %i.gc, %.lr.ph.i71 ], [ %.0232.i.ph, %.lr.ph.i71.preheader222 ]
  %i.fz = load i32, ptr %.03.i, align 4, !tbaa !167
  %i.ga = lshr i32 %i.fz, 1
  %i.gb = icmp uge i32 %i.ga, %1
  %i.gc = or i1 %.0232.i, %i.gb                   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.03.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %i.gd, %i.fi
  br i1 %.not26.i, label %._crit_edge.i72, label %.lr.ph.i71, !llvm.loop !229

bb.s:                                             ; preds = %._crit_edge.i72
  tail call void @_ZN3sat6solver13detach_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.fd)
  tail call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.fd)
  br label %bb.t

.critedge.i73:                                    ; preds = %._crit_edge.i72, %.lr.ph7.i
  %i.ge = add i32 %.0255.i, 1
  %i.gf = load ptr, ptr %i.et, align 8, !tbaa !166
  %i.gg = zext i32 %.0255.i to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gg
  store ptr %i.fd, ptr %i.gh, align 8, !tbaa !168
  br label %bb.t

bb.t:                                             ; preds = %.critedge.i73, %bb.s
  %.1.i = phi i32 [ %.0255.i, %bb.s ], [ %i.ge, %.critedge.i73 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0246.i, i64 8 ; 2 uses
  %.not.i74 = icmp eq ptr %i.gi, %i.fa
  br i1 %.not.i74, label %._crit_edge8.i, label %.lr.ph7.i

"_ZZN3sat6solver7gc_varsEjENK3$_1clER10ptr_vectorINS_6clauseEE.exit": ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit70, %._crit_edge8.i, %._crit_edge8.thread16.i
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !166 ; 5 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %"_ZZN3sat6solver7gc_varsEjENK3$_1clER10ptr_vectorINS_6clauseEE.exit97", label %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i77

_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i77:   ; preds = %"_ZZN3sat6solver7gc_varsEjENK3$_1clER10ptr_vectorINS_6clauseEE.exit"
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 -4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !167 ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gp
  %.not4.i78 = icmp eq i32 %i.gn, 0
  br i1 %.not4.i78, label %._crit_edge8.thread16.i95, label %.lr.ph7.i79.preheader

.lr.ph7.i79.preheader:                            ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i77
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph7.i79

._crit_edge8.i92:                                 ; preds = %bb.v
  %.pre.i93 = load ptr, ptr %i.gj, align 8, !tbaa !166 ; 2 uses
  %.not.i.i94 = icmp eq ptr %.pre.i93, null
  br i1 %.not.i.i94, label %"_ZZN3sat6solver7gc_varsEjENK3$_1clER10ptr_vectorINS_6clauseEE.exit97", label %._crit_edge8.thread16.i95

._crit_edge8.thread16.i95:                        ; preds = %._crit_edge8.i92, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i77
  %.025.lcssa19.i96 = phi i32 [ %.1.i90, %._crit_edge8.i92 ], [ 0, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i77 ]
  %i.gr = phi ptr [ %.pre.i93, %._crit_edge8.i92 ], [ %i.gk, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit.i77 ]
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -4
  store i32 %.025.lcssa19.i96, ptr %i.gs, align 4, !tbaa !167
  br label %"_ZZN3sat6solver7gc_varsEjENK3$_1clER10ptr_vectorINS_6clauseEE.exit97"

.lr.ph7.i79:                                      ; preds = %.lr.ph7.i79.preheader, %bb.v
  %.0246.i80 = phi ptr [ %i.hy, %bb.v ], [ %i.gk, %.lr.ph7.i79.preheader ] ; 2 uses
  %.0255.i81 = phi i32 [ %.1.i90, %bb.v ], [ 0, %.lr.ph7.i79.preheader ] ; 3 uses
  %i.gt = load ptr, ptr %.0246.i80, align 8, !tbaa !168 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 20 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !169 ; 2 uses
  %i.gx = zext i32 %i.gw to i64
  %.idx.i82 = shl nuw nsw i64 %i.gx, 2            ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.idx.i82
  %.not261.i83 = icmp eq i32 %i.gw, 0
  br i1 %.not261.i83, label %.critedge.i89, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %.lr.ph7.i79
  %i.gz = add nsw i64 %.idx.i82, -4               ; 2 uses
  %i.ha = lshr exact i64 %i.gz, 2
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %min.iters.check200 = icmp ult i64 %i.gz, 28
  br i1 %min.iters.check200, label %.lr.ph.i84.preheader218, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph.i84.preheader
  %n.vec202 = and i64 %i.hb, 9223372036854775800  ; 3 uses
  %i.hc = shl i64 %n.vec202, 2
  %i.hd = getelementptr i8, ptr %i.gu, i64 %i.hc
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph201
  %index206 = phi i64 [ 0, %vector.ph201 ], [ %index.next212, %vector.body205 ] ; 2 uses
  %vec.phi207 = phi <4 x i1> [ zeroinitializer, %vector.ph201 ], [ %i.hk, %vector.body205 ]
  %vec.phi208 = phi <4 x i1> [ zeroinitializer, %vector.ph201 ], [ %i.hl, %vector.body205 ]
  %i.he = shl i64 %index206, 2
  %next.gep209 = getelementptr i8, ptr %i.gu, i64 %i.he ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep209, i64 16
  %wide.load210 = load <4 x i32>, ptr %next.gep209, align 4, !tbaa !167
  %wide.load211 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !167
  %i.hg = lshr <4 x i32> %wide.load210, splat (i32 1)
end_hunk_0
