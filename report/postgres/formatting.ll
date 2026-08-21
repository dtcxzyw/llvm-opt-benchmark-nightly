inline.NumInlined: 373
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@NUM_processor:bb.a
  %i.ut = load i32, ptr %i.us, align 4            ; 2 uses
  %i.uu = and i32 %i.ut, 1024
  %.not286 = icmp eq i32 %i.uu, 0
  br i1 %.not286, label %bb.hc, label %NUM_numpart_to_char.exit

bb.hc:                                            ; preds = %bb.hb
  %i.uv = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.uw = load i8, ptr %i.uv, align 1
  %i.ux = icmp ne i8 %i.uw, 35
  %i.uy = load i32, ptr %i.dd, align 8
  %i.uz = icmp ne i32 %i.uy, 45
  %or.cond309.not409 = select i1 %i.ux, i1 %i.uz, i1 false
  %i.va = and i32 %i.ut, 2
  %.not287 = icmp eq i32 %i.va, 0
  %or.cond310 = and i1 %.not287, %or.cond309.not409
  br i1 %or.cond310, label %bb.hd, label %NUM_numpart_to_char.exit

bb.hd:                                            ; preds = %bb.hc
  br i1 %i.dm, label %bb.he, label %.lr.ph.i346

bb.he:                                            ; preds = %bb.hd
  %i.vb = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.vc = tail call fastcc ptr @get_th(ptr noundef nonnull %i.uv, i32 noundef 2)
  %i.vd = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.vb, ptr noundef nonnull dereferenceable(1) %i.vc) #16 ; 0 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 1
  store ptr %i.ve, ptr %i.db, align 8
  br label %NUM_numpart_from_char.exit

.lr.ph.i346:                                      ; preds = %bb.hd
  %i.vf = load ptr, ptr %i.f, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 %4 ; 4 uses
  %.pre.i345 = load ptr, ptr %i.db, align 8       ; 4 uses
  %.not.i348 = icmp ult ptr %.pre.i345, %i.vg
  br i1 %.not.i348, label %bb.hf, label %NUM_numpart_to_char.exit

bb.hf:                                            ; preds = %.lr.ph.i346
  %i.vh = load i8, ptr %.pre.i345, align 1        ; 2 uses
  %i.vi = zext nneg i8 %i.vh to i64
  %memchr.bounds.i350 = icmp ugt i8 %i.vh, 63
  %i.vj = shl nuw i64 1, %i.vi
  %i.vk = and i64 %i.vj, 288080842570334209
  %memchr.bits.i351 = icmp eq i64 %i.vk, 0
  %memchr10.not.i352 = select i1 %memchr.bounds.i350, i1 true, i1 %memchr.bits.i351
  br i1 %memchr10.not.i352, label %.lr.ph.i346.1, label %NUM_numpart_to_char.exit

.lr.ph.i346.1:                                    ; preds = %bb.hf
  %i.vl = tail call i32 @pg_mblen_range(ptr noundef nonnull %.pre.i345, ptr noundef nonnull %i.vg) #16
  %i.vm = sext i32 %i.vl to i64
  %i.vn = getelementptr inbounds i8, ptr %.pre.i345, i64 %i.vm ; 5 uses
  store ptr %i.vn, ptr %i.db, align 8
  %.not.i348.1 = icmp ult ptr %i.vn, %i.vg
  br i1 %.not.i348.1, label %bb.hg, label %NUM_numpart_to_char.exit

bb.hg:                                            ; preds = %.lr.ph.i346.1
  %i.vo = load i8, ptr %i.vn, align 1             ; 2 uses
  %i.vp = zext nneg i8 %i.vo to i64
  %memchr.bounds.i350.1 = icmp ugt i8 %i.vo, 63
  %i.vq = shl nuw i64 1, %i.vp
  %i.vr = and i64 %i.vq, 288080842570334209
  %memchr.bits.i351.1 = icmp eq i64 %i.vr, 0
  %memchr10.not.i352.1 = select i1 %memchr.bounds.i350.1, i1 true, i1 %memchr.bits.i351.1
  br i1 %memchr10.not.i352.1, label %bb.hh, label %NUM_numpart_to_char.exit

