Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-sort?download=true
inline.NumInlined: 797
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@inf_GetBackwardPartnerLits:bb.a
  %.042102 = phi ptr [ %.042, %term_IsDeclaration.exit.thread ], [ %.042100, %term_IsAtom.exit.thread ] ; 2 uses
  %i.q = getelementptr i8, ptr %.042102, i64 8
  %.042.val = load ptr, ptr %i.q, align 8         ; 2 uses
  %.val72 = load i32, ptr %.042.val, align 8      ; 2 uses
  %.not.i.i.i = icmp sgt i32 %.val72, -1
  br i1 %.not.i.i.i, label %term_IsDeclaration.exit.thread, label %term_IsAtom.exit.i

term_IsAtom.exit.i:                               ; preds = %.lr.ph103
  %i.r = sub nsw i32 0, %.val72                   ; 2 uses
  %i.s = and i32 %i.j, %i.r
  %.not.i77 = icmp eq i32 %i.s, 2
  br i1 %.not.i77, label %term_IsDeclaration.exit, label %term_IsDeclaration.exit.thread

term_IsDeclaration.exit:                          ; preds = %term_IsAtom.exit.i
  %i.t = lshr i32 %i.r, %i.k
  %i.u = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8
  %.not93 = icmp eq i32 %i.z, 1
  br i1 %.not93, label %bb.d, label %term_IsDeclaration.exit.thread

