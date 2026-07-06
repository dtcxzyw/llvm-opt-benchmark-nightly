inline.NumInlined: 1345
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@clause_CopySuccedent:bb.a
  %i.h = sext i32 %i.c to i64
  %i.i = add i32 %i.c, %.val4.i.i
  br label %bb.b

bb.b:                                             ; preds = %clause_GetLiteralAtom.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %clause_GetLiteralAtom.exit.i ] ; 2 uses
  %.010.i = phi ptr [ null, %.lr.ph.i ], [ %i.q, %clause_GetLiteralAtom.exit.i ]
  %.val.i = load ptr, ptr %i.g, align 8
  %i.j = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val.i.i4 = load ptr, ptr %i.l, align 8        ; 3 uses
  %.val5.val.i.i.i = load i32, ptr %.val.i.i4, align 8
  %i.m = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.m
  br i1 %.not.i.i.i, label %bb.c, label %clause_GetLiteralAtom.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %.val.i.i4, i64 16
  %.val6.i.i.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.o, align 8
  br label %clause_GetLiteralAtom.exit.i

clause_GetLiteralAtom.exit.i:                     ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %.val6.val.i.i.i, %bb.c ], [ %.val.i.i4, %bb.b ]
  %i.p = tail call ptr @term_Copy(ptr noundef %.0.i.i.i) #20
  %i.q = tail call noundef ptr @memory_Malloc(i32 noundef 16) #20 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store ptr %.010.i, ptr %i.q, align 8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.i, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %clause_CopyLitInterval.exit, label %bb.b, !llvm.loop !7

clause_CopyLitInterval.exit:                      ; preds = %clause_GetLiteralAtom.exit.i, %bb.a
  %.0.lcssa.i = phi ptr [ null, %bb.a ], [ %i.q, %clause_GetLiteralAtom.exit.i ]
  ret ptr %.0.lcssa.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @clause_CopySuccedentExcept(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %.val = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 68
  %.val3 = load i32, ptr %i.b, align 4
  %i.c = add i32 %.val3, %.val                    ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.d, align 8
  %i.e = add i32 %i.c, -1
  %i.f = add i32 %i.e, %.val4.i.i                 ; 2 uses
  %.not11.i = icmp slt i32 %i.f, %i.c
  br i1 %.not11.i, label %clause_CopyLitIntervalExcept.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = sext i32 %i.f to i64
  %i.i = sext i32 %i.c to i64
  %sext.i = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.h, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %.013.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %i.j = icmp eq i64 %indvars.iv.i, %sext.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %.val.i.i4 = load ptr, ptr %i.m, align 8        ; 3 uses
  %.val5.val.i.i.i = load i32, ptr %.val.i.i4, align 8
  %i.n = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.n
  br i1 %.not.i.i.i, label %bb.d, label %clause_GetLiteralAtom.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.val.i.i4, i64 16
  %.val6.i.i.i = load ptr, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.p, align 8
  br label %clause_GetLiteralAtom.exit.i

clause_GetLiteralAtom.exit.i:                     ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %.val6.val.i.i.i, %bb.d ], [ %.val.i.i4, %bb.c ]
  %i.q = tail call ptr @term_Copy(ptr noundef %.0.i.i.i) #20
  %i.r = tail call noundef ptr @memory_Malloc(i32 noundef 16) #20 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8
  store ptr %.013.i, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %clause_GetLiteralAtom.exit.i, %bb.b
  %.1.i = phi ptr [ %i.r, %clause_GetLiteralAtom.exit.i ], [ %.013.i, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.not.i = icmp sgt i64 %indvars.iv.i, %i.i
  br i1 %.not.not.i, label %bb.b, label %clause_CopyLitIntervalExcept.exit, !llvm.loop !8

clause_CopyLitIntervalExcept.exit:                ; preds = %bb.e, %bb.a
  %.0.lcssa.i = phi ptr [ null, %bb.a ], [ %.1.i, %bb.e ]
  ret ptr %.0.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @clause_IsUnorderedClause(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %clause_DependsOnSplitLevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = icmp eq i32 %i.b, 0                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.k, label %clause_DependsOnSplitLevel.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = zext i32 %i.h to i64
  %i.k = add i32 %i.h, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 -1) ; 2 uses
  %.pre.pre.i = load ptr, ptr %i.i, align 8       ; 3 uses
  %indvars.iv.next.i24 = add nsw i64 %i.j, -1     ; 2 uses
  %indvars.i25 = trunc i64 %indvars.iv.next.i24 to i32 ; 2 uses
  %i.l = icmp sgt i32 %indvars.i25, -1
  br i1 %i.l, label %.lr.ph, label %._crit_edge28

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i26, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.m = icmp sgt i32 %indvars.i, -1
  br i1 %i.m, label %.lr.ph, label %._crit_edge28, !llvm.loop !9

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %indvars.i27 = phi i32 [ %indvars.i, %bb.e ], [ %indvars.i25, %bb.d ]
  %indvars.iv.next.i26 = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %indvars.iv.next.i24, %bb.d ] ; 2 uses
  %i.n = and i64 %indvars.iv.next.i26, 2147483647
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre.i, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph
  br label %._crit_edge28, !llvm.loop !9

