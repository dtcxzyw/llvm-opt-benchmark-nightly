inline.NumInlined: 44
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 49
begin_hunk_0_@png_init_read_transformations:bb.a
  store i8 %i.qy, ptr %i.qu, align 1, !tbaa !72
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qp, i64 2 ; 2 uses
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !73
  %i.rb = zext i8 %i.ra to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !29
  store i8 %i.rd, ptr %i.qz, align 1, !tbaa !73
  %i.re = getelementptr inbounds nuw [3 x i8], ptr %i.qj, i64 %indvars.iv466 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 3 ; 2 uses
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !70
  %i.rh = zext i8 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !29
  store i8 %i.rj, ptr %i.rf, align 1, !tbaa !70
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 4 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !72
  %i.rm = zext i8 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.rm
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !29
  store i8 %i.ro, ptr %i.rk, align 1, !tbaa !72
  %i.rp = getelementptr inbounds nuw i8, ptr %i.re, i64 5 ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !73
  %i.rr = zext i8 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !29
  store i8 %i.rt, ptr %i.rp, align 1, !tbaa !73
  %indvars.iv.next467.1 = add nuw nsw i64 %indvars.iv466, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge449.loopexit.unr-lcssa, label %bb.cu, !llvm.loop !177

._crit_edge449.loopexit.unr-lcssa:                ; preds = %bb.cu
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge449, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge449.loopexit.unr-lcssa, %.lr.ph448
  %indvars.iv466.epil.init = phi i64 [ 0, %.lr.ph448 ], [ %indvars.iv.next467.1, %._crit_edge449.loopexit.unr-lcssa ]
  %lcmp.mod515 = trunc i16 %i.ql to i1
  call void @llvm.assume(i1 %lcmp.mod515)
  %i.ru = getelementptr inbounds nuw [3 x i8], ptr %i.qj, i64 %indvars.iv466.epil.init ; 4 uses
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !70
  %i.rw = zext i8 %i.rv to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !29
  store i8 %i.ry, ptr %i.ru, align 1, !tbaa !70
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ru, i64 1 ; 2 uses
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !72
  %i.sb = zext i8 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !29
  store i8 %i.sd, ptr %i.rz, align 1, !tbaa !72
  %i.se = getelementptr inbounds nuw i8, ptr %i.ru, i64 2 ; 2 uses
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !73
  %i.sg = zext i8 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.sg
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !29
  store i8 %i.si, ptr %i.se, align 1, !tbaa !73
  br label %._crit_edge449

._crit_edge449:                                   ; preds = %.epil.preheader, %._crit_edge449.loopexit.unr-lcssa, %bb.ct
  %i.sj = and i32 %i.gt, -8321                    ; 2 uses
  store i32 %i.sj, ptr %i.ab, align 4, !tbaa !27
  br label %bb.dc

bb.cv:                                            ; preds = %._crit_edge495, %bb.bc
  %i.sk = phi i32 [ %.pre496, %._crit_edge495 ], [ %i.gm, %bb.bc ] ; 4 uses
  %i.sl = and i32 %i.sk, 128
  %.not402 = icmp eq i32 %i.sl, 0
  br i1 %.not402, label %bb.dc, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sm = load i8, ptr %i.bn, align 1, !tbaa !131
  %i.sn = icmp eq i8 %i.sm, 3
  br i1 %i.sn, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.sp = load i16, ptr %i.so, align 8, !tbaa !144 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !92 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 646
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !145 ; 2 uses
  %i.su = trunc i16 %i.st to i8
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.sw = load i16, ptr %i.sv, align 8, !tbaa !146 ; 2 uses
  %i.sx = trunc i16 %i.sw to i8
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 650
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !147 ; 2 uses
  %i.ta = trunc i16 %i.sz to i8
  %.not464 = icmp eq i16 %i.sp, 0
  br i1 %.not464, label %._crit_edge453, label %.lr.ph452

