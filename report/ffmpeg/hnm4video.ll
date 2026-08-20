inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hnm_decode_frame:bb.a
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tu
  store i8 %i.tr, ptr %i.tv, align 1, !tbaa !33
  %i.tw = load ptr, ptr %i.ot, align 8, !tbaa !43
  %i.tx = getelementptr i8, ptr %i.tw, i64 %indvars.iv256.i
  %i.ty = getelementptr i8, ptr %i.tx, i64 1
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !33
  %i.ua = load ptr, ptr %i.ou, align 8, !tbaa !42
  %i.ub = zext i32 %i.tt to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.ub
  store i8 %i.tz, ptr %i.uc, align 1, !tbaa !33
  %.4136.us.i = add i32 %.3135232.us.i, 2         ; 2 uses
  %indvars.iv.next257.i = add nsw i64 %indvars.iv256.i, %spec.select148.v.i
  %i.ud = add nsw i32 %.0128233.us.i, -1
  %i.ue = icmp samesign ugt i32 %.0128233.us.i, 1
  br i1 %i.ue, label %.preheader229.split.us.i, label %.loopexit228.i, !llvm.loop !65

.preheader227.i:                                  ; preds = %bb.bs
  br i1 %.not145.i, label %.preheader227.split.us.i, label %.preheader227.split.i

.preheader227.split.us.i:                         ; preds = %.preheader227.i, %.preheader227.split.us.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %.preheader227.split.us.i ], [ %i.to, %.preheader227.i ] ; 3 uses
  %.1129236.us.i = phi i32 [ %i.ur, %.preheader227.split.us.i ], [ %i.pa, %.preheader227.i ] ; 2 uses
  %.5137235.us.i = phi i32 [ %.6.us.i, %.preheader227.split.us.i ], [ %.0132245.i, %.preheader227.i ] ; 3 uses
  %i.uf = load ptr, ptr %i.ou, align 8, !tbaa !42 ; 2 uses
  %i.ug = getelementptr inbounds i8, ptr %i.uf, i64 %indvars.iv262.i
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !33
  %i.ui = add i32 %.5137235.us.i, 1
  %i.uj = zext i32 %.5137235.us.i to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.uj
  store i8 %i.uh, ptr %i.uk, align 1, !tbaa !33
  %i.ul = load ptr, ptr %i.ou, align 8, !tbaa !42 ; 2 uses
  %i.um = getelementptr i8, ptr %i.ul, i64 %indvars.iv262.i
  %i.un = getelementptr i8, ptr %i.um, i64 1
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !33
  %i.up = zext i32 %i.ui to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.up
  store i8 %i.uo, ptr %i.uq, align 1, !tbaa !33
  %.6.us.i = add i32 %.5137235.us.i, 2            ; 2 uses
  %indvars.iv.next263.i = add nsw i64 %indvars.iv262.i, %spec.select148.v.i
  %i.ur = add nsw i32 %.1129236.us.i, -1
  %i.us = icmp samesign ugt i32 %.1129236.us.i, 1
  br i1 %i.us, label %.preheader227.split.us.i, label %.loopexit228.i, !llvm.loop !66

.preheader229.split.i:                            ; preds = %.preheader229.i, %.preheader229.split.i
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i105, %.preheader229.split.i ], [ %i.to, %.preheader229.i ] ; 3 uses
  %.0128233.i = phi i32 [ %i.vl, %.preheader229.split.i ], [ %i.pa, %.preheader229.i ] ; 2 uses
  %.3135232.i = phi i32 [ %.4136.i, %.preheader229.split.i ], [ %.0132245.i, %.preheader229.i ] ; 3 uses
  %i.ut = load ptr, ptr %i.ot, align 8, !tbaa !43
  %i.uu = load i32, ptr %i.or, align 4, !tbaa !37
  %i.uv = shl nsw i32 %i.uu, 1
  %i.uw = sext i32 %i.uv to i64
  %i.ux = sub nsw i64 %indvars.iv.i104, %i.uw
  %i.uy = getelementptr i8, ptr %i.ut, i64 %i.ux
  %i.uz = getelementptr i8, ptr %i.uy, i64 1
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !33
  %i.vb = load ptr, ptr %i.ou, align 8, !tbaa !42
  %i.vc = add i32 %.3135232.i, 1
  %i.vd = zext i32 %.3135232.i to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.vd
  store i8 %i.va, ptr %i.ve, align 1, !tbaa !33
  %i.vf = load ptr, ptr %i.ot, align 8, !tbaa !43
  %i.vg = getelementptr inbounds i8, ptr %i.vf, i64 %indvars.iv.i104
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !33
  %i.vi = load ptr, ptr %i.ou, align 8, !tbaa !42
  %i.vj = zext i32 %i.vc to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.vj
  store i8 %i.vh, ptr %i.vk, align 1, !tbaa !33
  %.4136.i = add i32 %.3135232.i, 2               ; 2 uses
  %indvars.iv.next.i105 = add nsw i64 %indvars.iv.i104, %spec.select148.v.i
  %i.vl = add nsw i32 %.0128233.i, -1
  %i.vm = icmp samesign ugt i32 %.0128233.i, 1
  br i1 %i.vm, label %.preheader229.split.i, label %.loopexit228.i, !llvm.loop !65