bb.hh:                                            ; preds = %bb.hg
  %i.vs = tail call i32 @pg_mblen_range(ptr noundef nonnull %i.vn, ptr noundef nonnull %i.vg) #16
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds i8, ptr %i.vn, i64 %i.vt
  store ptr %i.vu, ptr %i.db, align 8
  br label %NUM_numpart_to_char.exit

bb.hi:                                            ; preds = %bb.ap
  %i.vv = load ptr, ptr %i.d, align 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 12
  %i.vx = load i32, ptr %i.vw, align 4            ; 2 uses
  %i.vy = and i32 %i.vx, 1024
  %.not284 = icmp eq i32 %i.vy, 0
  br i1 %.not284, label %bb.hj, label %NUM_numpart_to_char.exit

bb.hj:                                            ; preds = %bb.hi
  %i.vz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 1
  %i.wb = icmp ne i8 %i.wa, 35
  %i.wc = load i32, ptr %i.dd, align 8
  %i.wd = icmp ne i32 %i.wc, 45
  %or.cond313.not406 = select i1 %i.wb, i1 %i.wd, i1 false
  %i.we = and i32 %i.vx, 2
  %.not285 = icmp eq i32 %i.we, 0
  %or.cond314 = and i1 %.not285, %or.cond313.not406
  br i1 %or.cond314, label %bb.hk, label %NUM_numpart_to_char.exit

bb.hk:                                            ; preds = %bb.hj
  br i1 %i.dm, label %bb.hl, label %.lr.ph.i356

bb.hl:                                            ; preds = %bb.hk
  %i.wf = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.wg = tail call fastcc ptr @get_th(ptr noundef nonnull %i.vz, i32 noundef 1)
  %i.wh = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.wf, ptr noundef nonnull dereferenceable(1) %i.wg) #16 ; 0 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wf, i64 1
  store ptr %i.wi, ptr %i.db, align 8
  br label %NUM_numpart_from_char.exit

.lr.ph.i356:                                      ; preds = %bb.hk
  %i.wj = load ptr, ptr %i.f, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 %4 ; 4 uses
  %.pre.i355 = load ptr, ptr %i.db, align 8       ; 4 uses
  %.not.i358 = icmp ult ptr %.pre.i355, %i.wk
  br i1 %.not.i358, label %bb.hm, label %NUM_numpart_to_char.exit

bb.hm:                                            ; preds = %.lr.ph.i356
  %i.wl = load i8, ptr %.pre.i355, align 1        ; 2 uses
  %i.wm = zext nneg i8 %i.wl to i64
  %memchr.bounds.i360 = icmp ugt i8 %i.wl, 63
  %i.wn = shl nuw i64 1, %i.wm
  %i.wo = and i64 %i.wn, 288080842570334209
  %memchr.bits.i361 = icmp eq i64 %i.wo, 0
  %memchr10.not.i362 = select i1 %memchr.bounds.i360, i1 true, i1 %memchr.bits.i361
  br i1 %memchr10.not.i362, label %.lr.ph.i356.1, label %NUM_numpart_to_char.exit

.lr.ph.i356.1:                                    ; preds = %bb.hm
  %i.wp = tail call i32 @pg_mblen_range(ptr noundef nonnull %.pre.i355, ptr noundef nonnull %i.wk) #16
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds i8, ptr %.pre.i355, i64 %i.wq ; 5 uses
  store ptr %i.wr, ptr %i.db, align 8
  %.not.i358.1 = icmp ult ptr %i.wr, %i.wk
  br i1 %.not.i358.1, label %bb.hn, label %NUM_numpart_to_char.exit

bb.hn:                                            ; preds = %.lr.ph.i356.1
  %i.ws = load i8, ptr %i.wr, align 1             ; 2 uses
  %i.wt = zext nneg i8 %i.ws to i64
  %memchr.bounds.i360.1 = icmp ugt i8 %i.ws, 63
  %i.wu = shl nuw i64 1, %i.wt
  %i.wv = and i64 %i.wu, 288080842570334209
  %memchr.bits.i361.1 = icmp eq i64 %i.wv, 0
  %memchr10.not.i362.1 = select i1 %memchr.bounds.i360.1, i1 true, i1 %memchr.bits.i361.1
  br i1 %memchr10.not.i362.1, label %bb.ho, label %NUM_numpart_to_char.exit

