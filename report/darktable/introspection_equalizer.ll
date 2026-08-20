inline.NumInlined: 22
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 31
begin_hunk_0_@process:bb.a
  store <2 x float> %i.px, ptr %i.pu, align 4, !tbaa !36
  %i.py = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.pz = load float, ptr %i.py, align 4, !tbaa !36
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pu, i64 8 ; 2 uses
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !36
  %i.qc = fsub reassoc nsz arcp contract afn float %i.qb, %i.pz
  store float %i.qc, ptr %i.qa, align 4, !tbaa !36
  br label %.loopexit360.i

.loopexit360.i:                                   ; preds = %.preheader359.i, %._crit_edge400.i
  %i.qd = add nsw i64 %indvars.iv492.i, %i.fm
  %.idx336.i = shl i64 %i.qd, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %3, i64 %.idx336.i ; 2 uses
  %.idx337.i = shl nuw nsw i64 %indvars.iv492.i, 4
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx337.i ; 3 uses
  %i.qg = load <2 x float>, ptr %i.qe, align 4, !tbaa !36
  %i.qh = fpext <2 x float> %i.qg to <2 x double>
  %i.qi = fmul reassoc nsz arcp contract afn <2 x double> %i.qh, splat (double 5.000000e-01)
  %i.qj = load <2 x float>, ptr %i.qf, align 4, !tbaa !36
  %i.qk = fpext <2 x float> %i.qj to <2 x double>
  %i.ql = fadd reassoc nsz arcp contract afn <2 x double> %i.qi, %i.qk
  %i.qm = fptrunc <2 x double> %i.ql to <2 x float>
  store <2 x float> %i.qm, ptr %i.qf, align 4, !tbaa !36
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !36
  %i.qp = fpext reassoc nsz arcp contract afn float %i.qo to double
  %i.qq = fmul reassoc nsz arcp contract afn double %i.qp, 5.000000e-01
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 2 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !36
  %i.qt = fpext reassoc nsz arcp contract afn float %i.qs to double
  %i.qu = fadd reassoc nsz arcp contract afn double %i.qq, %i.qt
  %i.qv = fptrunc reassoc nsz arcp contract afn double %i.qu to float
  store float %i.qv, ptr %i.qr, align 4, !tbaa !36
  br i1 %i.fn, label %.preheader.i, label %._crit_edge406.i

.preheader.i:                                     ; preds = %.loopexit360.i, %.preheader.i
  %indvars.iv485.i = phi i64 [ %indvars.iv.next486.i, %.preheader.i ], [ %i.fp, %.loopexit360.i ] ; 5 uses
  %i.qw = sub nsw i64 %indvars.iv485.i, %i.fl     ; 2 uses
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.qw ; 3 uses
  %i.qy = mul nsw i64 %i.qw, %i.k
  %i.qz = add nsw i64 %i.qy, %indvars.iv492.i
  %.idx333.i = shl i64 %i.qz, 4
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 %.idx333.i ; 3 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %indvars.iv485.i ; 3 uses
  %i.rc = add nsw i64 %indvars.iv485.i, %i.fl
  %i.rd = mul nsw i64 %i.rc, %i.k
  %i.re = add nsw i64 %i.rd, %indvars.iv492.i
  %.idx334.i = shl i64 %i.re, 4
  %i.rf = getelementptr inbounds nuw i8, ptr %3, i64 %.idx334.i ; 3 uses
  %i.rg = mul nsw i64 %indvars.iv485.i, %i.k
  %i.rh = add nsw i64 %i.rg, %indvars.iv492.i
  %.idx335.i = shl i64 %i.rh, 4
  %i.ri = getelementptr inbounds nuw i8, ptr %3, i64 %.idx335.i ; 4 uses
  %i.rj = load float, ptr %i.qx, align 4, !tbaa !36 ; 2 uses
  %i.rk = load float, ptr %i.ra, align 4, !tbaa !36
  %i.rl = fmul reassoc nsz arcp contract afn float %i.rk, %i.rj
  %i.rm = load float, ptr %i.rb, align 4, !tbaa !36 ; 2 uses
  %i.rn = load float, ptr %i.rf, align 4, !tbaa !36
  %i.ro = fmul reassoc nsz arcp contract afn float %i.rn, %i.rm
  %i.rp = fadd reassoc nsz arcp contract afn float %i.ro, %i.rl
  %i.rq = fpext reassoc nsz arcp contract afn float %i.rp to double
  %i.rr = fadd reassoc nsz arcp contract afn float %i.rm, %i.rj
  %i.rs = fpext reassoc nsz arcp contract afn float %i.rr to double
  %i.rt = fmul reassoc nsz arcp contract afn double %i.rs, 2.000000e+00
  %i.ru = fdiv reassoc nsz arcp contract afn double %i.rq, %i.rt
  %i.rv = load float, ptr %i.ri, align 4, !tbaa !36
  %i.rw = fpext reassoc nsz arcp contract afn float %i.rv to double
  %i.rx = fadd reassoc nsz arcp contract afn double %i.ru, %i.rw
  %i.ry = fptrunc reassoc nsz arcp contract afn double %i.rx to float
  store float %i.ry, ptr %i.ri, align 4, !tbaa !36
  %i.rz = load float, ptr %i.qx, align 4, !tbaa !36 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !36
  %i.sc = fmul reassoc nsz arcp contract afn float %i.sb, %i.rz
  %i.sd = load float, ptr %i.rb, align 4, !tbaa !36 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.sf = load float, ptr %i.se, align 4, !tbaa !36
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sf, %i.sd
  %i.sh = fadd reassoc nsz arcp contract afn float %i.sg, %i.sc
  %i.si = fpext reassoc nsz arcp contract afn float %i.sh to double
  %i.sj = fadd reassoc nsz arcp contract afn float %i.sd, %i.rz
  %i.sk = fpext reassoc nsz arcp contract afn float %i.sj to double
  %i.sl = fmul reassoc nsz arcp contract afn double %i.sk, 2.000000e+00
  %i.sm = fdiv reassoc nsz arcp contract afn double %i.si, %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ri, i64 4 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.sp = load float, ptr %i.so, align 4, !tbaa !36
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !36
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.st = load <2 x float>, ptr %i.sn, align 4, !tbaa !36
  %i.su = fpext <2 x float> %i.st to <2 x double> ; 2 uses
  %i.sv = extractelement <2 x double> %i.su, i64 0
  %i.sw = fadd reassoc nsz arcp contract afn double %i.sm, %i.sv
  %i.sx = fptrunc reassoc nsz arcp contract afn double %i.sw to float
  store float %i.sx, ptr %i.sn, align 4, !tbaa !36
  %i.sy = load float, ptr %i.qx, align 4, !tbaa !36 ; 2 uses
  %i.sz = fmul reassoc nsz arcp contract afn float %i.sp, %i.sy
  %i.ta = load float, ptr %i.rb, align 4, !tbaa !36 ; 2 uses
  %i.tb = fmul reassoc nsz arcp contract afn float %i.sr, %i.ta
  %i.tc = fadd reassoc nsz arcp contract afn float %i.tb, %i.sz
  %i.td = fpext reassoc nsz arcp contract afn float %i.tc to double
  %i.te = fadd reassoc nsz arcp contract afn float %i.ta, %i.sy
  %i.tf = fpext reassoc nsz arcp contract afn float %i.te to double
  %i.tg = fmul reassoc nsz arcp contract afn double %i.tf, 2.000000e+00
  %i.th = fdiv reassoc nsz arcp contract afn double %i.td, %i.tg
  %i.ti = extractelement <2 x double> %i.su, i64 1
  %i.tj = fadd reassoc nsz arcp contract afn double %i.th, %i.ti
  %i.tk = fptrunc reassoc nsz arcp contract afn double %i.tj to float
  store float %i.tk, ptr %i.ss, align 4, !tbaa !36
  %indvars.iv.next486.i = add nsw i64 %indvars.iv485.i, %i.fp ; 3 uses
  %i.tl = icmp slt i64 %indvars.iv.next486.i, %i.fo
  br i1 %i.tl, label %.preheader.i, label %._crit_edge406.loopexit.i