.lr.ph452:                                        ; preds = %bb.cx
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.tc = and i16 %i.st, 255
  %i.td = and i16 %i.sw, 255
  %i.te = and i16 %i.sz, 255
  %wide.trip.count474 = zext i16 %i.sp to i64
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph452, %bb.db
  %indvars.iv471 = phi i64 [ 0, %.lr.ph452 ], [ %indvars.iv.next472, %bb.db ] ; 4 uses
  %i.tf = load ptr, ptr %i.tb, align 8, !tbaa !152
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %indvars.iv471 ; 3 uses
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !29  ; 3 uses
  switch i8 %i.th, label %bb.da [
    i8 0, label %bb.cz
    i8 -1, label %bb.db
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.ti = getelementptr inbounds nuw [3 x i8], ptr %i.sr, i64 %indvars.iv471 ; 3 uses
  store i8 %i.su, ptr %i.ti, align 1, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  store i8 %i.sx, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !29
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  store i8 %i.ta, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !29
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.tj = getelementptr inbounds nuw [3 x i8], ptr %i.sr, i64 %indvars.iv471 ; 4 uses
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !70
  %i.tl = zext i8 %i.tk to i16
  %i.tm = zext i8 %i.th to i16
  %i.tn = mul nuw i16 %i.tl, %i.tm
  %i.to = xor i8 %i.th, -1
  %i.tp = zext i8 %i.to to i16
  %i.tq = mul nuw i16 %i.tc, %i.tp
  %i.tr = add nuw i16 %i.tq, 128
  %i.ts = add i16 %i.tr, %i.tn                    ; 2 uses
  %i.tt = lshr i16 %i.ts, 8
  %i.tu = add i16 %i.tt, %i.ts
  %i.tv = lshr i16 %i.tu, 8
  %i.tw = trunc nuw i16 %i.tv to i8
  store i8 %i.tw, ptr %i.tj, align 1, !tbaa !70
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tj, i64 1 ; 2 uses
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !72
  %i.tz = zext i8 %i.ty to i16
  %i.ua = load i8, ptr %i.tg, align 1, !tbaa !29  ; 2 uses
  %i.ub = zext i8 %i.ua to i16
  %i.uc = mul nuw i16 %i.ub, %i.tz
  %i.ud = xor i8 %i.ua, -1
  %i.ue = zext i8 %i.ud to i16
  %i.uf = mul nuw i16 %i.td, %i.ue
  %i.ug = add nuw i16 %i.uf, 128
  %i.uh = add i16 %i.ug, %i.uc                    ; 2 uses
  %i.ui = lshr i16 %i.uh, 8
  %i.uj = add i16 %i.ui, %i.uh
  %i.uk = lshr i16 %i.uj, 8
  %i.ul = trunc nuw i16 %i.uk to i8
  store i8 %i.ul, ptr %i.tx, align 1, !tbaa !72
  %i.um = getelementptr inbounds nuw i8, ptr %i.tj, i64 2 ; 2 uses
  %i.un = load i8, ptr %i.um, align 1, !tbaa !73
  %i.uo = zext i8 %i.un to i16
  %i.up = load i8, ptr %i.tg, align 1, !tbaa !29  ; 2 uses
  %i.uq = zext i8 %i.up to i16
  %i.ur = mul nuw i16 %i.uq, %i.uo
  %i.us = xor i8 %i.up, -1
  %i.ut = zext i8 %i.us to i16
  %i.uu = mul nuw i16 %i.te, %i.ut
  %i.uv = add nuw i16 %i.uu, 128
  %i.uw = add i16 %i.uv, %i.ur                    ; 2 uses
  %i.ux = lshr i16 %i.uw, 8
  %i.uy = add i16 %i.ux, %i.uw
  %i.uz = lshr i16 %i.uy, 8
  %i.va = trunc nuw i16 %i.uz to i8
  store i8 %i.va, ptr %i.um, align 1, !tbaa !73
  br label %bb.db

bb.db:                                            ; preds = %bb.cy, %bb.cz, %bb.da
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %._crit_edge453.loopexit, label %bb.cy, !llvm.loop !178

._crit_edge453.loopexit:                          ; preds = %bb.db
  %.pre497 = load i32, ptr %i.ab, align 4, !tbaa !27
  br label %._crit_edge453

._crit_edge453:                                   ; preds = %._crit_edge453.loopexit, %bb.cx
  %i.vb = phi i32 [ %.pre497, %._crit_edge453.loopexit ], [ %i.sk, %bb.cx ]
  %i.vc = and i32 %i.vb, -129                     ; 2 uses
  store i32 %i.vc, ptr %i.ab, align 4, !tbaa !27
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cs, %bb.cv, %bb.cw, %._crit_edge453, %bb.cq, %._crit_edge, %._crit_edge449, %bb.cr
  %i.vd = phi i32 [ %i.gt, %bb.cs ], [ %i.sk, %bb.cv ], [ %i.sk, %bb.cw ], [ %i.vc, %._crit_edge453 ], [ %.pre498, %bb.cq ], [ %i.nt, %._crit_edge ], [ %i.sj, %._crit_edge449 ], [ %i.gt, %bb.cr ] ; 2 uses
  %i.ve = and i32 %i.vd, 4104
  %or.cond427 = icmp eq i32 %i.ve, 8
  br i1 %or.cond427, label %bb.dd, label %.loopexit

bb.dd:                                            ; preds = %bb.dc
  %i.vf = load i8, ptr %i.bn, align 1, !tbaa !131
  %i.vg = icmp eq i8 %i.vf, 3
  br i1 %i.vg, label %bb.de, label %.loopexit

bb.de:                                            ; preds = %bb.dd
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.vi = load i16, ptr %i.vh, align 8, !tbaa !93 ; 7 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.vk = load i8, ptr %i.vj, align 8, !tbaa !179 ; 2 uses
  %i.vl = zext i8 %i.vk to i16
  %i.vm = sub nsw i16 8, %i.vl                    ; 5 uses
  %i.vn = and i32 %i.vd, -4105
  store i32 %i.vn, ptr %i.ab, align 4, !tbaa !27
  %i.vo = add i8 %i.vk, -1
  %or.cond = icmp ult i8 %i.vo, 7
  %i.vp = icmp ne i16 %i.vi, 0                    ; 3 uses
  %or.cond460 = select i1 %or.cond, i1 %i.vp, i1 false
  br i1 %or.cond460, label %.lr.ph455, label %.loopexit444

.lr.ph455:                                        ; preds = %bb.de
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !92 ; 5 uses
  %wide.trip.count479 = zext i16 %i.vi to i64     ; 2 uses
  %xtraiter517 = and i64 %wide.trip.count479, 3   ; 3 uses
  %i.vs = icmp ult i16 %i.vi, 4
  br i1 %i.vs, label %.epil.preheader516, label %.lr.ph455.new

.lr.ph455.new:                                    ; preds = %.lr.ph455
  %unroll_iter520 = and i64 %wide.trip.count479, 65532
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph455.new
  %indvars.iv476 = phi i64 [ 0, %.lr.ph455.new ], [ %indvars.iv.next477.3, %bb.df ] ; 5 uses
  %niter521 = phi i64 [ 0, %.lr.ph455.new ], [ %niter521.next.3, %bb.df ]
  %i.vt = getelementptr inbounds nuw [3 x i8], ptr %i.vr, i64 %indvars.iv476 ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !70
  %i.vv = zext i8 %i.vu to i16
  %i.vw = lshr i16 %i.vv, %i.vm
  %i.vx = trunc nuw i16 %i.vw to i8
  store i8 %i.vx, ptr %i.vt, align 1, !tbaa !70
  %i.vy = getelementptr inbounds nuw [3 x i8], ptr %i.vr, i64 %indvars.iv476
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 3 ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !70
  %i.wb = zext i8 %i.wa to i16
  %i.wc = lshr i16 %i.wb, %i.vm
  %i.wd = trunc nuw i16 %i.wc to i8
  store i8 %i.wd, ptr %i.vz, align 1, !tbaa !70
  %i.we = getelementptr inbounds nuw [3 x i8], ptr %i.vr, i64 %indvars.iv476
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 6 ; 2 uses
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !70
  %i.wh = zext i8 %i.wg to i16
  %i.wi = lshr i16 %i.wh, %i.vm
  %i.wj = trunc nuw i16 %i.wi to i8
  store i8 %i.wj, ptr %i.wf, align 1, !tbaa !70
  %i.wk = getelementptr inbounds nuw [3 x i8], ptr %i.vr, i64 %indvars.iv476
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 9 ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !70
  %i.wn = zext i8 %i.wm to i16
  %i.wo = lshr i16 %i.wn, %i.vm
  %i.wp = trunc nuw i16 %i.wo to i8
  store i8 %i.wp, ptr %i.wl, align 1, !tbaa !70
  %indvars.iv.next477.3 = add nuw nsw i64 %indvars.iv476, 4 ; 2 uses
  %niter521.next.3 = add i64 %niter521, 4         ; 2 uses
  %niter521.ncmp.3 = icmp eq i64 %niter521.next.3, %unroll_iter520
  br i1 %niter521.ncmp.3, label %.loopexit444.loopexit.unr-lcssa, label %bb.df, !llvm.loop !180

.loopexit444.loopexit.unr-lcssa:                  ; preds = %bb.df
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.loopexit444, label %.epil.preheader516

.epil.preheader516:                               ; preds = %.loopexit444.loopexit.unr-lcssa, %.lr.ph455
  %indvars.iv476.epil.init = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next477.3, %.loopexit444.loopexit.unr-lcssa ]
  %lcmp.mod519 = icmp ne i64 %xtraiter517, 0
  call void @llvm.assume(i1 %lcmp.mod519)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.epil.preheader516
  %indvars.iv476.epil = phi i64 [ %indvars.iv476.epil.init, %.epil.preheader516 ], [ %indvars.iv.next477.epil, %bb.dg ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader516 ], [ %epil.iter.next, %bb.dg ]
  %i.wq = getelementptr inbounds nuw [3 x i8], ptr %i.vr, i64 %indvars.iv476.epil ; 2 uses
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !70
  %i.ws = zext i8 %i.wr to i16
  %i.wt = lshr i16 %i.ws, %i.vm
  %i.wu = trunc nuw i16 %i.wt to i8
  store i8 %i.wu, ptr %i.wq, align 1, !tbaa !70
  %indvars.iv.next477.epil = add nuw nsw i64 %indvars.iv476.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter517
  br i1 %epil.iter.cmp.not, label %.loopexit444, label %bb.dg, !llvm.loop !181

