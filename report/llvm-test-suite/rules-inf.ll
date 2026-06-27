inline.NumInlined: 1388
inline.NumDeleted: 170
begin_hunk_0_@inf_EqualityResolution:bb.a
bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %.val78, 1
  %.not64 = icmp eq i32 %i.u, 0
  %or.cond92 = and i1 %.not63, %.not64
  br i1 %or.cond92, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  br i1 %.not.i.i, label %bb.j, label %clause_GetLiteralAtom.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %.val76, i64 16
  %.val6.i.i89 = load ptr, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %.val6.i.i89, i64 8
  %.val6.val.i.i90 = load ptr, ptr %i.w, align 8
  br label %clause_GetLiteralAtom.exit

clause_GetLiteralAtom.exit:                       ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %.val6.val.i.i90, %bb.j ], [ %.val76, %bb.i ]
  call void @cont_Check() #14
  %i.x = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %i.y = getelementptr i8, ptr %.0.i.i, i64 16
  %.val75 = load ptr, ptr %i.y, align 8           ; 2 uses
  %i.z = getelementptr i8, ptr %.val75, i64 8
  %.val75.val = load ptr, ptr %i.z, align 8
  %.val82.val = load ptr, ptr %.val75, align 8
  %i.aa = getelementptr i8, ptr %.val82.val, i64 8
  %.val82.val.val = load ptr, ptr %i.aa, align 8
  %i.ab = call i32 @unify_UnifyCom(ptr noundef %i.x, ptr noundef %.val75.val, ptr noundef %.val82.val.val) #14
  %.not65 = icmp eq i32 %i.ab, 0
  br i1 %.not65, label %bb.r, label %bb.k

bb.k:                                             ; preds = %clause_GetLiteralAtom.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ac = load ptr, ptr @cont_LEFTCONTEXT, align 8
  call void @subst_ExtractUnifierCom(ptr noundef %i.ac, ptr noundef nonnull %i.a) #14
  %.val77 = load i32, ptr %i.m, align 8
  %i.ad = and i32 %.val77, 4
  %i.ae = icmp eq i32 %i.ad, 0
  %or.cond = and i1 %.not63, %i.ae
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = trunc nsw i64 %indvars.iv105 to i32
  %i.ah = call fastcc i32 @inf_LitMax(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef -1, ptr noundef %i.af, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  %.not66 = icmp eq i32 %i.ah, 0
  br i1 %.not66, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val3.i = load i32, ptr %i.d, align 8
  %.val.i = load i32, ptr %i.b, align 4
  %.val4.i = load i32, ptr %i.i, align 8
  %i.ai = add i32 %.val3.i, -1
  %i.aj = add i32 %i.ai, %.val.i
  %i.ak = add i32 %i.aj, %.val4.i
  %i.al = call ptr @clause_CreateBody(i32 noundef %i.ak) #14 ; 8 uses
  %.val70 = load i32, ptr %i.d, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i32 %.val70, ptr %i.am, align 8
  %.val = load i32, ptr %i.b, align 4
  %i.an = add nsw i32 %.val, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  store i32 %i.an, ptr %i.ao, align 4
  %.val83 = load i32, ptr %i.i, align 8           ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i32 %.val83, ptr %i.ap, align 8
  %.val3.i.i = load i32, ptr %i.d, align 8        ; 2 uses
  %.val.i.i = load i32, ptr %i.b, align 4         ; 2 uses
  %i.aq = add i32 %.val3.i.i, -1
  %i.ar = add i32 %i.aq, %.val.i.i
  %i.as = add i32 %i.ar, %.val83
  %.not6794 = icmp slt i32 %i.as, 0
  br i1 %.not6794, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.at = getelementptr i8, ptr %i.al, i64 56
  %i.au = and i64 %indvars.iv105, 4294967295
  %i.av = add i32 %.val3.i.i, %.val.i.i
  %i.aw = add i32 %i.av, %.val83
  %wide.trip.count = zext i32 %i.aw to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %.05396 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.p ] ; 3 uses
  %.not68 = icmp eq i64 %indvars.iv, %i.au
  br i1 %.not68, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.a, align 8
  %.val84 = load ptr, ptr %i.g, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.val84, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 24
  %.val1.i91 = load ptr, ptr %i.ba, align 8
  %i.bb = call ptr @term_Copy(ptr noundef %.val1.i91) #14
  %i.bc = call ptr @subst_Apply(ptr noundef %i.ax, ptr noundef %i.bb) #14
  %i.bd = call ptr @clause_LiteralCreate(ptr noundef %i.bc, ptr noundef %i.al) #14
  %.val85 = load ptr, ptr %i.at, align 8
  %i.be = sext i32 %.05396 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.val85, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = add nsw i32 %.05396, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.1 = phi i32 [ %i.bg, %bb.o ], [ %.05396, %bb.n ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.p, %bb.m
  %.pre-phi = trunc i64 %indvars.iv105 to i32
  call fastcc void @clause_SetDataFromFather(ptr noundef %i.al, ptr noundef nonnull %0, i32 noundef %.pre-phi, ptr noundef %2, ptr noundef %3)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 76
  store i32 3, ptr %i.bh, align 4
  %i.bi = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.al, ptr %i.bj, align 8
  store ptr %.055101, ptr %i.bi, align 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %.156 = phi ptr [ %i.bi, %._crit_edge ], [ %.055101, %bb.l ]
  %i.bk = load ptr, ptr %i.a, align 8
  call void @subst_Delete(ptr noundef %i.bk) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %clause_GetLiteralAtom.exit
  %.2 = phi ptr [ %.156, %bb.q ], [ %.055101, %clause_GetLiteralAtom.exit ]
  %i.bl = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not1.i = icmp eq ptr %i.bl, null
  br i1 %.not1.i, label %cont_Reset.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %cont_BINDINGS.promoted.i = load i32, ptr @cont_BINDINGS, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bm = phi ptr [ %i.bt, %.lr.ph.i ], [ %i.bl, %.lr.ph.preheader.i ] ; 3 uses
  %i.bn = phi i32 [ %i.bs, %.lr.ph.i ], [ %cont_BINDINGS.promoted.i, %.lr.ph.preheader.i ]
  store ptr %i.bm, ptr @cont_CURRENTBINDING, align 8
  %i.bo = getelementptr i8, ptr %i.bm, i64 24
  %.val.i.i.i = load ptr, ptr %i.bo, align 8
  store ptr %.val.i.i.i, ptr @cont_LASTBINDING, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bp, i8 0, i64 20, i1 false)
  %i.bq = load ptr, ptr @cont_CURRENTBINDING, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr null, ptr %i.br, align 8
  %i.bs = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bs, ptr @cont_BINDINGS, align 4
  %i.bt = load ptr, ptr @cont_LASTBINDING, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %cont_Reset.exit, label %.lr.ph.i, !llvm.loop !6

