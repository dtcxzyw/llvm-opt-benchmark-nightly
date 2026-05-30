inline.NumInlined: 561
inline.NumDeleted: 71
begin_hunk_0_@ren_Rename:bb.a
  %.val95.pre.i = load ptr, ptr %i.di, align 8    ; 4 uses
  %.not.i102.i = icmp eq ptr %.val95.pre.i, null
  br i1 %.not.i102.i, label %list_Nconc.exit109.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i53
  %.not16.i103.i = icmp eq ptr %.071126.i, null
  br i1 %.not16.i103.i, label %list_Nconc.exit109.i, label %.preheader.i104.i

.preheader.i104.i:                                ; preds = %bb.aj, %.preheader.i104.i
  %.012.i105.i = phi ptr [ %.012.val15.i106.i, %.preheader.i104.i ], [ %.val95.pre.i, %bb.aj ] ; 2 uses
  %.012.val15.i106.i = load ptr, ptr %.012.i105.i, align 8 ; 2 uses
  %.not17.i107.i = icmp eq ptr %.012.val15.i106.i, null
  br i1 %.not17.i107.i, label %bb.ak, label %.preheader.i104.i, !llvm.loop !8

bb.ak:                                            ; preds = %.preheader.i104.i
  store ptr %.071126.i, ptr %.012.i105.i, align 8
  br label %list_Nconc.exit109.i

list_Nconc.exit109.i:                             ; preds = %bb.ak, %bb.aj, %._crit_edge.i53, %.loopexit118.i
  %.0.i108.i = phi ptr [ %.val95.pre.i, %bb.ak ], [ %.071126.i, %._crit_edge.i53 ], [ %.val95.pre.i, %bb.aj ], [ %.071126.i, %.loopexit118.i ] ; 2 uses
  store ptr null, ptr %i.di, align 8
  br i1 %.not114.i, label %list_Delete.exit.i56, label %.lr.ph.i110.i

.lr.ph.i110.i:                                    ; preds = %list_Nconc.exit109.i, %.lr.ph.i110.i
  %.07.i.i54 = phi ptr [ %.0.val.i.i55, %.lr.ph.i110.i ], [ %i.bt, %list_Nconc.exit109.i ] ; 3 uses
  %.0.val.i.i55 = load ptr, ptr %.07.i.i54, align 8 ; 2 uses
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load i32, ptr %i.fj, align 8
  %i.fl = sext i32 %i.fk to i64
  %i.fm = load i64, ptr @memory_FREEDBYTES, align 8
  %i.fn = add i64 %i.fm, %i.fl
  store i64 %i.fn, ptr @memory_FREEDBYTES, align 8
  %i.fo = load ptr, ptr %i.fi, align 8
  store ptr %i.fo, ptr %.07.i.i54, align 8
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i54, ptr %i.fp, align 8
  %.not.i111.i = icmp eq ptr %.0.val.i.i55, null
  br i1 %.not.i111.i, label %list_Delete.exit.i56, label %.lr.ph.i110.i, !llvm.loop !6

list_Delete.exit.i56:                             ; preds = %.lr.ph.i110.i, %list_Nconc.exit109.i
  %.not113.i = icmp eq ptr %.073.val.i, null
  br i1 %.not113.i, label %ren_FormulaRename.exit, label %bb.o, !llvm.loop !16

ren_FormulaRename.exit:                           ; preds = %list_Delete.exit.i56
  tail call void @list_DeleteWithElement(ptr noundef %.0.i108.i, ptr noundef nonnull @term_Delete) #10
  br i1 %or.cond, label %bb.al, label %ren_FormulaRename.exit.thread

bb.al:                                            ; preds = %ren_FormulaRename.exit
  %i.fq = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  tail call void @fol_PrettyPrintDFG(ptr noundef %i.bp) #10
  %i.fr = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br label %ren_FormulaRename.exit.thread

ren_FormulaRename.exit.thread:                    ; preds = %bb.m, %bb.al, %ren_FormulaRename.exit
  %.0.i83 = phi ptr [ %i.bp, %ren_FormulaRename.exit ], [ %i.bp, %bb.al ], [ %0, %bb.m ]
  tail call void @list_DeleteWithElement(ptr noundef %i.bf, ptr noundef nonnull @ren_Delete) #10
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %ren_FormulaRename.exit.thread, %.lr.ph.i58
  %.07.i = phi ptr [ %.0.val.i59, %.lr.ph.i58 ], [ %i.e, %ren_FormulaRename.exit.thread ] ; 3 uses
  %.0.val.i59 = load ptr, ptr %.07.i, align 8     ; 2 uses
  %i.fs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fu = load i32, ptr %i.ft, align 8
  %i.fv = sext i32 %i.fu to i64
  %i.fw = load i64, ptr @memory_FREEDBYTES, align 8
  %i.fx = add i64 %i.fw, %i.fv
  store i64 %i.fx, ptr @memory_FREEDBYTES, align 8
  %i.fy = load ptr, ptr %i.fs, align 8
  store ptr %i.fy, ptr %.07.i, align 8
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.fz, align 8
  %.not.i60 = icmp eq ptr %.0.val.i59, null
  br i1 %.not.i60, label %list_Delete.exit, label %.lr.ph.i58, !llvm.loop !6

list_Delete.exit:                                 ; preds = %.lr.ph.i58, %ren_FormulaRename.exit.thread
  ret ptr %.0.i83
}

declare i32 @term_StampOverflow(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ren_ResetTermStamp(ptr noundef captures(none) initializes((24, 28)) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @symbol_TYPEMASK, align 4
  %i.b = load i32, ptr @fol_ALL, align 4
  %i.c = load i32, ptr @fol_EXIST, align 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.b, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.val11.val.val, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  store i32 0, ptr %i.d, align 8
  %.val = load i32, ptr %.tr, align 8             ; 4 uses
  %.not.i = icmp sgt i32 %.val, -1
  br i1 %.not.i, label %symbol_IsPredicate.exit.thread, label %symbol_IsPredicate.exit

symbol_IsPredicate.exit:                          ; preds = %tailrecurse
  %i.e = sub nsw i32 0, %.val
  %i.f = and i32 %i.a, %i.e
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %.loopexit, label %symbol_IsPredicate.exit.thread

symbol_IsPredicate.exit.thread:                   ; preds = %tailrecurse, %symbol_IsPredicate.exit
  %.not.i13 = icmp ne i32 %i.b, %.val
  %i.g = icmp ne i32 %i.c, %.val
  %narrow.i.not = select i1 %.not.i13, i1 %i.g, i1 false
  %i.h = getelementptr i8, ptr %.tr, i64 16
  %.019 = load ptr, ptr %i.h, align 8             ; 3 uses
  br i1 %narrow.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %symbol_IsPredicate.exit.thread
  %.val11.val = load ptr, ptr %.019, align 8
  %i.i = getelementptr i8, ptr %.val11.val, i64 8
  %.val11.val.val = load ptr, ptr %i.i, align 8
  br label %tailrecurse

bb.c:                                             ; preds = %symbol_IsPredicate.exit.thread
  %.not1620 = icmp eq ptr %.019, null
  br i1 %.not1620, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.021 = phi ptr [ %.0, %.lr.ph ], [ %.019, %bb.c ] ; 2 uses
  %i.j = getelementptr i8, ptr %.021, i64 8
  %.0.val10 = load ptr, ptr %i.j, align 8
  tail call fastcc void @ren_ResetTermStamp(ptr noundef %.0.val10)
  %.0 = load ptr, ptr %.021, align 8              ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit:                                        ; preds = %symbol_IsPredicate.exit, %.lr.ph, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ren_GetRenamings(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @fol_NOT, align 4          ; 2 uses
  %.049.val61135 = load i32, ptr %1, align 8      ; 2 uses
  %.not136 = icmp eq i32 %.049.val61135, %i.a
  br i1 %.not136, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.048138 = phi i32 [ %i.d, %.lr.ph ], [ %2, %bb.a ]
  %.049137 = phi ptr [ %.049.val69.val, %.lr.ph ], [ %1, %bb.a ]
  %i.b = getelementptr i8, ptr %.049137, i64 16
  %.049.val69 = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.049.val69, i64 8
  %.049.val69.val = load ptr, ptr %i.c, align 8   ; 3 uses
  %i.d = sub nsw i32 0, %.048138                  ; 2 uses
  %.049.val61 = load i32, ptr %.049.val69.val, align 8 ; 2 uses
  %.not = icmp eq i32 %.049.val61, %i.a
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.049.lcssa = phi ptr [ %1, %bb.a ], [ %.049.val69.val, %.lr.ph ] ; 20 uses
  %.048.lcssa = phi i32 [ %2, %bb.a ], [ %i.d, %.lr.ph ] ; 5 uses
  %.049.val61.lcssa = phi i32 [ %.049.val61135, %bb.a ], [ %.049.val61, %.lr.ph ] ; 8 uses
  %.not.i.i = icmp sgt i32 %.049.val61.lcssa, -1
  br i1 %.not.i.i, label %term_IsAtom.exit.thread, label %term_IsAtom.exit

term_IsAtom.exit:                                 ; preds = %._crit_edge
  %i.e = sub nsw i32 0, %.049.val61.lcssa
  %i.f = load i32, ptr @symbol_TYPEMASK, align 4
  %i.g = and i32 %i.f, %i.e
  %.not125 = icmp eq i32 %i.g, 2
  br i1 %.not125, label %list_Nconc.exit, label %term_IsAtom.exit.thread

term_IsAtom.exit.thread:                          ; preds = %._crit_edge, %term_IsAtom.exit
  %i.h = getelementptr i8, ptr %.049.lcssa, i64 8
  %.049.val72 = load ptr, ptr %i.h, align 8       ; 2 uses
  %.not52 = icmp eq ptr %.049.val72, null
  br i1 %.not52, label %ren_HasBenefit.exit.thread122, label %bb.b

bb.b:                                             ; preds = %term_IsAtom.exit.thread
  %.val = load i32, ptr %.049.val72, align 8      ; 2 uses
  %i.i = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp ne i32 %i.i, %.val
  %i.j = load i32, ptr @fol_EXIST, align 4
  %i.k = icmp ne i32 %i.j, %.val
  %narrow.i.not = select i1 %.not.i, i1 %i.k, i1 false
  br i1 %narrow.i.not, label %bb.c, label %ren_HasBenefit.exit.thread122

bb.c:                                             ; preds = %bb.b
  switch i32 %.048.lcssa, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.k
    i32 -1, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @ren_PFactorOk(ptr noundef nonnull readonly %.049.lcssa)
  %i.m = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef nonnull readonly %.049.lcssa)
  %i.n = tail call fastcc i32 @ren_AFactorOk(ptr noundef readnone %0, ptr noundef nonnull readonly %.049.lcssa)
  %i.o = tail call fastcc i32 @ren_BFactorOk(ptr noundef readnone %0, ptr noundef nonnull readonly %.049.lcssa)
  %i.p = icmp ne i32 %i.n, 0                      ; 2 uses
  %i.q = icmp ne i32 %i.o, 0                      ; 2 uses
  %or.cond.i = select i1 %i.p, i1 %i.q, i1 false
  %3 = trunc nuw i32 %i.l to i1                   ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 %3, i1 false
  %4 = trunc nuw i32 %i.m to i1                   ; 2 uses
  %or.cond5.i = select i1 %or.cond3.i, i1 %4, i1 false
  br i1 %or.cond5.i, label %ren_HasBenefit.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %or.cond7.i = select i1 %i.p, i1 %3, i1 false
  br i1 %or.cond7.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef nonnull readonly %.049.lcssa)
  %.not37.i = icmp eq i32 %i.r, 0
  br i1 %.not37.i, label %bb.g, label %ren_HasBenefit.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef readnone %0, ptr noundef nonnull readonly %.049.lcssa)
  %.not38.i = icmp eq i32 %i.s, 0
  br i1 %.not38.i, label %bb.h, label %ren_HasBenefit.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.e
  %or.cond9.i = select i1 %i.q, i1 %4, i1 false
  br i1 %or.cond9.i, label %bb.i, label %ren_HasBenefit.exit.thread122

bb.i:                                             ; preds = %bb.h
  %i.t = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef nonnull readonly %.049.lcssa)
  %.not39.i = icmp eq i32 %i.t, 0
  br i1 %.not39.i, label %bb.j, label %ren_HasBenefit.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.u = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef readnone %0, ptr noundef nonnull readonly %.049.lcssa)
  br label %ren_HasBenefit.exit

bb.k:                                             ; preds = %bb.c
  %i.v = tail call fastcc i32 @ren_PFactorOk(ptr noundef nonnull readonly %.049.lcssa)
  %.not36.i = icmp eq i32 %i.v, 0
  br i1 %.not36.i, label %ren_HasBenefit.exit.thread122, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call fastcc i32 @ren_AFactorOk(ptr noundef readnone %0, ptr noundef nonnull readonly %.049.lcssa)
  br label %ren_HasBenefit.exit

bb.m:                                             ; preds = %bb.c
  %i.x = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef nonnull readonly %.049.lcssa)
  %.not.i73 = icmp eq i32 %i.x, 0
  br i1 %.not.i73, label %ren_HasBenefit.exit.thread122, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = tail call fastcc i32 @ren_BFactorOk(ptr noundef readnone %0, ptr noundef nonnull readonly %.049.lcssa)
  br label %ren_HasBenefit.exit