._crit_edge406.loopexit.i:                        ; preds = %.preheader.i
  %i.tm = trunc nsw i64 %indvars.iv.next486.i to i32
  br label %._crit_edge406.i

._crit_edge406.i:                                 ; preds = %._crit_edge406.loopexit.i, %.loopexit360.i
  %.1.lcssa.i = phi i32 [ %i.en, %.loopexit360.i ], [ %i.tm, %._crit_edge406.loopexit.i ] ; 3 uses
  %i.tn = icmp slt i32 %.1.lcssa.i, %i.h
  br i1 %i.tn, label %.preheader357.i, label %.loopexit.i

.preheader357.i:                                  ; preds = %._crit_edge406.i
  %i.to = sub nsw i32 %.1.lcssa.i, %i.eo
  %i.tp = sext i32 %i.to to i64
  %i.tq = mul nsw i64 %i.tp, %i.k
  %i.tr = add nsw i64 %i.tq, %indvars.iv492.i
  %.idx.i = shl i64 %i.tr, 4
  %i.ts = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i ; 2 uses
  %i.tt = sext i32 %.1.lcssa.i to i64
  %i.tu = mul nsw i64 %i.tt, %i.k
  %i.tv = add nsw i64 %i.tu, %indvars.iv492.i
  %.idx332.i = shl i64 %i.tv, 4
  %i.tw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx332.i ; 3 uses
  %i.tx = load <2 x float>, ptr %i.ts, align 4, !tbaa !36
  %i.ty = fmul reassoc nsz arcp contract afn <2 x float> %i.tx, splat (float 5.000000e-01)
  %i.tz = load <2 x float>, ptr %i.tw, align 4, !tbaa !36
  %i.ua = fadd reassoc nsz arcp contract afn <2 x float> %i.tz, %i.ty
  store <2 x float> %i.ua, ptr %i.tw, align 4, !tbaa !36
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !36
  %i.ud = fmul reassoc nsz arcp contract afn float %i.uc, 5.000000e-01
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 2 uses
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !36
  %i.ug = fadd reassoc nsz arcp contract afn float %i.uf, %i.ud
  store float %i.ug, ptr %i.ue, align 4, !tbaa !36
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader357.i, %._crit_edge406.i
  %indvars.iv.next493.i = add nuw nsw i64 %indvars.iv492.i, 1 ; 2 uses
  %exitcond496.not.i = icmp eq i64 %indvars.iv.next493.i, %wide.trip.count495.i
  br i1 %exitcond496.not.i, label %dt_iop_equalizer_wtf.exit, label %.preheader362.i

dt_iop_equalizer_wtf.exit:                        ; preds = %.loopexit.i, %._crit_edge393.i
  tail call void @free(ptr noundef %i.ff) #19
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count246
  br i1 %exitcond247.not, label %.lr.ph231, label %bb.b

.lr.ph233:                                        ; preds = %bb.j
  %i.uh = shl nsw i64 %i.l, 2
  %i.ui = add nsw i64 %i.uh, 60
  %i.uj = and i64 %i.ui, -64
  %i.uk = icmp sgt i32 %i.f, 0
  %i.ul = zext nneg i32 %i.f to i64               ; 12 uses
  %i.um = shl nsw i64 %i.k, 2
  %i.un = add nsw i64 %i.um, 60
  %i.uo = and i64 %i.un, -64
  %i.up = icmp sgt i32 %i.h, 0
  %wide.trip.count430.i = zext nneg i32 %i.h to i64
  %i.uq = zext nneg i32 %i.al to i64
  br label %bb.p