.preheader227.split.i:                            ; preds = %.preheader227.i, %.preheader227.split.i
  %indvars.iv259.i = phi i64 [ %indvars.iv.next260.i, %.preheader227.split.i ], [ %i.to, %.preheader227.i ] ; 3 uses
  %.1129236.i = phi i32 [ %i.wd, %.preheader227.split.i ], [ %i.pa, %.preheader227.i ] ; 2 uses
  %.5137235.i = phi i32 [ %.6.i108, %.preheader227.split.i ], [ %.0132245.i, %.preheader227.i ] ; 3 uses
  %i.vn = load ptr, ptr %i.ou, align 8, !tbaa !42 ; 2 uses
  %i.vo = load i32, ptr %i.or, align 4, !tbaa !37
  %i.vp = shl nsw i32 %i.vo, 1
  %i.vq = sext i32 %i.vp to i64
  %i.vr = sub nsw i64 %indvars.iv259.i, %i.vq
  %i.vs = getelementptr i8, ptr %i.vn, i64 %i.vr
  %i.vt = getelementptr i8, ptr %i.vs, i64 1
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !33
  %i.vv = add i32 %.5137235.i, 1
  %i.vw = zext i32 %.5137235.i to i64
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vw
  store i8 %i.vu, ptr %i.vx, align 1, !tbaa !33
  %i.vy = load ptr, ptr %i.ou, align 8, !tbaa !42 ; 2 uses
  %i.vz = getelementptr inbounds i8, ptr %i.vy, i64 %indvars.iv259.i
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !33
  %i.wb = zext i32 %i.vv to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.wb
  store i8 %i.wa, ptr %i.wc, align 1, !tbaa !33
  %.6.i108 = add i32 %.5137235.i, 2               ; 2 uses
  %indvars.iv.next260.i = add nsw i64 %indvars.iv259.i, %spec.select148.v.i
  %i.wd = add nsw i32 %.1129236.i, -1
  %i.we = icmp samesign ugt i32 %.1129236.i, 1
  br i1 %i.we, label %.preheader227.split.i, label %.loopexit228.i, !llvm.loop !66

.loopexit228.i:                                   ; preds = %.preheader229.split.i, %.preheader229.split.us.i, %.preheader227.split.i, %.preheader227.split.us.i
  %.7.i = phi i32 [ %.4136.us.i, %.preheader229.split.us.i ], [ %.6.i108, %.preheader227.split.i ], [ %.6.us.i, %.preheader227.split.us.i ], [ %.4136.i, %.preheader229.split.i ] ; 2 uses
  %i.wf = and i8 %.0.i160221.shrunk.i, 1
  %.not146.i = icmp eq i8 %i.wf, 0
  br i1 %.not146.i, label %.loopexit.i106, label %bb.bt

bb.bt:                                            ; preds = %.loopexit228.i
  %i.wg = sub i32 %.7.i, %i.tm
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %bb.bt
  %.2130240.i = phi i32 [ %i.pa, %bb.bt ], [ %i.wr, %bb.bu ] ; 2 uses
  %.8239.i = phi i32 [ %i.wg, %bb.bt ], [ %i.ws, %bb.bu ] ; 3 uses
  %i.wh = load ptr, ptr %i.ou, align 8, !tbaa !42 ; 2 uses
  %i.wi = zext i32 %.8239.i to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wi ; 2 uses
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !33
  %i.wl = add i32 %.8239.i, 1
  %i.wm = zext i32 %i.wl to i64                   ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !33
  store i8 %i.wo, ptr %i.wj, align 1, !tbaa !33
  %i.wp = load ptr, ptr %i.ou, align 8, !tbaa !42
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.wm
  store i8 %i.wk, ptr %i.wq, align 1, !tbaa !33
  %i.wr = add nsw i32 %.2130240.i, -1
  %i.ws = add i32 %.8239.i, 2                     ; 2 uses
  %i.wt = icmp samesign ugt i32 %.2130240.i, 1
  br i1 %i.wt, label %bb.bu, label %.loopexit.i106, !llvm.loop !67

.loopexit.i106:                                   ; preds = %bb.bu, %.loopexit228.i, %bb.bn
  %.sroa.0.2.i107 = phi ptr [ %.sroa.0.1.i113, %bb.bn ], [ %.sroa.0.8.i, %.loopexit228.i ], [ %.sroa.0.8.i, %bb.bu ] ; 2 uses
  %.9.i = phi i32 [ %.2134.i, %bb.bn ], [ %.7.i, %.loopexit228.i ], [ %i.ws, %bb.bu ]
  %i.wu = ptrtoint ptr %.sroa.0.2.i107 to i64     ; 2 uses
  %i.wv = sub i64 %i.wu, %i.op
  %i.ww = trunc i64 %i.wv to i32
  %i.wx = icmp ugt i32 %i.jx, %i.ww
  br i1 %i.wx, label %bb.be, label %.loopexit.loopexit, !llvm.loop !68