default.unreachable:                              ; preds = %bb.c
  unreachable

ren_HasBenefit.exit:                              ; preds = %bb.j, %bb.l, %bb.n
  %.0.i.in = phi i32 [ %i.w, %bb.l ], [ %i.u, %bb.j ], [ %i.y, %bb.n ]
  %.0.i = icmp eq i32 %.0.i.in, 0
  br i1 %.0.i, label %ren_HasBenefit.exit.thread122, label %ren_HasBenefit.exit.thread

ren_HasBenefit.exit.thread:                       ; preds = %bb.i, %bb.d, %bb.f, %bb.g, %ren_HasBenefit.exit
  %i.z = tail call noundef ptr @memory_Malloc(i32 noundef 16) #10 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.049.lcssa, ptr %i.aa, align 8
  store ptr null, ptr %i.z, align 8
  %i.ab = load i32, ptr @term_STAMP, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.049.lcssa, i64 24
  store i32 %i.ab, ptr %i.ac, align 8
  br label %ren_HasBenefit.exit.thread122

ren_HasBenefit.exit.thread122:                    ; preds = %bb.h, %bb.m, %bb.k, %ren_HasBenefit.exit.thread, %ren_HasBenefit.exit, %bb.b, %term_IsAtom.exit.thread
  %.050 = phi ptr [ %0, %bb.b ], [ %.049.lcssa, %ren_HasBenefit.exit.thread ], [ %0, %ren_HasBenefit.exit ], [ %0, %term_IsAtom.exit.thread ], [ %0, %bb.k ], [ %0, %bb.m ], [ %0, %bb.h ] ; 6 uses
  %.046 = phi ptr [ null, %bb.b ], [ %i.z, %ren_HasBenefit.exit.thread ], [ null, %ren_HasBenefit.exit ], [ null, %term_IsAtom.exit.thread ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.h ] ; 14 uses
  %i.ad = load i32, ptr @fol_ALL, align 4
  %.not.i74 = icmp ne i32 %i.ad, %.049.val61.lcssa
  %i.ae = load i32, ptr @fol_EXIST, align 4
  %i.af = icmp ne i32 %i.ae, %.049.val61.lcssa
  %narrow.i75.not = select i1 %.not.i74, i1 %i.af, i1 false
  br i1 %narrow.i75.not, label %bb.r, label %bb.o

bb.o:                                             ; preds = %ren_HasBenefit.exit.thread122
  %i.ag = getelementptr i8, ptr %.049.lcssa, i64 16
  %.049.val65 = load ptr, ptr %i.ag, align 8
  %.049.val65.val = load ptr, ptr %.049.val65, align 8
  %i.ah = getelementptr i8, ptr %.049.val65.val, i64 8
  %.049.val65.val.val = load ptr, ptr %i.ah, align 8
  %i.ai = tail call fastcc ptr @ren_GetRenamings(ptr noundef %.050, ptr noundef %.049.val65.val.val, i32 noundef %.048.lcssa) ; 3 uses
  %.not.i76 = icmp eq ptr %.046, null
  br i1 %.not.i76, label %list_Nconc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %i.ai, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %.046, %bb.p ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.q, label %.preheader.i, !llvm.loop !8

bb.q:                                             ; preds = %.preheader.i
  store ptr %i.ai, ptr %.012.i, align 8
  br label %list_Nconc.exit

bb.r:                                             ; preds = %ren_HasBenefit.exit.thread122
  %i.aj = load i32, ptr @fol_AND, align 4
  %.not130 = icmp eq i32 %.049.val61.lcssa, %i.aj
  %i.ak = load i32, ptr @fol_OR, align 4
  %.not131 = icmp eq i32 %.049.val61.lcssa, %i.ak
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr i8, ptr %.049.lcssa, i64 16
  %.0141 = load ptr, ptr %i.al, align 8           ; 2 uses
  %.not132142 = icmp eq ptr %.0141, null
  br i1 %.not132142, label %list_Nconc.exit, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.s, %list_Nconc.exit85
  %.0144 = phi ptr [ %.0, %list_Nconc.exit85 ], [ %.0141, %bb.s ] ; 2 uses
  %.1143 = phi ptr [ %.0.i84, %list_Nconc.exit85 ], [ %.046, %bb.s ] ; 4 uses
  %i.am = getelementptr i8, ptr %.0144, i64 8
  %.0.val62 = load ptr, ptr %i.am, align 8
  %i.an = tail call fastcc ptr @ren_GetRenamings(ptr noundef %.050, ptr noundef %.0.val62, i32 noundef %.048.lcssa) ; 3 uses
  %.not.i78 = icmp eq ptr %.1143, null
  br i1 %.not.i78, label %list_Nconc.exit85, label %bb.t

bb.t:                                             ; preds = %.lr.ph146
  %.not16.i79 = icmp eq ptr %i.an, null
  br i1 %.not16.i79, label %list_Nconc.exit85, label %.preheader.i80

.preheader.i80:                                   ; preds = %bb.t, %.preheader.i80
  %.012.i81 = phi ptr [ %.012.val15.i82, %.preheader.i80 ], [ %.1143, %bb.t ] ; 2 uses
  %.012.val15.i82 = load ptr, ptr %.012.i81, align 8 ; 2 uses
  %.not17.i83 = icmp eq ptr %.012.val15.i82, null
  br i1 %.not17.i83, label %bb.u, label %.preheader.i80, !llvm.loop !8

bb.u:                                             ; preds = %.preheader.i80
  store ptr %i.an, ptr %.012.i81, align 8
  br label %list_Nconc.exit85

list_Nconc.exit85:                                ; preds = %.lr.ph146, %bb.t, %bb.u
  %.0.i84 = phi ptr [ %.1143, %bb.u ], [ %i.an, %.lr.ph146 ], [ %.1143, %bb.t ] ; 2 uses
  %.0 = load ptr, ptr %.0144, align 8             ; 2 uses
  %.not132 = icmp eq ptr %.0, null
  br i1 %.not132, label %list_Nconc.exit, label %.lr.ph146, !llvm.loop !19

bb.v:                                             ; preds = %bb.r
  %i.ao = load i32, ptr @fol_IMPLIES, align 4
  %.not133 = icmp eq i32 %.049.val61.lcssa, %i.ao
  br i1 %.not133, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ap = getelementptr i8, ptr %.049.lcssa, i64 16 ; 2 uses
  %.049.val68 = load ptr, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %.049.val68, i64 8
  %.049.val68.val = load ptr, ptr %i.aq, align 8
  %i.ar = sub nsw i32 0, %.048.lcssa
  %i.as = tail call fastcc ptr @ren_GetRenamings(ptr noundef %.050, ptr noundef %.049.val68.val, i32 noundef %i.ar) ; 3 uses
  %.not.i86 = icmp eq ptr %.046, null
  br i1 %.not.i86, label %list_Nconc.exit93, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not16.i87 = icmp eq ptr %i.as, null
  br i1 %.not16.i87, label %list_Nconc.exit93, label %.preheader.i88

.preheader.i88:                                   ; preds = %bb.x, %.preheader.i88
  %.012.i89 = phi ptr [ %.012.val15.i90, %.preheader.i88 ], [ %.046, %bb.x ] ; 2 uses
  %.012.val15.i90 = load ptr, ptr %.012.i89, align 8 ; 2 uses
  %.not17.i91 = icmp eq ptr %.012.val15.i90, null
  br i1 %.not17.i91, label %bb.y, label %.preheader.i88, !llvm.loop !8

bb.y:                                             ; preds = %.preheader.i88
  store ptr %i.as, ptr %.012.i89, align 8
  br label %list_Nconc.exit93

list_Nconc.exit93:                                ; preds = %bb.w, %bb.x, %bb.y
  %.0.i92 = phi ptr [ %.046, %bb.y ], [ %i.as, %bb.w ], [ %.046, %bb.x ] ; 4 uses
  %.049.val64 = load ptr, ptr %i.ap, align 8
  %.049.val64.val = load ptr, ptr %.049.val64, align 8
  %i.at = getelementptr i8, ptr %.049.val64.val, i64 8
  %.049.val64.val.val = load ptr, ptr %i.at, align 8
  %i.au = tail call fastcc ptr @ren_GetRenamings(ptr noundef %.050, ptr noundef %.049.val64.val.val, i32 noundef %.048.lcssa) ; 3 uses
  %.not.i94 = icmp eq ptr %.0.i92, null
  br i1 %.not.i94, label %list_Nconc.exit, label %bb.z

bb.z:                                             ; preds = %list_Nconc.exit93
  %.not16.i95 = icmp eq ptr %i.au, null
  br i1 %.not16.i95, label %list_Nconc.exit, label %.preheader.i96

.preheader.i96:                                   ; preds = %bb.z, %.preheader.i96
  %.012.i97 = phi ptr [ %.012.val15.i98, %.preheader.i96 ], [ %.0.i92, %bb.z ] ; 2 uses
  %.012.val15.i98 = load ptr, ptr %.012.i97, align 8 ; 2 uses
  %.not17.i99 = icmp eq ptr %.012.val15.i98, null
  br i1 %.not17.i99, label %bb.aa, label %.preheader.i96, !llvm.loop !8

bb.aa:                                            ; preds = %.preheader.i96
  store ptr %i.au, ptr %.012.i97, align 8
  br label %list_Nconc.exit

bb.ab:                                            ; preds = %bb.v
  %i.av = load i32, ptr @fol_EQUIV, align 4
  %.not134 = icmp eq i32 %.049.val61.lcssa, %i.av
  br i1 %.not134, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.aw = getelementptr i8, ptr %.049.lcssa, i64 16 ; 2 uses
  %.049.val67 = load ptr, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %.049.val67, i64 8
  %.049.val67.val = load ptr, ptr %i.ax, align 8
  %i.ay = tail call fastcc ptr @ren_GetRenamings(ptr noundef %.050, ptr noundef %.049.val67.val, i32 noundef 0) ; 3 uses
  %.not.i102 = icmp eq ptr %.046, null
  br i1 %.not.i102, label %list_Nconc.exit109, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not16.i103 = icmp eq ptr %i.ay, null
  br i1 %.not16.i103, label %list_Nconc.exit109, label %.preheader.i104

.preheader.i104:                                  ; preds = %bb.ad, %.preheader.i104
  %.012.i105 = phi ptr [ %.012.val15.i106, %.preheader.i104 ], [ %.046, %bb.ad ] ; 2 uses
  %.012.val15.i106 = load ptr, ptr %.012.i105, align 8 ; 2 uses
  %.not17.i107 = icmp eq ptr %.012.val15.i106, null
  br i1 %.not17.i107, label %bb.ae, label %.preheader.i104, !llvm.loop !8

bb.ae:                                            ; preds = %.preheader.i104
  store ptr %i.ay, ptr %.012.i105, align 8
  br label %list_Nconc.exit109

list_Nconc.exit109:                               ; preds = %bb.ac, %bb.ad, %bb.ae
  %.0.i108 = phi ptr [ %.046, %bb.ae ], [ %i.ay, %bb.ac ], [ %.046, %bb.ad ] ; 4 uses
  %.049.val63 = load ptr, ptr %i.aw, align 8
  %.049.val63.val = load ptr, ptr %.049.val63, align 8
  %i.az = getelementptr i8, ptr %.049.val63.val, i64 8
  %.049.val63.val.val = load ptr, ptr %i.az, align 8
  %i.ba = tail call fastcc ptr @ren_GetRenamings(ptr noundef %.050, ptr noundef %.049.val63.val.val, i32 noundef 0) ; 3 uses
  %.not.i110 = icmp eq ptr %.0.i108, null
  br i1 %.not.i110, label %list_Nconc.exit, label %bb.af

bb.af:                                            ; preds = %list_Nconc.exit109
  %.not16.i111 = icmp eq ptr %i.ba, null
  br i1 %.not16.i111, label %list_Nconc.exit, label %.preheader.i112

.preheader.i112:                                  ; preds = %bb.af, %.preheader.i112
  %.012.i113 = phi ptr [ %.012.val15.i114, %.preheader.i112 ], [ %.0.i108, %bb.af ] ; 2 uses
  %.012.val15.i114 = load ptr, ptr %.012.i113, align 8 ; 2 uses
  %.not17.i115 = icmp eq ptr %.012.val15.i114, null
  br i1 %.not17.i115, label %bb.ag, label %.preheader.i112, !llvm.loop !8

bb.ag:                                            ; preds = %.preheader.i112
  store ptr %i.ba, ptr %.012.i113, align 8
  br label %list_Nconc.exit

bb.ah:                                            ; preds = %bb.ab
  %i.bb = load ptr, ptr @stdout, align 8
  %i.bc = tail call i32 @fflush(ptr noundef %i.bb) ; 0 uses
  %i.bd = load ptr, ptr @stderr, align 8
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bd, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1070) #11 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.10) #10
  %i.bf = load ptr, ptr @stderr, align 8
  %i.bg = tail call i64 @fwrite(ptr nonnull @.str.11, i64 132, i64 1, ptr %i.bf) #12 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