bb.f:                                             ; preds = %.lr.ph231, %bb.j
  %.0151230 = phi i32 [ 1, %.lr.ph231 ], [ %i.vl, %bb.j ] ; 3 uses
  %i.ur = add nsw i32 %.0151230, -1
  %i.us = sitofp reassoc nsz arcp contract afn i32 %i.ur to float
  %i.ut = fmul reassoc nsz arcp contract afn float %i.bl, %i.us
  %i.uu = fmul reassoc nsz arcp contract afn float %i.ut, %i.br
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, %i.v
  %i.uw = load i32, ptr %i.bo, align 8, !tbaa !45
  %i.ux = sitofp reassoc nsz arcp contract afn i32 %i.uw to float
  %i.uy = fdiv reassoc nsz arcp contract afn float %i.uv, %i.ux
  %i.uz = fpext reassoc nsz arcp contract afn float %i.uy to double
  %i.va = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.uz ; 3 uses
  %i.vb = fcmp reassoc nsz arcp contract afn ogt double %i.va, 1.000000e+00
  br i1 %i.vb, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.vc = fcmp reassoc nsz arcp contract afn olt double %i.va, 0.000000e+00
  br i1 %i.vc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.vd = fptrunc reassoc nsz arcp contract afn double %i.va to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ve = phi float [ 1.000000e+00, %bb.f ], [ %i.vd, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.vf = shl nuw i32 1, %.0151230                ; 5 uses
  %i.vg = sdiv i32 %i.vf, 2                       ; 5 uses
  %i.vh = icmp slt i32 %i.vg, %i.f                ; 2 uses
  %i.vi = icmp slt i32 %i.vg, %i.h
  %i.vj = sext i32 %i.vg to i64                   ; 4 uses
  %i.vk = sext i32 %i.vf to i64                   ; 6 uses
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge225
  %i.vl = add nuw nsw i32 %.0151230, 1            ; 2 uses
  %exitcond270.not = icmp eq i32 %i.vl, %i.al
  br i1 %exitcond270.not, label %.lr.ph233, label %bb.f

bb.k:                                             ; preds = %bb.i, %._crit_edge225
  %indvars.iv266 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next267, %._crit_edge225 ] ; 5 uses
  %i.vm = icmp ne i64 %indvars.iv266, 0
  %i.vn = zext i1 %i.vm to i64
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.vn
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !47 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 20 ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 4, !tbaa !49  ; 5 uses
  %i.vs = zext i8 %i.vr to i32
  %.not35.i = icmp eq i8 %i.vr, 0
  br i1 %.not35.i, label %._crit_edge.i169, label %iter.check350

iter.check350:                                    ; preds = %bb.k
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 24 ; 10 uses
  %wide.trip.count.i165 = zext i8 %i.vr to i64    ; 10 uses
  %min.iters.check335 = icmp ult i8 %i.vr, 4
  br i1 %min.iters.check335, label %vec.epilog.scalar.ph351.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check350
  %i.vu = shl nuw nsw i64 %wide.trip.count.i165, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.vu ; 2 uses
  %scevgep325 = getelementptr i8, ptr %i.b, i64 %i.vu ; 2 uses
  %scevgep326 = getelementptr i8, ptr %i.vp, i64 24
  %i.vv = shl nuw nsw i64 %wide.trip.count.i165, 3
  %scevgep327 = getelementptr i8, ptr %scevgep326, i64 %i.vv ; 2 uses
  %bound0 = icmp ult ptr %i.a, %scevgep325
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0328 = icmp ult ptr %i.a, %scevgep327
  %bound1329 = icmp ult ptr %i.vt, %scevgep
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx = or i1 %found.conflict, %found.conflict330
  %bound0331 = icmp ult ptr %i.b, %scevgep327
  %bound1332 = icmp ult ptr %i.vt, %scevgep325
  %found.conflict333 = and i1 %bound0331, %bound1332
  %conflict.rdx334 = or i1 %conflict.rdx, %found.conflict333
  br i1 %conflict.rdx334, label %vec.epilog.scalar.ph351.preheader, label %vector.main.loop.iter.check336

vector.main.loop.iter.check336:                   ; preds = %vector.memcheck
  %min.iters.check337 = icmp ult i8 %i.vr, 16
  br i1 %min.iters.check337, label %vec.epilog.ph354, label %vector.ph338

vector.ph338:                                     ; preds = %vector.main.loop.iter.check336
  %i.vw = and i64 %wide.trip.count.i165, 12
  %n.vec339 = and i64 %wide.trip.count.i165, 240  ; 4 uses
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next346, %vector.body340 ] ; 5 uses
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %index341
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %index341
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 64
  %wide.vec = load <16 x float>, ptr %i.vx, align 4, !tbaa !36, !alias.scope !54 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec342 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec343 = load <16 x float>, ptr %i.vz, align 4, !tbaa !36, !alias.scope !54 ; 2 uses
  %strided.vec344 = shufflevector <16 x float> %wide.vec343, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec345 = shufflevector <16 x float> %wide.vec343, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index341 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  store <8 x float> %strided.vec, ptr %i.wa, align 16, !tbaa !36, !alias.scope !57, !noalias !59
  store <8 x float> %strided.vec344, ptr %i.wb, align 16, !tbaa !36, !alias.scope !57, !noalias !59
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index341 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  store <8 x float> %strided.vec342, ptr %i.wc, align 16, !tbaa !36, !alias.scope !61, !noalias !54
  store <8 x float> %strided.vec345, ptr %i.wd, align 16, !tbaa !36, !alias.scope !61, !noalias !54
  %index.next346 = add nuw i64 %index341, 16      ; 2 uses
  %i.we = icmp eq i64 %index.next346, %n.vec339
  br i1 %i.we, label %middle.block347, label %vector.body340, !llvm.loop !62