.loopexit444:                                     ; preds = %.loopexit444.loopexit.unr-lcssa, %bb.dg, %bb.de
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 785
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !182 ; 2 uses
  %i.wx = zext i8 %i.ww to i16
  %i.wy = sub nsw i16 8, %i.wx                    ; 5 uses
  %i.wz = add i8 %i.ww, -1
  %or.cond3 = icmp ult i8 %i.wz, 7
  %or.cond461 = select i1 %or.cond3, i1 %i.vp, i1 false
  br i1 %or.cond461, label %.lr.ph457, label %.loopexit442

.lr.ph457:                                        ; preds = %.loopexit444
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !92 ; 5 uses
  %wide.trip.count484 = zext i16 %i.vi to i64     ; 2 uses
  %xtraiter523 = and i64 %wide.trip.count484, 3   ; 3 uses
  %i.xc = icmp ult i16 %i.vi, 4
  br i1 %i.xc, label %.epil.preheader522, label %.lr.ph457.new

.lr.ph457.new:                                    ; preds = %.lr.ph457
  %unroll_iter527 = and i64 %wide.trip.count484, 65532
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %.lr.ph457.new
  %indvars.iv481 = phi i64 [ 0, %.lr.ph457.new ], [ %indvars.iv.next482.3, %bb.dh ] ; 5 uses
  %niter528 = phi i64 [ 0, %.lr.ph457.new ], [ %niter528.next.3, %bb.dh ]
  %i.xd = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv481
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 1 ; 2 uses
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !72
  %i.xg = zext i8 %i.xf to i16
  %i.xh = lshr i16 %i.xg, %i.wy
  %i.xi = trunc nuw i16 %i.xh to i8
  store i8 %i.xi, ptr %i.xe, align 1, !tbaa !72
  %i.xj = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv481
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4 ; 2 uses
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !72
  %i.xm = zext i8 %i.xl to i16
  %i.xn = lshr i16 %i.xm, %i.wy
  %i.xo = trunc nuw i16 %i.xn to i8
  store i8 %i.xo, ptr %i.xk, align 1, !tbaa !72
  %i.xp = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv481
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 7 ; 2 uses
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !72
  %i.xs = zext i8 %i.xr to i16
  %i.xt = lshr i16 %i.xs, %i.wy
  %i.xu = trunc nuw i16 %i.xt to i8
  store i8 %i.xu, ptr %i.xq, align 1, !tbaa !72
  %i.xv = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv481
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 10 ; 2 uses
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !72
  %i.xy = zext i8 %i.xx to i16
  %i.xz = lshr i16 %i.xy, %i.wy
  %i.ya = trunc nuw i16 %i.xz to i8
  store i8 %i.ya, ptr %i.xw, align 1, !tbaa !72
  %indvars.iv.next482.3 = add nuw nsw i64 %indvars.iv481, 4 ; 2 uses
  %niter528.next.3 = add i64 %niter528, 4         ; 2 uses
  %niter528.ncmp.3 = icmp eq i64 %niter528.next.3, %unroll_iter527
  br i1 %niter528.ncmp.3, label %.loopexit442.loopexit.unr-lcssa, label %bb.dh, !llvm.loop !183

