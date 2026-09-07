Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/rsbDec6?download=true
inline.NumInlined: 165
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Rsb_DecCheck:bb.a
  %.2.i177 = select i1 %i.rg, i32 %i.rh, i32 %.1.i175 ; 2 uses
  %i.rj = and i64 %.222.i176, 15
  %i.rk = icmp eq i64 %i.rj, 0                    ; 2 uses
  %i.rl = or disjoint i32 %.2.i177, 4
  %i.rm = lshr exact i64 %.222.i176, 4
  %.323.i178 = select i1 %i.rk, i64 %i.rm, i64 %.222.i176 ; 3 uses
  %.3.i179 = select i1 %i.rk, i32 %i.rl, i32 %.2.i177 ; 2 uses
  %i.rn = and i64 %.323.i178, 3
  %i.ro = icmp eq i64 %i.rn, 0                    ; 2 uses
  %i.rp = or disjoint i32 %.3.i179, 2
  %i.rq = lshr exact i64 %.323.i178, 2
  %.424.i180 = select i1 %i.ro, i64 %i.rq, i64 %.323.i178
  %.4.i181 = select i1 %i.ro, i32 %i.rp, i32 %.3.i179
  %i.rr = trunc nuw nsw i64 %.424.i180 to i32
  %i.rs = and i32 %i.rr, 1
  %i.rt = xor i32 %i.rs, 1
  %.5.i182 = add nuw nsw i32 %i.rt, %.4.i181      ; 6 uses
  %i.ru = icmp sgt i32 %3, 0
  br i1 %i.ru, label %.lr.ph.i186, label %Rsb_DecCofactor.exit202

.lr.ph.i186:                                      ; preds = %Abc_Tt6FirstBit.exit184
  %wide.trip.count.i187 = zext nneg i32 %3 to i64 ; 5 uses
  %i.rv = add nsw i64 %wide.trip.count.i187, -1   ; 2 uses
  %xtraiter349 = and i64 %wide.trip.count.i187, 1
  %i.rw = icmp eq i64 %i.rv, 0
  br i1 %i.rw, label %.epil.preheader348, label %.lr.ph.i186.new

.lr.ph.i186.new:                                  ; preds = %.lr.ph.i186
  %unroll_iter353 = and i64 %wide.trip.count.i187, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i186.new
  %indvars.iv.i188 = phi i64 [ 0, %.lr.ph.i186.new ], [ %indvars.iv.next.i191.1, %bb.m ] ; 4 uses
  %.014.i189 = phi i64 [ -1, %.lr.ph.i186.new ], [ %i.sq, %bb.m ]
  %niter354 = phi i64 [ 0, %.lr.ph.i186.new ], [ %niter354.next.1, %bb.m ]
  %i.rx = trunc nuw nsw i64 %indvars.iv.i188 to i32
  %i.ry = shl nuw i32 1, %i.rx
  %i.rz = and i32 %i.ry, %.5.i182
  %.not.i190 = icmp eq i32 %i.rz, 0
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i188
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !14
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %indvars.iv
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !16
  %i.se = sext i1 %.not.i190 to i64
  %i.sf = xor i64 %i.sd, %i.se
  %i.sg = and i64 %i.sf, %.014.i189
  %indvars.iv.next.i191 = or disjoint i64 %indvars.iv.i188, 1 ; 2 uses
  %i.sh = trunc nuw nsw i64 %indvars.iv.next.i191 to i32
  %i.si = shl nuw i32 1, %i.sh
  %i.sj = and i32 %i.si, %.5.i182
  %.not.i190.1 = icmp eq i32 %i.sj, 0
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i191
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !14
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %indvars.iv
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !16
  %i.so = sext i1 %.not.i190.1 to i64
  %i.sp = xor i64 %i.sn, %i.so
  %i.sq = and i64 %i.sp, %i.sg                    ; 3 uses
  %indvars.iv.next.i191.1 = add nuw nsw i64 %indvars.iv.i188, 2 ; 2 uses
  %niter354.next.1 = add i64 %niter354, 2         ; 2 uses
  %niter354.ncmp.1 = icmp eq i64 %niter354.next.1, %unroll_iter353
  br i1 %niter354.ncmp.1, label %.lr.ph.i195.preheader.unr-lcssa, label %bb.m, !llvm.loop !36

.lr.ph.i195.preheader.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod350.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.lr.ph.i195.preheader, label %.epil.preheader348

.epil.preheader348:                               ; preds = %.lr.ph.i195.preheader.unr-lcssa, %.lr.ph.i186
  %indvars.iv.i188.epil.init = phi i64 [ 0, %.lr.ph.i186 ], [ %indvars.iv.next.i191.1, %.lr.ph.i195.preheader.unr-lcssa ] ; 2 uses
  %.014.i189.epil.init = phi i64 [ -1, %.lr.ph.i186 ], [ %i.sq, %.lr.ph.i195.preheader.unr-lcssa ]
  %lcmp.mod352 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod352)
  %i.sr = trunc nuw nsw i64 %indvars.iv.i188.epil.init to i32
  %i.ss = shl nuw i32 1, %i.sr
  %i.st = and i32 %i.ss, %.5.i182
  %.not.i190.epil = icmp eq i32 %i.st, 0
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i188.epil.init
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !14
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %indvars.iv
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !16
  %i.sy = sext i1 %.not.i190.epil to i64
  %i.sz = xor i64 %i.sx, %i.sy
  %i.ta = and i64 %i.sz, %.014.i189.epil.init
  br label %.lr.ph.i195.preheader

.lr.ph.i195.preheader:                            ; preds = %.lr.ph.i195.preheader.unr-lcssa, %.epil.preheader348
  %.lcssa334 = phi i64 [ %i.sq, %.lr.ph.i195.preheader.unr-lcssa ], [ %i.ta, %.epil.preheader348 ] ; 2 uses
  %xtraiter355 = and i64 %wide.trip.count.i187, 1
  %i.tb = icmp eq i64 %i.rv, 0
  br i1 %i.tb, label %.lr.ph.i195.epil.preheader, label %.lr.ph.i195.preheader.new

