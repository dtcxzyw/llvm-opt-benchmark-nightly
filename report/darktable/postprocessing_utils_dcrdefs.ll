inline.NumInlined: 72
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw12scale_colorsEv:bb.a
  store <2 x float> %i.om, ptr %i.oi, align 4, !tbaa !87
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 153276 ; 2 uses
  %i.oo = load float, ptr %i.on, align 4, !tbaa !87
  %i.op = fdiv reassoc nsz arcp contract afn float %i.oo, %i.og
  store float %i.op, ptr %i.on, align 4, !tbaa !87
  br label %.thread192

.thread192:                                       ; preds = %.preheader205, %.preheader204, %bb.ay, %bb.ax, %bb.au, %.loopexit209.thread, %.thread193, %bb.bb, %bb.ba, %bb.az, %.thread195
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 153272 ; 2 uses
  %i.os = load float, ptr %i.or, align 8, !tbaa !87 ; 2 uses
  %i.ot = fcmp reassoc nsz arcp contract afn oeq float %i.os, 0.000000e+00
  br i1 %i.ot, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.thread192
  store float 1.000000e+00, ptr %i.or, align 8, !tbaa !87
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread192
  %i.ou = phi float [ 1.000000e+00, %bb.bc ], [ %i.os, %.thread192 ] ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 153280 ; 2 uses
  %i.ow = load float, ptr %i.ov, align 8, !tbaa !87 ; 2 uses
  %i.ox = fcmp reassoc nsz arcp contract afn oeq float %i.ow, 0.000000e+00
  br i1 %i.ox, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !78
  %i.pa = icmp slt i32 %i.oz, 4
  %spec.select477 = select i1 %i.pa, float %i.ou, float 1.000000e+00 ; 2 uses
  store float %spec.select477, ptr %i.ov, align 8, !tbaa !87
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.pb = phi float [ %spec.select477, %bb.be ], [ %i.ow, %bb.bd ]
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !132
  %i.pe = fcmp reassoc nsz arcp contract afn une float %i.pd, 0.000000e+00
  br i1 %i.pe, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.phi.trans.insert376 = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %.pre377 = load float, ptr %.phi.trans.insert376, align 8, !tbaa !87
  %.phi.trans.insert378 = getelementptr inbounds nuw i8, ptr %0, i64 153280
  %.pre379 = load float, ptr %.phi.trans.insert378, align 8, !tbaa !87
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.pf = phi float [ %.pre379, %bb.bg ], [ %i.pb, %bb.bf ] ; 3 uses
  %i.pg = phi float [ %.pre377, %bb.bg ], [ %i.ou, %bb.bf ] ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !133 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !124 ; 2 uses
  %i.pl = sub i32 %i.pk, %i.pi                    ; 2 uses
  store i32 %i.pl, ptr %i.pj, align 8, !tbaa !124
  %i.pm = load float, ptr %i.oq, align 4, !tbaa !87 ; 3 uses
  %i.pn = fpext reassoc nsz arcp contract afn float %i.pm to double ; 4 uses
  %i.po = fcmp reassoc nsz arcp contract afn olt double %i.pn, f0x7FEFFFFFFFFFFFFF
  %.1145 = select nsz i1 %i.po, double %i.pn, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.pp = fcmp reassoc nsz arcp contract afn ogt double %i.pn, 0.000000e+00
  %.1 = select nsz i1 %i.pp, double %i.pn, double 0.000000e+00 ; 2 uses
  %i.pq = fpext reassoc nsz arcp contract afn float %i.pg to double ; 4 uses
  %i.pr = fcmp reassoc nsz arcp contract afn ogt double %.1145, %i.pq
  %.1145.1 = select nsz i1 %i.pr, double %i.pq, double %.1145 ; 2 uses
  %i.ps = fcmp reassoc nsz arcp contract afn olt double %.1, %i.pq
  %.1.1 = select nsz i1 %i.ps, double %i.pq, double %.1 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !87 ; 3 uses
  %i.pv = fpext reassoc nsz arcp contract afn float %i.pu to double ; 4 uses
  %i.pw = fcmp reassoc nsz arcp contract afn ogt double %.1145.1, %i.pv
  %.1145.2 = select nsz i1 %i.pw, double %i.pv, double %.1145.1 ; 2 uses
  %i.px = fcmp reassoc nsz arcp contract afn olt double %.1.1, %i.pv
  %.1.2 = select nsz i1 %i.px, double %i.pv, double %.1.1 ; 2 uses
  %i.py = fpext reassoc nsz arcp contract afn float %i.pf to double ; 4 uses
  %i.pz = fcmp reassoc nsz arcp contract afn ogt double %.1145.2, %i.py
  %.1145.3 = select nsz i1 %i.pz, double %i.py, double %.1145.2
  %i.qa = fcmp reassoc nsz arcp contract afn olt double %.1.2, %i.py
  %.1.3 = select nsz i1 %i.qa, double %i.py, double %.1.2
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 5384
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !134
  %.not184 = icmp eq i32 %i.qc, 0
  %spec.select = select i1 %.not184, double %.1145.3, double %.1.3 ; 2 uses
  %i.qd = fcmp reassoc nsz arcp contract afn ule double %spec.select, 1.000000e-05
  %.not185 = icmp eq i32 %i.pk, %i.pi
  %or.cond196 = select i1 %i.qd, i1 true, i1 %.not185
  br i1 %or.cond196, label %.preheader200.preheader, label %.preheader202

