inline.NumInlined: 72
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@decode_channel:bb.a
  %i.sn = trunc nuw nsw i64 %i.sj to i32
  %i.so = sub nuw nsw i32 26, %.0.i236507.i       ; 4 uses
  %i.sp = shl i32 %i.sn, %i.so
  %i.sq = ashr exact i32 %i.sp, %i.so
  %i.sr = sub nuw nsw i32 4, %.0.i236507.i        ; 3 uses
  %i.ss = shl nsw i32 %i.sq, %i.sr
  %i.st = trunc nsw i32 %i.ss to i16
  store i16 %i.st, ptr %i.kp, align 4, !tbaa !83
  %i.su = icmp ugt i32 %i.pz, %i.sm
  br i1 %i.su, label %bb.ba, label %bits_read_signed_nz_le.exit278.i

bb.ba:                                            ; preds = %bits_read_signed_nz_le.exit270.i
  %i.sv = load ptr, ptr %i.kk, align 8, !tbaa !47
  %.not.i.i.i275.i = icmp ult ptr %i.se, %i.sv
  br i1 %.not.i.i.i275.i, label %bits_priv_refill_32_le.exit.i.i277.i, label %bits_read_signed_nz_le.exit278.i

bits_priv_refill_32_le.exit.i.i277.i:             ; preds = %bb.ba
  %i.sw = load i32, ptr %i.se, align 1, !tbaa !50
  %i.sx = zext i32 %i.sw to i64
  %i.sy = zext nneg i32 %i.sm to i64
  %i.sz = shl nuw nsw i64 %i.sx, %i.sy
  %i.ta = or i64 %i.sz, %i.sl
  %i.tb = getelementptr inbounds nuw i8, ptr %i.se, i64 4 ; 2 uses
  store ptr %i.tb, ptr %i.kj, align 16, !tbaa !45
  %i.tc = add nuw nsw i32 %i.sm, 32
  br label %bits_read_signed_nz_le.exit278.i

bits_read_signed_nz_le.exit278.i:                 ; preds = %bits_priv_refill_32_le.exit.i.i277.i, %bb.ba, %bits_read_signed_nz_le.exit270.i
  %i.td = phi ptr [ %i.tb, %bits_priv_refill_32_le.exit.i.i277.i ], [ %i.se, %bb.ba ], [ %i.se, %bits_read_signed_nz_le.exit270.i ] ; 5 uses
  %.val.i.i.i274.i = phi i64 [ %i.ta, %bits_priv_refill_32_le.exit.i.i277.i ], [ %i.sl, %bb.ba ], [ %i.sl, %bits_read_signed_nz_le.exit270.i ] ; 2 uses
  %i.te = phi i32 [ %i.tc, %bits_priv_refill_32_le.exit.i.i277.i ], [ %i.pz, %bb.ba ], [ %i.sm, %bits_read_signed_nz_le.exit270.i ] ; 2 uses
  %i.tf = and i64 %.val.i.i.i274.i, %i.si
  %i.tg = lshr i64 %.val.i.i.i274.i, %i.sk        ; 3 uses
  store i64 %i.tg, ptr %i.c, align 8, !tbaa !49
  %i.th = sub i32 %i.te, %i.pz                    ; 2 uses
  store i32 %i.th, ptr %i.k, align 8, !tbaa !46
  %i.ti = trunc nuw nsw i64 %i.tf to i32
  %i.tj = shl i32 %i.ti, %i.so
  %i.tk = ashr exact i32 %i.tj, %i.so
  %i.tl = shl nsw i32 %i.tk, %i.sr
  %i.tm = trunc nsw i32 %i.tl to i16
  store i16 %i.tm, ptr %i.kq, align 2, !tbaa !83
  %.off.i = add nsw i32 %i.lv, -1
  %switch.i = icmp ult i32 %.off.i, 14
  br i1 %switch.i, label %bb.bb, label %.loopexit.i

bb.bb:                                            ; preds = %bits_read_signed_nz_le.exit278.i
  %.not.i279.i = icmp eq i32 %i.te, %i.pz
  br i1 %.not.i279.i, label %bb.bc, label %._crit_edge.i280.i

._crit_edge.i280.i:                               ; preds = %bb.bb
  %i.tn = add i32 %i.th, -1
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.to = load ptr, ptr %i.kk, align 8, !tbaa !47
  %.not.i.i284.i = icmp ult ptr %i.td, %i.to
  br i1 %.not.i.i284.i, label %bits_priv_refill_64_le.exit.i285.i, label %bits_read_bit_le.exit286.i

