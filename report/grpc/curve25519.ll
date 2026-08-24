Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/curve25519?download=true
inline.NumInlined: 534
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ED25519_verify:bb.a
  %i.qu = getelementptr inbounds nuw i8, ptr %12, i64 672
  store i64 %i.qq, ptr %i.qu, align 16, !tbaa !12
  %i.qv = getelementptr inbounds nuw i8, ptr %12, i64 680
  %i.qw = add i64 %i.qc, 4503599627370458
  %i.qx = sub i64 %i.qw, %i.qd
  %i.qy = add i64 %i.qf, 4503599627370494
  %i.qz = sub i64 %i.qy, %i.qg
  %i.ra = add i64 %i.qi, 4503599627370494
  %i.rb = sub i64 %i.ra, %i.qj
  %i.rc = add i64 %i.ql, 4503599627370494
  %i.rd = sub i64 %i.rc, %i.qm
  %i.re = add i64 %i.qo, 4503599627370494
  %i.rf = sub i64 %i.re, %i.qp
  store i64 %i.qx, ptr %i.qv, align 8, !tbaa !12
  %i.rg = getelementptr inbounds nuw i8, ptr %12, i64 688
  store i64 %i.qz, ptr %i.rg, align 16, !tbaa !12
  %i.rh = getelementptr inbounds nuw i8, ptr %12, i64 696
  store i64 %i.rb, ptr %i.rh, align 8, !tbaa !12
  %i.ri = getelementptr inbounds nuw i8, ptr %12, i64 704
  store i64 %i.rd, ptr %i.ri, align 16, !tbaa !12
  %i.rj = getelementptr inbounds nuw i8, ptr %12, i64 712
  store i64 %i.rf, ptr %i.rj, align 8, !tbaa !12
  %i.rk = getelementptr inbounds nuw i8, ptr %12, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.rk, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.lk, i64 40, i1 false)
  %i.rl = getelementptr inbounds nuw i8, ptr %12, i64 760
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.rl, ptr noundef nonnull readonly %i.ll, ptr noundef nonnull @_ZL2d2)
  call void @x25519_ge_add(ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %i.qb)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %14, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lj, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull readonly %i.lg)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lk, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ll, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.lf)
  %i.rm = getelementptr inbounds nuw i8, ptr %12, i64 800 ; 2 uses
  %i.rn = load i64, ptr %i.lj, align 8, !tbaa !12 ; 2 uses
  %i.ro = load i64, ptr %14, align 8, !tbaa !12   ; 2 uses
  %i.rp = add i64 %i.ro, %i.rn
  %i.rq = load i64, ptr %i.lq, align 8, !tbaa !12 ; 2 uses
  %i.rr = load i64, ptr %i.ls, align 8, !tbaa !12 ; 2 uses
  %i.rs = add i64 %i.rr, %i.rq
  %i.rt = load i64, ptr %i.lv, align 8, !tbaa !12 ; 2 uses
  %i.ru = load i64, ptr %i.lx, align 8, !tbaa !12 ; 2 uses
  %i.rv = add i64 %i.ru, %i.rt
  %i.rw = load i64, ptr %i.ma, align 8, !tbaa !12 ; 2 uses
  %i.rx = load i64, ptr %i.mc, align 8, !tbaa !12 ; 2 uses
  %i.ry = add i64 %i.rx, %i.rw
  %i.rz = load i64, ptr %i.mf, align 8, !tbaa !12 ; 2 uses
  %i.sa = load i64, ptr %i.mh, align 8, !tbaa !12 ; 2 uses
  %i.sb = add i64 %i.sa, %i.rz
  store i64 %i.rp, ptr %i.rm, align 16, !tbaa !12
  %i.sc = getelementptr inbounds nuw i8, ptr %12, i64 808
  store i64 %i.rs, ptr %i.sc, align 8, !tbaa !12
  %i.sd = getelementptr inbounds nuw i8, ptr %12, i64 816
  store i64 %i.rv, ptr %i.sd, align 16, !tbaa !12
  %i.se = getelementptr inbounds nuw i8, ptr %12, i64 824
  store i64 %i.ry, ptr %i.se, align 8, !tbaa !12
  %i.sf = getelementptr inbounds nuw i8, ptr %12, i64 832
  store i64 %i.sb, ptr %i.sf, align 16, !tbaa !12
  %i.sg = getelementptr inbounds nuw i8, ptr %12, i64 840
  %i.sh = add i64 %i.rn, 4503599627370458
  %i.si = sub i64 %i.sh, %i.ro
  %i.sj = add i64 %i.rq, 4503599627370494
  %i.sk = sub i64 %i.sj, %i.rr
  %i.sl = add i64 %i.rt, 4503599627370494
  %i.sm = sub i64 %i.sl, %i.ru
  %i.sn = add i64 %i.rw, 4503599627370494
  %i.so = sub i64 %i.sn, %i.rx
  %i.sp = add i64 %i.rz, 4503599627370494
  %i.sq = sub i64 %i.sp, %i.sa
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !12
  %i.sr = getelementptr inbounds nuw i8, ptr %12, i64 848
  store i64 %i.sk, ptr %i.sr, align 16, !tbaa !12
  %i.ss = getelementptr inbounds nuw i8, ptr %12, i64 856
  store i64 %i.sm, ptr %i.ss, align 8, !tbaa !12
  %i.st = getelementptr inbounds nuw i8, ptr %12, i64 864
  store i64 %i.so, ptr %i.st, align 16, !tbaa !12
  %i.su = getelementptr inbounds nuw i8, ptr %12, i64 872
  store i64 %i.sq, ptr %i.su, align 8, !tbaa !12
  %i.sv = getelementptr inbounds nuw i8, ptr %12, i64 880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.sv, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.lk, i64 40, i1 false)
  %i.sw = getelementptr inbounds nuw i8, ptr %12, i64 920
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.sw, ptr noundef nonnull readonly %i.ll, ptr noundef nonnull @_ZL2d2)
  call void @x25519_ge_add(ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %i.rm)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %14, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lj, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull readonly %i.lg)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lk, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ll, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.lf)
  %i.sx = getelementptr inbounds nuw i8, ptr %12, i64 960 ; 2 uses
  %i.sy = load i64, ptr %i.lj, align 8, !tbaa !12 ; 2 uses
  %i.sz = load i64, ptr %14, align 8, !tbaa !12   ; 2 uses
  %i.ta = add i64 %i.sz, %i.sy
  %i.tb = load i64, ptr %i.lq, align 8, !tbaa !12 ; 2 uses
  %i.tc = load i64, ptr %i.ls, align 8, !tbaa !12 ; 2 uses
  %i.td = add i64 %i.tc, %i.tb
  %i.te = load i64, ptr %i.lv, align 8, !tbaa !12 ; 2 uses
  %i.tf = load i64, ptr %i.lx, align 8, !tbaa !12 ; 2 uses
  %i.tg = add i64 %i.tf, %i.te
  %i.th = load i64, ptr %i.ma, align 8, !tbaa !12 ; 2 uses
  %i.ti = load i64, ptr %i.mc, align 8, !tbaa !12 ; 2 uses
  %i.tj = add i64 %i.ti, %i.th
  %i.tk = load i64, ptr %i.mf, align 8, !tbaa !12 ; 2 uses
  %i.tl = load i64, ptr %i.mh, align 8, !tbaa !12 ; 2 uses
  %i.tm = add i64 %i.tl, %i.tk
  store i64 %i.ta, ptr %i.sx, align 16, !tbaa !12
  %i.tn = getelementptr inbounds nuw i8, ptr %12, i64 968
  store i64 %i.td, ptr %i.tn, align 8, !tbaa !12
  %i.to = getelementptr inbounds nuw i8, ptr %12, i64 976
  store i64 %i.tg, ptr %i.to, align 16, !tbaa !12
  %i.tp = getelementptr inbounds nuw i8, ptr %12, i64 984
  store i64 %i.tj, ptr %i.tp, align 8, !tbaa !12
  %i.tq = getelementptr inbounds nuw i8, ptr %12, i64 992
  store i64 %i.tm, ptr %i.tq, align 16, !tbaa !12
  %i.tr = getelementptr inbounds nuw i8, ptr %12, i64 1000
  %i.ts = add i64 %i.sy, 4503599627370458
  %i.tt = sub i64 %i.ts, %i.sz
  %i.tu = add i64 %i.tb, 4503599627370494
  %i.tv = sub i64 %i.tu, %i.tc
  %i.tw = add i64 %i.te, 4503599627370494
  %i.tx = sub i64 %i.tw, %i.tf
  %i.ty = add i64 %i.th, 4503599627370494
  %i.tz = sub i64 %i.ty, %i.ti
  %i.ua = add i64 %i.tk, 4503599627370494
  %i.ub = sub i64 %i.ua, %i.tl
  store i64 %i.tt, ptr %i.tr, align 8, !tbaa !12
  %i.uc = getelementptr inbounds nuw i8, ptr %12, i64 1008
  store i64 %i.tv, ptr %i.uc, align 16, !tbaa !12
  %i.ud = getelementptr inbounds nuw i8, ptr %12, i64 1016
  store i64 %i.tx, ptr %i.ud, align 8, !tbaa !12
  %i.ue = getelementptr inbounds nuw i8, ptr %12, i64 1024
  store i64 %i.tz, ptr %i.ue, align 16, !tbaa !12
  %i.uf = getelementptr inbounds nuw i8, ptr %12, i64 1032
  store i64 %i.ub, ptr %i.uf, align 8, !tbaa !12
  %i.ug = getelementptr inbounds nuw i8, ptr %12, i64 1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ug, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.lk, i64 40, i1 false)
  %i.uh = getelementptr inbounds nuw i8, ptr %12, i64 1080
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.uh, ptr noundef nonnull readonly %i.ll, ptr noundef nonnull @_ZL2d2)
  call void @x25519_ge_add(ptr noundef nonnull %13, ptr noundef nonnull %15, ptr noundef nonnull %i.sx)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %14, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lj, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull readonly %i.lg)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lk, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ll, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.lf)
  %i.ui = getelementptr inbounds nuw i8, ptr %12, i64 1120
  %i.uj = load i64, ptr %i.lj, align 8, !tbaa !12 ; 2 uses
  %i.uk = load i64, ptr %14, align 8, !tbaa !12   ; 2 uses
  %i.ul = add i64 %i.uk, %i.uj
  %i.um = load i64, ptr %i.lq, align 8, !tbaa !12 ; 2 uses
  %i.un = load i64, ptr %i.ls, align 8, !tbaa !12 ; 2 uses
  %i.uo = add i64 %i.un, %i.um
  %i.up = load i64, ptr %i.lv, align 8, !tbaa !12 ; 2 uses
  %i.uq = load i64, ptr %i.lx, align 8, !tbaa !12 ; 2 uses
  %i.ur = add i64 %i.uq, %i.up
  %i.us = load i64, ptr %i.ma, align 8, !tbaa !12 ; 2 uses
  %i.ut = load i64, ptr %i.mc, align 8, !tbaa !12 ; 2 uses
  %i.uu = add i64 %i.ut, %i.us
  %i.uv = load i64, ptr %i.mf, align 8, !tbaa !12 ; 2 uses
  %i.uw = load i64, ptr %i.mh, align 8, !tbaa !12 ; 2 uses
  %i.ux = add i64 %i.uw, %i.uv
  store i64 %i.ul, ptr %i.ui, align 16, !tbaa !12
  %i.uy = getelementptr inbounds nuw i8, ptr %12, i64 1128
  store i64 %i.uo, ptr %i.uy, align 8, !tbaa !12
  %i.uz = getelementptr inbounds nuw i8, ptr %12, i64 1136
  store i64 %i.ur, ptr %i.uz, align 16, !tbaa !12
  %i.va = getelementptr inbounds nuw i8, ptr %12, i64 1144
  store i64 %i.uu, ptr %i.va, align 8, !tbaa !12
  %i.vb = getelementptr inbounds nuw i8, ptr %12, i64 1152
  store i64 %i.ux, ptr %i.vb, align 16, !tbaa !12
  %i.vc = getelementptr inbounds nuw i8, ptr %12, i64 1160
  %i.vd = add i64 %i.uj, 4503599627370458
  %i.ve = sub i64 %i.vd, %i.uk
  %i.vf = add i64 %i.um, 4503599627370494
  %i.vg = sub i64 %i.vf, %i.un
  %i.vh = add i64 %i.up, 4503599627370494
  %i.vi = sub i64 %i.vh, %i.uq
  %i.vj = add i64 %i.us, 4503599627370494
  %i.vk = sub i64 %i.vj, %i.ut
  %i.vl = add i64 %i.uv, 4503599627370494
  %i.vm = sub i64 %i.vl, %i.uw
  store i64 %i.ve, ptr %i.vc, align 8, !tbaa !12
  %i.vn = getelementptr inbounds nuw i8, ptr %12, i64 1168
  store i64 %i.vg, ptr %i.vn, align 16, !tbaa !12
  %i.vo = getelementptr inbounds nuw i8, ptr %12, i64 1176
  store i64 %i.vi, ptr %i.vo, align 8, !tbaa !12
  %i.vp = getelementptr inbounds nuw i8, ptr %12, i64 1184
  store i64 %i.vk, ptr %i.vp, align 16, !tbaa !12
  %i.vq = getelementptr inbounds nuw i8, ptr %12, i64 1192
  store i64 %i.vm, ptr %i.vq, align 8, !tbaa !12
  %i.vr = getelementptr inbounds nuw i8, ptr %12, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.vr, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.lk, i64 40, i1 false)
  %i.vs = getelementptr inbounds nuw i8, ptr %12, i64 1240
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.vs, ptr noundef nonnull readonly %i.ll, ptr noundef nonnull @_ZL2d2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.vt = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vu, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.vt, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vw, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.vv, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bq, %_ZL5slidePaPKh.exit54.i
  %.0115.i = phi i32 [ 255, %_ZL5slidePaPKh.exit54.i ], [ %21, %bb.bq ] ; 3 uses
  %18 = zext nneg i32 %.0115.i to i64             ; 4 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.c, i64 %18
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !11
  %.not.i = icmp eq i8 %i.vy, 0
  br i1 %.not.i, label %bb.bn, label %.lr.ph.i

