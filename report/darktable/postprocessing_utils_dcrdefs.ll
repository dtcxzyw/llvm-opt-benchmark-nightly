Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_utils_dcrdefs?download=true
inline.NumInlined: 72
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw12scale_colorsEv:bb.a
  br label %.thread193

.thread193:                                       ; preds = %.preheader206, %.preheader205, %bb.ay, %bb.ax, %bb.au, %.loopexit210.thread, %.thread194, %bb.bb, %bb.ba, %bb.az, %.thread196
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 153272 ; 2 uses
  %i.oq = load float, ptr %i.op, align 8, !tbaa !81 ; 2 uses
  %i.or = fcmp reassoc nsz arcp contract afn oeq float %i.oq, 0.000000e+00
  br i1 %i.or, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.thread193
  store float 1.000000e+00, ptr %i.op, align 8, !tbaa !81
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread193
  %i.os = phi float [ 1.000000e+00, %bb.bc ], [ %i.oq, %.thread193 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 153280 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 8, !tbaa !81 ; 2 uses
  %i.ov = fcmp reassoc nsz arcp contract afn oeq float %i.ou, 0.000000e+00
  br i1 %i.ov, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !79
  %i.oy = icmp slt i32 %i.ox, 4
  %spec.select477 = select reassoc nsz arcp contract afn i1 %i.oy, float %i.os, float 1.000000e+00 ; 2 uses
  store float %spec.select477, ptr %i.ot, align 8, !tbaa !81
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.oz = phi float [ %spec.select477, %bb.be ], [ %i.ou, %bb.bd ]
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !148
  %i.pc = fcmp reassoc nsz arcp contract afn une float %i.pb, 0.000000e+00
  br i1 %i.pc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.phi.trans.insert377 = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %.pre378 = load float, ptr %.phi.trans.insert377, align 8, !tbaa !81
  %.phi.trans.insert379 = getelementptr inbounds nuw i8, ptr %0, i64 153280
  %.pre380 = load float, ptr %.phi.trans.insert379, align 8, !tbaa !81
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.pd = phi float [ %.pre380, %bb.bg ], [ %i.oz, %bb.bf ] ; 3 uses
  %i.pe = phi float [ %.pre378, %bb.bg ], [ %i.os, %bb.bf ] ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !149 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !95 ; 2 uses
  %i.pj = sub i32 %i.pi, %i.pg                    ; 2 uses
  store i32 %i.pj, ptr %i.ph, align 8, !tbaa !95
  %i.pk = load float, ptr %i.oo, align 4, !tbaa !81 ; 3 uses
  %i.pl = fpext reassoc nsz arcp contract afn float %i.pk to double ; 4 uses
  %i.pm = fcmp reassoc nsz arcp contract afn olt double %i.pl, f0x7FEFFFFFFFFFFFFF
  %spec.select = select nsz i1 %i.pm, double %i.pl, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.pn = fcmp reassoc nsz arcp contract afn ogt double %i.pl, 0.000000e+00
  %.1 = select nsz i1 %i.pn, double %i.pl, double 0.000000e+00 ; 2 uses
  %i.po = fpext reassoc nsz arcp contract afn float %i.pe to double ; 4 uses
  %i.pp = fcmp reassoc nsz arcp contract afn ogt double %spec.select, %i.po
  %spec.select.1 = select nsz i1 %i.pp, double %i.po, double %spec.select ; 2 uses
  %i.pq = fcmp reassoc nsz arcp contract afn olt double %.1, %i.po
  %.1.1 = select nsz i1 %i.pq, double %i.po, double %.1 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !81 ; 3 uses
  %i.pt = fpext reassoc nsz arcp contract afn float %i.ps to double ; 4 uses
  %i.pu = fcmp reassoc nsz arcp contract afn ogt double %spec.select.1, %i.pt
  %spec.select.2 = select nsz i1 %i.pu, double %i.pt, double %spec.select.1 ; 2 uses
  %i.pv = fcmp reassoc nsz arcp contract afn olt double %.1.1, %i.pt
  %.1.2 = select nsz i1 %i.pv, double %i.pt, double %.1.1 ; 2 uses
  %i.pw = fpext reassoc nsz arcp contract afn float %i.pd to double ; 4 uses
  %i.px = fcmp reassoc nsz arcp contract afn ogt double %spec.select.2, %i.pw
  %spec.select.3 = select nsz i1 %i.px, double %i.pw, double %spec.select.2
  %i.py = fcmp reassoc nsz arcp contract afn olt double %.1.2, %i.pw
  %.1.3 = select nsz i1 %i.py, double %i.pw, double %.1.2
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 5384
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !150
  %.not184 = icmp eq i32 %i.qa, 0
  %spec.select191 = select nsz i1 %.not184, double %spec.select.3, double %.1.3 ; 2 uses
  %i.qb = fcmp reassoc nsz arcp contract afn ule double %spec.select191, 1.000000e-05
  %.not185 = icmp eq i32 %i.pi, %i.pg
  %or.cond197 = select i1 %i.qb, i1 true, i1 %.not185
  br i1 %or.cond197, label %.preheader201.preheader, label %.preheader203

.preheader201.preheader:                          ; preds = %bb.bh
  store <2 x float> splat (float 1.000000e+00), ptr %i.b, align 16, !tbaa !81
  %i.qc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float 1.000000e+00, ptr %i.qc, align 8, !tbaa !81
  br label %.loopexit202

.preheader203:                                    ; preds = %bb.bh
  %i.qd = fptrunc reassoc nsz arcp contract afn double %spec.select191 to float
  %i.qe = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.qd ; 2 uses
  %invariant.op = fmul reassoc nnan nsz arcp contract afn float %i.qe, 6.553500e+04 ; 4 uses
  %i.qf = uitofp reassoc nsz arcp contract afn i32 %i.pj to float ; 4 uses
  %i.qg = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pk
  %.reass.reass = fdiv reassoc nsz arcp contract afn float %i.qg, %i.qf
  store float %.reass.reass, ptr %i.b, align 16, !tbaa !81
  %i.qh = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pe
  %.reass.reass.1 = fdiv reassoc nsz arcp contract afn float %i.qh, %i.qf
  %i.qi = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %.reass.reass.1, ptr %i.qi, align 4, !tbaa !81
  %i.qj = fmul reassoc nsz arcp contract afn float %invariant.op, %i.ps
  %.reass.reass.2 = fdiv reassoc nsz arcp contract afn float %i.qj, %i.qf
  %i.qk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %.reass.reass.2, ptr %i.qk, align 8, !tbaa !81
  %i.ql = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.qm = insertelement <4 x float> %i.ql, float %i.pe, i64 1
  %i.qn = insertelement <4 x float> %i.qm, float %i.ps, i64 2
  %i.qo = insertelement <4 x float> %i.qn, float %i.pd, i64 3
  %i.qp = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.qq = shufflevector <4 x float> %i.qp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qr = fmul reassoc nsz arcp contract afn <4 x float> %i.qo, %i.qq
  store <4 x float> %i.qr, ptr %i.oo, align 4, !tbaa !81
  %i.qs = fmul reassoc nsz arcp contract afn float %invariant.op, %i.pd
  %.reass.reass.3 = fdiv reassoc nsz arcp contract afn float %i.qs, %i.qf
  br label %.loopexit202

.loopexit202:                                     ; preds = %.preheader203, %.preheader201.preheader
  %.reass.reass.3.sink = phi float [ %.reass.reass.3, %.preheader203 ], [ 1.000000e+00, %.preheader201.preheader ]
  %i.qt = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.reass.reass.3.sink, ptr %i.qt, align 4, !tbaa !81
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !92 ; 5 uses
  %i.qw = icmp ugt i32 %i.qv, 1000
  br i1 %i.qw, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.loopexit202
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 7 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !80 ; 2 uses
  %i.ra = add i32 %i.qz, 1
  %.mask = and i32 %i.ra, -2
  %i.rb = icmp eq i32 %.mask, 2
  br i1 %i.rb, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !80 ; 3 uses
  %i.re = add i32 %i.rd, 1
  %.mask186 = and i32 %i.re, -2
  %i.rf = icmp eq i32 %.mask186, 2
  br i1 %i.rf, label %.preheader200.preheader, label %bb.bk

.preheader200.preheader:                          ; preds = %bb.bj
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 136696
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !80
  %i.ri = and i32 %i.qv, 3
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.rj ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !80
  %i.rm = add i32 %i.rl, %i.rh
  store i32 %i.rm, ptr %i.rk, align 4, !tbaa !80
  %i.rn = icmp ne i32 %i.rd, 1                    ; 2 uses
  %i.ro = zext i1 %i.rn to i32
  %i.rp = select i1 %i.rn, i64 7, i64 6
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !80
  %i.rs = lshr i32 %i.qv, 2
  %i.rt = and i32 %i.rs, 3
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.ru ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !80
  %i.rx = add i32 %i.rw, %i.rr
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !80
  %.not432 = icmp eq i32 %i.qz, 1
  %i.ry = add i32 %i.rd, 6
  %i.rz = select i1 %.not432, i32 6, i32 %i.ry    ; 2 uses
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !80
  %i.sd = lshr i32 %i.qv, 4
  %i.se = and i32 %i.sd, 3
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.sf ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !80
  %i.si = add i32 %i.sh, %i.sc
  store i32 %i.si, ptr %i.sg, align 4, !tbaa !80
  %i.sj = add i32 %i.rz, %i.ro
  %i.sk = zext i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !80
  %i.sn = lshr i32 %i.qv, 6
  %i.so = and i32 %i.sn, 3
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %i.sp ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !80
  %i.ss = add i32 %i.sr, %i.sm
  store i32 %i.ss, ptr %i.sq, align 4, !tbaa !80
  store i32 0, ptr %i.rc, align 4, !tbaa !80
  store i32 0, ptr %i.qy, align 8, !tbaa !80
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader200.preheader, %bb.bj, %bb.bi, %.loopexit202
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.su = load i16, ptr %i.st, align 4, !tbaa !151
  %i.sv = zext i16 %i.su to i32
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 5 uses
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !143
  %i.sy = zext i16 %i.sx to i32
  %i.sz = mul nuw i32 %i.sy, %i.sv                ; 7 uses
  %i.ta = load ptr, ptr %0, align 8, !tbaa !86
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 136
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b), !call_target !155
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 5272 ; 2 uses
  %i.te = load double, ptr %i.td, align 8, !tbaa !78 ; 2 uses
  %i.tf = fcmp reassoc nsz arcp contract afn une double %i.te, 1.000000e+00
  br i1 %i.tf, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %i.th = load double, ptr %i.tg, align 8, !tbaa !78
  %i.ti = fcmp reassoc nsz arcp contract afn une double %i.th, 1.000000e+00
  br i1 %i.ti, label %bb.bm, label %.loopexit199

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !79
  %i.tl = icmp eq i32 %i.tk, 3
  br i1 %i.tl, label %.preheader198, label %.loopexit199