bb.ho:                                            ; preds = %bb.hn
  %i.ww = tail call i32 @pg_mblen_range(ptr noundef nonnull %i.wr, ptr noundef nonnull %i.wk) #16
  %i.wx = sext i32 %i.ww to i64
  %i.wy = getelementptr inbounds i8, ptr %i.wr, i64 %i.wx
  store ptr %i.wy, ptr %i.db, align 8
  br label %NUM_numpart_to_char.exit

bb.hp:                                            ; preds = %bb.ap
  br i1 %i.dm, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %bb.hp
  %i.wz = load i32, ptr %i.dd, align 8
  %i.xa = icmp eq i32 %i.wz, 45
  br i1 %i.xa, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.xb = load ptr, ptr %i.db, align 8
  store i8 45, ptr %i.xb, align 1
  br label %NUM_numpart_from_char.exit

bb.hs:                                            ; preds = %bb.hq
  %i.xc = load ptr, ptr %i.d, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 12
  %i.xe = load i32, ptr %i.xd, align 4
  %i.xf = and i32 %i.xe, 32
  %.not283 = icmp eq i32 %i.xf, 0
  br i1 %.not283, label %bb.ht, label %NUM_numpart_to_char.exit

bb.ht:                                            ; preds = %bb.hs
  %i.xg = load ptr, ptr %i.db, align 8
  store i8 32, ptr %i.xg, align 1
  br label %NUM_numpart_from_char.exit

bb.hu:                                            ; preds = %bb.hp
  %i.xh = load ptr, ptr %i.db, align 8            ; 4 uses
  %i.xi = load i8, ptr %i.xh, align 1             ; 3 uses
  %i.xj = icmp eq i8 %i.xi, 45
  br i1 %i.xj, label %bb.hv, label %.lr.ph.i366

bb.hv:                                            ; preds = %bb.hu
  %i.xk = load ptr, ptr %i.e, align 8
  store i8 45, ptr %i.xk, align 1
  br label %NUM_numpart_from_char.exit

.lr.ph.i366:                                      ; preds = %bb.hu
  %i.xl = load ptr, ptr %i.f, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 %4 ; 2 uses
  %.not.i368 = icmp ult ptr %i.xh, %i.xm
  br i1 %.not.i368, label %bb.hw, label %NUM_numpart_to_char.exit

bb.hw:                                            ; preds = %.lr.ph.i366
  %i.xn = zext nneg i8 %i.xi to i64
  %memchr.bounds.i370 = icmp ugt i8 %i.xi, 63
  %i.xo = shl nuw i64 1, %i.xn
  %i.xp = and i64 %i.xo, 288080842570334209
  %memchr.bits.i371 = icmp eq i64 %i.xp, 0
  %memchr10.not.i372 = select i1 %memchr.bounds.i370, i1 true, i1 %memchr.bits.i371
  br i1 %memchr10.not.i372, label %bb.hx, label %NUM_numpart_to_char.exit

bb.hx:                                            ; preds = %bb.hw
  %i.xq = tail call i32 @pg_mblen_range(ptr noundef nonnull %i.xh, ptr noundef nonnull %i.xm) #16
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds i8, ptr %i.xh, i64 %i.xr
  store ptr %i.xs, ptr %i.db, align 8
  br label %NUM_numpart_to_char.exit

bb.hy:                                            ; preds = %bb.ap
  br i1 %i.dm, label %bb.hz, label %bb.id

bb.hz:                                            ; preds = %bb.hy
  %i.xt = load i32, ptr %i.dd, align 8
  %i.xu = icmp eq i32 %i.xt, 43
  br i1 %i.xu, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.xv = load ptr, ptr %i.db, align 8
  store i8 43, ptr %i.xv, align 1
  br label %NUM_numpart_from_char.exit

bb.ib:                                            ; preds = %bb.hz
  %i.xw = load ptr, ptr %i.d, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 12
  %i.xy = load i32, ptr %i.xx, align 4
  %i.xz = and i32 %i.xy, 32
  %.not282 = icmp eq i32 %i.xz, 0
  br i1 %.not282, label %bb.ic, label %NUM_numpart_to_char.exit