bits_priv_refill_64_le.exit.i285.i:               ; preds = %bb.bc
  %i.tp = load i64, ptr %i.td, align 1, !tbaa !50
  %i.tq = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  store ptr %i.tq, ptr %i.kj, align 16, !tbaa !45
  br label %bb.bd

bb.bd:                                            ; preds = %bits_priv_refill_64_le.exit.i285.i, %._crit_edge.i280.i
  %i.tr = phi ptr [ %i.td, %._crit_edge.i280.i ], [ %i.tq, %bits_priv_refill_64_le.exit.i285.i ]
  %i.ts = phi i32 [ %i.tn, %._crit_edge.i280.i ], [ 63, %bits_priv_refill_64_le.exit.i285.i ] ; 2 uses
  %.val.i.i282.i = phi i64 [ %i.tg, %._crit_edge.i280.i ], [ %i.tp, %bits_priv_refill_64_le.exit.i285.i ] ; 2 uses
  %i.tt = lshr i64 %.val.i.i282.i, 1              ; 2 uses
  store i64 %i.tt, ptr %i.c, align 8, !tbaa !49
  store i32 %i.ts, ptr %i.k, align 8, !tbaa !46
  %i.tu = trunc i64 %.val.i.i282.i to i32
  %i.tv = and i32 %i.tu, 1
  br label %bits_read_bit_le.exit286.i

bits_read_bit_le.exit286.i:                       ; preds = %bb.bd, %bb.bc
  %i.tw = phi ptr [ %i.tr, %bb.bd ], [ %i.td, %bb.bc ] ; 2 uses
  %.promoted316.i = phi i64 [ %i.tt, %bb.bd ], [ %i.tg, %bb.bc ]
  %.promoted.i = phi i32 [ %i.ts, %bb.bd ], [ 0, %bb.bc ]
  %.0.i283.i = phi i32 [ %i.tv, %bb.bd ], [ 0, %bb.bc ]
  %.off548.i = add nsw i64 %i.lw, -1
  %switch549.i = icmp ult i64 %.off548.i, 14
  br i1 %switch549.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bits_read_bit_le.exit286.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.lz, i32 5)
  %wide.trip.count.i = zext nneg i32 %umax.i to i64
  br label %bb.be

bb.be:                                            ; preds = %bits_read_signed_nz_le.exit298.i, %.lr.ph.i
  %i.tx = phi ptr [ %i.tw, %.lr.ph.i ], [ %i.vf, %bits_read_signed_nz_le.exit298.i ] ; 3 uses
  %i.ty = phi ptr [ %i.tw, %.lr.ph.i ], [ %i.vg, %bits_read_signed_nz_le.exit298.i ] ; 6 uses
  %indvars.iv.i = phi i64 [ 4, %.lr.ph.i ], [ %indvars.iv.next.i, %bits_read_signed_nz_le.exit298.i ] ; 3 uses
  %.val.i.i.pre2.i296318.i = phi i64 [ %.promoted316.i, %.lr.ph.i ], [ %i.vn, %bits_read_signed_nz_le.exit298.i ] ; 4 uses
  %i.tz = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.vo, %bits_read_signed_nz_le.exit298.i ] ; 5 uses
  %.0188314.i = phi i32 [ undef, %.lr.ph.i ], [ %.1189.i, %bits_read_signed_nz_le.exit298.i ]
  %i.ua = and i64 %indvars.iv.i, 3
  %.not213.i = icmp eq i64 %i.ua, 0
  br i1 %.not213.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.ub = icmp ult i32 %i.tz, 2
  br i1 %i.ub, label %bb.bg, label %bits_read_nz_le.exit290.i

bb.bg:                                            ; preds = %bb.bf
  %i.uc = load ptr, ptr %i.kk, align 8, !tbaa !47
  %.not.i.i288.i = icmp ult ptr %i.ty, %i.uc
  br i1 %.not.i.i288.i, label %bits_priv_refill_32_le.exit.i289.i, label %bits_read_nz_le.exit290.i

