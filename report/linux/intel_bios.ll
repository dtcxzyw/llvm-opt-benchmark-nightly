Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_bios?download=true
inline.NumInlined: 385
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@init_bdb_block:bb.a
  br i1 %i.sd, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.se = getelementptr i8, ptr %i.kg, i64 126    ; 2 uses
  %i.sf = load i16, ptr %i.se, align 2            ; 2 uses
  %i.sg = zext i16 %i.sf to i32
  %i.sh = icmp samesign ugt i32 %.0.i.i94, %i.sg
  br i1 %i.sh, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.si = getelementptr i8, ptr %i.kg, i64 129    ; 2 uses
  %i.sj = load i16, ptr %i.si, align 1            ; 2 uses
  %i.sk = zext i16 %i.sj to i32
  %i.sl = icmp samesign ugt i32 %.0.i.i94, %i.sk
  br i1 %i.sl, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.sm = sub nuw i16 %i.sb, %i.lr                ; 3 uses
  store i16 %i.sm, ptr %i.sa, align 1
  %i.sn = sub nuw i16 %i.sf, %i.lr                ; 2 uses
  store i16 %i.sn, ptr %i.se, align 2
  %i.so = sub nuw i16 %i.sj, %i.lr                ; 2 uses
  store i16 %i.so, ptr %i.si, align 1
  %i.sp = getelementptr i8, ptr %i.kg, i64 132    ; 2 uses
  %i.sq = load i16, ptr %i.sp, align 4            ; 2 uses
  %i.sr = zext i16 %i.sq to i32
  %i.ss = icmp samesign ugt i32 %.0.i.i94, %i.sr
  br i1 %i.ss, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.st = getelementptr i8, ptr %i.kg, i64 135    ; 2 uses
  %i.su = load i16, ptr %i.st, align 1            ; 2 uses
  %i.sv = zext i16 %i.su to i32
  %i.sw = icmp samesign ugt i32 %.0.i.i94, %i.sv
  br i1 %i.sw, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sx = getelementptr i8, ptr %i.kg, i64 138    ; 2 uses
  %i.sy = load i16, ptr %i.sx, align 2            ; 2 uses
  %i.sz = zext i16 %i.sy to i32
  %i.ta = icmp samesign ugt i32 %.0.i.i94, %i.sz
  br i1 %i.ta, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.tb = sub nuw i16 %i.sq, %i.lr                ; 3 uses
  store i16 %i.tb, ptr %i.sp, align 4
  %i.tc = sub nuw i16 %i.su, %i.lr                ; 2 uses
  store i16 %i.tc, ptr %i.st, align 1
  %i.td = sub nuw i16 %i.sy, %i.lr                ; 2 uses
  store i16 %i.td, ptr %i.sx, align 2
  %i.te = getelementptr i8, ptr %i.kg, i64 141    ; 2 uses
  %i.tf = load i16, ptr %i.te, align 1            ; 2 uses
  %i.tg = zext i16 %i.tf to i32
  %i.th = icmp samesign ugt i32 %.0.i.i94, %i.tg
  br i1 %i.th, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ti = getelementptr i8, ptr %i.kg, i64 144    ; 2 uses
  %i.tj = load i16, ptr %i.ti, align 8            ; 2 uses
  %i.tk = zext i16 %i.tj to i32
  %i.tl = icmp samesign ugt i32 %.0.i.i94, %i.tk
  br i1 %i.tl, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tm = getelementptr i8, ptr %i.kg, i64 147    ; 2 uses
  %i.tn = load i16, ptr %i.tm, align 1            ; 2 uses
  %i.to = zext i16 %i.tn to i32
  %i.tp = icmp samesign ugt i32 %.0.i.i94, %i.to
  br i1 %i.tp, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tq = sub nuw i16 %i.tf, %i.lr                ; 3 uses
  store i16 %i.tq, ptr %i.te, align 1
  %i.tr = sub nuw i16 %i.tj, %i.lr                ; 2 uses
  store i16 %i.tr, ptr %i.ti, align 8
  %i.ts = sub nuw i16 %i.tn, %i.lr                ; 2 uses
  store i16 %i.ts, ptr %i.tm, align 1
  %i.tt = getelementptr i8, ptr %i.kg, i64 150    ; 2 uses
  %i.tu = load i16, ptr %i.tt, align 2            ; 2 uses
  %i.tv = zext i16 %i.tu to i32
  %i.tw = icmp samesign ugt i32 %.0.i.i94, %i.tv
  br i1 %i.tw, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tx = getelementptr i8, ptr %i.kg, i64 153    ; 2 uses
  %i.ty = load i16, ptr %i.tx, align 1            ; 2 uses
  %i.tz = zext i16 %i.ty to i32
  %i.ua = icmp samesign ugt i32 %.0.i.i94, %i.tz
  br i1 %i.ua, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ub = getelementptr i8, ptr %i.kg, i64 156    ; 2 uses
  %i.uc = load i16, ptr %i.ub, align 4            ; 2 uses
  %i.ud = zext i16 %i.uc to i32
  %i.ue = icmp samesign ugt i32 %.0.i.i94, %i.ud
  br i1 %i.ue, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.uf = sub nuw i16 %i.tu, %i.lr                ; 3 uses
  store i16 %i.uf, ptr %i.tt, align 2
  %i.ug = sub nuw i16 %i.ty, %i.lr                ; 2 uses
  store i16 %i.ug, ptr %i.tx, align 1
  %i.uh = sub nuw i16 %i.uc, %i.lr                ; 2 uses
  store i16 %i.uh, ptr %i.ub, align 4
  %i.ui = getelementptr i8, ptr %i.kg, i64 159    ; 2 uses
  %i.uj = load i16, ptr %i.ui, align 1            ; 2 uses
  %i.uk = zext i16 %i.uj to i32
  %i.ul = icmp samesign ugt i32 %.0.i.i94, %i.uk
  br i1 %i.ul, label %fixup_lfp_data_ptrs.exit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.um = getelementptr i8, ptr %i.kg, i64 162    ; 2 uses
  %i.un = load i16, ptr %i.um, align 2            ; 2 uses
  %i.uo = zext i16 %i.un to i32
  %i.up = icmp samesign ugt i32 %.0.i.i94, %i.uo
  br i1 %i.up, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.uq = getelementptr i8, ptr %i.kg, i64 165    ; 2 uses
  %i.ur = load i16, ptr %i.uq, align 1            ; 2 uses
  %i.us = zext i16 %i.ur to i32
  %i.ut = icmp samesign ugt i32 %.0.i.i94, %i.us
  br i1 %i.ut, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.uu = sub nuw i16 %i.uj, %i.lr                ; 3 uses
  store i16 %i.uu, ptr %i.ui, align 1
  %i.uv = sub nuw i16 %i.un, %i.lr                ; 2 uses
  store i16 %i.uv, ptr %i.um, align 2
  %i.uw = sub nuw i16 %i.ur, %i.lr                ; 2 uses
  store i16 %i.uw, ptr %i.uq, align 1
  %i.ux = getelementptr i8, ptr %i.kg, i64 168    ; 3 uses
  %i.uy = getelementptr i8, ptr %i.kg, i64 170
  %i.uz = load i8, ptr %i.uy, align 2             ; 3 uses
  %.not.i95 = icmp eq i8 %i.uz, 0
  br i1 %.not.i95, label %.preheader150, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.va = load i16, ptr %i.ux, align 8            ; 2 uses
  %i.vb = zext i16 %i.va to i32
  %i.vc = icmp samesign ugt i32 %.0.i.i94, %i.vb
  br i1 %i.vc, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vd = sub nuw i16 %i.va, %i.lr
  store i16 %i.vd, ptr %i.ux, align 8
  br label %.preheader150

