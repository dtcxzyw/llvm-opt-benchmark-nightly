Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/foldfg?download=true
inline.NumInlined: 1182
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@fol_PrintPrecedence:bb.a
  %i.t = tail call noundef ptr @memory_Malloc(i32 noundef 16) #17 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8
  store ptr %.01942, ptr %i.t, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre51 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread:                    ; preds = %symbol_IsPredicate.exit, %bb.c, %bb.b, %bb.d, %symbol_IsFunction.exit.thread34
  %i.v = phi i32 [ %i.e, %symbol_IsFunction.exit.thread34 ], [ %.pre51, %bb.d ], [ %i.e, %symbol_IsPredicate.exit ], [ %i.e, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.w = phi ptr [ %i.f, %symbol_IsFunction.exit.thread34 ], [ %.pre, %bb.d ], [ %i.f, %symbol_IsPredicate.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.c ]
  %.1 = phi ptr [ %.01942, %symbol_IsFunction.exit.thread34 ], [ %i.t, %bb.d ], [ %.01942, %symbol_IsPredicate.exit ], [ %.01942, %bb.b ], [ %.01942, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = sext i32 %i.v to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %symbol_IsFunction.exit.thread, %.preheader
  %.019.lcssa = phi ptr [ null, %.preheader ], [ %.1, %symbol_IsFunction.exit.thread ]
  %i.z = tail call ptr @symbol_SortByPrecedence(ptr noundef %.019.lcssa, ptr noundef %0) #17 ; 3 uses
  %cond = icmp eq ptr %i.z, null
  br i1 %cond, label %list_Delete.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %._crit_edge
  %i.aa = load i32, ptr @symbol_TYPESTATBITS, align 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph47, %bb.f
  %.01845 = phi ptr [ %i.z, %.lr.ph47 ], [ %.018.val27.pre, %bb.f ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.01845, i64 8
  %.018.val = load ptr, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %.018.val to i64
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = ashr i32 %i.ae, %i.aa
  %i.ag = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr @stdout, align 8
  %i.am = tail call i32 @fputs(ptr noundef %i.ak, ptr noundef %i.al) ; 0 uses
  %.018.val28 = load ptr, ptr %.01845, align 8
  %.not37 = icmp eq ptr %.018.val28, null
  br i1 %.not37, label %.lr.ph.i.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr @stdout, align 8
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.44, i64 3, i64 1, ptr %i.an) ; 0 uses
  %.018.val27.pre = load ptr, ptr %.01845, align 8 ; 2 uses
  %.not36 = icmp eq ptr %.018.val27.pre, null
  br i1 %.not36, label %.lr.ph.i.preheader, label %bb.e, !llvm.loop !35

.lr.ph.i.preheader:                               ; preds = %bb.e, %bb.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.z, %.lr.ph.i.preheader ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = load i64, ptr @memory_FREEDBYTES, align 8
  %i.at = add i64 %i.as, %i.ar
  store i64 %i.at, ptr @memory_FREEDBYTES, align 8
  %i.au = load ptr, ptr %i.ao, align 8
  store ptr %i.au, ptr %.07.i, align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.av, align 8
  %.not.i31 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i31, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !1

list_Delete.exit:                                 ; preds = %.lr.ph.i, %._crit_edge, %bb.a
  ret void
}

declare i32 @symbol_SignatureExists() local_unnamed_addr #1

declare ptr @symbol_SortByPrecedence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @fol_FPrintPrecedence(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @symbol_SignatureExists() #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %list_Delete.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i32, ptr @symbol_TYPEMASK, align 4
  %.pre74 = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %symbol_IsFunction.exit.thread
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.v, %symbol_IsFunction.exit.thread ] ; 4 uses
  %i.f = phi ptr [ %.pre74, %.lr.ph ], [ %i.w, %symbol_IsFunction.exit.thread ] ; 5 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %symbol_IsFunction.exit.thread ] ; 2 uses
  %.03565 = phi ptr [ null, %.lr.ph ], [ %.136, %symbol_IsFunction.exit.thread ] ; 5 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not44 = icmp eq ptr %i.h, null
  br i1 %.not44, label %symbol_IsFunction.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8              ; 6 uses
  %.not.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i, label %symbol_IsFunction.exit.thread, label %symbol_IsPredicate.exit