.preheader198:                                    ; preds = %bb.bm
  %i.tm = shl nuw i32 %i.sz, 1
  %i.tn = zext i32 %i.tm to i64                   ; 2 uses
  %.not272 = icmp eq i32 %i.sz, 0                 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.sz, i32 1) ; 2 uses
  %i.to = fcmp reassoc nsz arcp contract afn oeq double %i.te, 1.000000e+00
  br i1 %i.to, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %.preheader198
  %i.tp = call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.tn) ; 15 uses
  br i1 %.not272, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.bn
  %i.tq = load ptr, ptr %i.i, align 8, !tbaa !93  ; 16 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 9 uses
  %min.iters.check = icmp slt i32 %i.sz, 9
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.tr = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep = getelementptr i8, ptr %i.tp, i64 %i.tr
  %i.ts = shl nuw nsw i64 %wide.trip.count, 3
  %i.tt = getelementptr i8, ptr %i.tq, i64 %i.ts
  %scevgep484 = getelementptr i8, ptr %i.tt, i64 -6
  %bound0 = icmp ult ptr %i.tp, %scevgep484
  %bound1 = icmp ult ptr %i.tq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check483 = icmp slt i32 %i.sz, 65
  br i1 %min.iters.check483, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tu = and i64 %wide.trip.count, 63            ; 2 uses
  %i.tv = icmp eq i64 %i.tu, 0
  %i.tw = select i1 %i.tv, i64 64, i64 %i.tu      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.tw    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %index
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %index
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 128
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %index
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 256
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %index
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 384
  %wide.vec = load <64 x i16>, ptr %i.tx, align 2, !tbaa !94, !alias.scope !156
  %strided.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec486.a = load <64 x i16>, ptr %i.tz, align 2, !tbaa !94, !alias.scope !156
  %strided.vec487.a = shufflevector <64 x i16> %wide.vec486.a, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec488.a = load <64 x i16>, ptr %i.ub, align 2, !tbaa !94, !alias.scope !156
  %strided.vec489.a = shufflevector <64 x i16> %wide.vec488.a, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec490 = load <64 x i16>, ptr %i.ud, align 2, !tbaa !94, !alias.scope !156
  %strided.vec491 = shufflevector <64 x i16> %wide.vec490, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %index ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 32
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 96
  store <16 x i16> %strided.vec, ptr %i.ue, align 2, !tbaa !94, !alias.scope !157, !noalias !156
  store <16 x i16> %strided.vec487.a, ptr %i.uf, align 2, !tbaa !94, !alias.scope !157, !noalias !156
  store <16 x i16> %strided.vec489.a, ptr %i.ug, align 2, !tbaa !94, !alias.scope !157, !noalias !156
  store <16 x i16> %strided.vec491, ptr %i.uh, align 2, !tbaa !94, !alias.scope !157, !noalias !156
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ui = icmp eq i64 %index.next, %n.vec
  br i1 %i.ui, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !126

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %i.tw, 9
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %vector.memcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv336.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec492, %vec.epilog.vector.body ] ; 4 uses
  %i.uj = sub nsw i64 %wide.trip.count, %indvars.iv336.ph
  %xtraiter = and i64 %i.uj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv336.prol = phi i64 [ %indvars.iv.next337.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv336.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv336.prol
  %i.uk = load i16, ptr %gep.prol, align 2, !tbaa !94
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv336.prol
  store i16 %i.uk, ptr %i.ul, align 2, !tbaa !94
  %indvars.iv.next337.prol = add nuw nsw i64 %indvars.iv336.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !127

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv336.unr = phi i64 [ %indvars.iv336.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next337.prol, %vec.epilog.scalar.ph.prol ]
  %i.um = sub nsw i64 %indvars.iv336.ph, %wide.trip.count
  %i.un = icmp ugt i64 %i.um, -8
  br i1 %i.un, label %.preheader, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.uo = and i64 %wide.trip.count, 7             ; 2 uses
  %i.up = icmp eq i64 %i.uo, 0
  %i.uq = select i1 %i.up, i64 8, i64 %i.uo
  %n.vec492 = sub nsw i64 %wide.trip.count, %i.uq ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index493 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next496, %vec.epilog.vector.body ] ; 3 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %index493
  %wide.vec494 = load <32 x i16>, ptr %i.ur, align 2, !tbaa !94, !alias.scope !156
  %strided.vec495 = shufflevector <32 x i16> %wide.vec494, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %index493
  store <8 x i16> %strided.vec495, ptr %i.us, align 2, !tbaa !94, !alias.scope !157, !noalias !156
  %index.next496 = add nuw i64 %index493, 8       ; 2 uses
  %i.ut = icmp eq i64 %index.next496, %n.vec492
  br i1 %i.ut, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !128