.preheader150:                                    ; preds = %bb.cs, %bb.cq
  br label %bb.ct

bb.ct:                                            ; preds = %.preheader150, %bb.cy
  %.0.i.i33.i = phi i32 [ %i.vs, %bb.cy ], [ %i.kq, %.preheader150 ] ; 2 uses
  %i.ve = add nuw nsw i32 %.0.i.i33.i, 3          ; 3 uses
  %i.vf = icmp ult i32 %i.ve, %i.ks
  br i1 %i.vf, label %bb.cu, label %fixup_lfp_data_ptrs.exit.thread

bb.cu:                                            ; preds = %bb.ct
  %i.vg = zext nneg i32 %.0.i.i33.i to i64
  %i.vh = getelementptr i8, ptr %1, i64 %i.vg     ; 4 uses
  %i.vi = load i8, ptr %i.vh, align 1             ; 2 uses
  %i.vj = icmp eq i8 %i.vi, 53
  br i1 %i.vj, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.vk = getelementptr i8, ptr %i.vh, i64 3
  %i.vl = load i8, ptr %i.vk, align 1
  %i.vm = icmp ugt i8 %i.vl, 2
  br i1 %i.vm, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.vn = getelementptr i8, ptr %i.vh, i64 4
  %i.vo = load i32, ptr %i.vn, align 4
  br label %_get_blocksize.exit.i.i34.i

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.vp = getelementptr i8, ptr %i.vh, i64 1
  %i.vq = load i16, ptr %i.vp, align 2
  %i.vr = zext i16 %i.vq to i32
  br label %_get_blocksize.exit.i.i34.i

_get_blocksize.exit.i.i34.i:                      ; preds = %bb.cx, %bb.cw
  %.0.i.i.i35.i = phi i32 [ %i.vo, %bb.cw ], [ %i.vr, %bb.cx ]
  %i.vs = add i32 %.0.i.i.i35.i, %i.ve            ; 2 uses
  %i.vt = icmp ugt i32 %i.vs, %i.ks
  br i1 %i.vt, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %_get_blocksize.exit.i.i34.i
  %i.vu = icmp eq i8 %i.vi, 42
  br i1 %i.vu, label %find_raw_section.exit.i.i, label %bb.ct, !llvm.loop !67

find_raw_section.exit.i.i:                        ; preds = %bb.cy
  %i.vv = zext nneg i32 %i.ve to i64
  %i.vw = getelementptr i8, ptr %1, i64 %i.vv     ; 3 uses
  %.not.i36.i = icmp eq ptr %i.vw, null
  br i1 %.not.i36.i, label %fixup_lfp_data_ptrs.exit.thread, label %get_blocksize.exit.i.i

get_blocksize.exit.i.i:                           ; preds = %find_raw_section.exit.i.i
  %i.vx = getelementptr i8, ptr %i.vw, i64 -2
  %i.vy = load i16, ptr %i.vx, align 2            ; 2 uses
  %i.vz = zext i16 %i.vy to i32                   ; 50 uses
  %i.wa = icmp eq i16 %i.vy, 0
  br i1 %i.wa, label %fixup_lfp_data_ptrs.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %get_blocksize.exit.i.i
  %i.wb = load i8, ptr %i.ko, align 1
  %.not107.i.i = icmp eq i8 %i.wb, 3
  br i1 %.not107.i.i, label %bb.da, label %fixup_lfp_data_ptrs.exit.thread

