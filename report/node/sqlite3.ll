inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3FindInIndex:bb.a
  %exitcond355.not = icmp eq i64 %indvars.iv.next352, %i.gr
  br i1 %exitcond355.not, label %sqlite3StrICmp.exit.thread._crit_edge.loopexit, label %bb.bd, !llvm.loop !4038

sqlite3StrICmp.exit.thread._crit_edge.loopexit:   ; preds = %sqlite3StrICmp.exit.thread, %bb.bu, %bb.bx, %sqlite3StrICmp.exit, %sqlite3StrICmp.exit.us
  %.0177.lcssa.ph = phi i64 [ %.0177312, %sqlite3StrICmp.exit.us ], [ %.0177312, %sqlite3StrICmp.exit ], [ %.0177312, %sqlite3StrICmp.exit.thread ], [ %.0177312, %bb.bu ], [ %i.jt, %bb.bx ]
  %i.jv = xor i64 %.0177.lcssa.ph, %notmask
  br label %sqlite3StrICmp.exit.thread._crit_edge

sqlite3StrICmp.exit.thread._crit_edge:            ; preds = %sqlite3StrICmp.exit.thread._crit_edge.loopexit, %bb.bc
  %.0177.lcssa = phi i64 [ %notmask, %bb.bc ], [ %i.jv, %sqlite3StrICmp.exit.thread._crit_edge.loopexit ]
  %i.jw = icmp eq i64 %.0177.lcssa, -1
  br i1 %i.jw, label %bb.by, label %bb.cl

bb.by:                                            ; preds = %sqlite3StrICmp.exit.thread._crit_edge
  %i.jx = load i32, ptr %i.gs, align 8, !tbaa !187 ; 4 uses
  %i.jy = load i32, ptr %i.gt, align 4, !tbaa !945
  %.not.i.i238 = icmp sgt i32 %i.jy, %i.jx
  br i1 %.not.i.i238, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jz = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0), !inline_history !979
  br label %sqlite3VdbeAddOp0.exit240

bb.ca:                                            ; preds = %bb.by
  %i.ka = add nsw i32 %i.jx, 1
  store i32 %i.ka, ptr %i.gs, align 8, !tbaa !187
  %i.kb = load ptr, ptr %i.gu, align 8, !tbaa !186
  %i.kc = sext i32 %i.jx to i64
  %i.kd = getelementptr inbounds [24 x i8], ptr %i.kb, i64 %i.kc ; 2 uses
  store i8 15, ptr %i.kd, align 8, !tbaa !565
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ke, i8 0, i64 23, i1 false)
  br label %sqlite3VdbeAddOp0.exit240

sqlite3VdbeAddOp0.exit240:                        ; preds = %bb.bz, %bb.ca
  %.0.i.i239 = phi i32 [ %i.jz, %bb.bz ], [ %i.jx, %bb.ca ]
  %i.kf = load ptr, ptr %.0171322, align 8, !tbaa !3459
  tail call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull @.str.687, ptr noundef %i.kf)
  %i.kg = getelementptr inbounds nuw i8, ptr %.0171322, i64 88
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !2973 ; 2 uses
  %i.ki = load i32, ptr %i.gs, align 8, !tbaa !187 ; 3 uses
  %i.kj = load i32, ptr %i.gt, align 4, !tbaa !945
  %.not.i241 = icmp sgt i32 %i.kj, %i.ki
  br i1 %.not.i241, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %sqlite3VdbeAddOp0.exit240
  %i.kk = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 113, i32 noundef %i.p, i32 noundef %i.kh, i32 noundef %.1.i), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.cc:                                            ; preds = %sqlite3VdbeAddOp0.exit240
  %i.kl = add nsw i32 %i.ki, 1
  store i32 %i.kl, ptr %i.gs, align 8, !tbaa !187
  %i.km = load ptr, ptr %i.gu, align 8, !tbaa !186
  %i.kn = sext i32 %i.ki to i64
  %i.ko = getelementptr inbounds [24 x i8], ptr %i.km, i64 %i.kn ; 7 uses
  store i8 113, ptr %i.ko, align 8, !tbaa !565
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  store i16 0, ptr %i.kp, align 2, !tbaa !589
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  store i32 %i.p, ptr %i.kq, align 4, !tbaa !586
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i32 %i.kh, ptr %i.kr, align 8, !tbaa !587
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  store i32 %.1.i, ptr %i.ks, align 4, !tbaa !588
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  store ptr null, ptr %i.kt, align 8, !tbaa !229
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  store i8 0, ptr %i.ku, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.cb, %bb.cc
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !978 ; 3 uses
  %i.kw = tail call fastcc ptr @sqlite3KeyInfoOfIndex(ptr noundef nonnull %0, ptr noundef nonnull %.0171322) ; 3 uses
  %.not.i243 = icmp eq ptr %i.kw, null
  br i1 %.not.i243, label %sqlite3VdbeSetP4KeyInfo.exit, label %bb.cd