decode_interframe_v4.exit:                        ; preds = %bytestream2_get_byte.exit156.thread.i, %bytestream2_get_byte.exit.i109, %bytestream2_get_byte.exit.thread.i, %bb.bn, %bb.bp, %bb.bq, %.thread223.i, %.thread224.i, %.thread225.i, %bb.br
  %.str.10.sink.i = phi ptr [ @.str.10, %.thread225.i ], [ @.str.9, %.thread223.i ], [ @.str.10, %bb.bq ], [ @.str.10, %bb.bp ], [ @.str.11, %bb.bn ], [ @.str.11, %bytestream2_get_byte.exit.i109 ], [ @.str.11, %bytestream2_get_byte.exit156.thread.i ], [ @.str.11, %bytestream2_get_byte.exit.thread.i ], [ @.str.9, %.thread224.i ], [ @.str.10, %bb.br ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull %.str.10.sink.i) #7
  br label %.critedge

.loopexit.loopexit:                               ; preds = %bytestream2_get_byte.exit156.i, %.loopexit.i106
  %.val72.pre = load ptr, ptr %i.a, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bytestream2_init.exit.i98
  %.val72 = phi ptr [ %.val72.pre, %.loopexit.loopexit ], [ %i.jy, %bytestream2_init.exit.i98 ] ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.val72, i64 4
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !37 ; 8 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.val72, i64 8 ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !38
  %.not.i118 = icmp eq i32 %i.xb, 0
  br i1 %.not.i118, label %postprocess_current_frame.exit, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %.loopexit
  %i.xc = getelementptr inbounds nuw i8, ptr %.val72, i64 48
  %i.xd = getelementptr inbounds nuw i8, ptr %.val72, i64 16
  %.not7.i = icmp eq i32 %i.wz, 0
  br i1 %.not7.i, label %postprocess_current_frame.exit, label %.lr.ph.preheader.i119