bb.da:                                            ; preds = %bb.cz
  %i.wc = getelementptr i8, ptr %i.kg, i64 26
  %i.wd = load i8, ptr %i.wc, align 2             ; 3 uses
  %i.we = zext i8 %i.wd to i32                    ; 2 uses
  %i.wf = getelementptr i8, ptr %i.kg, i64 29
  %i.wg = load i8, ptr %i.wf, align 1             ; 2 uses
  %i.wh = zext i8 %i.wg to i32                    ; 18 uses
  %i.wi = getelementptr i8, ptr %i.kg, i64 32
  %i.wj = load i8, ptr %i.wi, align 8             ; 2 uses
  %i.wk = zext i8 %i.wj to i32                    ; 18 uses
  %i.wl = icmp ult i8 %i.wd, 32
  %i.wm = icmp ne i8 %i.wg, 18
  %or.cond.i.i96 = select i1 %i.wl, i1 true, i1 %i.wm
  %i.wn = icmp ne i8 %i.wj, 10
  %or.cond5.i.i = select i1 %or.cond.i.i96, i1 true, i1 %i.wn
  br i1 %or.cond5.i.i, label %fixup_lfp_data_ptrs.exit.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  switch i8 %i.uz, label %fixup_lfp_data_ptrs.exit.thread [
    i8 13, label %bb.dc
    i8 0, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db, %bb.db
  %i.wo = zext i16 %i.ms to i32                   ; 2 uses
  %i.wp = zext i16 %i.md to i32                   ; 2 uses
  %i.wq = sub nsw i32 %i.wo, %i.wp                ; 8 uses
  %i.wr = shl nsw i32 %i.wq, 4
  %i.ws = icmp sgt i32 %i.wr, %i.vz
  br i1 %i.ws, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader126.i.i

bb.dd:                                            ; preds = %bb.di
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 16
  br i1 %exitcond.not.i.i, label %bb.dj, label %.preheader126.i.i, !llvm.loop !68

.preheader126.i.i:                                ; preds = %bb.dc, %bb.dd
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.dd ], [ 1, %bb.dc ] ; 2 uses
  %i.wt = getelementptr [9 x i8], ptr %i.lq, i64 %indvars.iv.i.i ; 9 uses
  %i.wu = getelementptr i8, ptr %i.wt, i64 2
  %i.wv = load i8, ptr %i.wu, align 1
  %.not113.i.i = icmp eq i8 %i.wv, %i.wd
  br i1 %.not113.i.i, label %bb.de, label %fixup_lfp_data_ptrs.exit.thread

bb.de:                                            ; preds = %.preheader126.i.i
  %i.ww = getelementptr i8, ptr %i.wt, i64 3
  %i.wx = getelementptr i8, ptr %i.wt, i64 5
  %i.wy = load i8, ptr %i.wx, align 1
  %.not114.i.i = icmp eq i8 %i.wy, 18
  br i1 %.not114.i.i, label %bb.df, label %fixup_lfp_data_ptrs.exit.thread

bb.df:                                            ; preds = %bb.de
  %i.wz = getelementptr i8, ptr %i.wt, i64 6
  %i.xa = getelementptr i8, ptr %i.wt, i64 8
  %i.xb = load i8, ptr %i.xa, align 1
  %.not115.i.i = icmp eq i8 %i.xb, 10
  br i1 %.not115.i.i, label %bb.dg, label %fixup_lfp_data_ptrs.exit.thread

bb.dg:                                            ; preds = %bb.df
  %i.xc = load i16, ptr %i.wt, align 1
  %i.xd = zext i16 %i.xc to i32
  %i.xe = getelementptr i8, ptr %i.wt, i64 -9
  %i.xf = load i16, ptr %i.xe, align 1
  %i.xg = zext i16 %i.xf to i32
  %i.xh = sub nsw i32 %i.xd, %i.xg
  %.not116.i.i = icmp eq i32 %i.xh, %i.wq
  br i1 %.not116.i.i, label %bb.dh, label %fixup_lfp_data_ptrs.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.xi = load i16, ptr %i.ww, align 1
  %i.xj = zext i16 %i.xi to i32
  %i.xk = getelementptr i8, ptr %i.wt, i64 -6
  %i.xl = load i16, ptr %i.xk, align 1
  %i.xm = zext i16 %i.xl to i32
  %i.xn = sub nsw i32 %i.xj, %i.xm
  %.not117.i.i = icmp eq i32 %i.xn, %i.wq
  br i1 %.not117.i.i, label %bb.di, label %fixup_lfp_data_ptrs.exit.thread

bb.di:                                            ; preds = %bb.dh
  %i.xo = load i16, ptr %i.wz, align 1
  %i.xp = zext i16 %i.xo to i32
  %i.xq = getelementptr i8, ptr %i.wt, i64 -3
  %i.xr = load i16, ptr %i.xq, align 1
  %i.xs = zext i16 %i.xr to i32
  %i.xt = sub nsw i32 %i.xp, %i.xs
  %.not118.i.i = icmp eq i32 %i.xt, %i.wq
  br i1 %.not118.i.i, label %bb.dd, label %fixup_lfp_data_ptrs.exit.thread

bb.dj:                                            ; preds = %bb.dd
  %i.xu = add nuw nsw i32 %i.we, 6                ; 2 uses
  %i.xv = add nuw nsw i32 %i.xu, %i.wh
  %i.xw = add nuw nsw i32 %i.xv, %i.wk
  %i.xx = icmp eq i32 %i.xw, %i.wq
  %spec.select.i.i = select i1 %i.xx, i32 %i.xu, i32 %i.we ; 18 uses
  %i.xy = add nuw nsw i32 %i.wk, %i.wh
  %i.xz = add nuw nsw i32 %i.xy, %spec.select.i.i
  %.not108.i.i = icmp eq i32 %i.xz, %i.wq
  br i1 %.not108.i.i, label %bb.dk, label %fixup_lfp_data_ptrs.exit.thread

bb.dk:                                            ; preds = %bb.dj
  %i.ya = add nuw nsw i32 %spec.select.i.i, %i.wp ; 3 uses
  %i.yb = zext i16 %i.me to i32
  %.not109.i.i = icmp eq i32 %i.ya, %i.yb
  br i1 %.not109.i.i, label %bb.dl, label %fixup_lfp_data_ptrs.exit.thread

bb.dl:                                            ; preds = %bb.dk
  %i.yc = add nuw nsw i32 %i.ya, %i.wh            ; 2 uses
  %i.yd = zext i16 %i.mf to i32                   ; 2 uses
  %.not110.i.i = icmp ne i32 %i.yc, %i.yd
  %i.ye = add nuw nsw i32 %i.wk, %i.yd
  %.not111.i.i = icmp ne i32 %i.ye, %i.wq
  %or.cond119.not160.i.i = select i1 %.not110.i.i, i1 true, i1 %.not111.i.i
  %i.yf = icmp samesign ugt i32 %i.ya, %i.vz
  %or.cond155.i.i = or i1 %i.yf, %or.cond119.not160.i.i
  %i.yg = icmp samesign ugt i32 %i.yc, %i.vz
  %or.cond158.i.i.a = select i1 %or.cond155.i.i, i1 true, i1 %i.yg
  br i1 %or.cond158.i.i.a, label %fixup_lfp_data_ptrs.exit.thread, label %4

