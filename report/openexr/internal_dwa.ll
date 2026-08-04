inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@DwaCompressor_compress:bb.a
  %i.gp = getelementptr inbounds nuw [576 x i8], ptr %i.fs, i64 %indvars.iv
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 3424
  store i32 0, ptr %i.gq, align 32, !tbaa !108
  %i.gr = getelementptr inbounds nuw [576 x i8], ptr %i.fs, i64 %indvars.iv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4000
  store i32 0, ptr %i.gs, align 32, !tbaa !108
  %i.gt = getelementptr inbounds nuw [576 x i8], ptr %i.fs, i64 %indvars.iv
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4576
  store i32 0, ptr %i.gu, align 32, !tbaa !108
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter660.next.7 = add i64 %niter660, 8         ; 2 uses
  %niter660.ncmp.7 = icmp eq i64 %niter660.next.7, %unroll_iter659
  br i1 %niter660.ncmp.7, label %._crit_edge.thread.unr-lcssa, label %bb.p, !llvm.loop !111

.preheader482:                                    ; preds = %.preheader482.preheader, %DctCoderChannelData_push_row.exit
  %.pre569 = phi i32 [ %.pre570, %DctCoderChannelData_push_row.exit ], [ %i.dc, %.preheader482.preheader ] ; 2 uses
  %i.gv = phi i32 [ %i.im, %DctCoderChannelData_push_row.exit ], [ %i.fz, %.preheader482.preheader ]
  %i.gw = phi i32 [ %i.in, %DctCoderChannelData_push_row.exit ], [ %i.dc, %.preheader482.preheader ] ; 2 uses
  %i.gx = phi i32 [ %i.io, %DctCoderChannelData_push_row.exit ], [ %i.dc, %.preheader482.preheader ] ; 2 uses
  %.0323500 = phi ptr [ %.1324.lcssa, %DctCoderChannelData_push_row.exit ], [ %i.ge, %.preheader482.preheader ] ; 2 uses
  %.0343499 = phi i32 [ %i.ip, %DctCoderChannelData_push_row.exit ], [ %i.fx, %.preheader482.preheader ] ; 3 uses
  %.not373494 = icmp sgt i32 %i.gx, 0
  br i1 %.not373494, label %.lr.ph497, label %DctCoderChannelData_push_row.exit

.lr.ph497:                                        ; preds = %.preheader482, %bb.v
  %.pre571 = phi i32 [ %.pre572, %bb.v ], [ %.pre569, %.preheader482 ] ; 2 uses
  %i.gy = phi i32 [ %i.ik, %bb.v ], [ %i.gw, %.preheader482 ]
  %indvars.iv547 = phi i64 [ %indvars.iv.next548, %bb.v ], [ 0, %.preheader482 ] ; 2 uses
  %.1324496 = phi ptr [ %.2325.ph, %bb.v ], [ %.0323500, %.preheader482 ] ; 3 uses
  %i.gz = load ptr, ptr %i.ga, align 8, !tbaa !46
  %i.ha = getelementptr inbounds nuw [576 x i8], ptr %i.gz, i64 %indvars.iv547 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 448
  %i.hc = load ptr, ptr %i.hb, align 32, !tbaa !56 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !112
  %i.hf = srem i32 %.0343499, %i.he
  %.not371 = icmp eq i32 %i.hf, 0
  br i1 %.not371, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.lr.ph497
  %i.hg = load ptr, ptr %i.gb, align 8, !tbaa !44
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 408 ; 4 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !113 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 400 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 16, !tbaa !114
  %i.hl = icmp eq i64 %i.hi, %i.hk
  br i1 %i.hl, label %bb.r, label %._crit_edge.i401