cont_Reset.exit:                                  ; preds = %.lr.ph.i, %bb.r
  store i32 0, ptr @cont_BINDINGS, align 4
  store i32 1, ptr @cont_STACKPOINTER, align 4
  store i32 2000, ptr @cont_INDEXVARSCANNER, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %clause_LiteralIsEquality.exit, %bb.g, %cont_Reset.exit
  %.3 = phi ptr [ %.2, %cont_Reset.exit ], [ %.055101, %bb.g ], [ %.055101, %bb.h ], [ %.055101, %clause_LiteralIsEquality.exit ] ; 2 uses
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next106 to i32
  %exitcond108.not = icmp eq i32 %i.k, %lftr.wideiv
  br i1 %exitcond108.not, label %.loopexit, label %bb.d, !llvm.loop !7

.loopexit:                                        ; preds = %bb.s, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %.3, %bb.s ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @clause_HasSolvedConstraint(ptr noundef) local_unnamed_addr #2

declare void @cont_Check() local_unnamed_addr #2

declare i32 @unify_UnifyCom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @subst_ExtractUnifierCom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @inf_LitMax(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val54 = load ptr, ptr %i.a, align 8
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %.val54, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.val57 = load i32, ptr %i.d, align 8           ; 2 uses
  %i.e = and i32 %.val57, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not43 = trunc nuw i32 %4 to i1                ; 2 uses
  %i.f = and i32 %.val57, 2
  %.not44 = icmp eq i32 %i.f, 0
  %or.cond66 = and i1 %.not44, %.not43
  br i1 %or.cond66, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 68
  %.val = load i32, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 72
  %.val58 = load i32, ptr %i.h, align 8
  %i.i = add i32 %.val58, %.val                   ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  %.not65 = icmp eq ptr %3, null
  %or.cond67 = or i1 %.not65, %i.j
  br i1 %or.cond67, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val3.i.i = load i32, ptr %i.k, align 8
  %i.l = add i32 %i.i, -1
  %i.m = add i32 %i.l, %.val3.i.i                 ; 2 uses
  %i.n = getelementptr i8, ptr %i.d, i64 24
  %.val1.i = load ptr, ptr %i.n, align 8
  %i.o = tail call ptr @term_Copy(ptr noundef %.val1.i) #14
  %i.p = tail call ptr @subst_Apply(ptr noundef nonnull %3, ptr noundef %i.o) #14 ; 4 uses
  %.val50 = load i32, ptr %i.k, align 8           ; 2 uses
  %.not4669 = icmp sgt i32 %.val50, %i.m
  br i1 %.not4669, label %.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.q = sext i32 %.val50 to i64
  %i.r = sext i32 %i.m to i64
  %sext = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %i.s = icmp eq i64 %indvars.iv, %i.b
  %i.t = icmp eq i64 %indvars.iv, %sext
  %or.cond = or i1 %i.s, %i.t
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.val53 = load ptr, ptr %i.a, align 8
  %i.u = getelementptr inbounds [8 x i8], ptr %.val53, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.val56 = load i32, ptr %i.v, align 8
  %i.w = and i32 %.val56, 1
  %.not49 = icmp eq i32 %i.w, 0
  br i1 %.not49, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.v, i64 24
  %.val1.i63 = load ptr, ptr %i.x, align 8
  %i.y = tail call ptr @term_Copy(ptr noundef %.val1.i63) #14
  %i.z = tail call ptr @subst_Apply(ptr noundef nonnull %3, ptr noundef %i.y) #14 ; 3 uses
  %.val52 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.val52, i64 %i.b
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val62 = load i32, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val52, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val61 = load i32, ptr %i.af, align 8
  %i.ag = tail call i32 @ord_LiteralCompare(ptr noundef %i.p, i32 noundef %.val62, ptr noundef %i.z, i32 noundef %.val61, i32 noundef 1, ptr noundef %5, ptr noundef %6) #14 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ag, 2
  %or.cond64 = and i1 %i.ai, %.not43
  %or.cond68 = or i1 %i.ah, %or.cond64
  br i1 %or.cond68, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @term_Delete(ptr noundef %i.p) #14
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  tail call void @term_Delete(ptr noundef %i.z) #14
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.e, %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not46.not = icmp slt i64 %indvars.iv, %i.r
  br i1 %.not46.not, label %.lr.ph, label %.sink.split, !llvm.loop !8

.sink.split:                                      ; preds = %bb.i, %bb.d, %bb.g
  %.sink = phi ptr [ %i.z, %bb.g ], [ %i.p, %bb.d ], [ %i.p, %bb.i ]
  %.0.ph = phi i32 [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.i ]
  tail call void @term_Delete(ptr noundef %.sink) #14
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare ptr @clause_CreateBody(i32 noundef) local_unnamed_addr #2

declare ptr @clause_LiteralCreate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @subst_Apply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @term_Copy(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clause_SetDataFromFather(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -2147483648, 2147483647) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  tail call void @clause_OrientEqualities(ptr noundef %0, ptr noundef %3, ptr noundef %4) #14
  tail call void @clause_Normalize(ptr noundef %0) #14
  tail call void @clause_SetMaxLitFlags(ptr noundef %0, ptr noundef %3, ptr noundef %4) #14
  %i.a = tail call i32 @clause_ComputeWeight(ptr noundef %0, ptr noundef %3) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.a, ptr %i.b, align 4
  tail call void @clause_UpdateMaxVar(ptr noundef %0) #14
  %i.c = getelementptr i8, ptr %1, i64 48
  %.val.i = load i32, ptr %i.c, align 8
  %i.d = and i32 %.val.i, 8
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = or i32 %i.f, 8
  store i32 %i.g, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %1, i64 12
  %.val7.i = load i32, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.val7.i, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8              ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, %i.m
  br i1 %.not.i.i, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  %.not20.i.i = icmp eq ptr %i.q, null
  br i1 %.not20.i.i, label %memory_Free.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.o, 3                          ; 4 uses
  %i.s = icmp ult i32 %i.r, 1024
  br i1 %i.s, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr @memory_ALIGN, align 4     ; 2 uses
  %i.u = urem i32 %i.r, %i.t                      ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %i.v = sub i32 %i.t, %i.u
  %i.w = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.v
  %.1.i.i.i.i.i = add i32 %i.w, %i.r
  %i.x = load i32, ptr @memory_OFFSET, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.q, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.ae, ptr @memory_BIGBLOCKS, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not20.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not20.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.ab, align 8
  store ptr %i.ag, ptr %i.ae, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = load i32, ptr @memory_MARKSIZE, align 4
  %i.ai = add i32 %.1.i.i.i.i.i, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 16               ; 2 uses
  %i.al = load i64, ptr @memory_FREEDBYTES, align 8
  %i.am = add i64 %i.ak, %i.al
  store i64 %i.am, ptr @memory_FREEDBYTES, align 8
  %i.an = load i64, ptr @memory_MAXMEM, align 8   ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = add nuw i64 %i.an, %i.ak
  store i64 %i.ap, ptr @memory_MAXMEM, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = getelementptr inbounds i8, ptr %i.q, i64 -16
  tail call void @free(ptr noundef nonnull %i.aq) #14
  br label %memory_Free.exit.i.i

bb.n:                                             ; preds = %bb.e
  %i.ar = zext nneg i32 %i.r to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @memory_ARRAY, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = sext i32 %i.av to i64
  %i.ax = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr @memory_FREEDBYTES, align 8
  %i.az = load ptr, ptr %i.at, align 8
  store ptr %i.az, ptr %i.q, align 8
  %i.ba = load ptr, ptr %i.as, align 8
  store ptr %i.q, ptr %i.ba, align 8
  br label %memory_Free.exit.i.i

memory_Free.exit.i.i:                             ; preds = %bb.n, %bb.m, %bb.d
  %.not21.i.i = icmp eq i32 %i.m, 0
  br i1 %.not21.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %memory_Free.exit.i.i
  %i.bb = shl i32 %i.m, 3
  %i.bc = tail call ptr @memory_Malloc(i32 noundef %i.bb) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %memory_Free.exit.i.i
  %storemerge.i.i = phi ptr [ %i.bc, %bb.o ], [ null, %memory_Free.exit.i.i ]
  store ptr %storemerge.i.i, ptr %i.p, align 8
  store i32 %i.m, ptr %i.n, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %.not23.i.i = icmp eq i32 %i.m, 0
  br i1 %.not23.i.i, label %clause_SetSplitDataFromFather.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %wide.trip.count.i.i = zext i32 %i.m to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.be = icmp ult i32 %i.m, 4
  br i1 %i.be, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967292
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.r ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.r ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i.i
  store i64 %i.bg, ptr %i.bi, align 8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bd, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i
end_hunk_0
begin_hunk_1_@inf_ApplyMParamod:bb.a

bb.h:                                             ; preds = %.lr.ph195, %bb.h
  %indvars.iv220 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next221, %bb.h ] ; 3 uses
  %.val154 = load ptr, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val154, i64 %indvars.iv220
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 24
  %.val1.i175 = load ptr, ptr %i.br, align 8
  %i.bs = tail call ptr @term_Copy(ptr noundef %.val1.i175) #14
  %i.bt = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.bs) #14
  %i.bu = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.bt) #14
  %i.bv = tail call ptr @clause_LiteralCreate(ptr noundef %i.bu, ptr noundef %i.p) #14
  %.val160 = load ptr, ptr %i.bn, align 8
  %i.bw = getelementptr [8 x i8], ptr %.val160, i64 %indvars.iv220
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bo
  store ptr %i.bv, ptr %i.bx, align 8
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %._crit_edge196, label %bb.h, !llvm.loop !87