bb.cd:                                            ; preds = %sqlite3VdbeAddOp3.exit
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !148 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 103
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !552
  %.not.i.i244 = icmp eq i8 %i.kz, 0
  br i1 %.not.i.i244, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 792
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !100
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.cf, label %sqlite3VdbeSetP4KeyInfo.exit

bb.cf:                                            ; preds = %bb.ce
  tail call fastcc void @sqlite3KeyInfoUnref(ptr noundef nonnull %i.kw)
  br label %sqlite3VdbeSetP4KeyInfo.exit

bb.cg:                                            ; preds = %bb.cd
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 136
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !186
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 144
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !187
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr [24 x i8], ptr %i.le, i64 %i.lh ; 2 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 -23
  store i8 -8, ptr %i.lj, align 1, !tbaa !568
  %i.lk = getelementptr i8, ptr %i.li, i64 -8
  store ptr %i.kw, ptr %i.lk, align 8, !tbaa !229
  br label %sqlite3VdbeSetP4KeyInfo.exit

sqlite3VdbeSetP4KeyInfo.exit:                     ; preds = %sqlite3VdbeAddOp3.exit, %bb.ce, %bb.cf, %bb.cg
  %i.ll = getelementptr inbounds nuw i8, ptr %.0171322, i64 56
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !3605
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !229
  %i.lo = zext i8 %i.ln to i32
  %i.lp = add nuw nsw i32 %i.lo, 3
  br i1 %.not199, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %sqlite3VdbeSetP4KeyInfo.exit
  %i.lq = load i32, ptr %i.gv, align 4, !tbaa !952
  %i.lr = add nsw i32 %i.lq, 1                    ; 3 uses
  store i32 %i.lr, ptr %i.gv, align 4, !tbaa !952
  store i32 %i.lr, ptr %.1, align 4, !tbaa !24
  br i1 %i.dt, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  tail call fastcc void @sqlite3SetHasNullFlag(ptr noundef nonnull %.0.i, i32 noundef %i.p, i32 noundef %i.lr)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci, %sqlite3VdbeSetP4KeyInfo.exit
  %i.ls = load i32, ptr %i.gs, align 8, !tbaa !187
  %i.lt = load ptr, ptr %.0.i, align 8, !tbaa !148
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 103
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !552
  %.not.i.i.i245 = icmp eq i8 %i.lv, 0
  br i1 %.not.i.i.i245, label %bb.ck, label %._crit_edge325

bb.ck:                                            ; preds = %bb.cj
  %i.lw = load ptr, ptr %i.gu, align 8, !tbaa !186
  %i.lx = sext i32 %.0.i.i239 to i64
  %i.ly = getelementptr inbounds [24 x i8], ptr %i.lw, i64 %i.lx
  br label %._crit_edge325

bb.cl:                                            ; preds = %sqlite3StrICmp.exit.thread._crit_edge, %bb.az, %bb.bb, %bb.ax, %bb.aw
  %i.lz = getelementptr inbounds nuw i8, ptr %.0171322, i64 40
  %.0171 = load ptr, ptr %i.lz, align 8, !tbaa !937 ; 2 uses
  %.not419 = icmp eq ptr %.0171, null
  br i1 %.not419, label %.thread271, label %bb.aw, !llvm.loop !4039