bb.dm:                                            ; preds = %4
  %i.yh = zext i16 %i.mt to i32
  %i.yi = add nuw nsw i32 %i.wh, %i.yh
  %i.yj = icmp samesign ugt i32 %i.yi, %i.vz
  br i1 %i.yj, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.yk = zext i16 %i.mu to i32
  %i.yl = add nuw nsw i32 %i.wk, %i.yk
  %i.ym = icmp samesign ugt i32 %i.yl, %i.vz
  br i1 %i.ym, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.2.i.i

.preheader124.2.i.i:                              ; preds = %bb.dn
  %i.yn = zext i16 %i.nh to i32
  %i.yo = add nuw nsw i32 %spec.select.i.i, %i.yn
  %i.yp = icmp samesign ugt i32 %i.yo, %i.vz
  br i1 %i.yp, label %fixup_lfp_data_ptrs.exit.thread, label %bb.do

bb.do:                                            ; preds = %.preheader124.2.i.i
  %i.yq = zext i16 %i.ni to i32
  %i.yr = add nuw nsw i32 %i.wh, %i.yq
  %i.ys = icmp samesign ugt i32 %i.yr, %i.vz
  br i1 %i.ys, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.yt = zext i16 %i.nj to i32
  %i.yu = add nuw nsw i32 %i.wk, %i.yt
  %i.yv = icmp samesign ugt i32 %i.yu, %i.vz
  br i1 %i.yv, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.3.i.i

.preheader124.3.i.i:                              ; preds = %bb.dp
  %i.yw = zext i16 %i.nw to i32
  %i.yx = add nuw nsw i32 %spec.select.i.i, %i.yw
  %i.yy = icmp samesign ugt i32 %i.yx, %i.vz
  br i1 %i.yy, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dq

bb.dq:                                            ; preds = %.preheader124.3.i.i
  %i.yz = zext i16 %i.nx to i32
  %i.za = add nuw nsw i32 %i.wh, %i.yz
  %i.zb = icmp samesign ugt i32 %i.za, %i.vz
  br i1 %i.zb, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.zc = zext i16 %i.ny to i32
  %i.zd = add nuw nsw i32 %i.wk, %i.zc
  %i.ze = icmp samesign ugt i32 %i.zd, %i.vz
  br i1 %i.ze, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.4.i.i

.preheader124.4.i.i:                              ; preds = %bb.dr
  %i.zf = zext i16 %i.ol to i32
  %i.zg = add nuw nsw i32 %spec.select.i.i, %i.zf
  %i.zh = icmp samesign ugt i32 %i.zg, %i.vz
  br i1 %i.zh, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %.preheader124.4.i.i
  %i.zi = zext i16 %i.om to i32
  %i.zj = add nuw nsw i32 %i.wh, %i.zi
  %i.zk = icmp samesign ugt i32 %i.zj, %i.vz
  br i1 %i.zk, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.zl = zext i16 %i.on to i32
  %i.zm = add nuw nsw i32 %i.wk, %i.zl
  %i.zn = icmp samesign ugt i32 %i.zm, %i.vz
  br i1 %i.zn, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.5.i.i

.preheader124.5.i.i:                              ; preds = %bb.dt
  %i.zo = zext i16 %i.pa to i32
  %i.zp = add nuw nsw i32 %spec.select.i.i, %i.zo
  %i.zq = icmp samesign ugt i32 %i.zp, %i.vz
  br i1 %i.zq, label %fixup_lfp_data_ptrs.exit.thread, label %bb.du

bb.du:                                            ; preds = %.preheader124.5.i.i
  %i.zr = zext i16 %i.pb to i32
  %i.zs = add nuw nsw i32 %i.wh, %i.zr
  %i.zt = icmp samesign ugt i32 %i.zs, %i.vz
  br i1 %i.zt, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.zu = zext i16 %i.pc to i32
  %i.zv = add nuw nsw i32 %i.wk, %i.zu
  %i.zw = icmp samesign ugt i32 %i.zv, %i.vz
  br i1 %i.zw, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.6.i.i

.preheader124.6.i.i:                              ; preds = %bb.dv
  %i.zx = zext i16 %i.pp to i32
  %i.zy = add nuw nsw i32 %spec.select.i.i, %i.zx
  %i.zz = icmp samesign ugt i32 %i.zy, %i.vz
  br i1 %i.zz, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dw

bb.dw:                                            ; preds = %.preheader124.6.i.i
  %i.aaa = zext i16 %i.pq to i32
  %i.aab = add nuw nsw i32 %i.wh, %i.aaa
  %i.aac = icmp samesign ugt i32 %i.aab, %i.vz
  br i1 %i.aac, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aad = zext i16 %i.pr to i32
  %i.aae = add nuw nsw i32 %i.wk, %i.aad
  %i.aaf = icmp samesign ugt i32 %i.aae, %i.vz
  br i1 %i.aaf, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.7.i.i

.preheader124.7.i.i:                              ; preds = %bb.dx
  %i.aag = zext i16 %i.qe to i32
  %i.aah = add nuw nsw i32 %spec.select.i.i, %i.aag
  %i.aai = icmp samesign ugt i32 %i.aah, %i.vz
  br i1 %i.aai, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %.preheader124.7.i.i
  %i.aaj = zext i16 %i.qf to i32
  %i.aak = add nuw nsw i32 %i.wh, %i.aaj
  %i.aal = icmp samesign ugt i32 %i.aak, %i.vz
  br i1 %i.aal, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aam = zext i16 %i.qg to i32
  %i.aan = add nuw nsw i32 %i.wk, %i.aam
  %i.aao = icmp samesign ugt i32 %i.aan, %i.vz
  br i1 %i.aao, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.8.i.i

.preheader124.8.i.i:                              ; preds = %bb.dz
  %i.aap = zext i16 %i.qt to i32
  %i.aaq = add nuw nsw i32 %spec.select.i.i, %i.aap
  %i.aar = icmp samesign ugt i32 %i.aaq, %i.vz
  br i1 %i.aar, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ea