list_Nconc.exit:                                  ; preds = %list_Nconc.exit85, %bb.s, %bb.ag, %bb.af, %list_Nconc.exit109, %bb.aa, %bb.z, %list_Nconc.exit93, %bb.q, %bb.p, %bb.o, %term_IsAtom.exit
  %.047 = phi ptr [ null, %term_IsAtom.exit ], [ %.0.i108, %bb.af ], [ %i.ba, %list_Nconc.exit109 ], [ %.046, %bb.p ], [ %.0.i92, %bb.z ], [ %.046, %bb.q ], [ %i.ai, %bb.o ], [ %.0.i92, %bb.aa ], [ %i.au, %list_Nconc.exit93 ], [ %.0.i108, %bb.ag ], [ %.046, %bb.s ], [ %.0.i84, %list_Nconc.exit85 ]
  ret ptr %.047
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @ren_Polarity(ptr noundef readonly captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val2537 = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not38 = icmp eq ptr %.val2537, null
  br i1 %.not38, label %common.ret54, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i32, ptr @fol_AND, align 4
  %i.c = load i32, ptr @fol_OR, align 4
  %i.d = load i32, ptr @fol_ALL, align 4
  %i.e = load i32, ptr @fol_EXIST, align 4
  %i.f = load i32, ptr @fol_NOT, align 4
  %i.g = load i32, ptr @fol_EQUIV, align 4
  %i.h = load i32, ptr @fol_IMPLIES, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %.val2540 = phi ptr [ %.val2537, %.lr.ph ], [ %.val25, %tailrecurse.backedge ] ; 5 uses
  %.tr39 = phi ptr [ %0, %.lr.ph ], [ %.val2540, %tailrecurse.backedge ]
  %.val = load i32, ptr %.val2540, align 8        ; 7 uses
  %.not28 = icmp eq i32 %.val, %i.b
  %.not29 = icmp eq i32 %.val, %i.c
  %or.cond = select i1 %.not28, i1 true, i1 %.not29
  br i1 %or.cond, label %tailrecurse.backedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ne i32 %i.d, %.val
  %i.i = icmp ne i32 %i.e, %.val
  %narrow.i.not = select i1 %.not.i, i1 %i.i, i1 false
  br i1 %narrow.i.not, label %bb.d, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.c, %bb.g
  %i.j = getelementptr i8, ptr %.val2540, i64 8
  %.val25 = load ptr, ptr %i.j, align 8           ; 2 uses
  %.not = icmp eq ptr %.val25, null
  br i1 %.not, label %common.ret54, label %bb.b

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq i32 %.val, %i.f
  br i1 %.not31, label %common.ret.sink.split, label %bb.e

common.ret54:                                     ; preds = %bb.a, %tailrecurse.backedge, %bb.e, %common.ret.sink.split
  %common.ret54.op = phi i32 [ %i.l, %common.ret.sink.split ], [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %tailrecurse.backedge ]
  ret i32 %common.ret54.op

common.ret.sink.split:                            ; preds = %bb.g, %bb.d
  %i.k = tail call fastcc i32 @ren_Polarity(ptr noundef nonnull %.val2540)
  %i.l = sub nsw i32 0, %i.k
  br label %common.ret54

bb.e:                                             ; preds = %bb.d
  %.not32 = icmp eq i32 %.val, %i.g
  br i1 %.not32, label %common.ret54, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not33 = icmp eq i32 %.val, %i.h
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %.val2540, i64 16
  %.val24 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val24, i64 8
  %.val24.val = load ptr, ptr %i.n, align 8
  %i.o = icmp eq ptr %.tr39, %.val24.val
  br i1 %i.o, label %common.ret.sink.split, label %tailrecurse.backedge

bb.h:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stdout, align 8
  %i.q = tail call i32 @fflush(ptr noundef %i.p)  ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1104) #11 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.18) #10
  %i.t = load ptr, ptr @stderr, align 8
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.11, i64 132, i64 1, ptr %i.t) #12 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ren_FreeRenaming(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not45 = icmp eq ptr %0, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.an
  %.046 = phi ptr [ %.0.val, %bb.an ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.046, i64 8       ; 2 uses
  %.0.val27 = load ptr, ptr %i.a, align 8         ; 6 uses
  %i.b = getelementptr i8, ptr %.0.val27, i64 8   ; 2 uses
  %.val30 = load ptr, ptr %i.b, align 8
  %.not42 = icmp eq ptr %.val30, null
  br i1 %.not42, label %bb.b, label %bb.an

bb.b:                                             ; preds = %.lr.ph
  %.val31 = load ptr, ptr %.0.val27, align 8      ; 23 uses
  %i.c = getelementptr i8, ptr %.val31, i64 8     ; 3 uses
  %.val = load ptr, ptr %i.c, align 8
  %i.d = load i32, ptr @term_STAMP, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.021 = phi ptr [ %.val, %bb.b ], [ %.021.val28, %bb.d ] ; 18 uses
  %i.e = getelementptr i8, ptr %.021, i64 24
  %.021.val29 = load i32, ptr %i.e, align 8
  %.not43 = icmp eq i32 %.021.val29, %i.d
  br i1 %.not43, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %.021, i64 8
  %.021.val28 = load ptr, ptr %i.f, align 8       ; 2 uses
  %.not24 = icmp eq ptr %.021.val28, null
  br i1 %.not24, label %.critedge, label %bb.c, !llvm.loop !20

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val31, i64 24 ; 2 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %.0.val27, i64 16
  %.val32 = load i32, ptr %i.h, align 8
  %.not25 = icmp eq i32 %.val32, 0
  br i1 %.not25, label %bb.e, label %ren_HasNonZeroBenefit.exit.thread39

bb.e:                                             ; preds = %.critedge
  %i.i = tail call fastcc i32 @ren_Polarity(ptr noundef nonnull %.021)
  %i.j = getelementptr i8, ptr %.0.val27, i64 20
  %.val33 = load i32, ptr %i.j, align 4
  switch i32 %.val33, label %bb.am [
    i32 0, label %bb.f
    i32 1, label %bb.ac
    i32 -1, label %bb.ah
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc i32 @ren_PFactorOk(ptr noundef nonnull readonly %.val31) ; 2 uses
  %i.l = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef nonnull readonly %.val31) ; 2 uses
  %i.m = tail call fastcc i32 @ren_AFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %i.n = tail call fastcc i32 @ren_BFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %1 = trunc nuw i32 %i.k to i1                   ; 2 uses
  br i1 %1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef nonnull readonly %.val31)
  %2 = trunc nuw i32 %i.o to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i1 [ false, %bb.f ], [ %2, %bb.g ]   ; 3 uses
  %3 = trunc nuw i32 %i.l to i1                   ; 2 uses
  br i1 %3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef nonnull readonly %.val31)
  %4 = trunc nuw i32 %i.q to i1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = phi i1 [ false, %bb.h ], [ %4, %bb.i ]   ; 2 uses
  %i.s = icmp ne i32 %i.m, 0                      ; 3 uses
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %5 = trunc nuw i32 %i.t to i1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = phi i1 [ false, %bb.j ], [ %5, %bb.k ]   ; 3 uses
  %.not117.i = icmp eq i32 %i.n, 0                ; 2 uses
  br i1 %.not117.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %6 = trunc nuw i32 %i.v to i1                   ; 2 uses
  %7 = and i32 %i.l, %i.k
  %8 = trunc nuw i32 %7 to i1
  %or.cond5.i = and i1 %i.s, %8
  br i1 %or.cond5.i, label %bb.n, label %.thread.i

bb.n:                                             ; preds = %bb.m
  %or.cond7.i = select i1 %i.u, i1 true, i1 %6
  %or.cond9.i = select i1 %or.cond7.i, i1 true, i1 %i.p
  %or.cond11.i = select i1 %or.cond9.i, i1 true, i1 %i.r
  %or.cond13.i = select i1 %i.p, i1 %i.u, i1 false
  %or.cond91.i.a = select i1 %or.cond11.i, i1 true, i1 %or.cond13.i
  br i1 %or.cond91.i.a, label %ren_HasNonZeroBenefit.exit.thread, label %.thread109.i

.thread.i:                                        ; preds = %bb.m, %bb.l
  %i.w = phi i1 [ %6, %bb.m ], [ false, %bb.l ]
  %or.cond13.old.i = select i1 %i.p, i1 %i.u, i1 false
  %or.cond15.old.i = select i1 %i.r, i1 %i.w, i1 false
  %or.cond92.i = select i1 %or.cond13.old.i, i1 true, i1 %or.cond15.old.i
  br i1 %or.cond92.i, label %ren_HasNonZeroBenefit.exit.thread, label %bb.o

bb.o:                                             ; preds = %.thread.i
  br i1 %i.s, label %.thread109.i, label %bb.p

.thread109.i:                                     ; preds = %bb.o, %bb.n
  %i.x = tail call fastcc i32 @ren_PFactorBigger3(ptr noundef nonnull readonly %.val31)
  %.not84.i = icmp eq i32 %i.x, 0
  br i1 %.not84.i, label %bb.p, label %ren_HasNonZeroBenefit.exit.thread

bb.p:                                             ; preds = %.thread109.i, %bb.o
  br i1 %.not117.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = tail call fastcc i32 @ren_NotPFactorBigger3(ptr noundef nonnull readonly %.val31)
  %.not85.i = icmp eq i32 %i.y, 0
  br i1 %.not85.i, label %bb.r, label %ren_HasNonZeroBenefit.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.z = tail call fastcc i32 @ren_AFactorBigger3(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %.not86.i = icmp eq i32 %i.z, 0
  br i1 %.not86.i, label %bb.t, label %ren_HasNonZeroBenefit.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %3, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aa = tail call fastcc i32 @ren_BFactorBigger3(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %.not87.i = icmp eq i32 %i.aa, 0
  br i1 %.not87.i, label %bb.v, label %ren_HasNonZeroBenefit.exit.thread

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ab = icmp eq i32 %i.i, 0
  br i1 %i.ab, label %bb.w, label %.ren_HasNEquivFathers.exit.thread_crit_edge.i

.ren_HasNEquivFathers.exit.thread_crit_edge.i:    ; preds = %bb.v
  %.val93.pre.i = load ptr, ptr %i.c, align 8
  br label %ren_HasNEquivFathers.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %.val.i = load i32, ptr %.val31, align 8
  %i.ac = load i32, ptr @fol_EQUIV, align 4       ; 2 uses
  %.not118.i = icmp eq i32 %.val.i, %i.ac
  br i1 %.not118.i, label %ren_HasNonZeroBenefit.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val94.i = load ptr, ptr %i.c, align 8         ; 4 uses
  %.not2.i.i = icmp eq ptr %.021, %.val94.i
  br i1 %.not2.i.i, label %ren_HasNEquivFathers.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.y
  %.073.i.i = phi ptr [ %.07.val11.i.i, %bb.y ], [ %.val94.i, %bb.x ] ; 2 uses
  %.07.val.i.i = load i32, ptr %.073.i.i, align 8
  %.not1.i.i = icmp eq i32 %.07.val.i.i, %i.ac
  br i1 %.not1.i.i, label %ren_HasNonZeroBenefit.exit.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr i8, ptr %.073.i.i, i64 8
  %.07.val11.i.i = load ptr, ptr %i.ad, align 8   ; 2 uses
  %.not.i.i = icmp eq ptr %.021, %.07.val11.i.i
  br i1 %.not.i.i, label %ren_HasNEquivFathers.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !21

ren_HasNEquivFathers.exit.thread.i:               ; preds = %bb.y, %bb.x, %.ren_HasNEquivFathers.exit.thread_crit_edge.i
  %.val93.i = phi ptr [ %.val93.pre.i, %.ren_HasNEquivFathers.exit.thread_crit_edge.i ], [ %.val94.i, %bb.x ], [ %.val94.i, %bb.y ] ; 2 uses
  %.not2.i95.i = icmp eq ptr %.021, %.val93.i
  br i1 %.not2.i95.i, label %ren_HasNonZeroBenefit.exit.thread39, label %.lr.ph.i96.i

.lr.ph.i96.i:                                     ; preds = %ren_HasNEquivFathers.exit.thread.i
  %i.ae = load i32, ptr @fol_EQUIV, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.lr.ph.i96.i
  %.04.i97.i = phi i32 [ 2, %.lr.ph.i96.i ], [ %.1.i101.i, %bb.ab ] ; 2 uses
  %.073.i98.i = phi ptr [ %.val93.i, %.lr.ph.i96.i ], [ %.07.val11.i102.i, %bb.ab ] ; 2 uses
  %.07.val.i99.i = load i32, ptr %.073.i98.i, align 8
  %.not1.i100.i = icmp eq i32 %.07.val.i99.i, %i.ae
  br i1 %.not1.i100.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.af = icmp eq i32 %.04.i97.i, 1
  br i1 %i.af, label %ren_HasNonZeroBenefit.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1.i101.i = phi i32 [ 1, %bb.aa ], [ %.04.i97.i, %bb.z ]
  %i.ag = getelementptr i8, ptr %.073.i98.i, i64 8
  %.07.val11.i102.i = load ptr, ptr %i.ag, align 8 ; 2 uses
  %.not.i103.i = icmp eq ptr %.021, %.07.val11.i102.i
  br i1 %.not.i103.i, label %ren_HasNonZeroBenefit.exit.thread39, label %bb.z, !llvm.loop !21

bb.ac:                                            ; preds = %bb.e
  %i.ah = tail call fastcc i32 @ren_AFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %i.ai = tail call fastcc i32 @ren_PFactorOk(ptr noundef nonnull readonly %.val31)
  %.not80.i = icmp eq i32 %i.ai, 0
  %.not83.i = icmp eq i32 %i.ah, 0                ; 2 uses
  br i1 %.not80.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not83.i, label %bb.ae, label %ren_HasNonZeroBenefit.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.aj = tail call fastcc i32 @ren_AFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %.not82.i = icmp ne i32 %i.aj, 0
  %spec.select.i = zext i1 %.not82.i to i32
  br label %ren_HasNonZeroBenefit.exit

bb.af:                                            ; preds = %bb.ac
  br i1 %.not83.i, label %ren_HasNonZeroBenefit.exit.thread39, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ak = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  br label %ren_HasNonZeroBenefit.exit

bb.ah:                                            ; preds = %bb.e
  %i.al = tail call fastcc i32 @ren_BFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  %i.am = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef nonnull readonly %.val31)
  %.not.i = icmp eq i32 %i.am, 0
  %.not79.i = icmp eq i32 %i.al, 0                ; 2 uses
  br i1 %.not.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not79.i, label %bb.aj, label %ren_HasNonZeroBenefit.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.an = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef nonnull readonly %.val31)
  br label %ren_HasNonZeroBenefit.exit

