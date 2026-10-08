Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@DwaCompressor_compress:bb.a
  %i.gp = getelementptr inbounds nuw [576 x i8], ptr %i.fs, i64 %indvars.iv
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3424
  store i32 0, ptr %i.gq, align 32, !tbaa !73
  %i.gr = getelementptr inbounds nuw [576 x i8], ptr %i.fs, i64 %indvars.iv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4000
  store i32 0, ptr %i.gs, align 32, !tbaa !73
  %i.gt = getelementptr inbounds nuw [576 x i8], ptr %i.fs, i64 %indvars.iv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4576
  store i32 0, ptr %i.gu, align 32, !tbaa !73
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter656.next.7 = add i64 %niter656, 8         ; 2 uses
  %niter656.ncmp.7 = icmp eq i64 %niter656.next.7, %unroll_iter655
  br i1 %niter656.ncmp.7, label %._crit_edge.thread.unr-lcssa, label %bb.p, !llvm.loop !147

.preheader477:                                    ; preds = %.preheader477.preheader, %DctCoderChannelData_push_row.exit
  %.pre564 = phi i32 [ %.pre565, %DctCoderChannelData_push_row.exit ], [ %i.dc, %.preheader477.preheader ] ; 2 uses
  %i.gv = phi i32 [ %i.im, %DctCoderChannelData_push_row.exit ], [ %i.fz, %.preheader477.preheader ]
  %i.gw = phi i32 [ %i.in, %DctCoderChannelData_push_row.exit ], [ %i.dc, %.preheader477.preheader ] ; 2 uses
  %i.gx = phi i32 [ %i.io, %DctCoderChannelData_push_row.exit ], [ %i.dc, %.preheader477.preheader ] ; 2 uses
  %.0285495 = phi i32 [ %i.ip, %DctCoderChannelData_push_row.exit ], [ %i.fx, %.preheader477.preheader ] ; 3 uses
  %.0289494 = phi ptr [ %.1290.lcssa, %DctCoderChannelData_push_row.exit ], [ %i.ge, %.preheader477.preheader ] ; 2 uses
  %.not373489 = icmp sgt i32 %i.gx, 0
  br i1 %.not373489, label %.lr.ph492, label %DctCoderChannelData_push_row.exit

.lr.ph492:                                        ; preds = %.preheader477, %bb.v
  %.pre566 = phi i32 [ %.pre567, %bb.v ], [ %.pre564, %.preheader477 ] ; 2 uses
  %i.gy = phi i32 [ %i.ik, %bb.v ], [ %i.gw, %.preheader477 ]
  %indvars.iv542 = phi i64 [ %indvars.iv.next543, %bb.v ], [ 0, %.preheader477 ] ; 2 uses
  %.1290490 = phi ptr [ %.2291.ph, %bb.v ], [ %.0289494, %.preheader477 ] ; 3 uses
  %i.gz = load ptr, ptr %i.ga, align 8, !tbaa !33
  %i.ha = getelementptr inbounds nuw [576 x i8], ptr %i.gz, i64 %indvars.iv542 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 448
  %i.hc = load ptr, ptr %i.hb, align 32, !tbaa !41 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !74
  %i.hf = srem i32 %.0285495, %i.he
  %.not371 = icmp eq i32 %i.hf, 0
  br i1 %.not371, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.lr.ph492
  %i.hg = load ptr, ptr %i.gb, align 8, !tbaa !32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 408 ; 4 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !75 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 400 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 16, !tbaa !76
  %i.hl = icmp eq i64 %i.hi, %i.hk
  br i1 %i.hl, label %bb.r, label %._crit_edge.i401