._crit_edge.i401:                                 ; preds = %bb.q
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ha, i64 392
  %.pre.i402 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !115
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hm = load ptr, ptr %i.gc, align 8, !tbaa !43
  %i.hn = icmp eq i64 %i.hi, 0
  %i.ho = mul i64 %i.hi, 3
  %i.hp = lshr i64 %i.ho, 1
  %i.hq = select i1 %i.hn, i64 16, i64 %i.hp      ; 2 uses
  %i.hr = shl i64 %i.hq, 3
  %i.hs = tail call ptr %i.hm(i64 noundef %i.hr) #21, !inline_history !116 ; 4 uses
  %.not.i403 = icmp eq ptr %i.hs, null
  br i1 %.not.i403, label %DwaCompressor_writeRelevantChannelRules.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ha, i64 392 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !115 ; 2 uses
  %.not26.i = icmp eq ptr %i.hu, null
  br i1 %.not26.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hv = load i64, ptr %i.hh, align 8, !tbaa !113
  %i.hw = shl i64 %i.hv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr nonnull align 8 %i.hu, i64 %i.hw, i1 false)
  %i.hx = load ptr, ptr %i.ht, align 8, !tbaa !115
  tail call void %i.hg(ptr noundef %i.hx) #21, !inline_history !116
  br label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !115
  store i64 %i.hq, ptr %i.hj, align 16, !tbaa !114
  %.pre27.i = load i64, ptr %i.hh, align 8, !tbaa !113
  %.pre.pre = load i32, ptr %i.db, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i401, %.thread.i
  %.pre = phi i32 [ %.pre571, %._crit_edge.i401 ], [ %.pre.pre, %.thread.i ] ; 2 uses
  %i.hy = phi i64 [ %i.hi, %._crit_edge.i401 ], [ %.pre27.i, %.thread.i ] ; 2 uses
  %i.hz = phi ptr [ %.pre.i402, %._crit_edge.i401 ], [ %i.hs, %.thread.i ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hy
  store ptr %.1324496, ptr %i.ia, align 8, !tbaa !97
  %i.ib = add i64 %i.hy, 1
  store i64 %i.ib, ptr %i.hh, align 8, !tbaa !113
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !98
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hc, i64 25
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !100
  %i.ig = sext i8 %i.if to i32
  %i.ih = mul nsw i32 %i.id, %i.ig
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %.1324496, i64 %i.ii
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph497
  %.pre572 = phi i32 [ %.pre571, %.lr.ph497 ], [ %.pre, %bb.u ] ; 2 uses
  %i.ik = phi i32 [ %i.gy, %.lr.ph497 ], [ %.pre, %bb.u ] ; 4 uses
  %.2325.ph = phi ptr [ %.1324496, %.lr.ph497 ], [ %i.ij, %bb.u ] ; 2 uses
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %i.il = sext i32 %i.ik to i64
  %.not373 = icmp slt i64 %indvars.iv.next548, %i.il
  br i1 %.not373, label %.lr.ph497, label %DctCoderChannelData_push_row.exit.loopexit, !llvm.loop !117

DctCoderChannelData_push_row.exit.loopexit:       ; preds = %bb.v
  %.pre559 = load i32, ptr %i.fy, align 4, !tbaa !51
  br label %DctCoderChannelData_push_row.exit

DctCoderChannelData_push_row.exit:                ; preds = %DctCoderChannelData_push_row.exit.loopexit, %.preheader482
  %.pre570 = phi i32 [ %.pre569, %.preheader482 ], [ %.pre572, %DctCoderChannelData_push_row.exit.loopexit ]
  %i.im = phi i32 [ %i.gv, %.preheader482 ], [ %.pre559, %DctCoderChannelData_push_row.exit.loopexit ] ; 2 uses
  %i.in = phi i32 [ %i.gw, %.preheader482 ], [ %i.ik, %DctCoderChannelData_push_row.exit.loopexit ]
  %i.io = phi i32 [ %i.gx, %.preheader482 ], [ %i.ik, %DctCoderChannelData_push_row.exit.loopexit ]
  %.1324.lcssa = phi ptr [ %.0323500, %.preheader482 ], [ %.2325.ph, %DctCoderChannelData_push_row.exit.loopexit ]
  %i.ip = add nsw i32 %.0343499, 1
  %.not370.not = icmp slt i32 %.0343499, %i.im
  br i1 %.not370.not, label %.preheader482, label %.preheader480, !llvm.loop !118

.preheader480:                                    ; preds = %DctCoderChannelData_push_row.exit, %DwaCompressor_setupChannelData.exit.thread, %._crit_edge.thread
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !119
  %.not375503 = icmp sgt i32 %i.ir, 0
  br i1 %.not375503, label %.lr.ph507, label %.preheader479

.lr.ph507:                                        ; preds = %.preheader480
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
  %.pre560 = load ptr, ptr %i.iu, align 8, !tbaa !46
  br label %bb.w

.preheader479:                                    ; preds = %bb.x, %.preheader480
  %.1305.lcssa = phi ptr [ %i.cs, %.preheader480 ], [ %i.la, %bb.x ]
  %.1299.lcssa = phi ptr [ %i.cq, %.preheader480 ], [ %i.lc, %bb.x ]
  %i.jc = load i32, ptr %i.db, align 8, !tbaa !47 ; 2 uses
  %.not379526 = icmp sgt i32 %i.jc, 0
  br i1 %.not379526, label %.lr.ph531, label %._crit_edge532

.lr.ph531:                                        ; preds = %.preheader479
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph507, %bb.x
  %i.jk = phi ptr [ %.pre560, %.lr.ph507 ], [ %i.kn, %bb.x ] ; 3 uses
  %indvars.iv550 = phi i64 [ 0, %.lr.ph507 ], [ %indvars.iv.next551, %bb.x ] ; 2 uses
  %.1299506 = phi ptr [ %i.cq, %.lr.ph507 ], [ %i.lc, %bb.x ] ; 2 uses
  %.1305505 = phi ptr [ %i.cs, %.lr.ph507 ], [ %i.la, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.jl = load ptr, ptr %i.is, align 8, !tbaa !120
  %i.jm = getelementptr inbounds nuw [12 x i8], ptr %i.jl, i64 %indvars.iv550 ; 4 uses
  %i.jn = load float, ptr %i.it, align 4, !tbaa !121
  %i.jo = fdiv float %i.jn, 1.000000e+05
  %i.jp = load i32, ptr %i.jm, align 4, !tbaa !51
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [576 x i8], ptr %i.jk, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 4 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !51
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [576 x i8], ptr %i.jk, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !51
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [576 x i8], ptr %i.jk, i64 %i.jy
  %i.ka = load ptr, ptr @exrcore_dwaToNonLinearTable, align 8, !tbaa !122
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jr, i64 448
  %i.kc = load ptr, ptr %i.kb, align 32, !tbaa !56 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !98
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !99
  call fastcc void @LossyDctEncoder_base_construct(ptr noundef nonnull %1, float noundef %i.jo, ptr noundef %.1299506, ptr noundef %.1305505, ptr noundef %i.ka, i32 noundef %i.ke, i32 noundef %i.kg)
  store ptr %i.jr, ptr %i.iv, align 8, !tbaa !123
  store ptr %i.jv, ptr %i.iw, align 8, !tbaa !123
  store ptr %i.jz, ptr %i.ix, align 8, !tbaa !123
  store i32 3, ptr %i.iy, align 8, !tbaa !125
  %i.kh = load ptr, ptr %i.iz, align 8, !tbaa !43
  %i.ki = load ptr, ptr %i.ja, align 8, !tbaa !44
  %i.kj = call fastcc i32 @LossyDctEncoder_execute(ptr noundef %i.kh, ptr noundef %i.ki, ptr noundef %1)
  %i.kk = load <2 x i64>, ptr %i.ac, align 8, !tbaa !78
  %i.kl = load <2 x i64>, ptr %i.jb, align 8, !tbaa !78 ; 3 uses
  %i.km = add <2 x i64> %i.kl, %i.kk
  store <2 x i64> %i.km, ptr %i.ac, align 8, !tbaa !78
  %i.kn = load ptr, ptr %i.iu, align 8, !tbaa !46 ; 4 uses
  %i.ko = load i32, ptr %i.jm, align 4, !tbaa !51
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [576 x i8], ptr %i.kn, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 544
  store i32 1, ptr %i.kr, align 32, !tbaa !108
  %i.ks = load i32, ptr %i.js, align 4, !tbaa !51
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [576 x i8], ptr %i.kn, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 544
  store i32 1, ptr %i.kv, align 32, !tbaa !108
  %i.kw = load i32, ptr %i.jw, align 4, !tbaa !51
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [576 x i8], ptr %i.kn, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 544
  store i32 1, ptr %i.kz, align 32, !tbaa !108
  %.not374 = icmp eq i32 %i.kj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.not374, label %bb.x, label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.x:                                             ; preds = %bb.w
  %3 = extractelement <2 x i64> %i.kl, i64 1
  %4 = shl i64 %3, 1
  %i.la = getelementptr inbounds nuw i8, ptr %.1305505, i64 %4 ; 2 uses
  %i.lb = extractelement <2 x i64> %i.kl, i64 0
  %5 = shl i64 %i.lb, 1
  %i.lc = getelementptr inbounds nuw i8, ptr %.1299506, i64 %5 ; 2 uses
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %i.ld = load i32, ptr %i.iq, align 4, !tbaa !119
  %i.le = sext i32 %i.ld to i64
  %.not375 = icmp slt i64 %indvars.iv.next551, %i.le
  br i1 %.not375, label %bb.w, label %.preheader479, !llvm.loop !127

bb.y:                                             ; preds = %.lr.ph531, %bb.ae
  %i.lf = phi i32 [ %i.jc, %.lr.ph531 ], [ %i.pb, %bb.ae ]
  %indvars.iv556 = phi i64 [ 0, %.lr.ph531 ], [ %indvars.iv.next557, %bb.ae ] ; 2 uses
  %.3301529 = phi ptr [ %.1299.lcssa, %.lr.ph531 ], [ %.5303, %bb.ae ] ; 7 uses
  %.3307528 = phi ptr [ %.1305.lcssa, %.lr.ph531 ], [ %.5309, %bb.ae ] ; 7 uses
  %i.lg = load ptr, ptr %i.jd, align 8, !tbaa !46
  %i.lh = getelementptr inbounds nuw [576 x i8], ptr %i.lg, i64 %indvars.iv556 ; 11 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 448
  %i.lj = load ptr, ptr %i.li, align 32, !tbaa !56 ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 544 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 32, !tbaa !108
  %.not376 = icmp eq i32 %i.ll, 0
  br i1 %.not376, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 548
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !61
  switch i32 %i.ln, label %DwaCompressor_writeRelevantChannelRules.exit.thread [
    i32 1, label %bb.ab
    i32 2, label %.preheader478
    i32 0, label %bb.ac
  ]

.preheader478:                                    ; preds = %bb.z
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 408 ; 3 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !113
  %.not535 = icmp eq i64 %i.lp, 0
  br i1 %.not535, label %.loopexit, label %.lr.ph525

.lr.ph525:                                        ; preds = %.preheader478
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 392
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 12 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 25 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 504
  %i.lu = load i32, ptr %i.lr, align 4, !tbaa !98 ; 4 uses
  %i.lv = icmp sgt i32 %i.lu, 0
  br i1 %i.lv, label %.lr.ph525.split.preheader, label %.lr.ph525.split.us

.lr.ph525.split.preheader:                        ; preds = %.lr.ph525
  %.pre565.pre = load i8, ptr %i.ls, align 1, !tbaa !100
  br label %.lr.ph525.split

.lr.ph525.split.us:                               ; preds = %.lr.ph525
  %i.lw = sext i32 %i.lu to i64
  %i.lx = load i8, ptr %i.ls, align 1, !tbaa !100
  %i.ly = sext i8 %i.lx to i64
  %i.lz = mul nsw i64 %i.ly, %i.lw
  %.pre562 = load i64, ptr %i.ab, align 8, !tbaa !78
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph525.split.us
  %i.ma = phi i64 [ %.pre562, %.lr.ph525.split.us ], [ %i.mb, %bb.aa ]
  %.0314524.us = phi i64 [ 0, %.lr.ph525.split.us ], [ %i.mc, %bb.aa ]
  %i.mb = add i64 %i.lz, %i.ma                    ; 2 uses
  store i64 %i.mb, ptr %i.ab, align 8, !tbaa !78
  %i.mc = add nuw i64 %.0314524.us, 1             ; 2 uses
  %i.md = load i64, ptr %i.lo, align 8, !tbaa !113
  %i.me = icmp ult i64 %i.mc, %i.md
  br i1 %i.me, label %bb.aa, label %.loopexit, !llvm.loop !128

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.mg = load i8, ptr %i.mf, align 8, !tbaa !129
  %.not377 = icmp eq i8 %i.mg, 0
  %i.mh = load ptr, ptr @exrcore_dwaToNonLinearTable, align 8
  %spec.select392 = select i1 %.not377, ptr %i.mh, ptr null
  %i.mi = load float, ptr %i.je, align 4, !tbaa !121
  %i.mj = fdiv float %i.mi, 1.000000e+05
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !98
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !99
  call fastcc void @LossyDctEncoder_base_construct(ptr noundef nonnull %2, float noundef %i.mj, ptr noundef %.3301529, ptr noundef %.3307528, ptr noundef %spec.select392, i32 noundef %i.ml, i32 noundef %i.mn)
  store ptr %i.lh, ptr %i.jf, align 8, !tbaa !123
  store i32 1, ptr %i.jg, align 8, !tbaa !125
  %i.mo = load ptr, ptr %i.jh, align 8, !tbaa !43
  %i.mp = load ptr, ptr %i.ji, align 8, !tbaa !44
  %i.mq = call fastcc i32 @LossyDctEncoder_execute(ptr noundef %i.mo, ptr noundef %i.mp, ptr noundef %2)
  %i.mr = load <2 x i64>, ptr %i.ac, align 8, !tbaa !78
  %i.ms = load <2 x i64>, ptr %i.jj, align 8, !tbaa !78 ; 3 uses
  %i.mt = add <2 x i64> %i.ms, %i.mr
  store <2 x i64> %i.mt, ptr %i.ac, align 8, !tbaa !78
  %6 = extractelement <2 x i64> %i.ms, i64 0
  %7 = shl i64 %6, 1
  %i.mu = getelementptr inbounds nuw i8, ptr %.3301529, i64 %7
  %i.mv = extractelement <2 x i64> %i.ms, i64 1
  %8 = shl i64 %i.mv, 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.3307528, i64 %8
  %.not378 = icmp eq i32 %i.mq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.not378, label %.loopexit, label %DwaCompressor_writeRelevantChannelRules.exit.thread

.lr.ph525.split:                                  ; preds = %.lr.ph525.split.preheader, %._crit_edge522
  %.pre565 = phi i8 [ %.pre565574, %._crit_edge522 ], [ %.pre565.pre, %.lr.ph525.split.preheader ] ; 4 uses
  %i.mx = phi i32 [ %i.nh, %._crit_edge522 ], [ %i.lu, %.lr.ph525.split.preheader ] ; 2 uses
  %i.my = phi i32 [ %i.ni, %._crit_edge522 ], [ %i.lu, %.lr.ph525.split.preheader ] ; 2 uses
  %.0314524 = phi i64 [ %i.no, %._crit_edge522 ], [ 0, %.lr.ph525.split.preheader ] ; 2 uses
  %i.mz = icmp sgt i32 %i.my, 0
  br i1 %i.mz, label %.preheader.preheader, label %._crit_edge522

.preheader.preheader:                             ; preds = %.lr.ph525.split
  %i.na = load ptr, ptr %i.lq, align 8, !tbaa !115
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %.0314524
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !97
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge518
  %.pre565576 = phi i8 [ %.pre565575, %._crit_edge518 ], [ %.pre565, %.preheader.preheader ]
  %i.nd = phi i32 [ %i.nr, %._crit_edge518 ], [ %i.mx, %.preheader.preheader ]
  %i.ne = phi i8 [ %i.ns, %._crit_edge518 ], [ %.pre565, %.preheader.preheader ] ; 2 uses
  %.0311521 = phi i32 [ %i.nt, %._crit_edge518 ], [ 0, %.preheader.preheader ]
  %.0312520 = phi ptr [ %.1313.lcssa, %._crit_edge518 ], [ %i.nc, %.preheader.preheader ] ; 2 uses
  %i.nf = icmp sgt i8 %i.ne, 0
  br i1 %i.nf, label %.lr.ph517, label %._crit_edge518

._crit_edge522:                                   ; preds = %._crit_edge518, %.lr.ph525.split
  %.pre565574 = phi i8 [ %.pre565, %.lr.ph525.split ], [ %.pre565575, %._crit_edge518 ]
  %i.ng = phi i8 [ %.pre565, %.lr.ph525.split ], [ %i.ns, %._crit_edge518 ]
  %i.nh = phi i32 [ %i.mx, %.lr.ph525.split ], [ %i.nr, %._crit_edge518 ]
  %i.ni = phi i32 [ %i.my, %.lr.ph525.split ], [ %i.nr, %._crit_edge518 ] ; 2 uses
  %i.nj = sext i32 %i.ni to i64
  %i.nk = sext i8 %i.ng to i64
  %i.nl = mul nsw i64 %i.nk, %i.nj
  %i.nm = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.nn = add i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %i.ab, align 8, !tbaa !78
  %i.no = add nuw i64 %.0314524, 1                ; 2 uses
  %i.np = load i64, ptr %i.lo, align 8, !tbaa !113
  %i.nq = icmp ult i64 %i.no, %i.np
  br i1 %i.nq, label %.lr.ph525.split, label %.loopexit, !llvm.loop !130

._crit_edge518.loopexit:                          ; preds = %.lr.ph517
  %.pre564 = load i32, ptr %i.lr, align 4, !tbaa !98
  br label %._crit_edge518

._crit_edge518:                                   ; preds = %._crit_edge518.loopexit, %.preheader
  %.pre565575 = phi i8 [ %.pre565576, %.preheader ], [ %i.oa, %._crit_edge518.loopexit ] ; 2 uses
  %i.nr = phi i32 [ %i.nd, %.preheader ], [ %.pre564, %._crit_edge518.loopexit ] ; 4 uses
  %i.ns = phi i8 [ %i.ne, %.preheader ], [ %i.oa, %._crit_edge518.loopexit ] ; 2 uses
  %.1313.lcssa = phi ptr [ %.0312520, %.preheader ], [ %i.nv, %._crit_edge518.loopexit ]
  %i.nt = add nuw nsw i32 %.0311521, 1            ; 2 uses
  %i.nu = icmp slt i32 %i.nt, %i.nr
  br i1 %i.nu, label %.preheader, label %._crit_edge522, !llvm.loop !131

.lr.ph517:                                        ; preds = %.preheader, %.lr.ph517
  %indvars.iv553 = phi i64 [ %indvars.iv.next554, %.lr.ph517 ], [ 0, %.preheader ] ; 2 uses
  %.1313515 = phi ptr [ %i.nv, %.lr.ph517 ], [ %.0312520, %.preheader ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.1313515, i64 1 ; 2 uses
  %i.nw = load i8, ptr %.1313515, align 1, !tbaa !90
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %indvars.iv553 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !97 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  store ptr %i.nz, ptr %i.nx, align 8, !tbaa !97
  store i8 %i.nw, ptr %i.ny, align 1, !tbaa !90
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.oa = load i8, ptr %i.ls, align 1, !tbaa !100 ; 3 uses
  %i.ob = sext i8 %i.oa to i64
  %i.oc = icmp slt i64 %indvars.iv.next554, %i.ob
  br i1 %i.oc, label %.lr.ph517, label %._crit_edge518.loopexit, !llvm.loop !132

bb.ac:                                            ; preds = %bb.z
  %i.od = getelementptr inbounds nuw i8, ptr %i.lj, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !98
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.lj, i64 25
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !100
  %i.oi = sext i8 %i.oh to i64
  %i.oj = mul nsw i64 %i.oi, %i.of                ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lh, i64 408 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !113
  %.not534 = icmp eq i64 %i.ol, 0
  br i1 %.not534, label %._crit_edge514, label %.lr.ph513

.lr.ph513:                                        ; preds = %bb.ac
  %i.om = getelementptr inbounds nuw i8, ptr %i.lh, i64 464 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.lh, i64 392
  %.pre561 = load ptr, ptr %i.om, align 16, !tbaa !103
  br label %bb.ad

._crit_edge514:                                   ; preds = %bb.ad, %bb.ac
  %i.oo = getelementptr inbounds nuw i8, ptr %i.lh, i64 536
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !101
  %i.oq = load i64, ptr %i.v, align 8, !tbaa !78
  %i.or = add i64 %i.oq, %i.op
  store i64 %i.or, ptr %i.v, align 8, !tbaa !78
  br label %.loopexit

bb.ad:                                            ; preds = %.lr.ph513, %bb.ad
  %i.os = phi ptr [ %.pre561, %.lr.ph513 ], [ %i.ox, %bb.ad ]
  %.0297511 = phi i64 [ 0, %.lr.ph513 ], [ %i.oy, %bb.ad ] ; 2 uses
  %i.ot = load ptr, ptr %i.on, align 8, !tbaa !115
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %.0297511
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !97
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr align 1 %i.ov, i64 %i.oj, i1 false)
  %i.ow = load ptr, ptr %i.om, align 16, !tbaa !103
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.oj ; 2 uses
  store ptr %i.ox, ptr %i.om, align 16, !tbaa !103
  %i.oy = add nuw i64 %.0297511, 1                ; 2 uses
  %i.oz = load i64, ptr %i.ok, align 8, !tbaa !113
  %i.pa = icmp ult i64 %i.oy, %i.oz
  br i1 %i.pa, label %bb.ad, label %._crit_edge514, !llvm.loop !133

.loopexit:                                        ; preds = %bb.aa, %._crit_edge522, %.preheader478, %bb.ab, %._crit_edge514
  %.4308 = phi ptr [ %i.mw, %bb.ab ], [ %.3307528, %._crit_edge514 ], [ %.3307528, %._crit_edge522 ], [ %.3307528, %.preheader478 ], [ %.3307528, %bb.aa ]
  %.4302 = phi ptr [ %i.mu, %bb.ab ], [ %.3301529, %._crit_edge514 ], [ %.3301529, %._crit_edge522 ], [ %.3301529, %.preheader478 ], [ %.3301529, %bb.aa ]
  store i32 1, ptr %i.lk, align 32, !tbaa !108
  %.pre566 = load i32, ptr %i.db, align 8, !tbaa !47
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.y
  %i.pb = phi i32 [ %.pre566, %.loopexit ], [ %i.lf, %bb.y ] ; 2 uses
  %.5309 = phi ptr [ %.4308, %.loopexit ], [ %.3307528, %bb.y ]
  %.5303 = phi ptr [ %.4302, %.loopexit ], [ %.3301529, %bb.y ]
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %i.pc = sext i32 %i.pb to i64
  %.not379 = icmp slt i64 %indvars.iv.next557, %i.pc
  br i1 %.not379, label %bb.y, label %._crit_edge532, !llvm.loop !134

._crit_edge532:                                   ; preds = %bb.ae, %.preheader479
  %i.pd = load i64, ptr %i.v, align 8, !tbaa !78  ; 3 uses
  %.not380 = icmp eq i64 %i.pd, 0
  br i1 %.not380, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.pe = load ptr, ptr %0, align 8, !tbaa !29
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !31
  %i.ph = load ptr, ptr %i.cw, align 8, !tbaa !97
  %i.pi = tail call i64 @exr_compress_max_buffer_size(i64 noundef %i.pd) #21
  %i.pj = call i32 @exr_compress_buffer(ptr noundef %i.pg, i32 noundef 9, ptr noundef %i.ph, i64 noundef %i.pd, ptr noundef %.0.lcssa.i424, i64 noundef %i.pi, ptr noundef nonnull %i.c) #21 ; 2 uses
  %.not381 = icmp eq i32 %i.pj, 0
  br i1 %.not381, label %.thread457, label %bb.ag

.thread457:                                       ; preds = %bb.af
  %i.pk = load i64, ptr %i.c, align 8, !tbaa !78  ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i424, i64 %i.pk
  store i64 %i.pk, ptr %i.w, align 8, !tbaa !78
  %i.pm = add i64 %i.pk, %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %DwaCompressor_writeRelevantChannelRules.exit.thread

bb.ah:                                            ; preds = %.thread457, %._crit_edge532
  %.1414 = phi i64 [ %i.cl, %._crit_edge532 ], [ %i.pm, %.thread457 ] ; 2 uses
  %.1316 = phi ptr [ %.0.lcssa.i424, %._crit_edge532 ], [ %i.pl, %.thread457 ] ; 5 uses
  %i.pn = load i64, ptr %i.ac, align 8, !tbaa !78 ; 3 uses
  %.not382 = icmp eq i64 %i.pn, 0
  br i1 %.not382, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.po = load i32, ptr %i.ct, align 8, !tbaa !20
  switch i32 %i.po, label %DwaCompressor_writeRelevantChannelRules.exit.thread [
    i32 0, label %bb.aj
    i32 1, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.pp = load i64, ptr %i.b, align 8, !tbaa !78
  %i.pq = ptrtoint ptr %.1316 to i64
  %i.pr = ptrtoint ptr %i.s to i64
  %.neg = sub i64 %i.pr, %i.pq
  %i.ps = add i64 %.neg, %i.pp
  %i.pt = load ptr, ptr %i.cp, align 8, !tbaa !95
  %i.pu = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 192
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !135
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 200
  %i.py = load i64, ptr %i.px, align 8, !tbaa !136
  %i.pz = call i32 @internal_huf_compress(ptr noundef nonnull %i.x, ptr noundef %.1316, i64 noundef %i.ps, ptr noundef %i.pt, i64 noundef %i.pn, ptr noundef %i.pw, i64 noundef %i.py) #21 ; 2 uses
  switch i32 %i.pz, label %DwaCompressor_writeRelevantChannelRules.exit.thread [
    i32 0, label %._crit_edge567
    i32 4, label %bb.ak
  ]

._crit_edge567:                                   ; preds = %bb.aj
  %.pre568 = load i64, ptr %i.x, align 8, !tbaa !78
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.qa = load ptr, ptr %0, align 8, !tbaa !29    ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 168
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !82
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 104
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !110
end_hunk_0
begin_hunk_1_@LossyDctEncoder_execute:bb.a
  store i16 %.0.i.i.us, ptr %i.eg, align 2, !tbaa !94
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %._crit_edge186.us, label %bb.e, !llvm.loop !219

._crit_edge186.us:                                ; preds = %float_to_half.exit.us
  store ptr %.2188.us, ptr %i.ck, align 8, !tbaa !97
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.2188.us, i64 %i.ci ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit, label %.lr.ph185.us, !llvm.loop !220

.lr.ph190.split:                                  ; preds = %.lr.ph190.split, %.lr.ph190.split.preheader.new
  %indvars.iv242 = phi i64 [ 0, %.lr.ph190.split.preheader.new ], [ %indvars.iv.next243.7, %.lr.ph190.split ] ; 9 uses
  %.2188 = phi ptr [ %.1132192, %.lr.ph190.split.preheader.new ], [ %i.fe, %.lr.ph190.split ] ; 2 uses
  %niter413 = phi i64 [ 0, %.lr.ph190.split.preheader.new ], [ %niter413.next.7, %.lr.ph190.split ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  store ptr %.2188, ptr %i.ei, align 8, !tbaa !97
  %i.ej = getelementptr inbounds [2 x i8], ptr %.2188, i64 %i.ci ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !97
  %i.em = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.ci ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !97
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.em, i64 %i.ci ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !97
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ep, i64 %i.ci ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !97
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.ci ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store ptr %i.ev, ptr %i.ex, align 8, !tbaa !97
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.ci ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !97
  %i.fb = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.ci ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !97
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.fb, i64 %i.ci ; 3 uses
  %indvars.iv.next243.7 = add nuw nsw i64 %indvars.iv242, 8 ; 2 uses
  %niter413.next.7 = add i64 %niter413, 8         ; 2 uses
  %niter413.ncmp.7 = icmp eq i64 %niter413.next.7, %unroll_iter412
  br i1 %niter413.ncmp.7, label %.loopexit.loopexit403.unr-lcssa, label %.lr.ph190.split, !llvm.loop !220

.loopexit.loopexit403.unr-lcssa:                  ; preds = %.lr.ph190.split
  %lcmp.mod409.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod409.not, label %.loopexit, label %.lr.ph190.split.epil.preheader

.lr.ph190.split.epil.preheader:                   ; preds = %.loopexit.loopexit403.unr-lcssa, %.lr.ph190.split.preheader
  %indvars.iv242.epil.init = phi i64 [ 0, %.lr.ph190.split.preheader ], [ %indvars.iv.next243.7, %.loopexit.loopexit403.unr-lcssa ]
  %.2188.epil.init = phi ptr [ %.1132192, %.lr.ph190.split.preheader ], [ %i.fe, %.loopexit.loopexit403.unr-lcssa ]
  %lcmp.mod411 = icmp ne i64 %xtraiter407, 0
  tail call void @llvm.assume(i1 %lcmp.mod411)
  br label %.lr.ph190.split.epil

.lr.ph190.split.epil:                             ; preds = %.lr.ph190.split.epil, %.lr.ph190.split.epil.preheader
  %indvars.iv242.epil = phi i64 [ %indvars.iv.next243.epil, %.lr.ph190.split.epil ], [ %indvars.iv242.epil.init, %.lr.ph190.split.epil.preheader ] ; 2 uses
  %.2188.epil = phi ptr [ %i.fg, %.lr.ph190.split.epil ], [ %.2188.epil.init, %.lr.ph190.split.epil.preheader ] ; 2 uses
  %epil.iter408 = phi i64 [ %epil.iter408.next, %.lr.ph190.split.epil ], [ 0, %.lr.ph190.split.epil.preheader ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242.epil
  store ptr %.2188.epil, ptr %i.ff, align 8, !tbaa !97
  %i.fg = getelementptr inbounds [2 x i8], ptr %.2188.epil, i64 %i.ci ; 2 uses
  %indvars.iv.next243.epil = add nuw nsw i64 %indvars.iv242.epil, 1
  %epil.iter408.next = add i64 %epil.iter408, 1   ; 2 uses
  %epil.iter408.cmp.not = icmp eq i64 %epil.iter408.next, %xtraiter407
  br i1 %epil.iter408.cmp.not, label %.loopexit, label %.lr.ph190.split.epil, !llvm.loop !221

.loopexit:                                        ; preds = %.loopexit.loopexit403.unr-lcssa, %.lr.ph190.split.epil, %._crit_edge186.us, %.preheader164, %.lr.ph195
  %.3 = phi ptr [ %.1132192, %.lr.ph195 ], [ %.1132192, %.preheader164 ], [ %i.eh, %._crit_edge186.us ], [ %i.fe, %.loopexit.loopexit403.unr-lcssa ], [ %i.fg, %.lr.ph190.split.epil ]
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge196, label %.lr.ph195, !llvm.loop !222

.preheader163.loopexit.unr-lcssa:                 ; preds = %bb.t
  %lcmp.mod417.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod417.not, label %.preheader163, label %.epil.preheader414

.epil.preheader414:                               ; preds = %.preheader163.loopexit.unr-lcssa, %.lr.ph199
  %indvars.iv262.epil.init = phi i64 [ 1, %.lr.ph199 ], [ %indvars.iv.next263.3, %.preheader163.loopexit.unr-lcssa ]
  %lcmp.mod418 = icmp ne i64 %xtraiter415, 0
  tail call void @llvm.assume(i1 %lcmp.mod418)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader414
  %indvars.iv262.epil = phi i64 [ %indvars.iv262.epil.init, %.epil.preheader414 ], [ %indvars.iv.next263.epil, %bb.s ] ; 2 uses
  %epil.iter416 = phi i64 [ 0, %.epil.preheader414 ], [ %epil.iter416.next, %bb.s ]
  %i.fh = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262.epil ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !123
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 384
  %i.fl = load ptr, ptr %i.fk, align 32, !tbaa !216
  %i.fm = getelementptr inbounds [2 x i8], ptr %i.fl, i64 %i.bv
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !123
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 384
  store ptr %i.fm, ptr %i.fo, align 32, !tbaa !216
  %indvars.iv.next263.epil = add nuw nsw i64 %indvars.iv262.epil, 1
  %epil.iter416.next = add i64 %epil.iter416, 1   ; 2 uses
  %epil.iter416.cmp.not = icmp eq i64 %epil.iter416.next, %xtraiter415
  br i1 %epil.iter416.cmp.not, label %.preheader163, label %bb.s, !llvm.loop !223

.preheader163:                                    ; preds = %.preheader163.loopexit.unr-lcssa, %bb.s, %._crit_edge196.thread, %._crit_edge196
  %i.fp = phi ptr [ %i.x, %._crit_edge196.thread ], [ %i.bs, %._crit_edge196 ], [ %i.bs, %bb.s ], [ %i.bs, %.preheader163.loopexit.unr-lcssa ] ; 5 uses
  %.0131378381 = phi ptr [ null, %._crit_edge196.thread ], [ %.0131.ph, %._crit_edge196 ], [ %.0131.ph, %bb.s ], [ %.0131.ph, %.preheader163.loopexit.unr-lcssa ] ; 2 uses
  %i.fq = icmp sgt i32 %i.p, 0
  br i1 %i.fq, label %.preheader162.lr.ph, label %._crit_edge220.split

.preheader162.lr.ph:                              ; preds = %.preheader163
  %i.fr = icmp sgt i32 %i.j, 0
  %i.fs = icmp eq i32 %i.d, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 720
  br i1 %i.fr, label %.preheader162.preheader, label %._crit_edge220.split

.preheader162.preheader:                          ; preds = %.preheader162.lr.ph
  %wide.trip.count306 = zext nneg i32 %i.p to i64
  %wide.trip.count301 = zext nneg i32 %i.j to i64
  %wide.trip.count278 = zext nneg i32 %i.d to i64
  %wide.trip.count291 = zext nneg i32 %i.d to i64
  %wide.trip.count296 = zext nneg i32 %i.d to i64
  %scevgep = getelementptr i8, ptr %i.fp, i64 256 ; 2 uses
  br label %.preheader162

bb.t:                                             ; preds = %bb.t, %.lr.ph199.new
  %indvars.iv262 = phi i64 [ 1, %.lr.ph199.new ], [ %indvars.iv.next263.3, %bb.t ] ; 5 uses
  %niter420 = phi i64 [ 0, %.lr.ph199.new ], [ %niter420.next.3, %bb.t ]
  %i.fz = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !123
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 384
  %i.gd = load ptr, ptr %i.gc, align 32, !tbaa !216
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.bv ; 2 uses
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !123
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 384
  store ptr %i.ge, ptr %i.gg, align 32, !tbaa !216
  %i.gh = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gi = getelementptr i8, ptr %i.gh, i64 8
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.bv ; 2 uses
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !123
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 384
  store ptr %i.gj, ptr %i.gl, align 32, !tbaa !216
  %i.gm = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  %i.go = getelementptr inbounds [2 x i8], ptr %i.gj, i64 %i.bv ; 2 uses
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !123
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 384
  store ptr %i.go, ptr %i.gq, align 32, !tbaa !216
  %i.gr = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gs = getelementptr i8, ptr %i.gr, i64 24
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.go, i64 %i.bv
  %i.gu = load ptr, ptr %i.gs, align 8, !tbaa !123
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 384
  store ptr %i.gt, ptr %i.gv, align 32, !tbaa !216
  %indvars.iv.next263.3 = add nuw nsw i64 %indvars.iv262, 4 ; 2 uses
  %niter420.next.3 = add i64 %niter420, 4         ; 2 uses
  %niter420.ncmp.3 = icmp eq i64 %niter420.next.3, %unroll_iter419
  br i1 %niter420.ncmp.3, label %.preheader163.loopexit.unr-lcssa, label %bb.t, !llvm.loop !224

.preheader162:                                    ; preds = %.preheader162.preheader, %._crit_edge216
  %indvars.iv303 = phi i64 [ 0, %.preheader162.preheader ], [ %indvars.iv.next304, %._crit_edge216 ] ; 2 uses
  %.0157218 = phi ptr [ %i.r, %.preheader162.preheader ], [ %.2159.lcssa, %._crit_edge216 ]
  %i.gw = load ptr, ptr %i.ft, align 8            ; 5 uses
  %i.gx = load ptr, ptr %i.fu, align 16           ; 5 uses
  %i.gy = shl i64 %indvars.iv303, 3               ; 2 uses
  %scevgep390 = getelementptr i8, ptr %i.gw, i64 256 ; 2 uses
  %scevgep391 = getelementptr i8, ptr %i.gx, i64 256 ; 2 uses
  %bound0 = icmp ult ptr %i.fp, %scevgep390
  %bound1 = icmp ult ptr %i.gw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0392 = icmp ult ptr %i.fp, %scevgep391
  %bound1393 = icmp ult ptr %i.gx, %scevgep
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx = or i1 %found.conflict, %found.conflict394
  %bound0395 = icmp ult ptr %i.gw, %scevgep391
  %bound1396 = icmp ult ptr %i.gx, %scevgep390
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx, %found.conflict397
  br label %.preheader161

._crit_edge220.split:                             ; preds = %._crit_edge216, %.preheader162.lr.ph, %.preheader163
  %.not147 = icmp eq ptr %.0131378381, null
  br i1 %.not147, label %bb.fj, label %bb.fi

.preheader161:                                    ; preds = %.preheader162, %._crit_edge212
  %indvars.iv298 = phi i64 [ 0, %.preheader162 ], [ %indvars.iv.next299, %._crit_edge212 ] ; 2 uses
  %.1158214 = phi ptr [ %.0157218, %.preheader162 ], [ %.2159.lcssa, %._crit_edge212 ] ; 2 uses
  br i1 %i.u, label %.preheader160.lr.ph, label %._crit_edge212

.preheader160.lr.ph:                              ; preds = %.preheader161
  %i.gz = shl nuw nsw i64 %indvars.iv298, 3       ; 9 uses
  %i.ha = load i32, ptr %i.e, align 4, !tbaa !212 ; 10 uses
  %reass.add = shl i32 %i.ha, 1                   ; 8 uses
  %i.hb = add nsw i32 %i.ha, -1                   ; 8 uses
  %i.hc = load i32, ptr %i.k, align 8, !tbaa !213 ; 4 uses
  %reass.add150 = shl i32 %i.hc, 1                ; 2 uses
  %i.hd = add nsw i32 %i.hc, -1                   ; 2 uses
  %i.he = load ptr, ptr %2, align 8, !tbaa !225   ; 9 uses
  %.not151 = icmp eq ptr %i.he, null
  %i.hf = trunc nsw i64 %i.gz to i32              ; 2 uses
  %i.hg = sext i32 %i.ha to i64
  %.not148.us.us.us = icmp slt i64 %i.gz, %i.hg
  %i.hh = xor i32 %i.hf, -1
  %i.hi = add i32 %reass.add, %i.hh
  %.0114.us.us.us = select i1 %.not148.us.us.us, i32 %i.hf, i32 %i.hi ; 2 uses
  %i.hj = icmp slt i32 %.0114.us.us.us, 0
  %spec.select.us.us.us = select i1 %i.hj, i32 %i.hb, i32 %.0114.us.us.us
  %i.hk = sext i32 %spec.select.us.us.us to i64   ; 2 uses
  %i.hl = trunc i64 %i.gz to i32                  ; 2 uses
  %i.hm = or disjoint i32 %i.hl, 1                ; 2 uses
  %.not148.us.us.us.1 = icmp slt i32 %i.hm, %i.ha
  %i.hn = xor i32 %i.hl, -2
  %i.ho = add i32 %reass.add, %i.hn
  %.0114.us.us.us.1 = select i1 %.not148.us.us.us.1, i32 %i.hm, i32 %i.ho ; 2 uses
  %i.hp = icmp slt i32 %.0114.us.us.us.1, 0
  %spec.select.us.us.us.1 = select i1 %i.hp, i32 %i.hb, i32 %.0114.us.us.us.1
  %i.hq = sext i32 %spec.select.us.us.us.1 to i64 ; 2 uses
  %i.hr = trunc i64 %i.gz to i32                  ; 2 uses
  %i.hs = or disjoint i32 %i.hr, 2                ; 2 uses
  %.not148.us.us.us.2 = icmp slt i32 %i.hs, %i.ha
  %i.ht = xor i32 %i.hr, -3
  %i.hu = add i32 %reass.add, %i.ht
  %.0114.us.us.us.2 = select i1 %.not148.us.us.us.2, i32 %i.hs, i32 %i.hu ; 2 uses
  %i.hv = icmp slt i32 %.0114.us.us.us.2, 0
  %spec.select.us.us.us.2 = select i1 %i.hv, i32 %i.hb, i32 %.0114.us.us.us.2
  %i.hw = sext i32 %spec.select.us.us.us.2 to i64 ; 2 uses
  %i.hx = trunc i64 %i.gz to i32                  ; 2 uses
  %i.hy = or disjoint i32 %i.hx, 3                ; 2 uses
  %.not148.us.us.us.3 = icmp slt i32 %i.hy, %i.ha
  %i.hz = xor i32 %i.hx, -4
  %i.ia = add i32 %reass.add, %i.hz
  %.0114.us.us.us.3 = select i1 %.not148.us.us.us.3, i32 %i.hy, i32 %i.ia ; 2 uses
  %i.ib = icmp slt i32 %.0114.us.us.us.3, 0
  %spec.select.us.us.us.3 = select i1 %i.ib, i32 %i.hb, i32 %.0114.us.us.us.3
  %i.ic = sext i32 %spec.select.us.us.us.3 to i64 ; 2 uses
  %i.id = trunc i64 %i.gz to i32                  ; 2 uses
  %3 = or disjoint i32 %i.id, 4                   ; 2 uses
  %.not148.us.us.us.4 = icmp slt i32 %3, %i.ha
  %4 = xor i32 %i.id, -5
  %5 = add i32 %reass.add, %4
  %.0114.us.us.us.4 = select i1 %.not148.us.us.us.4, i32 %3, i32 %5 ; 2 uses
  %6 = icmp slt i32 %.0114.us.us.us.4, 0
  %spec.select.us.us.us.4 = select i1 %6, i32 %i.hb, i32 %.0114.us.us.us.4
  %7 = sext i32 %spec.select.us.us.us.4 to i64    ; 2 uses
  %8 = trunc i64 %i.gz to i32                     ; 2 uses
  %9 = or disjoint i32 %8, 5                      ; 2 uses
  %.not148.us.us.us.5 = icmp slt i32 %9, %i.ha
  %10 = xor i32 %8, -6
  %11 = add i32 %reass.add, %10
  %.0114.us.us.us.5 = select i1 %.not148.us.us.us.5, i32 %9, i32 %11 ; 2 uses
  %12 = icmp slt i32 %.0114.us.us.us.5, 0
  %spec.select.us.us.us.5 = select i1 %12, i32 %i.hb, i32 %.0114.us.us.us.5
  %i.ie = sext i32 %spec.select.us.us.us.5 to i64 ; 2 uses
  %13 = trunc i64 %i.gz to i32                    ; 2 uses
  %14 = or disjoint i32 %13, 6                    ; 2 uses
  %.not148.us.us.us.6 = icmp slt i32 %14, %i.ha
  %15 = xor i32 %13, -7
  %16 = add i32 %reass.add, %15
  %.0114.us.us.us.6 = select i1 %.not148.us.us.us.6, i32 %14, i32 %16 ; 2 uses
  %17 = icmp slt i32 %.0114.us.us.us.6, 0
  %spec.select.us.us.us.6 = select i1 %17, i32 %i.hb, i32 %.0114.us.us.us.6
  %i.if = sext i32 %spec.select.us.us.us.6 to i64 ; 2 uses
  %18 = trunc i64 %i.gz to i32                    ; 2 uses
  %19 = or disjoint i32 %18, 7                    ; 2 uses
  %.not148.us.us.us.7 = icmp slt i32 %19, %i.ha
  %20 = xor i32 %18, -8
  %21 = add i32 %reass.add, %20
  %.0114.us.us.us.7 = select i1 %.not148.us.us.us.7, i32 %19, i32 %21 ; 2 uses
  %22 = icmp slt i32 %.0114.us.us.us.7, 0
  %spec.select.us.us.us.7 = select i1 %22, i32 %i.hb, i32 %.0114.us.us.us.7
  %i.ig = sext i32 %spec.select.us.us.us.7 to i64 ; 2 uses
  br i1 %.not151, label %.preheader160.us, label %.preheader160

.preheader160.us:                                 ; preds = %.preheader160.lr.ph, %.split203.us.us
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %.split203.us.us ], [ 0, %.preheader160.lr.ph ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv288
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !123 ; 9 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 392
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !115
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %half_to_float.exit.us.us.us.7, %.preheader160.us
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %half_to_float.exit.us.us.us.7 ], [ 0, %.preheader160.us ] ; 3 uses
  %i.il = add i64 %indvars.iv284, %i.gy
  %i.im = trunc i64 %i.il to i32                  ; 3 uses
  %.not149.us.us = icmp sgt i32 %i.hc, %i.im
  %i.in = xor i32 %i.im, -1
  %i.io = add i32 %reass.add150, %i.in
  %.0113.us.us = select i1 %.not149.us.us, i32 %i.im, i32 %i.io ; 2 uses
  %i.ip = icmp slt i32 %.0113.us.us, 0
  %.1.us.us = select i1 %i.ip, i32 %i.hd, i32 %.0113.us.us
  %i.iq = sext i32 %.1.us.us to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !97 ; 8 uses
  %i.it = shl nuw nsw i64 %indvars.iv284, 3       ; 8 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.hk
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !94 ; 2 uses
  %i.iw = zext i16 %i.iv to i32
  %i.ix = shl nuw nsw i32 %i.iw, 13
  %i.iy = and i32 %i.ix, 268427264                ; 6 uses
  %.signext.i.i.us.us.us = sext i16 %i.iv to i32
  %i.iz = and i32 %.signext.i.i.us.us.us, -2147483648 ; 3 uses
  %i.ja = icmp samesign ugt i32 %i.iy, 8388607
  br i1 %i.ja, label %bb.w, label %bb.u, !prof !188

bb.u:                                             ; preds = %.preheader.us.us
  %.not.i.i153.us.us.us = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i153.us.us.us, label %half_to_float.exit.us.us.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jb = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.iy, i1 true)
  %i.jc = add nsw i32 %i.jb, -8                   ; 2 uses
  %i.jd = shl i32 %i.iy, %i.jc
  %i.je = or i32 %i.iz, %i.jd
  %i.jf = or i32 %i.je, 947912704
  %i.jg = shl nuw nsw i32 %i.jc, 23
  %i.jh = sub nuw i32 %i.jf, %i.jg
  br label %half_to_float.exit.us.us.us

bb.w:                                             ; preds = %.preheader.us.us
  %i.ji = or disjoint i32 %i.iy, %i.iz            ; 2 uses
  %i.jj = icmp samesign ult i32 %i.iy, 260046848
  br i1 %i.jj, label %bb.y, label %bb.x, !prof !188

bb.x:                                             ; preds = %bb.w
  %i.jk = or i32 %i.ji, 2139095040
  br label %half_to_float.exit.us.us.us

bb.y:                                             ; preds = %bb.w
  %i.jl = add nuw nsw i32 %i.ji, 939524096
  br label %half_to_float.exit.us.us.us

half_to_float.exit.us.us.us:                      ; preds = %bb.y, %bb.x, %bb.v, %bb.u
  %.sroa.0.0.i.i.us.us.us = phi i32 [ %i.jl, %bb.y ], [ %i.jk, %bb.x ], [ %i.jh, %bb.v ], [ %i.iz, %bb.u ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  store i32 %.sroa.0.0.i.i.us.us.us, ptr %i.jm, align 4, !tbaa !185
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.hq
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !94 ; 2 uses
  %i.jp = zext i16 %i.jo to i32
  %i.jq = shl nuw nsw i32 %i.jp, 13
  %i.jr = and i32 %i.jq, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.1 = sext i16 %i.jo to i32
  %i.js = and i32 %.signext.i.i.us.us.us.1, -2147483648 ; 3 uses
  %i.jt = icmp samesign ugt i32 %i.jr, 8388607
  br i1 %i.jt, label %bb.ab, label %bb.z, !prof !188

bb.z:                                             ; preds = %half_to_float.exit.us.us.us
  %.not.i.i153.us.us.us.1 = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i153.us.us.us.1, label %half_to_float.exit.us.us.us.1, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ju = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jr, i1 true)
  %i.jv = add nsw i32 %i.ju, -8                   ; 2 uses
  %i.jw = shl i32 %i.jr, %i.jv
  %i.jx = or i32 %i.js, %i.jw
  %i.jy = or i32 %i.jx, 947912704
  %i.jz = shl nuw nsw i32 %i.jv, 23
  %i.ka = sub nuw i32 %i.jy, %i.jz
  br label %half_to_float.exit.us.us.us.1

bb.ab:                                            ; preds = %half_to_float.exit.us.us.us
  %i.kb = or disjoint i32 %i.jr, %i.js            ; 2 uses
  %i.kc = icmp samesign ult i32 %i.jr, 260046848
  br i1 %i.kc, label %bb.ad, label %bb.ac, !prof !188

bb.ac:                                            ; preds = %bb.ab
  %i.kd = or i32 %i.kb, 2139095040
  br label %half_to_float.exit.us.us.us.1

bb.ad:                                            ; preds = %bb.ab
  %i.ke = add nuw nsw i32 %i.kb, 939524096
  br label %half_to_float.exit.us.us.us.1

half_to_float.exit.us.us.us.1:                    ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z
  %.sroa.0.0.i.i.us.us.us.1 = phi i32 [ %i.ke, %bb.ad ], [ %i.kd, %bb.ac ], [ %i.ka, %bb.aa ], [ %i.js, %bb.z ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store i32 %.sroa.0.0.i.i.us.us.us.1, ptr %i.kg, align 4, !tbaa !185
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.hw
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !94 ; 2 uses
  %i.kj = zext i16 %i.ki to i32
  %i.kk = shl nuw nsw i32 %i.kj, 13
  %i.kl = and i32 %i.kk, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.2 = sext i16 %i.ki to i32
  %i.km = and i32 %.signext.i.i.us.us.us.2, -2147483648 ; 3 uses
  %i.kn = icmp samesign ugt i32 %i.kl, 8388607
  br i1 %i.kn, label %bb.ag, label %bb.ae, !prof !188

bb.ae:                                            ; preds = %half_to_float.exit.us.us.us.1
  %.not.i.i153.us.us.us.2 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i153.us.us.us.2, label %half_to_float.exit.us.us.us.2, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ko = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.kl, i1 true)
  %i.kp = add nsw i32 %i.ko, -8                   ; 2 uses
  %i.kq = shl i32 %i.kl, %i.kp
  %i.kr = or i32 %i.km, %i.kq
  %i.ks = or i32 %i.kr, 947912704
  %i.kt = shl nuw nsw i32 %i.kp, 23
  %i.ku = sub nuw i32 %i.ks, %i.kt
  br label %half_to_float.exit.us.us.us.2

bb.ag:                                            ; preds = %half_to_float.exit.us.us.us.1
  %i.kv = or disjoint i32 %i.kl, %i.km            ; 2 uses
  %i.kw = icmp samesign ult i32 %i.kl, 260046848
  br i1 %i.kw, label %bb.ai, label %bb.ah, !prof !188

bb.ah:                                            ; preds = %bb.ag
  %i.kx = or i32 %i.kv, 2139095040
  br label %half_to_float.exit.us.us.us.2

bb.ai:                                            ; preds = %bb.ag
  %i.ky = add nuw nsw i32 %i.kv, 939524096
  br label %half_to_float.exit.us.us.us.2

half_to_float.exit.us.us.us.2:                    ; preds = %bb.ai, %bb.ah, %bb.af, %bb.ae
  %.sroa.0.0.i.i.us.us.us.2 = phi i32 [ %i.ky, %bb.ai ], [ %i.kx, %bb.ah ], [ %i.ku, %bb.af ], [ %i.km, %bb.ae ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store i32 %.sroa.0.0.i.i.us.us.us.2, ptr %i.la, align 4, !tbaa !185
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.ic
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !94 ; 2 uses
  %i.ld = zext i16 %i.lc to i32
  %i.le = shl nuw nsw i32 %i.ld, 13
  %i.lf = and i32 %i.le, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.3 = sext i16 %i.lc to i32
  %i.lg = and i32 %.signext.i.i.us.us.us.3, -2147483648 ; 3 uses
  %i.lh = icmp samesign ugt i32 %i.lf, 8388607
  br i1 %i.lh, label %bb.al, label %bb.aj, !prof !188

bb.aj:                                            ; preds = %half_to_float.exit.us.us.us.2
  %.not.i.i153.us.us.us.3 = icmp eq i32 %i.lf, 0
  br i1 %.not.i.i153.us.us.us.3, label %half_to_float.exit.us.us.us.3, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.li = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.lf, i1 true)
  %i.lj = add nsw i32 %i.li, -8                   ; 2 uses
  %i.lk = shl i32 %i.lf, %i.lj
  %i.ll = or i32 %i.lg, %i.lk
  %i.lm = or i32 %i.ll, 947912704
  %i.ln = shl nuw nsw i32 %i.lj, 23
  %i.lo = sub nuw i32 %i.lm, %i.ln
  br label %half_to_float.exit.us.us.us.3

bb.al:                                            ; preds = %half_to_float.exit.us.us.us.2
  %i.lp = or disjoint i32 %i.lf, %i.lg            ; 2 uses
  %i.lq = icmp samesign ult i32 %i.lf, 260046848
  br i1 %i.lq, label %bb.an, label %bb.am, !prof !188

bb.am:                                            ; preds = %bb.al
  %i.lr = or i32 %i.lp, 2139095040
  br label %half_to_float.exit.us.us.us.3

bb.an:                                            ; preds = %bb.al
  %i.ls = add nuw nsw i32 %i.lp, 939524096
  br label %half_to_float.exit.us.us.us.3

half_to_float.exit.us.us.us.3:                    ; preds = %bb.an, %bb.am, %bb.ak, %bb.aj
  %.sroa.0.0.i.i.us.us.us.3 = phi i32 [ %i.ls, %bb.an ], [ %i.lr, %bb.am ], [ %i.lo, %bb.ak ], [ %i.lg, %bb.aj ]
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store i32 %.sroa.0.0.i.i.us.us.us.3, ptr %i.lu, align 4, !tbaa !185
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.is, i64 %7
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !94 ; 2 uses
  %i.lx = zext i16 %i.lw to i32
  %i.ly = shl nuw nsw i32 %i.lx, 13
  %i.lz = and i32 %i.ly, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.4 = sext i16 %i.lw to i32
  %i.ma = and i32 %.signext.i.i.us.us.us.4, -2147483648 ; 3 uses
  %i.mb = icmp samesign ugt i32 %i.lz, 8388607
  br i1 %i.mb, label %bb.aq, label %bb.ao, !prof !188

bb.ao:                                            ; preds = %half_to_float.exit.us.us.us.3
  %.not.i.i153.us.us.us.4 = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i153.us.us.us.4, label %half_to_float.exit.us.us.us.4, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mc = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.lz, i1 true)
  %i.md = add nsw i32 %i.mc, -8                   ; 2 uses
  %i.me = shl i32 %i.lz, %i.md
  %i.mf = or i32 %i.ma, %i.me
  %i.mg = or i32 %i.mf, 947912704
  %i.mh = shl nuw nsw i32 %i.md, 23
  %i.mi = sub nuw i32 %i.mg, %i.mh
  br label %half_to_float.exit.us.us.us.4

bb.aq:                                            ; preds = %half_to_float.exit.us.us.us.3
  %i.mj = or disjoint i32 %i.lz, %i.ma            ; 2 uses
  %i.mk = icmp samesign ult i32 %i.lz, 260046848
  br i1 %i.mk, label %bb.as, label %bb.ar, !prof !188

bb.ar:                                            ; preds = %bb.aq
  %i.ml = or i32 %i.mj, 2139095040
  br label %half_to_float.exit.us.us.us.4

bb.as:                                            ; preds = %bb.aq
  %i.mm = add nuw nsw i32 %i.mj, 939524096
  br label %half_to_float.exit.us.us.us.4

half_to_float.exit.us.us.us.4:                    ; preds = %bb.as, %bb.ar, %bb.ap, %bb.ao
  %.sroa.0.0.i.i.us.us.us.4 = phi i32 [ %i.mm, %bb.as ], [ %i.ml, %bb.ar ], [ %i.mi, %bb.ap ], [ %i.ma, %bb.ao ]
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store i32 %.sroa.0.0.i.i.us.us.us.4, ptr %i.mo, align 4, !tbaa !185
  %i.mp = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.ie
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !94 ; 2 uses
  %i.mr = zext i16 %i.mq to i32
  %i.ms = shl nuw nsw i32 %i.mr, 13
  %i.mt = and i32 %i.ms, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.5 = sext i16 %i.mq to i32
  %i.mu = and i32 %.signext.i.i.us.us.us.5, -2147483648 ; 3 uses
  %i.mv = icmp samesign ugt i32 %i.mt, 8388607
  br i1 %i.mv, label %bb.av, label %bb.at, !prof !188

bb.at:                                            ; preds = %half_to_float.exit.us.us.us.4
  %.not.i.i153.us.us.us.5 = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i153.us.us.us.5, label %half_to_float.exit.us.us.us.5, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.mw = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.mt, i1 true)
  %i.mx = add nsw i32 %i.mw, -8                   ; 2 uses
  %i.my = shl i32 %i.mt, %i.mx
  %i.mz = or i32 %i.mu, %i.my
  %i.na = or i32 %i.mz, 947912704
  %i.nb = shl nuw nsw i32 %i.mx, 23
  %i.nc = sub nuw i32 %i.na, %i.nb
  br label %half_to_float.exit.us.us.us.5

bb.av:                                            ; preds = %half_to_float.exit.us.us.us.4
  %i.nd = or disjoint i32 %i.mt, %i.mu            ; 2 uses
  %i.ne = icmp samesign ult i32 %i.mt, 260046848
  br i1 %i.ne, label %bb.ax, label %bb.aw, !prof !188

bb.aw:                                            ; preds = %bb.av
  %i.nf = or i32 %i.nd, 2139095040
  br label %half_to_float.exit.us.us.us.5

bb.ax:                                            ; preds = %bb.av
  %i.ng = add nuw nsw i32 %i.nd, 939524096
  br label %half_to_float.exit.us.us.us.5

half_to_float.exit.us.us.us.5:                    ; preds = %bb.ax, %bb.aw, %bb.au, %bb.at
  %.sroa.0.0.i.i.us.us.us.5 = phi i32 [ %i.ng, %bb.ax ], [ %i.nf, %bb.aw ], [ %i.nc, %bb.au ], [ %i.mu, %bb.at ]
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 20
  store i32 %.sroa.0.0.i.i.us.us.us.5, ptr %i.ni, align 4, !tbaa !185
  %i.nj = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.if
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !94 ; 2 uses
  %i.nl = zext i16 %i.nk to i32
  %i.nm = shl nuw nsw i32 %i.nl, 13
  %i.nn = and i32 %i.nm, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.6 = sext i16 %i.nk to i32
  %i.no = and i32 %.signext.i.i.us.us.us.6, -2147483648 ; 3 uses
  %i.np = icmp samesign ugt i32 %i.nn, 8388607
  br i1 %i.np, label %bb.ba, label %bb.ay, !prof !188

bb.ay:                                            ; preds = %half_to_float.exit.us.us.us.5
  %.not.i.i153.us.us.us.6 = icmp eq i32 %i.nn, 0
  br i1 %.not.i.i153.us.us.us.6, label %half_to_float.exit.us.us.us.6, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nq = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.nn, i1 true)
  %i.nr = add nsw i32 %i.nq, -8                   ; 2 uses
  %i.ns = shl i32 %i.nn, %i.nr
  %i.nt = or i32 %i.no, %i.ns
  %i.nu = or i32 %i.nt, 947912704
  %i.nv = shl nuw nsw i32 %i.nr, 23
  %i.nw = sub nuw i32 %i.nu, %i.nv
  br label %half_to_float.exit.us.us.us.6