bb.ak:                                            ; preds = %bb.ah
  br i1 %.not79.i, label %ren_HasNonZeroBenefit.exit.thread39, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ao = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef nonnull readnone %.021, ptr noundef nonnull readonly %.val31)
  br label %ren_HasNonZeroBenefit.exit

bb.am:                                            ; preds = %bb.e
  %i.ap = load ptr, ptr @stdout, align 8
  %i.aq = tail call i32 @fflush(ptr noundef %i.ap) ; 0 uses
  %i.ar = load ptr, ptr @stderr, align 8
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1018) #11 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.19) #10
  %i.at = load ptr, ptr @stderr, align 8
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.11, i64 132, i64 1, ptr %i.at) #12 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

ren_HasNonZeroBenefit.exit:                       ; preds = %bb.ae, %bb.ag, %bb.aj, %bb.al
  %.0.i = phi i32 [ %i.an, %bb.aj ], [ %i.ak, %bb.ag ], [ %spec.select.i, %bb.ae ], [ %i.ao, %bb.al ]
  %.not26 = icmp eq i32 %.0.i, 0
  br i1 %.not26, label %ren_HasNonZeroBenefit.exit.thread39, label %ren_HasNonZeroBenefit.exit.thread

ren_HasNonZeroBenefit.exit.thread39:              ; preds = %bb.ab, %bb.ak, %bb.af, %ren_HasNEquivFathers.exit.thread.i, %ren_HasNonZeroBenefit.exit, %.critedge
  %i.av = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not6.i.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i, label %ren_Delete.exit, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %ren_HasNonZeroBenefit.exit.thread39, %.lr.ph.i.i34
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i34 ], [ %i.av, %ren_HasNonZeroBenefit.exit.thread39 ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bb = add i64 %i.ba, %i.az
  store i64 %i.bb, ptr @memory_FREEDBYTES, align 8
  %i.bc = load ptr, ptr %i.aw, align 8
  store ptr %i.bc, ptr %.07.i.i, align 8
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.bd, align 8
  %.not.i.i35 = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i35, label %ren_Delete.exit, label %.lr.ph.i.i34, !llvm.loop !6

ren_Delete.exit:                                  ; preds = %.lr.ph.i.i34, %ren_HasNonZeroBenefit.exit.thread39
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 192), align 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bj = add i64 %i.bi, %i.bh
  store i64 %i.bj, ptr @memory_FREEDBYTES, align 8
  %i.bk = load ptr, ptr %i.be, align 8
  store ptr %i.bk, ptr %.0.val27, align 8
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 192), align 8
  store ptr %.0.val27, ptr %i.bl, align 8
  store ptr null, ptr %i.a, align 8
  br label %bb.an

ren_HasNonZeroBenefit.exit.thread:                ; preds = %.lr.ph.i.i, %bb.aa, %bb.ai, %bb.ad, %.thread.i, %bb.n, %.thread109.i, %bb.q, %bb.s, %bb.u, %bb.w, %ren_HasNonZeroBenefit.exit
  %i.bm = load i32, ptr @term_STAMP, align 4
  store i32 %i.bm, ptr %i.g, align 8
  br label %bb.an
end_hunk_0
begin_hunk_1_@ren_PExtraFactorOk:bb.a
bb.f:                                             ; preds = %bb.d
  %.not77 = icmp eq i32 %.val70, %i.g
  br i1 %.not77, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.tr94, i64 16
  %.val68 = load ptr, ptr %i.s, align 8           ; 2 uses
  %i.t = getelementptr i8, ptr %.val68, i64 8
  %.val68.val = load ptr, ptr %i.t, align 8       ; 2 uses
  %.val62.val = load ptr, ptr %.val68, align 8
  %i.u = getelementptr i8, ptr %.val62.val, i64 8
  %.val62.val.val = load ptr, ptr %i.u, align 8   ; 2 uses
  %i.v = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val68.val)
  %.not55 = icmp eq i32 %i.v, 0
  br i1 %.not55, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.w = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val62.val.val)
  %.not56 = icmp eq i32 %i.w, 0
  br i1 %.not56, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.x = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val68.val)
  %.not57 = icmp eq i32 %i.x, 0
  br i1 %.not57, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.y = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val62.val.val)
  br label %.critedge

bb.k:                                             ; preds = %bb.f
  %.not78 = icmp eq i32 %.val70, %i.h
  br i1 %.not78, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %.tr94, i64 16     ; 2 uses
  %.val65 = load ptr, ptr %i.z, align 8
  %i.aa = tail call i32 @list_Length(ptr noundef %.val65) #10
  %i.ab = icmp ugt i32 %i.aa, 2
  br i1 %i.ab, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val67 = load ptr, ptr %i.z, align 8           ; 2 uses
  %i.ac = getelementptr i8, ptr %.val67, i64 8
  %.val67.val = load ptr, ptr %i.ac, align 8
  %i.ad = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val67.val)
  %.not54 = icmp eq i32 %i.ad, 0
  br i1 %.not54, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %.val61.val = load ptr, ptr %.val67, align 8
  %i.ae = getelementptr i8, ptr %.val61.val, i64 8
  %.val61.val.val = load ptr, ptr %i.ae, align 8
  %i.af = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val61.val.val)
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %.not79 = icmp eq i32 %.val70, %i.i
  br i1 %.not79, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %.tr94, i64 16
  %.val66 = load ptr, ptr %i.ag, align 8          ; 2 uses
  %i.ah = getelementptr i8, ptr %.val66, i64 8
  %.val66.val = load ptr, ptr %i.ah, align 8      ; 2 uses
  %.val60.val = load ptr, ptr %.val66, align 8
  %i.ai = getelementptr i8, ptr %.val60.val, i64 8
  %.val60.val.val = load ptr, ptr %i.ai, align 8  ; 2 uses
  %i.aj = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val60.val.val)
  %i.ak = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val66.val)
  %.not50 = icmp eq i32 %i.ak, 0
  %.not53 = icmp eq i32 %i.aj, 0                  ; 2 uses
  br i1 %.not50, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not53, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.al = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.val66.val)
  br label %.critedge

bb.s:                                             ; preds = %bb.p
  br i1 %.not53, label %.critedge, label %tailrecurse.backedge

bb.t:                                             ; preds = %bb.o
  %i.am = load i32, ptr @fol_OR, align 4
  %.not80 = icmp eq i32 %.val70, %i.am
  br i1 %.not80, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.an = getelementptr i8, ptr %.tr94, i64 16
  %.095 = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not8196 = icmp eq ptr %.095, null
  br i1 %.not8196, label %.critedge, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.u, %bb.x
  %.098 = phi ptr [ %.0, %bb.x ], [ %.095, %bb.u ] ; 2 uses
  %.03697 = phi i32 [ %.1, %bb.x ], [ 0, %bb.u ]  ; 2 uses
  %i.ao = getelementptr i8, ptr %.098, i64 8
  %.0.val59 = load ptr, ptr %i.ao, align 8        ; 2 uses
  %i.ap = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.0.val59)
  %.not47 = icmp eq i32 %i.ap, 0
  br i1 %.not47, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph99
  %.not48 = icmp eq i32 %.03697, 0
  br i1 %.not48, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.aq = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.0.val59)
  %.not49 = icmp eq i32 %i.aq, 0
  br i1 %.not49, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w, %.lr.ph99
  %.1 = phi i32 [ %.03697, %.lr.ph99 ], [ 1, %bb.w ]
  %.0 = load ptr, ptr %.098, align 8              ; 2 uses
  %.not81 = icmp eq ptr %.0, null
  br i1 %.not81, label %.critedge, label %.lr.ph99, !llvm.loop !29

.critedge:                                        ; preds = %term_IsAtom.exit, %tailrecurse.backedge, %bb.s, %bb.v, %bb.w, %bb.x, %bb.a, %bb.u, %bb.r, %bb.t, %bb.q, %bb.l, %bb.m, %bb.n, %bb.g, %bb.h, %bb.i, %bb.j, %bb.e
  %.138 = phi i32 [ 0, %bb.t ], [ 1, %bb.q ], [ %i.r, %bb.e ], [ 1, %bb.l ], [ %i.y, %bb.j ], [ %i.af, %bb.n ], [ %i.al, %bb.r ], [ 0, %bb.a ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.m ], [ 0, %bb.u ], [ 0, %bb.x ], [ 1, %bb.v ], [ 1, %bb.w ], [ 0, %bb.s ], [ 0, %tailrecurse.backedge ], [ 0, %term_IsAtom.exit ]
  ret i32 %.138
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ren_AExtraFactorOk(ptr noundef readnone captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.thread, label %.lr.ph145

.lr.ph145:                                        ; preds = %bb.a, %.lr.ph145.backedge
  %.tr123143 = phi ptr [ %.val109, %.lr.ph145.backedge ], [ %1, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %.tr123143, i64 8
  %.val109 = load ptr, ptr %i.b, align 8          ; 20 uses
  %.val = load i32, ptr %.val109, align 8         ; 7 uses
  %i.c = load i32, ptr @fol_AND, align 4
  %.not = icmp eq i32 %.val, %i.c
  br i1 %.not, label %tailrecurse.backedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph145
  %i.d = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp ne i32 %i.d, %.val
  %i.e = load i32, ptr @fol_EXIST, align 4
  %i.f = icmp ne i32 %i.e, %.val
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.c, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %._crit_edge, %.lr.ph145, %bb.b
  %.old.old.old = icmp eq ptr %0, %.val109
  br i1 %.old.old.old, label %.thread, label %.lr.ph145.backedge

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @fol_NOT, align 4
  %.not118 = icmp eq i32 %.val, %i.g
  br i1 %.not118, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr @fol_OR, align 4
  %.not119 = icmp eq i32 %.val, %i.i
  br i1 %.not119, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.val109, i64 16
  %.069139 = load ptr, ptr %i.j, align 8          ; 2 uses
  %.not120140 = icmp eq ptr %.069139, null
  br i1 %.not120140, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %.069142 = phi ptr [ %.069, %bb.j ], [ %.069139, %bb.f ] ; 2 uses
  %.070141 = phi i32 [ %.171, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %i.k = getelementptr i8, ptr %.069142, i64 8
  %.069.val102 = load ptr, ptr %i.k, align 8      ; 3 uses
  %.not98 = icmp eq ptr %.069.val102, %.tr123143
  br i1 %.not98, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.l = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.069.val102)
  %.not99 = icmp eq i32 %i.l, 0
  br i1 %.not99, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not100 = icmp eq i32 %.070141, 0
  br i1 %.not100, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.m = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.069.val102)
  %.not101 = icmp eq i32 %i.m, 0
  br i1 %.not101, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i, %.lr.ph, %bb.g
  %.171 = phi i32 [ %.070141, %.lr.ph ], [ %.070141, %bb.g ], [ 1, %bb.i ] ; 2 uses
  %.069 = load ptr, ptr %.069142, align 8         ; 2 uses
  %.not120 = icmp eq ptr %.069, null
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.j
  %2 = trunc nuw i32 %.171 to i1
  %i.n = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %.not96 = icmp eq i32 %i.n, 0                   ; 2 uses
  %brmerge = select i1 %.not96, i1 true, i1 %2
  br i1 %brmerge, label %.thread.loopexit209.split.loop.exit, label %tailrecurse.backedge

._crit_edge.thread:                               ; preds = %bb.f
  %i.o = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %.not96173 = icmp eq i32 %i.o, 0
  %.old.old = icmp eq ptr %0, %.val109
  %or.cond192 = or i1 %.not96173, %.old.old
  br i1 %or.cond192, label %.thread, label %.lr.ph145.backedge

.lr.ph145.backedge:                               ; preds = %._crit_edge.thread, %tailrecurse.backedge, %bb.q, %bb.ac
  br label %.lr.ph145

bb.k:                                             ; preds = %bb.e
  %i.p = load i32, ptr @fol_IMPLIES, align 4
  %.not121 = icmp eq i32 %.val, %i.p
  br i1 %.not121, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %.val109, i64 16
  %.val108 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %.val108, i64 8
  %.val108.val = load ptr, ptr %i.r, align 8      ; 3 uses
  %i.s = icmp eq ptr %.tr123143, %.val108.val
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.t = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.u = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %i.v = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val108.val)
  %.not91 = icmp eq i32 %i.v, 0
  %.not94 = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not91, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not94, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.w = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.val108.val)
  br label %.thread

