Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/deflate?download=true
inline.NumInlined: 29
inline.NumDeleted: 3
begin_hunk_0_@deflate:bb.a
  %.1 = phi i32 [ %i.se, %flush_pending.exit399._crit_edge ], [ %.0334, %bb.bg ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 56
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !87
  %i.sm = load i32, ptr %i.qu, align 8, !tbaa !111 ; 2 uses
  %i.sn = add i32 %i.sm, 1
  store i32 %i.sn, ptr %i.qu, align 8, !tbaa !111
  %i.so = zext i32 %i.sm to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !8   ; 2 uses
  %i.sr = load ptr, ptr %i.qs, align 8, !tbaa !42
  %i.ss = add i32 %i.si, 1
  store i32 %i.ss, ptr %i.qo, align 8, !tbaa !52
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.pre-phi444
  store i8 %i.sq, ptr %i.st, align 1, !tbaa !8
  %.not381 = icmp eq i8 %i.sq, 0
  br i1 %.not381, label %bb.bn, label %bb.bg, !llvm.loop !107

bb.bn:                                            ; preds = %flush_pending.exit399, %bb.bm
  %.2 = phi i32 [ %.1, %bb.bm ], [ %i.se, %flush_pending.exit399 ] ; 3 uses
  %i.su = phi i1 [ true, %bb.bm ], [ false, %flush_pending.exit399 ]
  %i.sv = load ptr, ptr %i.qk, align 8, !tbaa !29
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 68
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !84
  %.not382 = icmp eq i32 %i.sx, 0
  br i1 %.not382, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.sy = load i32, ptr %i.qo, align 8, !tbaa !52 ; 2 uses
  %i.sz = icmp ugt i32 %i.sy, %.2
  br i1 %i.sz, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ta = load i64, ptr %i.qr, align 8, !tbaa !54
  %i.tb = load ptr, ptr %i.qs, align 8, !tbaa !42
  %i.tc = zext i32 %.2 to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.tc
  %i.te = sub nuw i32 %i.sy, %.2
  %i.tf = tail call i64 @crc32(i64 noundef %i.ta, ptr noundef %i.td, i32 noundef %i.te) #11
  store i64 %i.tf, ptr %i.qr, align 8, !tbaa !54
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  br i1 %i.su, label %.thread415.sink.split, label %thread-pre-split412

thread-pre-split412:                              ; preds = %bb.bq
  %.pr413 = load i32, ptr %i.m, align 8, !tbaa !44
  br label %bb.br

bb.br:                                            ; preds = %thread-pre-split412, %bb.be
  %i.tg = phi i32 [ %.pr413, %thread-pre-split412 ], [ %.pr408, %bb.be ]
  %i.th = icmp eq i32 %i.tg, 103
  br i1 %i.th, label %.thread415, label %bb.bu

.thread415.sink.split:                            ; preds = %.thread410, %bb.bq
  store i32 103, ptr %i.m, align 8, !tbaa !44
  br label %.thread415

.thread415:                                       ; preds = %.thread415.sink.split, %bb.br
  %i.ti = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !29
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 68
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !84
  %.not383 = icmp eq i32 %i.tl, 0
  br i1 %.not383, label %.sink.split, label %bb.bs

bb.bs:                                            ; preds = %.thread415
  %i.tm = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !52 ; 2 uses
  %i.to = add i32 %i.tn, 2
  %i.tp = zext i32 %i.to to i64
  %i.tq = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !43
  %i.ts = icmp ult i64 %i.tr, %i.tp
  br i1 %i.ts, label %bb.bt, label %.thread473

bb.bt:                                            ; preds = %bb.bs
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %.pre435 = load i32, ptr %i.tm, align 8, !tbaa !52 ; 2 uses
  %.pre436 = load i64, ptr %i.tq, align 8, !tbaa !43
  %.pre441 = add i32 %.pre435, 2
  %.pre442 = zext i32 %.pre441 to i64
  %i.tt = icmp ult i64 %.pre436, %.pre442
  br i1 %i.tt, label %bb.bu, label %.thread473

.thread473:                                       ; preds = %bb.bs, %bb.bt
  %i.tu = phi i32 [ %.pre435, %bb.bt ], [ %i.tn, %bb.bs ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !54
  %i.tx = trunc i64 %i.tw to i8
  %i.ty = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !42
  %i.ua = add i32 %i.tu, 1
  store i32 %i.ua, ptr %i.tm, align 8, !tbaa !52
  %i.ub = zext i32 %i.tu to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.ub
  store i8 %i.tx, ptr %i.uc, align 1, !tbaa !8
  %i.ud = load i64, ptr %i.tv, align 8, !tbaa !54
  %i.ue = lshr i64 %i.ud, 8
  %i.uf = trunc i64 %i.ue to i8
  %i.ug = load ptr, ptr %i.ty, align 8, !tbaa !42
  %i.uh = load i32, ptr %i.tm, align 8, !tbaa !52 ; 2 uses
  %i.ui = add i32 %i.uh, 1
  store i32 %i.ui, ptr %i.tm, align 8, !tbaa !52
  %i.uj = zext i32 %i.uh to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uj
  store i8 %i.uf, ptr %i.uk, align 1, !tbaa !8
  %i.ul = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %i.ul, ptr %i.tv, align 8, !tbaa !54
  br label %.sink.split

.sink.split:                                      ; preds = %.thread415, %.thread473, %.thread416
  store i32 113, ptr %i.m, align 8, !tbaa !44
  br label %bb.bu

bb.bu:                                            ; preds = %.sink.split, %bb.bt, %bb.br
  %i.um = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 24 uses
  %i.un = load i32, ptr %i.um, align 8, !tbaa !52
  %.not385 = icmp eq i32 %i.un, 0
  br i1 %.not385, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.uo = load ptr, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.uo) #11
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 40 ; 3 uses
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !52
  %i.ur = load i32, ptr %i.s, align 8, !tbaa !82  ; 2 uses
  %spec.select.i400 = tail call i32 @llvm.umin.i32(i32 %i.uq, i32 %i.ur) ; 5 uses
  %i.us = icmp eq i32 %spec.select.i400, 0
  br i1 %i.us, label %flush_pending.exit401, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ut = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uo, i64 32 ; 4 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !53
  %i.uw = zext i32 %spec.select.i400 to i64       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ut, ptr align 1 %i.uv, i64 %i.uw, i1 false)
  %i.ux = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uw
  store ptr %i.uy, ptr %i.f, align 8, !tbaa !81
  %i.uz = load ptr, ptr %i.uu, align 8, !tbaa !53
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.uw
  store ptr %i.va, ptr %i.uu, align 8, !tbaa !53
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !89
  %i.vd = add i64 %i.vc, %i.uw
  store i64 %i.vd, ptr %i.vb, align 8, !tbaa !89
  %i.ve = load i32, ptr %i.s, align 8, !tbaa !82
  %i.vf = sub i32 %i.ve, %spec.select.i400        ; 3 uses
  store i32 %i.vf, ptr %i.s, align 8, !tbaa !82
  %i.vg = load i32, ptr %i.up, align 8, !tbaa !52 ; 2 uses
  %i.vh = sub i32 %i.vg, %spec.select.i400
  store i32 %i.vh, ptr %i.up, align 8, !tbaa !52
  %i.vi = icmp eq i32 %i.vg, %spec.select.i400
  br i1 %i.vi, label %bb.bx, label %flush_pending.exit401

