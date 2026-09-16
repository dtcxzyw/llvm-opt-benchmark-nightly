Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_utils_dcrdefs?download=true
inline.NumInlined: 166
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6LibRaw12scale_colorsEv:bb.a
  %i.on = fdiv float %i.om, %i.oe
  store float %i.on, ptr %i.ol, align 4, !tbaa !86
  br label %.thread192

.thread192:                                       ; preds = %.preheader205, %.preheader204, %bb.ay, %bb.ax, %bb.au, %.loopexit209.thread, %.thread193, %bb.bb, %bb.ba, %bb.az, %.thread195
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 153272 ; 2 uses
  %i.oq = load float, ptr %i.op, align 8, !tbaa !86 ; 2 uses
  %i.or = fcmp oeq float %i.oq, 0.000000e+00
  br i1 %i.or, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.thread192
  store float 1.000000e+00, ptr %i.op, align 8, !tbaa !86
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.thread192
  %i.os = phi float [ 1.000000e+00, %bb.bc ], [ %i.oq, %.thread192 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 153280 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 8, !tbaa !86 ; 2 uses
  %i.ov = fcmp oeq float %i.ou, 0.000000e+00
  br i1 %i.ov, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !75
  %i.oy = icmp slt i32 %i.ox, 4
  %i.oz = select i1 %i.oy, float %i.os, float 1.000000e+00 ; 2 uses
  store float %i.oz, ptr %i.ot, align 8, !tbaa !86
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.pa = phi float [ %i.oz, %bb.be ], [ %i.ou, %bb.bd ]
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !138
  %i.pd = fcmp une float %i.pc, 0.000000e+00
  br i1 %i.pd, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.phi.trans.insert376 = getelementptr inbounds nuw i8, ptr %0, i64 153272
  %.pre377 = load float, ptr %.phi.trans.insert376, align 8, !tbaa !86
  %.phi.trans.insert378 = getelementptr inbounds nuw i8, ptr %0, i64 153280
  %.pre379 = load float, ptr %.phi.trans.insert378, align 8, !tbaa !86
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.pe = phi float [ %.pre379, %bb.bg ], [ %i.pa, %bb.bf ] ; 2 uses
  %i.pf = phi float [ %.pre377, %bb.bg ], [ %i.os, %bb.bf ] ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.ph = load i32, ptr %i.pg, align 8, !tbaa !139 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !94 ; 2 uses
  %i.pk = sub i32 %i.pj, %i.ph                    ; 2 uses
  store i32 %i.pk, ptr %i.pi, align 8, !tbaa !94
  %i.pl = load float, ptr %i.oo, align 4, !tbaa !86 ; 3 uses
  %i.pm = fpext float %i.pl to double             ; 3 uses
  %i.pn = fcmp olt double %i.pm, f0x7FEFFFFFFFFFFFFF
  %.1145 = select i1 %i.pn, double %i.pm, double f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.po = fcmp ogt float %i.pl, 0.000000e+00
  %.1 = select i1 %i.po, double %i.pm, double 0.000000e+00 ; 2 uses
  %i.pp = fpext float %i.pf to double             ; 4 uses
  %i.pq = fcmp ogt double %.1145, %i.pp
  %.1145.1 = select i1 %i.pq, double %i.pp, double %.1145 ; 2 uses
  %i.pr = fcmp olt double %.1, %i.pp
  %.1.1 = select i1 %i.pr, double %i.pp, double %.1 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 153276
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !86 ; 2 uses
  %i.pu = fpext float %i.pt to double             ; 4 uses
  %i.pv = fcmp ogt double %.1145.1, %i.pu
  %.1145.2 = select i1 %i.pv, double %i.pu, double %.1145.1 ; 2 uses
  %i.pw = fcmp olt double %.1.1, %i.pu
  %.1.2 = select i1 %i.pw, double %i.pu, double %.1.1 ; 2 uses
  %i.px = fpext float %i.pe to double             ; 4 uses
  %i.py = fcmp ogt double %.1145.2, %i.px
  %.1145.3 = select i1 %i.py, double %i.px, double %.1145.2
  %i.pz = fcmp olt double %.1.2, %i.px
  %.1.3 = select i1 %i.pz, double %i.px, double %.1.2
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 5384
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !140
  %.not184 = icmp eq i32 %i.qb, 0
  %.2 = select i1 %.not184, double %.1145.3, double %.1.3 ; 2 uses
  %i.qc = fcmp ule double %.2, 1.000000e-05
  %.not185 = icmp eq i32 %i.pj, %i.ph
  %or.cond196 = select i1 %i.qc, i1 true, i1 %.not185
  br i1 %or.cond196, label %.preheader200.preheader, label %.preheader202

.preheader200.preheader:                          ; preds = %bb.bh
  store <2 x float> splat (float 1.000000e+00), ptr %i.b, align 16, !tbaa !86
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float 1.000000e+00, ptr %i.qd, align 8, !tbaa !86
  br label %.loopexit201

.preheader202:                                    ; preds = %bb.bh
  %i.qe = fptrunc double %.2 to float
  %i.qf = uitofp i32 %i.pk to float
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.qh = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.qi = insertelement <4 x float> %i.qh, float %i.pf, i64 1
  %i.qj = insertelement <4 x float> %i.qi, float %i.pt, i64 2
  %i.qk = insertelement <4 x float> %i.qj, float %i.pe, i64 3
  %i.ql = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qn = fdiv <4 x float> %i.qk, %i.qm           ; 3 uses
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.qp = fmul <2 x float> %i.qo, splat (float 6.553500e+04)
  %i.qq = insertelement <2 x float> poison, float %i.qf, i64 0
  %i.qr = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qs = fdiv <2 x float> %i.qp, %i.qr
  store <2 x float> %i.qs, ptr %i.b, align 16, !tbaa !86
  store <4 x float> %i.qn, ptr %i.oo, align 4, !tbaa !86
  %i.qt = shufflevector <4 x float> %i.qn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.qu = fmul <2 x float> %i.qt, splat (float 6.553500e+04)
  %i.qv = fdiv <2 x float> %i.qu, %i.qr           ; 2 uses
  %i.qw = extractelement <2 x float> %i.qv, i64 0
  store float %i.qw, ptr %i.qg, align 8, !tbaa !86
  %i.qx = extractelement <2 x float> %i.qv, i64 1
  br label %.loopexit201

.loopexit201:                                     ; preds = %.preheader202, %.preheader200.preheader
  %.sink = phi float [ %i.qx, %.preheader202 ], [ 1.000000e+00, %.preheader200.preheader ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.sink, ptr %i.qy, align 4, !tbaa !86
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !91 ; 5 uses
  %i.rb = icmp ugt i32 %i.ra, 1000
  br i1 %i.rb, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.loopexit201
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 7 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 136688 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !81 ; 2 uses
  %i.rf = add i32 %i.re, 1
  %.mask = and i32 %i.rf, -2
  %i.rg = icmp eq i32 %.mask, 2
  br i1 %i.rg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 136692 ; 2 uses
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !81 ; 3 uses
  %i.rj = add i32 %i.ri, 1
  %.mask186 = and i32 %i.rj, -2
  %i.rk = icmp eq i32 %.mask186, 2
  br i1 %i.rk, label %.preheader199.preheader, label %bb.bk

.preheader199.preheader:                          ; preds = %bb.bj
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 136696
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !81
  %i.rn = and i32 %i.ra, 3
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !81
  %i.rr = add i32 %i.rq, %i.rm
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !81
  %i.rs = icmp ne i32 %i.ri, 1                    ; 2 uses
  %i.rt = zext i1 %i.rs to i32
  %i.ru = select i1 %i.rs, i64 7, i64 6
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !81
  %i.rx = lshr i32 %i.ra, 2
  %i.ry = and i32 %i.rx, 3
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.rz ; 2 uses
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !81
  %i.sc = add i32 %i.sb, %i.rw
  store i32 %i.sc, ptr %i.sa, align 4, !tbaa !81
  %.not431 = icmp eq i32 %i.re, 1
  %i.sd = add i32 %i.ri, 6
  %i.se = select i1 %.not431, i32 6, i32 %i.sd    ; 2 uses
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !81
  %i.si = lshr i32 %i.ra, 4
  %i.sj = and i32 %i.si, 3
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.sk ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !81
  %i.sn = add i32 %i.sm, %i.sh
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !81
  %i.so = add i32 %i.se, %i.rt
  %i.sp = zext i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !81
  %i.ss = lshr i32 %i.ra, 6
  %i.st = and i32 %i.ss, 3
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %i.su ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !81
  %i.sx = add i32 %i.sw, %i.sr
  store i32 %i.sx, ptr %i.sv, align 4, !tbaa !81
  store i32 0, ptr %i.rh, align 4, !tbaa !81
  store i32 0, ptr %i.rd, align 8, !tbaa !81
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader199.preheader, %bb.bj, %bb.bi, %.loopexit201
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.sz = load i16, ptr %i.sy, align 4, !tbaa !141
  %i.ta = zext i16 %i.sz to i32
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 5 uses
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !133
  %i.td = zext i16 %i.tc to i32
  %i.te = mul nuw i32 %i.td, %i.ta                ; 6 uses
  %i.tf = load ptr, ptr %0, align 8, !tbaa !88
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 136
  %i.th = load ptr, ptr %i.tg, align 8
  call void %i.th(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b)
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 5272 ; 2 uses
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !74 ; 2 uses
  %i.tk = fcmp une double %i.tj, 1.000000e+00
  br i1 %i.tk, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 5288
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !74
  %i.tn = fcmp une double %i.tm, 1.000000e+00
  br i1 %i.tn, label %bb.bm, label %.loopexit198

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !75
  %i.tq = icmp eq i32 %i.tp, 3
  br i1 %i.tq, label %.preheader197, label %.loopexit198

.preheader197:                                    ; preds = %bb.bm
  %i.tr = shl nuw i32 %i.te, 1
  %i.ts = zext i32 %i.tr to i64                   ; 2 uses
  %.not271 = icmp eq i32 %i.te, 0                 ; 2 uses
  %i.tt = fcmp oeq double %i.tj, 1.000000e+00
  br i1 %i.tt, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %.preheader197
  %i.tu = call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ts) ; 10 uses
  br i1 %.not271, label %.preheader, label %.lr.ph262

.lr.ph262:                                        ; preds = %bb.bn
  %i.tv = load ptr, ptr %i.i, align 8, !tbaa !92  ; 15 uses
  %wide.trip.count = zext i32 %i.te to i64        ; 7 uses
  %min.iters.check = icmp ult i32 %i.te, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph262
  %indvars.iv335.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph262 ], [ %n.vec, %vector.body ] ; 4 uses
  %i.tw = sub nsw i64 %wide.trip.count, %indvars.iv335.ph
  %xtraiter = and i64 %i.tw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv335.prol = phi i64 [ %indvars.iv.next336.prol, %scalar.ph.prol ], [ %indvars.iv335.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv335.prol
  %i.tx = load i16, ptr %gep.prol, align 2, !tbaa !93
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %indvars.iv335.prol
  store i16 %i.tx, ptr %i.ty, align 2, !tbaa !93
  %indvars.iv.next336.prol = add nuw nsw i64 %indvars.iv335.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !115

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv335.unr = phi i64 [ %indvars.iv335.ph, %scalar.ph.preheader ], [ %indvars.iv.next336.prol, %scalar.ph.prol ]
  %i.tz = sub nsw i64 %indvars.iv335.ph, %wide.trip.count
  %i.ua = icmp ugt i64 %i.tz, -4
  br i1 %i.ua, label %.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph262
  %i.ub = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep = getelementptr i8, ptr %i.tu, i64 %i.ub
  %i.uc = shl nuw nsw i64 %wide.trip.count, 3
  %i.ud = getelementptr i8, ptr %i.tv, i64 %i.uc
  %scevgep483.a = getelementptr i8, ptr %i.ud, i64 -6
  %bound0 = icmp ult ptr %i.tu, %scevgep483.a
  %bound1 = icmp ult ptr %i.tv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ue = and i64 %wide.trip.count, 7             ; 2 uses
  %i.uf = icmp eq i64 %i.ue, 0
  %i.ug = select i1 %i.uf, i64 8, i64 %i.ue
  %n.vec = sub nsw i64 %wide.trip.count, %i.ug    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 32
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 40
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 48
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %index
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 56
  %i.uw = load i16, ptr %i.uh, align 2, !tbaa !93, !alias.scope !142
  %i.ux = load i16, ptr %i.uj, align 2, !tbaa !93, !alias.scope !142
  %i.uy = load i16, ptr %i.ul, align 2, !tbaa !93, !alias.scope !142
  %i.uz = load i16, ptr %i.un, align 2, !tbaa !93, !alias.scope !142
  %i.va = load i16, ptr %i.up, align 2, !tbaa !93, !alias.scope !142
  %i.vb = load i16, ptr %i.ur, align 2, !tbaa !93, !alias.scope !142
  %i.vc = load i16, ptr %i.ut, align 2, !tbaa !93, !alias.scope !142
  %i.vd = load i16, ptr %i.uv, align 2, !tbaa !93, !alias.scope !142
  %i.ve = insertelement <8 x i16> poison, i16 %i.uw, i64 0
  %i.vf = insertelement <8 x i16> %i.ve, i16 %i.ux, i64 1
  %i.vg = insertelement <8 x i16> %i.vf, i16 %i.uy, i64 2
  %i.vh = insertelement <8 x i16> %i.vg, i16 %i.uz, i64 3
  %i.vi = insertelement <8 x i16> %i.vh, i16 %i.va, i64 4
  %i.vj = insertelement <8 x i16> %i.vi, i16 %i.vb, i64 5
  %i.vk = insertelement <8 x i16> %i.vj, i16 %i.vc, i64 6
  %i.vl = insertelement <8 x i16> %i.vk, i16 %i.vd, i64 7
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %index
  store <8 x i16> %i.vl, ptr %i.vm, align 2, !tbaa !93, !alias.scope !143, !noalias !142
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vn = icmp eq i64 %index.next, %n.vec
  br i1 %i.vn, label %scalar.ph.preheader, label %vector.body, !llvm.loop !119

.preheader:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.bn
  %i.vo = load i16, ptr %i.sy, align 4, !tbaa !141 ; 3 uses
  %.not272 = icmp eq i16 %i.vo, 0
  br i1 %.not272, label %._crit_edge, label %.lr.ph266

.lr.ph266:                                        ; preds = %.preheader
  %i.vp = zext i16 %i.vo to i32
  %i.vq = load double, ptr %i.ti, align 8, !tbaa !74 ; 2 uses
  br label %bb.bo

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv335 = phi i64 [ %indvars.iv.next336.3, %scalar.ph ], [ %indvars.iv335.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv335
  %i.vr = load i16, ptr %gep, align 2, !tbaa !93
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %indvars.iv335
  store i16 %i.vr, ptr %i.vs, align 2, !tbaa !93
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %gep.1510 = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.next336
  %i.vt = load i16, ptr %gep.1510, align 2, !tbaa !93
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %indvars.iv.next336
  store i16 %i.vt, ptr %i.vu, align 2, !tbaa !93
  %indvars.iv.next336.1511 = add nuw nsw i64 %indvars.iv335, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.next336.1511
  %i.vv = load i16, ptr %gep.2, align 2, !tbaa !93
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %indvars.iv.next336.1511
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !93
  %indvars.iv.next336.2 = add nuw nsw i64 %indvars.iv335, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.next336.2
  %i.vx = load i16, ptr %gep.3, align 2, !tbaa !93
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %indvars.iv.next336.2
  store i16 %i.vx, ptr %i.vy, align 2, !tbaa !93
  %indvars.iv.next336.3 = add nuw nsw i64 %indvars.iv335, 4 ; 2 uses
  %exitcond339.not.3 = icmp eq i64 %indvars.iv.next336.3, %wide.trip.count
  br i1 %exitcond339.not.3, label %.preheader, label %scalar.ph, !llvm.loop !120

bb.bo:                                            ; preds = %.lr.ph266, %.loopexit
  %i.vz = phi i16 [ %i.vo, %.lr.ph266 ], [ %i.ym, %.loopexit ] ; 3 uses
  %i.wa = phi i32 [ %i.vp, %.lr.ph266 ], [ %i.yo, %.loopexit ]
  %.2158265 = phi i32 [ 0, %.lr.ph266 ], [ %i.yn, %.loopexit ] ; 3 uses
  %i.wb = uitofp nneg i32 %.2158265 to double
  %i.wc = uitofp i16 %i.vz to double              ; 2 uses
  %i.wd = fneg double %i.wc
  %i.we = call double @llvm.fmuladd.f64(double %i.wd, double 5.000000e-01, double %i.wb)
  %i.wf = fmul nnan double %i.wc, 5.000000e-01
  %i.wg = call double @llvm.fmuladd.f64(double %i.we, double %i.vq, double %i.wf)
  %i.wh = fptrunc double %i.wg to float           ; 2 uses
  %i.wi = fptoui float %i.wh to i32               ; 3 uses
  %i.wj = add nsw i32 %i.wa, -2
  %i.wk = icmp ult i32 %i.wj, %i.wi
  br i1 %i.wk, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.wl = uitofp i32 %i.wi to float
  %i.wm = fsub float %i.wh, %i.wl                 ; 2 uses
  %i.wn = load i16, ptr %i.tb, align 2, !tbaa !133 ; 3 uses
  %.not273 = icmp eq i16 %i.wn, 0
  br i1 %.not273, label %.loopexit, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.bp
  %i.wo = zext i16 %i.wn to i32
  %i.wp = fsub float 1.000000e+00, %i.wm
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph264, %bb.bs
  %i.wq = phi i16 [ %i.wn, %.lr.ph264 ], [ %i.yi, %bb.bs ] ; 3 uses
  %i.wr = phi i32 [ %i.wo, %.lr.ph264 ], [ %i.yk, %bb.bs ] ; 3 uses
  %.2155263 = phi i32 [ 0, %.lr.ph264 ], [ %i.yj, %bb.bs ] ; 3 uses
  %i.ws = uitofp nneg i32 %.2155263 to double
  %i.wt = uitofp i16 %i.wq to double              ; 2 uses
  %i.wu = fneg double %i.wt
  %i.wv = call double @llvm.fmuladd.f64(double %i.wu, double 5.000000e-01, double %i.ws)
  %i.ww = fmul nnan double %i.wt, 5.000000e-01
  %i.wx = call double @llvm.fmuladd.f64(double %i.wv, double %i.vq, double %i.ww)
  %i.wy = fptrunc double %i.wx to float           ; 2 uses
  %i.wz = fptoui float %i.wy to i32               ; 3 uses
  %i.xa = add nsw i32 %i.wr, -2
  %i.xb = icmp ult i32 %i.xa, %i.wz
  br i1 %i.xb, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xc = uitofp i32 %i.wz to float
  %i.xd = fsub float %i.wy, %i.xc                 ; 3 uses
  %i.xe = mul i32 %i.wr, %i.wi
  %i.xf = zext i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.xf
  %i.xh = zext i32 %i.wz to i64
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.xg, i64 %i.xh ; 3 uses
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !93
  %i.xk = uitofp i16 %i.xj to float
  %i.xl = fsub float 1.000000e+00, %i.xd          ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !93
  %i.xo = uitofp i16 %i.xn to float
  %i.xp = fmul float %i.xd, %i.xo
  %i.xq = call float @llvm.fmuladd.f32(float %i.xk, float %i.xl, float %i.xp)
  %i.xr = zext i16 %i.wq to i64
  %i.xs = getelementptr inbounds nuw [2 x i8], ptr %i.xi, i64 %i.xr ; 2 uses
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !93
  %i.xu = uitofp i16 %i.xt to float
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 2
  %i.xw = load i16, ptr %i.xv, align 2, !tbaa !93
  %i.xx = uitofp i16 %i.xw to float
  %i.xy = fmul float %i.xd, %i.xx
  %i.xz = call float @llvm.fmuladd.f32(float %i.xu, float %i.xl, float %i.xy)
  %i.ya = fmul float %i.wm, %i.xz
  %i.yb = call float @llvm.fmuladd.f32(float %i.xq, float %i.wp, float %i.ya)
  %i.yc = fptoui float %i.yb to i16
  %i.yd = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.ye = mul nuw i32 %i.wr, %.2158265
  %i.yf = add nuw i32 %i.ye, %.2155263
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %i.yg
  store i16 %i.yc, ptr %i.yh, align 2, !tbaa !93
  %.pre380 = load i16, ptr %i.tb, align 2, !tbaa !133
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.yi = phi i16 [ %i.wq, %bb.bq ], [ %.pre380, %bb.br ] ; 2 uses
  %i.yj = add nuw nsw i32 %.2155263, 1            ; 2 uses
  %i.yk = zext i16 %i.yi to i32                   ; 2 uses
  %i.yl = icmp samesign ult i32 %i.yj, %i.yk
  br i1 %i.yl, label %bb.bq, label %.loopexit.loopexit, !llvm.loop !121

.loopexit.loopexit:                               ; preds = %bb.bs
  %.pre381 = load i16, ptr %i.sy, align 4, !tbaa !141
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bp, %bb.bo
  %i.ym = phi i16 [ %.pre381, %.loopexit.loopexit ], [ %i.vz, %bb.bp ], [ %i.vz, %bb.bo ] ; 2 uses
  %i.yn = add nuw nsw i32 %.2158265, 1            ; 2 uses
  %i.yo = zext i16 %i.ym to i32                   ; 2 uses
  %i.yp = icmp samesign ult i32 %i.yn, %i.yo
  br i1 %i.yp, label %bb.bo, label %._crit_edge, !llvm.loop !122

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.tu)
  br label %bb.bt

bb.bt:                                            ; preds = %.preheader197, %._crit_edge
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 2 uses
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !74
  %i.ys = fcmp oeq double %i.yr, 1.000000e+00
  br i1 %i.ys, label %.loopexit198, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.yt = call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ts) ; 10 uses
  br i1 %.not271, label %.preheader.1, label %.lr.ph262.1