.preheader:                                       ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %bb.bn
  %i.uu = load i16, ptr %i.st, align 4, !tbaa !151 ; 3 uses
  %.not273 = icmp eq i16 %i.uu, 0
  br i1 %.not273, label %._crit_edge, label %.lr.ph267

.lr.ph267:                                        ; preds = %.preheader
  %i.uv = zext i16 %i.uu to i32
  %i.uw = load double, ptr %i.td, align 8, !tbaa !78 ; 2 uses
  br label %bb.bo

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv336 = phi i64 [ %indvars.iv.next337.7, %vec.epilog.scalar.ph ], [ %indvars.iv336.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv336
  %i.ux = load i16, ptr %gep, align 2, !tbaa !94
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv336
  store i16 %i.ux, ptr %i.uy, align 2, !tbaa !94
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %gep.1545 = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next337
  %i.uz = load i16, ptr %gep.1545, align 2, !tbaa !94
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv.next337
  store i16 %i.uz, ptr %i.va, align 2, !tbaa !94
  %indvars.iv.next337.1546 = add nuw nsw i64 %indvars.iv336, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next337.1546
  %i.vb = load i16, ptr %gep.2, align 2, !tbaa !94
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv.next337.1546
  store i16 %i.vb, ptr %i.vc, align 2, !tbaa !94
  %indvars.iv.next337.2 = add nuw nsw i64 %indvars.iv336, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next337.2
  %i.vd = load i16, ptr %gep.3, align 2, !tbaa !94
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv.next337.2
  store i16 %i.vd, ptr %i.ve, align 2, !tbaa !94
  %indvars.iv.next337.3 = add nuw nsw i64 %indvars.iv336, 4 ; 2 uses
  %gep.4 = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next337.3
  %i.vf = load i16, ptr %gep.4, align 2, !tbaa !94
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv.next337.3
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !94
  %indvars.iv.next337.4 = add nuw nsw i64 %indvars.iv336, 5 ; 2 uses
  %gep.5 = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next337.4
  %i.vh = load i16, ptr %gep.5, align 2, !tbaa !94
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv.next337.4
  store i16 %i.vh, ptr %i.vi, align 2, !tbaa !94
  %indvars.iv.next337.5 = add nuw nsw i64 %indvars.iv336, 6 ; 2 uses
  %gep.6 = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next337.5
  %i.vj = load i16, ptr %gep.6, align 2, !tbaa !94
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv.next337.5
  store i16 %i.vj, ptr %i.vk, align 2, !tbaa !94
  %indvars.iv.next337.6 = add nuw nsw i64 %indvars.iv336, 7 ; 2 uses
  %gep.7 = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next337.6
  %i.vl = load i16, ptr %gep.7, align 2, !tbaa !94
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %indvars.iv.next337.6
  store i16 %i.vl, ptr %i.vm, align 2, !tbaa !94
  %indvars.iv.next337.7 = add nuw nsw i64 %indvars.iv336, 8 ; 2 uses
  %exitcond340.not.7 = icmp eq i64 %indvars.iv.next337.7, %wide.trip.count
  br i1 %exitcond340.not.7, label %.preheader, label %vec.epilog.scalar.ph, !llvm.loop !129

bb.bo:                                            ; preds = %.lr.ph267, %.loopexit
  %i.vn = phi i16 [ %i.uu, %.lr.ph267 ], [ %i.yb, %.loopexit ] ; 3 uses
  %i.vo = phi i32 [ %i.uv, %.lr.ph267 ], [ %i.yd, %.loopexit ]
  %.2158266 = phi i32 [ 0, %.lr.ph267 ], [ %i.yc, %.loopexit ] ; 3 uses
  %i.vp = uitofp reassoc nsz arcp contract afn nneg i32 %.2158266 to double
  %i.vq = uitofp i16 %i.vn to double
  %i.vr = fmul reassoc nnan nsz arcp contract afn double %i.vq, 5.000000e-01 ; 2 uses
  %i.vs = fsub reassoc nnan nsz arcp contract afn double %i.vp, %i.vr
  %i.vt = fmul reassoc nsz arcp contract afn double %i.uw, %i.vs
  %i.vu = fadd reassoc nsz arcp contract afn double %i.vt, %i.vr
  %i.vv = fptrunc reassoc nsz arcp contract afn double %i.vu to float ; 2 uses
  %i.vw = fptoui float %i.vv to i32               ; 3 uses
  %i.vx = add nsw i32 %i.vo, -2
  %i.vy = icmp ult i32 %i.vx, %i.vw
  br i1 %i.vy, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.vz = uitofp reassoc nsz arcp contract afn i32 %i.vw to float
  %i.wa = fsub reassoc nsz arcp contract afn float %i.vv, %i.vz
  %i.wb = load i16, ptr %i.sw, align 2, !tbaa !143 ; 3 uses
  %.not274 = icmp eq i16 %i.wb, 0
  br i1 %.not274, label %.loopexit, label %.lr.ph265.preheader

.lr.ph265.preheader:                              ; preds = %bb.bp
  %i.wc = zext i16 %i.wb to i32
  br label %.lr.ph265

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.br
  %i.wd = phi i16 [ %i.xx, %bb.br ], [ %i.wb, %.lr.ph265.preheader ] ; 3 uses
  %i.we = phi i32 [ %i.xz, %bb.br ], [ %i.wc, %.lr.ph265.preheader ] ; 3 uses
  %.2155264 = phi i32 [ %i.xy, %bb.br ], [ 0, %.lr.ph265.preheader ] ; 3 uses
  %i.wf = uitofp reassoc nsz arcp contract afn nneg i32 %.2155264 to double
  %i.wg = uitofp i16 %i.wd to double
  %i.wh = fmul reassoc nnan nsz arcp contract afn double %i.wg, 5.000000e-01 ; 2 uses
  %i.wi = fsub reassoc nnan nsz arcp contract afn double %i.wf, %i.wh
  %i.wj = fmul reassoc nsz arcp contract afn double %i.wi, %i.uw
  %i.wk = fadd reassoc nsz arcp contract afn double %i.wj, %i.wh
  %i.wl = fptrunc reassoc nsz arcp contract afn double %i.wk to float ; 2 uses
  %i.wm = fptoui float %i.wl to i32               ; 3 uses
  %i.wn = add nsw i32 %i.we, -2
  %i.wo = icmp ult i32 %i.wn, %i.wm
  br i1 %i.wo, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph265
  %i.wp = uitofp reassoc nsz arcp contract afn i32 %i.wm to float
  %i.wq = fsub reassoc nsz arcp contract afn float %i.wl, %i.wp ; 3 uses
  %i.wr = mul i32 %i.we, %i.vw
  %i.ws = zext i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.tp, i64 %i.ws
  %i.wu = zext i32 %i.wm to i64
  %i.wv = getelementptr inbounds nuw [2 x i8], ptr %i.wt, i64 %i.wu ; 2 uses
  %i.ww = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.wq ; 2 uses
  %i.wx = load <2 x i16>, ptr %i.wv, align 2, !tbaa !94
  %i.wy = uitofp <2 x i16> %i.wx to <2 x float>   ; 2 uses
  %i.wz = extractelement <2 x float> %i.wy, i64 0
  %i.xa = fmul reassoc nsz arcp contract afn float %i.ww, %i.wz
  %i.xb = extractelement <2 x float> %i.wy, i64 1
  %i.xc = fmul reassoc nsz arcp contract afn float %i.wq, %i.xb
  %i.xd = fadd reassoc nsz arcp contract afn float %i.xc, %i.xa ; 2 uses
  %i.xe = zext i16 %i.wd to i64
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.wv, i64 %i.xe
  %i.xg = load <2 x i16>, ptr %i.xf, align 2, !tbaa !94
  %i.xh = uitofp <2 x i16> %i.xg to <2 x float>
  %i.xi = insertelement <2 x float> poison, float %i.ww, i64 0
  %i.xj = insertelement <2 x float> %i.xi, float %i.wq, i64 1
  %i.xk = fmul reassoc nsz arcp contract afn <2 x float> %i.xj, %i.xh ; 2 uses
  %i.xl = extractelement <2 x float> %i.xk, i64 0
  %i.xm = fsub reassoc nsz arcp contract afn float %i.xl, %i.xd
  %i.xn = extractelement <2 x float> %i.xk, i64 1
  %i.xo = fadd reassoc nsz arcp contract afn float %i.xm, %i.xn
  %i.xp = fmul reassoc nsz arcp contract afn float %i.xo, %i.wa
  %i.xq = fadd reassoc nsz arcp contract afn float %i.xp, %i.xd
  %i.xr = fptoui float %i.xq to i16
  %i.xs = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.xt = mul nuw i32 %i.we, %.2158266
  %i.xu = add nuw i32 %i.xt, %.2155264
  %i.xv = zext i32 %i.xu to i64
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %i.xv
  store i16 %i.xr, ptr %i.xw, align 2, !tbaa !94
  %.pre381 = load i16, ptr %i.sw, align 2, !tbaa !143
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph265, %bb.bq
  %i.xx = phi i16 [ %i.wd, %.lr.ph265 ], [ %.pre381, %bb.bq ] ; 2 uses
  %i.xy = add nuw nsw i32 %.2155264, 1            ; 2 uses
  %i.xz = zext i16 %i.xx to i32                   ; 2 uses
  %i.ya = icmp samesign ult i32 %i.xy, %i.xz
  br i1 %i.ya, label %.lr.ph265, label %.loopexit.loopexit, !llvm.loop !130

.loopexit.loopexit:                               ; preds = %bb.br
  %.pre382 = load i16, ptr %i.st, align 4, !tbaa !151
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bp, %bb.bo
  %i.yb = phi i16 [ %.pre382, %.loopexit.loopexit ], [ %i.vn, %bb.bp ], [ %i.vn, %bb.bo ] ; 2 uses
  %i.yc = add nuw nsw i32 %.2158266, 1            ; 2 uses
  %i.yd = zext i16 %i.yb to i32                   ; 2 uses
  %i.ye = icmp samesign ult i32 %i.yc, %i.yd
  br i1 %i.ye, label %bb.bo, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.tp)
  br label %bb.bs