bb.d:                                             ; preds = %term_IsDeclaration.exit
  %i.aa = tail call ptr @sharing_NAtomDataList(ptr noundef nonnull %.042.val) #12 ; 2 uses
  %.not9498 = icmp eq ptr %i.aa, null
  br i1 %.not9498, label %term_IsDeclaration.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.r
  %.099 = phi ptr [ %.0.val76, %bb.r ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.099, i64 8
  %.0.val = load ptr, ptr %i.ab, align 8          ; 5 uses
  %i.ac = getelementptr i8, ptr %.0.val, i64 16
  %.val68 = load ptr, ptr %i.ac, align 8          ; 6 uses
  %i.ad = getelementptr i8, ptr %.val68, i64 48
  %.val70 = load i32, ptr %i.ad, align 8
  %i.ae = and i32 %.val70, 1
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %bb.r, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.af = getelementptr i8, ptr %.0.val, i64 24   ; 2 uses
  %.val73 = load ptr, ptr %i.af, align 8
  %.val73.val = load i32, ptr %.val73, align 8
  %i.ag = load i32, ptr @fol_NOT, align 4
  %.not95 = icmp eq i32 %.val73.val, %i.ag
  br i1 %.not95, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val61 = load i32, ptr %.0.val, align 8
  %i.ah = and i32 %.val61, 2
  %.not51 = icmp eq i32 %i.ah, 0
  br i1 %.not51, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.043.val57 = load ptr, ptr %i.m, align 8
  %.val67 = load i32, ptr %.043.val57, align 8
  %i.ai = icmp slt i32 %.val67, 1
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %.val68, i64 64
  %.val74 = load i32, ptr %i.aj, align 8
  %.not96 = icmp eq i32 %.val74, 0
  br i1 %.not96, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = tail call i32 @clause_HasSolvedConstraint(ptr noundef nonnull %.val68) #12
  %.not54 = icmp eq i32 %i.ak, 0
  br i1 %.not54, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val63 = load ptr, ptr %i.c, align 8           ; 2 uses
  %.val5.val.i.i = load i32, ptr %.val63, align 8 ; 2 uses
  %i.al = load i32, ptr @fol_NOT, align 4         ; 2 uses
  %.not.i.i78 = icmp eq i32 %.val5.val.i.i, %i.al
  br i1 %.not.i.i78, label %bb.k, label %clause_LiteralPredicate.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %.val63, i64 16
  %.val6.i.i = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.an, align 8
  %.val.pre.i = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_LiteralPredicate.exit

clause_LiteralPredicate.exit:                     ; preds = %bb.j, %bb.k
  %.val.i = phi i32 [ %.val.pre.i, %bb.k ], [ %.val5.val.i.i, %bb.j ]
  %.val62 = load ptr, ptr %i.af, align 8          ; 2 uses
  %.val5.val.i.i79 = load i32, ptr %.val62, align 8 ; 2 uses
  %.not.i.i80 = icmp eq i32 %.val5.val.i.i79, %i.al
  br i1 %.not.i.i80, label %bb.l, label %clause_LiteralPredicate.exit85

bb.l:                                             ; preds = %clause_LiteralPredicate.exit
  %i.ao = getelementptr i8, ptr %.val62, i64 16
  %.val6.i.i82 = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %.val6.i.i82, i64 8
  %.val6.val.i.i83 = load ptr, ptr %i.ap, align 8
  %.val.pre.i84 = load i32, ptr %.val6.val.i.i83, align 8
  br label %clause_LiteralPredicate.exit85

clause_LiteralPredicate.exit85:                   ; preds = %clause_LiteralPredicate.exit, %bb.l
  %.val.i81 = phi i32 [ %.val.pre.i84, %bb.l ], [ %.val5.val.i.i79, %clause_LiteralPredicate.exit ]
  %.not97 = icmp eq i32 %.val.i, %.val.i81
  br i1 %.not97, label %bb.r, label %.sink.split

bb.m:                                             ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %.val68, i64 56
  %.val.i86 = load ptr, ptr %i.aq, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val.i86, i64 %indvars.iv.i
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i87 = icmp eq ptr %i.as, %.0.val
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i87, label %clause_LiteralGetIndex.exit, label %bb.n, !llvm.loop !0

clause_LiteralGetIndex.exit:                      ; preds = %bb.n
  %i.at = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.au = getelementptr i8, ptr %.val68, i64 64
  %.val69 = load i32, ptr %i.au, align 8
  %i.av = icmp sgt i32 %.val69, %i.at
  br i1 %i.av, label %bb.o, label %bb.r

bb.o:                                             ; preds = %clause_LiteralGetIndex.exit
  %.043.val56 = load ptr, ptr %i.m, align 8
  %.val66 = load i32, ptr %.043.val56, align 8
  %i.aw = icmp sgt i32 %.val66, 0                 ; 2 uses
  %i.ax = zext i1 %i.aw to i32
  %i.ay = or i32 %4, %i.ax
  %or.cond.not = icmp eq i32 %i.ay, 0
  br i1 %or.cond.not, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %or.cond3 = and i1 %i.l, %i.aw
  br i1 %or.cond3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = tail call i32 @clause_HasOnlyVarsInConstraint(ptr noundef nonnull %.val68, ptr noundef %5, ptr noundef %6) #12
  %.not50 = icmp eq i32 %i.az, 0
  br i1 %.not50, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.o, %clause_LiteralPredicate.exit85
  %.sink = phi ptr [ %3, %clause_LiteralPredicate.exit85 ], [ %2, %bb.o ], [ %2, %bb.q ] ; 2 uses
  %i.ba = load ptr, ptr %.sink, align 8
  %i.bb = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %.0.val, ptr %i.bc, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  store ptr %i.bb, ptr %.sink, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.lr.ph, %clause_LiteralGetIndex.exit, %bb.p, %bb.q, %bb.f, %bb.h, %bb.i, %clause_LiteralPredicate.exit85
  %.0.val76 = load ptr, ptr %.099, align 8        ; 2 uses
  %.not94 = icmp eq ptr %.0.val76, null
  br i1 %.not94, label %term_IsDeclaration.exit.thread, label %.lr.ph, !llvm.loop !90

term_IsDeclaration.exit.thread:                   ; preds = %bb.r, %bb.d, %.lr.ph103, %term_IsAtom.exit.i, %term_IsDeclaration.exit
  %.042 = load ptr, ptr %.042102, align 8         ; 2 uses
  %.not92 = icmp eq ptr %.042, null
  br i1 %.not92, label %.loopexit, label %.lr.ph103, !llvm.loop !91

.loopexit:                                        ; preds = %term_IsDeclaration.exit.thread, %term_IsAtom.exit.thread, %term_IsAtom.exit
  %.val.i88 = load ptr, ptr %.043105, align 8     ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bi = add i64 %i.bh, %i.bg
  store i64 %i.bi, ptr @memory_FREEDBYTES, align 8
  %i.bj = load ptr, ptr %i.bd, align 8
  store ptr %i.bj, ptr %.043105, align 8
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.043105, ptr %i.bk, align 8
  %.not = icmp eq ptr %.val.i88, null
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !92

._crit_edge:                                      ; preds = %.loopexit, %clause_LiteralAtom.exit
  %i.bl = load ptr, ptr %2, align 8
  %i.bm = tail call ptr @list_DeleteDuplicates(ptr noundef %i.bl, ptr noundef nonnull @inf_LiteralsHaveSameSubtermAndAreFromSameClause) #12
  store ptr %i.bm, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_ForwardEmptySortPlusPlus(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !guid !97 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val86 = load i32, ptr %i.a, align 8           ; 3 uses
  %.not149 = icmp sgt i32 %.val86, 0
  br i1 %.not149, label %.lr.ph154, label %.critedge

.lr.ph154:                                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 68
  %i.d = getelementptr i8, ptr %0, i64 72
  %.164141 = add nsw i32 %.val86, -1              ; 2 uses
  %i.e = zext nneg i32 %.164141 to i64
  %5 = zext nneg i32 %.164141 to i64
  %i.f = zext nneg i32 %.val86 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph154, %list_Delete.exit133
  %indvars.iv162 = phi i64 [ 0, %.lr.ph154 ], [ %indvars.iv.next163, %list_Delete.exit133 ] ; 5 uses
  %.val90 = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val90, i64 %indvars.iv162
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %.val1.i = load ptr, ptr %i.i, align 8          ; 3 uses
  %.val5.val.i.i = load i32, ptr %.val1.i, align 8
  %i.j = load i32, ptr @fol_NOT, align 4
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.j
  %i.k = getelementptr i8, ptr %.val1.i, i64 16
  %.val6.i.i = load ptr, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.l, align 8    ; 3 uses
  br i1 %.not.i.i, label %clause_GetLiteralAtom.exit, label %clause_GetLiteralAtom.exit.thread

clause_GetLiteralAtom.exit:                       ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val6.val.i.i, i64 16
  %.val81 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val81, i64 8
  %.val81.val = load ptr, ptr %i.n, align 8       ; 2 uses
  %.val84 = load i32, ptr %.val81.val, align 8
  %i.o = icmp slt i32 %.val84, 1
  br i1 %i.o, label %list_Delete.exit133, label %clause_LiteralAtom.exit

clause_GetLiteralAtom.exit.thread:                ; preds = %bb.b
  %.val84137 = load i32, ptr %.val6.val.i.i, align 8
  %i.p = icmp slt i32 %.val84137, 1
  br i1 %i.p, label %list_Delete.exit133, label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %clause_GetLiteralAtom.exit, %clause_GetLiteralAtom.exit.thread
  %.val80.val = phi ptr [ %.val6.val.i.i, %clause_GetLiteralAtom.exit.thread ], [ %.val81.val, %clause_GetLiteralAtom.exit ] ; 2 uses
  %.val.i.i = load i32, ptr %i.a, align 8         ; 3 uses
  %.val3.i.i = load i32, ptr %i.c, align 4
  %.val4.i.i = load i32, ptr %i.d, align 8
  %i.q = add i32 %.val.i.i, -1
  %i.r = add i32 %i.q, %.val3.i.i
  %i.s = add i32 %i.r, %.val4.i.i                 ; 2 uses
  %.not157 = icmp sgt i32 %.val.i.i, %i.s
  br i1 %.not157, label %.critedge156.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %clause_LiteralAtom.exit
  %i.t = sext i32 %.val.i.i to i64
  %i.u = sext i32 %i.s to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clause_GetLiteralAtom.exit97
  %indvars.iv = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next, %clause_GetLiteralAtom.exit97 ] ; 3 uses
  %.val89 = load ptr, ptr %i.b, align 8
  %i.v = getelementptr inbounds [8 x i8], ptr %.val89, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %.val1.i91 = load ptr, ptr %i.x, align 8        ; 3 uses
  %.val5.val.i.i92 = load i32, ptr %.val1.i91, align 8
  %i.y = load i32, ptr @fol_NOT, align 4
  %.not.i.i93 = icmp eq i32 %.val5.val.i.i92, %i.y
  br i1 %.not.i.i93, label %bb.c, label %clause_GetLiteralAtom.exit97

bb.c:                                             ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %.val1.i91, i64 16
  %.val6.i.i95 = load ptr, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %.val6.i.i95, i64 8
  %.val6.val.i.i96 = load ptr, ptr %i.aa, align 8
  br label %clause_GetLiteralAtom.exit97

clause_GetLiteralAtom.exit97:                     ; preds = %.lr.ph, %bb.c
  %.0.i.i94 = phi ptr [ %.val6.val.i.i96, %bb.c ], [ %.val1.i91, %.lr.ph ]
  %.val78 = load i32, ptr %.val80.val, align 8
  %i.ab = tail call i32 @term_ContainsSymbol(ptr noundef %.0.i.i94, i32 noundef %.val78) #12
  %.not75 = icmp eq i32 %i.ab, 0                  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ac = icmp slt i64 %indvars.iv, %i.u
  %i.ad = and i1 %i.ac, %.not75
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %clause_GetLiteralAtom.exit97
  br i1 %.not75, label %._crit_edge..critedge156_crit_edge, label %list_Delete.exit133

._crit_edge..critedge156_crit_edge:               ; preds = %._crit_edge
  %i.ae = getelementptr i8, ptr %i.h, i64 24      ; 2 uses
  %.val87.pre = load ptr, ptr %i.ae, align 8
  br label %.critedge156

.critedge156.loopexit:                            ; preds = %clause_LiteralAtom.exit
  %i.af = getelementptr i8, ptr %i.h, i64 24
  br label %.critedge156

.critedge156:                                     ; preds = %.critedge156.loopexit, %._crit_edge..critedge156_crit_edge
  %i.ag = phi ptr [ %i.ae, %._crit_edge..critedge156_crit_edge ], [ %i.af, %.critedge156.loopexit ]
  %.val87 = phi ptr [ %.val87.pre, %._crit_edge..critedge156_crit_edge ], [ %.val1.i, %.critedge156.loopexit ]
  %i.ah = tail call fastcc ptr @inf_GetForwardPartnerLits(ptr %.val87, ptr noundef %1) ; 4 uses
  %.not139 = icmp eq ptr %i.ah, null
  br i1 %.not139, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.critedge156
  %.val82 = load ptr, ptr %i.ag, align 8          ; 3 uses
  %.val5.val.i98 = load i32, ptr %.val82, align 8
  %i.ai = load i32, ptr @fol_NOT, align 4
  %.not.i99 = icmp eq i32 %.val5.val.i98, %i.ai
  br i1 %.not.i99, label %bb.e, label %clause_LiteralAtom.exit103

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %.val82, i64 16
  %.val6.i101 = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %.val6.i101, i64 8
  %.val6.val.i102 = load ptr, ptr %i.ak, align 8
  br label %clause_LiteralAtom.exit103

clause_LiteralAtom.exit103:                       ; preds = %bb.d, %bb.e
  %.0.i100 = phi ptr [ %.val6.val.i102, %bb.e ], [ %.val82, %bb.d ]
  %i.al = icmp samesign ult i64 %indvars.iv162, %5
  br i1 %i.al, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %clause_LiteralAtom.exit103, %sort_Intersect.exit
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %sort_Intersect.exit ], [ %i.e, %clause_LiteralAtom.exit103 ] ; 3 uses
  %.0143 = phi ptr [ %.1, %sort_Intersect.exit ], [ null, %clause_LiteralAtom.exit103 ] ; 4 uses
  %.059142 = phi ptr [ %.160, %sort_Intersect.exit ], [ null, %clause_LiteralAtom.exit103 ] ; 2 uses
  %.val88 = load ptr, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %indvars.iv159
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %.val1.i104 = load ptr, ptr %i.ao, align 8      ; 3 uses
  %.val5.val.i.i105 = load i32, ptr %.val1.i104, align 8
  %i.ap = load i32, ptr @fol_NOT, align 4
  %.not.i.i106 = icmp eq i32 %.val5.val.i.i105, %i.ap
  br i1 %.not.i.i106, label %bb.f, label %clause_GetLiteralAtom.exit110