bb.ea:                                            ; preds = %.preheader124.8.i.i
  %i.aas = zext i16 %i.qu to i32
  %i.aat = add nuw nsw i32 %i.wh, %i.aas
  %i.aau = icmp samesign ugt i32 %i.aat, %i.vz
  br i1 %i.aau, label %fixup_lfp_data_ptrs.exit.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aav = zext i16 %i.qv to i32
  %i.aaw = add nuw nsw i32 %i.wk, %i.aav
  %i.aax = icmp samesign ugt i32 %i.aaw, %i.vz
  br i1 %i.aax, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.9.i.i

.preheader124.9.i.i:                              ; preds = %bb.eb
  %i.aay = zext i16 %i.ri to i32
  %i.aaz = add nuw nsw i32 %spec.select.i.i, %i.aay
  %i.aba = icmp samesign ugt i32 %i.aaz, %i.vz
  br i1 %i.aba, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ec

bb.ec:                                            ; preds = %.preheader124.9.i.i
  %i.abb = zext i16 %i.rj to i32
  %i.abc = add nuw nsw i32 %i.wh, %i.abb
  %i.abd = icmp samesign ugt i32 %i.abc, %i.vz
  br i1 %i.abd, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.abe = zext i16 %i.rk to i32
  %i.abf = add nuw nsw i32 %i.wk, %i.abe
  %i.abg = icmp samesign ugt i32 %i.abf, %i.vz
  br i1 %i.abg, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.10.i.i

.preheader124.10.i.i:                             ; preds = %bb.ed
  %i.abh = zext i16 %i.rx to i32
  %i.abi = add nuw nsw i32 %spec.select.i.i, %i.abh
  %i.abj = icmp samesign ugt i32 %i.abi, %i.vz
  br i1 %i.abj, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ee

bb.ee:                                            ; preds = %.preheader124.10.i.i
  %i.abk = zext i16 %i.ry to i32
  %i.abl = add nuw nsw i32 %i.wh, %i.abk
  %i.abm = icmp samesign ugt i32 %i.abl, %i.vz
  br i1 %i.abm, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.abn = zext i16 %i.rz to i32
  %i.abo = add nuw nsw i32 %i.wk, %i.abn
  %i.abp = icmp samesign ugt i32 %i.abo, %i.vz
  br i1 %i.abp, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.11.i.i

.preheader124.11.i.i:                             ; preds = %bb.ef
  %i.abq = zext i16 %i.sm to i32
  %i.abr = add nuw nsw i32 %spec.select.i.i, %i.abq
  %i.abs = icmp samesign ugt i32 %i.abr, %i.vz
  br i1 %i.abs, label %fixup_lfp_data_ptrs.exit.thread, label %bb.eg

bb.eg:                                            ; preds = %.preheader124.11.i.i
  %i.abt = zext i16 %i.sn to i32
  %i.abu = add nuw nsw i32 %i.wh, %i.abt
  %i.abv = icmp samesign ugt i32 %i.abu, %i.vz
  br i1 %i.abv, label %fixup_lfp_data_ptrs.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.abw = zext i16 %i.so to i32
  %i.abx = add nuw nsw i32 %i.wk, %i.abw
  %i.aby = icmp samesign ugt i32 %i.abx, %i.vz
  br i1 %i.aby, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.12.i.i

.preheader124.12.i.i:                             ; preds = %bb.eh
  %i.abz = zext i16 %i.tb to i32
  %i.aca = add nuw nsw i32 %spec.select.i.i, %i.abz
  %i.acb = icmp samesign ugt i32 %i.aca, %i.vz
  br i1 %i.acb, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ei

bb.ei:                                            ; preds = %.preheader124.12.i.i
  %i.acc = zext i16 %i.tc to i32
  %i.acd = add nuw nsw i32 %i.wh, %i.acc
  %i.ace = icmp samesign ugt i32 %i.acd, %i.vz
  br i1 %i.ace, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.acf = zext i16 %i.td to i32
  %i.acg = add nuw nsw i32 %i.wk, %i.acf
  %i.ach = icmp samesign ugt i32 %i.acg, %i.vz
  br i1 %i.ach, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.13.i.i

.preheader124.13.i.i:                             ; preds = %bb.ej
  %i.aci = zext i16 %i.tq to i32
  %i.acj = add nuw nsw i32 %spec.select.i.i, %i.aci
  %i.ack = icmp samesign ugt i32 %i.acj, %i.vz
  br i1 %i.ack, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ek

bb.ek:                                            ; preds = %.preheader124.13.i.i
  %i.acl = zext i16 %i.tr to i32
  %i.acm = add nuw nsw i32 %i.wh, %i.acl
  %i.acn = icmp samesign ugt i32 %i.acm, %i.vz
  br i1 %i.acn, label %fixup_lfp_data_ptrs.exit.thread, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aco = zext i16 %i.ts to i32
  %i.acp = add nuw nsw i32 %i.wk, %i.aco
  %i.acq = icmp samesign ugt i32 %i.acp, %i.vz
  br i1 %i.acq, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.14.i.i

.preheader124.14.i.i:                             ; preds = %bb.el
  %i.acr = zext i16 %i.uf to i32
  %i.acs = add nuw nsw i32 %spec.select.i.i, %i.acr
  %i.act = icmp samesign ugt i32 %i.acs, %i.vz
  br i1 %i.act, label %fixup_lfp_data_ptrs.exit.thread, label %bb.em

bb.em:                                            ; preds = %.preheader124.14.i.i
  %i.acu = zext i16 %i.ug to i32
  %i.acv = add nuw nsw i32 %i.wh, %i.acu
  %i.acw = icmp samesign ugt i32 %i.acv, %i.vz
  br i1 %i.acw, label %fixup_lfp_data_ptrs.exit.thread, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.acx = zext i16 %i.uh to i32
  %i.acy = add nuw nsw i32 %i.wk, %i.acx
  %i.acz = icmp samesign ugt i32 %i.acy, %i.vz
  br i1 %i.acz, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader124.15.i.i

.preheader124.15.i.i:                             ; preds = %bb.en
  %i.ada = zext i16 %i.uu to i32
  %i.adb = add nuw nsw i32 %spec.select.i.i, %i.ada
  %i.adc = icmp samesign ugt i32 %i.adb, %i.vz
  br i1 %i.adc, label %fixup_lfp_data_ptrs.exit.thread, label %bb.eo

