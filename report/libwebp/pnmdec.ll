Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/pnmdec?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ReadPNM:bb.a
  %i.ra = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %index
  store <16 x i8> %i.qz, ptr %i.ra, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rb = icmp eq i64 %index.next, %n.vec
  br i1 %i.rb, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index340 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next341, %vec.epilog.vector.body ] ; 10 uses
  %i.rc = shl nuw nsw i64 %index340, 1
  %i.rd = shl i64 %index340, 1
  %i.re = shl i64 %index340, 1
  %i.rf = shl i64 %index340, 1
  %i.rg = shl i64 %index340, 1
  %i.rh = shl i64 %index340, 1
  %i.ri = shl i64 %index340, 1
  %i.rj = shl i64 %index340, 1
  %i.rk = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rc ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rd ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.rn = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.re ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rf ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 6
  %i.rr = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rg ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rh ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 10
  %i.rv = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ri ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  %i.rx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.rj ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 14
  %i.rz = load i8, ptr %i.rk, align 1, !tbaa !29
  %i.sa = load i8, ptr %i.rm, align 1, !tbaa !29
  %i.sb = load i8, ptr %i.ro, align 1, !tbaa !29
  %i.sc = load i8, ptr %i.rq, align 1, !tbaa !29
  %i.sd = load i8, ptr %i.rs, align 1, !tbaa !29
  %i.se = load i8, ptr %i.ru, align 1, !tbaa !29
  %i.sf = load i8, ptr %i.rw, align 1, !tbaa !29
  %i.sg = load i8, ptr %i.ry, align 1, !tbaa !29
  %i.sh = insertelement <8 x i8> poison, i8 %i.rz, i64 0
  %i.si = insertelement <8 x i8> %i.sh, i8 %i.sa, i64 1
  %i.sj = insertelement <8 x i8> %i.si, i8 %i.sb, i64 2
  %i.sk = insertelement <8 x i8> %i.sj, i8 %i.sc, i64 3
  %i.sl = insertelement <8 x i8> %i.sk, i8 %i.sd, i64 4
  %i.sm = insertelement <8 x i8> %i.sl, i8 %i.se, i64 5
  %i.sn = insertelement <8 x i8> %i.sm, i8 %i.sf, i64 6
  %i.so = insertelement <8 x i8> %i.sn, i8 %i.sg, i64 7
  %i.sp = zext <8 x i8> %i.so to <8 x i16>
  %i.sq = shl nuw <8 x i16> %i.sp, splat (i16 8)
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rk, i64 1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rl, i64 3
  %i.st = getelementptr inbounds nuw i8, ptr %i.rn, i64 5
  %i.su = getelementptr inbounds nuw i8, ptr %i.rp, i64 7
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rr, i64 9
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rt, i64 11
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rv, i64 13
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rx, i64 15
  %i.sz = load i8, ptr %i.sr, align 1, !tbaa !29
  %i.ta = load i8, ptr %i.ss, align 1, !tbaa !29
  %i.tb = load i8, ptr %i.st, align 1, !tbaa !29
  %i.tc = load i8, ptr %i.su, align 1, !tbaa !29
  %i.td = load i8, ptr %i.sv, align 1, !tbaa !29
  %i.te = load i8, ptr %i.sw, align 1, !tbaa !29
  %i.tf = load i8, ptr %i.sx, align 1, !tbaa !29
  %i.tg = load i8, ptr %i.sy, align 1, !tbaa !29
  %i.th = insertelement <8 x i8> poison, i8 %i.sz, i64 0
  %i.ti = insertelement <8 x i8> %i.th, i8 %i.ta, i64 1
  %i.tj = insertelement <8 x i8> %i.ti, i8 %i.tb, i64 2
  %i.tk = insertelement <8 x i8> %i.tj, i8 %i.tc, i64 3
  %i.tl = insertelement <8 x i8> %i.tk, i8 %i.td, i64 4
  %i.tm = insertelement <8 x i8> %i.tl, i8 %i.te, i64 5
  %i.tn = insertelement <8 x i8> %i.tm, i8 %i.tf, i64 6
  %i.to = insertelement <8 x i8> %i.tn, i8 %i.tg, i64 7
  %i.tp = zext <8 x i8> %i.to to <8 x i16>
  %i.tq = or disjoint <8 x i16> %i.sq, %i.tp
  %i.tr = call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.tq, <8 x i16> splat (i16 255))
  %i.ts = trunc nuw <8 x i16> %i.tr to <8 x i8>
  %i.tt = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %index340
  store <8 x i8> %i.ts, ptr %i.tt, align 1, !tbaa !29
  %index.next341 = add nuw i64 %index340, 8       ; 2 uses
  %i.tu = icmp eq i64 %index.next341, %n.vec339
  br i1 %i.tu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n342, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv236.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec339, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %vec.epilog.scalar.ph ], [ %indvars.iv236.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.tv = shl nuw nsw i64 %indvars.iv236, 1
  %i.tw = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.tv ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !29
  %i.ty = zext i8 %i.tx to i16
  %i.tz = shl nuw i16 %i.ty, 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !29
  %i.uc = zext i8 %i.ub to i16
  %i.ud = or disjoint i16 %i.tz, %i.uc
  %spec.store.select.us.us.us.us.us.us.us = call i16 @llvm.umin.i16(i16 %i.ud, i16 255)
  %i.ue = trunc nuw i16 %spec.store.select.us.us.us.us.us.us.us to i8
  %i.uf = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %indvars.iv236
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !29
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count247
  br i1 %exitcond242.not, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us, label %vec.epilog.scalar.ph, !llvm.loop !16

..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ug = add i64 %.0103159.us161.us.us, %i.ip
  %i.uh = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %i.if
  %i.ui = add nuw nsw i32 %.0106155.us163.us.us, 1 ; 2 uses
  %exitcond243.not = icmp eq i32 %i.ui, %i.ih
  br i1 %exitcond243.not, label %._crit_edge, label %iter.check, !llvm.loop !11

.lr.ph.us.us:                                     ; preds = %.lr.ph160.split.split.split.us.split.us, %..loopexit134_crit_edge.split.us.us.split.us.us.split
  %.0103159.us161.us = phi i64 [ %i.vc, %..loopexit134_crit_edge.split.us.us.split.us.us.split ], [ %.0.i, %.lr.ph160.split.split.split.us.split.us ] ; 2 uses
  %.0104156.us162.us = phi ptr [ %i.vd, %..loopexit134_crit_edge.split.us.us.split.us.us.split ], [ %i.ik, %.lr.ph160.split.split.split.us.split.us ] ; 2 uses
  %.0106155.us163.us = phi i32 [ %i.ve, %..loopexit134_crit_edge.split.us.us.split.us.us.split ], [ 0, %.lr.ph160.split.split.split.us.split.us ]
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bw, %.lr.ph.us.us
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %bb.bw ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %.0102152.us.us.us.us = phi i32 [ %.1.us.us.us.us, %bb.bw ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.uk = and i64 %indvars.iv230, 3
  %i.ul = icmp eq i64 %i.uk, 3
  %or.cond125.reass.us.us.us.us = and i1 %i.ul, %invariant.op
  br i1 %or.cond125.reass.us.us.us.us, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.um = shl nuw nsw i64 %indvars.iv230, 1
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.um ; 2 uses
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !29
  %i.up = zext i8 %i.uo to i32
  %i.uq = shl nuw nsw i32 %i.up, 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 1
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !29
  %i.ut = zext i8 %i.us to i32
  %i.uu = or disjoint i32 %i.uq, %i.ut
  %i.uv = mul nuw nsw i32 %i.uu, 255
  %i.uw = add nsw i32 %i.uv, %i.iu
  %i.ux = udiv i32 %i.uw, %i.iq
  %spec.store.select.us.us.us.us = call i32 @llvm.umin.i32(i32 %i.ux, i32 255)
  %i.uy = trunc nuw i32 %spec.store.select.us.us.us.us to i8
  %i.uz = sext i32 %.0102152.us.us.us.us to i64
  %i.va = getelementptr inbounds i8, ptr %.0104156.us162.us, i64 %i.uz
  store i8 %i.uy, ptr %i.va, align 1, !tbaa !29
  %i.vb = add nsw i32 %.0102152.us.us.us.us, 1
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.1.us.us.us.us = phi i32 [ %.0102152.us.us.us.us, %bb.bu ], [ %i.vb, %bb.bv ]
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count247
  br i1 %exitcond234.not, label %..loopexit134_crit_edge.split.us.us.split.us.us.split, label %bb.bu, !llvm.loop !13

..loopexit134_crit_edge.split.us.us.split.us.us.split: ; preds = %bb.bw
  %i.vc = add i64 %.0103159.us161.us, %i.ip
  %i.vd = getelementptr inbounds nuw i8, ptr %.0104156.us162.us, i64 %i.if
  %i.ve = add nuw nsw i32 %.0106155.us163.us, 1   ; 2 uses
  %exitcond235.not = icmp eq i32 %i.ve, %i.ih
  br i1 %exitcond235.not, label %._crit_edge, label %.lr.ph.us.us, !llvm.loop !11

.lr.ph160.split.split.split.us.split:             ; preds = %.lr.ph160.split.split.split.us
  br i1 %i.ir, label %.lr.ph160.split.split.split.us.split.split.us, label %.lr.ph.us

.lr.ph160.split.split.split.us.split.split.us:    ; preds = %.lr.ph160.split.split.split.us.split
  br i1 %invariant.op, label %.lr.ph.us.us172.us, label %.lr.ph.us.us172.preheader

.lr.ph.us.us172.preheader:                        ; preds = %.lr.ph160.split.split.split.us.split.split.us
  %xtraiter = and i32 %i.ih, 3                    ; 3 uses
  %i.vf = icmp ult i32 %i.ih, 4
  br i1 %i.vf, label %.lr.ph.us.us172.epil.preheader, label %.lr.ph.us.us172.preheader.new

.lr.ph.us.us172.preheader.new:                    ; preds = %.lr.ph.us.us172.preheader
  %unroll_iter = and i32 %i.ih, 2147483644
  br label %.lr.ph.us.us172

.lr.ph.us.us172.us:                               ; preds = %.lr.ph160.split.split.split.us.split.split.us, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us
  %.0103159.us161.us173.us = phi i64 [ %i.vt, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us ], [ %.0.i, %.lr.ph160.split.split.split.us.split.split.us ] ; 2 uses
  %.0104156.us162.us174.us = phi ptr [ %i.vu, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us ], [ %i.ik, %.lr.ph160.split.split.split.us.split.split.us ] ; 3 uses
  %.0106155.us163.us175.us = phi i32 [ %i.vv, %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us ], [ 0, %.lr.ph160.split.split.split.us.split.split.us ]
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us173.us ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %.lr.ph.us.us172.us
  %indvars.iv224 = phi i64 [ 0, %.lr.ph.us.us172.us ], [ %indvars.iv.next225.1, %bb.bz ] ; 3 uses
  %.0102152.us.us.us166.us177.us = phi i32 [ 0, %.lr.ph.us.us172.us ], [ %.1.us.us.us171.us.us.1, %bb.bz ] ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %indvars.iv224
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !29
  %i.vj = sext i32 %.0102152.us.us.us166.us177.us to i64
  %i.vk = getelementptr inbounds i8, ptr %.0104156.us162.us174.us, i64 %i.vj
  store i8 %i.vi, ptr %i.vk, align 1, !tbaa !29
  %i.vl = add nsw i32 %.0102152.us.us.us166.us177.us, 1 ; 3 uses
  %indvars.iv.next225 = or disjoint i64 %indvars.iv224, 1 ; 2 uses
  %i.vm = and i64 %indvars.iv.next225, 3
  %i.vn = icmp eq i64 %i.vm, 3
  br i1 %i.vn, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vg, i64 %indvars.iv.next225
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !29
  %i.vq = sext i32 %i.vl to i64
  %i.vr = getelementptr inbounds i8, ptr %.0104156.us162.us174.us, i64 %i.vq
  store i8 %i.vp, ptr %i.vr, align 1, !tbaa !29
  %i.vs = add nsw i32 %i.vl, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.1.us.us.us171.us.us.1 = phi i32 [ %i.vl, %bb.bx ], [ %i.vs, %bb.by ]
  %indvars.iv.next225.1 = add nuw nsw i64 %indvars.iv224, 2 ; 2 uses
  %exitcond228.not.1 = icmp eq i64 %indvars.iv.next225.1, %wide.trip.count247
  br i1 %exitcond228.not.1, label %..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us, label %bb.bx, !llvm.loop !13

..loopexit134_crit_edge.split.us.us.split.split.us.split.us179.us: ; preds = %bb.bz
  %i.vt = add i64 %.0103159.us161.us173.us, %i.ip
  %i.vu = getelementptr inbounds nuw i8, ptr %.0104156.us162.us174.us, i64 %i.if
  %i.vv = add nuw nsw i32 %.0106155.us163.us175.us, 1 ; 2 uses
  %exitcond229.not = icmp eq i32 %i.vv, %i.ih
  br i1 %exitcond229.not, label %._crit_edge, label %.lr.ph.us.us172.us, !llvm.loop !11

.lr.ph.us.us172:                                  ; preds = %.lr.ph.us.us172, %.lr.ph.us.us172.preheader.new
  %.0103159.us161.us173 = phi i64 [ %.0.i, %.lr.ph.us.us172.preheader.new ], [ %i.wg, %.lr.ph.us.us172 ] ; 2 uses
  %.0104156.us162.us174 = phi ptr [ %i.ik, %.lr.ph.us.us172.preheader.new ], [ %i.wh, %.lr.ph.us.us172 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.us.us172.preheader.new ], [ %niter.next.3, %.lr.ph.us.us172 ]
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us173
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0104156.us162.us174, ptr align 1 %i.vw, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.vx = add i64 %.0103159.us161.us173, %i.ip    ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.0104156.us162.us174, i64 %i.if ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 %i.vx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vy, ptr align 1 %i.vz, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.wa = add i64 %i.vx, %i.ip                    ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.if ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 %i.wa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wb, ptr align 1 %i.wc, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.wd = add i64 %i.wa, %i.ip                    ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.if ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 %i.wd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.we, ptr align 1 %i.wf, i64 %wide.trip.count247, i1 false), !tbaa !29
  %i.wg = add i64 %i.wd, %i.ip                    ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.if ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit348.unr-lcssa, label %.lr.ph.us.us172, !llvm.loop !11

.lr.ph.us:                                        ; preds = %.lr.ph160.split.split.split.us.split, %..loopexit134_crit_edge.split.us.us.split.split
  %.0103159.us161 = phi i64 [ %i.wv, %..loopexit134_crit_edge.split.us.us.split.split ], [ %.0.i, %.lr.ph160.split.split.split.us.split ] ; 2 uses
  %.0104156.us162 = phi ptr [ %i.ww, %..loopexit134_crit_edge.split.us.us.split.split ], [ %i.ik, %.lr.ph160.split.split.split.us.split ] ; 2 uses
  %.0106155.us163 = phi i32 [ %i.wx, %..loopexit134_crit_edge.split.us.us.split.split ], [ 0, %.lr.ph160.split.split.split.us.split ]
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cc, %.lr.ph.us
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %bb.cc ], [ 0, %.lr.ph.us ] ; 3 uses
  %.0102152.us.us = phi i32 [ %.1.us.us, %bb.cc ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.wj = and i64 %indvars.iv212, 3
  %i.wk = icmp eq i64 %i.wj, 3
  %or.cond125.reass.us.us = and i1 %i.wk, %invariant.op
  br i1 %or.cond125.reass.us.us, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wi, i64 %indvars.iv212
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !29
  %i.wn = zext i8 %i.wm to i32
  %i.wo = mul nuw nsw i32 %i.wn, 255
  %i.wp = add nsw i32 %i.wo, %i.iu
  %i.wq = udiv i32 %i.wp, %i.iq
  %spec.store.select.us.us = call i32 @llvm.umin.i32(i32 %i.wq, i32 255)
  %i.wr = trunc nuw i32 %spec.store.select.us.us to i8
  %i.ws = sext i32 %.0102152.us.us to i64
  %i.wt = getelementptr inbounds i8, ptr %.0104156.us162, i64 %i.ws
  store i8 %i.wr, ptr %i.wt, align 1, !tbaa !29
  %i.wu = add nsw i32 %.0102152.us.us, 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.1.us.us = phi i32 [ %.0102152.us.us, %bb.ca ], [ %i.wu, %bb.cb ]
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count247
  br i1 %exitcond216.not, label %..loopexit134_crit_edge.split.us.us.split.split, label %bb.ca, !llvm.loop !13

..loopexit134_crit_edge.split.us.us.split.split:  ; preds = %bb.cc
  %i.wv = add i64 %.0103159.us161, %i.ip
  %i.ww = getelementptr inbounds nuw i8, ptr %.0104156.us162, i64 %i.if
  %i.wx = add nuw nsw i32 %.0106155.us163, 1      ; 2 uses
  %exitcond217.not = icmp eq i32 %i.wx, %i.ih
  br i1 %exitcond217.not, label %._crit_edge, label %.lr.ph.us, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph160.split.split, %..loopexit134_crit_edge.split
  %.0103159 = phi i64 [ %i.yb, %..loopexit134_crit_edge.split ], [ %.0.i, %.lr.ph160.split.split ] ; 2 uses
  %.0104156 = phi ptr [ %i.yc, %..loopexit134_crit_edge.split ], [ %i.ik, %.lr.ph160.split.split ] ; 3 uses
  %.0106155 = phi i32 [ %i.yd, %..loopexit134_crit_edge.split ], [ 0, %.lr.ph160.split.split ]
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph, %bb.cm
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cm ] ; 4 uses
  %.0102152 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.cm ] ; 5 uses
  br i1 %i.ib, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.wz = shl nuw nsw i64 %indvars.iv, 1
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wz ; 2 uses
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !29
  %i.xc = zext i8 %i.xb to i32
  %i.xd = shl nuw nsw i32 %i.xc, 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !29
  %i.xg = zext i8 %i.xf to i32
  %i.xh = or disjoint i32 %i.xd, %i.xg
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wy, i64 %indvars.iv
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !29
  %i.xk = zext i8 %i.xj to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.xl = phi i32 [ %i.xh, %bb.ce ], [ %i.xk, %bb.cf ] ; 2 uses
  br i1 %i.ir, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xm = mul nuw nsw i32 %i.xl, 255
  %i.xn = add nsw i32 %i.xm, %i.iu
  %i.xo = udiv i32 %i.xn, %i.iq
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0 = phi i32 [ %i.xo, %bb.ch ], [ %i.xl, %bb.cg ]
  %spec.store.select = call i32 @llvm.umin.i32(i32 %.0, i32 255) ; 2 uses
  %i.xp = and i64 %indvars.iv, 1
  %i.xq = icmp eq i64 %i.xp, 0
  %or.cond127 = or i1 %i.iw, %i.xq
  br i1 %or.cond127, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.xr = trunc nuw i32 %spec.store.select to i8  ; 3 uses
  %i.xs = sext i32 %.0102152 to i64
  %i.xt = getelementptr i8, ptr %.0104156, i64 %i.xs ; 3 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 2
  store i8 %i.xr, ptr %i.xu, align 1, !tbaa !29
  %i.xv = getelementptr i8, ptr %i.xt, i64 1
  store i8 %i.xr, ptr %i.xv, align 1, !tbaa !29
  store i8 %i.xr, ptr %i.xt, align 1, !tbaa !29
  %i.xw = add nsw i32 %.0102152, 3
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  br i1 %or.cond19.not, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xx = trunc nuw i32 %spec.store.select to i8
  %i.xy = sext i32 %.0102152 to i64
  %i.xz = getelementptr inbounds i8, ptr %.0104156, i64 %i.xy
  store i8 %i.xx, ptr %i.xz, align 1, !tbaa !29
  %i.ya = add nsw i32 %.0102152, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cj, %bb.ck, %bb.cl
  %.1 = phi i32 [ %i.ya, %bb.cl ], [ %.0102152, %bb.ck ], [ %i.xw, %bb.cj ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count247
  br i1 %exitcond.not, label %..loopexit134_crit_edge.split, label %bb.cd, !llvm.loop !13

..loopexit134_crit_edge.split:                    ; preds = %bb.cm
  %i.yb = add i64 %.0103159, %i.ip
  %i.yc = getelementptr inbounds nuw i8, ptr %.0104156, i64 %i.if
  %i.yd = add nuw nsw i32 %.0106155, 1            ; 2 uses
  %exitcond211.not = icmp eq i32 %i.yd, %i.ih
  br i1 %exitcond211.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit343.unr-lcssa:                ; preds = %.lr.ph160.split.us.split.us
  %lcmp.mod369.not = icmp eq i32 %xtraiter367, 0
  br i1 %lcmp.mod369.not, label %._crit_edge, label %.lr.ph160.split.us.split.us.epil.preheader

.lr.ph160.split.us.split.us.epil.preheader:       ; preds = %._crit_edge.loopexit343.unr-lcssa, %.lr.ph160.split.us.split.us.preheader
  %.0103159.us.us.epil.init = phi i64 [ %.0.i, %.lr.ph160.split.us.split.us.preheader ], [ %i.jn, %._crit_edge.loopexit343.unr-lcssa ]
  %.0104156.us.us.epil.init = phi ptr [ %i.ik, %.lr.ph160.split.us.split.us.preheader ], [ %i.jo, %._crit_edge.loopexit343.unr-lcssa ]
  %lcmp.mod370 = icmp ne i32 %xtraiter367, 0
  call void @llvm.assume(i1 %lcmp.mod370)
  br label %.lr.ph160.split.us.split.us.epil

.lr.ph160.split.us.split.us.epil:                 ; preds = %.lr.ph160.split.us.split.us.epil, %.lr.ph160.split.us.split.us.epil.preheader
  %.0103159.us.us.epil = phi i64 [ %i.yf, %.lr.ph160.split.us.split.us.epil ], [ %.0103159.us.us.epil.init, %.lr.ph160.split.us.split.us.epil.preheader ] ; 2 uses
  %.0104156.us.us.epil = phi ptr [ %i.yg, %.lr.ph160.split.us.split.us.epil ], [ %.0104156.us.us.epil.init, %.lr.ph160.split.us.split.us.epil.preheader ] ; 2 uses
  %epil.iter368 = phi i32 [ %epil.iter368.next, %.lr.ph160.split.us.split.us.epil ], [ 0, %.lr.ph160.split.us.split.us.epil.preheader ]
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us.us.epil
  %i.yf = add i64 %.0103159.us.us.epil, %i.ip
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0104156.us.us.epil, ptr align 1 %i.ye, i64 %i.ja, i1 false)
  %i.yg = getelementptr inbounds nuw i8, ptr %.0104156.us.us.epil, i64 %i.if
  %epil.iter368.next = add i32 %epil.iter368, 1   ; 2 uses
  %epil.iter368.cmp.not = icmp eq i32 %epil.iter368.next, %xtraiter367
  br i1 %epil.iter368.cmp.not, label %._crit_edge, label %.lr.ph160.split.us.split.us.epil, !llvm.loop !17

