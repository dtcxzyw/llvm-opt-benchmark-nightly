inline.NumInlined: 12421
inline.NumDeleted: 1708
begin_hunk_0_@whereLoopOutputAdjust:bb.a
  %i.ew = load i8, ptr %.0.i.3.i, align 1, !tbaa !227 ; 3 uses
  %i.ex = load i8, ptr %.013.i.3.i, align 1, !tbaa !227 ; 2 uses
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %bb.an, label %bb.am

bb.am:                                            ; preds = %sqlite3StrICmp.exit.2.i
  %i.ez = zext i8 %i.ew to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !227
  %i.fc = zext i8 %i.ex to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !227
  %.not.i.3.i = icmp eq i8 %i.fb, %i.fe
  br i1 %.not.i.3.i, label %bb.ao, label %.thread

bb.an:                                            ; preds = %sqlite3StrICmp.exit.2.i
  %i.ff = icmp eq i8 %i.ew, 0
  br i1 %i.ff, label %sqlite3ExprIsLikeOperator.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.3.i, i64 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.013.i.3.i, i64 1
  br label %sqlite3StrICmp.exit.2.i

sqlite3ExprIsLikeOperator.exit:                   ; preds = %bb.ad, %bb.ah, %bb.ak, %bb.an
  %.lcssa8.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @sqlite3ExprIsLikeOperator.aOp, i64 16), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @sqlite3ExprIsLikeOperator.aOp, i64 32), %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @sqlite3ExprIsLikeOperator.aOp, i64 48), %bb.an ], [ @sqlite3ExprIsLikeOperator.aOp, %bb.ad ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.lcssa8.i, i64 8
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !4573 ; 2 uses
  %.not75 = icmp eq i8 %i.fj, 0
  br i1 %.not75, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %sqlite3ExprIsLikeOperator.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !227
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !902 ; 2 uses
  %i.fo = icmp eq i8 %i.fj, 65
  %i.fp = zext i1 %i.fo to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #71
  store i32 0, ptr %i.q, align 8, !tbaa !227
  store i16 %i.fp, ptr %i.r, align 4, !tbaa !3505
  store <2 x ptr> <ptr @exprNodePatternLengthEst, ptr @sqlite3SelectWalkFail>, ptr %i.s, align 8, !tbaa !450
  %.not.i.i76 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i76, label %estLikePatternLength.exit.thread, label %estLikePatternLength.exit

estLikePatternLength.exit.thread:                 ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  br label %.thread

estLikePatternLength.exit:                        ; preds = %bb.ap
  %i.fq = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %i.fn) #74, !inline_history !3510 ; 0 uses
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !227 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  %i.fr = icmp sgt i32 %.pre.i, 0
  br i1 %i.fr, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %estLikePatternLength.exit
  %i.fs = load i16, ptr %i.p, align 2, !tbaa !4304
  %.tr = trunc i32 %.pre.i to i16
  %i.ft = shl i16 %.tr, 1
  %i.fu = sub i16 %i.fs, %i.ft
  store i16 %i.fu, ptr %i.p, align 2, !tbaa !4304
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.am, %estLikePatternLength.exit.thread, %bb.y, %bb.aa, %bb.z, %estLikePatternLength.exit, %bb.aq, %sqlite3ExprIsLikeOperator.exit, %bb.u, %bb.d, %bb.c, %bb.b
  %.3 = phi i16 [ %.06487, %bb.b ], [ %.06487, %bb.c ], [ %.06487, %bb.d ], [ %.06487, %bb.u ], [ %.06487, %estLikePatternLength.exit.thread ], [ %.1, %bb.y ], [ %.06487, %bb.z ], [ %.06487, %bb.aa ], [ %.06487, %estLikePatternLength.exit ], [ %.06487, %bb.aq ], [ %.06487, %sqlite3ExprIsLikeOperator.exit ], [ %.06487, %bb.am ], [ %.06487, %bb.i ], [ %.06487, %bb.g ] ; 2 uses
  %i.fv = add nsw i32 %.06288, -1
  %i.fw = getelementptr inbounds nuw i8, ptr %.089, i64 56
  %i.fx = icmp sgt i32 %.06288, 1
  br i1 %i.fx, label %bb.b, label %._crit_edge92.loopexit, !llvm.loop !4658

