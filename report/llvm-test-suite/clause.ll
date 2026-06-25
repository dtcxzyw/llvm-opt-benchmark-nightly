inline.NumInlined: 1345
inline.NumDeleted: 157
begin_hunk_0_@clause_NumberLower:bb.a

; Function Attrs: nounwind uwtable
define dso_local ptr @clause_NumberDelete(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %.1, %bb.c ], [ %0, %bb.a ]   ; 2 uses
  %.0915 = phi ptr [ %.09.val13, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.0915, i64 8
  %.09.val11 = load ptr, ptr %i.a, align 8        ; 2 uses
  %.val = load i32, ptr %.09.val11, align 8
  %i.b = icmp eq i32 %.val, %1
  %.09.val13 = load ptr, ptr %.0915, align 8      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.c = tail call ptr @list_PointerDeleteOneElement(ptr noundef %.016, ptr noundef nonnull %.09.val11) #20
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.016, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %.09.val13, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.1, %bb.c ]
  ret ptr %.0.lcssa
}

declare ptr @list_PointerDeleteOneElement(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @clause_NumberOfMaxAntecedentLits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val11 = load i32, ptr %i.a, align 8           ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val12 = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val11, -1
  %i.d = add i32 %i.c, %.val12                    ; 2 uses
  %.not14 = icmp ugt i32 %.val11, %i.d
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.016 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.b ]
  %.0815 = phi i32 [ %.val11, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.f = sext i32 %.0815 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  %.val13 = load i32, ptr %i.h, align 8
  %i.i = and i32 %.val13, 1
  %spec.select = add i32 %i.i, %.016              ; 2 uses
  %i.j = add i32 %.0815, 1                        ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_SelectLiteral(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @clause_HasSolvedConstraint(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %clause_NumberOfMaxLits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val30 = load i32, ptr %i.b, align 8
  %i.c = and i32 %.val30, 2
  %.not21 = icmp eq i32 %i.c, 0
  br i1 %.not21, label %bb.c, label %clause_NumberOfMaxLits.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 68
  %.val26 = load i32, ptr %i.d, align 4           ; 4 uses
  %i.e = icmp sgt i32 %.val26, 0
  br i1 %i.e, label %bb.d, label %clause_NumberOfMaxLits.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = load i32, ptr %i.f, align 4
  switch i32 %i.g, label %clause_NumberOfMaxLits.exit.thread [
    i32 2, label %._crit_edge36
    i32 1, label %bb.e
  ]

._crit_edge36:                                    ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 64
  %.val27.pre = load i32, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert38 = getelementptr i8, ptr %0, i64 56
  %.val24.pre = load ptr, ptr %.phi.trans.insert38, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 64
  %.val.i.i = load i32, ptr %i.h, align 8         ; 5 uses
  %i.i = add i32 %.val.i.i, %.val26
  %i.j = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.j, align 8        ; 2 uses
  %i.k = add i32 %i.i, %.val4.i.i
  %i.l = icmp ult i32 %.val.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i, label %clause_NumberOfMaxLits.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.m, align 8           ; 6 uses
  %i.n = add i32 %.val26, %.val4.i.i              ; 3 uses
  %i.o = add i32 %i.n, -1
  %xtraiter = and i32 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.n, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.012.i = phi i32 [ 0, %.lr.ph.i.new ], [ %spec.select.i.3, %bb.f ]
  %.0811.i = phi i32 [ %.val.i.i, %.lr.ph.i.new ], [ %i.aj, %bb.f ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.f ]
  %i.q = sext i32 %.0811.i to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  %.val10.i = load i32, ptr %i.s, align 8
  %i.t = and i32 %.val10.i, 1
  %spec.select.i = add i32 %i.t, %.012.i
  %i.u = add nuw i32 %.0811.i, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %.val10.i.1 = load i32, ptr %i.x, align 8
  %i.y = and i32 %.val10.i.1, 1
  %spec.select.i.1 = add i32 %i.y, %spec.select.i
  %i.z = add nuw i32 %.0811.i, 2
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  %.val10.i.2 = load i32, ptr %i.ac, align 8
  %i.ad = and i32 %.val10.i.2, 1
  %spec.select.i.2 = add i32 %i.ad, %spec.select.i.1
  %i.ae = add nuw i32 %.0811.i, 3
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %.val10.i.3 = load i32, ptr %i.ah, align 8
  %i.ai = and i32 %.val10.i.3, 1
  %spec.select.i.3 = add i32 %i.ai, %spec.select.i.2 ; 3 uses
  %i.aj = add nuw i32 %.0811.i, 4                 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %clause_NumberOfMaxLits.exit.unr-lcssa, label %bb.f, !llvm.loop !123

clause_NumberOfMaxLits.exit.unr-lcssa:            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %clause_NumberOfMaxLits.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %clause_NumberOfMaxLits.exit.unr-lcssa, %.lr.ph.i
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.3, %clause_NumberOfMaxLits.exit.unr-lcssa ]
  %.0811.i.epil.init = phi i32 [ %.val.i.i, %.lr.ph.i ], [ %i.aj, %clause_NumberOfMaxLits.exit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.012.i.epil = phi i32 [ %.012.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.g ]
  %.0811.i.epil = phi i32 [ %.0811.i.epil.init, %.epil.preheader ], [ %i.ao, %bb.g ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ak = sext i32 %.0811.i.epil to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8
  %.val10.i.epil = load i32, ptr %i.am, align 8
  %i.an = and i32 %.val10.i.epil, 1
  %spec.select.i.epil = add i32 %i.an, %.012.i.epil ; 2 uses
  %i.ao = add nuw i32 %.0811.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %clause_NumberOfMaxLits.exit, label %bb.g, !llvm.loop !124

clause_NumberOfMaxLits.exit:                      ; preds = %bb.g, %clause_NumberOfMaxLits.exit.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %clause_NumberOfMaxLits.exit.unr-lcssa ], [ %spec.select.i.epil, %bb.g ]
  %i.ap = icmp ugt i32 %spec.select.i.lcssa, 1
  br i1 %i.ap, label %bb.h, label %clause_NumberOfMaxLits.exit.thread

bb.h:                                             ; preds = %._crit_edge36, %clause_NumberOfMaxLits.exit
  %.val24 = phi ptr [ %.val24.pre, %._crit_edge36 ], [ %.val.i, %clause_NumberOfMaxLits.exit ] ; 2 uses
  %.val27 = phi i32 [ %.val27.pre, %._crit_edge36 ], [ %.val.i.i, %clause_NumberOfMaxLits.exit ] ; 3 uses
  %i.aq = add nsw i32 %.val26, -1
  %i.ar = add i32 %i.aq, %.val27                  ; 2 uses
  %i.as = sext i32 %.val27 to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.val24, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.02032 = add i32 %.val27, 1                    ; 2 uses
  %.not2233 = icmp ugt i32 %.02032, %i.ar
  br i1 %.not2233, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %.phi.trans.insert40 = getelementptr i8, ptr %i.au, i64 4
  %.0.val.pre = load i32, ptr %.phi.trans.insert40, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02035.a = phi i32 [ %2, %.lr.ph ], [ %.0.val.pre, %.lr.ph.preheader ] ; 2 uses
  %.02035 = phi i32 [ %.020, %.lr.ph ], [ %.02032, %.lr.ph.preheader ] ; 2 uses
  %.034 = phi ptr [ %spec.select, %.lr.ph ], [ %i.au, %.lr.ph.preheader ]
  %i.av = sext i32 %.02035 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.val24, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %.val29 = load i32, ptr %i.ay, align 4          ; 2 uses
  %i.az = icmp ult i32 %.02035.a, %.val29
  %spec.select = select i1 %i.az, ptr %i.ax, ptr %.034 ; 2 uses
  %.020 = add i32 %.02035, 1                      ; 2 uses
  %.not22 = icmp ugt i32 %.020, %i.ar
  %2 = tail call i32 @llvm.umax.i32(i32 %.02035.a, i32 %.val29)
  br i1 %.not22, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.0.lcssa = phi ptr [ %i.au, %bb.h ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.ba = load i32, ptr %.0.lcssa, align 8
  %i.bb = or i32 %i.ba, 4
  store i32 %i.bb, ptr %.0.lcssa, align 8
  %i.bc = load i32, ptr %i.b, align 8
  %i.bd = or i32 %i.bc, 2
  store i32 %i.bd, ptr %i.b, align 8
  br label %clause_NumberOfMaxLits.exit.thread

clause_NumberOfMaxLits.exit.thread:               ; preds = %bb.d, %bb.e, %._crit_edge, %clause_NumberOfMaxLits.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clause_SetSpecialFlags(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %clause_IsSortTheoryClause.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %.val9.i = load i32, ptr %i.a, align 4
  %i.b = icmp sgt i32 %.val9.i, 0
  br i1 %i.b, label %clause_IsSortTheoryClause.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 72
  %.val12.i = load i32, ptr %i.c, align 8
  %i.d = icmp sgt i32 %.val12.i, 1
  br i1 %i.d, label %clause_IsSortTheoryClause.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @clause_HasSolvedConstraint(ptr noundef nonnull readonly %0)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %clause_IsSortTheoryClause.exit.thread, label %clause_IsSortTheoryClause.exit

clause_IsSortTheoryClause.exit:                   ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val10.i = load i32, ptr %i.f, align 8
  %.val11.i = load i32, ptr %i.a, align 4
  %i.g = add nsw i32 %.val11.i, %.val10.i
  %i.h = getelementptr i8, ptr %0, i64 56
  %.val8.i = load ptr, ptr %i.h, align 8
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.val8.i, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val.i = load ptr, ptr %i.l, align 8
  %.val7.i = load i32, ptr %.val.i, align 8
  %i.m = sub nsw i32 0, %.val7.i
  %i.n = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.o = ashr i32 %i.m, %i.n
  %i.p = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %.not13.i.not = icmp eq i32 %i.u, 1
  br i1 %.not13.i.not, label %bb.e, label %clause_IsSortTheoryClause.exit.thread

bb.e:                                             ; preds = %clause_IsSortTheoryClause.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 32
  %.not7 = icmp eq i32 %i.x, 0
  br i1 %.not7, label %clause_IsSortTheoryClause.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = or i32 %i.z, 32
  store i32 %i.aa, ptr %i.y, align 8
  br label %clause_IsSortTheoryClause.exit.thread

clause_IsSortTheoryClause.exit.thread:            ; preds = %bb.c, %bb.d, %bb.b, %bb.f, %bb.e, %clause_IsSortTheoryClause.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clause_ContainsPotPredDef(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 6 uses
  %.val119 = load i32, ptr %i.a, align 8          ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 68         ; 6 uses
  %.val120 = load i32, ptr %i.b, align 4          ; 2 uses
  %i.c = add nsw i32 %.val120, %.val119           ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 72         ; 5 uses
  %.val4.i237 = load i32, ptr %i.d, align 8       ; 2 uses
  %i.e = add nsw i32 %i.c, %.val4.i237
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56         ; 6 uses
  %i.h = load i32, ptr @symbol_TYPEMASK, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph241, %.critedge102
  %.val4.i259 = phi i32 [ %.val4.i237, %.lr.ph241 ], [ %.val4.i, %.critedge102 ] ; 2 uses
  %.val3.i257 = phi i32 [ %.val120, %.lr.ph241 ], [ %.val3.i, %.critedge102 ] ; 2 uses
  %.val.i255 = phi i32 [ %.val119, %.lr.ph241 ], [ %.val.i, %.critedge102 ] ; 2 uses
  %.076238 = phi i32 [ %i.c, %.lr.ph241 ], [ %i.eg, %.critedge102 ] ; 4 uses
  %.val110 = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %.076238 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %.val110, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val = load ptr, ptr %i.l, align 8             ; 4 uses
  %.val105 = load i32, ptr %.val, align 8         ; 2 uses
  %.not.i = icmp sgt i32 %.val105, -1
  br i1 %.not.i, label %.critedge102, label %symbol_IsPredicate.exit

symbol_IsPredicate.exit:                          ; preds = %bb.b
  %i.m = sub nsw i32 0, %.val105
  %i.n = and i32 %i.h, %i.m
  %.not = icmp eq i32 %i.n, 2
  br i1 %.not, label %bb.c, label %.critedge102

bb.c:                                             ; preds = %symbol_IsPredicate.exit
  %i.o = tail call noundef ptr @memory_Malloc(i32 noundef 16) #20 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr i8, ptr %.val, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.085.in = phi ptr [ %i.p, %bb.c ], [ %.085, %bb.e ]
  %.085 = load ptr, ptr %.085.in, align 8         ; 3 uses
  %.not201 = icmp eq ptr %.085, null
  br i1 %.not201, label %.critedge.preheader, label %bb.e

.critedge.preheader:                              ; preds = %bb.d
  %.val.i127 = load i32, ptr %i.a, align 8
  %.val3.i128 = load i32, ptr %i.b, align 4
  %i.q = add nsw i32 %.val3.i128, %.val.i127
  %.val4.i129 = load i32, ptr %i.d, align 8
  %i.r = add nsw i32 %i.q, %.val4.i129            ; 2 uses
  %.not244 = icmp eq i32 %i.r, 0
  br i1 %.not244, label %.critedge._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader
  %.val114 = load ptr, ptr %i.g, align 8
  %i.s = load i32, ptr @fol_NOT, align 4
  %.val103 = load i32, ptr %.val, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.085, i64 8
  %.085.val = load ptr, ptr %i.t, align 8
  %.val122 = load i32, ptr %.085.val, align 8
  %i.u = add i32 %.val122, -2001
  %i.v = icmp ult i32 %i.u, -2000
  br i1 %i.v, label %list_Delete.exit185, label %bb.d, !llvm.loop !126

bb.f:                                             ; preds = %.lr.ph, %clause_GetLiteralAtom.exit
  %.077210 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %clause_GetLiteralAtom.exit ]
  %.079209 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %clause_GetLiteralAtom.exit ] ; 2 uses
  %i.w = sext i32 %.079209 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %.val114, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %.val.i130 = load ptr, ptr %i.z, align 8        ; 2 uses
  %.val5.val.i.i = load i32, ptr %.val.i130, align 8 ; 2 uses
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.s
  br i1 %.not.i.i, label %bb.g, label %clause_GetLiteralAtom.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %.val.i130, i64 16
  %.val6.i.i = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.ab, align 8
  %.val104.pre = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.f, %bb.g
  %.val104 = phi i32 [ %.val104.pre, %bb.g ], [ %.val5.val.i.i, %bb.f ]
  %.not204 = icmp eq i32 %.val104, %.val103
  %i.ac = zext i1 %.not204 to i32
  %spec.select = add nuw nsw i32 %.077210, %i.ac  ; 3 uses
  %i.ad = add nuw i32 %.079209, 1                 ; 2 uses
  %i.ae = icmp ult i32 %i.ad, %i.r
  %i.af = icmp samesign ult i32 %spec.select, 2
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.f, label %.critedge._crit_edge, !llvm.loop !127

.critedge._crit_edge:                             ; preds = %clause_GetLiteralAtom.exit
  %i.ah = icmp samesign ugt i32 %spec.select, 1
  br i1 %i.ah, label %list_Delete.exit185, label %.critedge._crit_edge.thread

.critedge._crit_edge.thread:                      ; preds = %.critedge.preheader, %.critedge._crit_edge
  %i.ai = tail call ptr @fol_FreeVariables(ptr noundef nonnull %.val) #20 ; 6 uses
  %.val117217 = load i32, ptr %i.a, align 8
  %.val118218 = load i32, ptr %i.b, align 4
  %i.aj = sub i32 0, %.val117217
  %.not245 = icmp eq i32 %.val118218, %i.aj
  br i1 %.not245, label %.preheader, label %.lr.ph220

end_hunk_0
