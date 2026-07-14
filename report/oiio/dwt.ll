inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 78
begin_hunk_0_@opj_dwt_decode_real:bb.a

bb.aa:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !309
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !309
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !23, !alias.scope !309 ; 8 uses
  %i.qy = add i32 %2, -1                          ; 4 uses
  %i.qz = zext i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [192 x i8], ptr %i.qx, i64 %i.qz ; 14 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !24, !noalias !309
  %i.rd = load i32, ptr %i.qx, align 8, !tbaa !29, !noalias !309
  %i.re = sub nsw i32 %i.rc, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !30, !noalias !309
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !31, !noalias !309
  %i.rj = sub nsw i32 %i.rg, %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !125, !alias.scope !309 ; 6 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !126, !alias.scope !309 ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !127, !alias.scope !309 ; 6 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !128, !alias.scope !309 ; 6 uses
  %i.rs = load i32, ptr %i.ra, align 8, !tbaa !29, !noalias !309
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !24, !noalias !309
  %i.rv = icmp eq i32 %i.rs, %i.ru
  br i1 %i.rv, label %opj_dwt_decode_partial_97.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ra, i64 4 ; 3 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !31, !noalias !309
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !30, !noalias !309
  %i.sa = icmp eq i32 %i.rx, %i.rz
  br i1 %i.sa, label %opj_dwt_decode_partial_97.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sb = tail call fastcc ptr @opj_dwt_init_sparse_array(ptr noundef nonnull readonly %1, i32 noundef %2) ; 17 uses
  %i.sc = icmp eq ptr %i.sb, null
  br i1 %i.sc, label %opj_dwt_decode_partial_97.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sd = icmp eq i32 %2, 1
  br i1 %i.sd, label %bb.ae, label %.lr.ph.i.i6.preheader

.lr.ph.i.i6.preheader:                            ; preds = %bb.ad
  %xtraiter255 = and i32 %i.qy, 1
  %i.se = icmp eq i32 %2, 2
  br i1 %i.se, label %.lr.ph.i.i6.epil.preheader, label %.lr.ph.i.i6.preheader.new

.lr.ph.i.i6.preheader.new:                        ; preds = %.lr.ph.i.i6.preheader
  %unroll_iter260 = and i32 %i.qy, -2
  br label %.lr.ph.i.i6

bb.ae:                                            ; preds = %bb.ad
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ra, i64 176
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !129, !noalias !309 ; 2 uses
  %i.sh = load i32, ptr %i.ra, align 8, !tbaa !29, !noalias !309 ; 2 uses
  %i.si = sub i32 %i.sg, %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ra, i64 180
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !130, !noalias !309
  %i.sl = load i32, ptr %i.rw, align 4, !tbaa !31, !noalias !309 ; 2 uses
  %i.sm = sub i32 %i.sk, %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ra, i64 184
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !131, !noalias !309 ; 2 uses
  %i.sp = sub i32 %i.so, %i.sh
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ra, i64 188
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !132, !noalias !309
  %i.ss = sub i32 %i.sr, %i.sl
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !133, !alias.scope !309
  %i.sv = sub i32 %i.so, %i.sg
  %i.sw = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sb, i32 noundef %i.si, i32 noundef %i.sm, i32 noundef %i.sp, i32 noundef %i.ss, ptr noundef %i.su, i32 noundef 1, i32 noundef %i.sv, i32 noundef 1) #15, !noalias !309 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sb) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

.lr.ph.i.i6:                                      ; preds = %.lr.ph.i.i6, %.lr.ph.i.i6.preheader.new
  %.017.i.i7 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %.2.i.i10.1, %.lr.ph.i.i6 ]
  %.01116.i.i8 = phi ptr [ %i.qx, %.lr.ph.i.i6.preheader.new ], [ %i.th, %.lr.ph.i.i6 ] ; 8 uses
  %niter261 = phi i32 [ 0, %.lr.ph.i.i6.preheader.new ], [ %niter261.next.1, %.lr.ph.i.i6 ]
  %i.sx = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 192
  %i.sy = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 200
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !24, !alias.scope !312, !noalias !309
  %i.ta = load i32, ptr %i.sx, align 8, !tbaa !29, !alias.scope !312, !noalias !309
  %i.tb = sub nsw i32 %i.sz, %i.ta
  %spec.select.i.i9 = tail call i32 @llvm.umax.i32(i32 %.017.i.i7, i32 %i.tb)
  %i.tc = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 204
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !30, !alias.scope !312, !noalias !309
  %i.te = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 196
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !31, !alias.scope !312, !noalias !309
  %i.tg = sub nsw i32 %i.td, %i.tf
  %.2.i.i10 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9, i32 %i.tg)
  %i.th = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 384 ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 392
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !24, !alias.scope !312, !noalias !309
  %i.tk = load i32, ptr %i.th, align 8, !tbaa !29, !alias.scope !312, !noalias !309
  %i.tl = sub nsw i32 %i.tj, %i.tk
  %spec.select.i.i9.1 = tail call i32 @llvm.umax.i32(i32 %.2.i.i10, i32 %i.tl)
  %i.tm = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 396
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !30, !alias.scope !312, !noalias !309
  %i.to = getelementptr inbounds nuw i8, ptr %.01116.i.i8, i64 388
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !31, !alias.scope !312, !noalias !309
  %i.tq = sub nsw i32 %i.tn, %i.tp
  %.2.i.i10.1 = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.1, i32 %i.tq) ; 3 uses
  %niter261.next.1 = add i32 %niter261, 2         ; 2 uses
  %niter261.ncmp.1 = icmp eq i32 %niter261.next.1, %unroll_iter260
  br i1 %niter261.ncmp.1, label %opj_dwt_max_resolution.exit.i12.unr-lcssa, label %.lr.ph.i.i6, !llvm.loop !32