.preheader200.preheader:                          ; preds = %bb.bh
  store <2 x float> splat (float 1.000000e+00), ptr %i.b, align 16, !tbaa !87
  %i.qe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float 1.000000e+00, ptr %i.qe, align 8, !tbaa !87
  br label %.loopexit201

.preheader202:                                    ; preds = %bb.bh
  %i.qf = fptrunc reassoc nsz arcp contract afn double %spec.select to float
  %i.qg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.qf ; 2 uses
  %invariant.op = fmul reassoc nnan nsz arcp contract afn float %i.qg, 6.553500e+04 ; 4 uses
  %i.qh = uitofp reassoc nsz arcp contract afn i32 %i.pl to float ; 4 uses
  %i.qi = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pm
  %.reass.reass = fdiv reassoc nsz arcp contract afn float %i.qi, %i.qh
  store float %.reass.reass, ptr %i.b, align 16, !tbaa !87
  %i.qj = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pg
  %.reass.reass.1 = fdiv reassoc nsz arcp contract afn float %i.qj, %i.qh
  %i.qk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %.reass.reass.1, ptr %i.qk, align 4, !tbaa !87
  %i.ql = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pu
  %.reass.reass.2 = fdiv reassoc nsz arcp contract afn float %i.ql, %i.qh
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %.reass.reass.2, ptr %i.qm, align 8, !tbaa !87
  %i.qn = insertelement <4 x float> poison, float %i.pm, i64 0
  %i.qo = insertelement <4 x float> %i.qn, float %i.pg, i64 1
  %i.qp = insertelement <4 x float> %i.qo, float %i.pu, i64 2
  %i.qq = insertelement <4 x float> %i.qp, float %i.pf, i64 3
  %i.qr = insertelement <4 x float> poison, float %i.qg, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = fmul reassoc nsz arcp contract afn <4 x float> %i.qq, %i.qs
  store <4 x float> %i.qt, ptr %i.oq, align 4, !tbaa !87
  %i.qu = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pf
  %.reass.reass.3 = fdiv reassoc nsz arcp contract afn float %i.qu, %i.qh
  br label %.loopexit201

.loopexit201:                                     ; preds = %.preheader202, %.preheader200.preheader
  %.reass.reass.3.sink = phi float [ %.reass.reass.3, %.preheader202 ], [ 1.000000e+00, %.preheader200.preheader ]
  %i.qv = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.reass.reass.3.sink, ptr %i.qv, align 4, !tbaa !87
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !115 ; 5 uses
  %i.qy = icmp ugt i32 %i.qx, 1000
  br i1 %i.qy, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.loopexit201
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 7 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !84 ; 2 uses
  %i.rc = add i32 %i.rb, 1
  %.mask = and i32 %i.rc, -2
  %i.rd = icmp eq i32 %.mask, 2
  br i1 %i.rd, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !84 ; 3 uses
  %i.rg = add i32 %i.rf, 1
  %.mask186 = and i32 %i.rg, -2
  %i.rh = icmp eq i32 %.mask186, 2
  br i1 %i.rh, label %.preheader199.preheader, label %bb.bk

.preheader199.preheader:                          ; preds = %bb.bj
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 136696
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !84
  %i.rk = and i32 %i.qx, 3
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.rl ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !84
  %i.ro = add i32 %i.rn, %i.rj
  store i32 %i.ro, ptr %i.rm, align 4, !tbaa !84
  %i.rp = icmp ne i32 %i.rf, 1                    ; 2 uses
  %i.rq = zext i1 %i.rp to i32
  %i.rr = select i1 %i.rp, i64 7, i64 6
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.rr
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !84
  %i.ru = lshr i32 %i.qx, 2
  %i.rv = and i32 %i.ru, 3
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.rw ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !84
  %i.rz = add i32 %i.ry, %i.rt
  store i32 %i.rz, ptr %i.rx, align 4, !tbaa !84
  %.not432 = icmp eq i32 %i.rb, 1
  %i.sa = add i32 %i.rf, 6
  %i.sb = select i1 %.not432, i32 6, i32 %i.sa    ; 2 uses
  %i.sc = zext i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.sc
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !84
  %i.sf = lshr i32 %i.qx, 4
  %i.sg = and i32 %i.sf, 3
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.sh ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !84
  %i.sk = add i32 %i.sj, %i.se
  store i32 %i.sk, ptr %i.si, align 4, !tbaa !84
  %i.sl = add i32 %i.sb, %i.rq
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !84
  %i.sp = lshr i32 %i.qx, 6
  %i.sq = and i32 %i.sp, 3
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.sr ; 2 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !84
  %i.su = add i32 %i.st, %i.so
  store i32 %i.su, ptr %i.ss, align 4, !tbaa !84
  store i32 0, ptr %i.re, align 4, !tbaa !84
  store i32 0, ptr %i.ra, align 8, !tbaa !84
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader199.preheader, %bb.bj, %bb.bi, %.loopexit201
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.sw = load i16, ptr %i.sv, align 4, !tbaa !135 ; 3 uses
  %i.sx = zext i16 %i.sw to i32
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 5 uses
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !123 ; 3 uses
  %i.ta = zext i16 %i.sz to i32
  %i.tb = mul nuw i32 %i.ta, %i.sx                ; 8 uses
  %i.tc = load ptr, ptr %0, align 8, !tbaa !97
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 136
  %i.te = load ptr, ptr %i.td, align 8
  call void %i.te(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b), !call_target !136
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 5272 ; 2 uses
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !77 ; 2 uses
  %i.th = fcmp reassoc nsz arcp contract afn une double %i.tg, 1.000000e+00
  br i1 %i.th, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !77
  %i.tk = fcmp reassoc nsz arcp contract afn une double %i.tj, 1.000000e+00
  br i1 %i.tk, label %bb.bm, label %.loopexit198

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !78
  %i.tn = icmp eq i32 %i.tm, 3
  br i1 %i.tn, label %.preheader197, label %.loopexit198