bb.ic:                                            ; preds = %bb.ib
  %i.ya = load ptr, ptr %i.db, align 8
  store i8 32, ptr %i.ya, align 1
  br label %NUM_numpart_from_char.exit

bb.id:                                            ; preds = %bb.hy
  %i.yb = load ptr, ptr %i.db, align 8            ; 4 uses
  %i.yc = load i8, ptr %i.yb, align 1             ; 3 uses
  %i.yd = icmp eq i8 %i.yc, 43
  br i1 %i.yd, label %bb.ie, label %.lr.ph.i376

bb.ie:                                            ; preds = %bb.id
  %i.ye = load ptr, ptr %i.e, align 8
  store i8 43, ptr %i.ye, align 1
  br label %NUM_numpart_from_char.exit

.lr.ph.i376:                                      ; preds = %bb.id
  %i.yf = load ptr, ptr %i.f, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %4 ; 2 uses
  %.not.i378 = icmp ult ptr %i.yb, %i.yg
  br i1 %.not.i378, label %bb.if, label %NUM_numpart_to_char.exit

bb.if:                                            ; preds = %.lr.ph.i376
  %i.yh = zext nneg i8 %i.yc to i64
  %memchr.bounds.i380 = icmp ugt i8 %i.yc, 63
  %i.yi = shl nuw i64 1, %i.yh
  %i.yj = and i64 %i.yi, 288080842570334209
  %memchr.bits.i381 = icmp eq i64 %i.yj, 0
  %memchr10.not.i382 = select i1 %memchr.bounds.i380, i1 true, i1 %memchr.bits.i381
  br i1 %memchr10.not.i382, label %bb.ig, label %NUM_numpart_to_char.exit

bb.ig:                                            ; preds = %bb.if
  %i.yk = tail call i32 @pg_mblen_range(ptr noundef nonnull %i.yb, ptr noundef nonnull %i.yg) #16
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds i8, ptr %i.yb, i64 %i.yl
  store ptr %i.ym, ptr %i.db, align 8
  br label %NUM_numpart_to_char.exit

bb.ih:                                            ; preds = %bb.ap
  br i1 %i.dm, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.yn = load i32, ptr %i.dd, align 8
  %i.yo = trunc i32 %i.yn to i8
  %i.yp = load ptr, ptr %i.db, align 8
  store i8 %i.yo, ptr %i.yp, align 1
  br label %NUM_numpart_from_char.exit

bb.ij:                                            ; preds = %bb.ih
  %i.yq = load ptr, ptr %i.db, align 8            ; 4 uses
  %i.yr = load i8, ptr %i.yq, align 1             ; 3 uses
  switch i8 %i.yr, label %.lr.ph.i386 [
    i8 45, label %bb.ik
    i8 43, label %bb.il
  ]

bb.ik:                                            ; preds = %bb.ij
  %i.ys = load ptr, ptr %i.e, align 8
  store i8 45, ptr %i.ys, align 1
  br label %NUM_numpart_from_char.exit

bb.il:                                            ; preds = %bb.ij
  %i.yt = load ptr, ptr %i.e, align 8
  store i8 43, ptr %i.yt, align 1
  br label %NUM_numpart_from_char.exit

.lr.ph.i386:                                      ; preds = %bb.ij
  %i.yu = load ptr, ptr %i.f, align 8
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 %4 ; 2 uses
  %.not.i388 = icmp ult ptr %i.yq, %i.yv
  br i1 %.not.i388, label %bb.im, label %NUM_numpart_to_char.exit

bb.im:                                            ; preds = %.lr.ph.i386
  %i.yw = zext nneg i8 %i.yr to i64
  %memchr.bounds.i390 = icmp ugt i8 %i.yr, 63
  %i.yx = shl nuw i64 1, %i.yw
  %i.yy = and i64 %i.yx, 288080842570334209
  %memchr.bits.i391 = icmp eq i64 %i.yy, 0
  %memchr10.not.i392 = select i1 %memchr.bounds.i390, i1 true, i1 %memchr.bits.i391
  br i1 %memchr10.not.i392, label %bb.in, label %NUM_numpart_to_char.exit