opj_dwt_max_resolution.exit.i12.unr-lcssa:        ; preds = %.lr.ph.i.i6
  %lcmp.mod257.not = icmp eq i32 %xtraiter255, 0
  br i1 %lcmp.mod257.not, label %opj_dwt_max_resolution.exit.i12, label %.lr.ph.i.i6.epil.preheader

.lr.ph.i.i6.epil.preheader:                       ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.preheader
  %.017.i.i7.epil.init = phi i32 [ 0, %.lr.ph.i.i6.preheader ], [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ]
  %.01116.i.i8.epil.init = phi ptr [ %i.qx, %.lr.ph.i.i6.preheader ], [ %i.th, %opj_dwt_max_resolution.exit.i12.unr-lcssa ] ; 4 uses
  %lcmp.mod259 = trunc i32 %i.qy to i1
  tail call void @llvm.assume(i1 %lcmp.mod259)
  %i.tr = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 192
  %i.ts = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 200
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !24, !alias.scope !312, !noalias !309
  %i.tu = load i32, ptr %i.tr, align 8, !tbaa !29, !alias.scope !312, !noalias !309
  %i.tv = sub nsw i32 %i.tt, %i.tu
  %spec.select.i.i9.epil = tail call i32 @llvm.umax.i32(i32 %.017.i.i7.epil.init, i32 %i.tv)
  %i.tw = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 204
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !30, !alias.scope !312, !noalias !309
  %i.ty = getelementptr inbounds nuw i8, ptr %.01116.i.i8.epil.init, i64 196
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !31, !alias.scope !312, !noalias !309
  %i.ua = sub nsw i32 %i.tx, %i.tz
  %.2.i.i10.epil = tail call i32 @llvm.umax.i32(i32 %spec.select.i.i9.epil, i32 %i.ua)
  br label %opj_dwt_max_resolution.exit.i12

opj_dwt_max_resolution.exit.i12:                  ; preds = %opj_dwt_max_resolution.exit.i12.unr-lcssa, %.lr.ph.i.i6.epil.preheader
  %.2.i.i10.lcssa = phi i32 [ %.2.i.i10.1, %opj_dwt_max_resolution.exit.i12.unr-lcssa ], [ %.2.i.i10.epil, %.lr.ph.i.i6.epil.preheader ]
  %i.ub = zext i32 %.2.i.i10.lcssa to i64
  %i.uc = shl nuw nsw i64 %i.ub, 5
  %i.ud = tail call ptr @opj_aligned_malloc(i64 noundef %i.uc) #15, !noalias !309 ; 13 uses
  store ptr %i.ud, ptr %3, align 8, !tbaa !234, !noalias !309
  %.not.i13 = icmp eq ptr %i.ud, null
  br i1 %.not.i13, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %opj_dwt_max_resolution.exit.i12
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sb) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

bb.ag:                                            ; preds = %opj_dwt_max_resolution.exit.i12
  store ptr %i.ud, ptr %4, align 8, !tbaa !234, !noalias !309
  %.not278.i = icmp eq i32 %2, 0
  br i1 %.not278.i, label %._crit_edge277.i, label %.lr.ph276.i