bb.bx:                                            ; preds = %bb.bw
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !42
  store ptr %i.vk, ptr %i.uu, align 8, !tbaa !53
  br label %flush_pending.exit401

flush_pending.exit401:                            ; preds = %bb.bv, %bb.bw, %bb.bx
  %i.vl = phi i32 [ %i.ur, %bb.bv ], [ %i.vf, %bb.bw ], [ %i.vf, %bb.bx ]
  %i.vm = icmp eq i32 %i.vl, 0
  br i1 %i.vm, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %flush_pending.exit401
  store i32 -1, ptr %i.x, align 8, !tbaa !55
  br label %.critedge

bb.bz:                                            ; preds = %bb.bu
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !75
  %i.vp = icmp eq i32 %i.vo, 0
  br i1 %i.vp, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.vq = shl nuw nsw i32 %1, 1
  %i.vr = icmp sgt i32 %1, 4
  %.neg = select i1 %i.vr, i32 -9, i32 0
  %i.vs = add nsw i32 %.neg, %i.vq
  %i.vt = shl i32 %i.y, 1
  %i.vu = icmp sgt i32 %i.y, 4
  %.neg386 = select i1 %i.vu, i32 -9, i32 0
  %i.vv = add i32 %.neg386, %i.vt
  %i.vw = icmp sle i32 %i.vs, %i.vv
  %or.cond7 = and i1 %i.p, %i.vw
  br i1 %or.cond7, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.vx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !45
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.vx, ptr %i.vy, align 8, !tbaa !14
  br label %.critedge