bb.in:                                            ; preds = %bb.im
  %i.yz = tail call i32 @pg_mblen_range(ptr noundef nonnull %i.yq, ptr noundef nonnull %i.yv) #16
  %i.za = sext i32 %i.yz to i64
  %i.zb = getelementptr inbounds i8, ptr %i.yq, i64 %i.za
  store ptr %i.zb, ptr %i.db, align 8
  br label %NUM_numpart_to_char.exit

bb.io:                                            ; preds = %bb.ao
  %i.zc = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.0255424, i64 4
  %i.ze = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.zc, ptr noundef nonnull dereferenceable(1) %i.zd) #16 ; 0 uses
  %i.zf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.zc) #17
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.zf
  store ptr %i.zg, ptr %i.db, align 8
  br label %NUM_numpart_to_char.exit

bb.ip:                                            ; preds = %.thread400
  %i.zh = tail call i32 @pg_mblen_range(ptr noundef %i.dn, ptr noundef nonnull %i.dp) #16
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr inbounds i8, ptr %i.dn, i64 %i.zi
  store ptr %i.zj, ptr %i.db, align 8
  br label %NUM_numpart_to_char.exit

NUM_numpart_from_char.exit:                       ; preds = %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ed, %bb.ec, %bb.ea, %bb.dz, %bb.dy, %bb.dq, %bb.dn, %bb.cx, %bb.cu, %bb.fm, %bb.fv, %bb.he, %bb.hl, %bb.ew, %bb.es, %bb.et, %bb.fc, %bb.fd, %bb.fi, %bb.hr, %bb.ht, %bb.hv, %bb.ia, %bb.ic, %bb.ie, %bb.ik, %bb.il, %bb.ii
  %i.zk = load ptr, ptr %i.db, align 8
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 1
  store ptr %i.zl, ptr %i.db, align 8
  br label %NUM_numpart_to_char.exit

NUM_numpart_to_char.exit:                         ; preds = %bb.fp, %bb.fo, %.lr.ph.i, %bb.im, %.lr.ph.i386, %bb.in, %bb.if, %.lr.ph.i376, %bb.ig, %bb.hw, %.lr.ph.i366, %bb.hx, %bb.hm, %.lr.ph.i356, %.lr.ph.i356.1, %bb.hn, %bb.ho, %bb.hf, %.lr.ph.i346, %.lr.ph.i346.1, %bb.hg, %bb.hh, %bb.fn, %bb.ct, %bb.ar, %bb.io, %bb.ip, %bb.ap, %bb.ib, %bb.hs, %bb.hi, %bb.hj, %bb.hb, %bb.hc, %bb.fg, %bb.fh, %bb.ff, %bb.fb, %bb.ew, %bb.ev, %bb.er, %NUM_numpart_from_char.exit, %bb.ha
  %i.zm = getelementptr inbounds nuw i8, ptr %.0255424, i64 24 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 8            ; 2 uses
  %.not280 = icmp eq i32 %i.zn, 1
  br i1 %.not280, label %._crit_edge, label %bb.am, !llvm.loop !32

._crit_edge:                                      ; preds = %NUM_numpart_to_char.exit, %bb.an, %NUM_prepare_locale.exit
  %i.zo = load i8, ptr %8, align 8, !range !4, !noundef !5
  %i.zp = trunc nuw i8 %i.zo to i1
  br i1 %i.zp, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %._crit_edge
  %i.zq = load ptr, ptr %i.db, align 8
  store i8 0, ptr %i.zq, align 1
  br label %bb.iv

bb.ir:                                            ; preds = %._crit_edge
  %i.zr = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.zs = getelementptr inbounds i8, ptr %i.zr, i64 -1 ; 2 uses
  %i.zt = load i8, ptr %i.zs, align 1
  %i.zu = icmp eq i8 %i.zt, 46
  br i1 %i.zu, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  store i8 0, ptr %i.zs, align 1
  br label %bb.iu

bb.it:                                            ; preds = %bb.ir
  store i8 0, ptr %i.zr, align 1
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is
  %i.zv = load i32, ptr %i.h, align 4
  %i.zw = load ptr, ptr %i.d, align 8
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  store i32 %i.zv, ptr %i.zx, align 4
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.iq, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void
}