bb.f:                                             ; preds = %.lr.ph145
  %i.aq = getelementptr i8, ptr %.val1.i104, i64 16
  %.val6.i.i108 = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %.val6.i.i108, i64 8
  %.val6.val.i.i109 = load ptr, ptr %i.ar, align 8
  br label %clause_GetLiteralAtom.exit110

clause_GetLiteralAtom.exit110:                    ; preds = %.lr.ph145, %bb.f
  %.0.i.i107 = phi ptr [ %.val6.val.i.i109, %bb.f ], [ %.val1.i104, %.lr.ph145 ] ; 2 uses
  %i.as = getelementptr i8, ptr %.0.i.i107, i64 16
  %.val79 = load ptr, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.val79, i64 8
  %.val79.val = load ptr, ptr %i.at, align 8
  %i.au = icmp eq ptr %.val79.val, %.val80.val
  br i1 %i.au, label %bb.g, label %sort_Intersect.exit

bb.g:                                             ; preds = %clause_GetLiteralAtom.exit110
  %i.av = inttoptr i64 %indvars.iv159 to ptr
  %i.aw = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  store ptr %.059142, ptr %i.aw, align 8
  %.val77 = load i32, ptr %.0.i.i107, align 8
  %i.ay = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val77) #12 ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i111, label %sort_Intersect.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not16.i.i = icmp eq ptr %.0143, null
  br i1 %.not16.i.i, label %sort_Intersect.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.i, label %.preheader.i.i, !llvm.loop !2