bits_priv_refill_32_le.exit.i289.i:               ; preds = %bb.bg
  %i.ud = load i32, ptr %i.ty, align 1, !tbaa !50
  %i.ue = zext i32 %i.ud to i64
  %i.uf = zext nneg i32 %i.tz to i64
  %i.ug = shl nuw nsw i64 %i.ue, %i.uf
  %i.uh = or i64 %i.ug, %.val.i.i.pre2.i296318.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ty, i64 4 ; 3 uses
  store ptr %i.ui, ptr %i.kj, align 16, !tbaa !45
  %i.uj = or disjoint i32 %i.tz, 32
  br label %bits_read_nz_le.exit290.i

bits_read_nz_le.exit290.i:                        ; preds = %bits_priv_refill_32_le.exit.i289.i, %bb.bg, %bb.bf
  %i.uk = phi ptr [ %i.ui, %bits_priv_refill_32_le.exit.i289.i ], [ %i.tx, %bb.bf ], [ %i.tx, %bb.bg ]
  %i.ul = phi ptr [ %i.ui, %bits_priv_refill_32_le.exit.i289.i ], [ %i.ty, %bb.bf ], [ %i.ty, %bb.bg ]
  %.val.i.i.pre2.i296319.i = phi i64 [ %i.uh, %bits_priv_refill_32_le.exit.i289.i ], [ %.val.i.i.pre2.i296318.i, %bb.bf ], [ %.val.i.i.pre2.i296318.i, %bb.bg ] ; 2 uses
  %i.um = phi i32 [ %i.uj, %bits_priv_refill_32_le.exit.i289.i ], [ %i.tz, %bb.bf ], [ 2, %bb.bg ]
  %i.un = lshr i64 %.val.i.i.pre2.i296319.i, 2    ; 2 uses
  store i64 %i.un, ptr %i.c, align 8, !tbaa !49
  %i.uo = add i32 %i.um, -2                       ; 2 uses
  store i32 %i.uo, ptr %i.k, align 8, !tbaa !46
  %i.up = trunc i64 %.val.i.i.pre2.i296319.i to i32
  %i.uq = and i32 %i.up, 3
  %i.ur = add nuw nsw i32 %.0.i283.i, %i.uq
  %i.us = sub nuw nsw i32 %i.pz, %i.ur
  br label %bb.bh

bb.bh:                                            ; preds = %bits_read_nz_le.exit290.i, %bb.be
  %i.ut = phi ptr [ %i.tx, %bb.be ], [ %i.uk, %bits_read_nz_le.exit290.i ] ; 6 uses
  %i.uu = phi ptr [ %i.ty, %bb.be ], [ %i.ul, %bits_read_nz_le.exit290.i ]
  %.val.i.i.pre2.i296317.i = phi i64 [ %.val.i.i.pre2.i296318.i, %bb.be ], [ %i.un, %bits_read_nz_le.exit290.i ] ; 3 uses
  %i.uv = phi i32 [ %i.tz, %bb.be ], [ %i.uo, %bits_read_nz_le.exit290.i ] ; 4 uses
  %.1189.i = phi i32 [ %.0188314.i, %bb.be ], [ %i.us, %bits_read_nz_le.exit290.i ] ; 7 uses
  %i.uw = icmp ugt i32 %.1189.i, %i.uv
  br i1 %i.uw, label %bb.bi, label %bits_read_signed_nz_le.exit298.i

bb.bi:                                            ; preds = %bb.bh
  %i.ux = load ptr, ptr %i.kk, align 8, !tbaa !47
  %.not.i.i.i295.i = icmp ult ptr %i.ut, %i.ux
  br i1 %.not.i.i.i295.i, label %bits_priv_refill_32_le.exit.i.i297.i, label %bits_read_signed_nz_le.exit298.i

bits_priv_refill_32_le.exit.i.i297.i:             ; preds = %bb.bi
  %i.uy = load i32, ptr %i.ut, align 1, !tbaa !50
  %i.uz = zext i32 %i.uy to i64
  %i.va = zext nneg i32 %i.uv to i64
  %i.vb = shl nuw nsw i64 %i.uz, %i.va
  %i.vc = or i64 %i.vb, %.val.i.i.pre2.i296317.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ut, i64 4 ; 3 uses
  store ptr %i.vd, ptr %i.kj, align 16, !tbaa !45
  %i.ve = add nuw nsw i32 %i.uv, 32
  br label %bits_read_signed_nz_le.exit298.i