declare i64 @DirectFunctionCall3Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @numeric_in(ptr noundef) #3

declare ptr @int64_to_numeric(i64 noundef) local_unnamed_addr #3

declare i64 @DirectFunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @numeric_power(ptr noundef) #3

declare i64 @numeric_mul(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @numeric_to_char(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.NUMDesc, align 4            ; 12 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %struct.ErrorSaveContext, align 8   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum(ptr noundef %i.d) #16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.h) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = icmp eq i8 %i.j, 1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.i, i64 1
  %.val.i = load i8, ptr %i.m, align 1            ; 2 uses
  %i.n = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.n, 3
  %i.o = icmp eq i8 %.val.i, 18
  %i.p = select i1 %i.o, i64 16, i64 0
  %i.q = select i1 %or.cond.i.i.i, i64 8, i64 %i.p
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.r = and i32 %i.k, 1
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i32 %i.k, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add nsw i64 %i.t, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.i, align 4
  %i.w = lshr i32 %i.v, 2
  %i.x = add nsw i32 %i.w, -4
  %i.y = zext i32 %i.x to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.q, %bb.b ], [ %i.u, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  %i.z = trunc i64 %.0.i to i32                   ; 2 uses
  %i.aa = add i32 %i.z, -1
  %or.cond = icmp ult i32 %i.aa, 268435454
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.ab = tail call ptr @cstring_to_text(ptr noundef nonnull @.str.17) #16
  br label %bb.ab

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.ac = shl nsw i64 %.0.i, 3
  %i.ad = and i64 %i.ac, 4294967288
  %i.ae = or disjoint i64 %i.ad, 5
  %i.af = tail call ptr @palloc0(i64 noundef %i.ae) #16 ; 3 uses
  %i.ag = call fastcc ptr @NUM_cache(i32 noundef %i.z, ptr noundef %1, ptr noundef nonnull %i.i, ptr noundef %i.a) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load i32, ptr %i.ah, align 4            ; 3 uses
  %i.aj = and i32 %i.ai, 1024
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.numeric_to_char.escontext, i64 16, i1 false)
  %i.ak = call i32 @numeric_int4_safe(ptr noundef %i.e, ptr noundef nonnull %2) #16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = load i8, ptr %i.al, align 4, !range !4, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  %spec.store.select = select i1 %i.an, i32 2147483647, i32 %i.ak
  %i.ao = call fastcc ptr @int_to_roman(i32 noundef %spec.store.select)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.ap = and i32 %i.ai, 16384
  %.not70 = icmp eq i32 %i.ap, 0
  br i1 %.not70, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4            ; 3 uses
  %i.as = tail call ptr @numeric_out_sci(ptr noundef %i.e, i32 noundef %i.ar) #16 ; 7 uses
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(4) @.str.18) #17
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(9) @.str.19) #17
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(10) @.str.20) #17
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.az = load i32, ptr %1, align 4               ; 3 uses
  %i.ba = add i32 %i.az, 7
  %i.bb = add i32 %i.ba, %i.ar
  %i.bc = sext i32 %i.bb to i64
  %i.bd = tail call ptr @palloc(i64 noundef %i.bc) #16 ; 5 uses
  %i.be = add i32 %i.az, 6
  %i.bf = add i32 %i.be, %i.ar
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bd, i8 35, i64 %i.bg, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  store i8 0, ptr %i.bh, align 1
  store i8 32, ptr %i.bd, align 1
  %i.bi = sext i32 %i.az to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 46, ptr %i.bk, align 1
  br label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.bl = load i8, ptr %i.as, align 1
  %.not73 = icmp eq i8 %i.bl, 45
  br i1 %.not73, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #17
  %i.bn = add i64 %i.bm, 2
  %i.bo = tail call ptr @palloc(i64 noundef %i.bn) #16 ; 3 uses
  store i8 32, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.as) #16 ; 0 uses
  br label %bb.y

bb.p:                                             ; preds = %bb.i
  %i.br = and i32 %i.ai, 2048
  %.not71 = icmp eq i32 %i.br, 0
  br i1 %.not71, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_0