symbol_IsPredicate.exit:                          ; preds = %bb.c
  %i.k = sub nsw i32 0, %i.j
  %i.l = and i32 %i.d, %i.k
  %i.m = icmp ult i32 %i.l, 3
  br i1 %i.m, label %symbol_IsFunction.exit.thread57, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread57:                  ; preds = %symbol_IsPredicate.exit
  %i.n = load i32, ptr @fol_EQUALITY, align 4
  %.not.i53 = icmp ne i32 %i.j, %i.n
  %i.o = load i32, ptr @fol_TRUE, align 4
  %.not4.i = icmp ne i32 %i.j, %i.o
  %or.cond.i.not64 = select i1 %.not.i53, i1 %.not4.i, i1 false
  %i.p = load i32, ptr @fol_FALSE, align 4
  %i.q = icmp ne i32 %i.j, %i.p
  %narrow.i.not = select i1 %or.cond.i.not64, i1 %i.q, i1 false
  br i1 %narrow.i.not, label %bb.d, label %symbol_IsFunction.exit.thread

bb.d:                                             ; preds = %symbol_IsFunction.exit.thread57
  %i.r = sext i32 %i.j to i64
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call noundef ptr @memory_Malloc(i32 noundef 16) #17 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.u, align 8
  store ptr %.03565, ptr %i.t, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre75 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread:                    ; preds = %symbol_IsPredicate.exit, %bb.c, %bb.b, %bb.d, %symbol_IsFunction.exit.thread57
  %i.v = phi i32 [ %i.e, %symbol_IsFunction.exit.thread57 ], [ %.pre75, %bb.d ], [ %i.e, %symbol_IsPredicate.exit ], [ %i.e, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.w = phi ptr [ %i.f, %symbol_IsFunction.exit.thread57 ], [ %.pre, %bb.d ], [ %i.f, %symbol_IsPredicate.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.c ]
  %.136 = phi ptr [ %.03565, %symbol_IsFunction.exit.thread57 ], [ %i.t, %bb.d ], [ %.03565, %symbol_IsPredicate.exit ], [ %.03565, %bb.b ], [ %.03565, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = sext i32 %i.v to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %symbol_IsFunction.exit.thread, %.preheader
  %.035.lcssa = phi ptr [ null, %.preheader ], [ %.136, %symbol_IsFunction.exit.thread ]
  %i.z = tail call ptr @symbol_SortByPrecedence(ptr noundef %.035.lcssa, ptr noundef %1) #17 ; 3 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.45, i64 15, i64 1, ptr %0) ; 0 uses
  %.not5967 = icmp eq ptr %i.z, null
  br i1 %.not5967, label %._crit_edge72.thread, label %.lr.ph71

._crit_edge72.thread:                             ; preds = %._crit_edge
  %fwrite3980 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 2, i64 1, ptr %0) ; 0 uses
  br label %list_Delete.exit

.lr.ph71:                                         ; preds = %._crit_edge
  %i.aa = load i32, ptr @symbol_TYPESTATBITS, align 4 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph71, %bb.j
  %.169 = phi i32 [ 0, %.lr.ph71 ], [ %.2, %bb.j ] ; 2 uses
  %.03468 = phi ptr [ %i.z, %.lr.ph71 ], [ %.034.val50, %bb.j ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.03468, i64 8    ; 2 uses
  %.034.val49 = load ptr, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %.034.val49 to i64
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = ashr i32 %i.ae, %i.aa
  %i.ag = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = tail call i32 @putc(i32 noundef 40, ptr noundef %0) ; 0 uses
  %i.al = load ptr, ptr %i.aj, align 8
  %i.am = tail call i32 @fputs(ptr noundef %i.al, ptr noundef %0) ; 0 uses
  %i.an = tail call i32 @putc(i32 noundef 44, ptr noundef %0) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %i.ap) #17 ; 0 uses
  %i.ar = tail call i32 @putc(i32 noundef 44, ptr noundef %0) ; 0 uses
  %.034.val48 = load ptr, ptr %i.ab, align 8
  %i.as = ptrtoint ptr %.034.val48 to i64
  %i.at = trunc i64 %i.as to i32
  %i.au = sub nsw i32 0, %i.at
  %i.av = ashr i32 %i.au, %i.aa
  %i.aw = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = and i32 %i.bb, 8
  %.not40 = icmp eq i32 %i.bc, 0
  %2 = and i32 %i.bb, 16
  %.not41 = icmp eq i32 %2, 0
  %3 = select i1 %.not41, i32 108, i32 109
  %i.bd = select i1 %.not40, i32 %3, i32 114
  %i.be = tail call i32 @putc(i32 noundef %i.bd, ptr noundef %0) ; 0 uses
  %i.bf = tail call i32 @putc(i32 noundef 41, ptr noundef %0) ; 0 uses
  %.034.val51 = load ptr, ptr %.03468, align 8
  %.not60 = icmp eq ptr %.034.val51, null
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = tail call i32 @putc(i32 noundef 44, ptr noundef %0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bh = icmp sgt i32 %.169, 15
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %fwrite43 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bi = add nsw i32 %.169, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.2 = phi i32 [ 0, %bb.h ], [ %i.bi, %bb.i ]
  %.034.val50 = load ptr, ptr %.03468, align 8    ; 2 uses
  %.not59 = icmp eq ptr %.034.val50, null
  br i1 %.not59, label %._crit_edge72, label %bb.e, !llvm.loop !37

._crit_edge72:                                    ; preds = %bb.j
  %fwrite39 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 2, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge72, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.z, %._crit_edge72 ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bo = add i64 %i.bn, %i.bm
  store i64 %i.bo, ptr @memory_FREEDBYTES, align 8
  %i.bp = load ptr, ptr %i.bj, align 8
  store ptr %i.bp, ptr %.07.i, align 8
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.bq, align 8
  %.not.i54 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i54, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !1

list_Delete.exit:                                 ; preds = %.lr.ph.i, %._crit_edge72.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fol_FPrintDFGProblem(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.48, i64 25, i64 1, ptr %0) ; 0 uses
  %fwrite19 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 22, i64 1, ptr %0) ; 0 uses
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %1) #17 ; 0 uses
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %2) #17 ; 0 uses
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %3) #17 ; 0 uses
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %4) #17 ; 0 uses
  %fwrite20 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 14, i64 1, ptr %0) ; 0 uses
  %fwrite21 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 17, i64 1, ptr %0) ; 0 uses
  tail call void @fol_FPrintDFGSignature(ptr noundef %0)
  %fwrite22 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 14, i64 1, ptr %0) ; 0 uses
  tail call fastcc void @fol_FPrintFormulaList(ptr noundef %0, ptr noundef %5, ptr noundef nonnull @.str.55)
  tail call fastcc void @fol_FPrintFormulaList(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.56)
  %fwrite23 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 13, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fol_FPrintFormulaList(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.70, i64 17, i64 1, ptr %0) ; 0 uses
  %i.a = tail call i32 @fputs(ptr noundef %2, ptr noundef %0) ; 0 uses
  %fwrite12 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 3, i64 1, ptr %0) ; 0 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi ptr [ %.0.val16, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %fwrite14 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 9, i64 1, ptr %0) ; 0 uses
  %i.b = getelementptr i8, ptr %.018, i64 8
  %.0.val = load ptr, ptr %i.b, align 8
  tail call void @fol_FPrintDFG(ptr noundef %0, ptr noundef %.0.val)
  %fwrite15 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 3, i64 1, ptr %0) ; 0 uses
  %.0.val16 = load ptr, ptr %.018, align 8        ; 2 uses
  %.not = icmp eq ptr %.0.val16, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %fwrite13 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 14, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @fol_AssocEquation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.val74 = load i32, ptr %0, align 8
  %i.a = load i32, ptr @fol_EQUALITY, align 4
  %.not = icmp eq i32 %.val74, %i.a
  br i1 %.not, label %bb.b, label %.thread83

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val65 = load ptr, ptr %i.b, align 8           ; 2 uses
  %i.c = getelementptr i8, ptr %.val65, i64 8
  %.val65.val = load ptr, ptr %i.c, align 8       ; 3 uses
  %.val73.val = load ptr, ptr %.val65, align 8
  %i.d = getelementptr i8, ptr %.val73.val, i64 8
  %.val73.val.val = load ptr, ptr %i.d, align 8   ; 3 uses
  %.val56 = load i32, ptr %.val65.val, align 8    ; 6 uses
  %.not.i = icmp sgt i32 %.val56, -1
  br i1 %.not.i, label %.thread83, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i32 0, %.val56                   ; 2 uses
  %i.f = load i32, ptr @symbol_TYPEMASK, align 4
  %i.g = and i32 %i.f, %i.e
  %switch = icmp samesign ult i32 %i.g, 2
  br i1 %switch, label %symbol_IsFunction.exit.thread76, label %.thread83