bb.ba:                                            ; preds = %half_to_float.exit.us.us.us.5
  %i.nx = or disjoint i32 %i.nn, %i.no            ; 2 uses
  %i.ny = icmp samesign ult i32 %i.nn, 260046848
  br i1 %i.ny, label %bb.bc, label %bb.bb, !prof !188

bb.bb:                                            ; preds = %bb.ba
  %i.nz = or i32 %i.nx, 2139095040
  br label %half_to_float.exit.us.us.us.6

bb.bc:                                            ; preds = %bb.ba
  %i.oa = add nuw nsw i32 %i.nx, 939524096
  br label %half_to_float.exit.us.us.us.6

half_to_float.exit.us.us.us.6:                    ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ay
  %.sroa.0.0.i.i.us.us.us.6 = phi i32 [ %i.oa, %bb.bc ], [ %i.nz, %bb.bb ], [ %i.nw, %bb.az ], [ %i.no, %bb.ay ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  store i32 %.sroa.0.0.i.i.us.us.us.6, ptr %i.oc, align 4, !tbaa !185
  %i.od = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.ig
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !94 ; 2 uses
  %i.of = zext i16 %i.oe to i32
  %i.og = shl nuw nsw i32 %i.of, 13
  %i.oh = and i32 %i.og, 268427264                ; 6 uses
  %.signext.i.i.us.us.us.7 = sext i16 %i.oe to i32
  %i.oi = and i32 %.signext.i.i.us.us.us.7, -2147483648 ; 3 uses
  %i.oj = icmp samesign ugt i32 %i.oh, 8388607
  br i1 %i.oj, label %bb.bf, label %bb.bd, !prof !188

bb.bd:                                            ; preds = %half_to_float.exit.us.us.us.6
  %.not.i.i153.us.us.us.7 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i153.us.us.us.7, label %half_to_float.exit.us.us.us.7, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ok = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.oh, i1 true)
  %i.ol = add nsw i32 %i.ok, -8                   ; 2 uses
  %i.om = shl i32 %i.oh, %i.ol
  %i.on = or i32 %i.oi, %i.om
  %i.oo = or i32 %i.on, 947912704
  %i.op = shl nuw nsw i32 %i.ol, 23
  %i.oq = sub nuw i32 %i.oo, %i.op
  br label %half_to_float.exit.us.us.us.7