._crit_edge28:                                    ; preds = %bb.e, %._crit_edge, %bb.d
  %.015.lcssa.i = phi i32 [ %indvars.i27, %._crit_edge ], [ %smin.i, %bb.d ], [ %smin.i, %bb.e ]
  %i.q = sext i32 %.015.lcssa.i to i64            ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.pre.pre.i, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8              ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %._crit_edge28
  %indvars.iv20.i = phi i64 [ 63, %._crit_edge28 ], [ %indvars.iv.next21.i.3, %bb.j ] ; 6 uses
  %i.t = shl nuw i64 1, %indvars.iv20.i
  %i.u = and i64 %i.t, %i.s
  %.not17.i = icmp eq i64 %i.u, 0
  br i1 %.not17.i, label %bb.g, label %clause_CheckSplitLevel.exit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next21.i = add nsw i64 %indvars.iv20.i, -1 ; 2 uses
  %i.v = shl nuw i64 1, %indvars.iv.next21.i
  %i.w = and i64 %i.v, %i.s
  %.not17.i.1 = icmp eq i64 %i.w, 0
  br i1 %.not17.i.1, label %bb.h, label %clause_CheckSplitLevel.exit

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next21.i.1 = add nsw i64 %indvars.iv20.i, -2 ; 2 uses
  %i.x = shl nuw i64 1, %indvars.iv.next21.i.1
  %i.y = and i64 %i.x, %i.s
  %.not17.i.2 = icmp eq i64 %i.y, 0
  br i1 %.not17.i.2, label %bb.i, label %clause_CheckSplitLevel.exit

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next21.i.2 = add nsw i64 %indvars.iv20.i, -3 ; 3 uses
  %i.z = shl nuw i64 1, %indvars.iv.next21.i.2
  %i.aa = and i64 %i.z, %i.s
  %.not17.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not17.i.3, label %bb.j, label %clause_CheckSplitLevel.exit

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next21.i.3 = add nsw i64 %indvars.iv20.i, -4
  %.not24.i.3 = icmp eq i64 %indvars.iv.next21.i.2, 0
  br i1 %.not24.i.3, label %clause_CheckSplitLevel.exit, label %bb.f, !llvm.loop !10

clause_CheckSplitLevel.exit:                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0.lcssa.i = phi i64 [ %indvars.iv20.i, %bb.f ], [ -1, %bb.j ], [ %indvars.iv.next21.i, %bb.g ], [ %indvars.iv.next21.i.2, %bb.i ], [ %indvars.iv.next21.i.1, %bb.h ]
  %i.ab = zext i32 %i.b to i64
  %i.ac = shl nsw i64 %i.q, 6
  %sext.i = shl i64 %.0.lcssa.i, 32
  %1 = ashr exact i64 %sext.i, 32
  %i.ad = add nsw i64 %1, %i.ac
  %i.ae = icmp eq i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.k, label %clause_DependsOnSplitLevel.exit