.preheader197:                                    ; preds = %bb.bm
  %i.to = shl nuw i32 %i.tb, 1
  %i.tp = zext i32 %i.to to i64                   ; 2 uses
  %.not271 = icmp eq i32 %i.tb, 0                 ; 2 uses
  %i.tq = fcmp reassoc nsz arcp contract afn oeq double %i.tg, 1.000000e+00
  br i1 %i.tq, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %.preheader197
  %i.tr = call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.tp) ; 15 uses
  br i1 %.not271, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.bn
  %i.ts = load ptr, ptr %i.i, align 8, !tbaa !116 ; 16 uses
  %wide.trip.count = zext i32 %i.tb to i64        ; 7 uses
  %min.iters.check = icmp ult i32 %i.tb, 9
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %1 = zext i16 %i.sz to i64
  %2 = zext i16 %i.sw to i64
  %3 = mul nuw nsw i64 %1, %2                     ; 2 uses
  %i.tt = shl nuw nsw i64 %3, 1
  %scevgep = getelementptr i8, ptr %i.tr, i64 %i.tt
  %i.tu = shl nuw nsw i64 %3, 3
  %i.tv = getelementptr i8, ptr %i.ts, i64 %i.tu
  %scevgep484 = getelementptr i8, ptr %i.tv, i64 -6
  %bound0 = icmp ult ptr %i.tr, %scevgep484
  %bound1 = icmp ult ptr %i.ts, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check485 = icmp ult i32 %i.tb, 65
  br i1 %min.iters.check485, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tw = and i64 %wide.trip.count, 63            ; 2 uses
  %i.tx = icmp eq i64 %i.tw, 0
  %i.ty = select i1 %i.tx, i64 64, i64 %i.tw      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.ty    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %index
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %index
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 128
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %index
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 256
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %index
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 384
  %wide.vec = load <64 x i16>, ptr %i.tz, align 2, !tbaa !117, !alias.scope !140
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec486 = load <64 x i16>, ptr %i.ub, align 2, !tbaa !117, !alias.scope !140
  %strided.vec487 = shufflevector <64 x i16> %wide.vec486, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec488 = load <64 x i16>, ptr %i.ud, align 2, !tbaa !117, !alias.scope !140
  %strided.vec489 = shufflevector <64 x i16> %wide.vec488, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec490 = load <64 x i16>, ptr %i.uf, align 2, !tbaa !117, !alias.scope !140
  %strided.vec491 = shufflevector <64 x i16> %wide.vec490, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %i.ug = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %index ; 4 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 32
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ug, i64 64
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 96
  store <16 x i16> %strided.vec, ptr %i.ug, align 2, !tbaa !117, !alias.scope !143, !noalias !140
  store <16 x i16> %strided.vec487, ptr %i.uh, align 2, !tbaa !117, !alias.scope !143, !noalias !140
  store <16 x i16> %strided.vec489, ptr %i.ui, align 2, !tbaa !117, !alias.scope !143, !noalias !140
  store <16 x i16> %strided.vec491, ptr %i.uj, align 2, !tbaa !117, !alias.scope !143, !noalias !140
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.uk = icmp eq i64 %index.next, %n.vec
  br i1 %i.uk, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !145

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.ty, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !146

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv335.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec492, %vec.epilog.vector.body ] ; 4 uses
  %i.ul = sub nsw i64 %wide.trip.count, %indvars.iv335.ph
  %xtraiter = and i64 %i.ul, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv335.prol = phi i64 [ %indvars.iv.next336.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv335.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv335.prol
  %i.um = load i16, ptr %gep.prol, align 2, !tbaa !117
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv335.prol
  store i16 %i.um, ptr %i.un, align 2, !tbaa !117
  %indvars.iv.next336.prol = add nuw nsw i64 %indvars.iv335.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !147

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv335.unr = phi i64 [ %indvars.iv335.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next336.prol, %vec.epilog.scalar.ph.prol ]
  %i.uo = sub nsw i64 %indvars.iv335.ph, %wide.trip.count
  %i.up = icmp ugt i64 %i.uo, -8
  br i1 %i.up, label %.preheader, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.uq = and i64 %wide.trip.count, 7             ; 2 uses
  %i.ur = icmp eq i64 %i.uq, 0
  %i.us = select i1 %i.ur, i64 8, i64 %i.uq
  %n.vec492 = sub nsw i64 %wide.trip.count, %i.us ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index493 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next496, %vec.epilog.vector.body ] ; 3 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %index493
  %wide.vec494 = load <32 x i16>, ptr %i.ut, align 2, !tbaa !117, !alias.scope !140
  %strided.vec495 = shufflevector <32 x i16> %wide.vec494, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %index493
  store <8 x i16> %strided.vec495, ptr %i.uu, align 2, !tbaa !117, !alias.scope !143, !noalias !140
  %index.next496 = add nuw i64 %index493, 8       ; 2 uses
  %i.uv = icmp eq i64 %index.next496, %n.vec492
  br i1 %i.uv, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !149