bb.bf:                                            ; preds = %half_to_float.exit.us.us.us.6
  %i.or = or disjoint i32 %i.oh, %i.oi            ; 2 uses
  %i.os = icmp samesign ult i32 %i.oh, 260046848
  br i1 %i.os, label %bb.bh, label %bb.bg, !prof !188

bb.bg:                                            ; preds = %bb.bf
  %i.ot = or i32 %i.or, 2139095040
  br label %half_to_float.exit.us.us.us.7

bb.bh:                                            ; preds = %bb.bf
  %i.ou = add nuw nsw i32 %i.or, 939524096
  br label %half_to_float.exit.us.us.us.7

half_to_float.exit.us.us.us.7:                    ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bd
  %.sroa.0.0.i.i.us.us.us.7 = phi i32 [ %i.ou, %bb.bh ], [ %i.ot, %bb.bg ], [ %i.oq, %bb.be ], [ %i.oi, %bb.bd ]
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.it
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 28
  store i32 %.sroa.0.0.i.i.us.us.us.7, ptr %i.ow, align 4, !tbaa !185
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next285, 8
  br i1 %exitcond287.not, label %.split203.us.us, label %.preheader.us.us, !llvm.loop !226

.split203.us.us:                                  ; preds = %half_to_float.exit.us.us.us.7
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %._crit_edge205, label %.preheader160.us, !llvm.loop !227

._crit_edge216:                                   ; preds = %._crit_edge212
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge220.split, label %.preheader162, !llvm.loop !228

.preheader160:                                    ; preds = %.preheader160.lr.ph, %.split203
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %.split203 ], [ 0, %.preheader160.lr.ph ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv275
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !123 ; 9 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 392
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !115
  br label %.preheader

._crit_edge205:                                   ; preds = %.split203, %.split203.us.us
  br i1 %i.fs, label %vector.memcheck, label %.lr.ph211.preheader

.lr.ph211.preheader:                              ; preds = %vector.body, %.preheader221, %._crit_edge205
  br label %.lr.ph211

vector.memcheck:                                  ; preds = %._crit_edge205
  br i1 %conflict.rdx398, label %.preheader221, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.pb, align 4, !tbaa !185, !alias.scope !229, !noalias !232 ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index ; 2 uses
  %wide.load399 = load <4 x float>, ptr %i.pc, align 4, !tbaa !185, !alias.scope !235, !noalias !236 ; 3 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %index ; 2 uses
  %wide.load400 = load <4 x float>, ptr %i.pd, align 4, !tbaa !185, !alias.scope !236 ; 3 uses
  %i.pe = fmul <4 x float> %wide.load399, splat (float 7.152000e-01)
  %i.pf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.126000e-01), <4 x float> %i.pe)
  %i.pg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load400, <4 x float> splat (float 7.220000e-02), <4 x float> %i.pf)
  store <4 x float> %i.pg, ptr %i.pb, align 4, !tbaa !185, !alias.scope !229, !noalias !232
  %i.ph = fmul <4 x float> %wide.load399, splat (float -3.854000e-01)
  %i.pi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float -1.146000e-01), <4 x float> %i.ph)
  %i.pj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load400, <4 x float> splat (float 5.000000e-01), <4 x float> %i.pi)
  store <4 x float> %i.pj, ptr %i.pc, align 4, !tbaa !185, !alias.scope !235, !noalias !236
  %i.pk = fmul <4 x float> %wide.load399, splat (float -4.542000e-01)
  %i.pl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 5.000000e-01), <4 x float> %i.pk)
  %i.pm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load400, <4 x float> splat (float -4.580000e-02), <4 x float> %i.pl)
  store <4 x float> %i.pm, ptr %i.pd, align 4, !tbaa !185, !alias.scope !236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pn = icmp eq i64 %index.next, 64
  br i1 %i.pn, label %.lr.ph211.preheader, label %vector.body, !llvm.loop !237

.preheader:                                       ; preds = %.preheader160, %half_to_float.exit.7
  %indvars.iv271 = phi i64 [ 0, %.preheader160 ], [ %indvars.iv.next272, %half_to_float.exit.7 ] ; 3 uses
  %i.po = add i64 %indvars.iv271, %i.gy
  %i.pp = trunc i64 %i.po to i32                  ; 3 uses
  %.not149 = icmp sgt i32 %i.hc, %i.pp
  %i.pq = xor i32 %i.pp, -1
  %i.pr = add i32 %reass.add150, %i.pq
  %.0113 = select i1 %.not149, i32 %i.pp, i32 %i.pr ; 2 uses
  %i.ps = icmp slt i32 %.0113, 0
  %.1 = select i1 %i.ps, i32 %i.hd, i32 %.0113
  %i.pt = sext i32 %.1 to i64
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %i.pt
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !97 ; 8 uses
  %i.pw = shl nuw nsw i64 %indvars.iv271, 3       ; 8 uses
  %i.px = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.hk
  %i.py = load i16, ptr %i.px, align 2, !tbaa !94
  %i.pz = zext i16 %i.py to i64
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.pz
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !94 ; 2 uses
  %i.qc = zext i16 %i.qb to i32
  %i.qd = shl nuw nsw i32 %i.qc, 13
  %i.qe = and i32 %i.qd, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %i.qb to i32
  %i.qf = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.qg = icmp samesign ugt i32 %i.qe, 8388607
  br i1 %i.qg, label %bb.bi, label %bb.bl, !prof !188

.split203:                                        ; preds = %half_to_float.exit.7
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %._crit_edge205, label %.preheader160, !llvm.loop !227