.lr.ph262.1:                                      ; preds = %bb.bu
  %i.yu = load ptr, ptr %i.i, align 8, !tbaa !92  ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %i.yu, i64 4 ; 14 uses
  %wide.trip.count.1 = zext i32 %i.te to i64      ; 7 uses
  %min.iters.check491 = icmp ult i32 %i.te, 17
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.memcheck484

vector.memcheck484:                               ; preds = %.lr.ph262.1
  %i.yv = shl nuw nsw i64 %wide.trip.count.1, 1
  %scevgep485 = getelementptr i8, ptr %i.yt, i64 %i.yv
  %i.yw = shl nuw nsw i64 %wide.trip.count.1, 3
  %i.yx = getelementptr i8, ptr %i.yu, i64 %i.yw
  %scevgep486 = getelementptr i8, ptr %i.yx, i64 -2
  %bound0487 = icmp ult ptr %i.yt, %scevgep486
  %bound1488 = icmp ult ptr %invariant.gep.1, %scevgep485
  %found.conflict489 = and i1 %bound0487, %bound1488
  br i1 %found.conflict489, label %scalar.ph490.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck484
  %i.yy = and i64 %wide.trip.count.1, 7           ; 2 uses
  %i.yz = icmp eq i64 %i.yy, 0
  %i.za = select i1 %i.yz, i64 8, i64 %i.yy
  %n.vec493 = sub nsw i64 %wide.trip.count.1, %i.za ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next496, %vector.body494 ] ; 10 uses
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index495
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index495
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index495
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index495
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index495
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 32
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index495
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 40
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index495
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 48
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %index495
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 56
  %i.zq = load i16, ptr %i.zb, align 2, !tbaa !93, !alias.scope !144
  %i.zr = load i16, ptr %i.zd, align 2, !tbaa !93, !alias.scope !144
  %i.zs = load i16, ptr %i.zf, align 2, !tbaa !93, !alias.scope !144
  %i.zt = load i16, ptr %i.zh, align 2, !tbaa !93, !alias.scope !144
  %i.zu = load i16, ptr %i.zj, align 2, !tbaa !93, !alias.scope !144
  %i.zv = load i16, ptr %i.zl, align 2, !tbaa !93, !alias.scope !144
  %i.zw = load i16, ptr %i.zn, align 2, !tbaa !93, !alias.scope !144
  %i.zx = load i16, ptr %i.zp, align 2, !tbaa !93, !alias.scope !144
  %i.zy = insertelement <8 x i16> poison, i16 %i.zq, i64 0
  %i.zz = insertelement <8 x i16> %i.zy, i16 %i.zr, i64 1
  %i.aaa = insertelement <8 x i16> %i.zz, i16 %i.zs, i64 2
  %i.aab = insertelement <8 x i16> %i.aaa, i16 %i.zt, i64 3
  %i.aac = insertelement <8 x i16> %i.aab, i16 %i.zu, i64 4
  %i.aad = insertelement <8 x i16> %i.aac, i16 %i.zv, i64 5
  %i.aae = insertelement <8 x i16> %i.aad, i16 %i.zw, i64 6
  %i.aaf = insertelement <8 x i16> %i.aae, i16 %i.zx, i64 7
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %index495
  store <8 x i16> %i.aaf, ptr %i.aag, align 2, !tbaa !93, !alias.scope !145, !noalias !144
  %index.next496 = add nuw i64 %index495, 8       ; 2 uses
  %i.aah = icmp eq i64 %index.next496, %n.vec493
  br i1 %i.aah, label %scalar.ph490.preheader, label %vector.body494, !llvm.loop !126

