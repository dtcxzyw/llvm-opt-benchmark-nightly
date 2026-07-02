inline.NumInlined: 112
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@opj_tcd_decode_tile:bb.a
  %indvars.iv.next.i219.epil = add nuw nsw i64 %indvars.iv.i218.epil, 1
  %epil.iter399.next = add i64 %epil.iter399, 1   ; 2 uses
  %epil.iter399.cmp.not = icmp eq i64 %epil.iter399.next, %xtraiter398
  br i1 %epil.iter399.cmp.not, label %._crit_edge.i220, label %.lr.ph.split.i.epil, !llvm.loop !263

._crit_edge.i220:                                 ; preds = %._crit_edge.i220.loopexit390.unr-lcssa, %.lr.ph.split.i.epil, %._crit_edge.i220.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %.preheader.i
  %i.uo = load ptr, ptr %i.sr, align 8, !tbaa !260
  %i.up = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !70
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !194
  %i.uu = call i32 @opj_mct_decode_custom(ptr noundef %i.uo, i64 noundef %.0118.ph.i, ptr noundef nonnull %i.sv, i32 noundef %i.sw, i32 noundef %i.ut) #15
  %.not147.not.i = icmp eq i32 %i.uu, 0
  call void @opj_free(ptr noundef nonnull %i.sv) #15
  br i1 %.not147.not.i, label %.critedge, label %opj_tcd_mct_decode.exit