bb.bs:                                            ; preds = %.preheader198, %._crit_edge
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 2 uses
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !78
  %i.yh = fcmp reassoc nsz arcp contract afn oeq double %i.yg, 1.000000e+00
  br i1 %i.yh, label %.loopexit199, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.yi = call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.tn) ; 15 uses
  br i1 %.not272, label %.preheader.1, label %iter.check521

iter.check521:                                    ; preds = %bb.bt
  %i.yj = load ptr, ptr %i.i, align 8, !tbaa !93  ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.yj, i64 4 ; 15 uses
  %wide.trip.count.1 = zext nneg i32 %smax to i64 ; 9 uses
  %min.iters.check501 = icmp slt i32 %i.sz, 9
  br i1 %min.iters.check501, label %vec.epilog.scalar.ph522.preheader, label %vector.memcheck497

vector.memcheck497:                               ; preds = %iter.check521
  %i.yk = shl nuw nsw i64 %wide.trip.count.1, 1
  %scevgep498 = getelementptr i8, ptr %i.yi, i64 %i.yk
  %i.yl = shl nuw nsw i64 %wide.trip.count.1, 3
  %i.ym = getelementptr i8, ptr %i.yj, i64 %i.yl
  %scevgep499 = getelementptr i8, ptr %i.ym, i64 -2
  %bound0500 = icmp ult ptr %i.yi, %scevgep499
  %bound1501 = icmp ult ptr %invariant.gep.1, %scevgep498
  %found.conflict502 = and i1 %bound0500, %bound1501
  br i1 %found.conflict502, label %vec.epilog.scalar.ph522.preheader, label %vector.main.loop.iter.check504