.loopexit442.loopexit.unr-lcssa:                  ; preds = %bb.dh
  %lcmp.mod525.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod525.not, label %.loopexit442, label %.epil.preheader522

.epil.preheader522:                               ; preds = %.loopexit442.loopexit.unr-lcssa, %.lr.ph457
  %indvars.iv481.epil.init = phi i64 [ 0, %.lr.ph457 ], [ %indvars.iv.next482.3, %.loopexit442.loopexit.unr-lcssa ]
  %lcmp.mod526 = icmp ne i64 %xtraiter523, 0
  call void @llvm.assume(i1 %lcmp.mod526)
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %.epil.preheader522
  %indvars.iv481.epil = phi i64 [ %indvars.iv481.epil.init, %.epil.preheader522 ], [ %indvars.iv.next482.epil, %bb.di ] ; 2 uses
  %epil.iter524 = phi i64 [ 0, %.epil.preheader522 ], [ %epil.iter524.next, %bb.di ]
  %i.yb = getelementptr inbounds nuw [3 x i8], ptr %i.xb, i64 %indvars.iv481.epil
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 1 ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !72
  %i.ye = zext i8 %i.yd to i16
  %i.yf = lshr i16 %i.ye, %i.wy
  %i.yg = trunc nuw i16 %i.yf to i8
  store i8 %i.yg, ptr %i.yc, align 1, !tbaa !72
  %indvars.iv.next482.epil = add nuw nsw i64 %indvars.iv481.epil, 1
  %epil.iter524.next = add i64 %epil.iter524, 1   ; 2 uses
  %epil.iter524.cmp.not = icmp eq i64 %epil.iter524.next, %xtraiter523
  br i1 %epil.iter524.cmp.not, label %.loopexit442, label %bb.di, !llvm.loop !184