.lr.ph276.i:                                      ; preds = %bb.ag
  %i.ue = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.uf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ug = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ui = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.uj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.uk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !22, !alias.scope !309 ; 2 uses
  %.not62.i.not.i = icmp eq i32 %i.rl, 0
  %i.um = zext i32 %i.rl to i64
  %.not64.i.not.i = icmp eq i32 %i.rn, 0
  %i.un = zext i32 %i.rn to i64
  %.not66.i.not.i = icmp eq i32 %i.rp, 0
  %i.uo = zext i32 %i.rp to i64
  %.not68.i.not.i = icmp eq i32 %i.rr, 0
  %i.up = zext i32 %i.rr to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ur = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.us = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ut = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ud, i64 32 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.uw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ux = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.uy = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.uz = zext i32 %i.ul to i64
  %wide.trip.count.i14 = zext i32 %2 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge269.i, %.lr.ph276.i
  %indvars.iv.i15 = phi i64 [ 1, %.lr.ph276.i ], [ %indvars.iv.next.i17, %._crit_edge269.i ] ; 3 uses
  %.0155273.i = phi ptr [ %i.qx, %.lr.ph276.i ], [ %i.va, %._crit_edge269.i ] ; 8 uses
  %.0156272.i = phi i32 [ %i.re, %.lr.ph276.i ], [ %i.ve, %._crit_edge269.i ] ; 5 uses
  %.0157270.i = phi i32 [ %i.rj, %.lr.ph276.i ], [ %i.vj, %._crit_edge269.i ] ; 9 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 192 ; 2 uses
  store i32 %.0156272.i, ptr %i.ue, align 4, !tbaa !236, !noalias !309
  store i32 %.0157270.i, ptr %i.uf, align 4, !tbaa !236, !noalias !309
  %i.vb = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 200
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !24, !noalias !309
  %i.vd = load i32, ptr %i.va, align 8, !tbaa !29, !noalias !309 ; 2 uses
  %i.ve = sub nsw i32 %i.vc, %i.vd                ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 204
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !30, !noalias !309
  %i.vh = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 196
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !31, !noalias !309 ; 2 uses
  %i.vj = sub nsw i32 %i.vg, %i.vi                ; 9 uses
  %i.vk = sub i32 %i.ve, %.0156272.i              ; 2 uses
  store i32 %i.vk, ptr %i.ug, align 8, !tbaa !237, !noalias !309
  %i.vl = srem i32 %i.vd, 2                       ; 3 uses
  store i32 %i.vl, ptr %i.uh, align 8, !tbaa !238, !noalias !309
  %i.vm = sub i32 %i.vj, %.0157270.i              ; 2 uses
  store i32 %i.vm, ptr %i.ui, align 8, !tbaa !237, !noalias !309
  %i.vn = srem i32 %i.vi, 2                       ; 3 uses
  store i32 %i.vn, ptr %i.uj, align 8, !tbaa !238, !noalias !309
  %i.vo = icmp eq i64 %indvars.iv.i15, %i.uz
  br i1 %i.vo, label %opj_dwt_get_band_coordinates.exit196.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.vp = trunc nuw i64 %indvars.iv.i15 to i32
  %i.vq = sub i32 %i.ul, %i.vp                    ; 2 uses
  %i.vr = zext i32 %i.vq to i64                   ; 9 uses
  %notmask.i.i = shl nsw i64 -1, %i.vr
  %i.vs = xor i64 %notmask.i.i, -1                ; 8 uses
  %i.vt = add nuw i64 %i.vs, %i.um
  %i.vu = lshr i64 %i.vt, %i.vr
  %i.vv = trunc i64 %i.vu to i32
  %.ph.i = select i1 %.not62.i.not.i, i32 0, i32 %i.vv ; 2 uses
  %i.vw = add nuw i64 %i.vs, %i.un
  %i.vx = lshr i64 %i.vw, %i.vr
  %i.vy = trunc i64 %i.vx to i32
  %.ph247.i = select i1 %.not64.i.not.i, i32 0, i32 %i.vy ; 2 uses
  %i.vz = add nuw i64 %i.vs, %i.uo
  %i.wa = lshr i64 %i.vz, %i.vr
  %i.wb = trunc i64 %i.wa to i32
  %.ph250.i = select i1 %.not66.i.not.i, i32 0, i32 %i.wb ; 2 uses
  %i.wc = add nuw i64 %i.vs, %i.up
  %i.wd = lshr i64 %i.wc, %i.vr
  %i.we = trunc i64 %i.wd to i32
  %.ph252.i = select i1 %.not68.i.not.i, i32 0, i32 %i.we ; 2 uses
  %i.wf = add i32 %i.vq, -1
  %i.wg = shl nuw i32 1, %i.wf                    ; 8 uses
  %.not62.i187.i = icmp ugt i32 %i.rl, %i.wg
  %i.wh = sub nuw i32 %i.rl, %i.wg
  %i.wi = zext i32 %i.wh to i64
  %i.wj = add nuw i64 %i.wi, %i.vs
  %i.wk = lshr i64 %i.wj, %i.vr
  %i.wl = trunc i64 %i.wk to i32
  %.ph254.i = select i1 %.not62.i187.i, i32 %i.wl, i32 0 ; 2 uses
  %.not66.i188.i = icmp ugt i32 %i.rp, %i.wg
  %i.wm = sub nuw i32 %i.rp, %i.wg
  %i.wn = zext i32 %i.wm to i64
  %i.wo = add nuw i64 %i.wn, %i.vs
  %i.wp = lshr i64 %i.wo, %i.vr
  %i.wq = trunc i64 %i.wp to i32
  %.ph256.i = select i1 %.not66.i188.i, i32 %i.wq, i32 0 ; 2 uses
  %.not64.i192.i = icmp ugt i32 %i.rn, %i.wg
  %i.wr = sub nuw i32 %i.rn, %i.wg
  %i.ws = zext i32 %i.wr to i64
  %i.wt = add nuw i64 %i.ws, %i.vs
  %i.wu = lshr i64 %i.wt, %i.vr
  %i.wv = trunc i64 %i.wu to i32
  %.ph258.i = select i1 %.not64.i192.i, i32 %i.wv, i32 0 ; 2 uses
  %.not68.i193.i = icmp ugt i32 %i.rr, %i.wg
  br i1 %.not68.i193.i, label %bb.aj, label %opj_dwt_get_band_coordinates.exit196.i

