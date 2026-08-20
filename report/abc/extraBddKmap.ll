inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Extra_PrintKMap:bb.a
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !35

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader587
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader587 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %.loopexit, label %.lr.ph

bb.m:                                             ; preds = %.thread572, %bb.l
  switch i32 %6, label %bb.o [
    i32 0, label %.lr.ph440.preheader
    i32 1, label %.lr.ph438
  ]

.lr.ph438:                                        ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 336
  %wide.trip.count511 = zext nneg i32 %4 to i64
  br label %bb.n

.lr.ph440.preheader:                              ; preds = %bb.m
  %wide.trip.count516 = zext nneg i32 %4 to i64
  br label %.lr.ph440

.lr.ph440:                                        ; preds = %.lr.ph440.preheader, %.lr.ph440
  %indvars.iv513 = phi i64 [ 0, %.lr.ph440.preheader ], [ %indvars.iv.next514, %.lr.ph440 ] ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv513 to i32
  %i.bu = tail call ptr @Cudd_bddIthVar(ptr noundef %1, i32 noundef %i.bt) #5
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @s_XVars, i64 %indvars.iv513
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !31
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %exitcond517.not = icmp eq i64 %indvars.iv.next514, %wide.trip.count516
  br i1 %exitcond517.not, label %.loopexit, label %.lr.ph440, !llvm.loop !37

bb.n:                                             ; preds = %.lr.ph438, %bb.n
  %indvars.iv508 = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next509, %bb.n ] ; 3 uses
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv508
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !39
  %i.bz = tail call ptr @Cudd_bddIthVar(ptr noundef %1, i32 noundef %i.by) #5
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @s_XVars, i64 %indvars.iv508
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !31
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count511
  br i1 %exitcond512.not, label %.loopexit, label %bb.n, !llvm.loop !40

bb.o:                                             ; preds = %bb.m
  %i.cb = tail call ptr @Cudd_Support(ptr noundef %1, ptr noundef %2) #5 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.cb) #5
  %i.cc = tail call ptr @Cudd_Support(ptr noundef %1, ptr noundef %3) #5 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.cc) #5
  %i.cd = tail call ptr @Cudd_bddAnd(ptr noundef %1, ptr noundef %i.cb, ptr noundef %i.cc) #5 ; 6 uses
  tail call void @Cudd_Ref(ptr noundef %i.cd) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.cb) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.cc) #5
  %i.ce = tail call i32 @Cudd_SupportSize(ptr noundef %1, ptr noundef %i.cd) #5 ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 21
  br i1 %i.cf, label %.preheader426, label %.thread420

.preheader426:                                    ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !27
  %.not338441 = icmp eq ptr %i.cd, %i.ch
  br i1 %.not338441, label %._crit_edge, label %.lr.ph444

.thread420:                                       ; preds = %bb.o
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 20) #5 ; 0 uses
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.cd) #5
  br label %bb.aj