.loopexit442:                                     ; preds = %.loopexit442.loopexit.unr-lcssa, %bb.di, %.loopexit444
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 786
  %i.yi = load i8, ptr %i.yh, align 2, !tbaa !185 ; 2 uses
  %i.yj = zext i8 %i.yi to i16
  %i.yk = sub nsw i16 8, %i.yj                    ; 5 uses
  %i.yl = add i8 %i.yi, -1
  %or.cond5 = icmp ult i8 %i.yl, 7
  %or.cond462 = select i1 %or.cond5, i1 %i.vp, i1 false
  br i1 %or.cond462, label %.lr.ph459, label %.loopexit

.lr.ph459:                                        ; preds = %.loopexit442
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !92 ; 5 uses
  %wide.trip.count489 = zext i16 %i.vi to i64     ; 2 uses
  %xtraiter530 = and i64 %wide.trip.count489, 3   ; 3 uses
  %i.yo = icmp ult i16 %i.vi, 4
  br i1 %i.yo, label %.epil.preheader529, label %.lr.ph459.new

.lr.ph459.new:                                    ; preds = %.lr.ph459
  %unroll_iter534 = and i64 %wide.trip.count489, 65532
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dj, %.lr.ph459.new
  %indvars.iv486 = phi i64 [ 0, %.lr.ph459.new ], [ %indvars.iv.next487.3, %bb.dj ] ; 5 uses
  %niter535 = phi i64 [ 0, %.lr.ph459.new ], [ %niter535.next.3, %bb.dj ]
  %i.yp = getelementptr inbounds nuw [3 x i8], ptr %i.yn, i64 %indvars.iv486
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 2 ; 2 uses
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !73
  %i.ys = zext i8 %i.yr to i16
  %i.yt = lshr i16 %i.ys, %i.yk
  %i.yu = trunc nuw i16 %i.yt to i8
  store i8 %i.yu, ptr %i.yq, align 1, !tbaa !73
  %i.yv = getelementptr inbounds nuw [3 x i8], ptr %i.yn, i64 %indvars.iv486
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 5 ; 2 uses
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !73
  %i.yy = zext i8 %i.yx to i16
  %i.yz = lshr i16 %i.yy, %i.yk
  %i.za = trunc nuw i16 %i.yz to i8
  store i8 %i.za, ptr %i.yw, align 1, !tbaa !73
  %i.zb = getelementptr inbounds nuw [3 x i8], ptr %i.yn, i64 %indvars.iv486
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8 ; 2 uses
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !73
  %i.ze = zext i8 %i.zd to i16
  %i.zf = lshr i16 %i.ze, %i.yk
  %i.zg = trunc nuw i16 %i.zf to i8
  store i8 %i.zg, ptr %i.zc, align 1, !tbaa !73
  %i.zh = getelementptr inbounds nuw [3 x i8], ptr %i.yn, i64 %indvars.iv486
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 11 ; 2 uses
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !73
  %i.zk = zext i8 %i.zj to i16
  %i.zl = lshr i16 %i.zk, %i.yk
  %i.zm = trunc nuw i16 %i.zl to i8
  store i8 %i.zm, ptr %i.zi, align 1, !tbaa !73
  %indvars.iv.next487.3 = add nuw nsw i64 %indvars.iv486, 4 ; 2 uses
  %niter535.next.3 = add i64 %niter535, 4         ; 2 uses
  %niter535.ncmp.3 = icmp eq i64 %niter535.next.3, %unroll_iter534
  br i1 %niter535.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.dj, !llvm.loop !186

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.dj
  %lcmp.mod532.not = icmp eq i64 %xtraiter530, 0
  br i1 %lcmp.mod532.not, label %.loopexit, label %.epil.preheader529