bits_read_signed_nz_le.exit298.i:                 ; preds = %bits_priv_refill_32_le.exit.i.i297.i, %bb.bi, %bb.bh
  %i.vf = phi ptr [ %i.vd, %bits_priv_refill_32_le.exit.i.i297.i ], [ %i.ut, %bb.bi ], [ %i.ut, %bb.bh ]
  %i.vg = phi ptr [ %i.vd, %bits_priv_refill_32_le.exit.i.i297.i ], [ %i.ut, %bb.bi ], [ %i.uu, %bb.bh ]
  %.val.i.i.i294.i = phi i64 [ %i.vc, %bits_priv_refill_32_le.exit.i.i297.i ], [ %.val.i.i.pre2.i296317.i, %bb.bi ], [ %.val.i.i.pre2.i296317.i, %bb.bh ] ; 2 uses
  %i.vh = phi i32 [ %i.ve, %bits_priv_refill_32_le.exit.i.i297.i ], [ %.1189.i, %bb.bi ], [ %i.uv, %bb.bh ]
  %i.vi = sub i32 64, %.1189.i
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = lshr i64 -1, %i.vj
  %i.vl = and i64 %.val.i.i.i294.i, %i.vk
  %i.vm = zext nneg i32 %.1189.i to i64
  %i.vn = lshr i64 %.val.i.i.i294.i, %i.vm        ; 2 uses
  store i64 %i.vn, ptr %i.c, align 8, !tbaa !49
  %i.vo = sub i32 %i.vh, %.1189.i                 ; 2 uses
  store i32 %i.vo, ptr %i.k, align 8, !tbaa !46
  %i.vp = trunc i64 %i.vl to i32
  %i.vq = sub i32 32, %.1189.i                    ; 2 uses
  %i.vr = shl i32 %i.vp, %i.vq
  %i.vs = ashr exact i32 %i.vr, %i.vq
  %i.vt = shl i32 %i.vs, %i.sr
  %i.vu = trunc i32 %i.vt to i16
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %indvars.iv.i
  store i16 %i.vu, ptr %i.vv, align 2, !tbaa !83
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.be, !llvm.loop !106

.loopexit.i:                                      ; preds = %bits_read_signed_nz_le.exit298.i, %bits_read_bit_le.exit286.i, %bits_read_signed_nz_le.exit278.i
  %i.vw = ashr exact i32 %i.rb, 16
  store i32 %i.vw, ptr %i.a, align 16, !tbaa !77
  %.not359.i = icmp eq i64 %i.lw, 15              ; 2 uses
  br i1 %.not359.i, label %._crit_edge327.i, label %.lr.ph326.preheader.i

.lr.ph326.preheader.i:                            ; preds = %.loopexit.i
  %umax379.i = tail call i32 @llvm.umax.i32(i32 %i.lz, i32 2)
  %wide.trip.count380.i = zext nneg i32 %umax379.i to i64
  br label %.lr.ph323.i