scalar.ph490.preheader:                           ; preds = %vector.body494, %vector.memcheck484, %.lr.ph262.1
  %indvars.iv335.1.ph = phi i64 [ 0, %vector.memcheck484 ], [ 0, %.lr.ph262.1 ], [ %n.vec493, %vector.body494 ] ; 4 uses
  %i.aai = sub nsw i64 %wide.trip.count.1, %indvars.iv335.1.ph
  %xtraiter512 = and i64 %i.aai, 3                ; 2 uses
  %lcmp.mod513.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod513.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol

scalar.ph490.prol:                                ; preds = %scalar.ph490.preheader, %scalar.ph490.prol
  %indvars.iv335.1.prol = phi i64 [ %indvars.iv.next336.1.prol, %scalar.ph490.prol ], [ %indvars.iv335.1.ph, %scalar.ph490.preheader ] ; 3 uses
  %prol.iter514 = phi i64 [ %prol.iter514.next, %scalar.ph490.prol ], [ 0, %scalar.ph490.preheader ]
  %gep.1.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv335.1.prol
  %i.aaj = load i16, ptr %gep.1.prol, align 2, !tbaa !93
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %indvars.iv335.1.prol
  store i16 %i.aaj, ptr %i.aak, align 2, !tbaa !93
  %indvars.iv.next336.1.prol = add nuw nsw i64 %indvars.iv335.1.prol, 1 ; 2 uses
  %prol.iter514.next = add i64 %prol.iter514, 1   ; 2 uses
  %prol.iter514.cmp.not = icmp eq i64 %prol.iter514.next, %xtraiter512
  br i1 %prol.iter514.cmp.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol, !llvm.loop !127