bb.eo:                                            ; preds = %.preheader124.15.i.i
  %i.add = zext i16 %i.uv to i32
  %i.ade = add nuw nsw i32 %i.wh, %i.add
  %i.adf = icmp samesign ugt i32 %i.ade, %i.vz
  br i1 %i.adf, label %fixup_lfp_data_ptrs.exit.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.adg = zext i16 %i.uw to i32
  %i.adh = add nuw nsw i32 %i.wk, %i.adg
  %i.adi = icmp samesign ugt i32 %i.adh, %i.vz
  br i1 %i.adi, label %fixup_lfp_data_ptrs.exit.thread, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.adj = load i16, ptr %i.ux, align 8
  %i.adk = zext i16 %i.adj to i32
  %i.adl = shl nuw i8 %i.uz, 4
  %i.adm = zext i8 %i.adl to i32
  %i.adn = add nuw nsw i32 %i.adk, %i.adm
  %i.ado = icmp samesign ugt i32 %i.adn, %i.vz
  br i1 %i.ado, label %fixup_lfp_data_ptrs.exit.thread, label %.preheader.i.i

4:                                                ; preds = %bb.dl
  %5 = icmp sgt i32 %i.wq, %i.vz
  %6 = add nuw nsw i32 %spec.select.i.i, %i.wo
  %7 = icmp samesign ugt i32 %6, %i.vz
  %or.cond157.i.i = select i1 %5, i1 true, i1 %7
  br i1 %or.cond157.i.i, label %fixup_lfp_data_ptrs.exit.thread, label %bb.dm

.preheader.i.i:                                   ; preds = %bb.eq
  %i.adp = zext nneg i32 %spec.select.i.i to i64
  %invariant.gep.i.i = getelementptr i8, ptr %i.vw, i64 %i.adp ; 16 uses
  %i.adq = zext i16 %i.md to i64
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.adq
  %i.adr = getelementptr i8, ptr %gep.i.i, i64 -2
  %i.ads = load i16, ptr %i.adr, align 2
  %.not112.i.i = icmp eq i16 %i.ads, -1
  br i1 %.not112.i.i, label %bb.er, label %fixup_lfp_data_ptrs.exit.thread

bb.er:                                            ; preds = %.preheader.i.i
  %i.adt = zext i16 %i.ms to i64
  %gep.1.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.adt
  %i.adu = getelementptr i8, ptr %gep.1.i.i, i64 -2
  %i.adv = load i16, ptr %i.adu, align 2
  %.not112.1.i.i = icmp eq i16 %i.adv, -1
  br i1 %.not112.1.i.i, label %bb.es, label %fixup_lfp_data_ptrs.exit.thread

bb.es:                                            ; preds = %bb.er
  %i.adw = zext i16 %i.nh to i64
  %gep.2.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.adw
  %i.adx = getelementptr i8, ptr %gep.2.i.i, i64 -2
  %i.ady = load i16, ptr %i.adx, align 2
  %.not112.2.i.i = icmp eq i16 %i.ady, -1
  br i1 %.not112.2.i.i, label %bb.et, label %fixup_lfp_data_ptrs.exit.thread

bb.et:                                            ; preds = %bb.es
  %i.adz = zext i16 %i.nw to i64
  %gep.3.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.adz
  %i.aea = getelementptr i8, ptr %gep.3.i.i, i64 -2
  %i.aeb = load i16, ptr %i.aea, align 2
  %.not112.3.i.i = icmp eq i16 %i.aeb, -1
  br i1 %.not112.3.i.i, label %bb.eu, label %fixup_lfp_data_ptrs.exit.thread

bb.eu:                                            ; preds = %bb.et
  %i.aec = zext i16 %i.ol to i64
  %gep.4.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aec
  %i.aed = getelementptr i8, ptr %gep.4.i.i, i64 -2
  %i.aee = load i16, ptr %i.aed, align 2
  %.not112.4.i.i = icmp eq i16 %i.aee, -1
  br i1 %.not112.4.i.i, label %bb.ev, label %fixup_lfp_data_ptrs.exit.thread

bb.ev:                                            ; preds = %bb.eu
  %i.aef = zext i16 %i.pa to i64
  %gep.5.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aef
  %i.aeg = getelementptr i8, ptr %gep.5.i.i, i64 -2
  %i.aeh = load i16, ptr %i.aeg, align 2
  %.not112.5.i.i = icmp eq i16 %i.aeh, -1
  br i1 %.not112.5.i.i, label %bb.ew, label %fixup_lfp_data_ptrs.exit.thread

bb.ew:                                            ; preds = %bb.ev
  %i.aei = zext i16 %i.pp to i64
  %gep.6.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aei
  %i.aej = getelementptr i8, ptr %gep.6.i.i, i64 -2
  %i.aek = load i16, ptr %i.aej, align 2
  %.not112.6.i.i = icmp eq i16 %i.aek, -1
  br i1 %.not112.6.i.i, label %bb.ex, label %fixup_lfp_data_ptrs.exit.thread

bb.ex:                                            ; preds = %bb.ew
  %i.ael = zext i16 %i.qe to i64
  %gep.7.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.ael
  %i.aem = getelementptr i8, ptr %gep.7.i.i, i64 -2
  %i.aen = load i16, ptr %i.aem, align 2
  %.not112.7.i.i = icmp eq i16 %i.aen, -1
  br i1 %.not112.7.i.i, label %bb.ey, label %fixup_lfp_data_ptrs.exit.thread

bb.ey:                                            ; preds = %bb.ex
  %i.aeo = zext i16 %i.qt to i64
  %gep.8.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aeo
  %i.aep = getelementptr i8, ptr %gep.8.i.i, i64 -2
  %i.aeq = load i16, ptr %i.aep, align 2
  %.not112.8.i.i = icmp eq i16 %i.aeq, -1
  br i1 %.not112.8.i.i, label %bb.ez, label %fixup_lfp_data_ptrs.exit.thread