._crit_edge325:                                   ; preds = %bb.ck, %bb.cj
  %.0.i.i.i246 = phi ptr [ %i.ly, %bb.ck ], [ @sqlite3VdbeGetOp.dummy, %bb.cj ]
  %i.ma = getelementptr inbounds nuw i8, ptr %.0.i.i.i246, i64 8
  store i32 %i.ls, ptr %i.ma, align 8, !tbaa !587
  br label %bb.da

.thread271:                                       ; preds = %.lr.ph.i, %bb.cl, %.critedge, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.x, %bb.q, %._crit_edge, %isCandidateForInOpt.exit, %bb.p
  %i.mb = and i32 %2, 1
  %.not200 = icmp eq i32 %i.mb, 0
  br i1 %.not200, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %.thread271
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !369
  %i.me = and i32 %i.md, 4096
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !373
  store ptr null, ptr %i.mg, align 8, !tbaa !373
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  %i.mi = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  store i16 1, ptr %i.mi, align 4, !tbaa !3506
  store ptr %0, ptr %6, align 8, !tbaa !3508
  %i.mj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @exprNodeIsConstant, ptr %i.mj, align 8, !tbaa !3509
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @sqlite3SelectWalkFail, ptr %i.mk, align 8, !tbaa !3510
  %i.ml = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %6, ptr noundef nonnull %1) #62, !inline_history !3511 ; 0 uses
  %.pre.i.i.i = load i16, ptr %i.mi, align 4, !tbaa !3506
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  store ptr %i.mh, ptr %i.mg, align 8, !tbaa !373
  %.not201 = icmp eq i16 %.pre.i.i.i, 0
  br i1 %.not201, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !229
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !24
  %i.mp = icmp slt i32 %i.mo, 3
  br i1 %i.mp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.mq = load i32, ptr %i.o, align 8, !tbaa !953
  %i.mr = add nsw i32 %i.mq, -1
  store i32 %i.mr, ptr %i.o, align 8, !tbaa !953
  br label %bb.da

bb.cq:                                            ; preds = %bb.co, %bb.cm, %.thread271
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.mt = load i16, ptr %i.ms, align 4, !tbaa !1094
  %i.mu = and i32 %2, 2                           ; 2 uses
  %.not202 = icmp eq i32 %i.mu, 0
  %.lobit = lshr exact i32 %i.mu, 1
  br i1 %.not, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store i16 0, ptr %i.ms, align 4, !tbaa !1094
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq
  %.not203 = icmp eq ptr %.1, null
  br i1 %.not203, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !952
  %i.mx = add nsw i32 %i.mw, 1                    ; 3 uses
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !952
  store i32 %i.mx, ptr %.1, align 4, !tbaa !24
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct, %bb.cr
  %.0165 = phi i32 [ 0, %bb.cr ], [ %i.mx, %bb.ct ], [ 0, %bb.cs ] ; 2 uses
  br i1 %.not202, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !369
  %i.na = and i32 %i.mz, 4096
  %.not204 = icmp eq i32 %i.na, 0
  br i1 %.not204, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !229
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !390
  %7 = lshr i32 %i.ne, 5
  %.lobit387 = and i32 %7, 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %.0164 = phi i32 [ %.lobit, %bb.cu ], [ 0, %bb.cv ], [ %.lobit387, %bb.cw ]
  call fastcc void @sqlite3CodeRhsOfIN(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.p, i32 noundef %.0164)
  %.not206 = icmp eq i32 %.0165, 0
  br i1 %.not206, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call fastcc void @sqlite3SetHasNullFlag(ptr noundef %.0.i, i32 noundef %i.p, i32 noundef %.0165)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  store i16 %i.mt, ptr %i.ms, align 4, !tbaa !1094
  br label %bb.da