middle.block347:                                  ; preds = %vector.body340
  %cmp.n348 = icmp eq i64 %n.vec339, %wide.trip.count.i165
  br i1 %cmp.n348, label %._crit_edge.i169, label %vec.epilog.iter.check352

vec.epilog.iter.check352:                         ; preds = %middle.block347
  %min.epilog.iters.check353 = icmp eq i64 %i.vw, 0
  br i1 %min.epilog.iters.check353, label %vec.epilog.scalar.ph351.preheader, label %vec.epilog.ph354, !prof !63

vec.epilog.ph354:                                 ; preds = %vector.main.loop.iter.check336, %vec.epilog.iter.check352
  %vec.epilog.resume.val349 = phi i64 [ %n.vec339, %vec.epilog.iter.check352 ], [ 0, %vector.main.loop.iter.check336 ]
  %n.vec355 = and i64 %wide.trip.count.i165, 252  ; 3 uses
  br label %vec.epilog.vector.body356

vec.epilog.vector.body356:                        ; preds = %vec.epilog.vector.body356, %vec.epilog.ph354
  %index357 = phi i64 [ %vec.epilog.resume.val349, %vec.epilog.ph354 ], [ %index.next361, %vec.epilog.vector.body356 ] ; 4 uses
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %index357
  %wide.vec358 = load <8 x float>, ptr %i.wf, align 4, !tbaa !36, !alias.scope !54 ; 2 uses
  %strided.vec359 = shufflevector <8 x float> %wide.vec358, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec360 = shufflevector <8 x float> %wide.vec358, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index357
  store <4 x float> %strided.vec359, ptr %i.wg, align 16, !tbaa !36, !alias.scope !57, !noalias !59
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index357
  store <4 x float> %strided.vec360, ptr %i.wh, align 16, !tbaa !36, !alias.scope !61, !noalias !54
  %index.next361 = add nuw i64 %index357, 4       ; 2 uses
  %i.wi = icmp eq i64 %index.next361, %n.vec355
  br i1 %i.wi, label %vec.epilog.middle.block362, label %vec.epilog.vector.body356, !llvm.loop !64

vec.epilog.middle.block362:                       ; preds = %vec.epilog.vector.body356
  %cmp.n363 = icmp eq i64 %n.vec355, %wide.trip.count.i165
  br i1 %cmp.n363, label %._crit_edge.i169, label %vec.epilog.scalar.ph351.preheader

vec.epilog.scalar.ph351.preheader:                ; preds = %vector.memcheck, %iter.check350, %vec.epilog.iter.check352, %vec.epilog.middle.block362
  %indvars.iv.i166.ph = phi i64 [ 0, %iter.check350 ], [ 0, %vector.memcheck ], [ %n.vec339, %vec.epilog.iter.check352 ], [ %n.vec355, %vec.epilog.middle.block362 ] ; 3 uses
  %xtraiter371 = and i64 %wide.trip.count.i165, 3 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %vec.epilog.scalar.ph351.prol.loopexit, label %vec.epilog.scalar.ph351.prol

vec.epilog.scalar.ph351.prol:                     ; preds = %vec.epilog.scalar.ph351.preheader, %vec.epilog.scalar.ph351.prol
  %indvars.iv.i166.prol = phi i64 [ %indvars.iv.next.i167.prol, %vec.epilog.scalar.ph351.prol ], [ %indvars.iv.i166.ph, %vec.epilog.scalar.ph351.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph351.prol ], [ 0, %vec.epilog.scalar.ph351.preheader ]
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i166.prol ; 2 uses
  %i.wk = load float, ptr %i.wj, align 8, !tbaa !65
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i166.prol
  store float %i.wk, ptr %i.wl, align 4, !tbaa !36
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !67
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i166.prol
  store float %i.wn, ptr %i.wo, align 4, !tbaa !36
  %indvars.iv.next.i167.prol = add nuw nsw i64 %indvars.iv.i166.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter371
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph351.prol.loopexit, label %vec.epilog.scalar.ph351.prol, !llvm.loop !68

vec.epilog.scalar.ph351.prol.loopexit:            ; preds = %vec.epilog.scalar.ph351.prol, %vec.epilog.scalar.ph351.preheader
  %indvars.iv.i166.unr = phi i64 [ %indvars.iv.i166.ph, %vec.epilog.scalar.ph351.preheader ], [ %indvars.iv.next.i167.prol, %vec.epilog.scalar.ph351.prol ]
  %i.wp = sub nsw i64 %indvars.iv.i166.ph, %wide.trip.count.i165
  %i.wq = icmp ugt i64 %i.wp, -4
  br i1 %i.wq, label %._crit_edge.i169, label %vec.epilog.scalar.ph351

._crit_edge.i169:                                 ; preds = %vec.epilog.scalar.ph351.prol.loopexit, %vec.epilog.scalar.ph351, %middle.block347, %vec.epilog.middle.block362, %bb.k
  %i.wr = load i32, ptr %i.vp, align 8, !tbaa !69
  %i.ws = call ptr @interpolate_set(i32 noundef %i.vs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.wr) #19 ; 3 uses
  %.not.i = icmp eq ptr %i.ws, null
  br i1 %.not.i, label %dt_draw_curve_calc_value.exit, label %bb.l

