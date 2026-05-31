inline.NumInlined: 109
inline.NumDeleted: 5
begin_hunk_0_@readData:bb.a
  %.not.i = icmp eq i32 %.0.i, 10
  br i1 %.not.i, label %searchKUorWA.exit, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %bb.b, %.critedge.i
  br label %.critedge.i, !llvm.loop !63

searchKUorWA.exit:                                ; preds = %bb.b
  %i.b = tail call i32 @ungetc(i32 noundef %i.a, ptr noundef %0) ; 0 uses
  %i.c = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %searchKUorWA.exit, %myfgets.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %myfgets.exit ], [ 0, %searchKUorWA.exit ] ; 4 uses
  %i.e = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store i8 61, ptr %i.e, align 1, !tbaa !19
  %i.f = tail call i32 @getc(ptr noundef %0)      ; 0 uses
  %i.g = tail call i32 @feof(ptr noundef %0) #32
  %.not.i19 = icmp eq i32 %i.g, 0
  br i1 %.not.i19, label %.lr.ph.i.preheader, label %myfgets.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.021.i = phi i32 [ %i.l, %bb.c ], [ 0, %.lr.ph.i.preheader ]
  %.01220.i = phi ptr [ %i.k, %bb.c ], [ %i.h, %.lr.ph.i.preheader ] ; 3 uses
  %i.i = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not15.i = icmp eq i32 %i.i, 10
  br i1 %.not15.i, label %.critedge.i20, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.j, ptr %.01220.i, align 1, !tbaa !19
  %i.l = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, 254
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !49

.critedge.i20:                                    ; preds = %.lr.ph.i
  store i8 0, ptr %.01220.i, align 1, !tbaa !19
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.c
  store i8 0, ptr %i.k, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.critedge18.i
  %i.m = tail call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.m, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.d, !llvm.loop !50

myfgets.exit:                                     ; preds = %bb.d, %.lr.ph, %.critedge.i20
  %i.n = tail call ptr @load1SeqWithoutName_realloc(ptr noundef %0) ; 3 uses
  store ptr %i.n, ptr @readData.tmpseq, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.q = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %i.n) #32 ; 0 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #33
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.t, ptr %i.u, align 4, !tbaa !4
  tail call void @free(ptr noundef %i.n) #32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %myfgets.exit, %searchKUorWA.exit
  %.lcssa25 = phi i32 [ %i.c, %searchKUorWA.exit ], [ %i.v, %myfgets.exit ] ; 2 uses
  %i.y = load i32, ptr @dorp, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, 100
  %i.aa = load i32, ptr @upperCase, align 4
  %i.ab = icmp ne i32 %i.aa, -1
  %or.cond = select i1 %i.z, i1 %i.ab, i1 false
  %i.ac = icmp sgt i32 %.lcssa25, 0
  %or.cond23 = and i1 %i.ac, %or.cond
  br i1 %or.cond23, label %.lr.ph19.preheader.i, label %seqLower.exit

.lr.ph19.preheader.i:                             ; preds = %._crit_edge
  %wide.trip.count25.i = zext nneg i32 %.lcssa25 to i64
  br label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %._crit_edge.i, %.lr.ph19.preheader.i
  %indvars.iv22.i = phi i64 [ 0, %.lr.ph19.preheader.i ], [ %indvars.iv.next23.i, %._crit_edge.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv22.i ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #33 ; 5 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i21, label %._crit_edge.i

.lr.ph.i21:                                       ; preds = %.lr.ph19.i
  %i.ai = tail call ptr @__ctype_tolower_loc() #31 ; 3 uses
  %wide.trip.count.i = and i64 %i.af, 2147483647
  %xtraiter = and i64 %i.af, 1
  %i.aj = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.i21.new

.lr.ph.i21.new:                                   ; preds = %.lr.ph.i21
  %unroll_iter = and i64 %i.af, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i21.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i21.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i21.new ], [ %niter.next.1, %bb.e ]
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.i ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19
  %i.ao = sext i8 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !19
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19
  %i.ax = sext i8 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = trunc i32 %i.az to i8
  store i8 %i.ba, ptr %i.av, align 1, !tbaa !19
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !44

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i21
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i21 ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !19
  %i.bf = sext i8 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.bd, align 1, !tbaa !19
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph19.i
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next23.i, %wide.trip.count25.i
  br i1 %exitcond26.not.i, label %seqLower.exit, label %.lr.ph19.i, !llvm.loop !45