bb.aj:                                            ; preds = %bb.ai
  %i.ww = sub nuw i32 %i.rr, %i.wg
  %i.wx = zext i32 %i.ww to i64
  %i.wy = add nuw i64 %i.wx, %i.vs
  %i.wz = lshr i64 %i.wy, %i.vr
  %i.xa = trunc i64 %i.wz to i32
  br label %opj_dwt_get_band_coordinates.exit196.i

opj_dwt_get_band_coordinates.exit196.i:           ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.xb = phi i32 [ %.ph258.i, %bb.ai ], [ %.ph258.i, %bb.aj ], [ %i.rn, %bb.ah ]
  %i.xc = phi i32 [ %.ph254.i, %bb.ai ], [ %.ph254.i, %bb.aj ], [ %i.rl, %bb.ah ]
  %i.xd = phi i32 [ %.ph250.i, %bb.ai ], [ %.ph250.i, %bb.aj ], [ %i.rp, %bb.ah ]
  %i.xe = phi i32 [ %.ph.i, %bb.ai ], [ %.ph.i, %bb.aj ], [ %i.rl, %bb.ah ]
  %i.xf = phi i32 [ %.ph247.i, %bb.ai ], [ %.ph247.i, %bb.aj ], [ %i.rn, %bb.ah ]
  %i.xg = phi i32 [ %.ph252.i, %bb.ai ], [ %.ph252.i, %bb.aj ], [ %i.rr, %bb.ah ]
  %i.xh = phi i32 [ %.ph256.i, %bb.ai ], [ %.ph256.i, %bb.aj ], [ %i.rp, %bb.ah ]
  %i.xi = phi i32 [ 0, %bb.ai ], [ %i.xa, %bb.aj ], [ %i.rr, %bb.ah ]
  %i.xj = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 224
  %i.xk = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 272
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !137, !noalias !309 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 228
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !141, !noalias !309 ; 2 uses
  %i.xo = load i32, ptr %i.xj, align 8, !tbaa !137, !noalias !309 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.0155273.i, i64 276
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !141, !noalias !309 ; 2 uses
  %i.xr = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xe, i32 %i.xl)
  %i.xs = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xf, i32 %i.xn)
  %i.xt = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xd, i32 %i.xl)
  %i.xu = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xg, i32 %i.xn)
  %i.xv = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xc, i32 %i.xo)
  %i.xw = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xh, i32 %i.xo)
  %i.xx = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xb, i32 %i.xq)
  %i.xy = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xi, i32 %i.xq)
  %i.xz = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xr, i32 4) ; 5 uses
  %i.ya = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xt, i32 range(i32 2, 5) 4)
  %i.yb = tail call noundef i32 @llvm.umin.i32(i32 %i.ya, i32 %.0156272.i) ; 4 uses
  %i.yc = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xv, i32 4) ; 5 uses
  %i.yd = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xw, i32 range(i32 2, 5) 4)
  %i.ye = tail call noundef i32 @llvm.umin.i32(i32 %i.yd, i32 %i.vk) ; 4 uses
  %i.yf = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xs, i32 4) ; 7 uses
  %i.yg = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xu, i32 range(i32 2, 5) 4)
  %i.yh = tail call noundef i32 @llvm.umin.i32(i32 %i.yg, i32 %.0157270.i) ; 6 uses
  %i.yi = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.xx, i32 4) ; 7 uses
  %i.yj = tail call range(i32 2, 0) i32 @llvm.uadd.sat.i32(i32 %i.xy, i32 range(i32 2, 5) 4)
  %i.yk = tail call noundef i32 @llvm.umin.i32(i32 %i.yj, i32 %i.vm) ; 6 uses
  %i.yl = icmp eq i32 %i.vl, 0                    ; 4 uses
  %..i = select i1 %i.yl, i32 %i.xz, i32 %i.yc
  %.314.i = select i1 %i.yl, i32 %i.yc, i32 %i.xz
  %.315.i = select i1 %i.yl, i32 %i.yb, i32 %i.ye
  %.316.i = select i1 %i.yl, i32 %i.ye, i32 %i.yb
  %i.ym = shl i32 %..i, 1
  %i.yn = shl i32 %.314.i, 1
  %i.yo = or disjoint i32 %i.yn, 1
  %i.yp = tail call noundef i32 @llvm.umin.i32(i32 %i.ym, i32 %i.yo) ; 6 uses
  %i.yq = shl i32 %.315.i, 1
  %i.yr = shl i32 %.316.i, 1
  %i.ys = or disjoint i32 %i.yr, 1
  %i.yt = tail call noundef i32 @llvm.umax.i32(i32 %i.yq, i32 %i.ys)
  %i.yu = tail call noundef i32 @llvm.umin.i32(i32 %i.yt, i32 %i.ve) ; 5 uses
  %i.yv = icmp eq i32 %i.vn, 0
  br i1 %i.yv, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %opj_dwt_get_band_coordinates.exit196.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %opj_dwt_get_band_coordinates.exit196.i
  %.sink313.i.a = phi i32 [ %i.yi, %bb.ak ], [ %i.yf, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink312.i = phi i32 [ %i.yf, %bb.ak ], [ %i.yi, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink308.i.a = phi i32 [ %i.yk, %bb.ak ], [ %i.yh, %opj_dwt_get_band_coordinates.exit196.i ]
  %.sink307.i = phi i32 [ %i.yh, %bb.ak ], [ %i.yk, %opj_dwt_get_band_coordinates.exit196.i ]
  %i.yw = shl i32 %.sink313.i.a, 1
  %i.yx = shl i32 %.sink312.i, 1
  %i.yy = or disjoint i32 %i.yx, 1
  %i.yz = tail call noundef i32 @llvm.umin.i32(i32 %i.yw, i32 %i.yy) ; 2 uses
  %i.za = shl i32 %.sink308.i.a, 1
  %i.zb = shl i32 %.sink307.i, 1
  %i.zc = or disjoint i32 %i.zb, 1
  %i.zd = tail call noundef i32 @llvm.umax.i32(i32 %i.za, i32 %i.zc)
  %i.ze = tail call noundef i32 @llvm.umin.i32(i32 %i.zd, i32 %i.vj)
  store i32 %i.xz, ptr %i.uq, align 4, !tbaa !239, !noalias !309
  store i32 %i.yb, ptr %i.ur, align 8, !tbaa !240, !noalias !309
  store i32 %i.yc, ptr %i.us, align 4, !tbaa !241, !noalias !309
  store i32 %i.ye, ptr %i.ut, align 8, !tbaa !242, !noalias !309
  %i.zf = icmp ugt i32 %i.vj, 7
  br i1 %i.zf, label %.lr.ph.i19, label %._crit_edge.i16

.lr.ph.i19:                                       ; preds = %bb.al
  %i.zg = add i32 %i.yi, %.0157270.i
  %i.zh = add i32 %i.yk, %.0157270.i
  %i.zi = sext i32 %i.vl to i64                   ; 2 uses
  %i.zj = getelementptr inbounds [32 x i8], ptr %i.ud, i64 %i.zi
  %i.zk = shl i32 %i.xz, 1
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [32 x i8], ptr %i.zj, i64 %i.zl
  %i.zn = add i32 %i.yc, %.0156272.i
  %i.zo = add i32 %i.ye, %.0156272.i
  %i.zp = sub nsw i64 0, %i.zi
  %i.zq = getelementptr inbounds [32 x i8], ptr %i.uu, i64 %i.zp
  %i.zr = shl i32 %i.yc, 1
  %i.zs = zext i32 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [32 x i8], ptr %i.zq, i64 %i.zs
  %i.zu = zext i32 %i.yp to i64
  %i.zv = getelementptr inbounds nuw [32 x i8], ptr %i.ud, i64 %i.zu
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %.lr.ph.i19
  %.0164266.i = phi i32 [ 0, %.lr.ph.i19 ], [ %.pre-phi.i21, %bb.aq ] ; 8 uses
  %i.zw = or disjoint i32 %.0164266.i, 7          ; 2 uses
  %.not177.i = icmp uge i32 %i.zw, %i.yf
  %i.zx = icmp ult i32 %.0164266.i, %i.yh
  %or.cond.i20 = and i1 %i.zx, %.not177.i
  br i1 %or.cond.i20, label %.lr.ph.i198.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not178.i = icmp uge i32 %i.zw, %i.zg
  %i.zy = icmp ult i32 %.0164266.i, %i.zh
  %or.cond261.i = and i1 %i.zy, %.not178.i
  br i1 %or.cond261.i, label %.lr.ph.i198.i, label %._crit_edge282.i

._crit_edge282.i:                                 ; preds = %bb.an
  %.pre.i = add i32 %.0164266.i, 8
  br label %bb.aq

.lr.ph.i198.i:                                    ; preds = %bb.an, %bb.am
  %i.zz = sub i32 %i.vj, %.0164266.i
  %i.aaa = tail call noundef i32 @llvm.umin.i32(i32 %i.zz, i32 8)
  %wide.trip.count.i.i22 = zext nneg i32 %i.aaa to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i198.i
  %indvars.iv.i.i23 = phi i64 [ 0, %.lr.ph.i198.i ], [ %indvars.iv.next.i.i24, %bb.ao ] ; 4 uses
  %i.aab = trunc nuw i64 %indvars.iv.i.i23 to i32
  %i.aac = add i32 %.0164266.i, %i.aab            ; 3 uses
  %i.aad = add i32 %i.aac, 1                      ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.i.i23
  %i.aaf = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sb, i32 noundef %i.xz, i32 noundef %i.aac, i32 noundef %i.yb, i32 noundef %i.aad, ptr noundef nonnull %i.aae, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !309 ; 0 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %indvars.iv.i.i23
  %i.aah = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sb, i32 noundef %i.zn, i32 noundef %i.aac, i32 noundef %i.zo, i32 noundef %i.aad, ptr noundef nonnull %i.aag, i32 noundef 16, i32 noundef 0, i32 noundef 1) #15, !noalias !309 ; 0 uses
  %indvars.iv.next.i.i24 = add nuw nsw i64 %indvars.iv.i.i23, 1 ; 2 uses
  %exitcond.not.i.i25 = icmp eq i64 %indvars.iv.next.i.i24, %wide.trip.count.i.i22
  br i1 %exitcond.not.i.i25, label %opj_v8dwt_interleave_partial_h.exit.loopexit.i, label %bb.ao, !llvm.loop !315

opj_v8dwt_interleave_partial_h.exit.loopexit.i:   ; preds = %bb.ao
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !309
  %i.aai = add i32 %.0164266.i, 8                 ; 2 uses
  %i.aaj = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.sb, i32 noundef %i.yp, i32 noundef %.0164266.i, i32 noundef %i.yu, i32 noundef %i.aai, ptr noundef nonnull %i.zv, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !309
  %.not179.i = icmp eq i32 %i.aaj, 0
  br i1 %.not179.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %opj_v8dwt_interleave_partial_h.exit.loopexit.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sb) #15, !noalias !309
  tail call void @opj_aligned_free(ptr noundef nonnull %i.ud) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