.lr.ph.preheader.i119:                            ; preds = %.lr.ph5.i
  %wide.trip.count.i = zext i32 %i.wz to i64      ; 9 uses
  %i.xe = shl i32 %i.wz, 1
  %i.xf = shl nuw nsw i64 %wide.trip.count.i, 1
  %min.iters.check = icmp ult i32 %i.wz, 9
  %min.iters.check206 = icmp ult i32 %i.wz, 17
  %i.xg = and i64 %wide.trip.count.i, 15          ; 2 uses
  %i.xh = icmp eq i64 %i.xg, 0
  %i.xi = select i1 %i.xh, i64 16, i64 %i.xg      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.xi  ; 4 uses
  %i.xj = shl nsw i64 %n.vec, 1
  %min.epilog.iters.check = icmp samesign ult i64 %i.xi, 9
  %i.xk = and i64 %wide.trip.count.i, 7           ; 2 uses
  %i.xl = icmp eq i64 %i.xk, 0
  %i.xm = select i1 %i.xl, i64 8, i64 %i.xk
  %n.vec222 = sub nsw i64 %wide.trip.count.i, %i.xm ; 3 uses
  %i.xn = shl nsw i64 %n.vec222, 1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i123, %.lr.ph.preheader.i119
  %indvars.iv9.i = phi i64 [ 0, %.lr.ph.preheader.i119 ], [ %indvars.iv.next10.i, %._crit_edge.i123 ] ; 5 uses
  %i.xo = load ptr, ptr %i.xc, align 8, !tbaa !41 ; 2 uses
  %i.xp = trunc nuw i64 %indvars.iv9.i to i32     ; 3 uses
  %i.xq = mul i32 %i.wz, %i.xp
  %i.xr = zext i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xr ; 8 uses
  %i.xt = load ptr, ptr %i.xd, align 8, !tbaa !42 ; 3 uses
  %i.xu = and i32 %i.xp, 1
  %i.xv = and i32 %i.xp, -2
  %i.xw = mul i32 %i.xv, %i.wz
  %i.xx = or disjoint i32 %i.xw, %i.xu
  %i.xy = zext i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xy ; 28 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ya = trunc i64 %indvars.iv9.i to i32
  %i.yb = lshr i32 %i.ya, 1
  %i.yc = mul i32 %i.xe, %i.yb
  %4 = trunc i64 %indvars.iv9.i to i32
  %5 = and i32 %4, 1
  %6 = or disjoint i32 %i.yc, %5
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.yd = trunc i64 %indvars.iv9.i to i32
  %i.ye = mul i32 %i.wz, %i.yd
  %i.yf = zext i32 %i.ye to i64
  %scevgep = getelementptr i8, ptr %i.xo, i64 %wide.trip.count.i
  %scevgep202 = getelementptr i8, ptr %scevgep, i64 %i.yf
  %scevgep203 = getelementptr i8, ptr %i.xt, i64 %7
  %i.yg = getelementptr i8, ptr %i.xt, i64 %i.xf
  %scevgep204 = getelementptr i8, ptr %i.yg, i64 -1
  %scevgep205 = getelementptr i8, ptr %scevgep204, i64 %7
  %bound0 = icmp ult ptr %i.xs, %scevgep205
  %bound1 = icmp ult ptr %scevgep203, %scevgep202
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check206, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yh = getelementptr i8, ptr %i.xz, i64 %i.xj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.yi = shl i64 %index, 1                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.xz, i64 %i.yi
  %i.yj = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep207 = getelementptr i8, ptr %i.yj, i64 2
  %i.yk = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep208 = getelementptr i8, ptr %i.yk, i64 4
  %i.yl = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep209 = getelementptr i8, ptr %i.yl, i64 6
  %i.ym = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep210 = getelementptr i8, ptr %i.ym, i64 8
  %i.yn = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep211 = getelementptr i8, ptr %i.yn, i64 10
  %i.yo = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep212 = getelementptr i8, ptr %i.yo, i64 12
  %i.yp = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep213 = getelementptr i8, ptr %i.yp, i64 14
  %i.yq = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep214 = getelementptr i8, ptr %i.yq, i64 16
  %i.yr = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep215 = getelementptr i8, ptr %i.yr, i64 18
  %i.ys = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep216 = getelementptr i8, ptr %i.ys, i64 20
  %i.yt = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep217 = getelementptr i8, ptr %i.yt, i64 22
  %i.yu = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep218 = getelementptr i8, ptr %i.yu, i64 24
  %i.yv = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep219 = getelementptr i8, ptr %i.yv, i64 26
  %i.yw = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep220 = getelementptr i8, ptr %i.yw, i64 28
  %i.yx = getelementptr i8, ptr %i.xz, i64 %i.yi
  %next.gep221 = getelementptr i8, ptr %i.yx, i64 30
  %i.yy = load i8, ptr %next.gep, align 1, !tbaa !33, !alias.scope !69
  %i.yz = load i8, ptr %next.gep207, align 1, !tbaa !33, !alias.scope !69
  %i.za = load i8, ptr %next.gep208, align 1, !tbaa !33, !alias.scope !69
  %i.zb = load i8, ptr %next.gep209, align 1, !tbaa !33, !alias.scope !69
  %i.zc = load i8, ptr %next.gep210, align 1, !tbaa !33, !alias.scope !69
  %i.zd = load i8, ptr %next.gep211, align 1, !tbaa !33, !alias.scope !69
  %i.ze = load i8, ptr %next.gep212, align 1, !tbaa !33, !alias.scope !69
  %i.zf = load i8, ptr %next.gep213, align 1, !tbaa !33, !alias.scope !69
  %i.zg = load i8, ptr %next.gep214, align 1, !tbaa !33, !alias.scope !69
  %i.zh = load i8, ptr %next.gep215, align 1, !tbaa !33, !alias.scope !69
  %i.zi = load i8, ptr %next.gep216, align 1, !tbaa !33, !alias.scope !69
  %i.zj = load i8, ptr %next.gep217, align 1, !tbaa !33, !alias.scope !69
  %i.zk = load i8, ptr %next.gep218, align 1, !tbaa !33, !alias.scope !69
  %i.zl = load i8, ptr %next.gep219, align 1, !tbaa !33, !alias.scope !69
  %i.zm = load i8, ptr %next.gep220, align 1, !tbaa !33, !alias.scope !69
  %i.zn = load i8, ptr %next.gep221, align 1, !tbaa !33, !alias.scope !69
  %i.zo = insertelement <16 x i8> poison, i8 %i.yy, i64 0
  %i.zp = insertelement <16 x i8> %i.zo, i8 %i.yz, i64 1
  %i.zq = insertelement <16 x i8> %i.zp, i8 %i.za, i64 2
  %i.zr = insertelement <16 x i8> %i.zq, i8 %i.zb, i64 3
  %i.zs = insertelement <16 x i8> %i.zr, i8 %i.zc, i64 4
  %i.zt = insertelement <16 x i8> %i.zs, i8 %i.zd, i64 5
  %i.zu = insertelement <16 x i8> %i.zt, i8 %i.ze, i64 6
  %i.zv = insertelement <16 x i8> %i.zu, i8 %i.zf, i64 7
  %i.zw = insertelement <16 x i8> %i.zv, i8 %i.zg, i64 8
  %i.zx = insertelement <16 x i8> %i.zw, i8 %i.zh, i64 9
  %i.zy = insertelement <16 x i8> %i.zx, i8 %i.zi, i64 10
  %i.zz = insertelement <16 x i8> %i.zy, i8 %i.zj, i64 11
  %i.aaa = insertelement <16 x i8> %i.zz, i8 %i.zk, i64 12
  %i.aab = insertelement <16 x i8> %i.aaa, i8 %i.zl, i64 13
  %i.aac = insertelement <16 x i8> %i.aab, i8 %i.zm, i64 14
  %i.aad = insertelement <16 x i8> %i.aac, i8 %i.zn, i64 15
  %i.aae = getelementptr inbounds nuw i8, ptr %i.xs, i64 %index
  store <16 x i8> %i.aad, ptr %i.aae, align 1, !tbaa !33, !alias.scope !72, !noalias !69
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aaf = icmp eq i64 %index.next, %n.vec
  br i1 %i.aaf, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !74

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.aag = getelementptr i8, ptr %i.xz, i64 %i.xn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next232, %vec.epilog.vector.body ] ; 3 uses
  %i.aah = shl i64 %index223, 1                   ; 8 uses
  %next.gep224 = getelementptr i8, ptr %i.xz, i64 %i.aah
  %i.aai = getelementptr i8, ptr %i.xz, i64 %i.aah
  %next.gep225 = getelementptr i8, ptr %i.aai, i64 2
  %i.aaj = getelementptr i8, ptr %i.xz, i64 %i.aah
  %next.gep226 = getelementptr i8, ptr %i.aaj, i64 4
  %i.aak = getelementptr i8, ptr %i.xz, i64 %i.aah
  %next.gep227 = getelementptr i8, ptr %i.aak, i64 6
  %i.aal = getelementptr i8, ptr %i.xz, i64 %i.aah
  %next.gep228 = getelementptr i8, ptr %i.aal, i64 8
  %i.aam = getelementptr i8, ptr %i.xz, i64 %i.aah
  %next.gep229 = getelementptr i8, ptr %i.aam, i64 10
  %i.aan = getelementptr i8, ptr %i.xz, i64 %i.aah
  %next.gep230 = getelementptr i8, ptr %i.aan, i64 12
  %i.aao = getelementptr i8, ptr %i.xz, i64 %i.aah
  %next.gep231 = getelementptr i8, ptr %i.aao, i64 14
  %i.aap = load i8, ptr %next.gep224, align 1, !tbaa !33, !alias.scope !69
  %i.aaq = load i8, ptr %next.gep225, align 1, !tbaa !33, !alias.scope !69
  %i.aar = load i8, ptr %next.gep226, align 1, !tbaa !33, !alias.scope !69
  %i.aas = load i8, ptr %next.gep227, align 1, !tbaa !33, !alias.scope !69
  %i.aat = load i8, ptr %next.gep228, align 1, !tbaa !33, !alias.scope !69
  %i.aau = load i8, ptr %next.gep229, align 1, !tbaa !33, !alias.scope !69
  %i.aav = load i8, ptr %next.gep230, align 1, !tbaa !33, !alias.scope !69
  %i.aaw = load i8, ptr %next.gep231, align 1, !tbaa !33, !alias.scope !69
  %i.aax = insertelement <8 x i8> poison, i8 %i.aap, i64 0
  %i.aay = insertelement <8 x i8> %i.aax, i8 %i.aaq, i64 1
  %i.aaz = insertelement <8 x i8> %i.aay, i8 %i.aar, i64 2
  %i.aba = insertelement <8 x i8> %i.aaz, i8 %i.aas, i64 3
  %i.abb = insertelement <8 x i8> %i.aba, i8 %i.aat, i64 4
  %i.abc = insertelement <8 x i8> %i.abb, i8 %i.aau, i64 5
  %i.abd = insertelement <8 x i8> %i.abc, i8 %i.aav, i64 6
  %i.abe = insertelement <8 x i8> %i.abd, i8 %i.aaw, i64 7
  %i.abf = getelementptr inbounds nuw i8, ptr %i.xs, i64 %index223
  store <8 x i8> %i.abe, ptr %i.abf, align 1, !tbaa !33, !alias.scope !72, !noalias !69
  %index.next232 = add nuw i64 %index223, 8       ; 2 uses
  %i.abg = icmp eq i64 %index.next232, %n.vec222
  br i1 %i.abg, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !78

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i121.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec222, %vec.epilog.vector.body ] ; 4 uses
  %.02.i.ph = phi ptr [ %i.xz, %iter.check ], [ %i.xz, %vector.memcheck ], [ %i.yh, %vec.epilog.iter.check ], [ %i.aag, %vec.epilog.vector.body ] ; 2 uses
  %i.abh = sub nsw i64 %wide.trip.count.i, %indvars.iv.i121.ph
  %xtraiter = and i64 %i.abh, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i121.prol = phi i64 [ %indvars.iv.next.i122.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i121.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.02.i.prol = phi ptr [ %i.abk, %vec.epilog.scalar.ph.prol ], [ %.02.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.abi = load i8, ptr %.02.i.prol, align 1, !tbaa !33
  %i.abj = getelementptr inbounds nuw i8, ptr %i.xs, i64 %indvars.iv.i121.prol
  store i8 %i.abi, ptr %i.abj, align 1, !tbaa !33
  %i.abk = getelementptr inbounds nuw i8, ptr %.02.i.prol, i64 2 ; 2 uses
  %indvars.iv.next.i122.prol = add nuw nsw i64 %indvars.iv.i121.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !79

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i121.unr = phi i64 [ %indvars.iv.i121.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i122.prol, %vec.epilog.scalar.ph.prol ]
  %.02.i.unr = phi ptr [ %.02.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.abk, %vec.epilog.scalar.ph.prol ]
  %i.abl = sub nsw i64 %indvars.iv.i121.ph, %wide.trip.count.i
  %i.abm = icmp ugt i64 %i.abl, -4
  br i1 %i.abm, label %._crit_edge.i123, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i122.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i121.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.02.i = phi ptr [ %i.acb, %vec.epilog.scalar.ph ], [ %.02.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.abn = load i8, ptr %.02.i, align 1, !tbaa !33
  %i.abo = getelementptr inbounds nuw i8, ptr %i.xs, i64 %indvars.iv.i121
  store i8 %i.abn, ptr %i.abo, align 1, !tbaa !33
  %i.abp = getelementptr inbounds nuw i8, ptr %.02.i, i64 2
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !33
  %i.abr = getelementptr inbounds nuw i8, ptr %i.xs, i64 %indvars.iv.i121
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 1
  store i8 %i.abq, ptr %i.abs, align 1, !tbaa !33
  %i.abt = getelementptr inbounds nuw i8, ptr %.02.i, i64 4
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !33
  %i.abv = getelementptr inbounds nuw i8, ptr %i.xs, i64 %indvars.iv.i121
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 2
  store i8 %i.abu, ptr %i.abw, align 1, !tbaa !33
  %i.abx = getelementptr inbounds nuw i8, ptr %.02.i, i64 6
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !33
  %i.abz = getelementptr inbounds nuw i8, ptr %i.xs, i64 %indvars.iv.i121
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 3
  store i8 %i.aby, ptr %i.aca, align 1, !tbaa !33
  %i.acb = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %indvars.iv.next.i122.3 = add nuw nsw i64 %indvars.iv.i121, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i122.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i123, label %vec.epilog.scalar.ph, !llvm.loop !81

._crit_edge.i123:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol.loopexit
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1 ; 2 uses
  %i.acc = load i32, ptr %i.xa, align 8, !tbaa !38
  %i.acd = zext i32 %i.acc to i64
  %i.ace = icmp samesign ult i64 %indvars.iv.next10.i, %i.acd
  br i1 %i.ace, label %iter.check, label %postprocess_current_frame.exit, !llvm.loop !82

postprocess_current_frame.exit:                   ; preds = %._crit_edge.i123, %.lr.ph5.i, %.loopexit, %decode_interframe_v4a.exit
  %.val74 = load ptr, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.val74, i64 8 ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !38
  %i.ach = icmp sgt i32 %i.acg, 0
  br i1 %i.ach, label %.lr.ph.i125, label %copy_processed_frame.exit130

.lr.ph.i125:                                      ; preds = %postprocess_current_frame.exit
  %i.aci = load ptr, ptr %1, align 8, !tbaa !53
  %i.acj = getelementptr inbounds nuw i8, ptr %.val74, i64 48
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !41
  %i.acl = getelementptr inbounds nuw i8, ptr %.val74, i64 4 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre.i126 = load i32, ptr %i.acl, align 4, !tbaa !37
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i125
  %i.acn = phi i32 [ %.pre.i126, %.lr.ph.i125 ], [ %i.acp, %bb.bv ]
  %.03.i127 = phi i32 [ 0, %.lr.ph.i125 ], [ %i.acv, %bb.bv ]
  %.0122.i128 = phi ptr [ %i.aci, %.lr.ph.i125 ], [ %i.acu, %bb.bv ] ; 2 uses
  %.0131.i129 = phi ptr [ %i.ack, %.lr.ph.i125 ], [ %i.acr, %bb.bv ] ; 2 uses
  %i.aco = sext i32 %i.acn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0122.i128, ptr align 1 %.0131.i129, i64 %i.aco, i1 false)
  %i.acp = load i32, ptr %i.acl, align 4, !tbaa !37 ; 2 uses
  %i.acq = sext i32 %i.acp to i64
  %i.acr = getelementptr inbounds i8, ptr %.0131.i129, i64 %i.acq
  %i.acs = load i32, ptr %i.acm, align 8, !tbaa !49
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds i8, ptr %.0122.i128, i64 %i.act
  %i.acv = add nuw nsw i32 %.03.i127, 1           ; 2 uses
  %i.acw = load i32, ptr %i.acf, align 8, !tbaa !38
  %i.acx = icmp slt i32 %i.acv, %i.acw
  br i1 %i.acx, label %bb.bv, label %copy_processed_frame.exit130, !llvm.loop !54

copy_processed_frame.exit130:                     ; preds = %bb.bv, %postprocess_current_frame.exit
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 2, ptr %i.acy, align 8, !tbaa !55
  %i.acz = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !60
  %i.adb = and i32 %i.ada, -3
  store i32 %i.adb, ptr %i.acz, align 4, !tbaa !60
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !53
  %i.ade = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.add, ptr noundef nonnull align 8 dereferenceable(1024) %i.ade, i64 1024, i1 false)
  store i32 1, ptr %2, align 4, !tbaa !49
  %i.adf = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.adg = load <2 x ptr>, ptr %i.adf, align 8, !tbaa !53
  %i.adh = shufflevector <2 x ptr> %i.adg, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.adh, ptr %i.adf, align 8, !tbaa !53
  br label %hnm_update_palette.exit

bb.bw:                                            ; preds = %bb.c
  %i.adi = zext i16 %i.i to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.adi) #7
  br label %.critedge