.preheader:                                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %bb.bn
  %i.uw = load i16, ptr %i.sv, align 4, !tbaa !135 ; 3 uses
  %.not272 = icmp eq i16 %i.uw, 0
  br i1 %.not272, label %._crit_edge, label %.lr.ph266

.lr.ph266:                                        ; preds = %.preheader
  %i.ux = zext i16 %i.uw to i32
  %i.uy = load double, ptr %i.tf, align 8, !tbaa !77 ; 2 uses
  br label %bb.bo

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv335 = phi i64 [ %indvars.iv.next336.7, %vec.epilog.scalar.ph ], [ %indvars.iv335.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv335
  %i.uz = load i16, ptr %gep, align 2, !tbaa !117
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv335
  store i16 %i.uz, ptr %i.va, align 2, !tbaa !117
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %gep.1545 = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.next336
  %i.vb = load i16, ptr %gep.1545, align 2, !tbaa !117
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv.next336
  store i16 %i.vb, ptr %i.vc, align 2, !tbaa !117
  %indvars.iv.next336.1546 = add nuw nsw i64 %indvars.iv335, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.next336.1546
  %i.vd = load i16, ptr %gep.2, align 2, !tbaa !117
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv.next336.1546
  store i16 %i.vd, ptr %i.ve, align 2, !tbaa !117
  %indvars.iv.next336.2 = add nuw nsw i64 %indvars.iv335, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.next336.2
  %i.vf = load i16, ptr %gep.3, align 2, !tbaa !117
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv.next336.2
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !117
  %indvars.iv.next336.3 = add nuw nsw i64 %indvars.iv335, 4 ; 2 uses
  %gep.4 = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.next336.3
  %i.vh = load i16, ptr %gep.4, align 2, !tbaa !117
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv.next336.3
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !117
  %indvars.iv.next336.4 = add nuw nsw i64 %indvars.iv335, 5 ; 2 uses
  %gep.5 = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.next336.4
  %i.vj = load i16, ptr %gep.5, align 2, !tbaa !117
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv.next336.4
  store i16 %i.vj, ptr %i.vk, align 2, !tbaa !117
  %indvars.iv.next336.5 = add nuw nsw i64 %indvars.iv335, 6 ; 2 uses
  %gep.6 = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.next336.5
  %i.vl = load i16, ptr %gep.6, align 2, !tbaa !117
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv.next336.5
  store i16 %i.vl, ptr %i.vm, align 2, !tbaa !117
  %indvars.iv.next336.6 = add nuw nsw i64 %indvars.iv335, 7 ; 2 uses
  %gep.7 = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv.next336.6
  %i.vn = load i16, ptr %gep.7, align 2, !tbaa !117
  %i.vo = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %indvars.iv.next336.6
  store i16 %i.vn, ptr %i.vo, align 2, !tbaa !117
  %indvars.iv.next336.7 = add nuw nsw i64 %indvars.iv335, 8 ; 2 uses
  %exitcond339.not.7 = icmp eq i64 %indvars.iv.next336.7, %wide.trip.count
  br i1 %exitcond339.not.7, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !150

bb.bo:                                            ; preds = %.lr.ph266, %.loopexit
  %i.vp = phi i16 [ %i.uw, %.lr.ph266 ], [ %i.yd, %.loopexit ] ; 3 uses
  %i.vq = phi i32 [ %i.ux, %.lr.ph266 ], [ %i.yf, %.loopexit ]
  %.2158265 = phi i32 [ 0, %.lr.ph266 ], [ %i.ye, %.loopexit ] ; 3 uses
  %i.vr = uitofp reassoc nsz arcp contract afn nneg i32 %.2158265 to double
  %i.vs = uitofp i16 %i.vp to double
  %i.vt = fmul reassoc nnan nsz arcp contract afn double %i.vs, 5.000000e-01 ; 2 uses
  %i.vu = fsub reassoc nnan nsz arcp contract afn double %i.vr, %i.vt
  %i.vv = fmul reassoc nsz arcp contract afn double %i.uy, %i.vu
  %i.vw = fadd reassoc nsz arcp contract afn double %i.vv, %i.vt
  %i.vx = fptrunc reassoc nsz arcp contract afn double %i.vw to float ; 2 uses
  %i.vy = fptoui float %i.vx to i32               ; 3 uses
  %i.vz = add nsw i32 %i.vq, -2
  %i.wa = icmp ult i32 %i.vz, %i.vy
  br i1 %i.wa, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.wb = uitofp reassoc nsz arcp contract afn i32 %i.vy to float
  %i.wc = fsub reassoc nsz arcp contract afn float %i.vx, %i.wb
  %i.wd = load i16, ptr %i.sy, align 2, !tbaa !123 ; 3 uses
  %.not273 = icmp eq i16 %i.wd, 0
  br i1 %.not273, label %.loopexit, label %.lr.ph264.preheader

.lr.ph264.preheader:                              ; preds = %bb.bp
  %i.we = zext i16 %i.wd to i32
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.br
  %i.wf = phi i16 [ %i.xz, %bb.br ], [ %i.wd, %.lr.ph264.preheader ] ; 3 uses
  %i.wg = phi i32 [ %i.yb, %bb.br ], [ %i.we, %.lr.ph264.preheader ] ; 3 uses
  %.2155263 = phi i32 [ %i.ya, %bb.br ], [ 0, %.lr.ph264.preheader ] ; 3 uses
  %i.wh = uitofp reassoc nsz arcp contract afn nneg i32 %.2155263 to double
  %i.wi = uitofp i16 %i.wf to double
  %i.wj = fmul reassoc nnan nsz arcp contract afn double %i.wi, 5.000000e-01 ; 2 uses
  %i.wk = fsub reassoc nnan nsz arcp contract afn double %i.wh, %i.wj
  %i.wl = fmul reassoc nsz arcp contract afn double %i.wk, %i.uy
  %i.wm = fadd reassoc nsz arcp contract afn double %i.wl, %i.wj
  %i.wn = fptrunc reassoc nsz arcp contract afn double %i.wm to float ; 2 uses
  %i.wo = fptoui float %i.wn to i32               ; 3 uses
  %i.wp = add nsw i32 %i.wg, -2
  %i.wq = icmp ult i32 %i.wp, %i.wo
  br i1 %i.wq, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph264
  %i.wr = uitofp reassoc nsz arcp contract afn i32 %i.wo to float
  %i.ws = fsub reassoc nsz arcp contract afn float %i.wn, %i.wr ; 3 uses
  %i.wt = mul i32 %i.wg, %i.vy
  %i.wu = zext i32 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.tr, i64 %i.wu
  %i.ww = zext i32 %i.wo to i64
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.wv, i64 %i.ww ; 2 uses
  %i.wy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ws ; 2 uses
  %i.wz = load <2 x i16>, ptr %i.wx, align 2, !tbaa !117
  %i.xa = uitofp <2 x i16> %i.wz to <2 x float>   ; 2 uses
  %i.xb = extractelement <2 x float> %i.xa, i64 0
  %i.xc = fmul reassoc nsz arcp contract afn float %i.wy, %i.xb
  %i.xd = extractelement <2 x float> %i.xa, i64 1
  %i.xe = fmul reassoc nsz arcp contract afn float %i.ws, %i.xd
  %i.xf = fadd reassoc nsz arcp contract afn float %i.xe, %i.xc ; 2 uses
  %i.xg = zext i16 %i.wf to i64
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.wx, i64 %i.xg
  %i.xi = load <2 x i16>, ptr %i.xh, align 2, !tbaa !117
  %i.xj = uitofp <2 x i16> %i.xi to <2 x float>
  %i.xk = insertelement <2 x float> poison, float %i.wy, i64 0
  %i.xl = insertelement <2 x float> %i.xk, float %i.ws, i64 1
  %i.xm = fmul reassoc nsz arcp contract afn <2 x float> %i.xl, %i.xj ; 2 uses
  %i.xn = extractelement <2 x float> %i.xm, i64 0
  %i.xo = fsub reassoc nsz arcp contract afn float %i.xn, %i.xf
  %i.xp = extractelement <2 x float> %i.xm, i64 1
  %i.xq = fadd reassoc nsz arcp contract afn float %i.xo, %i.xp
  %i.xr = fmul reassoc nsz arcp contract afn float %i.xq, %i.wc
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xr, %i.xf
  %i.xt = fptoui float %i.xs to i16
  %i.xu = load ptr, ptr %i.i, align 8, !tbaa !116
  %i.xv = mul nuw i32 %i.wg, %.2158265
  %i.xw = add nuw i32 %i.xv, %.2155263
  %i.xx = zext i32 %i.xw to i64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %i.xx
  store i16 %i.xt, ptr %i.xy, align 2, !tbaa !117
  %.pre380 = load i16, ptr %i.sy, align 2, !tbaa !123
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph264, %bb.bq
  %i.xz = phi i16 [ %i.wf, %.lr.ph264 ], [ %.pre380, %bb.bq ] ; 2 uses
  %i.ya = add nuw nsw i32 %.2155263, 1            ; 2 uses
  %i.yb = zext i16 %i.xz to i32                   ; 2 uses
  %i.yc = icmp samesign ult i32 %i.ya, %i.yb
  br i1 %i.yc, label %.lr.ph264, label %.loopexit.loopexit, !llvm.loop !151

.loopexit.loopexit:                               ; preds = %bb.br
  %.pre381 = load i16, ptr %i.sv, align 4, !tbaa !135
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bp, %bb.bo
  %i.yd = phi i16 [ %.pre381, %.loopexit.loopexit ], [ %i.vp, %bb.bp ], [ %i.vp, %bb.bo ] ; 2 uses
  %i.ye = add nuw nsw i32 %.2158265, 1            ; 2 uses
  %i.yf = zext i16 %i.yd to i32                   ; 2 uses
  %i.yg = icmp samesign ult i32 %i.ye, %i.yf
  br i1 %i.yg, label %bb.bo, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.tr)
  br label %bb.bs