.epil.preheader529:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph459
  %indvars.iv486.epil.init = phi i64 [ 0, %.lr.ph459 ], [ %indvars.iv.next487.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod533 = icmp ne i64 %xtraiter530, 0
  call void @llvm.assume(i1 %lcmp.mod533)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.epil.preheader529
  %indvars.iv486.epil = phi i64 [ %indvars.iv486.epil.init, %.epil.preheader529 ], [ %indvars.iv.next487.epil, %bb.dk ] ; 2 uses
  %epil.iter531 = phi i64 [ 0, %.epil.preheader529 ], [ %epil.iter531.next, %bb.dk ]
  %i.zn = getelementptr inbounds nuw [3 x i8], ptr %i.yn, i64 %indvars.iv486.epil
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 2 ; 2 uses
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !73
  %i.zq = zext i8 %i.zp to i16
  %i.zr = lshr i16 %i.zq, %i.yk
  %i.zs = trunc nuw i16 %i.zr to i8
  store i8 %i.zs, ptr %i.zo, align 1, !tbaa !73
  %indvars.iv.next487.epil = add nuw nsw i64 %indvars.iv486.epil, 1
  %epil.iter531.next = add i64 %epil.iter531, 1   ; 2 uses
  %epil.iter531.cmp.not = icmp eq i64 %epil.iter531.next, %xtraiter530
  br i1 %epil.iter531.cmp.not, label %.loopexit, label %bb.dk, !llvm.loop !187

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.dk, %.loopexit442, %bb.dd, %bb.dc
  ret void
}