._crit_edge.i401:                                 ; preds = %bb.q
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 392
  %.pre.i402 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hm = load ptr, ptr %i.gc, align 8, !tbaa !31
  %i.hn = icmp eq i64 %i.hi, 0
  %i.ho = mul i64 %i.hi, 3
  %i.hp = lshr i64 %i.ho, 1
  %i.hq = select i1 %i.hn, i64 16, i64 %i.hp      ; 2 uses
  %i.hr = shl i64 %i.hq, 3
  %i.hs = tail call ptr %i.hm(i64 noundef %i.hr) #21, !inline_history !160 ; 4 uses
  %.not.i403 = icmp eq ptr %i.hs, null
  br i1 %.not.i403, label %DwaCompressor_writeRelevantChannelRules.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ha, i64 392 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !77 ; 2 uses
  %.not26.i = icmp eq ptr %i.hu, null
  br i1 %.not26.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hv = load i64, ptr %i.hh, align 8, !tbaa !75
  %i.hw = shl i64 %i.hv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr nonnull align 8 %i.hu, i64 %i.hw, i1 false)
  %i.hx = load ptr, ptr %i.ht, align 8, !tbaa !77
  tail call void %i.hg(ptr noundef %i.hx) #21, !inline_history !160
  br label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !77
  store i64 %i.hq, ptr %i.hj, align 16, !tbaa !76
  %.pre27.i = load i64, ptr %i.hh, align 8, !tbaa !75
  %.pre.pre = load i32, ptr %i.db, align 8, !tbaa !34
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i401, %.thread.i
  %.pre = phi i32 [ %.pre566, %._crit_edge.i401 ], [ %.pre.pre, %.thread.i ] ; 2 uses
  %i.hy = phi i64 [ %i.hi, %._crit_edge.i401 ], [ %.pre27.i, %.thread.i ] ; 2 uses
  %i.hz = phi ptr [ %.pre.i402, %._crit_edge.i401 ], [ %i.hs, %.thread.i ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hy
  store ptr %.1290490, ptr %i.ia, align 8, !tbaa !65
  %i.ib = add i64 %i.hy, 1
  store i64 %i.ib, ptr %i.hh, align 8, !tbaa !75
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !66
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hc, i64 25
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !68
  %i.ig = sext i8 %i.if to i32
  %i.ih = mul nsw i32 %i.id, %i.ig
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %.1290490, i64 %i.ii
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph492
  %.pre567 = phi i32 [ %.pre566, %.lr.ph492 ], [ %.pre, %bb.u ] ; 2 uses
  %i.ik = phi i32 [ %i.gy, %.lr.ph492 ], [ %.pre, %bb.u ] ; 4 uses
  %.2291.ph = phi ptr [ %.1290490, %.lr.ph492 ], [ %i.ij, %bb.u ] ; 2 uses
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %.not373 = icmp slt i64 %indvars.iv.next543, %i.il
  br i1 %.not373, label %.lr.ph492, label %DctCoderChannelData_push_row.exit.loopexit, !llvm.loop !148

DctCoderChannelData_push_row.exit.loopexit:       ; preds = %bb.v
  %.pre554 = load i32, ptr %i.fy, align 4, !tbaa !36
  br label %DctCoderChannelData_push_row.exit

DctCoderChannelData_push_row.exit:                ; preds = %DctCoderChannelData_push_row.exit.loopexit, %.preheader477
  %.pre565 = phi i32 [ %.pre564, %.preheader477 ], [ %.pre567, %DctCoderChannelData_push_row.exit.loopexit ]
  %i.im = phi i32 [ %i.gv, %.preheader477 ], [ %.pre554, %DctCoderChannelData_push_row.exit.loopexit ] ; 2 uses
  %i.in = phi i32 [ %i.gw, %.preheader477 ], [ %i.ik, %DctCoderChannelData_push_row.exit.loopexit ]
  %i.io = phi i32 [ %i.gx, %.preheader477 ], [ %i.ik, %DctCoderChannelData_push_row.exit.loopexit ]
  %.1290.lcssa = phi ptr [ %.0289494, %.preheader477 ], [ %.2291.ph, %DctCoderChannelData_push_row.exit.loopexit ]
  %i.ip = add nsw i32 %.0285495, 1
  %.not370.not = icmp slt i32 %.0285495, %i.im
  br i1 %.not370.not, label %.preheader477, label %.preheader475, !llvm.loop !149

.preheader475:                                    ; preds = %DctCoderChannelData_push_row.exit, %DwaCompressor_setupChannelData.exit.thread, %._crit_edge.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !78
  %.not375498 = icmp sgt i32 %i.ir, 0
  br i1 %.not375498, label %.lr.ph502, label %.preheader474

.lr.ph502:                                        ; preds = %.preheader475
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre555 = load ptr, ptr %i.iu, align 8, !tbaa !33
  br label %bb.w

.preheader474:                                    ; preds = %bb.x, %.preheader475
  %.1307.lcssa = phi ptr [ %i.cq, %.preheader475 ], [ %i.lc, %bb.x ]
  %.1301.lcssa = phi ptr [ %i.cs, %.preheader475 ], [ %i.la, %bb.x ]
  %i.jc = load i32, ptr %i.db, align 8, !tbaa !34 ; 2 uses
  %.not379521 = icmp sgt i32 %i.jc, 0
  br i1 %.not379521, label %.lr.ph526, label %._crit_edge527

.lr.ph526:                                        ; preds = %.preheader474
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph502, %bb.x
  %i.jk = phi ptr [ %.pre555, %.lr.ph502 ], [ %i.kn, %bb.x ] ; 3 uses
  %indvars.iv545 = phi i64 [ 0, %.lr.ph502 ], [ %indvars.iv.next546, %bb.x ] ; 2 uses
  %.1301500 = phi ptr [ %i.cs, %.lr.ph502 ], [ %i.la, %bb.x ] ; 2 uses
  %.1307499 = phi ptr [ %i.cq, %.lr.ph502 ], [ %i.lc, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.jl = load ptr, ptr %i.is, align 8, !tbaa !79
  %i.jm = getelementptr inbounds nuw [12 x i8], ptr %i.jl, i64 %indvars.iv545 ; 4 uses
  %i.jn = load float, ptr %i.it, align 4, !tbaa !161
  %i.jo = fdiv float %i.jn, 1.000000e+05
  %i.jp = load i32, ptr %i.jm, align 4, !tbaa !36
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [576 x i8], ptr %i.jk, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 4 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !36
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [576 x i8], ptr %i.jk, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !36
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [576 x i8], ptr %i.jk, i64 %i.jy
  %i.ka = load ptr, ptr @exrcore_dwaToNonLinearTable, align 8, !tbaa !80
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 448
  %i.kc = load ptr, ptr %i.kb, align 32, !tbaa !41 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !66
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !67
  call fastcc void @LossyDctEncoder_base_construct(ptr noundef nonnull %1, float noundef %i.jo, ptr noundef %.1307499, ptr noundef %.1301500, ptr noundef %i.ka, i32 noundef %i.ke, i32 noundef %i.kg)
  store ptr %i.jr, ptr %i.iv, align 8, !tbaa !82
  store ptr %i.jv, ptr %i.iw, align 8, !tbaa !82
  store ptr %i.jz, ptr %i.ix, align 8, !tbaa !82
  store i32 3, ptr %i.iy, align 8, !tbaa !84
  %i.kh = load ptr, ptr %i.iz, align 8, !tbaa !31
  %i.ki = load ptr, ptr %i.ja, align 8, !tbaa !32
  %i.kj = call fastcc i32 @LossyDctEncoder_execute(ptr noundef %i.kh, ptr noundef %i.ki, ptr noundef %1)
  %i.kk = load <2 x i64>, ptr %i.ac, align 8, !tbaa !50
  %i.kl = load <2 x i64>, ptr %i.jb, align 8, !tbaa !50 ; 3 uses
  %i.km = add <2 x i64> %i.kl, %i.kk
  store <2 x i64> %i.km, ptr %i.ac, align 8, !tbaa !50
  %i.kn = load ptr, ptr %i.iu, align 8, !tbaa !33 ; 4 uses
  %i.ko = load i32, ptr %i.jm, align 4, !tbaa !36
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [576 x i8], ptr %i.kn, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 544
  store i32 1, ptr %i.kr, align 32, !tbaa !73
  %i.ks = load i32, ptr %i.js, align 4, !tbaa !36
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [576 x i8], ptr %i.kn, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 544
  store i32 1, ptr %i.kv, align 32, !tbaa !73
  %i.kw = load i32, ptr %i.jw, align 4, !tbaa !36
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [576 x i8], ptr %i.kn, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 544
  store i32 1, ptr %i.kz, align 32, !tbaa !73
  %.not374 = icmp eq i32 %i.kj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.not374, label %bb.x, label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.x:                                             ; preds = %bb.w
  %3 = extractelement <2 x i64> %i.kl, i64 1
  %4 = shl i64 %3, 1
  %i.la = getelementptr inbounds nuw i8, ptr %.1301500, i64 %4 ; 2 uses
  %i.lb = extractelement <2 x i64> %i.kl, i64 0
  %5 = shl i64 %i.lb, 1
  %i.lc = getelementptr inbounds nuw i8, ptr %.1307499, i64 %5 ; 2 uses
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1 ; 2 uses
  %i.ld = load i32, ptr %i.iq, align 4, !tbaa !78
  %i.le = sext i32 %i.ld to i64
  %.not375 = icmp slt i64 %indvars.iv.next546, %i.le
  br i1 %.not375, label %bb.w, label %.preheader474, !llvm.loop !150

bb.y:                                             ; preds = %.lr.ph526, %bb.ae
  %i.lf = phi i32 [ %i.jc, %.lr.ph526 ], [ %i.pb, %bb.ae ]
  %indvars.iv551 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next552, %bb.ae ] ; 2 uses
  %.3303524 = phi ptr [ %.1301.lcssa, %.lr.ph526 ], [ %.5305, %bb.ae ] ; 7 uses
  %.3309523 = phi ptr [ %.1307.lcssa, %.lr.ph526 ], [ %.5311, %bb.ae ] ; 7 uses
  %i.lg = load ptr, ptr %i.jd, align 8, !tbaa !33
  %i.lh = getelementptr inbounds nuw [576 x i8], ptr %i.lg, i64 %indvars.iv551 ; 11 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 448
  %i.lj = load ptr, ptr %i.li, align 32, !tbaa !41 ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 544 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 32, !tbaa !73
  %.not376 = icmp eq i32 %i.ll, 0
  br i1 %.not376, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 548
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !42
  switch i32 %i.ln, label %DwaCompressor_writeRelevantChannelRules.exit.thread [
    i32 1, label %bb.ab
    i32 2, label %.preheader473
    i32 0, label %bb.ac
  ]

.preheader473:                                    ; preds = %bb.z
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 408 ; 3 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !75
  %.not530 = icmp eq i64 %i.lp, 0
  br i1 %.not530, label %.loopexit, label %.lr.ph520

.lr.ph520:                                        ; preds = %.preheader473
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 392
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 12 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 25 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 504
  %i.lu = load i32, ptr %i.lr, align 4, !tbaa !66 ; 4 uses
  %i.lv = icmp sgt i32 %i.lu, 0
  br i1 %i.lv, label %.lr.ph520.split.preheader, label %.lr.ph520.split.us

.lr.ph520.split.preheader:                        ; preds = %.lr.ph520
  %.pre560.pre = load i8, ptr %i.ls, align 1, !tbaa !68
  br label %.lr.ph520.split

.lr.ph520.split.us:                               ; preds = %.lr.ph520
  %i.lw = sext i32 %i.lu to i64
  %i.lx = load i8, ptr %i.ls, align 1, !tbaa !68
  %i.ly = sext i8 %i.lx to i64
  %i.lz = mul nsw i64 %i.ly, %i.lw
  %.pre557 = load i64, ptr %i.ab, align 8, !tbaa !50
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph520.split.us
  %i.ma = phi i64 [ %.pre557, %.lr.ph520.split.us ], [ %i.mb, %bb.aa ]
  %.0280519.us = phi i64 [ 0, %.lr.ph520.split.us ], [ %i.mc, %bb.aa ]
  %i.mb = add i64 %i.lz, %i.ma                    ; 2 uses
  store i64 %i.mb, ptr %i.ab, align 8, !tbaa !50
  %i.mc = add nuw i64 %.0280519.us, 1             ; 2 uses
  %i.md = load i64, ptr %i.lo, align 8, !tbaa !75
  %i.me = icmp ult i64 %i.mc, %i.md
  br i1 %i.me, label %bb.aa, label %.loopexit, !llvm.loop !151

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.mg = load i8, ptr %i.mf, align 8, !tbaa !85
  %.not377 = icmp eq i8 %i.mg, 0
  %i.mh = load ptr, ptr @exrcore_dwaToNonLinearTable, align 8
  %spec.select392 = select i1 %.not377, ptr %i.mh, ptr null
  %i.mi = load float, ptr %i.je, align 4, !tbaa !161
  %i.mj = fdiv float %i.mi, 1.000000e+05
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !66
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !67
  call fastcc void @LossyDctEncoder_base_construct(ptr noundef nonnull %2, float noundef %i.mj, ptr noundef %.3309523, ptr noundef %.3303524, ptr noundef %spec.select392, i32 noundef %i.ml, i32 noundef %i.mn)
  store ptr %i.lh, ptr %i.jf, align 8, !tbaa !82
  store i32 1, ptr %i.jg, align 8, !tbaa !84
  %i.mo = load ptr, ptr %i.jh, align 8, !tbaa !31
  %i.mp = load ptr, ptr %i.ji, align 8, !tbaa !32
  %i.mq = call fastcc i32 @LossyDctEncoder_execute(ptr noundef %i.mo, ptr noundef %i.mp, ptr noundef %2)
  %i.mr = load <2 x i64>, ptr %i.ac, align 8, !tbaa !50
  %i.ms = load <2 x i64>, ptr %i.jj, align 8, !tbaa !50 ; 3 uses
  %i.mt = add <2 x i64> %i.ms, %i.mr
  store <2 x i64> %i.mt, ptr %i.ac, align 8, !tbaa !50
  %6 = extractelement <2 x i64> %i.ms, i64 0
  %7 = shl i64 %6, 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.3309523, i64 %7
  %i.mv = extractelement <2 x i64> %i.ms, i64 1
  %8 = shl i64 %i.mv, 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.3303524, i64 %8
  %.not378 = icmp eq i32 %i.mq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.not378, label %.loopexit, label %DwaCompressor_writeRelevantChannelRules.exit.thread

.lr.ph520.split:                                  ; preds = %.lr.ph520.split.preheader, %._crit_edge517
  %.pre560 = phi i8 [ %.pre560569, %._crit_edge517 ], [ %.pre560.pre, %.lr.ph520.split.preheader ] ; 4 uses
  %i.mx = phi i32 [ %i.nh, %._crit_edge517 ], [ %i.lu, %.lr.ph520.split.preheader ] ; 2 uses
  %i.my = phi i32 [ %i.ni, %._crit_edge517 ], [ %i.lu, %.lr.ph520.split.preheader ] ; 2 uses
  %.0280519 = phi i64 [ %i.no, %._crit_edge517 ], [ 0, %.lr.ph520.split.preheader ] ; 2 uses
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %.preheader.preheader, label %._crit_edge517

.preheader.preheader:                             ; preds = %.lr.ph520.split
  %i.na = load ptr, ptr %i.lq, align 8, !tbaa !77
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %.0280519
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !65
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge513
  %.pre560571 = phi i8 [ %.pre560570, %._crit_edge513 ], [ %.pre560, %.preheader.preheader ]
  %i.nd = phi i32 [ %i.nr, %._crit_edge513 ], [ %i.mx, %.preheader.preheader ]
  %i.ne = phi i8 [ %i.ns, %._crit_edge513 ], [ %.pre560, %.preheader.preheader ] ; 2 uses
  %.0278516 = phi i32 [ %i.nt, %._crit_edge513 ], [ 0, %.preheader.preheader ]
  %.0279515 = phi ptr [ %.1.lcssa, %._crit_edge513 ], [ %i.nc, %.preheader.preheader ] ; 2 uses
  %i.nf = icmp sgt i8 %i.ne, 0
  br i1 %i.nf, label %.lr.ph512, label %._crit_edge513

._crit_edge517:                                   ; preds = %._crit_edge513, %.lr.ph520.split
  %.pre560569 = phi i8 [ %.pre560, %.lr.ph520.split ], [ %.pre560570, %._crit_edge513 ]
  %i.ng = phi i8 [ %.pre560, %.lr.ph520.split ], [ %i.ns, %._crit_edge513 ]
  %i.nh = phi i32 [ %i.mx, %.lr.ph520.split ], [ %i.nr, %._crit_edge513 ]
  %i.ni = phi i32 [ %i.my, %.lr.ph520.split ], [ %i.nr, %._crit_edge513 ] ; 2 uses
  %i.nj = sext i32 %i.ni to i64
  %i.nk = sext i8 %i.ng to i64
  %i.nl = mul nsw i64 %i.nk, %i.nj
  %i.nm = load i64, ptr %i.ab, align 8, !tbaa !50
  %i.nn = add i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %i.ab, align 8, !tbaa !50
  %i.no = add nuw i64 %.0280519, 1                ; 2 uses
  %i.np = load i64, ptr %i.lo, align 8, !tbaa !75
  %i.nq = icmp ult i64 %i.no, %i.np
  br i1 %i.nq, label %.lr.ph520.split, label %.loopexit, !llvm.loop !152

._crit_edge513.loopexit:                          ; preds = %.lr.ph512
  %.pre559 = load i32, ptr %i.lr, align 4, !tbaa !66
  br label %._crit_edge513

._crit_edge513:                                   ; preds = %._crit_edge513.loopexit, %.preheader
  %.pre560570 = phi i8 [ %.pre560571, %.preheader ], [ %i.oa, %._crit_edge513.loopexit ] ; 2 uses
  %i.nr = phi i32 [ %i.nd, %.preheader ], [ %.pre559, %._crit_edge513.loopexit ] ; 4 uses
  %i.ns = phi i8 [ %i.ne, %.preheader ], [ %i.oa, %._crit_edge513.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0279515, %.preheader ], [ %i.nv, %._crit_edge513.loopexit ]
  %i.nt = add nuw nsw i32 %.0278516, 1            ; 2 uses
  %i.nu = icmp slt i32 %i.nt, %i.nr
  br i1 %i.nu, label %.preheader, label %._crit_edge517, !llvm.loop !153

.lr.ph512:                                        ; preds = %.preheader, %.lr.ph512
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %.lr.ph512 ], [ 0, %.preheader ] ; 2 uses
  %.1510 = phi ptr [ %i.nv, %.lr.ph512 ], [ %.0279515, %.preheader ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.1510, i64 1 ; 2 uses
  %i.nw = load i8, ptr %.1510, align 1, !tbaa !60
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv548 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !65 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  store ptr %i.nz, ptr %i.nx, align 8, !tbaa !65
  store i8 %i.nw, ptr %i.ny, align 1, !tbaa !60
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.oa = load i8, ptr %i.ls, align 1, !tbaa !68  ; 3 uses
  %i.ob = sext i8 %i.oa to i64
  %i.oc = icmp slt i64 %indvars.iv.next549, %i.ob
  br i1 %i.oc, label %.lr.ph512, label %._crit_edge513.loopexit, !llvm.loop !154

bb.ac:                                            ; preds = %bb.z
  %i.od = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !66
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.lj, i64 25
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !68
  %i.oi = sext i8 %i.oh to i64
  %i.oj = mul nsw i64 %i.oi, %i.of                ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lh, i64 408 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !75
  %.not529 = icmp eq i64 %i.ol, 0
  br i1 %.not529, label %._crit_edge509, label %.lr.ph508

.lr.ph508:                                        ; preds = %bb.ac
  %i.om = getelementptr inbounds nuw i8, ptr %i.lh, i64 464 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.lh, i64 392
  %.pre556 = load ptr, ptr %i.om, align 16, !tbaa !71
  br label %bb.ad

._crit_edge509:                                   ; preds = %bb.ad, %bb.ac
  %i.oo = getelementptr inbounds nuw i8, ptr %i.lh, i64 536
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !69
  %i.oq = load i64, ptr %i.v, align 8, !tbaa !50
  %i.or = add i64 %i.oq, %i.op
  store i64 %i.or, ptr %i.v, align 8, !tbaa !50
  br label %.loopexit

bb.ad:                                            ; preds = %.lr.ph508, %bb.ad
  %i.os = phi ptr [ %.pre556, %.lr.ph508 ], [ %i.ox, %bb.ad ]
  %.0506 = phi i64 [ 0, %.lr.ph508 ], [ %i.oy, %bb.ad ] ; 2 uses
  %i.ot = load ptr, ptr %i.on, align 8, !tbaa !77
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %.0506
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr align 1 %i.ov, i64 %i.oj, i1 false)
  %i.ow = load ptr, ptr %i.om, align 16, !tbaa !71
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.oj ; 2 uses
  store ptr %i.ox, ptr %i.om, align 16, !tbaa !71
  %i.oy = add nuw i64 %.0506, 1                   ; 2 uses
  %i.oz = load i64, ptr %i.ok, align 8, !tbaa !75
  %i.pa = icmp ult i64 %i.oy, %i.oz
  br i1 %i.pa, label %bb.ad, label %._crit_edge509, !llvm.loop !155