bb.ez:                                            ; preds = %bb.ey
  %i.aer = zext i16 %i.ri to i64
  %gep.9.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aer
  %i.aes = getelementptr i8, ptr %gep.9.i.i, i64 -2
  %i.aet = load i16, ptr %i.aes, align 2
  %.not112.9.i.i = icmp eq i16 %i.aet, -1
  br i1 %.not112.9.i.i, label %bb.fa, label %fixup_lfp_data_ptrs.exit.thread

bb.fa:                                            ; preds = %bb.ez
  %i.aeu = zext i16 %i.rx to i64
  %gep.10.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aeu
  %i.aev = getelementptr i8, ptr %gep.10.i.i, i64 -2
  %i.aew = load i16, ptr %i.aev, align 2
  %.not112.10.i.i = icmp eq i16 %i.aew, -1
  br i1 %.not112.10.i.i, label %bb.fb, label %fixup_lfp_data_ptrs.exit.thread

bb.fb:                                            ; preds = %bb.fa
  %i.aex = zext i16 %i.sm to i64
  %gep.11.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.aex
  %i.aey = getelementptr i8, ptr %gep.11.i.i, i64 -2
  %i.aez = load i16, ptr %i.aey, align 2
  %.not112.11.i.i = icmp eq i16 %i.aez, -1
  br i1 %.not112.11.i.i, label %bb.fc, label %fixup_lfp_data_ptrs.exit.thread

bb.fc:                                            ; preds = %bb.fb
  %i.afa = zext i16 %i.tb to i64
  %gep.12.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.afa
  %i.afb = getelementptr i8, ptr %gep.12.i.i, i64 -2
  %i.afc = load i16, ptr %i.afb, align 2
  %.not112.12.i.i = icmp eq i16 %i.afc, -1
  br i1 %.not112.12.i.i, label %bb.fd, label %fixup_lfp_data_ptrs.exit.thread

bb.fd:                                            ; preds = %bb.fc
  %i.afd = zext i16 %i.tq to i64
  %gep.13.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.afd
  %i.afe = getelementptr i8, ptr %gep.13.i.i, i64 -2
  %i.aff = load i16, ptr %i.afe, align 2
  %.not112.13.i.i = icmp eq i16 %i.aff, -1
  br i1 %.not112.13.i.i, label %bb.fe, label %fixup_lfp_data_ptrs.exit.thread

bb.fe:                                            ; preds = %bb.fd
  %i.afg = zext i16 %i.uf to i64
  %gep.14.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.afg
  %i.afh = getelementptr i8, ptr %gep.14.i.i, i64 -2
  %i.afi = load i16, ptr %i.afh, align 2
  %.not112.14.i.i = icmp eq i16 %i.afi, -1
  br i1 %.not112.14.i.i, label %fixup_lfp_data_ptrs.exit, label %fixup_lfp_data_ptrs.exit.thread

fixup_lfp_data_ptrs.exit:                         ; preds = %bb.fe
  %i.afj = zext i16 %i.uu to i64
  %gep.15.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.afj
  %i.afk = getelementptr i8, ptr %gep.15.i.i, i64 -2
  %i.afl = load i16, ptr %i.afk, align 2
  %.not112.15.i.i = icmp eq i16 %i.afl, -1
  br i1 %.not112.15.i.i, label %bb.fg, label %fixup_lfp_data_ptrs.exit.thread

fixup_lfp_data_ptrs.exit.thread:                  ; preds = %_get_blocksize.exit.i.i34.i, %bb.ct, %bb.dh, %bb.dg, %bb.df, %bb.de, %.preheader126.i.i, %bb.di, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %raw_block_offset.exit.i, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.do, %bb.dp, %.preheader124.3.i.i, %bb.dq, %bb.dr, %.preheader124.4.i.i, %bb.ds, %bb.dt, %.preheader124.5.i.i, %bb.du, %bb.dv, %.preheader124.6.i.i, %bb.dw, %bb.dx, %.preheader124.7.i.i, %bb.dy, %bb.dz, %.preheader124.8.i.i, %bb.ea, %bb.eb, %.preheader124.9.i.i, %bb.ec, %bb.ed, %.preheader124.10.i.i, %bb.ee, %bb.ef, %.preheader124.11.i.i, %bb.eg, %bb.eh, %.preheader124.12.i.i, %bb.ei, %bb.ej, %.preheader124.13.i.i, %bb.ek, %bb.el, %.preheader124.14.i.i, %bb.em, %bb.en, %.preheader124.15.i.i, %bb.eo, %bb.ep, %bb.fc, %bb.ex, %bb.fb, %bb.ew, %bb.fd, %bb.ev, %bb.ez, %bb.eu, %bb.fe, %bb.et, %bb.fa, %bb.es, %bb.er, %.preheader.i.i, %4, %bb.eq, %bb.ba, %bb.ey, %bb.dk, %bb.dj, %bb.dm, %bb.dl, %bb.dc, %bb.db, %bb.da, %bb.cz, %get_blocksize.exit.i.i, %find_raw_section.exit.i.i, %bb.az, %bb.dn, %.preheader124.2.i.i, %bb.cr, %fixup_lfp_data_ptrs.exit
  %i.afm = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i97 = icmp eq ptr %i.afm, null
  br i1 %.not.i97, label %__drm_to_dev.exit98, label %bb.ff

bb.ff:                                            ; preds = %fixup_lfp_data_ptrs.exit.thread
  %i.afn = getelementptr i8, ptr %i.afm, i64 8
  %i.afo = load ptr, ptr %i.afn, align 8
  br label %__drm_to_dev.exit98

__drm_to_dev.exit98:                              ; preds = %fixup_lfp_data_ptrs.exit.thread, %bb.ff
  %i.afp = phi ptr [ %i.afo, %bb.ff ], [ null, %fixup_lfp_data_ptrs.exit.thread ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.afp, ptr noundef @.str.25) #17
  tail call void @kfree(ptr noundef nonnull %i.kg) #16
  br label %.thread