hnm_update_palette.exit:                          ; preds = %.loopexit.us.i, %bytestream2_get_byte.exit.us.i, %bytestream2_get_byte.exit.i, %.loopexit.i, %bytestream2_init.exit.thread.i, %bytestream2_init.exit.i, %copy_processed_frame.exit, %copy_processed_frame.exit130
  %i.adj = load i32, ptr %i.c, align 8, !tbaa !44
  br label %.critedge

.critedge:                                        ; preds = %decode_interframe_v4.exit, %bb.al, %bb.m, %hnm_update_palette.exit, %bb.bw, %bb.l, %bb.b
  %.1 = phi i32 [ -1094995529, %bb.b ], [ %i.adj, %hnm_update_palette.exit ], [ -1094995529, %bb.l ], [ -1094995529, %bb.bw ], [ %i.dm, %bb.m ], [ -1094995529, %decode_interframe_v4.exit ], [ %i.jq, %bb.al ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @hnm_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @av_freep(ptr noundef nonnull %i.e) #7
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @postprocess_current_frame(ptr nofree readonly captures(none) %.32.val) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.32.val, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.32.val, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge6.split, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.32.val, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %.32.val, i64 16
  %.not7 = icmp eq i32 %i.b, 0
  br i1 %.not7, label %._crit_edge6.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph5
  %wide.trip.count = zext i32 %i.b to i64         ; 9 uses
  %i.g = shl i32 %i.b, 1
  %i.h = shl nuw nsw i64 %wide.trip.count, 1
  %min.iters.check = icmp ult i32 %i.b, 9
  %min.iters.check16 = icmp ult i32 %i.b, 17
  %i.i = and i64 %wide.trip.count, 15             ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 16, i64 %i.i         ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.k     ; 4 uses
  %i.l = shl nsw i64 %n.vec, 1
  %min.epilog.iters.check = icmp samesign ult i64 %i.k, 9
  %i.m = and i64 %wide.trip.count, 7              ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m
  %n.vec32 = sub nsw i64 %wide.trip.count, %i.o   ; 3 uses
  %i.p = shl nsw i64 %n.vec32, 1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv9 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next10, %._crit_edge ] ; 5 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.r = trunc nuw i64 %indvars.iv9 to i32        ; 3 uses
  %i.s = mul i32 %i.b, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !42   ; 3 uses
  %i.w = and i32 %i.r, 1
  %i.x = and i32 %i.r, -2
  %i.y = mul i32 %i.x, %i.b
  %i.z = or disjoint i32 %i.y, %i.w
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa ; 28 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = trunc i64 %indvars.iv9 to i32
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = mul i32 %i.g, %i.ad
  %0 = trunc i64 %indvars.iv9 to i32
  %1 = and i32 %0, 1
  %2 = or disjoint i32 %i.ae, %1
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.af = trunc i64 %indvars.iv9 to i32
  %i.ag = mul i32 %i.b, %i.af
  %i.ah = zext i32 %i.ag to i64
  %scevgep = getelementptr i8, ptr %i.q, i64 %wide.trip.count
  %scevgep12 = getelementptr i8, ptr %scevgep, i64 %i.ah
  %scevgep13 = getelementptr i8, ptr %i.v, i64 %3
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.h
  %scevgep14 = getelementptr i8, ptr %i.ai, i64 -1
  %scevgep15 = getelementptr i8, ptr %scevgep14, i64 %3
  %bound0 = icmp ult ptr %i.u, %scevgep15
  %bound1 = icmp ult ptr %scevgep13, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = getelementptr i8, ptr %i.ab, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 1                       ; 16 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ak
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep17 = getelementptr i8, ptr %i.al, i64 2
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep18 = getelementptr i8, ptr %i.am, i64 4
  %i.an = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep19 = getelementptr i8, ptr %i.an, i64 6
  %i.ao = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep20 = getelementptr i8, ptr %i.ao, i64 8
  %i.ap = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep21 = getelementptr i8, ptr %i.ap, i64 10
  %i.aq = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep22 = getelementptr i8, ptr %i.aq, i64 12
  %i.ar = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep23 = getelementptr i8, ptr %i.ar, i64 14
  %i.as = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep24 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep25 = getelementptr i8, ptr %i.at, i64 18
  %i.au = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep26 = getelementptr i8, ptr %i.au, i64 20
  %i.av = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep27 = getelementptr i8, ptr %i.av, i64 22
  %i.aw = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep28 = getelementptr i8, ptr %i.aw, i64 24
  %i.ax = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep29 = getelementptr i8, ptr %i.ax, i64 26
  %i.ay = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep30 = getelementptr i8, ptr %i.ay, i64 28
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ak
  %next.gep31 = getelementptr i8, ptr %i.az, i64 30
  %i.ba = load i8, ptr %next.gep, align 1, !tbaa !33, !alias.scope !83
  %i.bb = load i8, ptr %next.gep17, align 1, !tbaa !33, !alias.scope !83
  %i.bc = load i8, ptr %next.gep18, align 1, !tbaa !33, !alias.scope !83
  %i.bd = load i8, ptr %next.gep19, align 1, !tbaa !33, !alias.scope !83
  %i.be = load i8, ptr %next.gep20, align 1, !tbaa !33, !alias.scope !83
  %i.bf = load i8, ptr %next.gep21, align 1, !tbaa !33, !alias.scope !83
  %i.bg = load i8, ptr %next.gep22, align 1, !tbaa !33, !alias.scope !83
  %i.bh = load i8, ptr %next.gep23, align 1, !tbaa !33, !alias.scope !83
  %i.bi = load i8, ptr %next.gep24, align 1, !tbaa !33, !alias.scope !83
  %i.bj = load i8, ptr %next.gep25, align 1, !tbaa !33, !alias.scope !83
  %i.bk = load i8, ptr %next.gep26, align 1, !tbaa !33, !alias.scope !83
  %i.bl = load i8, ptr %next.gep27, align 1, !tbaa !33, !alias.scope !83
  %i.bm = load i8, ptr %next.gep28, align 1, !tbaa !33, !alias.scope !83
  %i.bn = load i8, ptr %next.gep29, align 1, !tbaa !33, !alias.scope !83
  %i.bo = load i8, ptr %next.gep30, align 1, !tbaa !33, !alias.scope !83
  %i.bp = load i8, ptr %next.gep31, align 1, !tbaa !33, !alias.scope !83
  %i.bq = insertelement <16 x i8> poison, i8 %i.ba, i64 0
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 1
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 2
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 3
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 4
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 5
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 6
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 7
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 8
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 9
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 10
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 11
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 12
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 13
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 14
  %i.cf = insertelement <16 x i8> %i.ce, i8 %i.bp, i64 15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %index
  store <16 x i8> %i.cf, ptr %i.cg, align 1, !tbaa !33, !alias.scope !86, !noalias !83
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !88