vec.epilog.scalar.ph351:                          ; preds = %vec.epilog.scalar.ph351.prol.loopexit, %vec.epilog.scalar.ph351
  %indvars.iv.i166 = phi i64 [ %indvars.iv.next.i167.3, %vec.epilog.scalar.ph351 ], [ %indvars.iv.i166.unr, %vec.epilog.scalar.ph351.prol.loopexit ] ; 7 uses
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.i166 ; 2 uses
  %i.wu = load float, ptr %i.wt, align 8, !tbaa !65
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i166
  store float %i.wu, ptr %i.wv, align 4, !tbaa !36
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !67
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i166
  store float %i.wx, ptr %i.wy, align 4, !tbaa !36
  %indvars.iv.next.i167 = add nuw nsw i64 %indvars.iv.i166, 1 ; 3 uses
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.next.i167 ; 2 uses
  %i.xa = load float, ptr %i.wz, align 8, !tbaa !65
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i167
  store float %i.xa, ptr %i.xb, align 4, !tbaa !36
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !67
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i167
  store float %i.xd, ptr %i.xe, align 4, !tbaa !36
  %indvars.iv.next.i167.1 = add nuw nsw i64 %indvars.iv.i166, 2 ; 3 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.next.i167.1 ; 2 uses
  %i.xg = load float, ptr %i.xf, align 8, !tbaa !65
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i167.1
  store float %i.xg, ptr %i.xh, align 4, !tbaa !36
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !67
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i167.1
  store float %i.xj, ptr %i.xk, align 4, !tbaa !36
  %indvars.iv.next.i167.2 = add nuw nsw i64 %indvars.iv.i166, 3 ; 3 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.vt, i64 %indvars.iv.next.i167.2 ; 2 uses
  %i.xm = load float, ptr %i.xl, align 8, !tbaa !65
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i167.2
  store float %i.xm, ptr %i.xn, align 4, !tbaa !36
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !67
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i167.2
  store float %i.xp, ptr %i.xq, align 4, !tbaa !36
  %indvars.iv.next.i167.3 = add nuw nsw i64 %indvars.iv.i166, 4 ; 2 uses
  %exitcond.not.i168.3 = icmp eq i64 %indvars.iv.next.i167.3, %wide.trip.count.i165
  br i1 %exitcond.not.i168.3, label %._crit_edge.i169, label %vec.epilog.scalar.ph351, !llvm.loop !70

bb.l:                                             ; preds = %._crit_edge.i169
  %i.xr = load i8, ptr %i.vq, align 4, !tbaa !49
  %i.xs = zext i8 %i.xr to i32
  %i.xt = load i32, ptr %i.vp, align 8, !tbaa !69
  %i.xu = call reassoc nsz arcp contract afn float @interpolate_val(i32 noundef %i.xs, ptr noundef nonnull %i.a, float noundef %i.ve, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ws, i32 noundef %i.xt) #19
  call void @free(ptr noundef nonnull %i.ws) #19
  br label %dt_draw_curve_calc_value.exit

dt_draw_curve_calc_value.exit:                    ; preds = %._crit_edge.i169, %bb.l
  %.026.i = phi nsz float [ %i.xu, %bb.l ], [ 0.000000e+00, %._crit_edge.i169 ] ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !71 ; 2 uses
  %i.xx = fcmp reassoc nsz arcp contract afn ogt float %.026.i, %i.xw
  %.026..i = select reassoc nsz arcp contract afn i1 %i.xx, float %.026.i, float %i.xw ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.xz = load float, ptr %i.xy, align 8, !tbaa !72 ; 2 uses
  %i.ya = fcmp reassoc nsz arcp contract afn olt float %.026..i, %i.xz
  %i.yb = select reassoc nsz arcp contract afn i1 %i.ya, float %.026..i, float %i.xz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.yc = fmul reassoc nsz arcp contract afn float %i.yb, 2.000000e+00 ; 4 uses
  br i1 %i.bp, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %dt_draw_curve_calc_value.exit
  %invariant.gep212 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.vh, label %.lr.ph207.us, label %.lr.ph210.split

.lr.ph207.us:                                     ; preds = %.lr.ph210, %._crit_edge208.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %._crit_edge208.us ], [ 0, %.lr.ph210 ] ; 2 uses
  %i.yd = mul i64 %i.n, %indvars.iv251
  %gep213.us = getelementptr [4 x i8], ptr %invariant.gep212, i64 %i.yd
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph207.us, %bb.m
  %indvars.iv248 = phi i64 [ %i.vj, %.lr.ph207.us ], [ %indvars.iv.next249, %bb.m ] ; 2 uses
  %i.ye = mul nsw i64 %indvars.iv248, %i.m
  %gep.us = getelementptr [4 x i8], ptr %gep213.us, i64 %i.ye ; 2 uses
  %i.yf = load float, ptr %gep.us, align 4, !tbaa !36
  %i.yg = fmul reassoc nsz arcp contract afn float %i.yf, %i.yc
  store float %i.yg, ptr %gep.us, align 4, !tbaa !36
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, %i.vk ; 2 uses
  %i.yh = icmp slt i64 %indvars.iv.next249, %i.k
  br i1 %i.yh, label %bb.m, label %._crit_edge208.us

._crit_edge208.us:                                ; preds = %bb.m
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, %i.vk ; 2 uses
  %i.yi = icmp slt i64 %indvars.iv.next252, %i.l
  br i1 %i.yi, label %.lr.ph207.us, label %._crit_edge211

._crit_edge211:                                   ; preds = %.lr.ph210.split, %._crit_edge208.us, %dt_draw_curve_calc_value.exit
  br i1 %i.vi, label %.preheader185.lr.ph, label %._crit_edge225

.preheader185.lr.ph:                              ; preds = %._crit_edge211
  %invariant.gep218 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.bq, label %.preheader185.us, label %.preheader185

.preheader185.us:                                 ; preds = %.preheader185.lr.ph, %._crit_edge216.us
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %._crit_edge216.us ], [ %i.vj, %.preheader185.lr.ph ] ; 2 uses
  %i.yj = mul i64 %i.n, %indvars.iv257
  %gep219.us = getelementptr [4 x i8], ptr %invariant.gep218, i64 %i.yj
  br label %bb.n

