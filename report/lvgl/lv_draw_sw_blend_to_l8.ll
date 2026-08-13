inline.NumInlined: 110
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@lv_draw_sw_blend_image_to_l8:bb.a
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.uk = load i8, ptr %i.uj, align 8, !tbaa !41  ; 7 uses
  %i.ul = load ptr, ptr %0, align 8, !tbaa !42    ; 7 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.un = load i32, ptr %i.um, align 8, !tbaa !43 ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !44 ; 7 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !45 ; 5 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !46 ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !47 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !48
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %bb.bv, label %.preheader162.i64

.preheader162.i64:                                ; preds = %bb.bu
  %i.uz = icmp sgt i32 %i.ui, 0
  br i1 %i.uz, label %.preheader161.lr.ph.i65, label %rgb565_image_blend.exit

.preheader161.lr.ph.i65:                          ; preds = %.preheader162.i64
  %i.va = icmp sgt i32 %i.ug, 0
  %i.vb = zext i8 %i.uk to i16                    ; 2 uses
  %i.vc = sext i32 %i.uv to i64
  %i.vd = zext i32 %i.un to i64
  %i.ve = zext i32 %i.ur to i64
  br i1 %i.va, label %.preheader161.preheader.i66, label %rgb565_image_blend.exit

.preheader161.preheader.i66:                      ; preds = %.preheader161.lr.ph.i65
  %wide.trip.count.i67 = zext nneg i32 %i.ug to i64
  br label %.preheader161.i68

bb.bv:                                            ; preds = %bb.bu
  %i.vf = icmp eq ptr %i.ut, null                 ; 2 uses
  %i.vg = zext i8 %i.uk to i16                    ; 6 uses
  %i.vh = icmp ugt i8 %i.uk, -4                   ; 2 uses
  %or.cond.i88 = select i1 %i.vf, i1 %i.vh, i1 false
  br i1 %or.cond.i88, label %.preheader.i114, label %bb.bx

.preheader.i114:                                  ; preds = %bb.bv
  %i.vi = icmp sgt i32 %i.ui, 0
  br i1 %i.vi, label %.lr.ph.i, label %rgb565_image_blend.exit

.lr.ph.i:                                         ; preds = %.preheader.i114
  %i.vj = sext i32 %i.ug to i64
  %i.vk = zext i32 %i.un to i64
  %i.vl = zext i32 %i.ur to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.lr.ph.i
  %.0193.i = phi ptr [ %i.ul, %.lr.ph.i ], [ %i.vn, %bb.bw ] ; 2 uses
  %.0121192.i = phi ptr [ %i.up, %.lr.ph.i ], [ %i.vo, %bb.bw ] ; 2 uses
  %.0130191.i = phi i32 [ 0, %.lr.ph.i ], [ %i.vp, %bb.bw ]
  %i.vm = tail call ptr @lv_memcpy(ptr noundef %.0193.i, ptr noundef %.0121192.i, i64 noundef %i.vj) #6 ; 0 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.0193.i, i64 %i.vk
  %i.vo = getelementptr inbounds nuw i8, ptr %.0121192.i, i64 %i.vl
  %i.vp = add nuw nsw i32 %.0130191.i, 1          ; 2 uses
  %exitcond228.not.i115 = icmp eq i32 %i.vp, %i.ui
  br i1 %exitcond228.not.i115, label %rgb565_image_blend.exit, label %bb.bw, !llvm.loop !83

bb.bx:                                            ; preds = %bb.bv
  %i.vq = icmp ult i8 %i.uk, -3                   ; 2 uses
  %or.cond5.i89 = select i1 %i.vf, i1 %i.vq, i1 false
  br i1 %or.cond5.i89, label %.preheader153.i, label %bb.by

.preheader153.i:                                  ; preds = %bb.bx
  %i.vr = icmp sgt i32 %i.ui, 0
  br i1 %i.vr, label %.preheader152.lr.ph.i, label %rgb565_image_blend.exit