bb.bs:                                            ; preds = %.preheader197, %._crit_edge
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 2 uses
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !77
  %i.yj = fcmp reassoc nsz arcp contract afn oeq double %i.yi, 1.000000e+00
  br i1 %i.yj, label %.loopexit198, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.yk = call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.tp) ; 15 uses
  br i1 %.not271, label %.preheader.1, label %iter.check521

iter.check521:                                    ; preds = %bb.bt
  %i.yl = load ptr, ptr %i.i, align 8, !tbaa !116 ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.yl, i64 4 ; 15 uses
  %wide.trip.count.1 = zext i32 %i.tb to i64      ; 7 uses
  %min.iters.check503 = icmp ult i32 %i.tb, 9
  br i1 %min.iters.check503, label %vec.epilog.scalar.ph522.preheader, label %vector.memcheck497

vector.memcheck497:                               ; preds = %iter.check521
  %4 = zext i16 %i.sz to i64
  %5 = zext i16 %i.sw to i64
  %6 = mul nuw nsw i64 %4, %5                     ; 2 uses
  %i.ym = shl nuw nsw i64 %6, 1
  %scevgep498 = getelementptr i8, ptr %i.yk, i64 %i.ym
  %i.yn = shl nuw nsw i64 %6, 3
  %i.yo = getelementptr i8, ptr %i.yl, i64 %i.yn
  %scevgep499 = getelementptr i8, ptr %i.yo, i64 -2
  %bound0500 = icmp ult ptr %i.yk, %scevgep499
  %bound1501 = icmp ult ptr %invariant.gep.1, %scevgep498
  %found.conflict502 = and i1 %bound0500, %bound1501
  br i1 %found.conflict502, label %vec.epilog.scalar.ph522.preheader, label %vector.main.loop.iter.check504