.loopexit:                                        ; preds = %bb.aa, %._crit_edge517, %.preheader473, %bb.ab, %._crit_edge509
  %.4310 = phi ptr [ %i.mu, %bb.ab ], [ %.3309523, %._crit_edge509 ], [ %.3309523, %._crit_edge517 ], [ %.3309523, %.preheader473 ], [ %.3309523, %bb.aa ]
  %.4304 = phi ptr [ %i.mw, %bb.ab ], [ %.3303524, %._crit_edge509 ], [ %.3303524, %._crit_edge517 ], [ %.3303524, %.preheader473 ], [ %.3303524, %bb.aa ]
  store i32 1, ptr %i.lk, align 32, !tbaa !73
  %.pre561 = load i32, ptr %i.db, align 8, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.y
  %i.pb = phi i32 [ %.pre561, %.loopexit ], [ %i.lf, %bb.y ] ; 2 uses
  %.5311 = phi ptr [ %.4310, %.loopexit ], [ %.3309523, %bb.y ]
  %.5305 = phi ptr [ %.4304, %.loopexit ], [ %.3303524, %bb.y ]
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %i.pc = sext i32 %i.pb to i64
  %.not379 = icmp slt i64 %indvars.iv.next552, %i.pc
  br i1 %.not379, label %bb.y, label %._crit_edge527, !llvm.loop !156