.preheader152.lr.ph.i:                            ; preds = %.preheader153.i
  %i.vs = icmp slt i32 %i.ug, 1
  %i.vt = icmp eq i8 %i.uk, 0
  %i.vu = xor i8 %i.uk, -1
  %i.vv = zext i8 %i.vu to i16                    ; 5 uses
  %i.vw = zext i32 %i.un to i64                   ; 2 uses
  %i.vx = zext i32 %i.ur to i64                   ; 2 uses
  %brmerge.i = select i1 %i.vs, i1 true, i1 %i.vt
  br i1 %brmerge.i, label %rgb565_image_blend.exit, label %.preheader152.preheader.i

.preheader152.preheader.i:                        ; preds = %.preheader152.lr.ph.i
  %wide.trip.count225.i108 = zext nneg i32 %i.ug to i64 ; 10 uses
  %i.vy = add nsw i32 %i.ui, -1
  %i.vz = zext i32 %i.vy to i64                   ; 2 uses
  %i.wa = mul nuw i64 %i.vw, %i.vz
  %i.wb = getelementptr i8, ptr %i.ul, i64 %i.wa
  %scevgep = getelementptr i8, ptr %i.wb, i64 %wide.trip.count225.i108
  %i.wc = mul nuw i64 %i.vx, %i.vz
  %i.wd = getelementptr i8, ptr %i.up, i64 %i.wc
  %scevgep450 = getelementptr i8, ptr %i.wd, i64 %wide.trip.count225.i108
  %min.iters.check = icmp ult i32 %i.ug, 4
  %bound0 = icmp ult ptr %i.ul, %scevgep450
  %bound1 = icmp ult ptr %i.up, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check451 = icmp ult i32 %i.ug, 16
  %i.we = and i64 %wide.trip.count225.i108, 12
  %n.vec = and i64 %wide.trip.count225.i108, 2147483632 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.vg, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert452 = insertelement <16 x i16> poison, i16 %i.vv, i64 0
  %broadcast.splat453 = shufflevector <16 x i16> %broadcast.splatinsert452, <16 x i16> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count225.i108
  %min.epilog.iters.check = icmp eq i64 %i.we, 0
  %n.vec455 = and i64 %wide.trip.count225.i108, 2147483644 ; 3 uses
  %broadcast.splatinsert456 = insertelement <4 x i16> poison, i16 %i.vg, i64 0
  %broadcast.splat457 = shufflevector <4 x i16> %broadcast.splatinsert456, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert458 = insertelement <4 x i16> poison, i16 %i.vv, i64 0
  %broadcast.splat459 = shufflevector <4 x i16> %broadcast.splatinsert458, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n464 = icmp eq i64 %n.vec455, %wide.trip.count225.i108
  %xtraiter497 = and i64 %wide.trip.count225.i108, 1
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  %i.wf = add nsw i64 %wide.trip.count225.i108, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge186.i, %.preheader152.preheader.i
  %.1189.i = phi ptr [ %i.yi, %._crit_edge186.i ], [ %i.ul, %.preheader152.preheader.i ] ; 6 uses
  %.1122188.i = phi ptr [ %i.yj, %._crit_edge186.i ], [ %i.up, %.preheader152.preheader.i ] ; 6 uses
  %.1131187.i = phi i32 [ %i.yk, %._crit_edge186.i ], [ 0, %.preheader152.preheader.i ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.sink.split.i.i109.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.1122188.i, i64 %index
  %wide.load = load <16 x i8>, ptr %i.wg, align 1, !tbaa !20, !alias.scope !84
  %i.wh = getelementptr inbounds nuw i8, ptr %.1189.i, i64 %index ; 2 uses
  %i.wi = zext <16 x i8> %wide.load to <16 x i16>
  %i.wj = mul nuw <16 x i16> %broadcast.splat, %i.wi
  %wide.load454 = load <16 x i8>, ptr %i.wh, align 1, !tbaa !20, !alias.scope !87, !noalias !84
  %i.wk = zext <16 x i8> %wide.load454 to <16 x i16>
  %i.wl = mul nuw <16 x i16> %broadcast.splat453, %i.wk
  %i.wm = add <16 x i16> %i.wl, %i.wj
  %i.wn = lshr <16 x i16> %i.wm, splat (i16 8)
  %i.wo = trunc nuw <16 x i16> %i.wn to <16 x i8>
  store <16 x i8> %i.wo, ptr %i.wh, align 1, !tbaa !20, !alias.scope !87, !noalias !84
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.wp = icmp eq i64 %index.next, %n.vec
  br i1 %i.wp, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge186.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.sink.split.i.i109.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index460 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next463, %vec.epilog.vector.body ] ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.1122188.i, i64 %index460
  %wide.load461 = load <4 x i8>, ptr %i.wq, align 1, !tbaa !20, !alias.scope !84
  %i.wr = getelementptr inbounds nuw i8, ptr %.1189.i, i64 %index460 ; 2 uses
  %i.ws = zext <4 x i8> %wide.load461 to <4 x i16>
  %i.wt = mul nuw <4 x i16> %broadcast.splat457, %i.ws
  %wide.load462 = load <4 x i8>, ptr %i.wr, align 1, !tbaa !20, !alias.scope !87, !noalias !84
  %i.wu = zext <4 x i8> %wide.load462 to <4 x i16>
  %i.wv = mul nuw <4 x i16> %broadcast.splat459, %i.wu
  %i.ww = add <4 x i16> %i.wv, %i.wt
  %i.wx = lshr <4 x i16> %i.ww, splat (i16 8)
  %i.wy = trunc nuw <4 x i16> %i.wx to <4 x i8>
  store <4 x i8> %i.wy, ptr %i.wr, align 1, !tbaa !20, !alias.scope !87, !noalias !84
  %index.next463 = add nuw i64 %index460, 4       ; 2 uses
  %i.wz = icmp eq i64 %index.next463, %n.vec455
  br i1 %i.wz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n464, label %._crit_edge186.i, label %.sink.split.i.i109.preheader