bb.bi:                                            ; preds = %.preheader
  %i.qh = or disjoint i32 %i.qe, %i.qf            ; 2 uses
  %i.qi = icmp samesign ult i32 %i.qe, 260046848
  br i1 %i.qi, label %bb.bj, label %bb.bk, !prof !188

bb.bj:                                            ; preds = %bb.bi
  %i.qj = add nuw nsw i32 %i.qh, 939524096
  br label %half_to_float.exit

bb.bk:                                            ; preds = %bb.bi
  %i.qk = or i32 %i.qh, 2139095040
  br label %half_to_float.exit

bb.bl:                                            ; preds = %.preheader
  %.not.i.i153 = icmp eq i32 %i.qe, 0
  br i1 %.not.i.i153, label %half_to_float.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ql = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.qe, i1 true)
  %i.qm = add nsw i32 %i.ql, -8                   ; 2 uses
  %i.qn = shl i32 %i.qe, %i.qm
  %i.qo = or i32 %i.qf, %i.qn
  %i.qp = or i32 %i.qo, 947912704
  %i.qq = shl nuw nsw i32 %i.qm, 23
  %i.qr = sub nuw i32 %i.qp, %i.qq
  br label %half_to_float.exit

half_to_float.exit:                               ; preds = %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %.sroa.0.0.i.i = phi i32 [ %i.qj, %bb.bj ], [ %i.qk, %bb.bk ], [ %i.qr, %bb.bm ], [ %i.qf, %bb.bl ]
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pw
  store i32 %.sroa.0.0.i.i, ptr %i.qs, align 4, !tbaa !185
  %i.qt = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.hq
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !94
  %i.qv = zext i16 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !94 ; 2 uses
  %i.qy = zext i16 %i.qx to i32
  %i.qz = shl nuw nsw i32 %i.qy, 13
  %i.ra = and i32 %i.qz, 268427264                ; 6 uses
  %.signext.i.i.1 = sext i16 %i.qx to i32
  %i.rb = and i32 %.signext.i.i.1, -2147483648    ; 3 uses
  %i.rc = icmp samesign ugt i32 %i.ra, 8388607
  br i1 %i.rc, label %bb.bp, label %bb.bn, !prof !188

bb.bn:                                            ; preds = %half_to_float.exit
  %.not.i.i153.1 = icmp eq i32 %i.ra, 0
  br i1 %.not.i.i153.1, label %half_to_float.exit.1, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rd = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ra, i1 true)
  %i.re = add nsw i32 %i.rd, -8                   ; 2 uses
  %i.rf = shl i32 %i.ra, %i.re
  %i.rg = or i32 %i.rb, %i.rf
  %i.rh = or i32 %i.rg, 947912704
  %i.ri = shl nuw nsw i32 %i.re, 23
  %i.rj = sub nuw i32 %i.rh, %i.ri
  br label %half_to_float.exit.1

bb.bp:                                            ; preds = %half_to_float.exit
  %i.rk = or disjoint i32 %i.ra, %i.rb            ; 2 uses
  %i.rl = icmp samesign ult i32 %i.ra, 260046848
  br i1 %i.rl, label %bb.br, label %bb.bq, !prof !188

bb.bq:                                            ; preds = %bb.bp
  %i.rm = or i32 %i.rk, 2139095040
  br label %half_to_float.exit.1

bb.br:                                            ; preds = %bb.bp
  %i.rn = add nuw nsw i32 %i.rk, 939524096
  br label %half_to_float.exit.1

half_to_float.exit.1:                             ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bn
  %.sroa.0.0.i.i.1 = phi i32 [ %i.rn, %bb.br ], [ %i.rm, %bb.bq ], [ %i.rj, %bb.bo ], [ %i.rb, %bb.bn ]
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pw
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  store i32 %.sroa.0.0.i.i.1, ptr %i.rp, align 4, !tbaa !185
  %i.rq = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.hw
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !94
  %i.rs = zext i16 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.rs
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !94 ; 2 uses
  %i.rv = zext i16 %i.ru to i32
  %i.rw = shl nuw nsw i32 %i.rv, 13
  %i.rx = and i32 %i.rw, 268427264                ; 6 uses
  %.signext.i.i.2 = sext i16 %i.ru to i32
  %i.ry = and i32 %.signext.i.i.2, -2147483648    ; 3 uses
  %i.rz = icmp samesign ugt i32 %i.rx, 8388607
  br i1 %i.rz, label %bb.bu, label %bb.bs, !prof !188

bb.bs:                                            ; preds = %half_to_float.exit.1
  %.not.i.i153.2 = icmp eq i32 %i.rx, 0
  br i1 %.not.i.i153.2, label %half_to_float.exit.2, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sa = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.rx, i1 true)
  %i.sb = add nsw i32 %i.sa, -8                   ; 2 uses
  %i.sc = shl i32 %i.rx, %i.sb
  %i.sd = or i32 %i.ry, %i.sc
  %i.se = or i32 %i.sd, 947912704
  %i.sf = shl nuw nsw i32 %i.sb, 23
  %i.sg = sub nuw i32 %i.se, %i.sf
  br label %half_to_float.exit.2

bb.bu:                                            ; preds = %half_to_float.exit.1
  %i.sh = or disjoint i32 %i.rx, %i.ry            ; 2 uses
  %i.si = icmp samesign ult i32 %i.rx, 260046848
  br i1 %i.si, label %bb.bw, label %bb.bv, !prof !188

bb.bv:                                            ; preds = %bb.bu
  %i.sj = or i32 %i.sh, 2139095040
  br label %half_to_float.exit.2

bb.bw:                                            ; preds = %bb.bu
  %i.sk = add nuw nsw i32 %i.sh, 939524096
  br label %half_to_float.exit.2

half_to_float.exit.2:                             ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.bs
  %.sroa.0.0.i.i.2 = phi i32 [ %i.sk, %bb.bw ], [ %i.sj, %bb.bv ], [ %i.sg, %bb.bt ], [ %i.ry, %bb.bs ]
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pw
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store i32 %.sroa.0.0.i.i.2, ptr %i.sm, align 4, !tbaa !185
  %i.sn = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.ic
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !94
  %i.sp = zext i16 %i.so to i64
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.sp
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !94 ; 2 uses
  %i.ss = zext i16 %i.sr to i32
  %i.st = shl nuw nsw i32 %i.ss, 13
  %i.su = and i32 %i.st, 268427264                ; 6 uses
  %.signext.i.i.3 = sext i16 %i.sr to i32
  %i.sv = and i32 %.signext.i.i.3, -2147483648    ; 3 uses
  %i.sw = icmp samesign ugt i32 %i.su, 8388607
  br i1 %i.sw, label %bb.bz, label %bb.bx, !prof !188

bb.bx:                                            ; preds = %half_to_float.exit.2
  %.not.i.i153.3 = icmp eq i32 %i.su, 0
  br i1 %.not.i.i153.3, label %half_to_float.exit.3, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sx = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.su, i1 true)
  %i.sy = add nsw i32 %i.sx, -8                   ; 2 uses
  %i.sz = shl i32 %i.su, %i.sy
  %i.ta = or i32 %i.sv, %i.sz
  %i.tb = or i32 %i.ta, 947912704
  %i.tc = shl nuw nsw i32 %i.sy, 23
  %i.td = sub nuw i32 %i.tb, %i.tc
  br label %half_to_float.exit.3

bb.bz:                                            ; preds = %half_to_float.exit.2
  %i.te = or disjoint i32 %i.su, %i.sv            ; 2 uses
  %i.tf = icmp samesign ult i32 %i.su, 260046848
  br i1 %i.tf, label %bb.cb, label %bb.ca, !prof !188

bb.ca:                                            ; preds = %bb.bz
  %i.tg = or i32 %i.te, 2139095040
  br label %half_to_float.exit.3

bb.cb:                                            ; preds = %bb.bz
  %i.th = add nuw nsw i32 %i.te, 939524096
  br label %half_to_float.exit.3

half_to_float.exit.3:                             ; preds = %bb.cb, %bb.ca, %bb.by, %bb.bx
  %.sroa.0.0.i.i.3 = phi i32 [ %i.th, %bb.cb ], [ %i.tg, %bb.ca ], [ %i.td, %bb.by ], [ %i.sv, %bb.bx ]
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pw
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 12
  store i32 %.sroa.0.0.i.i.3, ptr %i.tj, align 4, !tbaa !185
  %i.tk = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %7
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !94
  %i.tm = zext i16 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.tm
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !94 ; 2 uses
  %i.tp = zext i16 %i.to to i32
  %i.tq = shl nuw nsw i32 %i.tp, 13
  %i.tr = and i32 %i.tq, 268427264                ; 6 uses
  %.signext.i.i.4 = sext i16 %i.to to i32
  %i.ts = and i32 %.signext.i.i.4, -2147483648    ; 3 uses
  %i.tt = icmp samesign ugt i32 %i.tr, 8388607
  br i1 %i.tt, label %bb.ce, label %bb.cc, !prof !188

bb.cc:                                            ; preds = %half_to_float.exit.3
  %.not.i.i153.4 = icmp eq i32 %i.tr, 0
  br i1 %.not.i.i153.4, label %half_to_float.exit.4, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.tu = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.tr, i1 true)
  %i.tv = add nsw i32 %i.tu, -8                   ; 2 uses
  %i.tw = shl i32 %i.tr, %i.tv
  %i.tx = or i32 %i.ts, %i.tw
  %i.ty = or i32 %i.tx, 947912704
  %i.tz = shl nuw nsw i32 %i.tv, 23
  %i.ua = sub nuw i32 %i.ty, %i.tz
  br label %half_to_float.exit.4

bb.ce:                                            ; preds = %half_to_float.exit.3
  %i.ub = or disjoint i32 %i.tr, %i.ts            ; 2 uses
  %i.uc = icmp samesign ult i32 %i.tr, 260046848
  br i1 %i.uc, label %bb.cg, label %bb.cf, !prof !188

bb.cf:                                            ; preds = %bb.ce
  %i.ud = or i32 %i.ub, 2139095040
  br label %half_to_float.exit.4

bb.cg:                                            ; preds = %bb.ce
  %i.ue = add nuw nsw i32 %i.ub, 939524096
  br label %half_to_float.exit.4

half_to_float.exit.4:                             ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.cc
  %.sroa.0.0.i.i.4 = phi i32 [ %i.ue, %bb.cg ], [ %i.ud, %bb.cf ], [ %i.ua, %bb.cd ], [ %i.ts, %bb.cc ]
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pw
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store i32 %.sroa.0.0.i.i.4, ptr %i.ug, align 4, !tbaa !185
  %i.uh = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.ie
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !94
  %i.uj = zext i16 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.uj
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !94 ; 2 uses
  %i.um = zext i16 %i.ul to i32
  %i.un = shl nuw nsw i32 %i.um, 13
  %i.uo = and i32 %i.un, 268427264                ; 6 uses
  %.signext.i.i.5 = sext i16 %i.ul to i32
  %i.up = and i32 %.signext.i.i.5, -2147483648    ; 3 uses
  %i.uq = icmp samesign ugt i32 %i.uo, 8388607
  br i1 %i.uq, label %bb.cj, label %bb.ch, !prof !188

bb.ch:                                            ; preds = %half_to_float.exit.4
  %.not.i.i153.5 = icmp eq i32 %i.uo, 0
  br i1 %.not.i.i153.5, label %half_to_float.exit.5, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ur = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.uo, i1 true)
  %i.us = add nsw i32 %i.ur, -8                   ; 2 uses
  %i.ut = shl i32 %i.uo, %i.us
  %i.uu = or i32 %i.up, %i.ut
  %i.uv = or i32 %i.uu, 947912704
  %i.uw = shl nuw nsw i32 %i.us, 23
  %i.ux = sub nuw i32 %i.uv, %i.uw
  br label %half_to_float.exit.5

bb.cj:                                            ; preds = %half_to_float.exit.4
  %i.uy = or disjoint i32 %i.uo, %i.up            ; 2 uses
  %i.uz = icmp samesign ult i32 %i.uo, 260046848
  br i1 %i.uz, label %bb.cl, label %bb.ck, !prof !188

bb.ck:                                            ; preds = %bb.cj
  %i.va = or i32 %i.uy, 2139095040
  br label %half_to_float.exit.5

bb.cl:                                            ; preds = %bb.cj
  %i.vb = add nuw nsw i32 %i.uy, 939524096
  br label %half_to_float.exit.5

half_to_float.exit.5:                             ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch
  %.sroa.0.0.i.i.5 = phi i32 [ %i.vb, %bb.cl ], [ %i.va, %bb.ck ], [ %i.ux, %bb.ci ], [ %i.up, %bb.ch ]
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pw
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 20
  store i32 %.sroa.0.0.i.i.5, ptr %i.vd, align 4, !tbaa !185
  %i.ve = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.if
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !94
  %i.vg = zext i16 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.vg
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !94 ; 2 uses
  %i.vj = zext i16 %i.vi to i32
  %i.vk = shl nuw nsw i32 %i.vj, 13
  %i.vl = and i32 %i.vk, 268427264                ; 6 uses
  %.signext.i.i.6 = sext i16 %i.vi to i32
  %i.vm = and i32 %.signext.i.i.6, -2147483648    ; 3 uses
  %i.vn = icmp samesign ugt i32 %i.vl, 8388607
  br i1 %i.vn, label %bb.co, label %bb.cm, !prof !188

bb.cm:                                            ; preds = %half_to_float.exit.5
  %.not.i.i153.6 = icmp eq i32 %i.vl, 0
  br i1 %.not.i.i153.6, label %half_to_float.exit.6, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vo = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.vl, i1 true)
  %i.vp = add nsw i32 %i.vo, -8                   ; 2 uses
  %i.vq = shl i32 %i.vl, %i.vp
  %i.vr = or i32 %i.vm, %i.vq
  %i.vs = or i32 %i.vr, 947912704
  %i.vt = shl nuw nsw i32 %i.vp, 23
  %i.vu = sub nuw i32 %i.vs, %i.vt
  br label %half_to_float.exit.6

bb.co:                                            ; preds = %half_to_float.exit.5
  %i.vv = or disjoint i32 %i.vl, %i.vm            ; 2 uses
  %i.vw = icmp samesign ult i32 %i.vl, 260046848
  br i1 %i.vw, label %bb.cq, label %bb.cp, !prof !188

bb.cp:                                            ; preds = %bb.co
  %i.vx = or i32 %i.vv, 2139095040
  br label %half_to_float.exit.6

bb.cq:                                            ; preds = %bb.co
  %i.vy = add nuw nsw i32 %i.vv, 939524096
  br label %half_to_float.exit.6

half_to_float.exit.6:                             ; preds = %bb.cq, %bb.cp, %bb.cn, %bb.cm
  %.sroa.0.0.i.i.6 = phi i32 [ %i.vy, %bb.cq ], [ %i.vx, %bb.cp ], [ %i.vu, %bb.cn ], [ %i.vm, %bb.cm ]
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pw
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  store i32 %.sroa.0.0.i.i.6, ptr %i.wa, align 4, !tbaa !185
  %i.wb = getelementptr inbounds [2 x i8], ptr %i.pv, i64 %i.ig
  %i.wc = load i16, ptr %i.wb, align 2, !tbaa !94
  %i.wd = zext i16 %i.wc to i64
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.he, i64 %i.wd
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !94 ; 2 uses
  %i.wg = zext i16 %i.wf to i32
  %i.wh = shl nuw nsw i32 %i.wg, 13
  %i.wi = and i32 %i.wh, 268427264                ; 6 uses
  %.signext.i.i.7 = sext i16 %i.wf to i32
  %i.wj = and i32 %.signext.i.i.7, -2147483648    ; 3 uses
  %i.wk = icmp samesign ugt i32 %i.wi, 8388607
  br i1 %i.wk, label %bb.ct, label %bb.cr, !prof !188

bb.cr:                                            ; preds = %half_to_float.exit.6
  %.not.i.i153.7 = icmp eq i32 %i.wi, 0
  br i1 %.not.i.i153.7, label %half_to_float.exit.7, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.wl = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.wi, i1 true)
  %i.wm = add nsw i32 %i.wl, -8                   ; 2 uses
  %i.wn = shl i32 %i.wi, %i.wm
  %i.wo = or i32 %i.wj, %i.wn
  %i.wp = or i32 %i.wo, 947912704
  %i.wq = shl nuw nsw i32 %i.wm, 23
  %i.wr = sub nuw i32 %i.wp, %i.wq
  br label %half_to_float.exit.7

bb.ct:                                            ; preds = %half_to_float.exit.6
  %i.ws = or disjoint i32 %i.wi, %i.wj            ; 2 uses
  %i.wt = icmp samesign ult i32 %i.wi, 260046848
  br i1 %i.wt, label %bb.cv, label %bb.cu, !prof !188

bb.cu:                                            ; preds = %bb.ct
  %i.wu = or i32 %i.ws, 2139095040
  br label %half_to_float.exit.7

bb.cv:                                            ; preds = %bb.ct
  %i.wv = add nuw nsw i32 %i.ws, 939524096
  br label %half_to_float.exit.7

half_to_float.exit.7:                             ; preds = %bb.cv, %bb.cu, %bb.cs, %bb.cr
  %.sroa.0.0.i.i.7 = phi i32 [ %i.wv, %bb.cv ], [ %i.wu, %bb.cu ], [ %i.wr, %bb.cs ], [ %i.wj, %bb.cr ]
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.pw
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 28
  store i32 %.sroa.0.0.i.i.7, ptr %i.wx, align 4, !tbaa !185
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next272, 8
  br i1 %exitcond274.not, label %.split203, label %.preheader, !llvm.loop !226

