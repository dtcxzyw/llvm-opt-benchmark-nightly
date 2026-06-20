inline.NumInlined: 12422
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3IndexAffinityOk:bb.a
  %or.cond5.i.i = or i1 %i.j, %i.i
  br i1 %or.cond5.i.i, label %.thread, label %comparisonAffinity.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = icmp slt i8 %i.f, 65
  %i.l = select i1 %i.k, i8 %i.c, i8 %i.f
  %i.m = or i8 %i.l, 64
  br label %comparisonAffinity.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !367
  %i.p = and i32 %i.o, 4096
  %.not9.i = icmp eq i32 %i.p, 0
  br i1 %.not9.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !227
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !3035
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !902
  %i.w = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef readonly %i.v) ; 4 uses
  %i.x = icmp sgt i8 %i.w, 64
  %i.y = icmp sgt i8 %i.c, 64
  %or.cond.i10.i = and i1 %i.y, %i.x
  br i1 %or.cond.i10.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = icmp samesign ugt i8 %i.w, 66
  %i.aa = icmp samesign ugt i8 %i.c, 66
  %or.cond5.i12.i = or i1 %i.aa, %i.z
  br i1 %or.cond5.i12.i, label %.thread, label %comparisonAffinity.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp slt i8 %i.w, 65
  %i.ac = select i1 %i.ab, i8 %i.c, i8 %i.w
  %i.ad = or i8 %i.ac, 64
  br label %comparisonAffinity.exit

bb.i:                                             ; preds = %bb.e
  %i.ae = icmp eq i8 %i.c, 0
  br i1 %i.ae, label %comparisonAffinity.exit.thread, label %comparisonAffinity.exit

comparisonAffinity.exit:                          ; preds = %bb.i, %bb.d, %bb.h
  %.0.i = phi i8 [ %i.c, %bb.i ], [ %i.m, %bb.d ], [ %i.ad, %bb.h ] ; 2 uses
  %i.af = icmp slt i8 %.0.i, 66
  br i1 %i.af, label %comparisonAffinity.exit.thread, label %bb.j

bb.j:                                             ; preds = %comparisonAffinity.exit
  %i.ag = icmp eq i8 %.0.i, 66
  br i1 %i.ag, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i8 %1, 66
  br label %comparisonAffinity.exit.thread

.thread:                                          ; preds = %bb.c, %bb.g, %bb.j
  %i.ai = icmp sgt i8 %1, 66
  br label %comparisonAffinity.exit.thread