vector.main.loop.iter.check504:                   ; preds = %vector.memcheck497
  %min.iters.check503 = icmp slt i32 %i.sz, 65
  br i1 %min.iters.check503, label %vec.epilog.ph525, label %vector.ph506

vector.ph506:                                     ; preds = %vector.main.loop.iter.check504
  %i.yn = and i64 %wide.trip.count.1, 63          ; 2 uses
  %i.yo = icmp eq i64 %i.yn, 0
  %i.yp = select i1 %i.yo, i64 64, i64 %i.yn      ; 2 uses
  %n.vec507 = sub nsw i64 %wide.trip.count.1, %i.yp ; 3 uses
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph506
  %index509 = phi i64 [ 0, %vector.ph506 ], [ %index.next518, %vector.body508 ] ; 6 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index509
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index509
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 128
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index509
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 256
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index509
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 384
  %wide.vec510.a = load <64 x i16>, ptr %i.yq, align 2, !tbaa !94, !alias.scope !160
  %strided.vec511.a = shufflevector <64 x i16> %wide.vec510.a, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec512.a = load <64 x i16>, ptr %i.ys, align 2, !tbaa !94, !alias.scope !160
  %strided.vec513.a = shufflevector <64 x i16> %wide.vec512.a, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec514.a = load <64 x i16>, ptr %i.yu, align 2, !tbaa !94, !alias.scope !160
  %strided.vec515.a = shufflevector <64 x i16> %wide.vec514.a, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %wide.vec516 = load <64 x i16>, ptr %i.yw, align 2, !tbaa !94, !alias.scope !160
  %strided.vec517 = shufflevector <64 x i16> %wide.vec516, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %index509 ; 4 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 32
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 64
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 96
  store <16 x i16> %strided.vec511.a, ptr %i.yx, align 2, !tbaa !94, !alias.scope !161, !noalias !160
  store <16 x i16> %strided.vec513.a, ptr %i.yy, align 2, !tbaa !94, !alias.scope !161, !noalias !160
  store <16 x i16> %strided.vec515.a, ptr %i.yz, align 2, !tbaa !94, !alias.scope !161, !noalias !160
  store <16 x i16> %strided.vec517, ptr %i.za, align 2, !tbaa !94, !alias.scope !161, !noalias !160
  %index.next518 = add nuw i64 %index509, 64      ; 2 uses
  %i.zb = icmp eq i64 %index.next518, %n.vec507
  br i1 %i.zb, label %vec.epilog.iter.check523, label %vector.body508, !llvm.loop !135