.preheader221:                                    ; preds = %vector.memcheck, %.preheader221
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader221 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i ; 2 uses
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !185 ; 3 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.i ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !185 ; 3 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i ; 2 uses
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !185 ; 3 uses
  %i.xe = fmul float %i.xb, 7.152000e-01
  %i.xf = tail call float @llvm.fmuladd.f32(float %i.wz, float 2.126000e-01, float %i.xe)
  %i.xg = tail call float @llvm.fmuladd.f32(float %i.xd, float 7.220000e-02, float %i.xf)
  store float %i.xg, ptr %i.wy, align 4, !tbaa !185
  %i.xh = fmul float %i.xb, -3.854000e-01
  %i.xi = tail call float @llvm.fmuladd.f32(float %i.wz, float -1.146000e-01, float %i.xh)
  %i.xj = tail call float @llvm.fmuladd.f32(float %i.xd, float 5.000000e-01, float %i.xi)
  store float %i.xj, ptr %i.xa, align 4, !tbaa !185
  %i.xk = fmul float %i.xb, -4.542000e-01
  %i.xl = tail call float @llvm.fmuladd.f32(float %i.wz, float 5.000000e-01, float %i.xk)
  %i.xm = tail call float @llvm.fmuladd.f32(float %i.xd, float -4.580000e-02, float %i.xl)
  store float %i.xm, ptr %i.xc, align 4, !tbaa !185
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %.lr.ph211.preheader, label %.preheader221, !llvm.loop !240

._crit_edge212:                                   ; preds = %LossyDctEncoder_rleAc.exit, %.preheader161
  %.2159.lcssa = phi ptr [ %.1158214, %.preheader161 ], [ %.2.i, %LossyDctEncoder_rleAc.exit ] ; 2 uses
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next299, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge216, label %.preheader161, !llvm.loop !241

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %LossyDctEncoder_rleAc.exit
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %LossyDctEncoder_rleAc.exit ], [ 0, %.lr.ph211.preheader ] ; 2 uses
  %.0119209 = phi ptr [ %i.fy, %LossyDctEncoder_rleAc.exit ], [ %i.fw, %.lr.ph211.preheader ] ; 4 uses
  %.0120208 = phi ptr [ %i.fx, %LossyDctEncoder_rleAc.exit ], [ %i.fv, %.lr.ph211.preheader ] ; 4 uses
  %.2159207 = phi ptr [ %.2.i, %LossyDctEncoder_rleAc.exit ], [ %.1158214, %.lr.ph211.preheader ]
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv293
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !123 ; 22 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 32 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 64 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xo, i64 96 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 16 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 128 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xo, i64 160 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xo, i64 192 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xo, i64 224 ; 2 uses
  %.pre.i = load <4 x float>, ptr %i.xo, align 16, !tbaa !90 ; 2 uses
  %.pre196.i = load <4 x float>, ptr %i.xw, align 16, !tbaa !90 ; 2 uses
  %.pre197.i = load <4 x float>, ptr %i.xp, align 16, !tbaa !90 ; 2 uses
  %.pre198.i = load <4 x float>, ptr %i.xq, align 16, !tbaa !90 ; 2 uses
  %.pre199.i = load <4 x float>, ptr %i.xr, align 16, !tbaa !90 ; 2 uses
  %.pre200.i = load <4 x float>, ptr %i.xt, align 16, !tbaa !90 ; 2 uses
  %.pre201.i = load <4 x float>, ptr %i.xu, align 16, !tbaa !90 ; 2 uses
  %.pre202.i = load <4 x float>, ptr %i.xv, align 16, !tbaa !90 ; 2 uses
  %.pre203.i = load <4 x float>, ptr %i.xs, align 16, !tbaa !90 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 240 ; 2 uses
  %.pre204.i = load <4 x float>, ptr %.phi.trans.insert.i, align 16, !tbaa !90 ; 2 uses
  %.phi.trans.insert205.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 48 ; 2 uses
  %.pre206.i = load <4 x float>, ptr %.phi.trans.insert205.i, align 16, !tbaa !90 ; 2 uses
  %.phi.trans.insert207.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 80 ; 2 uses
  %.pre208.i = load <4 x float>, ptr %.phi.trans.insert207.i, align 16, !tbaa !90 ; 2 uses
  %.phi.trans.insert209.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 112 ; 2 uses
  %.pre210.i = load <4 x float>, ptr %.phi.trans.insert209.i, align 16, !tbaa !90 ; 2 uses
  %.phi.trans.insert211.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 144 ; 2 uses
  %.pre212.i = load <4 x float>, ptr %.phi.trans.insert211.i, align 16, !tbaa !90 ; 2 uses
  %.phi.trans.insert213.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 176 ; 2 uses
  %.pre214.i = load <4 x float>, ptr %.phi.trans.insert213.i, align 16, !tbaa !90 ; 2 uses
  %.phi.trans.insert215.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 208 ; 2 uses
  %.pre216.i = load <4 x float>, ptr %.phi.trans.insert215.i, align 16, !tbaa !90 ; 2 uses
  %i.xx = fadd <4 x float> %.pre196.i, %.pre.i    ; 2 uses
  %i.xy = fadd <4 x float> %.pre198.i, %.pre197.i ; 2 uses
  %i.xz = fadd <4 x float> %.pre200.i, %.pre199.i ; 2 uses
  %i.ya = fadd <4 x float> %.pre202.i, %.pre201.i ; 2 uses
  %i.yb = fsub <4 x float> %.pre.i, %.pre196.i    ; 2 uses
  %i.yc = fsub <4 x float> %.pre197.i, %.pre198.i ; 2 uses
  %i.yd = fsub <4 x float> %.pre199.i, %.pre200.i ; 2 uses
  %i.ye = fsub <4 x float> %.pre201.i, %.pre202.i ; 2 uses
  %i.yf = fadd <4 x float> %i.xz, %i.xx
  %i.yg = fadd <4 x float> %i.ya, %i.xy
  %i.yh = fmul <4 x float> %i.yf, splat (float f0x3F3504F3) ; 2 uses
  %i.yi = fmul <4 x float> %i.yg, splat (float f0x3F3504F3) ; 2 uses
  %i.yj = fadd <4 x float> %i.yi, %i.yh
  %i.yk = fsub <4 x float> %i.yh, %i.yi
  %i.yl = fmul <4 x float> %i.yj, splat (float 5.000000e-01) ; 2 uses
  %i.ym = fmul <4 x float> %i.yk, splat (float 5.000000e-01) ; 2 uses
  %i.yn = fsub <4 x float> %i.yc, %i.ye           ; 2 uses
  %i.yo = fsub <4 x float> %i.xx, %i.xz           ; 2 uses
  %i.yp = fmul <4 x float> %i.yn, splat (float f0x3E43EF15)
  %i.yq = fmul <4 x float> %i.yo, splat (float f0x3EEC835F)
  %i.yr = fadd <4 x float> %i.yp, %i.yq           ; 2 uses
  %i.ys = fmul <4 x float> %i.yo, splat (float f0x3E43EF15)
  %i.yt = fmul <4 x float> %i.yn, splat (float f0x3EEC835F)
  %i.yu = fsub <4 x float> %i.ys, %i.yt           ; 2 uses
  %i.yv = fsub <4 x float> %i.xy, %i.ya
  %i.yw = fmul <4 x float> %i.yv, splat (float f0x3F3504F3) ; 2 uses
  %i.yx = fadd <4 x float> %i.ye, %i.yc
  %i.yy = fmul <4 x float> %i.yx, splat (float f0xBF3504F3) ; 2 uses
  %i.yz = fsub <4 x float> %i.yb, %i.yw           ; 2 uses
  %i.za = fadd <4 x float> %i.yd, %i.yy           ; 2 uses
  %i.zb = fmul <4 x float> %i.yz, splat (float f0x3ED4DB31)
  %i.zc = fmul <4 x float> %i.za, splat (float f0x3E8E39DA)
  %i.zd = fsub <4 x float> %i.zb, %i.zc           ; 2 uses
  %i.ze = fmul <4 x float> %i.yz, splat (float f0x3E8E39DA)
  %i.zf = fmul <4 x float> %i.za, splat (float f0x3ED4DB31)
  %i.zg = fadd <4 x float> %i.ze, %i.zf           ; 2 uses
  %i.zh = fadd <4 x float> %i.yb, %i.yw           ; 2 uses
  %i.zi = fsub <4 x float> %i.yy, %i.yd           ; 2 uses
  %i.zj = fmul <4 x float> %i.zh, splat (float f0x3EFB14BE)
end_hunk_1
begin_hunk_2_@LossyDctDecoder_execute:bb.a
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gn, i64 80 ; 3 uses
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !tbaa !90
  %i.jn = getelementptr inbounds nuw i8, ptr %i.go, i64 80 ; 2 uses
  %i.jo = load <4 x float>, ptr %i.jn, align 16, !tbaa !90 ; 2 uses
  %i.jp = fmul <4 x float> %i.jo, splat (float 1.574700e+00)
  %i.jq = fadd <4 x float> %i.jk, %i.jp
  store <4 x float> %i.jq, ptr %i.jj, align 16, !tbaa !90
  %i.jr = load <4 x float>, ptr %i.jl, align 16, !tbaa !90
  %i.js = fmul <4 x float> %i.jr, splat (float 1.873000e-01)
  %i.jt = fmul <4 x float> %i.jo, splat (float 4.682000e-01)
  %i.ju = fsub <4 x float> %i.jk, %i.js
  %i.jv = fsub <4 x float> %i.ju, %i.jt
  store <4 x float> %i.jv, ptr %i.jl, align 16, !tbaa !90
  %i.jw = fmul <4 x float> %i.jm, splat (float 1.855600e+00)
  %i.jx = fadd <4 x float> %i.jk, %i.jw
  store <4 x float> %i.jx, ptr %i.jn, align 16, !tbaa !90
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gm, i64 96 ; 2 uses
  %i.jz = load <4 x float>, ptr %i.jy, align 16, !tbaa !90 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gn, i64 96 ; 3 uses
  %i.kb = load <4 x float>, ptr %i.ka, align 16, !tbaa !90
  %i.kc = getelementptr inbounds nuw i8, ptr %i.go, i64 96 ; 2 uses
  %i.kd = load <4 x float>, ptr %i.kc, align 16, !tbaa !90 ; 2 uses
  %i.ke = fmul <4 x float> %i.kd, splat (float 1.574700e+00)
  %i.kf = fadd <4 x float> %i.jz, %i.ke
  store <4 x float> %i.kf, ptr %i.jy, align 16, !tbaa !90
  %i.kg = load <4 x float>, ptr %i.ka, align 16, !tbaa !90
  %i.kh = fmul <4 x float> %i.kg, splat (float 1.873000e-01)
  %i.ki = fmul <4 x float> %i.kd, splat (float 4.682000e-01)
  %i.kj = fsub <4 x float> %i.jz, %i.kh
  %i.kk = fsub <4 x float> %i.kj, %i.ki
  store <4 x float> %i.kk, ptr %i.ka, align 16, !tbaa !90
  %i.kl = fmul <4 x float> %i.kb, splat (float 1.855600e+00)
  %i.km = fadd <4 x float> %i.jz, %i.kl
  store <4 x float> %i.km, ptr %i.kc, align 16, !tbaa !90
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gm, i64 112 ; 2 uses
  %i.ko = load <4 x float>, ptr %i.kn, align 16, !tbaa !90 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gn, i64 112 ; 3 uses
  %i.kq = load <4 x float>, ptr %i.kp, align 16, !tbaa !90
  %i.kr = getelementptr inbounds nuw i8, ptr %i.go, i64 112 ; 2 uses
  %i.ks = load <4 x float>, ptr %i.kr, align 16, !tbaa !90 ; 2 uses
  %i.kt = fmul <4 x float> %i.ks, splat (float 1.574700e+00)
  %i.ku = fadd <4 x float> %i.ko, %i.kt
  store <4 x float> %i.ku, ptr %i.kn, align 16, !tbaa !90
  %i.kv = load <4 x float>, ptr %i.kp, align 16, !tbaa !90
  %i.kw = fmul <4 x float> %i.kv, splat (float 1.873000e-01)
  %i.kx = fmul <4 x float> %i.ks, splat (float 4.682000e-01)
  %i.ky = fsub <4 x float> %i.ko, %i.kw
  %i.kz = fsub <4 x float> %i.ky, %i.kx
  store <4 x float> %i.kz, ptr %i.kp, align 16, !tbaa !90
  %i.la = fmul <4 x float> %i.kq, splat (float 1.855600e+00)
  %i.lb = fadd <4 x float> %i.ko, %i.la
  store <4 x float> %i.lb, ptr %i.kr, align 16, !tbaa !90
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gm, i64 128 ; 2 uses
  %i.ld = load <4 x float>, ptr %i.lc, align 16, !tbaa !90 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.gn, i64 128 ; 3 uses
  %i.lf = load <4 x float>, ptr %i.le, align 16, !tbaa !90
  %i.lg = getelementptr inbounds nuw i8, ptr %i.go, i64 128 ; 2 uses
  %i.lh = load <4 x float>, ptr %i.lg, align 16, !tbaa !90 ; 2 uses
  %i.li = fmul <4 x float> %i.lh, splat (float 1.574700e+00)
  %i.lj = fadd <4 x float> %i.ld, %i.li
  store <4 x float> %i.lj, ptr %i.lc, align 16, !tbaa !90
  %i.lk = load <4 x float>, ptr %i.le, align 16, !tbaa !90
  %i.ll = fmul <4 x float> %i.lk, splat (float 1.873000e-01)
  %i.lm = fmul <4 x float> %i.lh, splat (float 4.682000e-01)
  %i.ln = fsub <4 x float> %i.ld, %i.ll
  %i.lo = fsub <4 x float> %i.ln, %i.lm
  store <4 x float> %i.lo, ptr %i.le, align 16, !tbaa !90
  %i.lp = fmul <4 x float> %i.lf, splat (float 1.855600e+00)
  %i.lq = fadd <4 x float> %i.ld, %i.lp
  store <4 x float> %i.lq, ptr %i.lg, align 16, !tbaa !90
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gm, i64 144 ; 2 uses
  %i.ls = load <4 x float>, ptr %i.lr, align 16, !tbaa !90 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.gn, i64 144 ; 3 uses
  %i.lu = load <4 x float>, ptr %i.lt, align 16, !tbaa !90
  %i.lv = getelementptr inbounds nuw i8, ptr %i.go, i64 144 ; 2 uses
  %i.lw = load <4 x float>, ptr %i.lv, align 16, !tbaa !90 ; 2 uses
  %i.lx = fmul <4 x float> %i.lw, splat (float 1.574700e+00)
  %i.ly = fadd <4 x float> %i.ls, %i.lx
  store <4 x float> %i.ly, ptr %i.lr, align 16, !tbaa !90
  %i.lz = load <4 x float>, ptr %i.lt, align 16, !tbaa !90
  %i.ma = fmul <4 x float> %i.lz, splat (float 1.873000e-01)
  %i.mb = fmul <4 x float> %i.lw, splat (float 4.682000e-01)
  %i.mc = fsub <4 x float> %i.ls, %i.ma
  %i.md = fsub <4 x float> %i.mc, %i.mb
  store <4 x float> %i.md, ptr %i.lt, align 16, !tbaa !90
  %i.me = fmul <4 x float> %i.lu, splat (float 1.855600e+00)
  %i.mf = fadd <4 x float> %i.ls, %i.me
  store <4 x float> %i.mf, ptr %i.lv, align 16, !tbaa !90
  %i.mg = getelementptr inbounds nuw i8, ptr %i.gm, i64 160 ; 2 uses
  %i.mh = load <4 x float>, ptr %i.mg, align 16, !tbaa !90 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.gn, i64 160 ; 3 uses
  %i.mj = load <4 x float>, ptr %i.mi, align 16, !tbaa !90
  %i.mk = getelementptr inbounds nuw i8, ptr %i.go, i64 160 ; 2 uses
  %i.ml = load <4 x float>, ptr %i.mk, align 16, !tbaa !90 ; 2 uses
  %i.mm = fmul <4 x float> %i.ml, splat (float 1.574700e+00)
  %i.mn = fadd <4 x float> %i.mh, %i.mm
  store <4 x float> %i.mn, ptr %i.mg, align 16, !tbaa !90
  %i.mo = load <4 x float>, ptr %i.mi, align 16, !tbaa !90
  %i.mp = fmul <4 x float> %i.mo, splat (float 1.873000e-01)
  %i.mq = fmul <4 x float> %i.ml, splat (float 4.682000e-01)
  %i.mr = fsub <4 x float> %i.mh, %i.mp
  %i.ms = fsub <4 x float> %i.mr, %i.mq
  store <4 x float> %i.ms, ptr %i.mi, align 16, !tbaa !90
  %i.mt = fmul <4 x float> %i.mj, splat (float 1.855600e+00)
  %i.mu = fadd <4 x float> %i.mh, %i.mt
  store <4 x float> %i.mu, ptr %i.mk, align 16, !tbaa !90
  %i.mv = getelementptr inbounds nuw i8, ptr %i.gm, i64 176 ; 2 uses
  %i.mw = load <4 x float>, ptr %i.mv, align 16, !tbaa !90 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.gn, i64 176 ; 3 uses
  %i.my = load <4 x float>, ptr %i.mx, align 16, !tbaa !90
  %i.mz = getelementptr inbounds nuw i8, ptr %i.go, i64 176 ; 2 uses
  %i.na = load <4 x float>, ptr %i.mz, align 16, !tbaa !90 ; 2 uses
  %i.nb = fmul <4 x float> %i.na, splat (float 1.574700e+00)
  %i.nc = fadd <4 x float> %i.mw, %i.nb
  store <4 x float> %i.nc, ptr %i.mv, align 16, !tbaa !90
  %i.nd = load <4 x float>, ptr %i.mx, align 16, !tbaa !90
  %i.ne = fmul <4 x float> %i.nd, splat (float 1.873000e-01)
  %i.nf = fmul <4 x float> %i.na, splat (float 4.682000e-01)
  %i.ng = fsub <4 x float> %i.mw, %i.ne
  %i.nh = fsub <4 x float> %i.ng, %i.nf
  store <4 x float> %i.nh, ptr %i.mx, align 16, !tbaa !90
  %i.ni = fmul <4 x float> %i.my, splat (float 1.855600e+00)
  %i.nj = fadd <4 x float> %i.mw, %i.ni
  store <4 x float> %i.nj, ptr %i.mz, align 16, !tbaa !90
  %i.nk = getelementptr inbounds nuw i8, ptr %i.gm, i64 192 ; 2 uses
  %i.nl = load <4 x float>, ptr %i.nk, align 16, !tbaa !90 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.gn, i64 192 ; 3 uses
  %i.nn = load <4 x float>, ptr %i.nm, align 16, !tbaa !90
  %i.no = getelementptr inbounds nuw i8, ptr %i.go, i64 192 ; 2 uses
  %i.np = load <4 x float>, ptr %i.no, align 16, !tbaa !90 ; 2 uses
  %i.nq = fmul <4 x float> %i.np, splat (float 1.574700e+00)
  %i.nr = fadd <4 x float> %i.nl, %i.nq
  store <4 x float> %i.nr, ptr %i.nk, align 16, !tbaa !90
  %i.ns = load <4 x float>, ptr %i.nm, align 16, !tbaa !90
  %i.nt = fmul <4 x float> %i.ns, splat (float 1.873000e-01)
  %i.nu = fmul <4 x float> %i.np, splat (float 4.682000e-01)
  %i.nv = fsub <4 x float> %i.nl, %i.nt
  %i.nw = fsub <4 x float> %i.nv, %i.nu
  store <4 x float> %i.nw, ptr %i.nm, align 16, !tbaa !90
  %i.nx = fmul <4 x float> %i.nn, splat (float 1.855600e+00)
  %i.ny = fadd <4 x float> %i.nl, %i.nx
  store <4 x float> %i.ny, ptr %i.no, align 16, !tbaa !90
  %i.nz = getelementptr inbounds nuw i8, ptr %i.gm, i64 208 ; 2 uses
  %i.oa = load <4 x float>, ptr %i.nz, align 16, !tbaa !90 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gn, i64 208 ; 3 uses
  %i.oc = load <4 x float>, ptr %i.ob, align 16, !tbaa !90
  %i.od = getelementptr inbounds nuw i8, ptr %i.go, i64 208 ; 2 uses
  %i.oe = load <4 x float>, ptr %i.od, align 16, !tbaa !90 ; 2 uses
  %i.of = fmul <4 x float> %i.oe, splat (float 1.574700e+00)
  %i.og = fadd <4 x float> %i.oa, %i.of
  store <4 x float> %i.og, ptr %i.nz, align 16, !tbaa !90
  %i.oh = load <4 x float>, ptr %i.ob, align 16, !tbaa !90
  %i.oi = fmul <4 x float> %i.oh, splat (float 1.873000e-01)
  %i.oj = fmul <4 x float> %i.oe, splat (float 4.682000e-01)
  %i.ok = fsub <4 x float> %i.oa, %i.oi
  %i.ol = fsub <4 x float> %i.ok, %i.oj
  store <4 x float> %i.ol, ptr %i.ob, align 16, !tbaa !90
  %i.om = fmul <4 x float> %i.oc, splat (float 1.855600e+00)
  %i.on = fadd <4 x float> %i.oa, %i.om
  store <4 x float> %i.on, ptr %i.od, align 16, !tbaa !90
  %i.oo = getelementptr inbounds nuw i8, ptr %i.gm, i64 224 ; 2 uses
  %i.op = load <4 x float>, ptr %i.oo, align 16, !tbaa !90 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.gn, i64 224 ; 3 uses
  %i.or = load <4 x float>, ptr %i.oq, align 16, !tbaa !90
  %i.os = getelementptr inbounds nuw i8, ptr %i.go, i64 224 ; 2 uses
  %i.ot = load <4 x float>, ptr %i.os, align 16, !tbaa !90 ; 2 uses
  %i.ou = fmul <4 x float> %i.ot, splat (float 1.574700e+00)
  %i.ov = fadd <4 x float> %i.op, %i.ou
  store <4 x float> %i.ov, ptr %i.oo, align 16, !tbaa !90
  %i.ow = load <4 x float>, ptr %i.oq, align 16, !tbaa !90
  %i.ox = fmul <4 x float> %i.ow, splat (float 1.873000e-01)
  %i.oy = fmul <4 x float> %i.ot, splat (float 4.682000e-01)
  %i.oz = fsub <4 x float> %i.op, %i.ox
  %i.pa = fsub <4 x float> %i.oz, %i.oy
  store <4 x float> %i.pa, ptr %i.oq, align 16, !tbaa !90
  %i.pb = fmul <4 x float> %i.or, splat (float 1.855600e+00)
  %i.pc = fadd <4 x float> %i.op, %i.pb
  store <4 x float> %i.pc, ptr %i.os, align 16, !tbaa !90
  %i.pd = getelementptr inbounds nuw i8, ptr %i.gm, i64 240 ; 2 uses
  %i.pe = load <4 x float>, ptr %i.pd, align 16, !tbaa !90 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.gn, i64 240 ; 3 uses
  %i.pg = load <4 x float>, ptr %i.pf, align 16, !tbaa !90
  %i.ph = getelementptr inbounds nuw i8, ptr %i.go, i64 240 ; 2 uses
  %i.pi = load <4 x float>, ptr %i.ph, align 16, !tbaa !90 ; 2 uses
  %i.pj = fmul <4 x float> %i.pi, splat (float 1.574700e+00)
  %i.pk = fadd <4 x float> %i.pe, %i.pj
  store <4 x float> %i.pk, ptr %i.pd, align 16, !tbaa !90
  %i.pl = load <4 x float>, ptr %i.pf, align 16, !tbaa !90
  %i.pm = fmul <4 x float> %i.pl, splat (float 1.873000e-01)
  %i.pn = fmul <4 x float> %i.pi, splat (float 4.682000e-01)
  %i.po = fsub <4 x float> %i.pe, %i.pm
  %i.pp = fsub <4 x float> %i.po, %i.pn
  store <4 x float> %i.pp, ptr %i.pf, align 16, !tbaa !90
  %i.pq = fmul <4 x float> %i.pg, splat (float 1.855600e+00)
  %i.pr = fadd <4 x float> %i.pe, %i.pq
  store <4 x float> %i.pr, ptr %i.ph, align 16, !tbaa !90
  %i.ps = shl nuw nsw i64 %indvars.iv471, 6
  br label %.lr.ph382.split.us.preheader