bb.bo:                                            ; preds = %bb.bl
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ng, i64 5600
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !63
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 20
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !112
  %i.uz = icmp eq i32 %i.uy, 1
  br i1 %i.uz, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not132.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.va = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !53
  %i.vc = getelementptr inbounds nuw i8, ptr %i.nj, i64 160
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !53
  %i.ve = getelementptr inbounds nuw i8, ptr %i.nj, i64 272
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !53
  call void @opj_mct_decode(ptr noundef %i.vb, ptr noundef %i.vd, ptr noundef %i.vf, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.br:                                            ; preds = %bb.bp
  %i.vg = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !54
  %i.vi = getelementptr inbounds nuw i8, ptr %i.nj, i64 192
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !54
  %i.vk = getelementptr inbounds nuw i8, ptr %i.nj, i64 304
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !54
  call void @opj_mct_decode(ptr noundef %i.vh, ptr noundef %i.vj, ptr noundef %i.vl, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bs:                                            ; preds = %bb.bo
  br i1 %.not132.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.vm = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !53
  %i.vo = getelementptr inbounds nuw i8, ptr %i.nj, i64 160
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !53
  %i.vq = getelementptr inbounds nuw i8, ptr %i.nj, i64 272
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !53
  call void @opj_mct_decode_real(ptr noundef %i.vn, ptr noundef %i.vp, ptr noundef %i.vr, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bu:                                            ; preds = %bb.bs
  %i.vs = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !54
  %i.vu = getelementptr inbounds nuw i8, ptr %i.nj, i64 192
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !54
  %i.vw = getelementptr inbounds nuw i8, ptr %i.nj, i64 304
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !54
  call void @opj_mct_decode_real(ptr noundef %i.vt, ptr noundef %i.vv, ptr noundef %i.vx, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bv:                                            ; preds = %bb.bh, %bb.az
  %i.vy = phi i32 [ %i.rb, %bb.bh ], [ %i.oj, %bb.az ]
  %i.vz = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.vy) #15 ; 0 uses
  br label %opj_tcd_mct_decode.exit

opj_tcd_mct_decode.exit:                          ; preds = %._crit_edge.i220, %bb.bq, %bb.br, %bb.bt, %bb.bu, %bb.bv, %bb.bm, %bb.ax, %opj_tcd_dwt_decode.exit
  %i.wa = load ptr, ptr %i.iw, align 8, !tbaa !7
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !18 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !30
  %.not116.i = icmp eq i32 %i.wd, 0
  br i1 %.not116.i, label %.critedge, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %opj_tcd_mct_decode.exit
  %i.we = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !70
  %i.wh = load ptr, ptr %i.j, align 8, !tbaa !161
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 5600
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !63 ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !25
  %i.wm = load ptr, ptr %i.p, align 8, !tbaa !56  ; 2 uses
  %.not.i223 = icmp eq ptr %i.wm, null
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.i, %.lr.ph.i222
  %indvars.iv.i224 = phi i64 [ 0, %.lr.ph.i222 ], [ %indvars.iv.next.i228, %.loopexit.i ] ; 3 uses
  %.074112.i = phi ptr [ %i.wl, %.lr.ph.i222 ], [ %i.aav, %.loopexit.i ] ; 5 uses
  %.085111.i = phi ptr [ %i.wj, %.lr.ph.i222 ], [ %i.aau, %.loopexit.i ] ; 3 uses
  %.086110.i = phi ptr [ %i.wg, %.lr.ph.i222 ], [ %i.aat, %.loopexit.i ] ; 4 uses
  %i.wn = mul nuw nsw i64 %indvars.iv.i224, 1080  ; 2 uses
  %i.wo = getelementptr i8, ptr %i.wj, i64 %i.wn
  %scevgep380 = getelementptr i8, ptr %i.wo, i64 1076
  %i.wp = getelementptr i8, ptr %i.wj, i64 %i.wn
  %scevgep381 = getelementptr i8, ptr %i.wp, i64 1080
  br i1 %.not.i223, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.i224
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !3
  %.not89.i = icmp eq i32 %i.wr, 0
  br i1 %.not89.i, label %.loopexit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ws = getelementptr inbounds nuw i8, ptr %.074112.i, i64 32
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !34 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.086110.i, i64 36
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !86
  %i.ww = zext i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw [192 x i8], ptr %i.wt, i64 %i.ww ; 4 uses
  %i.wy = load i32, ptr %i.o, align 8, !tbaa !155
  %.not90.i = icmp eq i32 %i.wy, 0
  br i1 %.not90.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 184
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 176
  %i.xb = load <2 x i32>, ptr %i.wz, align 8, !tbaa !3
  %i.xc = load <2 x i32>, ptr %i.xa, align 8, !tbaa !3
  %i.xd = sub <2 x i32> %i.xb, %i.xc
  %i.xe = getelementptr inbounds nuw i8, ptr %.074112.i, i64 80
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.xg = load <2 x i32>, ptr %i.xf, align 8, !tbaa !3
  %i.xh = load <2 x i32>, ptr %i.wx, align 8, !tbaa !3
  %i.xi = sub nsw <2 x i32> %i.xg, %i.xh          ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.074112.i, i64 24
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !96
  %i.xl = add i32 %i.xk, -1
  %i.xm = zext i32 %i.xl to i64
  %i.xn = getelementptr inbounds nuw [192 x i8], ptr %i.wt, i64 %i.xm ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !100
  %i.xq = load i32, ptr %i.xn, align 8, !tbaa !97
  %i.xr = extractelement <2 x i32> %i.xi, i64 0
  %i.xs = add i32 %i.xr, %i.xq
  %i.xt = sub i32 %i.xp, %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %.074112.i, i64 48
  %i.xv = zext i32 %i.xt to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.078.in.i = phi ptr [ %i.xu, %bb.ca ], [ %i.xe, %bb.bz ]
  %.075.i = phi i64 [ %i.xv, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.xw = phi <2 x i32> [ %i.xi, %bb.ca ], [ %i.xd, %bb.bz ] ; 5 uses
  %.078.i = load ptr, ptr %.078.in.i, align 8, !tbaa !264 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.086110.i, i64 32
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !194
  %.not91.i = icmp eq i32 %i.xy, 0
  %i.xz = getelementptr inbounds nuw i8, ptr %.086110.i, i64 24
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !113 ; 2 uses
  br i1 %.not91.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.yb = add i32 %i.ya, -1
  %i.yc = shl nuw i32 1, %i.yb                    ; 2 uses
  %i.yd = sub nsw i32 0, %i.yc
  %i.ye = add nsw i32 %i.yc, -1
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %notmask.i = shl nsw i32 -1, %i.ya
  %i.yf = xor i32 %notmask.i, -1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.077.i = phi i32 [ %i.yd, %bb.cc ], [ 0, %bb.cd ] ; 10 uses
  %.076.i = phi i32 [ %i.ye, %bb.cc ], [ %i.yf, %bb.cd ] ; 6 uses
  %i.yg = icmp eq <2 x i32> %i.xw, zeroinitializer ; 2 uses
  %i.yh = extractelement <2 x i1> %i.yg, i64 0
  %i.yi = extractelement <2 x i1> %i.yg, i64 1
  %or.cond.i225 = select i1 %i.yh, i1 true, i1 %i.yi
  br i1 %or.cond.i225, label %.loopexit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.yj = getelementptr inbounds nuw i8, ptr %.085111.i, i64 20
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !112
  %i.yl = icmp eq i32 %i.yk, 1
  %i.ym = getelementptr inbounds nuw i8, ptr %.085111.i, i64 1076 ; 5 uses
  br i1 %i.yl, label %.preheader.i229.preheader, label %.preheader96.preheader.i

.preheader.i229.preheader:                        ; preds = %bb.cf
  %i.yn = extractelement <2 x i32> %i.xw, i64 0   ; 6 uses
  %i.yo = add i32 %i.yn, -1
  %i.yp = zext i32 %i.yo to i64
  %i.yq = shl nuw nsw i64 %i.yp, 2
  %12 = zext i32 %i.yn to i64                     ; 2 uses
  %13 = extractelement <2 x i32> %i.xw, i64 1
  %min.iters.check = icmp ult i32 %i.yn, 8
  %n.vec = and i64 %12, 4294967288                ; 4 uses
  %i.yr = shl nuw nsw i64 %n.vec, 2
  %i.ys = trunc nuw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.077.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert382 = insertelement <4 x i32> poison, i32 %.076.i, i64 0
  %broadcast.splat383 = shufflevector <4 x i32> %broadcast.splatinsert382, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %12
  br label %.preheader.i229

.preheader96.preheader.i:                         ; preds = %bb.cf
  %i.yt = sext i32 %.077.i to i64
  %i.yu = zext nneg i32 %.076.i to i64
  %i.yv = extractelement <2 x i32> %i.xw, i64 1
  %i.yw = extractelement <2 x i32> %i.xw, i64 0
  br label %.preheader96.i

.preheader.i229:                                  ; preds = %.preheader.i229.preheader, %._crit_edge106.i
  %.1109.i = phi ptr [ %i.aad, %._crit_edge106.i ], [ %.078.i, %.preheader.i229.preheader ] ; 6 uses
  %.079108.i = phi i32 [ %i.aae, %._crit_edge106.i ], [ 0, %.preheader.i229.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i229
  %scevgep = getelementptr i8, ptr %.1109.i, i64 4
  %scevgep379 = getelementptr i8, ptr %scevgep, i64 %i.yq
  %bound0 = icmp ult ptr %.1109.i, %scevgep381
  %bound1 = icmp ult ptr %scevgep380, %scevgep379
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.yx = getelementptr i8, ptr %.1109.i, i64 %i.yr ; 2 uses
  %i.yy = load i32, ptr %i.ym, align 4, !tbaa !173, !alias.scope !265
  %broadcast.splatinsert385 = insertelement <4 x i32> poison, i32 %i.yy, i64 0
  %broadcast.splat386 = shufflevector <4 x i32> %broadcast.splatinsert385, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.yz = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1109.i, i64 %i.yz ; 3 uses
  %i.za = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %wide.load384 = load <4 x i32>, ptr %i.za, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %i.zb = add nsw <4 x i32> %broadcast.splat386, %wide.load ; 2 uses
  %i.zc = add nsw <4 x i32> %broadcast.splat386, %wide.load384 ; 2 uses
  %i.zd = icmp slt <4 x i32> %i.zb, %broadcast.splat
  %i.ze = icmp slt <4 x i32> %i.zc, %broadcast.splat
  %i.zf = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zb, <4 x i32> %broadcast.splat383)
  %i.zg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zc, <4 x i32> %broadcast.splat383)
  %i.zh = select <4 x i1> %i.zd, <4 x i32> %broadcast.splat, <4 x i32> %i.zf
  %i.zi = select <4 x i1> %i.ze, <4 x i32> %broadcast.splat, <4 x i32> %i.zg
  store <4 x i32> %i.zh, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  store <4 x i32> %i.zi, ptr %i.za, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zj = icmp eq i64 %index.next, %n.vec
  br i1 %i.zj, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge106.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i229, %middle.block
  %.2105.i.ph = phi ptr [ %.1109.i, %vector.memcheck ], [ %.1109.i, %.preheader.i229 ], [ %i.yx, %middle.block ] ; 4 uses
  %.081104.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i229 ], [ %i.ys, %middle.block ] ; 4 uses
  %i.zk = sub i32 %i.yn, %.081104.i.ph
  %.neg = add i32 %.081104.i.ph, 1
  %xtraiter410 = and i32 %i.zk, 1
  %lcmp.mod411.not = icmp eq i32 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.zl = load i32, ptr %.2105.i.ph, align 4, !tbaa !3
  %i.zm = load i32, ptr %i.ym, align 4, !tbaa !173
  %i.zn = add nsw i32 %i.zm, %i.zl                ; 2 uses
  %i.zo = icmp slt i32 %i.zn, %.077.i
  %..i.i.prol = call i32 @llvm.smin.i32(i32 %i.zn, i32 %.076.i)
  %.0.i.i.prol = select i1 %i.zo, i32 %.077.i, i32 %..i.i.prol
  store i32 %.0.i.i.prol, ptr %.2105.i.ph, align 4, !tbaa !3
  %i.zp = getelementptr inbounds nuw i8, ptr %.2105.i.ph, i64 4 ; 2 uses
  %i.zq = add nuw i32 %.081104.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa389.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.zp, %scalar.ph.prol ]
  %.2105.i.unr = phi ptr [ %.2105.i.ph, %scalar.ph.preheader ], [ %i.zp, %scalar.ph.prol ]
  %.081104.i.unr = phi i32 [ %.081104.i.ph, %scalar.ph.preheader ], [ %i.zq, %scalar.ph.prol ]
  %i.zr = icmp eq i32 %i.yn, %.neg
  br i1 %i.zr, label %._crit_edge106.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.2105.i = phi ptr [ %i.aab, %scalar.ph ], [ %.2105.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.081104.i = phi i32 [ %i.aac, %scalar.ph ], [ %.081104.i.unr, %scalar.ph.prol.loopexit ]
  %i.zs = load i32, ptr %.2105.i, align 4, !tbaa !3
  %i.zt = load i32, ptr %i.ym, align 4, !tbaa !173
  %i.zu = add nsw i32 %i.zt, %i.zs                ; 2 uses
  %i.zv = icmp slt i32 %i.zu, %.077.i
  %..i.i = call i32 @llvm.smin.i32(i32 %i.zu, i32 %.076.i)
  %.0.i.i = select i1 %i.zv, i32 %.077.i, i32 %..i.i
  store i32 %.0.i.i, ptr %.2105.i, align 4, !tbaa !3
  %i.zw = getelementptr inbounds nuw i8, ptr %.2105.i, i64 4 ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !3
  %i.zy = load i32, ptr %i.ym, align 4, !tbaa !173
  %i.zz = add nsw i32 %i.zy, %i.zx                ; 2 uses
  %i.aaa = icmp slt i32 %i.zz, %.077.i
  %..i.i.1 = call i32 @llvm.smin.i32(i32 %i.zz, i32 %.076.i)
  %.0.i.i.1 = select i1 %i.aaa, i32 %.077.i, i32 %..i.i.1
  store i32 %.0.i.i.1, ptr %i.zw, align 4, !tbaa !3
  %i.aab = getelementptr inbounds nuw i8, ptr %.2105.i, i64 8 ; 2 uses
  %i.aac = add nuw i32 %.081104.i, 2              ; 2 uses
  %exitcond124.not.i.1 = icmp eq i32 %i.aac, %i.yn
  br i1 %exitcond124.not.i.1, label %._crit_edge106.i, label %scalar.ph, !llvm.loop !271

._crit_edge106.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa374 = phi ptr [ %i.yx, %middle.block ], [ %.lcssa389.unr, %scalar.ph.prol.loopexit ], [ %i.aab, %scalar.ph ]
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %.lcssa374, i64 %.075.i
  %i.aae = add nuw i32 %.079108.i, 1              ; 2 uses
  %exitcond125.not.i = icmp eq i32 %i.aae, %13
  br i1 %exitcond125.not.i, label %.loopexit.i, label %.preheader.i229, !llvm.loop !272

.preheader96.i:                                   ; preds = %._crit_edge.i227, %.preheader96.preheader.i
  %.3103.i = phi ptr [ %i.aar, %._crit_edge.i227 ], [ %.078.i, %.preheader96.preheader.i ]
  %.180102.i = phi i32 [ %i.aas, %._crit_edge.i227 ], [ 0, %.preheader96.preheader.i ]
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cj, %.preheader96.i
  %.4101.i = phi ptr [ %.3103.i, %.preheader96.i ], [ %i.aap, %bb.cj ] ; 3 uses
  %.182100.i = phi i32 [ 0, %.preheader96.i ], [ %i.aaq, %bb.cj ]
  %i.aaf = load float, ptr %.4101.i, align 4, !tbaa !174 ; 3 uses
  %i.aag = fcmp ogt float %i.aaf, f0x4F000000
  br i1 %i.aag, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aah = fcmp olt float %i.aaf, f0xCF000000
  br i1 %i.aah, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aai = call i64 @lrintf(float noundef %i.aaf) #15, !tbaa !3
  %i.aaj = load i32, ptr %i.ym, align 4, !tbaa !173
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = add nsw i64 %i.aai, %i.aak             ; 2 uses
  %i.aam = icmp slt i64 %i.aal, %i.yt
  %..i92.i = call i64 @llvm.smin.i64(i64 %i.aal, i64 range(i64 -2147483648, 2147483648) %i.yu)
  %i.aan = trunc nsw i64 %..i92.i to i32
  %i.aao = select i1 %i.aam, i32 %.077.i, i32 %i.aan
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.077.sink.i = phi i32 [ %.076.i, %bb.cg ], [ %i.aao, %bb.ci ], [ %.077.i, %bb.ch ]
  store i32 %.077.sink.i, ptr %.4101.i, align 4, !tbaa !3
  %i.aap = getelementptr inbounds nuw i8, ptr %.4101.i, i64 4 ; 2 uses
  %i.aaq = add nuw i32 %.182100.i, 1              ; 2 uses
  %exitcond.not.i226 = icmp eq i32 %i.aaq, %i.yw
  br i1 %exitcond.not.i226, label %._crit_edge.i227, label %bb.cg, !llvm.loop !273

._crit_edge.i227:                                 ; preds = %bb.cj
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %.075.i
  %i.aas = add nuw i32 %.180102.i, 1              ; 2 uses
  %exitcond123.not.i = icmp eq i32 %i.aas, %i.yv
  br i1 %exitcond123.not.i, label %.loopexit.i, label %.preheader96.i, !llvm.loop !274

.loopexit.i:                                      ; preds = %._crit_edge.i227, %._crit_edge106.i, %bb.ce, %bb.bx
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i224, 1 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.086110.i, i64 64
  %i.aau = getelementptr inbounds nuw i8, ptr %.085111.i, i64 1080
  %i.aav = getelementptr inbounds nuw i8, ptr %.074112.i, i64 112
  %i.aaw = load i32, ptr %i.wc, align 8, !tbaa !30
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = icmp samesign ult i64 %indvars.iv.next.i228, %i.aax
  br i1 %i.aay, label %bb.bw, label %.critedge, !llvm.loop !275

.critedge:                                        ; preds = %bb.au, %bb.av, %.loopexit.i, %bb.bn, %bb.bc, %.critedge.i, %._crit_edge.i220, %.critedge152.i, %.loopexit260, %opj_alloc_tile_component_data.exit, %bb.p, %bb.n, %opj_tcd_mct_decode.exit, %bb.an, %bb.ap, %bb.ab, %bb.b, %opj_tcd_t1_decode.exit, %opj_tcd_t2_decode.exit
  %.9 = phi i32 [ 0, %bb.bn ], [ 0, %bb.an ], [ 0, %bb.b ], [ 0, %.loopexit260 ], [ 0, %opj_tcd_t1_decode.exit ], [ 0, %opj_alloc_tile_component_data.exit ], [ 0, %opj_tcd_t2_decode.exit ], [ 0, %bb.bc ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 1, %opj_tcd_mct_decode.exit ], [ 0, %bb.n ], [ 0, %bb.p ], [ 1, %.loopexit.i ], [ 0, %.critedge152.i ], [ 0, %._crit_edge.i220 ], [ 0, %.critedge.i ], [ 0, %bb.av ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 %.9
}

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @opj_tcd_update_tile_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %.not68.i = icmp eq i32 %i.d, 0
  br i1 %.not68.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !155
  %.not53.i = icmp eq i32 %i.m, 0
  br i1 %.not53.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.f
  %.04461.i.us = phi ptr [ %i.ap, %bb.f ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.04660.i.us = phi ptr [ %i.ao, %bb.f ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.04859.i.us = phi i32 [ %i.an, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %.05058.i.us = phi i32 [ %i.aq, %bb.f ], [ 0, %.lr.ph.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.04660.i.us, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !113  ; 2 uses
  %i.p = lshr i32 %i.o, 3
  %i.q = and i32 %i.o, 7
  %.not.i.us = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not.i.us to i32
  %spec.select.i.us = add nuw nsw i32 %i.p, %i.r  ; 2 uses
  %i.s = icmp eq i32 %spec.select.i.us, 3
  %spec.store.select.i.us = select i1 %i.s, i32 4, i32 %spec.select.i.us ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04461.i.us, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %.04461.i.us, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !96
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [192 x i8], ptr %i.u, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !156
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !157
  %i.ad = sub i32 %i.aa, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 2 uses
  %i.ai = sub i32 %i.af, %i.ah                    ; 2 uses
  %.not54.i.us = icmp eq i32 %i.af, %i.ah
  br i1 %.not54.i.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.split.us
  %mul.i.us = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ad, i32 %i.ai)
  %mul.ov.i.us = extractvalue { i32, i1 } %mul.i.us, 1
  br i1 %mul.ov.i.us, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.split.us
  %i.aj = mul i32 %i.ai, %i.ad                    ; 2 uses
  %.not55.i.us = icmp eq i32 %spec.store.select.i.us, 0
  br i1 %.not55.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %mul56.i.us = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select.i.us, i32 %i.aj)
  %mul.ov57.i.us = extractvalue { i32, i1 } %mul56.i.us, 1
  br i1 %mul.ov57.i.us, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = mul i32 %i.aj, %spec.store.select.i.us  ; 2 uses
  %i.al = xor i32 %.04859.i.us, -1
  %i.am = icmp ugt i32 %i.ak, %i.al
  br i1 %i.am, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = add i32 %i.ak, %.04859.i.us             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.04660.i.us, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.04461.i.us, i64 112
  %i.aq = add nuw i32 %.05058.i.us, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.aq, %i.d
  br i1 %exitcond.not.i.us, label %opj_tcd_get_decoded_tile_size.exit, label %.lr.ph.i.split.us, !llvm.loop !158

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.k
  %.04461.i = phi ptr [ %i.bt, %bb.k ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.04660.i = phi ptr [ %i.bs, %bb.k ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.04859.i = phi i32 [ %i.br, %bb.k ], [ 0, %.lr.ph.i ] ; 2 uses
  %.05058.i = phi i32 [ %i.bu, %bb.k ], [ 0, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.04660.i, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %i.at = lshr i32 %i.as, 3
  %i.au = and i32 %i.as, 7
  %.not.i = icmp ne i32 %i.au, 0
  %i.av = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %i.at, %i.av   ; 2 uses
  %i.aw = icmp eq i32 %spec.select.i, 3
  %spec.store.select.i = select i1 %i.aw, i32 4, i32 %spec.select.i ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04461.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.04461.i, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !96
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [192 x i8], ptr %i.ay, i64 %i.bb ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -192
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -184
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !100
  %i.bg = load i32, ptr %i.bd, align 8, !tbaa !97
  %i.bh = sub nsw i32 %i.bf, %i.bg                ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 -180
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3  ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bc, i64 -188
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = sub i32 %i.bj, %i.bl                    ; 2 uses
  %.not54.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not54.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.split
  %mul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.bh, i32 %i.bm)
  %mul.ov.i = extractvalue { i32, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.split
  %i.bn = mul i32 %i.bm, %i.bh                    ; 2 uses
  %.not55.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not55.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %mul56.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.store.select.i, i32 %i.bn)
  %mul.ov57.i = extractvalue { i32, i1 } %mul56.i, 1
  br i1 %mul.ov57.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = mul i32 %i.bn, %spec.store.select.i     ; 2 uses
  %i.bp = xor i32 %.04859.i, -1
  %i.bq = icmp ugt i32 %i.bo, %i.bp
  br i1 %i.bq, label %opj_tcd_get_decoded_tile_size.exit.thread, label %bb.k

end_hunk_0