bb.i:                                             ; preds = %.preheader.i.i
  store ptr %.0143, ptr %.012.i.i, align 8
  br label %sort_Intersect.exit

sort_Intersect.exit:                              ; preds = %bb.i, %bb.h, %bb.g, %clause_GetLiteralAtom.exit110
  %.160 = phi ptr [ %.059142, %clause_GetLiteralAtom.exit110 ], [ %i.aw, %bb.g ], [ %i.aw, %bb.h ], [ %i.aw, %bb.i ] ; 2 uses
  %.1 = phi ptr [ %.0143, %clause_GetLiteralAtom.exit110 ], [ %.0143, %bb.g ], [ %i.ay, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, -1 ; 2 uses
  %i.az = icmp sgt i64 %indvars.iv.next160, %indvars.iv162
  br i1 %i.az, label %.lr.ph145, label %._crit_edge146, !llvm.loop !95

._crit_edge146:                                   ; preds = %sort_Intersect.exit, %clause_LiteralAtom.exit103
  %.059.lcssa = phi ptr [ null, %clause_LiteralAtom.exit103 ], [ %.160, %sort_Intersect.exit ]
  %.0.lcssa = phi ptr [ null, %clause_LiteralAtom.exit103 ], [ %.1, %sort_Intersect.exit ] ; 3 uses
  %i.ba = inttoptr i64 %indvars.iv162 to ptr
  %i.bb = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %i.bc, align 8
  store ptr %.059.lcssa, ptr %i.bb, align 8
  %.val76 = load i32, ptr %.0.i100, align 8
  %i.bd = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val76) #12 ; 4 uses
  %.not.i.i113 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i113, label %sort_Intersect.exit120, label %bb.j