vector.main.loop.iter.check504:                   ; preds = %vector.memcheck497
  %min.iters.check505 = icmp ult i32 %i.tb, 65
  br i1 %min.iters.check505, label %vec.epilog.ph525, label %vector.ph506

vector.ph506:                                     ; preds = %vector.main.loop.iter.check504
  %i.yp = and i64 %wide.trip.count.1, 63          ; 2 uses
  %i.yq = icmp eq i64 %i.yp, 0
  %i.yr = select i1 %i.yq, i64 64, i64 %i.yp      ; 2 uses
  %n.vec507 = sub nsw i64 %wide.trip.count.1, %i.yr ; 3 uses
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph506
  %index509 = phi i64 [ 0, %vector.ph506 ], [ %index.next518, %vector.body508 ] ; 6 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index509
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index509
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 128
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index509
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 256
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index509
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 384
  %wide.vec510 = load <64 x i16>, ptr %i.ys, align 2, !tbaa !117, !alias.scope !153
  %strided.vec511 = shufflevector <64 x i16> %wide.vec510, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec512 = load <64 x i16>, ptr %i.yu, align 2, !tbaa !117, !alias.scope !153
  %strided.vec513 = shufflevector <64 x i16> %wide.vec512, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec514 = load <64 x i16>, ptr %i.yw, align 2, !tbaa !117, !alias.scope !153
  %strided.vec515 = shufflevector <64 x i16> %wide.vec514, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec516 = load <64 x i16>, ptr %i.yy, align 2, !tbaa !117, !alias.scope !153
  %strided.vec517 = shufflevector <64 x i16> %wide.vec516, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %i.yz = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %index509 ; 4 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 32
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 64
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 96
  store <16 x i16> %strided.vec511, ptr %i.yz, align 2, !tbaa !117, !alias.scope !156, !noalias !153
  store <16 x i16> %strided.vec513, ptr %i.za, align 2, !tbaa !117, !alias.scope !156, !noalias !153
  store <16 x i16> %strided.vec515, ptr %i.zb, align 2, !tbaa !117, !alias.scope !156, !noalias !153
  store <16 x i16> %strided.vec517, ptr %i.zc, align 2, !tbaa !117, !alias.scope !156, !noalias !153
  %index.next518 = add nuw i64 %index509, 64      ; 2 uses
  %i.zd = icmp eq i64 %index.next518, %n.vec507
  br i1 %i.zd, label %vec.epilog.iter.check523, label %vector.body508, !llvm.loop !158

vec.epilog.iter.check523:                         ; preds = %vector.body508
  %min.epilog.iters.check524 = icmp samesign ult i64 %i.yr, 9
  br i1 %min.epilog.iters.check524, label %vec.epilog.scalar.ph522.preheader, label %vec.epilog.ph525, !prof !146

vec.epilog.ph525:                                 ; preds = %vector.main.loop.iter.check504, %vec.epilog.iter.check523
  %vec.epilog.resume.val520 = phi i64 [ %n.vec507, %vec.epilog.iter.check523 ], [ 0, %vector.main.loop.iter.check504 ]
  %i.ze = and i64 %wide.trip.count.1, 7           ; 2 uses
  %i.zf = icmp eq i64 %i.ze, 0
  %i.zg = select i1 %i.zf, i64 8, i64 %i.ze
  %n.vec526 = sub nsw i64 %wide.trip.count.1, %i.zg ; 2 uses
  br label %vec.epilog.vector.body527

vec.epilog.vector.body527:                        ; preds = %vec.epilog.vector.body527, %vec.epilog.ph525
  %index528 = phi i64 [ %vec.epilog.resume.val520, %vec.epilog.ph525 ], [ %index.next531, %vec.epilog.vector.body527 ] ; 3 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index528
  %wide.vec529 = load <32 x i16>, ptr %i.zh, align 2, !tbaa !117, !alias.scope !153
  %strided.vec530 = shufflevector <32 x i16> %wide.vec529, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.zi = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %index528
  store <8 x i16> %strided.vec530, ptr %i.zi, align 2, !tbaa !117, !alias.scope !156, !noalias !153
  %index.next531 = add nuw i64 %index528, 8       ; 2 uses
  %i.zj = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.zj, label %vec.epilog.scalar.ph522.preheader, label %vec.epilog.vector.body527, !llvm.loop !159