.lr.ph.i195.preheader.new:                        ; preds = %.lr.ph.i195.preheader
  %unroll_iter359 = and i64 %wide.trip.count.i187, 2147483646
  br label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %.lr.ph.i195, %.lr.ph.i195.preheader.new
  %indvars.iv.i197 = phi i64 [ 0, %.lr.ph.i195.preheader.new ], [ %indvars.iv.next.i200.1, %.lr.ph.i195 ] ; 4 uses
  %.014.i198 = phi i64 [ -1, %.lr.ph.i195.preheader.new ], [ %i.tv, %.lr.ph.i195 ]
  %niter360 = phi i64 [ 0, %.lr.ph.i195.preheader.new ], [ %niter360.next.1, %.lr.ph.i195 ]
  %i.tc = trunc nuw nsw i64 %indvars.iv.i197 to i32
  %i.td = shl nuw i32 1, %i.tc
  %i.te = and i32 %i.td, %.5.i182
  %.not.i199 = icmp eq i32 %i.te, 0
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i197
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !14
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %indvars.iv296
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !16
  %i.tj = sext i1 %.not.i199 to i64
  %i.tk = xor i64 %i.ti, %i.tj
  %i.tl = and i64 %i.tk, %.014.i198
  %indvars.iv.next.i200 = or disjoint i64 %indvars.iv.i197, 1 ; 2 uses
  %i.tm = trunc nuw nsw i64 %indvars.iv.next.i200 to i32
  %i.tn = shl nuw i32 1, %i.tm
  %i.to = and i32 %i.tn, %.5.i182
  %.not.i199.1 = icmp eq i32 %i.to, 0
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i200
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !14
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv296
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !16
  %i.tt = sext i1 %.not.i199.1 to i64
  %i.tu = xor i64 %i.ts, %i.tt
  %i.tv = and i64 %i.tu, %i.tl                    ; 3 uses
  %indvars.iv.next.i200.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %niter360.next.1 = add i64 %niter360, 2         ; 2 uses
  %niter360.ncmp.1 = icmp eq i64 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1, label %Rsb_DecCofactor.exit202.loopexit.unr-lcssa, label %.lr.ph.i195, !llvm.loop !36

Rsb_DecCofactor.exit202.loopexit.unr-lcssa:       ; preds = %.lr.ph.i195
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %Rsb_DecCofactor.exit202, label %.lr.ph.i195.epil.preheader

.lr.ph.i195.epil.preheader:                       ; preds = %Rsb_DecCofactor.exit202.loopexit.unr-lcssa, %.lr.ph.i195.preheader
  %indvars.iv.i197.epil.init = phi i64 [ 0, %.lr.ph.i195.preheader ], [ %indvars.iv.next.i200.1, %Rsb_DecCofactor.exit202.loopexit.unr-lcssa ] ; 2 uses
  %.014.i198.epil.init = phi i64 [ -1, %.lr.ph.i195.preheader ], [ %i.tv, %Rsb_DecCofactor.exit202.loopexit.unr-lcssa ]
  %lcmp.mod358 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod358)
  %i.tw = trunc nuw nsw i64 %indvars.iv.i197.epil.init to i32
  %i.tx = shl nuw i32 1, %i.tw
  %i.ty = and i32 %i.tx, %.5.i182
  %.not.i199.epil = icmp eq i32 %i.ty, 0
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i197.epil.init
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !14
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %indvars.iv296
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !16
  %i.ud = sext i1 %.not.i199.epil to i64
  %i.ue = xor i64 %i.uc, %i.ud
  %i.uf = and i64 %i.ue, %.014.i198.epil.init
  br label %Rsb_DecCofactor.exit202

Rsb_DecCofactor.exit202:                          ; preds = %.lr.ph.i195.epil.preheader, %Rsb_DecCofactor.exit202.loopexit.unr-lcssa, %Abc_Tt6FirstBit.exit184
  %.0.lcssa.i185260 = phi i64 [ -1, %Abc_Tt6FirstBit.exit184 ], [ %.lcssa334, %Rsb_DecCofactor.exit202.loopexit.unr-lcssa ], [ %.lcssa334, %.lr.ph.i195.epil.preheader ] ; 2 uses
  %.0.lcssa.i194 = phi i64 [ -1, %Abc_Tt6FirstBit.exit184 ], [ %i.tv, %Rsb_DecCofactor.exit202.loopexit.unr-lcssa ], [ %i.uf, %.lr.ph.i195.epil.preheader ] ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !16 ; 2 uses
  %i.ui = xor i64 %i.uh, -1
  %i.uj = and i64 %.0.lcssa.i185260, %i.ui        ; 4 uses
  %.not = icmp eq i64 %i.uj, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %Rsb_DecCofactor.exit202
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv296
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !16
  %i.um = and i64 %i.ul, %.0.lcssa.i194           ; 4 uses
  %.not132 = icmp eq i64 %i.um, 0
  br i1 %.not132, label %bb.o, label %Abc_Tt6FirstBit.exit228

Abc_Tt6FirstBit.exit228:                          ; preds = %bb.n
  %i.un = shl nuw nsw i32 %i.ra, 6
  %i.uo = and i64 %i.uj, 4294967295
  %i.up = icmp eq i64 %i.uo, 0                    ; 2 uses
  %i.uq = lshr exact i64 %i.uj, 32
  %spec.select.i203 = select i1 %i.up, i64 %i.uq, i64 %i.uj ; 3 uses
  %spec.select27.i204 = select i1 %i.up, i32 32, i32 0 ; 2 uses
  %i.ur = and i64 %spec.select.i203, 65535
  %i.us = icmp eq i64 %i.ur, 0                    ; 2 uses
  %i.ut = or disjoint i32 %spec.select27.i204, 16
  %i.uu = lshr exact i64 %spec.select.i203, 16
  %.121.i205 = select i1 %i.us, i64 %i.uu, i64 %spec.select.i203 ; 3 uses
  %.1.i206 = select i1 %i.us, i32 %i.ut, i32 %spec.select27.i204 ; 2 uses
  %i.uv = and i64 %.121.i205, 255
  %i.uw = icmp eq i64 %i.uv, 0                    ; 2 uses
  %i.ux = or disjoint i32 %.1.i206, 8
  %i.uy = lshr exact i64 %.121.i205, 8
  %.222.i207 = select i1 %i.uw, i64 %i.uy, i64 %.121.i205 ; 3 uses
  %.2.i208 = select i1 %i.uw, i32 %i.ux, i32 %.1.i206 ; 2 uses
  %i.uz = and i64 %.222.i207, 15
  %i.va = icmp eq i64 %i.uz, 0                    ; 2 uses
  %i.vb = or disjoint i32 %.2.i208, 4
  %i.vc = lshr exact i64 %.222.i207, 4
  %.323.i209 = select i1 %i.va, i64 %i.vc, i64 %.222.i207 ; 3 uses
  %.3.i210 = select i1 %i.va, i32 %i.vb, i32 %.2.i208 ; 2 uses
  %i.vd = and i64 %.323.i209, 3
  %i.ve = icmp eq i64 %i.vd, 0                    ; 2 uses
  %i.vf = add nuw nsw i32 %.3.i210, 2
  %i.vg = lshr exact i64 %.323.i209, 2
  %.424.i211 = select i1 %i.ve, i64 %i.vg, i64 %.323.i209
  %.4.i212 = select i1 %i.ve, i32 %i.vf, i32 %.3.i210
  %i.vh = trunc i64 %.424.i211 to i32
  %i.vi = and i32 %i.vh, 1
  %i.vj = xor i32 %i.vi, 1
  %.5.i213 = add nuw i32 %.4.i212, %i.un
  %i.vk = add nuw i32 %.5.i213, %i.vj
  store i32 %i.vk, ptr %5, align 4, !tbaa !11
  %i.vl = shl nuw nsw i32 %i.qz, 6
  %i.vm = and i64 %i.um, 4294967295
  %i.vn = icmp eq i64 %i.vm, 0                    ; 2 uses
  %i.vo = lshr exact i64 %i.um, 32
  %spec.select.i216 = select i1 %i.vn, i64 %i.vo, i64 %i.um ; 3 uses
  %spec.select27.i217 = select i1 %i.vn, i32 32, i32 0 ; 2 uses
  %i.vp = and i64 %spec.select.i216, 65535
  %i.vq = icmp eq i64 %i.vp, 0                    ; 2 uses
  %i.vr = or disjoint i32 %spec.select27.i217, 16
  %i.vs = lshr exact i64 %spec.select.i216, 16
  %.121.i218 = select i1 %i.vq, i64 %i.vs, i64 %spec.select.i216 ; 3 uses
  %.1.i219 = select i1 %i.vq, i32 %i.vr, i32 %spec.select27.i217 ; 2 uses
  %i.vt = and i64 %.121.i218, 255
  %i.vu = icmp eq i64 %i.vt, 0                    ; 2 uses
  %i.vv = or disjoint i32 %.1.i219, 8
  %i.vw = lshr exact i64 %.121.i218, 8
  %.222.i220 = select i1 %i.vu, i64 %i.vw, i64 %.121.i218 ; 3 uses
  %.2.i221 = select i1 %i.vu, i32 %i.vv, i32 %.1.i219 ; 2 uses
  %i.vx = and i64 %.222.i220, 15
  %i.vy = icmp eq i64 %i.vx, 0                    ; 2 uses
  %i.vz = or disjoint i32 %.2.i221, 4
  %i.wa = lshr exact i64 %.222.i220, 4
  %.323.i222 = select i1 %i.vy, i64 %i.wa, i64 %.222.i220 ; 3 uses
  %.3.i223 = select i1 %i.vy, i32 %i.vz, i32 %.2.i221 ; 2 uses
  %i.wb = and i64 %.323.i222, 3
  %i.wc = icmp eq i64 %i.wb, 0                    ; 2 uses
  %i.wd = add nuw nsw i32 %.3.i223, 2
  %i.we = lshr exact i64 %.323.i222, 2
  %.424.i224 = select i1 %i.wc, i64 %i.we, i64 %.323.i222
  %.4.i225 = select i1 %i.wc, i32 %i.wd, i32 %.3.i223
  %i.wf = trunc i64 %.424.i224 to i32
  %i.wg = and i32 %i.wf, 1
  %i.wh = xor i32 %i.wg, 1
  %.5.i226 = add nuw i32 %.4.i225, %i.vl
  %i.wi = add nuw i32 %.5.i226, %i.wh
  br label %.loopexit.sink.split