.thread:                                          ; preds = %bb.aj
  %i.pt = load float, ptr %i.gn, align 4, !tbaa !185 ; 2 uses
  %i.pu = load float, ptr %i.go, align 4, !tbaa !185 ; 2 uses
  %i.pv = load float, ptr %i.gm, align 4, !tbaa !185 ; 3 uses
  %i.pw = tail call float @llvm.fmuladd.f32(float %i.pu, float 1.574700e+00, float %i.pv)
  store float %i.pw, ptr %i.gm, align 4, !tbaa !185
  %i.px = tail call float @llvm.fmuladd.f32(float %i.pt, float -1.873000e-01, float %i.pv)
  %3 = insertelement <2 x float> poison, float %i.pu, i64 0
  %4 = insertelement <2 x float> %3, float %i.pt, i64 1
  %5 = insertelement <2 x float> poison, float %i.px, i64 0
  %6 = insertelement <2 x float> %5, float %i.pv, i64 1
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %6) ; 2 uses
  %8 = extractelement <2 x float> %7, i64 0
  store float %8, ptr %i.gn, align 4, !tbaa !185
  %9 = extractelement <2 x float> %7, i64 1
  store float %9, ptr %i.go, align 4, !tbaa !185
  %i.py = shl nuw nsw i64 %indvars.iv471, 6
  br label %.lr.ph382.split.preheader

.lr.ph382:                                        ; preds = %.thread340
  %i.pz = shl nuw nsw i64 %indvars.iv471, 6       ; 2 uses
  br i1 %i.gl, label %.lr.ph382.split.us.preheader, label %.lr.ph382.split.preheader

.lr.ph382.split.preheader:                        ; preds = %.thread, %.lr.ph382
  %i.qa = phi i64 [ %i.py, %.thread ], [ %i.pz, %.lr.ph382 ]
  br label %.lr.ph382.split

.lr.ph382.split.us.preheader:                     ; preds = %.thread.thread, %.lr.ph382
  %i.qb = phi i64 [ %i.ps, %.thread.thread ], [ %i.pz, %.lr.ph382 ]
  br label %.lr.ph382.split.us

.lr.ph382.split.us:                               ; preds = %.lr.ph382.split.us.preheader, %.lr.ph382.split.us
  %indvars.iv466 = phi i64 [ 0, %.lr.ph382.split.us.preheader ], [ %indvars.iv.next467, %.lr.ph382.split.us ] ; 3 uses
  %i.qc = load ptr, ptr @convertFloatToHalf64, align 8, !tbaa !16
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv466
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !122
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.qe, i64 %i.qb
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv466
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !123
  tail call void %i.qc(ptr noundef %i.qf, ptr noundef %i.qh) #21, !callees !280
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next467, %wide.trip.count469
  br i1 %exitcond470.not, label %._crit_edge383, label %.lr.ph382.split.us, !llvm.loop !281

.lr.ph382.split:                                  ; preds = %.lr.ph382.split.preheader, %float_to_half.exit
  %indvars.iv461 = phi i64 [ 0, %.lr.ph382.split.preheader ], [ %indvars.iv.next462, %float_to_half.exit ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv461
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !122
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %i.qa ; 8 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv461
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !123
  %i.qn = load float, ptr %i.qm, align 32, !tbaa !185 ; 2 uses
  %i.qo = bitcast float %i.qn to i32
  %i.qp = tail call float @llvm.fabs.f32(float %i.qn)
  %i.qq = bitcast float %i.qp to i32              ; 10 uses
  %i.qr = lshr i32 %i.qo, 16                      ; 3 uses
  %i.qs = trunc nuw i32 %i.qr to i16
  %i.qt = and i16 %i.qs, -32768                   ; 3 uses
  %i.qu = icmp samesign ugt i32 %i.qq, 947912703
  br i1 %i.qu, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.lr.ph382.split
  %i.qv = icmp samesign ugt i32 %i.qq, 2139095039
  br i1 %i.qv, label %bb.al, label %bb.an, !prof !186

bb.al:                                            ; preds = %bb.ak
  %i.qw = or disjoint i16 %i.qt, 31744            ; 2 uses
  %i.qx = icmp eq i32 %i.qq, 2139095040
  br i1 %i.qx, label %float_to_half.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qy = lshr i32 %i.qq, 13
  %i.qz = and i32 %i.qy, 1023                     ; 2 uses
  %i.ra = icmp eq i32 %i.qz, 0
  %i.rb = zext i1 %i.ra to i16
  %i.rc = trunc nuw nsw i32 %i.qz to i16
  %i.rd = or i16 %i.rc, %i.rb
  %i.re = or disjoint i16 %i.rd, %i.qw
  br label %float_to_half.exit

bb.an:                                            ; preds = %bb.ak
  %i.rf = icmp samesign ugt i32 %i.qq, 1199566847
  br i1 %i.rf, label %bb.ao, label %bb.ap, !prof !186

bb.ao:                                            ; preds = %bb.an
  %i.rg = or disjoint i16 %i.qt, 31744
  br label %float_to_half.exit

bb.ap:                                            ; preds = %bb.an
  %i.rh = add nuw nsw i32 %i.qq, 134221823
  %i.ri = lshr i32 %i.qq, 13
  %i.rj = and i32 %i.ri, 1
  %i.rk = add nuw nsw i32 %i.rh, %i.rj
  %i.rl = lshr i32 %i.rk, 13
  %i.rm = and i32 %i.qr, 32768
  %i.rn = or i32 %i.rl, %i.rm
  %i.ro = trunc i32 %i.rn to i16
  br label %float_to_half.exit

bb.aq:                                            ; preds = %.lr.ph382.split
  %i.rp = icmp samesign ult i32 %i.qq, 855638017
  br i1 %i.rp, label %float_to_half.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.rq = lshr i32 %i.qq, 23                      ; 2 uses
  %i.rr = sub nuw nsw i32 126, %i.rq
  %i.rs = and i32 %i.qq, 8388607
  %i.rt = or disjoint i32 %i.rs, 8388608          ; 2 uses
  %i.ru = add nsw i32 %i.rq, -94
  %i.rv = shl i32 %i.rt, %i.ru                    ; 2 uses
  %i.rw = lshr i32 %i.rt, %i.rr                   ; 2 uses
  %i.rx = and i32 %i.qr, 32768
  %i.ry = or i32 %i.rw, %i.rx
  %i.rz = trunc nuw i32 %i.ry to i16              ; 2 uses
  %i.sa = icmp ugt i32 %i.rv, -2147483648
  br i1 %i.sa, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sb = icmp ne i32 %i.rv, -2147483648
  %i.sc = and i32 %i.rw, 1
  %.not.i.i303 = icmp eq i32 %i.sc, 0
  %or.cond.i.i = select i1 %i.sb, i1 true, i1 %.not.i.i303
  br i1 %or.cond.i.i, label %float_to_half.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.sd = add nuw i16 %i.rz, 1
  br label %float_to_half.exit

float_to_half.exit:                               ; preds = %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.as, %bb.at
  %.0.i.i = phi i16 [ %i.qt, %bb.aq ], [ %i.re, %bb.am ], [ %i.rg, %bb.ao ], [ %i.ro, %bb.ap ], [ %i.qw, %bb.al ], [ %i.sd, %bb.at ], [ %i.rz, %bb.as ]
  %i.se = insertelement <8 x i16> poison, i16 %.0.i.i, i64 0
  %i.sf = shufflevector <8 x i16> %i.se, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  store <8 x i16> %i.sf, ptr %i.qk, align 16, !tbaa !90
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  store <8 x i16> %i.sf, ptr %i.sg, align 16, !tbaa !90
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qk, i64 32
  store <8 x i16> %i.sf, ptr %i.sh, align 16, !tbaa !90
  %i.si = getelementptr inbounds nuw i8, ptr %i.qk, i64 48
  store <8 x i16> %i.sf, ptr %i.si, align 16, !tbaa !90
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qk, i64 64
  store <8 x i16> %i.sf, ptr %i.sj, align 16, !tbaa !90
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qk, i64 80
  store <8 x i16> %i.sf, ptr %i.sk, align 16, !tbaa !90
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qk, i64 96
  store <8 x i16> %i.sf, ptr %i.sl, align 16, !tbaa !90
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qk, i64 112
  store <8 x i16> %i.sf, ptr %i.sm, align 16, !tbaa !90
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond465.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count464
  br i1 %exitcond465.not, label %._crit_edge383, label %.lr.ph382.split, !llvm.loop !281

._crit_edge383:                                   ; preds = %float_to_half.exit, %.lr.ph382.split.us, %.lr.ph390
  %.2311.lcssa526531 = phi ptr [ %.1310385, %.lr.ph390 ], [ %i.eg, %.lr.ph382.split.us ], [ %i.eg, %float_to_half.exit ] ; 2 uses
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %.preheader355, label %.lr.ph390, !llvm.loop !282

.preheader355:                                    ; preds = %._crit_edge383, %bb.g
  %.4313.ph = phi ptr [ %.0309425, %bb.g ], [ %.2311.lcssa526531, %._crit_edge383 ]
  %.2272.ph = phi i32 [ 8, %bb.g ], [ %spec.select300, %._crit_edge383 ] ; 5 uses
  br i1 %i.ag, label %.lr.ph422, label %._crit_edge423

.lr.ph422:                                        ; preds = %.preheader355
  %i.sn = shl nuw nsw i32 %.0268426, 3
  %i.so = add nsw i32 %spec.select, %i.sn
  %i.sp = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.sq = icmp slt i32 %spec.select, 1
  %i.sr = icmp sgt i32 %.2272.ph, 0
  %i.ss = sext i32 %.2272.ph to i64
  %i.st = shl nsw i64 %i.ss, 1
  %i.su = sext i32 %i.so to i64                   ; 3 uses
  %brmerge = select i1 %.not297, i1 true, i1 %i.sq
  %xtraiter578 = and i32 %.2272.ph, 3             ; 3 uses
  %i.sv = icmp ult i32 %.2272.ph, 4
  %unroll_iter582 = and i32 %.2272.ph, 2147483644
  %lcmp.mod580.not = icmp eq i32 %xtraiter578, 0
  %lcmp.mod581 = icmp ne i32 %xtraiter578, 0
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph422, %.loopexit352
  %indvars.iv490 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next491, %.loopexit352 ] ; 7 uses
  %i.sw = load ptr, ptr %i.cg, align 8, !tbaa !172
  %.not296 = icmp eq ptr %i.sw, null
  br i1 %.not296, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.sp, label %.lr.ph402, label %.loopexit352

.lr.ph402:                                        ; preds = %bb.av
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv490
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !123
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 392
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv490
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !122
  br i1 %i.ch, label %.lr.ph398, label %.loopexit353

.lr.ph398:                                        ; preds = %.lr.ph402, %._crit_edge399
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %._crit_edge399 ], [ %indvars.iv477, %.lr.ph402 ] ; 3 uses
  %i.tc = load ptr, ptr %i.sz, align 8, !tbaa !115
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %indvars.iv479
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !97
  %i.tf = shl i64 %indvars.iv479, 3
  %i.tg = and i64 %i.tf, 56
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.tb, i64 %i.tg
  br label %bb.aw

._crit_edge399:                                   ; preds = %bb.aw
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.ti = icmp slt i64 %indvars.iv.next480, %i.su
  br i1 %i.ti, label %.lr.ph398, label %.loopexit353, !llvm.loop !283

bb.aw:                                            ; preds = %.lr.ph398, %bb.aw
  %.0282396 = phi i32 [ 0, %.lr.ph398 ], [ %i.vi, %bb.aw ]
  %.0283395 = phi ptr [ %i.th, %.lr.ph398 ], [ %i.vh, %bb.aw ] ; 10 uses
  %.0284394 = phi ptr [ %i.te, %.lr.ph398 ], [ %i.vg, %bb.aw ] ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.0283395, i64 2048