scalar.ph490.prol.loopexit:                       ; preds = %scalar.ph490.prol, %scalar.ph490.preheader
  %indvars.iv335.1.unr = phi i64 [ %indvars.iv335.1.ph, %scalar.ph490.preheader ], [ %indvars.iv.next336.1.prol, %scalar.ph490.prol ]
  %i.aal = sub nsw i64 %indvars.iv335.1.ph, %wide.trip.count.1
  %i.aam = icmp ugt i64 %i.aal, -4
  br i1 %i.aam, label %.preheader.1, label %scalar.ph490

scalar.ph490:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490
  %indvars.iv335.1 = phi i64 [ %indvars.iv.next336.1.3, %scalar.ph490 ], [ %indvars.iv335.1.unr, %scalar.ph490.prol.loopexit ] ; 6 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv335.1
  %i.aan = load i16, ptr %gep.1, align 2, !tbaa !93
  %i.aao = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %indvars.iv335.1
  store i16 %i.aan, ptr %i.aao, align 2, !tbaa !93
  %indvars.iv.next336.1 = add nuw nsw i64 %indvars.iv335.1, 1 ; 2 uses
  %gep.1.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1
  %i.aap = load i16, ptr %gep.1.1, align 2, !tbaa !93
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %indvars.iv.next336.1
  store i16 %i.aap, ptr %i.aaq, align 2, !tbaa !93
  %indvars.iv.next336.1.1 = add nuw nsw i64 %indvars.iv335.1, 2 ; 2 uses
  %gep.1.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1.1
  %i.aar = load i16, ptr %gep.1.2, align 2, !tbaa !93
  %i.aas = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %indvars.iv.next336.1.1
  store i16 %i.aar, ptr %i.aas, align 2, !tbaa !93
  %indvars.iv.next336.1.2 = add nuw nsw i64 %indvars.iv335.1, 3 ; 2 uses
  %gep.1.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.1, i64 %indvars.iv.next336.1.2
  %i.aat = load i16, ptr %gep.1.3, align 2, !tbaa !93
  %i.aau = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %indvars.iv.next336.1.2
  store i16 %i.aat, ptr %i.aau, align 2, !tbaa !93
  %indvars.iv.next336.1.3 = add nuw nsw i64 %indvars.iv335.1, 4 ; 2 uses
  %exitcond339.1.not.3 = icmp eq i64 %indvars.iv.next336.1.3, %wide.trip.count.1
  br i1 %exitcond339.1.not.3, label %.preheader.1, label %scalar.ph490, !llvm.loop !128