.lr.ph444:                                        ; preds = %.preheader426, %.lr.ph444
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %.lr.ph444 ], [ 0, %.preheader426 ] ; 2 uses
  %.0443 = phi ptr [ %i.cn, %.lr.ph444 ], [ %i.cd, %.preheader426 ] ; 2 uses
  %i.cj = load i32, ptr %.0443, align 8, !tbaa !41
  %i.ck = tail call ptr @Cudd_bddIthVar(ptr noundef nonnull %1, i32 noundef %i.cj) #5
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @s_XVars, i64 %indvars.iv518
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %.0443, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42 ; 3 uses
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !27
  %.not338 = icmp eq ptr %i.cn, %i.co
  br i1 %.not338, label %._crit_edge, label %.lr.ph444, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph444, %.preheader426
  %.0.lcssa = phi ptr [ %i.cd, %.preheader426 ], [ %i.cn, %.lr.ph444 ]
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %1, ptr noundef %.0.lcssa) #5
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !31
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @s_XVars, i64 %indvars.iv
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !31
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr @s_XVars, i64 %indvars.iv.next
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !31
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.1
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @s_XVars, i64 %indvars.iv.next.1
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !31
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next.2
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @s_XVars, i64 %indvars.iv.next.2
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !31
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.n, %.lr.ph440, %middle.block, %._crit_edge
  %.0322 = phi i32 [ %4, %bb.n ], [ %4, %middle.block ], [ %i.ce, %._crit_edge ], [ %4, %.lr.ph440 ], [ %4, %.lr.ph ], [ %4, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.db = sdiv i32 %.0322, 2                      ; 11 uses
  %i.dc = sub i32 %.0322, %i.db                   ; 13 uses
  %i.dd = shl nuw nsw i32 1, %i.db                ; 2 uses
  %i.de = shl nuw i32 1, %i.dc                    ; 7 uses
  %fputc339 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.df = icmp sgt i32 %.0322, 1                  ; 2 uses
  br i1 %i.df, label %.lr.ph447, label %._crit_edge448

.lr.ph447:                                        ; preds = %.loopexit
  %i.dg = icmp eq ptr %7, null
  %i.dh = add nsw i32 %i.dc, 97
  br i1 %i.dg, label %.lr.ph447.split.us, label %.lr.ph447.split.preheader

.lr.ph447.split.preheader:                        ; preds = %.lr.ph447
  %i.di = sext i32 %i.dc to i64
  %wide.trip.count524 = zext nneg i32 %i.db to i64
  %invariant.gep = getelementptr [8 x i8], ptr %7, i64 %i.di
  br label %.lr.ph447.split

.lr.ph447.split.us:                               ; preds = %.lr.ph447, %.lr.ph447.split.us
  %.0303445.us = phi i32 [ %i.dk, %.lr.ph447.split.us ], [ 0, %.lr.ph447 ] ; 2 uses
  %i.dj = add nsw i32 %i.dh, %.0303445.us
  %fputc409.us = tail call i32 @fputc(i32 %i.dj, ptr %0) ; 0 uses
  %i.dk = add nuw nsw i32 %.0303445.us, 1         ; 2 uses
  %exitcond526.not = icmp eq i32 %i.dk, %i.db
  br i1 %exitcond526.not, label %._crit_edge448.thread, label %.lr.ph447.split.us, !llvm.loop !45

.lr.ph447.split:                                  ; preds = %.lr.ph447.split.preheader, %.lr.ph447.split
  %indvars.iv521 = phi i64 [ 0, %.lr.ph447.split.preheader ], [ %indvars.iv.next522, %.lr.ph447.split ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv521
  %i.dl = load ptr, ptr %gep, align 8, !tbaa !46
  %i.dm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %i.dl) #5 ; 0 uses
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count524
  br i1 %exitcond525.not, label %._crit_edge448, label %.lr.ph447.split, !llvm.loop !45

._crit_edge448:                                   ; preds = %.lr.ph447.split, %.loopexit
  %i.dn = tail call i64 @fwrite(ptr nonnull @.str.11, i64 3, i64 1, ptr %0) ; 0 uses
  %i.do = icmp sgt i32 %i.dc, 0
  br i1 %i.do, label %.lr.ph451, label %._crit_edge452

._crit_edge448.thread:                            ; preds = %.lr.ph447.split.us
  %i.dp = tail call i64 @fwrite(ptr nonnull @.str.11, i64 3, i64 1, ptr %0) ; 0 uses
  %i.dq = icmp sgt i32 %i.dc, 0
  br i1 %i.dq, label %.lr.ph451.split.us.preheader, label %._crit_edge452

.lr.ph451:                                        ; preds = %._crit_edge448
  %i.dr = icmp eq ptr %7, null
  br i1 %i.dr, label %.lr.ph451.split.us.preheader, label %.lr.ph451.split.preheader

.lr.ph451.split.us.preheader:                     ; preds = %._crit_edge448.thread, %.lr.ph451
  br label %.lr.ph451.split.us

.lr.ph451.split.preheader:                        ; preds = %.lr.ph451
  %wide.trip.count530 = zext nneg i32 %i.dc to i64
  br label %.lr.ph451.split

.lr.ph451.split.us:                               ; preds = %.lr.ph451.split.us.preheader, %.lr.ph451.split.us
  %.1449.us = phi i32 [ %i.dt, %.lr.ph451.split.us ], [ 0, %.lr.ph451.split.us.preheader ] ; 2 uses
  %i.ds = add nuw nsw i32 %.1449.us, 97
  %fputc408.us = tail call i32 @fputc(i32 %i.ds, ptr %0) ; 0 uses
  %i.dt = add nuw nsw i32 %.1449.us, 1            ; 2 uses
  %exitcond532.not = icmp eq i32 %i.dt, %i.dc
  br i1 %exitcond532.not, label %.preheader425.lr.ph, label %.lr.ph451.split.us, !llvm.loop !47

.lr.ph451.split:                                  ; preds = %.lr.ph451.split.preheader, %.lr.ph451.split
  %indvars.iv527 = phi i64 [ 0, %.lr.ph451.split.preheader ], [ %indvars.iv.next528, %.lr.ph451.split ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv527
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !46
  %i.dw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %i.dv) #5 ; 0 uses
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 2 uses
  %exitcond531.not = icmp eq i64 %indvars.iv.next528, %wide.trip.count530
  br i1 %exitcond531.not, label %.preheader425.lr.ph, label %.lr.ph451.split, !llvm.loop !47

._crit_edge452:                                   ; preds = %._crit_edge448.thread, %._crit_edge448
  %fputc340 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %.preheader423

.preheader425.lr.ph:                              ; preds = %.lr.ph451.split, %.lr.ph451.split.us
  %fputc340573 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.dx = icmp sgt i32 %.0322, -6
  %.not495 = icmp eq i32 %i.dc, 31
  %smax534 = tail call i32 @llvm.smax.i32(i32 %i.de, i32 1)
  %i.dy = add nsw i32 %i.db, 2
  br label %.preheader425

.preheader425:                                    ; preds = %.preheader425.lr.ph, %._crit_edge457
  %.1320458 = phi i32 [ 0, %.preheader425.lr.ph ], [ %i.ei, %._crit_edge457 ] ; 2 uses
  br i1 %i.dx, label %.lr.ph454, label %.preheader424

.preheader423:                                    ; preds = %._crit_edge457, %._crit_edge452
  %.not341459 = icmp slt i32 %.0322, -1           ; 3 uses
  br i1 %.not341459, label %._crit_edge462, label %.lr.ph461

.preheader424:                                    ; preds = %.lr.ph454, %.preheader425
  br i1 %.not495, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %.preheader424
  %i.dz = xor i32 %.1320458, -1
  %i.ea = add nsw i32 %i.dc, %i.dz
  %i.eb = shl nuw i32 1, %i.ea
  br label %bb.p

.lr.ph454:                                        ; preds = %.preheader425, %.lr.ph454
  %.0314453 = phi i32 [ %i.ec, %.lr.ph454 ], [ 0, %.preheader425 ] ; 2 uses
  %i.ec = add nuw nsw i32 %.0314453, 1
  %fputc407 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond533.not = icmp eq i32 %.0314453, %i.dy
  br i1 %exitcond533.not, label %.preheader424, label %.lr.ph454, !llvm.loop !48

bb.p:                                             ; preds = %.lr.ph456, %bb.p
  %.0311455 = phi i32 [ 0, %.lr.ph456 ], [ %i.eh, %bb.p ] ; 3 uses
  %i.ed = lshr i32 %.0311455, 1
  %i.ee = xor i32 %i.ed, %.0311455
  %i.ef = and i32 %i.ee, %i.eb
  %.not406 = icmp eq i32 %i.ef, 0
  %.str.15..str.14 = select i1 %.not406, ptr @.str.15, ptr @.str.14
  %i.eg = tail call i64 @fwrite(ptr nonnull %.str.15..str.14, i64 4, i64 1, ptr %0) ; 0 uses
  %i.eh = add nuw nsw i32 %.0311455, 1            ; 2 uses
  %exitcond535.not.a = icmp eq i32 %i.eh, %smax534
  br i1 %exitcond535.not.a, label %._crit_edge457, label %bb.p, !llvm.loop !49

._crit_edge457:                                   ; preds = %bb.p, %.preheader424
  %fputc405 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.ei = add nuw nsw i32 %.1320458, 1            ; 2 uses
  %exitcond536.not.a = icmp eq i32 %i.ei, %i.dc
  br i1 %exitcond536.not.a, label %.preheader423, label %.preheader425, !llvm.loop !50

.lr.ph461:                                        ; preds = %.preheader423, %.lr.ph461
  %.1315460 = phi i32 [ %i.ej, %.lr.ph461 ], [ 0, %.preheader423 ] ; 2 uses
  %i.ej = add nuw nsw i32 %.1315460, 1
  %fputc404 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond537.not = icmp eq i32 %.1315460, %i.db
  br i1 %exitcond537.not, label %._crit_edge462, label %.lr.ph461, !llvm.loop !51

._crit_edge462:                                   ; preds = %.lr.ph461, %.preheader423
  %fputc342 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  %.not496 = icmp eq i32 %i.dc, 31                ; 5 uses
  br i1 %.not496, label %._crit_edge466, label %.lr.ph465

.lr.ph465:                                        ; preds = %._crit_edge462
  %i.ek = add nsw i32 %i.de, -1
  %smax538 = tail call i32 @llvm.smax.i32(i32 %i.de, i32 1)
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph465, %bb.s
  %.1308463 = phi i32 [ 0, %.lr.ph465 ], [ %i.el, %bb.s ] ; 2 uses
  %fputc397 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc398 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %fputc399 = tail call i32 @fputc(i32 45, ptr %0) ; 0 uses
  %.not400 = icmp eq i32 %.1308463, %i.ek
  br i1 %.not400, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %fputc402 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.el = add nuw nsw i32 %.1308463, 1            ; 2 uses
  %exitcond539.not.a = icmp eq i32 %i.el, %smax538
  br i1 %exitcond539.not.a, label %._crit_edge466, label %bb.q, !llvm.loop !52

._crit_edge466:                                   ; preds = %bb.s, %._crit_edge462
  %fputc343 = tail call i32 @fputc(i32 43, ptr %0) ; 0 uses
  %fputc344 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.em = and i32 %.0322, -2
  %.not497 = icmp eq i32 %i.em, 62
  br i1 %.not497, label %.lr.ph489.preheader, label %.preheader422.lr.ph

.preheader422.lr.ph:                              ; preds = %._crit_edge466
  %i.en = sext i32 %i.dc to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr @s_XVars, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eq = add nsw i32 %i.de, -1                   ; 3 uses
  %i.er = add nsw i32 %i.dd, -1
  %smax541 = tail call i32 @llvm.smax.i32(i32 %i.de, i32 1) ; 3 uses
  br label %.preheader422

.preheader422:                                    ; preds = %.preheader422.lr.ph, %bb.af
  %.3486 = phi i32 [ 0, %.preheader422.lr.ph ], [ %i.ft, %bb.af ] ; 5 uses
  %i.es = lshr i32 %.3486, 1
  %i.et = xor i32 %i.es, %.3486                   ; 2 uses
  br i1 %i.df, label %.lr.ph468, label %._crit_edge469

.preheader:                                       ; preds = %bb.af
  br i1 %.not341459, label %._crit_edge490, label %.lr.ph489.preheader

.lr.ph489.preheader:                              ; preds = %._crit_edge466, %.preheader
  br label %.lr.ph489

.lr.ph468:                                        ; preds = %.preheader422, %.lr.ph468
  %.1312467 = phi i32 [ %i.ey, %.lr.ph468 ], [ 0, %.preheader422 ] ; 2 uses
  %i.eu = xor i32 %.1312467, -1
  %i.ev = add nsw i32 %i.db, %i.eu
  %i.ew = shl nuw i32 1, %i.ev
  %i.ex = and i32 %i.ew, %i.et
  %.not394 = icmp eq i32 %i.ex, 0
  %. = select i1 %.not394, i32 48, i32 49
  %fputc396 = tail call i32 @fputc(i32 %., ptr %0) ; 0 uses
  %i.ey = add nuw nsw i32 %.1312467, 1            ; 2 uses
  %exitcond540.not = icmp eq i32 %i.ey, %i.db
  br i1 %exitcond540.not, label %._crit_edge469, label %.lr.ph468, !llvm.loop !53

._crit_edge469:                                   ; preds = %.lr.ph468, %.preheader422
  %fputc357 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %i.ez = tail call ptr @Extra_bddBitsToCube(ptr noundef %1, i32 noundef %i.et, i32 noundef %i.db, ptr noundef nonnull %i.eo, i32 noundef 1) #5 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.ez) #5
  %fputc358 = tail call i32 @fputc(i32 124, ptr %0) ; 0 uses
  br i1 %.not496, label %._crit_edge473, label %.lr.ph472

.lr.ph472:                                        ; preds = %._crit_edge469, %bb.y
  %.0304470 = phi i32 [ %i.fo, %bb.y ], [ 0, %._crit_edge469 ] ; 4 uses
  %fputc384 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %i.fa = lshr i32 %.0304470, 1
  %i.fb = xor i32 %i.fa, %.0304470
  %i.fc = tail call ptr @Extra_bddBitsToCube(ptr noundef %1, i32 noundef %i.fb, i32 noundef %i.dc, ptr noundef nonnull @s_XVars, i32 noundef 1) #5 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.fc) #5
  %i.fd = tail call ptr @Cudd_bddAnd(ptr noundef %1, ptr noundef %i.fc, ptr noundef %i.ez) #5 ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.fd) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.fc) #5
  %i.fe = tail call ptr @Cudd_Cofactor(ptr noundef %1, ptr noundef %2, ptr noundef %i.fd) #5 ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.fe) #5
  %i.ff = tail call ptr @Cudd_Cofactor(ptr noundef %1, ptr noundef %3, ptr noundef %i.fd) #5 ; 4 uses
  tail call void @Cudd_Ref(ptr noundef %i.ff) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.fd) #5
  %i.fg = load ptr, ptr %i.ep, align 8, !tbaa !27 ; 3 uses
  %i.fh = icmp eq ptr %i.fe, %i.fg                ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = xor i64 %i.fi, 1
  %i.fk = inttoptr i64 %i.fj to ptr               ; 2 uses
  %i.fl = icmp eq ptr %i.ff, %i.fk                ; 2 uses
  %or.cond414 = and i1 %i.fh, %i.fl
  br i1 %or.cond414, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %.lr.ph472
  %i.fm = icmp eq ptr %i.fe, %i.fk                ; 2 uses
  %i.fn = icmp eq ptr %i.ff, %i.fg                ; 2 uses
  %or.cond415 = and i1 %i.fn, %i.fm
  br i1 %or.cond415, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %or.cond416 = and i1 %i.fm, %i.fl
  br i1 %or.cond416, label %.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %or.cond417 = and i1 %i.fh, %i.fn
  br i1 %or.cond417, label %.sink.split, label %bb.w