bb.o:                                             ; preds = %bb.n, %Rsb_DecCofactor.exit202
  %i.wj = shl nuw nsw i32 %i.ra, 6
  %i.wk = and i64 %i.uh, %.0.lcssa.i185260        ; 4 uses
  %i.wl = icmp eq i64 %i.wk, 0
  br i1 %i.wl, label %Abc_Tt6FirstBit.exit241, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.wm = and i64 %i.wk, 4294967295
  %i.wn = icmp eq i64 %i.wm, 0                    ; 2 uses
  %i.wo = lshr exact i64 %i.wk, 32
  %spec.select.i229 = select i1 %i.wn, i64 %i.wo, i64 %i.wk ; 3 uses
  %spec.select27.i230 = select i1 %i.wn, i32 32, i32 0 ; 2 uses
  %i.wp = and i64 %spec.select.i229, 65535
  %i.wq = icmp eq i64 %i.wp, 0                    ; 2 uses
  %i.wr = or disjoint i32 %spec.select27.i230, 16
  %i.ws = lshr exact i64 %spec.select.i229, 16
  %.121.i231 = select i1 %i.wq, i64 %i.ws, i64 %spec.select.i229 ; 3 uses
  %.1.i232 = select i1 %i.wq, i32 %i.wr, i32 %spec.select27.i230 ; 2 uses
  %i.wt = and i64 %.121.i231, 255
  %i.wu = icmp eq i64 %i.wt, 0                    ; 2 uses
  %i.wv = or disjoint i32 %.1.i232, 8
  %i.ww = lshr exact i64 %.121.i231, 8
  %.222.i233 = select i1 %i.wu, i64 %i.ww, i64 %.121.i231 ; 3 uses
  %.2.i234 = select i1 %i.wu, i32 %i.wv, i32 %.1.i232 ; 2 uses
  %i.wx = and i64 %.222.i233, 15
  %i.wy = icmp eq i64 %i.wx, 0                    ; 2 uses
  %i.wz = or disjoint i32 %.2.i234, 4
  %i.xa = lshr exact i64 %.222.i233, 4
  %.323.i235 = select i1 %i.wy, i64 %i.xa, i64 %.222.i233 ; 3 uses
  %.3.i236 = select i1 %i.wy, i32 %i.wz, i32 %.2.i234 ; 2 uses
  %i.xb = and i64 %.323.i235, 3
  %i.xc = icmp eq i64 %i.xb, 0                    ; 2 uses
  %i.xd = add nuw nsw i32 %.3.i236, 2
  %i.xe = lshr exact i64 %.323.i235, 2
  %.424.i237 = select i1 %i.xc, i64 %i.xe, i64 %.323.i235
  %.4.i238 = select i1 %i.xc, i32 %i.xd, i32 %.3.i236
  %i.xf = trunc i64 %.424.i237 to i32
  %i.xg = and i32 %i.xf, 1
  %i.xh = xor i32 %i.xg, 1
  %.5.i239 = add nuw nsw i32 %i.xh, %.4.i238
  br label %Abc_Tt6FirstBit.exit241

Abc_Tt6FirstBit.exit241:                          ; preds = %bb.o, %bb.p
  %.025.i240 = phi i32 [ %.5.i239, %bb.p ], [ -1, %bb.o ]
  %i.xi = add nsw i32 %.025.i240, %i.wj
  store i32 %i.xi, ptr %5, align 4, !tbaa !11
  %i.xj = shl nuw nsw i32 %i.qz, 6
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv296
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !16
  %i.xm = xor i64 %i.xl, -1
  %i.xn = and i64 %.0.lcssa.i194, %i.xm           ; 4 uses
  %i.xo = icmp eq i64 %i.xn, 0
  br i1 %i.xo, label %Abc_Tt6FirstBit.exit254, label %bb.q