vec.epilog.iter.check523:                         ; preds = %vector.body508
  %min.epilog.iters.check524 = icmp samesign ult i64 %i.yp, 9
  br i1 %min.epilog.iters.check524, label %vec.epilog.scalar.ph522.preheader, label %vec.epilog.ph525, !prof !158

vec.epilog.ph525:                                 ; preds = %vector.main.loop.iter.check504, %vec.epilog.iter.check523
  %vec.epilog.resume.val520 = phi i64 [ %n.vec507, %vec.epilog.iter.check523 ], [ 0, %vector.main.loop.iter.check504 ]
  %i.zc = and i64 %wide.trip.count.1, 7           ; 2 uses
  %i.zd = icmp eq i64 %i.zc, 0
  %i.ze = select i1 %i.zd, i64 8, i64 %i.zc
  %n.vec526 = sub nsw i64 %wide.trip.count.1, %i.ze ; 2 uses
  br label %vec.epilog.vector.body527

vec.epilog.vector.body527:                        ; preds = %vec.epilog.vector.body527, %vec.epilog.ph525
  %index528 = phi i64 [ %vec.epilog.resume.val520, %vec.epilog.ph525 ], [ %index.next531, %vec.epilog.vector.body527 ] ; 3 uses
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index528
  %wide.vec529 = load <32 x i16>, ptr %i.zf, align 2, !tbaa !94, !alias.scope !160
  %strided.vec530 = shufflevector <32 x i16> %wide.vec529, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.zg = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %index528
  store <8 x i16> %strided.vec530, ptr %i.zg, align 2, !tbaa !94, !alias.scope !161, !noalias !160
  %index.next531 = add nuw i64 %index528, 8       ; 2 uses
  %i.zh = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.zh, label %vec.epilog.scalar.ph522.preheader, label %vec.epilog.vector.body527, !llvm.loop !136

vec.epilog.scalar.ph522.preheader:                ; preds = %vec.epilog.vector.body527, %vector.memcheck497, %iter.check521, %vec.epilog.iter.check523
  %indvars.iv336.1.ph = phi i64 [ 0, %iter.check521 ], [ 0, %vector.memcheck497 ], [ %n.vec507, %vec.epilog.iter.check523 ], [ %n.vec526, %vec.epilog.vector.body527 ] ; 4 uses
  %i.zi = sub nsw i64 %wide.trip.count.1, %indvars.iv336.1.ph
  %xtraiter547 = and i64 %i.zi, 7                 ; 2 uses
  %lcmp.mod548.not = icmp eq i64 %xtraiter547, 0
  br i1 %lcmp.mod548.not, label %vec.epilog.scalar.ph522.prol.loopexit, label %vec.epilog.scalar.ph522.prol