._crit_edge196:                                   ; preds = %bb.h, %._crit_edge191
  %.3.lcssa = phi i32 [ 0, %._crit_edge191 ], [ %.val3.i.i, %bb.h ] ; 3 uses
  %.val = load i32, ptr %i.h, align 4
  %i.by = add nsw i32 %.val, %.val141             ; 2 uses
  %.not135198 = icmp sgt i32 %.3.lcssa, %i.e
  br i1 %.not135198, label %._crit_edge202, label %.lr.ph201

.lr.ph201:                                        ; preds = %._crit_edge196
  %i.bz = getelementptr i8, ptr %1, i64 56
  %i.ca = getelementptr i8, ptr %i.p, i64 56
  %i.cb = sext i32 %.3.lcssa to i64
  %i.cc = sext i32 %i.by to i64
  %i.cd = add i32 %.val3.i.i, %.val.i.i           ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph201, %bb.i
  %indvars.iv225 = phi i64 [ %i.cb, %.lr.ph201 ], [ %indvars.iv.next226, %bb.i ] ; 3 uses
  %.val153 = load ptr, ptr %i.bz, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.val153, i64 %indvars.iv225
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 24
  %.val1.i176 = load ptr, ptr %i.cg, align 8
  %i.ch = tail call ptr @term_Copy(ptr noundef %.val1.i176) #14
  %i.ci = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.ch) #14
  %i.cj = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.ci) #14
  %i.ck = tail call ptr @clause_LiteralCreate(ptr noundef %i.cj, ptr noundef %i.p) #14
  %.val159 = load ptr, ptr %i.ca, align 8
  %i.cl = getelementptr [8 x i8], ptr %.val159, i64 %indvars.iv225
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %i.cc
  store ptr %i.ck, ptr %i.cm, align 8
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %lftr.wideiv228 = trunc i64 %indvars.iv.next226 to i32
  %exitcond229.not = icmp eq i32 %i.cd, %lftr.wideiv228
  br i1 %exitcond229.not, label %._crit_edge202, label %bb.i, !llvm.loop !88

