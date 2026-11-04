Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tcd?download=true
inline.NumInlined: 114
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@opj_tcd_decode_tile:bb.a
  %lcmp.mod405.not = icmp eq i64 %xtraiter403, 0
  br i1 %lcmp.mod405.not, label %._crit_edge.i220, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i220.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next166.i.3, %._crit_edge.i220.loopexit.unr-lcssa ]
  %.0119160.us.i.epil.init = phi ptr [ %i.nj, %.lr.ph.split.us.i.preheader ], [ %i.tp, %._crit_edge.i220.loopexit.unr-lcssa ]
  %lcmp.mod406 = icmp ne i64 %xtraiter403, 0
  call void @llvm.assume(i1 %lcmp.mod406)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv165.i.epil = phi i64 [ %indvars.iv.next166.i.epil, %.lr.ph.split.us.i.epil ], [ %indvars.iv165.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %.0119160.us.i.epil = phi ptr [ %i.uj, %.lr.ph.split.us.i.epil ], [ %.0119160.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter404 = phi i64 [ %epil.iter404.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.0119160.us.i.epil, i64 80
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !59
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv165.i.epil
  store ptr %i.uh, ptr %i.ui, align 8, !tbaa !123
  %i.uj = getelementptr inbounds nuw i8, ptr %.0119160.us.i.epil, i64 112
  %indvars.iv.next166.i.epil = add nuw nsw i64 %indvars.iv165.i.epil, 1
  %epil.iter404.next = add i64 %epil.iter404, 1   ; 2 uses
  %epil.iter404.cmp.not = icmp eq i64 %epil.iter404.next, %xtraiter403
  br i1 %epil.iter404.cmp.not, label %._crit_edge.i220, label %.lr.ph.split.us.i.epil, !llvm.loop !256

._crit_edge.i220.loopexit389.unr-lcssa:           ; preds = %.lr.ph.split.i
  %lcmp.mod399.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod399.not, label %._crit_edge.i220, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.i220.loopexit389.unr-lcssa, %.lr.ph.split.i.preheader
  %indvars.iv.i218.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %indvars.iv.next.i219.3, %._crit_edge.i220.loopexit389.unr-lcssa ]
  %.0119160.i.epil.init = phi ptr [ %i.nj, %.lr.ph.split.i.preheader ], [ %i.uf, %._crit_edge.i220.loopexit389.unr-lcssa ]
  %lcmp.mod400 = icmp ne i64 %xtraiter397, 0
  call void @llvm.assume(i1 %lcmp.mod400)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i218.epil = phi i64 [ %indvars.iv.next.i219.epil, %.lr.ph.split.i.epil ], [ %indvars.iv.i218.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %.0119160.i.epil = phi ptr [ %i.un, %.lr.ph.split.i.epil ], [ %.0119160.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %epil.iter398 = phi i64 [ %epil.iter398.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.uk = getelementptr inbounds nuw i8, ptr %.0119160.i.epil, i64 48
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !58
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv.i218.epil
  store ptr %i.ul, ptr %i.um, align 8, !tbaa !123
  %i.un = getelementptr inbounds nuw i8, ptr %.0119160.i.epil, i64 112
  %indvars.iv.next.i219.epil = add nuw nsw i64 %indvars.iv.i218.epil, 1
  %epil.iter398.next = add i64 %epil.iter398, 1   ; 2 uses
  %epil.iter398.cmp.not = icmp eq i64 %epil.iter398.next, %xtraiter397
  br i1 %epil.iter398.cmp.not, label %._crit_edge.i220, label %.lr.ph.split.i.epil, !llvm.loop !257

._crit_edge.i220:                                 ; preds = %._crit_edge.i220.loopexit389.unr-lcssa, %.lr.ph.split.i.epil, %._crit_edge.i220.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %.preheader.i
  %i.uo = load ptr, ptr %i.sr, align 8, !tbaa !275
  %i.up = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !80
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !124
  %i.uu = call i32 @opj_mct_decode_custom(ptr noundef %i.uo, i64 noundef %.0118.ph.i, ptr noundef nonnull %i.sv, i32 noundef %i.sw, i32 noundef %i.ut) #15
  %.not149.not.i = icmp eq i32 %i.uu, 0
  call void @opj_free(ptr noundef nonnull %i.sv) #15
  br i1 %.not149.not.i, label %.critedge, label %opj_tcd_mct_decode.exit

bb.bo:                                            ; preds = %bb.bl
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ng, i64 5600
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !79
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 20
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !104
  %i.uz = icmp eq i32 %i.uy, 1
  br i1 %i.uz, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not134.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.va = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !58
  %i.vc = getelementptr inbounds nuw i8, ptr %i.nj, i64 160
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !58
  %i.ve = getelementptr inbounds nuw i8, ptr %i.nj, i64 272
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !58
  call void @opj_mct_decode(ptr noundef %i.vb, ptr noundef %i.vd, ptr noundef %i.vf, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.br:                                            ; preds = %bb.bp
  %i.vg = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !59
  %i.vi = getelementptr inbounds nuw i8, ptr %i.nj, i64 192
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !59
  %i.vk = getelementptr inbounds nuw i8, ptr %i.nj, i64 304
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !59
  call void @opj_mct_decode(ptr noundef %i.vh, ptr noundef %i.vj, ptr noundef %i.vl, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bs:                                            ; preds = %bb.bo
  br i1 %.not134.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.vm = getelementptr inbounds nuw i8, ptr %i.nj, i64 48
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !58
  %i.vo = getelementptr inbounds nuw i8, ptr %i.nj, i64 160
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !58
  %i.vq = getelementptr inbounds nuw i8, ptr %i.nj, i64 272
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !58
  call void @opj_mct_decode_real(ptr noundef %i.vn, ptr noundef %i.vp, ptr noundef %i.vr, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bu:                                            ; preds = %bb.bs
  %i.vs = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !59
  %i.vu = getelementptr inbounds nuw i8, ptr %i.nj, i64 192
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !59
  %i.vw = getelementptr inbounds nuw i8, ptr %i.nj, i64 304
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !59
  call void @opj_mct_decode_real(ptr noundef %i.vt, ptr noundef %i.vv, ptr noundef %i.vx, i64 noundef %.0118.ph.i) #15
  br label %opj_tcd_mct_decode.exit

bb.bv:                                            ; preds = %bb.bh, %bb.az
  %i.vy = phi i32 [ %i.rb, %bb.bh ], [ %i.oj, %bb.az ]
  %i.vz = call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.vy) #15 ; 0 uses
  br label %opj_tcd_mct_decode.exit

opj_tcd_mct_decode.exit:                          ; preds = %._crit_edge.i220, %bb.bq, %bb.br, %bb.bt, %bb.bu, %bb.bv, %bb.bm, %bb.ax, %opj_tcd_dwt_decode.exit
  %i.wa = load ptr, ptr %i.iw, align 8, !tbaa !17
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !22 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !32
  %.not116.i = icmp eq i32 %i.wd, 0
  br i1 %.not116.i, label %.critedge, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %opj_tcd_mct_decode.exit
  %i.we = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !80
  %i.wh = load ptr, ptr %i.j, align 8, !tbaa !116
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 5600
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !79 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !31
  %i.wm = load ptr, ptr %i.p, align 8, !tbaa !66  ; 2 uses
  %.not.i223 = icmp eq ptr %i.wm, null
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.i, %.lr.ph.i222
  %indvars.iv.i224 = phi i64 [ 0, %.lr.ph.i222 ], [ %indvars.iv.next.i228, %.loopexit.i ] ; 3 uses
  %.084112.i = phi ptr [ %i.wg, %.lr.ph.i222 ], [ %i.aau, %.loopexit.i ] ; 4 uses
  %.085111.i = phi ptr [ %i.wj, %.lr.ph.i222 ], [ %i.aav, %.loopexit.i ] ; 3 uses
  %.086110.i = phi ptr [ %i.wl, %.lr.ph.i222 ], [ %i.aaw, %.loopexit.i ] ; 5 uses
  %i.wn = mul nuw nsw i64 %indvars.iv.i224, 1080
  %i.wo = getelementptr i8, ptr %i.wj, i64 %i.wn
  %scevgep = getelementptr i8, ptr %i.wo, i64 1080
  br i1 %.not.i223, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.i224
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !8
  %.not89.i = icmp eq i32 %i.wq, 0
  br i1 %.not89.i, label %.loopexit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.wr = getelementptr inbounds nuw i8, ptr %.086110.i, i64 32
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !38 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.084112.i, i64 36
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !83
  %i.wv = zext i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [192 x i8], ptr %i.ws, i64 %i.wv ; 4 uses
  %i.wx = load i32, ptr %i.o, align 8, !tbaa !112
  %.not90.i = icmp eq i32 %i.wx, 0
  br i1 %.not90.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 184
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ww, i64 176
  %i.xa = load <2 x i32>, ptr %i.wy, align 8, !tbaa !8
  %i.xb = load <2 x i32>, ptr %i.wz, align 8, !tbaa !8
  %i.xc = sub <2 x i32> %i.xa, %i.xb
  %i.xd = getelementptr inbounds nuw i8, ptr %.086110.i, i64 80
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.xf = load <2 x i32>, ptr %i.xe, align 8, !tbaa !8
  %i.xg = load <2 x i32>, ptr %i.ww, align 8, !tbaa !8
  %i.xh = sub nsw <2 x i32> %i.xf, %i.xg          ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.086110.i, i64 24
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !91
  %i.xk = add i32 %i.xj, -1
  %i.xl = zext i32 %i.xk to i64
  %i.xm = getelementptr inbounds nuw [192 x i8], ptr %i.ws, i64 %i.xl ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !95
  %i.xp = load i32, ptr %i.xm, align 8, !tbaa !93
  %i.xq = extractelement <2 x i32> %i.xh, i64 0
  %i.xr = add i32 %i.xq, %i.xp
  %i.xs = sub i32 %i.xo, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %.086110.i, i64 48
  %i.xu = zext i32 %i.xs to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.077.in.i = phi ptr [ %i.xt, %bb.ca ], [ %i.xd, %bb.bz ]
  %.074.i = phi i64 [ %i.xu, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %i.xv = phi <2 x i32> [ %i.xh, %bb.ca ], [ %i.xc, %bb.bz ] ; 5 uses
  %.077.i = load ptr, ptr %.077.in.i, align 8, !tbaa !140 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.084112.i, i64 32
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !124
  %.not91.i = icmp eq i32 %i.xx, 0
  %i.xy = getelementptr inbounds nuw i8, ptr %.084112.i, i64 24
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !105 ; 2 uses
  br i1 %.not91.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ya = add i32 %i.xz, -1
  %i.yb = shl nuw i32 1, %i.ya                    ; 2 uses
  %i.yc = sub nsw i32 0, %i.yb
  %i.yd = add nsw i32 %i.yb, -1
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %notmask.i = shl nsw i32 -1, %i.xz
  %i.ye = xor i32 %notmask.i, -1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.076.i = phi i32 [ %i.yc, %bb.cc ], [ 0, %bb.cd ] ; 10 uses
  %.075.i = phi i32 [ %i.yd, %bb.cc ], [ %i.ye, %bb.cd ] ; 6 uses
  %i.yf = icmp eq <2 x i32> %i.xv, zeroinitializer ; 2 uses
  %12 = extractelement <2 x i1> %i.yf, i64 0
  %13 = extractelement <2 x i1> %i.yf, i64 1
  %or.cond.i225 = select i1 %12, i1 true, i1 %13
  br i1 %or.cond.i225, label %.loopexit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.yg = getelementptr inbounds nuw i8, ptr %.085111.i, i64 20
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !104
  %i.yi = icmp eq i32 %i.yh, 1
  %i.yj = getelementptr i8, ptr %.085111.i, i64 1076 ; 6 uses
  br i1 %i.yi, label %.preheader.i229.preheader, label %.preheader96.preheader.i

.preheader.i229.preheader:                        ; preds = %bb.cf
  %i.yk = extractelement <2 x i32> %i.xv, i64 0   ; 6 uses
  %i.yl = add i32 %i.yk, -1
  %i.ym = zext i32 %i.yl to i64
  %i.yn = shl nuw nsw i64 %i.ym, 2
  %i.yo = extractelement <2 x i32> %i.xv, i64 1
  %i.yp = zext i32 %i.yk to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.yk, 8
  %n.vec = and i64 %i.yp, 4294967288              ; 4 uses
  %i.yq = shl nuw nsw i64 %n.vec, 2
  %i.yr = trunc nuw i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.076.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert381 = insertelement <4 x i32> poison, i32 %.075.i, i64 0
  %broadcast.splat382 = shufflevector <4 x i32> %broadcast.splatinsert381, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.yp
  br label %.preheader.i229

.preheader96.preheader.i:                         ; preds = %bb.cf
  %i.ys = sext i32 %.076.i to i64
  %i.yt = zext nneg i32 %.075.i to i64
  %i.yu = extractelement <2 x i32> %i.xv, i64 1
  %i.yv = extractelement <2 x i32> %i.xv, i64 0
  br label %.preheader96.i

.preheader.i229:                                  ; preds = %.preheader.i229.preheader, %._crit_edge106.i
  %.1109.i = phi ptr [ %i.aae, %._crit_edge106.i ], [ %.077.i, %.preheader.i229.preheader ] ; 6 uses
  %.078108.i = phi i32 [ %i.aaf, %._crit_edge106.i ], [ 0, %.preheader.i229.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i229
  %i.yw = getelementptr i8, ptr %.1109.i, i64 %i.yn
  %i.yx = getelementptr i8, ptr %i.yw, i64 4
  %bound0 = icmp ult ptr %.1109.i, %scevgep
  %bound1 = icmp ult ptr %i.yj, %i.yx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.yy = getelementptr i8, ptr %.1109.i, i64 %i.yq ; 2 uses
  %i.yz = load i32, ptr %i.yj, align 4, !tbaa !117, !alias.scope !276
  %broadcast.splatinsert384 = insertelement <4 x i32> poison, i32 %i.yz, i64 0
  %broadcast.splat385 = shufflevector <4 x i32> %broadcast.splatinsert384, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.za = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1109.i, i64 %i.za ; 3 uses
  %i.zb = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !8, !alias.scope !277, !noalias !276
  %wide.load383 = load <4 x i32>, ptr %i.zb, align 4, !tbaa !8, !alias.scope !277, !noalias !276
  %i.zc = add nsw <4 x i32> %broadcast.splat385, %wide.load ; 2 uses
  %i.zd = add nsw <4 x i32> %broadcast.splat385, %wide.load383 ; 2 uses
  %i.ze = icmp slt <4 x i32> %i.zc, %broadcast.splat
  %i.zf = icmp slt <4 x i32> %i.zd, %broadcast.splat
  %i.zg = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zc, <4 x i32> %broadcast.splat382)
  %i.zh = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zd, <4 x i32> %broadcast.splat382)
  %i.zi = select <4 x i1> %i.ze, <4 x i32> %broadcast.splat, <4 x i32> %i.zg
  %i.zj = select <4 x i1> %i.zf, <4 x i32> %broadcast.splat, <4 x i32> %i.zh
  store <4 x i32> %i.zi, ptr %next.gep, align 4, !tbaa !8, !alias.scope !277, !noalias !276
  store <4 x i32> %i.zj, ptr %i.zb, align 4, !tbaa !8, !alias.scope !277, !noalias !276
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zk = icmp eq i64 %index.next, %n.vec
  br i1 %i.zk, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge106.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i229, %middle.block
  %.2105.i.ph = phi ptr [ %.1109.i, %vector.memcheck ], [ %.1109.i, %.preheader.i229 ], [ %i.yy, %middle.block ] ; 4 uses
  %.080104.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.i229 ], [ %i.yr, %middle.block ] ; 4 uses
  %i.zl = sub i32 %i.yk, %.080104.i.ph
  %.neg = add i32 %.080104.i.ph, 1
  %xtraiter409 = and i32 %i.zl, 1
  %lcmp.mod410.not = icmp eq i32 %xtraiter409, 0
  br i1 %lcmp.mod410.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.zm = load i32, ptr %.2105.i.ph, align 4, !tbaa !8
  %i.zn = load i32, ptr %i.yj, align 4, !tbaa !117
  %i.zo = add nsw i32 %i.zn, %i.zm                ; 2 uses
  %i.zp = icmp slt i32 %i.zo, %.076.i
  %..i.i.prol = call i32 @llvm.smin.i32(i32 %i.zo, i32 %.075.i)
  %.0.i.i.prol = select i1 %i.zp, i32 %.076.i, i32 %..i.i.prol
  store i32 %.0.i.i.prol, ptr %.2105.i.ph, align 4, !tbaa !8
  %i.zq = getelementptr inbounds nuw i8, ptr %.2105.i.ph, i64 4 ; 2 uses
  %i.zr = add nuw i32 %.080104.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa388.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.zq, %scalar.ph.prol ]
  %.2105.i.unr = phi ptr [ %.2105.i.ph, %scalar.ph.preheader ], [ %i.zq, %scalar.ph.prol ]
  %.080104.i.unr = phi i32 [ %.080104.i.ph, %scalar.ph.preheader ], [ %i.zr, %scalar.ph.prol ]
  %i.zs = icmp eq i32 %i.yk, %.neg
  br i1 %i.zs, label %._crit_edge106.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.2105.i = phi ptr [ %i.aac, %scalar.ph ], [ %.2105.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.080104.i = phi i32 [ %i.aad, %scalar.ph ], [ %.080104.i.unr, %scalar.ph.prol.loopexit ]
  %i.zt = load i32, ptr %.2105.i, align 4, !tbaa !8
  %i.zu = load i32, ptr %i.yj, align 4, !tbaa !117
  %i.zv = add nsw i32 %i.zu, %i.zt                ; 2 uses
  %i.zw = icmp slt i32 %i.zv, %.076.i
  %..i.i = call i32 @llvm.smin.i32(i32 %i.zv, i32 %.075.i)
  %.0.i.i = select i1 %i.zw, i32 %.076.i, i32 %..i.i
  store i32 %.0.i.i, ptr %.2105.i, align 4, !tbaa !8
  %i.zx = getelementptr inbounds nuw i8, ptr %.2105.i, i64 4 ; 2 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !8
  %i.zz = load i32, ptr %i.yj, align 4, !tbaa !117
  %i.aaa = add nsw i32 %i.zz, %i.zy               ; 2 uses
  %i.aab = icmp slt i32 %i.aaa, %.076.i
  %..i.i.1 = call i32 @llvm.smin.i32(i32 %i.aaa, i32 %.075.i)
  %.0.i.i.1 = select i1 %i.aab, i32 %.076.i, i32 %..i.i.1
  store i32 %.0.i.i.1, ptr %i.zx, align 4, !tbaa !8
  %i.aac = getelementptr inbounds nuw i8, ptr %.2105.i, i64 8 ; 2 uses
  %i.aad = add nuw i32 %.080104.i, 2              ; 2 uses
  %exitcond124.not.i.1 = icmp eq i32 %i.aad, %i.yk
  br i1 %exitcond124.not.i.1, label %._crit_edge106.i, label %scalar.ph, !llvm.loop !262

._crit_edge106.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa374 = phi ptr [ %i.yy, %middle.block ], [ %.lcssa388.unr, %scalar.ph.prol.loopexit ], [ %i.aac, %scalar.ph ]
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %.lcssa374, i64 %.074.i
  %i.aaf = add nuw i32 %.078108.i, 1              ; 2 uses
  %exitcond125.not.i = icmp eq i32 %i.aaf, %i.yo
  br i1 %exitcond125.not.i, label %.loopexit.i, label %.preheader.i229, !llvm.loop !263

.preheader96.i:                                   ; preds = %._crit_edge.i227, %.preheader96.preheader.i
  %.3103.i = phi ptr [ %i.aas, %._crit_edge.i227 ], [ %.077.i, %.preheader96.preheader.i ]
  %.179102.i = phi i32 [ %i.aat, %._crit_edge.i227 ], [ 0, %.preheader96.preheader.i ]
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cj, %.preheader96.i
  %.4101.i = phi ptr [ %.3103.i, %.preheader96.i ], [ %i.aaq, %bb.cj ] ; 3 uses
  %.181100.i = phi i32 [ 0, %.preheader96.i ], [ %i.aar, %bb.cj ]
  %i.aag = load float, ptr %.4101.i, align 4, !tbaa !118 ; 3 uses
  %i.aah = fcmp ogt float %i.aag, f0x4F000000
  br i1 %i.aah, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aai = fcmp olt float %i.aag, f0xCF000000
  br i1 %i.aai, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aaj = call i64 @lrintf(float noundef %i.aag) #15, !tbaa !8
  %i.aak = load i32, ptr %i.yj, align 4, !tbaa !117
  %i.aal = sext i32 %i.aak to i64
  %i.aam = add nsw i64 %i.aaj, %i.aal             ; 2 uses
  %i.aan = icmp slt i64 %i.aam, %i.ys
  %..i92.i = call i64 @llvm.smin.i64(i64 %i.aam, i64 range(i64 -2147483648, 2147483648) %i.yt)
  %i.aao = trunc nsw i64 %..i92.i to i32
  %i.aap = select i1 %i.aan, i32 %.076.i, i32 %i.aao
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.076.sink.i = phi i32 [ %.075.i, %bb.cg ], [ %i.aap, %bb.ci ], [ %.076.i, %bb.ch ]
  store i32 %.076.sink.i, ptr %.4101.i, align 4, !tbaa !8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.4101.i, i64 4 ; 2 uses
  %i.aar = add nuw i32 %.181100.i, 1              ; 2 uses
  %exitcond.not.i226 = icmp eq i32 %i.aar, %i.yv
  br i1 %exitcond.not.i226, label %._crit_edge.i227, label %bb.cg, !llvm.loop !264

._crit_edge.i227:                                 ; preds = %bb.cj
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %.074.i
  %i.aat = add nuw i32 %.179102.i, 1              ; 2 uses
  %exitcond123.not.i = icmp eq i32 %i.aat, %i.yu
  br i1 %exitcond123.not.i, label %.loopexit.i, label %.preheader96.i, !llvm.loop !265

.loopexit.i:                                      ; preds = %._crit_edge.i227, %._crit_edge106.i, %bb.ce, %bb.bx
  %indvars.iv.next.i228 = add nuw nsw i64 %indvars.iv.i224, 1 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.084112.i, i64 64
  %i.aav = getelementptr i8, ptr %.085111.i, i64 1080
  %i.aaw = getelementptr inbounds nuw i8, ptr %.086110.i, i64 112
  %i.aax = load i32, ptr %i.wc, align 8, !tbaa !32
  %i.aay = zext i32 %i.aax to i64
  %i.aaz = icmp samesign ult i64 %indvars.iv.next.i228, %i.aay
  br i1 %i.aaz, label %bb.bw, label %.critedge, !llvm.loop !266

.critedge:                                        ; preds = %bb.au, %bb.av, %.loopexit.i, %bb.bn, %bb.bc, %.critedge.i, %._crit_edge.i220, %.critedge154.i, %.loopexit260, %opj_alloc_tile_component_data.exit, %bb.p, %bb.n, %opj_tcd_mct_decode.exit, %bb.an, %bb.ap, %bb.ab, %bb.b, %opj_tcd_t1_decode.exit, %opj_tcd_t2_decode.exit
  %.9 = phi i32 [ 0, %bb.bn ], [ 0, %bb.an ], [ 0, %bb.b ], [ 0, %.loopexit260 ], [ 0, %opj_tcd_t1_decode.exit ], [ 0, %opj_alloc_tile_component_data.exit ], [ 0, %opj_tcd_t2_decode.exit ], [ 0, %bb.bc ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 1, %opj_tcd_mct_decode.exit ], [ 0, %bb.n ], [ 0, %bb.p ], [ 1, %.loopexit.i ], [ 0, %.critedge154.i ], [ 0, %._crit_edge.i220 ], [ 0, %.critedge.i ], [ 0, %bb.av ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 %.9
}

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @opj_tcd_update_tile_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 3 uses
  %.not68.i = icmp eq i32 %i.d, 0
  br i1 %.not68.i, label %opj_tcd_get_decoded_tile_size.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !112
  %.not53.i = icmp eq i32 %i.m, 0
  br i1 %.not53.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.f
  %.04361.i.us = phi ptr [ %i.ap, %bb.f ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %.04460.i.us = phi ptr [ %i.ao, %bb.f ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.04659.i.us = phi i32 [ %i.an, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %.04858.i.us = phi i32 [ %i.aq, %bb.f ], [ 0, %.lr.ph.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.04460.i.us, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105  ; 2 uses
  %i.p = lshr i32 %i.o, 3
  %i.q = and i32 %i.o, 7
  %.not.i.us = icmp ne i32 %i.q, 0
  %i.r = zext i1 %.not.i.us to i32
  %spec.select.i.us = add nuw nsw i32 %i.p, %i.r  ; 2 uses
  %i.s = icmp eq i32 %spec.select.i.us, 3
  %spec.store.select.i.us = select i1 %i.s, i32 4, i32 %spec.select.i.us ; 3 uses
end_hunk_0