bb.j:                                             ; preds = %._crit_edge146
  %.not16.i.i114 = icmp eq ptr %.0.lcssa, null
  br i1 %.not16.i.i114, label %sort_Intersect.exit120, label %.preheader.i.i115

.preheader.i.i115:                                ; preds = %bb.j, %.preheader.i.i115
  %.012.i.i116 = phi ptr [ %.012.val15.i.i117, %.preheader.i.i115 ], [ %i.bd, %bb.j ] ; 2 uses
  %.012.val15.i.i117 = load ptr, ptr %.012.i.i116, align 8 ; 2 uses
  %.not17.i.i118 = icmp eq ptr %.012.val15.i.i117, null
  br i1 %.not17.i.i118, label %bb.k, label %.preheader.i.i115, !llvm.loop !2

bb.k:                                             ; preds = %.preheader.i.i115
  store ptr %.0.lcssa, ptr %.012.i.i116, align 8
  br label %sort_Intersect.exit120

sort_Intersect.exit120:                           ; preds = %._crit_edge146, %bb.j, %bb.k
  %.0.i.i119 = phi ptr [ %i.bd, %bb.k ], [ %.0.lcssa, %._crit_edge146 ], [ %i.bd, %bb.j ] ; 3 uses
  %i.be = tail call ptr @list_PointerDeleteDuplicates(ptr noundef %.0.i.i119) #12 ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sort_Intersect.exit120, %sort_Intersect.exit.i
  %.013.i = phi ptr [ %.0.val9.i, %sort_Intersect.exit.i ], [ %i.ah, %sort_Intersect.exit120 ] ; 2 uses
  %.0812.i = phi ptr [ %.0.i.i.i, %sort_Intersect.exit.i ], [ null, %sort_Intersect.exit120 ] ; 3 uses
  %i.bf = getelementptr i8, ptr %.013.i, i64 8
  %.0.val.i = load ptr, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %.0.val.i, i64 24
  %.val.i = load ptr, ptr %i.bg, align 8          ; 2 uses
  %.val5.val.i.i.i = load i32, ptr %.val.i, align 8 ; 2 uses
  %i.bh = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i = icmp eq i32 %.val5.val.i.i.i, %i.bh
  br i1 %.not.i.i.i, label %bb.l, label %clause_LiteralPredicate.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr i8, ptr %.val.i, i64 16
  %.val6.i.i.i = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.val6.i.i.i, i64 8
  %.val6.val.i.i.i = load ptr, ptr %i.bj, align 8
  %.val.pre.i.i = load i32, ptr %.val6.val.i.i.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %bb.l, %.lr.ph.i
  %.val.i.i121 = phi i32 [ %.val.pre.i.i, %bb.l ], [ %.val5.val.i.i.i, %.lr.ph.i ]
  %i.bk = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val.i.i121) #12 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i10.i, label %sort_Intersect.exit.i, label %bb.m

bb.m:                                             ; preds = %clause_LiteralPredicate.exit.i
  %.not16.i.i.i = icmp eq ptr %.0812.i, null
  br i1 %.not16.i.i.i, label %sort_Intersect.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.m, %.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %.012.val15.i.i.i, %.preheader.i.i.i ], [ %i.bk, %bb.m ] ; 2 uses
  %.012.val15.i.i.i = load ptr, ptr %.012.i.i.i, align 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.012.val15.i.i.i, null
  br i1 %.not17.i.i.i, label %bb.n, label %.preheader.i.i.i, !llvm.loop !2

bb.n:                                             ; preds = %.preheader.i.i.i
  store ptr %.0812.i, ptr %.012.i.i.i, align 8
  br label %sort_Intersect.exit.i