bb.bn:                                            ; preds = %bb.bm
  %i.vz = getelementptr inbounds nuw i8, ptr %i.d, i64 %18
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !11
  %.not22.i = icmp eq i8 %i.wa, 0
  br i1 %.not22.i, label %bb.bo, label %.lr.ph.i

bb.bo:                                            ; preds = %bb.bn
  %19 = add nsw i32 %.0115.i, -1                  ; 2 uses
  %20 = zext nneg i32 %19 to i64                  ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 %20
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !11
  %.not.i.1 = icmp eq i8 %i.wc, 0
  br i1 %.not.i.1, label %bb.bp, label %.lr.ph.i

bb.bp:                                            ; preds = %bb.bo
  %i.wd = getelementptr inbounds nuw i8, ptr %i.d, i64 %20
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !11
  %.not22.i.1 = icmp eq i8 %i.we, 0
  br i1 %.not22.i.1, label %bb.bq, label %.lr.ph.i

bb.bq:                                            ; preds = %bb.bp
  %21 = add nsw i32 %.0115.i, -2
  %.not129.i.1 = icmp eq i32 %19, 0
  br i1 %.not129.i.1, label %_ZL28ge_double_scalarmult_vartimeP5ge_p2PKhPK5ge_p3S2_.exit, label %bb.bm, !llvm.loop !39