.sink.split.i.i109.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv220.i110.ph = phi i64 [ 0, %iter.check ], [ %n.vec455, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 5 uses
  br i1 %lcmp.mod498.not, label %.sink.split.i.i109.prol.loopexit, label %.sink.split.i.i109.prol

.sink.split.i.i109.prol:                          ; preds = %.sink.split.i.i109.preheader
  %i.xa = getelementptr inbounds nuw i8, ptr %.1122188.i, i64 %indvars.iv220.i110.ph
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !20
  %i.xc = getelementptr inbounds nuw i8, ptr %.1189.i, i64 %indvars.iv220.i110.ph ; 2 uses
  %i.xd = zext i8 %i.xb to i16
  %i.xe = mul nuw i16 %i.xd, %i.vg
  %i.xf = load i8, ptr %i.xc, align 1, !tbaa !20
  %i.xg = zext i8 %i.xf to i16
  %i.xh = mul nuw i16 %i.xg, %i.vv
  %i.xi = add i16 %i.xh, %i.xe
  %i.xj = lshr i16 %i.xi, 8
  %i.xk = trunc nuw i16 %i.xj to i8
  store i8 %i.xk, ptr %i.xc, align 1, !tbaa !20
  %indvars.iv.next221.i111.prol = or disjoint i64 %indvars.iv220.i110.ph, 1
  br label %.sink.split.i.i109.prol.loopexit

.sink.split.i.i109.prol.loopexit:                 ; preds = %.sink.split.i.i109.prol, %.sink.split.i.i109.preheader
  %indvars.iv220.i110.unr = phi i64 [ %indvars.iv220.i110.ph, %.sink.split.i.i109.preheader ], [ %indvars.iv.next221.i111.prol, %.sink.split.i.i109.prol ]
  %i.xl = icmp eq i64 %indvars.iv220.i110.ph, %i.wf
  br i1 %i.xl, label %._crit_edge186.i, label %.sink.split.i.i109

.sink.split.i.i109:                               ; preds = %.sink.split.i.i109.prol.loopexit, %.sink.split.i.i109
  %indvars.iv220.i110 = phi i64 [ %indvars.iv.next221.i111.1, %.sink.split.i.i109 ], [ %indvars.iv220.i110.unr, %.sink.split.i.i109.prol.loopexit ] ; 5 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.1122188.i, i64 %indvars.iv220.i110
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !20
  %i.xo = getelementptr inbounds nuw i8, ptr %.1189.i, i64 %indvars.iv220.i110 ; 2 uses
  %i.xp = zext i8 %i.xn to i16
  %i.xq = mul nuw i16 %i.xp, %i.vg
  %i.xr = load i8, ptr %i.xo, align 1, !tbaa !20
  %i.xs = zext i8 %i.xr to i16
  %i.xt = mul nuw i16 %i.xs, %i.vv
  %i.xu = add i16 %i.xt, %i.xq
  %i.xv = lshr i16 %i.xu, 8
  %i.xw = trunc nuw i16 %i.xv to i8
  store i8 %i.xw, ptr %i.xo, align 1, !tbaa !20
  %1 = getelementptr inbounds nuw i8, ptr %.1122188.i, i64 %indvars.iv220.i110
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !20
  %2 = getelementptr inbounds nuw i8, ptr %.1189.i, i64 %indvars.iv220.i110
  %i.xz = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.ya = zext i8 %i.xy to i16
  %i.yb = mul nuw i16 %i.ya, %i.vg
  %i.yc = load i8, ptr %i.xz, align 1, !tbaa !20
  %i.yd = zext i8 %i.yc to i16
  %i.ye = mul nuw i16 %i.yd, %i.vv
  %i.yf = add i16 %i.ye, %i.yb
  %i.yg = lshr i16 %i.yf, 8
  %i.yh = trunc nuw i16 %i.yg to i8
  store i8 %i.yh, ptr %i.xz, align 1, !tbaa !20
  %indvars.iv.next221.i111.1 = add nuw nsw i64 %indvars.iv220.i110, 2 ; 2 uses
  %exitcond226.not.i112.1 = icmp eq i64 %indvars.iv.next221.i111.1, %wide.trip.count225.i108
  br i1 %exitcond226.not.i112.1, label %._crit_edge186.i, label %.sink.split.i.i109, !llvm.loop !92

._crit_edge186.i:                                 ; preds = %.sink.split.i.i109.prol.loopexit, %.sink.split.i.i109, %vec.epilog.middle.block, %middle.block
  %i.yi = getelementptr inbounds nuw i8, ptr %.1189.i, i64 %i.vw
  %i.yj = getelementptr inbounds nuw i8, ptr %.1122188.i, i64 %i.vx
  %i.yk = add nuw nsw i32 %.1131187.i, 1          ; 2 uses
  %exitcond227.not.i113 = icmp eq i32 %i.yk, %i.ui
  br i1 %exitcond227.not.i113, label %rgb565_image_blend.exit, label %iter.check, !llvm.loop !93

bb.by:                                            ; preds = %bb.bx
  %i.yl = icmp ne ptr %i.ut, null                 ; 2 uses
  %or.cond8.i90 = select i1 %i.yl, i1 %i.vh, i1 false
  br i1 %or.cond8.i90, label %.preheader156.i100, label %bb.cc

.preheader156.i100:                               ; preds = %bb.by
  %i.ym = icmp sgt i32 %i.ui, 0
  br i1 %i.ym, label %.preheader155.lr.ph.i101, label %rgb565_image_blend.exit

.preheader155.lr.ph.i101:                         ; preds = %.preheader156.i100
  %i.yn = icmp sgt i32 %i.ug, 0
  %i.yo = zext i32 %i.un to i64
  %i.yp = zext i32 %i.ur to i64
  %i.yq = sext i32 %i.uv to i64
  br i1 %i.yn, label %.preheader155.preheader.i, label %rgb565_image_blend.exit

.preheader155.preheader.i:                        ; preds = %.preheader155.lr.ph.i101
  %wide.trip.count217.i102 = zext nneg i32 %i.ug to i64
  br label %.preheader155.i103

.preheader155.i103:                               ; preds = %._crit_edge179.i, %.preheader155.preheader.i
  %.2183.i = phi ptr [ %i.zj, %._crit_edge179.i ], [ %i.ul, %.preheader155.preheader.i ] ; 2 uses
  %.2123182.i = phi ptr [ %i.zk, %._crit_edge179.i ], [ %i.up, %.preheader155.preheader.i ] ; 2 uses
  %.0126181.i = phi ptr [ %i.zl, %._crit_edge179.i ], [ %i.ut, %.preheader155.preheader.i ] ; 2 uses
  %.2132180.i = phi i32 [ %i.zm, %._crit_edge179.i ], [ 0, %.preheader155.preheader.i ]
  br label %bb.bz

bb.bz:                                            ; preds = %lv_color_8_8_mix.exit148.i, %.preheader155.i103
  %indvars.iv212.i104 = phi i64 [ 0, %.preheader155.i103 ], [ %indvars.iv.next213.i105, %lv_color_8_8_mix.exit148.i ] ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.2123182.i, i64 %indvars.iv212.i104
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !20  ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.2183.i, i64 %indvars.iv212.i104 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.0126181.i, i64 %indvars.iv212.i104
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !20  ; 4 uses
  %i.yw = zext i8 %i.yv to i16
  %i.yx = icmp eq i8 %i.yv, 0
  br i1 %i.yx, label %lv_color_8_8_mix.exit148.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.yy = icmp ugt i8 %i.yv, -4
  br i1 %i.yy, label %.sink.split.i146.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.yz = xor i8 %i.yv, -1
  %i.za = zext i8 %i.ys to i16
  %i.zb = mul nuw i16 %i.yw, %i.za
  %i.zc = load i8, ptr %i.yt, align 1, !tbaa !20
  %i.zd = zext i8 %i.zc to i16
  %i.ze = zext i8 %i.yz to i16
  %i.zf = mul nuw i16 %i.zd, %i.ze
  %i.zg = add i16 %i.zf, %i.zb
  %i.zh = lshr i16 %i.zg, 8
  %i.zi = trunc nuw i16 %i.zh to i8
  br label %.sink.split.i146.i

.sink.split.i146.i:                               ; preds = %bb.cb, %bb.ca
  %.sink.i147.i = phi i8 [ %i.zi, %bb.cb ], [ %i.ys, %bb.ca ]
  store i8 %.sink.i147.i, ptr %i.yt, align 1, !tbaa !20
  br label %lv_color_8_8_mix.exit148.i

lv_color_8_8_mix.exit148.i:                       ; preds = %.sink.split.i146.i, %bb.bz
  %indvars.iv.next213.i105 = add nuw nsw i64 %indvars.iv212.i104, 1 ; 2 uses
  %exitcond218.not.i106 = icmp eq i64 %indvars.iv.next213.i105, %wide.trip.count217.i102
  br i1 %exitcond218.not.i106, label %._crit_edge179.i, label %bb.bz, !llvm.loop !94

._crit_edge179.i:                                 ; preds = %lv_color_8_8_mix.exit148.i
  %i.zj = getelementptr inbounds nuw i8, ptr %.2183.i, i64 %i.yo
  %i.zk = getelementptr inbounds nuw i8, ptr %.2123182.i, i64 %i.yp
  %i.zl = getelementptr inbounds i8, ptr %.0126181.i, i64 %i.yq
  %i.zm = add nuw nsw i32 %.2132180.i, 1          ; 2 uses
  %exitcond219.not.i107 = icmp eq i32 %i.zm, %i.ui
  br i1 %exitcond219.not.i107, label %rgb565_image_blend.exit, label %.preheader155.i103, !llvm.loop !95

bb.cc:                                            ; preds = %bb.by
  %or.cond11.i91 = select i1 %i.yl, i1 %i.vq, i1 false
  %i.zn = icmp sgt i32 %i.ui, 0
  %or.cond195.i = select i1 %or.cond11.i91, i1 %i.zn, i1 false
  br i1 %or.cond195.i, label %.preheader158.lr.ph.i92, label %rgb565_image_blend.exit

.preheader158.lr.ph.i92:                          ; preds = %bb.cc
  %i.zo = icmp sgt i32 %i.ug, 0
  %i.zp = zext i32 %i.un to i64
  %i.zq = zext i32 %i.ur to i64
  %i.zr = sext i32 %i.uv to i64
  br i1 %i.zo, label %.preheader158.preheader.i93, label %rgb565_image_blend.exit

.preheader158.preheader.i93:                      ; preds = %.preheader158.lr.ph.i92
  %wide.trip.count209.i = zext nneg i32 %i.ug to i64
  br label %.preheader158.i94

.preheader158.i94:                                ; preds = %._crit_edge172.i, %.preheader158.preheader.i93
  %.3176.i = phi ptr [ %i.aal, %._crit_edge172.i ], [ %i.ul, %.preheader158.preheader.i93 ] ; 2 uses
  %.3124175.i = phi ptr [ %i.aam, %._crit_edge172.i ], [ %i.up, %.preheader158.preheader.i93 ] ; 2 uses
  %.1127174.i = phi ptr [ %i.aan, %._crit_edge172.i ], [ %i.ut, %.preheader158.preheader.i93 ] ; 2 uses
  %.3133173.i = phi i32 [ %i.aao, %._crit_edge172.i ], [ 0, %.preheader158.preheader.i93 ]
  br label %bb.cd

bb.cd:                                            ; preds = %lv_color_8_8_mix.exit151.i97, %.preheader158.i94
  %indvars.iv204.i = phi i64 [ 0, %.preheader158.i94 ], [ %indvars.iv.next205.i, %lv_color_8_8_mix.exit151.i97 ] ; 4 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.3124175.i, i64 %indvars.iv204.i
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !20  ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.3176.i, i64 %indvars.iv204.i ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.1127174.i, i64 %indvars.iv204.i
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !20
  %i.zx = zext i8 %i.zw to i16
  %i.zy = mul nuw i16 %i.zx, %i.vg                ; 2 uses
  %i.zz = lshr i16 %i.zy, 8                       ; 3 uses
  %i.aaa = icmp eq i16 %i.zz, 0
  br i1 %i.aaa, label %lv_color_8_8_mix.exit151.i97, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aab = icmp ugt i16 %i.zy, -769
  br i1 %i.aab, label %.sink.split.i149.i95, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aac = xor i16 %i.zz, 255
  %i.aad = zext i8 %i.zt to i16
  %i.aae = mul nuw i16 %i.zz, %i.aad
  %i.aaf = load i8, ptr %i.zu, align 1, !tbaa !20
  %i.aag = zext i8 %i.aaf to i16
  %i.aah = mul nuw i16 %i.aac, %i.aag
  %i.aai = add i16 %i.aah, %i.aae
  %i.aaj = lshr i16 %i.aai, 8
  %i.aak = trunc nuw i16 %i.aaj to i8
  br label %.sink.split.i149.i95

.sink.split.i149.i95:                             ; preds = %bb.cf, %bb.ce
  %.sink.i150.i96 = phi i8 [ %i.aak, %bb.cf ], [ %i.zt, %bb.ce ]
  store i8 %.sink.i150.i96, ptr %i.zu, align 1, !tbaa !20
  br label %lv_color_8_8_mix.exit151.i97

lv_color_8_8_mix.exit151.i97:                     ; preds = %.sink.split.i149.i95, %bb.cd
  %indvars.iv.next205.i = add nuw nsw i64 %indvars.iv204.i, 1 ; 2 uses
  %exitcond210.not.i98 = icmp eq i64 %indvars.iv.next205.i, %wide.trip.count209.i
  br i1 %exitcond210.not.i98, label %._crit_edge172.i, label %bb.cd, !llvm.loop !96

._crit_edge172.i:                                 ; preds = %lv_color_8_8_mix.exit151.i97
  %i.aal = getelementptr inbounds nuw i8, ptr %.3176.i, i64 %i.zp
  %i.aam = getelementptr inbounds nuw i8, ptr %.3124175.i, i64 %i.zq
  %i.aan = getelementptr inbounds i8, ptr %.1127174.i, i64 %i.zr
  %i.aao = add nuw nsw i32 %.3133173.i, 1         ; 2 uses
  %exitcond211.not.i99 = icmp eq i32 %i.aao, %i.ui
  br i1 %exitcond211.not.i99, label %rgb565_image_blend.exit, label %.preheader158.i94, !llvm.loop !97

.preheader161.i68:                                ; preds = %._crit_edge.i84, %.preheader161.preheader.i66
  %.4169.i = phi ptr [ %i.acb, %._crit_edge.i84 ], [ %i.ul, %.preheader161.preheader.i66 ] ; 2 uses
  %.4125168.i = phi ptr [ %i.acc, %._crit_edge.i84 ], [ %i.up, %.preheader161.preheader.i66 ] ; 2 uses
  %.2128167.i = phi ptr [ %.3129.i85, %._crit_edge.i84 ], [ %i.ut, %.preheader161.preheader.i66 ] ; 3 uses
  %.4134166.i = phi i32 [ %i.acd, %._crit_edge.i84 ], [ 0, %.preheader161.preheader.i66 ]
  %i.aap = icmp eq ptr %.2128167.i, null          ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %blend_non_normal_pixel.exit.i81, %.preheader161.i68
  %indvars.iv.i69 = phi i64 [ 0, %.preheader161.i68 ], [ %indvars.iv.next.i82, %blend_non_normal_pixel.exit.i81 ] ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.4125168.i, i64 %indvars.iv.i69
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !20
  br i1 %i.aap, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aas = getelementptr inbounds nuw i8, ptr %.2128167.i, i64 %indvars.iv.i69
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !20
  %i.aau = zext i8 %i.aat to i16
  %i.aav = mul nuw i16 %i.aau, %i.vb
  %i.aaw = lshr i16 %i.aav, 8                     ; 2 uses
  %i.aax = trunc nuw i16 %i.aaw to i8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.2.0.extract.trunc.i.pre-phi.i70 = phi i16 [ %i.vb, %bb.cg ], [ %i.aaw, %bb.ch ] ; 2 uses
  %.sroa.6.0.i71 = phi i8 [ %i.uk, %bb.cg ], [ %i.aax, %bb.ch ] ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.4169.i, i64 %indvars.iv.i69 ; 5 uses
  %i.aaz = load i32, ptr %i.uw, align 4, !tbaa !48
  %.sroa.6.0.insert.ext.i72 = zext i8 %.sroa.6.0.i71 to i32
  %.sroa.6.0.insert.shift.i73 = shl nuw i32 %.sroa.6.0.insert.ext.i72, 24
  %.sroa.5.0.insert.ext.i74 = zext i8 %i.aar to i32 ; 3 uses
  %.sroa.5.0.insert.shift.i75 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i74, 16
  %.sroa.4.0.insert.shift.i76 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i74, 8
  %i.aba = or disjoint i32 %.sroa.5.0.insert.shift.i75, %.sroa.4.0.insert.shift.i76
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.shift.i73, %i.aba
  %.sroa.0.0.insert.insert.i77 = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.5.0.insert.ext.i74
end_hunk_0