comparisonAffinity.exit.thread:                   ; preds = %bb.i, %bb.g, %bb.c, %comparisonAffinity.exit, %.thread, %bb.k
  %.0.shrunk = phi i1 [ %i.ai, %.thread ], [ %i.ah, %bb.k ], [ true, %comparisonAffinity.exit ], [ true, %bb.c ], [ true, %bb.g ], [ true, %bb.i ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @whereLoopAddVirtual(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  %4 = alloca %struct.Walker, align 8             ; 7 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.c = load ptr, ptr %0, align 8, !tbaa !4262   ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !820  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !4265 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4266 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !4154
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !4309
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %i.n ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !3625 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3016 ; 3 uses
  %.not272.i.not = icmp eq ptr %i.f, null         ; 2 uses
  br i1 %.not272.i.not, label %._crit_edge277.i, label %.lr.ph276.i

.lr.ph276.i:                                      ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph276.i
  %.0175274.i = phi i32 [ 0, %.lr.ph276.i ], [ %.1176.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0192273.i = phi ptr [ %i.f, %.lr.ph276.i ], [ %i.bc, %._crit_edge.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0192273.i, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1150 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.0192273.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1154
  %i.aa = load i32, ptr %i.t, align 4, !tbaa !3554 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %constraintCompatibleWithOuterJoin.exit.thread.i, %.lr.ph.i
  %.0169271.i = phi i32 [ 0, %.lr.ph.i ], [ %i.az, %constraintCompatibleWithOuterJoin.exit.thread.i ]
  %.1176270.i = phi i32 [ %.0175274.i, %.lr.ph.i ], [ %.2177.i, %constraintCompatibleWithOuterJoin.exit.thread.i ] ; 7 uses
  %.0178268.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.ba, %constraintCompatibleWithOuterJoin.exit.thread.i ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0178268.i, i64 18 ; 3 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !4283 ; 3 uses
  %i.ad = and i16 %i.ac, -65
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !4283
  %i.ae = getelementptr inbounds nuw i8, ptr %.0178268.i, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4448
  %.not212.i = icmp eq i32 %i.af, %i.aa
  br i1 %.not212.i, label %bb.d, label %constraintCompatibleWithOuterJoin.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.0178268.i, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !4295
  %i.ai = and i64 %i.ah, %2
  %.not213.i = icmp eq i64 %i.ai, 0
  br i1 %.not213.i, label %bb.e, label %constraintCompatibleWithOuterJoin.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.0178268.i, i64 20
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !4492
  %i.al = and i16 %i.ak, -2049
  %i.am = icmp ne i16 %i.al, 0
  %i.an = and i16 %i.ac, 128
  %.not214.i = icmp eq i16 %i.an, 0
  %or.cond.i = select i1 %i.am, i1 %.not214.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %constraintCompatibleWithOuterJoin.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ao = load i8, ptr %i.u, align 8, !tbaa !3497 ; 2 uses
  %i.ap = and i8 %i.ao, 88
  %.not215.i = icmp eq i8 %i.ap, 0
  br i1 %.not215.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0178.val.i = load ptr, ptr %.0178268.i, align 8, !tbaa !1155 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0178.val.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !367 ; 2 uses
  %i.as = and i32 %i.ar, 3
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %constraintCompatibleWithOuterJoin.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.0178.val.i, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !227
  %.not5.i.i = icmp eq i32 %i.au, %i.aa
  br i1 %.not5.i.i, label %constraintCompatibleWithOuterJoin.exit.i, label %constraintCompatibleWithOuterJoin.exit.thread.i

constraintCompatibleWithOuterJoin.exit.i:         ; preds = %bb.h
  %i.av = and i8 %i.ao, 24
  %.not6.i.i = icmp ne i8 %i.av, 0
  %i.aw = and i32 %i.ar, 2
  %.not7.i.i = icmp ne i32 %i.aw, 0
  %or.cond.i.not.i = and i1 %.not6.i.i, %.not7.i.i
  br i1 %or.cond.i.not.i, label %constraintCompatibleWithOuterJoin.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %constraintCompatibleWithOuterJoin.exit.i, %bb.f
  %i.ax = add nsw i32 %.1176270.i, 1
  %i.ay = or i16 %i.ac, 64
  store i16 %i.ay, ptr %i.ab, align 2, !tbaa !4283
  br label %constraintCompatibleWithOuterJoin.exit.thread.i

constraintCompatibleWithOuterJoin.exit.thread.i:  ; preds = %bb.i, %constraintCompatibleWithOuterJoin.exit.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.2177.i = phi i32 [ %.1176270.i, %bb.c ], [ %.1176270.i, %bb.d ], [ %.1176270.i, %bb.e ], [ %.1176270.i, %constraintCompatibleWithOuterJoin.exit.i ], [ %i.ax, %bb.i ], [ %.1176270.i, %bb.g ], [ %.1176270.i, %bb.h ] ; 2 uses
  %i.az = add nuw nsw i32 %.0169271.i, 1          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0178268.i, i64 56
  %exitcond.not.i = icmp eq i32 %i.az, %i.w
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !4588

._crit_edge.i:                                    ; preds = %constraintCompatibleWithOuterJoin.exit.thread.i, %bb.b
  %.1176.lcssa.i = phi i32 [ %.0175274.i, %bb.b ], [ %.2177.i, %constraintCompatibleWithOuterJoin.exit.thread.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0192273.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !4275 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %._crit_edge277.loopexit.i, label %bb.b, !llvm.loop !4589

._crit_edge277.loopexit.i:                        ; preds = %._crit_edge.i
  %i.bd = sext i32 %.1176.lcssa.i to i64
  br label %._crit_edge277.i

._crit_edge277.i:                                 ; preds = %._crit_edge277.loopexit.i, %bb.a
  %.0175.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.bd, %._crit_edge277.loopexit.i ] ; 4 uses
  %.not198.i = icmp eq ptr %i.q, null
  br i1 %.not198.i, label %bb.ab, label %bb.j

bb.j:                                             ; preds = %._crit_edge277.i
  %i.be = load i32, ptr %i.q, align 8, !tbaa !5   ; 6 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph281.i, label %.thread248.i

.lr.ph281.i:                                      ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %wide.trip.count.i = zext nneg i32 %i.be to i64
  br label %bb.k

bb.k:                                             ; preds = %.thread245.i, %.lr.ph281.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph281.i ], [ %indvars.iv.next.i, %.thread245.i ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %indvars.iv.i ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !902 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  store i16 1, ptr %i.bh, align 4, !tbaa !3504
  store ptr null, ptr %4, align 8, !tbaa !3506
  store <2 x ptr> <ptr @exprNodeIsConstant, ptr @sqlite3SelectWalkFail>, ptr %i.bi, align 8, !tbaa !450
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %sqlite3ExprIsConstant.exit.thread.i, label %sqlite3ExprIsConstant.exit.i

sqlite3ExprIsConstant.exit.thread.i:              ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %.thread245.i

sqlite3ExprIsConstant.exit.i:                     ; preds = %bb.k
  %i.bn = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %4, ptr noundef nonnull %i.bm) #62, !inline_history !3509 ; 0 uses
  %.pre.i.i.i = load i16, ptr %i.bh, align 4, !tbaa !3504
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  %.not199.i = icmp eq i16 %.pre.i.i.i, 0
  br i1 %.not199.i, label %bb.l, label %.thread245.i

bb.l:                                             ; preds = %sqlite3ExprIsConstant.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !3498
  %i.bq = and i8 %i.bp, 2
  %.not200.i = icmp eq i8 %i.bq, 0
  br i1 %.not200.i, label %bb.m, label %.thread248.loopexit360.i

bb.m:                                             ; preds = %bb.l
  %i.br = load i8, ptr %i.bm, align 8, !tbaa !3021
  switch i8 %i.br, label %.thread248.loopexit360.i [
    i8 -88, label %bb.n
    i8 114, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3581
  %i.bu = load i32, ptr %i.bj, align 4, !tbaa !3554
  %i.bv = icmp eq i32 %i.bt, %i.bu
  br i1 %i.bv, label %.thread245.i, label %.thread248.loopexit360.i

bb.o:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !371 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !3021
  %i.bz = icmp eq i8 %i.by, -88
  br i1 %i.bz, label %bb.p, label %.thread248.loopexit360.i

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3581
  %i.cc = load i32, ptr %i.bj, align 4, !tbaa !3554
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %.thread248.loopexit360.i

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cf = load i16, ptr %i.ce, align 8, !tbaa !3487 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i16 %i.cf, ptr %i.cg, align 8, !tbaa !3487
  %i.ch = icmp slt i16 %i.cf, 0
  br i1 %i.ch, label %.thread245.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = load ptr, ptr %i.bk, align 8, !tbaa !882
  %i.cj = zext nneg i16 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 14
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !883 ; 2 uses
  %i.cn = and i16 %i.cm, 512
  %i.co = icmp eq i16 %i.cn, 0
  br i1 %i.co, label %sqlite3ColumnColl.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !929 ; 3 uses
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.cp) ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.cp, i64 %strlen.i.i ; 2 uses
  %i.cq = and i16 %i.cm, 4
  %.not10.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not10.i.i, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.s
  %scevgep12.i.i = getelementptr i8, ptr %scevgep.i.i, i64 1
  %strlen13.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep12.i.i)
  %i.cr = getelementptr i8, ptr %i.cp, i64 %strlen13.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 %strlen.i.i
  %scevgep14.i.i = getelementptr i8, ptr %i.cs, i64 1
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.preheader.i.i, %bb.s
  %.2.i.i = phi ptr [ %scevgep.i.i, %bb.s ], [ %scevgep14.i.i, %.preheader.preheader.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1
  br label %sqlite3ColumnColl.exit.i

sqlite3ColumnColl.exit.i:                         ; preds = %.loopexit.i.i, %bb.r
  %.09.i.i = phi ptr [ %i.ct, %.loopexit.i.i ], [ null, %bb.r ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !227 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.thread248.loopexit360.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %sqlite3ColumnColl.exit.i
  %i.cx = icmp eq ptr %.09.i.i, null
  %spec.store.select.i = select i1 %i.cx, ptr @.str.136, ptr %.09.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.preheader.i
  %.013.i.i.i = phi ptr [ %i.dj, %bb.v ], [ %spec.store.select.i, %.preheader.i.preheader.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.di, %bb.v ], [ %i.cv, %.preheader.i.preheader.i ] ; 2 uses
  %i.cy = load i8, ptr %.0.i.i.i, align 1, !tbaa !227 ; 3 uses
  %i.cz = load i8, ptr %.013.i.i.i, align 1, !tbaa !227 ; 2 uses
  %i.da = icmp eq i8 %i.cy, %i.cz
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.preheader.i.i
  %i.db = icmp eq i8 %i.cy, 0
  br i1 %i.db, label %.thread245.i, label %bb.v

bb.u:                                             ; preds = %.preheader.i.i
  %i.dc = zext i8 %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !227
  %i.df = zext i8 %i.cz to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !227
  %.not.i.i.i = icmp eq i8 %i.de, %i.dh
  br i1 %.not.i.i.i, label %bb.v, label %.thread248.loopexit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  br label %.preheader.i.i

.thread245.i:                                     ; preds = %bb.t, %bb.q, %bb.n, %sqlite3ExprIsConstant.exit.i, %sqlite3ExprIsConstant.exit.thread.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond328.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond328.not.i, label %.thread248.thread.i, label %bb.k, !llvm.loop !4590

.thread248.loopexit.i:                            ; preds = %bb.u
  %i.dk = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread248.i

.thread248.loopexit360.i:                         ; preds = %sqlite3ColumnColl.exit.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.dl = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.thread248.i

.thread248.i:                                     ; preds = %.thread248.loopexit360.i, %.thread248.loopexit.i, %bb.j
  %.1267.i = phi i32 [ %i.dk, %.thread248.loopexit.i ], [ 0, %bb.j ], [ %i.dl, %.thread248.loopexit360.i ]
  %i.dm = icmp eq i32 %.1267.i, %i.be
  br i1 %i.dm, label %.thread248.thread.i, label %bb.ab

.thread248.thread.i:                              ; preds = %.thread245.i, %.thread248.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.do = load i16, ptr %i.dn, align 4, !tbaa !330
  %i.dp = zext i16 %i.do to i32                   ; 4 uses
  %i.dq = lshr i32 %i.dp, 9
  %.lobit.i = and i32 %i.dq, 1                    ; 2 uses
  %i.dr = and i32 %i.dp, 128
  %.not201.i = icmp eq i32 %i.dr, 0
  br i1 %.not201.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.thread248.thread.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  %i.dt = load i16, ptr %i.ds, align 1
  %.not202.i = icmp sgt i16 %i.dt, -1
  br i1 %.not202.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.du = or disjoint i32 %.lobit.i, 2
  br label %bb.ab

bb.y:                                             ; preds = %bb.w, %.thread248.thread.i
  %i.dv = and i32 %i.dp, 64
  %.not203.i = icmp eq i32 %i.dv, 0
  br i1 %.not203.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = xor i32 %.lobit.i, 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dx = and i32 %i.dp, 256
  %.not204.i = icmp eq i32 %i.dx, 0
  %spec.select.i = select i1 %.not204.i, i32 0, i32 3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %.thread248.i, %._crit_edge277.i
  %.2191.i = phi i32 [ 0, %._crit_edge277.i ], [ 0, %.thread248.i ], [ %i.dw, %bb.z ], [ %i.du, %bb.x ], [ %spec.select.i, %bb.aa ]
  %.1181.i = phi i32 [ 0, %._crit_edge277.i ], [ 0, %.thread248.i ], [ %i.be, %bb.z ], [ %i.be, %bb.x ], [ %i.be, %bb.aa ] ; 3 uses
  %i.dy = load ptr, ptr %i.d, align 8, !tbaa !651 ; 2 uses
  %5 = mul nsw i64 %.0175.lcssa.i, 20
  %i.dz = sext i32 %.1181.i to i64                ; 2 uses
  %reass.add.i = add nsw i64 %.0175.lcssa.i, %i.dz
  %reass.mul.i = shl nsw i64 %reass.add.i, 3
  %i.ea = add nsw i64 %5, 128
  %i.eb = add nsw i64 %i.ea, %reass.mul.i         ; 3 uses
  %.not.i.i220.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i220.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.dy, i64 noundef %i.eb), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ed = call fastcc ptr @sqlite3Malloc(i64 noundef %i.eb), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.ad, %bb.ac
  %.0.i.i221.i = phi ptr [ %i.ec, %bb.ac ], [ %i.ed, %bb.ad ] ; 22 uses
  %.not.i222.i = icmp eq ptr %.0.i.i221.i, null
  br i1 %.not.i222.i, label %allocateIndexInfo.exit.thread, label %bb.ae

allocateIndexInfo.exit.thread:                    ; preds = %sqlite3DbMallocRaw.exit.i.i
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.133)
  br label %bb.bu

bb.ae:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i221.i, i8 0, i64 %i.eb, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 128
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %.0175.lcssa.i ; 3 uses
  %i.eh = getelementptr inbounds [12 x i8], ptr %i.eg, i64 %.0175.lcssa.i ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.dz
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 8 ; 2 uses
  store ptr %i.eg, ptr %i.ej, align 8, !tbaa !1145
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 24
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !3333
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 32
  store ptr %i.ei, ptr %i.el, align 8, !tbaa !3316
  %i.em = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.en = load i64, ptr %i.em, align 8, !tbaa !3702 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 88 ; 2 uses
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !4591
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !788
  %i.er = and i32 %i.eq, 128
  %.not206.i = icmp eq i32 %i.er, 0
  br i1 %.not206.i, label %.loopexit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.af
  %.08.i.in.i = phi ptr [ %i.ew, %.lr.ph.i.i ], [ %i.es, %bb.af ]
  %.08.i.i = load ptr, ptr %.08.i.in.i, align 8, !tbaa !935, !nonnull !1096, !noundef !1096 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 99
  %i.eu = load i16, ptr %i.et, align 1
  %i.ev = and i16 %i.eu, 3
  %.not5.i224.i = icmp eq i16 %i.ev, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 40
  br i1 %.not5.i224.i, label %sqlite3PrimaryKeyIndex.exit.i, label %.lr.ph.i.i

sqlite3PrimaryKeyIndex.exit.i:                    ; preds = %.lr.ph.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 94
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !936 ; 3 uses
  %.not323.i = icmp eq i16 %i.ey, 0
  br i1 %.not323.i, label %.loopexit.i, label %.lr.ph295.i

.lr.ph295.i:                                      ; preds = %sqlite3PrimaryKeyIndex.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !878 ; 2 uses
  %wide.trip.count332.i = zext i16 %i.ey to i64   ; 3 uses
  %min.iters.check = icmp ult i16 %i.ey, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph295.i
  %n.vec = and i64 %wide.trip.count332.i, 65532   ; 3 uses
  %i.fb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.en, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.fb, %vector.ph ], [ %i.fm, %vector.body ]
  %vec.phi213 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fn, %vector.body ]
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %wide.load = load <2 x i16>, ptr %i.fc, align 2, !tbaa !330
  %wide.load214 = load <2 x i16>, ptr %i.fd, align 2, !tbaa !330
  %i.fe = call <2 x i16> @llvm.smin.v2i16(<2 x i16> %wide.load, <2 x i16> splat (i16 63))
  %i.ff = call <2 x i16> @llvm.smin.v2i16(<2 x i16> %wide.load214, <2 x i16> splat (i16 63))
  %i.fg = sext <2 x i16> %i.fe to <2 x i64>
  %i.fh = sext <2 x i16> %i.ff to <2 x i64>
  %i.fi = and <2 x i64> %i.fg, splat (i64 4294967295)
  %i.fj = and <2 x i64> %i.fh, splat (i64 4294967295)
  %i.fk = shl nuw <2 x i64> splat (i64 1), %i.fi
  %i.fl = shl nuw <2 x i64> splat (i64 1), %i.fj
  %i.fm = or <2 x i64> %i.fk, %vec.phi            ; 2 uses
  %i.fn = or <2 x i64> %i.fl, %vec.phi213         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !4592

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.fn, %i.fm
  %i.fp = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count332.i
  br i1 %cmp.n, label %..loopexit_crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph295.i, %middle.block
  %indvars.iv329.i.ph = phi i64 [ 0, %.lr.ph295.i ], [ %n.vec, %middle.block ]
  %.ph = phi i64 [ %i.en, %.lr.ph295.i ], [ %i.fp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv329.i = phi i64 [ %indvars.iv.next330.i, %scalar.ph ], [ %indvars.iv329.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fq = phi i64 [ %i.fv, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv329.i
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !330
  %narrow.i = call i16 @llvm.smin.i16(i16 %i.fs, i16 63)
  %spec.store.select1.i = sext i16 %narrow.i to i64
  %i.ft = and i64 %spec.store.select1.i, 4294967295
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = or i64 %i.fu, %i.fq                     ; 2 uses
  %indvars.iv.next330.i = add nuw nsw i64 %indvars.iv329.i, 1 ; 2 uses
  %exitcond333.not.i = icmp eq i64 %indvars.iv.next330.i, %wide.trip.count332.i
  br i1 %exitcond333.not.i, label %..loopexit_crit_edge.i, label %scalar.ph, !llvm.loop !4593

..loopexit_crit_edge.i:                           ; preds = %scalar.ph, %middle.block
  %.lcssa210 = phi i64 [ %i.fp, %middle.block ], [ %i.fv, %scalar.ph ]
  store i64 %.lcssa210, ptr %i.eo, align 8, !tbaa !4591
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %sqlite3PrimaryKeyIndex.exit.i, %bb.ae
  store ptr %i.f, ptr %i.ee, align 8, !tbaa !1148
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 104
  store ptr %i.d, ptr %i.fw, align 8, !tbaa !820
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 112
  store i32 %.2191.i, ptr %i.fx, align 8, !tbaa !5
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 116 ; 3 uses
  store i32 0, ptr %i.fy, align 4, !tbaa !5
  br i1 %.not272.i.not, label %._crit_edge314.i, label %.lr.ph313.i

.lr.ph313.i:                                      ; preds = %.loopexit.i, %._crit_edge303.i
  %.3311.i = phi i32 [ %.4.lcssa.i, %._crit_edge303.i ], [ 0, %.loopexit.i ] ; 3 uses
  %.0170310.i = phi i32 [ %.1171.lcssa.i, %._crit_edge303.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.0184309.i = phi i16 [ %.1185.lcssa.i, %._crit_edge303.i ], [ 0, %.loopexit.i ] ; 2 uses
  %.1193308.i = phi ptr [ %i.ie, %._crit_edge303.i ], [ %i.f, %.loopexit.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1193308.i, i64 20
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !1150 ; 2 uses
  %i.gb = add nsw i32 %i.ga, %.3311.i
  %i.gc = icmp sgt i32 %i.ga, 0
  br i1 %i.gc, label %.lr.ph302.preheader.i, label %._crit_edge303.i

.lr.ph302.preheader.i:                            ; preds = %.lr.ph313.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.1193308.i, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1154
  br label %.lr.ph302.i

.lr.ph302.i:                                      ; preds = %bb.ay, %.lr.ph302.preheader.i
  %.4300.i = phi i32 [ %i.ia, %bb.ay ], [ %.3311.i, %.lr.ph302.preheader.i ] ; 2 uses
  %.1171298.i = phi i32 [ %.2172.i, %bb.ay ], [ %.0170310.i, %.lr.ph302.preheader.i ] ; 7 uses
  %.1179297.i = phi ptr [ %i.ib, %bb.ay ], [ %i.ge, %.lr.ph302.preheader.i ] ; 6 uses
  %.1185296.i = phi i16 [ %.4188.i, %bb.ay ], [ %.0184309.i, %.lr.ph302.preheader.i ] ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1179297.i, i64 18
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !4283 ; 2 uses
  %i.gh = and i16 %i.gg, 64
  %i.gi = icmp eq i16 %i.gh, 0
  br i1 %i.gi, label %bb.ay, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph302.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.1179297.i, i64 32
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !227
  %i.gl = sext i32 %.1171298.i to i64
  %i.gm = getelementptr inbounds [12 x i8], ptr %i.eg, i64 %i.gl ; 4 uses
  store i32 %i.gk, ptr %i.gm, align 4, !tbaa !3311
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i32 %.4300.i, ptr %i.gn, align 4, !tbaa !1146
  %i.go = getelementptr inbounds nuw i8, ptr %.1179297.i, i64 20
  %i.gp = load i16, ptr %i.go, align 4, !tbaa !4492 ; 2 uses
  %i.gq = and i16 %i.gp, 16383                    ; 5 uses
  %i.gr = icmp eq i16 %i.gq, 1
  br i1 %i.gr, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.gs = icmp sgt i16 %i.gg, -1
  br i1 %i.gs, label %bb.ai, label %.thread258.i

bb.ai:                                            ; preds = %bb.ah
  %i.gt = icmp slt i32 %.1171298.i, 32
  %i.gu = shl nuw i32 1, %.1171298.i
  %i.gv = select i1 %i.gt, i32 %i.gu, i32 0
  %i.gw = load i32, ptr %i.fy, align 4, !tbaa !5
  %i.gx = or i32 %i.gw, %i.gv
  store i32 %i.gx, ptr %i.fy, align 4, !tbaa !5
  br label %.thread258.i

.thread258.i:                                     ; preds = %bb.ai, %bb.ah
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i8 2, ptr %i.gy, align 4, !tbaa !3312
  br label %sqlite3ExprIsVector.exit.thread.i

bb.aj:                                            ; preds = %bb.ag
  %i.gz = zext nneg i16 %i.gq to i32              ; 2 uses
  %i.ha = icmp eq i16 %i.gq, 64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 4 ; 6 uses
end_hunk_0