end_hunk_2
begin_hunk_3_@interleaveByte2:bb.a
  %i.go = icmp slt i32 %i.gn, %3
  br i1 %i.go, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %._crit_edge
  %i.gp = sext i32 %i.gn to i64                   ; 10 uses
  %wide.trip.count157 = sext i32 %3 to i64        ; 9 uses
  %i.gq = sub nsw i64 %wide.trip.count157, %i.gp  ; 4 uses
  %min.iters.check = icmp ult i64 %i.gq, 4
  br i1 %min.iters.check, label %.lr.ph133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gr = shl nsw i64 %i.gp, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.gr  ; 2 uses
  %i.gs = shl nsw i64 %wide.trip.count157, 1
  %scevgep193 = getelementptr i8, ptr %0, i64 %i.gs ; 2 uses
  %scevgep194 = getelementptr i8, ptr %1, i64 %i.gp
  %scevgep195 = getelementptr i8, ptr %1, i64 %wide.trip.count157
  %scevgep196 = getelementptr i8, ptr %2, i64 %i.gp
  %scevgep197 = getelementptr i8, ptr %2, i64 %wide.trip.count157
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict = and i1 %bound0, %bound1
  %bound0198 = icmp ult ptr %scevgep, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx = or i1 %found.conflict, %found.conflict200
  br i1 %conflict.rdx, label %.lr.ph133.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check201 = icmp ult i64 %i.gq, 16
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count157, 15     ; 2 uses
  %n.vec = sub nuw nsw i64 %i.gq, %n.mod.vf       ; 3 uses
  %i.gt = add nsw i64 %n.vec, %i.gp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gu = add i64 %index, %i.gp                   ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %1, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %wide.load = load <8 x i8>, ptr %i.gv, align 1, !tbaa !90, !alias.scope !322
  %wide.load202 = load <8 x i8>, ptr %i.gw, align 1, !tbaa !90, !alias.scope !322
  %i.gx = shl nsw i64 %i.gu, 1
  %i.gy = shl i64 %i.gu, 1
  %i.gz = getelementptr inbounds i8, ptr %0, i64 %i.gx
  %i.ha = getelementptr i8, ptr %0, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ha, i64 16
  %i.hc = getelementptr inbounds i8, ptr %2, i64 %i.gu ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %wide.load203 = load <8 x i8>, ptr %i.hc, align 1, !tbaa !90, !alias.scope !325
  %wide.load204 = load <8 x i8>, ptr %i.hd, align 1, !tbaa !90, !alias.scope !325
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load203, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.gz, align 1, !tbaa !90, !alias.scope !327, !noalias !329
  %interleaved.vec205 = shufflevector <8 x i8> %wide.load202, <8 x i8> %wide.load204, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec205, ptr %i.hb, align 1, !tbaa !90, !alias.scope !327, !noalias !329
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !330

middle.block:                                     ; preds = %vector.body
  %i.hf = and i32 %3, 15
  %cmp.n = icmp eq i32 %i.hf, 0
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 4
  br i1 %min.epilog.iters.check, label %.lr.ph133.preheader, label %vec.epilog.ph, !prof !305

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf206 = and i64 %wide.trip.count157, 3
  %n.vec207 = sub nsw i64 %i.gq, %n.mod.vf206     ; 2 uses
  %i.hg = add nsw i64 %n.vec207, %i.gp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index208 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next212, %vec.epilog.vector.body ] ; 2 uses
  %i.hh = add i64 %index208, %i.gp                ; 3 uses
  %i.hi = getelementptr inbounds i8, ptr %1, i64 %i.hh
  %wide.load209 = load <4 x i8>, ptr %i.hi, align 1, !tbaa !90, !alias.scope !322
  %i.hj = shl nsw i64 %i.hh, 1
  %i.hk = getelementptr inbounds i8, ptr %0, i64 %i.hj
  %i.hl = getelementptr inbounds i8, ptr %2, i64 %i.hh
  %wide.load210 = load <4 x i8>, ptr %i.hl, align 1, !tbaa !90, !alias.scope !325
  %interleaved.vec211 = shufflevector <4 x i8> %wide.load209, <4 x i8> %wide.load210, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec211, ptr %i.hk, align 1, !tbaa !90, !alias.scope !327, !noalias !329
  %index.next212 = add nuw i64 %index208, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.hm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !331

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hn = and i32 %3, 3
  %cmp.n213 = icmp eq i32 %i.hn, 0
  br i1 %cmp.n213, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv154.ph = phi i64 [ %i.gp, %iter.check ], [ %i.gp, %vector.memcheck ], [ %i.gt, %vec.epilog.iter.check ], [ %i.hg, %vec.epilog.middle.block ] ; 7 uses
  %i.ho = sub nsw i64 %wide.trip.count157, %indvars.iv154.ph
  %xtraiter = and i64 %i.ho, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph133.prol.loopexit, label %.lr.ph133.prol

.lr.ph133.prol:                                   ; preds = %.lr.ph133.preheader
  %i.hp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv154.ph
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !90
  %i.hr = shl nsw i64 %indvars.iv154.ph, 1
  %i.hs = getelementptr inbounds i8, ptr %0, i64 %i.hr ; 2 uses
  store i8 %i.hq, ptr %i.hs, align 1, !tbaa !90
  %i.ht = getelementptr inbounds i8, ptr %2, i64 %indvars.iv154.ph
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !90
  %i.hv = getelementptr i8, ptr %i.hs, i64 1
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !90
  %indvars.iv.next155.prol = add nsw i64 %indvars.iv154.ph, 1
  br label %.lr.ph133.prol.loopexit

.lr.ph133.prol.loopexit:                          ; preds = %.lr.ph133.prol, %.lr.ph133.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv154.ph, %.lr.ph133.preheader ], [ %indvars.iv.next155.prol, %.lr.ph133.prol ]
  %i.hw = add nsw i64 %wide.trip.count157, -1
  %i.hx = icmp eq i64 %indvars.iv154.ph, %i.hw
  br i1 %i.hx, label %.loopexit, label %.lr.ph133

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.hz = load <16 x i8>, ptr %i.hy, align 1, !tbaa !90 ; 2 uses
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ib = load <16 x i8>, ptr %i.ia, align 1, !tbaa !90 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.id = shufflevector <16 x i8> %i.hz, <16 x i8> %i.ib, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.id, ptr %i.ic, align 1, !tbaa !90
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.if = shufflevector <16 x i8> %i.hz, <16 x i8> %i.ib, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.if, ptr %i.ie, align 1, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !332

.lr.ph133:                                        ; preds = %.lr.ph133.prol.loopexit, %.lr.ph133
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %.lr.ph133 ], [ %indvars.iv154.unr, %.lr.ph133.prol.loopexit ] ; 5 uses
  %i.ig = getelementptr inbounds i8, ptr %1, i64 %indvars.iv154
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !90
  %i.ii = shl nsw i64 %indvars.iv154, 1
  %i.ij = getelementptr inbounds i8, ptr %0, i64 %i.ii ; 2 uses
  store i8 %i.ih, ptr %i.ij, align 1, !tbaa !90
  %i.ik = getelementptr inbounds i8, ptr %2, i64 %indvars.iv154
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !90
  %i.im = getelementptr i8, ptr %i.ij, i64 1
  store i8 %i.il, ptr %i.im, align 1, !tbaa !90
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next155
  %i.io = load i8, ptr %i.in, align 1, !tbaa !90
  %i.ip = shl nsw i64 %indvars.iv.next155, 1
  %i.iq = getelementptr inbounds i8, ptr %0, i64 %i.ip ; 2 uses
  store i8 %i.io, ptr %i.iq, align 1, !tbaa !90
  %i.ir = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next155
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !90
  %i.it = getelementptr i8, ptr %i.iq, i64 1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !90
  %indvars.iv.next155.1 = add nsw i64 %indvars.iv154, 2 ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %indvars.iv.next155.1, %wide.trip.count157
  br i1 %exitcond158.not.1, label %.loopexit, label %.lr.ph133, !llvm.loop !333

.loopexit:                                        ; preds = %.lr.ph133.prol.loopexit, %.lr.ph133, %.lr.ph144.prol.loopexit, %.lr.ph144, %.lr.ph150.prol.loopexit, %.lr.ph150, %middle.block, %vec.epilog.middle.block, %middle.block244, %vec.epilog.middle.block260, %middle.block292, %vec.epilog.middle.block308, %bb.c, %._crit_edge, %._crit_edge141, %._crit_edge147, %._crit_edge137
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.ctpop.v2i16(<2 x i16>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind memory(none) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 54}
!9 = !{!"_exr_encode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !11, i64 96, !11, i64 104, !10, i64 112, !10, i64 120, !15, i64 128, !10, i64 136, !11, i64 144, !10, i64 152, !10, i64 160, !11, i64 168, !10, i64 176, !10, i64 184, !11, i64 192, !10, i64 200, !11, i64 208, !10, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !6, i64 272}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!"p1 _ZTS19_priv_exr_context_t", !11, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!15 = !{!"p1 int", !11, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{i64 2152673057, i64 2152673139, i64 2152673220}
!18 = !{i64 2152673433, i64 2152673515, i64 2152673596}
!19 = !{i64 5169670}
!20 = !{!21, !5, i64 16}
!21 = !{!"_DwaCompressor", !22, i64 0, !23, i64 8, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 32, !5, i64 40, !5, i64 44, !24, i64 48, !25, i64 56, !11, i64 64, !26, i64 72, !10, i64 80, !27, i64 88, !10, i64 96, !27, i64 104, !10, i64 112, !27, i64 120, !10, i64 128, !6, i64 136, !6, i64 160, !11, i64 184, !11, i64 192, !5, i64 200, !28, i64 204}
!22 = !{!"p1 _ZTS20_exr_encode_pipeline", !11, i64 0}
!23 = !{!"p1 _ZTS20_exr_decode_pipeline", !11, i64 0}
!24 = !{!"p1 _ZTS12_ChannelData", !11, i64 0}
!25 = !{!"p1 _ZTS14_CscChannelSet", !11, i64 0}
!26 = !{!"p1 _ZTS11_Classifier", !11, i64 0}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!"float", !6, i64 0}
!29 = !{!21, !22, i64 0}
!30 = !{!21, !23, i64 8}
!31 = !{!9, !13, i64 24}
!32 = !{!33, !11, i64 88}
!33 = !{!"_priv_exr_context_t", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !34, i64 8, !34, i64 24, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !28, i64 124, !11, i64 128, !11, i64 136, !11, i64 144, !10, i64 152, !11, i64 160, !11, i64 168, !10, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !35, i64 200, !40, i64 464, !41, i64 472, !36, i64 480, !6, i64 504, !6, i64 544, !6, i64 545, !6, i64 546, !5, i64 548}
!34 = !{!"", !5, i64 0, !5, i64 4, !27, i64 8}
!35 = !{!"_priv_exr_part_t", !5, i64 0, !5, i64 4, !36, i64 8, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !38, i64 144, !38, i64 160, !5, i64 176, !5, i64 180, !5, i64 184, !28, i64 188, !5, i64 192, !5, i64 196, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !10, i64 232, !12, i64 240, !12, i64 242, !5, i64 244, !10, i64 248, !6, i64 256}
!36 = !{!"exr_attribute_list", !5, i64 0, !5, i64 4, !37, i64 8, !37, i64 16}
!37 = !{!"any p2 pointer", !11, i64 0}
!38 = !{!"", !39, i64 0, !39, i64 8}
!39 = !{!"", !5, i64 0, !5, i64 4}
!40 = !{!"p1 _ZTS16_priv_exr_part_t", !11, i64 0}
!41 = !{!"p2 _ZTS16_priv_exr_part_t", !37, i64 0}
!42 = !{!33, !11, i64 96}
!43 = !{!21, !11, i64 184}
!44 = !{!21, !11, i64 192}
!45 = !{!9, !12, i64 16}
!46 = !{!21, !24, i64 48}
!47 = !{!21, !5, i64 40}
!48 = !{!9, !5, i64 44}
!49 = !{!21, !5, i64 20}
!50 = !{!9, !5, i64 36}
!51 = !{!5, !5, i64 0}
!52 = !{!9, !5, i64 40}
!53 = !{!9, !5, i64 48}
!54 = !{!9, !5, i64 20}
!55 = !{!9, !11, i64 8}
!56 = !{!57, !11, i64 448}
!57 = !{!"_ChannelData", !58, i64 0, !11, i64 448, !27, i64 456, !27, i64 464, !6, i64 472, !6, i64 504, !10, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !6, i64 556}
!58 = !{!"_DctCoderChannelData", !6, i64 0, !6, i64 256, !59, i64 384, !60, i64 392, !10, i64 400, !10, i64 408, !5, i64 416, !6, i64 420}
!59 = !{!"p1 short", !11, i64 0}
!60 = !{!"p2 omnipotent char", !37, i64 0}
!61 = !{!57, !5, i64 548}
!62 = !{!63, !12, i64 26}
!63 = !{!"", !27, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 25, !12, i64 26, !12, i64 28, !12, i64 30, !5, i64 32, !5, i64 36, !6, i64 40}
!64 = !{!58, !5, i64 416}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!68, !13, i64 24}
!68 = !{!"_exr_decode_pipeline", !10, i64 0, !11, i64 8, !12, i64 16, !12, i64 18, !5, i64 20, !13, i64 24, !14, i64 32, !5, i64 96, !5, i64 100, !10, i64 104, !11, i64 112, !11, i64 120, !10, i64 128, !11, i64 136, !10, i64 144, !11, i64 152, !10, i64 160, !15, i64 168, !10, i64 176, !11, i64 184, !10, i64 192, !11, i64 200, !10, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !6, i64 264}
!69 = !{!68, !12, i64 16}
!70 = !{!68, !11, i64 8}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!68, !5, i64 44}
!74 = !{!68, !5, i64 36}
!75 = !{!68, !5, i64 40}
!76 = !{!68, !5, i64 48}
!77 = distinct !{!77, !66}
!78 = !{!10, !10, i64 0}
!79 = !{!21, !26, i64 72}
!80 = !{!21, !10, i64 80}
!81 = !{!9, !10, i64 184}
!82 = !{!9, !11, i64 168}
!83 = !{!84, !5, i64 12}
!84 = !{!"_Classifier", !27, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 20, !12, i64 22}
!85 = !{!63, !27, i64 0}
!86 = !{!84, !12, i64 20}
!87 = !{!84, !27, i64 0}
!88 = !{!84, !5, i64 16}
!89 = !{!84, !5, i64 8}
!90 = !{!6, !6, i64 0}
!91 = distinct !{!91, !66}
!92 = distinct !{!92, !66, !93}
!93 = !{!"llvm.loop.unswitch.partial.disable"}
!94 = !{!12, !12, i64 0}
!95 = !{!21, !27, i64 88}
!96 = !{!21, !27, i64 104}
!97 = !{!27, !27, i64 0}
!98 = !{!63, !5, i64 12}
!99 = !{!63, !5, i64 8}
!100 = !{!63, !6, i64 25}
!101 = !{!57, !10, i64 536}
!102 = !{!57, !27, i64 456}
!103 = !{!57, !27, i64 464}
!104 = distinct !{!104, !66}
!105 = distinct !{!105, !72}
!106 = !{!57, !5, i64 552}
!107 = distinct !{!107, !66}
!108 = !{!57, !5, i64 544}
!109 = distinct !{!109, !72}
!110 = !{!9, !11, i64 104}
!111 = distinct !{!111, !66}
!112 = !{!63, !5, i64 20}
!113 = !{!58, !10, i64 408}
!114 = !{!58, !10, i64 400}
!115 = !{!58, !60, i64 392}
!116 = !{ptr @DctCoderChannelData_push_row}
!117 = distinct !{!117, !66}
!118 = distinct !{!118, !66, !93}
!119 = !{!21, !5, i64 44}
!120 = !{!21, !25, i64 56}
!121 = !{!21, !28, i64 204}
!122 = !{!59, !59, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"p1 _ZTS20_DctCoderChannelData", !11, i64 0}
!125 = !{!126, !5, i64 48}
!126 = !{!"_LossyDctEncoder", !59, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !5, i64 48, !5, i64 52, !5, i64 56, !28, i64 60, !27, i64 64, !27, i64 72, !6, i64 80, !6, i64 336, !6, i64 464, !6, i64 720}
!127 = distinct !{!127, !66}
!128 = distinct !{!128, !66}
!129 = !{!63, !6, i64 24}
!130 = distinct !{!130, !66, !93}
!131 = distinct !{!131, !66}
!132 = distinct !{!132, !66}
!133 = distinct !{!133, !66}
!134 = distinct !{!134, !66}
!135 = !{!9, !11, i64 192}
!136 = !{!9, !10, i64 200}
!137 = !{!9, !10, i64 120}
!138 = !{!9, !10, i64 176}
!139 = !{!21, !5, i64 200}
!140 = !{!21, !27, i64 120}
!141 = !{!21, !10, i64 128}
!142 = !{!9, !10, i64 112}
!143 = !{!21, !11, i64 64}
!144 = distinct !{null}
!145 = distinct !{!145, !66}
!146 = !{!84, !12, i64 22}
!147 = distinct !{null}
!148 = distinct !{!148, !66}
!149 = !{!68, !10, i64 104}
!150 = distinct !{!150, !66}
!151 = distinct !{null, null}
!152 = distinct !{null, null}
!153 = distinct !{!153, !66}
!154 = distinct !{null}
!155 = distinct !{!155, !66}
!156 = !{!68, !11, i64 136}
!157 = !{!68, !10, i64 144}
!158 = !{!21, !10, i64 96}
!159 = !{!68, !11, i64 184}
!160 = !{!68, !10, i64 192}
!161 = !{!21, !10, i64 112}
!162 = distinct !{!162, !72}
!163 = distinct !{!163, !66}
!164 = !{!57, !5, i64 416}
!165 = distinct !{!165, !66}
!166 = distinct !{!166, !66, !93}
!167 = !{!168, !27, i64 16}
!168 = !{!"_LossyDctDecoder", !10, i64 0, !10, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !10, i64 40, !59, i64 48, !5, i64 56, !5, i64 60, !6, i64 64, !5, i64 88, !6, i64 92}
!169 = !{!168, !27, i64 24}
!170 = !{!168, !27, i64 32}
end_hunk_3