vec.epilog.scalar.ph522.preheader:                ; preds = %vec.epilog.vector.body527, %vector.memcheck497, %iter.check521, %vec.epilog.iter.check523
  %indvars.iv335.1.ph = phi i64 [ 0, %iter.check521 ], [ 0, %vector.memcheck497 ], [ %n.vec507, %vec.epilog.iter.check523 ], [ %n.vec526, %vec.epilog.vector.body527 ] ; 4 uses
  %i.zk = sub nsw i64 %wide.trip.count.1, %indvars.iv335.1.ph
  %xtraiter547 = and i64 %i.zk, 7                 ; 2 uses
  %lcmp.mod548.not = icmp eq i64 %xtraiter547, 0
  br i1 %lcmp.mod548.not, label %vec.epilog.scalar.ph522.prol.loopexit, label %vec.epilog.scalar.ph522.prol

vec.epilog.scalar.ph522.prol:                     ; preds = %vec.epilog.scalar.ph522.preheader, %vec.epilog.scalar.ph522.prol
  %indvars.iv335.1.prol = phi i64 [ %indvars.iv.next336.1.prol, %vec.epilog.scalar.ph522.prol ], [ %indvars.iv335.1.ph, %vec.epilog.scalar.ph522.preheader ] ; 3 uses
  %prol.iter549 = phi i64 [ %prol.iter549.next, %vec.epilog.scalar.ph522.prol ], [ 0, %vec.epilog.scalar.ph522.preheader ]
  %gep.1.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv335.1.prol
  %i.zl = load i16, ptr %gep.1.prol, align 2, !tbaa !117
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv335.1.prol
  store i16 %i.zl, ptr %i.zm, align 2, !tbaa !117
  %indvars.iv.next336.1.prol = add nuw nsw i64 %indvars.iv335.1.prol, 1 ; 2 uses
  %prol.iter549.next = add i64 %prol.iter549, 1   ; 2 uses
  %prol.iter549.cmp.not = icmp eq i64 %prol.iter549.next, %xtraiter547
  br i1 %prol.iter549.cmp.not, label %vec.epilog.scalar.ph522.prol.loopexit, label %vec.epilog.scalar.ph522.prol, !llvm.loop !160

vec.epilog.scalar.ph522.prol.loopexit:            ; preds = %vec.epilog.scalar.ph522.prol, %vec.epilog.scalar.ph522.preheader
  %indvars.iv335.1.unr = phi i64 [ %indvars.iv335.1.ph, %vec.epilog.scalar.ph522.preheader ], [ %indvars.iv.next336.1.prol, %vec.epilog.scalar.ph522.prol ]
  %i.zn = sub nsw i64 %indvars.iv335.1.ph, %wide.trip.count.1
  %i.zo = icmp ugt i64 %i.zn, -8
  br i1 %i.zo, label %.preheader.1, label %vec.epilog.scalar.ph522

vec.epilog.scalar.ph522:                          ; preds = %vec.epilog.scalar.ph522.prol.loopexit, %vec.epilog.scalar.ph522
  %indvars.iv335.1 = phi i64 [ %indvars.iv.next336.1.7, %vec.epilog.scalar.ph522 ], [ %indvars.iv335.1.unr, %vec.epilog.scalar.ph522.prol.loopexit ] ; 10 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv335.1
  %i.zp = load i16, ptr %gep.1, align 2, !tbaa !117
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv335.1
  store i16 %i.zp, ptr %i.zq, align 2, !tbaa !117
  %indvars.iv.next336.1 = add nuw nsw i64 %indvars.iv335.1, 1 ; 2 uses
  %gep.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1
  %i.zr = load i16, ptr %gep.1.1, align 2, !tbaa !117
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv.next336.1
  store i16 %i.zr, ptr %i.zs, align 2, !tbaa !117
  %indvars.iv.next336.1.1 = add nuw nsw i64 %indvars.iv335.1, 2 ; 2 uses
  %gep.1.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1.1
  %i.zt = load i16, ptr %gep.1.2, align 2, !tbaa !117
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv.next336.1.1
  store i16 %i.zt, ptr %i.zu, align 2, !tbaa !117
  %indvars.iv.next336.1.2 = add nuw nsw i64 %indvars.iv335.1, 3 ; 2 uses
  %gep.1.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1.2
  %i.zv = load i16, ptr %gep.1.3, align 2, !tbaa !117
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv.next336.1.2
  store i16 %i.zv, ptr %i.zw, align 2, !tbaa !117
  %indvars.iv.next336.1.3 = add nuw nsw i64 %indvars.iv335.1, 4 ; 2 uses
  %gep.1.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1.3
  %i.zx = load i16, ptr %gep.1.4, align 2, !tbaa !117
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv.next336.1.3
  store i16 %i.zx, ptr %i.zy, align 2, !tbaa !117
  %indvars.iv.next336.1.4 = add nuw nsw i64 %indvars.iv335.1, 5 ; 2 uses
  %gep.1.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1.4
  %i.zz = load i16, ptr %gep.1.5, align 2, !tbaa !117
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv.next336.1.4
  store i16 %i.zz, ptr %i.aaa, align 2, !tbaa !117
  %indvars.iv.next336.1.5 = add nuw nsw i64 %indvars.iv335.1, 6 ; 2 uses
  %gep.1.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1.5
  %i.aab = load i16, ptr %gep.1.6, align 2, !tbaa !117
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv.next336.1.5
  store i16 %i.aab, ptr %i.aac, align 2, !tbaa !117
  %indvars.iv.next336.1.6 = add nuw nsw i64 %indvars.iv335.1, 7 ; 2 uses
  %gep.1.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1.6
  %i.aad = load i16, ptr %gep.1.7, align 2, !tbaa !117
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %indvars.iv.next336.1.6
  store i16 %i.aad, ptr %i.aae, align 2, !tbaa !117
  %indvars.iv.next336.1.7 = add nuw nsw i64 %indvars.iv335.1, 8 ; 2 uses
  %exitcond339.1.not.7 = icmp eq i64 %indvars.iv.next336.1.7, %wide.trip.count.1
  br i1 %exitcond339.1.not.7, label %.preheader.1, label %vec.epilog.scalar.ph522, !llvm.loop !161