sort_Intersect.exit.i:                            ; preds = %bb.n, %bb.m, %clause_LiteralPredicate.exit.i
  %.0.i.i.i = phi ptr [ %i.bk, %bb.n ], [ %.0812.i, %clause_LiteralPredicate.exit.i ], [ %i.bk, %bb.m ] ; 4 uses
  %.0.val9.i = load ptr, ptr %.013.i, align 8     ; 2 uses
  %.not.i122 = icmp eq ptr %.0.val9.i, null
  br i1 %.not.i122, label %inf_GetSortFromLits.exit, label %.lr.ph.i, !llvm.loop !4

inf_GetSortFromLits.exit:                         ; preds = %sort_Intersect.exit.i
  %i.bl = tail call ptr @list_PointerDeleteDuplicates(ptr noundef %.0.i.i.i) #12 ; 0 uses
  %i.bm = tail call ptr @sort_TheoryComputeAllSubsortHits(ptr noundef %2, ptr noundef %.0.i.i.i, ptr noundef %.0.i.i119) #12
  tail call void @sort_Delete(ptr noundef %.0.i.i.i) #12
  tail call void @sort_Delete(ptr noundef %.0.i.i119) #12
  %i.bn = tail call fastcc ptr @inf_InternWeakening(ptr noundef %0, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ah, ptr noundef null, ptr noundef %i.bm, ptr noundef %3, ptr noundef %4)
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %inf_GetSortFromLits.exit, %.lr.ph.i125
  %.07.i = phi ptr [ %.0.val.i126, %.lr.ph.i125 ], [ %i.bb, %inf_GetSortFromLits.exit ] ; 3 uses
  %.0.val.i126 = load ptr, ptr %.07.i, align 8    ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = sext i32 %i.bq to i64
  %i.bs = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bt = add i64 %i.bs, %i.br
  store i64 %i.bt, ptr @memory_FREEDBYTES, align 8
  %i.bu = load ptr, ptr %i.bo, align 8
  store ptr %i.bu, ptr %.07.i, align 8
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.bv, align 8
  %.not.i127 = icmp eq ptr %.0.val.i126, null
  br i1 %.not.i127, label %.lr.ph.i129, label %.lr.ph.i125, !llvm.loop !3

.lr.ph.i129:                                      ; preds = %.lr.ph.i125, %.lr.ph.i129
  %.07.i130 = phi ptr [ %.0.val.i131, %.lr.ph.i129 ], [ %i.ah, %.lr.ph.i125 ] ; 3 uses
  %.0.val.i131 = load ptr, ptr %.07.i130, align 8 ; 2 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = sext i32 %i.by to i64
  %i.ca = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cb = add i64 %i.ca, %i.bz
  store i64 %i.cb, ptr @memory_FREEDBYTES, align 8
  %i.cc = load ptr, ptr %i.bw, align 8
  store ptr %i.cc, ptr %.07.i130, align 8
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i130, ptr %i.cd, align 8
  %.not.i132 = icmp eq ptr %.0.val.i131, null
  br i1 %.not.i132, label %.critedge, label %.lr.ph.i129, !llvm.loop !3

list_Delete.exit133:                              ; preds = %clause_GetLiteralAtom.exit.thread, %._crit_edge, %clause_GetLiteralAtom.exit
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %.not = icmp samesign ult i64 %indvars.iv.next163, %i.f
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !96