.preheader.1:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490, %bb.bu
  %i.aav = load i16, ptr %i.sy, align 4, !tbaa !141 ; 3 uses
  %.not272.1 = icmp eq i16 %i.aav, 0
  br i1 %.not272.1, label %._crit_edge.1, label %.lr.ph266.1

.lr.ph266.1:                                      ; preds = %.preheader.1
  %i.aaw = zext i16 %i.aav to i32
  %i.aax = load double, ptr %i.yq, align 8, !tbaa !74 ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.1, %.lr.ph266.1
  %i.aay = phi i16 [ %i.aav, %.lr.ph266.1 ], [ %i.adm, %.loopexit.1 ] ; 3 uses
  %i.aaz = phi i32 [ %i.aaw, %.lr.ph266.1 ], [ %i.ado, %.loopexit.1 ]
  %.2158265.1 = phi i32 [ 0, %.lr.ph266.1 ], [ %i.adn, %.loopexit.1 ] ; 3 uses
  %i.aba = uitofp nneg i32 %.2158265.1 to double
  %i.abb = uitofp i16 %i.aay to double            ; 2 uses
  %i.abc = fneg double %i.abb
  %i.abd = call double @llvm.fmuladd.f64(double %i.abc, double 5.000000e-01, double %i.aba)
  %i.abe = fmul nnan double %i.abb, 5.000000e-01
  %i.abf = call double @llvm.fmuladd.f64(double %i.abd, double %i.aax, double %i.abe)
  %i.abg = fptrunc double %i.abf to float         ; 2 uses
  %i.abh = fptoui float %i.abg to i32             ; 3 uses
  %i.abi = add nsw i32 %i.aaz, -2
  %i.abj = icmp ult i32 %i.abi, %i.abh
  br i1 %i.abj, label %.loopexit.1, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.abk = uitofp i32 %i.abh to float
  %i.abl = fsub float %i.abg, %i.abk              ; 2 uses
  %i.abm = load i16, ptr %i.tb, align 2, !tbaa !133 ; 3 uses
  %.not273.1 = icmp eq i16 %i.abm, 0
  br i1 %.not273.1, label %.loopexit.1, label %.lr.ph264.1

