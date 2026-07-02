inline.NumInlined: 1182
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@fol_FreeVariables:bb.a
  %indvars.iv.i67 = phi i64 [ %indvars.iv.next.i68.3, %.preheader.i66.1 ], [ 0, %term_ActMark.exit ] ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @term_BIND, i64 %indvars.iv.i67
  store ptr null, ptr %i.m, align 16
  %exitcond.not.i69 = icmp eq i64 %indvars.iv.i67, 3000
  br i1 %exitcond.not.i69, label %term_ActMark.exit70, label %.preheader.i66.1

.preheader.i66.1:                                 ; preds = %.preheader.i66
  %i.n = getelementptr inbounds nuw [16 x i8], ptr @term_BIND, i64 %indvars.iv.i67
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr null, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw [16 x i8], ptr @term_BIND, i64 %indvars.iv.i67
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw [16 x i8], ptr @term_BIND, i64 %indvars.iv.i67
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr null, ptr %i.s, align 16
  %indvars.iv.next.i68.3 = add nuw nsw i64 %indvars.iv.i67, 4
  br label %.preheader.i66

term_ActMark.exit70:                              ; preds = %.preheader.i66, %.preheader.i, %term_ActMark.exit
  %i.t = phi i32 [ %i.b, %term_ActMark.exit ], [ 1, %.preheader.i ], [ -2, %.preheader.i66 ] ; 2 uses
  %i.u = phi i32 [ %i.k, %term_ActMark.exit ], [ 2, %.preheader.i ], [ 1, %.preheader.i66 ] ; 5 uses
  %i.v = add nuw i32 %i.u, 1
  store i32 %i.v, ptr @term_MARK, align 4
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.t)
  %i.w = zext i32 %i.t to i64
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = zext i32 %i.u to i64
  %i.z = inttoptr i64 %i.y to ptr
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %term_ActMark.exit70
  %stack_POINTER.promoted98 = phi i32 [ %i.a, %term_ActMark.exit70 ], [ %stack_POINTER.promoted99, %.critedge ] ; 9 uses
  %.032 = phi ptr [ null, %term_ActMark.exit70 ], [ %.133, %.critedge ] ; 6 uses
  %.0 = phi ptr [ %0, %term_ActMark.exit70 ], [ %.val, %.critedge ] ; 3 uses
  %.0.val = load i32, ptr %.0, align 8            ; 5 uses
  %i.aa = getelementptr i8, ptr %.0, i64 16       ; 3 uses
  %.0.val64 = load ptr, ptr %i.aa, align 8        ; 5 uses
  %.not73 = icmp eq ptr %.0.val64, null
  br i1 %.not73, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp ne i32 %i.ab, %.0.val
  %i.ac = load i32, ptr @fol_EXIST, align 4
  %i.ad = icmp ne i32 %i.ac, %.0.val
  %narrow.i.not = select i1 %.not.i, i1 %i.ad, i1 false
  br i1 %narrow.i.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %.0.val64, i64 8
  %.0.val65.val = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.0.val65.val, i64 16
  %.03483 = load ptr, ptr %i.af, align 8          ; 2 uses
  %.not84 = icmp eq ptr %.03483, null
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.03485 = phi ptr [ %.034, %bb.f ], [ %.03483, %bb.d ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.03485, i64 8
  %.034.val50 = load ptr, ptr %i.ag, align 8
  %.val59 = load i32, ptr %.034.val50, align 8
  %i.ah = sext i32 %.val59 to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr @term_BIND, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 16
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = trunc i64 %i.ak to i32
  %.not74 = icmp ugt i32 %i.u, %i.al
  br i1 %.not74, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  store ptr %i.x, ptr %i.ai, align 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.034 = load ptr, ptr %.03485, align 8          ; 2 uses
  %.not = icmp eq ptr %.034, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %bb.f
  %.0.val63.pre = load ptr, ptr %i.aa, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.0.val63 = phi ptr [ %.0.val63.pre, %._crit_edge.loopexit ], [ %.0.val64, %bb.d ]
  %i.am = add i32 %stack_POINTER.promoted98, 1    ; 2 uses
  store i32 %i.am, ptr @stack_POINTER, align 4
  %i.an = zext i32 %stack_POINTER.promoted98 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.an
  store ptr %.0.val63, ptr %i.ao, align 8
  %.0.val62 = load ptr, ptr %i.aa, align 8
  %.val54 = load ptr, ptr %.0.val62, align 8
  %i.ap = add i32 %stack_POINTER.promoted98, 2    ; 2 uses
  store i32 %i.ap, ptr @stack_POINTER, align 4
  %i.aq = zext i32 %i.am to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.aq
  store ptr %.val54, ptr %i.ar, align 8
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  %i.as = load i32, ptr @fol_VARLIST, align 4
  %.not75 = icmp eq i32 %.0.val, %i.as
  br i1 %.not75, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.g, %bb.i
  %.13586 = phi ptr [ %.135.val53, %bb.i ], [ %.0.val64, %bb.g ] ; 2 uses
  %i.at = getelementptr i8, ptr %.13586, i64 8
  %.135.val49 = load ptr, ptr %i.at, align 8
  %.val57 = load i32, ptr %.135.val49, align 8
  %i.au = sext i32 %.val57 to i64
  %i.av = getelementptr inbounds [16 x i8], ptr @term_BIND, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 16
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = trunc i64 %i.ax to i32
  %.not77 = icmp ugt i32 %i.u, %i.ay
  br i1 %.not77, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader
  store ptr null, ptr %i.av, align 16
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.h
  %.135.val53 = load ptr, ptr %.13586, align 8    ; 2 uses
  %.not76 = icmp eq ptr %.135.val53, null
  br i1 %.not76, label %bb.j, label %.preheader, !llvm.loop !17

bb.j:                                             ; preds = %bb.i
  %i.az = add i32 %stack_POINTER.promoted98, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %.val52 = load ptr, ptr %i.bc, align 8
  store ptr %.val52, ptr %i.bb, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.bd = add i32 %stack_POINTER.promoted98, 1    ; 2 uses
  store i32 %i.bd, ptr @stack_POINTER, align 4
  %i.be = zext i32 %stack_POINTER.promoted98 to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.be
  store ptr %.0.val64, ptr %i.bf, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.b
  %i.bg = icmp slt i32 %.0.val, 1
  br i1 %i.bg, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = zext nneg i32 %.0.val to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr @term_BIND, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 16
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = trunc i64 %i.bk to i32
  %or.cond = icmp ugt i32 %invariant.umin, %i.bl
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = tail call noundef ptr @memory_Malloc(i32 noundef 16) #17 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.0, ptr %i.bn, align 8
  store ptr %.032, ptr %i.bm, align 8
  store ptr %i.z, ptr %i.bi, align 16
  %stack_POINTER.promoted.pre = load i32, ptr @stack_POINTER, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %._crit_edge, %bb.k, %bb.j
  %stack_POINTER.promoted = phi i32 [ %i.ap, %._crit_edge ], [ %stack_POINTER.promoted98, %bb.j ], [ %i.bd, %bb.k ], [ %stack_POINTER.promoted98, %bb.m ], [ %stack_POINTER.promoted98, %bb.l ], [ %stack_POINTER.promoted.pre, %bb.n ] ; 2 uses
  %.133 = phi ptr [ %.032, %._crit_edge ], [ %.032, %bb.j ], [ %.032, %bb.k ], [ %.032, %bb.m ], [ %.032, %bb.l ], [ %i.bm, %bb.n ] ; 2 uses
  %.not8087 = icmp eq i32 %stack_POINTER.promoted, %i.a
  br i1 %.not8087, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.o, %bb.p
  %stack_POINTER.promoted99 = phi i32 [ %i.bo, %bb.p ], [ %stack_POINTER.promoted, %bb.o ] ; 2 uses
  %i.bo = add i32 %stack_POINTER.promoted99, -1   ; 4 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not81 = icmp eq ptr %i.br, null
  br i1 %.not81, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph89
  store i32 %i.bo, ptr @stack_POINTER, align 4
  %.not80 = icmp eq i32 %i.bo, %i.a
  br i1 %.not80, label %._crit_edge90, label %.lr.ph89, !llvm.loop !18

.critedge:                                        ; preds = %.lr.ph89
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %.val = load ptr, ptr %i.bs, align 8
  %.val51 = load ptr, ptr %i.br, align 8
  store ptr %.val51, ptr %i.bq, align 8
  br label %bb.b, !llvm.loop !19

._crit_edge90:                                    ; preds = %bb.o, %bb.p
  ret ptr %.133
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fol_BoundVariables(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @stack_POINTER, align 4    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %i.b = phi i32 [ %i.a, %bb.a ], [ %stack_POINTER.promoted41, %.critedge ] ; 2 uses
  %.010 = phi ptr [ %0, %bb.a ], [ %.val, %.critedge ] ; 2 uses
  %.010.a = phi ptr [ null, %bb.a ], [ %.1, %.critedge ] ; 6 uses
  %.010.val = load i32, ptr %.010, align 8        ; 2 uses
  %.010.val.a = load i32, ptr @fol_ALL, align 4
  %.not.i = icmp ne i32 %.010.val.a, %.010.val
  %1 = load i32, ptr @fol_EXIST, align 4
  %i.c = icmp ne i32 %1, %.010.val
  %narrow.i.not = select i1 %.not.i, i1 %i.c, i1 false
  %i.d = getelementptr i8, ptr %.010, i64 16      ; 2 uses
  %.010.val21 = load ptr, ptr %i.d, align 8       ; 3 uses
  br i1 %narrow.i.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.010.val21, i64 8
  %.010.val22.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.010.val22.val, i64 16
  %.010.val22.val.val = load ptr, ptr %i.f, align 8
  %i.g = tail call ptr @list_Copy(ptr noundef %.010.val22.val.val) #17 ; 3 uses
  %.not.i23 = icmp eq ptr %.010.a, null
  br i1 %.not.i23, label %list_Nconc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not16.i = icmp eq ptr %i.g, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %.010.a, %bb.d ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.e, label %.preheader.i, !llvm.loop !6

bb.e:                                             ; preds = %.preheader.i
  store ptr %i.g, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %.010.a, %bb.e ], [ %i.g, %bb.c ], [ %.010.a, %bb.d ]
  %.010.val20 = load ptr, ptr %i.d, align 8
  %.val18 = load ptr, ptr %.010.val20, align 8
  %i.h = load i32, ptr @stack_POINTER, align 4
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %.not = icmp eq ptr %.010.val21, null
  br i1 %.not, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %list_Nconc.exit
  %stack_POINTER.promoted40.sink58 = phi i32 [ %i.h, %list_Nconc.exit ], [ %i.b, %bb.f ] ; 2 uses
  %.010.val21.sink = phi ptr [ %.val18, %list_Nconc.exit ], [ %.010.val21, %bb.f ]
  %.1.ph = phi ptr [ %.0.i, %list_Nconc.exit ], [ %.010.a, %bb.f ]
  %i.i = add i32 %stack_POINTER.promoted40.sink58, 1 ; 2 uses
  store i32 %i.i, ptr @stack_POINTER, align 4
  %i.j = zext i32 %stack_POINTER.promoted40.sink58 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.j
  store ptr %.010.val21.sink, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %i.l = phi i32 [ %i.b, %bb.f ], [ %i.i, %.sink.split ] ; 2 uses
  %.1 = phi ptr [ %.010.a, %bb.f ], [ %.1.ph, %.sink.split ] ; 2 uses
  %.not2730 = icmp eq i32 %i.l, %i.a
  br i1 %.not2730, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %stack_POINTER.promoted41 = phi i32 [ %i.m, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  %i.m = add i32 %stack_POINTER.promoted41, -1    ; 4 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  store i32 %i.m, ptr @stack_POINTER, align 4
  %.not27 = icmp eq i32 %i.m, %i.a
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !20

.critedge:                                        ; preds = %.lr.ph
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val = load ptr, ptr %i.q, align 8
  %.val17 = load ptr, ptr %i.p, align 8
  store ptr %.val17, ptr %i.o, align 8
  br label %bb.b, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.r = tail call ptr @list_DeleteDuplicates(ptr noundef %.1, ptr noundef nonnull @term_Equal) #17
  ret ptr %i.r
}

declare ptr @list_Copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @fol_Free() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @fol_SYMBOLS, align 8      ; 2 uses
  %.not6.i = icmp eq ptr %i.a, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr @memory_FREEDBYTES, align 8
  %i.g = add i64 %i.f, %i.e
  store i64 %i.g, ptr @memory_FREEDBYTES, align 8
  %i.h = load ptr, ptr %i.b, align 8
  store ptr %i.h, ptr %.07.i, align 8
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.i, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !10

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @fol_FormulaIsClause(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %.val = load i32, ptr %0, align 8               ; 2 uses
  %i.a = load i32, ptr @fol_ALL, align 4
  %i.b = icmp eq i32 %.val, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val13 = load ptr, ptr %i.c, align 8
  %.val13.val = load ptr, ptr %.val13, align 8
  %i.d = getelementptr i8, ptr %.val13.val, i64 8
  %.val13.val.val = load ptr, ptr %i.d, align 8   ; 2 uses
  %.07.val.pre = load i32, ptr %.val13.val.val, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.07.val = phi i32 [ %.07.val.pre, %bb.b ], [ %.val, %bb.a ]
  %.07 = phi ptr [ %.val13.val.val, %bb.b ], [ %0, %bb.a ]
  %i.e = load i32, ptr @fol_OR, align 4
  %.not = icmp eq i32 %.07.val, %i.e
  br i1 %.not, label %bb.d, label %fol_IsLiteral.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %.07, i64 16
  %.019 = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not1720 = icmp eq ptr %.019, null
  br i1 %.not1720, label %fol_IsLiteral.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.g = load i32, ptr @symbol_TYPEMASK, align 4  ; 2 uses
  %i.h = load i32, ptr @fol_NOT, align 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %fol_IsLiteral.exit.thread15
  %.021 = phi ptr [ %.019, %.lr.ph ], [ %.0, %fol_IsLiteral.exit.thread15 ] ; 2 uses
  %i.i = getelementptr i8, ptr %.021, i64 8
  %.0.val = load ptr, ptr %i.i, align 8           ; 2 uses
  %.val5.i = load i32, ptr %.0.val, align 8       ; 3 uses
  %.not.i.i = icmp sgt i32 %.val5.i, -1
  br i1 %.not.i.i, label %symbol_IsPredicate.exit.thread.i, label %symbol_IsPredicate.exit.i

symbol_IsPredicate.exit.i:                        ; preds = %bb.e
  %i.j = sub nsw i32 0, %.val5.i
  %i.k = and i32 %i.g, %i.j
  %.not.i = icmp eq i32 %i.k, 2
  br i1 %.not.i, label %fol_IsLiteral.exit.thread15, label %symbol_IsPredicate.exit.thread.i

symbol_IsPredicate.exit.thread.i:                 ; preds = %symbol_IsPredicate.exit.i, %bb.e
  %.not10.i = icmp eq i32 %.val5.i, %i.h
  br i1 %.not10.i, label %bb.f, label %fol_IsLiteral.exit.thread

bb.f:                                             ; preds = %symbol_IsPredicate.exit.thread.i
  %i.l = getelementptr i8, ptr %.0.val, i64 16
  %.val6.i = load ptr, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.m, align 8
  %.val.i = load i32, ptr %.val6.val.i, align 8   ; 2 uses
  %.not.i7.i = icmp sgt i32 %.val.i, -1
  br i1 %.not.i7.i, label %fol_IsLiteral.exit.thread, label %fol_IsLiteral.exit

fol_IsLiteral.exit:                               ; preds = %bb.f
  %i.n = sub nsw i32 0, %.val.i
  %i.o = and i32 %i.g, %i.n
  %.not18 = icmp eq i32 %i.o, 2
  br i1 %.not18, label %fol_IsLiteral.exit.thread15, label %fol_IsLiteral.exit.thread

fol_IsLiteral.exit.thread15:                      ; preds = %symbol_IsPredicate.exit.i, %fol_IsLiteral.exit
  %.0 = load ptr, ptr %.021, align 8              ; 2 uses
  %.not17 = icmp eq ptr %.0, null
  br i1 %.not17, label %fol_IsLiteral.exit.thread, label %bb.e, !llvm.loop !22

fol_IsLiteral.exit.thread:                        ; preds = %fol_IsLiteral.exit, %fol_IsLiteral.exit.thread15, %symbol_IsPredicate.exit.thread.i, %bb.f, %bb.d, %bb.c
  %.08 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %symbol_IsPredicate.exit.thread.i ], [ 1, %fol_IsLiteral.exit.thread15 ], [ 0, %fol_IsLiteral.exit ], [ 0, %bb.f ]
  ret i32 %.08
}

