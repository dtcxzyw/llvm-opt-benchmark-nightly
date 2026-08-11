inline.NumInlined: 143
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cash_words:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %.not37 = icmp eq i64 %i.k, 0
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @append_num_word(ptr noundef %1, i64 noundef %i.k)
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.18) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not38 = icmp eq i64 %i.i, 0
  br i1 %.not38, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @append_num_word(ptr noundef %1, i64 noundef %i.i)
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.19) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not39 = icmp eq i64 %i.g, 0
  br i1 %.not39, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @append_num_word(ptr noundef %1, i64 noundef %i.g)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.q = icmp ult i64 %.0, 100
  br i1 %i.q, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.20) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.off = add i64 %.0, -100
  %i.r = icmp ult i64 %.0.off, 100
  %i.s = select i1 %i.r, ptr @.str.21, ptr @.str.22
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull %i.s) #11
  call fastcc void @append_num_word(ptr noundef %1, i64 noundef %i.f)
  %i.t = icmp eq i64 %i.f, 1
  %i.u = select i1 %i.t, ptr @.str.23, ptr @.str.24
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull %i.u) #11
  %i.v = load ptr, ptr %1, align 8                ; 2 uses
  %i.w = load i8, ptr %i.v, align 1               ; 3 uses
  %i.x = add i8 %i.w, -97
  %or.cond.i = icmp ult i8 %i.x, 26
  %i.y = add nsw i8 %i.w, -32
  %spec.select.i = select i1 %or.cond.i, i8 %i.y, i8 %i.w
  store i8 %spec.select.i, ptr %i.v, align 1
  %i.z = load ptr, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = call ptr @cstring_to_text_with_len(ptr noundef %i.z, i32 noundef %i.ab) #11
  %i.ad = load ptr, ptr %1, align 8
  call void @pfree(ptr noundef %i.ad) #11
  %i.ae = ptrtoint ptr %i.ac to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i64 %i.ae
}

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @append_num_word(ptr noundef nonnull %0, i64 noundef range(i64 0, 1000) %1) unnamed_addr #0 {
bb.a:
  %.lhs.trunc = trunc nuw nsw i64 %1 to i16       ; 5 uses
  %i.a = urem i16 %.lhs.trunc, 100                ; 10 uses
  %i.b = udiv i16 %.lhs.trunc, 100
  %.zext = zext nneg i16 %i.a to i64              ; 2 uses
  %i.c = icmp samesign ult i64 %1, 21
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @append_num_word.small, i64 %1
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef %i.e) #11
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = udiv i16 %.lhs.trunc, 100
  %.zext39 = zext nneg i16 %i.f to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @append_num_word.small, i64 %.zext39
  %i.h = load ptr, ptr %i.g, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.54, ptr noundef %i.h) #11
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.i = icmp samesign ugt i64 %1, 99
  br i1 %i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.j = urem i16 %.lhs.trunc, 10
  %i.k = icmp eq i16 %i.j, 0
  %i.l = icmp samesign ugt i16 %i.a, 10
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = udiv i16 %.lhs.trunc, 100
  %.zext43 = zext nneg i16 %i.m to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @append_num_word.small, i64 %.zext43
  %i.o = load ptr, ptr %i.n, align 8
  %.lhs.trunc44 = trunc nuw nsw i16 %i.a to i8
  %i.p = udiv i8 %.lhs.trunc44, 10
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @append_num_word.small, i64 144), i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.55, ptr noundef %i.o, ptr noundef %i.s) #11
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.t = icmp samesign ult i16 %i.a, 20
  %.zext47 = zext nneg i16 %i.b to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @append_num_word.small, i64 %.zext47
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @append_num_word.small, i64 %.zext
  %i.x = load ptr, ptr %i.w, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, ptr noundef %i.v, ptr noundef %i.x) #11
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %.lhs.trunc50 = trunc nuw nsw i16 %i.a to i8    ; 2 uses
  %i.y = udiv i8 %.lhs.trunc50, 10
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @append_num_word.small, i64 144), i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = urem i8 %.lhs.trunc50, 10
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @append_num_word.small, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.57, ptr noundef %i.v, ptr noundef %i.ab, ptr noundef %i.af) #11
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  %.lhs.trunc54 = trunc nuw nsw i64 %1 to i8
  %i.ag = urem i8 %.lhs.trunc54, 10
  %i.ah = icmp eq i8 %i.ag, 0
  %i.ai = icmp samesign ugt i16 %i.a, 10
  %or.cond3 = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.lhs.trunc56 = trunc nuw nsw i16 %i.a to i8
  %i.aj = udiv i8 %.lhs.trunc56, 10
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @append_num_word.small, i64 144), i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef %i.am) #11
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.an = icmp samesign ult i16 %i.a, 20
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @append_num_word.small, i64 %.zext
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef %i.ap) #11
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %.lhs.trunc58 = trunc nuw nsw i16 %i.a to i8    ; 2 uses
  %i.aq = udiv i8 %.lhs.trunc58, 10
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @append_num_word.small, i64 144), i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = urem i8 %.lhs.trunc58, 10
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @append_num_word.small, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %0, ptr noundef nonnull @.str.58, ptr noundef %i.at, ptr noundef %i.ax) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.j, %bb.g, %bb.n, %bb.o, %bb.l, %bb.d, %bb.b
  ret void
}