._crit_edge.loopexit348.unr-lcssa:                ; preds = %.lr.ph.us.us172
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.us.us172.epil.preheader

.lr.ph.us.us172.epil.preheader:                   ; preds = %._crit_edge.loopexit348.unr-lcssa, %.lr.ph.us.us172.preheader
  %.0103159.us161.us173.epil.init = phi i64 [ %.0.i, %.lr.ph.us.us172.preheader ], [ %i.wg, %._crit_edge.loopexit348.unr-lcssa ]
  %.0104156.us162.us174.epil.init = phi ptr [ %i.ik, %.lr.ph.us.us172.preheader ], [ %i.wh, %._crit_edge.loopexit348.unr-lcssa ]
  %lcmp.mod366 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod366)
  br label %.lr.ph.us.us172.epil

.lr.ph.us.us172.epil:                             ; preds = %.lr.ph.us.us172.epil, %.lr.ph.us.us172.epil.preheader
  %.0103159.us161.us173.epil = phi i64 [ %i.yi, %.lr.ph.us.us172.epil ], [ %.0103159.us161.us173.epil.init, %.lr.ph.us.us172.epil.preheader ] ; 2 uses
  %.0104156.us162.us174.epil = phi ptr [ %i.yj, %.lr.ph.us.us172.epil ], [ %.0104156.us162.us174.epil.init, %.lr.ph.us.us172.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.us.us172.epil ], [ 0, %.lr.ph.us.us172.epil.preheader ]
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us173.epil
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0104156.us162.us174.epil, ptr align 1 %i.yh, i64 %wide.trip.count247, i1 false), !tbaa !29
end_hunk_0