bb.q:                                             ; preds = %Abc_Tt6FirstBit.exit241
  %i.xp = and i64 %i.xn, 4294967295
  %i.xq = icmp eq i64 %i.xp, 0                    ; 2 uses
  %i.xr = lshr exact i64 %i.xn, 32
  %spec.select.i242 = select i1 %i.xq, i64 %i.xr, i64 %i.xn ; 3 uses
  %spec.select27.i243 = select i1 %i.xq, i32 32, i32 0 ; 2 uses
  %i.xs = and i64 %spec.select.i242, 65535
  %i.xt = icmp eq i64 %i.xs, 0                    ; 2 uses
  %i.xu = or disjoint i32 %spec.select27.i243, 16
  %i.xv = lshr exact i64 %spec.select.i242, 16
  %.121.i244 = select i1 %i.xt, i64 %i.xv, i64 %spec.select.i242 ; 3 uses
  %.1.i245 = select i1 %i.xt, i32 %i.xu, i32 %spec.select27.i243 ; 2 uses
  %i.xw = and i64 %.121.i244, 255
  %i.xx = icmp eq i64 %i.xw, 0                    ; 2 uses
  %i.xy = or disjoint i32 %.1.i245, 8
  %i.xz = lshr exact i64 %.121.i244, 8
  %.222.i246 = select i1 %i.xx, i64 %i.xz, i64 %.121.i244 ; 3 uses
  %.2.i247 = select i1 %i.xx, i32 %i.xy, i32 %.1.i245 ; 2 uses
  %i.ya = and i64 %.222.i246, 15
  %i.yb = icmp eq i64 %i.ya, 0                    ; 2 uses
  %i.yc = or disjoint i32 %.2.i247, 4
  %i.yd = lshr exact i64 %.222.i246, 4
  %.323.i248 = select i1 %i.yb, i64 %i.yd, i64 %.222.i246 ; 3 uses
  %.3.i249 = select i1 %i.yb, i32 %i.yc, i32 %.2.i247 ; 2 uses
  %i.ye = and i64 %.323.i248, 3
  %i.yf = icmp eq i64 %i.ye, 0                    ; 2 uses
  %i.yg = add nuw nsw i32 %.3.i249, 2
  %i.yh = lshr exact i64 %.323.i248, 2
  %.424.i250 = select i1 %i.yf, i64 %i.yh, i64 %.323.i248
  %.4.i251 = select i1 %i.yf, i32 %i.yg, i32 %.3.i249
  %i.yi = trunc i64 %.424.i250 to i32
  %i.yj = and i32 %i.yi, 1
  %i.yk = xor i32 %i.yj, 1
  %.5.i252 = add nuw nsw i32 %i.yk, %.4.i251
  br label %Abc_Tt6FirstBit.exit254

Abc_Tt6FirstBit.exit254:                          ; preds = %Abc_Tt6FirstBit.exit241, %bb.q
  %.025.i253 = phi i32 [ %.5.i252, %bb.q ], [ -1, %Abc_Tt6FirstBit.exit241 ]
  %i.yl = add nsw i32 %.025.i253, %i.xj
  br label %.loopexit.sink.split

Abc_Tt6FirstBit.exit184.thread:                   ; preds = %Abc_Tt6FirstBit.exit171.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv296
  br i1 %exitcond.not, label %Abc_Tt6FirstBit.exit171.thread, label %Abc_Tt6FirstBit.exit171.preheader, !llvm.loop !37

Abc_Tt6FirstBit.exit171.thread:                   ; preds = %Abc_Tt6FirstBit.exit184.thread, %bb.l, %Abc_Tt6FirstBit.exit
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.loopexit, label %bb.b, !llvm.loop !38

.loopexit.sink.split:                             ; preds = %Abc_Tt6FirstBit.exit228, %Abc_Tt6FirstBit.exit254, %Abc_Tt6FirstBit.exit158
  %storemerge.sink = phi i32 [ %i.ql, %Abc_Tt6FirstBit.exit158 ], [ %i.yl, %Abc_Tt6FirstBit.exit254 ], [ %i.wi, %Abc_Tt6FirstBit.exit228 ]
  store i32 %storemerge.sink, ptr %6, align 4, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %Abc_Tt6FirstBit.exit171.thread, %.loopexit.sink.split, %bb.a
  %.0127 = phi i32 [ 0, %bb.a ], [ 0, %.loopexit.sink.split ], [ %i.qm, %Abc_Tt6FirstBit.exit171.thread ]
  ret i32 %.0127
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define void @Rsb_DecPrintTable(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %.val100 = load i32, ptr %i.b, align 4, !tbaa !20
  %i.c = icmp eq i32 %.val100, 0
  br i1 %i.c, label %bb.r, label %.preheader113.preheader

.preheader113.preheader:                          ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  %i.i = icmp sgt i32 %1, 0                       ; 5 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader113.preheader, %.lr.ph
  %.179116 = phi i32 [ %i.m, %.lr.ph ], [ 0, %.preheader113.preheader ] ; 2 uses
  %i.j = urem i32 %.179116, 100
  %.lhs.trunc = trunc nuw nsw i32 %i.j to i8
  %i.k = udiv i8 %.lhs.trunc, 10
  %.zext = zext nneg i8 %i.k to i32
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.zext) ; 0 uses
  %i.m = add nuw nsw i32 %.179116, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %.preheader113.preheader
  %.179.lcssa = phi i32 [ 0, %.preheader113.preheader ], [ %1, %.lr.ph ] ; 2 uses
  %putchar = tail call i32 @putchar(i32 124)      ; 0 uses
  %i.n = icmp slt i32 %.179.lcssa, %2
  br i1 %i.n, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %._crit_edge, %.lr.ph119
  %.2117 = phi i32 [ %i.r, %.lr.ph119 ], [ %.179.lcssa, %._crit_edge ] ; 2 uses
  %i.o = urem i32 %.2117, 100
  %.lhs.trunc102 = trunc nuw nsw i32 %i.o to i8
  %i.p = udiv i8 %.lhs.trunc102, 10
  %.zext103 = zext nneg i8 %i.p to i32
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.zext103) ; 0 uses
  %i.r = add nuw i32 %.2117, 1                    ; 2 uses
  %exitcond177.not = icmp eq i32 %i.r, %2
  br i1 %exitcond177.not, label %._crit_edge120, label %.lr.ph119, !llvm.loop !40

._crit_edge120:                                   ; preds = %.lr.ph119, %._crit_edge
  %putchar85 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br i1 %i.i, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %._crit_edge120, %.lr.ph124
  %.4122 = phi i32 [ %i.z, %.lr.ph124 ], [ 0, %._crit_edge120 ] ; 2 uses
  %i.x = urem i32 %.4122, 10
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.x) ; 0 uses
  %i.z = add nuw nsw i32 %.4122, 1                ; 2 uses
  %exitcond179.not = icmp eq i32 %i.z, %1
  br i1 %exitcond179.not, label %._crit_edge125, label %.lr.ph124, !llvm.loop !41

._crit_edge125:                                   ; preds = %.lr.ph124, %._crit_edge120
  %.4.lcssa = phi i32 [ 0, %._crit_edge120 ], [ %1, %.lr.ph124 ] ; 2 uses
  %putchar86 = tail call i32 @putchar(i32 124)    ; 0 uses
  %i.aa = icmp slt i32 %.4.lcssa, %2
  br i1 %i.aa, label %.lr.ph129, label %._crit_edge130

.lr.ph129:                                        ; preds = %._crit_edge125, %.lr.ph129
  %.5127 = phi i32 [ %i.ad, %.lr.ph129 ], [ %.4.lcssa, %._crit_edge125 ] ; 2 uses
  %i.ab = urem i32 %.5127, 10
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ab) ; 0 uses
  %i.ad = add nuw i32 %.5127, 1                   ; 2 uses
  %exitcond180.not = icmp eq i32 %i.ad, %2
  br i1 %exitcond180.not, label %._crit_edge130, label %.lr.ph129, !llvm.loop !42