._crit_edge92.loopexit:                           ; preds = %.thread
  %i.fy = zext nneg i16 %.3 to i32
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge92.loopexit, %bb.a
  %.064.lcssa = phi i32 [ 0, %bb.a ], [ %i.fy, %._crit_edge92.loopexit ]
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !4304
  %i.gb = sext i16 %i.ga to i32
  %i.gc = sext i16 %2 to i32
  %i.gd = sub nsw i32 %i.gc, %.064.lcssa          ; 2 uses
  %i.ge = icmp slt i32 %i.gd, %i.gb
  br i1 %i.ge, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %._crit_edge92
  %i.gf = trunc i32 %i.gd to i16
  store i16 %i.gf, ptr %i.fz, align 2, !tbaa !4304
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge92
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 67108865) i32 @whereIsCoveringIndex(ptr %.32.val, ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.CoveringIndexCheck, align 8 ; 7 uses
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #71
  %i.a = icmp eq ptr %.32.val, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 2048
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i16, ptr %i.f, align 8, !tbaa !875  ; 2 uses
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !878
  %wide.trip.count = zext i16 %i.g to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !4659

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i16, ptr %i.j, align 2, !tbaa !330
  %i.l = icmp sgt i16 %i.k, 62
  br i1 %i.l, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.d, %bb.b
  store ptr %0, ptr %2, align 8, !tbaa !4660
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %1, ptr %i.m, align 8, !tbaa !4662
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i8 0, ptr %i.n, align 4, !tbaa !4663
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 13 ; 2 uses
  store i8 0, ptr %i.o, align 1, !tbaa !4664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @whereIsCoveringIndexWalkCallback, ptr %i.p, align 8, !tbaa !3508
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @sqlite3SelectWalkNoop, ptr %i.q, align 8, !tbaa !3509
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.r, align 8, !tbaa !227
  %i.s = call fastcc i32 @sqlite3WalkSelect(ptr noundef nonnull %3, ptr noundef nonnull %.32.val) ; 0 uses
  %i.t = load i8, ptr %i.o, align 1, !tbaa !4664
  %.not15 = icmp eq i8 %i.t, 0
  %i.u = load i8, ptr %i.n, align 4
  %.not16 = icmp eq i8 %i.u, 0
  %. = select i1 %.not16, i32 64, i32 67108864
  %.0 = select i1 %.not15, i32 %., i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.a, %.thread
  %.014 = phi i32 [ %.0, %.thread ], [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #71
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #71
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddBtreeIndex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i16 noundef signext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.WhereScan, align 8          ; 17 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !4262
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !820  ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !651  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4266 ; 21 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !313
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !302
  br label %bb.em

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 22 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !4272 ; 4 uses
  %i.l = and i32 %i.k, 32
  %.not323 = icmp eq i32 %i.l, 0
  %. = select i1 %.not323, i32 447, i32 24        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 99 ; 6 uses
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, 4
  %.not324 = icmp eq i16 %i.o, 0
  %i.p = and i32 %., 387
  %.1 = select i1 %.not324, i32 %., i32 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 54 ; 3 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !4286 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 13 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !4270 ; 6 uses
  %i.x = load i64, ptr %i.e, align 8, !tbaa !4459 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 22 ; 15 uses
  %i.z = load <4 x i16>, ptr %i.y, align 2, !tbaa !227 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !4265 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3555
  %i.ae = extractelement <4 x i16> %i.z, i64 1    ; 6 uses
  %i.af = zext i16 %i.ae to i32                   ; 4 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !4287
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ag, align 8, !tbaa !4289
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !4290
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store i32 %.1, ptr %i.ak, align 4, !tbaa !4291
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %i.al, align 8, !tbaa !4292
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.ad, ptr %i.am, align 4, !tbaa !5
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 42
  store i8 1, ptr %i.an, align 2, !tbaa !4293
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 41 ; 2 uses
  store i8 1, ptr %i.ao, align 1, !tbaa !4294
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !878
  %i.ar = zext i16 %i.ae to i64                   ; 11 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !330 ; 6 uses
  %i.au = sext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1098 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !891
  %i.az = icmp eq i16 %i.at, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = icmp sgt i16 %i.at, -1
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !882
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.au
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !905
  store i8 %i.bf, ptr %i.ai, align 8, !tbaa !4290
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2803
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.ar
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !251
  store ptr %i.bj, ptr %i.aj, align 8, !tbaa !4298
  br label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp eq i16 %i.at, -2
  br i1 %i.bk, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2799
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.ar
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !902
  store ptr %i.bp, ptr %i.ah, align 8, !tbaa !4299
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2803
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ar
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !251
  store ptr %i.bt, ptr %i.aj, align 8, !tbaa !4298
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i16 -2, ptr %i.bu, align 8, !tbaa !330
  %i.bv = call fastcc ptr @whereScanInitIndexExpr(ptr noundef nonnull %4)
  br label %whereScanInit.exit

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.c
  %.2.i = phi i16 [ %i.at, %bb.f ], [ -1, %bb.c ], [ %i.at, %bb.e ]
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i16 %.2.i, ptr %i.bw, align 8, !tbaa !330
  %i.bx = call fastcc ptr @whereScanNext(ptr noundef nonnull %4)
  br label %whereScanInit.exit

whereScanInit.exit:                               ; preds = %bb.g, %.thread.i
  %.1.i = phi ptr [ %i.bx, %.thread.i ], [ %i.bv, %bb.g ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i16 0, ptr %i.by, align 2, !tbaa !4471
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2987
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !330 ; 4 uses
  %i.cc = icmp slt i16 %i.cb, 11
  br i1 %i.cc, label %estLog.exit, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %whereScanInit.exit
  %i.cd = zext nneg i16 %i.cb to i64              ; 2 uses
  %i.ce = icmp samesign ugt i16 %i.cb, 255
  br i1 %i.ce, label %.lr.ph.i.i, label %.preheader21.i.i

.preheader21.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader23.i.i
  %.115.lcssa.i.i = phi i64 [ %i.cd, %.preheader23.i.i ], [ %i.ch, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i16 [ 40, %.preheader23.i.i ], [ %i.cg, %.lr.ph.i.i ] ; 2 uses
  %i.cf = icmp samesign ugt i64 %.115.lcssa.i.i, 15
  br i1 %i.cf, label %.lr.ph29.i.i, label %sqlite3LogEst.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i, %.lr.ph.i.i
  %.125.i.i = phi i16 [ %i.cg, %.lr.ph.i.i ], [ 40, %.preheader23.i.i ]
  %.11524.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ %i.cd, %.preheader23.i.i ] ; 2 uses
  %i.cg = add nuw nsw i16 %.125.i.i, 40           ; 2 uses
  %i.ch = lshr i64 %.11524.i.i, 4                 ; 2 uses
  %i.ci = icmp samesign ugt i64 %.11524.i.i, 4095
  br i1 %i.ci, label %.lr.ph.i.i, label %.preheader21.i.i, !llvm.loop !1341

.lr.ph29.i.i:                                     ; preds = %.preheader21.i.i, %.lr.ph29.i.i
  %.228.i.i = phi i16 [ %i.cj, %.lr.ph29.i.i ], [ %.1.lcssa.i.i, %.preheader21.i.i ]
  %.21627.i.i = phi i64 [ %i.ck, %.lr.ph29.i.i ], [ %.115.lcssa.i.i, %.preheader21.i.i ] ; 2 uses
  %i.cj = add nuw nsw i16 %.228.i.i, 10           ; 2 uses
  %i.ck = lshr i64 %.21627.i.i, 1                 ; 2 uses
  %i.cl = icmp samesign ugt i64 %.21627.i.i, 31
  br i1 %i.cl, label %.lr.ph29.i.i, label %sqlite3LogEst.exit.i, !llvm.loop !1342

sqlite3LogEst.exit.i:                             ; preds = %.lr.ph29.i.i, %.preheader21.i.i
  %.317.i.i = phi i64 [ %.115.lcssa.i.i, %.preheader21.i.i ], [ %i.ck, %.lr.ph29.i.i ]
  %.3.i.i = phi i16 [ %.1.lcssa.i.i, %.preheader21.i.i ], [ %i.cj, %.lr.ph29.i.i ]
  %i.cm = and i64 %.317.i.i, 7
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !330
  %i.cp = add i16 %.3.i.i, -43
  %i.cq = add i16 %i.cp, %i.co
  br label %estLog.exit

estLog.exit:                                      ; preds = %whereScanInit.exit, %sqlite3LogEst.exit.i
  %i.cr = phi i16 [ %i.cq, %sqlite3LogEst.exit.i ], [ 0, %whereScanInit.exit ] ; 7 uses
  %i.cs = zext i16 %i.w to i32                    ; 2 uses
  %i.ct = add nuw nsw i32 %i.cs, 8
  %i.cu = and i32 %i.ct, 131064                   ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %.not480 = icmp eq ptr %.1.i, null
  br i1 %.not480, label %whereLoopResize.exit, label %.lr.ph473

.lr.ph473:                                        ; preds = %estLog.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 98 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 94 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.df = trunc i32 %i.cu to i16
  %i.dg = icmp sgt i16 %i.cr, 9
  %i.dh = zext nneg i16 %i.cr to i32
  %i.di = icmp slt i16 %3, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dk = icmp eq i16 %3, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = sext i16 %i.cr to i32                   ; 6 uses
  %invariant.op = add nsw i32 %i.dq, -49
  %invariant.op479 = add nsw i32 %i.dq, -31
  %i.dr = add i16 %i.cr, 1
  %i.ds = add nsw i32 %i.dq, 49
  %i.dt = add nsw i32 %i.dq, 31
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.dy = extractelement <4 x i16> %i.z, i64 0    ; 2 uses
  %5 = shufflevector <4 x i16> %i.z, <4 x i16> poison, <3 x i32> <i32 1, i32 2, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph473, %constraintCompatibleWithOuterJoin.exit.thread
  %.0283469 = phi ptr [ %.1.i, %.lr.ph473 ], [ %i.wi, %constraintCompatibleWithOuterJoin.exit.thread ] ; 16 uses
  %.0287468 = phi ptr [ null, %.lr.ph473 ], [ %.4.ph, %constraintCompatibleWithOuterJoin.exit.thread ] ; 14 uses
  %.0291467 = phi ptr [ null, %.lr.ph473 ], [ %.4295.ph, %constraintCompatibleWithOuterJoin.exit.thread ] ; 14 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0283469, i64 20
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !4492 ; 3 uses
  %i.eb = zext i16 %i.ea to i32                   ; 6 uses
  %i.ec = icmp eq i16 %i.ea, 256
  br i1 %i.ec, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %.0283469, i64 18
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !4283
  %i.ef = and i16 %i.ee, 128
  %.not325 = icmp eq i16 %i.ef, 0
  br i1 %.not325, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eg = load ptr, ptr %i.ap, align 8, !tbaa !878
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ar
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !330 ; 3 uses
  %i.ej = icmp sgt i16 %i.ei, -1
  br i1 %i.ej, label %bb.k, label %indexColumnNotNull.exit

bb.k:                                             ; preds = %bb.j
  %i.ek = load ptr, ptr %i.av, align 8, !tbaa !1098
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !882
  %i.en = zext nneg i16 %i.ei to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i8, ptr %i.ep, align 8
  %i.er = and i8 %i.eq, 15
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.l, label %constraintCompatibleWithOuterJoin.exit.thread

indexColumnNotNull.exit:                          ; preds = %bb.j
  %.not569 = icmp eq i16 %i.ei, -1
  br i1 %.not569, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %indexColumnNotNull.exit, %bb.i
  %i.et = getelementptr inbounds nuw i8, ptr %.0283469, i64 40 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !4295
  %i.ev = load i64, ptr %i.cx, align 8, !tbaa !4306 ; 2 uses
  %i.ew = and i64 %i.ev, %i.eu
  %.not327 = icmp eq i64 %i.ew, 0
  br i1 %.not327, label %bb.m, label %constraintCompatibleWithOuterJoin.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ex = getelementptr inbounds nuw i8, ptr %.0283469, i64 18 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !4283
  %i.ez = and i16 %i.ey, 256
  %.not328 = icmp ne i16 %i.ez, 0
  %i.fa = icmp eq i16 %i.ea, 16
  %or.cond439 = and i1 %i.fa, %.not328
  br i1 %or.cond439, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.cy, align 8, !tbaa !3498 ; 2 uses
  %i.fc = and i8 %i.fb, 88
  %.not329 = icmp eq i8 %i.fc, 0
  br i1 %.not329, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0283.val = load ptr, ptr %.0283469, align 8, !tbaa !1155 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0283.val, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !367 ; 2 uses
  %i.ff = and i32 %i.fe, 3
  %.not.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fg = getelementptr inbounds nuw i8, ptr %.0283.val, i64 52
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !227
  %i.fi = load i32, ptr %i.ac, align 4, !tbaa !3555
  %.not5.i = icmp eq i32 %i.fh, %i.fi
  br i1 %.not5.i, label %constraintCompatibleWithOuterJoin.exit, label %constraintCompatibleWithOuterJoin.exit.thread

constraintCompatibleWithOuterJoin.exit:           ; preds = %bb.p
  %i.fj = and i8 %i.fb, 24
  %.not6.i = icmp ne i8 %i.fj, 0
  %i.fk = and i32 %i.fe, 2
  %.not7.i = icmp ne i32 %i.fk, 0
  %or.cond.i.not = and i1 %.not6.i, %.not7.i
  br i1 %or.cond.i.not, label %constraintCompatibleWithOuterJoin.exit.thread, label %bb.q

bb.q:                                             ; preds = %constraintCompatibleWithOuterJoin.exit, %bb.n
  %i.fl = load i8, ptr %i.cz, align 2, !tbaa !2990
  %.not331 = icmp eq i8 %i.fl, 0
  br i1 %.not331, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fm = load i16, ptr %i.da, align 2, !tbaa !936
  %i.fn = zext i16 %i.fm to i32
  %i.fo = add nsw i32 %i.fn, -1
  %i.fp = icmp eq i32 %i.fo, %i.af
  br i1 %i.fp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sink564 = phi i8 [ 1, %bb.s ], [ 2, %bb.r ]
  %i.fq = load i8, ptr %i.db, align 8, !tbaa !4606
  %i.fr = or i8 %i.fq, %.sink564
  store i8 %i.fr, ptr %i.db, align 8, !tbaa !4606
  store i32 %i.k, ptr %i.j, align 8, !tbaa !4272
  store <3 x i16> %5, ptr %i.q, align 8, !tbaa !227
  store i16 %i.w, ptr %i.v, align 4, !tbaa !4270
  %i.fs = load i16, ptr %i.dc, align 8, !tbaa !4271
  %.not332 = icmp ult i16 %i.w, %i.fs
  br i1 %.not332, label %.whereLoopResize.exit.thread_crit_edge, label %bb.u

.whereLoopResize.exit.thread_crit_edge:           ; preds = %bb.t
  %.pre = load ptr, ptr %i.dd, align 8, !tbaa !4267
  br label %whereLoopResize.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ft = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.cw) ; 4 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %whereLoopResize.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fv = load ptr, ptr %i.dd, align 8, !tbaa !4267
  %i.fw = load i16, ptr %i.dc, align 8, !tbaa !4271
  %i.fx = zext i16 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ft, ptr align 8 %i.fv, i64 %i.fy, i1 false)
  %i.fz = load ptr, ptr %i.dd, align 8, !tbaa !4267 ; 2 uses
  %.not20.i = icmp eq ptr %i.fz, %i.de
  br i1 %.not20.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.c, ptr noundef %i.fz)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %i.ft, ptr %i.dd, align 8, !tbaa !4267
  store i16 %i.df, ptr %i.dc, align 8, !tbaa !4271
  %.pre503 = load i16, ptr %i.v, align 4, !tbaa !4270
  %.pre504 = load i64, ptr %i.cx, align 8, !tbaa !4306
  br label %whereLoopResize.exit.thread