._crit_edge202:                                   ; preds = %bb.i, %._crit_edge196
  %.4.lcssa = phi i32 [ %.3.lcssa, %._crit_edge196 ], [ %i.cd, %bb.i ] ; 2 uses
  %.val149 = load i32, ptr %i.i, align 8
  %i.cn = tail call ptr @term_Copy(ptr noundef %5) #14
  %i.co = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.cn) #14 ; 3 uses
  %.not136204 = icmp sgt i32 %.4.lcssa, %i.f
  br i1 %.not136204, label %._crit_edge202.._crit_edge208_crit_edge, label %.lr.ph207

._crit_edge202.._crit_edge208_crit_edge:          ; preds = %._crit_edge202
  %.pre234 = sext i32 %4 to i64
  br label %._crit_edge208

.lr.ph207:                                        ; preds = %._crit_edge202
  %i.cp = getelementptr i8, ptr %1, i64 56
  %i.cq = icmp eq ptr %6, %7
  %i.cr = add i32 %i.by, -1
  %i.cs = add i32 %i.cr, %.val149
  %i.ct = getelementptr i8, ptr %i.p, i64 56
  %i.cu = sext i32 %.4.lcssa to i64
  %i.cv = sext i32 %i.cs to i64
  %i.cw = sext i32 %i.f to i64
  %sext = sext i32 %4 to i64                      ; 2 uses
  %sext232 = sext i32 %3 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph207, %bb.r
  %indvars.iv230 = phi i64 [ %i.cu, %.lr.ph207 ], [ %indvars.iv.next231, %bb.r ] ; 6 uses
  %i.cx = icmp eq i64 %indvars.iv230, %sext232
  br i1 %i.cx, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cy = tail call ptr @term_Copy(ptr noundef %8) #14
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cz = tail call ptr @term_Copy(ptr noundef %6) #14 ; 2 uses
  %i.da = tail call i32 @term_ReplaceSubtermBy(ptr noundef %i.cz, ptr noundef %7, ptr noundef %8) #14 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi ptr [ %i.cy, %bb.l ], [ %i.cz, %bb.m ]
  %i.db = load i32, ptr @fol_EQUALITY, align 4
  %i.dc = tail call ptr @term_Copy(ptr noundef %i.co) #14
  %i.dd = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %.0) #14
  %i.de = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.dd) #14
  %i.df = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %i.dg, align 8
  store ptr null, ptr %i.df, align 8
  %i.dh = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dc, ptr %i.di, align 8
  store ptr %i.df, ptr %i.dh, align 8
  %i.dj = tail call ptr @term_Create(i32 noundef %i.db, ptr noundef nonnull %i.dh) #14
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.dk = icmp eq i64 %indvars.iv230, %sext
  br i1 %i.dk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dl = load i32, ptr @fol_EQUALITY, align 4
  %i.dm = tail call ptr @term_Copy(ptr noundef %i.co) #14
  %i.dn = tail call ptr @term_Copy(ptr noundef %9) #14
  %i.do = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dn, ptr %i.dp, align 8
  store ptr null, ptr %i.do, align 8
  %i.dq = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dm, ptr %i.dr, align 8
  store ptr %i.do, ptr %i.dq, align 8
  %i.ds = tail call ptr @term_Create(i32 noundef %i.dl, ptr noundef nonnull %i.dq) #14
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.val152 = load ptr, ptr %i.cp, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.val152, i64 %indvars.iv230
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %i.du, i64 24
  %.val1.i177 = load ptr, ptr %i.dv, align 8
  %i.dw = tail call ptr @term_Copy(ptr noundef %.val1.i177) #14
  %i.dx = tail call ptr @subst_Apply(ptr noundef %10, ptr noundef %i.dw) #14
  %i.dy = tail call ptr @subst_Apply(ptr noundef %11, ptr noundef %i.dx) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.0126 = phi ptr [ %i.dj, %bb.n ], [ %i.ds, %bb.p ], [ %i.dy, %bb.q ]
  %i.dz = tail call ptr @clause_LiteralCreate(ptr noundef %.0126, ptr noundef %i.p) #14
  %.val158 = load ptr, ptr %i.ct, align 8
  %i.ea = getelementptr [8 x i8], ptr %.val158, i64 %indvars.iv230
  %i.eb = getelementptr [8 x i8], ptr %i.ea, i64 %i.cv
  store ptr %i.dz, ptr %i.eb, align 8
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1
  %.not136.not = icmp slt i64 %indvars.iv230, %i.cw
  br i1 %.not136.not, label %bb.j, label %._crit_edge208, !llvm.loop !89