.preheader.1:                                     ; preds = %vec.epilog.scalar.ph522.prol.loopexit, %vec.epilog.scalar.ph522, %bb.bt
  %i.aaf = load i16, ptr %i.sv, align 4, !tbaa !135 ; 3 uses
  %.not272.1 = icmp eq i16 %i.aaf, 0
  br i1 %.not272.1, label %._crit_edge.1, label %.lr.ph266.1

.lr.ph266.1:                                      ; preds = %.preheader.1
  %i.aag = zext i16 %i.aaf to i32
  %i.aah = load double, ptr %i.yh, align 8, !tbaa !77 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.1, %.lr.ph266.1
  %i.aai = phi i16 [ %i.aaf, %.lr.ph266.1 ], [ %i.acx, %.loopexit.1 ] ; 3 uses
  %i.aaj = phi i32 [ %i.aag, %.lr.ph266.1 ], [ %i.acz, %.loopexit.1 ]
  %.2158265.1 = phi i32 [ 0, %.lr.ph266.1 ], [ %i.acy, %.loopexit.1 ] ; 3 uses
  %i.aak = uitofp reassoc nsz arcp contract afn nneg i32 %.2158265.1 to double
  %i.aal = uitofp i16 %i.aai to double
  %i.aam = fmul reassoc nnan nsz arcp contract afn double %i.aal, 5.000000e-01 ; 2 uses
  %i.aan = fsub reassoc nnan nsz arcp contract afn double %i.aak, %i.aam
  %i.aao = fmul reassoc nsz arcp contract afn double %i.aah, %i.aan
  %i.aap = fadd reassoc nsz arcp contract afn double %i.aao, %i.aam
  %i.aaq = fptrunc reassoc nsz arcp contract afn double %i.aap to float ; 2 uses
  %i.aar = fptoui float %i.aaq to i32             ; 3 uses
  %i.aas = add nsw i32 %i.aaj, -2
  %i.aat = icmp ult i32 %i.aas, %i.aar
  br i1 %i.aat, label %.loopexit.1, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aau = uitofp reassoc nsz arcp contract afn i32 %i.aar to float
  %i.aav = fsub reassoc nsz arcp contract afn float %i.aaq, %i.aau
  %i.aaw = load i16, ptr %i.sy, align 2, !tbaa !123 ; 3 uses
  %.not273.1 = icmp eq i16 %i.aaw, 0
  br i1 %.not273.1, label %.loopexit.1, label %.lr.ph264.preheader.1

.lr.ph264.preheader.1:                            ; preds = %bb.bv
  %i.aax = zext i16 %i.aaw to i32
  br label %.lr.ph264.1

.lr.ph264.1:                                      ; preds = %bb.bx, %.lr.ph264.preheader.1
  %i.aay = phi i16 [ %i.act, %bb.bx ], [ %i.aaw, %.lr.ph264.preheader.1 ] ; 3 uses
  %i.aaz = phi i32 [ %i.acv, %bb.bx ], [ %i.aax, %.lr.ph264.preheader.1 ] ; 3 uses
  %.2155263.1 = phi i32 [ %i.acu, %bb.bx ], [ 0, %.lr.ph264.preheader.1 ] ; 3 uses
  %i.aba = uitofp reassoc nsz arcp contract afn nneg i32 %.2155263.1 to double
  %i.abb = uitofp i16 %i.aay to double
  %i.abc = fmul reassoc nnan nsz arcp contract afn double %i.abb, 5.000000e-01 ; 2 uses
  %i.abd = fsub reassoc nnan nsz arcp contract afn double %i.aba, %i.abc
  %i.abe = fmul reassoc nsz arcp contract afn double %i.abd, %i.aah
  %i.abf = fadd reassoc nsz arcp contract afn double %i.abe, %i.abc
  %i.abg = fptrunc reassoc nsz arcp contract afn double %i.abf to float ; 2 uses
  %i.abh = fptoui float %i.abg to i32             ; 3 uses
  %i.abi = add nsw i32 %i.aaz, -2
  %i.abj = icmp ult i32 %i.abi, %i.abh
  br i1 %i.abj, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph264.1
  %i.abk = uitofp reassoc nsz arcp contract afn i32 %i.abh to float
  %i.abl = fsub reassoc nsz arcp contract afn float %i.abg, %i.abk ; 3 uses
  %i.abm = mul i32 %i.aaz, %i.aar
  %i.abn = zext i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %i.abn
  %i.abp = zext i32 %i.abh to i64
end_hunk_0