bb.da:                                            ; preds = %._crit_edge325, %bb.cp, %.thread273, %bb.cz
  %.0168280 = phi i32 [ %i.p, %bb.cz ], [ -1, %bb.cp ], [ %i.p, %.thread273 ], [ %i.p, %._crit_edge325 ]
  %.7 = phi i32 [ 2, %bb.cz ], [ 5, %bb.cp ], [ 1, %.thread273 ], [ %i.lp, %._crit_edge325 ] ; 2 uses
  %i.nf = icmp ne ptr %4, null
  %i.ng = add nsw i32 %.7, -5
  %i.nh = icmp ult i32 %i.ng, -2
  %or.cond3 = and i1 %i.nf, %i.nh
  br i1 %or.cond3, label %bb.db, label %.loopexit

bb.db:                                            ; preds = %bb.da
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !373 ; 4 uses
  %i.nk = load i8, ptr %i.nj, align 8, !tbaa !3023 ; 2 uses
  %i.nl = icmp eq i8 %i.nk, -80
  br i1 %i.nl, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %i.nn = load i8, ptr %i.nm, align 2, !tbaa !3277
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.0.i248 = phi i8 [ %i.nn, %bb.dc ], [ %i.nk, %bb.db ]
  switch i8 %.0.i248, label %.lr.ph328.preheader [
    i8 -79, label %bb.de
    i8 -117, label %bb.df
  ]

bb.de:                                            ; preds = %bb.dd
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  br label %sqlite3ExprVectorSize.exit

bb.df:                                            ; preds = %bb.dd
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !229
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  br label %sqlite3ExprVectorSize.exit

sqlite3ExprVectorSize.exit:                       ; preds = %bb.de, %bb.df
  %.sink.in.i250 = phi ptr [ %i.nr, %bb.df ], [ %i.no, %bb.de ]
  %.sink.i251 = load ptr, ptr %.sink.in.i250, align 8, !tbaa !229
  %i.ns = load i32, ptr %.sink.i251, align 8, !tbaa !24 ; 2 uses
  %i.nt = icmp sgt i32 %i.ns, 0
  br i1 %i.nt, label %.lr.ph328.preheader, label %.loopexit

.lr.ph328.preheader:                              ; preds = %bb.dd, %sqlite3ExprVectorSize.exit
  %.07.i394 = phi i32 [ %i.ns, %sqlite3ExprVectorSize.exit ], [ 1, %bb.dd ] ; 2 uses
  %wide.trip.count359 = zext nneg i32 %.07.i394 to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.07.i394, 8
  br i1 %min.iters.check, label %.lr.ph328.preheader436, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph328.preheader
  %n.vec = and i64 %wide.trip.count359, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store <4 x i32> %vec.ind, ptr %i.nu, align 4, !tbaa !24
  store <4 x i32> %step.add, ptr %i.nv, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.nw = icmp eq i64 %index.next, %n.vec
  br i1 %i.nw, label %middle.block, label %vector.body, !llvm.loop !4040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count359
  br i1 %cmp.n, label %.loopexit, label %.lr.ph328.preheader436