.critedge:                                        ; preds = %list_Delete.exit133, %.lr.ph.i129, %.critedge156, %bb.a
  %.068.lcssa = phi ptr [ null, %bb.a ], [ %i.bn, %.lr.ph.i129 ], [ null, %.critedge156 ], [ null, %list_Delete.exit133 ]
  ret ptr %.068.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @inf_BackwardEmptySortPlusPlus(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !guid !102 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val.i.i = load i32, ptr %i.c, align 8         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 68
  %.val3.i.i = load i32, ptr %i.d, align 4        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 72
  %.val4.i.i = load i32, ptr %i.e, align 8        ; 2 uses
  %i.f = add i32 %.val3.i.i, %.val.i.i            ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = add i32 %i.g, %.val4.i.i
  %.not190 = icmp sgt i32 %i.f, %i.h
  br i1 %.not190, label %._crit_edge195, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 56
  %i.j = load i32, ptr @symbol_TYPEMASK, align 4
  %i.k = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.l = sext i32 %.val.i.i to i64
  %i.m = sext i32 %.val3.i.i to i64
  %i.n = add nsw i64 %i.l, %i.m
  %i.o = add i32 %.val4.i.i, %.val.i.i
  %i.p = add i32 %i.o, %.val3.i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph194, %clause_LiteralIsSort.exit.thread
  %indvars.iv202 = phi i64 [ %i.n, %.lr.ph194 ], [ %indvars.iv.next203, %clause_LiteralIsSort.exit.thread ] ; 2 uses
  %.075191 = phi ptr [ null, %.lr.ph194 ], [ %.3, %clause_LiteralIsSort.exit.thread ] ; 8 uses
  %.val85 = load ptr, ptr %i.i, align 8
  %i.q = getelementptr inbounds [8 x i8], ptr %.val85, i64 %indvars.iv202
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %.val96 = load ptr, ptr %i.s, align 8           ; 3 uses
  %.val5.val.i = load i32, ptr %.val96, align 8   ; 2 uses
  %i.t = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.t
  %.val97 = load i32, ptr %i.r, align 8
  %i.u = and i32 %.val97, 2
  %.not77 = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not.i, label %clause_LiteralAtom.exit, label %clause_LiteralAtom.exit.thread

clause_LiteralAtom.exit:                          ; preds = %bb.b
  br i1 %.not77, label %clause_LiteralIsSort.exit.thread, label %bb.c

clause_LiteralAtom.exit.thread:                   ; preds = %bb.b
  br i1 %.not77, label %clause_LiteralIsSort.exit.thread, label %clause_LiteralPredicate.exit.i

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %i.v = getelementptr i8, ptr %.val96, i64 16
  %.val6.i = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.w, align 8      ; 2 uses
  %.val.pre.i.i = load i32, ptr %.val6.val.i, align 8
  br label %clause_LiteralPredicate.exit.i

clause_LiteralPredicate.exit.i:                   ; preds = %clause_LiteralAtom.exit.thread, %bb.c
  %.0.i165167 = phi ptr [ %.val6.val.i, %bb.c ], [ %.val96, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.val.i.i106 = phi i32 [ %.val.pre.i.i, %bb.c ], [ %.val5.val.i, %clause_LiteralAtom.exit.thread ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.val.i.i106, -1
  br i1 %.not.i.i, label %clause_LiteralIsSort.exit.thread, label %symbol_IsPredicate.exit.i

symbol_IsPredicate.exit.i:                        ; preds = %clause_LiteralPredicate.exit.i
  %i.x = sub nsw i32 0, %.val.i.i106              ; 2 uses
  %i.y = and i32 %i.j, %i.x
  %.not.i107 = icmp eq i32 %i.y, 2
  br i1 %.not.i107, label %clause_LiteralIsSort.exit, label %clause_LiteralIsSort.exit.thread

clause_LiteralIsSort.exit:                        ; preds = %symbol_IsPredicate.exit.i
  %i.z = lshr i32 %i.x, %i.k
  %i.aa = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 8
  %.not169 = icmp eq i32 %i.af, 1
  br i1 %.not169, label %bb.d, label %clause_LiteralIsSort.exit.thread

bb.d:                                             ; preds = %clause_LiteralIsSort.exit
  %i.ag = getelementptr i8, ptr %.0.i165167, i64 16
  %.val94 = load ptr, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %.val94, i64 8
  %.val94.val = load ptr, ptr %i.ah, align 8
  %.val99 = load i32, ptr %.val94.val, align 8
  %i.ai = icmp slt i32 %.val99, 1
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val103 = load i32, ptr %i.c, align 8
  %.not170 = icmp eq i32 %.val103, 0
  br i1 %.not170, label %bb.f, label %clause_LiteralIsSort.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  store ptr null, ptr %i.a, align 8
  call fastcc void @inf_GetBackwardPartnerLits(ptr noundef nonnull %i.r, ptr noundef %1, ptr noundef %i.b, ptr noundef %i.a, i32 noundef 1, ptr noundef %3, ptr noundef %4)
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = tail call noundef ptr @memory_Malloc(i32 noundef 16) #12 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.r, ptr %i.al, align 8
  store ptr %i.aj, ptr %i.ak, align 8
  store ptr %i.ak, ptr %i.a, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %sort_Intersect.exit.i
  %.013.i = phi ptr [ %.0.val9.i, %sort_Intersect.exit.i ], [ %i.ak, %bb.f ] ; 2 uses
  %.0812.i = phi ptr [ %.0.i.i.i, %sort_Intersect.exit.i ], [ null, %bb.f ] ; 3 uses
  %i.am = getelementptr i8, ptr %.013.i, i64 8
  %.0.val.i = load ptr, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %.0.val.i, i64 24
  %.val.i = load ptr, ptr %i.an, align 8          ; 2 uses
  %.val5.val.i.i.i108 = load i32, ptr %.val.i, align 8 ; 2 uses
  %i.ao = load i32, ptr @fol_NOT, align 4
  %.not.i.i.i109 = icmp eq i32 %.val5.val.i.i.i108, %i.ao
  br i1 %.not.i.i.i109, label %bb.g, label %clause_LiteralPredicate.exit.i110

bb.g:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr i8, ptr %.val.i, i64 16
  %.val6.i.i.i113 = load ptr, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %.val6.i.i.i113, i64 8
  %.val6.val.i.i.i114 = load ptr, ptr %i.aq, align 8
  %.val.pre.i.i115 = load i32, ptr %.val6.val.i.i.i114, align 8
  br label %clause_LiteralPredicate.exit.i110

clause_LiteralPredicate.exit.i110:                ; preds = %bb.g, %.lr.ph.i
  %.val.i.i111 = phi i32 [ %.val.pre.i.i115, %bb.g ], [ %.val5.val.i.i.i108, %.lr.ph.i ]
  %i.ar = tail call ptr @sort_TheorySortOfSymbol(ptr noundef %2, i32 noundef %.val.i.i111) #12 ; 4 uses
  %.not.i.i10.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i10.i, label %sort_Intersect.exit.i, label %bb.h

bb.h:                                             ; preds = %clause_LiteralPredicate.exit.i110
  %.not16.i.i.i = icmp eq ptr %.0812.i, null
  br i1 %.not16.i.i.i, label %sort_Intersect.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %.012.val15.i.i.i, %.preheader.i.i.i ], [ %i.ar, %bb.h ] ; 2 uses
  %.012.val15.i.i.i = load ptr, ptr %.012.i.i.i, align 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.012.val15.i.i.i, null
  br i1 %.not17.i.i.i, label %bb.i, label %.preheader.i.i.i, !llvm.loop !2

bb.i:                                             ; preds = %.preheader.i.i.i
  store ptr %.0812.i, ptr %.012.i.i.i, align 8
  br label %sort_Intersect.exit.i

sort_Intersect.exit.i:                            ; preds = %bb.i, %bb.h, %clause_LiteralPredicate.exit.i110
  %.0.i.i.i = phi ptr [ %i.ar, %bb.i ], [ %.0812.i, %clause_LiteralPredicate.exit.i110 ], [ %i.ar, %bb.h ] ; 4 uses
  %.0.val9.i = load ptr, ptr %.013.i, align 8     ; 2 uses
  %.not.i112 = icmp eq ptr %.0.val9.i, null
  br i1 %.not.i112, label %inf_GetSortFromLits.exit, label %.lr.ph.i, !llvm.loop !4

inf_GetSortFromLits.exit:                         ; preds = %sort_Intersect.exit.i
  %i.as = tail call ptr @list_PointerDeleteDuplicates(ptr noundef %.0.i.i.i) #12 ; 0 uses
  %.promoted = load ptr, ptr %i.b, align 8        ; 2 uses
  %.not171183 = icmp eq ptr %.promoted, null
  br i1 %.not171183, label %.lr.ph.i155.preheader, label %.lr.ph186

.lr.ph186:                                        ; preds = %inf_GetSortFromLits.exit, %list_Delete.exit
  %.176185 = phi ptr [ %.2, %list_Delete.exit ], [ %.075191, %inf_GetSortFromLits.exit ] ; 4 uses
  %.val.i153182184 = phi ptr [ %.val.i153, %list_Delete.exit ], [ %.promoted, %inf_GetSortFromLits.exit ] ; 4 uses
  %i.at = getelementptr i8, ptr %.val.i153182184, i64 8
  %.val91 = load ptr, ptr %i.at, align 8          ; 3 uses
  %i.au = getelementptr i8, ptr %.val91, i64 16
  %.val100 = load ptr, ptr %i.au, align 8         ; 5 uses
  %i.av = getelementptr i8, ptr %.val91, i64 24
  %.val95 = load ptr, ptr %i.av, align 8          ; 3 uses
  %.val5.val.i116 = load i32, ptr %.val95, align 8
  %i.aw = load i32, ptr @fol_NOT, align 4
  %.not.i117 = icmp eq i32 %.val5.val.i116, %i.aw
  br i1 %.not.i117, label %bb.j, label %clause_LiteralAtom.exit121

bb.j:                                             ; preds = %.lr.ph186
  %i.ax = getelementptr i8, ptr %.val95, i64 16
  %.val6.i119 = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %.val6.i119, i64 8
  %.val6.val.i120 = load ptr, ptr %i.ay, align 8
  br label %clause_LiteralAtom.exit121

clause_LiteralAtom.exit121:                       ; preds = %.lr.ph186, %bb.j
  %.0.i118 = phi ptr [ %.val6.val.i120, %bb.j ], [ %.val95, %.lr.ph186 ] ; 3 uses
  %i.az = getelementptr i8, ptr %.val100, i64 56  ; 3 uses
  %.val.i122 = load ptr, ptr %i.az, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %clause_LiteralAtom.exit121
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %clause_LiteralAtom.exit121 ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val.i122, i64 %indvars.iv.i
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not.i123 = icmp eq ptr %i.bb, %.val91
end_hunk_0