declare i32 @png_gamma_significant(i32 noundef) local_unnamed_addr #1

declare void @png_set_rgb_coefficients(ptr noundef) local_unnamed_addr #1

declare void @png_build_gamma_table(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @png_reciprocal2(i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @png_gamma_8bit_correct(i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i16 @png_gamma_correct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @png_read_transform_info(ptr noalias noundef %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 14 uses
  %i.c = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !188   ; 2 uses
  %i.f = icmp eq i8 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load i16, ptr %i.g, align 8, !tbaa !144
  %.not84 = icmp eq i16 %i.h, 0                   ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %. = select i1 %.not84, i8 2, i8 6
  store i8 %., ptr %i.d, align 1, !tbaa !188
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 8, ptr %i.i, align 4, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 0, ptr %i.j, align 2, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #12
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = and i32 %i.b, 33554432
  %.not83 = icmp eq i32 %i.n, 0
  %or.cond = or i1 %.not83, %.not84
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = or i8 %i.e, 4
  store i8 %i.o, ptr %i.d, align 1, !tbaa !188
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4, !tbaa !196
  %i.r = icmp ult i8 %i.q, 8
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 8, ptr %i.p, align 4, !tbaa !196
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 0, ptr %i.s, align 2, !tbaa !197
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c, %bb.a
  %i.t = and i32 %i.b, 128
  %.not85 = icmp eq i32 %i.t, 0
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 162
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 644
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.u, ptr noundef nonnull align 4 dereferenceable(10) %i.v, i64 10, i1 false), !tbaa.struct !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.x = load i32, ptr %i.w, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 344
  store i32 %i.x, ptr %i.y, align 8, !tbaa !198
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 5 uses
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !196  ; 2 uses
  %i.ab = icmp ne i8 %i.aa, 16
  %i.ac = and i32 %i.b, 67109888
  %.not103 = icmp eq i32 %i.ac, 0
  %or.cond104 = or i1 %.not103, %i.ab
  br i1 %or.cond104, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 8, ptr %i.z, align 4, !tbaa !196
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = phi i8 [ 8, %bb.m ], [ %i.aa, %bb.l ]   ; 3 uses
  %i.ae = and i32 %i.b, 16384
  %.not88 = icmp eq i32 %i.ae, 0
  br i1 %.not88, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 37 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !188
  %i.ah = or i8 %i.ag, 2
  store i8 %i.ah, ptr %i.af, align 1, !tbaa !188
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = and i32 %i.b, 6291456
  %.not89 = icmp eq i32 %i.ai, 0
  br i1 %.not89, label %bb.r, label %bb.q

end_hunk_0