bb.q:                                             ; preds = %bb.n
  %i.x = icmp eq ptr %0, %.val109
  %or.cond = or i1 %.not94, %i.x
  br i1 %or.cond, label %.thread, label %.lr.ph145.backedge

bb.r:                                             ; preds = %bb.k
  %i.y = load i32, ptr @fol_EQUIV, align 4
  %.not122 = icmp eq i32 %.val, %i.y
  br i1 %.not122, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr i8, ptr %.val109, i64 16
  %.val106 = load ptr, ptr %i.z, align 8          ; 2 uses
  %i.aa = getelementptr i8, ptr %.val106, i64 8
  %.val106.val = load ptr, ptr %i.aa, align 8     ; 2 uses
  %i.ab = icmp eq ptr %.tr123143, %.val106.val
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val103.val = load ptr, ptr %.val106, align 8
  %i.ac = getelementptr i8, ptr %.val103.val, i64 8
  %.val103.val.val = load ptr, ptr %i.ac, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.068 = phi ptr [ %.val103.val.val, %bb.t ], [ %.val106.val, %bb.s ] ; 6 uses
  %i.ad = tail call fastcc i32 @ren_Polarity(ptr noundef nonnull %.val109)
  switch i32 %i.ad, label %default.unreachable171 [
    i32 0, label %bb.v
    i32 1, label %bb.z
    i32 -1, label %bb.ad
  ]

bb.v:                                             ; preds = %bb.u
  %i.ae = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.068)
  %.not88 = icmp eq i32 %i.ae, 0
  br i1 %.not88, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.af = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.068)
  %.not89 = icmp eq i32 %i.af, 0
  br i1 %.not89, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.ag = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %.not90 = icmp eq i32 %i.ag, 0
  br i1 %.not90, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.ah = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  br label %.thread

bb.z:                                             ; preds = %bb.u
  %i.ak = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %i.al = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.068)
  %.not84 = icmp eq i32 %i.al, 0
  %.not87 = icmp eq i32 %i.ak, 0                  ; 2 uses
  br i1 %.not84, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not87, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.am = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.068)
  br label %.thread

bb.ac:                                            ; preds = %bb.z
  %.old = icmp eq ptr %0, %.val109
  %or.cond154 = or i1 %.not87, %.old
  br i1 %or.cond154, label %.thread, label %.lr.ph145.backedge

bb.ad:                                            ; preds = %bb.u
  %i.an = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %i.ao = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.068)
  %.not80 = icmp eq i32 %i.ao, 0
  %.not83 = icmp eq i32 %i.an, 0                  ; 2 uses
  br i1 %.not80, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not83, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.ap = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.068)
  br label %.thread

bb.ag:                                            ; preds = %bb.ad
  br i1 %.not83, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.aq = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  br label %.thread

default.unreachable171:                           ; preds = %bb.u
  unreachable

bb.ai:                                            ; preds = %bb.r
  %i.ar = load ptr, ptr @stdout, align 8
  %i.as = tail call i32 @fflush(ptr noundef %i.ar) ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 616) #11 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.15) #10
  %i.av = load ptr, ptr @stderr, align 8
  %i.aw = tail call i64 @fwrite(ptr nonnull @.str.11, i64 132, i64 1, ptr %i.av) #12 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

.thread.loopexit209.split.loop.exit:              ; preds = %._crit_edge
  %not..not96.le = xor i1 %.not96, true
  %.mux.le = zext i1 %not..not96.le to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit209.split.loop.exit, %._crit_edge.thread, %bb.ac, %bb.q, %tailrecurse.backedge, %bb.i, %bb.h, %bb.a, %bb.af, %bb.ab, %bb.p, %bb.ae, %bb.ah, %bb.ag, %bb.aa, %bb.v, %bb.w, %bb.x, %bb.y, %bb.o, %bb.m, %bb.d
  %.1 = phi i32 [ 1, %bb.i ], [ 0, %bb.ag ], [ %i.h, %bb.d ], [ 1, %bb.x ], [ %i.t, %bb.m ], [ 1, %bb.ae ], [ %i.w, %bb.p ], [ %i.ap, %bb.af ], [ %i.aj, %bb.y ], [ %i.am, %bb.ab ], [ 1, %bb.aa ], [ 1, %bb.w ], [ 1, %bb.v ], [ %i.aq, %bb.ah ], [ 1, %bb.o ], [ 0, %bb.a ], [ 1, %bb.h ], [ 0, %bb.q ], [ 0, %._crit_edge.thread ], [ %.mux.le, %.thread.loopexit209.split.loop.exit ], [ 0, %bb.ac ], [ 0, %tailrecurse.backedge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ren_NotPExtraFactorOk(ptr noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @term_STAMP, align 4       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val6579 = load i32, ptr %i.b, align 8
  %.not80 = icmp eq i32 %.val6579, %i.a
  br i1 %.not80, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr @symbol_TYPEMASK, align 4
  %i.d = load i32, ptr @fol_NOT, align 4
  %i.e = load i32, ptr @fol_ALL, align 4
  %i.f = load i32, ptr @fol_EXIST, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr81 = phi ptr [ %0, %.lr.ph ], [ %.val57.val.val, %tailrecurse ] ; 7 uses
  %.val64 = load i32, ptr %.tr81, align 8         ; 9 uses
  %.not.i.i = icmp sgt i32 %.val64, -1
  br i1 %.not.i.i, label %term_IsAtom.exit.thread, label %term_IsAtom.exit

term_IsAtom.exit:                                 ; preds = %bb.b
  %i.g = sub nsw i32 0, %.val64
  %i.h = and i32 %i.c, %i.g
  %.not67 = icmp eq i32 %i.h, 2
  br i1 %.not67, label %.critedge, label %term_IsAtom.exit.thread

term_IsAtom.exit.thread:                          ; preds = %bb.b, %term_IsAtom.exit
  %.not68 = icmp eq i32 %.val64, %i.d
  br i1 %.not68, label %bb.c, label %bb.d

bb.c:                                             ; preds = %term_IsAtom.exit.thread
  %i.i = getelementptr i8, ptr %.tr81, i64 16
  %.val63 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val63, i64 8
end_hunk_1
begin_hunk_2_@ren_NotPExtraFactorOk:bb.a
  %i.o = getelementptr i8, ptr %.val57.val.val, i64 24
  %.val65 = load i32, ptr %i.o, align 8
  %.not = icmp eq i32 %.val65, %i.a
  br i1 %.not, label %.critedge, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr @fol_EQUIV, align 4
  %.not70 = icmp eq i32 %.val64, %i.p
  br i1 %.not70, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.tr81, i64 16
  %.val62 = load ptr, ptr %i.q, align 8           ; 2 uses
  %i.r = getelementptr i8, ptr %.val62, i64 8
  %.val62.val = load ptr, ptr %i.r, align 8       ; 2 uses
  %.val56.val = load ptr, ptr %.val62, align 8
  %i.s = getelementptr i8, ptr %.val56.val, i64 8
  %.val56.val.val = load ptr, ptr %i.s, align 8   ; 2 uses
  %i.t = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val62.val)
  %.not48 = icmp eq i32 %i.t, 0
  br i1 %.not48, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val56.val.val)
  %.not49 = icmp eq i32 %i.u, 0
  br i1 %.not49, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.v = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val62.val)
  %.not50 = icmp eq i32 %i.v, 0
  br i1 %.not50, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.w = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val56.val.val)
  br label %.critedge

bb.j:                                             ; preds = %bb.e
  %i.x = load i32, ptr @fol_OR, align 4
  %.not71 = icmp eq i32 %.val64, %i.x
  br i1 %.not71, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %.tr81, i64 16     ; 2 uses
  %.val59 = load ptr, ptr %i.y, align 8
  %i.z = tail call i32 @list_Length(ptr noundef %.val59) #10
  %i.aa = icmp ugt i32 %i.z, 2
  br i1 %i.aa, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val61 = load ptr, ptr %i.y, align 8           ; 2 uses
  %i.ab = getelementptr i8, ptr %.val61, i64 8
  %.val61.val = load ptr, ptr %i.ab, align 8
  %i.ac = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val61.val)
  %.not46 = icmp eq i32 %i.ac, 0
  br i1 %.not46, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %.val55.val = load ptr, ptr %.val61, align 8
  %i.ad = getelementptr i8, ptr %.val55.val, i64 8
  %.val55.val.val = load ptr, ptr %i.ad, align 8
  %i.ae = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val55.val.val)
  br label %.critedge

bb.n:                                             ; preds = %bb.j
  %i.af = load i32, ptr @fol_IMPLIES, align 4
  %.not72 = icmp eq i32 %.val64, %i.af
  br i1 %.not72, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr i8, ptr %.tr81, i64 16
  %.val60 = load ptr, ptr %i.ag, align 8          ; 2 uses
  %i.ah = getelementptr i8, ptr %.val60, i64 8
  %.val60.val = load ptr, ptr %i.ah, align 8
  %i.ai = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val60.val)
  %.not44 = icmp eq i32 %i.ai, 0
  br i1 %.not44, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %.val54.val = load ptr, ptr %.val60, align 8
  %i.aj = getelementptr i8, ptr %.val54.val, i64 8
  %.val54.val.val = load ptr, ptr %i.aj, align 8
  %i.ak = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val54.val.val)
  br label %.critedge

bb.q:                                             ; preds = %bb.n
  %i.al = load i32, ptr @fol_AND, align 4
  %.not73 = icmp eq i32 %.val64, %i.al
  br i1 %.not73, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %.tr81, i64 16
  %.02982 = load ptr, ptr %i.am, align 8          ; 2 uses
  %.not7483 = icmp eq ptr %.02982, null
  br i1 %.not7483, label %.critedge, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.r, %bb.u
  %.02985 = phi ptr [ %.029, %bb.u ], [ %.02982, %bb.r ] ; 2 uses
  %.084 = phi i32 [ %.1, %bb.u ], [ 0, %bb.r ]    ; 2 uses
  %i.an = getelementptr i8, ptr %.02985, i64 8
  %.029.val53 = load ptr, ptr %i.an, align 8      ; 2 uses
  %i.ao = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.029.val53)
  %.not41 = icmp eq i32 %i.ao, 0
  br i1 %.not41, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph86
  %.not42 = icmp eq i32 %.084, 0
  br i1 %.not42, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.ap = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.029.val53)
  %.not43 = icmp eq i32 %i.ap, 0
  br i1 %.not43, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t, %.lr.ph86
  %.1 = phi i32 [ %.084, %.lr.ph86 ], [ 1, %bb.t ]
  %.029 = load ptr, ptr %.02985, align 8          ; 2 uses
  %.not74 = icmp eq ptr %.029, null
  br i1 %.not74, label %.critedge, label %.lr.ph86, !llvm.loop !31