bb.n:                                             ; preds = %.preheader185.us, %bb.n
  %indvars.iv254 = phi i64 [ 0, %.preheader185.us ], [ %indvars.iv.next255, %bb.n ] ; 2 uses
  %i.yk = mul nsw i64 %indvars.iv254, %i.m
  %gep.us220 = getelementptr [4 x i8], ptr %gep219.us, i64 %i.yk ; 2 uses
  %i.yl = load float, ptr %gep.us220, align 4, !tbaa !36
  %i.ym = fmul reassoc nsz arcp contract afn float %i.yl, %i.yc
  store float %i.ym, ptr %gep.us220, align 4, !tbaa !36
  %indvars.iv.next255 = add nsw i64 %indvars.iv254, %i.vk ; 2 uses
  %i.yn = icmp slt i64 %indvars.iv.next255, %i.k
  br i1 %i.yn, label %bb.n, label %._crit_edge216.us

._crit_edge216.us:                                ; preds = %bb.n
  %indvars.iv.next258 = add nsw i64 %indvars.iv257, %i.vk ; 2 uses
  %i.yo = icmp slt i64 %indvars.iv.next258, %i.l
  br i1 %i.yo, label %.preheader185.us, label %.preheader184.lr.ph

.lr.ph210.split:                                  ; preds = %.lr.ph210, %.lr.ph210.split
  %.0149209 = phi i32 [ %i.yp, %.lr.ph210.split ], [ 0, %.lr.ph210 ]
  %i.yp = add nsw i32 %.0149209, %i.vf            ; 2 uses
  %i.yq = icmp slt i32 %i.yp, %i.h
  br i1 %i.yq, label %.lr.ph210.split, label %._crit_edge211

.preheader184.lr.ph:                              ; preds = %.preheader185, %._crit_edge216.us
  %i.yr = fmul reassoc nsz arcp contract afn float %i.yc, %i.yc
  %invariant.gep226 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv266
  br i1 %i.vh, label %.preheader184.us, label %.preheader184

.preheader184.us:                                 ; preds = %.preheader184.lr.ph, %._crit_edge223.us
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %._crit_edge223.us ], [ %i.vj, %.preheader184.lr.ph ] ; 2 uses
  %i.ys = mul i64 %i.n, %indvars.iv263
  %gep227.us = getelementptr [4 x i8], ptr %invariant.gep226, i64 %i.ys
  br label %bb.o

bb.o:                                             ; preds = %.preheader184.us, %bb.o
  %indvars.iv260 = phi i64 [ %i.vj, %.preheader184.us ], [ %indvars.iv.next261, %bb.o ] ; 2 uses
  %i.yt = mul nsw i64 %indvars.iv260, %i.m
  %gep.us228 = getelementptr [4 x i8], ptr %gep227.us, i64 %i.yt ; 2 uses
  %i.yu = load float, ptr %gep.us228, align 4, !tbaa !36
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yr, %i.yu
  store float %i.yv, ptr %gep.us228, align 4, !tbaa !36
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, %i.vk ; 2 uses
  %i.yw = icmp slt i64 %indvars.iv.next261, %i.k
  br i1 %i.yw, label %bb.o, label %._crit_edge223.us

._crit_edge223.us:                                ; preds = %bb.o
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, %i.vk ; 2 uses
  %i.yx = icmp slt i64 %indvars.iv.next264, %i.l
  br i1 %i.yx, label %.preheader184.us, label %._crit_edge225

.preheader185:                                    ; preds = %.preheader185.lr.ph, %.preheader185
  %.0147217 = phi i32 [ %i.yy, %.preheader185 ], [ %i.vg, %.preheader185.lr.ph ]
  %i.yy = add nsw i32 %.0147217, %i.vf            ; 2 uses
  %i.yz = icmp slt i32 %i.yy, %i.h
  br i1 %i.yz, label %.preheader185, label %.preheader184.lr.ph

.preheader184:                                    ; preds = %.preheader184.lr.ph, %.preheader184
  %.0145224 = phi i32 [ %i.za, %.preheader184 ], [ %i.vg, %.preheader184.lr.ph ]
  %i.za = add nsw i32 %.0145224, %i.vf            ; 2 uses
  %i.zb = icmp slt i32 %i.za, %i.h
  br i1 %i.zb, label %.preheader184, label %._crit_edge225

._crit_edge225:                                   ; preds = %.preheader184, %._crit_edge223.us, %._crit_edge211
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next267, 3
  br i1 %exitcond269.not, label %bb.j, label %bb.k

.lr.ph235.preheader:                              ; preds = %dt_iop_equalizer_iwtf.exit
  %wide.trip.count277 = zext nneg i32 %i.al to i64
  br label %.lr.ph235

bb.p:                                             ; preds = %.lr.ph233, %dt_iop_equalizer_iwtf.exit
  %indvars.iv271 = phi i64 [ %i.uq, %.lr.ph233 ], [ %indvars.iv.next272, %dt_iop_equalizer_iwtf.exit ] ; 3 uses
  %indvars.iv.next272 = add nsw i64 %indvars.iv271, -1 ; 4 uses
  %i.zc = trunc nuw nsw i64 %indvars.iv.next272 to i32
  %i.zd = shl nuw i32 1, %i.zc                    ; 7 uses
  %i.ze = sdiv i32 %i.zd, 2                       ; 12 uses
  %i.zf = trunc i64 %indvars.iv271 to i32
  %i.zg = add i32 %i.zf, -2                       ; 7 uses
  %i.zh = ashr i32 %i.f, %i.zg
  %i.zi = add nsw i32 %i.zh, 1                    ; 2 uses
  %i.zj = call ptr @dt_alloc_aligned(i64 noundef %i.uj) #19 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zj, i64 64) ]
  br i1 %i.uk, label %.preheader338.lr.ph.i, label %._crit_edge354.i