bb.aq:                                            ; preds = %opj_v8dwt_interleave_partial_h.exit.loopexit.i, %._crit_edge282.i
  %.pre-phi.i21 = phi i32 [ %.pre.i, %._crit_edge282.i ], [ %i.aai, %opj_v8dwt_interleave_partial_h.exit.loopexit.i ] ; 3 uses
  %i.aak = or disjoint i32 %.pre-phi.i21, 7       ; 2 uses
  %i.aal = icmp ult i32 %i.aak, %i.vj
  br i1 %i.aal, label %bb.am, label %._crit_edge.i16, !llvm.loop !316

._crit_edge.i16:                                  ; preds = %bb.aq, %bb.al
  %.0164.lcssa.i = phi i32 [ 0, %bb.al ], [ %.pre-phi.i21, %bb.aq ] ; 6 uses
  %.lcssa.i = phi i32 [ 7, %bb.al ], [ %i.aak, %bb.aq ] ; 2 uses
  %i.aam = icmp ult i32 %.0164.lcssa.i, %i.vj
  br i1 %i.aam, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %._crit_edge.i16
  %.not173.i = icmp uge i32 %.lcssa.i, %i.yf
  %i.aan = icmp ult i32 %.0164.lcssa.i, %i.yh
  %or.cond182.i = and i1 %i.aan, %.not173.i
  br i1 %or.cond182.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.aao = add i32 %i.yi, %.0157270.i
  %.not174.i = icmp uge i32 %.lcssa.i, %i.aao
  %i.aap = add i32 %i.yk, %.0157270.i
  %i.aaq = icmp ult i32 %.0164.lcssa.i, %i.aap
  %or.cond263.i = and i1 %i.aaq, %.not174.i
  br i1 %or.cond263.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.aar = sub i32 %i.vj, %.0164.lcssa.i
  call fastcc void @opj_v8dwt_interleave_partial_h(ptr noundef %3, ptr noundef %i.sb, i32 noundef %.0164.lcssa.i, i32 noundef %i.aar), !noalias !309
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %3), !noalias !309
  %i.aas = zext i32 %i.yp to i64
  %i.aat = getelementptr inbounds nuw [32 x i8], ptr %i.ud, i64 %i.aas
  %i.aau = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.sb, i32 noundef %i.yp, i32 noundef %.0164.lcssa.i, i32 noundef %i.yu, i32 noundef %i.vj, ptr noundef nonnull %i.aat, i32 noundef 8, i32 noundef 1, i32 noundef 1) #15, !noalias !309
  %.not175.i = icmp eq i32 %i.aau, 0
  br i1 %.not175.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sb) #15, !noalias !309
  tail call void @opj_aligned_free(ptr noundef nonnull %i.ud) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