declare ptr @cstring_to_text_with_len(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @cash_numeric(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call ptr @PGLC_localeconv() #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 81
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %or.cond = icmp ugt i8 %i.e, 10
  %narrow = select i1 %or.cond, i8 2, i8 %i.e     ; 6 uses
  %spec.store.select = sext i8 %narrow to i32     ; 2 uses
  %i.f = tail call ptr @int64_to_numeric(i64 noundef %i.b) #11
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = icmp sgt i8 %narrow, 0
  br i1 %i.h, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i32 %spec.store.select, 7
  %i.i = icmp ult i8 %narrow, 8
  br i1 %i.i, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %spec.store.select, 120
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.01920 = phi i64 [ 1, %.preheader.preheader.new ], [ %i.j, %.preheader ]
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.j = mul i64 %.01920, 100000000               ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.preheader, !llvm.loop !18

.unr-lcssa:                                       ; preds = %.preheader
  %1 = and i8 %narrow, 7
  %lcmp.mod.not = icmp eq i8 %1, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.01920.epil.init = phi i64 [ 1, %.preheader.preheader ], [ %i.j, %.unr-lcssa ]
  %2 = and i8 %narrow, 7
  %lcmp.mod23 = icmp ne i8 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.01920.epil = phi i64 [ %i.k, %.preheader.epil ], [ %.01920.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.k = mul i64 %.01920.epil, 10                 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !19

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  %.lcssa = phi i64 [ %i.j, %.unr-lcssa ], [ %i.k, %.preheader.epil ]
  %i.l = tail call ptr @int64_to_numeric(i64 noundef %.lcssa) #11
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = zext nneg i8 %narrow to i64              ; 2 uses
  %i.o = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @numeric_round, i32 noundef 0, i64 noundef %i.m, i64 noundef %i.n) #11
  %i.p = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @numeric_div, i32 noundef 0, i64 noundef %i.g, i64 noundef %i.o) #11
  %i.q = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @numeric_round, i32 noundef 0, i64 noundef %i.p, i64 noundef %i.n) #11
  br label %bb.b

bb.b:                                             ; preds = %.epilog-lcssa, %bb.a
  %.0 = phi i64 [ %i.q, %.epilog-lcssa ], [ %i.g, %bb.a ]
  ret i64 %.0
}

declare ptr @int64_to_numeric(i64 noundef) local_unnamed_addr #2

declare i64 @DirectFunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @numeric_round(ptr noundef) #2