vec.epilog.iter.check:                            ; preds = %vector.body
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ci = getelementptr i8, ptr %i.ab, i64 %i.p
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 3 uses
  %i.cj = shl i64 %index33, 1                     ; 8 uses
  %next.gep34 = getelementptr i8, ptr %i.ab, i64 %i.cj
  %i.ck = getelementptr i8, ptr %i.ab, i64 %i.cj
  %next.gep35 = getelementptr i8, ptr %i.ck, i64 2
  %i.cl = getelementptr i8, ptr %i.ab, i64 %i.cj
  %next.gep36 = getelementptr i8, ptr %i.cl, i64 4
  %i.cm = getelementptr i8, ptr %i.ab, i64 %i.cj
  %next.gep37 = getelementptr i8, ptr %i.cm, i64 6
  %i.cn = getelementptr i8, ptr %i.ab, i64 %i.cj
  %next.gep38 = getelementptr i8, ptr %i.cn, i64 8
  %i.co = getelementptr i8, ptr %i.ab, i64 %i.cj
  %next.gep39 = getelementptr i8, ptr %i.co, i64 10
  %i.cp = getelementptr i8, ptr %i.ab, i64 %i.cj
  %next.gep40 = getelementptr i8, ptr %i.cp, i64 12
  %i.cq = getelementptr i8, ptr %i.ab, i64 %i.cj
  %next.gep41 = getelementptr i8, ptr %i.cq, i64 14
  %i.cr = load i8, ptr %next.gep34, align 1, !tbaa !33, !alias.scope !83
  %i.cs = load i8, ptr %next.gep35, align 1, !tbaa !33, !alias.scope !83
  %i.ct = load i8, ptr %next.gep36, align 1, !tbaa !33, !alias.scope !83
  %i.cu = load i8, ptr %next.gep37, align 1, !tbaa !33, !alias.scope !83
  %i.cv = load i8, ptr %next.gep38, align 1, !tbaa !33, !alias.scope !83
  %i.cw = load i8, ptr %next.gep39, align 1, !tbaa !33, !alias.scope !83
  %i.cx = load i8, ptr %next.gep40, align 1, !tbaa !33, !alias.scope !83
  %i.cy = load i8, ptr %next.gep41, align 1, !tbaa !33, !alias.scope !83
  %i.cz = insertelement <8 x i8> poison, i8 %i.cr, i64 0
  %i.da = insertelement <8 x i8> %i.cz, i8 %i.cs, i64 1
  %i.db = insertelement <8 x i8> %i.da, i8 %i.ct, i64 2
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.cu, i64 3
  %i.dd = insertelement <8 x i8> %i.dc, i8 %i.cv, i64 4
  %i.de = insertelement <8 x i8> %i.dd, i8 %i.cw, i64 5
  %i.df = insertelement <8 x i8> %i.de, i8 %i.cx, i64 6
  %i.dg = insertelement <8 x i8> %i.df, i8 %i.cy, i64 7
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 %index33
  store <8 x i8> %i.dg, ptr %i.dh, align 1, !tbaa !33, !alias.scope !86, !noalias !83
  %index.next42 = add nuw i64 %index33, 8         ; 2 uses
  %i.di = icmp eq i64 %index.next42, %n.vec32
  br i1 %i.di, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.vector.body ] ; 4 uses
  %.02.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ab, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ci, %vec.epilog.vector.body ] ; 2 uses
  %i.dj = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.dj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.02.prol = phi ptr [ %i.dm, %vec.epilog.scalar.ph.prol ], [ %.02.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dk = load i8, ptr %.02.prol, align 1, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.prol
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %.02.prol, i64 2 ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !90

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.02.unr = phi ptr [ %.02.ph, %vec.epilog.scalar.ph.preheader ], [ %i.dm, %vec.epilog.scalar.ph.prol ]
  %i.dn = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.02 = phi ptr [ %i.ed, %vec.epilog.scalar.ph ], [ %.02.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.dp = load i8, ptr %.02, align 1, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !33
  %i.dr = getelementptr inbounds nuw i8, ptr %.02, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !33
  %i.dt = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %.02, i64 4
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %.02, i64 6
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 3
  store i8 %i.ea, ptr %i.ec, align 1, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %.02, i64 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !91

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.prol.loopexit
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1 ; 2 uses
  %i.ee = load i32, ptr %i.c, align 8, !tbaa !38
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp samesign ult i64 %indvars.iv.next10, %i.ef
  br i1 %i.eg, label %iter.check, label %._crit_edge6.split, !llvm.loop !82

._crit_edge6.split:                               ; preds = %._crit_edge, %.lr.ph5, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

end_hunk_0