bb.av:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i16
  store i32 %i.yf, ptr %i.uv, align 4, !tbaa !239, !noalias !309
  store i32 %i.yh, ptr %i.uw, align 8, !tbaa !240, !noalias !309
  store i32 %i.yi, ptr %i.ux, align 4, !tbaa !241, !noalias !309
  store i32 %i.yk, ptr %i.uy, align 8, !tbaa !242, !noalias !309
  %i.aav = icmp ult i32 %i.yp, %i.yu
  br i1 %i.aav, label %.critedge.lr.ph.i, label %._crit_edge269.i

.critedge.lr.ph.i:                                ; preds = %bb.av
  %i.aaw = sext i32 %i.vn to i64                  ; 2 uses
  %i.aax = getelementptr inbounds [32 x i8], ptr %i.ud, i64 %i.aaw
  %i.aay = shl i32 %i.yf, 1
  %i.aaz = zext i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [32 x i8], ptr %i.aax, i64 %i.aaz
  %i.abb = add i32 %i.yi, %.0157270.i
  %i.abc = add i32 %i.yk, %.0157270.i
  %i.abd = sub nsw i64 0, %i.aaw
  %i.abe = getelementptr inbounds [32 x i8], ptr %i.uu, i64 %i.abd
  %i.abf = shl i32 %i.yi, 1
  %i.abg = zext i32 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [32 x i8], ptr %i.abe, i64 %i.abg
  %i.abi = zext i32 %i.yz to i64
  %i.abj = getelementptr inbounds nuw [32 x i8], ptr %i.ud, i64 %i.abi
  br label %.critedge.i