.lr.ph323.i:                                      ; preds = %._crit_edge.i, %.lr.ph326.preheader.i
  %indvars.iv376.i = phi i64 [ 1, %.lr.ph326.preheader.i ], [ %indvars.iv.next377.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv373.i = phi i32 [ 2, %.lr.ph326.preheader.i ], [ %indvars.iv.next374.i, %._crit_edge.i ] ; 4 uses
  %i.vx = lshr i32 %indvars.iv373.i, 1            ; 2 uses
  %i.vy = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv376.i ; 3 uses
  %i.vz = getelementptr inbounds nuw [2 x i8], ptr %i.kn, i64 %indvars.iv376.i
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !83
  %i.wb = sext i16 %i.wa to i32                   ; 7 uses
  %.mask = and i32 %indvars.iv373.i, 2147483646
  %i.wc = icmp eq i32 %.mask, 2
  br i1 %i.wc, label %.epil.preheader, label %.lr.ph323.i.new

.lr.ph323.i.new:                                  ; preds = %.lr.ph323.i
  %unroll_iter = and i32 %i.vx, 1073741822
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph323.i.new
  %.pn322.i = phi ptr [ %i.vy, %.lr.ph323.i.new ], [ %.0179.i.1, %bb.bj ] ; 2 uses
  %.0180321.i = phi ptr [ %i.a, %.lr.ph323.i.new ], [ %i.wy, %bb.bj ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph323.i.new ], [ %niter.next.1, %bb.bj ]
  %.0179.i = getelementptr i8, ptr %.pn322.i, i64 -4 ; 2 uses
  %i.wd = load i32, ptr %.0180321.i, align 4, !tbaa !77 ; 2 uses
  %i.we = load i32, ptr %.0179.i, align 4, !tbaa !77 ; 2 uses
  %i.wf = mul i32 %i.we, %i.wb
  %i.wg = add i32 %i.wf, 256
  %i.wh = ashr i32 %i.wg, 9
  %i.wi = add i32 %i.wh, %i.wd
  %i.wj = mul i32 %i.wd, %i.wb
  %i.wk = add i32 %i.wj, 256
  %i.wl = ashr i32 %i.wk, 9
  %i.wm = add i32 %i.wl, %i.we
  store i32 %i.wm, ptr %.0179.i, align 4, !tbaa !77
  %i.wn = getelementptr inbounds nuw i8, ptr %.0180321.i, i64 4 ; 2 uses
  store i32 %i.wi, ptr %.0180321.i, align 4, !tbaa !77
  %.0179.i.1 = getelementptr i8, ptr %.pn322.i, i64 -8 ; 4 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !77 ; 2 uses
  %i.wp = load i32, ptr %.0179.i.1, align 4, !tbaa !77 ; 2 uses
  %i.wq = mul i32 %i.wp, %i.wb
  %i.wr = add i32 %i.wq, 256
  %i.ws = ashr i32 %i.wr, 9
  %i.wt = add i32 %i.ws, %i.wo
  %i.wu = mul i32 %i.wo, %i.wb
  %i.wv = add i32 %i.wu, 256
  %i.ww = ashr i32 %i.wv, 9
  %i.wx = add i32 %i.ww, %i.wp
  store i32 %i.wx, ptr %.0179.i.1, align 4, !tbaa !77
  %i.wy = getelementptr inbounds nuw i8, ptr %.0180321.i, i64 8 ; 2 uses
  store i32 %i.wt, ptr %i.wn, align 4, !tbaa !77
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.bj, !llvm.loop !107

._crit_edge.i.unr-lcssa:                          ; preds = %bb.bj
  %i.wz = and i32 %indvars.iv373.i, 2
  %lcmp.mod.not = icmp eq i32 %i.wz, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph323.i
  %.pn322.i.epil.init = phi ptr [ %i.vy, %.lr.ph323.i ], [ %.0179.i.1, %._crit_edge.i.unr-lcssa ]
  %.0180321.i.epil.init = phi ptr [ %i.a, %.lr.ph323.i ], [ %i.wy, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %lcmp.mod283 = trunc i32 %i.vx to i1
  tail call void @llvm.assume(i1 %lcmp.mod283)
  %.0179.i.epil = getelementptr i8, ptr %.pn322.i.epil.init, i64 -4 ; 2 uses
  %i.xa = load i32, ptr %.0180321.i.epil.init, align 4, !tbaa !77 ; 2 uses
  %i.xb = load i32, ptr %.0179.i.epil, align 4, !tbaa !77 ; 2 uses
  %i.xc = mul i32 %i.xb, %i.wb
  %i.xd = add i32 %i.xc, 256
  %i.xe = ashr i32 %i.xd, 9
  %i.xf = add i32 %i.xe, %i.xa
  %i.xg = mul i32 %i.xa, %i.wb
  %i.xh = add i32 %i.xg, 256
  %i.xi = ashr i32 %i.xh, 9
  %i.xj = add i32 %i.xi, %i.xb
  store i32 %i.xj, ptr %.0179.i.epil, align 4, !tbaa !77
  store i32 %i.xf, ptr %.0180321.i.epil.init, align 4, !tbaa !77
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next377.i = add nuw nsw i64 %indvars.iv376.i, 1 ; 2 uses
  %i.xk = shl nsw i32 %i.wb, 6
  store i32 %i.xk, ptr %i.vy, align 4, !tbaa !77
  %indvars.iv.next374.i = add nuw nsw i32 %indvars.iv373.i, 1
  %exitcond381.not.i = icmp eq i64 %indvars.iv.next377.i, %wide.trip.count380.i
  br i1 %exitcond381.not.i, label %._crit_edge327.i, label %.lr.ph323.i, !llvm.loop !108

._crit_edge327.i:                                 ; preds = %._crit_edge.i, %.loopexit.i
  %i.xl = xor i32 %.0182.i, 15                    ; 2 uses
  %i.xm = lshr exact i32 16384, %.0182.i          ; 2 uses
  %i.xn = lshr i32 %i.lz, 1                       ; 2 uses
  %.not361.i = icmp eq i32 %i.xn, 0
  %.pre431.i = zext i16 %i.ly to i64              ; 3 uses
  br i1 %.not361.i, label %._crit_edge332.i, label %.lr.ph331.i

.lr.ph331.i:                                      ; preds = %._crit_edge327.i
  %wide.trip.count389.i = zext nneg i32 %i.xn to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph331.i
  %indvars.iv384.i = phi i64 [ 0, %.lr.ph331.i ], [ %indvars.iv.next385.i, %bb.bk ] ; 3 uses
  %indvars.iv382.i = phi i64 [ %.pre431.i, %.lr.ph331.i ], [ %indvars.iv.next383.i, %bb.bk ]
  %indvars.iv.next383.i = add nsw i64 %indvars.iv382.i, -1 ; 3 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv384.i
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !77
  %i.xq = add nsw i32 %i.xp, %i.xm
  %i.xr = ashr i32 %i.xq, %i.xl
  %i.xs = trunc i32 %i.xr to i16
  %i.xt = sub i16 0, %i.xs
  %i.xu = getelementptr inbounds [2 x i8], ptr %i.kr, i64 %indvars.iv.next383.i
  store i16 %i.xt, ptr %i.xu, align 2, !tbaa !83
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next383.i
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !77
  %i.xx = add nsw i32 %i.xw, %i.xm
  %i.xy = ashr i32 %i.xx, %i.xl
  %i.xz = trunc i32 %i.xy to i16
  %i.ya = sub i16 0, %i.xz
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %indvars.iv384.i
  store i16 %i.ya, ptr %i.yb, align 2, !tbaa !83
  %indvars.iv.next385.i = add nuw nsw i64 %indvars.iv384.i, 1 ; 2 uses
  %exitcond390.not.i = icmp eq i64 %indvars.iv.next385.i, %wide.trip.count389.i
  br i1 %exitcond390.not.i, label %._crit_edge332.i, label %bb.bk, !llvm.loop !109

._crit_edge332.i:                                 ; preds = %bb.bk, %._crit_edge327.i
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.0194.i, i64 %.pre431.i
  %i.yd = sub nsw i32 %.0193.i, %i.lz             ; 4 uses
  %i.ye = tail call fastcc i32 @decode_residues(ptr noundef nonnull %0, ptr noundef %i.yc, i32 noundef %i.yd) ; 2 uses
  %i.yf = icmp slt i32 %i.ye, 0
  br i1 %i.yf, label %decode_subframe.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge332.i
  br i1 %.not359.i, label %._crit_edge336.i, label %.lr.ph335.i

.lr.ph335.i:                                      ; preds = %.preheader.i
  %umax394.i = tail call i32 @llvm.umax.i32(i32 %i.lz, i32 1)
  %wide.trip.count395.i = zext nneg i32 %umax394.i to i64 ; 3 uses
  %i.yg = icmp eq i64 %i.lw, 0
  br i1 %i.yg, label %scalar.ph256.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %.lr.ph335.i
  %n.vec259 = and i64 %wide.trip.count395.i, 65528 ; 4 uses
  %i.yh = shl nuw nsw i64 %n.vec259, 2
  %i.yi = getelementptr i8, ptr %.0194.i, i64 %i.yh ; 2 uses
  %broadcast.splatinsert260 = insertelement <4 x i32> poison, i32 %.0.i231307504.i, i64 0
  %broadcast.splat261 = shufflevector <4 x i32> %broadcast.splatinsert260, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph258
  %index263 = phi i64 [ 0, %vector.ph258 ], [ %index.next267, %vector.body262 ] ; 3 uses
  %i.yj = shl i64 %index263, 2
  %next.gep264 = getelementptr i8, ptr %.0194.i, i64 %i.yj ; 2 uses
  %i.yk = getelementptr i8, ptr %next.gep264, i64 16
  %wide.load265 = load <4 x i32>, ptr %next.gep264, align 4, !tbaa !77
  %wide.load266 = load <4 x i32>, ptr %i.yk, align 4, !tbaa !77
  %i.yl = ashr <4 x i32> %wide.load265, %broadcast.splat261
  %i.ym = ashr <4 x i32> %wide.load266, %broadcast.splat261
  %i.yn = trunc <4 x i32> %i.yl to <4 x i16>
  %i.yo = trunc <4 x i32> %i.ym to <4 x i16>
  %i.yp = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %index263 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  store <4 x i16> %i.yn, ptr %i.yp, align 2, !tbaa !83
  store <4 x i16> %i.yo, ptr %i.yq, align 2, !tbaa !83
  %index.next267 = add nuw i64 %index263, 8       ; 2 uses
  %i.yr = icmp eq i64 %index.next267, %n.vec259
  br i1 %i.yr, label %middle.block268, label %vector.body262, !llvm.loop !110

middle.block268:                                  ; preds = %vector.body262
  %cmp.n269 = icmp eq i64 %n.vec259, %wide.trip.count395.i
  br i1 %cmp.n269, label %._crit_edge336.i, label %scalar.ph256.preheader

scalar.ph256.preheader:                           ; preds = %.lr.ph335.i, %middle.block268
  %indvars.iv391.i.ph = phi i64 [ 0, %.lr.ph335.i ], [ %n.vec259, %middle.block268 ]
  %.1195333.i.ph = phi ptr [ %.0194.i, %.lr.ph335.i ], [ %i.yi, %middle.block268 ]
  br label %scalar.ph256

scalar.ph256:                                     ; preds = %scalar.ph256.preheader, %scalar.ph256
  %indvars.iv391.i = phi i64 [ %indvars.iv.next392.i, %scalar.ph256 ], [ %indvars.iv391.i.ph, %scalar.ph256.preheader ] ; 2 uses
  %.1195333.i = phi ptr [ %i.ys, %scalar.ph256 ], [ %.1195333.i.ph, %scalar.ph256.preheader ] ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.1195333.i, i64 4 ; 2 uses
  %i.yt = load i32, ptr %.1195333.i, align 4, !tbaa !77
  %i.yu = ashr i32 %i.yt, %.0.i231307504.i
  %i.yv = trunc i32 %i.yu to i16
  %i.yw = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %indvars.iv391.i
  store i16 %i.yv, ptr %i.yw, align 2, !tbaa !83
  %indvars.iv.next392.i = add nuw nsw i64 %indvars.iv391.i, 1 ; 2 uses
  %exitcond396.not.i = icmp eq i64 %indvars.iv.next392.i, %wide.trip.count395.i
  br i1 %exitcond396.not.i, label %._crit_edge336.i, label %scalar.ph256, !llvm.loop !111

._crit_edge336.i:                                 ; preds = %scalar.ph256, %middle.block268, %.preheader.i
  %.1195.lcssa.i = phi ptr [ %.0194.i, %.preheader.i ], [ %i.yi, %middle.block268 ], [ %i.ys, %scalar.ph256 ] ; 2 uses
  %i.yx = sub nsw i32 544, %i.lz                  ; 3 uses
  %i.yy = icmp sgt i32 %i.yd, 0
  br i1 %i.yy, label %.lr.ph358.i, label %decode_subframe.exit.thread95

.lr.ph358.i:                                      ; preds = %._crit_edge336.i
  %i.yz = add nsw i32 %.0182.i, -1
  %i.za = shl nuw nsw i32 1, %i.yz                ; 4 uses
  %i.zb = and i32 %i.lz, 65520                    ; 4 uses
  %.not212.i = icmp eq i32 %i.zb, 0               ; 2 uses
  %i.zc = icmp ne i32 %i.zb, %i.lz
  %.fr.i = freeze i1 %i.zc
  %i.zd = lshr i32 %i.za, %.0182.i
  %i.ze = tail call i32 @llvm.umin.i32(i32 %i.zd, i32 8191)
  %i.zf = shl nuw nsw i32 %i.ze, %.0.i231307504.i ; 2 uses
  %i.zg = sext i32 %i.yx to i64
  %i.zh = getelementptr inbounds [2 x i8], ptr %i.ks, i64 %i.zg ; 2 uses
  %i.zi = shl nuw nsw i32 %i.lz, 1
  %i.zj = zext nneg i32 %i.zi to i64              ; 2 uses
  br i1 %.fr.i, label %.lr.ph358.split.us.preheader.i, label %.lr.ph358.split.preheader.i

.lr.ph358.split.preheader.i:                      ; preds = %.lr.ph358.i
  %i.zk = zext i16 %i.ly to i64
end_hunk_0