declare i64 @numeric_div(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i64 @numeric_cash(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11
  %i.e = tail call ptr @PGLC_localeconv() #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 81
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %or.cond = icmp ugt i8 %i.g, 10
  %narrow = select i1 %or.cond, i8 2, i8 %i.g     ; 5 uses
  %spec.store.select = sext i8 %narrow to i32     ; 2 uses
  %i.h = icmp sgt i8 %narrow, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %spec.store.select, 7
  %i.i = icmp ult i8 %narrow, 8
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %spec.store.select, 120
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02531 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.j, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.j = mul i64 %.02531, 100000000               ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !21

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %1 = and i8 %narrow, 7
  %lcmp.mod.not = icmp eq i8 %1, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02531.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ]
  %2 = and i8 %narrow, 7
  %lcmp.mod36 = icmp ne i8 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02531.epil = phi i64 [ %i.k, %.lr.ph.epil ], [ %.02531.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.k = mul i64 %.02531.epil, 10                 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !22

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.025.lcssa = phi i64 [ 1, %bb.a ], [ %i.j, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil ]
  %i.l = tail call ptr @int64_to_numeric(i64 noundef %.025.lcssa) #11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call ptr @numeric_mul_safe(ptr noundef %i.d, ptr noundef %i.l, ptr noundef %i.n) #11
  %i.p = load ptr, ptr %i.m, align 8              ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, 468
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.t = load i8, ptr %i.s, align 4, !range !23, !noundef !24
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.critedge30.sink.split, label %.critedge, !prof !17

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.c
  %i.v = tail call i64 @numeric_int8_safe(ptr noundef %i.o, ptr noundef %i.p) #11 ; 3 uses
  %i.w = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %.critedge30, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 468
  br i1 %i.y, label %bb.e, label %.critedge30

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !range !23, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.critedge30.sink.split, label %.critedge30, !prof !17

.critedge30.sink.split:                           ; preds = %bb.e, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.ac, align 4
  br label %.critedge30

.critedge30:                                      ; preds = %.critedge30.sink.split, %bb.e, %.critedge, %bb.d
  %.0 = phi i64 [ %i.v, %.critedge ], [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ 0, %.critedge30.sink.split ]
  ret i64 %.0
}

declare ptr @numeric_mul_safe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @numeric_int8_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @int4_cash(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call ptr @PGLC_localeconv() #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 81
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %or.cond = icmp ugt i8 %i.e, 10
  %narrow = select i1 %or.cond, i8 2, i8 %i.e     ; 5 uses
  %spec.store.select = sext i8 %narrow to i32     ; 2 uses
  %i.f = icmp sgt i8 %narrow, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %spec.store.select, 7
  %i.g = icmp ult i8 %narrow, 8
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %spec.store.select, 120
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01516 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.h, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.h = mul i64 %.01516, 100000000               ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !25

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %1 = and i8 %narrow, 7
  %lcmp.mod.not = icmp eq i8 %1, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01516.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ]
  %2 = and i8 %narrow, 7
  %lcmp.mod19 = icmp ne i8 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01516.epil = phi i64 [ %i.i, %.lr.ph.epil ], [ %.01516.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.i = mul i64 %.01516.epil, 10                 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !26

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.015.lcssa = phi i64 [ 1, %bb.a ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %sext = shl i64 %i.b, 32
  %i.j = ashr exact i64 %sext, 32
  %i.k = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.j, i64 %.015.lcssa) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d, !prof !17

bb.b:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = tail call zeroext i1 @errsave_start(ptr noundef %i.o, ptr noundef null) #11
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25) #11 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.o, ptr noundef nonnull @.str.7, i32 noundef 1196, ptr noundef nonnull @__func__.int4_cash) #11
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.c
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.m, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @int8_cash(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call ptr @PGLC_localeconv() #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 81
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %or.cond = icmp ugt i8 %i.e, 10
  %narrow = select i1 %or.cond, i8 2, i8 %i.e     ; 5 uses
  %spec.store.select = sext i8 %narrow to i32     ; 2 uses
  %i.f = icmp sgt i8 %narrow, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %spec.store.select, 7
  %i.g = icmp ult i8 %narrow, 8
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %spec.store.select, 120
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01516 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.h, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.h = mul i64 %.01516, 100000000               ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !27

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %1 = and i8 %narrow, 7
  %lcmp.mod.not = icmp eq i8 %1, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01516.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ]
  %2 = and i8 %narrow, 7
  %lcmp.mod19 = icmp ne i8 %2, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01516.epil = phi i64 [ %i.i, %.lr.ph.epil ], [ %.01516.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.i = mul i64 %.01516.epil, 10                 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !28

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.015.lcssa = phi i64 [ 1, %bb.a ], [ %i.h, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %i.j = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.b, i64 %.015.lcssa) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.d, !prof !17

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call zeroext i1 @errsave_start(ptr noundef %i.n, ptr noundef null) #11
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @errcode(i32 noundef 50331778) #11 ; 0 uses
  %i.q = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25) #11 ; 0 uses
  tail call void @errsave_finish(ptr noundef %i.n, ptr noundef nonnull @.str.7, i32 noundef 1229, ptr noundef nonnull @__func__.int8_cash) #11
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.c
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.l, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #7

declare double @float_overflow_error_ext(ptr noundef) local_unnamed_addr #2

declare double @float_underflow_error_ext(ptr noundef) local_unnamed_addr #2

declare double @float_zero_divide_error_ext(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = !{!15}
!15 = distinct !{!15, !16, !"pq_writeint64: argument 0"}
!16 = distinct !{!16, !"pq_writeint64"}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !20}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !20}
end_hunk_0
