Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/lzxd?download=true
inline.NumInlined: 32
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lzxd_decompress:bb.a
  %.471175.10 = phi ptr [ %i.uk, %bb.ge ], [ %.471175.9, %bb.gc ] ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.471236.10, i64 1 ; 2 uses
  %i.um = load i8, ptr %.471236.10, align 1, !tbaa !41
  %.sroa.12.10.insert.ext = zext i8 %i.um to i32
  %.sroa.12.10.insert.shift = shl nuw nsw i32 %.sroa.12.10.insert.ext, 16
  %.sroa.12.10.insert.insert = or disjoint i32 %.sroa.12.9.insert.insert, %.sroa.12.10.insert.shift
  %.not1474.11 = icmp ult ptr %i.ul, %.471175.10
  br i1 %.not1474.11, label %bb.gi, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.un = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1475.11 = icmp eq i32 %i.un, 0
  br i1 %.not1475.11, label %bb.gh, label %bb.ez

bb.gh:                                            ; preds = %bb.gg
  %i.uo = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.up = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gf
  %.471236.11 = phi ptr [ %i.uo, %bb.gh ], [ %i.ul, %bb.gf ] ; 2 uses
  %.471175.11 = phi ptr [ %i.up, %bb.gh ], [ %.471175.10, %bb.gf ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.471236.11, i64 1
  %i.ur = load i8, ptr %.471236.11, align 1, !tbaa !41
  %.sroa.12.11.insert.ext = zext i8 %i.ur to i32
  %.sroa.12.11.insert.shift = shl nuw i32 %.sroa.12.11.insert.ext, 24
  %.sroa.12.11.insert.insert = or disjoint i32 %.sroa.12.10.insert.insert, %.sroa.12.11.insert.shift
  br label %bb.gk

bb.gj:                                            ; preds = %._crit_edge3322
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.gk:                                            ; preds = %bb.gi, %bb.em, %bb.ej, %.lr.ph3506
  %.481237 = phi ptr [ %i.rg, %bb.em ], [ %i.rg, %bb.ej ], [ %i.uq, %bb.gi ], [ %.2012093496, %.lr.ph3506 ] ; 4 uses
  %.481176 = phi ptr [ %i.rh, %bb.em ], [ %i.rh, %bb.ej ], [ %.471175.11, %bb.gi ], [ %.2011483497, %.lr.ph3506 ] ; 4 uses
  %.251092 = phi i32 [ %i.ri, %bb.em ], [ %i.ri, %bb.ej ], [ 0, %bb.gi ], [ %.1210793498, %.lr.ph3506 ] ; 4 uses
  %.25 = phi i32 [ %i.rj, %bb.em ], [ %i.rj, %bb.ej ], [ 0, %bb.gi ], [ %.1210573499, %.lr.ph3506 ] ; 4 uses
  %.31009 = phi i32 [ %.210083501, %bb.em ], [ %.210083501, %bb.ej ], [ %.sroa.0.3.insert.insert, %bb.gi ], [ %.210083501, %.lr.ph3506 ] ; 4 uses
  %.31000 = phi i32 [ %.29993502, %bb.em ], [ %.29993502, %bb.ej ], [ %.sroa.7.7.insert.insert, %bb.gi ], [ %.29993502, %.lr.ph3506 ] ; 4 uses
  %.3991 = phi i32 [ %.29903503, %bb.em ], [ %.29903503, %bb.ej ], [ %.sroa.12.11.insert.insert, %bb.gi ], [ %.29903503, %.lr.ph3506 ] ; 4 uses
  %i.us = load i32, ptr %i.bd, align 4, !tbaa !40 ; 4 uses
  %spec.select1556 = tail call i32 @llvm.smin.i32(i32 %i.us, i32 %.09873504) ; 7 uses
  %i.ut = sub nsw i32 %.09873504, %spec.select1556 ; 2 uses
  %i.uu = sub i32 %i.us, %spec.select1556
  store i32 %i.uu, ptr %i.bd, align 4, !tbaa !40
  %i.uv = load i8, ptr %i.bf, align 1, !tbaa !69
  switch i8 %i.uv, label %bb.ml [
    i8 2, label %bb.gl
    i8 1, label %bb.gl
    i8 3, label %bb.mb
  ]

bb.gl:                                            ; preds = %bb.gk, %bb.gk
  %i.uw = icmp sgt i32 %i.us, 0
  br i1 %i.uw, label %.preheader1886, label %.loopexit1888

.preheader1886:                                   ; preds = %bb.gl, %bb.ma
  %.19813486 = phi i32 [ %.3983, %bb.ma ], [ %spec.select1556, %bb.gl ] ; 2 uses
  %.49923485 = phi i32 [ %.7995, %bb.ma ], [ %.3991, %bb.gl ] ; 4 uses
  %.410013484 = phi i32 [ %.71004, %bb.ma ], [ %.31000, %bb.gl ] ; 7 uses
  %.410103483 = phi i32 [ %.71013, %bb.ma ], [ %.31009, %bb.gl ] ; 7 uses
  %.210173482 = phi i32 [ %.41019, %bb.ma ], [ %.110163500, %bb.gl ] ; 6 uses
  %.263481 = phi i32 [ %.55, %bb.ma ], [ %.25, %bb.gl ] ; 3 uses
  %.2610933480 = phi i32 [ %.551122, %bb.ma ], [ %.251092, %bb.gl ] ; 2 uses
  %.4911773479 = phi ptr [ %.98, %bb.ma ], [ %.481176, %bb.gl ] ; 2 uses
  %.4912383478 = phi ptr [ %.981287, %bb.ma ], [ %.481237, %bb.gl ] ; 2 uses
  %i.ux = icmp slt i32 %.263481, 16
  br i1 %i.ux, label %.lr.ph3360, label %._crit_edge3361

.lr.ph3360:                                       ; preds = %.preheader1886, %bb.gz
  %.273359 = phi i32 [ %i.wp, %bb.gz ], [ %.263481, %.preheader1886 ] ; 3 uses
  %.2710943358 = phi i32 [ %i.wo, %bb.gz ], [ %.2610933480, %.preheader1886 ]
  %.5011783357 = phi ptr [ %.521180, %bb.gz ], [ %.4911773479, %.preheader1886 ] ; 2 uses
  %.5012393356 = phi ptr [ %i.wg, %bb.gz ], [ %.4912383478, %.preheader1886 ] ; 2 uses
  %.not1530 = icmp ult ptr %.5012393356, %.5011783357
  br i1 %.not1530, label %bb.gs, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph3360
  %i.uy = load ptr, ptr %0, align 8, !tbaa !18
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !46
  %i.vb = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.vc = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.vd = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.ve = tail call i32 %i.va(ptr noundef %i.vb, ptr noundef %i.vc, i32 noundef %i.vd) #5, !inline_history !47 ; 3 uses
  %i.vf = icmp slt i32 %i.ve, 0
  br i1 %i.vf, label %bb.gq, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.vg = icmp eq i32 %i.ve, 0
  br i1 %i.vg, label %bb.go, label %bb.gr

bb.go:                                            ; preds = %bb.gn
  %i.vh = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1605 = icmp eq i8 %i.vh, 0
  br i1 %.not.i1605, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.vi = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 1
  store i8 0, ptr %i.vj, align 1, !tbaa !41
  %i.vk = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.vk, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go, %bb.gm
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.gr:                                            ; preds = %bb.gp, %bb.gn
  %.0.i1603 = phi i32 [ 2, %bb.gp ], [ %i.ve, %bb.gn ]
  %i.vl = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.vl, ptr %i.ab, align 8, !tbaa !42
  %i.vm = zext nneg i32 %.0.i1603 to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vm ; 2 uses
  store ptr %i.vn, ptr %i.ac, align 8, !tbaa !43
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %.lr.ph3360
  %.511240 = phi ptr [ %i.vl, %bb.gr ], [ %.5012393356, %.lr.ph3360 ] ; 2 uses
  %.511179 = phi ptr [ %i.vn, %bb.gr ], [ %.5011783357, %.lr.ph3360 ] ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.511240, i64 1 ; 2 uses
  %i.vp = load i8, ptr %.511240, align 1, !tbaa !41
  %.not1532 = icmp ult ptr %i.vo, %.511179
  br i1 %.not1532, label %bb.gz, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.vq = load ptr, ptr %0, align 8, !tbaa !18
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !46
  %i.vt = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.vu = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.vv = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.vw = tail call i32 %i.vs(ptr noundef %i.vt, ptr noundef %i.vu, i32 noundef %i.vv) #5, !inline_history !47 ; 3 uses
  %i.vx = icmp slt i32 %i.vw, 0
  br i1 %i.vx, label %bb.gx, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.vy = icmp eq i32 %i.vw, 0
  br i1 %i.vy, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  %i.vz = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1609 = icmp eq i8 %i.vz, 0
  br i1 %.not.i1609, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.wa = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  store i8 0, ptr %i.wb, align 1, !tbaa !41
  %i.wc = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.wc, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gv, %bb.gt
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.gy:                                            ; preds = %bb.gw, %bb.gu
  %.0.i1607 = phi i32 [ 2, %bb.gw ], [ %i.vw, %bb.gu ]
  %i.wd = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.wd, ptr %i.ab, align 8, !tbaa !42
  %i.we = zext nneg i32 %.0.i1607 to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.we ; 2 uses
  store ptr %i.wf, ptr %i.ac, align 8, !tbaa !43
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gs, %bb.gy
  %.521241 = phi ptr [ %i.wd, %bb.gy ], [ %i.vo, %bb.gs ] ; 2 uses
  %.521180 = phi ptr [ %i.wf, %bb.gy ], [ %.511179, %bb.gs ] ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.521241, i64 1 ; 2 uses
  %i.wh = load i8, ptr %.521241, align 1, !tbaa !41
  %i.wi = zext i8 %i.wh to i32
  %i.wj = shl nuw nsw i32 %i.wi, 8
  %i.wk = zext i8 %i.vp to i32
  %i.wl = or disjoint i32 %i.wj, %i.wk
  %i.wm = sub i32 16, %.273359
  %i.wn = shl i32 %i.wl, %i.wm
  %i.wo = or i32 %i.wn, %.2710943358              ; 2 uses
  %i.wp = add nsw i32 %.273359, 16                ; 2 uses
  %i.wq = icmp slt i32 %.273359, 0
  br i1 %i.wq, label %.lr.ph3360, label %._crit_edge3361

._crit_edge3361:                                  ; preds = %bb.gz, %.preheader1886
  %.501239.lcssa = phi ptr [ %.4912383478, %.preheader1886 ], [ %i.wg, %bb.gz ] ; 4 uses
  %.501178.lcssa = phi ptr [ %.4911773479, %.preheader1886 ], [ %.521180, %bb.gz ] ; 4 uses
  %.271094.lcssa = phi i32 [ %.2610933480, %.preheader1886 ], [ %i.wo, %bb.gz ] ; 22 uses
  %.27.lcssa = phi i32 [ %.263481, %.preheader1886 ], [ %i.wp, %bb.gz ]
  %i.wr = lshr i32 %.271094.lcssa, 20
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ws
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !50 ; 3 uses
  %i.wv = icmp ugt i16 %i.wu, 2575
  br i1 %i.wv, label %.preheader1884.preheader, label %.loopexit1885

.preheader1884.preheader:                         ; preds = %._crit_edge3361
  %i.ww = zext i16 %i.wu to i64
  %2 = and i32 %.271094.lcssa, 524288
  %.not1485 = icmp ne i32 %2, 0
  %i.wx = zext i1 %.not1485 to i64
  %.idx = shl nuw nsw i64 %i.ww, 2
  %i.wy = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %i.wx
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !50 ; 3 uses
  %i.xb = icmp ugt i16 %i.xa, 2575
  br i1 %i.xb, label %.preheader1884.1, label %.loopexit1885

bb.ha:                                            ; preds = %.preheader1884.19
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

.preheader1884.1:                                 ; preds = %.preheader1884.preheader
  %i.xc = zext i16 %i.xa to i64
  %i.xd = lshr i32 %.271094.lcssa, 18
  %.lobit3868.a = and i32 %i.xd, 1
  %i.xe = zext nneg i32 %.lobit3868.a to i64
  %.idx.1 = shl nuw nsw i64 %i.xc, 2
  %i.xf = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.1
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.xf, i64 %i.xe
  %i.xh = load i16, ptr %i.xg, align 2, !tbaa !50 ; 3 uses
  %i.xi = icmp ugt i16 %i.xh, 2575
  br i1 %i.xi, label %.preheader1884.2, label %.loopexit1885

.preheader1884.2:                                 ; preds = %.preheader1884.1
  %i.xj = zext i16 %i.xh to i64
  %i.xk = lshr i32 %.271094.lcssa, 17
  %.lobit3869.a = and i32 %i.xk, 1
  %i.xl = zext nneg i32 %.lobit3869.a to i64
  %.idx.2 = shl nuw nsw i64 %i.xj, 2
  %i.xm = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.2
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %i.xm, i64 %i.xl
  %i.xo = load i16, ptr %i.xn, align 2, !tbaa !50 ; 3 uses
  %i.xp = icmp ugt i16 %i.xo, 2575
  br i1 %i.xp, label %.preheader1884.3, label %.loopexit1885

.preheader1884.3:                                 ; preds = %.preheader1884.2
  %i.xq = zext i16 %i.xo to i64
  %i.xr = lshr i32 %.271094.lcssa, 16
  %.lobit3870.a = and i32 %i.xr, 1
  %i.xs = zext nneg i32 %.lobit3870.a to i64
  %.idx.3 = shl nuw nsw i64 %i.xq, 2
  %i.xt = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.3
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.xt, i64 %i.xs
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !50 ; 3 uses
  %i.xw = icmp ugt i16 %i.xv, 2575
  br i1 %i.xw, label %.preheader1884.4, label %.loopexit1885

.preheader1884.4:                                 ; preds = %.preheader1884.3
  %i.xx = zext i16 %i.xv to i64
  %i.xy = lshr i32 %.271094.lcssa, 15
  %.lobit3871.a = and i32 %i.xy, 1
  %i.xz = zext nneg i32 %.lobit3871.a to i64
  %.idx.4 = shl nuw nsw i64 %i.xx, 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.4
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.ya, i64 %i.xz
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !50 ; 3 uses
  %i.yd = icmp ugt i16 %i.yc, 2575
  br i1 %i.yd, label %.preheader1884.5, label %.loopexit1885

.preheader1884.5:                                 ; preds = %.preheader1884.4
  %i.ye = zext i16 %i.yc to i64
  %i.yf = lshr i32 %.271094.lcssa, 14
  %.lobit3872.a = and i32 %i.yf, 1
  %i.yg = zext nneg i32 %.lobit3872.a to i64
  %.idx.5 = shl nuw nsw i64 %i.ye, 2
  %i.yh = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.5
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.yh, i64 %i.yg
  %i.yj = load i16, ptr %i.yi, align 2, !tbaa !50 ; 3 uses
  %i.yk = icmp ugt i16 %i.yj, 2575
  br i1 %i.yk, label %.preheader1884.6, label %.loopexit1885

.preheader1884.6:                                 ; preds = %.preheader1884.5
  %i.yl = zext i16 %i.yj to i64
  %i.ym = lshr i32 %.271094.lcssa, 13
  %.lobit3873.a = and i32 %i.ym, 1
  %i.yn = zext nneg i32 %.lobit3873.a to i64
  %.idx.6 = shl nuw nsw i64 %i.yl, 2
  %i.yo = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.6
  %i.yp = getelementptr inbounds nuw [2 x i8], ptr %i.yo, i64 %i.yn
  %i.yq = load i16, ptr %i.yp, align 2, !tbaa !50 ; 3 uses
  %i.yr = icmp ugt i16 %i.yq, 2575
  br i1 %i.yr, label %.preheader1884.7, label %.loopexit1885

.preheader1884.7:                                 ; preds = %.preheader1884.6
  %i.ys = zext i16 %i.yq to i64
  %i.yt = lshr i32 %.271094.lcssa, 12
  %.lobit3874.a = and i32 %i.yt, 1
  %i.yu = zext nneg i32 %.lobit3874.a to i64
  %.idx.7 = shl nuw nsw i64 %i.ys, 2
  %i.yv = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.7
  %i.yw = getelementptr inbounds nuw [2 x i8], ptr %i.yv, i64 %i.yu
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !50 ; 3 uses
  %i.yy = icmp ugt i16 %i.yx, 2575
  br i1 %i.yy, label %.preheader1884.8, label %.loopexit1885

.preheader1884.8:                                 ; preds = %.preheader1884.7
  %i.yz = zext i16 %i.yx to i64
  %i.za = lshr i32 %.271094.lcssa, 11
  %.lobit3875.a = and i32 %i.za, 1
  %i.zb = zext nneg i32 %.lobit3875.a to i64
  %.idx.8 = shl nuw nsw i64 %i.yz, 2
  %i.zc = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.8
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %i.zc, i64 %i.zb
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !50 ; 3 uses
  %i.zf = icmp ugt i16 %i.ze, 2575
  br i1 %i.zf, label %.preheader1884.9, label %.loopexit1885

.preheader1884.9:                                 ; preds = %.preheader1884.8
  %i.zg = zext i16 %i.ze to i64
  %i.zh = lshr i32 %.271094.lcssa, 10
  %.lobit3876.a = and i32 %i.zh, 1
  %i.zi = zext nneg i32 %.lobit3876.a to i64
  %.idx.9 = shl nuw nsw i64 %i.zg, 2
  %i.zj = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.9
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %i.zi
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !50 ; 3 uses
  %i.zm = icmp ugt i16 %i.zl, 2575
  br i1 %i.zm, label %.preheader1884.10, label %.loopexit1885

.preheader1884.10:                                ; preds = %.preheader1884.9
  %i.zn = zext i16 %i.zl to i64
  %i.zo = lshr i32 %.271094.lcssa, 9
  %.lobit3877.a = and i32 %i.zo, 1
  %i.zp = zext nneg i32 %.lobit3877.a to i64
  %.idx.10 = shl nuw nsw i64 %i.zn, 2
  %i.zq = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.10
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.zq, i64 %i.zp
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !50 ; 3 uses
  %i.zt = icmp ugt i16 %i.zs, 2575
  br i1 %i.zt, label %.preheader1884.11, label %.loopexit1885

.preheader1884.11:                                ; preds = %.preheader1884.10
  %i.zu = zext i16 %i.zs to i64
  %i.zv = lshr i32 %.271094.lcssa, 8
  %.lobit3878.a = and i32 %i.zv, 1
  %i.zw = zext nneg i32 %.lobit3878.a to i64
  %.idx.11 = shl nuw nsw i64 %i.zu, 2
  %i.zx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.11
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.zx, i64 %i.zw
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !50 ; 3 uses
  %i.aaa = icmp ugt i16 %i.zz, 2575
  br i1 %i.aaa, label %.preheader1884.12, label %.loopexit1885

.preheader1884.12:                                ; preds = %.preheader1884.11
  %i.aab = zext i16 %i.zz to i64
  %i.aac = lshr i32 %.271094.lcssa, 7
  %.lobit3879.a = and i32 %i.aac, 1
  %i.aad = zext nneg i32 %.lobit3879.a to i64
  %.idx.12 = shl nuw nsw i64 %i.aab, 2
  %i.aae = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.12
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.aae, i64 %i.aad
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !50 ; 3 uses
  %i.aah = icmp ugt i16 %i.aag, 2575
  br i1 %i.aah, label %.preheader1884.13, label %.loopexit1885

.preheader1884.13:                                ; preds = %.preheader1884.12
  %i.aai = zext i16 %i.aag to i64
  %i.aaj = lshr i32 %.271094.lcssa, 6
  %.lobit3880.a = and i32 %i.aaj, 1
  %i.aak = zext nneg i32 %.lobit3880.a to i64
  %.idx.13 = shl nuw nsw i64 %i.aai, 2
  %i.aal = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.13
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.aal, i64 %i.aak
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !50 ; 3 uses
  %i.aao = icmp ugt i16 %i.aan, 2575
  br i1 %i.aao, label %.preheader1884.14, label %.loopexit1885

.preheader1884.14:                                ; preds = %.preheader1884.13
  %i.aap = zext i16 %i.aan to i64
  %i.aaq = lshr i32 %.271094.lcssa, 5
  %.lobit3881.a = and i32 %i.aaq, 1
  %i.aar = zext nneg i32 %.lobit3881.a to i64
  %.idx.14 = shl nuw nsw i64 %i.aap, 2
  %i.aas = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.14
  %i.aat = getelementptr inbounds nuw [2 x i8], ptr %i.aas, i64 %i.aar
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !50 ; 3 uses
  %i.aav = icmp ugt i16 %i.aau, 2575
  br i1 %i.aav, label %.preheader1884.15, label %.loopexit1885

.preheader1884.15:                                ; preds = %.preheader1884.14
  %i.aaw = zext i16 %i.aau to i64
  %i.aax = lshr i32 %.271094.lcssa, 4
  %.lobit3882.a = and i32 %i.aax, 1
  %i.aay = zext nneg i32 %.lobit3882.a to i64
  %.idx.15 = shl nuw nsw i64 %i.aaw, 2
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.15
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %i.aaz, i64 %i.aay
  %i.abb = load i16, ptr %i.aba, align 2, !tbaa !50 ; 3 uses
  %i.abc = icmp ugt i16 %i.abb, 2575
  br i1 %i.abc, label %.preheader1884.16, label %.loopexit1885

.preheader1884.16:                                ; preds = %.preheader1884.15
  %i.abd = zext i16 %i.abb to i64
  %i.abe = lshr i32 %.271094.lcssa, 3
  %.lobit3883.a = and i32 %i.abe, 1
  %i.abf = zext nneg i32 %.lobit3883.a to i64
  %.idx.16 = shl nuw nsw i64 %i.abd, 2
  %i.abg = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.16
  %i.abh = getelementptr inbounds nuw [2 x i8], ptr %i.abg, i64 %i.abf
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !50 ; 3 uses
end_hunk_0
begin_hunk_1_@lzxd_decompress:bb.a
  %.idx.17 = shl nuw nsw i64 %i.abk, 2
  %i.abn = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.17
  %i.abo = getelementptr inbounds nuw [2 x i8], ptr %i.abn, i64 %i.abm
  %i.abp = load i16, ptr %i.abo, align 2, !tbaa !50 ; 3 uses
  %i.abq = icmp ugt i16 %i.abp, 2575
  br i1 %i.abq, label %.preheader1884.18, label %.loopexit1885

.preheader1884.18:                                ; preds = %.preheader1884.17
  %i.abr = zext i16 %i.abp to i64
  %i.abs = lshr i32 %.271094.lcssa, 1
  %.lobit3885.a = and i32 %i.abs, 1
  %i.abt = zext nneg i32 %.lobit3885.a to i64
  %.idx.18 = shl nuw nsw i64 %i.abr, 2
  %i.abu = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.18
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.abu, i64 %i.abt
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !50 ; 3 uses
  %i.abx = icmp ugt i16 %i.abw, 2575
  br i1 %i.abx, label %.preheader1884.19, label %.loopexit1885

.preheader1884.19:                                ; preds = %.preheader1884.18
  %i.aby = zext i16 %i.abw to i64
  %i.abz = and i32 %.271094.lcssa, 1
  %i.aca = zext nneg i32 %i.abz to i64
  %.idx.19 = shl nuw nsw i64 %i.aby, 2
  %i.acb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.19
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %i.acb, i64 %i.aca
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !50 ; 2 uses
  %i.ace = icmp ugt i16 %i.acd, 2575
  br i1 %i.ace, label %bb.ha, label %.loopexit1885

.loopexit1885:                                    ; preds = %.preheader1884.preheader, %.preheader1884.1, %.preheader1884.2, %.preheader1884.3, %.preheader1884.4, %.preheader1884.5, %.preheader1884.6, %.preheader1884.7, %.preheader1884.8, %.preheader1884.9, %.preheader1884.10, %.preheader1884.11, %.preheader1884.12, %.preheader1884.13, %.preheader1884.14, %.preheader1884.15, %.preheader1884.16, %.preheader1884.17, %.preheader1884.18, %.preheader1884.19, %._crit_edge3361
  %.11037 = phi i16 [ %i.wu, %._crit_edge3361 ], [ %i.xa, %.preheader1884.preheader ], [ %i.xh, %.preheader1884.1 ], [ %i.xo, %.preheader1884.2 ], [ %i.xv, %.preheader1884.3 ], [ %i.yc, %.preheader1884.4 ], [ %i.yj, %.preheader1884.5 ], [ %i.yq, %.preheader1884.6 ], [ %i.yx, %.preheader1884.7 ], [ %i.ze, %.preheader1884.8 ], [ %i.zl, %.preheader1884.9 ], [ %i.zs, %.preheader1884.10 ], [ %i.zz, %.preheader1884.11 ], [ %i.aag, %.preheader1884.12 ], [ %i.aan, %.preheader1884.13 ], [ %i.aau, %.preheader1884.14 ], [ %i.abb, %.preheader1884.15 ], [ %i.abi, %.preheader1884.16 ], [ %i.abp, %.preheader1884.17 ], [ %i.abw, %.preheader1884.18 ], [ %i.acd, %.preheader1884.19 ] ; 4 uses
  %i.acf = zext nneg i16 %.11037 to i64
  %i.acg = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.acf
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !41
  %i.aci = zext i8 %i.ach to i32                  ; 2 uses
  %i.acj = shl i32 %.271094.lcssa, %i.aci         ; 4 uses
  %i.ack = sub nsw i32 %.27.lcssa, %i.aci         ; 5 uses
  %i.acl = icmp samesign ult i16 %.11037, 256
  br i1 %i.acl, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %.loopexit1885
  %i.acm = trunc nuw i16 %.11037 to i8
  %i.acn = add i32 %.210173482, 1
  %i.aco = zext i32 %.210173482 to i64
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aco
  store i8 %i.acm, ptr %i.acp, align 1, !tbaa !41
  %i.acq = add nsw i32 %.19813486, -1
  br label %bb.ma

bb.hc:                                            ; preds = %.loopexit1885
  %i.acr = zext nneg i16 %.11037 to i32           ; 2 uses
  %i.acs = add nsw i32 %i.acr, -256               ; 4 uses
  %i.act = and i32 %i.acr, 7                      ; 2 uses
  %i.acu = icmp eq i32 %i.act, 7
  br i1 %i.acu, label %bb.hd, label %bb.hu

bb.hd:                                            ; preds = %bb.hc
  %i.acv = load i8, ptr %i.bx, align 2, !tbaa !73
  %.not1486 = icmp eq i8 %i.acv, 0
  br i1 %.not1486, label %.preheader1883, label %bb.he

.preheader1883:                                   ; preds = %bb.hd
  %i.acw = icmp slt i32 %i.ack, 16
  br i1 %i.acw, label %.lr.ph3370, label %._crit_edge3371

bb.he:                                            ; preds = %bb.hd
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

.lr.ph3370:                                       ; preds = %.preheader1883, %bb.hs
  %.293369 = phi i32 [ %i.aeo, %bb.hs ], [ %i.ack, %.preheader1883 ] ; 3 uses
  %.2910963368 = phi i32 [ %i.aen, %bb.hs ], [ %i.acj, %.preheader1883 ]
  %.5411823367 = phi ptr [ %.561184, %bb.hs ], [ %.501178.lcssa, %.preheader1883 ] ; 2 uses
  %.5412433366 = phi ptr [ %i.aef, %bb.hs ], [ %.501239.lcssa, %.preheader1883 ] ; 2 uses
  %.not1526 = icmp ult ptr %.5412433366, %.5411823367
  br i1 %.not1526, label %bb.hl, label %bb.hf

bb.hf:                                            ; preds = %.lr.ph3370
  %i.acx = load ptr, ptr %0, align 8, !tbaa !18
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !46
  %i.ada = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.adb = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.adc = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.add = tail call i32 %i.acz(ptr noundef %i.ada, ptr noundef %i.adb, i32 noundef %i.adc) #5, !inline_history !47 ; 3 uses
  %i.ade = icmp slt i32 %i.add, 0
  br i1 %i.ade, label %bb.hj, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.adf = icmp eq i32 %i.add, 0
  br i1 %i.adf, label %bb.hh, label %bb.hk

bb.hh:                                            ; preds = %bb.hg
  %i.adg = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1613 = icmp eq i8 %i.adg, 0
  br i1 %.not.i1613, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.adh = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 1
  store i8 0, ptr %i.adi, align 1, !tbaa !41
  %i.adj = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.adj, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hh, %bb.hf
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.hk:                                            ; preds = %bb.hi, %bb.hg
  %.0.i1611 = phi i32 [ 2, %bb.hi ], [ %i.add, %bb.hg ]
  %i.adk = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.adk, ptr %i.ab, align 8, !tbaa !42
  %i.adl = zext nneg i32 %.0.i1611 to i64
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adl ; 2 uses
  store ptr %i.adm, ptr %i.ac, align 8, !tbaa !43
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %.lr.ph3370
  %.551244 = phi ptr [ %i.adk, %bb.hk ], [ %.5412433366, %.lr.ph3370 ] ; 2 uses
  %.551183 = phi ptr [ %i.adm, %bb.hk ], [ %.5411823367, %.lr.ph3370 ] ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.551244, i64 1 ; 2 uses
  %i.ado = load i8, ptr %.551244, align 1, !tbaa !41
  %.not1528 = icmp ult ptr %i.adn, %.551183
  br i1 %.not1528, label %bb.hs, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.adp = load ptr, ptr %0, align 8, !tbaa !18
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !46
  %i.ads = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.adt = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.adu = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.adv = tail call i32 %i.adr(ptr noundef %i.ads, ptr noundef %i.adt, i32 noundef %i.adu) #5, !inline_history !47 ; 3 uses
  %i.adw = icmp slt i32 %i.adv, 0
  br i1 %i.adw, label %bb.hq, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.adx = icmp eq i32 %i.adv, 0
  br i1 %i.adx, label %bb.ho, label %bb.hr

bb.ho:                                            ; preds = %bb.hn
  %i.ady = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1617 = icmp eq i8 %i.ady, 0
  br i1 %.not.i1617, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.adz = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 1
  store i8 0, ptr %i.aea, align 1, !tbaa !41
  %i.aeb = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.aeb, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho, %bb.hm
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.hr:                                            ; preds = %bb.hp, %bb.hn
  %.0.i1615 = phi i32 [ 2, %bb.hp ], [ %i.adv, %bb.hn ]
  %i.aec = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.aec, ptr %i.ab, align 8, !tbaa !42
  %i.aed = zext nneg i32 %.0.i1615 to i64
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.aed ; 2 uses
  store ptr %i.aee, ptr %i.ac, align 8, !tbaa !43
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hl, %bb.hr
  %.561245 = phi ptr [ %i.aec, %bb.hr ], [ %i.adn, %bb.hl ] ; 2 uses
  %.561184 = phi ptr [ %i.aee, %bb.hr ], [ %.551183, %bb.hl ] ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %.561245, i64 1 ; 2 uses
  %i.aeg = load i8, ptr %.561245, align 1, !tbaa !41
  %i.aeh = zext i8 %i.aeg to i32
  %i.aei = shl nuw nsw i32 %i.aeh, 8
  %i.aej = zext i8 %i.ado to i32
  %i.aek = or disjoint i32 %i.aei, %i.aej
  %i.ael = sub i32 16, %.293369
  %i.aem = shl i32 %i.aek, %i.ael
  %i.aen = or i32 %i.aem, %.2910963368            ; 2 uses
  %i.aeo = add nsw i32 %.293369, 16               ; 2 uses
  %i.aep = icmp slt i32 %.293369, 0
  br i1 %i.aep, label %.lr.ph3370, label %._crit_edge3371

._crit_edge3371:                                  ; preds = %bb.hs, %.preheader1883
  %.541243.lcssa = phi ptr [ %.501239.lcssa, %.preheader1883 ], [ %i.aef, %bb.hs ]
  %.541182.lcssa = phi ptr [ %.501178.lcssa, %.preheader1883 ], [ %.561184, %bb.hs ]
  %.291096.lcssa = phi i32 [ %i.acj, %.preheader1883 ], [ %i.aen, %bb.hs ] ; 22 uses
  %.29.lcssa = phi i32 [ %i.ack, %.preheader1883 ], [ %i.aeo, %bb.hs ]
  %i.aeq = lshr i32 %.291096.lcssa, 20
  %i.aer = zext nneg i32 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.aer
  %i.aet = load i16, ptr %i.aes, align 2, !tbaa !50 ; 3 uses
  %i.aeu = icmp ugt i16 %i.aet, 249
  br i1 %i.aeu, label %.preheader1881.preheader, label %.loopexit1882

.preheader1881.preheader:                         ; preds = %._crit_edge3371
  %i.aev = zext i16 %i.aet to i64
  %3 = and i32 %.291096.lcssa, 524288
  %.not1487 = icmp ne i32 %3, 0
  %i.aew = zext i1 %.not1487 to i64
  %.idx1488 = shl nuw nsw i64 %i.aev, 2
  %i.aex = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.aex, i64 %i.aew
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !50 ; 3 uses
  %i.afa = icmp ugt i16 %i.aez, 249
  br i1 %i.afa, label %.preheader1881.1, label %.loopexit1882

bb.ht:                                            ; preds = %.preheader1881.19
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

.preheader1881.1:                                 ; preds = %.preheader1881.preheader
  %i.afb = zext i16 %i.aez to i64
  %i.afc = lshr i32 %.291096.lcssa, 18
  %.lobit3887.a = and i32 %i.afc, 1
  %i.afd = zext nneg i32 %.lobit3887.a to i64
  %.idx1488.1 = shl nuw nsw i64 %i.afb, 2
  %i.afe = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.1
  %i.aff = getelementptr inbounds nuw [2 x i8], ptr %i.afe, i64 %i.afd
  %i.afg = load i16, ptr %i.aff, align 2, !tbaa !50 ; 3 uses
  %i.afh = icmp ugt i16 %i.afg, 249
  br i1 %i.afh, label %.preheader1881.2, label %.loopexit1882

.preheader1881.2:                                 ; preds = %.preheader1881.1
  %i.afi = zext i16 %i.afg to i64
  %i.afj = lshr i32 %.291096.lcssa, 17
  %.lobit3888.a = and i32 %i.afj, 1
  %i.afk = zext nneg i32 %.lobit3888.a to i64
  %.idx1488.2 = shl nuw nsw i64 %i.afi, 2
  %i.afl = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.2
  %i.afm = getelementptr inbounds nuw [2 x i8], ptr %i.afl, i64 %i.afk
  %i.afn = load i16, ptr %i.afm, align 2, !tbaa !50 ; 3 uses
  %i.afo = icmp ugt i16 %i.afn, 249
  br i1 %i.afo, label %.preheader1881.3, label %.loopexit1882

.preheader1881.3:                                 ; preds = %.preheader1881.2
  %i.afp = zext i16 %i.afn to i64
  %i.afq = lshr i32 %.291096.lcssa, 16
  %.lobit3889.a = and i32 %i.afq, 1
  %i.afr = zext nneg i32 %.lobit3889.a to i64
  %.idx1488.3 = shl nuw nsw i64 %i.afp, 2
  %i.afs = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.3
  %i.aft = getelementptr inbounds nuw [2 x i8], ptr %i.afs, i64 %i.afr
  %i.afu = load i16, ptr %i.aft, align 2, !tbaa !50 ; 3 uses
  %i.afv = icmp ugt i16 %i.afu, 249
  br i1 %i.afv, label %.preheader1881.4, label %.loopexit1882

.preheader1881.4:                                 ; preds = %.preheader1881.3
  %i.afw = zext i16 %i.afu to i64
  %i.afx = lshr i32 %.291096.lcssa, 15
  %.lobit3890.a = and i32 %i.afx, 1
  %i.afy = zext nneg i32 %.lobit3890.a to i64
  %.idx1488.4 = shl nuw nsw i64 %i.afw, 2
  %i.afz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.4
  %i.aga = getelementptr inbounds nuw [2 x i8], ptr %i.afz, i64 %i.afy
  %i.agb = load i16, ptr %i.aga, align 2, !tbaa !50 ; 3 uses
  %i.agc = icmp ugt i16 %i.agb, 249
  br i1 %i.agc, label %.preheader1881.5, label %.loopexit1882

.preheader1881.5:                                 ; preds = %.preheader1881.4
  %i.agd = zext i16 %i.agb to i64
  %i.age = lshr i32 %.291096.lcssa, 14
  %.lobit3891.a = and i32 %i.age, 1
  %i.agf = zext nneg i32 %.lobit3891.a to i64
  %.idx1488.5 = shl nuw nsw i64 %i.agd, 2
  %i.agg = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.5
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %i.agg, i64 %i.agf
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !50 ; 3 uses
  %i.agj = icmp ugt i16 %i.agi, 249
  br i1 %i.agj, label %.preheader1881.6, label %.loopexit1882

.preheader1881.6:                                 ; preds = %.preheader1881.5
  %i.agk = zext i16 %i.agi to i64
  %i.agl = lshr i32 %.291096.lcssa, 13
  %.lobit3892.a = and i32 %i.agl, 1
  %i.agm = zext nneg i32 %.lobit3892.a to i64
  %.idx1488.6 = shl nuw nsw i64 %i.agk, 2
  %i.agn = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.6
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %i.agn, i64 %i.agm
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !50 ; 3 uses
  %i.agq = icmp ugt i16 %i.agp, 249
  br i1 %i.agq, label %.preheader1881.7, label %.loopexit1882

.preheader1881.7:                                 ; preds = %.preheader1881.6
  %i.agr = zext i16 %i.agp to i64
  %i.ags = lshr i32 %.291096.lcssa, 12
  %.lobit3893.a = and i32 %i.ags, 1
  %i.agt = zext nneg i32 %.lobit3893.a to i64
  %.idx1488.7 = shl nuw nsw i64 %i.agr, 2
  %i.agu = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.7
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %i.agu, i64 %i.agt
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !50 ; 3 uses
  %i.agx = icmp ugt i16 %i.agw, 249
  br i1 %i.agx, label %.preheader1881.8, label %.loopexit1882

.preheader1881.8:                                 ; preds = %.preheader1881.7
  %i.agy = zext i16 %i.agw to i64
  %i.agz = lshr i32 %.291096.lcssa, 11
  %.lobit3894.a = and i32 %i.agz, 1
  %i.aha = zext nneg i32 %.lobit3894.a to i64
  %.idx1488.8 = shl nuw nsw i64 %i.agy, 2
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.8
  %i.ahc = getelementptr inbounds nuw [2 x i8], ptr %i.ahb, i64 %i.aha
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !50 ; 3 uses
  %i.ahe = icmp ugt i16 %i.ahd, 249
  br i1 %i.ahe, label %.preheader1881.9, label %.loopexit1882

.preheader1881.9:                                 ; preds = %.preheader1881.8
  %i.ahf = zext i16 %i.ahd to i64
  %i.ahg = lshr i32 %.291096.lcssa, 10
  %.lobit3895.a = and i32 %i.ahg, 1
  %i.ahh = zext nneg i32 %.lobit3895.a to i64
  %.idx1488.9 = shl nuw nsw i64 %i.ahf, 2
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.9
  %i.ahj = getelementptr inbounds nuw [2 x i8], ptr %i.ahi, i64 %i.ahh
  %i.ahk = load i16, ptr %i.ahj, align 2, !tbaa !50 ; 3 uses
  %i.ahl = icmp ugt i16 %i.ahk, 249
  br i1 %i.ahl, label %.preheader1881.10, label %.loopexit1882

.preheader1881.10:                                ; preds = %.preheader1881.9
  %i.ahm = zext i16 %i.ahk to i64
  %i.ahn = lshr i32 %.291096.lcssa, 9
  %.lobit3896.a = and i32 %i.ahn, 1
  %i.aho = zext nneg i32 %.lobit3896.a to i64
  %.idx1488.10 = shl nuw nsw i64 %i.ahm, 2
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.10
  %i.ahq = getelementptr inbounds nuw [2 x i8], ptr %i.ahp, i64 %i.aho
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !50 ; 3 uses
  %i.ahs = icmp ugt i16 %i.ahr, 249
  br i1 %i.ahs, label %.preheader1881.11, label %.loopexit1882

.preheader1881.11:                                ; preds = %.preheader1881.10
  %i.aht = zext i16 %i.ahr to i64
  %i.ahu = lshr i32 %.291096.lcssa, 8
  %.lobit3897.a = and i32 %i.ahu, 1
  %i.ahv = zext nneg i32 %.lobit3897.a to i64
  %.idx1488.11 = shl nuw nsw i64 %i.aht, 2
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.11
  %i.ahx = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %i.ahv
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !50 ; 3 uses
  %i.ahz = icmp ugt i16 %i.ahy, 249
  br i1 %i.ahz, label %.preheader1881.12, label %.loopexit1882

.preheader1881.12:                                ; preds = %.preheader1881.11
  %i.aia = zext i16 %i.ahy to i64
  %i.aib = lshr i32 %.291096.lcssa, 7
  %.lobit3898.a = and i32 %i.aib, 1
  %i.aic = zext nneg i32 %.lobit3898.a to i64
  %.idx1488.12 = shl nuw nsw i64 %i.aia, 2
  %i.aid = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.12
  %i.aie = getelementptr inbounds nuw [2 x i8], ptr %i.aid, i64 %i.aic
  %i.aif = load i16, ptr %i.aie, align 2, !tbaa !50 ; 3 uses
  %i.aig = icmp ugt i16 %i.aif, 249
  br i1 %i.aig, label %.preheader1881.13, label %.loopexit1882

.preheader1881.13:                                ; preds = %.preheader1881.12
  %i.aih = zext i16 %i.aif to i64
  %i.aii = lshr i32 %.291096.lcssa, 6
  %.lobit3899.a = and i32 %i.aii, 1
  %i.aij = zext nneg i32 %.lobit3899.a to i64
  %.idx1488.13 = shl nuw nsw i64 %i.aih, 2
  %i.aik = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.13
  %i.ail = getelementptr inbounds nuw [2 x i8], ptr %i.aik, i64 %i.aij
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !50 ; 3 uses
  %i.ain = icmp ugt i16 %i.aim, 249
  br i1 %i.ain, label %.preheader1881.14, label %.loopexit1882

.preheader1881.14:                                ; preds = %.preheader1881.13
  %i.aio = zext i16 %i.aim to i64
  %i.aip = lshr i32 %.291096.lcssa, 5
  %.lobit3900.a = and i32 %i.aip, 1
  %i.aiq = zext nneg i32 %.lobit3900.a to i64
  %.idx1488.14 = shl nuw nsw i64 %i.aio, 2
  %i.air = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.14
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %i.air, i64 %i.aiq
  %i.ait = load i16, ptr %i.ais, align 2, !tbaa !50 ; 3 uses
  %i.aiu = icmp ugt i16 %i.ait, 249
  br i1 %i.aiu, label %.preheader1881.15, label %.loopexit1882

.preheader1881.15:                                ; preds = %.preheader1881.14
  %i.aiv = zext i16 %i.ait to i64
  %i.aiw = lshr i32 %.291096.lcssa, 4
  %.lobit3901.a = and i32 %i.aiw, 1
  %i.aix = zext nneg i32 %.lobit3901.a to i64
  %.idx1488.15 = shl nuw nsw i64 %i.aiv, 2
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.15
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %i.aiy, i64 %i.aix
  %i.aja = load i16, ptr %i.aiz, align 2, !tbaa !50 ; 3 uses
  %i.ajb = icmp ugt i16 %i.aja, 249
  br i1 %i.ajb, label %.preheader1881.16, label %.loopexit1882

.preheader1881.16:                                ; preds = %.preheader1881.15
  %i.ajc = zext i16 %i.aja to i64
  %i.ajd = lshr i32 %.291096.lcssa, 3
  %.lobit3902.a = and i32 %i.ajd, 1
  %i.aje = zext nneg i32 %.lobit3902.a to i64
  %.idx1488.16 = shl nuw nsw i64 %i.ajc, 2
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx1488.16
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.ajf, i64 %i.aje
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !50 ; 3 uses
end_hunk_1
begin_hunk_2_@lzxd_decompress:bb.a
bb.hw:                                            ; preds = %bb.hu
  br label %bb.ji

bb.hx:                                            ; preds = %bb.hu
  %i.akn = icmp ugt i32 %i.acs, 287
  %i.ako = zext nneg i32 %i.akm to i64            ; 3 uses
  br i1 %i.akn, label %.thread3929, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.akp = getelementptr inbounds nuw i8, ptr @extra_bits, i64 %i.ako
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !41
  %i.akr = zext i8 %i.akq to i32                  ; 2 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr @position_base, i64 %i.ako
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !32
  %i.aku = add i32 %i.akt, -2                     ; 4 uses
  %i.akv = add nsw i32 %i.akm, -8
  %i.akw = icmp ult i32 %i.akv, 28
  br i1 %i.akw, label %bb.hz, label %bb.it

bb.hz:                                            ; preds = %bb.hy
  %i.akx = load i8, ptr %i.bf, align 1, !tbaa !69
  %i.aky = icmp eq i8 %i.akx, 2
  br i1 %i.aky, label %bb.ia, label %bb.it

.thread3929:                                      ; preds = %bb.hx
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr @position_base, i64 %i.ako
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !32
  %i.alb = add i32 %i.ala, -2                     ; 2 uses
  %i.alc = load i8, ptr %i.bf, align 1, !tbaa !69
  %i.ald = icmp eq i8 %i.alc, 2
  br i1 %i.ald, label %.preheader1879, label %.preheader1880

bb.ia:                                            ; preds = %bb.hz
  %i.ale = and i32 %i.acs, 496
  %.not1494 = icmp eq i32 %i.ale, 64
  br i1 %.not1494, label %bb.ij, label %.preheader1879

.preheader1879:                                   ; preds = %.thread3929, %bb.ia
  %i.alf = phi i32 [ %i.aku, %bb.ia ], [ %i.alb, %.thread3929 ]
  %i.alg = phi i32 [ %i.akr, %bb.ia ], [ 17, %.thread3929 ] ; 2 uses
  %i.alh = add nsw i32 %i.alg, -3                 ; 4 uses
  %i.ali = icmp slt i32 %.31, %i.alh
  br i1 %i.ali, label %.lr.ph3390, label %._crit_edge3391

.lr.ph3390:                                       ; preds = %.preheader1879, %bb.ii
  %.323389 = phi i32 [ %i.amc, %bb.ii ], [ %.31, %.preheader1879 ] ; 2 uses
  %.3210993388 = phi i32 [ %i.amb, %bb.ii ], [ %.311098, %.preheader1879 ]
  %.5911873387 = phi ptr [ %.61, %bb.ii ], [ %.581186, %.preheader1879 ] ; 2 uses
  %.5912483386 = phi ptr [ %i.alt, %bb.ii ], [ %.581247, %.preheader1879 ] ; 2 uses
  %.not1522 = icmp ult ptr %.5912483386, %.5911873387
  br i1 %.not1522, label %bb.ie, label %bb.ib

bb.ib:                                            ; preds = %.lr.ph3390
  %i.alj = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1523 = icmp eq i32 %i.alj, 0
  br i1 %.not1523, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.alk = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.id:                                            ; preds = %bb.ib
  %i.all = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.alm = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %.lr.ph3390
  %.601249 = phi ptr [ %i.all, %bb.id ], [ %.5912483386, %.lr.ph3390 ] ; 2 uses
  %.601188 = phi ptr [ %i.alm, %bb.id ], [ %.5911873387, %.lr.ph3390 ] ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %.601249, i64 1 ; 2 uses
  %i.alo = load i8, ptr %.601249, align 1, !tbaa !41
  %.not1524 = icmp ult ptr %i.aln, %.601188
  br i1 %.not1524, label %bb.ii, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.alp = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1525 = icmp eq i32 %i.alp, 0
  br i1 %.not1525, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.alq = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ih:                                            ; preds = %bb.if
  %i.alr = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.als = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ie, %bb.ih
  %.611250 = phi ptr [ %i.alr, %bb.ih ], [ %i.aln, %bb.ie ] ; 2 uses
  %.61 = phi ptr [ %i.als, %bb.ih ], [ %.601188, %bb.ie ] ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %.611250, i64 1 ; 2 uses
  %i.alu = load i8, ptr %.611250, align 1, !tbaa !41
  %i.alv = zext i8 %i.alu to i32
  %i.alw = shl nuw nsw i32 %i.alv, 8
  %i.alx = zext i8 %i.alo to i32
  %i.aly = or disjoint i32 %i.alw, %i.alx
  %i.alz = sub i32 16, %.323389
  %i.ama = shl i32 %i.aly, %i.alz
  %i.amb = or i32 %i.ama, %.3210993388            ; 2 uses
  %i.amc = add nsw i32 %.323389, 16               ; 3 uses
  %i.amd = icmp slt i32 %i.amc, %i.alh
  br i1 %i.amd, label %.lr.ph3390, label %._crit_edge3391

._crit_edge3391:                                  ; preds = %bb.ii, %.preheader1879
  %.591248.lcssa = phi ptr [ %.581247, %.preheader1879 ], [ %i.alt, %bb.ii ]
  %.591187.lcssa = phi ptr [ %.581186, %.preheader1879 ], [ %.61, %bb.ii ]
  %.321099.lcssa = phi i32 [ %.311098, %.preheader1879 ], [ %i.amb, %bb.ii ] ; 2 uses
  %.32.lcssa = phi i32 [ %.31, %.preheader1879 ], [ %i.amc, %bb.ii ]
  %i.ame = sub nsw i32 35, %i.alg
  %i.amf = lshr i32 %.321099.lcssa, %i.ame
  %i.amg = shl i32 %.321099.lcssa, %i.alh
  %i.amh = sub nsw i32 %.32.lcssa, %i.alh
  %i.ami = shl i32 %i.amf, 3
  %i.amj = add i32 %i.ami, %i.alf
  br label %bb.ij

bb.ij:                                            ; preds = %._crit_edge3391, %bb.ia
  %.631252 = phi ptr [ %.591248.lcssa, %._crit_edge3391 ], [ %.581247, %bb.ia ] ; 2 uses
  %.63 = phi ptr [ %.591187.lcssa, %._crit_edge3391 ], [ %.581186, %bb.ia ] ; 2 uses
  %.341101 = phi i32 [ %i.amg, %._crit_edge3391 ], [ %.311098, %bb.ia ] ; 2 uses
  %.34 = phi i32 [ %i.amh, %._crit_edge3391 ], [ %.31, %bb.ia ] ; 3 uses
  %.0962 = phi i32 [ %i.amj, %._crit_edge3391 ], [ %i.aku, %bb.ia ]
  %i.amk = icmp slt i32 %.34, 16
  br i1 %i.amk, label %.lr.ph3402, label %._crit_edge3403

.lr.ph3402:                                       ; preds = %bb.ij, %bb.ir
  %.353400 = phi i32 [ %i.ane, %bb.ir ], [ %.34, %bb.ij ] ; 3 uses
  %.3511023399 = phi i32 [ %i.and, %bb.ir ], [ %.341101, %bb.ij ]
  %.643398 = phi ptr [ %.66, %bb.ir ], [ %.63, %bb.ij ] ; 2 uses
  %.6412533397 = phi ptr [ %i.amv, %bb.ir ], [ %.631252, %bb.ij ] ; 2 uses
  %.not1518 = icmp ult ptr %.6412533397, %.643398
  br i1 %.not1518, label %bb.in, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph3402
  %i.aml = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1519 = icmp eq i32 %i.aml, 0
  br i1 %.not1519, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.amm = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.im:                                            ; preds = %bb.ik
  %i.amn = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.amo = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %.lr.ph3402
  %.651254 = phi ptr [ %i.amn, %bb.im ], [ %.6412533397, %.lr.ph3402 ] ; 2 uses
  %.65 = phi ptr [ %i.amo, %bb.im ], [ %.643398, %.lr.ph3402 ] ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.651254, i64 1 ; 2 uses
  %i.amq = load i8, ptr %.651254, align 1, !tbaa !41
  %.not1520 = icmp ult ptr %i.amp, %.65
  br i1 %.not1520, label %bb.ir, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.amr = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1521 = icmp eq i32 %i.amr, 0
  br i1 %.not1521, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ams = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.iq:                                            ; preds = %bb.io
  %i.amt = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.amu = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ir

bb.ir:                                            ; preds = %bb.in, %bb.iq
  %.661255 = phi ptr [ %i.amt, %bb.iq ], [ %i.amp, %bb.in ] ; 2 uses
  %.66 = phi ptr [ %i.amu, %bb.iq ], [ %.65, %bb.in ] ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %.661255, i64 1 ; 2 uses
  %i.amw = load i8, ptr %.661255, align 1, !tbaa !41
  %i.amx = zext i8 %i.amw to i32
  %i.amy = shl nuw nsw i32 %i.amx, 8
  %i.amz = zext i8 %i.amq to i32
  %i.ana = or disjoint i32 %i.amy, %i.amz
  %i.anb = sub i32 16, %.353400
  %i.anc = shl i32 %i.ana, %i.anb
  %i.and = or i32 %i.anc, %.3511023399            ; 2 uses
  %i.ane = add nsw i32 %.353400, 16               ; 2 uses
  %i.anf = icmp slt i32 %.353400, 0
  br i1 %i.anf, label %.lr.ph3402, label %._crit_edge3403

._crit_edge3403:                                  ; preds = %bb.ir, %bb.ij
  %.641253.lcssa = phi ptr [ %.631252, %bb.ij ], [ %i.amv, %bb.ir ]
  %.64.lcssa = phi ptr [ %.63, %bb.ij ], [ %.66, %bb.ir ]
  %.351102.lcssa = phi i32 [ %.341101, %bb.ij ], [ %i.and, %bb.ir ] ; 27 uses
  %.35.lcssa = phi i32 [ %.34, %bb.ij ], [ %i.ane, %bb.ir ]
  %i.ang = lshr i32 %.351102.lcssa, 25
  %i.anh = zext nneg i32 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.anh
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !50 ; 3 uses
  %i.ank = icmp ugt i16 %i.anj, 7
  br i1 %i.ank, label %.preheader1877.preheader, label %.loopexit1878

.preheader1877.preheader:                         ; preds = %._crit_edge3403
  %i.anl = zext i16 %i.anj to i64
  %4 = and i32 %.351102.lcssa, 16777216
  %.not1495 = icmp ne i32 %4, 0
  %i.anm = zext i1 %.not1495 to i64
  %.idx1496 = shl nuw nsw i64 %i.anl, 2
  %i.ann = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496
  %i.ano = getelementptr inbounds nuw [2 x i8], ptr %i.ann, i64 %i.anm
  %i.anp = load i16, ptr %i.ano, align 2, !tbaa !50 ; 3 uses
  %i.anq = icmp ugt i16 %i.anp, 7
  br i1 %i.anq, label %.preheader1877.1, label %.loopexit1878

bb.is:                                            ; preds = %.preheader1877.24
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

.preheader1877.1:                                 ; preds = %.preheader1877.preheader
  %i.anr = zext i16 %i.anp to i64
  %i.ans = lshr i32 %.351102.lcssa, 23
  %.lobit3906.a = and i32 %i.ans, 1
  %i.ant = zext nneg i32 %.lobit3906.a to i64
  %.idx1496.1 = shl nuw nsw i64 %i.anr, 2
  %i.anu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.1
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.anu, i64 %i.ant
  %i.anw = load i16, ptr %i.anv, align 2, !tbaa !50 ; 3 uses
  %i.anx = icmp ugt i16 %i.anw, 7
  br i1 %i.anx, label %.preheader1877.2, label %.loopexit1878

.preheader1877.2:                                 ; preds = %.preheader1877.1
  %i.any = zext i16 %i.anw to i64
  %i.anz = lshr i32 %.351102.lcssa, 22
  %.lobit3907.a = and i32 %i.anz, 1
  %i.aoa = zext nneg i32 %.lobit3907.a to i64
  %.idx1496.2 = shl nuw nsw i64 %i.any, 2
  %i.aob = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.2
  %i.aoc = getelementptr inbounds nuw [2 x i8], ptr %i.aob, i64 %i.aoa
  %i.aod = load i16, ptr %i.aoc, align 2, !tbaa !50 ; 3 uses
  %i.aoe = icmp ugt i16 %i.aod, 7
  br i1 %i.aoe, label %.preheader1877.3, label %.loopexit1878

.preheader1877.3:                                 ; preds = %.preheader1877.2
  %i.aof = zext i16 %i.aod to i64
  %i.aog = lshr i32 %.351102.lcssa, 21
  %.lobit3908.a = and i32 %i.aog, 1
  %i.aoh = zext nneg i32 %.lobit3908.a to i64
  %.idx1496.3 = shl nuw nsw i64 %i.aof, 2
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.3
  %i.aoj = getelementptr inbounds nuw [2 x i8], ptr %i.aoi, i64 %i.aoh
  %i.aok = load i16, ptr %i.aoj, align 2, !tbaa !50 ; 3 uses
  %i.aol = icmp ugt i16 %i.aok, 7
  br i1 %i.aol, label %.preheader1877.4, label %.loopexit1878

.preheader1877.4:                                 ; preds = %.preheader1877.3
  %i.aom = zext i16 %i.aok to i64
  %i.aon = lshr i32 %.351102.lcssa, 20
  %.lobit3909.a = and i32 %i.aon, 1
  %i.aoo = zext nneg i32 %.lobit3909.a to i64
  %.idx1496.4 = shl nuw nsw i64 %i.aom, 2
  %i.aop = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.4
  %i.aoq = getelementptr inbounds nuw [2 x i8], ptr %i.aop, i64 %i.aoo
  %i.aor = load i16, ptr %i.aoq, align 2, !tbaa !50 ; 3 uses
  %i.aos = icmp ugt i16 %i.aor, 7
  br i1 %i.aos, label %.preheader1877.5, label %.loopexit1878

.preheader1877.5:                                 ; preds = %.preheader1877.4
  %i.aot = zext i16 %i.aor to i64
  %i.aou = lshr i32 %.351102.lcssa, 19
  %.lobit3910.a = and i32 %i.aou, 1
  %i.aov = zext nneg i32 %.lobit3910.a to i64
  %.idx1496.5 = shl nuw nsw i64 %i.aot, 2
  %i.aow = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.5
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %i.aow, i64 %i.aov
  %i.aoy = load i16, ptr %i.aox, align 2, !tbaa !50 ; 3 uses
  %i.aoz = icmp ugt i16 %i.aoy, 7
  br i1 %i.aoz, label %.preheader1877.6, label %.loopexit1878

.preheader1877.6:                                 ; preds = %.preheader1877.5
  %i.apa = zext i16 %i.aoy to i64
  %i.apb = lshr i32 %.351102.lcssa, 18
  %.lobit3911.a = and i32 %i.apb, 1
  %i.apc = zext nneg i32 %.lobit3911.a to i64
  %.idx1496.6 = shl nuw nsw i64 %i.apa, 2
  %i.apd = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.6
  %i.ape = getelementptr inbounds nuw [2 x i8], ptr %i.apd, i64 %i.apc
  %i.apf = load i16, ptr %i.ape, align 2, !tbaa !50 ; 3 uses
  %i.apg = icmp ugt i16 %i.apf, 7
  br i1 %i.apg, label %.preheader1877.7, label %.loopexit1878

.preheader1877.7:                                 ; preds = %.preheader1877.6
  %i.aph = zext i16 %i.apf to i64
  %i.api = lshr i32 %.351102.lcssa, 17
  %.lobit3912.a = and i32 %i.api, 1
  %i.apj = zext nneg i32 %.lobit3912.a to i64
  %.idx1496.7 = shl nuw nsw i64 %i.aph, 2
  %i.apk = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.7
  %i.apl = getelementptr inbounds nuw [2 x i8], ptr %i.apk, i64 %i.apj
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !50 ; 3 uses
  %i.apn = icmp ugt i16 %i.apm, 7
  br i1 %i.apn, label %.preheader1877.8, label %.loopexit1878

.preheader1877.8:                                 ; preds = %.preheader1877.7
  %i.apo = zext i16 %i.apm to i64
  %i.app = lshr i32 %.351102.lcssa, 16
  %.lobit3913.a = and i32 %i.app, 1
  %i.apq = zext nneg i32 %.lobit3913.a to i64
  %.idx1496.8 = shl nuw nsw i64 %i.apo, 2
  %i.apr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.8
  %i.aps = getelementptr inbounds nuw [2 x i8], ptr %i.apr, i64 %i.apq
  %i.apt = load i16, ptr %i.aps, align 2, !tbaa !50 ; 3 uses
  %i.apu = icmp ugt i16 %i.apt, 7
  br i1 %i.apu, label %.preheader1877.9, label %.loopexit1878

.preheader1877.9:                                 ; preds = %.preheader1877.8
  %i.apv = zext i16 %i.apt to i64
  %i.apw = lshr i32 %.351102.lcssa, 15
  %.lobit3914.a = and i32 %i.apw, 1
  %i.apx = zext nneg i32 %.lobit3914.a to i64
  %.idx1496.9 = shl nuw nsw i64 %i.apv, 2
  %i.apy = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.9
  %i.apz = getelementptr inbounds nuw [2 x i8], ptr %i.apy, i64 %i.apx
  %i.aqa = load i16, ptr %i.apz, align 2, !tbaa !50 ; 3 uses
  %i.aqb = icmp ugt i16 %i.aqa, 7
  br i1 %i.aqb, label %.preheader1877.10, label %.loopexit1878

.preheader1877.10:                                ; preds = %.preheader1877.9
  %i.aqc = zext i16 %i.aqa to i64
  %i.aqd = lshr i32 %.351102.lcssa, 14
  %.lobit3915.a = and i32 %i.aqd, 1
  %i.aqe = zext nneg i32 %.lobit3915.a to i64
  %.idx1496.10 = shl nuw nsw i64 %i.aqc, 2
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.10
  %i.aqg = getelementptr inbounds nuw [2 x i8], ptr %i.aqf, i64 %i.aqe
  %i.aqh = load i16, ptr %i.aqg, align 2, !tbaa !50 ; 3 uses
  %i.aqi = icmp ugt i16 %i.aqh, 7
  br i1 %i.aqi, label %.preheader1877.11, label %.loopexit1878

.preheader1877.11:                                ; preds = %.preheader1877.10
  %i.aqj = zext i16 %i.aqh to i64
  %i.aqk = lshr i32 %.351102.lcssa, 13
  %.lobit3916.a = and i32 %i.aqk, 1
  %i.aql = zext nneg i32 %.lobit3916.a to i64
  %.idx1496.11 = shl nuw nsw i64 %i.aqj, 2
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.11
  %i.aqn = getelementptr inbounds nuw [2 x i8], ptr %i.aqm, i64 %i.aql
  %i.aqo = load i16, ptr %i.aqn, align 2, !tbaa !50 ; 3 uses
  %i.aqp = icmp ugt i16 %i.aqo, 7
  br i1 %i.aqp, label %.preheader1877.12, label %.loopexit1878

.preheader1877.12:                                ; preds = %.preheader1877.11
  %i.aqq = zext i16 %i.aqo to i64
  %i.aqr = lshr i32 %.351102.lcssa, 12
  %.lobit3917.a = and i32 %i.aqr, 1
  %i.aqs = zext nneg i32 %.lobit3917.a to i64
  %.idx1496.12 = shl nuw nsw i64 %i.aqq, 2
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.12
  %i.aqu = getelementptr inbounds nuw [2 x i8], ptr %i.aqt, i64 %i.aqs
  %i.aqv = load i16, ptr %i.aqu, align 2, !tbaa !50 ; 3 uses
  %i.aqw = icmp ugt i16 %i.aqv, 7
  br i1 %i.aqw, label %.preheader1877.13, label %.loopexit1878

.preheader1877.13:                                ; preds = %.preheader1877.12
  %i.aqx = zext i16 %i.aqv to i64
  %i.aqy = lshr i32 %.351102.lcssa, 11
  %.lobit3918.a = and i32 %i.aqy, 1
  %i.aqz = zext nneg i32 %.lobit3918.a to i64
  %.idx1496.13 = shl nuw nsw i64 %i.aqx, 2
  %i.ara = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.13
  %i.arb = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %i.aqz
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !50 ; 3 uses
  %i.ard = icmp ugt i16 %i.arc, 7
  br i1 %i.ard, label %.preheader1877.14, label %.loopexit1878

.preheader1877.14:                                ; preds = %.preheader1877.13
  %i.are = zext i16 %i.arc to i64
  %i.arf = lshr i32 %.351102.lcssa, 10
  %.lobit3919.a = and i32 %i.arf, 1
  %i.arg = zext nneg i32 %.lobit3919.a to i64
  %.idx1496.14 = shl nuw nsw i64 %i.are, 2
  %i.arh = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.14
  %i.ari = getelementptr inbounds nuw [2 x i8], ptr %i.arh, i64 %i.arg
  %i.arj = load i16, ptr %i.ari, align 2, !tbaa !50 ; 3 uses
  %i.ark = icmp ugt i16 %i.arj, 7
  br i1 %i.ark, label %.preheader1877.15, label %.loopexit1878

.preheader1877.15:                                ; preds = %.preheader1877.14
  %i.arl = zext i16 %i.arj to i64
  %i.arm = lshr i32 %.351102.lcssa, 9
  %.lobit3920.a = and i32 %i.arm, 1
  %i.arn = zext nneg i32 %.lobit3920.a to i64
  %.idx1496.15 = shl nuw nsw i64 %i.arl, 2
  %i.aro = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.15
  %i.arp = getelementptr inbounds nuw [2 x i8], ptr %i.aro, i64 %i.arn
  %i.arq = load i16, ptr %i.arp, align 2, !tbaa !50 ; 3 uses
  %i.arr = icmp ugt i16 %i.arq, 7
  br i1 %i.arr, label %.preheader1877.16, label %.loopexit1878

.preheader1877.16:                                ; preds = %.preheader1877.15
  %i.ars = zext i16 %i.arq to i64
  %i.art = lshr i32 %.351102.lcssa, 8
  %.lobit3921.a = and i32 %i.art, 1
  %i.aru = zext nneg i32 %.lobit3921.a to i64
  %.idx1496.16 = shl nuw nsw i64 %i.ars, 2
  %i.arv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx1496.16
  %i.arw = getelementptr inbounds nuw [2 x i8], ptr %i.arv, i64 %i.aru
  %i.arx = load i16, ptr %i.arw, align 2, !tbaa !50 ; 3 uses
end_hunk_2
begin_hunk_3_@lzxd_read_lens:bb.a
  store ptr %i.az, ptr %i.c, align 8, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %bb.p
  %.3285 = phi ptr [ %i.ax, %bb.p ], [ %i.ag, %bb.i ] ; 2 uses
  %.3270 = phi ptr [ %i.az, %bb.p ], [ %.2269, %bb.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.3285, i64 1 ; 2 uses
  %i.bb = load i8, ptr %.3285, align 1, !tbaa !41
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = zext i8 %i.ah to i32
  %i.bf = or disjoint i32 %i.bd, %i.be
  %i.bg = sub i32 16, %.1247634
  %i.bh = shl i32 %i.bf, %i.bg
  %i.bi = or i32 %i.bh, %.1253633                 ; 2 uses
  %i.bj = add nsw i32 %.1247634, 16               ; 2 uses
  %i.bk = icmp slt i32 %.1247634, -12
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %.preheader469
  %.1283.lcssa = phi ptr [ %.0282638, %.preheader469 ], [ %i.ba, %bb.q ] ; 3 uses
  %.1268.lcssa = phi ptr [ %.0267639, %.preheader469 ], [ %.3270, %bb.q ] ; 3 uses
  %.1253.lcssa = phi i32 [ %.0252640, %.preheader469 ], [ %i.bi, %bb.q ] ; 2 uses
  %.1247.lcssa = phi i32 [ %.0246641, %.preheader469 ], [ %i.bj, %bb.q ]
  %i.bl = lshr i32 %.1253.lcssa, 28
  %i.bm = shl i32 %.1253.lcssa, 4                 ; 3 uses
  %i.bn = add nsw i32 %.1247.lcssa, -4            ; 3 uses
  %i.bo = trunc nuw nsw i32 %i.bl to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20
  br i1 %exitcond.not, label %bb.r, label %.preheader469

bb.r:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3274 ; 55 uses
  %i.br = tail call fastcc i32 @make_decode_table(i32 noundef 20, i32 noundef 6, ptr noundef %i.m, ptr noundef %i.bq)
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %.preheader468, label %bb.s

.preheader468:                                    ; preds = %bb.r
  %i.bs = icmp ult i32 %2, %3
  br i1 %i.bs, label %.preheader467, label %._crit_edge705

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 11, ptr %i.bt, align 4, !tbaa !31
  br label %.thread

.preheader467:                                    ; preds = %.preheader468, %.loopexit
  %.1235704 = phi i32 [ %.5239, %.loopexit ], [ %2, %.preheader468 ] ; 25 uses
  %.3249703 = phi i32 [ %.14, %.loopexit ], [ %i.bn, %.preheader468 ] ; 3 uses
  %.3255702 = phi i32 [ %.14266, %.loopexit ], [ %i.bm, %.preheader468 ] ; 2 uses
  %.5272701 = phi ptr [ %.26, %.loopexit ], [ %.1268.lcssa, %.preheader468 ] ; 2 uses
  %.5287700 = phi ptr [ %.26308, %.loopexit ], [ %.1283.lcssa, %.preheader468 ] ; 2 uses
  %i.bu = icmp slt i32 %.3249703, 16
  br i1 %i.bu, label %.lr.ph647, label %._crit_edge648

.lr.ph647:                                        ; preds = %.preheader467, %bb.ai
  %.4250646 = phi i32 [ %i.dq, %bb.ai ], [ %.3249703, %.preheader467 ] ; 3 uses
  %.4256645 = phi i32 [ %i.dp, %bb.ai ], [ %.3255702, %.preheader467 ]
  %.6273644 = phi ptr [ %.8275, %bb.ai ], [ %.5272701, %.preheader467 ] ; 2 uses
  %.6288643 = phi ptr [ %i.dh, %bb.ai ], [ %.5287700, %.preheader467 ] ; 2 uses
  %.not366 = icmp ult ptr %.6288643, %.6273644
  br i1 %.not366, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %.lr.ph647
  %i.bv = load ptr, ptr %0, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !46
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.ca = load i32, ptr %i.k, align 8, !tbaa !23
  %i.cb = tail call i32 %i.bx(ptr noundef %i.by, ptr noundef %i.bz, i32 noundef %i.ca) #5, !inline_history !47 ; 3 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.cd, align 4, !tbaa !31
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.ce = icmp eq i32 %i.cb, 0
  br i1 %i.ce, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cf = load i8, ptr %i.l, align 1, !tbaa !48
  %.not.i381 = icmp eq i8 %i.cf, 0
  br i1 %.not.i381, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.cg, align 4, !tbaa !31
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store i8 0, ptr %i.ci, align 1, !tbaa !41
  %i.cj = load ptr, ptr %i.j, align 8, !tbaa !16
  store i8 0, ptr %i.cj, align 1, !tbaa !41
  store i8 1, ptr %i.l, align 1, !tbaa !48
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.0.i379 = phi i32 [ 2, %bb.y ], [ %i.cb, %bb.v ]
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !16  ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !tbaa !42
  %i.cl = zext nneg i32 %.0.i379 to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl ; 2 uses
  store ptr %i.cm, ptr %i.c, align 8, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph647
  %.7289 = phi ptr [ %i.ck, %bb.z ], [ %.6288643, %.lr.ph647 ] ; 2 uses
  %.7274 = phi ptr [ %i.cm, %bb.z ], [ %.6273644, %.lr.ph647 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.7289, i64 1 ; 2 uses
  %i.co = load i8, ptr %.7289, align 1, !tbaa !41
  %.not368 = icmp ult ptr %i.cn, %.7274
  br i1 %.not368, label %bb.ai, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %0, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !46
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.cu = load i32, ptr %i.k, align 8, !tbaa !23
  %i.cv = tail call i32 %i.cr(ptr noundef %i.cs, ptr noundef %i.ct, i32 noundef %i.cu) #5, !inline_history !47 ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.cx, align 4, !tbaa !31
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.cy = icmp eq i32 %i.cv, 0
  br i1 %i.cy, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load i8, ptr %i.l, align 1, !tbaa !48
  %.not.i385 = icmp eq i8 %i.cz, 0
  br i1 %.not.i385, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.da, align 4, !tbaa !31
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store i8 0, ptr %i.dc, align 1, !tbaa !41
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !16
  store i8 0, ptr %i.dd, align 1, !tbaa !41
  store i8 1, ptr %i.l, align 1, !tbaa !48
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.0.i383 = phi i32 [ 2, %bb.ag ], [ %i.cv, %bb.ad ]
  %i.de = load ptr, ptr %i.j, align 8, !tbaa !16  ; 3 uses
  store ptr %i.de, ptr %i.a, align 8, !tbaa !42
  %i.df = zext nneg i32 %.0.i383 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df ; 2 uses
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !43
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aa, %bb.ah
  %.8290 = phi ptr [ %i.de, %bb.ah ], [ %i.cn, %bb.aa ] ; 2 uses
  %.8275 = phi ptr [ %i.dg, %bb.ah ], [ %.7274, %bb.aa ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.8290, i64 1 ; 2 uses
  %i.di = load i8, ptr %.8290, align 1, !tbaa !41
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = zext i8 %i.co to i32
  %i.dm = or disjoint i32 %i.dk, %i.dl
  %i.dn = sub i32 16, %.4250646
  %i.do = shl i32 %i.dm, %i.dn
  %i.dp = or i32 %i.do, %.4256645                 ; 2 uses
  %i.dq = add nsw i32 %.4250646, 16               ; 2 uses
  %i.dr = icmp slt i32 %.4250646, 0
  br i1 %i.dr, label %.lr.ph647, label %._crit_edge648

._crit_edge648:                                   ; preds = %bb.ai, %.preheader467
  %.6288.lcssa = phi ptr [ %.5287700, %.preheader467 ], [ %i.dh, %bb.ai ] ; 8 uses
  %.6273.lcssa = phi ptr [ %.5272701, %.preheader467 ], [ %.8275, %bb.ai ] ; 8 uses
  %.4256.lcssa = phi i32 [ %.3255702, %.preheader467 ], [ %i.dp, %bb.ai ] ; 28 uses
  %.4250.lcssa = phi i32 [ %.3249703, %.preheader467 ], [ %i.dq, %bb.ai ]
  %i.ds = lshr i32 %.4256.lcssa, 26
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !50 ; 3 uses
  %i.dw = icmp ugt i16 %i.dv, 19
  br i1 %i.dw, label %.preheader465.preheader, label %.loopexit466

.preheader465.preheader:                          ; preds = %._crit_edge648
  %i.dx = zext i16 %i.dv to i64
  %4 = and i32 %.4256.lcssa, 33554432
  %.not344 = icmp ne i32 %4, 0
  %i.dy = zext i1 %.not344 to i64
  %.idx = shl nuw nsw i64 %i.dx, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !50 ; 3 uses
  %i.ec = icmp ugt i16 %i.eb, 19
  br i1 %i.ec, label %.preheader465.1, label %.loopexit466

bb.aj:                                            ; preds = %.preheader465.25
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 11, ptr %i.ed, align 4, !tbaa !31
  br label %.thread

.preheader465.1:                                  ; preds = %.preheader465.preheader
  %i.ee = zext i16 %i.eb to i64
  %i.ef = lshr i32 %.4256.lcssa, 24
  %.lobit860.a = and i32 %i.ef, 1
  %i.eg = zext nneg i32 %.lobit860.a to i64
  %.idx.1 = shl nuw nsw i64 %i.ee, 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.1
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !50 ; 3 uses
  %i.ek = icmp ugt i16 %i.ej, 19
  br i1 %i.ek, label %.preheader465.2, label %.loopexit466

.preheader465.2:                                  ; preds = %.preheader465.1
  %i.el = zext i16 %i.ej to i64
  %i.em = lshr i32 %.4256.lcssa, 23
  %.lobit861.a = and i32 %i.em, 1
  %i.en = zext nneg i32 %.lobit861.a to i64
  %.idx.2 = shl nuw nsw i64 %i.el, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.2
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !50 ; 3 uses
  %i.er = icmp ugt i16 %i.eq, 19
  br i1 %i.er, label %.preheader465.3, label %.loopexit466

.preheader465.3:                                  ; preds = %.preheader465.2
  %i.es = zext i16 %i.eq to i64
  %i.et = lshr i32 %.4256.lcssa, 22
  %.lobit862.a = and i32 %i.et, 1
  %i.eu = zext nneg i32 %.lobit862.a to i64
  %.idx.3 = shl nuw nsw i64 %i.es, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.3
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !50 ; 3 uses
  %i.ey = icmp ugt i16 %i.ex, 19
  br i1 %i.ey, label %.preheader465.4, label %.loopexit466

.preheader465.4:                                  ; preds = %.preheader465.3
  %i.ez = zext i16 %i.ex to i64
  %i.fa = lshr i32 %.4256.lcssa, 21
  %.lobit863.a = and i32 %i.fa, 1
  %i.fb = zext nneg i32 %.lobit863.a to i64
  %.idx.4 = shl nuw nsw i64 %i.ez, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.4
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !50 ; 3 uses
  %i.ff = icmp ugt i16 %i.fe, 19
  br i1 %i.ff, label %.preheader465.5, label %.loopexit466

.preheader465.5:                                  ; preds = %.preheader465.4
  %i.fg = zext i16 %i.fe to i64
  %i.fh = lshr i32 %.4256.lcssa, 20
  %.lobit864.a = and i32 %i.fh, 1
  %i.fi = zext nneg i32 %.lobit864.a to i64
  %.idx.5 = shl nuw nsw i64 %i.fg, 2
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.5
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !50 ; 3 uses
  %i.fm = icmp ugt i16 %i.fl, 19
  br i1 %i.fm, label %.preheader465.6, label %.loopexit466

.preheader465.6:                                  ; preds = %.preheader465.5
  %i.fn = zext i16 %i.fl to i64
  %i.fo = lshr i32 %.4256.lcssa, 19
  %.lobit865.a = and i32 %i.fo, 1
  %i.fp = zext nneg i32 %.lobit865.a to i64
  %.idx.6 = shl nuw nsw i64 %i.fn, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.6
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !50 ; 3 uses
  %i.ft = icmp ugt i16 %i.fs, 19
  br i1 %i.ft, label %.preheader465.7, label %.loopexit466

.preheader465.7:                                  ; preds = %.preheader465.6
  %i.fu = zext i16 %i.fs to i64
  %i.fv = lshr i32 %.4256.lcssa, 18
  %.lobit866.a = and i32 %i.fv, 1
  %i.fw = zext nneg i32 %.lobit866.a to i64
  %.idx.7 = shl nuw nsw i64 %i.fu, 2
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.7
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %i.fw
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !50 ; 3 uses
  %i.ga = icmp ugt i16 %i.fz, 19
  br i1 %i.ga, label %.preheader465.8, label %.loopexit466

.preheader465.8:                                  ; preds = %.preheader465.7
  %i.gb = zext i16 %i.fz to i64
  %i.gc = lshr i32 %.4256.lcssa, 17
  %.lobit867.a = and i32 %i.gc, 1
  %i.gd = zext nneg i32 %.lobit867.a to i64
  %.idx.8 = shl nuw nsw i64 %i.gb, 2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.8
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !50 ; 3 uses
  %i.gh = icmp ugt i16 %i.gg, 19
  br i1 %i.gh, label %.preheader465.9, label %.loopexit466

.preheader465.9:                                  ; preds = %.preheader465.8
  %i.gi = zext i16 %i.gg to i64
  %i.gj = lshr i32 %.4256.lcssa, 16
  %.lobit868.a = and i32 %i.gj, 1
  %i.gk = zext nneg i32 %.lobit868.a to i64
  %.idx.9 = shl nuw nsw i64 %i.gi, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.9
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gk
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !50 ; 3 uses
  %i.go = icmp ugt i16 %i.gn, 19
  br i1 %i.go, label %.preheader465.10, label %.loopexit466

.preheader465.10:                                 ; preds = %.preheader465.9
  %i.gp = zext i16 %i.gn to i64
  %i.gq = lshr i32 %.4256.lcssa, 15
  %.lobit869.a = and i32 %i.gq, 1
  %i.gr = zext nneg i32 %.lobit869.a to i64
  %.idx.10 = shl nuw nsw i64 %i.gp, 2
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.10
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !50 ; 3 uses
  %i.gv = icmp ugt i16 %i.gu, 19
  br i1 %i.gv, label %.preheader465.11, label %.loopexit466

.preheader465.11:                                 ; preds = %.preheader465.10
  %i.gw = zext i16 %i.gu to i64
  %i.gx = lshr i32 %.4256.lcssa, 14
  %.lobit870.a = and i32 %i.gx, 1
  %i.gy = zext nneg i32 %.lobit870.a to i64
  %.idx.11 = shl nuw nsw i64 %i.gw, 2
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.11
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !50 ; 3 uses
  %i.hc = icmp ugt i16 %i.hb, 19
  br i1 %i.hc, label %.preheader465.12, label %.loopexit466

.preheader465.12:                                 ; preds = %.preheader465.11
  %i.hd = zext i16 %i.hb to i64
  %i.he = lshr i32 %.4256.lcssa, 13
  %.lobit871.a = and i32 %i.he, 1
  %i.hf = zext nneg i32 %.lobit871.a to i64
  %.idx.12 = shl nuw nsw i64 %i.hd, 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.12
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.hf
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !50 ; 3 uses
  %i.hj = icmp ugt i16 %i.hi, 19
  br i1 %i.hj, label %.preheader465.13, label %.loopexit466

.preheader465.13:                                 ; preds = %.preheader465.12
  %i.hk = zext i16 %i.hi to i64
  %i.hl = lshr i32 %.4256.lcssa, 12
  %.lobit872.a = and i32 %i.hl, 1
  %i.hm = zext nneg i32 %.lobit872.a to i64
  %.idx.13 = shl nuw nsw i64 %i.hk, 2
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.13
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.hm
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !50 ; 3 uses
  %i.hq = icmp ugt i16 %i.hp, 19
  br i1 %i.hq, label %.preheader465.14, label %.loopexit466

.preheader465.14:                                 ; preds = %.preheader465.13
  %i.hr = zext i16 %i.hp to i64
  %i.hs = lshr i32 %.4256.lcssa, 11
  %.lobit873.a = and i32 %i.hs, 1
  %i.ht = zext nneg i32 %.lobit873.a to i64
  %.idx.14 = shl nuw nsw i64 %i.hr, 2
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.14
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !50 ; 3 uses
  %i.hx = icmp ugt i16 %i.hw, 19
  br i1 %i.hx, label %.preheader465.15, label %.loopexit466

.preheader465.15:                                 ; preds = %.preheader465.14
  %i.hy = zext i16 %i.hw to i64
  %i.hz = lshr i32 %.4256.lcssa, 10
  %.lobit874.a = and i32 %i.hz, 1
  %i.ia = zext nneg i32 %.lobit874.a to i64
  %.idx.15 = shl nuw nsw i64 %i.hy, 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.15
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.ia
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !50 ; 3 uses
  %i.ie = icmp ugt i16 %i.id, 19
  br i1 %i.ie, label %.preheader465.16, label %.loopexit466

.preheader465.16:                                 ; preds = %.preheader465.15
  %i.if = zext i16 %i.id to i64
  %i.ig = lshr i32 %.4256.lcssa, 9
  %.lobit875.a = and i32 %i.ig, 1
  %i.ih = zext nneg i32 %.lobit875.a to i64
  %.idx.16 = shl nuw nsw i64 %i.if, 2
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.16
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.ih
end_hunk_3
begin_hunk_4_@lzxd_read_lens:bb.a
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 %i.rb
  store i8 0, ptr %i.rc, align 1, !tbaa !41
  %.not356.3 = icmp eq i32 %i.qz, 0
  br i1 %.not356.3, label %.loopexit.loopexit710, label %vec.epilog.scalar.ph980, !llvm.loop !86

.lr.ph657:                                        ; preds = %.preheader464, %bb.bt
  %.10656 = phi i32 [ %i.sl, %bb.bt ], [ %i.lc, %.preheader464 ] ; 4 uses
  %.10262655 = phi i32 [ %i.sk, %bb.bt ], [ %i.lb, %.preheader464 ]
  %.18654 = phi ptr [ %.20, %bb.bt ], [ %.6273.lcssa, %.preheader464 ] ; 2 uses
  %.18300653 = phi ptr [ %i.sc, %bb.bt ], [ %.6288.lcssa, %.preheader464 ] ; 2 uses
  %.not352 = icmp ult ptr %.18300653, %.18654
  br i1 %.not352, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph657
  %i.rd = load ptr, ptr %0, align 8, !tbaa !18
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !46
  %i.rg = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.rh = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.ri = load i32, ptr %i.k, align 8, !tbaa !23
  %i.rj = tail call i32 %i.rf(ptr noundef %i.rg, ptr noundef %i.rh, i32 noundef %i.ri) #5, !inline_history !47 ; 3 uses
  %i.rk = icmp slt i32 %i.rj, 0
  br i1 %i.rk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.rl, align 4, !tbaa !31
  br label %.thread

bb.bk:                                            ; preds = %bb.bi
  %i.rm = icmp eq i32 %i.rj, 0
  br i1 %i.rm, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.rn = load i8, ptr %i.l, align 1, !tbaa !48
  %.not.i397 = icmp eq i8 %i.rn, 0
  br i1 %.not.i397, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.ro, align 4, !tbaa !31
  br label %.thread

bb.bn:                                            ; preds = %bb.bl
  %i.rp = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 1
  store i8 0, ptr %i.rq, align 1, !tbaa !41
  %i.rr = load ptr, ptr %i.j, align 8, !tbaa !16
  store i8 0, ptr %i.rr, align 1, !tbaa !41
  store i8 1, ptr %i.l, align 1, !tbaa !48
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %.0.i395 = phi i32 [ 2, %bb.bn ], [ %i.rj, %bb.bk ]
  %i.rs = load ptr, ptr %i.j, align 8, !tbaa !16  ; 3 uses
  store ptr %i.rs, ptr %i.a, align 8, !tbaa !42
  %i.rt = zext nneg i32 %.0.i395 to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rt ; 2 uses
  store ptr %i.ru, ptr %i.c, align 8, !tbaa !43
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph657
  %.19301 = phi ptr [ %i.rs, %bb.bo ], [ %.18300653, %.lr.ph657 ] ; 2 uses
  %.19 = phi ptr [ %i.ru, %bb.bo ], [ %.18654, %.lr.ph657 ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.19301, i64 1 ; 2 uses
  %i.rw = load i8, ptr %.19301, align 1, !tbaa !41
  %.not354 = icmp ult ptr %i.rv, %.19
  br i1 %.not354, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.rx = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not355 = icmp eq i32 %i.rx, 0
  br i1 %.not355, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !31
  br label %.thread

bb.bs:                                            ; preds = %bb.bq
  %i.sa = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.sb = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bp, %bb.bs
  %.20302 = phi ptr [ %i.sa, %bb.bs ], [ %i.rv, %bb.bp ] ; 2 uses
  %.20 = phi ptr [ %i.sb, %bb.bs ], [ %.19, %bb.bp ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.20302, i64 1 ; 2 uses
  %i.sd = load i8, ptr %.20302, align 1, !tbaa !41
  %i.se = zext i8 %i.sd to i32
  %i.sf = shl nuw nsw i32 %i.se, 8
  %i.sg = zext i8 %i.rw to i32
  %i.sh = or disjoint i32 %i.sf, %i.sg
  %i.si = sub i32 16, %.10656
  %i.sj = shl i32 %i.sh, %i.si
  %i.sk = or i32 %i.sj, %.10262655                ; 3 uses
  %i.sl = add nsw i32 %.10656, 16
  %i.sm = icmp slt i32 %.10656, -15
  br i1 %i.sm, label %.lr.ph657, label %._crit_edge658.thread

._crit_edge658.thread:                            ; preds = %bb.bt
  %i.sn = lshr i32 %i.sk, 31
  %i.so = shl i32 %i.sk, 1
  %i.sp = add nsw i32 %.10656, 15
  %i.sq = or disjoint i32 %i.sn, 4
  br label %.lr.ph668.preheader

._crit_edge658:                                   ; preds = %.preheader464
  %i.sr = lshr i32 %i.lb, 31
  %i.ss = shl i32 %i.lb, 1                        ; 2 uses
  %i.st = add nsw i32 %i.lc, -1                   ; 2 uses
  %i.su = or disjoint i32 %i.sr, 4                ; 2 uses
  %i.sv = icmp samesign ult i32 %i.lc, 17
  br i1 %i.sv, label %.lr.ph668.preheader, label %._crit_edge669

.lr.ph668.preheader:                              ; preds = %._crit_edge658.thread, %._crit_edge658
  %i.sw = phi i32 [ %i.sq, %._crit_edge658.thread ], [ %i.su, %._crit_edge658 ]
  %i.sx = phi i32 [ %i.sp, %._crit_edge658.thread ], [ %i.st, %._crit_edge658 ]
  %i.sy = phi i32 [ %i.so, %._crit_edge658.thread ], [ %i.ss, %._crit_edge658 ]
  %.18.lcssa914 = phi ptr [ %.20, %._crit_edge658.thread ], [ %.6273.lcssa, %._crit_edge658 ]
  %.18300.lcssa913 = phi ptr [ %i.sc, %._crit_edge658.thread ], [ %.6288.lcssa, %._crit_edge658 ]
  br label %.lr.ph668

.lr.ph668:                                        ; preds = %.lr.ph668.preheader, %bb.cb
  %.12666 = phi i32 [ %i.tu, %bb.cb ], [ %i.sx, %.lr.ph668.preheader ] ; 3 uses
  %.12264665 = phi i32 [ %i.tt, %bb.cb ], [ %i.sy, %.lr.ph668.preheader ]
  %.22664 = phi ptr [ %.24, %bb.cb ], [ %.18.lcssa914, %.lr.ph668.preheader ] ; 2 uses
  %.22304663 = phi ptr [ %i.tl, %bb.cb ], [ %.18300.lcssa913, %.lr.ph668.preheader ] ; 2 uses
  %.not348 = icmp ult ptr %.22304663, %.22664
  br i1 %.not348, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph668
  %i.sz = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not349 = icmp eq i32 %i.sz, 0
  br i1 %.not349, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !31
  br label %.thread

bb.bw:                                            ; preds = %bb.bu
  %i.tc = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.td = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph668
  %.23305 = phi ptr [ %i.tc, %bb.bw ], [ %.22304663, %.lr.ph668 ] ; 2 uses
  %.23 = phi ptr [ %i.td, %bb.bw ], [ %.22664, %.lr.ph668 ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.23305, i64 1 ; 2 uses
  %i.tf = load i8, ptr %.23305, align 1, !tbaa !41
  %.not350 = icmp ult ptr %i.te, %.23
  br i1 %.not350, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tg = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not351 = icmp eq i32 %i.tg, 0
  br i1 %.not351, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !31
  br label %.thread

bb.ca:                                            ; preds = %bb.by
  %i.tj = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.tk = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bx, %bb.ca
  %.24306 = phi ptr [ %i.tj, %bb.ca ], [ %i.te, %bb.bx ] ; 2 uses
  %.24 = phi ptr [ %i.tk, %bb.ca ], [ %.23, %bb.bx ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.24306, i64 1 ; 2 uses
  %i.tm = load i8, ptr %.24306, align 1, !tbaa !41
  %i.tn = zext i8 %i.tm to i32
  %i.to = shl nuw nsw i32 %i.tn, 8
  %i.tp = zext i8 %i.tf to i32
  %i.tq = or disjoint i32 %i.to, %i.tp
  %i.tr = sub nuw nsw i32 16, %.12666
  %i.ts = shl nuw i32 %i.tq, %i.tr
  %i.tt = or i32 %i.ts, %.12264665                ; 2 uses
  %i.tu = add nuw nsw i32 %.12666, 16             ; 2 uses
  %i.tv = icmp slt i32 %.12666, 0
  br i1 %i.tv, label %.lr.ph668, label %._crit_edge669

._crit_edge669:                                   ; preds = %bb.cb, %._crit_edge658
  %i.tw = phi i32 [ %i.su, %._crit_edge658 ], [ %i.sw, %bb.cb ] ; 10 uses
  %.22304.lcssa = phi ptr [ %.6288.lcssa, %._crit_edge658 ], [ %i.tl, %bb.cb ]
  %.22.lcssa = phi ptr [ %.6273.lcssa, %._crit_edge658 ], [ %.24, %bb.cb ]
  %.12264.lcssa = phi i32 [ %i.ss, %._crit_edge658 ], [ %i.tt, %bb.cb ] ; 28 uses
  %.12.lcssa = phi i32 [ %i.st, %._crit_edge658 ], [ %i.tu, %bb.cb ]
  %i.tx = lshr i32 %.12264.lcssa, 26
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.ty
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !50 ; 3 uses
  %i.ub = icmp ugt i16 %i.ua, 19
  br i1 %i.ub, label %.preheader462.preheader, label %iter.check1005

.preheader462.preheader:                          ; preds = %._crit_edge669
  %i.uc = zext i16 %i.ua to i64
  %5 = and i32 %.12264.lcssa, 33554432
  %.not345 = icmp ne i32 %5, 0
  %i.ud = zext i1 %.not345 to i64
  %.idx346 = shl nuw nsw i64 %i.uc, 2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.ue, i64 %i.ud
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !50 ; 3 uses
  %i.uh = icmp ugt i16 %i.ug, 19
  br i1 %i.uh, label %.preheader462.1, label %iter.check1005

bb.cc:                                            ; preds = %.preheader462.25
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 11, ptr %i.ui, align 4, !tbaa !31
  br label %.thread

.preheader462.1:                                  ; preds = %.preheader462.preheader
  %i.uj = zext i16 %i.ug to i64
  %i.uk = lshr i32 %.12264.lcssa, 24
  %.lobit885.a = and i32 %i.uk, 1
  %i.ul = zext nneg i32 %.lobit885.a to i64
  %.idx346.1 = shl nuw nsw i64 %i.uj, 2
  %i.um = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.1
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.um, i64 %i.ul
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !50 ; 3 uses
  %i.up = icmp ugt i16 %i.uo, 19
  br i1 %i.up, label %.preheader462.2, label %iter.check1005

.preheader462.2:                                  ; preds = %.preheader462.1
  %i.uq = zext i16 %i.uo to i64
  %i.ur = lshr i32 %.12264.lcssa, 23
  %.lobit886.a = and i32 %i.ur, 1
  %i.us = zext nneg i32 %.lobit886.a to i64
  %.idx346.2 = shl nuw nsw i64 %i.uq, 2
  %i.ut = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.2
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.ut, i64 %i.us
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !50 ; 3 uses
  %i.uw = icmp ugt i16 %i.uv, 19
  br i1 %i.uw, label %.preheader462.3, label %iter.check1005

.preheader462.3:                                  ; preds = %.preheader462.2
  %i.ux = zext i16 %i.uv to i64
  %i.uy = lshr i32 %.12264.lcssa, 22
  %.lobit887.a = and i32 %i.uy, 1
  %i.uz = zext nneg i32 %.lobit887.a to i64
  %.idx346.3 = shl nuw nsw i64 %i.ux, 2
  %i.va = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.3
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.uz
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !50 ; 3 uses
  %i.vd = icmp ugt i16 %i.vc, 19
  br i1 %i.vd, label %.preheader462.4, label %iter.check1005

.preheader462.4:                                  ; preds = %.preheader462.3
  %i.ve = zext i16 %i.vc to i64
  %i.vf = lshr i32 %.12264.lcssa, 21
  %.lobit888.a = and i32 %i.vf, 1
  %i.vg = zext nneg i32 %.lobit888.a to i64
  %.idx346.4 = shl nuw nsw i64 %i.ve, 2
  %i.vh = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.4
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.vh, i64 %i.vg
  %i.vj = load i16, ptr %i.vi, align 2, !tbaa !50 ; 3 uses
  %i.vk = icmp ugt i16 %i.vj, 19
  br i1 %i.vk, label %.preheader462.5, label %iter.check1005

.preheader462.5:                                  ; preds = %.preheader462.4
  %i.vl = zext i16 %i.vj to i64
  %i.vm = lshr i32 %.12264.lcssa, 20
  %.lobit889.a = and i32 %i.vm, 1
  %i.vn = zext nneg i32 %.lobit889.a to i64
  %.idx346.5 = shl nuw nsw i64 %i.vl, 2
  %i.vo = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.5
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.vo, i64 %i.vn
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !50 ; 3 uses
  %i.vr = icmp ugt i16 %i.vq, 19
  br i1 %i.vr, label %.preheader462.6, label %iter.check1005

.preheader462.6:                                  ; preds = %.preheader462.5
  %i.vs = zext i16 %i.vq to i64
  %i.vt = lshr i32 %.12264.lcssa, 19
  %.lobit890.a = and i32 %i.vt, 1
  %i.vu = zext nneg i32 %.lobit890.a to i64
  %.idx346.6 = shl nuw nsw i64 %i.vs, 2
  %i.vv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.6
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.vv, i64 %i.vu
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !50 ; 3 uses
  %i.vy = icmp ugt i16 %i.vx, 19
  br i1 %i.vy, label %.preheader462.7, label %iter.check1005

.preheader462.7:                                  ; preds = %.preheader462.6
  %i.vz = zext i16 %i.vx to i64
  %i.wa = lshr i32 %.12264.lcssa, 18
  %.lobit891.a = and i32 %i.wa, 1
  %i.wb = zext nneg i32 %.lobit891.a to i64
  %.idx346.7 = shl nuw nsw i64 %i.vz, 2
  %i.wc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.7
  %i.wd = getelementptr inbounds nuw [2 x i8], ptr %i.wc, i64 %i.wb
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !50 ; 3 uses
  %i.wf = icmp ugt i16 %i.we, 19
  br i1 %i.wf, label %.preheader462.8, label %iter.check1005

.preheader462.8:                                  ; preds = %.preheader462.7
  %i.wg = zext i16 %i.we to i64
  %i.wh = lshr i32 %.12264.lcssa, 17
  %.lobit892.a = and i32 %i.wh, 1
  %i.wi = zext nneg i32 %.lobit892.a to i64
  %.idx346.8 = shl nuw nsw i64 %i.wg, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.8
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %i.wj, i64 %i.wi
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !50 ; 3 uses
  %i.wm = icmp ugt i16 %i.wl, 19
  br i1 %i.wm, label %.preheader462.9, label %iter.check1005

.preheader462.9:                                  ; preds = %.preheader462.8
  %i.wn = zext i16 %i.wl to i64
  %i.wo = lshr i32 %.12264.lcssa, 16
  %.lobit893.a = and i32 %i.wo, 1
  %i.wp = zext nneg i32 %.lobit893.a to i64
  %.idx346.9 = shl nuw nsw i64 %i.wn, 2
  %i.wq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.9
  %i.wr = getelementptr inbounds nuw [2 x i8], ptr %i.wq, i64 %i.wp
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !50 ; 3 uses
  %i.wt = icmp ugt i16 %i.ws, 19
  br i1 %i.wt, label %.preheader462.10, label %iter.check1005

.preheader462.10:                                 ; preds = %.preheader462.9
  %i.wu = zext i16 %i.ws to i64
  %i.wv = lshr i32 %.12264.lcssa, 15
  %.lobit894.a = and i32 %i.wv, 1
  %i.ww = zext nneg i32 %.lobit894.a to i64
  %.idx346.10 = shl nuw nsw i64 %i.wu, 2
  %i.wx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.10
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.wx, i64 %i.ww
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !50 ; 3 uses
  %i.xa = icmp ugt i16 %i.wz, 19
  br i1 %i.xa, label %.preheader462.11, label %iter.check1005

.preheader462.11:                                 ; preds = %.preheader462.10
  %i.xb = zext i16 %i.wz to i64
  %i.xc = lshr i32 %.12264.lcssa, 14
  %.lobit895.a = and i32 %i.xc, 1
  %i.xd = zext nneg i32 %.lobit895.a to i64
  %.idx346.11 = shl nuw nsw i64 %i.xb, 2
  %i.xe = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.11
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.xe, i64 %i.xd
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !50 ; 3 uses
  %i.xh = icmp ugt i16 %i.xg, 19
  br i1 %i.xh, label %.preheader462.12, label %iter.check1005

.preheader462.12:                                 ; preds = %.preheader462.11
  %i.xi = zext i16 %i.xg to i64
  %i.xj = lshr i32 %.12264.lcssa, 13
  %.lobit896.a = and i32 %i.xj, 1
  %i.xk = zext nneg i32 %.lobit896.a to i64
  %.idx346.12 = shl nuw nsw i64 %i.xi, 2
  %i.xl = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.12
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.xl, i64 %i.xk
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !50 ; 3 uses
  %i.xo = icmp ugt i16 %i.xn, 19
  br i1 %i.xo, label %.preheader462.13, label %iter.check1005

.preheader462.13:                                 ; preds = %.preheader462.12
  %i.xp = zext i16 %i.xn to i64
  %i.xq = lshr i32 %.12264.lcssa, 12
  %.lobit897.a = and i32 %i.xq, 1
  %i.xr = zext nneg i32 %.lobit897.a to i64
  %.idx346.13 = shl nuw nsw i64 %i.xp, 2
  %i.xs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.13
  %i.xt = getelementptr inbounds nuw [2 x i8], ptr %i.xs, i64 %i.xr
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !50 ; 3 uses
  %i.xv = icmp ugt i16 %i.xu, 19
  br i1 %i.xv, label %.preheader462.14, label %iter.check1005

.preheader462.14:                                 ; preds = %.preheader462.13
  %i.xw = zext i16 %i.xu to i64
  %i.xx = lshr i32 %.12264.lcssa, 11
  %.lobit898.a = and i32 %i.xx, 1
  %i.xy = zext nneg i32 %.lobit898.a to i64
  %.idx346.14 = shl nuw nsw i64 %i.xw, 2
  %i.xz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.14
  %i.ya = getelementptr inbounds nuw [2 x i8], ptr %i.xz, i64 %i.xy
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !50 ; 3 uses
  %i.yc = icmp ugt i16 %i.yb, 19
  br i1 %i.yc, label %.preheader462.15, label %iter.check1005

.preheader462.15:                                 ; preds = %.preheader462.14
  %i.yd = zext i16 %i.yb to i64
  %i.ye = lshr i32 %.12264.lcssa, 10
  %.lobit899.a = and i32 %i.ye, 1
  %i.yf = zext nneg i32 %.lobit899.a to i64
  %.idx346.15 = shl nuw nsw i64 %i.yd, 2
  %i.yg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.15
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %i.yg, i64 %i.yf
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !50 ; 3 uses
  %i.yj = icmp ugt i16 %i.yi, 19
  br i1 %i.yj, label %.preheader462.16, label %iter.check1005

.preheader462.16:                                 ; preds = %.preheader462.15
  %i.yk = zext i16 %i.yi to i64
  %i.yl = lshr i32 %.12264.lcssa, 9
  %.lobit900.a = and i32 %i.yl, 1
  %i.ym = zext nneg i32 %.lobit900.a to i64
  %.idx346.16 = shl nuw nsw i64 %i.yk, 2
  %i.yn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.16
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.yn, i64 %i.ym
end_hunk_4