bb.aw:                                            ; preds = %.critedge.i
  %i.abk = add i32 %.1165268.i, 8                 ; 2 uses
  %i.abl = icmp ult i32 %i.abk, %i.yu
  br i1 %i.abl, label %.critedge.i, label %._crit_edge269.i, !llvm.loop !317

.critedge.i:                                      ; preds = %bb.aw, %.critedge.lr.ph.i
  %.1165268.i = phi i32 [ %i.yp, %.critedge.lr.ph.i ], [ %i.abk, %bb.aw ] ; 6 uses
  %i.abm = sub nuw i32 %i.yu, %.1165268.i
  %i.abn = tail call noundef i32 @llvm.umin.i32(i32 %i.abm, i32 8)
  %i.abo = add i32 %i.abn, %.1165268.i            ; 3 uses
  %i.abp = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sb, i32 noundef %.1165268.i, i32 noundef %i.yf, i32 noundef %i.abo, i32 noundef %i.yh, ptr noundef nonnull %i.aba, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !318 ; 0 uses
  %i.abq = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sb, i32 noundef %.1165268.i, i32 noundef %i.abb, i32 noundef %i.abo, i32 noundef %i.abc, ptr noundef nonnull %i.abh, i32 noundef 1, i32 noundef 16, i32 noundef 1) #15, !noalias !318 ; 0 uses
  call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %4), !noalias !309
  %i.abr = tail call i32 @opj_sparse_array_int32_write(ptr noundef nonnull %i.sb, i32 noundef %.1165268.i, i32 noundef %i.yz, i32 noundef %i.abo, i32 noundef %i.ze, ptr noundef nonnull %i.abj, i32 noundef 1, i32 noundef 8, i32 noundef 1) #15, !noalias !309
  %.not176.not.i = icmp eq i32 %i.abr, 0
  br i1 %.not176.not.i, label %bb.ax, label %bb.aw