vec.epilog.scalar.ph522.prol:                     ; preds = %vec.epilog.scalar.ph522.preheader, %vec.epilog.scalar.ph522.prol
  %indvars.iv336.1.prol = phi i64 [ %indvars.iv.next337.1.prol, %vec.epilog.scalar.ph522.prol ], [ %indvars.iv336.1.ph, %vec.epilog.scalar.ph522.preheader ] ; 3 uses
  %prol.iter549 = phi i64 [ %prol.iter549.next, %vec.epilog.scalar.ph522.prol ], [ 0, %vec.epilog.scalar.ph522.preheader ]
  %gep.1.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv336.1.prol
  %i.zj = load i16, ptr %gep.1.prol, align 2, !tbaa !94
  %i.zk = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv336.1.prol
  store i16 %i.zj, ptr %i.zk, align 2, !tbaa !94
  %indvars.iv.next337.1.prol = add nuw nsw i64 %indvars.iv336.1.prol, 1 ; 2 uses
  %prol.iter549.next = add i64 %prol.iter549, 1   ; 2 uses
  %prol.iter549.cmp.not = icmp eq i64 %prol.iter549.next, %xtraiter547
  br i1 %prol.iter549.cmp.not, label %vec.epilog.scalar.ph522.prol.loopexit, label %vec.epilog.scalar.ph522.prol, !llvm.loop !137

vec.epilog.scalar.ph522.prol.loopexit:            ; preds = %vec.epilog.scalar.ph522.prol, %vec.epilog.scalar.ph522.preheader
  %indvars.iv336.1.unr = phi i64 [ %indvars.iv336.1.ph, %vec.epilog.scalar.ph522.preheader ], [ %indvars.iv.next337.1.prol, %vec.epilog.scalar.ph522.prol ]
  %i.zl = sub nsw i64 %indvars.iv336.1.ph, %wide.trip.count.1
  %i.zm = icmp ugt i64 %i.zl, -8
  br i1 %i.zm, label %.preheader.1, label %vec.epilog.scalar.ph522

vec.epilog.scalar.ph522:                          ; preds = %vec.epilog.scalar.ph522.prol.loopexit, %vec.epilog.scalar.ph522
  %indvars.iv336.1 = phi i64 [ %indvars.iv.next337.1.7, %vec.epilog.scalar.ph522 ], [ %indvars.iv336.1.unr, %vec.epilog.scalar.ph522.prol.loopexit ] ; 10 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv336.1
  %i.zn = load i16, ptr %gep.1, align 2, !tbaa !94
  %i.zo = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv336.1
  store i16 %i.zn, ptr %i.zo, align 2, !tbaa !94
  %indvars.iv.next337.1 = add nuw nsw i64 %indvars.iv336.1, 1 ; 2 uses
  %gep.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next337.1
  %i.zp = load i16, ptr %gep.1.1, align 2, !tbaa !94
  %i.zq = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv.next337.1
  store i16 %i.zp, ptr %i.zq, align 2, !tbaa !94
  %indvars.iv.next337.1.1 = add nuw nsw i64 %indvars.iv336.1, 2 ; 2 uses
  %gep.1.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next337.1.1
  %i.zr = load i16, ptr %gep.1.2, align 2, !tbaa !94
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv.next337.1.1
  store i16 %i.zr, ptr %i.zs, align 2, !tbaa !94
  %indvars.iv.next337.1.2 = add nuw nsw i64 %indvars.iv336.1, 3 ; 2 uses
  %gep.1.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next337.1.2
  %i.zt = load i16, ptr %gep.1.3, align 2, !tbaa !94
  %i.zu = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv.next337.1.2
  store i16 %i.zt, ptr %i.zu, align 2, !tbaa !94
  %indvars.iv.next337.1.3 = add nuw nsw i64 %indvars.iv336.1, 4 ; 2 uses
  %gep.1.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next337.1.3
  %i.zv = load i16, ptr %gep.1.4, align 2, !tbaa !94
  %i.zw = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv.next337.1.3
  store i16 %i.zv, ptr %i.zw, align 2, !tbaa !94
  %indvars.iv.next337.1.4 = add nuw nsw i64 %indvars.iv336.1, 5 ; 2 uses
  %gep.1.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next337.1.4
  %i.zx = load i16, ptr %gep.1.5, align 2, !tbaa !94
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv.next337.1.4
  store i16 %i.zx, ptr %i.zy, align 2, !tbaa !94
  %indvars.iv.next337.1.5 = add nuw nsw i64 %indvars.iv336.1, 6 ; 2 uses
  %gep.1.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next337.1.5
  %i.zz = load i16, ptr %gep.1.6, align 2, !tbaa !94
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv.next337.1.5
  store i16 %i.zz, ptr %i.aaa, align 2, !tbaa !94
  %indvars.iv.next337.1.6 = add nuw nsw i64 %indvars.iv336.1, 7 ; 2 uses
  %gep.1.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next337.1.6
  %i.aab = load i16, ptr %gep.1.7, align 2, !tbaa !94
  %i.aac = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %indvars.iv.next337.1.6
  store i16 %i.aab, ptr %i.aac, align 2, !tbaa !94
  %indvars.iv.next337.1.7 = add nuw nsw i64 %indvars.iv336.1, 8 ; 2 uses
  %exitcond340.1.not.7 = icmp eq i64 %indvars.iv.next337.1.7, %wide.trip.count.1
  br i1 %exitcond340.1.not.7, label %.preheader.1, label %vec.epilog.scalar.ph522, !llvm.loop !138