.lr.ph328.preheader436:                           ; preds = %.lr.ph328.preheader, %middle.block
  %indvars.iv356.ph = phi i64 [ 0, %.lr.ph328.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph328

.lr.ph328:                                        ; preds = %.lr.ph328.preheader436, %.lr.ph328
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %.lr.ph328 ], [ %indvars.iv356.ph, %.lr.ph328.preheader436 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv356
  %i.ny = trunc nuw nsw i64 %indvars.iv356 to i32
  store i32 %i.ny, ptr %i.nx, align 4, !tbaa !24
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %.loopexit, label %.lr.ph328, !llvm.loop !4041

.loopexit:                                        ; preds = %.lr.ph328, %middle.block, %sqlite3ExprVectorSize.exit, %bb.da
  store i32 %.0168280, ptr %5, align 4, !tbaa !24
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CodeVerifySchema(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3546 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr %0, ptr %i.b          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %., i64 116 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3523 ; 2 uses
  %i.e = shl nuw i32 1, %1                        ; 2 uses
  %i.f = and i32 %i.d, %i.e
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %sqlite3CodeVerifySchemaAtToplevel.exit

bb.b:                                             ; preds = %bb.a
  %i.h = or i32 %i.d, %i.e
  store i32 %i.h, ptr %i.c, align 4, !tbaa !3523
  %i.i = icmp eq i32 %1, 1
  br i1 %i.i, label %bb.c, label %sqlite3CodeVerifySchemaAtToplevel.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call fastcc i32 @sqlite3OpenTempDatabase(ptr noundef nonnull %.), !inline_history !4042 ; 0 uses
  br label %sqlite3CodeVerifySchemaAtToplevel.exit

sqlite3CodeVerifySchemaAtToplevel.exit:           ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3SetHasNullFlag(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 -2147483647, -2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !187  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !945
  %.not.i.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 72, i32 noundef 0, i32 noundef %2, i32 noundef 0), !inline_history !979 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  store i8 72, ptr %i.j, align 8, !tbaa !565
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.k, align 2, !tbaa !589
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !586
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %2, ptr %i.m, align 8, !tbaa !587
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !588
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !229
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !568
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.b, %bb.c
  %i.q = load i32, ptr %i.a, align 8, !tbaa !187  ; 4 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !945
  %.not.i.i9 = icmp sgt i32 %i.r, %i.q
  br i1 %.not.i.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.s = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 36, i32 noundef %1, i32 noundef 0, i32 noundef 0), !inline_history !979
  br label %sqlite3VdbeAddOp1.exit

bb.e:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.t = add nsw i32 %i.q, 1
  store i32 %i.t, ptr %i.a, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.w ; 5 uses
  store i8 36, ptr %i.x, align 8, !tbaa !565
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i16 0, ptr %i.y, align 2, !tbaa !589
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %1, ptr %i.z, align 4, !tbaa !586
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.d, %bb.e
  %.0.i.i10 = phi i32 [ %i.s, %bb.d ], [ %i.q, %bb.e ]
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !187 ; 3 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !945
  %.not.i = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f
end_hunk_0
begin_hunk_1_@fts3SelectLeaf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %bb.bt

bb.bt:                                            ; preds = %fts3ScanInteriorNode.exit.thread, %sqlite3_free.exit55, %fts3ScanInteriorNode.exit
  %.5 = phi i32 [ %.473, %sqlite3_free.exit55 ], [ %.0.i45, %fts3ScanInteriorNode.exit ], [ %.0.i45.ph, %fts3ScanInteriorNode.exit.thread ]
  ret i32 %.5
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @fts3CompareElemByTerm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !5234   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5235
  %i.d = load ptr, ptr %1, align 8, !tbaa !5234   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5235
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !5237 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !5237 ; 2 uses
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.j)
  %i.l = sext i32 %i.k to i64
  %i.m = tail call i32 @memcmp(ptr noundef %i.c, ptr noundef %i.f, i64 noundef %i.l) #60 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = sub nsw i32 %i.h, %i.j
  %spec.select = select i1 %i.n, i32 %i.o, i32 %i.m
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, -2147483648) i32 @fts3StrHash(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #60
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a, %bb.b
  %.111.ph = phi i32 [ %i.c, %bb.b ], [ %1, %bb.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.013 = phi i32 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0812 = phi ptr [ %i.f, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.111 = phi i32 [ %i.k, %.lr.ph ], [ %.111.ph, %.lr.ph.preheader ] ; 2 uses
  %i.e = shl i32 %.013, 3
  %i.f = getelementptr inbounds nuw i8, ptr %.0812, i64 1
  %i.g = load i8, ptr %.0812, align 1, !tbaa !229
  %i.h = sext i8 %i.g to i32
  %i.i = xor i32 %i.e, %i.h
  %i.j = xor i32 %i.i, %.013                      ; 2 uses
  %i.k = add nsw i32 %.111, -1
  %i.l = icmp samesign ugt i32 %.111, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !5397

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.m = and i32 %i.j, 2147483647
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.m, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, -2147483648) i32 @fts3BinHash(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %1, 3                       ; 3 uses
  %i.b = icmp ult i32 %1, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %1, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.09 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 5 uses
  %.058 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = shl i32 %.058, 3
  %i.d = getelementptr inbounds nuw i8, ptr %.09, i64 1
  %i.e = load i8, ptr %.09, align 1, !tbaa !229
  %i.f = sext i8 %i.e to i32
  %i.g = xor i32 %i.c, %i.f
  %i.h = xor i32 %i.g, %.058                      ; 2 uses
  %i.i = shl i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %.09, i64 2
  %i.k = load i8, ptr %i.d, align 1, !tbaa !229
  %i.l = sext i8 %i.k to i32
  %i.m = xor i32 %i.i, %i.l
  %i.n = xor i32 %i.m, %i.h                       ; 2 uses
  %i.o = shl i32 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %.09, i64 3
  %i.q = load i8, ptr %i.j, align 1, !tbaa !229
  %i.r = sext i8 %i.q to i32
  %i.s = xor i32 %i.o, %i.r
  %i.t = xor i32 %i.s, %i.n                       ; 2 uses
  %i.u = shl i32 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %.09, i64 4 ; 2 uses
  %i.w = load i8, ptr %i.p, align 1, !tbaa !229
  %i.x = sext i8 %i.w to i32
  %i.y = xor i32 %i.u, %i.x
  %i.z = xor i32 %i.y, %i.t                       ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5398

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.09.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.058.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.09.epil = phi ptr [ %i.ab, %.lr.ph.epil ], [ %.09.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.058.epil = phi i32 [ %i.af, %.lr.ph.epil ], [ %.058.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aa = shl i32 %.058.epil, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.epil, i64 1
  %i.ac = load i8, ptr %.09.epil, align 1, !tbaa !229
  %i.ad = sext i8 %i.ac to i32
  %i.ae = xor i32 %i.aa, %i.ad
  %i.af = xor i32 %i.ae, %.058.epil               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !5399

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.z, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.epil ]
  %i.ag = and i32 %.lcssa, 2147483647
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %i.ag, %._crit_edge.loopexit ]
  ret i32 %.05.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fts3StrCompare(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @strncmp(ptr noundef %0, ptr noundef %2, i64 noundef %i.a) #60
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fts3BinCompare(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @memcmp(ptr noundef %0, ptr noundef %2, i64 noundef %i.a) #60
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts3SqlStmt(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 40) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !513  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 18, label %bb.c
    i32 7, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !5303
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !5306
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !5400
  %i.l = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1433, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !5401
  %i.o = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1422, ptr noundef %i.n)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %4 = getelementptr inbounds nuw [8 x i8], ptr @__const.fts3SqlStmt.azSql, i64 %i.c
  %5 = load ptr, ptr %4, align 8, !tbaa !253
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !5303
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5306
  %i.t = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef %5, ptr noundef %i.q, ptr noundef %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.u = phi i32 [ 165, %bb.c ], [ 161, %bb.d ], [ 165, %bb.e ]
  %.030 = phi ptr [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.t, %bb.e ] ; 5 uses
  %.not34 = icmp eq ptr %.030, null
  br i1 %.not34, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.v, align 8, !tbaa !5307
  %i.w = call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %.val, ptr noundef nonnull %.030, i32 noundef -1, i32 noundef %i.u, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null), !inline_history !5402
  %i.x = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.z(ptr noundef nonnull %i.y) #59, !inline_history !270
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.i, %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %.030) #59, !inline_history !271
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.ae = sub nsw i64 %i.ad, %i.ac
  store i64 %i.ae, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ag = add nsw i64 %i.af, -1
  store i64 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ah(ptr noundef nonnull %.030) #59, !inline_history !272
  %i.ai = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ai, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.aj(ptr noundef nonnull %i.ai) #59, !inline_history !273
  br label %sqlite3_free.exit

bb.k:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.ak(ptr noundef nonnull %.030) #59, !inline_history !272
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.j, %bb.k
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !513 ; 2 uses
  store ptr %i.al, ptr %i.d, align 8, !tbaa !513
  br label %bb.l

bb.l:                                             ; preds = %sqlite3_free.exit, %bb.a
  %i.am = phi ptr [ %i.e, %bb.a ], [ %i.al, %sqlite3_free.exit ] ; 6 uses
  %.1 = phi i32 [ 0, %bb.a ], [ %i.w, %sqlite3_free.exit ] ; 4 uses
  %.not35 = icmp eq ptr %3, null
  br i1 %.not35, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i36 = icmp eq ptr %i.am, null
  br i1 %.not.i36, label %.loopexit, label %sqlite3_bind_parameter_count.exit

sqlite3_bind_parameter_count.exit:                ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !174 ; 2 uses
  %i.ap = icmp eq i32 %.1, 0
  %i.aq = icmp sgt i16 %i.ao, 0
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %sqlite3_bind_parameter_count.exit
  %i.as = zext nneg i16 %i.ao to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !290
  %i.av = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aw = tail call i32 @sqlite3_bind_value(ptr noundef nonnull %i.am, i32 noundef %i.av, ptr noundef %i.au) ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.as
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph, label %.loopexit, !llvm.loop !5403

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.m, %sqlite3_bind_parameter_count.exit, %bb.l
  %i.ba = phi ptr [ %i.am, %bb.l ], [ %i.am, %sqlite3_bind_parameter_count.exit ], [ null, %bb.m ], [ null, %bb.f ], [ %i.am, %.lr.ph ]
  %.3 = phi i32 [ %.1, %bb.l ], [ %.1, %sqlite3_bind_parameter_count.exit ], [ %.1, %bb.m ], [ 7, %bb.f ], [ %i.aw, %.lr.ph ]
  store ptr %i.ba, ptr %2, align 8, !tbaa !513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 2, 6) i32 @sqlite3Fts3GetVarint32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !229
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i32
  %i.e = load i8, ptr %i.a, align 1, !tbaa !229   ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 7
  %i.h = or disjoint i32 %i.g, %i.d               ; 2 uses
  %i.i = icmp sgt i8 %i.e, -1
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = and i32 %i.h, 16383
  %i.l = load i8, ptr %i.j, align 1, !tbaa !229   ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 14
  %i.o = or disjoint i32 %i.n, %i.k               ; 2 uses
  %i.p = icmp sgt i8 %i.l, -1
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.r = and i32 %i.o, 2097151
  %i.s = load i8, ptr %i.q, align 1, !tbaa !229   ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 21
  %i.v = or disjoint i32 %i.u, %i.r               ; 2 uses
  %i.w = icmp sgt i8 %i.s, -1
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = and i32 %i.v, 268435455
  %i.z = load i8, ptr %i.x, align 1, !tbaa !229
  %i.aa = and i8 %i.z, 7
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 28
  %i.ad = or disjoint i32 %i.ac, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sink = phi i32 [ %i.ad, %bb.d ], [ %i.o, %bb.b ], [ %i.h, %bb.a ], [ %i.v, %bb.c ]
  %.0 = phi i32 [ 5, %bb.d ], [ 3, %bb.b ], [ 2, %bb.a ], [ 4, %bb.c ]
  store i32 %.sink, ptr %1, align 4, !tbaa !24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Fts3ReadBlock(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5345 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @sqlite3_blob_reopen(ptr noundef nonnull %i.b, i64 noundef %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !5311 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !5306
  %i.i = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1453, ptr noundef %i.h) ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !5311
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !5307
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5303
  %i.p = tail call i32 @sqlite3_blob_open(ptr noundef %i.m, ptr noundef %i.o, ptr noundef nonnull %i.k, ptr noundef nonnull @.str.1454, i64 noundef %1, i32 noundef 0, ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.036 = phi i32 [ %i.c, %bb.b ], [ %i.p, %bb.e ] ; 3 uses
  %i.q = icmp eq i32 %.036, 0
  br i1 %i.q, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !5345 ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %sqlite3_blob_bytes.exit, label %bb.h

end_hunk_1