.critedge:                                        ; preds = %term_IsAtom.exit, %tailrecurse, %bb.s, %bb.t, %bb.u, %bb.a, %bb.r, %bb.q, %bb.p, %bb.m, %bb.o, %bb.k, %bb.l, %bb.f, %bb.g, %bb.h, %bb.i, %bb.c
  %.131 = phi i32 [ 1, %bb.l ], [ %i.k, %bb.c ], [ 0, %bb.q ], [ 1, %bb.f ], [ %i.w, %bb.i ], [ 1, %bb.o ], [ 1, %bb.k ], [ %i.ak, %bb.p ], [ %i.ae, %bb.m ], [ 0, %bb.a ], [ 1, %bb.h ], [ 1, %bb.g ], [ 0, %bb.u ], [ 0, %bb.r ], [ 1, %bb.t ], [ 1, %bb.s ], [ 0, %tailrecurse ], [ 0, %term_IsAtom.exit ]
  ret i32 %.131
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ren_BExtraFactorOk(ptr noundef readnone captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.thread, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.a, %.lr.ph142.backedge
  %.tr123140 = phi ptr [ %.val109, %.lr.ph142.backedge ], [ %1, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %.tr123140, i64 8
  %.val109 = load ptr, ptr %i.b, align 8          ; 19 uses
  %.val = load i32, ptr %.val109, align 8         ; 7 uses
  %i.c = load i32, ptr @fol_OR, align 4
  %.not = icmp eq i32 %.val, %i.c
  br i1 %.not, label %tailrecurse.backedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph142
  %i.d = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp ne i32 %i.d, %.val
  %i.e = load i32, ptr @fol_EXIST, align 4
  %i.f = icmp ne i32 %i.e, %.val
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.c, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %._crit_edge, %.lr.ph142, %bb.b, %bb.l
  %.old.old = icmp eq ptr %0, %.val109
  br i1 %.old.old, label %.thread, label %.lr.ph142.backedge

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @fol_NOT, align 4
  %.not118 = icmp eq i32 %.val, %i.g
  br i1 %.not118, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr @fol_AND, align 4
  %.not119 = icmp eq i32 %.val, %i.i
  br i1 %.not119, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.val109, i64 16
  %.069136 = load ptr, ptr %i.j, align 8          ; 2 uses
  %.not120137 = icmp eq ptr %.069136, null
  br i1 %.not120137, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %.069139 = phi ptr [ %.069, %bb.j ], [ %.069136, %bb.f ] ; 2 uses
  %.070138 = phi i32 [ %.171, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %i.k = getelementptr i8, ptr %.069139, i64 8
  %.069.val102 = load ptr, ptr %i.k, align 8      ; 3 uses
  %.not98 = icmp eq ptr %.069.val102, %.tr123140
  br i1 %.not98, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.l = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.069.val102)
  %.not99 = icmp eq i32 %i.l, 0
  br i1 %.not99, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not100 = icmp eq i32 %.070138, 0
  br i1 %.not100, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.m = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.069.val102)
  %.not101 = icmp eq i32 %i.m, 0
  br i1 %.not101, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i, %.lr.ph, %bb.g
  %.171 = phi i32 [ %.070138, %.lr.ph ], [ %.070138, %bb.g ], [ 1, %bb.i ] ; 2 uses
  %.069 = load ptr, ptr %.069139, align 8         ; 2 uses
  %.not120 = icmp eq ptr %.069, null
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.j
  %2 = trunc nuw i32 %.171 to i1
  %i.n = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %.not96 = icmp eq i32 %i.n, 0                   ; 2 uses
  %brmerge = select i1 %.not96, i1 true, i1 %2
  br i1 %brmerge, label %.thread.loopexit194.split.loop.exit, label %tailrecurse.backedge

._crit_edge.thread:                               ; preds = %bb.f
  %i.o = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %.not96164 = icmp eq i32 %i.o, 0
  %.old = icmp eq ptr %0, %.val109
  %or.cond180 = or i1 %.not96164, %.old
  br i1 %or.cond180, label %.thread, label %.lr.ph142.backedge

.lr.ph142.backedge:                               ; preds = %._crit_edge.thread, %tailrecurse.backedge, %bb.ah
  br label %.lr.ph142

bb.k:                                             ; preds = %bb.e
  %i.p = load i32, ptr @fol_IMPLIES, align 4
  %.not121 = icmp eq i32 %.val, %i.p
  br i1 %.not121, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %.val109, i64 16
  %.val108 = load ptr, ptr %i.q, align 8          ; 2 uses
  %i.r = getelementptr i8, ptr %.val108, i64 8
  %.val108.val = load ptr, ptr %i.r, align 8
  %i.s = icmp eq ptr %.tr123140, %.val108.val
  br i1 %i.s, label %bb.m, label %tailrecurse.backedge

bb.m:                                             ; preds = %bb.l
  %.val104.val = load ptr, ptr %.val108, align 8
  %i.t = getelementptr i8, ptr %.val104.val, i64 8
  %.val104.val.val = load ptr, ptr %i.t, align 8  ; 2 uses
  %i.u = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %i.v = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val104.val.val)
  %.not91 = icmp eq i32 %i.v, 0
  %.not94 = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not91, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not94, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.w = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.val104.val.val)
  br label %.thread

bb.p:                                             ; preds = %bb.m
  br i1 %.not94, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  br label %.thread

bb.r:                                             ; preds = %bb.k
  %i.y = load i32, ptr @fol_EQUIV, align 4
  %.not122 = icmp eq i32 %.val, %i.y
  br i1 %.not122, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr i8, ptr %.val109, i64 16
  %.val107 = load ptr, ptr %i.z, align 8          ; 2 uses
  %i.aa = getelementptr i8, ptr %.val107, i64 8
  %.val107.val = load ptr, ptr %i.aa, align 8     ; 2 uses
  %i.ab = icmp eq ptr %.tr123140, %.val107.val
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val103.val = load ptr, ptr %.val107, align 8
  %i.ac = getelementptr i8, ptr %.val103.val, i64 8
  %.val103.val.val = load ptr, ptr %i.ac, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.068 = phi ptr [ %.val103.val.val, %bb.t ], [ %.val107.val, %bb.s ] ; 6 uses
  %i.ad = tail call fastcc i32 @ren_Polarity(ptr noundef nonnull %.val109)
  switch i32 %i.ad, label %default.unreachable162 [
    i32 0, label %bb.v
    i32 1, label %bb.z
    i32 -1, label %bb.ae
  ]

bb.v:                                             ; preds = %bb.u
  %i.ae = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.068)
  %.not88 = icmp eq i32 %i.ae, 0
  br i1 %.not88, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.af = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.068)
  %.not89 = icmp eq i32 %i.af, 0
  br i1 %.not89, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.ag = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %.not90 = icmp eq i32 %i.ag, 0
  br i1 %.not90, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.ah = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  br label %.thread

bb.z:                                             ; preds = %bb.u
  %i.ak = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %i.al = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.068)
  %.not84 = icmp eq i32 %i.al, 0
  %.not87 = icmp eq i32 %i.ak, 0                  ; 2 uses
  br i1 %.not84, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not87, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.am = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.068)
  br label %.thread

bb.ac:                                            ; preds = %bb.z
  br i1 %.not87, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.an = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  br label %.thread

bb.ae:                                            ; preds = %bb.u
  %i.ao = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val109)
  %i.ap = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.068)
  %.not80 = icmp eq i32 %i.ap, 0
  %.not83 = icmp eq i32 %i.ao, 0                  ; 2 uses
  br i1 %.not80, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not83, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.aq = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.068)
  br label %.thread

bb.ah:                                            ; preds = %bb.ae
  %i.ar = icmp eq ptr %0, %.val109
  %or.cond = or i1 %.not83, %i.ar
  br i1 %or.cond, label %.thread, label %.lr.ph142.backedge

default.unreachable162:                           ; preds = %bb.u
  unreachable

bb.ai:                                            ; preds = %bb.r
  %i.as = load ptr, ptr @stdout, align 8
  %i.at = tail call i32 @fflush(ptr noundef %i.as) ; 0 uses
  %i.au = load ptr, ptr @stderr, align 8
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 842) #11 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.16) #10
  %i.aw = load ptr, ptr @stderr, align 8
  %i.ax = tail call i64 @fwrite(ptr nonnull @.str.11, i64 132, i64 1, ptr %i.aw) #12 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

.thread.loopexit194.split.loop.exit:              ; preds = %._crit_edge
  %not..not96.le = xor i1 %.not96, true
  %.mux.le = zext i1 %not..not96.le to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit194.split.loop.exit, %._crit_edge.thread, %bb.ah, %tailrecurse.backedge, %bb.i, %bb.h, %bb.a, %bb.ag, %bb.ab, %bb.o, %bb.af, %bb.aa, %bb.ad, %bb.ac, %bb.v, %bb.w, %bb.x, %bb.y, %bb.n, %bb.q, %bb.p, %bb.d
  %.1 = phi i32 [ %i.an, %bb.ad ], [ 1, %bb.x ], [ %i.h, %bb.d ], [ 1, %bb.w ], [ 1, %bb.af ], [ %i.aq, %bb.ag ], [ %i.w, %bb.o ], [ %i.x, %bb.q ], [ %i.aj, %bb.y ], [ %i.am, %bb.ab ], [ 1, %bb.aa ], [ 1, %bb.v ], [ 0, %bb.a ], [ 0, %bb.ac ], [ 1, %bb.n ], [ 0, %bb.p ], [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.ah ], [ %.mux.le, %.thread.loopexit194.split.loop.exit ], [ 0, %._crit_edge.thread ], [ 0, %tailrecurse.backedge ]
  ret i32 %.1
}

declare i32 @list_Length(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare ptr @fol_Generalizations(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fol_MostGeneralFormula(ptr noundef) local_unnamed_addr #1

declare ptr @fol_Instances(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @list_PointerDeleteElement(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @list_Copy(ptr noundef) local_unnamed_addr #1

declare ptr @memory_Malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ren_PFactorBigger3(ptr noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @term_STAMP, align 4       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val104128 = load i32, ptr %i.b, align 8
  %.not129 = icmp eq i32 %.val104128, %i.a
  br i1 %.not129, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i32, ptr @symbol_TYPEMASK, align 4
  %i.d = load i32, ptr @fol_ALL, align 4
  %i.e = load i32, ptr @fol_EXIST, align 4
  %i.f = load i32, ptr @fol_NOT, align 4
  %i.g = load i32, ptr @fol_AND, align 4
  %i.h = load i32, ptr @fol_OR, align 4
  %i.i = load i32, ptr @fol_IMPLIES, align 4
  br label %bb.b
end_hunk_2
begin_hunk_3_@ren_NotPFactorBigger3:bb.a
  br i1 %.not113122, label %.thread, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.m, %bb.p
  %.1124 = phi ptr [ %.1, %bb.p ], [ %.1121, %bb.m ] ; 2 uses
  %.056123 = phi i32 [ %.157, %bb.p ], [ 0, %bb.m ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.1124, i64 8
  %.1.val92 = load ptr, ptr %i.aj, align 8        ; 2 uses
  %i.ak = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.1.val92)
  %.not83 = icmp eq i32 %i.ak, 0
  br i1 %.not83, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph125
  %.not84 = icmp eq i32 %.056123, 0
  br i1 %.not84, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.al = tail call fastcc i32 @ren_NotPFactorBigger3(ptr noundef %.1.val92)
  %.not85 = icmp eq i32 %i.al, 0
  br i1 %.not85, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o, %.lr.ph125
  %.157 = phi i32 [ %.056123, %.lr.ph125 ], [ 1, %bb.o ]
  %.1 = load ptr, ptr %.1124, align 8             ; 2 uses
  %.not113 = icmp eq ptr %.1, null
  br i1 %.not113, label %.thread, label %.lr.ph125, !llvm.loop !36

bb.q:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %.1121, i64 8
  %.val101.val = load ptr, ptr %i.am, align 8     ; 6 uses
  %.val96.val = load ptr, ptr %.1121, align 8
  %i.an = getelementptr i8, ptr %.val96.val, i64 8
  %.val96.val.val = load ptr, ptr %i.an, align 8  ; 6 uses
  %i.ao = load i32, ptr @fol_IMPLIES, align 4
  %.not114 = icmp eq i32 %.val103, %i.ao
  br i1 %.not114, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val96.val.val)
  %i.aq = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val101.val)
  %.not78 = icmp eq i32 %i.aq, 0
  %.not81 = icmp eq i32 %i.ap, 0                  ; 2 uses
  br i1 %.not78, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not81, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ar = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.val101.val)
  br label %.thread

bb.u:                                             ; preds = %bb.r
  br i1 %.not81, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.val96.val.val)
  br label %.thread

bb.w:                                             ; preds = %bb.q
  %i.at = load i32, ptr @fol_EQUIV, align 4
  %.not115 = icmp eq i32 %.val103, %i.at
  br i1 %.not115, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.au = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val101.val) ; 2 uses
  %i.av = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val101.val) ; 2 uses
  %i.aw = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val96.val.val) ; 2 uses
  %i.ax = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val96.val.val) ; 2 uses
  %i.ay = add nuw nsw i32 %i.av, %i.au
  %i.az = add nuw nsw i32 %i.ay, %i.aw
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  %i.bb = icmp samesign ugt i32 %i.ba, 1
  br i1 %i.bb, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not71 = icmp eq i32 %i.au, 0
  br i1 %.not71, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.val101.val)
  %.not72 = icmp eq i32 %i.bc, 0
  br i1 %.not72, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not73 = icmp eq i32 %i.aw, 0
  br i1 %.not73, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bd = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.val96.val.val)
  %.not74 = icmp eq i32 %i.bd, 0
  br i1 %.not74, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not75 = icmp eq i32 %i.av, 0
  br i1 %.not75, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.val101.val)
  %.not76 = icmp eq i32 %i.be, 0
  br i1 %.not76, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not77 = icmp eq i32 %i.ax, 0
  br i1 %.not77, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bf = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.val96.val.val)
  br label %.thread

bb.ag:                                            ; preds = %bb.w
  %i.bg = load ptr, ptr @stdout, align 8
  %i.bh = tail call i32 @fflush(ptr noundef %i.bg) ; 0 uses
  %i.bi = load ptr, ptr @stderr, align 8
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 479) #11 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.21) #10
  %i.bk = load ptr, ptr @stderr, align 8
  %i.bl = tail call i64 @fwrite(ptr nonnull @.str.11, i64 132, i64 1, ptr %i.bk) #12 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