.preheader.1:                                     ; preds = %vec.epilog.scalar.ph522.prol.loopexit, %vec.epilog.scalar.ph522, %bb.bt
  %i.aad = load i16, ptr %i.st, align 4, !tbaa !151 ; 3 uses
  %.not273.1 = icmp eq i16 %i.aad, 0
  br i1 %.not273.1, label %._crit_edge.1, label %.lr.ph267.1

.lr.ph267.1:                                      ; preds = %.preheader.1
  %i.aae = zext i16 %i.aad to i32
  %i.aaf = load double, ptr %i.yf, align 8, !tbaa !78 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.1, %.lr.ph267.1
  %i.aag = phi i16 [ %i.aad, %.lr.ph267.1 ], [ %i.acv, %.loopexit.1 ] ; 3 uses
  %i.aah = phi i32 [ %i.aae, %.lr.ph267.1 ], [ %i.acx, %.loopexit.1 ]
  %.2158266.1 = phi i32 [ 0, %.lr.ph267.1 ], [ %i.acw, %.loopexit.1 ] ; 3 uses
  %i.aai = uitofp reassoc nsz arcp contract afn nneg i32 %.2158266.1 to double
  %i.aaj = uitofp i16 %i.aag to double
  %i.aak = fmul reassoc nnan nsz arcp contract afn double %i.aaj, 5.000000e-01 ; 2 uses
  %i.aal = fsub reassoc nnan nsz arcp contract afn double %i.aai, %i.aak
  %i.aam = fmul reassoc nsz arcp contract afn double %i.aaf, %i.aal
  %i.aan = fadd reassoc nsz arcp contract afn double %i.aam, %i.aak
  %i.aao = fptrunc reassoc nsz arcp contract afn double %i.aan to float ; 2 uses
  %i.aap = fptoui float %i.aao to i32             ; 3 uses
  %i.aaq = add nsw i32 %i.aah, -2
  %i.aar = icmp ult i32 %i.aaq, %i.aap
  br i1 %i.aar, label %.loopexit.1, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aas = uitofp reassoc nsz arcp contract afn i32 %i.aap to float
  %i.aat = fsub reassoc nsz arcp contract afn float %i.aao, %i.aas
  %i.aau = load i16, ptr %i.sw, align 2, !tbaa !143 ; 3 uses
  %.not274.1 = icmp eq i16 %i.aau, 0
  br i1 %.not274.1, label %.loopexit.1, label %.lr.ph265.preheader.1

.lr.ph265.preheader.1:                            ; preds = %bb.bv
  %i.aav = zext i16 %i.aau to i32
  br label %.lr.ph265.1

.lr.ph265.1:                                      ; preds = %bb.bx, %.lr.ph265.preheader.1
  %i.aaw = phi i16 [ %i.acr, %bb.bx ], [ %i.aau, %.lr.ph265.preheader.1 ] ; 3 uses
  %i.aax = phi i32 [ %i.act, %bb.bx ], [ %i.aav, %.lr.ph265.preheader.1 ] ; 3 uses
  %.2155264.1 = phi i32 [ %i.acs, %bb.bx ], [ 0, %.lr.ph265.preheader.1 ] ; 3 uses
  %i.aay = uitofp reassoc nsz arcp contract afn nneg i32 %.2155264.1 to double
  %i.aaz = uitofp i16 %i.aaw to double
  %i.aba = fmul reassoc nnan nsz arcp contract afn double %i.aaz, 5.000000e-01 ; 2 uses
  %i.abb = fsub reassoc nnan nsz arcp contract afn double %i.aay, %i.aba
  %i.abc = fmul reassoc nsz arcp contract afn double %i.abb, %i.aaf
  %i.abd = fadd reassoc nsz arcp contract afn double %i.abc, %i.aba
  %i.abe = fptrunc reassoc nsz arcp contract afn double %i.abd to float ; 2 uses
  %i.abf = fptoui float %i.abe to i32             ; 3 uses
  %i.abg = add nsw i32 %i.aax, -2
  %i.abh = icmp ult i32 %i.abg, %i.abf
  br i1 %i.abh, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph265.1
  %i.abi = uitofp reassoc nsz arcp contract afn i32 %i.abf to float
  %i.abj = fsub reassoc nsz arcp contract afn float %i.abe, %i.abi ; 3 uses
  %i.abk = mul i32 %i.aax, %i.aap
  %i.abl = zext i32 %i.abk to i64
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.yi, i64 %i.abl
  %i.abn = zext i32 %i.abf to i64
  %i.abo = getelementptr inbounds nuw [2 x i8], ptr %i.abm, i64 %i.abn ; 2 uses
  %i.abp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.abj ; 2 uses
  %i.abq = load <2 x i16>, ptr %i.abo, align 2, !tbaa !94
  %i.abr = uitofp <2 x i16> %i.abq to <2 x float> ; 2 uses
  %i.abs = extractelement <2 x float> %i.abr, i64 0
  %i.abt = fmul reassoc nsz arcp contract afn float %i.abp, %i.abs
  %i.abu = extractelement <2 x float> %i.abr, i64 1
  %i.abv = fmul reassoc nsz arcp contract afn float %i.abj, %i.abu
  %i.abw = fadd reassoc nsz arcp contract afn float %i.abv, %i.abt ; 2 uses
  %i.abx = zext i16 %i.aaw to i64
end_hunk_0