.lr.ph264.1:                                      ; preds = %bb.bw
  %i.abn = zext i16 %i.abm to i32
  %i.abo = fsub float 1.000000e+00, %i.abl
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %.lr.ph264.1
  %i.abp = phi i16 [ %i.abm, %.lr.ph264.1 ], [ %i.adi, %bb.bz ] ; 3 uses
  %i.abq = phi i32 [ %i.abn, %.lr.ph264.1 ], [ %i.adk, %bb.bz ] ; 3 uses
  %.2155263.1 = phi i32 [ 0, %.lr.ph264.1 ], [ %i.adj, %bb.bz ] ; 3 uses
  %i.abr = uitofp nneg i32 %.2155263.1 to double
  %i.abs = uitofp i16 %i.abp to double            ; 2 uses
  %i.abt = fneg double %i.abs
  %i.abu = call double @llvm.fmuladd.f64(double %i.abt, double 5.000000e-01, double %i.abr)
  %i.abv = fmul nnan double %i.abs, 5.000000e-01
  %i.abw = call double @llvm.fmuladd.f64(double %i.abu, double %i.aax, double %i.abv)
  %i.abx = fptrunc double %i.abw to float         ; 2 uses
  %i.aby = fptoui float %i.abx to i32             ; 3 uses
  %i.abz = add nsw i32 %i.abq, -2
  %i.aca = icmp ult i32 %i.abz, %i.aby
  br i1 %i.aca, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.acb = uitofp i32 %i.aby to float
  %i.acc = fsub float %i.abx, %i.acb              ; 3 uses
  %i.acd = mul i32 %i.abq, %i.abh
  %i.ace = zext i32 %i.acd to i64
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %i.ace
  %i.acg = zext i32 %i.aby to i64
  %i.ach = getelementptr inbounds nuw [2 x i8], ptr %i.acf, i64 %i.acg ; 3 uses
  %i.aci = load i16, ptr %i.ach, align 2, !tbaa !93
  %i.acj = uitofp i16 %i.aci to float
  %i.ack = fsub float 1.000000e+00, %i.acc        ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 2
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !93
  %i.acn = uitofp i16 %i.acm to float
  %i.aco = fmul float %i.acc, %i.acn
  %i.acp = call float @llvm.fmuladd.f32(float %i.acj, float %i.ack, float %i.aco)
  %i.acq = zext i16 %i.abp to i64
  %i.acr = getelementptr inbounds nuw [2 x i8], ptr %i.ach, i64 %i.acq ; 2 uses
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !93
  %i.act = uitofp i16 %i.acs to float
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 2
  %i.acv = load i16, ptr %i.acu, align 2, !tbaa !93
  %i.acw = uitofp i16 %i.acv to float
  %i.acx = fmul float %i.acc, %i.acw
  %i.acy = call float @llvm.fmuladd.f32(float %i.act, float %i.ack, float %i.acx)
  %i.acz = fmul float %i.abl, %i.acy
  %i.ada = call float @llvm.fmuladd.f32(float %i.acp, float %i.abo, float %i.acz)
  %i.adb = fptoui float %i.ada to i16
  %i.adc = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.add = mul nuw i32 %i.abq, %.2158265.1
  %i.ade = add nuw i32 %i.add, %.2155263.1
  %i.adf = zext i32 %i.ade to i64
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.adc, i64 %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  store i16 %i.adb, ptr %i.adh, align 2, !tbaa !93
  %.pre382 = load i16, ptr %i.tb, align 2, !tbaa !133
  br label %bb.bz

end_hunk_0