.lr.ph.i:                                         ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bn
  %.lcssa = phi i64 [ %18, %bb.bm ], [ %18, %bb.bn ], [ %20, %bb.bo ], [ %20, %bb.bp ]
  %i.wf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.wo = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.wp = getelementptr inbounds nuw i8, ptr %14, i64 104
  %i.wq = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.wr = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.ws = getelementptr inbounds nuw i8, ptr %13, i64 136
  %i.wt = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.wu = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.wv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.wx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.wy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.wz = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.xa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.xb = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.xc = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.xd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.xf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.xg = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.xh = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.xi = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.xj = getelementptr inbounds nuw i8, ptr %13, i64 104
  %i.xk = getelementptr inbounds nuw i8, ptr %13, i64 112
  br label %bb.br

bb.br:                                            ; preds = %bb.bz, %.lr.ph.i
  %indvars.iv.i.a = phi i64 [ %.lcssa, %.lr.ph.i ], [ %indvars.iv.next.i.a, %bb.bz ] ; 4 uses
  call fastcc void @_ZL9ge_p2_dblP7ge_p1p1PK5ge_p2(ptr noundef %13, ptr noundef nonnull %4)
  %i.xl = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.a
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !11  ; 4 uses
  %i.xn = icmp sgt i8 %i.xm, 0
  br i1 %i.xn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %14, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lj, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull readonly %i.lg)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lk, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ll, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.lf)
  %i.xo = lshr i8 %i.xm, 1
  %i.xp = zext nneg i8 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [160 x i8], ptr %12, i64 %i.xp
  call void @x25519_ge_add(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %i.xq)
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.xr = icmp slt i8 %i.xm, 0
  br i1 %i.xr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %14, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lj, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull readonly %i.lg)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lk, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ll, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.lf)
  %.nonneg56.i = sub i8 0, %i.xm
  %i.xs = lshr i8 %.nonneg56.i, 1
  %i.xt = zext nneg i8 %i.xs to i64
  %i.xu = getelementptr inbounds nuw [160 x i8], ptr %12, i64 %i.xt
  call void @x25519_ge_sub(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %i.xu)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.xv = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.a
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !11  ; 4 uses
  %i.xx = icmp sgt i8 %i.xw, 0
  br i1 %i.xx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %14, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lj, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull readonly %i.lg)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lk, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ll, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.lf)
  %i.xy = lshr i8 %i.xw, 1
  %i.xz = zext nneg i8 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [120 x i8], ptr @_ZL2Bi, i64 %i.xz
  call fastcc void @_ZL7ge_maddP7ge_p1p1PK5ge_p3PK10ge_precomp(ptr noundef %13, ptr noundef nonnull %14, ptr noundef nonnull %i.ya)
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.yb = icmp slt i8 %i.xw, 0
  br i1 %i.yb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %14, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lj, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull readonly %i.lg)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.lk, ptr noundef nonnull readonly %i.lg, ptr noundef nonnull readonly %i.ld)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ll, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.lf)
  %.nonneg.i = sub i8 0, %i.xw
  %i.yc = lshr i8 %.nonneg.i, 1
  %i.yd = zext nneg i8 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [120 x i8], ptr @_ZL2Bi, i64 %i.yd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.yf = load i64, ptr %i.lj, align 8, !tbaa !12 ; 2 uses
  %i.yg = load i64, ptr %14, align 8, !tbaa !12   ; 2 uses
  %i.yh = add i64 %i.yg, %i.yf
  %i.yi = load i64, ptr %i.lq, align 8, !tbaa !12 ; 2 uses
  %i.yj = load i64, ptr %i.ls, align 8, !tbaa !12 ; 2 uses
  %i.yk = add i64 %i.yj, %i.yi
  %i.yl = load i64, ptr %i.lv, align 8, !tbaa !12 ; 2 uses
  %i.ym = load i64, ptr %i.lx, align 8, !tbaa !12 ; 2 uses
  %i.yn = add i64 %i.ym, %i.yl
  %i.yo = load i64, ptr %i.ma, align 8, !tbaa !12 ; 2 uses
  %i.yp = load i64, ptr %i.mc, align 8, !tbaa !12 ; 2 uses
  %i.yq = add i64 %i.yp, %i.yo
  %i.yr = load i64, ptr %i.mf, align 8, !tbaa !12 ; 2 uses
  %i.ys = load i64, ptr %i.mh, align 8, !tbaa !12 ; 2 uses
  %i.yt = add i64 %i.ys, %i.yr
  store i64 %i.yh, ptr %13, align 8, !tbaa !12
  store i64 %i.yk, ptr %i.wf, align 8, !tbaa !12
  store i64 %i.yn, ptr %i.wg, align 8, !tbaa !12
  store i64 %i.yq, ptr %i.wh, align 8, !tbaa !12
  store i64 %i.yt, ptr %i.wi, align 8, !tbaa !12
  %i.yu = add i64 %i.yf, 4503599627370458
  %i.yv = sub i64 %i.yu, %i.yg
  %i.yw = add i64 %i.yi, 4503599627370494
  %i.yx = sub i64 %i.yw, %i.yj
  %i.yy = add i64 %i.yl, 4503599627370494
  %i.yz = sub i64 %i.yy, %i.ym
  %i.za = add i64 %i.yo, 4503599627370494
  %i.zb = sub i64 %i.za, %i.yp
  %i.zc = add i64 %i.yr, 4503599627370494
  %i.zd = sub i64 %i.zc, %i.ys
  store i64 %i.yv, ptr %i.lf, align 8, !tbaa !12
  store i64 %i.yx, ptr %i.wj, align 8, !tbaa !12
  store i64 %i.yz, ptr %i.wk, align 8, !tbaa !12
  store i64 %i.zb, ptr %i.wl, align 8, !tbaa !12
  store i64 %i.zd, ptr %i.wm, align 8, !tbaa !12
  %i.ze = getelementptr inbounds nuw i8, ptr %i.ye, i64 40
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %9, ptr noundef nonnull readonly %13, ptr noundef nonnull readonly %i.ze)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %8, ptr noundef nonnull readonly %i.lf, ptr noundef nonnull readonly %i.ye)
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ye, i64 80
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %10, ptr noundef nonnull readonly %i.zf, ptr noundef nonnull readonly %i.ll)
  %i.zg = load i64, ptr %i.lk, align 8, !tbaa !12
  %i.zh = shl i64 %i.zg, 1                        ; 2 uses
  %i.zi = load i64, ptr %i.wn, align 8, !tbaa !12
  %i.zj = shl i64 %i.zi, 1
  %i.zk = load i64, ptr %i.wo, align 8, !tbaa !12
  %i.zl = shl i64 %i.zk, 1
  %i.zm = load i64, ptr %i.wp, align 8, !tbaa !12
  %i.zn = shl i64 %i.zm, 1
  %i.zo = load i64, ptr %i.wq, align 8, !tbaa !12
  %i.zp = shl i64 %i.zo, 1
  %i.zq = load i64, ptr %9, align 8, !tbaa !12    ; 2 uses
  %i.zr = add i64 %i.zq, 4503599627370458
  %i.zs = load i64, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = load i64, ptr %i.wv, align 8, !tbaa !12 ; 2 uses
  %i.zv = add i64 %i.zu, 4503599627370494
  %i.zw = load i64, ptr %i.ww, align 8, !tbaa !12 ; 2 uses
  %i.zx = sub i64 %i.zv, %i.zw
  %i.zy = load i64, ptr %i.wx, align 8, !tbaa !12 ; 2 uses
  %i.zz = add i64 %i.zy, 4503599627370494
  %i.aaa = load i64, ptr %i.wy, align 8, !tbaa !12 ; 2 uses
  %i.aab = sub i64 %i.zz, %i.aaa
  %i.aac = load i64, ptr %i.wz, align 8, !tbaa !12 ; 2 uses
  %i.aad = add i64 %i.aac, 4503599627370494
  %i.aae = load i64, ptr %i.xa, align 8, !tbaa !12 ; 2 uses
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = load i64, ptr %i.xb, align 8, !tbaa !12 ; 2 uses
  %i.aah = add i64 %i.aag, 4503599627370494
  %i.aai = load i64, ptr %i.xc, align 8, !tbaa !12 ; 2 uses
  %i.aaj = sub i64 %i.aah, %i.aai
  store i64 %i.zt, ptr %13, align 8, !tbaa !12
  store i64 %i.zx, ptr %i.wf, align 8, !tbaa !12
  store i64 %i.aab, ptr %i.wg, align 8, !tbaa !12
  store i64 %i.aaf, ptr %i.wh, align 8, !tbaa !12
  store i64 %i.aaj, ptr %i.wi, align 8, !tbaa !12
  %i.aak = add i64 %i.zs, %i.zq
  %i.aal = add i64 %i.zw, %i.zu
  %i.aam = add i64 %i.aaa, %i.zy
  %i.aan = add i64 %i.aae, %i.aac
  %i.aao = add i64 %i.aai, %i.aag
  store i64 %i.aak, ptr %i.lf, align 8, !tbaa !12
  store i64 %i.aal, ptr %i.wj, align 8, !tbaa !12
  store i64 %i.aam, ptr %i.wk, align 8, !tbaa !12
  store i64 %i.aan, ptr %i.wl, align 8, !tbaa !12
  store i64 %i.aao, ptr %i.wm, align 8, !tbaa !12
  %i.aap = lshr i64 %i.zh, 51
  %i.aaq = add i64 %i.aap, %i.zj                  ; 2 uses
  %i.aar = lshr i64 %i.aaq, 51
  %i.aas = add i64 %i.aar, %i.zl                  ; 2 uses
  %i.aat = lshr i64 %i.aas, 51
  %i.aau = add i64 %i.aat, %i.zn                  ; 2 uses
  %i.aav = lshr i64 %i.aau, 51
  %i.aaw = add i64 %i.aav, %i.zp                  ; 2 uses
  %i.aax = and i64 %i.zh, 2251799813685246
  %i.aay = lshr i64 %i.aaw, 51
  %i.aaz = mul nuw nsw i64 %i.aay, 19
  %i.aba = add nuw nsw i64 %i.aaz, %i.aax         ; 2 uses
  %i.abb = lshr i64 %i.aba, 51
end_hunk_0