symbol_IsFunction.exit.thread76:                  ; preds = %bb.c
  %i.h = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.i = lshr i32 %i.e, %i.h
  %i.j = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.d, label %.thread83

bb.d:                                             ; preds = %symbol_IsFunction.exit.thread76
  %.val55 = load i32, ptr %.val73.val.val, align 8
  %.not87 = icmp eq i32 %.val56, %.val55
  br i1 %.not87, label %bb.e, label %.thread83

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.val65.val, i64 16
  %.val64 = load ptr, ptr %i.q, align 8           ; 2 uses
  %i.r = getelementptr i8, ptr %.val64, i64 8
  %.val64.val = load ptr, ptr %i.r, align 8
  %.val67 = load i32, ptr %.val64.val, align 8    ; 2 uses
  %i.s = icmp slt i32 %.val67, 1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.val73.val.val, i64 16
  %.val62 = load ptr, ptr %i.t, align 8           ; 2 uses
  %i.u = getelementptr i8, ptr %.val62, i64 8
  %.val62.val = load ptr, ptr %i.u, align 8
  %.val66 = load i32, ptr %.val62.val, align 8    ; 2 uses
  %i.v = icmp slt i32 %.val66, 1
  br i1 %i.v, label %.thread83, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.033.val72 = phi ptr [ %.val64, %bb.e ], [ %.val62, %bb.f ]
  %.032 = phi ptr [ %.val73.val.val, %bb.e ], [ %.val65.val, %bb.f ]
  %.031 = phi i32 [ %.val67, %bb.e ], [ %.val66, %bb.f ]
  %.033.val72.val = load ptr, ptr %.033.val72, align 8
  %i.w = getelementptr i8, ptr %.033.val72.val, i64 8
  %.033.val72.val.val = load ptr, ptr %i.w, align 8 ; 2 uses
  %.val52 = load i32, ptr %.033.val72.val.val, align 8
  %.not88 = icmp eq i32 %.val52, %.val56
  br i1 %.not88, label %bb.h, label %.thread83

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %.033.val72.val.val, i64 16
  %.val60 = load ptr, ptr %i.x, align 8           ; 2 uses
  %i.y = getelementptr i8, ptr %.val60, i64 8
  %.val60.val = load ptr, ptr %i.y, align 8
  %.val51 = load i32, ptr %.val60.val, align 8    ; 2 uses
  %i.z = icmp slt i32 %.val51, 1
  br i1 %i.z, label %.thread83, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val70.val = load ptr, ptr %.val60, align 8
  %i.aa = getelementptr i8, ptr %.val70.val, i64 8
  %.val70.val.val = load ptr, ptr %i.aa, align 8
  %.val50 = load i32, ptr %.val70.val.val, align 8 ; 2 uses
  %i.ab = icmp slt i32 %.val50, 1
  br i1 %i.ab, label %.thread83, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.032, i64 16
  %.032.val59 = load ptr, ptr %i.ac, align 8      ; 2 uses
  %i.ad = getelementptr i8, ptr %.032.val59, i64 8
  %.032.val59.val = load ptr, ptr %i.ad, align 8  ; 2 uses
  %.val49 = load i32, ptr %.032.val59.val, align 8
  %.not89 = icmp eq i32 %.val49, %.val56
  br i1 %.not89, label %bb.k, label %.thread83

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %.032.val59.val, i64 16
  %.val57 = load ptr, ptr %i.ae, align 8          ; 2 uses
  %i.af = getelementptr i8, ptr %.val57, i64 8
end_hunk_0