bb.cc:                                            ; preds = %bb.bz, %bb.ca, %flush_pending.exit401
  %i.vz = load i32, ptr %i.m, align 8, !tbaa !44
  %i.wa = icmp eq i32 %i.vz, 666                  ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !75
  %.not387 = icmp eq i32 %i.wc, 0
  br i1 %.not387, label %.thread475, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.wa, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  %i.wd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @z_errmsg, i64 56), align 8, !tbaa !45
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.wd, ptr %i.we, align 8, !tbaa !14
  br label %.critedge

.thread475:                                       ; preds = %bb.cc
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !69
  %.not389 = icmp eq i32 %i.wg, 0
  br i1 %.not389, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %.thread475
  %.not390 = icmp eq i32 %1, 0
  br i1 %.not390, label %.critedge, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.wa, label %bb.cy, label %bb.ch

bb.ch:                                            ; preds = %bb.cd, %bb.cg, %.thread475
  %i.wh = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !49
  switch i32 %i.wi, label %bb.ck [
    i32 2, label %bb.ci
    i32 3, label %bb.cj
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.wj = tail call fastcc i32 @deflate_huff(ptr noundef %i.c, i32 noundef %1)
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %i.wk = tail call fastcc i32 @deflate_rle(ptr noundef %i.c, i32 noundef %1)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ch
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !48
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [16 x i8], ptr @configuration_table, i64 %i.wn
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !80
  %i.wr = tail call i32 %i.wq(ptr noundef nonnull %i.c, i32 noundef %1) #11
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %bb.ci
  %i.ws = phi i32 [ %i.wj, %bb.ci ], [ %i.wk, %bb.cj ], [ %i.wr, %bb.ck ] ; 3 uses
  %i.wt = and i32 %i.ws, -2
  %or.cond9 = icmp eq i32 %i.wt, 2
  br i1 %or.cond9, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 666, ptr %i.m, align 8, !tbaa !44
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cl, %bb.cm
  %i.wu = and i32 %i.ws, -3
  %or.cond11 = icmp eq i32 %i.wu, 0
  br i1 %or.cond11, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.wv = load i32, ptr %i.s, align 8, !tbaa !82
  %i.ww = icmp eq i32 %i.wv, 0
  br i1 %i.ww, label %bb.cp, label %.critedge

bb.cp:                                            ; preds = %bb.co
  store i32 -1, ptr %i.x, align 8, !tbaa !55
  br label %.critedge

bb.cq:                                            ; preds = %bb.cn
  %i.wx = icmp eq i32 %i.ws, 1
  br i1 %i.wx, label %bb.cr, label %bb.cy

bb.cr:                                            ; preds = %bb.cq
  switch i32 %1, label %bb.ct [
    i32 1, label %bb.cs
    i32 5, label %bb.cw
  ]

bb.cs:                                            ; preds = %bb.cr
  tail call void @_tr_align(ptr noundef nonnull %i.c) #11
  br label %bb.cw

bb.ct:                                            ; preds = %bb.cr
  tail call void @_tr_stored_block(ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.wy = icmp eq i32 %1, 3
  br i1 %i.wy, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.wz = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !39 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !34
  %i.xd = add i32 %i.xc, -1
  %i.xe = zext i32 %i.xd to i64                   ; 2 uses
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.xa, i64 %i.xe
  store i16 0, ptr %i.xf, align 2, !tbaa !57
  %i.xg = shl nuw nsw i64 %i.xe, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.xa, i8 0, i64 %i.xg, i1 false)
  %i.xh = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !69
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.xk = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i32 0, ptr %i.xk, align 4, !tbaa !67
  %i.xl = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 0, ptr %i.xl, align 8, !tbaa !68
  %i.xm = getelementptr inbounds nuw i8, ptr %i.c, i64 5916
  store i32 0, ptr %i.xm, align 4, !tbaa !70
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cr, %bb.cu, %bb.cv, %bb.ct, %bb.cs
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %i.xn = load i32, ptr %i.s, align 8, !tbaa !82
  %i.xo = icmp eq i32 %i.xn, 0
  br i1 %i.xo, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 -1, ptr %i.x, align 8, !tbaa !55
  br label %.critedge

bb.cy:                                            ; preds = %bb.cw, %bb.cq, %bb.cg
  br i1 %i.p, label %.critedge, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xp = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 3 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !28 ; 2 uses
  %i.xr = icmp slt i32 %i.xq, 1
  br i1 %i.xr, label %.critedge, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.xs = icmp eq i32 %i.xq, 2
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !54 ; 3 uses
  br i1 %i.xs, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.xv = trunc i64 %i.xu to i8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 8 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !42
  %i.xy = load i32, ptr %i.um, align 8, !tbaa !52 ; 2 uses
  %i.xz = add i32 %i.xy, 1
  store i32 %i.xz, ptr %i.um, align 8, !tbaa !52
  %i.ya = zext i32 %i.xy to i64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.ya
  store i8 %i.xv, ptr %i.yb, align 1, !tbaa !8
  %i.yc = load i64, ptr %i.xt, align 8, !tbaa !54
  %i.yd = lshr i64 %i.yc, 8
  %i.ye = trunc i64 %i.yd to i8
  %i.yf = load ptr, ptr %i.xw, align 8, !tbaa !42
  %i.yg = load i32, ptr %i.um, align 8, !tbaa !52 ; 2 uses
  %i.yh = add i32 %i.yg, 1
  store i32 %i.yh, ptr %i.um, align 8, !tbaa !52
  %i.yi = zext i32 %i.yg to i64
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yi
  store i8 %i.ye, ptr %i.yj, align 1, !tbaa !8
  %i.yk = load i64, ptr %i.xt, align 8, !tbaa !54
  %i.yl = lshr i64 %i.yk, 16
  %i.ym = trunc i64 %i.yl to i8
  %i.yn = load ptr, ptr %i.xw, align 8, !tbaa !42
  %i.yo = load i32, ptr %i.um, align 8, !tbaa !52 ; 2 uses
  %i.yp = add i32 %i.yo, 1
  store i32 %i.yp, ptr %i.um, align 8, !tbaa !52
  %i.yq = zext i32 %i.yo to i64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.yq
  store i8 %i.ym, ptr %i.yr, align 1, !tbaa !8
  %i.ys = load i64, ptr %i.xt, align 8, !tbaa !54
  %i.yt = lshr i64 %i.ys, 24
  %i.yu = trunc i64 %i.yt to i8
  %i.yv = load ptr, ptr %i.xw, align 8, !tbaa !42
  %i.yw = load i32, ptr %i.um, align 8, !tbaa !52 ; 2 uses
  %i.yx = add i32 %i.yw, 1
  store i32 %i.yx, ptr %i.um, align 8, !tbaa !52
  %i.yy = zext i32 %i.yw to i64
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.yy
  store i8 %i.yu, ptr %i.yz, align 1, !tbaa !8
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.zb = load i64, ptr %i.za, align 8, !tbaa !50
  %i.zc = trunc i64 %i.zb to i8
  %i.zd = load ptr, ptr %i.xw, align 8, !tbaa !42
  %i.ze = load i32, ptr %i.um, align 8, !tbaa !52 ; 2 uses
  %i.zf = add i32 %i.ze, 1
  store i32 %i.zf, ptr %i.um, align 8, !tbaa !52
  %i.zg = zext i32 %i.ze to i64
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zg
  store i8 %i.zc, ptr %i.zh, align 1, !tbaa !8
  %i.zi = load i64, ptr %i.za, align 8, !tbaa !50
  %i.zj = lshr i64 %i.zi, 8
  %i.zk = trunc i64 %i.zj to i8
  %i.zl = load ptr, ptr %i.xw, align 8, !tbaa !42
  %i.zm = load i32, ptr %i.um, align 8, !tbaa !52 ; 2 uses
  %i.zn = add i32 %i.zm, 1
  store i32 %i.zn, ptr %i.um, align 8, !tbaa !52
  %i.zo = zext i32 %i.zm to i64
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.zo
  store i8 %i.zk, ptr %i.zp, align 1, !tbaa !8
  %i.zq = load i64, ptr %i.za, align 8, !tbaa !50
  %i.zr = lshr i64 %i.zq, 16
  %i.zs = trunc i64 %i.zr to i8
  %i.zt = load ptr, ptr %i.xw, align 8, !tbaa !42
  %i.zu = load i32, ptr %i.um, align 8, !tbaa !52 ; 2 uses
  %i.zv = add i32 %i.zu, 1
  store i32 %i.zv, ptr %i.um, align 8, !tbaa !52
  %i.zw = zext i32 %i.zu to i64
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zw
  store i8 %i.zs, ptr %i.zx, align 1, !tbaa !8
  %i.zy = load i64, ptr %i.za, align 8, !tbaa !50
  %i.zz = lshr i64 %i.zy, 24
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  %i.aaa = lshr i64 %i.xu, 16
  %i.aab = lshr i64 %i.xu, 24
  %i.aac = trunc i64 %i.aab to i8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !42
  %i.aaf = load i32, ptr %i.um, align 8, !tbaa !52 ; 2 uses
  %i.aag = add i32 %i.aaf, 1
end_hunk_0