._crit_edge208:                                   ; preds = %bb.r, %._crit_edge202.._crit_edge208_crit_edge
  %.pre-phi235 = phi i64 [ %.pre234, %._crit_edge202.._crit_edge208_crit_edge ], [ %sext, %bb.r ]
  tail call void @term_Delete(ptr noundef %i.co) #14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  store i32 5, ptr %i.ec, align 4
  %.val164 = load i32, ptr %1, align 8
  %i.ed = sext i32 %.val164 to i64
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.ee, ptr %i.ei, align 8
  store ptr %i.eg, ptr %i.eh, align 8
  store ptr %i.eh, ptr %i.ef, align 8
  %i.ej = inttoptr i64 %.pre-phi235 to ptr
  %i.ek = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.ej, ptr %i.en, align 8
  store ptr %i.el, ptr %i.em, align 8
  store ptr %i.em, ptr %i.ek, align 8
  tail call fastcc void @clause_SetDataFromParents(ptr noundef %i.p, ptr noundef nonnull %1, i32 noundef %3, ptr noundef %0, i32 noundef %4, ptr noundef %12, ptr noundef %13)
  %i.eo = tail call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.p, ptr %i.ep, align 8
  store ptr null, ptr %i.eo, align 8
  ret ptr %i.eo
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @inf_LitMaxWith2Subst(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val60 = load ptr, ptr %i.a, align 8
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %.val60, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.val63 = load i32, ptr %i.d, align 8           ; 2 uses
  %i.e = and i32 %.val63, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not48 = trunc nuw i32 %4 to i1                ; 2 uses
  %i.f = and i32 %.val63, 2
  %.not49 = icmp eq i32 %i.f, 0
  %or.cond73 = and i1 %.not49, %.not48
  br i1 %or.cond73, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 68
  %.val = load i32, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 72
  %.val64 = load i32, ptr %i.h, align 8
  %i.i = add i32 %.val64, %.val                   ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not71 = icmp eq ptr %3, null
  %.not72 = icmp eq ptr %2, null
  %or.cond74 = and i1 %.not72, %.not71
  br i1 %or.cond74, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val3.i.i = load i32, ptr %i.k, align 8
  %i.l = add i32 %i.i, -1
  %i.m = add i32 %i.l, %.val3.i.i                 ; 2 uses
  %i.n = getelementptr i8, ptr %i.d, i64 24
  %.val1.i = load ptr, ptr %i.n, align 8
  %i.o = tail call ptr @term_Copy(ptr noundef %.val1.i) #14
  %i.p = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef %i.o) #14
  %i.q = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.p) #14 ; 4 uses
  %.val56 = load i32, ptr %i.k, align 8           ; 2 uses
  %.not5276 = icmp sgt i32 %.val56, %i.m
  br i1 %.not5276, label %.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.r = sext i32 %.val56 to i64
  %i.s = sext i32 %i.m to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.r, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.t = icmp eq i64 %indvars.iv, %i.b
  %i.u = icmp eq i64 %indvars.iv, -1
  %or.cond = or i1 %i.t, %i.u
  br i1 %or.cond, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %.val59 = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds [8 x i8], ptr %.val59, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.val62 = load i32, ptr %i.w, align 8
  %i.x = and i32 %.val62, 1
  %.not55 = icmp eq i32 %i.x, 0
  br i1 %.not55, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.w, i64 24
  %.val1.i69 = load ptr, ptr %i.y, align 8
  %i.z = tail call ptr @term_Copy(ptr noundef %.val1.i69) #14
  %i.aa = tail call ptr @subst_Apply(ptr noundef %3, ptr noundef %i.z) #14
  %i.ab = tail call ptr @subst_Apply(ptr noundef %2, ptr noundef %i.aa) #14 ; 3 uses
  %.val58 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val58, i64 %i.b
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val68 = load i32, ptr %i.ae, align 8
  %i.af = getelementptr inbounds [8 x i8], ptr %.val58, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val67 = load i32, ptr %i.ah, align 8
  %i.ai = tail call i32 @ord_LiteralCompare(ptr noundef %i.q, i32 noundef %.val68, ptr noundef %i.ab, i32 noundef %.val67, i32 noundef 1, ptr noundef %5, ptr noundef %6) #14 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1
  %i.ak = icmp eq i32 %i.ai, 2
  %or.cond70 = and i1 %i.ak, %.not48
  %or.cond75 = or i1 %i.aj, %or.cond70
  br i1 %or.cond75, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @term_Delete(ptr noundef %i.q) #14
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  tail call void @term_Delete(ptr noundef %i.ab) #14
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.f, %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not52.not = icmp slt i64 %indvars.iv, %i.s
  br i1 %.not52.not, label %.lr.ph, label %.sink.split, !llvm.loop !90