seqLower.exit:                                    ; preds = %._crit_edge.i, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @countATGC(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @__ctype_tolower_loc() #31
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = tail call ptr @__ctype_b_loc() #31
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %i.g = phi i8 [ %i.u, %bb.e ], [ %i.a, %.preheader ]
  %.033 = phi i32 [ %.134, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %.032 = phi i32 [ %.1, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %.031 = phi ptr [ %i.t, %bb.e ], [ %0, %.preheader ]
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %.fr36 = freeze i32 %i.j                        ; 2 uses
  %sext = shl i32 %.fr36, 24                      ; 2 uses
  %i.k = ashr exact i32 %sext, 24
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !57
  %i.o = and i16 %i.n, 1024
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.032, 1                     ; 2 uses
  %i.q = and i32 %.fr36, 251
  %i.r = icmp eq i32 %i.q, 99
  br i1 %i.r, label %bb.d, label %switch.early.test

switch.early.test:                                ; preds = %bb.c
  %2 = add i32 %sext, -1627389952
  %3 = lshr exact i32 %2, 24
  %trunc = trunc nuw i32 %3 to i8
  switch i8 %trunc, label %bb.e [
    i8 20, label %bb.d
    i8 19, label %bb.d
    i8 13, label %bb.d
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.c
  %i.s = add nsw i32 %.033, 1
  br label %bb.e

bb.e:                                             ; preds = %switch.early.test, %bb.b, %bb.d
  %.134 = phi i32 [ %i.s, %bb.d ], [ %.033, %switch.early.test ], [ %.033, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.p, %bb.d ], [ %i.p, %switch.early.test ], [ %.032, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.031, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !19    ; 2 uses
  %.not35 = icmp eq i8 %i.u, 0
  br i1 %.not35, label %bb.f, label %bb.b, !llvm.loop !73

bb.f:                                             ; preds = %bb.e
  store i32 %.1, ptr %1, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.0 = phi i32 [ %.134, %bb.f ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @countATGCbk(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call ptr @__ctype_tolower_loc() #31
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = tail call ptr @__ctype_b_loc() #31
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %.pre = load i8, ptr %0, align 1, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.e = phi i8 [ %.pre, %bb.a ], [ %i.s, %bb.e ]
  %.029 = phi i32 [ 0, %bb.a ], [ %.130, %bb.e ]  ; 2 uses
  %.028 = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]    ; 3 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.r, %bb.e ]
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %.fr32 = freeze i32 %i.h                        ; 2 uses
  %sext = shl i32 %.fr32, 24                      ; 2 uses
  %i.i = ashr exact i32 %sext, 24
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !57
  %i.m = and i16 %i.l, 1024
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.029, 1                     ; 2 uses
  %i.o = and i32 %.fr32, 251
  %i.p = icmp eq i32 %i.o, 99
  br i1 %i.p, label %bb.d, label %switch.early.test

switch.early.test:                                ; preds = %bb.c
  %1 = add i32 %sext, -1627389952
  %2 = lshr exact i32 %1, 24
  %trunc = trunc nuw i32 %2 to i8
  switch i8 %trunc, label %bb.e [
    i8 20, label %bb.d
    i8 19, label %bb.d
    i8 13, label %bb.d
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.c
  %i.q = add nsw i32 %.028, 1
  br label %bb.e

bb.e:                                             ; preds = %switch.early.test, %bb.b, %bb.d
  %.130 = phi i32 [ %i.n, %bb.d ], [ %i.n, %switch.early.test ], [ %.029, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.q, %bb.d ], [ %.028, %switch.early.test ], [ %.028, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19    ; 2 uses
  %.not31 = icmp eq i8 %i.s, 0
  br i1 %.not31, label %bb.f, label %bb.b, !llvm.loop !74

bb.f:                                             ; preds = %bb.e
  %i.t = sitofp i32 %.1 to double
  %i.u = sitofp i32 %.130 to double
  %i.v = fdiv double %i.t, %i.u
  ret double %i.v
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @countalpha(ptr noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %.not6 = icmp eq i8 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = tail call ptr @__ctype_b_loc() #31
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.d = phi i8 [ %i.a, %.lr.ph ], [ %i.l, %bb.b ]
  %.08 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.b ]
  %.037 = phi ptr [ %0, %.lr.ph ], [ %i.e, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.037, i64 1 ; 2 uses
  %i.f = sext i8 %i.d to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !57
  %i.i = lshr i16 %i.h, 10
  %i.j = and i16 %i.i, 1
  %i.k = zext nneg i16 %i.j to i32
  %spec.select = add nuw nsw i32 %.08, %i.k       ; 2 uses
  %i.l = load i8, ptr %i.e, align 1, !tbaa !19    ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @getnumlen_nogap(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call ptr @AllocateCharVec(i32 noundef 5000000) #32 ; 2 uses
  %i.b = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not11.i = icmp eq i32 %i.b, -1
  br i1 %.not11.i, label %countKUorWA.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = phi i32 [ %i.g, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %.013.i = phi i32 [ %i.c, %.lr.ph.i ], [ 10, %bb.a ]
  %.0812.i = phi i32 [ %.1.i, %.lr.ph.i ], [ 0, %bb.a ]
  %i.d = icmp eq i32 %.013.i, 10
  %i.e = add i32 %i.c, -61
  %or.cond.i = icmp ult i32 %i.e, 2
  %or.cond10.i = and i1 %i.d, %or.cond.i
  %i.f = zext i1 %or.cond10.i to i32
  %.1.i = add nuw nsw i32 %.0812.i, %i.f          ; 2 uses
  %i.g = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %countKUorWA.exit, label %.lr.ph.i, !llvm.loop !76

countKUorWA.exit:                                 ; preds = %.lr.ph.i, %bb.a
  %.08.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %.lr.ph.i ]
  tail call void @rewind(ptr noundef %0)
  store i32 %.08.lcssa.i, ptr @njob, align 4, !tbaa !4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %countKUorWA.exit
  %.0.i = phi i32 [ 10, %countKUorWA.exit ], [ %i.h, %.critedge.i.backedge ]
  %i.h = tail call i32 @getc(ptr noundef %0)      ; 3 uses
  switch i32 %i.h, label %.critedge.i.backedge [
    i32 -1, label %bb.b
    i32 62, label %bb.b
    i32 61, label %bb.b
  ]

bb.b:                                             ; preds = %.critedge.i, %.critedge.i, %.critedge.i
  %.not.i26 = icmp eq i32 %.0.i, 10
  br i1 %.not.i26, label %searchKUorWA.exit, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %bb.b, %.critedge.i
  br label %.critedge.i, !llvm.loop !63

searchKUorWA.exit:                                ; preds = %bb.b
  %i.i = tail call i32 @ungetc(i32 noundef %i.h, ptr noundef %0) ; 0 uses
  store i32 0, ptr @nlenmax, align 4, !tbaa !4
  store i32 99999999, ptr %1, align 4, !tbaa !4
  %i.j = load i32, ptr @njob, align 4, !tbaa !4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %searchKUorWA.exit, %countATGC.exit
  %.042 = phi i32 [ %i.be, %countATGC.exit ], [ 0, %searchKUorWA.exit ]
  %.02341 = phi i32 [ %i.bd, %countATGC.exit ], [ 0, %searchKUorWA.exit ]
  %.02440 = phi i32 [ %i.bf, %countATGC.exit ], [ 0, %searchKUorWA.exit ]
  %.03639 = phi i32 [ %.1, %countATGC.exit ], [ undef, %searchKUorWA.exit ]
  %i.l = tail call i32 @feof(ptr noundef %0) #32
  %.not.i27 = icmp eq i32 %i.l, 0
  br i1 %.not.i27, label %.lr.ph.i28, label %myfgets.exit

.lr.ph.i28:                                       ; preds = %.lr.ph, %bb.c
  %.021.i = phi i32 [ %i.p, %bb.c ], [ 0, %.lr.ph ]
  %.01220.i = phi ptr [ %i.o, %bb.c ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.m = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not15.i = icmp eq i32 %i.m, 10
  br i1 %.not15.i, label %.critedge.i29, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i28
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.n, ptr %.01220.i, align 1, !tbaa !19
  %i.p = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, 4999999
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i28, !llvm.loop !49

.critedge.i29:                                    ; preds = %.lr.ph.i28
  store i8 0, ptr %.01220.i, align 1, !tbaa !19
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.c
  store i8 0, ptr %i.o, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.critedge18.i
  %i.q = tail call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.q, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.d, !llvm.loop !50

myfgets.exit:                                     ; preds = %bb.d, %.lr.ph, %.critedge.i29
  %i.r = tail call ptr @load1SeqWithoutName_realloc(ptr noundef %0) ; 5 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19    ; 2 uses
  %.not6.i = icmp eq i8 %i.s, 0
  br i1 %.not6.i, label %countalpha.exit, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %myfgets.exit
  %i.t = tail call ptr @__ctype_b_loc() #31
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i30
  %i.v = phi i8 [ %i.s, %.lr.ph.i30 ], [ %i.ad, %bb.e ]
  %.08.i = phi i32 [ 0, %.lr.ph.i30 ], [ %spec.select.i, %bb.e ]
  %.037.i = phi ptr [ %i.r, %.lr.ph.i30 ], [ %i.w, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.037.i, i64 1 ; 2 uses
  %i.x = sext i8 %i.v to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !57
  %i.aa = lshr i16 %i.z, 10
  %i.ab = and i16 %i.aa, 1
  %i.ac = zext nneg i16 %i.ab to i32
  %spec.select.i = add nuw nsw i32 %.08.i, %i.ac  ; 2 uses
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !19   ; 2 uses
  %.not.i31 = icmp eq i8 %i.ad, 0
  br i1 %.not.i31, label %countalpha.exit, label %bb.e, !llvm.loop !75

countalpha.exit:                                  ; preds = %bb.e, %myfgets.exit
  %.0.lcssa.i = phi i32 [ 0, %myfgets.exit ], [ %spec.select.i, %bb.e ] ; 4 uses
  %i.ae = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.af = icmp sgt i32 %.0.lcssa.i, %i.ae
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %countalpha.exit
  store i32 %.0.lcssa.i, ptr @nlenmax, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %countalpha.exit
  %i.ag = load i32, ptr %1, align 4, !tbaa !4
  %i.ah = icmp slt i32 %.0.lcssa.i, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0.lcssa.i, ptr %1, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load i8, ptr %i.r, align 1, !tbaa !19   ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %countATGC.exit, label %.preheader.i32

.preheader.i32:                                   ; preds = %bb.i
  %i.ak = tail call ptr @__ctype_tolower_loc() #31
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.am = tail call ptr @__ctype_b_loc() #31
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.preheader.i32
  %i.ao = phi i8 [ %i.bc, %bb.m ], [ %i.ai, %.preheader.i32 ]
  %.033.i = phi i32 [ %.134.i, %bb.m ], [ 0, %.preheader.i32 ] ; 3 uses
  %.032.i = phi i32 [ %.1.i34, %bb.m ], [ 0, %.preheader.i32 ] ; 2 uses
  %.031.i = phi ptr [ %i.bb, %bb.m ], [ %i.r, %.preheader.i32 ]
  %i.ap = sext i8 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %.fr36.i = freeze i32 %i.ar                     ; 2 uses
  %sext.i = shl i32 %.fr36.i, 24                  ; 2 uses
  %i.as = ashr exact i32 %sext.i, 24
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !57
  %i.aw = and i16 %i.av, 1024
  %.not.i33 = icmp eq i16 %i.aw, 0
  br i1 %.not.i33, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %.032.i, 1                  ; 2 uses
  %i.ay = and i32 %.fr36.i, 251
  %i.az = icmp eq i32 %i.ay, 99
  br i1 %i.az, label %bb.l, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.k
  %2 = add i32 %sext.i, -1627389952
  %3 = lshr exact i32 %2, 24
  %trunc.i = trunc nuw i32 %3 to i8
  switch i8 %trunc.i, label %bb.m [
    i8 20, label %bb.l
    i8 19, label %bb.l
    i8 13, label %bb.l
    i8 0, label %bb.l
  ]

bb.l:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.k
  %i.ba = add nsw i32 %.033.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.early.test.i, %bb.j
  %.134.i = phi i32 [ %i.ba, %bb.l ], [ %.033.i, %switch.early.test.i ], [ %.033.i, %bb.j ] ; 2 uses
  %.1.i34 = phi i32 [ %i.ax, %bb.l ], [ %i.ax, %switch.early.test.i ], [ %.032.i, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.031.i, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19  ; 2 uses
  %.not35.i = icmp eq i8 %i.bc, 0
  br i1 %.not35.i, label %countATGC.exit, label %bb.j, !llvm.loop !73

countATGC.exit:                                   ; preds = %bb.m, %bb.i
  %.1 = phi i32 [ %.03639, %bb.i ], [ %.1.i34, %bb.m ] ; 2 uses
  %.0.i35 = phi i32 [ 0, %bb.i ], [ %.134.i, %bb.m ]
  %i.bd = add nsw i32 %.0.i35, %.02341            ; 2 uses
  %i.be = add nsw i32 %.1, %.042                  ; 2 uses
  tail call void @free(ptr noundef %i.r) #32
  %i.bf = add nuw nsw i32 %.02440, 1              ; 2 uses
  %i.bg = load i32, ptr @njob, align 4, !tbaa !4
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !77

._crit_edge.loopexit:                             ; preds = %countATGC.exit
  %i.bi = sitofp i32 %i.bd to double
  %i.bj = sitofp i32 %i.be to double
  %i.bk = fdiv double %i.bi, %i.bj
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %searchKUorWA.exit
  %i.bl = phi double [ +qnan, %searchKUorWA.exit ], [ %i.bk, %._crit_edge.loopexit ] ; 2 uses
  tail call void @free(ptr noundef %i.a) #32
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.19, double noundef %i.bl) #28 ; 0 uses
  %i.bo = load i32, ptr @dorp, align 4, !tbaa !4
  %i.bp = icmp eq i32 %i.bo, 100009
  br i1 %i.bp, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %._crit_edge
  %i.bq = fcmp ogt double %i.bl, 7.500000e-01     ; 2 uses
  %. = select i1 %i.bq, i32 100, i32 112
  %.59 = sext i1 %i.bq to i32
  store i32 %., ptr @dorp, align 4, !tbaa !4
  store i32 %.59, ptr @upperCase, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %._crit_edge
  ret void
}

declare ptr @AllocateCharVec(i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local void @getnumlen(ptr noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call ptr @AllocateCharVec(i32 noundef 5000000) #32 ; 2 uses
  %i.b = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not11.i = icmp eq i32 %i.b, -1
  br i1 %.not11.i, label %countKUorWA.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = phi i32 [ %i.g, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %.013.i = phi i32 [ %i.c, %.lr.ph.i ], [ 10, %bb.a ]
  %.0812.i = phi i32 [ %.1.i, %.lr.ph.i ], [ 0, %bb.a ]
  %i.d = icmp eq i32 %.013.i, 10
  %i.e = add i32 %i.c, -61
  %or.cond.i = icmp ult i32 %i.e, 2
  %or.cond10.i = and i1 %i.d, %or.cond.i
  %i.f = zext i1 %or.cond10.i to i32
  %.1.i = add nuw nsw i32 %.0812.i, %i.f          ; 2 uses
  %i.g = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %countKUorWA.exit, label %.lr.ph.i, !llvm.loop !76

countKUorWA.exit:                                 ; preds = %.lr.ph.i, %bb.a
  %.08.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %.lr.ph.i ]
  tail call void @rewind(ptr noundef %0)
  store i32 %.08.lcssa.i, ptr @njob, align 4, !tbaa !4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %countKUorWA.exit
  %.0.i = phi i32 [ 10, %countKUorWA.exit ], [ %i.h, %.critedge.i.backedge ]
  %i.h = tail call i32 @getc(ptr noundef %0)      ; 3 uses
  switch i32 %i.h, label %.critedge.i.backedge [
    i32 -1, label %bb.b
    i32 62, label %bb.b
    i32 61, label %bb.b
  ]

bb.b:                                             ; preds = %.critedge.i, %.critedge.i, %.critedge.i
  %.not.i20 = icmp eq i32 %.0.i, 10
  br i1 %.not.i20, label %searchKUorWA.exit, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %bb.b, %.critedge.i
  br label %.critedge.i, !llvm.loop !63

searchKUorWA.exit:                                ; preds = %bb.b
  %i.i = tail call i32 @ungetc(i32 noundef %i.h, ptr noundef %0) ; 0 uses
  store i32 0, ptr @nlenmax, align 4, !tbaa !4
  %i.j = load i32, ptr @njob, align 4, !tbaa !4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %searchKUorWA.exit, %countATGC.exit
  %.034 = phi i32 [ %i.as, %countATGC.exit ], [ 0, %searchKUorWA.exit ]
  %.01733 = phi i32 [ %i.ar, %countATGC.exit ], [ 0, %searchKUorWA.exit ]
  %.01832 = phi i32 [ %i.at, %countATGC.exit ], [ 0, %searchKUorWA.exit ]
  %.02831 = phi i32 [ %.1, %countATGC.exit ], [ undef, %searchKUorWA.exit ]
  %i.l = tail call i32 @feof(ptr noundef %0) #32
  %.not.i21 = icmp eq i32 %i.l, 0
  br i1 %.not.i21, label %.lr.ph.i22, label %myfgets.exit

.lr.ph.i22:                                       ; preds = %.lr.ph, %bb.c
  %.021.i = phi i32 [ %i.p, %bb.c ], [ 0, %.lr.ph ]
  %.01220.i = phi ptr [ %i.o, %bb.c ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.m = tail call i32 @getc(ptr noundef %0)      ; 2 uses
  %.not15.i = icmp eq i32 %i.m, 10
  br i1 %.not15.i, label %.critedge.i23, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i22
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.01220.i, i64 1 ; 2 uses
  store i8 %i.n, ptr %.01220.i, align 1, !tbaa !19
  %i.p = add nuw nsw i32 %.021.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, 4999999
  br i1 %exitcond.not.i, label %.critedge18.i, label %.lr.ph.i22, !llvm.loop !49

.critedge.i23:                                    ; preds = %.lr.ph.i22
  store i8 0, ptr %.01220.i, align 1, !tbaa !19
  br label %myfgets.exit

.critedge18.i:                                    ; preds = %bb.c
  store i8 0, ptr %i.o, align 1, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.critedge18.i
  %i.q = tail call i32 @getc(ptr noundef %0)
  %.not17.i = icmp eq i32 %i.q, 10
  br i1 %.not17.i, label %myfgets.exit, label %bb.d, !llvm.loop !50

myfgets.exit:                                     ; preds = %bb.d, %.lr.ph, %.critedge.i23
  %i.r = tail call ptr @load1SeqWithoutName_realloc(ptr noundef %0) ; 4 uses
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #33
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %myfgets.exit
  store i32 %i.t, ptr @nlenmax, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %myfgets.exit
  %i.w = load i8, ptr %i.r, align 1, !tbaa !19    ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %countATGC.exit, label %.preheader.i24

.preheader.i24:                                   ; preds = %bb.f
  %i.y = tail call ptr @__ctype_tolower_loc() #31
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = tail call ptr @__ctype_b_loc() #31
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %.preheader.i24
  %i.ac = phi i8 [ %i.aq, %bb.j ], [ %i.w, %.preheader.i24 ]
  %.033.i = phi i32 [ %.134.i, %bb.j ], [ 0, %.preheader.i24 ] ; 3 uses
  %.032.i = phi i32 [ %.1.i26, %bb.j ], [ 0, %.preheader.i24 ] ; 2 uses
  %.031.i = phi ptr [ %i.ap, %bb.j ], [ %i.r, %.preheader.i24 ]
  %i.ad = sext i8 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %.fr36.i = freeze i32 %i.af                     ; 2 uses
  %sext.i = shl i32 %.fr36.i, 24                  ; 2 uses
  %i.ag = ashr exact i32 %sext.i, 24
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !57
  %i.ak = and i16 %i.aj, 1024
  %.not.i25 = icmp eq i16 %i.ak, 0
  br i1 %.not.i25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %.032.i, 1                  ; 2 uses
  %i.am = and i32 %.fr36.i, 251
  %i.an = icmp eq i32 %i.am, 99
  br i1 %i.an, label %bb.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.h
  %1 = add i32 %sext.i, -1627389952
  %2 = lshr exact i32 %1, 24
  %trunc.i = trunc nuw i32 %2 to i8
  switch i8 %trunc.i, label %bb.j [
    i8 20, label %bb.i
    i8 19, label %bb.i
    i8 13, label %bb.i
    i8 0, label %bb.i
  ]

bb.i:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.h
  %i.ao = add nsw i32 %.033.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %switch.early.test.i, %bb.g
  %.134.i = phi i32 [ %i.ao, %bb.i ], [ %.033.i, %switch.early.test.i ], [ %.033.i, %bb.g ] ; 2 uses
  %.1.i26 = phi i32 [ %i.al, %bb.i ], [ %i.al, %switch.early.test.i ], [ %.032.i, %bb.g ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.031.i, i64 1 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19  ; 2 uses
  %.not35.i = icmp eq i8 %i.aq, 0
  br i1 %.not35.i, label %countATGC.exit, label %bb.g, !llvm.loop !73

countATGC.exit:                                   ; preds = %bb.j, %bb.f
  %.1 = phi i32 [ %.02831, %bb.f ], [ %.1.i26, %bb.j ] ; 2 uses
  %.0.i27 = phi i32 [ 0, %bb.f ], [ %.134.i, %bb.j ]
  %i.ar = add nsw i32 %.0.i27, %.01733            ; 2 uses
  %i.as = add nsw i32 %.1, %.034                  ; 2 uses
  tail call void @free(ptr noundef %i.r) #32
  %i.at = add nuw nsw i32 %.01832, 1              ; 2 uses
  %i.au = load i32, ptr @njob, align 4, !tbaa !4
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !78

._crit_edge.loopexit:                             ; preds = %countATGC.exit
  %i.aw = sitofp i32 %i.ar to double
  %i.ax = sitofp i32 %i.as to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %searchKUorWA.exit
  %.017.lcssa = phi double [ 0.000000e+00, %searchKUorWA.exit ], [ %i.aw, %._crit_edge.loopexit ]
  %.0.lcssa = phi double [ 0.000000e+00, %searchKUorWA.exit ], [ %i.ax, %._crit_edge.loopexit ]
  %i.ay = load i32, ptr @dorp, align 4, !tbaa !4
  %i.az = icmp eq i32 %i.ay, 100009
  br i1 %i.az, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %._crit_edge
  %i.ba = fdiv double %.017.lcssa, %.0.lcssa
  %i.bb = fcmp ogt double %i.ba, 7.500000e-01     ; 2 uses
  %. = select i1 %i.bb, i32 100, i32 112
  %.51 = sext i1 %i.bb to i32
  store i32 %., ptr @dorp, align 4, !tbaa !4
  store i32 %.51, ptr @upperCase, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %._crit_edge
  tail call void @free(ptr noundef %i.a) #32
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @WriteGapFill(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone captures(none) %3, ptr noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr @nlenmax, align 4, !tbaa !4
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge44.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %i.b = icmp sgt i32 %i.j, 0
  br i1 %i.b, label %.lr.ph36.preheader, label %._crit_edge

.lr.ph36.preheader:                               ; preds = %.preheader
  %i.c = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @WriteGapFill.gap, i8 45, i64 %i.c, i1 false), !tbaa !19
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.d = phi i32 [ 0, %.lr.ph.preheader ], [ %i.j, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #33
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp slt i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.h, ptr @nlenmax, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = phi i32 [ %i.h, %bb.b ], [ %i.d, %.lr.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph36.preheader, %.preheader
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @WriteGapFill.gap, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !19
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #32 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %wide.trip.count55 = zext nneg i32 %1 to i64
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %._crit_edge, %._crit_edge40
  %indvars.iv52 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next53, %._crit_edge40 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv52 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @WriteGapFill.buff, ptr noundef nonnull dereferenceable(1) %i.o) #32 ; 0 uses
  %i.q = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #33
  %i.u = sub i64 %i.r, %i.t
  %i.v = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) @WriteGapFill.buff, ptr noundef nonnull @WriteGapFill.gap, i64 noundef %i.u) #32 ; 0 uses
  %i.w = getelementptr inbounds i8, ptr @WriteGapFill.buff, i64 %i.r
  store i8 0, ptr %i.w, align 1, !tbaa !19
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @WriteGapFill.buff) #33
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %2, i64 %indvars.iv52
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %i.z) #32 ; 0 uses
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %i.y) #32 ; 0 uses
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %.lr.ph39, label %._crit_edge40

.lr.ph39:                                         ; preds = %.lr.ph43, %strncpy_caseC.exit
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %strncpy_caseC.exit ], [ 0, %.lr.ph43 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr @WriteGapFill.buff, i64 %indvars.iv49 ; 2 uses
  %i.ae = load i32, ptr @dorp, align 4, !tbaa !4
  %i.af = icmp eq i32 %i.ae, 100
  %i.ag = load i32, ptr @upperCase, align 4
  %i.ah = icmp sgt i32 %i.ag, 0
  %or.cond.i = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %.lr.ph39
  %i.ai = tail call ptr @__ctype_toupper_loc() #31 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.013.i = phi ptr [ @WriteGapFill.b, %.preheader.i ], [ %i.bx, %bb.d ] ; 6 uses
  %.0812.i = phi ptr [ %i.ad, %.preheader.i ], [ %i.br, %bb.d ] ; 6 uses
  %.0911.i = phi i32 [ 60, %.preheader.i ], [ %i.bp, %bb.d ]
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1
  %i.al = load i8, ptr %.0812.i, align 1, !tbaa !19
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  store i8 %i.ap, ptr %.013.i, align 1, !tbaa !19
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %.0812.i, i64 2
  %i.at = load i8, ptr %i.ak, align 1, !tbaa !19
  %i.au = sext i8 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i, i64 2
  store i8 %i.ax, ptr %i.aq, align 1, !tbaa !19
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %.0812.i, i64 3
  %i.bb = load i8, ptr %i.as, align 1, !tbaa !19
  %i.bc = sext i8 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i, i64 3
  store i8 %i.bf, ptr %i.ay, align 1, !tbaa !19
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.0812.i, i64 4
  %i.bj = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bk = sext i8 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  store i8 %i.bn, ptr %i.bg, align 1, !tbaa !19
  %i.bp = add nsw i32 %.0911.i, -5                ; 2 uses
  %i.bq = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.0812.i, i64 5
  %i.bs = load i8, ptr %i.bi, align 1, !tbaa !19
  %i.bt = sext i8 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i, i64 5
  store i8 %i.bw, ptr %i.bo, align 1, !tbaa !19
  %.not.i.4 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.4, label %strncpy_caseC.exit, label %bb.d, !llvm.loop !39

bb.e:                                             ; preds = %.lr.ph39
  %i.by = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @WriteGapFill.b, ptr noundef nonnull readonly dereferenceable(1) %i.ad, i64 noundef 60) #32 ; 0 uses
  br label %strncpy_caseC.exit

strncpy_caseC.exit:                               ; preds = %bb.d, %bb.e
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @WriteGapFill.b, i64 60), align 4, !tbaa !19
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @WriteGapFill.b) #32 ; 0 uses
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 60 ; 2 uses
  %i.ca = trunc nuw i64 %indvars.iv.next50 to i32
  %i.cb = icmp slt i32 %i.ca, %i.y
  br i1 %i.cb, label %.lr.ph39, label %._crit_edge40, !llvm.loop !80

end_hunk_0