; Function Attrs: nounwind uwtable
define dso_local void @fol_FPrintOtterOptions(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.12, i64 20, i64 1, ptr %0) ; 0 uses
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.13, i64 17, i64 1, ptr %0) ; 0 uses
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.14, i64 13, i64 1, ptr %0) ; 0 uses
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.15, i64 19, i64 1, ptr %0) ; 0 uses
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.16, i64 25, i64 1, ptr %0) ; 0 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.17, i64 24, i64 1, ptr %0) ; 0 uses
  %i.g = tail call i64 @fwrite(ptr nonnull @.str.18, i64 25, i64 1, ptr %0) ; 0 uses
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.19, i64 23, i64 1, ptr %0) ; 0 uses
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.20, i64 16, i64 1, ptr %0) ; 0 uses
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.21, i64 16, i64 1, ptr %0) ; 0 uses
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.22, i64 21, i64 1, ptr %0) ; 0 uses
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.23, i64 17, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.24, i64 11, i64 1, ptr %0) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr %0) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @stdout, align 8
  %i.p = tail call i32 @fflush(ptr noundef %i.o)  ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 575) #19 ; 0 uses
  tail call void (ptr, ...) @misc_ErrorReport(ptr noundef nonnull @.str.28, i32 noundef %2) #17
  %i.s = load ptr, ptr @stderr, align 8
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.29, i64 132, i64 1, ptr %i.s) #20 ; 0 uses
  tail call fastcc void @misc_DumpCore()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @misc_ErrorReport(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @misc_DumpCore() unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8
end_hunk_0
