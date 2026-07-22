inline.NumInlined: 112
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@opj_tcd_decode_tile:bb.a
  br i1 %lcmp.mod406.not, label %._crit_edge.i220, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i220.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %indvars.iv163.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next164.i.3, %._crit_edge.i220.loopexit.unr-lcssa ]
  %.0117159.us.i.epil.init = phi ptr [ %i.nj, %.lr.ph.split.us.i.preheader ], [ %i.tp, %._crit_edge.i220.loopexit.unr-lcssa ]
  %lcmp.mod407 = icmp ne i64 %xtraiter404, 0
  call void @llvm.assume(i1 %lcmp.mod407)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv163.i.epil = phi i64 [ %indvars.iv.next164.i.epil, %.lr.ph.split.us.i.epil ], [ %indvars.iv163.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %.0117159.us.i.epil = phi ptr [ %i.uj, %.lr.ph.split.us.i.epil ], [ %.0117159.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter405 = phi i64 [ %epil.iter405.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.0117159.us.i.epil, i64 80
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !54
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv163.i.epil
  store ptr %i.uh, ptr %i.ui, align 8, !tbaa !191
  %i.uj = getelementptr inbounds nuw i8, ptr %.0117159.us.i.epil, i64 112
  %indvars.iv.next164.i.epil = add nuw nsw i64 %indvars.iv163.i.epil, 1
  %epil.iter405.next = add i64 %epil.iter405, 1   ; 2 uses
  %epil.iter405.cmp.not = icmp eq i64 %epil.iter405.next, %xtraiter404
  br i1 %epil.iter405.cmp.not, label %._crit_edge.i220, label %.lr.ph.split.us.i.epil, !llvm.loop !262

._crit_edge.i220.loopexit390.unr-lcssa:           ; preds = %.lr.ph.split.i
  %lcmp.mod400.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod400.not, label %._crit_edge.i220, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.i220.loopexit390.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i218.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i219.3, %._crit_edge.i220.loopexit390.unr-lcssa ]
  %.0117159.i.epil.init = phi ptr [ %i.nj, %.lr.ph.split.i.preheader ], [ %i.uf, %._crit_edge.i220.loopexit390.unr-lcssa ]
  %lcmp.mod401 = icmp ne i64 %xtraiter398, 0
  call void @llvm.assume(i1 %lcmp.mod401)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i218.epil = phi i64 [ %indvars.iv.next.i219.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i218.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %.0117159.i.epil = phi ptr [ %i.un, %.lr.ph.split.i.epil ], [ %.0117159.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %epil.iter399 = phi i64 [ %epil.iter399.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.uk = getelementptr inbounds nuw i8, ptr %.0117159.i.epil, i64 48
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !53
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv.i218.epil
  store ptr %i.ul, ptr %i.um, align 8, !tbaa !191
  %i.un = getelementptr inbounds nuw i8, ptr %.0117159.i.epil, i64 112
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
  %.074112.i = phi ptr [ %i.wl, %.lr.ph.i222 ], [ %i.aax, %.loopexit.i ] ; 5 uses
  %.085111.i = phi ptr [ %i.wj, %.lr.ph.i222 ], [ %i.aaw, %.loopexit.i ] ; 3 uses
  %.086110.i = phi ptr [ %i.wg, %.lr.ph.i222 ], [ %i.aav, %.loopexit.i ] ; 4 uses
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
  %.075.i = phi i64 [ %i.xv, %bb.ca ], [ 0, %bb.bz ] ; 3 uses
  %i.xw = phi <2 x i32> [ %i.xi, %bb.ca ], [ %i.xd, %bb.bz ] ; 5 uses
  %.078.i = load ptr, ptr %.078.in.i, align 8, !tbaa !264 ; 4 uses
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
  %scevgep = getelementptr i8, ptr %.078.i, i64 4
  %12 = shl nuw nsw i64 %.075.i, 2
  %13 = add nuw nsw i64 %12, 4
  %i.yn = extractelement <2 x i32> %i.xw, i64 0   ; 6 uses
  %i.yo = add i32 %i.yn, -1
  %i.yp = zext i32 %i.yo to i64
  %i.yq = shl nuw nsw i64 %i.yp, 2                ; 2 uses
  %14 = add nuw nsw i64 %13, %i.yq
  %i.yr = extractelement <2 x i32> %i.xw, i64 1   ; 2 uses
  %15 = add i32 %i.yr, -1
  %16 = zext i32 %15 to i64
  %17 = mul i64 %14, %16
  %18 = getelementptr i8, ptr %scevgep, i64 %17
  %scevgep379 = getelementptr i8, ptr %18, i64 %i.yq
  %i.ys = zext i32 %i.yn to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.yn, 8
  %bound0 = icmp ult ptr %.078.i, %scevgep381
  %min.iters.check.a = icmp ult ptr %scevgep380, %scevgep379
  %found.conflict = and i1 %bound0, %min.iters.check.a
  %n.vec = and i64 %i.ys, 4294967288              ; 4 uses
  %i.yt = shl nuw nsw i64 %n.vec, 2
  %i.yu = trunc nuw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.077.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert382 = insertelement <4 x i32> poison, i32 %.076.i, i64 0
  %broadcast.splat383 = shufflevector <4 x i32> %broadcast.splatinsert382, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ys
  br label %vector.memcheck

.preheader96.preheader.i:                         ; preds = %bb.cf
  %i.yv = sext i32 %.077.i to i64
  %i.yw = zext nneg i32 %.076.i to i64
  %i.yx = extractelement <2 x i32> %i.xw, i64 1
  %i.yy = extractelement <2 x i32> %i.xw, i64 0
  br label %.preheader96.i

vector.memcheck:                                  ; preds = %.preheader.i229.preheader, %._crit_edge106.i
  %.1109.i = phi ptr [ %i.aaf, %._crit_edge106.i ], [ %.078.i, %.preheader.i229.preheader ] ; 3 uses
  %.079108.i = phi i32 [ %i.aag, %._crit_edge106.i ], [ 0, %.preheader.i229.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.yz = getelementptr i8, ptr %.1109.i, i64 %i.yt ; 2 uses
  %i.za = load i32, ptr %i.ym, align 4, !tbaa !173, !alias.scope !265
  %broadcast.splatinsert385 = insertelement <4 x i32> poison, i32 %i.za, i64 0
  %broadcast.splat386 = shufflevector <4 x i32> %broadcast.splatinsert385, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1109.i, i64 %i.zb ; 3 uses
  %i.zc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %wide.load384 = load <4 x i32>, ptr %i.zc, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %i.zd = add nsw <4 x i32> %broadcast.splat386, %wide.load ; 2 uses
  %i.ze = add nsw <4 x i32> %broadcast.splat386, %wide.load384 ; 2 uses
  %i.zf = icmp slt <4 x i32> %i.zd, %broadcast.splat
  %i.zg = icmp slt <4 x i32> %i.ze, %broadcast.splat
  %i.zh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zd, <4 x i32> %broadcast.splat383)
  %i.zi = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ze, <4 x i32> %broadcast.splat383)
  %i.zj = select <4 x i1> %i.zf, <4 x i32> %broadcast.splat, <4 x i32> %i.zh
  %i.zk = select <4 x i1> %i.zg, <4 x i32> %broadcast.splat, <4 x i32> %i.zi
  store <4 x i32> %i.zj, ptr %next.gep, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  store <4 x i32> %i.zk, ptr %i.zc, align 4, !tbaa !3, !alias.scope !268, !noalias !265
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zl = icmp eq i64 %index.next, %n.vec
  br i1 %i.zl, label %middle.block, label %vector.body, !llvm.loop !270

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge106.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %middle.block
  %.2105.i.ph = phi ptr [ %i.yz, %middle.block ], [ %.1109.i, %vector.memcheck ] ; 4 uses
  %.081104.i.ph = phi i32 [ %i.yu, %middle.block ], [ 0, %vector.memcheck ] ; 4 uses
  %i.zm = sub i32 %i.yn, %.081104.i.ph
  %.neg = add i32 %.081104.i.ph, 1
  %xtraiter410 = and i32 %i.zm, 1
  %lcmp.mod411.not = icmp eq i32 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.zn = load i32, ptr %.2105.i.ph, align 4, !tbaa !3
  %i.zo = load i32, ptr %i.ym, align 4, !tbaa !173
  %i.zp = add nsw i32 %i.zo, %i.zn                ; 2 uses
  %i.zq = icmp slt i32 %i.zp, %.077.i
  %..i.i.prol = call i32 @llvm.smin.i32(i32 %i.zp, i32 %.076.i)
  %.0.i.i.prol = select i1 %i.zq, i32 %.077.i, i32 %..i.i.prol
  store i32 %.0.i.i.prol, ptr %.2105.i.ph, align 4, !tbaa !3
  %i.zr = getelementptr inbounds nuw i8, ptr %.2105.i.ph, i64 4 ; 2 uses
  %i.zs = add nuw i32 %.081104.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa389.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.zr, %scalar.ph.prol ]
  %.2105.i.unr = phi ptr [ %.2105.i.ph, %scalar.ph.preheader ], [ %i.zr, %scalar.ph.prol ]
  %.081104.i.unr = phi i32 [ %.081104.i.ph, %scalar.ph.preheader ], [ %i.zs, %scalar.ph.prol ]
  %i.zt = icmp eq i32 %i.yn, %.neg
  br i1 %i.zt, label %._crit_edge106.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.2105.i = phi ptr [ %i.aad, %scalar.ph ], [ %.2105.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.081104.i = phi i32 [ %i.aae, %scalar.ph ], [ %.081104.i.unr, %scalar.ph.prol.loopexit ]
  %i.zu = load i32, ptr %.2105.i, align 4, !tbaa !3
  %i.zv = load i32, ptr %i.ym, align 4, !tbaa !173
  %i.zw = add nsw i32 %i.zv, %i.zu                ; 2 uses
  %i.zx = icmp slt i32 %i.zw, %.077.i
  %..i.i = call i32 @llvm.smin.i32(i32 %i.zw, i32 %.076.i)
  %.0.i.i = select i1 %i.zx, i32 %.077.i, i32 %..i.i
  store i32 %.0.i.i, ptr %.2105.i, align 4, !tbaa !3
  %i.zy = getelementptr inbounds nuw i8, ptr %.2105.i, i64 4 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !3
  %i.aaa = load i32, ptr %i.ym, align 4, !tbaa !173
  %i.aab = add nsw i32 %i.aaa, %i.zz              ; 2 uses
  %i.aac = icmp slt i32 %i.aab, %.077.i
  %..i.i.1 = call i32 @llvm.smin.i32(i32 %i.aab, i32 %.076.i)
  %.0.i.i.1 = select i1 %i.aac, i32 %.077.i, i32 %..i.i.1
  store i32 %.0.i.i.1, ptr %i.zy, align 4, !tbaa !3
  %i.aad = getelementptr inbounds nuw i8, ptr %.2105.i, i64 8 ; 2 uses
  %i.aae = add nuw i32 %.081104.i, 2              ; 2 uses
  %exitcond124.not.i.1 = icmp eq i32 %i.aae, %i.yn
  br i1 %exitcond124.not.i.1, label %._crit_edge106.i, label %scalar.ph, !llvm.loop !271

._crit_edge106.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa374 = phi ptr [ %i.yz, %middle.block ], [ %.lcssa389.unr, %scalar.ph.prol.loopexit ], [ %i.aad, %scalar.ph ]
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %.lcssa374, i64 %.075.i
  %i.aag = add nuw i32 %.079108.i, 1              ; 2 uses
  %exitcond125.not.i = icmp eq i32 %i.aag, %i.yr
  br i1 %exitcond125.not.i, label %.loopexit.i, label %vector.memcheck, !llvm.loop !272

.preheader96.i:                                   ; preds = %._crit_edge.i227, %.preheader96.preheader.i
  %.3103.i = phi ptr [ %i.aat, %._crit_edge.i227 ], [ %.078.i, %.preheader96.preheader.i ]
  %.180102.i = phi i32 [ %i.aau, %._crit_edge.i227 ], [ 0, %.preheader96.preheader.i ]
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cj, %.preheader96.i
  %.4101.i = phi ptr [ %.3103.i, %.preheader96.i ], [ %i.aar, %bb.cj ] ; 3 uses
  %.182100.i = phi i32 [ 0, %.preheader96.i ], [ %i.aas, %bb.cj ]
  %i.aah = load float, ptr %.4101.i, align 4, !tbaa !174 ; 3 uses
  %i.aai = fcmp ogt float %i.aah, f0x4F000000
  br i1 %i.aai, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aaj = fcmp olt float %i.aah, f0xCF000000
  br i1 %i.aaj, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aak = call i64 @lrintf(float noundef %i.aah) #15, !tbaa !3
  %i.aal = load i32, ptr %i.ym, align 4, !tbaa !173
  %i.aam = sext i32 %i.aal to i64
  %i.aan = add nsw i64 %i.aak, %i.aam             ; 2 uses
  %i.aao = icmp slt i64 %i.aan, %i.yv
  %..i92.i = call i64 @llvm.smin.i64(i64 %i.aan, i64 range(i64 -2147483648, 2147483648) %i.yw)
  %i.aap = trunc nsw i64 %..i92.i to i32
  %i.aaq = select i1 %i.aao, i32 %.077.i, i32 %i.aap
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.077.sink.i = phi i32 [ %.076.i, %bb.cg ], [ %i.aaq, %bb.ci ], [ %.077.i, %bb.ch ]
  store i32 %.077.sink.i, ptr %.4101.i, align 4, !tbaa !3
  %i.aar = getelementptr inbounds nuw i8, ptr %.4101.i, i64 4 ; 2 uses
  %i.aas = add nuw i32 %.182100.i, 1              ; 2 uses
  %exitcond.not.i226 = icmp eq i32 %i.aas, %i.yy
  br i1 %exitcond.not.i226, label %._crit_edge.i227, label %bb.cg, !llvm.loop !273

._crit_edge.i227:                                 ; preds = %bb.cj
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %.075.i
  %i.aau = add nuw i32 %.180102.i, 1              ; 2 uses
  %exitcond123.not.i = icmp eq i32 %i.aau, %i.yx
  br i1 %exitcond123.not.i, label %.loopexit.i, label %.preheader96.i, !llvm.loop !274

.loopexit.i:                                      ; preds = %._crit_edge.i227, %._crit_edge106.i, %bb.ce, %bb.bx
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i224, 1 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %.086110.i, i64 64
  %i.aaw = getelementptr inbounds nuw i8, ptr %.085111.i, i64 1080
  %i.aax = getelementptr inbounds nuw i8, ptr %.074112.i, i64 112
  %i.aay = load i32, ptr %i.wc, align 8, !tbaa !30
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = icmp samesign ult i64 %indvars.iv.next.i228, %i.aaz
  br i1 %i.aba, label %bb.bw, label %.critedge, !llvm.loop !275

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

bb.k:                                             ; preds = %bb.j
  %i.br = add i32 %i.bo, %.04859.i                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.04660.i, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %.04461.i, i64 112
  %i.bu = add nuw i32 %.05058.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bu, %i.d
  br i1 %exitcond.not.i, label %opj_tcd_get_decoded_tile_size.exit, label %.lr.ph.i.split, !llvm.loop !158

opj_tcd_get_decoded_tile_size.exit:               ; preds = %bb.k, %bb.f
  %.2.i = phi i32 [ %i.an, %bb.f ], [ %i.br, %bb.k ] ; 2 uses
  %i.bv = icmp ne i32 %.2.i, -1
  %i.bw = icmp ule i32 %.2.i, %2
  %or.cond.not = and i1 %i.bv, %i.bw              ; 2 uses
  %.mux = zext i1 %or.cond.not to i32
  br i1 %or.cond.not, label %.lr.ph210, label %opj_tcd_get_decoded_tile_size.exit.thread

.lr.ph210:                                        ; preds = %opj_tcd_get_decoded_tile_size.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !70
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !7
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph210, %.loopexit
  %.0102209 = phi ptr [ %1, %.lr.ph210 ], [ %.1, %.loopexit ] ; 24 uses
  %.0122208 = phi i32 [ 0, %.lr.ph210 ], [ %i.nr, %.loopexit ]
  %.0129207 = phi ptr [ %i.cd, %.lr.ph210 ], [ %i.nq, %.loopexit ] ; 4 uses
  %.0130206 = phi ptr [ %i.by, %.lr.ph210 ], [ %i.np, %.loopexit ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0130206, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !113 ; 2 uses
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = and i32 %i.cg, 7
  %i.cj = getelementptr inbounds nuw i8, ptr %.0129207, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0130206, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !86
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [192 x i8], ptr %i.ck, i64 %i.cn ; 4 uses
  %i.cp = load i32, ptr %i.ce, align 8, !tbaa !155
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load <2 x i32>, ptr %i.cq, align 8, !tbaa !3
  %i.cs = load <2 x i32>, ptr %i.co, align 8, !tbaa !3
  %i.ct = sub nsw <2 x i32> %i.cr, %i.cs          ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0129207, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !96
  %i.cw = add i32 %i.cv, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [192 x i8], ptr %i.ck, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !100
  %i.db = load i32, ptr %i.cy, align 8, !tbaa !97
  %i.dc = extractelement <2 x i32> %i.ct, i64 0
  %i.dd = add i32 %i.dc, %i.db
  %i.de = sub i32 %i.da, %i.dd
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 184
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  %i.dh = load <2 x i32>, ptr %i.df, align 8, !tbaa !3
  %i.di = load <2 x i32>, ptr %i.dg, align 8, !tbaa !3
  %i.dj = sub <2 x i32> %i.dh, %i.di
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i64 [ 80, %bb.n ], [ 48, %bb.m ]
  %.0121 = phi i32 [ 0, %bb.n ], [ %i.de, %bb.m ] ; 5 uses
  %i.dk = phi <2 x i32> [ %i.dj, %bb.n ], [ %i.ct, %bb.m ] ; 4 uses
  %i.dl = extractelement <2 x i32> %i.dk, i64 0   ; 32 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0129207, i64 %.sink
  %.0118 = load ptr, ptr %i.dm, align 8, !tbaa !264 ; 14 uses
  %.not136 = icmp ne i32 %i.ci, 0
  %i.dn = zext i1 %.not136 to i32
  %spec.select = add nuw nsw i32 %i.ch, %i.dn     ; 2 uses
  %i.do = icmp eq i32 %spec.select, 3
  %spec.store.select = select i1 %i.do, i32 4, i32 %spec.select
  switch i32 %spec.store.select, label %.loopexit [
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 4, label %.preheader153
  ]

.preheader153:                                    ; preds = %bb.o
  %i.dp = extractelement <2 x i32> %i.dk, i64 1   ; 4 uses
  %.not212 = icmp eq i32 %i.dp, 0
  br i1 %.not212, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader153
  %i.dq = zext i32 %i.dl to i64                   ; 6 uses
  %i.dr = shl nuw nsw i64 %i.dq, 2                ; 5 uses
  %i.ds = add i32 %i.dl, %.0121
  %i.dt = zext i32 %i.ds to i64                   ; 5 uses
  %xtraiter = and i32 %i.dp, 3                    ; 3 uses
  %i.du = icmp ult i32 %i.dp, 4
  br i1 %i.du, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.dp, -4
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %.0130206, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !194
  %.not138 = icmp eq i32 %i.dw, 0
  %i.dx = extractelement <2 x i32> %i.dk, i64 1   ; 5 uses
  %.not219 = icmp eq i32 %i.dx, 0                 ; 2 uses
  br i1 %.not138, label %.preheader146, label %.preheader147

.preheader147:                                    ; preds = %bb.p
  br i1 %.not219, label %.loopexit, label %.preheader143.lr.ph

.preheader143.lr.ph:                              ; preds = %.preheader147
  %.not218 = icmp eq i32 %i.dl, 0
  %i.dy = zext i32 %.0121 to i64                  ; 2 uses
  br i1 %.not218, label %.loopexit, label %.preheader143.us.preheader

.preheader143.us.preheader:                       ; preds = %.preheader143.lr.ph
  %scevgep306 = getelementptr i8, ptr %.0102209, i64 1
  %i.dz = add i32 %i.dl, -1
  %3 = zext i32 %i.dz to i64                      ; 2 uses
  %4 = zext i32 %i.dl to i64
  %5 = add i32 %i.dx, -1
  %i.ea = zext i32 %5 to i64                      ; 2 uses
  %6 = mul nuw i64 %4, %i.ea
  %7 = getelementptr i8, ptr %scevgep306, i64 %6
  %scevgep307 = getelementptr i8, ptr %7, i64 %3
  %scevgep308 = getelementptr i8, ptr %.0118, i64 4
  %8 = shl nuw nsw i64 %i.dy, 2
  %9 = add nuw nsw i64 %8, 4
  %i.eb = shl nuw nsw i64 %3, 2                   ; 2 uses
  %10 = add nuw nsw i64 %9, %i.eb
  %11 = mul i64 %10, %i.ea
  %12 = getelementptr i8, ptr %scevgep308, i64 %11
  %scevgep309 = getelementptr i8, ptr %12, i64 %i.eb
  %i.ec = zext i32 %i.dl to i64                   ; 2 uses
  %min.iters.check314 = icmp ult i32 %i.dl, 8
  %bound0310 = icmp ult ptr %.0102209, %scevgep309
  %bound1311 = icmp ult ptr %.0118, %scevgep307
  %found.conflict312 = and i1 %bound0310, %bound1311
  %n.vec317 = and i64 %i.ec, 4294967288           ; 5 uses
  %i.ed = shl nuw nsw i64 %n.vec317, 2
  %i.ee = trunc nuw i64 %n.vec317 to i32
  %cmp.n326 = icmp eq i64 %n.vec317, %i.ec
  br label %.preheader143.us

.preheader143.us:                                 ; preds = %.preheader143.us.preheader, %._crit_edge.us192
  %.0109190.us = phi ptr [ %i.gc, %._crit_edge.us192 ], [ %.0118, %.preheader143.us.preheader ] ; 3 uses
  %.0113189.us = phi ptr [ %.lcssa292, %._crit_edge.us192 ], [ %.0102209, %.preheader143.us.preheader ] ; 3 uses
  %.0124188.us = phi i32 [ %i.gd, %._crit_edge.us192 ], [ 0, %.preheader143.us.preheader ]
  %brmerge = select i1 %min.iters.check314, i1 true, i1 %found.conflict312
  br i1 %brmerge, label %scalar.ph313.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %.preheader143.us
  %i.ef = getelementptr i8, ptr %.0109190.us, i64 %i.ed ; 2 uses
  %i.eg = getelementptr i8, ptr %.0113189.us, i64 %n.vec317 ; 2 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph315
  %index319 = phi i64 [ 0, %vector.ph315 ], [ %index.next324, %vector.body318 ] ; 3 uses
  %i.eh = shl i64 %index319, 2
  %next.gep320 = getelementptr i8, ptr %.0109190.us, i64 %i.eh ; 2 uses
  %next.gep321 = getelementptr i8, ptr %.0113189.us, i64 %index319 ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep320, i64 16
  %wide.load322 = load <4 x i32>, ptr %next.gep320, align 4, !tbaa !3, !alias.scope !276
  %wide.load323 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !3, !alias.scope !276
  %i.ej = trunc <4 x i32> %wide.load322 to <4 x i8>
  %i.ek = trunc <4 x i32> %wide.load323 to <4 x i8>
  %i.el = getelementptr i8, ptr %next.gep321, i64 4
  store <4 x i8> %i.ej, ptr %next.gep321, align 1, !tbaa !31, !alias.scope !279, !noalias !276
  store <4 x i8> %i.ek, ptr %i.el, align 1, !tbaa !31, !alias.scope !279, !noalias !276
  %index.next324 = add nuw i64 %index319, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.em, label %middle.block325, label %vector.body318, !llvm.loop !281

middle.block325:                                  ; preds = %vector.body318
  br i1 %cmp.n326, label %._crit_edge.us192, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %.preheader143.us, %middle.block325
  %.1110184.us.ph = phi ptr [ %i.ef, %middle.block325 ], [ %.0109190.us, %.preheader143.us ] ; 2 uses
  %.1114183.us.ph = phi ptr [ %i.eg, %middle.block325 ], [ %.0113189.us, %.preheader143.us ] ; 2 uses
  %.0131182.us.ph = phi i32 [ %i.ee, %middle.block325 ], [ 0, %.preheader143.us ] ; 4 uses
  %i.en = sub i32 %i.dl, %.0131182.us.ph
  %xtraiter404 = and i32 %i.en, 7                 ; 2 uses
  %lcmp.mod405.not = icmp eq i32 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %scalar.ph313.prol.loopexit, label %scalar.ph313.prol

scalar.ph313.prol:                                ; preds = %scalar.ph313.preheader, %scalar.ph313.prol
  %.1110184.us.prol = phi ptr [ %i.eo, %scalar.ph313.prol ], [ %.1110184.us.ph, %scalar.ph313.preheader ] ; 2 uses
  %.1114183.us.prol = phi ptr [ %i.er, %scalar.ph313.prol ], [ %.1114183.us.ph, %scalar.ph313.preheader ] ; 2 uses
  %.0131182.us.prol = phi i32 [ %i.es, %scalar.ph313.prol ], [ %.0131182.us.ph, %scalar.ph313.preheader ]
  %prol.iter406 = phi i32 [ %prol.iter406.next, %scalar.ph313.prol ], [ 0, %scalar.ph313.preheader ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.1110184.us.prol, i64 4 ; 3 uses
  %i.ep = load i32, ptr %.1110184.us.prol, align 4, !tbaa !3
  %i.eq = trunc i32 %i.ep to i8
  %i.er = getelementptr inbounds nuw i8, ptr %.1114183.us.prol, i64 1 ; 3 uses
  store i8 %i.eq, ptr %.1114183.us.prol, align 1, !tbaa !31
  %i.es = add nuw i32 %.0131182.us.prol, 1        ; 2 uses
  %prol.iter406.next = add i32 %prol.iter406, 1   ; 2 uses
  %prol.iter406.cmp.not = icmp eq i32 %prol.iter406.next, %xtraiter404
  br i1 %prol.iter406.cmp.not, label %scalar.ph313.prol.loopexit, label %scalar.ph313.prol, !llvm.loop !282

scalar.ph313.prol.loopexit:                       ; preds = %scalar.ph313.prol, %scalar.ph313.preheader
  %.lcssa389.unr = phi ptr [ poison, %scalar.ph313.preheader ], [ %i.eo, %scalar.ph313.prol ]
  %.lcssa388.unr = phi ptr [ poison, %scalar.ph313.preheader ], [ %i.er, %scalar.ph313.prol ]
  %.1110184.us.unr = phi ptr [ %.1110184.us.ph, %scalar.ph313.preheader ], [ %i.eo, %scalar.ph313.prol ]
  %.1114183.us.unr = phi ptr [ %.1114183.us.ph, %scalar.ph313.preheader ], [ %i.er, %scalar.ph313.prol ]
  %.0131182.us.unr = phi i32 [ %.0131182.us.ph, %scalar.ph313.preheader ], [ %i.es, %scalar.ph313.prol ]
  %i.et = sub i32 %.0131182.us.ph, %i.dl
  %i.eu = icmp ugt i32 %i.et, -8
  br i1 %i.eu, label %._crit_edge.us192, label %scalar.ph313

scalar.ph313:                                     ; preds = %scalar.ph313.prol.loopexit, %scalar.ph313
  %.1110184.us = phi ptr [ %i.fx, %scalar.ph313 ], [ %.1110184.us.unr, %scalar.ph313.prol.loopexit ] ; 9 uses
  %.1114183.us = phi ptr [ %i.ga, %scalar.ph313 ], [ %.1114183.us.unr, %scalar.ph313.prol.loopexit ] ; 9 uses
  %.0131182.us = phi i32 [ %i.gb, %scalar.ph313 ], [ %.0131182.us.unr, %scalar.ph313.prol.loopexit ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 4
  %i.ew = load i32, ptr %.1110184.us, align 4, !tbaa !3
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 1
  store i8 %i.ex, ptr %.1114183.us, align 1, !tbaa !31
  %i.ez = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 8
  %i.fa = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 2
  store i8 %i.fb, ptr %i.ey, align 1, !tbaa !31
  %i.fd = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 12
  %i.fe = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.ff = trunc i32 %i.fe to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 3
  store i8 %i.ff, ptr %i.fc, align 1, !tbaa !31
  %i.fh = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 16
  %i.fi = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 4
  store i8 %i.fj, ptr %i.fg, align 1, !tbaa !31
  %i.fl = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 20
  %i.fm = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 5
  store i8 %i.fn, ptr %i.fk, align 1, !tbaa !31
  %i.fp = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 24
  %i.fq = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 6
  store i8 %i.fr, ptr %i.fo, align 1, !tbaa !31
  %i.ft = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 28
  %i.fu = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 7
  store i8 %i.fv, ptr %i.fs, align 1, !tbaa !31
  %i.fx = getelementptr inbounds nuw i8, ptr %.1110184.us, i64 32 ; 2 uses
  %i.fy = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fz = trunc i32 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 8 ; 2 uses
  store i8 %i.fz, ptr %i.fw, align 1, !tbaa !31
  %i.gb = add nuw i32 %.0131182.us, 8             ; 2 uses
  %exitcond246.not.7 = icmp eq i32 %i.gb, %i.dl
  br i1 %exitcond246.not.7, label %._crit_edge.us192, label %scalar.ph313, !llvm.loop !283

._crit_edge.us192:                                ; preds = %scalar.ph313.prol.loopexit, %scalar.ph313, %middle.block325
  %.lcssa293 = phi ptr [ %i.ef, %middle.block325 ], [ %.lcssa389.unr, %scalar.ph313.prol.loopexit ], [ %i.fx, %scalar.ph313 ]
  %.lcssa292 = phi ptr [ %i.eg, %middle.block325 ], [ %.lcssa388.unr, %scalar.ph313.prol.loopexit ], [ %i.ga, %scalar.ph313 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.lcssa293, i64 %i.dy
  %i.gd = add nuw i32 %.0124188.us, 1             ; 2 uses
  %exitcond247.not = icmp eq i32 %i.gd, %i.dx
  br i1 %exitcond247.not, label %.loopexit, label %.preheader143.us, !llvm.loop !284

.preheader146:                                    ; preds = %bb.p
  br i1 %.not219, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader146
  %.not220 = icmp eq i32 %i.dl, 0
  %i.ge = zext i32 %.0121 to i64                  ; 2 uses
  br i1 %.not220, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %scevgep = getelementptr i8, ptr %.0102209, i64 1
  %i.gf = add i32 %i.dl, -1
  %13 = zext i32 %i.gf to i64                     ; 2 uses
  %14 = zext i32 %i.dl to i64
  %15 = add i32 %i.dx, -1
  %i.gg = zext i32 %15 to i64                     ; 2 uses
  %16 = mul nuw i64 %14, %i.gg
  %17 = getelementptr i8, ptr %scevgep, i64 %16
  %scevgep298 = getelementptr i8, ptr %17, i64 %13
  %scevgep299 = getelementptr i8, ptr %.0118, i64 4
  %18 = shl nuw nsw i64 %i.ge, 2
  %19 = add nuw nsw i64 %18, 4
  %i.gh = shl nuw nsw i64 %13, 2                  ; 2 uses
  %20 = add nuw nsw i64 %19, %i.gh
  %21 = mul i64 %20, %i.gg
  %22 = getelementptr i8, ptr %scevgep299, i64 %21
  %scevgep300 = getelementptr i8, ptr %22, i64 %i.gh
  %i.gi = zext i32 %i.dl to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.dl, 8
  %bound0 = icmp ult ptr %.0102209, %scevgep300
  %bound1 = icmp ult ptr %.0118, %scevgep298
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.gi, 4294967288              ; 5 uses
  %i.gj = shl nuw nsw i64 %n.vec, 2
  %i.gk = trunc nuw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.gi
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us204
  %.2111202.us = phi ptr [ %i.ii, %._crit_edge.us204 ], [ %.0118, %.preheader.us.preheader ] ; 3 uses
  %.2115201.us = phi ptr [ %.lcssa294, %._crit_edge.us204 ], [ %.0102209, %.preheader.us.preheader ] ; 3 uses
  %.1125200.us = phi i32 [ %i.ij, %._crit_edge.us204 ], [ 0, %.preheader.us.preheader ]
  %brmerge435 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge435, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %i.gl = getelementptr i8, ptr %.2111202.us, i64 %i.gj ; 2 uses
  %i.gm = getelementptr i8, ptr %.2115201.us, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.2111202.us, i64 %i.gn ; 2 uses
  %next.gep301 = getelementptr i8, ptr %.2115201.us, i64 %index ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !285
  %wide.load302 = load <4 x i32>, ptr %i.go, align 4, !tbaa !3, !alias.scope !285
  %i.gp = trunc <4 x i32> %wide.load to <4 x i8>
  %i.gq = trunc <4 x i32> %wide.load302 to <4 x i8>
  %i.gr = getelementptr i8, ptr %next.gep301, i64 4
  store <4 x i8> %i.gp, ptr %next.gep301, align 1, !tbaa !31, !alias.scope !288, !noalias !285
  store <4 x i8> %i.gq, ptr %i.gr, align 1, !tbaa !31, !alias.scope !288, !noalias !285
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us204, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %.3112196.us.ph = phi ptr [ %i.gl, %middle.block ], [ %.2111202.us, %.preheader.us ] ; 2 uses
  %.3116195.us.ph = phi ptr [ %i.gm, %middle.block ], [ %.2115201.us, %.preheader.us ] ; 2 uses
  %.1132194.us.ph = phi i32 [ %i.gk, %middle.block ], [ 0, %.preheader.us ] ; 4 uses
  %i.gt = sub i32 %i.dl, %.1132194.us.ph
  %xtraiter407 = and i32 %i.gt, 7                 ; 2 uses
  %lcmp.mod408.not = icmp eq i32 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.3112196.us.prol = phi ptr [ %i.gu, %scalar.ph.prol ], [ %.3112196.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.3116195.us.prol = phi ptr [ %i.gx, %scalar.ph.prol ], [ %.3116195.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1132194.us.prol = phi i32 [ %i.gy, %scalar.ph.prol ], [ %.1132194.us.ph, %scalar.ph.preheader ]
  %prol.iter409 = phi i32 [ %prol.iter409.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.3112196.us.prol, i64 4 ; 3 uses
  %i.gv = load i32, ptr %.3112196.us.prol, align 4, !tbaa !3
  %i.gw = trunc i32 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %.3116195.us.prol, i64 1 ; 3 uses
  store i8 %i.gw, ptr %.3116195.us.prol, align 1, !tbaa !31
  %i.gy = add nuw i32 %.1132194.us.prol, 1        ; 2 uses
  %prol.iter409.next = add i32 %prol.iter409, 1   ; 2 uses
  %prol.iter409.cmp.not = icmp eq i32 %prol.iter409.next, %xtraiter407
  br i1 %prol.iter409.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !291

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa391.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gu, %scalar.ph.prol ]
  %.lcssa390.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gx, %scalar.ph.prol ]
  %.3112196.us.unr = phi ptr [ %.3112196.us.ph, %scalar.ph.preheader ], [ %i.gu, %scalar.ph.prol ]
  %.3116195.us.unr = phi ptr [ %.3116195.us.ph, %scalar.ph.preheader ], [ %i.gx, %scalar.ph.prol ]
  %.1132194.us.unr = phi i32 [ %.1132194.us.ph, %scalar.ph.preheader ], [ %i.gy, %scalar.ph.prol ]
  %i.gz = sub i32 %.1132194.us.ph, %i.dl
  %i.ha = icmp ugt i32 %i.gz, -8
  br i1 %i.ha, label %._crit_edge.us204, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.3112196.us = phi ptr [ %i.id, %scalar.ph ], [ %.3112196.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.3116195.us = phi ptr [ %i.ig, %scalar.ph ], [ %.3116195.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.1132194.us = phi i32 [ %i.ih, %scalar.ph ], [ %.1132194.us.unr, %scalar.ph.prol.loopexit ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.3112196.us, i64 4
  %i.hc = load i32, ptr %.3112196.us, align 4, !tbaa !3
  %i.hd = trunc i32 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 1
  store i8 %i.hd, ptr %.3116195.us, align 1, !tbaa !31
  %i.hf = getelementptr inbounds nuw i8, ptr %.3112196.us, i64 8
  %i.hg = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hh = trunc i32 %i.hg to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 2
  store i8 %i.hh, ptr %i.he, align 1, !tbaa !31
  %i.hj = getelementptr inbounds nuw i8, ptr %.3112196.us, i64 12
  %i.hk = load i32, ptr %i.hf, align 4, !tbaa !3
  %i.hl = trunc i32 %i.hk to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 3
  store i8 %i.hl, ptr %i.hi, align 1, !tbaa !31
  %i.hn = getelementptr inbounds nuw i8, ptr %.3112196.us, i64 16
  %i.ho = load i32, ptr %i.hj, align 4, !tbaa !3
  %i.hp = trunc i32 %i.ho to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 4
  store i8 %i.hp, ptr %i.hm, align 1, !tbaa !31
  %i.hr = getelementptr inbounds nuw i8, ptr %.3112196.us, i64 20
  %i.hs = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.ht = trunc i32 %i.hs to i8
  %i.hu = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 5
  store i8 %i.ht, ptr %i.hq, align 1, !tbaa !31
  %i.hv = getelementptr inbounds nuw i8, ptr %.3112196.us, i64 24
  %i.hw = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.hx = trunc i32 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 6
  store i8 %i.hx, ptr %i.hu, align 1, !tbaa !31
  %i.hz = getelementptr inbounds nuw i8, ptr %.3112196.us, i64 28
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !3
  %i.ib = trunc i32 %i.ia to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 7
  store i8 %i.ib, ptr %i.hy, align 1, !tbaa !31
  %i.id = getelementptr inbounds nuw i8, ptr %.3112196.us, i64 32 ; 2 uses
  %i.ie = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.if = trunc i32 %i.ie to i8
  %i.ig = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 8 ; 2 uses
  store i8 %i.if, ptr %i.ic, align 1, !tbaa !31
  %i.ih = add nuw i32 %.1132194.us, 8             ; 2 uses
  %exitcond248.not.7 = icmp eq i32 %i.ih, %i.dl
  br i1 %exitcond248.not.7, label %._crit_edge.us204, label %scalar.ph, !llvm.loop !292

._crit_edge.us204:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa295 = phi ptr [ %i.gl, %middle.block ], [ %.lcssa391.unr, %scalar.ph.prol.loopexit ], [ %i.id, %scalar.ph ]
  %.lcssa294 = phi ptr [ %i.gm, %middle.block ], [ %.lcssa390.unr, %scalar.ph.prol.loopexit ], [ %i.ig, %scalar.ph ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.lcssa295, i64 %i.ge
  %i.ij = add nuw i32 %.1125200.us, 1             ; 2 uses
  %exitcond249.not = icmp eq i32 %i.ij, %i.dx
  br i1 %exitcond249.not, label %.loopexit, label %.preheader.us, !llvm.loop !293

bb.q:                                             ; preds = %bb.o
  %i.ik = getelementptr inbounds nuw i8, ptr %.0130206, i64 32
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !194
  %.not137 = icmp eq i32 %i.il, 0
  %i.im = extractelement <2 x i32> %i.dk, i64 1   ; 5 uses
  %.not215 = icmp eq i32 %i.im, 0                 ; 2 uses
  br i1 %.not137, label %.preheader149, label %.preheader151

.preheader151:                                    ; preds = %bb.q
  br i1 %.not215, label %.loopexit, label %.preheader145.lr.ph

.preheader145.lr.ph:                              ; preds = %.preheader151
  %.not214 = icmp eq i32 %i.dl, 0
  %i.in = zext i32 %.0121 to i64                  ; 2 uses
  br i1 %.not214, label %.loopexit, label %.preheader145.us.preheader

.preheader145.us.preheader:                       ; preds = %.preheader145.lr.ph
  %scevgep356 = getelementptr i8, ptr %.0102209, i64 2
  %i.io = add i32 %i.dl, -1
  %23 = zext i32 %i.io to i64                     ; 2 uses
  %24 = shl nuw nsw i64 %23, 1                    ; 2 uses
  %25 = add nuw nsw i64 %24, 2
  %26 = add i32 %i.im, -1
  %i.ip = zext i32 %26 to i64                     ; 2 uses
  %27 = mul i64 %25, %i.ip
  %28 = getelementptr i8, ptr %scevgep356, i64 %27
  %scevgep357 = getelementptr i8, ptr %28, i64 %24
  %scevgep358 = getelementptr i8, ptr %.0118, i64 4
  %i.iq = shl nuw nsw i64 %i.in, 2
  %29 = add nuw nsw i64 %i.iq, 4
  %i.ir = shl nuw nsw i64 %23, 2                  ; 2 uses
  %30 = add nuw nsw i64 %29, %i.ir
  %31 = mul i64 %30, %i.ip
  %32 = getelementptr i8, ptr %scevgep358, i64 %31
  %scevgep359 = getelementptr i8, ptr %32, i64 %i.ir
  %i.is = zext i32 %i.dl to i64                   ; 2 uses
  %min.iters.check364 = icmp ult i32 %i.dl, 8
  %bound0360 = icmp ult ptr %.0102209, %scevgep359
  %bound1361 = icmp ult ptr %.0118, %scevgep357
  %found.conflict362 = and i1 %bound0360, %bound1361
  %n.vec367 = and i64 %i.is, 4294967288           ; 5 uses
  %i.it = shl nuw nsw i64 %n.vec367, 1
  %i.iu = shl nuw nsw i64 %n.vec367, 2
  %i.iv = trunc nuw i64 %n.vec367 to i32
  %cmp.n376 = icmp eq i64 %n.vec367, %i.is
  br label %.preheader145.us

.preheader145.us:                                 ; preds = %.preheader145.us.preheader, %._crit_edge.us
  %.0103167.us = phi ptr [ %.lcssa288, %._crit_edge.us ], [ %.0102209, %.preheader145.us.preheader ] ; 3 uses
  %.0105166.us = phi ptr [ %i.ku, %._crit_edge.us ], [ %.0118, %.preheader145.us.preheader ] ; 3 uses
  %.2126165.us = phi i32 [ %i.kv, %._crit_edge.us ], [ 0, %.preheader145.us.preheader ]
  %brmerge436 = select i1 %min.iters.check364, i1 true, i1 %found.conflict362
  br i1 %brmerge436, label %scalar.ph363.preheader, label %vector.ph365

vector.ph365:                                     ; preds = %.preheader145.us
  %i.iw = getelementptr i8, ptr %.0103167.us, i64 %i.it ; 2 uses
  %i.ix = getelementptr i8, ptr %.0105166.us, i64 %i.iu ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph365
  %index369 = phi i64 [ 0, %vector.ph365 ], [ %index.next374, %vector.body368 ] ; 3 uses
  %i.iy = shl i64 %index369, 1
  %next.gep370 = getelementptr i8, ptr %.0103167.us, i64 %i.iy ; 2 uses
  %i.iz = shl i64 %index369, 2
  %next.gep371 = getelementptr i8, ptr %.0105166.us, i64 %i.iz ; 2 uses
  %i.ja = getelementptr i8, ptr %next.gep371, i64 16
  %wide.load372 = load <4 x i32>, ptr %next.gep371, align 4, !tbaa !3, !alias.scope !294
  %wide.load373 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !3, !alias.scope !294
  %i.jb = trunc <4 x i32> %wide.load372 to <4 x i16>
  %i.jc = trunc <4 x i32> %wide.load373 to <4 x i16>
  %i.jd = getelementptr i8, ptr %next.gep370, i64 8
  store <4 x i16> %i.jb, ptr %next.gep370, align 2, !alias.scope !297, !noalias !294
  store <4 x i16> %i.jc, ptr %i.jd, align 2, !alias.scope !297, !noalias !294
  %index.next374 = add nuw i64 %index369, 8       ; 2 uses
  %i.je = icmp eq i64 %index.next374, %n.vec367
  br i1 %i.je, label %middle.block375, label %vector.body368, !llvm.loop !299

middle.block375:                                  ; preds = %vector.body368
  br i1 %cmp.n376, label %._crit_edge.us, label %scalar.ph363.preheader

scalar.ph363.preheader:                           ; preds = %.preheader145.us, %middle.block375
  %.1104161.us.ph = phi ptr [ %i.iw, %middle.block375 ], [ %.0103167.us, %.preheader145.us ] ; 2 uses
  %.1106160.us.ph = phi ptr [ %i.ix, %middle.block375 ], [ %.0105166.us, %.preheader145.us ] ; 2 uses
  %.2133159.us.ph = phi i32 [ %i.iv, %middle.block375 ], [ 0, %.preheader145.us ] ; 4 uses
  %i.jf = sub i32 %i.dl, %.2133159.us.ph
  %xtraiter399 = and i32 %i.jf, 7                 ; 2 uses
  %lcmp.mod400.not = icmp eq i32 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %scalar.ph363.prol.loopexit, label %scalar.ph363.prol

scalar.ph363.prol:                                ; preds = %scalar.ph363.preheader, %scalar.ph363.prol
  %.1104161.us.prol = phi ptr [ %i.jj, %scalar.ph363.prol ], [ %.1104161.us.ph, %scalar.ph363.preheader ] ; 2 uses
  %.1106160.us.prol = phi ptr [ %i.jg, %scalar.ph363.prol ], [ %.1106160.us.ph, %scalar.ph363.preheader ] ; 2 uses
  %.2133159.us.prol = phi i32 [ %i.jk, %scalar.ph363.prol ], [ %.2133159.us.ph, %scalar.ph363.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph363.prol ], [ 0, %scalar.ph363.preheader ]
  %i.jg = getelementptr inbounds nuw i8, ptr %.1106160.us.prol, i64 4 ; 3 uses
  %i.jh = load i32, ptr %.1106160.us.prol, align 4, !tbaa !3
  %i.ji = trunc i32 %i.jh to i16
  store i16 %i.ji, ptr %.1104161.us.prol, align 2
  %i.jj = getelementptr inbounds nuw i8, ptr %.1104161.us.prol, i64 2 ; 3 uses
  %i.jk = add nuw i32 %.2133159.us.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter399
  br i1 %prol.iter.cmp.not, label %scalar.ph363.prol.loopexit, label %scalar.ph363.prol, !llvm.loop !300

scalar.ph363.prol.loopexit:                       ; preds = %scalar.ph363.prol, %scalar.ph363.preheader
  %.lcssa385.unr = phi ptr [ poison, %scalar.ph363.preheader ], [ %i.jg, %scalar.ph363.prol ]
  %.lcssa384.unr = phi ptr [ poison, %scalar.ph363.preheader ], [ %i.jj, %scalar.ph363.prol ]
  %.1104161.us.unr = phi ptr [ %.1104161.us.ph, %scalar.ph363.preheader ], [ %i.jj, %scalar.ph363.prol ]
  %.1106160.us.unr = phi ptr [ %.1106160.us.ph, %scalar.ph363.preheader ], [ %i.jg, %scalar.ph363.prol ]
  %.2133159.us.unr = phi i32 [ %.2133159.us.ph, %scalar.ph363.preheader ], [ %i.jk, %scalar.ph363.prol ]
  %i.jl = sub i32 %.2133159.us.ph, %i.dl
  %i.jm = icmp ugt i32 %i.jl, -8
  br i1 %i.jm, label %._crit_edge.us, label %scalar.ph363

scalar.ph363:                                     ; preds = %scalar.ph363.prol.loopexit, %scalar.ph363
  %.1104161.us = phi ptr [ %i.ks, %scalar.ph363 ], [ %.1104161.us.unr, %scalar.ph363.prol.loopexit ] ; 9 uses
  %.1106160.us = phi ptr [ %i.kp, %scalar.ph363 ], [ %.1106160.us.unr, %scalar.ph363.prol.loopexit ] ; 9 uses
  %.2133159.us = phi i32 [ %i.kt, %scalar.ph363 ], [ %.2133159.us.unr, %scalar.ph363.prol.loopexit ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 4
  %i.jo = load i32, ptr %.1106160.us, align 4, !tbaa !3
  %i.jp = trunc i32 %i.jo to i16
  store i16 %i.jp, ptr %.1104161.us, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 8
  %i.js = load i32, ptr %i.jn, align 4, !tbaa !3
  %i.jt = trunc i32 %i.js to i16
  store i16 %i.jt, ptr %i.jq, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 12
  %i.jw = load i32, ptr %i.jr, align 4, !tbaa !3
  %i.jx = trunc i32 %i.jw to i16
  store i16 %i.jx, ptr %i.ju, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 6
  %i.jz = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 16
  %i.ka = load i32, ptr %i.jv, align 4, !tbaa !3
  %i.kb = trunc i32 %i.ka to i16
  store i16 %i.kb, ptr %i.jy, align 2
  %i.kc = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 20
  %i.ke = load i32, ptr %i.jz, align 4, !tbaa !3
  %i.kf = trunc i32 %i.ke to i16
  store i16 %i.kf, ptr %i.kc, align 2
  %i.kg = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 10
  %i.kh = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 24
  %i.ki = load i32, ptr %i.kd, align 4, !tbaa !3
  %i.kj = trunc i32 %i.ki to i16
  store i16 %i.kj, ptr %i.kg, align 2
  %i.kk = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 12
  %i.kl = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 28
  %i.km = load i32, ptr %i.kh, align 4, !tbaa !3
  %i.kn = trunc i32 %i.km to i16
  store i16 %i.kn, ptr %i.kk, align 2
  %i.ko = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 14
  %i.kp = getelementptr inbounds nuw i8, ptr %.1106160.us, i64 32 ; 2 uses
  %i.kq = load i32, ptr %i.kl, align 4, !tbaa !3
  %i.kr = trunc i32 %i.kq to i16
  store i16 %i.kr, ptr %i.ko, align 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 16 ; 2 uses
  %i.kt = add nuw i32 %.2133159.us, 8             ; 2 uses
  %exitcond242.not.7 = icmp eq i32 %i.kt, %i.dl
  br i1 %exitcond242.not.7, label %._crit_edge.us, label %scalar.ph363, !llvm.loop !301

._crit_edge.us:                                   ; preds = %scalar.ph363.prol.loopexit, %scalar.ph363, %middle.block375
  %.lcssa289 = phi ptr [ %i.ix, %middle.block375 ], [ %.lcssa385.unr, %scalar.ph363.prol.loopexit ], [ %i.kp, %scalar.ph363 ]
  %.lcssa288 = phi ptr [ %i.iw, %middle.block375 ], [ %.lcssa384.unr, %scalar.ph363.prol.loopexit ], [ %i.ks, %scalar.ph363 ] ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.lcssa289, i64 %i.in
  %i.kv = add nuw i32 %.2126165.us, 1             ; 2 uses
  %exitcond243.not = icmp eq i32 %i.kv, %i.im
  br i1 %exitcond243.not, label %.loopexit, label %.preheader145.us, !llvm.loop !302

.preheader149:                                    ; preds = %bb.q
  br i1 %.not215, label %.loopexit, label %.preheader144.lr.ph

.preheader144.lr.ph:                              ; preds = %.preheader149
  %.not216 = icmp eq i32 %i.dl, 0
  %i.kw = zext i32 %.0121 to i64                  ; 2 uses
  br i1 %.not216, label %.loopexit, label %.preheader144.us.preheader

.preheader144.us.preheader:                       ; preds = %.preheader144.lr.ph
  %scevgep331 = getelementptr i8, ptr %.0102209, i64 2
  %i.kx = add i32 %i.dl, -1
  %33 = zext i32 %i.kx to i64                     ; 2 uses
  %34 = shl nuw nsw i64 %33, 1                    ; 2 uses
  %35 = add nuw nsw i64 %34, 2
  %36 = add i32 %i.im, -1
  %i.ky = zext i32 %36 to i64                     ; 2 uses
  %37 = mul i64 %35, %i.ky
  %38 = getelementptr i8, ptr %scevgep331, i64 %37
  %scevgep332 = getelementptr i8, ptr %38, i64 %34
  %scevgep333 = getelementptr i8, ptr %.0118, i64 4
  %i.kz = shl nuw nsw i64 %i.kw, 2
  %39 = add nuw nsw i64 %i.kz, 4
  %i.la = shl nuw nsw i64 %33, 2                  ; 2 uses
  %40 = add nuw nsw i64 %39, %i.la
  %41 = mul i64 %40, %i.ky
  %42 = getelementptr i8, ptr %scevgep333, i64 %41
  %scevgep334 = getelementptr i8, ptr %42, i64 %i.la
  %i.lb = zext i32 %i.dl to i64                   ; 2 uses
  %min.iters.check339 = icmp ult i32 %i.dl, 8
  %bound0335 = icmp ult ptr %.0102209, %scevgep334
  %bound1336 = icmp ult ptr %.0118, %scevgep332
  %found.conflict337 = and i1 %bound0335, %bound1336
  %n.vec342 = and i64 %i.lb, 4294967288           ; 5 uses
  %i.lc = shl nuw nsw i64 %n.vec342, 1
  %i.ld = shl nuw nsw i64 %n.vec342, 2
  %i.le = trunc nuw i64 %n.vec342 to i32
  %cmp.n351 = icmp eq i64 %n.vec342, %i.lb
  br label %.preheader144.us

.preheader144.us:                                 ; preds = %.preheader144.us.preheader, %._crit_edge.us180
  %.2178.us = phi ptr [ %.lcssa290, %._crit_edge.us180 ], [ %.0102209, %.preheader144.us.preheader ] ; 3 uses
  %.2107177.us = phi ptr [ %i.nd, %._crit_edge.us180 ], [ %.0118, %.preheader144.us.preheader ] ; 3 uses
  %.3127176.us = phi i32 [ %i.ne, %._crit_edge.us180 ], [ 0, %.preheader144.us.preheader ]
  %brmerge437 = select i1 %min.iters.check339, i1 true, i1 %found.conflict337
  br i1 %brmerge437, label %scalar.ph338.preheader, label %vector.ph340

vector.ph340:                                     ; preds = %.preheader144.us
  %i.lf = getelementptr i8, ptr %.2178.us, i64 %i.lc ; 2 uses
  %i.lg = getelementptr i8, ptr %.2107177.us, i64 %i.ld ; 2 uses
  br label %vector.body343

vector.body343:                                   ; preds = %vector.body343, %vector.ph340
  %index344 = phi i64 [ 0, %vector.ph340 ], [ %index.next349, %vector.body343 ] ; 3 uses
  %i.lh = shl i64 %index344, 1
  %next.gep345 = getelementptr i8, ptr %.2178.us, i64 %i.lh ; 2 uses
  %i.li = shl i64 %index344, 2
  %next.gep346 = getelementptr i8, ptr %.2107177.us, i64 %i.li ; 2 uses
  %i.lj = getelementptr i8, ptr %next.gep346, i64 16
  %wide.load347 = load <4 x i32>, ptr %next.gep346, align 4, !tbaa !3, !alias.scope !303
  %wide.load348 = load <4 x i32>, ptr %i.lj, align 4, !tbaa !3, !alias.scope !303
  %i.lk = trunc <4 x i32> %wide.load347 to <4 x i16>
  %i.ll = trunc <4 x i32> %wide.load348 to <4 x i16>
  %i.lm = getelementptr i8, ptr %next.gep345, i64 8
  store <4 x i16> %i.lk, ptr %next.gep345, align 2, !alias.scope !306, !noalias !303
  store <4 x i16> %i.ll, ptr %i.lm, align 2, !alias.scope !306, !noalias !303
  %index.next349 = add nuw i64 %index344, 8       ; 2 uses
  %i.ln = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.ln, label %middle.block350, label %vector.body343, !llvm.loop !308

middle.block350:                                  ; preds = %vector.body343
  br i1 %cmp.n351, label %._crit_edge.us180, label %scalar.ph338.preheader

scalar.ph338.preheader:                           ; preds = %.preheader144.us, %middle.block350
  %.3172.us.ph = phi ptr [ %i.lf, %middle.block350 ], [ %.2178.us, %.preheader144.us ] ; 2 uses
  %.3108171.us.ph = phi ptr [ %i.lg, %middle.block350 ], [ %.2107177.us, %.preheader144.us ] ; 2 uses
  %.3134170.us.ph = phi i32 [ %i.le, %middle.block350 ], [ 0, %.preheader144.us ] ; 4 uses
  %i.lo = sub i32 %i.dl, %.3134170.us.ph
  %xtraiter401 = and i32 %i.lo, 7                 ; 2 uses
  %lcmp.mod402.not = icmp eq i32 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %scalar.ph338.prol.loopexit, label %scalar.ph338.prol

scalar.ph338.prol:                                ; preds = %scalar.ph338.preheader, %scalar.ph338.prol
  %.3172.us.prol = phi ptr [ %i.ls, %scalar.ph338.prol ], [ %.3172.us.ph, %scalar.ph338.preheader ] ; 2 uses
  %.3108171.us.prol = phi ptr [ %i.lp, %scalar.ph338.prol ], [ %.3108171.us.ph, %scalar.ph338.preheader ] ; 2 uses
  %.3134170.us.prol = phi i32 [ %i.lt, %scalar.ph338.prol ], [ %.3134170.us.ph, %scalar.ph338.preheader ]
  %prol.iter403 = phi i32 [ %prol.iter403.next, %scalar.ph338.prol ], [ 0, %scalar.ph338.preheader ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.3108171.us.prol, i64 4 ; 3 uses
  %i.lq = load i32, ptr %.3108171.us.prol, align 4, !tbaa !3
  %i.lr = trunc i32 %i.lq to i16
  store i16 %i.lr, ptr %.3172.us.prol, align 2
  %i.ls = getelementptr inbounds nuw i8, ptr %.3172.us.prol, i64 2 ; 3 uses
  %i.lt = add nuw i32 %.3134170.us.prol, 1        ; 2 uses
  %prol.iter403.next = add i32 %prol.iter403, 1   ; 2 uses
  %prol.iter403.cmp.not = icmp eq i32 %prol.iter403.next, %xtraiter401
  br i1 %prol.iter403.cmp.not, label %scalar.ph338.prol.loopexit, label %scalar.ph338.prol, !llvm.loop !309

scalar.ph338.prol.loopexit:                       ; preds = %scalar.ph338.prol, %scalar.ph338.preheader
  %.lcssa387.unr = phi ptr [ poison, %scalar.ph338.preheader ], [ %i.lp, %scalar.ph338.prol ]
  %.lcssa386.unr = phi ptr [ poison, %scalar.ph338.preheader ], [ %i.ls, %scalar.ph338.prol ]
  %.3172.us.unr = phi ptr [ %.3172.us.ph, %scalar.ph338.preheader ], [ %i.ls, %scalar.ph338.prol ]
  %.3108171.us.unr = phi ptr [ %.3108171.us.ph, %scalar.ph338.preheader ], [ %i.lp, %scalar.ph338.prol ]
  %.3134170.us.unr = phi i32 [ %.3134170.us.ph, %scalar.ph338.preheader ], [ %i.lt, %scalar.ph338.prol ]
  %i.lu = sub i32 %.3134170.us.ph, %i.dl
  %i.lv = icmp ugt i32 %i.lu, -8
  br i1 %i.lv, label %._crit_edge.us180, label %scalar.ph338

scalar.ph338:                                     ; preds = %scalar.ph338.prol.loopexit, %scalar.ph338
  %.3172.us = phi ptr [ %i.nb, %scalar.ph338 ], [ %.3172.us.unr, %scalar.ph338.prol.loopexit ] ; 9 uses
  %.3108171.us = phi ptr [ %i.my, %scalar.ph338 ], [ %.3108171.us.unr, %scalar.ph338.prol.loopexit ] ; 9 uses
  %.3134170.us = phi i32 [ %i.nc, %scalar.ph338 ], [ %.3134170.us.unr, %scalar.ph338.prol.loopexit ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 4
  %i.lx = load i32, ptr %.3108171.us, align 4, !tbaa !3
  %i.ly = trunc i32 %i.lx to i16
  store i16 %i.ly, ptr %.3172.us, align 2
  %i.lz = getelementptr inbounds nuw i8, ptr %.3172.us, i64 2
  %i.ma = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 8
  %i.mb = load i32, ptr %i.lw, align 4, !tbaa !3
  %i.mc = trunc i32 %i.mb to i16
  store i16 %i.mc, ptr %i.lz, align 2
  %i.md = getelementptr inbounds nuw i8, ptr %.3172.us, i64 4
  %i.me = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 12
  %i.mf = load i32, ptr %i.ma, align 4, !tbaa !3
  %i.mg = trunc i32 %i.mf to i16
  store i16 %i.mg, ptr %i.md, align 2
  %i.mh = getelementptr inbounds nuw i8, ptr %.3172.us, i64 6
  %i.mi = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 16
  %i.mj = load i32, ptr %i.me, align 4, !tbaa !3
  %i.mk = trunc i32 %i.mj to i16
  store i16 %i.mk, ptr %i.mh, align 2
  %i.ml = getelementptr inbounds nuw i8, ptr %.3172.us, i64 8
  %i.mm = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 20
  %i.mn = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mo = trunc i32 %i.mn to i16
  store i16 %i.mo, ptr %i.ml, align 2
  %i.mp = getelementptr inbounds nuw i8, ptr %.3172.us, i64 10
  %i.mq = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 24
  %i.mr = load i32, ptr %i.mm, align 4, !tbaa !3
  %i.ms = trunc i32 %i.mr to i16
  store i16 %i.ms, ptr %i.mp, align 2
  %i.mt = getelementptr inbounds nuw i8, ptr %.3172.us, i64 12
  %i.mu = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 28
  %i.mv = load i32, ptr %i.mq, align 4, !tbaa !3
  %i.mw = trunc i32 %i.mv to i16
  store i16 %i.mw, ptr %i.mt, align 2
  %i.mx = getelementptr inbounds nuw i8, ptr %.3172.us, i64 14
  %i.my = getelementptr inbounds nuw i8, ptr %.3108171.us, i64 32 ; 2 uses
  %i.mz = load i32, ptr %i.mu, align 4, !tbaa !3
  %i.na = trunc i32 %i.mz to i16
  store i16 %i.na, ptr %i.mx, align 2
  %i.nb = getelementptr inbounds nuw i8, ptr %.3172.us, i64 16 ; 2 uses
  %i.nc = add nuw i32 %.3134170.us, 8             ; 2 uses
  %exitcond244.not.7 = icmp eq i32 %i.nc, %i.dl
  br i1 %exitcond244.not.7, label %._crit_edge.us180, label %scalar.ph338, !llvm.loop !310

._crit_edge.us180:                                ; preds = %scalar.ph338.prol.loopexit, %scalar.ph338, %middle.block350
  %.lcssa291 = phi ptr [ %i.lg, %middle.block350 ], [ %.lcssa387.unr, %scalar.ph338.prol.loopexit ], [ %i.my, %scalar.ph338 ]
  %.lcssa290 = phi ptr [ %i.lf, %middle.block350 ], [ %.lcssa386.unr, %scalar.ph338.prol.loopexit ], [ %i.nb, %scalar.ph338 ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.lcssa291, i64 %i.kw
  %i.ne = add nuw i32 %.3127176.us, 1             ; 2 uses
  %exitcond245.not = icmp eq i32 %i.ne, %i.im
  br i1 %exitcond245.not, label %.loopexit, label %.preheader144.us, !llvm.loop !311

bb.r:                                             ; preds = %bb.r, %.lr.ph.new
  %.0158 = phi ptr [ %.0118, %.lr.ph.new ], [ %i.nm, %bb.r ] ; 2 uses
  %.0100157 = phi ptr [ %.0102209, %.lr.ph.new ], [ %i.nl, %bb.r ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.r ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0100157, ptr align 4 %.0158, i64 %i.dr, i1 false)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.0100157, i64 %i.dq ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.0158, i64 %i.dt ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nf, ptr align 4 %i.ng, i64 %i.dr, i1 false)
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.dq ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.dt ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nh, ptr align 4 %i.ni, i64 %i.dr, i1 false)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.dq ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.dt ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nj, ptr align 4 %i.nk, i64 %i.dr, i1 false)
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.dq ; 3 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.dt ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit383.unr-lcssa, label %bb.r, !llvm.loop !312

.loopexit.loopexit383.unr-lcssa:                  ; preds = %bb.r
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit383.unr-lcssa, %.lr.ph
  %.0158.epil.init = phi ptr [ %.0118, %.lr.ph ], [ %i.nm, %.loopexit.loopexit383.unr-lcssa ]
  %.0100157.epil.init = phi ptr [ %.0102209, %.lr.ph ], [ %i.nl, %.loopexit.loopexit383.unr-lcssa ]
  %lcmp.mod398 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod398)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %.0158.epil = phi ptr [ %.0158.epil.init, %.epil.preheader ], [ %i.no, %bb.s ] ; 2 uses
  %.0100157.epil = phi ptr [ %.0100157.epil.init, %.epil.preheader ], [ %i.nn, %bb.s ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0100157.epil, ptr align 4 %.0158.epil, i64 %i.dr, i1 false)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.0100157.epil, i64 %i.dq ; 2 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.0158.epil, i64 %i.dt
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.s, !llvm.loop !313

.loopexit:                                        ; preds = %.loopexit.loopexit383.unr-lcssa, %bb.s, %._crit_edge.us, %._crit_edge.us180, %._crit_edge.us192, %._crit_edge.us204, %.preheader144.lr.ph, %.preheader145.lr.ph, %.preheader.lr.ph, %.preheader143.lr.ph, %.preheader153, %.preheader151, %.preheader149, %.preheader147, %.preheader146, %bb.o
  %.1 = phi ptr [ %.0102209, %bb.o ], [ %.lcssa294, %._crit_edge.us204 ], [ %.lcssa290, %._crit_edge.us180 ], [ %.lcssa288, %._crit_edge.us ], [ %.0102209, %.preheader144.lr.ph ], [ %.0102209, %.preheader146 ], [ %.0102209, %.preheader143.lr.ph ], [ %.0102209, %.preheader147 ], [ %.lcssa292, %._crit_edge.us192 ], [ %.0102209, %.preheader149 ], [ %.0102209, %.preheader145.lr.ph ], [ %.0102209, %.preheader151 ], [ %.0102209, %.preheader.lr.ph ], [ %.0102209, %.preheader153 ], [ %i.nl, %.loopexit.loopexit383.unr-lcssa ], [ %i.nn, %bb.s ]
  %i.np = getelementptr inbounds nuw i8, ptr %.0130206, i64 64
  %i.nq = getelementptr inbounds nuw i8, ptr %.0129207, i64 112
  %i.nr = add nuw i32 %.0122208, 1                ; 2 uses
  %i.ns = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !21
  %i.nv = icmp ult i32 %i.nr, %i.nu
  br i1 %i.nv, label %bb.l, label %opj_tcd_get_decoded_tile_size.exit.thread, !llvm.loop !314

opj_tcd_get_decoded_tile_size.exit.thread:        ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.d, %bb.b, %.loopexit, %opj_tcd_get_decoded_tile_size.exit, %bb.a
  %.0101 = phi i32 [ %.mux, %opj_tcd_get_decoded_tile_size.exit ], [ 1, %.loopexit ], [ 0, %bb.e ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @opj_tcd_get_encoder_input_buffer_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.025 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.01924 = phi ptr [ %i.ah, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.02023 = phi ptr [ %i.ag, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.02122 = phi i64 [ %i.af, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.02023, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %i.n = lshr i32 %i.m, 3
  %i.o = and i32 %i.m, 7
  %.not = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.n, %i.p       ; 2 uses
  %i.q = icmp eq i32 %spec.select, 3
  %spec.store.select = select i1 %i.q, i32 4, i32 %spec.select
  %i.r = zext nneg i32 %spec.store.select to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.01924, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !92
  %i.u = load i32, ptr %.01924, align 8, !tbaa !89
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.01924, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %.01924, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !91
  %i.ab = sub nsw i32 %i.y, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.w
  %i.ae = mul i64 %i.ad, %i.r
  %i.af = add i64 %i.ae, %.02122                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02023, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01924, i64 112
  %i.ai = add nuw i32 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %i.d
end_hunk_0