bb.k:                                             ; preds = %bb.c, %clause_CheckSplitLevel.exit
  %i.af = phi ptr [ null, %bb.c ], [ %.pre.pre.i, %clause_CheckSplitLevel.exit ]
  %i.ag = getelementptr i8, ptr %0, i64 68
  %.val.i = load i32, ptr %i.ag, align 4
  %.not8.i = icmp eq i32 %.val.i, 0
  br i1 %.not8.i, label %bb.l, label %clause_IsEmptyClause.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %0, i64 72
  %.val6.i = load i32, ptr %i.ah, align 8
  %.not9.i = icmp eq i32 %.val6.i, 0
  br i1 %.not9.i, label %clause_IsEmptyClause.exit, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit:                        ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %0, i64 64
  %.val7.i = load i32, ptr %i.ai, align 8
  %.not20 = icmp eq i32 %.val7.i, 0
  br i1 %.not20, label %bb.o, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit.thread:                 ; preds = %bb.k, %bb.l, %clause_IsEmptyClause.exit
  %i.aj = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %.val, align 8            ; 2 uses
  %.not.i15 = icmp eq ptr %i.ak, null
  br i1 %.not.i15, label %clause_DependsOnSplitLevel.exit, label %bb.m

bb.m:                                             ; preds = %clause_IsEmptyClause.exit.thread
  %i.al = getelementptr i8, ptr %i.ak, i64 24
  %.val.i16 = load ptr, ptr %i.al, align 8        ; 2 uses
  %.val5.val.i.i.i = load i32, ptr %.val.i16, align 8 ; 2 uses
  %i.am = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.am
  br i1 %.not.i.i.i, label %bb.n, label %clause_LiteralPredicate.exit.i

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %.val.i16, i64 16
  %.val6.i.i.i = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.ao, align 8
  %.val.pre.i.i = load i32, ptr %.val6.val.i.i.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %bb.n, %bb.m
  %.val.i.i = phi i32 [ %.val.pre.i.i, %bb.n ], [ %.val5.val.i.i.i, %bb.m ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.val.i.i, -1
  br i1 %.not.i.i, label %clause_DependsOnSplitLevel.exit, label %clause_LiteralIsLiteral.exit

clause_LiteralIsLiteral.exit:                     ; preds = %clause_LiteralPredicate.exit.i
  %i.ap = sub nsw i32 0, %.val.i.i
  %i.aq = load i32, ptr @symbol_TYPEMASK, align 4
  %i.ar = and i32 %i.aq, %i.ap
  %i.as = icmp ne i32 %i.ar, 2                    ; 2 uses
  %brmerge = or i1 %i.c, %i.as
  %not. = xor i1 %i.as, true
  %.mux = zext i1 %not. to i32
  br i1 %brmerge, label %clause_DependsOnSplitLevel.exit, label %bb.p

bb.o:                                             ; preds = %clause_IsEmptyClause.exit
  br i1 %i.c, label %clause_DependsOnSplitLevel.exit, label %bb.p

bb.p:                                             ; preds = %clause_LiteralIsLiteral.exit, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %.not11 = icmp eq i32 %i.au, 0
  br i1 %.not11, label %clause_DependsOnSplitLevel.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = icmp ugt i32 %i.b, 63
  %i.aw = add i32 %i.b, -64
  %i.ax = lshr i32 %i.aw, 6
  %i.ay = add nuw nsw i32 %i.ax, 1
  %storemerge.i.i = select i1 %i.av, i32 %i.ay, i32 0 ; 2 uses
  %.not.i17 = icmp ult i32 %storemerge.i.i, %i.au
  br i1 %.not.i17, label %bb.r, label %clause_DependsOnSplitLevel.exit

bb.r:                                             ; preds = %bb.q
  %i.az = and i32 %i.b, 63
  %i.ba = zext nneg i32 %storemerge.i.i to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = zext nneg i32 %i.az to i64
  %i.be = lshr i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i32 %i.bf, 1
  br label %clause_DependsOnSplitLevel.exit

clause_DependsOnSplitLevel.exit:                  ; preds = %bb.c, %clause_LiteralIsLiteral.exit, %bb.o, %clause_LiteralPredicate.exit.i, %clause_IsEmptyClause.exit.thread, %bb.r, %bb.q, %bb.p, %clause_CheckSplitLevel.exit, %bb.a
  %i.bh = phi i32 [ 0, %bb.p ], [ %.mux, %clause_LiteralIsLiteral.exit ], [ 0, %clause_CheckSplitLevel.exit ], [ 0, %bb.a ], [ 0, %bb.q ], [ 0, %clause_LiteralPredicate.exit.i ], [ %i.bg, %bb.r ], [ 0, %clause_IsEmptyClause.exit.thread ], [ 1, %bb.o ], [ 0, %bb.c ]
  ret i32 %i.bh
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clause_IsClause(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @clause_IsUnorderedClause(ptr noundef %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val23 = load i32, ptr %i.b, align 8           ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val3.i.i29 = load i32, ptr %i.c, align 4      ; 2 uses
  %.val4.i.i30 = load i32, ptr %i.d, align 8      ; 2 uses
  %i.e = add i32 %.val23, -1
  %i.f = add i32 %i.e, %.val3.i.i29
  %i.g = add i32 %i.f, %.val4.i.i30
  %.not1631 = icmp sgt i32 %.val23, %i.g
  br i1 %.not1631, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 56
  %i.i = sext i32 %.val23 to i64
  %.pre36 = load i32, ptr @fol_EQUALITY, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.val4.i.i41 = phi i32 [ %.val4.i.i30, %.lr.ph ], [ %.val4.i.i, %bb.e ]
  %.val3.i.i39 = phi i32 [ %.val3.i.i29, %.lr.ph ], [ %.val3.i.i, %bb.e ]
  %.val.i.i37 = phi i32 [ %.val23, %.lr.ph ], [ %.val.i.i, %bb.e ]
  %i.j = phi i32 [ %.pre36, %.lr.ph ], [ %i.r, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.val22 = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds [8 x i8], ptr %.val22, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %.val20 = load ptr, ptr %i.m, align 8           ; 2 uses
  %.val24 = load i32, ptr %.val20, align 8
  %.not26 = icmp eq i32 %.val24, %i.j
  br i1 %.not26, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.val20, i64 16
  %.val21 = load ptr, ptr %i.n, align 8           ; 2 uses
  %i.o = getelementptr i8, ptr %.val21, i64 8
  %.val21.val = load ptr, ptr %i.o, align 8
  %.val25.val = load ptr, ptr %.val21, align 8
  %i.p = getelementptr i8, ptr %.val25.val, i64 8
  %.val25.val.val = load ptr, ptr %i.p, align 8
  %i.q = tail call i32 @ord_Compare(ptr noundef %.val21.val, ptr noundef %.val25.val.val, ptr noundef %1, ptr noundef %2) #20
  %.not27 = icmp eq i32 %i.q, 1
  br i1 %.not27, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr @fol_EQUALITY, align 4
  %.val.i.i.pre = load i32, ptr %i.b, align 8
  %.val3.i.i.pre = load i32, ptr %i.c, align 4
  %.val4.i.i.pre = load i32, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.val4.i.i = phi i32 [ %.val4.i.i41, %bb.c ], [ %.val4.i.i.pre, %._crit_edge ] ; 2 uses
  %.val3.i.i = phi i32 [ %.val3.i.i39, %bb.c ], [ %.val3.i.i.pre, %._crit_edge ] ; 2 uses
  %.val.i.i = phi i32 [ %.val.i.i37, %bb.c ], [ %.val.i.i.pre, %._crit_edge ] ; 2 uses
  %i.r = phi i32 [ %i.j, %bb.c ], [ %.pre, %._crit_edge ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.s = add i32 %.val.i.i, -1
  %i.t = add i32 %i.s, %.val3.i.i
  %i.u = add i32 %i.t, %.val4.i.i
  %i.v = sext i32 %i.u to i64
  %.not16.not = icmp slt i64 %indvars.iv, %i.v
  br i1 %.not16.not, label %bb.c, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.3
}

declare i32 @ord_Compare(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @clause_ContainsPositiveEquations(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %.val4.i = load i32, ptr %i.a, align 8          ; 2 uses
  %i.b = icmp sgt i32 %.val4.i, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 68
  %.val8 = load i32, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val7 = load i32, ptr %i.d, align 8
  %i.e = add i32 %.val8, %.val7                   ; 2 uses
  %i.f = add nsw i32 %.val4.i, %i.e
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.g, align 8
  %i.h = load i32, ptr @fol_NOT, align 4
  %i.i = load i32, ptr @fol_EQUALITY, align 4
  %i.j = sext i32 %i.e to i64
  %i.k = sext i32 %i.f to i64
  br label %bb.c

bb.b:                                             ; preds = %clause_LiteralIsEquality.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
end_hunk_0