.thread:                                          ; preds = %term_IsAtom.exit, %tailrecurse, %bb.o, %bb.n, %bb.p, %bb.a, %bb.m, %bb.t, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ae, %bb.s, %bb.v, %bb.u, %._crit_edge, %bb.d
  %.0 = phi i32 [ %i.bf, %bb.af ], [ 0, %bb.ae ], [ %i.o, %bb.d ], [ %i.ag, %._crit_edge ], [ 1, %bb.ad ], [ 1, %bb.ab ], [ 1, %bb.z ], [ %i.as, %bb.v ], [ 0, %bb.a ], [ 1, %bb.x ], [ %i.ar, %bb.t ], [ 1, %bb.s ], [ 0, %bb.u ], [ 0, %bb.m ], [ 0, %bb.p ], [ 1, %bb.n ], [ 1, %bb.o ], [ 0, %tailrecurse ], [ 0, %term_IsAtom.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ren_AFactorBigger3(ptr noundef readnone captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.thread, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.a, %.lr.ph163.backedge
  %.tr141161 = phi ptr [ %.val127, %.lr.ph163.backedge ], [ %1, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %.tr141161, i64 8
  %.val127 = load ptr, ptr %i.b, align 8          ; 22 uses
  %.val = load i32, ptr %.val127, align 8         ; 7 uses
  %i.c = load i32, ptr @fol_AND, align 4
  %.not = icmp eq i32 %.val, %i.c
  br i1 %.not, label %tailrecurse.backedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph163
  %i.d = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp ne i32 %i.d, %.val
  %i.e = load i32, ptr @fol_EXIST, align 4
  %i.f = icmp ne i32 %i.e, %.val
  %narrow.i.not = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %narrow.i.not, label %bb.c, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %._crit_edge, %.lr.ph163, %bb.b
  %.old.old.old = icmp eq ptr %0, %.val127
  br i1 %.old.old.old, label %.thread, label %.lr.ph163.backedge

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @fol_NOT, align 4
  %.not136 = icmp eq i32 %.val, %i.g
  br i1 %.not136, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call fastcc i32 @ren_BFactorBigger3(ptr noundef %0, ptr noundef nonnull %.val127)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr @fol_OR, align 4
  %.not137 = icmp eq i32 %.val, %i.i
  br i1 %.not137, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.val127, i64 16
  %.085157 = load ptr, ptr %i.j, align 8          ; 2 uses
  %.not138158 = icmp eq ptr %.085157, null
  br i1 %.not138158, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %.085160 = phi ptr [ %.085, %bb.j ], [ %.085157, %bb.f ] ; 2 uses
  %.083159 = phi i32 [ %.184, %bb.j ], [ 0, %bb.f ] ; 3 uses
  %i.k = getelementptr i8, ptr %.085160, i64 8
  %.085.val120 = load ptr, ptr %i.k, align 8      ; 3 uses
  %.not116 = icmp eq ptr %.tr141161, %.085.val120
  br i1 %.not116, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.l = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.085.val120)
  %.not117 = icmp eq i32 %i.l, 0
  br i1 %.not117, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not118 = icmp eq i32 %.083159, 0
  br i1 %.not118, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.m = tail call fastcc i32 @ren_PFactorBigger3(ptr noundef %.085.val120)
  %.not119 = icmp eq i32 %i.m, 0
  br i1 %.not119, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i, %.lr.ph, %bb.g
  %.184 = phi i32 [ %.083159, %.lr.ph ], [ %.083159, %bb.g ], [ 1, %bb.i ] ; 2 uses
  %.085 = load ptr, ptr %.085160, align 8         ; 2 uses
  %.not138 = icmp eq ptr %.085, null
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.j
  %2 = trunc nuw i32 %.184 to i1
  %i.n = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not114 = icmp eq i32 %i.n, 0                  ; 2 uses
  %brmerge.a = select i1 %.not114, i1 true, i1 %2
  br i1 %brmerge.a, label %.thread.loopexit228.split.loop.exit, label %tailrecurse.backedge

._crit_edge.thread:                               ; preds = %bb.f
  %i.o = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not114191 = icmp eq i32 %i.o, 0
  %.old.old = icmp eq ptr %0, %.val127
  %or.cond210 = or i1 %.not114191, %.old.old
  br i1 %or.cond210, label %.thread, label %.lr.ph163.backedge

.lr.ph163.backedge:                               ; preds = %._crit_edge.thread, %tailrecurse.backedge, %bb.q, %bb.ah
  br label %.lr.ph163

bb.k:                                             ; preds = %bb.e
  %i.p = load i32, ptr @fol_IMPLIES, align 4
  %.not139 = icmp eq i32 %.val, %i.p
  br i1 %.not139, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr i8, ptr %.val127, i64 16
  %.val126 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %.val126, i64 8
  %.val126.val = load ptr, ptr %i.r, align 8      ; 3 uses
  %i.s = icmp eq ptr %.tr141161, %.val126.val
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.t = tail call fastcc i32 @ren_BFactorBigger3(ptr noundef %0, ptr noundef nonnull %.val127)
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.u = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %i.v = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.val126.val)
  %.not109 = icmp eq i32 %i.v, 0
  %.not112 = icmp eq i32 %i.u, 0                  ; 2 uses
  br i1 %.not109, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not112, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.w = tail call fastcc i32 @ren_NotPFactorBigger3(ptr noundef %.val126.val)
  br label %.thread

bb.q:                                             ; preds = %bb.n
  %i.x = icmp eq ptr %0, %.val127
  %or.cond = or i1 %.not112, %i.x
  br i1 %or.cond, label %.thread, label %.lr.ph163.backedge

bb.r:                                             ; preds = %bb.k
  %i.y = load i32, ptr @fol_EQUIV, align 4
  %.not140 = icmp eq i32 %.val, %i.y
  br i1 %.not140, label %bb.s, label %bb.an

bb.s:                                             ; preds = %bb.r
  %i.z = getelementptr i8, ptr %.val127, i64 16
  %.val124 = load ptr, ptr %i.z, align 8          ; 2 uses
  %i.aa = getelementptr i8, ptr %.val124, i64 8
  %.val124.val = load ptr, ptr %i.aa, align 8     ; 2 uses
  %i.ab = icmp eq ptr %.tr141161, %.val124.val
  br i1 %i.ab, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val121.val = load ptr, ptr %.val124, align 8
  %i.ac = getelementptr i8, ptr %.val121.val, i64 8
  %.val121.val.val = load ptr, ptr %i.ac, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.082 = phi ptr [ %.val121.val.val, %bb.t ], [ %.val124.val, %bb.s ] ; 8 uses
  %i.ad = tail call fastcc i32 @ren_Polarity(ptr noundef nonnull %.val127)
  switch i32 %i.ad, label %default.unreachable189 [
    i32 0, label %bb.v
    i32 1, label %bb.ae
    i32 -1, label %bb.ai
  ]

bb.v:                                             ; preds = %bb.u
  %i.ae = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not102 = icmp ne i32 %i.ae, 0                 ; 2 uses
  %i.af = zext i1 %.not102 to i32
  %i.ag = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not103 = icmp ne i32 %i.ag, 0                 ; 3 uses
  %i.ah = zext i1 %.not103 to i32
  %i.ai = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.082) ; 2 uses
  %i.aj = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.082) ; 2 uses
  %.not105 = trunc nuw i32 %i.aj to i1
  %i.ak = add nuw nsw i32 %i.ai, %i.af
  %i.al = add nuw nsw i32 %i.ak, %i.ah
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = icmp samesign ugt i32 %i.am, 1
  br i1 %i.an, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not104 = trunc nuw i32 %i.ai to i1
  br i1 %.not104, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ao = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.082)
  %.not106 = icmp eq i32 %i.ao, 0
  br i1 %.not106, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not105, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ap = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.082)
  %.not107 = icmp eq i32 %i.ap, 0
  br i1 %.not107, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not102, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aq = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val127) ; 2 uses
  %.not108 = trunc nuw i32 %i.aq to i1
  %not..not108 = xor i1 %.not103, true
  %brmerge = select i1 %.not108, i1 true, i1 %not..not108
  br i1 %brmerge, label %.thread, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  br i1 %.not103, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.ar = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  br label %.thread

bb.ae:                                            ; preds = %bb.u
  %i.as = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %i.at = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.082)
  %.not98 = icmp eq i32 %i.at, 0
  %.not101 = icmp eq i32 %i.as, 0                 ; 2 uses
  br i1 %.not98, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not101, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.au = tail call fastcc i32 @ren_NotPFactorBigger3(ptr noundef %.082)
  br label %.thread

bb.ah:                                            ; preds = %bb.ae
  %.old = icmp eq ptr %0, %.val127
  %or.cond172 = or i1 %.not101, %.old
  br i1 %or.cond172, label %.thread, label %.lr.ph163.backedge

bb.ai:                                            ; preds = %bb.u
  %i.av = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %i.aw = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.082)
  %.not94 = icmp eq i32 %i.aw, 0
  %.not97 = icmp eq i32 %i.av, 0                  ; 2 uses
  br i1 %.not94, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not97, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ax = tail call fastcc i32 @ren_PFactorBigger3(ptr noundef %.082)
  br label %.thread

bb.al:                                            ; preds = %bb.ai
  br i1 %.not97, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ay = tail call fastcc i32 @ren_BFactorBigger3(ptr noundef %0, ptr noundef nonnull %.val127)
  br label %.thread

default.unreachable189:                           ; preds = %bb.u
  unreachable

bb.an:                                            ; preds = %bb.r
  %i.az = load ptr, ptr @stdout, align 8
  %i.ba = tail call i32 @fflush(ptr noundef %i.az) ; 0 uses
  %i.bb = load ptr, ptr @stderr, align 8
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 705) #11 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.22) #10
  %i.bd = load ptr, ptr @stderr, align 8
  %i.be = tail call i64 @fwrite(ptr nonnull @.str.11, i64 132, i64 1, ptr %i.bd) #12 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

.thread.loopexit228.split.loop.exit:              ; preds = %._crit_edge
  %not..not114.le = xor i1 %.not114, true
  %.mux212.le = zext i1 %not..not114.le to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit228.split.loop.exit, %._crit_edge.thread, %bb.ah, %bb.q, %tailrecurse.backedge, %bb.i, %bb.h, %bb.a, %bb.ak, %bb.ag, %bb.p, %bb.aj, %bb.am, %bb.al, %bb.af, %bb.v, %bb.x, %bb.z, %bb.ad, %bb.ac, %bb.ab, %bb.o, %bb.m, %bb.d
  %.1 = phi i32 [ 1, %bb.z ], [ 0, %bb.al ], [ %i.h, %bb.d ], [ 1, %bb.x ], [ %i.t, %bb.m ], [ 1, %bb.aj ], [ %i.w, %bb.p ], [ %i.ax, %bb.ak ], [ %i.ar, %bb.ad ], [ %i.au, %bb.ag ], [ 1, %bb.af ], [ 1, %bb.v ], [ 0, %bb.ac ], [ %i.ay, %bb.am ], [ 1, %bb.o ], [ 1, %bb.i ], [ %i.aq, %bb.ab ], [ 0, %bb.a ], [ 1, %bb.h ], [ 0, %bb.q ], [ 0, %._crit_edge.thread ], [ %.mux212.le, %.thread.loopexit228.split.loop.exit ], [ 0, %bb.ah ], [ 0, %tailrecurse.backedge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ren_BFactorBigger3(ptr noundef readnone captures(address) %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.thread, label %.lr.ph160

.lr.ph160:                                        ; preds = %bb.a, %.lr.ph160.backedge
  %.tr141158 = phi ptr [ %.val127, %.lr.ph160.backedge ], [ %1, %bb.a ] ; 4 uses
  %i.b = getelementptr i8, ptr %.tr141158, i64 8
  %.val127 = load ptr, ptr %i.b, align 8          ; 21 uses
  %.val = load i32, ptr %.val127, align 8         ; 7 uses
  %i.c = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp eq i32 %i.c, %.val
  %i.d = load i32, ptr @fol_EXIST, align 4
  %i.e = icmp eq i32 %i.d, %.val
  %narrow.i.not.not169 = select i1 %.not.i, i1 true, i1 %i.e
  %i.f = load i32, ptr @fol_OR, align 4
  %.not = icmp eq i32 %.val, %i.f
  %or.cond = select i1 %narrow.i.not.not169, i1 true, i1 %.not
  br i1 %or.cond, label %tailrecurse.backedge, label %bb.b

tailrecurse.backedge:                             ; preds = %._crit_edge, %.lr.ph160, %bb.k
  %.old.old = icmp eq ptr %0, %.val127
  br i1 %.old.old, label %.thread, label %.lr.ph160.backedge

bb.b:                                             ; preds = %.lr.ph160
  %i.g = load i32, ptr @fol_NOT, align 4
  %.not136 = icmp eq i32 %.val, %i.g
  br i1 %.not136, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc i32 @ren_AFactorBigger3(ptr noundef %0, ptr noundef nonnull %.val127)
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr @fol_AND, align 4
  %.not137 = icmp eq i32 %.val, %i.i
  br i1 %.not137, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.val127, i64 16
  %.085154 = load ptr, ptr %i.j, align 8          ; 2 uses
  %.not138155 = icmp eq ptr %.085154, null
  br i1 %.not138155, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.i
  %.085157 = phi ptr [ %.085, %bb.i ], [ %.085154, %bb.e ] ; 2 uses
  %.083156 = phi i32 [ %.184, %bb.i ], [ 0, %bb.e ] ; 3 uses
  %i.k = getelementptr i8, ptr %.085157, i64 8
  %.085.val120 = load ptr, ptr %i.k, align 8      ; 3 uses
  %.not116 = icmp eq ptr %.tr141158, %.085.val120
  br i1 %.not116, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.l = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.085.val120)
  %.not117 = icmp eq i32 %i.l, 0
  br i1 %.not117, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not118 = icmp eq i32 %.083156, 0
  br i1 %.not118, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.m = tail call fastcc i32 @ren_NotPFactorBigger3(ptr noundef %.085.val120)
  %.not119 = icmp eq i32 %i.m, 0
  br i1 %.not119, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h, %.lr.ph, %bb.f
  %.184 = phi i32 [ %.083156, %.lr.ph ], [ %.083156, %bb.f ], [ 1, %bb.h ] ; 2 uses
  %.085 = load ptr, ptr %.085157, align 8         ; 2 uses
  %.not138 = icmp eq ptr %.085, null
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.i
  %2 = trunc nuw i32 %.184 to i1
  %i.n = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not114 = icmp eq i32 %i.n, 0                  ; 2 uses
  %brmerge.a = select i1 %.not114, i1 true, i1 %2
  br i1 %brmerge.a, label %.thread.loopexit216.split.loop.exit, label %tailrecurse.backedge

._crit_edge.thread:                               ; preds = %bb.e
  %i.o = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not114185 = icmp eq i32 %i.o, 0
  %.old = icmp eq ptr %0, %.val127
  %or.cond201 = or i1 %.not114185, %.old
  br i1 %or.cond201, label %.thread, label %.lr.ph160.backedge

.lr.ph160.backedge:                               ; preds = %._crit_edge.thread, %tailrecurse.backedge, %bb.al
  br label %.lr.ph160

bb.j:                                             ; preds = %bb.d
  %i.p = load i32, ptr @fol_IMPLIES, align 4
  %.not139 = icmp eq i32 %.val, %i.p
  br i1 %.not139, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %.val127, i64 16
  %.val126 = load ptr, ptr %i.q, align 8          ; 2 uses
  %i.r = getelementptr i8, ptr %.val126, i64 8
  %.val126.val = load ptr, ptr %i.r, align 8
  %i.s = icmp eq ptr %.tr141158, %.val126.val
  br i1 %i.s, label %bb.l, label %tailrecurse.backedge

bb.l:                                             ; preds = %bb.k
  %.val122.val = load ptr, ptr %.val126, align 8
  %i.t = getelementptr i8, ptr %.val122.val, i64 8
  %.val122.val.val = load ptr, ptr %i.t, align 8  ; 2 uses
  %i.u = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %i.v = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.val122.val.val)
  %.not109 = icmp eq i32 %i.v, 0
  %.not112 = icmp eq i32 %i.u, 0                  ; 2 uses
  br i1 %.not109, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not112, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.w = tail call fastcc i32 @ren_PFactorBigger3(ptr noundef %.val122.val.val)
  br label %.thread