bb.ax:                                            ; preds = %.critedge.i
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sb) #15, !noalias !309
  tail call void @opj_aligned_free(ptr noundef nonnull %i.ud) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

._crit_edge269.i:                                 ; preds = %bb.aw, %bb.av
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count.i14
  br i1 %exitcond.not.i18, label %._crit_edge277.i, label %bb.ah, !llvm.loop !321

._crit_edge277.i:                                 ; preds = %._crit_edge269.i, %bb.ag
  %i.abs = getelementptr inbounds nuw i8, ptr %i.ra, i64 176
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !129, !noalias !309 ; 2 uses
  %i.abu = load i32, ptr %i.ra, align 8, !tbaa !29, !noalias !309 ; 2 uses
  %i.abv = sub i32 %i.abt, %i.abu
  %i.abw = getelementptr inbounds nuw i8, ptr %i.ra, i64 180
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !130, !noalias !309
  %i.aby = load i32, ptr %i.rw, align 4, !tbaa !31, !noalias !309 ; 2 uses
  %i.abz = sub i32 %i.abx, %i.aby
  %i.aca = getelementptr inbounds nuw i8, ptr %i.ra, i64 184
  %i.acb = load i32, ptr %i.aca, align 8, !tbaa !131, !noalias !309 ; 2 uses
  %i.acc = sub i32 %i.acb, %i.abu
  %i.acd = getelementptr inbounds nuw i8, ptr %i.ra, i64 188
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !132, !noalias !309
  %i.acf = sub i32 %i.ace, %i.aby
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !133, !alias.scope !309
  %i.aci = sub i32 %i.acb, %i.abt
  %i.acj = tail call i32 @opj_sparse_array_int32_read(ptr noundef nonnull %i.sb, i32 noundef %i.abv, i32 noundef %i.abz, i32 noundef %i.acc, i32 noundef %i.acf, ptr noundef %i.ach, i32 noundef 1, i32 noundef %i.aci, i32 noundef 1) #15, !noalias !309 ; 0 uses
  tail call void @opj_sparse_array_int32_free(ptr noundef nonnull %i.sb) #15, !noalias !309
  tail call void @opj_aligned_free(ptr noundef nonnull %i.ud) #15, !noalias !309
  br label %opj_dwt_decode_partial_97.exit

opj_dwt_decode_partial_97.exit:                   ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.af, %bb.ap, %bb.au, %bb.ax, %._crit_edge277.i
  %.4.i = phi i32 [ 1, %._crit_edge277.i ], [ 1, %bb.aa ], [ 1, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.ac ], [ 1, %bb.ab ], [ 0, %bb.ax ], [ 0, %bb.au ], [ 0, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !309
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !309
  br label %bb.ay

bb.ay:                                            ; preds = %opj_dwt_decode_partial_97.exit, %opj_dwt_decode_tile_97.exit
  %.0 = phi i32 [ %.10.i, %opj_dwt_decode_tile_97.exit ], [ %.4.i, %opj_dwt_decode_partial_97.exit ]
  ret i32 %.0
}

declare i32 @opj_thread_pool_get_thread_count(ptr noundef) local_unnamed_addr #8

declare ptr @opj_aligned_32_malloc(i64 noundef) local_unnamed_addr #8

declare ptr @opj_malloc(i64 noundef) local_unnamed_addr #8

declare void @opj_thread_pool_wait_completion(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @opj_aligned_free(ptr noundef) local_unnamed_addr #8

declare void @opj_free(ptr noundef) local_unnamed_addr #8

declare i32 @opj_thread_pool_submit_job(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @opj_dwt_encode_v_func(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.d = add i32 %i.b, 7
  %i.e = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.f = icmp ult i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi i32 [ %i.b, %.lr.ph ], [ %i.l, %bb.b ] ; 3 uses
  %i.l = add i32 %.025, 8                         ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.o = zext i32 %.025 to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %0, align 8, !tbaa !36
  %i.r = load i32, ptr %i.i, align 8, !tbaa !42
  %i.s = load i32, ptr %i.j, align 8, !tbaa !41
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = load i32, ptr %i.k, align 4, !tbaa !43
  tail call void %i.m(ptr noundef %i.p, ptr noundef %i.q, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %i.v, i32 noundef 8) #15
  %i.w = add i32 %.025, 15
  %i.x = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.y = icmp ult i32 %i.w, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !322

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.l, %bb.b ] ; 3 uses
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.x, %bb.b ] ; 2 uses
  %i.z = icmp ult i32 %.0.lcssa, %.lcssa
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