whereLoopResize.exit.thread:                      ; preds = %.whereLoopResize.exit.thread_crit_edge, %bb.x
  %i.ga = phi i64 [ %i.ev, %.whereLoopResize.exit.thread_crit_edge ], [ %.pre504, %bb.x ]
  %i.gb = phi i16 [ %i.w, %.whereLoopResize.exit.thread_crit_edge ], [ %.pre503, %bb.x ] ; 3 uses
  %i.gc = phi ptr [ %.pre, %.whereLoopResize.exit.thread_crit_edge ], [ %i.ft, %bb.x ] ; 4 uses
  %i.gd = add i16 %i.gb, 1                        ; 3 uses
  store i16 %i.gd, ptr %i.v, align 4, !tbaa !4270
  %i.ge = zext i16 %i.gb to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.ge
  store ptr %.0283469, ptr %i.gf, align 8, !tbaa !4297
  %i.gg = load i64, ptr %i.et, align 8, !tbaa !4295
  %i.gh = or i64 %i.gg, %i.x
  %i.gi = xor i64 %i.ga, -1
  %i.gj = and i64 %i.gh, %i.gi
  store i64 %i.gj, ptr %i.e, align 8, !tbaa !4459
  %i.gk = and i32 %i.eb, 1
  %.not334 = icmp eq i32 %i.gk, 0
  br i1 %.not334, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %whereLoopResize.exit.thread
  %i.gl = load ptr, ptr %.0283469, align 8, !tbaa !1155 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !367
  %i.go = and i32 %i.gn, 4096
  %.not344 = icmp eq i32 %i.go, 0
  br i1 %.not344, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.gp = icmp ugt i16 %i.gd, 1
  br i1 %i.gp, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.gq = zext i16 %i.gd to i64
  %i.gr = add nuw nsw i64 %i.gq, 4294967295       ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0283469, i64 36 ; 3 uses
  %wide.trip.count = and i64 %i.gr, 4294967295
  %xtraiter = and i64 %i.gr, 1
  %i.gt = icmp eq i64 %wide.trip.count, 1
  br i1 %i.gt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.gr, 4294967294
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.af ] ; 3 uses
  %.0301465 = phi i32 [ 0, %.lr.ph.new ], [ %.1302.1, %bb.af ] ; 3 uses
  %.0305463 = phi i32 [ 46, %.lr.ph.new ], [ %.1306.1, %bb.af ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.af ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !4297 ; 3 uses
  %.not353 = icmp eq ptr %i.gv, null
  br i1 %.not353, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !1155
  %i.gx = icmp eq ptr %i.gw, %i.gl
  br i1 %i.gx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 36
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !227
  %i.ha = load i32, ptr %i.gs, align 4, !tbaa !227
  %i.hb = icmp eq i32 %i.gz, %i.ha
  %spec.select = select i1 %i.hb, i32 1, i32 %.0301465
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.aa
  %.1306 = phi i32 [ %.0305463, %bb.z ], [ 0, %bb.ab ], [ %.0305463, %bb.aa ] ; 2 uses
  %.1302 = phi i32 [ %.0301465, %bb.z ], [ %spec.select, %bb.ab ], [ %.0301465, %bb.aa ] ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !4297 ; 3 uses
  %.not353.1 = icmp eq ptr %i.he, null
  br i1 %.not353.1, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1155
  %i.hg = icmp eq ptr %i.hf, %i.gl
  br i1 %i.hg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 36
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !227
  %i.hj = load i32, ptr %i.gs, align 4, !tbaa !227
  %i.hk = icmp eq i32 %i.hi, %i.hj
  %spec.select.1 = select i1 %i.hk, i32 1, i32 %.1302
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.1306.1 = phi i32 [ %.1306, %bb.ac ], [ 0, %bb.ae ], [ %.1306, %bb.ad ] ; 3 uses
  %.1302.1 = phi i32 [ %.1302, %bb.ac ], [ %spec.select.1, %bb.ae ], [ %.1302, %bb.ad ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.z, !llvm.loop !4665

._crit_edge.unr-lcssa:                            ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.0301465.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1302.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.0305463.epil.init = phi i32 [ 46, %.lr.ph ], [ %.1306.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod614 = trunc i64 %i.gr to i1
  tail call void @llvm.assume(i1 %lcmp.mod614)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.epil.init
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !4297 ; 3 uses
  %.not353.epil = icmp eq ptr %i.hm, null
  br i1 %.not353.epil, label %._crit_edge, label %bb.ag

bb.ag:                                            ; preds = %.epil.preheader
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1155
  %i.ho = icmp eq ptr %i.hn, %i.gl
  br i1 %i.ho, label %bb.ah, label %._crit_edge

bb.ah:                                            ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 36
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !227
  %i.hr = load i32, ptr %i.gs, align 4, !tbaa !227
  %i.hs = icmp eq i32 %i.hq, %i.hr
  %spec.select.epil = select i1 %i.hs, i32 1, i32 %.0301465.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.ag, %bb.ah, %._crit_edge.unr-lcssa
  %.1306.lcssa = phi i32 [ %.1306.1, %._crit_edge.unr-lcssa ], [ %.0305463.epil.init, %.epil.preheader ], [ 0, %bb.ah ], [ %.0305463.epil.init, %bb.ag ]
  %.1302.lcssa = phi i32 [ %.1302.1, %._crit_edge.unr-lcssa ], [ %.0301465.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.ah ], [ %.0301465.epil.init, %bb.ag ]
  %i.ht = icmp eq i32 %.1302.lcssa, 0
  br i1 %i.ht, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  store i16 %i.gb, ptr %i.v, align 4, !tbaa !4270
  br label %constraintCompatibleWithOuterJoin.exit.thread

bb.aj:                                            ; preds = %bb.y
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !227 ; 2 uses
  %.not345 = icmp eq ptr %i.hv, null
  br i1 %.not345, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !5  ; 5 uses
  %.not346 = icmp eq i32 %i.hw, 0
  br i1 %.not346, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hx = sext i32 %i.hw to i64                   ; 3 uses
  %i.hy = icmp ult i32 %i.hw, 8
  br i1 %i.hy, label %bb.am, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.al
  %i.hz = icmp ugt i32 %i.hw, 255
  br i1 %i.hz, label %.lr.ph.i, label %.preheader21.i

bb.am:                                            ; preds = %bb.al
  %i.ia = icmp eq i32 %i.hw, 1
  br i1 %i.ia, label %.thread, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.am, %.lr.ph34.i
  %.033.i = phi i16 [ %i.ib, %.lr.ph34.i ], [ 40, %bb.am ]
  %.01432.i = phi i64 [ %i.ic, %.lr.ph34.i ], [ %i.hx, %bb.am ] ; 2 uses
  %i.ib = add i16 %.033.i, -10                    ; 2 uses
  %i.ic = shl nuw nsw i64 %.01432.i, 1            ; 2 uses
  %i.id = icmp ult i64 %.01432.i, 4
  br i1 %i.id, label %.lr.ph34.i, label %.loopexit.i, !llvm.loop !1340
end_hunk_0