._crit_edge527:                                   ; preds = %bb.ae, %.preheader474
  %i.pd = load i64, ptr %i.v, align 8, !tbaa !50  ; 3 uses
  %.not380 = icmp eq i64 %i.pd, 0
  br i1 %.not380, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.pe = load ptr, ptr %0, align 8, !tbaa !27
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !29
  %i.ph = load ptr, ptr %i.cw, align 8, !tbaa !65
  %i.pi = tail call i64 @exr_compress_max_buffer_size(i64 noundef %i.pd) #21
  %i.pj = call i32 @exr_compress_buffer(ptr noundef %i.pg, i32 noundef 9, ptr noundef %i.ph, i64 noundef %i.pd, ptr noundef %.051.lcssa.i419, i64 noundef %i.pi, ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not381 = icmp eq i32 %i.pj, 0
  br i1 %.not381, label %.thread452, label %bb.ag

.thread452:                                       ; preds = %bb.af
  %i.pk = load i64, ptr %i.c, align 8, !tbaa !50  ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.051.lcssa.i419, i64 %i.pk
  store i64 %i.pk, ptr %i.w, align 8, !tbaa !50
  %i.pm = add i64 %i.pk, %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.ah:                                            ; preds = %.thread452, %._crit_edge527
  %.1414 = phi i64 [ %i.cl, %._crit_edge527 ], [ %i.pm, %.thread452 ] ; 2 uses
  %.1294 = phi ptr [ %.051.lcssa.i419, %._crit_edge527 ], [ %i.pl, %.thread452 ] ; 5 uses
  %i.pn = load i64, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %.not382 = icmp eq i64 %i.pn, 0
  br i1 %.not382, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.po = load i32, ptr %i.ct, align 8, !tbaa !26
  switch i32 %i.po, label %DwaCompressor_writeRelevantChannelRules.exit.thread [
    i32 0, label %bb.aj
    i32 1, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.pp = load i64, ptr %i.b, align 8, !tbaa !50
  %i.pq = ptrtoint ptr %.1294 to i64
  %i.pr = ptrtoint ptr %i.s to i64
  %.neg = sub i64 %i.pr, %i.pq
  %i.ps = add i64 %.neg, %i.pp
  %i.pt = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.pu = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 192
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !162
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 200
  %i.py = load i64, ptr %i.px, align 8, !tbaa !163
  %i.pz = call i32 @internal_huf_compress(ptr noundef nonnull %i.x, ptr noundef %.1294, i64 noundef %i.ps, ptr noundef %i.pt, i64 noundef %i.pn, ptr noundef %i.pw, i64 noundef %i.py) #21 ; 2 uses
  switch i32 %i.pz, label %DwaCompressor_writeRelevantChannelRules.exit.thread [
    i32 0, label %._crit_edge562
    i32 4, label %bb.ak
  ]

._crit_edge562:                                   ; preds = %bb.aj
  %.pre563 = load i64, ptr %i.x, align 8, !tbaa !50
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.qa = load ptr, ptr %0, align 8, !tbaa !27    ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 168
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !158
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 104
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !159
end_hunk_0