end_hunk_0
begin_hunk_1_@Rsb_DecPrintTable:bb.a
bb.q:                                             ; preds = %.lr.ph143, %bb.q
  %indvars.iv197 = phi i64 [ %i.bw, %.lr.ph143 ], [ %indvars.iv.next198, %bb.q ] ; 2 uses
  %gep146 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep145, i64 %indvars.iv197
  %i.bx = load i64, ptr %gep146, align 8, !tbaa !16
  %i.by = and i64 %i.bx, %i.bv
  %.not = icmp eq i64 %i.by, 0
  %i.bz = select i1 %.not, i32 43, i32 46
  %putchar96 = tail call i32 @putchar(i32 %i.bz)  ; 0 uses
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next198, %wide.trip.count200
  br i1 %exitcond201.not, label %._crit_edge144, label %bb.q, !llvm.loop !45

._crit_edge144:                                   ; preds = %bb.q, %._crit_edge139
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.077148) ; 0 uses
  %i.cb = add nuw nsw i32 %.077148, 1
  %.val99 = load i32, ptr %i.b, align 4, !tbaa !20 ; 2 uses
  %i.cc = icmp slt i32 %.1235, %.val99
  br i1 %i.cc, label %.preheader112, label %._crit_edge151, !llvm.loop !46

._crit_edge151:                                   ; preds = %._crit_edge144, %._crit_edge130
  %putchar89 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.cd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.ch = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br i1 %i.i, label %.lr.ph155.preheader, label %._crit_edge156

.lr.ph155.preheader:                              ; preds = %._crit_edge151
  %wide.trip.count206 = zext nneg i32 %1 to i64
  br label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %.lr.ph155
  %indvars.iv203 = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next204, %.lr.ph155 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv203
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !16
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cj)
  %.lhs.trunc104 = trunc nuw nsw i64 %i.ck to i8
  %i.cl = udiv i8 %.lhs.trunc104, 10
  %.zext105 = zext nneg i8 %i.cl to i32
  %i.cm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.zext105) ; 0 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !47

._crit_edge156:                                   ; preds = %.lr.ph155, %._crit_edge151
  %.12.lcssa = phi i32 [ 0, %._crit_edge151 ], [ %1, %.lr.ph155 ] ; 2 uses
  %putchar90 = tail call i32 @putchar(i32 124)    ; 0 uses
  %i.cn = icmp slt i32 %.12.lcssa, %2
  br i1 %i.cn, label %.lr.ph160.preheader, label %._crit_edge161

.lr.ph160.preheader:                              ; preds = %._crit_edge156
  %i.co = zext nneg i32 %.12.lcssa to i64
  %wide.trip.count211 = zext nneg i32 %2 to i64
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %.lr.ph160
  %indvars.iv208 = phi i64 [ %i.co, %.lr.ph160.preheader ], [ %indvars.iv.next209, %.lr.ph160 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv208
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !16
  %i.cr = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cq)
  %.lhs.trunc106 = trunc nuw nsw i64 %i.cr to i8
  %i.cs = udiv i8 %.lhs.trunc106, 10
  %.zext107 = zext nneg i8 %i.cs to i32
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.zext107) ; 0 uses
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count211
  br i1 %exitcond212.not, label %._crit_edge161, label %.lr.ph160, !llvm.loop !48

._crit_edge161:                                   ; preds = %.lr.ph160, %._crit_edge156
  %putchar91 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.cu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.cy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br i1 %i.i, label %.lr.ph165.preheader, label %._crit_edge166

.lr.ph165.preheader:                              ; preds = %._crit_edge161
  %wide.trip.count217 = zext nneg i32 %1 to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %indvars.iv214 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next215, %.lr.ph165 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv214
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !16
  %i.db = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.da)
  %.lhs.trunc108 = trunc nuw nsw i64 %i.db to i8
  %i.dc = urem i8 %.lhs.trunc108, 10
  %.zext109 = zext nneg i8 %i.dc to i32
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.zext109) ; 0 uses
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !49

._crit_edge166:                                   ; preds = %.lr.ph165, %._crit_edge161
  %.15.lcssa = phi i32 [ 0, %._crit_edge161 ], [ %1, %.lr.ph165 ] ; 2 uses
  %putchar92 = tail call i32 @putchar(i32 124)    ; 0 uses
  %i.de = icmp slt i32 %.15.lcssa, %2
  br i1 %i.de, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %._crit_edge166
  %i.df = zext nneg i32 %.15.lcssa to i64
  %wide.trip.count222 = zext nneg i32 %2 to i64
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %.lr.ph170
  %indvars.iv219 = phi i64 [ %i.df, %.lr.ph170.preheader ], [ %indvars.iv.next220, %.lr.ph170 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv219
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !16
  %i.di = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dh)
  %.lhs.trunc110 = trunc nuw nsw i64 %i.di to i8
  %i.dj = urem i8 %.lhs.trunc110, 10
  %.zext111 = zext nneg i8 %i.dj to i32
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.zext111) ; 0 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !50