.sink.split:                                      ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph472
  %.sink577 = phi i32 [ 49, %.lr.ph472 ], [ 45, %bb.u ], [ 32, %bb.t ], [ 63, %bb.v ]
  %fputc387 = tail call i32 @fputc(i32 %.sink577, ptr %0) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %1, ptr noundef %i.fe) #5
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %1, ptr noundef %i.ff) #5
  %fputc389 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %.not390 = icmp eq i32 %.0304470, %i.eq
  br i1 %.not390, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %fputc392 = tail call i32 @fputc(i32 124, ptr %0) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fo = add nuw nsw i32 %.0304470, 1            ; 2 uses
  %exitcond542.not.a = icmp eq i32 %i.fo, %smax541
  br i1 %exitcond542.not.a, label %._crit_edge473, label %.lr.ph472, !llvm.loop !54

._crit_edge473:                                   ; preds = %bb.y, %._crit_edge469
  %fputc359 = tail call i32 @fputc(i32 124, ptr %0) ; 0 uses
  %fputc360 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  tail call void @Cudd_RecursiveDeref(ptr noundef %1, ptr noundef %i.ez) #5
  %.not361 = icmp eq i32 %.3486, %i.er
  br i1 %.not361, label %bb.af, label %.preheader421

.preheader421:                                    ; preds = %._crit_edge473
  br i1 %.not341459, label %._crit_edge477, label %.lr.ph476

.lr.ph476:                                        ; preds = %.preheader421, %.lr.ph476
  %.2316475 = phi i32 [ %i.fp, %.lr.ph476 ], [ 0, %.preheader421 ] ; 2 uses
  %i.fp = add nuw nsw i32 %.2316475, 1
  %fputc383 = tail call i32 @fputc(i32 32, ptr %0) ; 0 uses
  %exitcond543.not.a = icmp eq i32 %.2316475, %i.db
end_hunk_0