bb.fg:                                            ; preds = %fixup_lfp_data_ptrs.exit, %__drm_to_dev.exit91
  %i.afq = getelementptr i8, ptr %0, i64 5256
  %i.afr = getelementptr i8, ptr %0, i64 5264     ; 2 uses
  %i.afs = load ptr, ptr %i.afr, align 8          ; 2 uses
  store ptr %i.kg, ptr %i.afr, align 8
  store ptr %i.afq, ptr %i.kg, align 8
  %i.aft = getelementptr i8, ptr %i.kg, i64 8
  store ptr %i.afs, ptr %i.aft, align 8
  store volatile ptr %i.kg, ptr %i.afs, align 8
  br label %.thread

.thread:                                          ; preds = %_get_blocksize.exit.i.i, %.preheader, %bb.i, %find_raw_section.exit.i, %bb.v, %bb.t, %get_blocksize.exit.i, %generate_lfp_data_ptrs.exit, %bb.fg, %__drm_to_dev.exit98, %bb.ak
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_port_to_phy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_phy_is_tc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @opregion_get_panel_type(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @intel_opregion_get_panel_type(ptr noundef %0) #16
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -1, 256) i32 @vbt_get_panel_type(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 5256       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.011.in.i = phi ptr [ %i.a, %bb.a ], [ %.011.i, %bb.c ]
  %.011.i = load ptr, ptr %.011.in.i, align 8     ; 5 uses
  %.not.i = icmp eq ptr %.011.i, %i.a
  br i1 %.not.i, label %bdb_find_section.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %.011.i, i64 16
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, 40
  br i1 %i.d, label %bdb_find_section.exit, label %bb.b, !llvm.loop !0

bdb_find_section.exit:                            ; preds = %bb.c
  %i.e = getelementptr i8, ptr %.011.i, i64 23    ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bdb_find_section.exit.thread, label %bb.d

bb.d:                                             ; preds = %bdb_find_section.exit
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 3 uses
  %i.h = add i8 %i.f, 1
  %spec.select.i = icmp ult i8 %i.h, 17
  br i1 %spec.select.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i28 = icmp eq ptr %i.i, null
  br i1 %.not.i28, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.l = phi ptr [ %i.k, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.l, i32 noundef 2, ptr noundef @.str.76, i32 noundef %i.g) #16
  br label %bdb_find_section.exit.thread

bb.g:                                             ; preds = %bb.d
  %.not26 = icmp eq ptr %1, null
  br i1 %.not26, label %bdb_find_section.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8
  switch i16 %i.n, label %bb.l [
    i16 128, label %bb.i
    i16 8, label %bdb_find_section.exit.thread
  ], !prof !71

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %.011.i, i64 24
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = add i8 %i.p, 1
  %spec.select.i29 = icmp ult i8 %i.r, 17
  br i1 %spec.select.i29, label %bdb_find_section.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i30 = icmp eq ptr %i.s, null
  br i1 %.not.i30, label %__drm_to_dev.exit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit31

__drm_to_dev.exit31:                              ; preds = %bb.j, %bb.k
  %i.v = phi ptr [ %i.u, %bb.k ], [ null, %bb.j ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.v, i32 noundef 2, ptr noundef @.str.77, i32 noundef %i.q) #16
  br label %bdb_find_section.exit.thread

bb.l:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i32 = icmp eq ptr %i.w, null
  br i1 %.not.i32, label %__drm_to_dev.exit33, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit33

__drm_to_dev.exit33:                              ; preds = %bb.l, %bb.m
  %i.z = phi ptr [ %i.y, %bb.m ], [ null, %bb.l ]
  %i.aa = tail call ptr @dev_driver_string(ptr noundef %i.z) #16 ; 0 uses
  %i.ab = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.66, ptr @.str.2, i32 675, i32 2321, i64 16) #15, !srcloc !72
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i38 = icmp eq ptr %i.ac, null
  br i1 %.not.i38, label %__drm_to_dev.exit39, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit33
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %__drm_to_dev.exit39

__drm_to_dev.exit39:                              ; preds = %__drm_to_dev.exit33, %bb.n
  %i.af = phi ptr [ %i.ae, %bb.n ], [ null, %__drm_to_dev.exit33 ]
  %i.ag = tail call ptr @dev_driver_string(ptr noundef %i.af) #16
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i40 = icmp eq ptr %i.ah, null
  br i1 %.not.i40, label %__drm_to_dev.exit41, label %bb.o

bb.o:                                             ; preds = %__drm_to_dev.exit39
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %__drm_to_dev.exit41

__drm_to_dev.exit41:                              ; preds = %__drm_to_dev.exit39, %bb.o
  %i.ak = phi ptr [ %i.aj, %bb.o ], [ null, %__drm_to_dev.exit39 ] ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i42 = icmp eq ptr %i.am, null
  br i1 %.not.i42, label %bb.p, label %dev_name.exit45

bb.p:                                             ; preds = %__drm_to_dev.exit41
  %.val.i44 = load ptr, ptr %i.ak, align 8
  br label %dev_name.exit45

dev_name.exit45:                                  ; preds = %__drm_to_dev.exit41, %bb.p
  %.0.i43 = phi ptr [ %.val.i44, %bb.p ], [ %i.am, %__drm_to_dev.exit41 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ab, ptr noundef %i.ag, ptr noundef %.0.i43, ptr noundef @.str.78) #16
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !73
  %.pre = load i8, ptr %i.e, align 1
  %.pre50 = zext i8 %.pre to i32
  br label %bdb_find_section.exit.thread

bdb_find_section.exit.thread:                     ; preds = %bb.b, %dev_name.exit45, %bb.g, %bb.h, %bb.i, %bdb_find_section.exit, %__drm_to_dev.exit31, %__drm_to_dev.exit
  %.0 = phi i32 [ %i.q, %bb.i ], [ -1, %__drm_to_dev.exit31 ], [ %.pre50, %dev_name.exit45 ], [ -1, %__drm_to_dev.exit ], [ -1, %bdb_find_section.exit ], [ %i.g, %bb.h ], [ %i.g, %bb.g ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -1, 16) i32 @pnpid_get_panel_type(ptr nofree noundef readonly captures(address) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i1 zeroext %3) #3 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.drm_edid_product_id, align 8 ; 38 uses
  %5 = alloca %struct.drm_edid_product_id, align 8 ; 37 uses
  %6 = alloca %struct.drm_printer, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bdb_find_section.exit.thread, label %bb.b

end_hunk_0