._crit_edge171:                                   ; preds = %.lr.ph170, %._crit_edge166
  %putchar93 = tail call i32 @putchar(i32 10)     ; 0 uses
  %putchar94 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @Rsb_DecInitCexes(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %0, 7
  %i.b = add nsw i32 %0, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 9 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !16
  %i.f = shl nsw i32 %i.d, 6
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = ashr i32 %i.g, 6
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %1, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = and i64 %i.e, 1
  %.not = icmp eq i64 %i.l, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %Abc_TtFindFirstBit.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.d, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %Abc_TtFindFirstBit.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !16   ; 4 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.c, label %Abc_Tt6FirstBit.exit.i

Abc_Tt6FirstBit.exit.i:                           ; preds = %.lr.ph.i
  %i.p = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.q = shl nuw nsw i32 %i.p, 6
  %i.r = and i64 %i.o, 4294967295
  %i.s = icmp eq i64 %i.r, 0                      ; 2 uses
  %i.t = lshr exact i64 %i.o, 32
  %spec.select.i.i = select i1 %i.s, i64 %i.t, i64 %i.o ; 3 uses
  %spec.select27.i.i = select i1 %i.s, i32 32, i32 0 ; 2 uses
  %i.u = and i64 %spec.select.i.i, 65535
  %i.v = icmp eq i64 %i.u, 0                      ; 2 uses
  %i.w = or disjoint i32 %spec.select27.i.i, 16
  %i.x = lshr exact i64 %spec.select.i.i, 16
  %.121.i.i = select i1 %i.v, i64 %i.x, i64 %spec.select.i.i ; 3 uses
  %.1.i.i = select i1 %i.v, i32 %i.w, i32 %spec.select27.i.i ; 2 uses
  %i.y = and i64 %.121.i.i, 255
  %i.z = icmp eq i64 %i.y, 0                      ; 2 uses
  %i.aa = or disjoint i32 %.1.i.i, 8
  %i.ab = lshr exact i64 %.121.i.i, 8
  %.222.i.i = select i1 %i.z, i64 %i.ab, i64 %.121.i.i ; 3 uses
  %.2.i.i = select i1 %i.z, i32 %i.aa, i32 %.1.i.i ; 2 uses
  %i.ac = and i64 %.222.i.i, 15
  %i.ad = icmp eq i64 %i.ac, 0                    ; 2 uses
  %i.ae = or disjoint i32 %.2.i.i, 4
  %i.af = lshr exact i64 %.222.i.i, 4
  %.323.i.i = select i1 %i.ad, i64 %i.af, i64 %.222.i.i ; 3 uses
  %.3.i.i = select i1 %i.ad, i32 %i.ae, i32 %.2.i.i ; 2 uses
  %i.ag = and i64 %.323.i.i, 3
  %i.ah = icmp eq i64 %i.ag, 0                    ; 2 uses
  %i.ai = add nuw nsw i32 %.3.i.i, 2
  %i.aj = lshr exact i64 %.323.i.i, 2
  %.424.i.i = select i1 %i.ah, i64 %i.aj, i64 %.323.i.i
  %.4.i.i = select i1 %i.ah, i32 %i.ai, i32 %.3.i.i
  %i.ak = trunc i64 %.424.i.i to i32
  %i.al = and i32 %i.ak, 1
  %i.am = xor i32 %i.al, 1
  %.5.i.i = add nuw i32 %.4.i.i, %i.q
  %i.an = add nuw i32 %.5.i.i, %i.am
  br label %Abc_TtFindFirstBit.exit

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtFindFirstBit.exit, label %.lr.ph.i, !llvm.loop !51

Abc_TtFindFirstBit.exit:                          ; preds = %bb.c, %Abc_Tt6FirstBit.exit.i, %bb.b, %bb.a
  %i.ao = phi i32 [ 0, %bb.a ], [ %i.an, %Abc_Tt6FirstBit.exit.i ], [ -1, %bb.b ], [ -1, %bb.c ] ; 2 uses
  %.not42 = icmp sgt i64 %i.k, -1                 ; 2 uses
  br i1 %.not42, label %bb.d, label %Abc_TtFindLastBit.exit

bb.d:                                             ; preds = %Abc_TtFindFirstBit.exit
  %i.ap = icmp sgt i32 %i.d, 0
  br i1 %i.ap, label %.lr.ph, label %Abc_TtFindLastBit.exit

.lr.ph:                                           ; preds = %bb.d
  %i.aq = zext nneg i32 %i.d to i64
  br label %bb.e

select.unfold.i:                                  ; preds = %bb.e
  %i.ar = icmp sgt i32 %i.av, 0
  br i1 %i.ar, label %bb.e, label %Abc_TtFindLastBit.exit, !llvm.loop !52

bb.e:                                             ; preds = %.lr.ph, %select.unfold.i
  %indvars.iv.i44205 = phi i64 [ %i.aq, %.lr.ph ], [ %i.as, %select.unfold.i ]
  %i.as = add nsw i64 %indvars.iv.i44205, -1      ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16 ; 4 uses
  %.not.i46 = icmp eq i64 %i.au, 0
  %i.av = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %.not.i46, label %select.unfold.i, label %bb.f, !llvm.loop !52

bb.f:                                             ; preds = %bb.e
  %i.aw = shl nuw nsw i32 %i.av, 6
  %i.ax = icmp ult i64 %i.au, 4294967296          ; 2 uses
  %i.ay = shl nuw i64 %i.au, 32
  %.020.i.i = select i1 %i.ax, i64 %i.ay, i64 %i.au ; 3 uses
  %.0.i.i = select i1 %i.ax, i32 32, i32 0        ; 2 uses
  %i.az = icmp ult i64 %.020.i.i, 281474976710656 ; 2 uses
  %i.ba = or disjoint i32 %.0.i.i, 16
  %i.bb = shl nuw i64 %.020.i.i, 16
  %.121.i.i47 = select i1 %i.az, i64 %i.bb, i64 %.020.i.i ; 3 uses
  %.1.i.i48 = select i1 %i.az, i32 %i.ba, i32 %.0.i.i ; 2 uses
  %i.bc = icmp ult i64 %.121.i.i47, 72057594037927936 ; 2 uses
  %i.bd = or disjoint i32 %.1.i.i48, 8
  %i.be = shl nuw i64 %.121.i.i47, 8
  %.222.i.i49 = select i1 %i.bc, i64 %i.be, i64 %.121.i.i47 ; 3 uses
  %.2.i.i50 = select i1 %i.bc, i32 %i.bd, i32 %.1.i.i48 ; 2 uses
  %i.bf = icmp ult i64 %.222.i.i49, 1152921504606846976 ; 2 uses
  %i.bg = or disjoint i32 %.2.i.i50, 4
  %i.bh = shl nuw i64 %.222.i.i49, 4
  %.323.i.i51 = select i1 %i.bf, i64 %i.bh, i64 %.222.i.i49 ; 3 uses
  %.3.i.i52 = select i1 %i.bf, i32 %i.bg, i32 %.2.i.i50 ; 2 uses
  %i.bi = icmp ult i64 %.323.i.i51, 4611686018427387904 ; 2 uses
  %i.bj = add nuw nsw i32 %.3.i.i52, 2
  %i.bk = shl nuw i64 %.323.i.i51, 2
  %.424.i.i53 = select i1 %i.bi, i64 %i.bk, i64 %.323.i.i51
  %.4.i.i54 = select i1 %i.bi, i32 %i.bj, i32 %.3.i.i52
  %i.bl = icmp sgt i64 %.424.i.i53, -1
  %.neg28.i.i = sext i1 %i.bl to i32
  %reass.sub.i.i = or disjoint i32 %i.aw, 63
  %i.bm = sub nuw i32 %reass.sub.i.i, %.4.i.i54
  %i.bn = add i32 %i.bm, %.neg28.i.i
  br label %Abc_TtFindLastBit.exit

Abc_TtFindLastBit.exit:                           ; preds = %select.unfold.i, %bb.d, %bb.f, %Abc_TtFindFirstBit.exit
  %i.bo = phi i32 [ %i.g, %Abc_TtFindFirstBit.exit ], [ %i.bn, %bb.f ], [ -1, %bb.d ], [ -1, %select.unfold.i ] ; 2 uses
  br i1 %.not, label %Abc_TtFindFirstZero.exit, label %bb.g

bb.g:                                             ; preds = %Abc_TtFindLastBit.exit
  %i.bp = icmp sgt i32 %i.d, 0
  br i1 %i.bp, label %.lr.ph.preheader.i56, label %Abc_TtFindFirstZero.exit

.lr.ph.preheader.i56:                             ; preds = %bb.g
  %wide.trip.count.i57 = zext nneg i32 %i.d to i64
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %bb.h, %.lr.ph.preheader.i56
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.preheader.i56 ], [ %indvars.iv.next.i73, %bb.h ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i59
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !16 ; 3 uses
  %.not.i60 = icmp eq i64 %i.br, -1
  br i1 %.not.i60, label %bb.h, label %Abc_Tt6FirstBit.exit.i61

Abc_Tt6FirstBit.exit.i61:                         ; preds = %.lr.ph.i58
  %i.bs = trunc nuw nsw i64 %indvars.iv.i59 to i32
  %i.bt = xor i64 %i.br, -1                       ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bs, 6
  %i.bv = and i64 %i.br, 4294967295
  %i.bw = icmp eq i64 %i.bv, 4294967295           ; 2 uses
  %i.bx = lshr exact i64 %i.bt, 32
  %spec.select.i.i62 = select i1 %i.bw, i64 %i.bx, i64 %i.bt ; 3 uses
  %spec.select27.i.i63 = select i1 %i.bw, i32 32, i32 0 ; 2 uses
  %i.by = and i64 %spec.select.i.i62, 65535
  %i.bz = icmp eq i64 %i.by, 0                    ; 2 uses
  %i.ca = or disjoint i32 %spec.select27.i.i63, 16
  %i.cb = lshr exact i64 %spec.select.i.i62, 16
  %.121.i.i64 = select i1 %i.bz, i64 %i.cb, i64 %spec.select.i.i62 ; 3 uses
  %.1.i.i65 = select i1 %i.bz, i32 %i.ca, i32 %spec.select27.i.i63 ; 2 uses
  %i.cc = and i64 %.121.i.i64, 255
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  %i.ce = or disjoint i32 %.1.i.i65, 8
  %i.cf = lshr exact i64 %.121.i.i64, 8
  %.222.i.i66 = select i1 %i.cd, i64 %i.cf, i64 %.121.i.i64 ; 3 uses
  %.2.i.i67 = select i1 %i.cd, i32 %i.ce, i32 %.1.i.i65 ; 2 uses
  %i.cg = and i64 %.222.i.i66, 15
  %i.ch = icmp eq i64 %i.cg, 0                    ; 2 uses
  %i.ci = or disjoint i32 %.2.i.i67, 4
  %i.cj = lshr exact i64 %.222.i.i66, 4
  %.323.i.i68 = select i1 %i.ch, i64 %i.cj, i64 %.222.i.i66 ; 3 uses
  %.3.i.i69 = select i1 %i.ch, i32 %i.ci, i32 %.2.i.i67 ; 2 uses
  %i.ck = and i64 %.323.i.i68, 3
  %i.cl = icmp eq i64 %i.ck, 0                    ; 2 uses
  %i.cm = add nuw nsw i32 %.3.i.i69, 2
  %i.cn = lshr exact i64 %.323.i.i68, 2
  %.424.i.i70 = select i1 %i.cl, i64 %i.cn, i64 %.323.i.i68
  %.4.i.i71 = select i1 %i.cl, i32 %i.cm, i32 %.3.i.i69
  %i.co = trunc i64 %.424.i.i70 to i32
  %i.cp = and i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 1
  %.5.i.i72 = add nuw i32 %.4.i.i71, %i.bu
  %i.cr = add nuw i32 %.5.i.i72, %i.cq
  br label %Abc_TtFindFirstZero.exit

bb.h:                                             ; preds = %.lr.ph.i58
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %wide.trip.count.i57
  br i1 %exitcond.not.i74, label %Abc_TtFindFirstZero.exit, label %.lr.ph.i58, !llvm.loop !53

Abc_TtFindFirstZero.exit:                         ; preds = %bb.h, %Abc_Tt6FirstBit.exit.i61, %bb.g, %Abc_TtFindLastBit.exit
  %i.cs = phi i32 [ 0, %Abc_TtFindLastBit.exit ], [ %i.cr, %Abc_Tt6FirstBit.exit.i61 ], [ -1, %bb.g ], [ -1, %bb.h ] ; 2 uses
  br i1 %.not42, label %Abc_TtFindLastZero.exit, label %bb.i

bb.i:                                             ; preds = %Abc_TtFindFirstZero.exit
  %i.ct = icmp sgt i32 %i.d, 0
  br i1 %i.ct, label %.lr.ph207, label %Abc_TtFindLastZero.exit

.lr.ph207:                                        ; preds = %bb.i
  %i.cu = zext nneg i32 %i.d to i64
  br label %bb.j

select.unfold.i76:                                ; preds = %bb.j
  %i.cv = icmp sgt i32 %i.cz, 0
  br i1 %i.cv, label %bb.j, label %Abc_TtFindLastZero.exit, !llvm.loop !54

bb.j:                                             ; preds = %.lr.ph207, %select.unfold.i76
  %indvars.iv.i77206 = phi i64 [ %i.cu, %.lr.ph207 ], [ %i.cw, %select.unfold.i76 ]
  %i.cw = add nsw i64 %indvars.iv.i77206, -1      ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !16 ; 3 uses
  %.not.i79 = icmp eq i64 %i.cy, -1
  %i.cz = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %.not.i79, label %select.unfold.i76, label %bb.k, !llvm.loop !54

bb.k:                                             ; preds = %bb.j
  %i.da = xor i64 %i.cy, -1                       ; 2 uses
  %i.db = shl nuw nsw i32 %i.cz, 6
  %i.dc = icmp ugt i64 %i.cy, -4294967297         ; 2 uses
  %i.dd = shl nuw i64 %i.da, 32
  %.020.i.i80 = select i1 %i.dc, i64 %i.dd, i64 %i.da ; 3 uses
  %.0.i.i81 = select i1 %i.dc, i32 32, i32 0      ; 2 uses
  %i.de = icmp ult i64 %.020.i.i80, 281474976710656 ; 2 uses
  %i.df = or disjoint i32 %.0.i.i81, 16
  %i.dg = shl nuw i64 %.020.i.i80, 16
  %.121.i.i82 = select i1 %i.de, i64 %i.dg, i64 %.020.i.i80 ; 3 uses
  %.1.i.i83 = select i1 %i.de, i32 %i.df, i32 %.0.i.i81 ; 2 uses
  %i.dh = icmp ult i64 %.121.i.i82, 72057594037927936 ; 2 uses
  %i.di = or disjoint i32 %.1.i.i83, 8
  %i.dj = shl nuw i64 %.121.i.i82, 8
  %.222.i.i84 = select i1 %i.dh, i64 %i.dj, i64 %.121.i.i82 ; 3 uses
  %.2.i.i85 = select i1 %i.dh, i32 %i.di, i32 %.1.i.i83 ; 2 uses
  %i.dk = icmp ult i64 %.222.i.i84, 1152921504606846976 ; 2 uses
  %i.dl = or disjoint i32 %.2.i.i85, 4
  %i.dm = shl nuw i64 %.222.i.i84, 4
  %.323.i.i86 = select i1 %i.dk, i64 %i.dm, i64 %.222.i.i84 ; 3 uses
  %.3.i.i87 = select i1 %i.dk, i32 %i.dl, i32 %.2.i.i85 ; 2 uses
  %i.dn = icmp ult i64 %.323.i.i86, 4611686018427387904 ; 2 uses
  %i.do = add nuw nsw i32 %.3.i.i87, 2
  %i.dp = shl nuw i64 %.323.i.i86, 2
  %.424.i.i88 = select i1 %i.dn, i64 %i.dp, i64 %.323.i.i86
  %.4.i.i89 = select i1 %i.dn, i32 %i.do, i32 %.3.i.i87
  %i.dq = icmp sgt i64 %.424.i.i88, -1
  %.neg28.i.i90 = sext i1 %i.dq to i32
  %reass.sub.i.i91 = or disjoint i32 %i.db, 63
  %i.dr = sub nuw i32 %reass.sub.i.i91, %.4.i.i89
  %i.ds = add i32 %i.dr, %.neg28.i.i90
  br label %Abc_TtFindLastZero.exit

Abc_TtFindLastZero.exit:                          ; preds = %select.unfold.i76, %bb.i, %bb.k, %Abc_TtFindFirstZero.exit
  %i.dt = phi i32 [ %i.g, %Abc_TtFindFirstZero.exit ], [ %i.ds, %bb.k ], [ -1, %bb.i ], [ -1, %select.unfold.i76 ] ; 2 uses
  %i.du = icmp sgt i32 %4, 0
  br i1 %i.du, label %.lr.ph.i92, label %Rsb_DecRecordCex.exit120

.lr.ph.i92:                                       ; preds = %Abc_TtFindLastZero.exit
  %i.dv = ashr i32 %i.ao, 6
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = and i32 %i.ao, 63
  %i.dy = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.dz = ashr i32 %i.cs, 6
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = and i32 %i.cs, 63
  %i.ec = zext nneg i32 %i.eb to i64              ; 2 uses
  %wide.trip.count.i93 = zext nneg i32 %4 to i64  ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i92
  %indvars.iv.i94 = phi i64 [ 0, %.lr.ph.i92 ], [ %indvars.iv.next.i95, %bb.n ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i94
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !14 ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.dw
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !16
  %i.eh = lshr i64 %i.eg, %i.dy
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ea
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.ek = lshr i64 %i.ej, %i.ec
  %i.el = xor i64 %i.ek, %i.eh
  %i.em = and i64 %i.el, 1
  %.not.not.i = icmp eq i64 %i.em, 0
  br i1 %.not.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %gep.i = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i94 ; 2 uses
  %i.en = load i64, ptr %gep.i, align 8, !tbaa !16
  %i.eo = or i64 %i.en, 1
  store i64 %i.eo, ptr %gep.i, align 8, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %indvars.iv.next.i95, %wide.trip.count.i93
  br i1 %exitcond.not.i96, label %.lr.ph.i97, label %bb.l, !llvm.loop !0

.lr.ph.i97:                                       ; preds = %bb.n
  %i.ep = ashr i32 %i.dt, 6
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = and i32 %i.dt, 63
  %i.es = zext nneg i32 %i.er to i64              ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i97
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i101, %bb.q ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i99
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !14 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.dw
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.ex = lshr i64 %i.ew, %i.dy
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.eq
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !16
  %i.fa = lshr i64 %i.ez, %i.es
  %i.fb = xor i64 %i.fa, %i.ex
  %i.fc = and i64 %i.fb, 1
  %.not.not.i100 = icmp eq i64 %i.fc, 0
  br i1 %.not.not.i100, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %gep.i103 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i99 ; 2 uses
  %i.fd = load i64, ptr %gep.i103, align 8, !tbaa !16
  %i.fe = or i64 %i.fd, 2
  store i64 %i.fe, ptr %gep.i103, align 8, !tbaa !16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, %wide.trip.count.i93
  br i1 %exitcond.not.i102, label %.lr.ph.i105, label %bb.o, !llvm.loop !0

.lr.ph.i105:                                      ; preds = %bb.q
  %i.ff = ashr i32 %i.bo, 6
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = and i32 %i.bo, 63
  %i.fi = zext nneg i32 %i.fh to i64              ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i105
  %indvars.iv.i107 = phi i64 [ 0, %.lr.ph.i105 ], [ %indvars.iv.next.i109, %bb.t ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i107
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !14 ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.fg
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !16
  %i.fn = lshr i64 %i.fm, %i.fi
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.ea
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !16
  %i.fq = lshr i64 %i.fp, %i.ec
  %i.fr = xor i64 %i.fq, %i.fn
  %i.fs = and i64 %i.fr, 1
  %.not.not.i108 = icmp eq i64 %i.fs, 0
  br i1 %.not.not.i108, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %gep.i111 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i107 ; 2 uses
  %i.ft = load i64, ptr %gep.i111, align 8, !tbaa !16
  %i.fu = or i64 %i.ft, 4
  store i64 %i.fu, ptr %gep.i111, align 8, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %wide.trip.count.i93
  br i1 %exitcond.not.i110, label %.lr.ph.i113, label %bb.r, !llvm.loop !0

.lr.ph.i113:                                      ; preds = %bb.t, %bb.v
  %indvars.iv.i115 = phi i64 [ %indvars.iv.next.i117, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i115
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !14 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fg
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !16
  %i.fz = lshr i64 %i.fy, %i.fi
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.eq
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !16
  %i.gc = lshr i64 %i.gb, %i.es
  %i.gd = xor i64 %i.gc, %i.fz
  %i.ge = and i64 %i.gd, 1
  %.not.not.i116 = icmp eq i64 %i.ge, 0
  br i1 %.not.not.i116, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i113
  %gep.i119 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i115 ; 2 uses
  %i.gf = load i64, ptr %gep.i119, align 8, !tbaa !16
  %i.gg = or i64 %i.gf, 8
  store i64 %i.gg, ptr %gep.i119, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i113
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, %wide.trip.count.i93
  br i1 %exitcond.not.i118, label %Rsb_DecRecordCex.exit120, label %.lr.ph.i113, !llvm.loop !0

Rsb_DecRecordCex.exit120:                         ; preds = %bb.v, %Abc_TtFindLastZero.exit
  %.not43 = icmp eq ptr %6, null
  br i1 %.not43, label %bb.ap, label %bb.w

bb.w:                                             ; preds = %Rsb_DecRecordCex.exit120
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 12 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !20 ; 7 uses
  %i.gj = load i32, ptr %6, align 8, !tbaa !22
  %i.gk = icmp eq i32 %i.gi, %i.gj
  br i1 %i.gk, label %bb.x, label %Vec_IntPush.exit

bb.x:                                             ; preds = %bb.w
  %i.gl = icmp slt i32 %i.gi, 16
  br i1 %i.gl, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.gn, null
  br i1 %.not9.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.go = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gn, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.gp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.aa, %bb.z
  %i.gq = phi ptr [ %i.go, %bb.z ], [ %i.gp, %bb.aa ]
  store ptr %i.gq, ptr %i.gm, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ab:                                            ; preds = %bb.x
  %i.gr = icmp samesign ult i32 %i.gi, 1073741823
  %i.gs = shl nuw nsw i32 %i.gi, 1
  %spec.select.i121 = select i1 %i.gr, i32 %i.gs, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.gi, %spec.select.i121
  br i1 %.not.i9.i, label %bb.ac, label %Vec_IntPush.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !21 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.gu, null
  %i.gv = zext nneg i32 %spec.select.i121 to i64
  %i.gw = shl nuw nsw i64 %i.gv, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gx = tail call ptr @realloc(ptr noundef nonnull %i.gu, i64 noundef %i.gw) #19
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.gy = tail call noalias ptr @malloc(i64 noundef %i.gw) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
end_hunk_1