.preheader338.lr.ph.i:                            ; preds = %bb.p
  %i.zk = sub nsw i32 %i.h, %i.ze                 ; 4 uses
  %i.zl = icmp sgt i32 %i.zk, 0
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next272
  %i.zn = zext nneg i32 %i.zi to i64              ; 2 uses
  %i.zo = sext i32 %i.ze to i64                   ; 7 uses
  %i.zp = mul nsw i64 %i.zo, %i.ul
  %i.zq = icmp slt i32 %i.zd, %i.zk
  %i.zr = icmp slt i32 %i.ze, %i.zk
  %i.zs = sext i32 %i.zk to i64                   ; 3 uses
  %i.zt = sext i32 %i.zd to i64                   ; 3 uses
  br label %.preheader338.i

.preheader338.i:                                  ; preds = %.loopexit333.i, %.preheader338.lr.ph.i
  %indvars.iv395.i = phi i64 [ 0, %.preheader338.lr.ph.i ], [ %indvars.iv.next396.i, %.loopexit333.i ] ; 14 uses
  br i1 %i.zl, label %.lr.ph.i178, label %.preheader337.i

.lr.ph.i178:                                      ; preds = %.preheader338.i
  %i.zu = load ptr, ptr %i.zm, align 8, !tbaa !35
  %i.zv = trunc nuw nsw i64 %indvars.iv395.i to i32
  %i.zw = lshr i32 %i.zv, %i.zg
  %i.zx = zext nneg i32 %i.zw to i64
  %invariant.gep.i179 = getelementptr [4 x i8], ptr %i.zu, i64 %i.zx ; 2 uses
  br label %bb.q

._crit_edge354.i:                                 ; preds = %.loopexit333.i, %bb.p
  call void @free(ptr noundef %i.zj) #19
  %i.zy = call ptr @dt_alloc_aligned(i64 noundef %i.uo) #19 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zy, i64 64) ]
  br i1 %i.up, label %.preheader329.lr.ph.i, label %dt_iop_equalizer_iwtf.exit

.preheader329.lr.ph.i:                            ; preds = %._crit_edge354.i
  %i.zz = sub nsw i32 %i.f, %i.ze                 ; 4 uses
  %i.aaa = icmp sgt i32 %i.zz, 0
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next272
  %i.aac = sext i32 %i.zi to i64
  %i.aad = sext i32 %i.ze to i64                  ; 5 uses
  %i.aae = icmp slt i32 %i.zd, %i.zz
  %i.aaf = icmp slt i32 %i.ze, %i.zz
  %i.aag = sext i32 %i.zz to i64                  ; 3 uses
  %i.aah = sext i32 %i.zd to i64                  ; 3 uses
  br label %.preheader329.i

.preheader337.i:                                  ; preds = %bb.q, %.preheader338.i
  %i.aai = add nsw i64 %indvars.iv395.i, %i.zp
  %.idx321.i = shl i64 %i.aai, 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 %.idx321.i ; 2 uses
  %.idx322.i = shl nuw nsw i64 %indvars.iv395.i, 4
  %i.aak = getelementptr inbounds nuw i8, ptr %3, i64 %.idx322.i ; 3 uses
  %i.aal = load <2 x float>, ptr %i.aaj, align 4, !tbaa !36
  %i.aam = fmul reassoc nsz arcp contract afn <2 x float> %i.aal, splat (float 5.000000e-01)
  %i.aan = load <2 x float>, ptr %i.aak, align 4, !tbaa !36
  %i.aao = fsub reassoc nsz arcp contract afn <2 x float> %i.aan, %i.aam
  store <2 x float> %i.aao, ptr %i.aak, align 4, !tbaa !36
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !36
  %i.aar = fmul reassoc nsz arcp contract afn float %i.aaq, 5.000000e-01
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 2 uses
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !36
  %i.aau = fsub reassoc nsz arcp contract afn float %i.aat, %i.aar
  store float %i.aau, ptr %i.aas, align 4, !tbaa !36
  br i1 %i.zq, label %.preheader331.i, label %._crit_edge.i176

bb.q:                                             ; preds = %bb.q, %.lr.ph.i178
  %indvars.iv.i180 = phi i64 [ 0, %.lr.ph.i178 ], [ %indvars.iv.next.i182, %bb.q ] ; 3 uses
  %i.aav = trunc nsw i64 %indvars.iv.i180 to i32
  %i.aaw = ashr i32 %i.aav, %i.zg
  %i.aax = sext i32 %i.aaw to i64
  %i.aay = mul nsw i64 %i.aax, %i.zn
  %gep.i181 = getelementptr [4 x i8], ptr %invariant.gep.i179, i64 %i.aay
  %i.aaz = load float, ptr %gep.i181, align 4, !tbaa !36
  %indvars.iv.next.i182 = add nsw i64 %indvars.iv.i180, %i.zo ; 3 uses
  %i.aba = trunc nsw i64 %indvars.iv.next.i182 to i32
  %i.abb = ashr i32 %i.aba, %i.zg
  %i.abc = sext i32 %i.abb to i64
  %i.abd = mul nsw i64 %i.abc, %i.zn
  %gep342.i = getelementptr [4 x i8], ptr %invariant.gep.i179, i64 %i.abd
  %i.abe = load float, ptr %gep342.i, align 4, !tbaa !36
  %i.abf = fsub reassoc nsz arcp contract afn float %i.aaz, %i.abe
  %i.abg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.abf)
  %i.abh = fpext reassoc nsz arcp contract afn float %i.abg to double
  %i.abi = fadd reassoc nsz arcp contract afn double %i.abh, 1.000000e-05
  %i.abj = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.abi
  %i.abk = fptrunc reassoc nsz arcp contract afn double %i.abj to float
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %indvars.iv.i180
  store float %i.abk, ptr %i.abl, align 4, !tbaa !36
  %i.abm = icmp slt i64 %indvars.iv.next.i182, %i.zs
  br i1 %i.abm, label %bb.q, label %.preheader337.i