bb.o:                                             ; preds = %bb.l
  br i1 %.not112, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = tail call fastcc i32 @ren_AFactorBigger3(ptr noundef %0, ptr noundef nonnull %.val127)
  br label %.thread

bb.q:                                             ; preds = %bb.j
  %i.y = load i32, ptr @fol_EQUIV, align 4
  %.not140 = icmp eq i32 %.val, %i.y
  br i1 %.not140, label %bb.r, label %bb.am

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr i8, ptr %.val127, i64 16
  %.val125 = load ptr, ptr %i.z, align 8          ; 2 uses
  %i.aa = getelementptr i8, ptr %.val125, i64 8
  %.val125.val = load ptr, ptr %i.aa, align 8     ; 2 uses
  %i.ab = icmp eq ptr %.tr141158, %.val125.val
  br i1 %i.ab, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.val121.val = load ptr, ptr %.val125, align 8
  %i.ac = getelementptr i8, ptr %.val121.val, i64 8
  %.val121.val.val = load ptr, ptr %i.ac, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.082 = phi ptr [ %.val121.val.val, %bb.s ], [ %.val125.val, %bb.r ] ; 8 uses
  %i.ad = tail call fastcc i32 @ren_Polarity(ptr noundef nonnull %.val127)
  switch i32 %i.ad, label %default.unreachable183 [
    i32 0, label %bb.u
    i32 1, label %bb.ad
    i32 -1, label %bb.ai
  ]

bb.u:                                             ; preds = %bb.t
  %i.ae = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not102 = icmp ne i32 %i.ae, 0                 ; 2 uses
  %i.af = zext i1 %.not102 to i32
  %i.ag = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %.not103 = icmp ne i32 %i.ag, 0                 ; 3 uses
  %i.ah = zext i1 %.not103 to i32
  %i.ai = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.082) ; 2 uses
  %i.aj = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.082) ; 2 uses
  %.not105 = trunc nuw i32 %i.aj to i1
  %i.ak = add nuw nsw i32 %i.ai, %i.af
  %i.al = add nuw nsw i32 %i.ak, %i.ah
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = icmp samesign ugt i32 %i.am, 1
  br i1 %i.an, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not104 = trunc nuw i32 %i.ai to i1
  br i1 %.not104, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ao = tail call fastcc i32 @ren_PExtraFactorOk(ptr noundef %.082)
  %.not106 = icmp eq i32 %i.ao, 0
  br i1 %.not106, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not105, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ap = tail call fastcc i32 @ren_NotPExtraFactorOk(ptr noundef %.082)
  %.not107 = icmp eq i32 %i.ap, 0
  br i1 %.not107, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %.not102, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aq = tail call fastcc i32 @ren_AExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val127) ; 2 uses
  %.not108 = trunc nuw i32 %i.aq to i1
  %not..not108 = xor i1 %.not103, true
  %brmerge = select i1 %.not108, i1 true, i1 %not..not108
  br i1 %brmerge, label %.thread, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  br i1 %.not103, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ar = tail call fastcc i32 @ren_BExtraFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  br label %.thread

bb.ad:                                            ; preds = %bb.t
  %i.as = tail call fastcc i32 @ren_AFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %i.at = tail call fastcc i32 @ren_PFactorOk(ptr noundef %.082)
  %.not98 = icmp eq i32 %i.at, 0
  %.not101 = icmp eq i32 %i.as, 0                 ; 2 uses
  br i1 %.not98, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not101, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.au = tail call fastcc i32 @ren_PFactorBigger3(ptr noundef %.082)
  br label %.thread

bb.ag:                                            ; preds = %bb.ad
  br i1 %.not101, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.av = tail call fastcc i32 @ren_AFactorBigger3(ptr noundef %0, ptr noundef nonnull %.val127)
  br label %.thread

bb.ai:                                            ; preds = %bb.t
  %i.aw = tail call fastcc i32 @ren_BFactorOk(ptr noundef %0, ptr noundef nonnull %.val127)
  %i.ax = tail call fastcc i32 @ren_NotPFactorOk(ptr noundef %.082)
  %.not94 = icmp eq i32 %i.ax, 0
  %.not97 = icmp eq i32 %i.aw, 0                  ; 2 uses
  br i1 %.not94, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not97, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ay = tail call fastcc i32 @ren_NotPFactorBigger3(ptr noundef %.082)
  br label %.thread

bb.al:                                            ; preds = %bb.ai
  %i.az = icmp eq ptr %0, %.val127
  %or.cond167 = or i1 %.not97, %i.az
  br i1 %or.cond167, label %.thread, label %.lr.ph160.backedge

default.unreachable183:                           ; preds = %bb.t
  unreachable

bb.am:                                            ; preds = %bb.q
  %i.ba = load ptr, ptr @stdout, align 8
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  %i.bc = load ptr, ptr @stderr, align 8
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 930) #11 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.23) #10
  %i.be = load ptr, ptr @stderr, align 8
  %i.bf = tail call i64 @fwrite(ptr nonnull @.str.11, i64 132, i64 1, ptr %i.be) #12 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

.thread.loopexit216.split.loop.exit:              ; preds = %._crit_edge
  %not..not114.le = xor i1 %.not114, true
  %.mux203.le = zext i1 %not..not114.le to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit216.split.loop.exit, %._crit_edge.thread, %bb.al, %tailrecurse.backedge, %bb.h, %bb.g, %bb.a, %bb.ak, %bb.af, %bb.n, %bb.aj, %bb.ae, %bb.ah, %bb.ag, %bb.u, %bb.w, %bb.y, %bb.ac, %bb.ab, %bb.aa, %bb.m, %bb.p, %bb.o, %bb.c
  %.1 = phi i32 [ %i.av, %bb.ah ], [ 1, %bb.w ], [ %i.h, %bb.c ], [ 1, %bb.u ], [ 1, %bb.aj ], [ %i.ay, %bb.ak ], [ %i.w, %bb.n ], [ %i.x, %bb.p ], [ %i.ar, %bb.ac ], [ %i.au, %bb.af ], [ 1, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.a ], [ 0, %bb.ag ], [ 1, %bb.m ], [ 0, %bb.o ], [ %i.aq, %bb.aa ], [ 1, %bb.y ], [ 1, %bb.h ], [ 1, %bb.g ], [ 0, %bb.al ], [ %.mux203.le, %.thread.loopexit216.split.loop.exit ], [ 0, %._crit_edge.thread ], [ 0, %tailrecurse.backedge ]
  ret i32 %.1
}

declare i32 @term_RootDistanceSmaller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ren_RemoveAllSubterms(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @symbol_TYPEMASK, align 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.f, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.val17.val.val, %bb.f ] ; 4 uses
  %.tr24 = phi ptr [ %1, %bb.a ], [ %i.o, %bb.f ] ; 3 uses
  %.not21.i = icmp eq ptr %.tr24, null
  br i1 %.not21.i, label %ren_RemoveTerm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %tailrecurse, %bb.e
  %.022.i = phi ptr [ %.0.val.i, %bb.e ], [ %.tr24, %tailrecurse ] ; 2 uses
  %i.b = getelementptr i8, ptr %.022.i, i64 8     ; 2 uses
  %.0.val17.i = load ptr, ptr %i.b, align 8       ; 5 uses
  %.val19.i = load ptr, ptr %.0.val17.i, align 8
  %i.c = icmp eq ptr %.val19.i, %.tr
  %i.d = getelementptr i8, ptr %.0.val17.i, i64 8 ; 2 uses
  %.val18.i = load ptr, ptr %i.d, align 8         ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not20.i = icmp eq ptr %.val18.i, null
  br i1 %.not20.i, label %ren_Delete.exit.i, label %bb.c

ren_Delete.exit.i:                                ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 192), align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = load i64, ptr @memory_FREEDBYTES, align 8
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr @memory_FREEDBYTES, align 8
  %i.k = load ptr, ptr %i.e, align 8
  store ptr %i.k, ptr %.0.val17.i, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 192), align 8
  store ptr %.0.val17.i, ptr %i.l, align 8
  store ptr null, ptr %i.b, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val17.i, i64 16
  store i32 1, ptr %i.m, align 8
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = tail call ptr @list_PointerDeleteElement(ptr noundef %.val18.i, ptr noundef %.tr) #10
  store ptr %i.n, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %ren_Delete.exit.i
  %.0.val.i = load ptr, ptr %.022.i, align 8      ; 2 uses
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %ren_RemoveTerm.exit, label %.lr.ph.i, !llvm.loop !39

ren_RemoveTerm.exit:                              ; preds = %bb.e, %tailrecurse
  %i.o = tail call ptr @list_PointerDeleteElement(ptr noundef %.tr24, ptr noundef null) #10 ; 4 uses
  %.val15 = load i32, ptr %.tr, align 8           ; 4 uses
  %.not.i19 = icmp sgt i32 %.val15, -1
  br i1 %.not.i19, label %symbol_IsPredicate.exit.thread, label %symbol_IsPredicate.exit

symbol_IsPredicate.exit:                          ; preds = %ren_RemoveTerm.exit
  %i.p = sub nsw i32 0, %.val15
  %i.q = and i32 %i.a, %i.p
  %.not = icmp eq i32 %i.q, 2
  br i1 %.not, label %.loopexit, label %symbol_IsPredicate.exit.thread

symbol_IsPredicate.exit.thread:                   ; preds = %ren_RemoveTerm.exit, %symbol_IsPredicate.exit
  %i.r = load i32, ptr @fol_ALL, align 4
  %.not.i20 = icmp ne i32 %i.r, %.val15
  %i.s = load i32, ptr @fol_EXIST, align 4
  %i.t = icmp ne i32 %i.s, %.val15
  %narrow.i.not = select i1 %.not.i20, i1 %i.t, i1 false
  %i.u = getelementptr i8, ptr %.tr, i64 16
  %.028 = load ptr, ptr %i.u, align 8             ; 3 uses
  br i1 %narrow.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %symbol_IsPredicate.exit.thread
  %.val17.val = load ptr, ptr %.028, align 8
  %i.v = getelementptr i8, ptr %.val17.val, i64 8
  %.val17.val.val = load ptr, ptr %i.v, align 8
  br label %tailrecurse

bb.g:                                             ; preds = %symbol_IsPredicate.exit.thread
  %.not2329 = icmp eq ptr %.028, null
  br i1 %.not2329, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.031 = phi ptr [ %.0, %.lr.ph ], [ %.028, %bb.g ] ; 2 uses
  %.01230 = phi ptr [ %i.x, %.lr.ph ], [ %i.o, %bb.g ]
  %i.w = getelementptr i8, ptr %.031, i64 8
  %.0.val16 = load ptr, ptr %i.w, align 8
  %i.x = tail call fastcc ptr @ren_RemoveAllSubterms(ptr noundef %.0.val16, ptr noundef %.01230) ; 2 uses
  %.0 = load ptr, ptr %.031, align 8              ; 2 uses
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !40

.loopexit:                                        ; preds = %symbol_IsPredicate.exit, %.lr.ph, %bb.g
  %.1 = phi ptr [ %i.x, %.lr.ph ], [ %i.o, %bb.g ], [ %i.o, %symbol_IsPredicate.exit ]
  ret ptr %.1
}

declare ptr @term_Create(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fol_FreeVariables(ptr noundef) local_unnamed_addr #1

declare i32 @symbol_CreateSkolemPredicate(i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @term_Copy(ptr noundef) #1

declare ptr @fol_CreateQuantifier(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @term_Delete(ptr noundef) #1

declare i32 @unify_MatchFlexible(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cont_ApplyBindingsModuloMatching(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @list_CopyWithElement(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
end_hunk_3