.sink.split:                                      ; preds = %bb.j, %bb.e, %bb.h
  %.sink = phi ptr [ %i.ab, %bb.h ], [ %i.q, %bb.e ], [ %i.q, %bb.j ]
  %.0.ph = phi i32 [ 0, %bb.h ], [ 1, %bb.e ], [ 1, %bb.j ]
  tail call void @term_Delete(ptr noundef %.sink) #14
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

declare i32 @term_ReplaceSubtermBy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sharing_PushReverseOnStack(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare void @clause_SubstApply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @clause_DeleteLiteral(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @inf_GenSPLeftEqToGiven(ptr noundef %0, i32 noundef range(i32 -2147483648, 2147483647) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %.val = load ptr, ptr %i.c, align 8
  %i.d = sext i32 %1 to i64                       ; 4 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %.val150 = load ptr, ptr %i.g, align 8          ; 3 uses
  %.val5.val.i = load i32, ptr %.val150, align 8
  %i.h = load i32, ptr @fol_NOT, align 4
  %.not.i = icmp eq i32 %.val5.val.i, %i.h
  br i1 %.not.i, label %bb.b, label %clause_LiteralAtom.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val150, i64 16
  %.val6.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val6.i, i64 8
  %.val6.val.i = load ptr, ptr %i.j, align 8
  br label %clause_LiteralAtom.exit

clause_LiteralAtom.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %.val6.val.i, %bb.b ], [ %.val150, %bb.a ] ; 3 uses
  %i.k = load i32, ptr @stack_POINTER, align 4    ; 2 uses
  %.not = icmp eq i32 %2, 0                       ; 4 uses
  %i.l = getelementptr i8, ptr %.0.i, i64 16
  %.val160 = load ptr, ptr %i.l, align 8          ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %clause_LiteralAtom.exit
  %.val160.val = load ptr, ptr %.val160, align 8
  br label %bb.d

bb.d:                                             ; preds = %clause_LiteralAtom.exit, %bb.c
  %.val160.val.sink = phi ptr [ %.val160.val, %bb.c ], [ %.val160, %clause_LiteralAtom.exit ]
  %i.m = getelementptr i8, ptr %.val160.val.sink, i64 8
  %.val160.val.val = load ptr, ptr %i.m, align 8
  tail call void @sharing_PushOnStack(ptr noundef %.val160.val.val) #14
  %i.n = load i32, ptr @stack_POINTER, align 4    ; 2 uses
  %.not343384 = icmp eq i32 %i.n, %i.k
  br i1 %.not343384, label %._crit_edge388, label %.lr.ph387

.lr.ph387:                                        ; preds = %bb.d
  %i.o = icmp ne i32 %5, 0                        ; 3 uses
  %.not131 = icmp eq i32 %4, 0                    ; 2 uses
  %.not135 = icmp eq i32 %6, 0
  %i.p = getelementptr i8, ptr %0, i64 48
  %i.q = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 68
  %i.s = getelementptr i8, ptr %0, i64 72
  %i.t = getelementptr i8, ptr %i.f, i64 8
  %i.u = getelementptr i8, ptr %.0.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph387, %.loopexit354
  %i.v = phi i32 [ %i.n, %.lr.ph387 ], [ %i.la, %.loopexit354 ]
  %.0115385 = phi ptr [ null, %.lr.ph387 ], [ %.8, %.loopexit354 ] ; 3 uses
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr @stack_POINTER, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @stack_STACK, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 11 uses
  %.val167 = load i32, ptr %i.z, align 8
  %i.aa = icmp slt i32 %.val167, 1
  br i1 %i.aa, label %bb.f, label %.loopexit354

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @cont_LEFTCONTEXT, align 8
  %.val166 = load ptr, ptr %3, align 8
  %i.ac = load ptr, ptr @cont_RIGHTCONTEXT, align 8
  %i.ad = call ptr @st_GetUnifier(ptr noundef %i.ab, ptr noundef %.val166, ptr noundef %i.ac, ptr noundef nonnull %i.z) #14 ; 2 uses
  %.not344378 = icmp eq ptr %i.ad, null
  br i1 %.not344378, label %.loopexit354, label %.lr.ph382

.lr.ph382:                                        ; preds = %bb.f, %._crit_edge
  %.1116380 = phi ptr [ %.2117.lcssa, %._crit_edge ], [ %.0115385, %bb.f ] ; 2 uses
  %.0120379 = phi ptr [ %.val.i187, %._crit_edge ], [ %i.ad, %bb.f ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.0120379, i64 8
  %.0120.val = load ptr, ptr %i.ae, align 8       ; 6 uses
  %i.af = getelementptr i8, ptr %.0120.val, i64 8
  %.0122372 = load ptr, ptr %i.af, align 8        ; 2 uses
  %.not345373 = icmp eq ptr %.0122372, null
  br i1 %.not345373, label %._crit_edge, label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph382, %.loopexit
  %.0122375 = phi ptr [ %.0122, %.loopexit ], [ %.0122372, %.lr.ph382 ] ; 2 uses
  %.2117374 = phi ptr [ %.7, %.loopexit ], [ %.1116380, %.lr.ph382 ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.0122375, i64 8
  %.0122.val = load ptr, ptr %i.ag, align 8       ; 3 uses
  %.val151 = load i32, ptr %.0122.val, align 8
  %i.ah = load i32, ptr @fol_EQUALITY, align 4
  %.not346 = icmp eq i32 %.val151, %i.ah
  br i1 %.not346, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph376
  %i.ai = call ptr @sharing_NAtomDataList(ptr noundef nonnull %.0122.val) #14 ; 2 uses
  %.not347368 = icmp eq ptr %i.ai, null
  br i1 %.not347368, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %.0122.val, i64 16 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.cv
  %.3118370 = phi ptr [ %.2117374, %.lr.ph ], [ %.6, %bb.cv ] ; 15 uses
  %.0121369 = phi ptr [ %i.ai, %.lr.ph ], [ %.0121.val155, %bb.cv ] ; 2 uses
  %i.ak = getelementptr i8, ptr %.0121369, i64 8
  %.0121.val = load ptr, ptr %i.ak, align 8       ; 6 uses
  %i.al = getelementptr i8, ptr %.0121.val, i64 16
  %.val4.i = load ptr, ptr %i.al, align 8         ; 12 uses
  %i.am = getelementptr i8, ptr %.val4.i, i64 56  ; 4 uses
  %.val.i = load ptr, ptr %i.am, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.ao = load ptr, ptr %i.an, align 8
  %.not.i172 = icmp eq ptr %i.ao, %.0121.val
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i172, label %clause_LiteralGetIndex.exit, label %bb.i, !llvm.loop !18

clause_LiteralGetIndex.exit:                      ; preds = %bb.i
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.aq = getelementptr i8, ptr %.val4.i, i64 48  ; 2 uses
  %.val153 = load i32, ptr %i.aq, align 8
  %i.ar = and i32 %.val153, 2
  %.not129 = icmp eq i32 %i.ar, 0
  br i1 %.not129, label %bb.j, label %bb.cv

bb.j:                                             ; preds = %clause_LiteralGetIndex.exit
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val152 = load i32, ptr %.0121.val, align 8
  %i.as = and i32 %.val152, 2
  %.not130 = icmp eq i32 %i.as, 0
  br i1 %.not130, label %bb.cv, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not131, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val148 = load ptr, ptr %i.aj, align 8
  %i.at = getelementptr i8, ptr %.val148, i64 8
  %.val148.val = load ptr, ptr %i.at, align 8
  %i.au = icmp eq ptr %.0120.val, %.val148.val
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %.0121.val, i64 8
  %.val163 = load i32, ptr %i.av, align 8
  %.not132 = icmp eq i32 %.val163, 0
  br i1 %.not132, label %bb.o, label %bb.cv

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.aw = getelementptr i8, ptr %.0121.val, i64 24
  %.val169 = load ptr, ptr %i.aw, align 8
  %.val169.val = load i32, ptr %.val169, align 8
end_hunk_1