.preheader331.i:                                  ; preds = %.preheader337.i, %.preheader331.i
  %indvars.iv380.i = phi i64 [ %indvars.iv.next381.i, %.preheader331.i ], [ %i.zt, %.preheader337.i ] ; 5 uses
  %i.abn = sub nsw i64 %indvars.iv380.i, %i.zo    ; 2 uses
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %i.abn ; 3 uses
  %i.abp = mul nsw i64 %i.abn, %i.ul
  %i.abq = add nsw i64 %i.abp, %indvars.iv395.i
  %.idx318.i = shl i64 %i.abq, 4
  %i.abr = getelementptr inbounds nuw i8, ptr %3, i64 %.idx318.i ; 3 uses
  %i.abs = getelementptr inbounds [4 x i8], ptr %i.zj, i64 %indvars.iv380.i ; 3 uses
  %i.abt = add nsw i64 %indvars.iv380.i, %i.zo
  %i.abu = mul nsw i64 %i.abt, %i.ul
  %i.abv = add nsw i64 %i.abu, %indvars.iv395.i
  %.idx319.i = shl i64 %i.abv, 4
  %i.abw = getelementptr inbounds nuw i8, ptr %3, i64 %.idx319.i ; 3 uses
  %i.abx = mul nsw i64 %indvars.iv380.i, %i.ul
  %i.aby = add nsw i64 %i.abx, %indvars.iv395.i
  %.idx320.i = shl i64 %i.aby, 4
  %i.abz = getelementptr inbounds nuw i8, ptr %3, i64 %.idx320.i ; 4 uses
  %i.aca = load float, ptr %i.abo, align 4, !tbaa !36 ; 2 uses
  %i.acb = load float, ptr %i.abr, align 4, !tbaa !36
  %i.acc = fmul reassoc nsz arcp contract afn float %i.acb, %i.aca
  %i.acd = load float, ptr %i.abs, align 4, !tbaa !36 ; 2 uses
  %i.ace = load float, ptr %i.abw, align 4, !tbaa !36
  %i.acf = fmul reassoc nsz arcp contract afn float %i.ace, %i.acd
  %i.acg = fadd reassoc nsz arcp contract afn float %i.acf, %i.acc
  %i.ach = fpext reassoc nsz arcp contract afn float %i.acg to double
  %i.aci = fadd reassoc nsz arcp contract afn float %i.acd, %i.aca
  %i.acj = fpext reassoc nsz arcp contract afn float %i.aci to double
  %i.ack = fmul reassoc nsz arcp contract afn double %i.acj, 2.000000e+00
  %i.acl = fdiv reassoc nsz arcp contract afn double %i.ach, %i.ack
  %i.acm = load float, ptr %i.abz, align 4, !tbaa !36
  %i.acn = fpext reassoc nsz arcp contract afn float %i.acm to double
  %i.aco = fsub reassoc nsz arcp contract afn double %i.acn, %i.acl
  %i.acp = fptrunc reassoc nsz arcp contract afn double %i.aco to float
  store float %i.acp, ptr %i.abz, align 4, !tbaa !36
  %i.acq = load float, ptr %i.abo, align 4, !tbaa !36 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abr, i64 4
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !36
  %i.act = fmul reassoc nsz arcp contract afn float %i.acs, %i.acq
  %i.acu = load float, ptr %i.abs, align 4, !tbaa !36 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !36
  %i.acx = fmul reassoc nsz arcp contract afn float %i.acw, %i.acu
  %i.acy = fadd reassoc nsz arcp contract afn float %i.acx, %i.act
  %i.acz = fpext reassoc nsz arcp contract afn float %i.acy to double
  %i.ada = fadd reassoc nsz arcp contract afn float %i.acu, %i.acq
  %i.adb = fpext reassoc nsz arcp contract afn float %i.ada to double
  %i.adc = fmul reassoc nsz arcp contract afn double %i.adb, 2.000000e+00
  %i.add = fdiv reassoc nsz arcp contract afn double %i.acz, %i.adc
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abz, i64 4 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !36
  %i.adh = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.adi = load float, ptr %i.adh, align 4, !tbaa !36
  %i.adj = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.adk = load <2 x float>, ptr %i.ade, align 4, !tbaa !36
  %i.adl = fpext <2 x float> %i.adk to <2 x double> ; 2 uses
  %i.adm = extractelement <2 x double> %i.adl, i64 0
  %i.adn = fsub reassoc nsz arcp contract afn double %i.adm, %i.add
  %i.ado = fptrunc reassoc nsz arcp contract afn double %i.adn to float
  store float %i.ado, ptr %i.ade, align 4, !tbaa !36
  %i.adp = load float, ptr %i.abo, align 4, !tbaa !36 ; 2 uses
  %i.adq = fmul reassoc nsz arcp contract afn float %i.adg, %i.adp
  %i.adr = load float, ptr %i.abs, align 4, !tbaa !36 ; 2 uses
  %i.ads = fmul reassoc nsz arcp contract afn float %i.adi, %i.adr
  %i.adt = fadd reassoc nsz arcp contract afn float %i.ads, %i.adq
  %i.adu = fpext reassoc nsz arcp contract afn float %i.adt to double
  %i.adv = fadd reassoc nsz arcp contract afn float %i.adr, %i.adp
  %i.adw = fpext reassoc nsz arcp contract afn float %i.adv to double
  %i.adx = fmul reassoc nsz arcp contract afn double %i.adw, 2.000000e+00
  %i.ady = fdiv reassoc nsz arcp contract afn double %i.adu, %i.adx
  %i.adz = extractelement <2 x double> %i.adl, i64 1
  %i.aea = fsub reassoc nsz arcp contract afn double %i.adz, %i.ady
end_hunk_0
