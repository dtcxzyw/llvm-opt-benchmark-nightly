inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4ncnn21Deconvolution_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.223262516.us.us.i = phi <4 x float> [ %.123252524.us.us.i, %.preheader2503.us.us.i.a ], [ %.32327.us.us.i, %bb.be ] ; 4 uses
  %.223412515.us.us.i = phi <4 x float> [ %.123402523.us.us.i, %.preheader2503.us.us.i.a ], [ %.32342.us.us.i, %bb.be ] ; 4 uses
  %.223562514.us.us.i = phi <4 x float> [ %.123552522.us.us.i, %.preheader2503.us.us.i.a ], [ %.32357.us.us.i, %bb.be ] ; 4 uses
  %i.ol = trunc i64 %indvars.iv.i to i32
  %i.om = mul i32 %i.nr, %i.ol
  %.reass.us.us.i = add i32 %invariant.op.i, %i.om ; 3 uses
  %i.on = icmp slt i32 %.reass.us.us.i, 0
  br i1 %i.on, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.oo = srem i32 %.reass.us.us.i, %i.nq
  %i.op = sdiv i32 %.reass.us.us.i, %i.nq         ; 4 uses
  %.not936.us.us.i = icmp eq i32 %i.oo, 0
  %.not937.us.us.i = icmp slt i32 %i.op, %i.lj
  %or.cond415 = select i1 %.not936.us.us.i, i1 %.not937.us.us.i, i1 false
  br i1 %or.cond415, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.oq = add nuw nsw i64 %indvars.iv.i, %i.vu
  %i.or = shl i64 %i.oq, 5
  %i.os = and i64 %i.or, 4294967264
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.07162542.us.i, i64 %i.os ; 8 uses
  switch i32 %.fr2597.i, label %bb.be [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit976.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit975.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit973.us.us.i:                 ; preds = %bb.bd
  %i.ou = load i32, ptr %i.ag, align 4, !tbaa !56, !noalias !332
  %i.ov = load ptr, ptr %1, align 8, !tbaa !18, !noalias !332 ; 8 uses
  %i.ow = load i64, ptr %i.jt, align 8, !tbaa !20, !noalias !332
  %i.ox = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !332 ; 2 uses
  %i.oy = mul i64 %i.ox, %i.ow                    ; 8 uses
  %i.oz = mul i64 %i.oy, %indvars.iv3271.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.oz
  %i.pb = sext i32 %i.ou to i64
  %i.pc = mul nsw i64 %i.pb, %i.vv
  %i.pd = mul i64 %i.pc, %i.ox                    ; 8 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pd
  %i.pf = sext i32 %i.op to i64                   ; 8 uses
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !39
  %i.pi = insertelement <4 x float> poison, float %i.ph, i64 0
  %i.pj = shufflevector <4 x float> %i.pi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pk = mul i64 %i.oy, %i.nv
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pd
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.pf
  %i.po = load float, ptr %i.pn, align 4, !tbaa !39
  %i.pp = insertelement <4 x float> poison, float %i.po, i64 0
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pr = mul i64 %i.oy, %i.nw
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pd
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pf
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !39
  %i.pw = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.py = mul i64 %i.oy, %i.nx
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pd
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.pf
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !39
  %i.qd = insertelement <4 x float> poison, float %i.qc, i64 0
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qf = mul i64 %i.oy, %i.ny
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.pd
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qh, i64 %i.pf
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !39
  %i.qk = insertelement <4 x float> poison, float %i.qj, i64 0
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qm = mul i64 %i.oy, %i.nz
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.pd
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.qo, i64 %i.pf
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !39
  %i.qr = insertelement <4 x float> poison, float %i.qq, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = mul i64 %i.oy, %i.oa
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.pd
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qv, i64 %i.pf
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !39
  %i.qy = insertelement <4 x float> poison, float %i.qx, i64 0
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ra = mul i64 %i.oy, %i.nu
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.pd
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.pf
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit975.us.us.i:                 ; preds = %bb.bd
  %i.re = load i32, ptr %i.ag, align 4, !tbaa !56, !noalias !335
  %i.rf = load ptr, ptr %1, align 8, !tbaa !18, !noalias !335 ; 2 uses
  %i.rg = load i64, ptr %i.jt, align 8, !tbaa !20, !noalias !335
  %i.rh = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !335 ; 2 uses
  %i.ri = mul i64 %i.rh, %i.rg                    ; 2 uses
  %i.rj = mul i64 %i.ri, %i.ob
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rj
  %i.rl = sext i32 %i.re to i64
  %i.rm = mul nsw i64 %i.rl, %i.vv
  %i.rn = mul i64 %i.rm, %i.rh                    ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rn
  %i.rp = shl nsw i32 %i.op, 2
  %i.rq = sext i32 %i.rp to i64                   ; 2 uses
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.rq ; 4 uses
  %i.rs = mul i64 %i.ri, %i.oc
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rn
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.ru, i64 %i.rq ; 4 uses
  %i.rw = load float, ptr %i.rr, align 4, !tbaa !39
  %i.rx = insertelement <4 x float> poison, float %i.rw, i64 0
  %i.ry = shufflevector <4 x float> %i.rx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !39
  %i.sb = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.se = load float, ptr %i.sd, align 4, !tbaa !39
  %i.sf = insertelement <4 x float> poison, float %i.se, i64 0
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rr, i64 12
  %i.si = load float, ptr %i.sh, align 4, !tbaa !39
  %i.sj = insertelement <4 x float> poison, float %i.si, i64 0
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sl = load float, ptr %i.rv, align 4, !tbaa !39
  %i.sm = insertelement <4 x float> poison, float %i.sl, i64 0
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.so = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.sp = load float, ptr %i.so, align 4, !tbaa !39
  %i.sq = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.st = load float, ptr %i.ss, align 4, !tbaa !39
  %i.su = insertelement <4 x float> poison, float %i.st, i64 0
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit976.us.us.i:                 ; preds = %bb.bd
  %i.sx = load i32, ptr %i.ag, align 4, !tbaa !56, !noalias !338
  %i.sy = load ptr, ptr %1, align 8, !tbaa !18, !noalias !338
  %i.sz = load i64, ptr %i.jt, align 8, !tbaa !20, !noalias !338
  %i.ta = mul i64 %i.sz, %i.od
  %i.tb = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !338 ; 2 uses
  %i.tc = mul i64 %i.ta, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.tc
  %i.te = sext i32 %i.sx to i64
  %i.tf = mul nsw i64 %i.te, %i.vv
  %i.tg = mul i64 %i.tf, %i.tb
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 %i.tg
  %i.ti = shl nsw i32 %i.op, 3
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.th, i64 %i.tj ; 8 uses
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !39
  %i.tm = insertelement <4 x float> poison, float %i.tl, i64 0
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  %i.tp = load float, ptr %i.to, align 4, !tbaa !39
  %i.tq = insertelement <4 x float> poison, float %i.tp, i64 0
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !39
  %i.tu = insertelement <4 x float> poison, float %i.tt, i64 0
  %i.tv = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tk, i64 12
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !39
  %i.ty = insertelement <4 x float> poison, float %i.tx, i64 0
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !39
  %i.uc = insertelement <4 x float> poison, float %i.ub, i64 0
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tk, i64 20
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !39
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !39
  %i.uk = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.um = getelementptr inbounds nuw i8, ptr %i.tk, i64 28
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit976.us.us.i, %_ZN4ncnn3MatD2Ev.exit975.us.us.i, %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  %.sink3624.in.i = phi ptr [ %i.um, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sw, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.rd, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3623.i = phi <4 x float> [ %i.tn, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ry, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.pj, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3621.i = phi <4 x float> [ %i.tr, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sc, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.pq, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3619.i = phi <4 x float> [ %i.tv, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sg, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.px, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3616.i = phi <4 x float> [ %i.tz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sk, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qe, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3613.i = phi <4 x float> [ %i.ud, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sn, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.ql, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3608.i = phi <4 x float> [ %i.uh, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sr, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qs, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3603.i = phi <4 x float> [ %i.ul, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sv, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qz, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3624.i = load float, ptr %.sink3624.in.i, align 4, !tbaa !39
  %i.un = insertelement <4 x float> poison, float %.sink3624.i, i64 0
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> poison, <4 x i32> zeroinitializer
  %i.up = load <4 x float>, ptr %i.ot, align 16, !tbaa !310
  %i.uq = fmul fast <4 x float> %i.up, %.sink3623.i
  %i.ur = fadd fast <4 x float> %.323152517.us.us.i, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.ut = load <4 x float>, ptr %i.us, align 16, !tbaa !310
  %i.uu = fmul fast <4 x float> %i.ut, %.sink3621.i
  %i.uv = fadd fast <4 x float> %.223262516.us.us.i, %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ux = load <4 x float>, ptr %i.uw, align 16, !tbaa !310
  %i.uy = fmul fast <4 x float> %i.ux, %.sink3619.i
  %i.uz = fadd fast <4 x float> %.223412515.us.us.i, %i.uy
  %i.va = getelementptr inbounds nuw i8, ptr %i.ot, i64 48
  %i.vb = load <4 x float>, ptr %i.va, align 16, !tbaa !310
  %i.vc = fmul fast <4 x float> %i.vb, %.sink3616.i
  %i.vd = fadd fast <4 x float> %.223562514.us.us.i, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ot, i64 64
  %i.vf = load <4 x float>, ptr %i.ve, align 16, !tbaa !310
  %i.vg = fmul fast <4 x float> %i.vf, %.sink3613.i
  %i.vh = fadd fast <4 x float> %i.vg, %i.ur
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ot, i64 80
  %i.vj = load <4 x float>, ptr %i.vi, align 16, !tbaa !310
  %i.vk = fmul fast <4 x float> %i.vj, %.sink3608.i
  %i.vl = fadd fast <4 x float> %i.vk, %i.uv
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ot, i64 96
  %i.vn = load <4 x float>, ptr %i.vm, align 16, !tbaa !310
  %i.vo = fmul fast <4 x float> %i.vn, %.sink3603.i
  %i.vp = fadd fast <4 x float> %i.vo, %i.uz
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ot, i64 112
  %i.vr = load <4 x float>, ptr %i.vq, align 16, !tbaa !310
  %i.vs = fmul fast <4 x float> %i.vr, %i.uo
  %i.vt = fadd fast <4 x float> %i.vs, %i.vd
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i, %bb.bd, %bb.bc, %bb.bb
  %.32357.us.us.i = phi nsz <4 x float> [ %.223562514.us.us.i, %bb.bb ], [ %.223562514.us.us.i, %bb.bd ], [ %.223562514.us.us.i, %bb.bc ], [ %i.vt, %.sink.split.i ] ; 2 uses
  %.32342.us.us.i = phi nsz <4 x float> [ %.223412515.us.us.i, %bb.bb ], [ %.223412515.us.us.i, %bb.bd ], [ %.223412515.us.us.i, %bb.bc ], [ %i.vp, %.sink.split.i ] ; 2 uses
  %.32327.us.us.i = phi nsz <4 x float> [ %.223262516.us.us.i, %bb.bb ], [ %.223262516.us.us.i, %bb.bd ], [ %.223262516.us.us.i, %bb.bc ], [ %i.vl, %.sink.split.i ] ; 2 uses
  %.42316.us.us.i = phi nsz <4 x float> [ %.323152517.us.us.i, %bb.bb ], [ %.323152517.us.us.i, %bb.bd ], [ %.323152517.us.us.i, %bb.bc ], [ %i.vh, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.nt
  br i1 %exitcond.not.i, label %..loopexit2504_crit_edge.us.us.i, label %bb.bb, !llvm.loop !341

..loopexit2504_crit_edge.us.us.i:                 ; preds = %bb.be, %bb.ba, %.lr.ph2527.split.us.us.i
  %.42358.us.us.i = phi nsz <4 x float> [ %.123552522.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123552522.us.us.i, %bb.ba ], [ %.32357.us.us.i, %bb.be ] ; 2 uses
  %.42343.us.us.i = phi nsz <4 x float> [ %.123402523.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123402523.us.us.i, %bb.ba ], [ %.32342.us.us.i, %bb.be ] ; 2 uses
  %.42328.us.us.i = phi nsz <4 x float> [ %.123252524.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123252524.us.us.i, %bb.ba ], [ %.32327.us.us.i, %bb.be ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223142525.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.223142525.us.us.i, %bb.ba ], [ %.42316.us.us.i, %bb.be ] ; 2 uses
  %indvars.iv.next3267.i = add nuw nsw i64 %indvars.iv3266.i, 1 ; 2 uses
  %exitcond3270.not.i = icmp eq i64 %indvars.iv.next3267.i, %wide.trip.count3269.i
  br i1 %exitcond3270.not.i, label %._crit_edge.us.i, label %.lr.ph2527.split.us.us.i, !llvm.loop !342

.preheader2503.us.us.i.a:                         ; preds = %bb.ba
  %i.vu = mul nuw nsw i64 %indvars.iv3266.i, %i.nt
  %i.vv = sext i32 %i.ok to i64                   ; 3 uses
  br label %bb.bb

.preheader2511.i:                                 ; preds = %._crit_edge.us.i, %.preheader2508.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02354.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02339.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi2534.us.i.a, %._crit_edge.us.i ] ; 4 uses
  %.02324.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi2535.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12313.lcssa.i = phi <4 x float> [ %.02312.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02312.i, %.preheader2508.preheader.i ], [ %.us-phi2536.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0721.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.mp, %.preheader2508.preheader.i ], [ %i.mp, %._crit_edge.us.i ] ; 9 uses
  %.0716.lcssa.i = phi ptr [ %i.nk, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3264.i, %.preheader2508.preheader.i ], [ %i.oe, %._crit_edge.us.i ] ; 4 uses
  %i.vw = or disjoint i32 %.0721.lcssa.i, 3       ; 2 uses
  %i.vx = icmp slt i32 %i.vw, %i.li
  br i1 %i.vx, label %.preheader2507.lr.ph.i, label %.preheader2510.i

.preheader2507.lr.ph.i:                           ; preds = %.preheader2511.i
  %i.vy = load i32, ptr %i.d, align 4             ; 2 uses
  %i.vz = load i32, ptr %i.j, align 4
  %invariant.op2608.i = sub i32 %.neg2466.i.a, %i.vz ; 2 uses
  %i.wa = load i32, ptr %i.f, align 4             ; 4 uses
  %i.wb = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.wb                       ; 2 uses
  %i.wc = load i32, ptr %i.c, align 4             ; 2 uses
  %i.wd = load i32, ptr %i.i, align 4
  %.neg2464.i = add nuw nsw i32 %.07152731.i, 1
  %invariant.op2572.i = sub i32 %.neg2464.i, %i.wd ; 2 uses
  %i.we = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.ms, label %.preheader2507.lr.ph.split.us.i, label %.preheader2507.preheader.i

.preheader2507.preheader.i:                       ; preds = %.preheader2507.lr.ph.i
  %i.wf = add i32 %.0721.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %i.li, i32 %i.wf)
  %reass.sub = sub i32 %smax.i, %.0721.lcssa.i
  %i.wg = and i32 %reass.sub, -4                  ; 2 uses
  %i.wh = add i32 %i.wg, -4
  %i.wi = zext i32 %i.wh to i64
  %i.wj = add nuw nsw i64 %i.wi, 4
  %i.wk = mul nsw i64 %i.wj, %i.mx
  %scevgep3274.i.a = getelementptr i8, ptr %.0716.lcssa.i, i64 %i.wk
  %i.wl = add i32 %.0721.lcssa.i, %i.wg
  br label %.preheader2510.i

.preheader2507.lr.ph.split.us.i:                  ; preds = %.preheader2507.lr.ph.i
  %i.wm = icmp sgt i32 %.fr.i, 0
  br i1 %i.wm, label %.preheader2507.us.us.preheader.i, label %.preheader2507.us.preheader.i

.preheader2507.us.preheader.i:                    ; preds = %.preheader2507.lr.ph.split.us.i
  %i.wn = add i32 %.0721.lcssa.i, 7
  %smax3275.i = call i32 @llvm.smax.i32(i32 %i.li, i32 %i.wn)
  %reass.sub212 = sub i32 %smax3275.i, %.0721.lcssa.i
  %i.wo = and i32 %reass.sub212, -4               ; 2 uses
  %i.wp = add i32 %i.wo, -4
  %i.wq = zext i32 %i.wp to i64
  %i.wr = add nuw nsw i64 %i.wq, 4
  %i.ws = mul nsw i64 %i.wr, %i.mx
  %scevgep3276.i = getelementptr i8, ptr %.0716.lcssa.i, i64 %i.ws
  %i.wt = add i32 %.0721.lcssa.i, %i.wo
  br label %.preheader2510.i

.preheader2507.us.us.preheader.i:                 ; preds = %.preheader2507.lr.ph.split.us.i
  %i.wu = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.wv = zext i32 %.0721.lcssa.i to i64
  %i.ww = zext nneg i32 %i.vw to i64
  br label %.preheader2507.us.us.i

.preheader2507.us.us.i:                           ; preds = %._crit_edge.split.us.us2645.us.i, %.preheader2507.us.us.preheader.i
  %indvars.iv3292.i = phi i64 [ %i.wv, %.preheader2507.us.us.preheader.i ], [ %indvars.iv.next3293.i, %._crit_edge.split.us.us2645.us.i ] ; 5 uses
  %i.wx = phi i64 [ %i.ww, %.preheader2507.us.us.preheader.i ], [ %i.aca, %._crit_edge.split.us.us2645.us.i ]
  %.17172629.us.us.i = phi ptr [ %.0716.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %i.abz, %._crit_edge.split.us.us2645.us.i ] ; 3 uses
  %.623172627.us.us.i = phi <4 x float> [ %.12313.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi153, %._crit_edge.split.us.us2645.us.i ] ; 3 uses
  %.523292626.us.us.i = phi <4 x float> [ %.02324.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi152, %._crit_edge.split.us.us2645.us.i ] ; 3 uses
  %.523442625.us.us.i = phi <4 x float> [ %.02339.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi151, %._crit_edge.split.us.us2645.us.i ] ; 3 uses
  %.523592624.us.us.i = phi <4 x float> [ %.02354.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2645.us.i ] ; 3 uses
  %i.wy = add nuw nsw i64 %indvars.iv3292.i, 1
  %i.wz = add nuw nsw i64 %indvars.iv3292.i, 2
  %i.xa = lshr exact i64 %indvars.iv3292.i, 2
  switch i32 %.fr2597.i, label %._crit_edge.split.us.us2645.us.i [
    i32 4, label %.preheader2507.us.us.i.split.us
    i32 1, label %.preheader2507.us.us.i.split.us154
  ]

.preheader2507.us.us.i.split.us:                  ; preds = %.preheader2507.us.us.i, %..loopexit2502_crit_edge.us.us.us.i.us
  %indvars.iv3287.i.us = phi i64 [ %indvars.iv.next3288.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ 0, %.preheader2507.us.us.i ] ; 3 uses
  %.72601.us.us.us.i.us = phi <4 x float> [ %.102320.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.623172627.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623302600.us.us.us.i.us = phi <4 x float> [ %.92333.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523292626.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623452599.us.us.us.i.us = phi <4 x float> [ %.92348.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523442625.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623602598.us.us.us.i.us = phi <4 x float> [ %.92363.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523592624.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %i.xb = trunc i64 %indvars.iv3287.i.us to i32
  %i.xc = mul i32 %i.vy, %i.xb
  %.reass2609.us.us.us.i.us = add i32 %i.xc, %invariant.op2608.i ; 3 uses
  %i.xd = icmp slt i32 %.reass2609.us.us.us.i.us, 0
  br i1 %i.xd, label %..loopexit2502_crit_edge.us.us.us.i.us, label %bb.bf

bb.bf:                                            ; preds = %.preheader2507.us.us.i.split.us
  %i.xe = srem i32 %.reass2609.us.us.us.i.us, %i.wa
  %i.xf = sdiv i32 %.reass2609.us.us.us.i.us, %i.wa ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.xe, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.xf, %i.lk
  %or.cond416 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond416, label %.preheader2501.us.us.us.i.us, label %..loopexit2502_crit_edge.us.us.us.i.us

.preheader2501.us.us.us.i.us:                     ; preds = %bb.bf
  %i.xg = mul nuw nsw i64 %indvars.iv3287.i.us, %i.wu
  %i.xh = sext i32 %i.xf to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2501.us.us.us.i.us, %bb.bh
  %indvars.iv3282.i.us = phi i64 [ %indvars.iv.next3283.i.us, %bb.bh ], [ 0, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.823182566.us.us.us.us.i.us = phi <4 x float> [ %.92319.us.us.us.us.i.us, %bb.bh ], [ %.72601.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723312565.us.us.us.us.i.us = phi <4 x float> [ %.82332.us.us.us.us.i.us, %bb.bh ], [ %.623302600.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723462564.us.us.us.us.i.us = phi <4 x float> [ %.82347.us.us.us.us.i.us, %bb.bh ], [ %.623452599.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723612563.us.us.us.us.i.us = phi <4 x float> [ %.82362.us.us.us.us.i.us, %bb.bh ], [ %.623602598.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %i.xi = trunc i64 %indvars.iv3282.i.us to i32
  %i.xj = mul i32 %i.wc, %i.xi
  %.reass.us.us2618.us.us.i.us = add i32 %i.xj, %invariant.op2572.i ; 3 uses
  %i.xk = icmp slt i32 %.reass.us.us2618.us.us.i.us, 0
  br i1 %i.xk, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.xl = srem i32 %.reass.us.us2618.us.us.i.us, %i.we
  %i.xm = sdiv i32 %.reass.us.us2618.us.us.i.us, %i.we ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.xl, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.xm, %i.lj
  %or.cond417 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond417, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.bh

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.bg
  %i.xn = add nuw nsw i64 %indvars.iv3282.i.us, %i.xg
  %i.xo = shl i64 %i.xn, 4
  %i.xp = and i64 %i.xo, 4294967280
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.17172629.us.us.i, i64 %i.xp ; 4 uses
  %i.xr = load i32, ptr %i.ag, align 4, !tbaa !56, !noalias !343
  %i.xs = load ptr, ptr %1, align 8, !tbaa !18, !noalias !343
  %i.xt = load i64, ptr %i.jt, align 8, !tbaa !20, !noalias !343
  %i.xu = mul i64 %i.xt, %i.xa
  %i.xv = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !343 ; 2 uses
  %i.xw = mul i64 %i.xu, %i.xv
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.xw
  %i.xy = sext i32 %i.xr to i64
  %i.xz = mul nsw i64 %i.xy, %i.xh
  %i.ya = mul i64 %i.xz, %i.xv
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.ya
  %i.yc = shl nsw i32 %i.xm, 2
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.yb, i64 %i.yd ; 4 uses
  %i.yf = load float, ptr %i.ye, align 1, !tbaa !310
  %i.yg = insertelement <4 x float> poison, float %i.yf, i64 0
  %i.yh = shufflevector <4 x float> %i.yg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yj = load float, ptr %i.yi, align 1, !tbaa !310
  %i.yk = insertelement <4 x float> poison, float %i.yj, i64 0
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yn = load float, ptr %i.ym, align 1, !tbaa !310
  %i.yo = insertelement <4 x float> poison, float %i.yn, i64 0
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ye, i64 12
  %i.yr = load float, ptr %i.yq, align 1, !tbaa !310
  %i.ys = insertelement <4 x float> poison, float %i.yr, i64 0
  %i.yt = shufflevector <4 x float> %i.ys, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yu = load <4 x float>, ptr %i.xq, align 16, !tbaa !310
  %i.yv = fmul fast <4 x float> %i.yu, %i.yh
  %i.yw = fadd fast <4 x float> %i.yv, %.823182566.us.us.us.us.i.us
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %i.yy = load <4 x float>, ptr %i.yx, align 16, !tbaa !310
  %i.yz = fmul fast <4 x float> %i.yy, %i.yl
  %i.za = fadd fast <4 x float> %i.yz, %.723312565.us.us.us.us.i.us
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xq, i64 32
  %i.zc = load <4 x float>, ptr %i.zb, align 16, !tbaa !310
  %i.zd = fmul fast <4 x float> %i.zc, %i.yp
  %i.ze = fadd fast <4 x float> %i.zd, %.723462564.us.us.us.us.i.us
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xq, i64 48
  %i.zg = load <4 x float>, ptr %i.zf, align 16, !tbaa !310
  %i.zh = fmul fast <4 x float> %i.zg, %i.yt
  %i.zi = fadd fast <4 x float> %i.zh, %.723612563.us.us.us.us.i.us
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, %bb.bg, %.lr.ph.split.us.us.us.us.i.us
  %.82362.us.us.us.us.i.us = phi nsz <4 x float> [ %.723612563.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.723612563.us.us.us.us.i.us, %bb.bg ], [ %i.zi, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn21Deconvolution_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br label %bb.bn

._crit_edge.split.us.us2692.us.i:                 ; preds = %..loopexit2500_crit_edge.us.us.us.i
  %i.afg = getelementptr inbounds [4 x i8], ptr %.27182677.us.us.i, i64 %i.mz ; 2 uses
  %indvars.iv.next3310.i = add nuw nsw i64 %indvars.iv3309.i, 2 ; 3 uses
  %i.afh = or disjoint i64 %indvars.iv.next3310.i, 1 ; 2 uses
  %i.afi = trunc nuw i64 %i.afh to i32
  %i.afj = icmp sgt i32 %i.li, %i.afi
  br i1 %i.afj, label %.preheader2506.us.us.i, label %.preheader2509.loopexit.i, !llvm.loop !357

.preheader2509.loopexit.i:                        ; preds = %._crit_edge.split.us.us2692.us.i
  %i.afk = trunc nuw i64 %indvars.iv.next3310.i to i32
  br label %.preheader2509.i

.preheader2509.i:                                 ; preds = %.preheader2509.loopexit.i, %.preheader2506.us.preheader.i, %.preheader2506.preheader.i, %.preheader2510.i
  %.102334.lcssa.i = phi <4 x float> [ %.52329.lcssa.i, %.preheader2510.i ], [ %.142338.us.us.us.i, %.preheader2509.loopexit.i ], [ %.52329.lcssa.i, %.preheader2506.us.preheader.i ], [ %.52329.lcssa.i, %.preheader2506.preheader.i ]
  %.112321.lcssa.i = phi <4 x float> [ %.62317.lcssa.i, %.preheader2510.i ], [ %.152323.us.us.us.i, %.preheader2509.loopexit.i ], [ %.62317.lcssa.i, %.preheader2506.us.preheader.i ], [ %.62317.lcssa.i, %.preheader2506.preheader.i ] ; 3 uses
  %.2723.lcssa.i = phi i32 [ %.1722.lcssa.i, %.preheader2510.i ], [ %i.afk, %.preheader2509.loopexit.i ], [ %i.adh, %.preheader2506.us.preheader.i ], [ %i.acw, %.preheader2506.preheader.i ] ; 2 uses
  %.2718.lcssa.i = phi ptr [ %.1717.lcssa.i, %.preheader2510.i ], [ %i.afg, %.preheader2509.loopexit.i ], [ %scevgep3298.i, %.preheader2506.us.preheader.i ], [ %scevgep3296.i.a, %.preheader2506.preheader.i ]
  %i.afl = icmp slt i32 %.2723.lcssa.i, %i.li
  br i1 %i.afl, label %.preheader2505.lr.ph.i, label %._crit_edge2717.i

.preheader2505.lr.ph.i:                           ; preds = %.preheader2509.i
  %i.afm = load i32, ptr %i.d, align 4
  %i.afn = load i32, ptr %i.j, align 4
  %invariant.op2709.i = sub i32 %.neg2466.i.a, %i.afn
  %i.afo = load i32, ptr %i.f, align 4            ; 2 uses
  %i.afp = load i32, ptr %i.a, align 4
  %.fr3167.i.a = freeze i32 %i.afp                ; 2 uses
  %i.afq = load i32, ptr %i.c, align 4
  %i.afr = load i32, ptr %i.i, align 4
  %.neg2456.i = add nuw nsw i32 %.07152731.i, 1
  %invariant.op2704.i = sub i32 %.neg2456.i, %i.afr
  %i.afs = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aft = icmp sgt i32 %.fr3167.i.a, 0
  %or.cond.i = and i1 %i.ms, %i.aft
  br i1 %or.cond.i, label %.preheader2505.us.us.preheader.i, label %._crit_edge2717.i

.preheader2505.us.us.preheader.i:                 ; preds = %.preheader2505.lr.ph.i
  %i.afu = zext nneg i32 %.fr3167.i.a to i64      ; 2 uses
  %i.afv = zext i32 %.2723.lcssa.i to i64
  br label %.preheader2505.us.us.i

.preheader2505.us.us.i:                           ; preds = %._crit_edge.split.us.us2728.us.i, %.preheader2505.us.us.preheader.i
  %indvars.iv3322.i = phi i64 [ %i.afv, %.preheader2505.us.us.preheader.i ], [ %indvars.iv.next3323.i, %._crit_edge.split.us.us2728.us.i ] ; 2 uses
  %.37192715.us.us.i = phi ptr [ %.2718.lcssa.i, %.preheader2505.us.us.preheader.i ], [ %i.ahf, %._crit_edge.split.us.us2728.us.i ] ; 2 uses
  %.162713.us.us.i = phi <4 x float> [ %.112321.lcssa.i, %.preheader2505.us.us.preheader.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2728.us.i ]
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2498_crit_edge.us.us.us.i, %.preheader2505.us.us.i
  %indvars.iv3317.i = phi i64 [ %indvars.iv.next3318.i, %..loopexit2498_crit_edge.us.us.us.i ], [ 0, %.preheader2505.us.us.i ] ; 3 uses
  %.172705.us.us.us.i = phi <4 x float> [ %.20.us.us.us.i, %..loopexit2498_crit_edge.us.us.us.i ], [ %.162713.us.us.i, %.preheader2505.us.us.i ] ; 3 uses
  %i.afw = trunc i64 %indvars.iv3317.i to i32
  %i.afx = mul i32 %i.afm, %i.afw
  %.reass2710.us.us.us.i = add i32 %i.afx, %invariant.op2709.i ; 3 uses
  %i.afy = icmp slt i32 %.reass2710.us.us.us.i, 0
  br i1 %i.afy, label %..loopexit2498_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.afz = srem i32 %.reass2710.us.us.us.i, %i.afo
  %i.aga = sdiv i32 %.reass2710.us.us.us.i, %i.afo ; 2 uses
  %.not922.us.us.us.i = icmp eq i32 %i.afz, 0
  %.not923.us.us.us.i = icmp slt i32 %i.aga, %i.lk
  %or.cond422 = select i1 %.not922.us.us.us.i, i1 %.not923.us.us.us.i, i1 false
  br i1 %or.cond422, label %.preheader2497.us.us.us.i, label %..loopexit2498_crit_edge.us.us.us.i

bb.bs:                                            ; preds = %.preheader2497.us.us.us.i, %bb.bu
  %indvars.iv3312.i = phi i64 [ 0, %.preheader2497.us.us.us.i ], [ %indvars.iv.next3313.i, %bb.bu ] ; 3 uses
  %.182701.us.us.us.i = phi <4 x float> [ %.172705.us.us.us.i, %.preheader2497.us.us.us.i ], [ %.19.us.us.us.i, %bb.bu ] ; 3 uses
  %i.agb = trunc i64 %indvars.iv3312.i to i32
  %i.agc = mul i32 %i.afq, %i.agb
  %.reass.us.us2727.us.i = add i32 %invariant.op2704.i, %i.agc ; 3 uses
  %i.agd = icmp slt i32 %.reass.us.us2727.us.i, 0
  br i1 %i.agd, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.age = srem i32 %.reass.us.us2727.us.i, %i.afs
  %i.agf = sdiv i32 %.reass.us.us2727.us.i, %i.afs ; 2 uses
  %.not924.us.us.us.i = icmp eq i32 %i.age, 0
  %.not925.us.us.us.i = icmp slt i32 %i.agf, %i.lj
  %or.cond423 = select i1 %.not924.us.us.us.i, i1 %.not925.us.us.us.i, i1 false
  br i1 %or.cond423, label %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, label %bb.bu

_ZN4ncnn3MatD2Ev.exit958.us.us.us.i:              ; preds = %bb.bt
  %i.agg = add nuw nsw i64 %indvars.iv3312.i, %i.ahd
  %i.agh = shl i64 %i.agg, 2
  %i.agi = and i64 %i.agh, 4294967292
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %.37192715.us.us.i, i64 %i.agi
  %i.agk = load i32, ptr %i.ag, align 4, !tbaa !56, !noalias !358
  %i.agl = load ptr, ptr %1, align 8, !tbaa !18, !noalias !358
  %i.agm = load i64, ptr %i.jt, align 8, !tbaa !20, !noalias !358
  %i.agn = mul i64 %i.agm, %indvars.iv3322.i
  %i.ago = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !358 ; 2 uses
  %i.agp = mul i64 %i.agn, %i.ago
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.agp
  %i.agr = sext i32 %i.agk to i64
  %i.ags = mul nsw i64 %i.agr, %i.ahe
  %i.agt = mul i64 %i.ags, %i.ago
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agq, i64 %i.agt
  %i.agv = sext i32 %i.agf to i64
  %i.agw = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.agv
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !39
  %i.agy = insertelement <4 x float> poison, float %i.agx, i64 0
  %i.agz = shufflevector <4 x float> %i.agy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aha = load <4 x float>, ptr %i.agj, align 16, !tbaa !310
  %i.ahb = fmul fast <4 x float> %i.agz, %i.aha
  %i.ahc = fadd fast <4 x float> %i.ahb, %.182701.us.us.us.i
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, %bb.bt, %bb.bs
  %.19.us.us.us.i = phi nsz <4 x float> [ %.182701.us.us.us.i, %bb.bs ], [ %i.ahc, %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i ], [ %.182701.us.us.us.i, %bb.bt ] ; 2 uses
  %indvars.iv.next3313.i = add nuw nsw i64 %indvars.iv3312.i, 1 ; 2 uses
  %exitcond3316.not.i = icmp eq i64 %indvars.iv.next3313.i, %i.afu
  br i1 %exitcond3316.not.i, label %..loopexit2498_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !361

..loopexit2498_crit_edge.us.us.us.i:              ; preds = %bb.bu, %bb.br, %bb.bq
  %.20.us.us.us.i = phi nsz <4 x float> [ %.172705.us.us.us.i, %bb.bq ], [ %.172705.us.us.us.i, %bb.br ], [ %.19.us.us.us.i, %bb.bu ] ; 3 uses
  %indvars.iv.next3318.i = add nuw nsw i64 %indvars.iv3317.i, 1 ; 2 uses
  %exitcond3321.not.i = icmp eq i64 %indvars.iv.next3318.i, %wide.trip.count3269.i
  br i1 %exitcond3321.not.i, label %._crit_edge.split.us.us2728.us.i, label %bb.bq, !llvm.loop !362

.preheader2497.us.us.us.i:                        ; preds = %bb.br
  %i.ahd = mul nuw nsw i64 %indvars.iv3317.i, %i.afu
  %i.ahe = sext i32 %i.aga to i64
  br label %bb.bs

._crit_edge.split.us.us2728.us.i:                 ; preds = %..loopexit2498_crit_edge.us.us.us.i
  %i.ahf = getelementptr inbounds [4 x i8], ptr %.37192715.us.us.i, i64 %i.nb
  %indvars.iv.next3323.i = add nuw nsw i64 %indvars.iv3322.i, 1 ; 2 uses
  %i.ahg = trunc nuw i64 %indvars.iv.next3323.i to i32
  %i.ahh = icmp sgt i32 %i.li, %i.ahg
  br i1 %i.ahh, label %.preheader2505.us.us.i, label %._crit_edge2717.i, !llvm.loop !363

._crit_edge2717.i:                                ; preds = %._crit_edge.split.us.us2728.us.i, %.preheader2505.lr.ph.i, %.preheader2509.i
  %.16.lcssa.i = phi <4 x float> [ %.112321.lcssa.i, %.preheader2509.i ], [ %.112321.lcssa.i, %.preheader2505.lr.ph.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2728.us.i ]
  %i.ahi = fadd fast <4 x float> %.52344.lcssa.i, %.52359.lcssa.i
  %i.ahj = fadd fast <4 x float> %i.ahi, %.102334.lcssa.i
  %i.ahk = fadd fast <4 x float> %i.ahj, %.16.lcssa.i ; 10 uses
  switch i32 %i.mb, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.bv
    i32 2, label %bb.bw
    i32 3, label %bb.bx
    i32 4, label %bb.by
    i32 5, label %bb.bz
    i32 6, label %bb.ca
  ]

bb.bv:                                            ; preds = %._crit_edge2717.i
  %i.ahl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahk, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bw:                                            ; preds = %._crit_edge2717.i
  %i.ahm = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !39
  %i.aho = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ahk)
  %i.ahp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ahk)
  %i.ahq = insertelement <4 x float> poison, float %i.ahn, i64 0
  %i.ahr = shufflevector <4 x float> %i.ahq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahs = fmul fast <4 x float> %i.ahr, %i.ahp
  %i.aht = fadd fast <4 x float> %i.ahs, %i.aho
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bx:                                            ; preds = %._crit_edge2717.i
  %i.ahu = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !39
  %i.ahw = insertelement <4 x float> poison, float %i.ahv, i64 0
  %i.ahx = shufflevector <4 x float> %i.ahw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !39
  %i.aia = insertelement <4 x float> poison, float %i.ahz, i64 0
  %i.aib = shufflevector <4 x float> %i.aia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aic = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahk, <4 x float> nofpclass(nan inf) %i.ahx)
  %i.aid = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aic, <4 x float> nofpclass(nan inf) %i.aib)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.by:                                            ; preds = %._crit_edge2717.i
  %i.aie = fneg fast <4 x float> %i.ahk
  %i.aif = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aie, <4 x float> splat (float f0x42B0C0A5))
  %i.aig = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aif, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aih = fmul fast <4 x float> %i.aig, splat (float f0x3FB8AA3B)
  %i.aii = fadd fast <4 x float> %i.aih, splat (float 5.000000e-01) ; 2 uses
  %i.aij = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aii)
  %i.aik = sitofp fast <4 x i32> %i.aij to <4 x float> ; 2 uses
  %i.ail = fcmp fast olt <4 x float> %i.aii, %i.aik
  %i.aim = select <4 x i1> %i.ail, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ain = fsub fast <4 x float> %i.aik, %i.aim   ; 2 uses
  %i.aio = fmul fast <4 x float> %i.ain, splat (float f0x3F317218)
  %i.aip = fsub fast <4 x float> %i.aig, %i.aio   ; 8 uses
  %i.aiq = fmul fast <4 x float> %i.aip, %i.aip
  %i.air = fmul fast <4 x float> %i.aip, splat (float f0x39506967)
  %i.ais = fadd fast <4 x float> %i.air, splat (float f0x3AB743CE)
  %i.ait = fmul fast <4 x float> %i.ais, %i.aip
  %i.aiu = fadd fast <4 x float> %i.ait, splat (float f0x3C088908)
  %i.aiv = fmul fast <4 x float> %i.aiu, %i.aip
  %i.aiw = fadd fast <4 x float> %i.aiv, splat (float f0x3D2AA9C1)
  %i.aix = fmul fast <4 x float> %i.aiw, %i.aip
  %i.aiy = fadd fast <4 x float> %i.aix, splat (float f0x3E2AAAAA)
  %i.aiz = fmul fast <4 x float> %i.aiy, %i.aip
  %i.aja = fadd fast <4 x float> %i.aiz, splat (float 5.000000e-01)
  %i.ajb = fmul fast <4 x float> %i.aiq, %i.aja
  %i.ajc = fadd fast <4 x float> %i.aip, %i.ajb
  %i.ajd = fadd fast <4 x float> %i.ajc, splat (float 1.000000e+00)
  %i.aje = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ain)
  %i.ajf = shl <4 x i32> %i.aje, splat (i32 23)
  %i.ajg = add <4 x i32> %i.ajf, splat (i32 1065353216)
  %i.ajh = bitcast <4 x i32> %i.ajg to <4 x float>
  %i.aji = fmul fast <4 x float> %i.ajd, %i.ajh
  %i.ajj = fadd fast <4 x float> %i.aji, splat (float 1.000000e+00)
  %i.ajk = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ajj
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bz:                                            ; preds = %._crit_edge2717.i
  %i.ajl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahk, <4 x float> splat (float f0x42B0C0A5))
  %i.ajm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajl, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ajn = fmul fast <4 x float> %i.ajm, splat (float f0x3FB8AA3B)
  %i.ajo = fadd fast <4 x float> %i.ajn, splat (float 5.000000e-01) ; 2 uses
  %i.ajp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajo)
  %i.ajq = sitofp fast <4 x i32> %i.ajp to <4 x float> ; 2 uses
  %i.ajr = fcmp fast olt <4 x float> %i.ajo, %i.ajq
  %i.ajs = select <4 x i1> %i.ajr, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ajt = fsub fast <4 x float> %i.ajq, %i.ajs   ; 2 uses
  %i.aju = fmul fast <4 x float> %i.ajt, splat (float f0x3F317218)
  %i.ajv = fsub fast <4 x float> %i.ajm, %i.aju   ; 8 uses
  %i.ajw = fmul fast <4 x float> %i.ajv, %i.ajv
  %i.ajx = fmul fast <4 x float> %i.ajv, splat (float f0x39506967)
  %i.ajy = fadd fast <4 x float> %i.ajx, splat (float f0x3AB743CE)
  %i.ajz = fmul fast <4 x float> %i.ajy, %i.ajv
  %i.aka = fadd fast <4 x float> %i.ajz, splat (float f0x3C088908)
  %i.akb = fmul fast <4 x float> %i.aka, %i.ajv
  %i.akc = fadd fast <4 x float> %i.akb, splat (float f0x3D2AA9C1)
  %i.akd = fmul fast <4 x float> %i.akc, %i.ajv
  %i.ake = fadd fast <4 x float> %i.akd, splat (float f0x3E2AAAAA)
  %i.akf = fmul fast <4 x float> %i.ake, %i.ajv
  %i.akg = fadd fast <4 x float> %i.akf, splat (float 5.000000e-01)
  %i.akh = fmul fast <4 x float> %i.ajw, %i.akg
  %i.aki = fadd fast <4 x float> %i.ajv, %i.akh
  %i.akj = fadd fast <4 x float> %i.aki, splat (float 1.000000e+00)
  %i.akk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajt)
  %i.akl = shl <4 x i32> %i.akk, splat (i32 23)
  %i.akm = add <4 x i32> %i.akl, splat (i32 1065353216)
  %i.akn = bitcast <4 x i32> %i.akm to <4 x float>
  %i.ako = fmul fast <4 x float> %i.akj, %i.akn
  %i.akp = fadd fast <4 x float> %i.ako, splat (float 1.000000e+00) ; 2 uses
  %i.akq = fcmp fast ole <4 x float> %i.akp, zeroinitializer
  %i.akr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akp, <4 x float> splat (float f0x00800000))
  %i.aks = bitcast <4 x float> %i.akr to <4 x i32> ; 2 uses
  %i.akt = lshr <4 x i32> %i.aks, splat (i32 23)
  %i.aku = and <4 x i32> %i.aks, splat (i32 -2139095041)
  %i.akv = or disjoint <4 x i32> %i.aku, splat (i32 1056964608)
  %i.akw = bitcast <4 x i32> %i.akv to <4 x float> ; 3 uses
  %i.akx = add nsw <4 x i32> %i.akt, splat (i32 -127)
  %i.aky = sitofp fast <4 x i32> %i.akx to <4 x float> ; 2 uses
  %i.akz = fadd fast <4 x float> %i.aky, splat (float 1.000000e+00)
  %i.ala = fcmp fast olt <4 x float> %i.akw, splat (float f0x3F3504F3) ; 2 uses
  %i.alb = select <4 x i1> %i.ala, <4 x float> %i.akw, <4 x float> zeroinitializer
  %i.alc = fadd fast <4 x float> %i.akw, splat (float -1.000000e+00)
  %i.ald = select fast <4 x i1> %i.ala, <4 x float> %i.aky, <4 x float> %i.akz
  %i.ale = fadd fast <4 x float> %i.alc, %i.alb   ; 12 uses
  %i.alf = fmul fast <4 x float> %i.ale, %i.ale   ; 2 uses
  %i.alg = fmul fast <4 x float> %i.ale, splat (float f0x3D9021BB)
  %i.alh = fadd fast <4 x float> %i.alg, splat (float f0xBDEBD1B8)
  %i.ali = fmul fast <4 x float> %i.alh, %i.ale
  %i.alj = fadd fast <4 x float> %i.ali, splat (float f0x3DEF251A)
  %i.alk = fmul fast <4 x float> %i.alj, %i.ale
  %i.all = fadd fast <4 x float> %i.alk, splat (float f0xBDFE5D4F)
  %i.alm = fmul fast <4 x float> %i.all, %i.ale
  %i.aln = fadd fast <4 x float> %i.alm, splat (float f0x3E11E9BF)
  %i.alo = fmul fast <4 x float> %i.aln, %i.ale
  %i.alp = fadd fast <4 x float> %i.alo, splat (float f0xBE2AAE50)
  %i.alq = fmul fast <4 x float> %i.alp, %i.ale
  %i.alr = fadd fast <4 x float> %i.alq, splat (float f0x3E4CCEAC)
  %i.als = fmul fast <4 x float> %i.alr, %i.ale
  %i.alt = fadd fast <4 x float> %i.als, splat (float f0xBE7FFFFC)
  %i.alu = fmul fast <4 x float> %i.alt, %i.ale
  %i.alv = fadd fast <4 x float> %i.alu, splat (float f0x3EAAAAAA)
  %i.alw = fmul fast <4 x float> %i.alf, %i.ale
  %reass.mul.i.a = fmul fast <4 x float> %i.alw, %i.alv
  %.neg2450.i = fmul fast <4 x float> %i.alf, splat (float -5.000000e-01)
  %reass.mul2452.i = fmul fast <4 x float> %i.ald, splat (float f0x3F317218)
  %8 = fadd fast <4 x float> %i.ale, %.neg2450.i
  %i.alx = fadd fast <4 x float> %8, %reass.mul.i.a
  %i.aly = fadd fast <4 x float> %i.alx, %reass.mul2452.i
  %.neg.i = fmul fast <4 x float> %i.aly, splat (float -2.000000e+00)
  %i.alz = select fast <4 x i1> %i.akq, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.ama = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.alz, <4 x float> splat (float f0x42B0C0A5))
  %i.amb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ama, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.amc = fmul fast <4 x float> %i.amb, splat (float f0x3FB8AA3B)
  %i.amd = fadd fast <4 x float> %i.amc, splat (float 5.000000e-01) ; 2 uses
  %i.ame = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amd)
  %i.amf = sitofp fast <4 x i32> %i.ame to <4 x float> ; 2 uses
  %i.amg = fcmp fast olt <4 x float> %i.amd, %i.amf
  %i.amh = select <4 x i1> %i.amg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ami = fsub fast <4 x float> %i.amf, %i.amh   ; 2 uses
  %i.amj = fmul fast <4 x float> %i.ami, splat (float f0x3F317218)
  %i.amk = fsub fast <4 x float> %i.amb, %i.amj   ; 8 uses
  %i.aml = fmul fast <4 x float> %i.amk, %i.amk
  %i.amm = fmul fast <4 x float> %i.amk, splat (float f0x39506967)
  %i.amn = fadd fast <4 x float> %i.amm, splat (float f0x3AB743CE)
  %i.amo = fmul fast <4 x float> %i.amn, %i.amk
  %i.amp = fadd fast <4 x float> %i.amo, splat (float f0x3C088908)
  %i.amq = fmul fast <4 x float> %i.amp, %i.amk
  %i.amr = fadd fast <4 x float> %i.amq, splat (float f0x3D2AA9C1)
  %i.ams = fmul fast <4 x float> %i.amr, %i.amk
  %i.amt = fadd fast <4 x float> %i.ams, splat (float f0x3E2AAAAA)
  %i.amu = fmul fast <4 x float> %i.amt, %i.amk
  %i.amv = fadd fast <4 x float> %i.amu, splat (float 5.000000e-01)
  %i.amw = fmul fast <4 x float> %i.aml, %i.amv
  %i.amx = fadd fast <4 x float> %i.amk, %i.amw
  %i.amy = fadd fast <4 x float> %i.amx, splat (float 1.000000e+00)
  %i.amz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ami)
  %i.ana = shl <4 x i32> %i.amz, splat (i32 23)
  %i.anb = add <4 x i32> %i.ana, splat (i32 1065353216)
  %i.anc = bitcast <4 x i32> %i.anb to <4 x float>
  %i.and = fmul fast <4 x float> %i.amy, %i.anc
  %i.ane = fadd fast <4 x float> %i.and, splat (float 1.000000e+00)
  %i.anf = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ane
  %i.ang = fadd fast <4 x float> %i.anf, splat (float -1.000000e+00)
  %i.anh = fmul fast <4 x float> %i.ang, %i.ahk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ca:                                            ; preds = %._crit_edge2717.i
  %i.ani = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !39
  %i.ank = insertelement <4 x float> poison, float %i.anj, i64 0
  %i.anl = shufflevector <4 x float> %i.ank, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ani, i64 4
  %i.ann = load float, ptr %i.anm, align 4, !tbaa !39
  %i.ano = insertelement <4 x float> poison, float %i.ann, i64 0
  %i.anp = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anq = fmul fast <4 x float> %i.anl, %i.ahk
  %i.anr = fadd fast <4 x float> %i.anq, %i.anp
  %i.ans = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.anr, <4 x float> zeroinitializer)
  %i.ant = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ans, <4 x float> splat (float 1.000000e+00))
  %i.anu = fmul fast <4 x float> %i.ant, %i.ahk
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %._crit_edge2717.i
  %.0.i.i = phi nsz <4 x float> [ %i.anu, %bb.ca ], [ %i.ahl, %bb.bv ], [ %i.aht, %bb.bw ], [ %i.aid, %bb.bx ], [ %i.ajk, %bb.by ], [ %i.anh, %bb.bz ], [ %i.ahk, %._crit_edge2717.i ] ; 5 uses
  switch i32 %i.ln, label %bb.cc [
    i32 4, label %.thread.i
    i32 1, label %bb.cb
  ]

.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  store <4 x float> %.0.i.i, ptr %.12732.i, align 1, !tbaa !310
  %i.anv = getelementptr inbounds nuw i8, ptr %.12732.i, i64 16
  br label %bb.cc

bb.cb:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.sroa.01678.0.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 0
  store float %.sroa.01678.0.vec.extract.i, ptr %.12732.i, align 4, !tbaa !39
  %.sroa.01678.4.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 1
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %.12732.i, i64 %i.nc
  store float %.sroa.01678.4.vec.extract.i, ptr %i.anw, align 4, !tbaa !39
  %.sroa.01678.8.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 2
  %i.anx = getelementptr inbounds nuw i8, ptr %.12732.i, i64 %.idx.i
  store float %.sroa.01678.8.vec.extract.i, ptr %i.anx, align 4, !tbaa !39
  %.sroa.01678.12.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 3
  %i.any = getelementptr inbounds nuw i8, ptr %.12732.i, i64 %.idx921.i
  store float %.sroa.01678.12.vec.extract.i, ptr %i.any, align 4, !tbaa !39
  %i.anz = getelementptr inbounds nuw i8, ptr %.12732.i, i64 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.3.i = phi ptr [ %i.anz, %bb.cb ], [ %.12732.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.anv, %.thread.i ] ; 2 uses
  %i.aoa = add nuw nsw i32 %.07152731.i, 1        ; 2 uses
  %exitcond3325.not.i = icmp eq i32 %i.aoa, %i.ll
  br i1 %exitcond3325.not.i, label %._crit_edge.i, label %bb.ay, !llvm.loop !364

._crit_edge2964.split.i:                          ; preds = %._crit_edge2962.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, %._crit_edge2737.i
  %i.aob = shl nsw i32 %i.ka, 1                   ; 2 uses
  %i.aoc = add nsw i32 %i.aob, %i.jy
  %i.aod = icmp slt i32 %i.aoc, %i.iw
  br i1 %i.aod, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit

_ZN4ncnn3MatD2Ev.exit946.lr.ph.i:                 ; preds = %._crit_edge2964.split.i
  %i.aoe = load i32, ptr %i.ak, align 8, !tbaa !68
  %.fr3034.i = freeze i32 %i.aoe                  ; 3 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aog = load i32, ptr %i.aof, align 8, !tbaa !70
  %i.aoh = mul i32 %i.aog, %.fr3034.i             ; 14 uses
  %i.aoi = load i32, ptr %i.ag, align 4, !tbaa !56 ; 6 uses
  %i.aoj = load i32, ptr %i.ah, align 8, !tbaa !279 ; 5 uses
  %i.aok = load i32, ptr %i.ci, align 4, !tbaa !56 ; 2 uses
  %i.aol = load i32, ptr %i.cj, align 16, !tbaa !279 ; 2 uses
  %i.aom = load ptr, ptr %4, align 16, !tbaa !18, !noalias !365
  %i.aon = load i64, ptr %i.cl, align 16, !tbaa !20, !noalias !365
  %i.aoo = load i64, ptr %i.ce, align 16, !tbaa !57, !noalias !365
  %factor.op.mul3155.i = mul i64 %i.aoo, %i.aon
  %i.aop = icmp slt i32 %i.aol, 1
  %i.aoq = icmp slt i32 %i.aok, 1
  %i.aor = icmp sgt i32 %i.aoh, 7
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %brmerge3164.i = select i1 %i.aop, i1 true, i1 %i.aoq
  br i1 %brmerge3164.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  %i.aot = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aov = load ptr, ptr %i.im, align 8, !tbaa !18, !noalias !368
  %i.aow = load i64, ptr %i.aou, align 8, !tbaa !20, !noalias !368
  %i.aox = load i64, ptr %i.aot, align 8, !tbaa !57, !noalias !368
  %factor.op.mul3158.i = mul i64 %i.aox, %i.aow
  %i.aoy = add i32 %i.aoh, -8                     ; 2 uses
  %i.aoz = lshr i32 %i.aoy, 1
  %i.apa = and i32 %i.aoz, 2147483644
  %narrow3577.i = add nuw i32 %i.apa, 4
  %i.apb = zext i32 %narrow3577.i to i64
  %i.apc = and i32 %i.aoy, -8
  %i.apd = add i32 %i.apc, 8
  %i.ape = sext i32 %i.aoh to i64
  %i.apf = sext i32 %i.jy to i64
  %i.apg = sext i32 %i.aob to i64
  %i.aph = add nsw i64 %i.apg, %i.apf
  %i.api = sext i32 %i.iw to i64
  %invariant.op3595.i = add nsw i64 %i.ape, -7
  %i.apj = sext i32 %i.aoi to i64                 ; 5 uses
  %i.apk = and i32 %i.aoh, -8
  br label %_ZN4ncnn3MatD2Ev.exit946.i

_ZN4ncnn3MatD2Ev.exit957.i:                       ; preds = %._crit_edge2962.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i
  %indvars.iv3414.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i ], [ %indvars.iv.next3415.i, %._crit_edge2962.i ] ; 2 uses
  %i.apl = shl nuw nsw i64 %indvars.iv3414.i, 1
  %i.apm = add nsw i64 %i.apl, %i.ld              ; 4 uses
  %.reass.i = mul i64 %i.apm, %factor.op.mul.i
  %i.apn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.reass.i
  %i.apo = add nsw i64 %i.apm, 1
  %.reass2967.i = mul i64 %i.apo, %factor.op.mul.i
  %i.app = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.reass2967.i
  %i.apq = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not903.i = icmp eq ptr %i.apq, null
  %i.apr = getelementptr inbounds [4 x i8], ptr %i.apq, i64 %i.apm
  %i.aps = trunc nsw i64 %i.apm to i32            ; 3 uses
  %i.apt = sdiv i32 %i.aps, 8
  %i.apu = srem i32 %i.aps, 8
  %.lhs.trunc2410.i = trunc nsw i32 %i.apu to i8
  %i.apv = sdiv i8 %.lhs.trunc2410.i, 4
  %.sext2411.i = sext i8 %i.apv to i32
  %i.apw = add nsw i32 %i.apt, %.sext2411.i
  %i.apx = srem i32 %i.aps, 4
  %.lhs.trunc2412.i = trunc nsw i32 %i.apx to i8
  %i.apy = sdiv i8 %.lhs.trunc2412.i, 2
  %.sext2413.i = sext i8 %i.apy to i32
  %i.apz = add nsw i32 %i.apw, %.sext2413.i
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = load i32, ptr %i.g, align 4
  %.reass2971.i = mul i64 %factor.op.mul2970.i, %i.aqa
  %i.aqc = getelementptr i8, ptr %i.kt, i64 %.reass2971.i ; 3 uses
  br label %.preheader2496.i

.preheader2496.i:                                 ; preds = %._crit_edge2956.i, %_ZN4ncnn3MatD2Ev.exit957.i
  %.07382961.i = phi ptr [ %i.apn, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bgk, %._crit_edge2956.i ]
  %.07402960.i = phi ptr [ %i.app, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bgl, %._crit_edge2956.i ]
  %.07422959.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %.neg2447.i, %._crit_edge2956.i ]
  %i.aqd = load i32, ptr %i.b, align 4            ; 2 uses
  %i.aqe = icmp sgt i32 %i.aqd, 0                 ; 4 uses
  %.neg2447.i = add nuw nsw i32 %.07422959.i, 1   ; 6 uses
  %i.aqf = load i32, ptr %i.k, align 4            ; 4 uses
  %i.aqg = shl i32 %i.aqf, 4
  %i.aqh = sext i32 %i.aqg to i64                 ; 2 uses
  %i.aqi = shl i32 %i.aqf, 3
  %i.aqj = sext i32 %i.aqi to i64                 ; 3 uses
  %i.aqk = shl i32 %i.aqf, 2
  %i.aql = sext i32 %i.aqk to i64                 ; 3 uses
  %i.aqm = shl nsw i32 %i.aqf, 1
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = mul nsw i64 %i.aqh, %i.kz
  %scevgep3333.i = getelementptr i8, ptr %i.aqc, i64 %i.aqo
  %wide.trip.count3348.i = zext nneg i32 %i.aqd to i64 ; 5 uses
  br label %bb.cd

._crit_edge2962.i:                                ; preds = %._crit_edge2956.i
  %indvars.iv.next3415.i = add nuw nsw i64 %indvars.iv3414.i, 1 ; 2 uses
  %exitcond3418.not.i = icmp eq i64 %indvars.iv.next3415.i, %wide.trip.count3417.i
  br i1 %exitcond3418.not.i, label %._crit_edge2964.split.i, label %_ZN4ncnn3MatD2Ev.exit957.i, !llvm.loop !371

._crit_edge2956.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
  %exitcond3413.not.i = icmp eq i32 %.neg2447.i, %i.kj
  br i1 %exitcond3413.not.i, label %._crit_edge2962.i, label %.preheader2496.i, !llvm.loop !372

bb.cd:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, %.preheader2496.i
  %.17392955.i = phi ptr [ %.07382961.i, %.preheader2496.i ], [ %i.bgk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.17412954.i = phi ptr [ %.07402960.i, %.preheader2496.i ], [ %i.bgl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.07442953.i = phi i32 [ 0, %.preheader2496.i ], [ %i.bgm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 5 uses
  br i1 %.not903.i, label %_ZN4ncnn3MatD2Ev.exit955.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aqp = load <2 x float>, ptr %i.apr, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit955.i

_ZN4ncnn3MatD2Ev.exit955.i:                       ; preds = %bb.ce, %bb.cd
  %i.aqq = phi <2 x float> [ %i.aqp, %bb.ce ], [ zeroinitializer, %bb.cd ]
  br i1 %i.kp, label %.preheader2494.lr.ph.i, label %._crit_edge2768.i

.preheader2494.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit955.i
  %i.aqr = load i32, ptr %i.d, align 4
  %i.aqs = load i32, ptr %i.j, align 4
  %invariant.op2757.i = sub i32 %.neg2447.i, %i.aqs
  %i.aqt = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aqu = load i32, ptr %i.a, align 4
  %.fr3168.i.a = freeze i32 %i.aqu                ; 2 uses
  %i.aqv = load i32, ptr %i.c, align 4
  %i.aqw = load i32, ptr %i.i, align 4
  %.neg2449.i = add nuw nsw i32 %.07442953.i, 1
  %invariant.op2748.i = sub i32 %.neg2449.i, %i.aqw
  %i.aqx = load i32, ptr %i.e, align 4            ; 2 uses
  %i.aqy = icmp sgt i32 %.fr3168.i.a, 0
  %or.cond3625.i = and i1 %i.aqe, %i.aqy
  br i1 %or.cond3625.i, label %.preheader2494.us.us.preheader.i, label %._crit_edge2768.i
end_hunk_1
begin_hunk_2_@_ZNK4ncnn21Deconvolution_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.axt = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !390 ; 2 uses
  %factor.op.mul.us.us.us2852.us.i.us = mul i64 %i.axt, %i.axs ; 4 uses
  %i.axu = mul i64 %i.axl, %i.axt
  %invariant.gep.us.us.us2853.us.i.us = getelementptr i8, ptr %i.axr, i64 %i.axu
  %i.axv = sext i32 %i.axq to i64
  %invariant.gep2789.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2853.us.i.us, i64 %i.axv ; 4 uses
  %.reass.us.us2831.us.us.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %indvars.iv3376.i
  %gep2790.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2831.us.us.i.us
  %i.axw = load float, ptr %gep2790.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.03507.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.axw, i64 0
  %.reass.us.us2831.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.avr
  %gep2790.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2831.us.us.1.i.us
  %i.axx = load float, ptr %gep2790.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.03507.4.vec.insert.i.us = insertelement <4 x float> %.sroa.03507.0.vec.insert.i.us, float %i.axx, i64 1
  %.reass.us.us2831.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.avs
  %gep2790.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2831.us.us.2.i.us
  %i.axy = load float, ptr %gep2790.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.03507.8.vec.insert.i.us = insertelement <4 x float> %.sroa.03507.4.vec.insert.i.us, float %i.axy, i64 2
  %.reass.us.us2831.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.avt
  %gep2790.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2831.us.us.3.i.us
  %i.axz = load float, ptr %gep2790.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.03507.12.vec.insert.i.us = insertelement <4 x float> %.sroa.03507.8.vec.insert.i.us, float %i.axz, i64 3 ; 2 uses
  %i.aya = add nuw nsw i64 %indvars.iv3361.i.us, %i.axj
  %i.ayb = shl i64 %i.aya, 3
  %i.ayc = and i64 %i.ayb, 4294967288
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.17682839.us.us.i, i64 %i.ayc ; 2 uses
  %i.aye = load <4 x float>, ptr %i.ayd, align 16, !tbaa !310
  %i.ayf = fmul fast <4 x float> %i.aye, %.sroa.03507.12.vec.insert.i.us
  %i.ayg = fadd fast <4 x float> %i.ayf, %.223762792.us2804.us.us.us.i.us
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayd, i64 16
  %i.ayi = load <4 x float>, ptr %i.ayh, align 16, !tbaa !310
  %i.ayj = fmul fast <4 x float> %i.ayi, %.sroa.03507.12.vec.insert.i.us
  %i.ayk = fadd fast <4 x float> %i.ayj, %.223712793.us2803.us.us.us.i.us
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.cp, %.lr.ph.split.us2801.us.us.us.i.us
  %.32377.us2808.us.us.us.i.us = phi nsz <4 x float> [ %.223762792.us2804.us.us.us.i.us, %.lr.ph.split.us2801.us.us.us.i.us ], [ %i.ayg, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223762792.us2804.us.us.us.i.us, %bb.cp ] ; 2 uses
  %.32372.us2809.us.us.us.i.us = phi nsz <4 x float> [ %.223712793.us2803.us.us.us.i.us, %.lr.ph.split.us2801.us.us.us.i.us ], [ %i.ayk, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223712793.us2803.us.us.us.i.us, %bb.cp ] ; 2 uses
  %indvars.iv.next3362.i.us = add nuw nsw i64 %indvars.iv3361.i.us, 1 ; 2 uses
  %exitcond3365.not.i.us = icmp eq i64 %indvars.iv.next3362.i.us, %i.avn
  br i1 %exitcond3365.not.i.us, label %..loopexit2488_crit_edge.us.us.us.i.us189, label %.lr.ph.split.us2801.us.us.us.i.us, !llvm.loop !388

..loopexit2488_crit_edge.us.us.us.i.us189:        ; preds = %bb.cq, %bb.co, %.preheader2493.us.us.i.split.us181
  %.42378.us.us.us.i.us190 = phi nsz <4 x float> [ %.123752815.us.us.us.i.us184, %.preheader2493.us.us.i.split.us181 ], [ %.123752815.us.us.us.i.us184, %bb.co ], [ %.32377.us2808.us.us.us.i.us, %bb.cq ] ; 2 uses
  %.42373.us.us.us.i.us191 = phi nsz <4 x float> [ %.123702816.us.us.us.i.us183, %.preheader2493.us.us.i.split.us181 ], [ %.123702816.us.us.us.i.us183, %bb.co ], [ %.32372.us2809.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3372.i.us192 = add nuw nsw i64 %indvars.iv3371.i.us182, 1 ; 2 uses
  %exitcond3375.not.i.us193 = icmp eq i64 %indvars.iv.next3372.i.us192, %wide.trip.count3348.i
  br i1 %exitcond3375.not.i.us193, label %._crit_edge2819.split.us.us.us.i, label %.preheader2493.us.us.i.split.us181, !llvm.loop !389

._crit_edge2819.split.us.us.us.i:                 ; preds = %..loopexit2488_crit_edge.us.us.us.i.us189, %..loopexit2488_crit_edge.us.us.us.i.us, %.preheader2493.us.us.i
  %.us-phi179 = phi <4 x float> [ %.42378.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023742835.us.us.i, %.preheader2493.us.us.i ], [ %.42378.us.us.us.i.us190, %..loopexit2488_crit_edge.us.us.us.i.us189 ] ; 2 uses
  %.us-phi180 = phi <4 x float> [ %.42373.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023692836.us.us.i, %.preheader2493.us.us.i ], [ %.42373.us.us.us.i.us191, %..loopexit2488_crit_edge.us.us.us.i.us189 ] ; 2 uses
  %i.ayl = getelementptr inbounds [4 x i8], ptr %.17682839.us.us.i, i64 %i.aqj ; 2 uses
  %indvars.iv.next3377.i = add nuw nsw i64 %indvars.iv3376.i, 4 ; 2 uses
  %i.aym = trunc i64 %indvars.iv.next3377.i to i32 ; 2 uses
  %i.ayn = or i32 %i.aym, 3
  %i.ayo = icmp slt i32 %i.ayn, %i.kf
  br i1 %i.ayo, label %.preheader2493.us.us.i, label %._crit_edge2841.i, !llvm.loop !393

._crit_edge2841.i:                                ; preds = %._crit_edge2819.split.us.us.us.i, %.preheader2493.us.preheader.i, %.preheader2493.preheader.i, %._crit_edge2768.i
  %.02374.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2768.i ], [ zeroinitializer, %.preheader2493.preheader.i ], [ zeroinitializer, %.preheader2493.us.preheader.i ], [ %.us-phi179, %._crit_edge2819.split.us.us.us.i ] ; 2 uses
  %.02369.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2768.i ], [ zeroinitializer, %.preheader2493.preheader.i ], [ zeroinitializer, %.preheader2493.us.preheader.i ], [ %.us-phi180, %._crit_edge2819.split.us.us.us.i ] ; 2 uses
  %.1772.lcssa.i = phi i32 [ %.0771.lcssa.i, %._crit_edge2768.i ], [ %i.ave, %.preheader2493.preheader.i ], [ %i.avm, %.preheader2493.us.preheader.i ], [ %i.aym, %._crit_edge2819.split.us.us.us.i ] ; 9 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2768.i ], [ %scevgep3354.i.a, %.preheader2493.preheader.i ], [ %scevgep3356.i, %.preheader2493.us.preheader.i ], [ %i.ayl, %._crit_edge2819.split.us.us.us.i ] ; 4 uses
  %i.ayp = shufflevector <4 x float> %.02374.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ayq = fadd fast <4 x float> %i.ayp, %.02374.lcssa.i ; 2 uses
  %i.ayr = shufflevector <4 x float> %i.auj, <4 x float> %i.auo, <2 x i32> <i32 1, i32 5>
  %i.ays = fadd fast <2 x float> %i.ayr, %i.aqq
  %i.ayt = shufflevector <4 x float> %.02369.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ayu = fadd fast <4 x float> %i.ayt, %.02369.lcssa.i ; 2 uses
  %i.ayv = shufflevector <4 x float> %i.auj, <4 x float> %i.auo, <2 x i32> <i32 0, i32 4>
  %i.ayw = fadd fast <2 x float> %i.ays, %i.ayv
  %i.ayx = shufflevector <4 x float> %i.ayq, <4 x float> %i.ayu, <2 x i32> <i32 1, i32 5>
  %i.ayy = fadd fast <2 x float> %i.ayw, %i.ayx
  %i.ayz = shufflevector <4 x float> %i.ayq, <4 x float> %i.ayu, <2 x i32> <i32 0, i32 4>
  %i.aza = fadd fast <2 x float> %i.ayy, %i.ayz   ; 4 uses
  %i.azb = or disjoint i32 %.1772.lcssa.i, 1
  %i.azc = icmp slt i32 %i.azb, %i.kf
  br i1 %i.azc, label %.preheader2492.lr.ph.i, label %.preheader2495.i

.preheader2492.lr.ph.i:                           ; preds = %._crit_edge2841.i
  %i.azd = load i32, ptr %i.d, align 4
  %i.aze = load i32, ptr %i.j, align 4
  %invariant.op2882.i = sub i32 %.neg2447.i, %i.aze
  %i.azf = load i32, ptr %i.f, align 4            ; 2 uses
  %i.azg = load i32, ptr %i.a, align 4
  %.fr3170.i.a = freeze i32 %i.azg                ; 2 uses
  %i.azh = load i32, ptr %i.c, align 4
  %i.azi = load i32, ptr %i.i, align 4
  %.neg2441.i = add nuw nsw i32 %.07442953.i, 1
  %invariant.op2873.i = sub i32 %.neg2441.i, %i.azi
  %i.azj = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.aqe, label %.preheader2492.lr.ph.split.us.i, label %.preheader2492.preheader.i

.preheader2492.preheader.i:                       ; preds = %.preheader2492.lr.ph.i
  %i.azk = add i32 %.1772.lcssa.i, 3
  %smax3379.i.a = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.azk)
  %reass.sub217 = sub i32 %smax3379.i.a, %.1772.lcssa.i
  %i.azl = add i32 %reass.sub217, -2              ; 2 uses
  %i.azm = lshr i32 %i.azl, 1
  %i.azn = zext nneg i32 %i.azm to i64
  %i.azo = shl nuw nsw i64 %i.azn, 2
  %i.azp = add nuw nsw i64 %i.azo, 4
  %i.azq = mul i64 %i.azp, %i.aql
  %scevgep3380.i.a = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.azq
  %i.azr = add i32 %.1772.lcssa.i, 2
  %i.azs = and i32 %i.azl, -2
  %i.azt = add i32 %i.azr, %i.azs
  br label %.preheader2495.i

.preheader2492.lr.ph.split.us.i:                  ; preds = %.preheader2492.lr.ph.i
  %i.azu = icmp sgt i32 %.fr3170.i.a, 0
  br i1 %i.azu, label %.preheader2492.us.us.preheader.i, label %.preheader2492.us.preheader.i

.preheader2492.us.preheader.i:                    ; preds = %.preheader2492.lr.ph.split.us.i
  %i.azv = add i32 %.1772.lcssa.i, 3
  %smax3381.i = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.azv)
  %reass.sub218 = sub i32 %smax3381.i, %.1772.lcssa.i
  %i.azw = add i32 %reass.sub218, -2              ; 2 uses
  %i.azx = lshr i32 %i.azw, 1
  %i.azy = zext nneg i32 %i.azx to i64
  %i.azz = shl nuw nsw i64 %i.azy, 2
  %i.baa = add nuw nsw i64 %i.azz, 4
  %i.bab = mul i64 %i.baa, %i.aql
  %scevgep3382.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bab
  %i.bac = add i32 %.1772.lcssa.i, 2
  %i.bad = and i32 %i.azw, -2
  %i.bae = add i32 %i.bac, %i.bad
  br label %.preheader2495.i

.preheader2492.us.us.preheader.i:                 ; preds = %.preheader2492.lr.ph.split.us.i
  %i.baf = zext nneg i32 %.fr3170.i.a to i64      ; 2 uses
  %i.bag = zext i32 %.1772.lcssa.i to i64
  br label %.preheader2492.us.us.i

.preheader2492.us.us.i:                           ; preds = %._crit_edge2879.split.us.us.us.i, %.preheader2492.us.us.preheader.i
  %indvars.iv3396.i = phi i64 [ %i.bag, %.preheader2492.us.us.preheader.i ], [ %indvars.iv.next3397.i, %._crit_edge2879.split.us.us.us.i ] ; 3 uses
  %.27692890.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2492.us.us.preheader.i ], [ %i.bbw, %._crit_edge2879.split.us.us.us.i ] ; 2 uses
  %i.bah = phi <2 x float> [ %i.aza, %.preheader2492.us.us.preheader.i ], [ %i.bbs, %._crit_edge2879.split.us.us.us.i ]
  %i.bai = add nuw nsw i64 %indvars.iv3396.i, 1
  br label %bb.cr

bb.cr:                                            ; preds = %..loopexit2486_crit_edge.us.us.us.i, %.preheader2492.us.us.i
  %indvars.iv3391.i = phi i64 [ %indvars.iv.next3392.i, %..loopexit2486_crit_edge.us.us.us.i ], [ 0, %.preheader2492.us.us.i ] ; 3 uses
  %i.baj = phi <2 x float> [ %i.bbs, %..loopexit2486_crit_edge.us.us.us.i ], [ %i.bah, %.preheader2492.us.us.i ] ; 3 uses
  %i.bak = trunc i64 %indvars.iv3391.i to i32
  %i.bal = mul i32 %i.azd, %i.bak
  %.reass2883.us.us.us.i = add i32 %i.bal, %invariant.op2882.i ; 3 uses
  %i.bam = icmp slt i32 %.reass2883.us.us.us.i, 0
  br i1 %i.bam, label %..loopexit2486_crit_edge.us.us.us.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ban = srem i32 %.reass2883.us.us.us.i, %i.azf
  %i.bao = sdiv i32 %.reass2883.us.us.us.i, %i.azf ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.ban, 0
  %.not909.us.us.us.i = icmp slt i32 %i.bao, %i.kh
  %or.cond430 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond430, label %.preheader2485.us.us.us.i, label %..loopexit2486_crit_edge.us.us.us.i

bb.ct:                                            ; preds = %.preheader2485.us.us.us.i, %.loopexit2482.us.us.us.i
  %indvars.iv3386.i = phi i64 [ 0, %.preheader2485.us.us.us.i ], [ %indvars.iv.next3387.i, %.loopexit2482.us.us.us.i ] ; 3 uses
  %i.bap = phi <2 x float> [ %i.baj, %.preheader2485.us.us.us.i ], [ %i.bbr, %.loopexit2482.us.us.us.i ] ; 3 uses
  %i.baq = trunc i64 %indvars.iv3386.i to i32
  %i.bar = mul i32 %i.azh, %i.baq
  %.reass2874.us.us.us.i = add i32 %invariant.op2873.i, %i.bar ; 3 uses
  %i.bas = icmp slt i32 %.reass2874.us.us.us.i, 0
  br i1 %i.bas, label %.loopexit2482.us.us.us.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.bat = srem i32 %.reass2874.us.us.us.i, %i.azj
  %i.bau = sdiv i32 %.reass2874.us.us.us.i, %i.azj ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.bat, 0
  %.not911.us.us.us.i = icmp slt i32 %i.bau, %i.kg
  %or.cond431 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond431, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2482.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.cu
  %i.bav = add nuw nsw i64 %indvars.iv3386.i, %i.bbt
  %i.baw = shl i64 %i.bav, 2
  %i.bax = and i64 %i.baw, 4294967292
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %.27692890.us.us.i, i64 %i.bax
  %i.baz = load ptr, ptr %1, align 8, !tbaa !18, !noalias !394
  %i.bba = load i64, ptr %i.kq, align 8, !tbaa !20, !noalias !394
  %i.bbb = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !394 ; 2 uses
  %factor.op.mul.us.us.us2909.i = mul i64 %i.bbb, %i.bba ; 2 uses
  %i.bbc = mul i64 %i.bbv, %i.bbb
  %invariant.gep.us.us.us2910.i = getelementptr i8, ptr %i.baz, i64 %i.bbc
  %i.bbd = sext i32 %i.bau to i64
  %invariant.gep2863.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2910.i, i64 %i.bbd ; 2 uses
  %.reass.us2884.us.us.i = mul i64 %factor.op.mul.us.us.us2909.i, %indvars.iv3396.i
  %gep2864.us.us.us.i = getelementptr i8, ptr %invariant.gep2863.us.us.us.i, i64 %.reass.us2884.us.us.i
  %i.bbe = load float, ptr %gep2864.us.us.us.i, align 4, !tbaa !39
  %.reass.us2884.us.us.1.i = mul i64 %factor.op.mul.us.us.us2909.i, %i.bai
  %gep2864.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2863.us.us.us.i, i64 %.reass.us2884.us.us.1.i
  %i.bbf = load float, ptr %gep2864.us.us.us.1.i, align 4, !tbaa !39
  %i.bbg = load <4 x float>, ptr %i.bay, align 4, !tbaa !39 ; 2 uses
  %i.bbh = shufflevector <4 x float> %i.bbg, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.bbi = insertelement <2 x float> poison, float %i.bbe, i64 0
  %i.bbj = shufflevector <2 x float> %i.bbi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbk = fmul fast <2 x float> %i.bbh, %i.bbj
  %i.bbl = fadd fast <2 x float> %i.bap, %i.bbk
  %i.bbm = shufflevector <4 x float> %i.bbg, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bbn = insertelement <2 x float> poison, float %i.bbf, i64 0
  %i.bbo = shufflevector <2 x float> %i.bbn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbp = fmul fast <2 x float> %i.bbm, %i.bbo
  %i.bbq = fadd fast <2 x float> %i.bbp, %i.bbl
  br label %.loopexit2482.us.us.us.i

.loopexit2482.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.cu, %bb.ct
  %i.bbr = phi <2 x float> [ %i.bap, %bb.ct ], [ %i.bap, %bb.cu ], [ %i.bbq, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3387.i = add nuw nsw i64 %indvars.iv3386.i, 1 ; 2 uses
  %exitcond3390.not.i = icmp eq i64 %indvars.iv.next3387.i, %i.baf
  br i1 %exitcond3390.not.i, label %..loopexit2486_crit_edge.us.us.us.i, label %bb.ct, !llvm.loop !397

..loopexit2486_crit_edge.us.us.us.i:              ; preds = %.loopexit2482.us.us.us.i, %bb.cs, %bb.cr
  %i.bbs = phi <2 x float> [ %i.baj, %bb.cr ], [ %i.baj, %bb.cs ], [ %i.bbr, %.loopexit2482.us.us.us.i ] ; 3 uses
  %indvars.iv.next3392.i = add nuw nsw i64 %indvars.iv3391.i, 1 ; 2 uses
  %exitcond3395.not.i = icmp eq i64 %indvars.iv.next3392.i, %wide.trip.count3348.i
  br i1 %exitcond3395.not.i, label %._crit_edge2879.split.us.us.us.i, label %bb.cr, !llvm.loop !398

.preheader2485.us.us.us.i:                        ; preds = %bb.cs
  %i.bbt = mul nuw nsw i64 %indvars.iv3391.i, %i.baf
  %i.bbu = sext i32 %i.bao to i64
  %i.bbv = mul nsw i64 %i.bbu, %i.le
  br label %bb.ct

._crit_edge2879.split.us.us.us.i:                 ; preds = %..loopexit2486_crit_edge.us.us.us.i
  %i.bbw = getelementptr inbounds [4 x i8], ptr %.27692890.us.us.i, i64 %i.aql ; 2 uses
  %indvars.iv.next3397.i = add nuw nsw i64 %indvars.iv3396.i, 2 ; 2 uses
  %i.bbx = trunc i64 %indvars.iv.next3397.i to i32 ; 2 uses
  %i.bby = or i32 %i.bbx, 1
  %i.bbz = icmp slt i32 %i.bby, %i.kf
  br i1 %i.bbz, label %.preheader2492.us.us.i, label %.preheader2495.i, !llvm.loop !399

.preheader2495.i:                                 ; preds = %._crit_edge2879.split.us.us.us.i, %.preheader2492.us.preheader.i, %.preheader2492.preheader.i, %._crit_edge2841.i
  %.2773.lcssa.i = phi i32 [ %.1772.lcssa.i, %._crit_edge2841.i ], [ %i.azt, %.preheader2492.preheader.i ], [ %i.bae, %.preheader2492.us.preheader.i ], [ %i.bbx, %._crit_edge2879.split.us.us.us.i ] ; 2 uses
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2841.i ], [ %scevgep3380.i.a, %.preheader2492.preheader.i ], [ %scevgep3382.i, %.preheader2492.us.preheader.i ], [ %i.bbw, %._crit_edge2879.split.us.us.us.i ]
  %i.bca = phi <2 x float> [ %i.aza, %._crit_edge2841.i ], [ %i.aza, %.preheader2492.preheader.i ], [ %i.aza, %.preheader2492.us.preheader.i ], [ %i.bbs, %._crit_edge2879.split.us.us.us.i ] ; 3 uses
  %i.bcb = icmp slt i32 %.2773.lcssa.i, %i.kf
  br i1 %i.bcb, label %.preheader2491.lr.ph.i, label %._crit_edge2939.i

.preheader2491.lr.ph.i:                           ; preds = %.preheader2495.i
  %i.bcc = load i32, ptr %i.d, align 4
  %i.bcd = load i32, ptr %i.j, align 4
  %invariant.op2928.i = sub i32 %.neg2447.i, %i.bcd
  %i.bce = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bcf = load i32, ptr %i.a, align 4
  %.fr3171.i.a = freeze i32 %i.bcf                ; 2 uses
  %i.bcg = load i32, ptr %i.c, align 4
  %i.bch = load i32, ptr %i.i, align 4
  %.neg2437.i = add nuw nsw i32 %.07442953.i, 1
  %invariant.op2920.i = sub i32 %.neg2437.i, %i.bch
  %i.bci = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bcj = icmp sgt i32 %.fr3171.i.a, 0
  %or.cond3629.i = and i1 %i.aqe, %i.bcj
  br i1 %or.cond3629.i, label %.preheader2491.us.us.preheader.i, label %._crit_edge2939.i

.preheader2491.us.us.preheader.i:                 ; preds = %.preheader2491.lr.ph.i
  %i.bck = zext nneg i32 %.fr3171.i.a to i64      ; 2 uses
  %i.bcl = zext i32 %.2773.lcssa.i to i64
  br label %.preheader2491.us.us.i

.preheader2491.us.us.i:                           ; preds = %._crit_edge2925.split.us.us.us.i, %.preheader2491.us.us.preheader.i
  %indvars.iv3409.i = phi i64 [ %i.bcl, %.preheader2491.us.us.preheader.i ], [ %indvars.iv.next3410.i, %._crit_edge2925.split.us.us.us.i ] ; 2 uses
  %.37702935.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2491.us.us.preheader.i ], [ %i.bdw, %._crit_edge2925.split.us.us.us.i ] ; 2 uses
  %i.bcm = phi <2 x float> [ %i.bca, %.preheader2491.us.us.preheader.i ], [ %i.bds, %._crit_edge2925.split.us.us.us.i ]
  br label %bb.cv

bb.cv:                                            ; preds = %..loopexit2484_crit_edge.us.us.us.i, %.preheader2491.us.us.i
  %indvars.iv3404.i = phi i64 [ %indvars.iv.next3405.i, %..loopexit2484_crit_edge.us.us.us.i ], [ 0, %.preheader2491.us.us.i ] ; 3 uses
  %i.bcn = phi <2 x float> [ %i.bds, %..loopexit2484_crit_edge.us.us.us.i ], [ %i.bcm, %.preheader2491.us.us.i ] ; 3 uses
  %i.bco = trunc i64 %indvars.iv3404.i to i32
  %i.bcp = mul i32 %i.bcc, %i.bco
  %.reass2929.us.us.us.i = add i32 %i.bcp, %invariant.op2928.i ; 3 uses
  %i.bcq = icmp slt i32 %.reass2929.us.us.us.i, 0
  br i1 %i.bcq, label %..loopexit2484_crit_edge.us.us.us.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bcr = srem i32 %.reass2929.us.us.us.i, %i.bce
  %i.bcs = sdiv i32 %.reass2929.us.us.us.i, %i.bce ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bcr, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bcs, %i.kh
  %or.cond432 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond432, label %.preheader2483.us.us.us.i, label %..loopexit2484_crit_edge.us.us.us.i

bb.cx:                                            ; preds = %.preheader2483.us.us.us.i, %bb.cz
  %indvars.iv3399.i = phi i64 [ 0, %.preheader2483.us.us.us.i ], [ %indvars.iv.next3400.i, %bb.cz ] ; 3 uses
  %i.bct = phi <2 x float> [ %i.bcn, %.preheader2483.us.us.us.i ], [ %i.bdr, %bb.cz ] ; 3 uses
  %i.bcu = trunc i64 %indvars.iv3399.i to i32
  %i.bcv = mul i32 %i.bcg, %i.bcu
  %.reass.us2930.us.us.i = add i32 %invariant.op2920.i, %i.bcv ; 3 uses
  %i.bcw = icmp slt i32 %.reass.us2930.us.us.i, 0
  br i1 %i.bcw, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bcx = srem i32 %.reass.us2930.us.us.i, %i.bci
  %i.bcy = sdiv i32 %.reass.us2930.us.us.i, %i.bci ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bcx, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bcy, %i.kg
  %or.cond433 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond433, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.cz

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.cy
  %i.bcz = add nuw nsw i64 %indvars.iv3399.i, %i.bdt
  %.idx3576.i.a = shl nuw nsw i64 %i.bcz, 3
  %i.bda = getelementptr inbounds nuw i8, ptr %.37702935.us.us.i, i64 %.idx3576.i.a
  %i.bdb = load ptr, ptr %1, align 8, !tbaa !18, !noalias !400
  %i.bdc = load i64, ptr %i.kq, align 8, !tbaa !20, !noalias !400
  %i.bdd = mul i64 %i.bdc, %indvars.iv3409.i
  %i.bde = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !400 ; 2 uses
  %i.bdf = mul i64 %i.bdd, %i.bde
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %i.bdf
  %i.bdh = mul i64 %i.bdv, %i.bde
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.bdh
  %i.bdj = sext i32 %i.bcy to i64
  %i.bdk = getelementptr inbounds [4 x i8], ptr %i.bdi, i64 %i.bdj
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !39
  %i.bdm = load <2 x float>, ptr %i.bda, align 4, !tbaa !39
  %i.bdn = insertelement <2 x float> poison, float %i.bdl, i64 0
  %i.bdo = shufflevector <2 x float> %i.bdn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdp = fmul fast <2 x float> %i.bdm, %i.bdo
  %i.bdq = fadd fast <2 x float> %i.bdp, %i.bct
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.cy, %bb.cx
  %i.bdr = phi <2 x float> [ %i.bct, %bb.cx ], [ %i.bct, %bb.cy ], [ %i.bdq, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3400.i = add nuw nsw i64 %indvars.iv3399.i, 1 ; 2 uses
  %exitcond3403.not.i = icmp eq i64 %indvars.iv.next3400.i, %i.bck
  br i1 %exitcond3403.not.i, label %..loopexit2484_crit_edge.us.us.us.i, label %bb.cx, !llvm.loop !403

..loopexit2484_crit_edge.us.us.us.i:              ; preds = %bb.cz, %bb.cw, %bb.cv
  %i.bds = phi <2 x float> [ %i.bcn, %bb.cv ], [ %i.bcn, %bb.cw ], [ %i.bdr, %bb.cz ] ; 3 uses
  %indvars.iv.next3405.i = add nuw nsw i64 %indvars.iv3404.i, 1 ; 2 uses
  %exitcond3408.not.i = icmp eq i64 %indvars.iv.next3405.i, %wide.trip.count3348.i
  br i1 %exitcond3408.not.i, label %._crit_edge2925.split.us.us.us.i, label %bb.cv, !llvm.loop !404

.preheader2483.us.us.us.i:                        ; preds = %bb.cw
  %i.bdt = mul nuw nsw i64 %indvars.iv3404.i, %i.bck
  %i.bdu = sext i32 %i.bcs to i64
  %i.bdv = mul nsw i64 %i.bdu, %i.le
  br label %bb.cx

._crit_edge2925.split.us.us.us.i:                 ; preds = %..loopexit2484_crit_edge.us.us.us.i
  %i.bdw = getelementptr inbounds [4 x i8], ptr %.37702935.us.us.i, i64 %i.aqn
  %indvars.iv.next3410.i = add nuw nsw i64 %indvars.iv3409.i, 1 ; 2 uses
  %i.bdx = trunc nuw i64 %indvars.iv.next3410.i to i32
  %i.bdy = icmp sgt i32 %i.kf, %i.bdx
  br i1 %i.bdy, label %.preheader2491.us.us.i, label %._crit_edge2939.i, !llvm.loop !405

._crit_edge2939.i:                                ; preds = %._crit_edge2925.split.us.us.us.i, %.preheader2491.lr.ph.i, %.preheader2495.i
  %i.bdz = phi <2 x float> [ %i.bca, %.preheader2495.i ], [ %i.bca, %.preheader2491.lr.ph.i ], [ %i.bds, %._crit_edge2925.split.us.us.us.i ] ; 11 uses
  switch i32 %i.aqb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i
    i32 6, label %bb.da
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i: ; preds = %._crit_edge2939.i
  %i.bea = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bdz, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i: ; preds = %._crit_edge2939.i
  %i.beb = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.bec = load float, ptr %i.beb, align 4, !tbaa !39
  %i.bed = fcmp fast ogt <2 x float> %i.bdz, zeroinitializer
  %i.bee = insertelement <2 x float> poison, float %i.bec, i64 0
  %i.bef = shufflevector <2 x float> %i.bee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.beg = select <2 x i1> %i.bed, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bef
  %i.beh = fmul fast <2 x float> %i.beg, %i.bdz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i: ; preds = %._crit_edge2939.i
  %i.bei = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.bej = load float, ptr %i.bei, align 4, !tbaa !39
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bei, i64 4
  %i.bel = load float, ptr %i.bek, align 4, !tbaa !39 ; 3 uses
  %i.bem = insertelement <2 x float> poison, float %i.bej, i64 0
  %i.ben = shufflevector <2 x float> %i.bem, <2 x float> poison, <2 x i32> zeroinitializer
  %i.beo = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bdz, <2 x float> %i.ben) ; 3 uses
  %i.bep = insertelement <2 x float> poison, float %i.bel, i64 0
  %i.beq = shufflevector <2 x float> %i.bep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ber = fcmp fast ogt <2 x float> %i.beo, %i.beq ; 2 uses
  %i.bes = extractelement <2 x i1> %i.ber, i64 0
  %i.bet = extractelement <2 x float> %i.beo, i64 0
  %.123072397.i = select i1 %i.bes, float %i.bel, float %i.bet
  %i.beu = insertelement <2 x float> %i.beo, float %.123072397.i, i64 0 ; 2 uses
  %i.bev = extractelement <2 x i1> %i.ber, i64 1
  %i.bew = insertelement <2 x float> %i.beu, float %i.bel, i64 1
  %spec.select = select i1 %i.bev, <2 x float> %i.bew, <2 x float> %i.beu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i: ; preds = %._crit_edge2939.i
  %i.bex = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bdz, <2 x float> splat (float f0x42B0C0A5))
  %i.bey = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bex, <2 x float> splat (float f0xC2B0C0A5))
  %i.bez = fneg fast <2 x float> %i.bey
  %i.bfa = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bez)
  %i.bfb = fadd fast <2 x float> %i.bfa, splat (float 1.000000e+00)
  %i.bfc = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bfb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i: ; preds = %._crit_edge2939.i
  %i.bfd = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bdz)
  %i.bfe = fadd fast <2 x float> %i.bfd, splat (float 1.000000e+00)
end_hunk_2
begin_hunk_3_@_ZNK4ncnn21Deconvolution_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.bnx = mul nsw i64 %i.bnw, %i.apj
  br label %.lr.ph.split.us3025.us.us.us.i.us

.lr.ph.split.us3025.us.us.us.i.us:                ; preds = %.preheader2472.us.us.us.i.us205, %bb.ds
  %indvars.iv3448.i.us = phi i64 [ %indvars.iv.next3449.i.us, %bb.ds ], [ 0, %.preheader2472.us.us.us.i.us205 ] ; 3 uses
  %.223513019.us3027.us.us.us.i.us = phi <4 x float> [ %.32352.us3031.us.us.us.i.us, %bb.ds ], [ %.123503035.us.us.us.i.us201, %.preheader2472.us.us.us.i.us205 ] ; 3 uses
  %i.bny = trunc i64 %indvars.iv3448.i.us to i32
  %i.bnz = mul i32 %i.bll, %i.bny
  %.reass3023.us3028.us.us.us.i.us = add i32 %i.bnz, %invariant.op3022.i ; 3 uses
  %i.boa = icmp slt i32 %.reass3023.us3028.us.us.us.i.us, 0
  br i1 %i.boa, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.split.us3025.us.us.us.i.us
  %i.bob = srem i32 %.reass3023.us3028.us.us.us.i.us, %i.bln
  %i.boc = sdiv i32 %.reass3023.us3028.us.us.us.i.us, %i.bln ; 2 uses
  %.not897.us3029.us.us.us.i.us = icmp eq i32 %i.bob, 0
  %.not898.us3030.us.us.us.i.us = icmp slt i32 %i.boc, %i.aoi
  %or.cond439 = select i1 %.not897.us3029.us.us.us.i.us, i1 %.not898.us3030.us.us.us.i.us, i1 false
  br i1 %or.cond439, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.ds

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.dr
  %i.bod = load ptr, ptr %1, align 8, !tbaa !18, !noalias !426
  %i.boe = load i64, ptr %i.aos, align 8, !tbaa !20, !noalias !426
  %i.bof = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !426 ; 2 uses
  %factor.op.mul3014.us.us.us.us.i.us = mul i64 %i.bof, %i.boe ; 4 uses
  %i.bog = mul i64 %i.bnx, %i.bof
  %invariant.gep.us.us.us3067.us.i.us = getelementptr i8, ptr %i.bod, i64 %i.bog
  %i.boh = sext i32 %i.boc to i64
  %invariant.gep3016.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3067.us.i.us, i64 %i.boh ; 4 uses
  %.reass3015.us.us.us.us.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %indvars.iv3463.i
  %gep3017.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.i.us
  %i.boi = load float, ptr %gep3017.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.boi, i64 0
  %.reass3015.us.us.us.us.1.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bmh
  %gep3017.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.1.i.us
  %i.boj = load float, ptr %gep3017.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.boj, i64 1
  %.reass3015.us.us.us.us.2.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bmi
  %gep3017.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.2.i.us
  %i.bok = load float, ptr %gep3017.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.bok, i64 2
  %.reass3015.us.us.us.us.3.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bmj
  %gep3017.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.3.i.us
  %i.bol = load float, ptr %gep3017.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.bol, i64 3
  %i.bom = add nuw nsw i64 %indvars.iv3448.i.us, %i.bnv
  %i.bon = shl i64 %i.bom, 2
  %i.boo = and i64 %i.bon, 4294967292
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %.17893052.us.us.i, i64 %i.boo
  %i.boq = load <4 x float>, ptr %i.bop, align 16, !tbaa !310
  %i.bor = fmul fast <4 x float> %i.boq, %.sroa.0.12.vec.insert.i.us
  %i.bos = fadd fast <4 x float> %i.bor, %.223513019.us3027.us.us.us.i.us
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.dr, %.lr.ph.split.us3025.us.us.us.i.us
  %.32352.us3031.us.us.us.i.us = phi nsz <4 x float> [ %.223513019.us3027.us.us.us.i.us, %.lr.ph.split.us3025.us.us.us.i.us ], [ %i.bos, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223513019.us3027.us.us.us.i.us, %bb.dr ] ; 2 uses
  %indvars.iv.next3449.i.us = add nuw nsw i64 %indvars.iv3448.i.us, 1 ; 2 uses
  %exitcond3452.not.i.us = icmp eq i64 %indvars.iv.next3449.i.us, %i.bmd
  br i1 %exitcond3452.not.i.us, label %..loopexit2473_crit_edge.us.us.us.i.us206, label %.lr.ph.split.us3025.us.us.us.i.us, !llvm.loop !424

..loopexit2473_crit_edge.us.us.us.i.us206:        ; preds = %bb.ds, %bb.dq, %.preheader2478.us.us.i.split.us199
  %.42353.us.us.us.i.us207 = phi nsz <4 x float> [ %.123503035.us.us.us.i.us201, %.preheader2478.us.us.i.split.us199 ], [ %.123503035.us.us.us.i.us201, %bb.dq ], [ %.32352.us3031.us.us.us.i.us, %bb.ds ] ; 2 uses
  %indvars.iv.next3459.i.us208 = add nuw nsw i64 %indvars.iv3458.i.us200, 1 ; 2 uses
  %exitcond3462.not.i.us209 = icmp eq i64 %indvars.iv.next3459.i.us208, %wide.trip.count3435.i
  br i1 %exitcond3462.not.i.us209, label %._crit_edge3038.split.us.us.us.i, label %.preheader2478.us.us.i.split.us199, !llvm.loop !425

._crit_edge3038.split.us.us.us.i:                 ; preds = %..loopexit2473_crit_edge.us.us.us.i.us206, %..loopexit2473_crit_edge.us.us.us.i.us, %.preheader2478.us.us.i
  %.us-phi198 = phi <4 x float> [ %.42353.us.us.us.i.us, %..loopexit2473_crit_edge.us.us.us.i.us ], [ %.023493051.us.us.i, %.preheader2478.us.us.i ], [ %.42353.us.us.us.i.us207, %..loopexit2473_crit_edge.us.us.us.i.us206 ] ; 2 uses
  %i.bot = getelementptr inbounds [4 x i8], ptr %.17893052.us.us.i, i64 %i.bhj ; 2 uses
  %indvars.iv.next3464.i = add nuw nsw i64 %indvars.iv3463.i, 4 ; 2 uses
  %i.bou = trunc i64 %indvars.iv.next3464.i to i32 ; 2 uses
  %i.bov = or i32 %i.bou, 3
  %i.bow = icmp slt i32 %i.bov, %i.aoh
  br i1 %i.bow, label %.preheader2478.us.us.i, label %._crit_edge3056.i, !llvm.loop !429

._crit_edge3056.i:                                ; preds = %._crit_edge3038.split.us.us.us.i, %.preheader2478.us.preheader.i, %.preheader2478.preheader.i, %._crit_edge2996.i
  %.02349.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2996.i ], [ zeroinitializer, %.preheader2478.preheader.i ], [ zeroinitializer, %.preheader2478.us.preheader.i ], [ %.us-phi198, %._crit_edge3038.split.us.us.us.i ] ; 2 uses
  %.1789.lcssa.i = phi ptr [ %.0788.lcssa.i, %._crit_edge2996.i ], [ %scevgep3441.i.a, %.preheader2478.preheader.i ], [ %scevgep3443.i, %.preheader2478.us.preheader.i ], [ %i.bot, %._crit_edge3038.split.us.us.us.i ] ; 4 uses
  %.1785.lcssa.i = phi i32 [ %.0784.lcssa.i, %._crit_edge2996.i ], [ %i.blu, %.preheader2478.preheader.i ], [ %i.bmc, %.preheader2478.us.preheader.i ], [ %i.bou, %._crit_edge3038.split.us.us.us.i ] ; 9 uses
  %i.box = shufflevector <4 x float> %.02349.lcssa.i, <4 x float> %i.ble, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.boy = shufflevector <4 x float> %.02349.lcssa.i, <4 x float> %i.ble, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.boz = fadd fast <4 x float> %i.box, %i.boy
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0792.i, <4 x float> %i.boz) ; 4 uses
  %i.bpa = or disjoint i32 %.1785.lcssa.i, 1
  %i.bpb = icmp slt i32 %i.bpa, %i.aoh
  br i1 %i.bpb, label %.preheader2477.lr.ph.i, label %.preheader2480.i

.preheader2477.lr.ph.i:                           ; preds = %._crit_edge3056.i
  %i.bpc = load i32, ptr %i.d, align 4
  %i.bpd = load i32, ptr %i.j, align 4
  %invariant.op3091.i = sub i32 %.neg2431.i, %i.bpd
  %i.bpe = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bpf = load i32, ptr %i.a, align 4
  %.fr3174.i = freeze i32 %i.bpf                  ; 2 uses
  %i.bpg = load i32, ptr %i.c, align 4
  %i.bph = load i32, ptr %i.i, align 4
  %.neg2425.i = add nuw nsw i32 %.08083147.i, 1
  %invariant.op3084.i = sub i32 %.neg2425.i, %i.bph
  %i.bpi = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bhe, label %.preheader2477.lr.ph.split.us.i, label %.preheader2477.preheader.i

.preheader2477.preheader.i:                       ; preds = %.preheader2477.lr.ph.i
  %i.bpj = add i32 %.1785.lcssa.i, 3
  %smax3466.i.a = call i32 @llvm.smax.i32(i32 %i.aoh, i32 %i.bpj)
  %reass.sub221 = sub i32 %smax3466.i.a, %.1785.lcssa.i
  %i.bpk = add i32 %reass.sub221, -2              ; 2 uses
  %i.bpl = lshr i32 %i.bpk, 1
  %i.bpm = zext nneg i32 %i.bpl to i64
  %i.bpn = shl nuw nsw i64 %i.bpm, 2
  %i.bpo = add nuw nsw i64 %i.bpn, 4
  %i.bpp = mul i64 %i.bpo, %i.bhl
  %scevgep3467.i.a = getelementptr i8, ptr %.1789.lcssa.i, i64 %i.bpp
  %i.bpq = add i32 %.1785.lcssa.i, 2
  %i.bpr = and i32 %i.bpk, -2
  %i.bps = add i32 %i.bpq, %i.bpr
  br label %.preheader2480.i

.preheader2477.lr.ph.split.us.i:                  ; preds = %.preheader2477.lr.ph.i
  %i.bpt = icmp sgt i32 %.fr3174.i, 0
  br i1 %i.bpt, label %.preheader2477.us.us.preheader.i, label %.preheader2477.us.preheader.i

.preheader2477.us.preheader.i:                    ; preds = %.preheader2477.lr.ph.split.us.i
  %i.bpu = add i32 %.1785.lcssa.i, 3
  %smax3468.i = call i32 @llvm.smax.i32(i32 %i.aoh, i32 %i.bpu)
  %reass.sub222 = sub i32 %smax3468.i, %.1785.lcssa.i
  %i.bpv = add i32 %reass.sub222, -2              ; 2 uses
  %i.bpw = lshr i32 %i.bpv, 1
  %i.bpx = zext nneg i32 %i.bpw to i64
  %i.bpy = shl nuw nsw i64 %i.bpx, 2
  %i.bpz = add nuw nsw i64 %i.bpy, 4
  %i.bqa = mul i64 %i.bpz, %i.bhl
  %scevgep3469.i = getelementptr i8, ptr %.1789.lcssa.i, i64 %i.bqa
  %i.bqb = add i32 %.1785.lcssa.i, 2
  %i.bqc = and i32 %i.bpv, -2
  %i.bqd = add i32 %i.bqb, %i.bqc
  br label %.preheader2480.i

.preheader2477.us.us.preheader.i:                 ; preds = %.preheader2477.lr.ph.split.us.i
  %i.bqe = zext nneg i32 %.fr3174.i to i64        ; 2 uses
  %i.bqf = zext i32 %.1785.lcssa.i to i64
  br label %.preheader2477.us.us.i

.preheader2477.us.us.i:                           ; preds = %._crit_edge3089.split.us.us.us.i, %.preheader2477.us.us.preheader.i
  %indvars.iv3483.i = phi i64 [ %i.bqf, %.preheader2477.us.us.preheader.i ], [ %indvars.iv.next3484.i, %._crit_edge3089.split.us.us.us.i ] ; 3 uses
  %.27903096.us.us.i = phi ptr [ %.1789.lcssa.i, %.preheader2477.us.us.preheader.i ], [ %i.brk, %._crit_edge3089.split.us.us.us.i ] ; 2 uses
  %.17933095.us.us.i = phi float [ %op.rdx, %.preheader2477.us.us.preheader.i ], [ %.8800.us.us.us.i, %._crit_edge3089.split.us.us.us.i ]
  %i.bqg = add nuw nsw i64 %indvars.iv3483.i, 1
  br label %bb.dt

bb.dt:                                            ; preds = %..loopexit2471_crit_edge.us.us.us.i, %.preheader2477.us.us.i
  %indvars.iv3478.i = phi i64 [ %indvars.iv.next3479.i, %..loopexit2471_crit_edge.us.us.us.i ], [ 0, %.preheader2477.us.us.i ] ; 3 uses
  %.27943086.us.us.us.i = phi float [ %.8800.us.us.us.i, %..loopexit2471_crit_edge.us.us.us.i ], [ %.17933095.us.us.i, %.preheader2477.us.us.i ] ; 3 uses
  %i.bqh = trunc i64 %indvars.iv3478.i to i32
  %i.bqi = mul i32 %i.bpc, %i.bqh
  %.reass3092.us.us.us.i = add i32 %i.bqi, %invariant.op3091.i ; 3 uses
  %i.bqj = icmp slt i32 %.reass3092.us.us.us.i, 0
  br i1 %i.bqj, label %..loopexit2471_crit_edge.us.us.us.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bqk = srem i32 %.reass3092.us.us.us.i, %i.bpe
  %i.bql = sdiv i32 %.reass3092.us.us.us.i, %i.bpe ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bqk, 0
  %.not892.us.us.us.i = icmp slt i32 %i.bql, %i.aoj
  %or.cond440 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond440, label %.preheader2470.us.us.us.i, label %..loopexit2471_crit_edge.us.us.us.i

bb.dv:                                            ; preds = %.preheader2470.us.us.us.i, %.loopexit.us.us.us.i
  %indvars.iv3473.i = phi i64 [ 0, %.preheader2470.us.us.us.i ], [ %indvars.iv.next3474.i, %.loopexit.us.us.us.i ] ; 3 uses
  %.37953081.us.us.us.i = phi float [ %.27943086.us.us.us.i, %.preheader2470.us.us.us.i ], [ %.6798.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %i.bqm = trunc i64 %indvars.iv3473.i to i32
  %i.bqn = mul i32 %i.bpg, %i.bqm
  %.reass3085.us.us.us.i = add i32 %invariant.op3084.i, %i.bqn ; 3 uses
  %i.bqo = icmp slt i32 %.reass3085.us.us.us.i, 0
  br i1 %i.bqo, label %.loopexit.us.us.us.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bqp = srem i32 %.reass3085.us.us.us.i, %i.bpi
  %i.bqq = sdiv i32 %.reass3085.us.us.us.i, %i.bpi ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bqp, 0
  %.not894.us.us.us.i = icmp slt i32 %i.bqq, %i.aoi
  %or.cond441 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond441, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.dw
  %i.bqr = add nuw nsw i64 %indvars.iv3473.i, %i.brh
  %.idx3578.i = shl nuw nsw i64 %i.bqr, 3
  %i.bqs = getelementptr inbounds nuw i8, ptr %.27903096.us.us.i, i64 %.idx3578.i ; 2 uses
  %i.bqt = load ptr, ptr %1, align 8, !tbaa !18, !noalias !430
  %i.bqu = load i64, ptr %i.aos, align 8, !tbaa !20, !noalias !430
  %i.bqv = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !430 ; 2 uses
  %factor.op.mul3075.us.us.us.i = mul i64 %i.bqv, %i.bqu ; 2 uses
  %i.bqw = mul i64 %i.brj, %i.bqv
  %invariant.gep.us.us.us3113.i = getelementptr i8, ptr %i.bqt, i64 %i.bqw
  %i.bqx = sext i32 %i.bqq to i64
  %invariant.gep3077.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3113.i, i64 %i.bqx ; 2 uses
  %.reass3076.us.us.us.i = mul i64 %factor.op.mul3075.us.us.us.i, %indvars.iv3483.i
  %gep3078.us.us.us.i = getelementptr i8, ptr %invariant.gep3077.us.us.us.i, i64 %.reass3076.us.us.us.i
  %i.bqy = load float, ptr %gep3078.us.us.us.i, align 4, !tbaa !39
  %i.bqz = load float, ptr %i.bqs, align 4, !tbaa !39
  %i.bra = fmul fast float %i.bqz, %i.bqy
  %i.brb = fadd fast float %.37953081.us.us.us.i, %i.bra
  %.reass3076.us.us.us.1.i = mul i64 %factor.op.mul3075.us.us.us.i, %i.bqg
  %gep3078.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3077.us.us.us.i, i64 %.reass3076.us.us.us.1.i
  %i.brc = load float, ptr %gep3078.us.us.us.1.i, align 4, !tbaa !39
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bqs, i64 4
  %i.bre = load float, ptr %i.brd, align 4, !tbaa !39
  %i.brf = fmul fast float %i.bre, %i.brc
  %i.brg = fadd fast float %i.brf, %i.brb
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.dw, %bb.dv
  %.6798.us.us.us.i = phi nsz float [ %.37953081.us.us.us.i, %bb.dv ], [ %.37953081.us.us.us.i, %bb.dw ], [ %i.brg, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3474.i = add nuw nsw i64 %indvars.iv3473.i, 1 ; 2 uses
  %exitcond3477.not.i = icmp eq i64 %indvars.iv.next3474.i, %i.bqe
  br i1 %exitcond3477.not.i, label %..loopexit2471_crit_edge.us.us.us.i, label %bb.dv, !llvm.loop !433

..loopexit2471_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.du, %bb.dt
  %.8800.us.us.us.i = phi nsz float [ %.27943086.us.us.us.i, %bb.dt ], [ %.27943086.us.us.us.i, %bb.du ], [ %.6798.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3479.i = add nuw nsw i64 %indvars.iv3478.i, 1 ; 2 uses
  %exitcond3482.not.i = icmp eq i64 %indvars.iv.next3479.i, %wide.trip.count3435.i
  br i1 %exitcond3482.not.i, label %._crit_edge3089.split.us.us.us.i, label %bb.dt, !llvm.loop !434

.preheader2470.us.us.us.i:                        ; preds = %bb.du
  %i.brh = mul nuw nsw i64 %indvars.iv3478.i, %i.bqe
  %i.bri = sext i32 %i.bql to i64
  %i.brj = mul nsw i64 %i.bri, %i.apj
  br label %bb.dv

._crit_edge3089.split.us.us.us.i:                 ; preds = %..loopexit2471_crit_edge.us.us.us.i
  %i.brk = getelementptr inbounds [4 x i8], ptr %.27903096.us.us.i, i64 %i.bhl ; 2 uses
  %indvars.iv.next3484.i = add nuw nsw i64 %indvars.iv3483.i, 2 ; 2 uses
  %i.brl = trunc i64 %indvars.iv.next3484.i to i32 ; 2 uses
  %i.brm = or i32 %i.brl, 1
  %i.brn = icmp slt i32 %i.brm, %i.aoh
  br i1 %i.brn, label %.preheader2477.us.us.i, label %.preheader2480.i, !llvm.loop !435

.preheader2480.i:                                 ; preds = %._crit_edge3089.split.us.us.us.i, %.preheader2477.us.preheader.i, %.preheader2477.preheader.i, %._crit_edge3056.i
  %.1793.lcssa.i = phi float [ %op.rdx, %._crit_edge3056.i ], [ %op.rdx, %.preheader2477.preheader.i ], [ %op.rdx, %.preheader2477.us.preheader.i ], [ %.8800.us.us.us.i, %._crit_edge3089.split.us.us.us.i ] ; 3 uses
  %.2790.lcssa.i = phi ptr [ %.1789.lcssa.i, %._crit_edge3056.i ], [ %scevgep3467.i.a, %.preheader2477.preheader.i ], [ %scevgep3469.i, %.preheader2477.us.preheader.i ], [ %i.brk, %._crit_edge3089.split.us.us.us.i ]
  %.2786.lcssa.i = phi i32 [ %.1785.lcssa.i, %._crit_edge3056.i ], [ %i.bps, %.preheader2477.preheader.i ], [ %i.bqd, %.preheader2477.us.preheader.i ], [ %i.brl, %._crit_edge3089.split.us.us.us.i ] ; 2 uses
  %i.bro = icmp slt i32 %.2786.lcssa.i, %i.aoh
  br i1 %i.bro, label %.preheader2476.lr.ph.i, label %._crit_edge3135.i

.preheader2476.lr.ph.i:                           ; preds = %.preheader2480.i
  %i.brp = load i32, ptr %i.d, align 4
  %i.brq = load i32, ptr %i.j, align 4
  %invariant.op3127.i = sub i32 %.neg2431.i, %i.brq
  %i.brr = load i32, ptr %i.f, align 4            ; 2 uses
  %i.brs = load i32, ptr %i.a, align 4
  %.fr3175.i = freeze i32 %i.brs                  ; 2 uses
  %i.brt = load i32, ptr %i.c, align 4
  %i.bru = load i32, ptr %i.i, align 4
  %.neg2421.i = add nuw nsw i32 %.08083147.i, 1
  %invariant.op3120.i = sub i32 %.neg2421.i, %i.bru
  %i.brv = load i32, ptr %i.e, align 4            ; 2 uses
  %i.brw = icmp sgt i32 %.fr3175.i, 0
  %or.cond3631.i = and i1 %i.bhe, %i.brw
  br i1 %or.cond3631.i, label %.preheader2476.us.us.preheader.i, label %._crit_edge3135.i

.preheader2476.us.us.preheader.i:                 ; preds = %.preheader2476.lr.ph.i
  %i.brx = zext nneg i32 %.fr3175.i to i64        ; 2 uses
  %i.bry = zext i32 %.2786.lcssa.i to i64
  br label %.preheader2476.us.us.i

.preheader2476.us.us.i:                           ; preds = %._crit_edge3125.split.us.us.us.i, %.preheader2476.us.us.preheader.i
  %indvars.iv3496.i = phi i64 [ %i.bry, %.preheader2476.us.us.preheader.i ], [ %indvars.iv.next3497.i, %._crit_edge3125.split.us.us.us.i ] ; 2 uses
  %.37913132.us.us.i = phi ptr [ %.2790.lcssa.i, %.preheader2476.us.us.preheader.i ], [ %i.btc, %._crit_edge3125.split.us.us.us.i ] ; 2 uses
  %.98013131.us.us.i = phi float [ %.1793.lcssa.i, %.preheader2476.us.us.preheader.i ], [ %.15807.us.us.us.i, %._crit_edge3125.split.us.us.us.i ]
  br label %bb.dx

bb.dx:                                            ; preds = %..loopexit2469_crit_edge.us.us.us.i, %.preheader2476.us.us.i
  %indvars.iv3491.i = phi i64 [ %indvars.iv.next3492.i, %..loopexit2469_crit_edge.us.us.us.i ], [ 0, %.preheader2476.us.us.i ] ; 3 uses
  %.108023122.us.us.us.i = phi float [ %.15807.us.us.us.i, %..loopexit2469_crit_edge.us.us.us.i ], [ %.98013131.us.us.i, %.preheader2476.us.us.i ] ; 3 uses
  %i.brz = trunc i64 %indvars.iv3491.i to i32
  %i.bsa = mul i32 %i.brp, %i.brz
  %.reass3128.us.us.us.i = add i32 %i.bsa, %invariant.op3127.i ; 3 uses
  %i.bsb = icmp slt i32 %.reass3128.us.us.us.i, 0
  br i1 %i.bsb, label %..loopexit2469_crit_edge.us.us.us.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bsc = srem i32 %.reass3128.us.us.us.i, %i.brr
  %i.bsd = sdiv i32 %.reass3128.us.us.us.i, %i.brr ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bsc, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bsd, %i.aoj
  %or.cond442 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond442, label %.preheader.us.us.us.i, label %..loopexit2469_crit_edge.us.us.us.i

bb.dz:                                            ; preds = %.preheader.us.us.us.i, %bb.eb
  %indvars.iv3486.i = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next3487.i, %bb.eb ] ; 3 uses
  %.118033117.us.us.us.i = phi float [ %.108023122.us.us.us.i, %.preheader.us.us.us.i ], [ %.13805.us.us.us.i, %bb.eb ] ; 3 uses
  %i.bse = trunc i64 %indvars.iv3486.i to i32
  %i.bsf = mul i32 %i.brt, %i.bse
  %.reass3121.us.us.us.i = add i32 %invariant.op3120.i, %i.bsf ; 3 uses
  %i.bsg = icmp slt i32 %.reass3121.us.us.us.i, 0
  br i1 %i.bsg, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bsh = srem i32 %.reass3121.us.us.us.i, %i.brv
  %i.bsi = sdiv i32 %.reass3121.us.us.us.i, %i.brv ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bsh, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bsi, %i.aoi
  %or.cond443 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond443, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.eb

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ea
  %i.bsj = load ptr, ptr %1, align 8, !tbaa !18, !noalias !436
  %i.bsk = load i64, ptr %i.aos, align 8, !tbaa !20, !noalias !436
  %i.bsl = mul i64 %i.bsk, %indvars.iv3496.i
  %i.bsm = load i64, ptr %i.ai, align 8, !tbaa !57, !noalias !436 ; 2 uses
  %i.bsn = mul i64 %i.bsl, %i.bsm
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsj, i64 %i.bsn
  %i.bsp = mul i64 %i.btb, %i.bsm
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bso, i64 %i.bsp
  %i.bsr = sext i32 %i.bsi to i64
  %i.bss = getelementptr inbounds [4 x i8], ptr %i.bsq, i64 %i.bsr
  %i.bst = load float, ptr %i.bss, align 4, !tbaa !39
  %i.bsu = getelementptr inbounds nuw [4 x i8], ptr %i.bta, i64 %indvars.iv3486.i
  %i.bsv = load float, ptr %i.bsu, align 4, !tbaa !39
  %i.bsw = fmul fast float %i.bsv, %i.bst
  %i.bsx = fadd fast float %i.bsw, %.118033117.us.us.us.i
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ea, %bb.dz
  %.13805.us.us.us.i = phi nsz float [ %.118033117.us.us.us.i, %bb.dz ], [ %.118033117.us.us.us.i, %bb.ea ], [ %i.bsx, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3487.i = add nuw nsw i64 %indvars.iv3486.i, 1 ; 2 uses
  %exitcond3490.not.i = icmp eq i64 %indvars.iv.next3487.i, %i.brx
  br i1 %exitcond3490.not.i, label %..loopexit2469_crit_edge.us.us.us.i, label %bb.dz, !llvm.loop !439

..loopexit2469_crit_edge.us.us.us.i:              ; preds = %bb.eb, %bb.dy, %bb.dx
  %.15807.us.us.us.i = phi nsz float [ %.108023122.us.us.us.i, %bb.dx ], [ %.108023122.us.us.us.i, %bb.dy ], [ %.13805.us.us.us.i, %bb.eb ] ; 3 uses
  %indvars.iv.next3492.i = add nuw nsw i64 %indvars.iv3491.i, 1 ; 2 uses
  %exitcond3495.not.i = icmp eq i64 %indvars.iv.next3492.i, %wide.trip.count3435.i
  br i1 %exitcond3495.not.i, label %._crit_edge3125.split.us.us.us.i, label %bb.dx, !llvm.loop !440

.preheader.us.us.us.i:                            ; preds = %bb.dy
  %i.bsy = mul nuw nsw i64 %indvars.iv3491.i, %i.brx
  %i.bsz = sext i32 %i.bsd to i64
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %.37913132.us.us.i, i64 %i.bsy
  %i.btb = mul nsw i64 %i.bsz, %i.apj
  br label %bb.dz

._crit_edge3125.split.us.us.us.i:                 ; preds = %..loopexit2469_crit_edge.us.us.us.i
  %i.btc = getelementptr inbounds [4 x i8], ptr %.37913132.us.us.i, i64 %i.bhm
  %indvars.iv.next3497.i = add nuw nsw i64 %indvars.iv3496.i, 1 ; 2 uses
  %i.btd = trunc nuw i64 %indvars.iv.next3497.i to i32
  %i.bte = icmp sgt i32 %i.aoh, %i.btd
  br i1 %i.bte, label %.preheader2476.us.us.i, label %._crit_edge3135.i, !llvm.loop !441

._crit_edge3135.i:                                ; preds = %._crit_edge3125.split.us.us.us.i, %.preheader2476.lr.ph.i, %.preheader2480.i
  %.9801.lcssa.i = phi float [ %.1793.lcssa.i, %.preheader2480.i ], [ %.1793.lcssa.i, %.preheader2476.lr.ph.i ], [ %.15807.us.us.us.i, %._crit_edge3125.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bhb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.ec
    i32 2, label %bb.ed
    i32 3, label %bb.ee
    i32 4, label %bb.eg
    i32 5, label %bb.eh
    i32 6, label %bb.ei
  ]

bb.ec:                                            ; preds = %._crit_edge3135.i
  %i.btf = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9801.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ed:                                            ; preds = %._crit_edge3135.i
  %i.btg = load ptr, ptr %i.iu, align 8, !tbaa !18
  %i.bth = load float, ptr %i.btg, align 4, !tbaa !39
  %i.bti = fcmp fast ogt float %.9801.lcssa.i, 0.000000e+00
  %i.btj = select fast i1 %i.bti, float 1.000000e+00, float %i.bth
  %i.btk = fmul fast float %i.btj, %.9801.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ee:                                            ; preds = %._crit_edge3135.i
  %i.btl = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.btm = load float, ptr %i.btl, align 4, !tbaa !39
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btl, i64 4
  %i.bto = load float, ptr %i.btn, align 4, !tbaa !39 ; 2 uses
  %.02310.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9801.lcssa.i, float %i.btm) ; 2 uses
  %i.btp = fcmp fast ogt float %.02310.i, %i.bto
  br i1 %i.btp, label %bb.ef, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ef:                                            ; preds = %bb.ee
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eg:                                            ; preds = %._crit_edge3135.i
  %.sroa.speculated2165.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9801.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2165.i, float f0xC2B0C0A5)
  %i.btq = fneg fast float %.sroa.speculated.i
  %i.btr = call fast float @llvm.exp.f32(float %i.btq)
  %i.bts = fadd fast float %i.btr, 1.000000e+00
  %i.btt = fdiv fast float 1.000000e+00, %i.bts
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eh:                                            ; preds = %._crit_edge3135.i
  %i.btu = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9801.lcssa.i)
  %i.btv = fadd fast float %i.btu, 1.000000e+00
  %i.btw = call fast float @llvm.log.f32(float %i.btv)
  %i.btx = call fast float @llvm.tanh.f32(float %i.btw)
  %i.bty = fmul fast float %i.btx, %.9801.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ei:                                            ; preds = %._crit_edge3135.i
  %i.btz = load ptr, ptr %i.iu, align 8, !tbaa !18 ; 2 uses
  %i.bua = load float, ptr %i.btz, align 4, !tbaa !39 ; 3 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %i.btz, i64 4
  %i.buc = load float, ptr %i.bub, align 4, !tbaa !39 ; 2 uses
  %i.bud = fneg fast float %i.buc
  %i.bue = fdiv fast float %i.bud, %i.bua         ; 2 uses
  %i.buf = fcmp fast olt float %.9801.lcssa.i, %i.bue
end_hunk_3
begin_hunk_4_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.lm = shl nuw i32 %i.ll, 16
  %i.ln = insertelement <4 x i32> poison, i32 %i.lm, i64 0
  %i.lo = bitcast <4 x i32> %i.ln to <4 x float>
  %i.lp = shufflevector <4 x float> %i.lo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lq = mul i64 %i.kr, %i.jp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.kw
  %i.lt = getelementptr inbounds [2 x i8], ptr %i.ls, i64 %i.ky
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !461
  %i.lv = zext i16 %i.lu to i32
  %i.lw = shl nuw i32 %i.lv, 16
  %i.lx = insertelement <4 x i32> poison, i32 %i.lw, i64 0
  %i.ly = bitcast <4 x i32> %i.lx to <4 x float>
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = mul i64 %i.kr, %i.jq
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.kw
  %i.md = getelementptr inbounds [2 x i8], ptr %i.mc, i64 %i.ky
  %i.me = load i16, ptr %i.md, align 2, !tbaa !461
  %i.mf = zext i16 %i.me to i32
  %i.mg = shl nuw i32 %i.mf, 16
  %i.mh = insertelement <4 x i32> poison, i32 %i.mg, i64 0
  %i.mi = bitcast <4 x i32> %i.mh to <4 x float>
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mk = mul i64 %i.kr, %i.jr
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.kw
  %i.mn = getelementptr inbounds [2 x i8], ptr %i.mm, i64 %i.ky
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !461
  %i.mp = zext i16 %i.mo to i32
  %i.mq = shl nuw i32 %i.mp, 16
  %i.mr = insertelement <4 x i32> poison, i32 %i.mq, i64 0
  %i.ms = bitcast <4 x i32> %i.mr to <4 x float>
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mu = mul i64 %i.kr, %i.js
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.kw
  %i.mx = getelementptr inbounds [2 x i8], ptr %i.mw, i64 %i.ky
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !461
  %i.mz = zext i16 %i.my to i32
  %i.na = shl nuw i32 %i.mz, 16
  %i.nb = insertelement <4 x i32> poison, i32 %i.na, i64 0
  %i.nc = bitcast <4 x i32> %i.nb to <4 x float>
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ne = mul i64 %i.kr, %i.jt
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.kw
  %i.nh = getelementptr inbounds [2 x i8], ptr %i.ng, i64 %i.ky
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !461
  %i.nj = zext i16 %i.ni to i32
  %i.nk = shl nuw i32 %i.nj, 16
  %i.nl = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %i.nm = bitcast <4 x i32> %i.nl to <4 x float>
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.no = mul i64 %i.kr, %i.jn
  %i.np = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.kw
  %i.nr = getelementptr inbounds [2 x i8], ptr %i.nq, i64 %i.ky
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit975.us.us.i:                 ; preds = %bb.ac
  %i.ns = load i32, ptr %i.o, align 4, !tbaa !56, !noalias !534
  %i.nt = load ptr, ptr %1, align 8, !tbaa !18, !noalias !534 ; 2 uses
  %i.nu = load i64, ptr %i.fk, align 8, !tbaa !20, !noalias !534
  %i.nv = load i64, ptr %i.fl, align 8, !tbaa !57, !noalias !534 ; 2 uses
  %i.nw = mul i64 %i.nv, %i.nu                    ; 2 uses
  %i.nx = mul i64 %i.nw, %i.ju
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = sext i32 %i.ns to i64
  %i.oa = mul nsw i64 %i.nz, %i.us
  %i.ob = mul i64 %i.oa, %i.nv                    ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.ob
  %i.od = shl nsw i32 %i.ki, 2
  %i.oe = sext i32 %i.od to i64                   ; 2 uses
  %i.of = getelementptr inbounds [2 x i8], ptr %i.oc, i64 %i.oe ; 4 uses
  %i.og = mul i64 %i.nw, %i.jv
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ob
  %i.oj = getelementptr inbounds [2 x i8], ptr %i.oi, i64 %i.oe ; 4 uses
  %i.ok = load i16, ptr %i.of, align 2, !tbaa !461
  %i.ol = zext i16 %i.ok to i32
  %i.om = shl nuw i32 %i.ol, 16
  %i.on = insertelement <4 x i32> poison, i32 %i.om, i64 0
  %i.oo = bitcast <4 x i32> %i.on to <4 x float>
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oq = getelementptr inbounds nuw i8, ptr %i.of, i64 2
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !461
  %i.os = zext i16 %i.or to i32
  %i.ot = shl nuw i32 %i.os, 16
  %i.ou = insertelement <4 x i32> poison, i32 %i.ot, i64 0
  %i.ov = bitcast <4 x i32> %i.ou to <4 x float>
  %i.ow = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ox = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !461
  %i.oz = zext i16 %i.oy to i32
  %i.pa = shl nuw i32 %i.oz, 16
  %i.pb = insertelement <4 x i32> poison, i32 %i.pa, i64 0
  %i.pc = bitcast <4 x i32> %i.pb to <4 x float>
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pe = getelementptr inbounds nuw i8, ptr %i.of, i64 6
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !461
  %i.pg = zext i16 %i.pf to i32
  %i.ph = shl nuw i32 %i.pg, 16
  %i.pi = insertelement <4 x i32> poison, i32 %i.ph, i64 0
  %i.pj = bitcast <4 x i32> %i.pi to <4 x float>
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pl = load i16, ptr %i.oj, align 2, !tbaa !461
  %i.pm = zext i16 %i.pl to i32
  %i.pn = shl nuw i32 %i.pm, 16
  %i.po = insertelement <4 x i32> poison, i32 %i.pn, i64 0
  %i.pp = bitcast <4 x i32> %i.po to <4 x float>
  %i.pq = shufflevector <4 x float> %i.pp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !461
  %i.pt = zext i16 %i.ps to i32
  %i.pu = shl nuw i32 %i.pt, 16
  %i.pv = insertelement <4 x i32> poison, i32 %i.pu, i64 0
  %i.pw = bitcast <4 x i32> %i.pv to <4 x float>
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.py = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !461
  %i.qa = zext i16 %i.pz to i32
  %i.qb = shl nuw i32 %i.qa, 16
  %i.qc = insertelement <4 x i32> poison, i32 %i.qb, i64 0
  %i.qd = bitcast <4 x i32> %i.qc to <4 x float>
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qf = getelementptr inbounds nuw i8, ptr %i.oj, i64 6
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit976.us.us.i:                 ; preds = %bb.ac
  %i.qg = load i32, ptr %i.o, align 4, !tbaa !56, !noalias !537
  %i.qh = load ptr, ptr %1, align 8, !tbaa !18, !noalias !537
  %i.qi = load i64, ptr %i.fk, align 8, !tbaa !20, !noalias !537
  %i.qj = mul i64 %i.qi, %i.jw
  %i.qk = load i64, ptr %i.fl, align 8, !tbaa !57, !noalias !537 ; 2 uses
  %i.ql = mul i64 %i.qj, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.ql
  %i.qn = sext i32 %i.qg to i64
  %i.qo = mul nsw i64 %i.qn, %i.us
  %i.qp = mul i64 %i.qo, %i.qk
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 %i.qp
  %i.qr = shl nsw i32 %i.ki, 3
  %i.qs = sext i32 %i.qr to i64
  %i.qt = getelementptr inbounds [2 x i8], ptr %i.qq, i64 %i.qs ; 5 uses
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !461
  %i.qv = zext i16 %i.qu to i32
  %i.qw = shl nuw i32 %i.qv, 16
  %i.qx = insertelement <4 x i32> poison, i32 %i.qw, i64 0
  %i.qy = bitcast <4 x i32> %i.qx to <4 x float>
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 2
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !461
  %i.rc = zext i16 %i.rb to i32
  %i.rd = shl nuw i32 %i.rc, 16
  %i.re = insertelement <4 x i32> poison, i32 %i.rd, i64 0
  %i.rf = bitcast <4 x i32> %i.re to <4 x float>
  %i.rg = shufflevector <4 x float> %i.rf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !461
  %i.rj = zext i16 %i.ri to i32
  %i.rk = shl nuw i32 %i.rj, 16
  %i.rl = insertelement <4 x i32> poison, i32 %i.rk, i64 0
  %i.rm = bitcast <4 x i32> %i.rl to <4 x float>
  %i.rn = shufflevector <4 x float> %i.rm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qt, i64 6
  %i.rp = load <4 x i16>, ptr %i.ro, align 2, !tbaa !461
  %i.rq = zext <4 x i16> %i.rp to <4 x i32>
  %i.rr = shl nuw <4 x i32> %i.rq, splat (i32 16) ; 4 uses
  %i.rs = bitcast <4 x i32> %i.rr to <4 x float>
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = bitcast <4 x i32> %i.rr to <4 x float>
  %i.rv = shufflevector <4 x float> %i.ru, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.rw = bitcast <4 x i32> %i.rr to <4 x float>
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ry = bitcast <4 x i32> %i.rr to <4 x float>
  %i.rz = shufflevector <4 x float> %i.ry, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qt, i64 14
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit976.us.us.i, %_ZN4ncnn3MatD2Ev.exit975.us.us.i, %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  %.sink3743.in.i = phi ptr [ %i.sa, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qf, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nr, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3733.i = phi <4 x float> [ %i.qz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.op, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lf, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3725.i = phi <4 x float> [ %i.rg, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ow, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lp, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3717.i = phi <4 x float> [ %i.rn, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pd, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lz, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink.i.a = phi <4 x float> [ %i.rt, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pk, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.mj, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3702.i = phi <4 x float> [ %i.rv, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pq, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.mt, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3693.i = phi <4 x float> [ %i.rx, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.px, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nd, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3684.i = phi <4 x float> [ %i.rz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qe, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nn, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3743.i = load i16, ptr %.sink3743.in.i, align 2, !tbaa !461
  %i.sb = zext i16 %.sink3743.i to i32
  %i.sc = shl nuw i32 %i.sb, 16
  %i.sd = insertelement <4 x i32> poison, i32 %i.sc, i64 0
  %i.se = bitcast <4 x i32> %i.sd to <4 x float>
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sg = load i64, ptr %i.km, align 1, !tbaa !310
  %i.sh = insertelement <2 x i64> poison, i64 %i.sg, i64 0
  %i.si = bitcast <2 x i64> %i.sh to <8 x i16>
  %i.sj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.si, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sk = bitcast <8 x i16> %i.sj to <4 x float>
  %i.sl = fmul fast <4 x float> %.sink3733.i, %i.sk
  %i.sm = fadd fast <4 x float> %.323852587.us.us.i, %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.so = load i64, ptr %i.sn, align 1, !tbaa !310
  %i.sp = insertelement <2 x i64> poison, i64 %i.so, i64 0
  %i.sq = bitcast <2 x i64> %i.sp to <8 x i16>
  %i.sr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ss = bitcast <8 x i16> %i.sr to <4 x float>
  %i.st = fmul fast <4 x float> %.sink3725.i, %i.ss
  %i.su = fadd fast <4 x float> %.223962586.us.us.i, %i.st
  %i.sv = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.sw = load i64, ptr %i.sv, align 1, !tbaa !310
  %i.sx = insertelement <2 x i64> poison, i64 %i.sw, i64 0
  %i.sy = bitcast <2 x i64> %i.sx to <8 x i16>
  %i.sz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ta = bitcast <8 x i16> %i.sz to <4 x float>
  %i.tb = fmul fast <4 x float> %.sink3717.i, %i.ta
  %i.tc = fadd fast <4 x float> %.224112585.us.us.i, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.te = load i64, ptr %i.td, align 1, !tbaa !310
  %i.tf = insertelement <2 x i64> poison, i64 %i.te, i64 0
  %i.tg = bitcast <2 x i64> %i.tf to <8 x i16>
  %i.th = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ti = bitcast <8 x i16> %i.th to <4 x float>
  %i.tj = fmul fast <4 x float> %.sink.i.a, %i.ti
  %i.tk = fadd fast <4 x float> %.224212584.us.us.i, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.tm = load i64, ptr %i.tl, align 1, !tbaa !310
  %i.tn = insertelement <2 x i64> poison, i64 %i.tm, i64 0
  %i.to = bitcast <2 x i64> %i.tn to <8 x i16>
  %i.tp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.to, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tq = bitcast <8 x i16> %i.tp to <4 x float>
  %i.tr = fmul fast <4 x float> %.sink3702.i, %i.tq
  %i.ts = fadd fast <4 x float> %i.tr, %i.sm
  %i.tt = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.tu = load i64, ptr %i.tt, align 1, !tbaa !310
  %i.tv = insertelement <2 x i64> poison, i64 %i.tu, i64 0
  %i.tw = bitcast <2 x i64> %i.tv to <8 x i16>
  %i.tx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ty = bitcast <8 x i16> %i.tx to <4 x float>
  %i.tz = fmul fast <4 x float> %.sink3693.i, %i.ty
  %i.ua = fadd fast <4 x float> %i.tz, %i.su
  %i.ub = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.uc = load i64, ptr %i.ub, align 1, !tbaa !310
  %i.ud = insertelement <2 x i64> poison, i64 %i.uc, i64 0
  %i.ue = bitcast <2 x i64> %i.ud to <8 x i16>
  %i.uf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ue, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ug = bitcast <8 x i16> %i.uf to <4 x float>
  %i.uh = fmul fast <4 x float> %.sink3684.i, %i.ug
  %i.ui = fadd fast <4 x float> %i.uh, %i.tc
  %i.uj = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.uk = load i64, ptr %i.uj, align 1, !tbaa !310
  %i.ul = insertelement <2 x i64> poison, i64 %i.uk, i64 0
  %i.um = bitcast <2 x i64> %i.ul to <8 x i16>
  %i.un = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.um, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uo = bitcast <8 x i16> %i.un to <4 x float>
  %i.up = fmul fast <4 x float> %i.sf, %i.uo
  %i.uq = fadd fast <4 x float> %i.up, %i.tk
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac, %bb.ab, %bb.aa
  %.32422.us.us.i = phi nsz <4 x float> [ %.224212584.us.us.i, %bb.aa ], [ %.224212584.us.us.i, %bb.ac ], [ %.224212584.us.us.i, %bb.ab ], [ %i.uq, %.sink.split.i ] ; 2 uses
  %.32412.us.us.i = phi nsz <4 x float> [ %.224112585.us.us.i, %bb.aa ], [ %.224112585.us.us.i, %bb.ac ], [ %.224112585.us.us.i, %bb.ab ], [ %i.ui, %.sink.split.i ] ; 2 uses
  %.32397.us.us.i = phi nsz <4 x float> [ %.223962586.us.us.i, %bb.aa ], [ %.223962586.us.us.i, %bb.ac ], [ %.223962586.us.us.i, %bb.ab ], [ %i.ua, %.sink.split.i ] ; 2 uses
  %.42386.us.us.i = phi nsz <4 x float> [ %.323852587.us.us.i, %bb.aa ], [ %.323852587.us.us.i, %bb.ac ], [ %.323852587.us.us.i, %bb.ab ], [ %i.ts, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jm
  br i1 %exitcond.not.i, label %..loopexit2574_crit_edge.us.us.i, label %bb.aa, !llvm.loop !540

..loopexit2574_crit_edge.us.us.i:                 ; preds = %bb.ad, %bb.z, %.lr.ph2597.split.us.us.i
  %.42423.us.us.i = phi nsz <4 x float> [ %.124202592.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124202592.us.us.i, %bb.z ], [ %.32422.us.us.i, %bb.ad ] ; 2 uses
  %.42413.us.us.i = phi nsz <4 x float> [ %.124102593.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124102593.us.us.i, %bb.z ], [ %.32412.us.us.i, %bb.ad ] ; 2 uses
  %.42398.us.us.i = phi nsz <4 x float> [ %.123952594.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.123952594.us.us.i, %bb.z ], [ %.32397.us.us.i, %bb.ad ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223842595.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.223842595.us.us.i, %bb.z ], [ %.42386.us.us.i, %bb.ad ] ; 2 uses
  %indvars.iv.next3337.i = add nuw nsw i64 %indvars.iv3336.i, 1 ; 2 uses
  %exitcond3340.not.i = icmp eq i64 %indvars.iv.next3337.i, %wide.trip.count3339.i
  br i1 %exitcond3340.not.i, label %._crit_edge.us.i, label %.lr.ph2597.split.us.us.i, !llvm.loop !541

.preheader2573.us.us.i.a:                         ; preds = %bb.z
  %i.ur = mul nuw nsw i64 %indvars.iv3336.i, %i.jm
  %i.us = sext i32 %i.kd to i64                   ; 3 uses
  br label %bb.aa

.preheader2581.i:                                 ; preds = %._crit_edge.us.i, %.preheader2578.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02419.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02409.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi2604.us.i.a, %._crit_edge.us.i ] ; 4 uses
  %.02394.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi2605.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12383.lcssa.i = phi <4 x float> [ %.02382.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02382.i, %.preheader2578.preheader.i ], [ %.us-phi2606.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0721.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.ih, %.preheader2578.preheader.i ], [ %i.ih, %._crit_edge.us.i ] ; 9 uses
  %.0716.lcssa.i = phi ptr [ %i.jd, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3334.i, %.preheader2578.preheader.i ], [ %i.jx, %._crit_edge.us.i ] ; 4 uses
  %i.ut = or disjoint i32 %.0721.lcssa.i, 3       ; 2 uses
  %i.uu = icmp slt i32 %i.ut, %i.hc
  br i1 %i.uu, label %.preheader2577.lr.ph.i, label %.preheader2580.i

.preheader2577.lr.ph.i:                           ; preds = %.preheader2581.i
  %i.uv = load i32, ptr %i.d, align 4             ; 2 uses
  %i.uw = load i32, ptr %i.j, align 4
  %invariant.op2678.i = sub i32 %.neg2536.i.a, %i.uw ; 2 uses
  %i.ux = load i32, ptr %i.f, align 4             ; 4 uses
  %i.uy = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.uy                       ; 2 uses
  %i.uz = load i32, ptr %i.c, align 4             ; 2 uses
  %i.va = load i32, ptr %i.i, align 4
  %.neg2534.i = add nuw nsw i32 %.07152801.i, 1
  %invariant.op2642.i = sub i32 %.neg2534.i, %i.va ; 2 uses
  %i.vb = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.ik, label %.preheader2577.lr.ph.split.us.i, label %.preheader2577.preheader.i

.preheader2577.preheader.i:                       ; preds = %.preheader2577.lr.ph.i
  %i.vc = add i32 %.0721.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %i.hc, i32 %i.vc)
  %reass.sub = sub i32 %smax.i, %.0721.lcssa.i
  %i.vd = add i32 %reass.sub, -4                  ; 2 uses
  %i.ve = lshr i32 %i.vd, 1
  %i.vf = and i32 %i.ve, 2147483646
  %narrow3647.i = add nuw i32 %i.vf, 2
  %i.vg = zext i32 %narrow3647.i to i64
  %i.vh = mul nsw i64 %i.vg, %i.ip
  %scevgep3344.i.a = getelementptr i8, ptr %.0716.lcssa.i, i64 %i.vh
  %i.vi = add i32 %.0721.lcssa.i, 4
  %i.vj = and i32 %i.vd, -4
  %i.vk = add i32 %i.vi, %i.vj
  br label %.preheader2580.i

.preheader2577.lr.ph.split.us.i:                  ; preds = %.preheader2577.lr.ph.i
  %i.vl = icmp sgt i32 %.fr.i, 0
  br i1 %i.vl, label %.preheader2577.us.us.preheader.i, label %.preheader2577.us.preheader.i

.preheader2577.us.preheader.i:                    ; preds = %.preheader2577.lr.ph.split.us.i
  %i.vm = add i32 %.0721.lcssa.i, 7
  %smax3345.i = call i32 @llvm.smax.i32(i32 %i.hc, i32 %i.vm)
  %reass.sub135 = sub i32 %smax3345.i, %.0721.lcssa.i
  %i.vn = add i32 %reass.sub135, -4               ; 2 uses
  %i.vo = lshr i32 %i.vn, 1
  %i.vp = and i32 %i.vo, 2147483646
  %narrow3648.i.a = add nuw i32 %i.vp, 2
  %i.vq = zext i32 %narrow3648.i.a to i64
  %i.vr = mul nsw i64 %i.vq, %i.ip
  %scevgep3346.i = getelementptr i8, ptr %.0716.lcssa.i, i64 %i.vr
  %i.vs = add i32 %.0721.lcssa.i, 4
  %i.vt = and i32 %i.vn, -4
  %i.vu = add i32 %i.vs, %i.vt
  br label %.preheader2580.i

.preheader2577.us.us.preheader.i:                 ; preds = %.preheader2577.lr.ph.split.us.i
  %i.vv = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.vw = zext i32 %.0721.lcssa.i to i64
  %i.vx = zext nneg i32 %i.ut to i64
  br label %.preheader2577.us.us.i

.preheader2577.us.us.i:                           ; preds = %._crit_edge.split.us.us2715.us.i, %.preheader2577.us.us.preheader.i
  %indvars.iv3362.i = phi i64 [ %i.vw, %.preheader2577.us.us.preheader.i ], [ %indvars.iv.next3363.i, %._crit_edge.split.us.us2715.us.i ] ; 5 uses
  %i.vy = phi i64 [ %i.vx, %.preheader2577.us.us.preheader.i ], [ %i.adf, %._crit_edge.split.us.us2715.us.i ]
  %.17172699.us.us.i = phi ptr [ %.0716.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %i.ade, %._crit_edge.split.us.us2715.us.i ] ; 3 uses
  %.623872697.us.us.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi76, %._crit_edge.split.us.us2715.us.i ] ; 3 uses
  %.523992696.us.us.i = phi <4 x float> [ %.02394.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi75, %._crit_edge.split.us.us2715.us.i ] ; 3 uses
  %.524142695.us.us.i = phi <4 x float> [ %.02409.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi74, %._crit_edge.split.us.us2715.us.i ] ; 3 uses
  %.524242694.us.us.i = phi <4 x float> [ %.02419.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2715.us.i ] ; 3 uses
  %i.vz = add nuw nsw i64 %indvars.iv3362.i, 1
  %i.wa = add nuw nsw i64 %indvars.iv3362.i, 2
  %i.wb = lshr exact i64 %indvars.iv3362.i, 2
  switch i32 %.fr2667.i, label %._crit_edge.split.us.us2715.us.i [
    i32 4, label %.preheader2577.us.us.i.split.us
    i32 1, label %.preheader2577.us.us.i.split.us77
  ]

.preheader2577.us.us.i.split.us:                  ; preds = %.preheader2577.us.us.i, %..loopexit2572_crit_edge.us.us.us.i.us
  %indvars.iv3357.i.us = phi i64 [ %indvars.iv.next3358.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ 0, %.preheader2577.us.us.i ] ; 3 uses
  %.72671.us.us.us.i.us = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624002670.us.us.us.i.us = phi <4 x float> [ %.92403.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.523992696.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624152669.us.us.us.i.us = phi <4 x float> [ %.92418.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524142695.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624252668.us.us.us.i.us = phi <4 x float> [ %.92428.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524242694.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %i.wc = trunc i64 %indvars.iv3357.i.us to i32
  %i.wd = mul i32 %i.uv, %i.wc
  %.reass2679.us.us.us.i.us = add i32 %i.wd, %invariant.op2678.i ; 3 uses
  %i.we = icmp slt i32 %.reass2679.us.us.us.i.us, 0
  br i1 %i.we, label %..loopexit2572_crit_edge.us.us.us.i.us, label %bb.ae

bb.ae:                                            ; preds = %.preheader2577.us.us.i.split.us
  %i.wf = srem i32 %.reass2679.us.us.us.i.us, %i.ux
  %i.wg = sdiv i32 %.reass2679.us.us.us.i.us, %i.ux ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.wf, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.wg, %i.he
  %or.cond313 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond313, label %.preheader2571.us.us.us.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us

.preheader2571.us.us.us.i.us:                     ; preds = %bb.ae
  %i.wh = mul nuw nsw i64 %indvars.iv3357.i.us, %i.vv
  %i.wi = sext i32 %i.wg to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2571.us.us.us.i.us, %bb.ag
  %indvars.iv3352.i.us = phi i64 [ %indvars.iv.next3353.i.us, %bb.ag ], [ 0, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.823882636.us.us.us.us.i.us = phi <4 x float> [ %.92389.us.us.us.us.i.us, %bb.ag ], [ %.72671.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724012635.us.us.us.us.i.us = phi <4 x float> [ %.82402.us.us.us.us.i.us, %bb.ag ], [ %.624002670.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724162634.us.us.us.us.i.us = phi <4 x float> [ %.82417.us.us.us.us.i.us, %bb.ag ], [ %.624152669.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724262633.us.us.us.us.i.us = phi <4 x float> [ %.82427.us.us.us.us.i.us, %bb.ag ], [ %.624252668.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %i.wj = trunc i64 %indvars.iv3352.i.us to i32
  %i.wk = mul i32 %i.uz, %i.wj
  %.reass.us.us2688.us.us.i.us = add i32 %i.wk, %invariant.op2642.i ; 3 uses
  %i.wl = icmp slt i32 %.reass.us.us2688.us.us.i.us, 0
  br i1 %i.wl, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.wm = srem i32 %.reass.us.us2688.us.us.i.us, %i.vb
  %i.wn = sdiv i32 %.reass.us.us2688.us.us.i.us, %i.vb ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.wm, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.wn, %i.hd
  %or.cond314 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond314, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.ag

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.af
  %i.wo = add nuw nsw i64 %indvars.iv3352.i.us, %i.wh
  %i.wp = shl i64 %i.wo, 4
  %i.wq = and i64 %i.wp, 4294967280
  %i.wr = getelementptr inbounds nuw [2 x i8], ptr %.17172699.us.us.i, i64 %i.wq ; 4 uses
  %i.ws = load i32, ptr %i.o, align 4, !tbaa !56, !noalias !542
  %i.wt = load ptr, ptr %1, align 8, !tbaa !18, !noalias !542
  %i.wu = load i64, ptr %i.fk, align 8, !tbaa !20, !noalias !542
  %i.wv = mul i64 %i.wu, %i.wb
  %i.ww = load i64, ptr %i.fl, align 8, !tbaa !57, !noalias !542 ; 2 uses
  %i.wx = mul i64 %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wx
  %i.wz = sext i32 %i.ws to i64
  %i.xa = mul nsw i64 %i.wz, %i.wi
  %i.xb = mul i64 %i.xa, %i.ww
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.xb
  %i.xd = shl nsw i32 %i.wn, 2
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [2 x i8], ptr %i.xc, i64 %i.xe ; 4 uses
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !461
  %i.xh = zext i16 %i.xg to i32
  %i.xi = shl nuw i32 %i.xh, 16
  %i.xj = insertelement <4 x i32> poison, i32 %i.xi, i64 0
  %i.xk = bitcast <4 x i32> %i.xj to <4 x float>
  %i.xl = shufflevector <4 x float> %i.xk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xf, i64 2
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !461
  %i.xo = zext i16 %i.xn to i32
  %i.xp = shl nuw i32 %i.xo, 16
  %i.xq = insertelement <4 x i32> poison, i32 %i.xp, i64 0
  %i.xr = bitcast <4 x i32> %i.xq to <4 x float>
  %i.xs = shufflevector <4 x float> %i.xr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !461
  %i.xv = zext i16 %i.xu to i32
  %i.xw = shl nuw i32 %i.xv, 16
  %i.xx = insertelement <4 x i32> poison, i32 %i.xw, i64 0
  %i.xy = bitcast <4 x i32> %i.xx to <4 x float>
  %i.xz = shufflevector <4 x float> %i.xy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xf, i64 6
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !461
  %i.yc = zext i16 %i.yb to i32
  %i.yd = shl nuw i32 %i.yc, 16
  %i.ye = insertelement <4 x i32> poison, i32 %i.yd, i64 0
  %i.yf = bitcast <4 x i32> %i.ye to <4 x float>
  %i.yg = shufflevector <4 x float> %i.yf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yh = load i64, ptr %i.wr, align 1, !tbaa !310
end_hunk_4
begin_hunk_5_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.agw = icmp sgt i32 %i.hc, %i.agv
  br i1 %i.agw, label %.preheader2576.us.us.i, label %.preheader2579.loopexit.i, !llvm.loop !556

.preheader2579.loopexit.i:                        ; preds = %._crit_edge.split.us.us2762.us.i
  %i.agx = trunc nuw i64 %indvars.iv.next3380.i to i32
  br label %.preheader2579.i

.preheader2579.i:                                 ; preds = %.preheader2579.loopexit.i, %.preheader2576.us.preheader.i, %.preheader2576.preheader.i, %.preheader2580.i
  %.102404.lcssa.i = phi <4 x float> [ %.52399.lcssa.i, %.preheader2580.i ], [ %.142408.us.us.us.i, %.preheader2579.loopexit.i ], [ %.52399.lcssa.i, %.preheader2576.us.preheader.i ], [ %.52399.lcssa.i, %.preheader2576.preheader.i ]
  %.112391.lcssa.i = phi <4 x float> [ %.62387.lcssa.i, %.preheader2580.i ], [ %.152393.us.us.us.i, %.preheader2579.loopexit.i ], [ %.62387.lcssa.i, %.preheader2576.us.preheader.i ], [ %.62387.lcssa.i, %.preheader2576.preheader.i ] ; 3 uses
  %.2723.lcssa.i = phi i32 [ %.1722.lcssa.i, %.preheader2580.i ], [ %i.agx, %.preheader2579.loopexit.i ], [ %i.aeg, %.preheader2576.us.preheader.i ], [ %i.ady, %.preheader2576.preheader.i ] ; 2 uses
  %.2718.lcssa.i = phi ptr [ %.1717.lcssa.i, %.preheader2580.i ], [ %i.agt, %.preheader2579.loopexit.i ], [ %scevgep3368.i, %.preheader2576.us.preheader.i ], [ %scevgep3366.i.a, %.preheader2576.preheader.i ]
  %i.agy = icmp slt i32 %.2723.lcssa.i, %i.hc
  br i1 %i.agy, label %.preheader2575.lr.ph.i, label %._crit_edge2787.i

.preheader2575.lr.ph.i:                           ; preds = %.preheader2579.i
  %i.agz = load i32, ptr %i.d, align 4
  %i.aha = load i32, ptr %i.j, align 4
  %invariant.op2779.i = sub i32 %.neg2536.i.a, %i.aha
  %i.ahb = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ahc = load i32, ptr %i.a, align 4
  %.fr3237.i.a = freeze i32 %i.ahc                ; 2 uses
  %i.ahd = load i32, ptr %i.c, align 4
  %i.ahe = load i32, ptr %i.i, align 4
  %.neg2526.i = add nuw nsw i32 %.07152801.i, 1
  %invariant.op2774.i = sub i32 %.neg2526.i, %i.ahe
  %i.ahf = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ahg = icmp sgt i32 %.fr3237.i.a, 0
  %or.cond.i = and i1 %i.ik, %i.ahg
  br i1 %or.cond.i, label %.preheader2575.us.us.preheader.i, label %._crit_edge2787.i

.preheader2575.us.us.preheader.i:                 ; preds = %.preheader2575.lr.ph.i
  %i.ahh = zext nneg i32 %.fr3237.i.a to i64      ; 2 uses
  %i.ahi = zext i32 %.2723.lcssa.i to i64
  br label %.preheader2575.us.us.i

.preheader2575.us.us.i:                           ; preds = %._crit_edge.split.us.us2798.us.i, %.preheader2575.us.us.preheader.i
  %indvars.iv3392.i = phi i64 [ %i.ahi, %.preheader2575.us.us.preheader.i ], [ %indvars.iv.next3393.i, %._crit_edge.split.us.us2798.us.i ] ; 2 uses
  %.37192785.us.us.i = phi ptr [ %.2718.lcssa.i, %.preheader2575.us.us.preheader.i ], [ %i.aiz, %._crit_edge.split.us.us2798.us.i ] ; 2 uses
  %.162783.us.us.i = phi <4 x float> [ %.112391.lcssa.i, %.preheader2575.us.us.preheader.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2798.us.i ]
  br label %bb.ap

bb.ap:                                            ; preds = %..loopexit2568_crit_edge.us.us.us.i, %.preheader2575.us.us.i
  %indvars.iv3387.i = phi i64 [ %indvars.iv.next3388.i, %..loopexit2568_crit_edge.us.us.us.i ], [ 0, %.preheader2575.us.us.i ] ; 3 uses
  %.172775.us.us.us.i = phi <4 x float> [ %.20.us.us.us.i, %..loopexit2568_crit_edge.us.us.us.i ], [ %.162783.us.us.i, %.preheader2575.us.us.i ] ; 3 uses
  %i.ahj = trunc i64 %indvars.iv3387.i to i32
  %i.ahk = mul i32 %i.agz, %i.ahj
  %.reass2780.us.us.us.i = add i32 %i.ahk, %invariant.op2779.i ; 3 uses
  %i.ahl = icmp slt i32 %.reass2780.us.us.us.i, 0
  br i1 %i.ahl, label %..loopexit2568_crit_edge.us.us.us.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ahm = srem i32 %.reass2780.us.us.us.i, %i.ahb
  %i.ahn = sdiv i32 %.reass2780.us.us.us.i, %i.ahb ; 2 uses
  %.not922.us.us.us.i = icmp eq i32 %i.ahm, 0
  %.not923.us.us.us.i = icmp slt i32 %i.ahn, %i.he
  %or.cond319 = select i1 %.not922.us.us.us.i, i1 %.not923.us.us.us.i, i1 false
  br i1 %or.cond319, label %.preheader2567.us.us.us.i, label %..loopexit2568_crit_edge.us.us.us.i

bb.ar:                                            ; preds = %.preheader2567.us.us.us.i, %bb.at
  %indvars.iv3382.i = phi i64 [ 0, %.preheader2567.us.us.us.i ], [ %indvars.iv.next3383.i, %bb.at ] ; 3 uses
  %.182771.us.us.us.i = phi <4 x float> [ %.172775.us.us.us.i, %.preheader2567.us.us.us.i ], [ %.19.us.us.us.i, %bb.at ] ; 3 uses
  %i.aho = trunc i64 %indvars.iv3382.i to i32
  %i.ahp = mul i32 %i.ahd, %i.aho
  %.reass.us.us2797.us.i = add i32 %invariant.op2774.i, %i.ahp ; 3 uses
  %i.ahq = icmp slt i32 %.reass.us.us2797.us.i, 0
  br i1 %i.ahq, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ahr = srem i32 %.reass.us.us2797.us.i, %i.ahf
  %i.ahs = sdiv i32 %.reass.us.us2797.us.i, %i.ahf ; 2 uses
  %.not924.us.us.us.i = icmp eq i32 %i.ahr, 0
  %.not925.us.us.us.i = icmp slt i32 %i.ahs, %i.hd
  %or.cond320 = select i1 %.not924.us.us.us.i, i1 %.not925.us.us.us.i, i1 false
  br i1 %or.cond320, label %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, label %bb.at

_ZN4ncnn3MatD2Ev.exit958.us.us.us.i:              ; preds = %bb.as
  %i.aht = add nuw nsw i64 %indvars.iv3382.i, %i.aix
  %i.ahu = shl i64 %i.aht, 2
  %i.ahv = and i64 %i.ahu, 4294967292
  %i.ahw = getelementptr inbounds nuw [2 x i8], ptr %.37192785.us.us.i, i64 %i.ahv
  %i.ahx = load i32, ptr %i.o, align 4, !tbaa !56, !noalias !557
  %i.ahy = load ptr, ptr %1, align 8, !tbaa !18, !noalias !557
  %i.ahz = load i64, ptr %i.fk, align 8, !tbaa !20, !noalias !557
  %i.aia = mul i64 %i.ahz, %indvars.iv3392.i
  %i.aib = load i64, ptr %i.fl, align 8, !tbaa !57, !noalias !557 ; 2 uses
  %i.aic = mul i64 %i.aia, %i.aib
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahy, i64 %i.aic
  %i.aie = sext i32 %i.ahx to i64
  %i.aif = mul nsw i64 %i.aie, %i.aiy
  %i.aig = mul i64 %i.aif, %i.aib
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.aig
  %i.aii = sext i32 %i.ahs to i64
  %i.aij = getelementptr inbounds [2 x i8], ptr %i.aih, i64 %i.aii
  %i.aik = load i16, ptr %i.aij, align 2, !tbaa !461
  %i.ail = zext i16 %i.aik to i32
  %i.aim = shl nuw i32 %i.ail, 16
  %i.ain = insertelement <4 x i32> poison, i32 %i.aim, i64 0
  %i.aio = bitcast <4 x i32> %i.ain to <4 x float>
  %i.aip = shufflevector <4 x float> %i.aio, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiq = load i64, ptr %i.ahw, align 1, !tbaa !310
  %i.air = insertelement <2 x i64> poison, i64 %i.aiq, i64 0
  %i.ais = bitcast <2 x i64> %i.air to <8 x i16>
  %i.ait = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ais, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aiu = bitcast <8 x i16> %i.ait to <4 x float>
  %i.aiv = fmul fast <4 x float> %i.aip, %i.aiu
  %i.aiw = fadd fast <4 x float> %i.aiv, %.182771.us.us.us.i
  br label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, %bb.as, %bb.ar
  %.19.us.us.us.i = phi nsz <4 x float> [ %.182771.us.us.us.i, %bb.ar ], [ %i.aiw, %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i ], [ %.182771.us.us.us.i, %bb.as ] ; 2 uses
  %indvars.iv.next3383.i = add nuw nsw i64 %indvars.iv3382.i, 1 ; 2 uses
  %exitcond3386.not.i = icmp eq i64 %indvars.iv.next3383.i, %i.ahh
  br i1 %exitcond3386.not.i, label %..loopexit2568_crit_edge.us.us.us.i, label %bb.ar, !llvm.loop !560

..loopexit2568_crit_edge.us.us.us.i:              ; preds = %bb.at, %bb.aq, %bb.ap
  %.20.us.us.us.i = phi nsz <4 x float> [ %.172775.us.us.us.i, %bb.ap ], [ %.172775.us.us.us.i, %bb.aq ], [ %.19.us.us.us.i, %bb.at ] ; 3 uses
  %indvars.iv.next3388.i = add nuw nsw i64 %indvars.iv3387.i, 1 ; 2 uses
  %exitcond3391.not.i = icmp eq i64 %indvars.iv.next3388.i, %wide.trip.count3339.i
  br i1 %exitcond3391.not.i, label %._crit_edge.split.us.us2798.us.i, label %bb.ap, !llvm.loop !561

.preheader2567.us.us.us.i:                        ; preds = %bb.aq
  %i.aix = mul nuw nsw i64 %indvars.iv3387.i, %i.ahh
  %i.aiy = sext i32 %i.ahn to i64
  br label %bb.ar

._crit_edge.split.us.us2798.us.i:                 ; preds = %..loopexit2568_crit_edge.us.us.us.i
  %i.aiz = getelementptr inbounds [2 x i8], ptr %.37192785.us.us.i, i64 %i.it
  %indvars.iv.next3393.i = add nuw nsw i64 %indvars.iv3392.i, 1 ; 2 uses
  %i.aja = trunc nuw i64 %indvars.iv.next3393.i to i32
  %i.ajb = icmp sgt i32 %i.hc, %i.aja
  br i1 %i.ajb, label %.preheader2575.us.us.i, label %._crit_edge2787.i, !llvm.loop !562

._crit_edge2787.i:                                ; preds = %._crit_edge.split.us.us2798.us.i, %.preheader2575.lr.ph.i, %.preheader2579.i
  %.16.lcssa.i = phi <4 x float> [ %.112391.lcssa.i, %.preheader2579.i ], [ %.112391.lcssa.i, %.preheader2575.lr.ph.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2798.us.i ]
  %i.ajc = fadd fast <4 x float> %.52414.lcssa.i, %.52424.lcssa.i
  %i.ajd = fadd fast <4 x float> %i.ajc, %.102404.lcssa.i
  %i.aje = fadd fast <4 x float> %i.ajd, %.16.lcssa.i ; 10 uses
  switch i32 %i.ht, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 3, label %bb.aw
    i32 4, label %bb.ax
    i32 5, label %bb.ay
    i32 6, label %bb.az
  ]

bb.au:                                            ; preds = %._crit_edge2787.i
  %i.ajf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aje, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.av:                                            ; preds = %._crit_edge2787.i
  %i.ajg = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !39
  %i.aji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aje)
  %i.ajj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aje)
  %i.ajk = insertelement <4 x float> poison, float %i.ajh, i64 0
  %i.ajl = shufflevector <4 x float> %i.ajk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajm = fmul fast <4 x float> %i.ajl, %i.ajj
  %i.ajn = fadd fast <4 x float> %i.ajm, %i.aji
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.aw:                                            ; preds = %._crit_edge2787.i
  %i.ajo = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !39
  %i.ajq = insertelement <4 x float> poison, float %i.ajp, i64 0
  %i.ajr = shufflevector <4 x float> %i.ajq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajo, i64 4
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !39
  %i.aju = insertelement <4 x float> poison, float %i.ajt, i64 0
  %i.ajv = shufflevector <4 x float> %i.aju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aje, <4 x float> nofpclass(nan inf) %i.ajr)
  %i.ajx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajw, <4 x float> nofpclass(nan inf) %i.ajv)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ax:                                            ; preds = %._crit_edge2787.i
  %i.ajy = fneg fast <4 x float> %i.aje
  %i.ajz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajy, <4 x float> splat (float f0x42B0C0A5))
  %i.aka = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajz, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akb = fmul fast <4 x float> %i.aka, splat (float f0x3FB8AA3B)
  %i.akc = fadd fast <4 x float> %i.akb, splat (float 5.000000e-01) ; 2 uses
  %i.akd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akc)
  %i.ake = sitofp fast <4 x i32> %i.akd to <4 x float> ; 2 uses
  %i.akf = fcmp fast olt <4 x float> %i.akc, %i.ake
  %i.akg = select <4 x i1> %i.akf, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.akh = fsub fast <4 x float> %i.ake, %i.akg   ; 2 uses
  %i.aki = fmul fast <4 x float> %i.akh, splat (float f0x3F317218)
  %i.akj = fsub fast <4 x float> %i.aka, %i.aki   ; 8 uses
  %i.akk = fmul fast <4 x float> %i.akj, %i.akj
  %i.akl = fmul fast <4 x float> %i.akj, splat (float f0x39506967)
  %i.akm = fadd fast <4 x float> %i.akl, splat (float f0x3AB743CE)
  %i.akn = fmul fast <4 x float> %i.akm, %i.akj
  %i.ako = fadd fast <4 x float> %i.akn, splat (float f0x3C088908)
  %i.akp = fmul fast <4 x float> %i.ako, %i.akj
  %i.akq = fadd fast <4 x float> %i.akp, splat (float f0x3D2AA9C1)
  %i.akr = fmul fast <4 x float> %i.akq, %i.akj
  %i.aks = fadd fast <4 x float> %i.akr, splat (float f0x3E2AAAAA)
  %i.akt = fmul fast <4 x float> %i.aks, %i.akj
  %i.aku = fadd fast <4 x float> %i.akt, splat (float 5.000000e-01)
  %i.akv = fmul fast <4 x float> %i.akk, %i.aku
  %i.akw = fadd fast <4 x float> %i.akj, %i.akv
  %i.akx = fadd fast <4 x float> %i.akw, splat (float 1.000000e+00)
  %i.aky = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akh)
  %i.akz = shl <4 x i32> %i.aky, splat (i32 23)
  %i.ala = add <4 x i32> %i.akz, splat (i32 1065353216)
  %i.alb = bitcast <4 x i32> %i.ala to <4 x float>
  %i.alc = fmul fast <4 x float> %i.akx, %i.alb
  %i.ald = fadd fast <4 x float> %i.alc, splat (float 1.000000e+00)
  %i.ale = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ald
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ay:                                            ; preds = %._crit_edge2787.i
  %i.alf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aje, <4 x float> splat (float f0x42B0C0A5))
  %i.alg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.alh = fmul fast <4 x float> %i.alg, splat (float f0x3FB8AA3B)
  %i.ali = fadd fast <4 x float> %i.alh, splat (float 5.000000e-01) ; 2 uses
  %i.alj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ali)
  %i.alk = sitofp fast <4 x i32> %i.alj to <4 x float> ; 2 uses
  %i.all = fcmp fast olt <4 x float> %i.ali, %i.alk
  %i.alm = select <4 x i1> %i.all, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aln = fsub fast <4 x float> %i.alk, %i.alm   ; 2 uses
  %i.alo = fmul fast <4 x float> %i.aln, splat (float f0x3F317218)
  %i.alp = fsub fast <4 x float> %i.alg, %i.alo   ; 8 uses
  %i.alq = fmul fast <4 x float> %i.alp, %i.alp
  %i.alr = fmul fast <4 x float> %i.alp, splat (float f0x39506967)
  %i.als = fadd fast <4 x float> %i.alr, splat (float f0x3AB743CE)
  %i.alt = fmul fast <4 x float> %i.als, %i.alp
  %i.alu = fadd fast <4 x float> %i.alt, splat (float f0x3C088908)
  %i.alv = fmul fast <4 x float> %i.alu, %i.alp
  %i.alw = fadd fast <4 x float> %i.alv, splat (float f0x3D2AA9C1)
  %i.alx = fmul fast <4 x float> %i.alw, %i.alp
  %i.aly = fadd fast <4 x float> %i.alx, splat (float f0x3E2AAAAA)
  %i.alz = fmul fast <4 x float> %i.aly, %i.alp
  %i.ama = fadd fast <4 x float> %i.alz, splat (float 5.000000e-01)
  %i.amb = fmul fast <4 x float> %i.alq, %i.ama
  %i.amc = fadd fast <4 x float> %i.alp, %i.amb
  %i.amd = fadd fast <4 x float> %i.amc, splat (float 1.000000e+00)
  %i.ame = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aln)
  %i.amf = shl <4 x i32> %i.ame, splat (i32 23)
  %i.amg = add <4 x i32> %i.amf, splat (i32 1065353216)
  %i.amh = bitcast <4 x i32> %i.amg to <4 x float>
  %i.ami = fmul fast <4 x float> %i.amd, %i.amh
  %i.amj = fadd fast <4 x float> %i.ami, splat (float 1.000000e+00) ; 2 uses
  %i.amk = fcmp fast ole <4 x float> %i.amj, zeroinitializer
  %i.aml = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amj, <4 x float> splat (float f0x00800000))
  %i.amm = bitcast <4 x float> %i.aml to <4 x i32> ; 2 uses
  %i.amn = lshr <4 x i32> %i.amm, splat (i32 23)
  %i.amo = and <4 x i32> %i.amm, splat (i32 -2139095041)
  %i.amp = or disjoint <4 x i32> %i.amo, splat (i32 1056964608)
  %i.amq = bitcast <4 x i32> %i.amp to <4 x float> ; 3 uses
  %i.amr = add nsw <4 x i32> %i.amn, splat (i32 -127)
  %i.ams = sitofp fast <4 x i32> %i.amr to <4 x float> ; 2 uses
  %i.amt = fadd fast <4 x float> %i.ams, splat (float 1.000000e+00)
  %i.amu = fcmp fast olt <4 x float> %i.amq, splat (float f0x3F3504F3) ; 2 uses
  %i.amv = select <4 x i1> %i.amu, <4 x float> %i.amq, <4 x float> zeroinitializer
  %i.amw = fadd fast <4 x float> %i.amq, splat (float -1.000000e+00)
  %i.amx = select fast <4 x i1> %i.amu, <4 x float> %i.ams, <4 x float> %i.amt
  %i.amy = fadd fast <4 x float> %i.amw, %i.amv   ; 12 uses
  %i.amz = fmul fast <4 x float> %i.amy, %i.amy   ; 2 uses
  %i.ana = fmul fast <4 x float> %i.amy, splat (float f0x3D9021BB)
  %i.anb = fadd fast <4 x float> %i.ana, splat (float f0xBDEBD1B8)
  %i.anc = fmul fast <4 x float> %i.anb, %i.amy
  %i.and = fadd fast <4 x float> %i.anc, splat (float f0x3DEF251A)
  %i.ane = fmul fast <4 x float> %i.and, %i.amy
  %i.anf = fadd fast <4 x float> %i.ane, splat (float f0xBDFE5D4F)
  %i.ang = fmul fast <4 x float> %i.anf, %i.amy
  %i.anh = fadd fast <4 x float> %i.ang, splat (float f0x3E11E9BF)
  %i.ani = fmul fast <4 x float> %i.anh, %i.amy
  %i.anj = fadd fast <4 x float> %i.ani, splat (float f0xBE2AAE50)
  %i.ank = fmul fast <4 x float> %i.anj, %i.amy
  %i.anl = fadd fast <4 x float> %i.ank, splat (float f0x3E4CCEAC)
  %i.anm = fmul fast <4 x float> %i.anl, %i.amy
  %i.ann = fadd fast <4 x float> %i.anm, splat (float f0xBE7FFFFC)
  %i.ano = fmul fast <4 x float> %i.ann, %i.amy
  %i.anp = fadd fast <4 x float> %i.ano, splat (float f0x3EAAAAAA)
  %i.anq = fmul fast <4 x float> %i.amz, %i.amy
  %reass.mul.i.a = fmul fast <4 x float> %i.anq, %i.anp
  %.neg2520.i = fmul fast <4 x float> %i.amz, splat (float -5.000000e-01)
  %reass.mul2522.i = fmul fast <4 x float> %i.amx, splat (float f0x3F317218)
  %5 = fadd fast <4 x float> %i.amy, %.neg2520.i
  %i.anr = fadd fast <4 x float> %5, %reass.mul.i.a
  %i.ans = fadd fast <4 x float> %i.anr, %reass.mul2522.i
  %.neg.i = fmul fast <4 x float> %i.ans, splat (float -2.000000e+00)
  %i.ant = select fast <4 x i1> %i.amk, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.anu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ant, <4 x float> splat (float f0x42B0C0A5))
  %i.anv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.anu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.anw = fmul fast <4 x float> %i.anv, splat (float f0x3FB8AA3B)
  %i.anx = fadd fast <4 x float> %i.anw, splat (float 5.000000e-01) ; 2 uses
  %i.any = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.anx)
  %i.anz = sitofp fast <4 x i32> %i.any to <4 x float> ; 2 uses
  %i.aoa = fcmp fast olt <4 x float> %i.anx, %i.anz
  %i.aob = select <4 x i1> %i.aoa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aoc = fsub fast <4 x float> %i.anz, %i.aob   ; 2 uses
  %i.aod = fmul fast <4 x float> %i.aoc, splat (float f0x3F317218)
  %i.aoe = fsub fast <4 x float> %i.anv, %i.aod   ; 8 uses
  %i.aof = fmul fast <4 x float> %i.aoe, %i.aoe
  %i.aog = fmul fast <4 x float> %i.aoe, splat (float f0x39506967)
  %i.aoh = fadd fast <4 x float> %i.aog, splat (float f0x3AB743CE)
  %i.aoi = fmul fast <4 x float> %i.aoh, %i.aoe
  %i.aoj = fadd fast <4 x float> %i.aoi, splat (float f0x3C088908)
  %i.aok = fmul fast <4 x float> %i.aoj, %i.aoe
  %i.aol = fadd fast <4 x float> %i.aok, splat (float f0x3D2AA9C1)
  %i.aom = fmul fast <4 x float> %i.aol, %i.aoe
  %i.aon = fadd fast <4 x float> %i.aom, splat (float f0x3E2AAAAA)
  %i.aoo = fmul fast <4 x float> %i.aon, %i.aoe
  %i.aop = fadd fast <4 x float> %i.aoo, splat (float 5.000000e-01)
  %i.aoq = fmul fast <4 x float> %i.aof, %i.aop
  %i.aor = fadd fast <4 x float> %i.aoe, %i.aoq
  %i.aos = fadd fast <4 x float> %i.aor, splat (float 1.000000e+00)
  %i.aot = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aoc)
  %i.aou = shl <4 x i32> %i.aot, splat (i32 23)
  %i.aov = add <4 x i32> %i.aou, splat (i32 1065353216)
  %i.aow = bitcast <4 x i32> %i.aov to <4 x float>
  %i.aox = fmul fast <4 x float> %i.aos, %i.aow
  %i.aoy = fadd fast <4 x float> %i.aox, splat (float 1.000000e+00)
  %i.aoz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aoy
  %i.apa = fadd fast <4 x float> %i.aoz, splat (float -1.000000e+00)
  %i.apb = fmul fast <4 x float> %i.apa, %i.aje
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.az:                                            ; preds = %._crit_edge2787.i
  %i.apc = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !39
  %i.ape = insertelement <4 x float> poison, float %i.apd, i64 0
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 4
  %i.aph = load float, ptr %i.apg, align 4, !tbaa !39
  %i.api = insertelement <4 x float> poison, float %i.aph, i64 0
  %i.apj = shufflevector <4 x float> %i.api, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apk = fmul fast <4 x float> %i.apf, %i.aje
  %i.apl = fadd fast <4 x float> %i.apk, %i.apj
  %i.apm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.apl, <4 x float> zeroinitializer)
  %i.apn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.apm, <4 x float> splat (float 1.000000e+00))
  %i.apo = fmul fast <4 x float> %i.apn, %i.aje
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %._crit_edge2787.i
  %.0.i.i = phi nsz <4 x float> [ %i.apo, %bb.az ], [ %i.ajf, %bb.au ], [ %i.ajn, %bb.av ], [ %i.ajx, %bb.aw ], [ %i.ale, %bb.ax ], [ %i.apb, %bb.ay ], [ %i.aje, %._crit_edge2787.i ] ; 2 uses
  switch i32 %i.hh, label %bb.bb [
    i32 4, label %.thread.i
    i32 1, label %bb.ba
  ]

.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.app = bitcast <4 x float> %.0.i.i to <4 x i32>
  %i.apq = lshr <4 x i32> %i.app, splat (i32 16)
  %i.apr = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.apq, <4 x i32> poison)
  %i.aps = bitcast <8 x i16> %i.apr to <2 x i64>
  %i.apt = extractelement <2 x i64> %i.aps, i64 0
  store i64 %i.apt, ptr %.12802.i, align 1, !tbaa !310
  %i.apu = getelementptr inbounds nuw i8, ptr %.12802.i, i64 8
  br label %bb.bb

bb.ba:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.apv = bitcast <4 x float> %.0.i.i to <8 x i16> ; 4 uses
  %i.apw = extractelement <8 x i16> %i.apv, i64 1
  store i16 %i.apw, ptr %.12802.i, align 2, !tbaa !461
  %i.apx = extractelement <8 x i16> %i.apv, i64 3
  %i.apy = load i64, ptr %i.h, align 8, !tbaa !313 ; 3 uses
  %i.apz = getelementptr inbounds nuw [2 x i8], ptr %.12802.i, i64 %i.apy
  store i16 %i.apx, ptr %i.apz, align 2, !tbaa !461
  %i.aqa = extractelement <8 x i16> %i.apv, i64 5
  %.idx.i = shl i64 %i.apy, 2
  %i.aqb = getelementptr inbounds nuw i8, ptr %.12802.i, i64 %.idx.i
  store i16 %i.aqa, ptr %i.aqb, align 2, !tbaa !461
  %i.aqc = extractelement <8 x i16> %i.apv, i64 7
  %.idx921.i = mul i64 %i.apy, 6
  %i.aqd = getelementptr inbounds nuw i8, ptr %.12802.i, i64 %.idx921.i
  store i16 %i.aqc, ptr %i.aqd, align 2, !tbaa !461
  %i.aqe = getelementptr inbounds nuw i8, ptr %.12802.i, i64 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.3.i = phi ptr [ %i.aqe, %bb.ba ], [ %.12802.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.apu, %.thread.i ] ; 2 uses
  %i.aqf = add nuw nsw i32 %.07152801.i, 1        ; 2 uses
  %exitcond3395.not.i = icmp eq i32 %i.aqf, %i.hf
  br i1 %exitcond3395.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !563

._crit_edge3034.split.i:                          ; preds = %._crit_edge3032.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, %._crit_edge2807.i
  %i.aqg = shl nsw i32 %i.fs, 1                   ; 2 uses
  %i.aqh = add nsw i32 %i.aqg, %i.fq
  %i.aqi = icmp slt i32 %i.aqh, %i.ek
  br i1 %i.aqi, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, label %.loopexit

_ZN4ncnn3MatD2Ev.exit946.lr.ph.i:                 ; preds = %._crit_edge3034.split.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aqk = load i32, ptr %i.aqj, align 8, !tbaa !68
  %.fr3104.i = freeze i32 %i.aqk                  ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !70
  %i.aqn = mul i32 %i.aqm, %.fr3104.i             ; 14 uses
  %i.aqo = load i32, ptr %i.o, align 4, !tbaa !56 ; 6 uses
  %i.aqp = load i32, ptr %i.p, align 8, !tbaa !279 ; 5 uses
  %i.aqq = load i32, ptr %i.bj, align 4, !tbaa !56 ; 2 uses
  %i.aqr = load i32, ptr %i.bk, align 16, !tbaa !279 ; 2 uses
  %i.aqs = load ptr, ptr %4, align 16, !tbaa !18, !noalias !564
  %i.aqt = load i64, ptr %i.bm, align 16, !tbaa !20, !noalias !564
  %i.aqu = load i64, ptr %i.bf, align 16, !tbaa !57, !noalias !564
  %factor.op.mul3225.i = mul i64 %i.aqu, %i.aqt
  %i.aqv = icmp slt i32 %i.aqr, 1
  %i.aqw = icmp slt i32 %i.aqq, 1
  %i.aqx = icmp sgt i32 %i.aqn, 7
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %brmerge3234.i = select i1 %i.aqv, i1 true, i1 %i.aqw
  br i1 %brmerge3234.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  %i.ara = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.arb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.arc = load ptr, ptr %i.dw, align 8, !tbaa !18, !noalias !567
  %i.ard = load i64, ptr %i.arb, align 8, !tbaa !20, !noalias !567
  %i.are = load i64, ptr %i.ara, align 8, !tbaa !57, !noalias !567
  %factor.op.mul3228.i = mul i64 %i.are, %i.ard
  %i.arf = add i32 %i.aqn, -8                     ; 2 uses
  %i.arg = lshr i32 %i.arf, 2
  %i.arh = and i32 %i.arg, 1073741822
  %narrow3653.i.a = add nuw nsw i32 %i.arh, 2
  %i.ari = zext nneg i32 %narrow3653.i.a to i64
  %i.arj = and i32 %i.arf, -8
  %i.ark = add i32 %i.arj, 8
  %i.arl = sext i32 %i.aqn to i64
  %i.arm = sext i32 %i.fq to i64
  %i.arn = sext i32 %i.aqg to i64
  %i.aro = add nsw i64 %i.arn, %i.arm
  %i.arp = sext i32 %i.ek to i64
  %invariant.op3673.i = add nsw i64 %i.arl, -7
  %i.arq = sext i32 %i.aqo to i64                 ; 5 uses
  %i.arr = and i32 %i.aqn, -8
  br label %_ZN4ncnn3MatD2Ev.exit946.i

_ZN4ncnn3MatD2Ev.exit957.i:                       ; preds = %._crit_edge3032.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i
  %indvars.iv3484.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i ], [ %indvars.iv.next3485.i, %._crit_edge3032.i ] ; 2 uses
  %i.ars = shl nuw nsw i64 %indvars.iv3484.i, 1
  %i.art = add nsw i64 %i.ars, %i.gx              ; 4 uses
  %.reass.i = mul i64 %i.art, %factor.op.mul.i
  %i.aru = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass.i
  %i.arv = add nsw i64 %i.art, 1
  %.reass3037.i = mul i64 %i.arv, %factor.op.mul.i
  %i.arw = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass3037.i
  %i.arx = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not903.i = icmp eq ptr %i.arx, null
  %i.ary = getelementptr inbounds [4 x i8], ptr %i.arx, i64 %i.art
  %i.arz = trunc nsw i64 %i.art to i32            ; 3 uses
  %i.asa = sdiv i32 %i.arz, 8
  %i.asb = srem i32 %i.arz, 8
  %.lhs.trunc2480.i = trunc nsw i32 %i.asb to i8
  %i.asc = sdiv i8 %.lhs.trunc2480.i, 4
  %.sext2481.i = sext i8 %i.asc to i32
  %i.asd = add nsw i32 %i.asa, %.sext2481.i
  %i.ase = srem i32 %i.arz, 4
  %.lhs.trunc2482.i = trunc nsw i32 %i.ase to i8
  %i.asf = sdiv i8 %.lhs.trunc2482.i, 2
  %.sext2483.i = sext i8 %i.asf to i32
  %i.asg = add nsw i32 %i.asd, %.sext2483.i
  %i.ash = sext i32 %i.asg to i64
  %i.asi = load i32, ptr %i.g, align 4
  %.reass3041.i = mul i64 %factor.op.mul3040.i, %i.ash
  %i.asj = getelementptr i8, ptr %i.gn, i64 %.reass3041.i ; 3 uses
  br label %.preheader2566.i

.preheader2566.i:                                 ; preds = %._crit_edge3026.i, %_ZN4ncnn3MatD2Ev.exit957.i
  %.07383031.i = phi ptr [ %i.aru, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bmu, %._crit_edge3026.i ]
  %.07403030.i = phi ptr [ %i.arw, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bmv, %._crit_edge3026.i ]
  %.07423029.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %.neg2517.i, %._crit_edge3026.i ]
  %i.ask = load i32, ptr %i.b, align 4            ; 2 uses
  %i.asl = icmp sgt i32 %i.ask, 0                 ; 4 uses
  %.neg2517.i = add nuw nsw i32 %.07423029.i, 1   ; 6 uses
  %i.asm = load i32, ptr %i.k, align 4            ; 4 uses
  %i.asn = shl i32 %i.asm, 4
  %i.aso = sext i32 %i.asn to i64                 ; 2 uses
  %i.asp = shl i32 %i.asm, 3
  %i.asq = sext i32 %i.asp to i64                 ; 3 uses
  %i.asr = shl i32 %i.asm, 2
  %i.ass = sext i32 %i.asr to i64                 ; 3 uses
  %i.ast = shl nsw i32 %i.asm, 1
  %i.asu = sext i32 %i.ast to i64
  %i.asv = mul nsw i64 %i.aso, %i.gt
  %scevgep3403.i = getelementptr i8, ptr %i.asj, i64 %i.asv
  %wide.trip.count3418.i = zext nneg i32 %i.ask to i64 ; 5 uses
  br label %bb.bc

._crit_edge3032.i:                                ; preds = %._crit_edge3026.i
  %indvars.iv.next3485.i = add nuw nsw i64 %indvars.iv3484.i, 1 ; 2 uses
  %exitcond3488.not.i = icmp eq i64 %indvars.iv.next3485.i, %wide.trip.count3487.i
  br i1 %exitcond3488.not.i, label %._crit_edge3034.split.i, label %_ZN4ncnn3MatD2Ev.exit957.i, !llvm.loop !570

._crit_edge3026.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
  %exitcond3483.not.i = icmp eq i32 %.neg2517.i, %i.gc
  br i1 %exitcond3483.not.i, label %._crit_edge3032.i, label %.preheader2566.i, !llvm.loop !571

bb.bc:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, %.preheader2566.i
  %.17393025.i = phi ptr [ %.07383031.i, %.preheader2566.i ], [ %i.bmu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.17413024.i = phi ptr [ %.07403030.i, %.preheader2566.i ], [ %i.bmv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.07443023.i = phi i32 [ 0, %.preheader2566.i ], [ %i.bmw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 5 uses
  br i1 %.not903.i, label %_ZN4ncnn3MatD2Ev.exit955.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.asw = load <2 x float>, ptr %i.ary, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit955.i

_ZN4ncnn3MatD2Ev.exit955.i:                       ; preds = %bb.bd, %bb.bc
  %i.asx = phi <2 x float> [ %i.asw, %bb.bd ], [ zeroinitializer, %bb.bc ]
  br i1 %i.gi, label %.preheader2564.lr.ph.i, label %._crit_edge2838.i

.preheader2564.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit955.i
  %i.asy = load i32, ptr %i.d, align 4
  %i.asz = load i32, ptr %i.j, align 4
  %invariant.op2827.i = sub i32 %.neg2517.i, %i.asz
end_hunk_5
begin_hunk_6_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.bdf = load i16, ptr %gep2860.us.us.us.us.3.i.us, align 2, !tbaa !461
  %i.bdg = zext i16 %i.bdf to i32
  %i.bdh = zext i16 %i.bde to i32
  %i.bdi = zext i16 %i.bdd to i32
  %i.bdj = zext i16 %i.bdc to i32
  %i.bdk = insertelement <4 x i32> poison, i32 %i.bdj, i64 0
  %i.bdl = insertelement <4 x i32> %i.bdk, i32 %i.bdi, i64 1
  %i.bdm = insertelement <4 x i32> %i.bdl, i32 %i.bdh, i64 2
  %i.bdn = insertelement <4 x i32> %i.bdm, i32 %i.bdg, i64 3
  %i.bdo = shl nuw <4 x i32> %i.bdn, splat (i32 16)
  %.sroa.03577.12.vec.insert.i.us = bitcast <4 x i32> %i.bdo to <4 x float> ; 2 uses
  %i.bdp = add nuw nsw i64 %indvars.iv3431.i.us, %i.bcp
  %i.bdq = shl i64 %i.bdp, 3
  %i.bdr = and i64 %i.bdq, 4294967288
  %i.bds = getelementptr inbounds nuw [2 x i8], ptr %.17682909.us.us.i, i64 %i.bdr ; 2 uses
  %i.bdt = load i64, ptr %i.bds, align 1, !tbaa !310
  %i.bdu = insertelement <2 x i64> poison, i64 %i.bdt, i64 0
  %i.bdv = bitcast <2 x i64> %i.bdu to <8 x i16>
  %i.bdw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdx = bitcast <8 x i16> %i.bdw to <4 x float>
  %i.bdy = fmul fast <4 x float> %i.bdx, %.sroa.03577.12.vec.insert.i.us
  %i.bdz = fadd fast <4 x float> %i.bdy, %.224462862.us2874.us.us.us.i.us
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bds, i64 8
  %i.beb = load i64, ptr %i.bea, align 1, !tbaa !310
  %i.bec = insertelement <2 x i64> poison, i64 %i.beb, i64 0
  %i.bed = bitcast <2 x i64> %i.bec to <8 x i16>
  %i.bee = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bef = bitcast <8 x i16> %i.bee to <4 x float>
  %i.beg = fmul fast <4 x float> %i.bef, %.sroa.03577.12.vec.insert.i.us
  %i.beh = fadd fast <4 x float> %i.beg, %.224412863.us2873.us.us.us.i.us
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.bo, %.lr.ph.split.us2871.us.us.us.i.us
  %.32447.us2878.us.us.us.i.us = phi nsz <4 x float> [ %.224462862.us2874.us.us.us.i.us, %.lr.ph.split.us2871.us.us.us.i.us ], [ %i.bdz, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224462862.us2874.us.us.us.i.us, %bb.bo ] ; 2 uses
  %.32442.us2879.us.us.us.i.us = phi nsz <4 x float> [ %.224412863.us2873.us.us.us.i.us, %.lr.ph.split.us2871.us.us.us.i.us ], [ %i.beh, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224412863.us2873.us.us.us.i.us, %bb.bo ] ; 2 uses
  %indvars.iv.next3432.i.us = add nuw nsw i64 %indvars.iv3431.i.us, 1 ; 2 uses
  %exitcond3435.not.i.us = icmp eq i64 %indvars.iv.next3432.i.us, %i.bah
  br i1 %exitcond3435.not.i.us, label %..loopexit2558_crit_edge.us.us.us.i.us112, label %.lr.ph.split.us2871.us.us.us.i.us, !llvm.loop !587

..loopexit2558_crit_edge.us.us.us.i.us112:        ; preds = %bb.bp, %bb.bn, %.preheader2563.us.us.i.split.us104
  %.42448.us.us.us.i.us113 = phi nsz <4 x float> [ %.124452885.us.us.us.i.us107, %.preheader2563.us.us.i.split.us104 ], [ %.124452885.us.us.us.i.us107, %bb.bn ], [ %.32447.us2878.us.us.us.i.us, %bb.bp ] ; 2 uses
  %.42443.us.us.us.i.us114 = phi nsz <4 x float> [ %.124402886.us.us.us.i.us106, %.preheader2563.us.us.i.split.us104 ], [ %.124402886.us.us.us.i.us106, %bb.bn ], [ %.32442.us2879.us.us.us.i.us, %bb.bp ] ; 2 uses
  %indvars.iv.next3442.i.us115 = add nuw nsw i64 %indvars.iv3441.i.us105, 1 ; 2 uses
  %exitcond3445.not.i.us116 = icmp eq i64 %indvars.iv.next3442.i.us115, %wide.trip.count3418.i
  br i1 %exitcond3445.not.i.us116, label %._crit_edge2889.split.us.us.us.i, label %.preheader2563.us.us.i.split.us104, !llvm.loop !588

._crit_edge2889.split.us.us.us.i:                 ; preds = %..loopexit2558_crit_edge.us.us.us.i.us112, %..loopexit2558_crit_edge.us.us.us.i.us, %.preheader2563.us.us.i
  %.us-phi102 = phi <4 x float> [ %.42448.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024442905.us.us.i, %.preheader2563.us.us.i ], [ %.42448.us.us.us.i.us113, %..loopexit2558_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %.us-phi103 = phi <4 x float> [ %.42443.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024392906.us.us.i, %.preheader2563.us.us.i ], [ %.42443.us.us.us.i.us114, %..loopexit2558_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %i.bei = getelementptr inbounds [2 x i8], ptr %.17682909.us.us.i, i64 %i.asq ; 2 uses
  %indvars.iv.next3447.i = add nuw nsw i64 %indvars.iv3446.i, 4 ; 2 uses
  %i.bej = trunc i64 %indvars.iv.next3447.i to i32 ; 2 uses
  %i.bek = or i32 %i.bej, 3
  %i.bel = icmp slt i32 %i.bek, %i.fy
  br i1 %i.bel, label %.preheader2563.us.us.i, label %._crit_edge2911.i, !llvm.loop !592

._crit_edge2911.i:                                ; preds = %._crit_edge2889.split.us.us.us.i, %.preheader2563.us.preheader.i, %.preheader2563.preheader.i, %._crit_edge2838.i
  %.02444.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2838.i ], [ zeroinitializer, %.preheader2563.preheader.i ], [ zeroinitializer, %.preheader2563.us.preheader.i ], [ %.us-phi102, %._crit_edge2889.split.us.us.us.i ] ; 2 uses
  %.02439.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2838.i ], [ zeroinitializer, %.preheader2563.preheader.i ], [ zeroinitializer, %.preheader2563.us.preheader.i ], [ %.us-phi103, %._crit_edge2889.split.us.us.us.i ] ; 2 uses
  %.1772.lcssa.i = phi i32 [ %.0771.lcssa.i, %._crit_edge2838.i ], [ %i.azw, %.preheader2563.preheader.i ], [ %i.bag, %.preheader2563.us.preheader.i ], [ %i.bej, %._crit_edge2889.split.us.us.us.i ] ; 9 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2838.i ], [ %scevgep3424.i.a, %.preheader2563.preheader.i ], [ %scevgep3426.i, %.preheader2563.us.preheader.i ], [ %i.bei, %._crit_edge2889.split.us.us.us.i ] ; 4 uses
  %i.bem = shufflevector <4 x float> %.02444.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ben = fadd fast <4 x float> %i.bem, %.02444.lcssa.i ; 2 uses
  %i.beo = shufflevector <4 x float> %i.ayz, <4 x float> %i.aze, <2 x i32> <i32 1, i32 5>
  %i.bep = fadd fast <2 x float> %i.beo, %i.asx
  %i.beq = shufflevector <4 x float> %.02439.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ber = fadd fast <4 x float> %i.beq, %.02439.lcssa.i ; 2 uses
  %i.bes = shufflevector <4 x float> %i.ayz, <4 x float> %i.aze, <2 x i32> <i32 0, i32 4>
  %i.bet = fadd fast <2 x float> %i.bep, %i.bes
  %i.beu = shufflevector <4 x float> %i.ben, <4 x float> %i.ber, <2 x i32> <i32 1, i32 5>
  %i.bev = fadd fast <2 x float> %i.bet, %i.beu
  %i.bew = shufflevector <4 x float> %i.ben, <4 x float> %i.ber, <2 x i32> <i32 0, i32 4>
  %i.bex = fadd fast <2 x float> %i.bev, %i.bew   ; 4 uses
  %i.bey = or disjoint i32 %.1772.lcssa.i, 1
  %i.bez = icmp slt i32 %i.bey, %i.fy
  br i1 %i.bez, label %.preheader2562.lr.ph.i, label %.preheader2565.i

.preheader2562.lr.ph.i:                           ; preds = %._crit_edge2911.i
  %i.bfa = load i32, ptr %i.d, align 4
  %i.bfb = load i32, ptr %i.j, align 4
  %invariant.op2952.i = sub i32 %.neg2517.i, %i.bfb
  %i.bfc = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bfd = load i32, ptr %i.a, align 4
  %.fr3240.i.a = freeze i32 %i.bfd                ; 2 uses
  %i.bfe = load i32, ptr %i.c, align 4
  %i.bff = load i32, ptr %i.i, align 4
  %.neg2511.i = add nuw nsw i32 %.07443023.i, 1
  %invariant.op2943.i = sub i32 %.neg2511.i, %i.bff
  %i.bfg = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.asl, label %.preheader2562.lr.ph.split.us.i, label %.preheader2562.preheader.i

.preheader2562.preheader.i:                       ; preds = %.preheader2562.lr.ph.i
  %i.bfh = add i32 %.1772.lcssa.i, 3
  %smax3449.i.a = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.bfh)
  %reass.sub140 = sub i32 %smax3449.i.a, %.1772.lcssa.i
  %i.bfi = and i32 %reass.sub140, -2              ; 2 uses
  %i.bfj = add i32 %i.bfi, -2
  %i.bfk = zext i32 %i.bfj to i64
  %i.bfl = add nuw nsw i64 %i.bfk, 2
  %i.bfm = mul nsw i64 %i.bfl, %i.ass
  %scevgep3450.i.a = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bfm
  %i.bfn = add i32 %.1772.lcssa.i, %i.bfi
  br label %.preheader2565.i

.preheader2562.lr.ph.split.us.i:                  ; preds = %.preheader2562.lr.ph.i
  %i.bfo = icmp sgt i32 %.fr3240.i.a, 0
  br i1 %i.bfo, label %.preheader2562.us.us.preheader.i, label %.preheader2562.us.preheader.i

.preheader2562.us.preheader.i:                    ; preds = %.preheader2562.lr.ph.split.us.i
  %i.bfp = add i32 %.1772.lcssa.i, 3
  %smax3451.i = call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.bfp)
  %reass.sub141 = sub i32 %smax3451.i, %.1772.lcssa.i
  %i.bfq = and i32 %reass.sub141, -2              ; 2 uses
  %i.bfr = add i32 %i.bfq, -2
  %i.bfs = zext i32 %i.bfr to i64
  %i.bft = add nuw nsw i64 %i.bfs, 2
  %i.bfu = mul nsw i64 %i.bft, %i.ass
  %scevgep3452.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bfu
  %i.bfv = add i32 %.1772.lcssa.i, %i.bfq
  br label %.preheader2565.i

.preheader2562.us.us.preheader.i:                 ; preds = %.preheader2562.lr.ph.split.us.i
  %i.bfw = zext nneg i32 %.fr3240.i.a to i64      ; 2 uses
  %i.bfx = zext i32 %.1772.lcssa.i to i64
  br label %.preheader2562.us.us.i

.preheader2562.us.us.i:                           ; preds = %._crit_edge2949.split.us.us.us.i, %.preheader2562.us.us.preheader.i
  %indvars.iv3466.i = phi i64 [ %i.bfx, %.preheader2562.us.us.preheader.i ], [ %indvars.iv.next3467.i, %._crit_edge2949.split.us.us.us.i ] ; 3 uses
  %.27692960.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2562.us.us.preheader.i ], [ %i.bhx, %._crit_edge2949.split.us.us.us.i ] ; 2 uses
  %i.bfy = phi <2 x float> [ %i.bex, %.preheader2562.us.us.preheader.i ], [ %i.bht, %._crit_edge2949.split.us.us.us.i ]
  %i.bfz = add nuw nsw i64 %indvars.iv3466.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2556_crit_edge.us.us.us.i, %.preheader2562.us.us.i
  %indvars.iv3461.i = phi i64 [ %indvars.iv.next3462.i, %..loopexit2556_crit_edge.us.us.us.i ], [ 0, %.preheader2562.us.us.i ] ; 3 uses
  %i.bga = phi <2 x float> [ %i.bht, %..loopexit2556_crit_edge.us.us.us.i ], [ %i.bfy, %.preheader2562.us.us.i ] ; 3 uses
  %i.bgb = trunc i64 %indvars.iv3461.i to i32
  %i.bgc = mul i32 %i.bfa, %i.bgb
  %.reass2953.us.us.us.i = add i32 %i.bgc, %invariant.op2952.i ; 3 uses
  %i.bgd = icmp slt i32 %.reass2953.us.us.us.i, 0
  br i1 %i.bgd, label %..loopexit2556_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bge = srem i32 %.reass2953.us.us.us.i, %i.bfc
  %i.bgf = sdiv i32 %.reass2953.us.us.us.i, %i.bfc ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.bge, 0
  %.not909.us.us.us.i = icmp slt i32 %i.bgf, %i.ga
  %or.cond327 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond327, label %.preheader2555.us.us.us.i, label %..loopexit2556_crit_edge.us.us.us.i

bb.bs:                                            ; preds = %.preheader2555.us.us.us.i, %.loopexit2552.us.us.us.i
  %indvars.iv3456.i = phi i64 [ 0, %.preheader2555.us.us.us.i ], [ %indvars.iv.next3457.i, %.loopexit2552.us.us.us.i ] ; 3 uses
  %i.bgg = phi <2 x float> [ %i.bga, %.preheader2555.us.us.us.i ], [ %i.bhs, %.loopexit2552.us.us.us.i ] ; 3 uses
  %i.bgh = trunc i64 %indvars.iv3456.i to i32
  %i.bgi = mul i32 %i.bfe, %i.bgh
  %.reass2944.us.us.us.i = add i32 %invariant.op2943.i, %i.bgi ; 3 uses
  %i.bgj = icmp slt i32 %.reass2944.us.us.us.i, 0
  br i1 %i.bgj, label %.loopexit2552.us.us.us.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bgk = srem i32 %.reass2944.us.us.us.i, %i.bfg
  %i.bgl = sdiv i32 %.reass2944.us.us.us.i, %i.bfg ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.bgk, 0
  %.not911.us.us.us.i = icmp slt i32 %i.bgl, %i.fz
  %or.cond328 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond328, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2552.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.bt
  %i.bgm = add nuw nsw i64 %indvars.iv3456.i, %i.bhu
  %i.bgn = shl i64 %i.bgm, 2
  %i.bgo = and i64 %i.bgn, 4294967292
  %i.bgp = getelementptr inbounds nuw [2 x i8], ptr %.27692960.us.us.i, i64 %i.bgo
  %i.bgq = load ptr, ptr %1, align 8, !tbaa !18, !noalias !593
  %i.bgr = load i64, ptr %i.gj, align 8, !tbaa !20, !noalias !593
  %i.bgs = load i64, ptr %i.gk, align 8, !tbaa !57, !noalias !593 ; 2 uses
  %factor.op.mul.us.us.us2979.i = mul i64 %i.bgs, %i.bgr ; 2 uses
  %i.bgt = mul i64 %i.bhw, %i.bgs
  %invariant.gep.us.us.us2980.i = getelementptr i8, ptr %i.bgq, i64 %i.bgt
  %i.bgu = sext i32 %i.bgl to i64
  %invariant.gep2933.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us2980.i, i64 %i.bgu ; 2 uses
  %.reass.us2954.us.us.i = mul i64 %factor.op.mul.us.us.us2979.i, %indvars.iv3466.i
  %gep2934.us.us.us.i = getelementptr i8, ptr %invariant.gep2933.us.us.us.i, i64 %.reass.us2954.us.us.i
  %i.bgv = load i16, ptr %gep2934.us.us.us.i, align 2, !tbaa !461
  %i.bgw = zext i16 %i.bgv to i32
  %i.bgx = shl nuw i32 %i.bgw, 16
  %.reass.us2954.us.us.1.i = mul i64 %factor.op.mul.us.us.us2979.i, %i.bfz
  %gep2934.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2933.us.us.us.i, i64 %.reass.us2954.us.us.1.i
  %i.bgy = load i16, ptr %gep2934.us.us.us.1.i, align 2, !tbaa !461
  %i.bgz = zext i16 %i.bgy to i32
  %i.bha = shl nuw i32 %i.bgz, 16
  %i.bhb = load <4 x i16>, ptr %i.bgp, align 2, !tbaa !461
  %i.bhc = freeze <4 x i16> %i.bhb
  %i.bhd = bitcast <4 x i16> %i.bhc to <2 x i32>  ; 2 uses
  %i.bhe = and <2 x i32> %i.bhd, splat (i32 -65536)
  %i.bhf = shl <2 x i32> %i.bhd, splat (i32 16)
  %i.bhg = bitcast <2 x i32> %i.bhf to <2 x float>
  %i.bhh = insertelement <2 x i32> poison, i32 %i.bgx, i64 0
  %i.bhi = bitcast <2 x i32> %i.bhh to <2 x float>
  %i.bhj = shufflevector <2 x float> %i.bhi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhk = fmul fast <2 x float> %i.bhj, %i.bhg
  %i.bhl = fadd fast <2 x float> %i.bgg, %i.bhk
  %i.bhm = bitcast <2 x i32> %i.bhe to <2 x float>
  %i.bhn = insertelement <2 x i32> poison, i32 %i.bha, i64 0
  %i.bho = bitcast <2 x i32> %i.bhn to <2 x float>
  %i.bhp = shufflevector <2 x float> %i.bho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhq = fmul fast <2 x float> %i.bhp, %i.bhm
  %i.bhr = fadd fast <2 x float> %i.bhq, %i.bhl
  br label %.loopexit2552.us.us.us.i

.loopexit2552.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.bt, %bb.bs
  %i.bhs = phi <2 x float> [ %i.bgg, %bb.bs ], [ %i.bgg, %bb.bt ], [ %i.bhr, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3457.i = add nuw nsw i64 %indvars.iv3456.i, 1 ; 2 uses
  %exitcond3460.not.i = icmp eq i64 %indvars.iv.next3457.i, %i.bfw
  br i1 %exitcond3460.not.i, label %..loopexit2556_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !596

..loopexit2556_crit_edge.us.us.us.i:              ; preds = %.loopexit2552.us.us.us.i, %bb.br, %bb.bq
  %i.bht = phi <2 x float> [ %i.bga, %bb.bq ], [ %i.bga, %bb.br ], [ %i.bhs, %.loopexit2552.us.us.us.i ] ; 3 uses
  %indvars.iv.next3462.i = add nuw nsw i64 %indvars.iv3461.i, 1 ; 2 uses
  %exitcond3465.not.i = icmp eq i64 %indvars.iv.next3462.i, %wide.trip.count3418.i
  br i1 %exitcond3465.not.i, label %._crit_edge2949.split.us.us.us.i, label %bb.bq, !llvm.loop !597

.preheader2555.us.us.us.i:                        ; preds = %bb.br
  %i.bhu = mul nuw nsw i64 %indvars.iv3461.i, %i.bfw
  %i.bhv = sext i32 %i.bgf to i64
  %i.bhw = mul nsw i64 %i.bhv, %i.gy
  br label %bb.bs

._crit_edge2949.split.us.us.us.i:                 ; preds = %..loopexit2556_crit_edge.us.us.us.i
  %i.bhx = getelementptr inbounds [2 x i8], ptr %.27692960.us.us.i, i64 %i.ass ; 2 uses
  %indvars.iv.next3467.i = add nuw nsw i64 %indvars.iv3466.i, 2 ; 2 uses
  %i.bhy = trunc i64 %indvars.iv.next3467.i to i32 ; 2 uses
  %i.bhz = or i32 %i.bhy, 1
  %i.bia = icmp slt i32 %i.bhz, %i.fy
  br i1 %i.bia, label %.preheader2562.us.us.i, label %.preheader2565.i, !llvm.loop !598

.preheader2565.i:                                 ; preds = %._crit_edge2949.split.us.us.us.i, %.preheader2562.us.preheader.i, %.preheader2562.preheader.i, %._crit_edge2911.i
  %.2773.lcssa.i = phi i32 [ %.1772.lcssa.i, %._crit_edge2911.i ], [ %i.bfn, %.preheader2562.preheader.i ], [ %i.bfv, %.preheader2562.us.preheader.i ], [ %i.bhy, %._crit_edge2949.split.us.us.us.i ] ; 2 uses
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2911.i ], [ %scevgep3450.i.a, %.preheader2562.preheader.i ], [ %scevgep3452.i, %.preheader2562.us.preheader.i ], [ %i.bhx, %._crit_edge2949.split.us.us.us.i ]
  %i.bib = phi <2 x float> [ %i.bex, %._crit_edge2911.i ], [ %i.bex, %.preheader2562.preheader.i ], [ %i.bex, %.preheader2562.us.preheader.i ], [ %i.bht, %._crit_edge2949.split.us.us.us.i ] ; 3 uses
  %i.bic = icmp slt i32 %.2773.lcssa.i, %i.fy
  br i1 %i.bic, label %.preheader2561.lr.ph.i, label %._crit_edge3009.i

.preheader2561.lr.ph.i:                           ; preds = %.preheader2565.i
  %i.bid = load i32, ptr %i.d, align 4
  %i.bie = load i32, ptr %i.j, align 4
  %invariant.op2998.i = sub i32 %.neg2517.i, %i.bie
  %i.bif = load i32, ptr %i.f, align 4            ; 2 uses
  %i.big = load i32, ptr %i.a, align 4
  %.fr3241.i.a = freeze i32 %i.big                ; 2 uses
  %i.bih = load i32, ptr %i.c, align 4
  %i.bii = load i32, ptr %i.i, align 4
  %.neg2507.i = add nuw nsw i32 %.07443023.i, 1
  %invariant.op2990.i = sub i32 %.neg2507.i, %i.bii
  %i.bij = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bik = icmp sgt i32 %.fr3241.i.a, 0
  %or.cond3745.i = and i1 %i.asl, %i.bik
  br i1 %or.cond3745.i, label %.preheader2561.us.us.preheader.i, label %._crit_edge3009.i

.preheader2561.us.us.preheader.i:                 ; preds = %.preheader2561.lr.ph.i
  %i.bil = zext nneg i32 %.fr3241.i.a to i64      ; 2 uses
  %i.bim = zext i32 %.2773.lcssa.i to i64
  br label %.preheader2561.us.us.i

.preheader2561.us.us.i:                           ; preds = %._crit_edge2995.split.us.us.us.i, %.preheader2561.us.us.preheader.i
  %indvars.iv3479.i = phi i64 [ %i.bim, %.preheader2561.us.us.preheader.i ], [ %indvars.iv.next3480.i, %._crit_edge2995.split.us.us.us.i ] ; 2 uses
  %.37703005.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2561.us.us.preheader.i ], [ %i.bkd, %._crit_edge2995.split.us.us.us.i ] ; 2 uses
  %i.bin = phi <2 x float> [ %i.bib, %.preheader2561.us.us.preheader.i ], [ %i.bjz, %._crit_edge2995.split.us.us.us.i ]
  br label %bb.bu

bb.bu:                                            ; preds = %..loopexit2554_crit_edge.us.us.us.i, %.preheader2561.us.us.i
  %indvars.iv3474.i = phi i64 [ %indvars.iv.next3475.i, %..loopexit2554_crit_edge.us.us.us.i ], [ 0, %.preheader2561.us.us.i ] ; 3 uses
  %i.bio = phi <2 x float> [ %i.bjz, %..loopexit2554_crit_edge.us.us.us.i ], [ %i.bin, %.preheader2561.us.us.i ] ; 3 uses
  %i.bip = trunc i64 %indvars.iv3474.i to i32
  %i.biq = mul i32 %i.bid, %i.bip
  %.reass2999.us.us.us.i = add i32 %i.biq, %invariant.op2998.i ; 3 uses
  %i.bir = icmp slt i32 %.reass2999.us.us.us.i, 0
  br i1 %i.bir, label %..loopexit2554_crit_edge.us.us.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bis = srem i32 %.reass2999.us.us.us.i, %i.bif
  %i.bit = sdiv i32 %.reass2999.us.us.us.i, %i.bif ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bis, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bit, %i.ga
  %or.cond329 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond329, label %.preheader2553.us.us.us.i, label %..loopexit2554_crit_edge.us.us.us.i

bb.bw:                                            ; preds = %.preheader2553.us.us.us.i, %bb.by
  %indvars.iv3469.i = phi i64 [ 0, %.preheader2553.us.us.us.i ], [ %indvars.iv.next3470.i, %bb.by ] ; 3 uses
  %i.biu = phi <2 x float> [ %i.bio, %.preheader2553.us.us.us.i ], [ %i.bjy, %bb.by ] ; 3 uses
  %i.biv = trunc i64 %indvars.iv3469.i to i32
  %i.biw = mul i32 %i.bih, %i.biv
  %.reass.us3000.us.us.i = add i32 %invariant.op2990.i, %i.biw ; 3 uses
  %i.bix = icmp slt i32 %.reass.us3000.us.us.i, 0
  br i1 %i.bix, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.biy = srem i32 %.reass.us3000.us.us.i, %i.bij
  %i.biz = sdiv i32 %.reass.us3000.us.us.i, %i.bij ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.biy, 0
  %.not907.us.us.us.i = icmp slt i32 %i.biz, %i.fz
  %or.cond330 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond330, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.by

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.bx
  %i.bja = add nuw nsw i64 %indvars.iv3469.i, %i.bka
  %.idx3652.i = shl nuw nsw i64 %i.bja, 2
  %i.bjb = getelementptr inbounds nuw i8, ptr %.37703005.us.us.i, i64 %.idx3652.i
  %i.bjc = load ptr, ptr %1, align 8, !tbaa !18, !noalias !599
  %i.bjd = load i64, ptr %i.gj, align 8, !tbaa !20, !noalias !599
  %i.bje = mul i64 %i.bjd, %indvars.iv3479.i
  %i.bjf = load i64, ptr %i.gk, align 8, !tbaa !57, !noalias !599 ; 2 uses
  %i.bjg = mul i64 %i.bje, %i.bjf
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bjc, i64 %i.bjg
  %i.bji = mul i64 %i.bkc, %i.bjf
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjh, i64 %i.bji
  %i.bjk = sext i32 %i.biz to i64
  %i.bjl = getelementptr inbounds [2 x i8], ptr %i.bjj, i64 %i.bjk
  %i.bjm = load i16, ptr %i.bjl, align 2, !tbaa !461
  %i.bjn = zext i16 %i.bjm to i32
  %i.bjo = shl nuw i32 %i.bjn, 16
  %i.bjp = load <2 x i16>, ptr %i.bjb, align 2, !tbaa !461
  %i.bjq = zext <2 x i16> %i.bjp to <2 x i32>
  %i.bjr = shl nuw <2 x i32> %i.bjq, splat (i32 16)
  %i.bjs = bitcast <2 x i32> %i.bjr to <2 x float>
  %i.bjt = insertelement <2 x i32> poison, i32 %i.bjo, i64 0
  %i.bju = bitcast <2 x i32> %i.bjt to <2 x float>
  %i.bjv = shufflevector <2 x float> %i.bju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjw = fmul fast <2 x float> %i.bjv, %i.bjs
  %i.bjx = fadd fast <2 x float> %i.bjw, %i.biu
  br label %bb.by

bb.by:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.bx, %bb.bw
  %i.bjy = phi <2 x float> [ %i.biu, %bb.bw ], [ %i.biu, %bb.bx ], [ %i.bjx, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3470.i = add nuw nsw i64 %indvars.iv3469.i, 1 ; 2 uses
  %exitcond3473.not.i = icmp eq i64 %indvars.iv.next3470.i, %i.bil
  br i1 %exitcond3473.not.i, label %..loopexit2554_crit_edge.us.us.us.i, label %bb.bw, !llvm.loop !602

..loopexit2554_crit_edge.us.us.us.i:              ; preds = %bb.by, %bb.bv, %bb.bu
  %i.bjz = phi <2 x float> [ %i.bio, %bb.bu ], [ %i.bio, %bb.bv ], [ %i.bjy, %bb.by ] ; 3 uses
  %indvars.iv.next3475.i = add nuw nsw i64 %indvars.iv3474.i, 1 ; 2 uses
  %exitcond3478.not.i = icmp eq i64 %indvars.iv.next3475.i, %wide.trip.count3418.i
  br i1 %exitcond3478.not.i, label %._crit_edge2995.split.us.us.us.i, label %bb.bu, !llvm.loop !603

.preheader2553.us.us.us.i:                        ; preds = %bb.bv
  %i.bka = mul nuw nsw i64 %indvars.iv3474.i, %i.bil
  %i.bkb = sext i32 %i.bit to i64
  %i.bkc = mul nsw i64 %i.bkb, %i.gy
  br label %bb.bw

._crit_edge2995.split.us.us.us.i:                 ; preds = %..loopexit2554_crit_edge.us.us.us.i
  %i.bkd = getelementptr inbounds [2 x i8], ptr %.37703005.us.us.i, i64 %i.asu
  %indvars.iv.next3480.i = add nuw nsw i64 %indvars.iv3479.i, 1 ; 2 uses
  %i.bke = trunc nuw i64 %indvars.iv.next3480.i to i32
  %i.bkf = icmp sgt i32 %i.fy, %i.bke
  br i1 %i.bkf, label %.preheader2561.us.us.i, label %._crit_edge3009.i, !llvm.loop !604

._crit_edge3009.i:                                ; preds = %._crit_edge2995.split.us.us.us.i, %.preheader2561.lr.ph.i, %.preheader2565.i
  %i.bkg = phi <2 x float> [ %i.bib, %.preheader2565.i ], [ %i.bib, %.preheader2561.lr.ph.i ], [ %i.bjz, %._crit_edge2995.split.us.us.us.i ] ; 11 uses
  switch i32 %i.asi, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i
    i32 6, label %bb.bz
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i: ; preds = %._crit_edge3009.i
  %i.bkh = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bkg, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i: ; preds = %._crit_edge3009.i
  %i.bki = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.bkj = load float, ptr %i.bki, align 4, !tbaa !39
  %i.bkk = fcmp fast ogt <2 x float> %i.bkg, zeroinitializer
  %i.bkl = insertelement <2 x float> poison, float %i.bkj, i64 0
  %i.bkm = shufflevector <2 x float> %i.bkl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkn = select <2 x i1> %i.bkk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkm
  %i.bko = fmul fast <2 x float> %i.bkn, %i.bkg
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i: ; preds = %._crit_edge3009.i
  %i.bkp = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %i.bkq = load float, ptr %i.bkp, align 4, !tbaa !39
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkp, i64 4
  %i.bks = load float, ptr %i.bkr, align 4, !tbaa !39 ; 3 uses
  %i.bkt = insertelement <2 x float> poison, float %i.bkq, i64 0
  %i.bku = shufflevector <2 x float> %i.bkt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bkv = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bkg, <2 x float> %i.bku) ; 3 uses
  %i.bkw = insertelement <2 x float> poison, float %i.bks, i64 0
  %i.bkx = shufflevector <2 x float> %i.bkw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bky = fcmp fast ogt <2 x float> %i.bkv, %i.bkx ; 2 uses
  %i.bkz = extractelement <2 x i1> %i.bky, i64 0
  %i.bla = extractelement <2 x float> %i.bkv, i64 0
  %.123772467.i = select i1 %i.bkz, float %i.bks, float %i.bla
  %i.blb = insertelement <2 x float> %i.bkv, float %.123772467.i, i64 0 ; 2 uses
  %i.blc = extractelement <2 x i1> %i.bky, i64 1
  %i.bld = insertelement <2 x float> %i.blb, float %i.bks, i64 1
  %spec.select = select i1 %i.blc, <2 x float> %i.bld, <2 x float> %i.blb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i: ; preds = %._crit_edge3009.i
  %i.ble = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bkg, <2 x float> splat (float f0x42B0C0A5))
  %i.blf = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ble, <2 x float> splat (float f0xC2B0C0A5))
  %i.blg = fneg fast <2 x float> %i.blf
  %i.blh = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.blg)
  %i.bli = fadd fast <2 x float> %i.blh, splat (float 1.000000e+00)
end_hunk_6
begin_hunk_7_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.224313089.us3097.us.us.us.i.us = phi <4 x float> [ %.32432.us3101.us.us.us.i.us, %bb.cr ], [ %.124303105.us.us.us.i.us124, %.preheader2542.us.us.us.i.us128 ] ; 3 uses
  %i.bwh = trunc i64 %indvars.iv3518.i.us to i32
  %i.bwi = mul i32 %i.bti, %i.bwh
  %.reass3093.us3098.us.us.us.i.us = add i32 %i.bwi, %invariant.op3092.i ; 3 uses
  %i.bwj = icmp slt i32 %.reass3093.us3098.us.us.us.i.us, 0
  br i1 %i.bwj, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.split.us3095.us.us.us.i.us
  %i.bwk = srem i32 %.reass3093.us3098.us.us.us.i.us, %i.btk
  %i.bwl = sdiv i32 %.reass3093.us3098.us.us.us.i.us, %i.btk ; 2 uses
  %.not897.us3099.us.us.us.i.us = icmp eq i32 %i.bwk, 0
  %.not898.us3100.us.us.us.i.us = icmp slt i32 %i.bwl, %i.aqo
  %or.cond336 = select i1 %.not897.us3099.us.us.us.i.us, i1 %.not898.us3100.us.us.us.i.us, i1 false
  br i1 %or.cond336, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.cr

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.cq
  %i.bwm = load ptr, ptr %1, align 8, !tbaa !18, !noalias !625
  %i.bwn = load i64, ptr %i.aqy, align 8, !tbaa !20, !noalias !625
  %i.bwo = load i64, ptr %i.aqz, align 8, !tbaa !57, !noalias !625 ; 2 uses
  %factor.op.mul3084.us.us.us.us.i.us = mul i64 %i.bwo, %i.bwn ; 4 uses
  %i.bwp = mul i64 %i.bwg, %i.bwo
  %invariant.gep.us.us.us3137.us.i.us = getelementptr i8, ptr %i.bwm, i64 %i.bwp
  %i.bwq = sext i32 %i.bwl to i64
  %invariant.gep3086.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3137.us.i.us, i64 %i.bwq ; 4 uses
  %.reass3085.us.us.us.us.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %indvars.iv3533.i
  %gep3087.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.i.us
  %i.bwr = load i16, ptr %gep3087.us.us.us.us.i.us, align 2, !tbaa !461
  %.reass3085.us.us.us.us.1.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bui
  %gep3087.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.1.i.us
  %i.bws = load i16, ptr %gep3087.us.us.us.us.1.i.us, align 2, !tbaa !461
  %.reass3085.us.us.us.us.2.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.buj
  %gep3087.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.2.i.us
  %i.bwt = load i16, ptr %gep3087.us.us.us.us.2.i.us, align 2, !tbaa !461
  %.reass3085.us.us.us.us.3.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.buk
  %gep3087.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.3.i.us
  %i.bwu = load i16, ptr %gep3087.us.us.us.us.3.i.us, align 2, !tbaa !461
  %i.bwv = zext i16 %i.bwu to i32
  %i.bww = zext i16 %i.bwt to i32
  %i.bwx = zext i16 %i.bws to i32
  %i.bwy = zext i16 %i.bwr to i32
  %i.bwz = insertelement <4 x i32> poison, i32 %i.bwy, i64 0
  %i.bxa = insertelement <4 x i32> %i.bwz, i32 %i.bwx, i64 1
  %i.bxb = insertelement <4 x i32> %i.bxa, i32 %i.bww, i64 2
  %i.bxc = insertelement <4 x i32> %i.bxb, i32 %i.bwv, i64 3
  %i.bxd = shl nuw <4 x i32> %i.bxc, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.bxd to <4 x float>
  %i.bxe = add nuw nsw i64 %indvars.iv3518.i.us, %i.bwe
  %i.bxf = shl i64 %i.bxe, 2
  %i.bxg = and i64 %i.bxf, 4294967292
  %i.bxh = getelementptr inbounds nuw [2 x i8], ptr %.17893122.us.us.i, i64 %i.bxg
  %i.bxi = load i64, ptr %i.bxh, align 1, !tbaa !310
  %i.bxj = insertelement <2 x i64> poison, i64 %i.bxi, i64 0
  %i.bxk = bitcast <2 x i64> %i.bxj to <8 x i16>
  %i.bxl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bxk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bxm = bitcast <8 x i16> %i.bxl to <4 x float>
  %i.bxn = fmul fast <4 x float> %i.bxm, %.sroa.0.12.vec.insert.i.us
  %i.bxo = fadd fast <4 x float> %i.bxn, %.224313089.us3097.us.us.us.i.us
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.cq, %.lr.ph.split.us3095.us.us.us.i.us
  %.32432.us3101.us.us.us.i.us = phi nsz <4 x float> [ %.224313089.us3097.us.us.us.i.us, %.lr.ph.split.us3095.us.us.us.i.us ], [ %i.bxo, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.224313089.us3097.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3519.i.us = add nuw nsw i64 %indvars.iv3518.i.us, 1 ; 2 uses
  %exitcond3522.not.i.us = icmp eq i64 %indvars.iv.next3519.i.us, %i.bue
  br i1 %exitcond3522.not.i.us, label %..loopexit2543_crit_edge.us.us.us.i.us129, label %.lr.ph.split.us3095.us.us.us.i.us, !llvm.loop !623

..loopexit2543_crit_edge.us.us.us.i.us129:        ; preds = %bb.cr, %bb.cp, %.preheader2548.us.us.i.split.us122
  %.42433.us.us.us.i.us130 = phi nsz <4 x float> [ %.124303105.us.us.us.i.us124, %.preheader2548.us.us.i.split.us122 ], [ %.124303105.us.us.us.i.us124, %bb.cp ], [ %.32432.us3101.us.us.us.i.us, %bb.cr ] ; 2 uses
  %indvars.iv.next3529.i.us131 = add nuw nsw i64 %indvars.iv3528.i.us123, 1 ; 2 uses
  %exitcond3532.not.i.us132 = icmp eq i64 %indvars.iv.next3529.i.us131, %wide.trip.count3505.i
  br i1 %exitcond3532.not.i.us132, label %._crit_edge3108.split.us.us.us.i, label %.preheader2548.us.us.i.split.us122, !llvm.loop !624

._crit_edge3108.split.us.us.us.i:                 ; preds = %..loopexit2543_crit_edge.us.us.us.i.us129, %..loopexit2543_crit_edge.us.us.us.i.us, %.preheader2548.us.us.i
  %.us-phi121 = phi <4 x float> [ %.42433.us.us.us.i.us, %..loopexit2543_crit_edge.us.us.us.i.us ], [ %.024293121.us.us.i, %.preheader2548.us.us.i ], [ %.42433.us.us.us.i.us130, %..loopexit2543_crit_edge.us.us.us.i.us129 ] ; 2 uses
  %i.bxp = getelementptr inbounds [2 x i8], ptr %.17893122.us.us.i, i64 %i.bnt ; 2 uses
  %indvars.iv.next3534.i = add nuw nsw i64 %indvars.iv3533.i, 4 ; 2 uses
  %i.bxq = trunc i64 %indvars.iv.next3534.i to i32 ; 2 uses
  %i.bxr = or i32 %i.bxq, 3
  %i.bxs = icmp slt i32 %i.bxr, %i.aqn
  br i1 %i.bxs, label %.preheader2548.us.us.i, label %._crit_edge3126.i, !llvm.loop !628

._crit_edge3126.i:                                ; preds = %._crit_edge3108.split.us.us.us.i, %.preheader2548.us.preheader.i, %.preheader2548.preheader.i, %._crit_edge3066.i
  %.02429.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3066.i ], [ zeroinitializer, %.preheader2548.preheader.i ], [ zeroinitializer, %.preheader2548.us.preheader.i ], [ %.us-phi121, %._crit_edge3108.split.us.us.us.i ] ; 2 uses
  %.1789.lcssa.i = phi ptr [ %.0788.lcssa.i, %._crit_edge3066.i ], [ %scevgep3511.i.a, %.preheader2548.preheader.i ], [ %scevgep3513.i, %.preheader2548.us.preheader.i ], [ %i.bxp, %._crit_edge3108.split.us.us.us.i ] ; 4 uses
  %.1785.lcssa.i = phi i32 [ %.0784.lcssa.i, %._crit_edge3066.i ], [ %i.btt, %.preheader2548.preheader.i ], [ %i.bud, %.preheader2548.us.preheader.i ], [ %i.bxq, %._crit_edge3108.split.us.us.us.i ] ; 9 uses
  %i.bxt = shufflevector <4 x float> %.02429.lcssa.i, <4 x float> %i.btb, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.bxu = shufflevector <4 x float> %.02429.lcssa.i, <4 x float> %i.btb, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bxv = fadd fast <4 x float> %i.bxt, %i.bxu
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0792.i, <4 x float> %i.bxv) ; 4 uses
  %i.bxw = or disjoint i32 %.1785.lcssa.i, 1
  %i.bxx = icmp slt i32 %i.bxw, %i.aqn
  br i1 %i.bxx, label %.preheader2547.lr.ph.i, label %.preheader2550.i

.preheader2547.lr.ph.i:                           ; preds = %._crit_edge3126.i
  %i.bxy = load i32, ptr %i.d, align 4
  %i.bxz = load i32, ptr %i.j, align 4
  %invariant.op3161.i = sub i32 %.neg2501.i, %i.bxz
  %i.bya = load i32, ptr %i.f, align 4            ; 2 uses
  %i.byb = load i32, ptr %i.a, align 4
  %.fr3244.i = freeze i32 %i.byb                  ; 2 uses
  %i.byc = load i32, ptr %i.c, align 4
  %i.byd = load i32, ptr %i.i, align 4
  %.neg2495.i = add nuw nsw i32 %.08083217.i, 1
  %invariant.op3154.i = sub i32 %.neg2495.i, %i.byd
  %i.bye = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bno, label %.preheader2547.lr.ph.split.us.i, label %.preheader2547.preheader.i

.preheader2547.preheader.i:                       ; preds = %.preheader2547.lr.ph.i
  %i.byf = add i32 %.1785.lcssa.i, 3
  %smax3536.i.a = call i32 @llvm.smax.i32(i32 %i.aqn, i32 %i.byf)
  %reass.sub144 = sub i32 %smax3536.i.a, %.1785.lcssa.i
  %i.byg = and i32 %reass.sub144, -2              ; 2 uses
  %i.byh = add i32 %i.byg, -2
  %i.byi = zext i32 %i.byh to i64
  %i.byj = add nuw nsw i64 %i.byi, 2
  %i.byk = mul nsw i64 %i.byj, %i.bnv
  %scevgep3537.i.a = getelementptr i8, ptr %.1789.lcssa.i, i64 %i.byk
  %i.byl = add i32 %.1785.lcssa.i, %i.byg
  br label %.preheader2550.i

.preheader2547.lr.ph.split.us.i:                  ; preds = %.preheader2547.lr.ph.i
  %i.bym = icmp sgt i32 %.fr3244.i, 0
  br i1 %i.bym, label %.preheader2547.us.us.preheader.i, label %.preheader2547.us.preheader.i

.preheader2547.us.preheader.i:                    ; preds = %.preheader2547.lr.ph.split.us.i
  %i.byn = add i32 %.1785.lcssa.i, 3
  %smax3538.i = call i32 @llvm.smax.i32(i32 %i.aqn, i32 %i.byn)
  %reass.sub145 = sub i32 %smax3538.i, %.1785.lcssa.i
  %i.byo = and i32 %reass.sub145, -2              ; 2 uses
  %i.byp = add i32 %i.byo, -2
  %i.byq = zext i32 %i.byp to i64
  %i.byr = add nuw nsw i64 %i.byq, 2
  %i.bys = mul nsw i64 %i.byr, %i.bnv
  %scevgep3539.i = getelementptr i8, ptr %.1789.lcssa.i, i64 %i.bys
  %i.byt = add i32 %.1785.lcssa.i, %i.byo
  br label %.preheader2550.i

.preheader2547.us.us.preheader.i:                 ; preds = %.preheader2547.lr.ph.split.us.i
  %i.byu = zext nneg i32 %.fr3244.i to i64        ; 2 uses
  %i.byv = zext i32 %.1785.lcssa.i to i64
  br label %.preheader2547.us.us.i

.preheader2547.us.us.i:                           ; preds = %._crit_edge3159.split.us.us.us.i, %.preheader2547.us.us.preheader.i
  %indvars.iv3553.i = phi i64 [ %i.byv, %.preheader2547.us.us.preheader.i ], [ %indvars.iv.next3554.i, %._crit_edge3159.split.us.us.us.i ] ; 3 uses
  %.27903166.us.us.i = phi ptr [ %.1789.lcssa.i, %.preheader2547.us.us.preheader.i ], [ %i.cai, %._crit_edge3159.split.us.us.us.i ] ; 2 uses
  %.17933165.us.us.i = phi float [ %op.rdx, %.preheader2547.us.us.preheader.i ], [ %.8800.us.us.us.i, %._crit_edge3159.split.us.us.us.i ]
  %i.byw = add nuw nsw i64 %indvars.iv3553.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %..loopexit2541_crit_edge.us.us.us.i, %.preheader2547.us.us.i
  %indvars.iv3548.i = phi i64 [ %indvars.iv.next3549.i, %..loopexit2541_crit_edge.us.us.us.i ], [ 0, %.preheader2547.us.us.i ] ; 3 uses
  %.27943156.us.us.us.i = phi float [ %.8800.us.us.us.i, %..loopexit2541_crit_edge.us.us.us.i ], [ %.17933165.us.us.i, %.preheader2547.us.us.i ] ; 3 uses
  %i.byx = trunc i64 %indvars.iv3548.i to i32
  %i.byy = mul i32 %i.bxy, %i.byx
  %.reass3162.us.us.us.i = add i32 %i.byy, %invariant.op3161.i ; 3 uses
  %i.byz = icmp slt i32 %.reass3162.us.us.us.i, 0
  br i1 %i.byz, label %..loopexit2541_crit_edge.us.us.us.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bza = srem i32 %.reass3162.us.us.us.i, %i.bya
  %i.bzb = sdiv i32 %.reass3162.us.us.us.i, %i.bya ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bza, 0
  %.not892.us.us.us.i = icmp slt i32 %i.bzb, %i.aqp
  %or.cond337 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond337, label %.preheader2540.us.us.us.i, label %..loopexit2541_crit_edge.us.us.us.i

bb.cu:                                            ; preds = %.preheader2540.us.us.us.i, %.loopexit.us.us.us.i
  %indvars.iv3543.i = phi i64 [ 0, %.preheader2540.us.us.us.i ], [ %indvars.iv.next3544.i, %.loopexit.us.us.us.i ] ; 3 uses
  %.37953151.us.us.us.i = phi float [ %.27943156.us.us.us.i, %.preheader2540.us.us.us.i ], [ %.6798.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %i.bzc = trunc i64 %indvars.iv3543.i to i32
  %i.bzd = mul i32 %i.byc, %i.bzc
  %.reass3155.us.us.us.i = add i32 %invariant.op3154.i, %i.bzd ; 3 uses
  %i.bze = icmp slt i32 %.reass3155.us.us.us.i, 0
  br i1 %i.bze, label %.loopexit.us.us.us.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bzf = srem i32 %.reass3155.us.us.us.i, %i.bye
  %i.bzg = sdiv i32 %.reass3155.us.us.us.i, %i.bye ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bzf, 0
  %.not894.us.us.us.i = icmp slt i32 %i.bzg, %i.aqo
  %or.cond338 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond338, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.cv
  %i.bzh = add nuw nsw i64 %indvars.iv3543.i, %i.caf
  %.idx3656.i = shl nuw nsw i64 %i.bzh, 2
  %i.bzi = getelementptr inbounds nuw i8, ptr %.27903166.us.us.i, i64 %.idx3656.i
  %i.bzj = load ptr, ptr %1, align 8, !tbaa !18, !noalias !629
  %i.bzk = load i64, ptr %i.aqy, align 8, !tbaa !20, !noalias !629
  %i.bzl = load i64, ptr %i.aqz, align 8, !tbaa !57, !noalias !629 ; 2 uses
  %factor.op.mul3145.us.us.us.i = mul i64 %i.bzl, %i.bzk ; 2 uses
  %i.bzm = mul i64 %i.cah, %i.bzl
  %invariant.gep.us.us.us3183.i = getelementptr i8, ptr %i.bzj, i64 %i.bzm
  %i.bzn = sext i32 %i.bzg to i64
  %invariant.gep3147.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3183.i, i64 %i.bzn ; 2 uses
  %.reass3146.us.us.us.i = mul i64 %factor.op.mul3145.us.us.us.i, %indvars.iv3553.i
  %gep3148.us.us.us.i = getelementptr i8, ptr %invariant.gep3147.us.us.us.i, i64 %.reass3146.us.us.us.i
  %i.bzo = load i16, ptr %gep3148.us.us.us.i, align 2, !tbaa !461
  %.reass3146.us.us.us.1.i = mul i64 %factor.op.mul3145.us.us.us.i, %i.byw
  %gep3148.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3147.us.us.us.i, i64 %.reass3146.us.us.us.1.i
  %i.bzp = load i16, ptr %gep3148.us.us.us.1.i, align 2, !tbaa !461
  %i.bzq = zext i16 %i.bzo to i32
  %i.bzr = zext i16 %i.bzp to i32
  %i.bzs = insertelement <2 x i32> poison, i32 %i.bzq, i64 0
  %i.bzt = insertelement <2 x i32> %i.bzs, i32 %i.bzr, i64 1
  %i.bzu = shl nuw <2 x i32> %i.bzt, splat (i32 16)
  %i.bzv = bitcast <2 x i32> %i.bzu to <2 x float>
  %i.bzw = load <2 x i16>, ptr %i.bzi, align 2, !tbaa !461
  %i.bzx = zext <2 x i16> %i.bzw to <2 x i32>
  %i.bzy = shl nuw <2 x i32> %i.bzx, splat (i32 16)
  %i.bzz = bitcast <2 x i32> %i.bzy to <2 x float>
  %i.caa = fmul fast <2 x float> %i.bzz, %i.bzv   ; 2 uses
  %i.cab = extractelement <2 x float> %i.caa, i64 0
  %i.cac = fadd fast float %.37953151.us.us.us.i, %i.cab
  %i.cad = extractelement <2 x float> %i.caa, i64 1
  %i.cae = fadd fast float %i.cad, %i.cac
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.cv, %bb.cu
  %.6798.us.us.us.i = phi nsz float [ %.37953151.us.us.us.i, %bb.cu ], [ %.37953151.us.us.us.i, %bb.cv ], [ %i.cae, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3544.i = add nuw nsw i64 %indvars.iv3543.i, 1 ; 2 uses
  %exitcond3547.not.i = icmp eq i64 %indvars.iv.next3544.i, %i.byu
  br i1 %exitcond3547.not.i, label %..loopexit2541_crit_edge.us.us.us.i, label %bb.cu, !llvm.loop !632

..loopexit2541_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.ct, %bb.cs
  %.8800.us.us.us.i = phi nsz float [ %.27943156.us.us.us.i, %bb.cs ], [ %.27943156.us.us.us.i, %bb.ct ], [ %.6798.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3549.i = add nuw nsw i64 %indvars.iv3548.i, 1 ; 2 uses
  %exitcond3552.not.i = icmp eq i64 %indvars.iv.next3549.i, %wide.trip.count3505.i
  br i1 %exitcond3552.not.i, label %._crit_edge3159.split.us.us.us.i, label %bb.cs, !llvm.loop !633

.preheader2540.us.us.us.i:                        ; preds = %bb.ct
  %i.caf = mul nuw nsw i64 %indvars.iv3548.i, %i.byu
  %i.cag = sext i32 %i.bzb to i64
  %i.cah = mul nsw i64 %i.cag, %i.arq
  br label %bb.cu

._crit_edge3159.split.us.us.us.i:                 ; preds = %..loopexit2541_crit_edge.us.us.us.i
  %i.cai = getelementptr inbounds [2 x i8], ptr %.27903166.us.us.i, i64 %i.bnv ; 2 uses
  %indvars.iv.next3554.i = add nuw nsw i64 %indvars.iv3553.i, 2 ; 2 uses
  %i.caj = trunc i64 %indvars.iv.next3554.i to i32 ; 2 uses
  %i.cak = or i32 %i.caj, 1
  %i.cal = icmp slt i32 %i.cak, %i.aqn
  br i1 %i.cal, label %.preheader2547.us.us.i, label %.preheader2550.i, !llvm.loop !634

.preheader2550.i:                                 ; preds = %._crit_edge3159.split.us.us.us.i, %.preheader2547.us.preheader.i, %.preheader2547.preheader.i, %._crit_edge3126.i
  %.1793.lcssa.i = phi float [ %op.rdx, %._crit_edge3126.i ], [ %op.rdx, %.preheader2547.preheader.i ], [ %op.rdx, %.preheader2547.us.preheader.i ], [ %.8800.us.us.us.i, %._crit_edge3159.split.us.us.us.i ] ; 3 uses
  %.2790.lcssa.i = phi ptr [ %.1789.lcssa.i, %._crit_edge3126.i ], [ %scevgep3537.i.a, %.preheader2547.preheader.i ], [ %scevgep3539.i, %.preheader2547.us.preheader.i ], [ %i.cai, %._crit_edge3159.split.us.us.us.i ]
  %.2786.lcssa.i = phi i32 [ %.1785.lcssa.i, %._crit_edge3126.i ], [ %i.byl, %.preheader2547.preheader.i ], [ %i.byt, %.preheader2547.us.preheader.i ], [ %i.caj, %._crit_edge3159.split.us.us.us.i ] ; 2 uses
  %i.cam = icmp slt i32 %.2786.lcssa.i, %i.aqn
  br i1 %i.cam, label %.preheader2546.lr.ph.i, label %._crit_edge3205.i

.preheader2546.lr.ph.i:                           ; preds = %.preheader2550.i
  %i.can = load i32, ptr %i.d, align 4
  %i.cao = load i32, ptr %i.j, align 4
  %invariant.op3197.i = sub i32 %.neg2501.i, %i.cao
  %i.cap = load i32, ptr %i.f, align 4            ; 2 uses
  %i.caq = load i32, ptr %i.a, align 4
  %.fr3245.i = freeze i32 %i.caq                  ; 2 uses
  %i.car = load i32, ptr %i.c, align 4
  %i.cas = load i32, ptr %i.i, align 4
  %.neg2491.i = add nuw nsw i32 %.08083217.i, 1
  %invariant.op3190.i = sub i32 %.neg2491.i, %i.cas
  %i.cat = load i32, ptr %i.e, align 4            ; 2 uses
  %i.cau = icmp sgt i32 %.fr3245.i, 0
  %or.cond3747.i = and i1 %i.bno, %i.cau
  br i1 %or.cond3747.i, label %.preheader2546.us.us.preheader.i, label %._crit_edge3205.i

.preheader2546.us.us.preheader.i:                 ; preds = %.preheader2546.lr.ph.i
  %i.cav = zext nneg i32 %.fr3245.i to i64        ; 2 uses
  %i.caw = zext i32 %.2786.lcssa.i to i64
  br label %.preheader2546.us.us.i

.preheader2546.us.us.i:                           ; preds = %._crit_edge3195.split.us.us.us.i, %.preheader2546.us.us.preheader.i
  %indvars.iv3566.i = phi i64 [ %i.caw, %.preheader2546.us.us.preheader.i ], [ %indvars.iv.next3567.i, %._crit_edge3195.split.us.us.us.i ] ; 2 uses
  %.37913202.us.us.i = phi ptr [ %.2790.lcssa.i, %.preheader2546.us.us.preheader.i ], [ %i.ccg, %._crit_edge3195.split.us.us.us.i ] ; 2 uses
  %.98013201.us.us.i = phi float [ %.1793.lcssa.i, %.preheader2546.us.us.preheader.i ], [ %.15807.us.us.us.i, %._crit_edge3195.split.us.us.us.i ]
  br label %bb.cw

bb.cw:                                            ; preds = %..loopexit2539_crit_edge.us.us.us.i, %.preheader2546.us.us.i
  %indvars.iv3561.i = phi i64 [ %indvars.iv.next3562.i, %..loopexit2539_crit_edge.us.us.us.i ], [ 0, %.preheader2546.us.us.i ] ; 3 uses
  %.108023192.us.us.us.i = phi float [ %.15807.us.us.us.i, %..loopexit2539_crit_edge.us.us.us.i ], [ %.98013201.us.us.i, %.preheader2546.us.us.i ] ; 3 uses
  %i.cax = trunc i64 %indvars.iv3561.i to i32
  %i.cay = mul i32 %i.can, %i.cax
  %.reass3198.us.us.us.i = add i32 %i.cay, %invariant.op3197.i ; 3 uses
  %i.caz = icmp slt i32 %.reass3198.us.us.us.i, 0
  br i1 %i.caz, label %..loopexit2539_crit_edge.us.us.us.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.cba = srem i32 %.reass3198.us.us.us.i, %i.cap
  %i.cbb = sdiv i32 %.reass3198.us.us.us.i, %i.cap ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.cba, 0
  %.not888.us.us.us.i = icmp slt i32 %i.cbb, %i.aqp
  %or.cond339 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond339, label %.preheader.us.us.us.i, label %..loopexit2539_crit_edge.us.us.us.i

bb.cy:                                            ; preds = %.preheader.us.us.us.i, %bb.da
  %indvars.iv3556.i = phi i64 [ 0, %.preheader.us.us.us.i ], [ %indvars.iv.next3557.i, %bb.da ] ; 3 uses
  %.118033187.us.us.us.i = phi float [ %.108023192.us.us.us.i, %.preheader.us.us.us.i ], [ %.13805.us.us.us.i, %bb.da ] ; 3 uses
  %i.cbc = trunc i64 %indvars.iv3556.i to i32
  %i.cbd = mul i32 %i.car, %i.cbc
  %.reass3191.us.us.us.i = add i32 %invariant.op3190.i, %i.cbd ; 3 uses
  %i.cbe = icmp slt i32 %.reass3191.us.us.us.i, 0
  br i1 %i.cbe, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.cbf = srem i32 %.reass3191.us.us.us.i, %i.cat
  %i.cbg = sdiv i32 %.reass3191.us.us.us.i, %i.cat ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.cbf, 0
  %.not890.us.us.us.i = icmp slt i32 %i.cbg, %i.aqo
  %or.cond340 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond340, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.da

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.cz
  %i.cbh = load ptr, ptr %1, align 8, !tbaa !18, !noalias !635
  %i.cbi = load i64, ptr %i.aqy, align 8, !tbaa !20, !noalias !635
  %i.cbj = mul i64 %i.cbi, %indvars.iv3566.i
  %i.cbk = load i64, ptr %i.aqz, align 8, !tbaa !57, !noalias !635 ; 2 uses
  %i.cbl = mul i64 %i.cbj, %i.cbk
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbh, i64 %i.cbl
  %i.cbn = mul i64 %i.ccf, %i.cbk
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbm, i64 %i.cbn
  %i.cbp = sext i32 %i.cbg to i64
  %i.cbq = getelementptr inbounds [2 x i8], ptr %i.cbo, i64 %i.cbp
  %i.cbr = load i16, ptr %i.cbq, align 2, !tbaa !461
  %i.cbs = zext i16 %i.cbr to i32
  %i.cbt = shl nuw i32 %i.cbs, 16
  %i.cbu = bitcast i32 %i.cbt to float
  %i.cbv = getelementptr inbounds nuw [2 x i8], ptr %i.cce, i64 %indvars.iv3556.i
  %i.cbw = load i16, ptr %i.cbv, align 2, !tbaa !461
  %i.cbx = zext i16 %i.cbw to i32
  %i.cby = shl nuw i32 %i.cbx, 16
  %i.cbz = bitcast i32 %i.cby to float
  %i.cca = fmul fast float %i.cbz, %i.cbu
  %i.ccb = fadd fast float %i.cca, %.118033187.us.us.us.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.cz, %bb.cy
  %.13805.us.us.us.i = phi nsz float [ %.118033187.us.us.us.i, %bb.cy ], [ %.118033187.us.us.us.i, %bb.cz ], [ %i.ccb, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3557.i = add nuw nsw i64 %indvars.iv3556.i, 1 ; 2 uses
  %exitcond3560.not.i = icmp eq i64 %indvars.iv.next3557.i, %i.cav
  br i1 %exitcond3560.not.i, label %..loopexit2539_crit_edge.us.us.us.i, label %bb.cy, !llvm.loop !638

..loopexit2539_crit_edge.us.us.us.i:              ; preds = %bb.da, %bb.cx, %bb.cw
  %.15807.us.us.us.i = phi nsz float [ %.108023192.us.us.us.i, %bb.cw ], [ %.108023192.us.us.us.i, %bb.cx ], [ %.13805.us.us.us.i, %bb.da ] ; 3 uses
  %indvars.iv.next3562.i = add nuw nsw i64 %indvars.iv3561.i, 1 ; 2 uses
  %exitcond3565.not.i = icmp eq i64 %indvars.iv.next3562.i, %wide.trip.count3505.i
  br i1 %exitcond3565.not.i, label %._crit_edge3195.split.us.us.us.i, label %bb.cw, !llvm.loop !639

.preheader.us.us.us.i:                            ; preds = %bb.cx
  %i.ccc = mul nuw nsw i64 %indvars.iv3561.i, %i.cav
  %i.ccd = sext i32 %i.cbb to i64
  %i.cce = getelementptr inbounds nuw [2 x i8], ptr %.37913202.us.us.i, i64 %i.ccc
  %i.ccf = mul nsw i64 %i.ccd, %i.arq
  br label %bb.cy

._crit_edge3195.split.us.us.us.i:                 ; preds = %..loopexit2539_crit_edge.us.us.us.i
  %i.ccg = getelementptr inbounds [2 x i8], ptr %.37913202.us.us.i, i64 %i.bnw
  %indvars.iv.next3567.i = add nuw nsw i64 %indvars.iv3566.i, 1 ; 2 uses
  %i.cch = trunc nuw i64 %indvars.iv.next3567.i to i32
  %i.cci = icmp sgt i32 %i.aqn, %i.cch
  br i1 %i.cci, label %.preheader2546.us.us.i, label %._crit_edge3205.i, !llvm.loop !640

._crit_edge3205.i:                                ; preds = %._crit_edge3195.split.us.us.us.i, %.preheader2546.lr.ph.i, %.preheader2550.i
  %.9801.lcssa.i = phi float [ %.1793.lcssa.i, %.preheader2550.i ], [ %.1793.lcssa.i, %.preheader2546.lr.ph.i ], [ %.15807.us.us.us.i, %._crit_edge3195.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bnl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.db
    i32 2, label %bb.dc
    i32 3, label %bb.dd
    i32 4, label %bb.df
    i32 5, label %bb.dg
    i32 6, label %bb.dh
  ]

bb.db:                                            ; preds = %._crit_edge3205.i
  %i.ccj = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9801.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dc:                                            ; preds = %._crit_edge3205.i
  %i.cck = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.ccl = load float, ptr %i.cck, align 4, !tbaa !39
  %i.ccm = fcmp fast ogt float %.9801.lcssa.i, 0.000000e+00
  %i.ccn = select fast i1 %i.ccm, float 1.000000e+00, float %i.ccl
  %i.cco = fmul fast float %i.ccn, %.9801.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dd:                                            ; preds = %._crit_edge3205.i
  %i.ccp = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %i.ccq = load float, ptr %i.ccp, align 4, !tbaa !39
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccp, i64 4
  %i.ccs = load float, ptr %i.ccr, align 4, !tbaa !39 ; 2 uses
  %.02380.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9801.lcssa.i, float %i.ccq) ; 2 uses
  %i.cct = fcmp fast ogt float %.02380.i, %i.ccs
  br i1 %i.cct, label %bb.de, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.de:                                            ; preds = %bb.dd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.df:                                            ; preds = %._crit_edge3205.i
  %.sroa.speculated2235.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9801.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2235.i, float f0xC2B0C0A5)
  %i.ccu = fneg fast float %.sroa.speculated.i
  %i.ccv = call fast float @llvm.exp.f32(float %i.ccu)
  %i.ccw = fadd fast float %i.ccv, 1.000000e+00
  %i.ccx = fdiv fast float 1.000000e+00, %i.ccw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dg:                                            ; preds = %._crit_edge3205.i
  %i.ccy = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9801.lcssa.i)
  %i.ccz = fadd fast float %i.ccy, 1.000000e+00
  %i.cda = call fast float @llvm.log.f32(float %i.ccz)
  %i.cdb = call fast float @llvm.tanh.f32(float %i.cda)
  %i.cdc = fmul fast float %i.cdb, %.9801.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dh:                                            ; preds = %._crit_edge3205.i
  %i.cdd = load ptr, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ct = load i32, ptr %15, align 4, !tbaa !69   ; 2 uses
  %i.cu = srem i32 %.reass.us, %i.ct
  %i.cv = sdiv i32 %.reass.us, %i.ct              ; 4 uses
  %.not384.us = icmp eq i32 %i.cu, 0
  %.not385.us = icmp slt i32 %i.cv, %i.ad
  %or.cond1564 = select i1 %.not384.us, i1 %.not385.us, i1 false
  br i1 %or.cond1564, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cw = trunc i64 %indvars.iv to i32
  %i.cx = add i32 %i.ko, %i.cw
  %i.cy = shl nsw i32 %i.cx, 6
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.03251287.us, i64 %i.cz ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %bb.j
    i32 4, label %_ZN4ncnn3MatD2Ev.exit402.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit400.us
  ]

_ZN4ncnn3MatD2Ev.exit400.us:                      ; preds = %bb.i
  %i.db = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !687
  %i.dc = load ptr, ptr %4, align 8, !tbaa !18, !noalias !687 ; 8 uses
  %i.dd = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !687 ; 8 uses
  %i.de = mul i64 %i.dd, %indvars.iv1450
  %i.df = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !687 ; 9 uses
  %i.dg = mul i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dg
  %i.di = sext i32 %i.db to i64
  %i.dj = mul nsw i64 %i.di, %i.kp
  %i.dk = mul i64 %i.dj, %i.df                    ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dk
  %i.dm = sext i32 %i.cv to i64                   ; 8 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = mul i64 %i.dd, %i.cc
  %i.dp = mul i64 %i.do, %i.df
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dk
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dm
  %i.dt = mul i64 %i.dd, %i.cd
  %i.du = mul i64 %i.dt, %i.df
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dk
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dm
  %i.dy = mul i64 %i.dd, %i.ce
  %i.dz = mul i64 %i.dy, %i.df
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dk
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dm
  %i.ed = mul i64 %i.dd, %i.cf
  %i.ee = mul i64 %i.ed, %i.df
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dk
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.dm
  %i.ei = mul i64 %i.dd, %i.cg
  %i.ej = mul i64 %i.ei, %i.df
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.dk
  %i.em = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.dm
  %i.en = mul i64 %i.dd, %i.ch
  %i.eo = mul i64 %i.en, %i.df
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.dk
  %i.er = mul i64 %i.dd, %i.cb
  %i.es = mul i64 %i.er, %i.df
  %i.et = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dm
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.dk
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.dm
  %i.ex = load float, ptr %i.dn, align 1, !tbaa !310
  %i.ey = insertelement <8 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <8 x float> %i.ey, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fa = load float, ptr %i.ds, align 1, !tbaa !310
  %i.fb = insertelement <8 x float> poison, float %i.fa, i64 0
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = load float, ptr %i.dx, align 1, !tbaa !310
  %i.fe = insertelement <8 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fg = load float, ptr %i.ec, align 1, !tbaa !310
  %i.fh = insertelement <8 x float> poison, float %i.fg, i64 0
  %i.fi = shufflevector <8 x float> %i.fh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fj = load float, ptr %i.eh, align 1, !tbaa !310
  %i.fk = insertelement <8 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <8 x float> %i.fk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fm = load float, ptr %i.em, align 1, !tbaa !310
  %i.fn = insertelement <8 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <8 x float> %i.fn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fp = load float, ptr %i.eu, align 1, !tbaa !310
  %i.fq = insertelement <8 x float> poison, float %i.fp, i64 0
  %i.fr = shufflevector <8 x float> %i.fq, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit402.us:                      ; preds = %bb.i
  %i.fs = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !690
  %i.ft = load ptr, ptr %4, align 8, !tbaa !18, !noalias !690 ; 2 uses
  %i.fu = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !690 ; 2 uses
  %i.fv = mul i64 %i.fu, %i.ci
  %i.fw = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !690 ; 3 uses
  %i.fx = mul i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fx
  %i.fz = sext i32 %i.fs to i64
  %i.ga = mul nsw i64 %i.fz, %i.kp
  %i.gb = mul i64 %i.ga, %i.fw                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gb
  %i.gd = mul i64 %i.fu, %i.cj
  %i.ge = mul i64 %i.gd, %i.fw
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ge
  %i.gg = shl nsw i32 %i.cv, 2
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gh ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gb
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.gh ; 4 uses
  %i.gl = load float, ptr %i.gi, align 1, !tbaa !310
  %i.gm = insertelement <8 x float> poison, float %i.gl, i64 0
  %i.gn = shufflevector <8 x float> %i.gm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gp = load float, ptr %i.go, align 1, !tbaa !310
  %i.gq = insertelement <8 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <8 x float> %i.gq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gt = load float, ptr %i.gs, align 1, !tbaa !310
  %i.gu = insertelement <8 x float> poison, float %i.gt, i64 0
  %i.gv = shufflevector <8 x float> %i.gu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gx = load float, ptr %i.gw, align 1, !tbaa !310
  %i.gy = insertelement <8 x float> poison, float %i.gx, i64 0
  %i.gz = shufflevector <8 x float> %i.gy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ha = load float, ptr %i.gk, align 1, !tbaa !310
  %i.hb = insertelement <8 x float> poison, float %i.ha, i64 0
  %i.hc = shufflevector <8 x float> %i.hb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.he = load float, ptr %i.hd, align 1, !tbaa !310
  %i.hf = insertelement <8 x float> poison, float %i.he, i64 0
  %i.hg = shufflevector <8 x float> %i.hf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hi = load float, ptr %i.hh, align 1, !tbaa !310
  %i.hj = insertelement <8 x float> poison, float %i.hi, i64 0
  %i.hk = shufflevector <8 x float> %i.hj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.hm = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !693
  %i.hn = load ptr, ptr %4, align 8, !tbaa !18, !noalias !693
  %i.ho = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !693
  %i.hp = mul i64 %i.ho, %i.ck
  %i.hq = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !693 ; 2 uses
  %i.hr = mul i64 %i.hp, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr
  %i.ht = sext i32 %i.hm to i64
  %i.hu = mul nsw i64 %i.ht, %i.kp
  %i.hv = mul i64 %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hv
  %i.hx = shl nsw i32 %i.cv, 3
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hy ; 8 uses
  %i.ia = load float, ptr %i.hz, align 1, !tbaa !310
  %i.ib = insertelement <8 x float> poison, float %i.ia, i64 0
  %i.ic = shufflevector <8 x float> %i.ib, <8 x float> poison, <8 x i32> zeroinitializer
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ie = load float, ptr %i.id, align 1, !tbaa !310
  %i.if = insertelement <8 x float> poison, float %i.ie, i64 0
  %i.ig = shufflevector <8 x float> %i.if, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ii = load float, ptr %i.ih, align 1, !tbaa !310
  %i.ij = insertelement <8 x float> poison, float %i.ii, i64 0
  %i.ik = shufflevector <8 x float> %i.ij, <8 x float> poison, <8 x i32> zeroinitializer
  %i.il = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.im = load float, ptr %i.il, align 1, !tbaa !310
  %i.in = insertelement <8 x float> poison, float %i.im, i64 0
  %i.io = shufflevector <8 x float> %i.in, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.iq = load float, ptr %i.ip, align 1, !tbaa !310
  %i.ir = insertelement <8 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <8 x float> %i.ir, <8 x float> poison, <8 x i32> zeroinitializer
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %i.iu = load float, ptr %i.it, align 1, !tbaa !310
  %i.iv = insertelement <8 x float> poison, float %i.iu, i64 0
  %i.iw = shufflevector <8 x float> %i.iv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.iy = load float, ptr %i.ix, align 1, !tbaa !310
  %i.iz = insertelement <8 x float> poison, float %i.iy, i64 0
  %i.ja = shufflevector <8 x float> %i.iz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hz, i64 28
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit400.us, %_ZN4ncnn3MatD2Ev.exit402.us, %bb.j
  %.sink1555.in = phi ptr [ %i.jb, %bb.j ], [ %i.hl, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ew, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1554 = phi <8 x float> [ %i.ic, %bb.j ], [ %i.gn, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ez, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1552 = phi <8 x float> [ %i.ig, %bb.j ], [ %i.gr, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fc, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1550 = phi <8 x float> [ %i.ik, %bb.j ], [ %i.gv, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ff, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1547 = phi <8 x float> [ %i.io, %bb.j ], [ %i.gz, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fi, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1544 = phi <8 x float> [ %i.is, %bb.j ], [ %i.hc, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fl, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1539 = phi <8 x float> [ %i.iw, %bb.j ], [ %i.hg, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fo, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1534 = phi <8 x float> [ %i.ja, %bb.j ], [ %i.hk, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fr, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1555 = load float, ptr %.sink1555.in, align 1, !tbaa !310
  %i.jc = insertelement <8 x float> poison, float %.sink1555, i64 0
  %i.jd = shufflevector <8 x float> %i.jc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.je = load <8 x float>, ptr %i.da, align 32, !tbaa !310
  %i.jf = fmul fast <8 x float> %i.je, %.sink1554
  %i.jg = fadd fast <8 x float> %.311801265.us, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.ji = load <8 x float>, ptr %i.jh, align 32, !tbaa !310
  %i.jj = fmul fast <8 x float> %i.ji, %.sink1552
  %i.jk = fadd fast <8 x float> %.211841264.us, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.jm = load <8 x float>, ptr %i.jl, align 32, !tbaa !310
  %i.jn = fmul fast <8 x float> %i.jm, %.sink1550
  %i.jo = fadd fast <8 x float> %.212021263.us, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.jq = load <8 x float>, ptr %i.jp, align 32, !tbaa !310
  %i.jr = fmul fast <8 x float> %i.jq, %.sink1547
  %i.js = fadd fast <8 x float> %.212151262.us, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.ju = load <8 x float>, ptr %i.jt, align 32, !tbaa !310
  %i.jv = fmul fast <8 x float> %i.ju, %.sink1544
  %i.jw = fadd fast <8 x float> %i.jv, %i.jg
  %i.jx = getelementptr inbounds nuw i8, ptr %i.da, i64 160
  %i.jy = load <8 x float>, ptr %i.jx, align 32, !tbaa !310
  %i.jz = fmul fast <8 x float> %i.jy, %.sink1539
  %i.ka = fadd fast <8 x float> %i.jz, %i.jk
  %i.kb = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.kc = load <8 x float>, ptr %i.kb, align 32, !tbaa !310
  %i.kd = fmul fast <8 x float> %i.kc, %.sink1534
  %i.ke = fadd fast <8 x float> %i.kd, %i.jo
  %i.kf = getelementptr inbounds nuw i8, ptr %i.da, i64 224
  %i.kg = load <8 x float>, ptr %i.kf, align 32, !tbaa !310
  %i.kh = fmul fast <8 x float> %i.kg, %i.jd
  %i.ki = fadd fast <8 x float> %i.kh, %i.js
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %.51218.us = phi nsz <8 x float> [ %.212151262.us, %bb.g ], [ %.212151262.us, %bb.i ], [ %.212151262.us, %bb.h ], [ %i.ki, %.sink.split ] ; 2 uses
  %.51205.us = phi nsz <8 x float> [ %.212021263.us, %bb.g ], [ %.212021263.us, %bb.i ], [ %.212021263.us, %bb.h ], [ %i.ke, %.sink.split ] ; 2 uses
  %.51187.us = phi nsz <8 x float> [ %.211841264.us, %bb.g ], [ %.211841264.us, %bb.i ], [ %.211841264.us, %bb.h ], [ %i.ka, %.sink.split ] ; 2 uses
  %.6.us = phi nsz <8 x float> [ %.311801265.us, %bb.g ], [ %.311801265.us, %bb.i ], [ %.311801265.us, %bb.h ], [ %i.jw, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1253.us, label %bb.g, !llvm.loop !696

.loopexit1253.us:                                 ; preds = %bb.k, %.preheader1252.us.a, %bb.f, %bb.e
  %.61219.us = phi nsz <8 x float> [ %.112141270.us, %bb.e ], [ %.112141270.us, %bb.f ], [ %.112141270.us, %.preheader1252.us.a ], [ %.51218.us, %bb.k ] ; 3 uses
  %.61206.us = phi nsz <8 x float> [ %.112011271.us, %bb.e ], [ %.112011271.us, %bb.f ], [ %.112011271.us, %.preheader1252.us.a ], [ %.51205.us, %bb.k ] ; 3 uses
  %.61188.us = phi nsz <8 x float> [ %.111831272.us, %bb.e ], [ %.111831272.us, %bb.f ], [ %.111831272.us, %.preheader1252.us.a ], [ %.51187.us, %bb.k ] ; 3 uses
  %.7.us = phi nsz <8 x float> [ %.211791273.us, %bb.e ], [ %.211791273.us, %bb.f ], [ %.211791273.us, %.preheader1252.us.a ], [ %.6.us, %bb.k ] ; 3 uses
  %i.kj = add nuw nsw i32 %.03341274.us, 1        ; 2 uses
  %exitcond1449.not = icmp eq i32 %i.kj, %i.bs
  br i1 %exitcond1449.not, label %._crit_edge.us, label %bb.e, !llvm.loop !697

.preheader1252.us.a:                              ; preds = %bb.f
  %i.kk = load i32, ptr %12, align 4, !tbaa !69   ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %.lr.ph.us, label %.loopexit1253.us

.lr.ph.us:                                        ; preds = %.preheader1252.us.a
  %i.km = load i32, ptr %13, align 4, !tbaa !69
  %i.kn = load i32, ptr %14, align 4, !tbaa !69
  %invariant.op.us = sub i32 %.neg1247, %i.kn
  %i.ko = mul nuw nsw i32 %i.kk, %.03341274.us
  %i.kp = sext i32 %i.cp to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.kk to i64
  br label %bb.g

._crit_edge.us:                                   ; preds = %.loopexit1253.us
  %i.kq = getelementptr inbounds [4 x i8], ptr %.03251287.us, i64 %i.bw ; 2 uses
  %indvars.iv.next1451 = add nuw nsw i64 %indvars.iv1450, 8 ; 2 uses
  %i.kr = icmp slt i64 %indvars.iv.next1451, %invariant.op
  br i1 %i.kr, label %.preheader1257.us, label %.preheader1260, !llvm.loop !698

.preheader1260:                                   ; preds = %._crit_edge.us, %.preheader1257.preheader, %_ZN4ncnn3MatD2Ev.exit404
  %.01213.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1257.preheader ], [ %.61219.us, %._crit_edge.us ] ; 3 uses
  %.01200.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1257.preheader ], [ %.61206.us, %._crit_edge.us ] ; 3 uses
  %.01182.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1257.preheader ], [ %.61188.us, %._crit_edge.us ] ; 3 uses
  %.11178.lcssa = phi <8 x float> [ %.01177, %_ZN4ncnn3MatD2Ev.exit404 ], [ %.01177, %.preheader1257.preheader ], [ %.7.us, %._crit_edge.us ] ; 3 uses
  %.0329.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit404 ], [ %i.be, %.preheader1257.preheader ], [ %i.bh, %._crit_edge.us ] ; 6 uses
  %.0325.lcssa = phi ptr [ %i.br, %_ZN4ncnn3MatD2Ev.exit404 ], [ %scevgep, %.preheader1257.preheader ], [ %i.kq, %._crit_edge.us ] ; 3 uses
  %i.ks = or disjoint i32 %.0329.lcssa, 3         ; 2 uses
  %i.kt = icmp slt i32 %i.ks, %i.ac
  br i1 %i.kt, label %.preheader1256.lr.ph, label %.preheader1259

.preheader1256.lr.ph:                             ; preds = %.preheader1260
  %i.ku = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  %.neg1243 = add nuw nsw i32 %.03231422, 1
  %i.kw = load i32, ptr %16, align 4, !tbaa !69
  %i.kx = shl i32 %i.kw, 5
  %i.ky = sext i32 %i.kx to i64                   ; 2 uses
  br i1 %i.kv, label %.preheader1256.lr.ph.split.us, label %.preheader1256.preheader

.preheader1256.preheader:                         ; preds = %.preheader1256.lr.ph
  %i.kz = add i32 %.0329.lcssa, 7
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.kz)
  %i.la = add i32 %smax, -4
  %i.lb = sub i32 %i.la, %.0329.lcssa             ; 2 uses
  %i.lc = and i32 %i.lb, -4
  %i.ld = zext i32 %i.lc to i64
  %i.le = add nuw nsw i64 %i.ld, 4
  %i.lf = mul nsw i64 %i.le, %i.ky
  %scevgep1453 = getelementptr i8, ptr %.0325.lcssa, i64 %i.lf
  %i.lg = add i32 %.0329.lcssa, 4
  %i.lh = and i32 %i.lb, -4
  %i.li = add i32 %i.lg, %i.lh
  br label %.preheader1259

.preheader1256.lr.ph.split.us:                    ; preds = %.preheader1256.lr.ph
  %i.lj = load i32, ptr %9, align 4, !tbaa !69
  %i.lk = load i32, ptr %10, align 4, !tbaa !69
  %invariant.op1343.us = sub i32 %.neg1245.a, %i.lk
  %i.ll = zext i32 %.0329.lcssa to i64
  %i.lm = zext nneg i32 %i.ks to i64
  br label %.preheader1256.us

.preheader1256.us:                                ; preds = %._crit_edge.us1366, %.preheader1256.lr.ph.split.us
  %indvars.iv1465 = phi i64 [ %indvars.iv.next1466, %._crit_edge.us1366 ], [ %i.ll, %.preheader1256.lr.ph.split.us ] ; 5 uses
  %i.ln = phi i64 [ %i.qv, %._crit_edge.us1366 ], [ %i.lm, %.preheader1256.lr.ph.split.us ]
  %.13261350.us = phi ptr [ %i.qu, %._crit_edge.us1366 ], [ %.0325.lcssa, %.preheader1256.lr.ph.split.us ] ; 3 uses
  %.81348.us = phi <8 x float> [ %.13.us, %._crit_edge.us1366 ], [ %.11178.lcssa, %.preheader1256.lr.ph.split.us ]
  %.711891347.us = phi <8 x float> [ %.121194.us, %._crit_edge.us1366 ], [ %.01182.lcssa, %.preheader1256.lr.ph.split.us ]
  %.712071346.us = phi <8 x float> [ %.121212.us, %._crit_edge.us1366 ], [ %.01200.lcssa, %.preheader1256.lr.ph.split.us ]
  %.712201345.us = phi <8 x float> [ %.121225.us, %._crit_edge.us1366 ], [ %.01213.lcssa, %.preheader1256.lr.ph.split.us ]
  %i.lo = or disjoint i64 %indvars.iv1465, 1
  %i.lp = or disjoint i64 %indvars.iv1465, 2
  %i.lq = lshr exact i64 %indvars.iv1465, 2
  br label %bb.l

bb.l:                                             ; preds = %.preheader1256.us, %.loopexit1251.us
  %.03361338.us = phi i32 [ 0, %.preheader1256.us ], [ %i.lw, %.loopexit1251.us ] ; 3 uses
  %.91337.us = phi <8 x float> [ %.81348.us, %.preheader1256.us ], [ %.13.us, %.loopexit1251.us ] ; 6 uses
  %.811901336.us = phi <8 x float> [ %.711891347.us, %.preheader1256.us ], [ %.121194.us, %.loopexit1251.us ] ; 6 uses
  %.812081335.us = phi <8 x float> [ %.712071346.us, %.preheader1256.us ], [ %.121212.us, %.loopexit1251.us ] ; 6 uses
  %.812211334.us = phi <8 x float> [ %.712201345.us, %.preheader1256.us ], [ %.121225.us, %.loopexit1251.us ] ; 6 uses
  %i.lr = mul nsw i32 %i.lj, %.03361338.us
  %.reass1344.us = add i32 %i.lr, %invariant.op1343.us ; 3 uses
  %i.ls = icmp slt i32 %.reass1344.us, 0
  br i1 %i.ls, label %.loopexit1251.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lt = load i32, ptr %11, align 4, !tbaa !69   ; 2 uses
  %i.lu = srem i32 %.reass1344.us, %i.lt
  %i.lv = sdiv i32 %.reass1344.us, %i.lt          ; 2 uses
  %.not378.us = icmp eq i32 %i.lu, 0
  %.not379.us = icmp slt i32 %i.lv, %i.ae
  %or.cond1565 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1565, label %.preheader1250.us, label %.loopexit1251.us

.loopexit1251.us:                                 ; preds = %bb.r, %bb.p, %.lr.ph.us1361, %.preheader1250.us, %bb.m, %bb.l
  %.121225.us = phi nsz <8 x float> [ %.812211334.us, %bb.l ], [ %.812211334.us, %bb.m ], [ %.111224.us.us, %bb.p ], [ %.812211334.us, %.preheader1250.us ], [ %.812211334.us, %.lr.ph.us1361 ], [ %.111224.us1322.us, %bb.r ] ; 3 uses
  %.121212.us = phi nsz <8 x float> [ %.812081335.us, %bb.l ], [ %.812081335.us, %bb.m ], [ %.111211.us.us, %bb.p ], [ %.812081335.us, %.preheader1250.us ], [ %.812081335.us, %.lr.ph.us1361 ], [ %.111211.us1323.us, %bb.r ] ; 3 uses
  %.121194.us = phi nsz <8 x float> [ %.811901336.us, %bb.l ], [ %.811901336.us, %bb.m ], [ %.111193.us.us, %bb.p ], [ %.811901336.us, %.preheader1250.us ], [ %.811901336.us, %.lr.ph.us1361 ], [ %.111193.us1324.us, %bb.r ] ; 3 uses
  %.13.us = phi nsz <8 x float> [ %.91337.us, %bb.l ], [ %.91337.us, %bb.m ], [ %.12.us.us, %bb.p ], [ %.91337.us, %.preheader1250.us ], [ %.91337.us, %.lr.ph.us1361 ], [ %.12.us1325.us, %bb.r ] ; 3 uses
  %i.lw = add nuw nsw i32 %.03361338.us, 1        ; 2 uses
  %exitcond1464.not = icmp eq i32 %i.lw, %i.ku
  br i1 %exitcond1464.not, label %._crit_edge.us1366, label %bb.l, !llvm.loop !699

.preheader1250.us:                                ; preds = %bb.m
  %i.lx = load i32, ptr %12, align 4, !tbaa !69   ; 4 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.lr.ph.us1361, label %.loopexit1251.us

.lr.ph.us1361:                                    ; preds = %.preheader1250.us
  %i.lz = load i32, ptr %13, align 4, !tbaa !69   ; 2 uses
  %i.ma = load i32, ptr %14, align 4, !tbaa !69
  %invariant.op.us1362 = sub i32 %.neg1243, %i.ma ; 2 uses
  %i.mb = mul nuw nsw i32 %i.lx, %.03361338.us    ; 2 uses
  %i.mc = sext i32 %i.lv to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1251.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1313.us.preheader
  ]

.lr.ph.split.us1313.us.preheader:                 ; preds = %.lr.ph.us1361
  %wide.trip.count1457 = zext nneg i32 %i.lx to i64
  br label %.lr.ph.split.us1313.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1361
  %wide.trip.count1462 = zext nneg i32 %i.lx to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.p
  %indvars.iv1459 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next1460, %bb.p ] ; 3 uses
  %.101302.us.us = phi <8 x float> [ %.91337.us, %.lr.ph.split.us.us.preheader ], [ %.12.us.us, %bb.p ] ; 3 uses
  %.911911301.us.us = phi <8 x float> [ %.811901336.us, %.lr.ph.split.us.us.preheader ], [ %.111193.us.us, %bb.p ] ; 3 uses
  %.912091300.us.us = phi <8 x float> [ %.812081335.us, %.lr.ph.split.us.us.preheader ], [ %.111211.us.us, %bb.p ] ; 3 uses
  %.912221299.us.us = phi <8 x float> [ %.812211334.us, %.lr.ph.split.us.us.preheader ], [ %.111224.us.us, %bb.p ] ; 3 uses
  %i.md = trunc i64 %indvars.iv1459 to i32
  %i.me = mul i32 %i.lz, %i.md
  %.reass.us1307.us = add i32 %i.me, %invariant.op.us1362 ; 3 uses
  %i.mf = icmp slt i32 %.reass.us1307.us, 0
  br i1 %i.mf, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.us
  %i.mg = load i32, ptr %15, align 4, !tbaa !69   ; 2 uses
  %i.mh = srem i32 %.reass.us1307.us, %i.mg
  %i.mi = sdiv i32 %.reass.us1307.us, %i.mg       ; 2 uses
  %.not380.us.us = icmp eq i32 %i.mh, 0
  %.not381.us.us = icmp slt i32 %i.mi, %i.ad
  %or.cond1566 = select i1 %.not380.us.us, i1 %.not381.us.us, i1 false
  br i1 %or.cond1566, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mj = trunc i64 %indvars.iv1459 to i32
  %i.mk = add i32 %i.mb, %i.mj
  %i.ml = shl nsw i32 %i.mk, 5
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.13261350.us, i64 %i.mm ; 4 uses
  %i.mo = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !700
  %i.mp = load ptr, ptr %4, align 8, !tbaa !18, !noalias !700
  %i.mq = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !700
  %i.mr = mul i64 %i.mq, %i.lq
  %i.ms = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !700 ; 2 uses
  %i.mt = mul i64 %i.mr, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mt
  %i.mv = sext i32 %i.mo to i64
  %i.mw = mul nsw i64 %i.mv, %i.mc
  %i.mx = mul i64 %i.mw, %i.ms
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mx
  %i.mz = shl nsw i32 %i.mi, 2
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.my, i64 %i.na ; 4 uses
  %i.nc = load float, ptr %i.nb, align 1, !tbaa !310
  %i.nd = insertelement <8 x float> poison, float %i.nc, i64 0
  %i.ne = shufflevector <8 x float> %i.nd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.ng = load float, ptr %i.nf, align 1, !tbaa !310
  %i.nh = insertelement <8 x float> poison, float %i.ng, i64 0
  %i.ni = shufflevector <8 x float> %i.nh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nk = load float, ptr %i.nj, align 1, !tbaa !310
  %i.nl = insertelement <8 x float> poison, float %i.nk, i64 0
end_hunk_8
begin_hunk_9_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ua = trunc nuw i64 %i.tz to i32
  %i.ub = icmp sgt i32 %i.ac, %i.ua
  br i1 %i.ub, label %.preheader1255.us, label %.preheader1258.loopexit, !llvm.loop !713

.preheader1258.loopexit:                          ; preds = %._crit_edge.us1398
  %i.uc = trunc nuw i64 %indvars.iv.next1477 to i32
  br label %.preheader1258

.preheader1258:                                   ; preds = %.preheader1255.preheader, %.preheader1258.loopexit, %.preheader1259
  %.131195.lcssa = phi <8 x float> [ %.71189.lcssa, %.preheader1259 ], [ %.171199.us, %.preheader1258.loopexit ], [ %.71189.lcssa, %.preheader1255.preheader ]
  %.14.lcssa = phi <8 x float> [ %.8.lcssa, %.preheader1259 ], [ %.18.us, %.preheader1258.loopexit ], [ %.8.lcssa, %.preheader1255.preheader ] ; 3 uses
  %.2331.lcssa = phi i32 [ %.1330.lcssa, %.preheader1259 ], [ %i.uc, %.preheader1258.loopexit ], [ %i.rq, %.preheader1255.preheader ] ; 2 uses
  %.2327.lcssa = phi ptr [ %.1326.lcssa, %.preheader1259 ], [ %i.ty, %.preheader1258.loopexit ], [ %scevgep1469, %.preheader1255.preheader ]
  %i.ud = icmp slt i32 %.2331.lcssa, %i.ac
  br i1 %i.ud, label %.preheader1254.lr.ph, label %._crit_edge1414

.preheader1254.lr.ph:                             ; preds = %.preheader1258
  %i.ue = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.uf = icmp sgt i32 %i.ue, 0
  %.neg1235 = add nuw nsw i32 %.03231422, 1
  %i.ug = load i32, ptr %16, align 4, !tbaa !69
  %i.uh = shl nsw i32 %i.ug, 3
  %i.ui = sext i32 %i.uh to i64
  br i1 %i.uf, label %.preheader1254.lr.ph.split.us, label %._crit_edge1414

.preheader1254.lr.ph.split.us:                    ; preds = %.preheader1254.lr.ph
  %i.uj = load i32, ptr %9, align 4, !tbaa !69
  %i.uk = load i32, ptr %10, align 4, !tbaa !69
  %invariant.op1409.us = sub i32 %.neg1245.a, %i.uk
  %i.ul = zext i32 %.2331.lcssa to i64
  br label %.preheader1254.us

.preheader1254.us:                                ; preds = %._crit_edge.us1420, %.preheader1254.lr.ph.split.us
  %indvars.iv1485 = phi i64 [ %indvars.iv.next1486, %._crit_edge.us1420 ], [ %i.ul, %.preheader1254.lr.ph.split.us ] ; 2 uses
  %.33281413.us = phi ptr [ %i.wc, %._crit_edge.us1420 ], [ %.2327.lcssa, %.preheader1254.lr.ph.split.us ] ; 2 uses
  %.191411.us = phi <8 x float> [ %.23.us, %._crit_edge.us1420 ], [ %.14.lcssa, %.preheader1254.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader1254.us, %.loopexit.us
  %.03331406.us = phi i32 [ 0, %.preheader1254.us ], [ %i.vv, %.loopexit.us ] ; 3 uses
  %.201405.us = phi <8 x float> [ %.191411.us, %.preheader1254.us ], [ %.23.us, %.loopexit.us ] ; 4 uses
  %i.um = mul nsw i32 %i.uj, %.03331406.us
  %.reass1410.us = add i32 %i.um, %invariant.op1409.us ; 3 uses
  %i.un = icmp slt i32 %.reass1410.us, 0
  br i1 %i.un, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.uo = load i32, ptr %11, align 4, !tbaa !69   ; 2 uses
  %i.up = srem i32 %.reass1410.us, %i.uo
  %i.uq = sdiv i32 %.reass1410.us, %i.uo          ; 2 uses
  %.not370.us = icmp eq i32 %i.up, 0
  %.not371.us = icmp slt i32 %i.uq, %i.ae
  %or.cond1570 = select i1 %.not370.us, i1 %.not371.us, i1 false
  br i1 %or.cond1570, label %.preheader.us, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us1417, %bb.ac
  %indvars.iv1479 = phi i64 [ 0, %.lr.ph.us1417 ], [ %indvars.iv.next1480, %bb.ac ] ; 3 uses
  %.211403.us = phi <8 x float> [ %.201405.us, %.lr.ph.us1417 ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.ur = trunc i64 %indvars.iv1479 to i32
  %i.us = mul i32 %i.vy, %i.ur
  %.reass.us1416 = add i32 %i.us, %invariant.op.us1418 ; 3 uses
  %i.ut = icmp slt i32 %.reass.us1416, 0
  br i1 %i.ut, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.uu = load i32, ptr %15, align 4, !tbaa !69   ; 2 uses
  %i.uv = srem i32 %.reass.us1416, %i.uu
  %i.uw = sdiv i32 %.reass.us1416, %i.uu          ; 2 uses
  %.not372.us = icmp eq i32 %i.uv, 0
  %.not373.us = icmp slt i32 %i.uw, %i.ad
  %or.cond1571 = select i1 %.not372.us, i1 %.not373.us, i1 false
  br i1 %or.cond1571, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ux = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !714
  %i.uy = load ptr, ptr %4, align 8, !tbaa !18, !noalias !714
  %i.uz = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !714
  %i.va = mul i64 %i.uz, %indvars.iv1485
  %i.vb = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !714 ; 2 uses
  %i.vc = mul i64 %i.va, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.vc
  %i.ve = sext i32 %i.ux to i64
  %i.vf = trunc i64 %indvars.iv1479 to i32
  %i.vg = add i32 %i.wa, %i.vf
  %i.vh = shl nsw i32 %i.vg, 3
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.33281413.us, i64 %i.vi
  %i.vk = mul nsw i64 %i.ve, %i.wb
  %i.vl = mul i64 %i.vk, %i.vb
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vl
  %i.vn = sext i32 %i.uw to i64
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.vn
  %i.vp = load float, ptr %i.vo, align 1, !tbaa !310
  %i.vq = insertelement <8 x float> poison, float %i.vp, i64 0
  %i.vr = shufflevector <8 x float> %i.vq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vs = load <8 x float>, ptr %i.vj, align 32, !tbaa !310
  %i.vt = fmul fast <8 x float> %i.vr, %i.vs
  %i.vu = fadd fast <8 x float> %i.vt, %.211403.us
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.22.us = phi nsz <8 x float> [ %.211403.us, %bb.z ], [ %i.vu, %bb.ab ], [ %.211403.us, %bb.aa ] ; 2 uses
  %indvars.iv.next1480 = add nuw nsw i64 %indvars.iv1479, 1 ; 2 uses
  %exitcond1483.not = icmp eq i64 %indvars.iv.next1480, %wide.trip.count1482
  br i1 %exitcond1483.not, label %.loopexit.us, label %bb.z, !llvm.loop !717

.loopexit.us:                                     ; preds = %bb.ac, %.preheader.us, %bb.y, %bb.x
  %.23.us = phi nsz <8 x float> [ %.201405.us, %bb.x ], [ %.201405.us, %bb.y ], [ %.201405.us, %.preheader.us ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.vv = add nuw nsw i32 %.03331406.us, 1        ; 2 uses
  %exitcond1484.not = icmp eq i32 %i.vv, %i.ue
  br i1 %exitcond1484.not, label %._crit_edge.us1420, label %bb.x, !llvm.loop !718

.preheader.us:                                    ; preds = %bb.y
  %i.vw = load i32, ptr %12, align 4, !tbaa !69   ; 3 uses
  %i.vx = icmp sgt i32 %i.vw, 0
  br i1 %i.vx, label %.lr.ph.us1417, label %.loopexit.us

.lr.ph.us1417:                                    ; preds = %.preheader.us
  %i.vy = load i32, ptr %13, align 4, !tbaa !69
  %i.vz = load i32, ptr %14, align 4, !tbaa !69
  %invariant.op.us1418 = sub i32 %.neg1235, %i.vz
  %i.wa = mul nuw nsw i32 %i.vw, %.03331406.us
  %i.wb = sext i32 %i.uq to i64
  %wide.trip.count1482 = zext nneg i32 %i.vw to i64
  br label %bb.z

._crit_edge.us1420:                               ; preds = %.loopexit.us
  %i.wc = getelementptr inbounds [4 x i8], ptr %.33281413.us, i64 %i.ui
  %indvars.iv.next1486 = add nuw nsw i64 %indvars.iv1485, 1 ; 2 uses
  %i.wd = trunc nuw i64 %indvars.iv.next1486 to i32
  %i.we = icmp sgt i32 %i.ac, %i.wd
  br i1 %i.we, label %.preheader1254.us, label %._crit_edge1414, !llvm.loop !719

._crit_edge1414:                                  ; preds = %._crit_edge.us1420, %.preheader1254.lr.ph, %.preheader1258
  %.19.lcssa = phi <8 x float> [ %.14.lcssa, %.preheader1258 ], [ %.14.lcssa, %.preheader1254.lr.ph ], [ %.23.us, %._crit_edge.us1420 ]
  %i.wf = fadd fast <8 x float> %.71207.lcssa, %.71220.lcssa
  %i.wg = fadd fast <8 x float> %i.wf, %.131195.lcssa
  %i.wh = fadd fast <8 x float> %i.wg, %.19.lcssa ; 10 uses
  %i.wi = load i32, ptr %17, align 4, !tbaa !69
  switch i32 %i.wi, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %.noexc547
    i32 3, label %.noexc549
    i32 4, label %.noexc550
    i32 5, label %.noexc551
    i32 6, label %.noexc554
  ]

bb.ad:                                            ; preds = %._crit_edge1414
  %i.wj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.wh, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc547:                                        ; preds = %._crit_edge1414
  %i.wk = load ptr, ptr %18, align 8, !tbaa !18
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !39
  %i.wm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.wh)
  %i.wn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.wh)
  %i.wo = insertelement <8 x float> poison, float %i.wl, i64 0
  %i.wp = shufflevector <8 x float> %i.wo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wq = fmul fast <8 x float> %i.wp, %i.wn
  %i.wr = fadd fast <8 x float> %i.wq, %i.wm
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc549:                                        ; preds = %._crit_edge1414
  %i.ws = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !39
  %i.wu = insertelement <8 x float> poison, float %i.wt, i64 0
  %i.wv = shufflevector <8 x float> %i.wu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !39
  %i.wy = insertelement <8 x float> poison, float %i.wx, i64 0
  %i.wz = shufflevector <8 x float> %i.wy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.wh, <8 x float> nofpclass(nan inf) %i.wv)
  %i.xb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xa, <8 x float> nofpclass(nan inf) %i.wz)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc550:                                        ; preds = %._crit_edge1414
  %i.xc = fneg fast <8 x float> %i.wh
  %i.xd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xc, <8 x float> splat (float f0x42B0C0A5))
  %i.xe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xd, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xf = fmul fast <8 x float> %i.xe, splat (float f0x3FB8AA3B)
  %i.xg = fadd fast <8 x float> %i.xf, splat (float 5.000000e-01) ; 2 uses
  %i.xh = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.xg, i32 1) ; 2 uses
  %i.xi = fcmp fast ogt <8 x float> %i.xh, %i.xg
  %i.xj = select <8 x i1> %i.xi, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.xk = fsub fast <8 x float> %i.xh, %i.xj      ; 2 uses
  %i.xl = fmul fast <8 x float> %i.xk, splat (float f0x3F317218)
  %i.xm = fsub fast <8 x float> %i.xe, %i.xl      ; 8 uses
  %i.xn = fmul fast <8 x float> %i.xm, %i.xm
  %i.xo = fmul fast <8 x float> %i.xm, splat (float f0x39506967)
  %i.xp = fadd fast <8 x float> %i.xo, splat (float f0x3AB743CE)
  %i.xq = fmul fast <8 x float> %i.xp, %i.xm
  %i.xr = fadd fast <8 x float> %i.xq, splat (float f0x3C088908)
  %i.xs = fmul fast <8 x float> %i.xr, %i.xm
  %i.xt = fadd fast <8 x float> %i.xs, splat (float f0x3D2AA9C1)
  %i.xu = fmul fast <8 x float> %i.xt, %i.xm
  %i.xv = fadd fast <8 x float> %i.xu, splat (float f0x3E2AAAAA)
  %i.xw = fmul fast <8 x float> %i.xv, %i.xm
  %i.xx = fadd fast <8 x float> %i.xw, splat (float 5.000000e-01)
  %i.xy = fmul fast <8 x float> %i.xn, %i.xx
  %i.xz = fadd fast <8 x float> %i.xm, %i.xy
  %i.ya = fadd fast <8 x float> %i.xz, splat (float 1.000000e+00)
  %i.yb = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xk)
  %i.yc = shl <8 x i32> %i.yb, splat (i32 23)
  %i.yd = add <8 x i32> %i.yc, splat (i32 1065353216)
  %i.ye = bitcast <8 x i32> %i.yd to <8 x float>
  %i.yf = fmul fast <8 x float> %i.ya, %i.ye
  %i.yg = fadd fast <8 x float> %i.yf, splat (float 1.000000e+00)
  %i.yh = fdiv fast <8 x float> splat (float 1.000000e+00), %i.yg
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc551:                                        ; preds = %._crit_edge1414
  %i.yi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.wh, <8 x float> splat (float f0x42B0C0A5))
  %i.yj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yi, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yk = fmul fast <8 x float> %i.yj, splat (float f0x3FB8AA3B)
  %i.yl = fadd fast <8 x float> %i.yk, splat (float 5.000000e-01) ; 2 uses
  %i.ym = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.yl, i32 1) ; 2 uses
  %i.yn = fcmp fast ogt <8 x float> %i.ym, %i.yl
  %i.yo = select <8 x i1> %i.yn, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.yp = fsub fast <8 x float> %i.ym, %i.yo      ; 2 uses
  %i.yq = fmul fast <8 x float> %i.yp, splat (float f0x3F317218)
  %i.yr = fsub fast <8 x float> %i.yj, %i.yq      ; 8 uses
  %i.ys = fmul fast <8 x float> %i.yr, %i.yr
  %i.yt = fmul fast <8 x float> %i.yr, splat (float f0x39506967)
  %i.yu = fadd fast <8 x float> %i.yt, splat (float f0x3AB743CE)
  %i.yv = fmul fast <8 x float> %i.yu, %i.yr
  %i.yw = fadd fast <8 x float> %i.yv, splat (float f0x3C088908)
  %i.yx = fmul fast <8 x float> %i.yw, %i.yr
  %i.yy = fadd fast <8 x float> %i.yx, splat (float f0x3D2AA9C1)
  %i.yz = fmul fast <8 x float> %i.yy, %i.yr
  %i.za = fadd fast <8 x float> %i.yz, splat (float f0x3E2AAAAA)
  %i.zb = fmul fast <8 x float> %i.za, %i.yr
  %i.zc = fadd fast <8 x float> %i.zb, splat (float 5.000000e-01)
  %i.zd = fmul fast <8 x float> %i.ys, %i.zc
  %i.ze = fadd fast <8 x float> %i.yr, %i.zd
  %i.zf = fadd fast <8 x float> %i.ze, splat (float 1.000000e+00)
  %i.zg = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.yp)
  %i.zh = shl <8 x i32> %i.zg, splat (i32 23)
  %i.zi = add <8 x i32> %i.zh, splat (i32 1065353216)
  %i.zj = bitcast <8 x i32> %i.zi to <8 x float>
  %i.zk = fmul fast <8 x float> %i.zf, %i.zj
  %i.zl = fadd fast <8 x float> %i.zk, splat (float 1.000000e+00) ; 2 uses
  %i.zm = fcmp fast ole <8 x float> %i.zl, zeroinitializer
  %i.zn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zl, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.zo = bitcast <8 x float> %i.zn to <8 x i32>
  %i.zp = bitcast <8 x float> %i.zn to <8 x i32>
  %i.zq = and <8 x i32> %i.zp, splat (i32 -2139095041)
  %i.zr = or disjoint <8 x i32> %i.zq, splat (i32 1056964608)
  %i.zs = bitcast <8 x i32> %i.zr to <8 x float>  ; 3 uses
  %i.zt = lshr <8 x i32> %i.zo, splat (i32 23)
  %i.zu = add nsw <8 x i32> %i.zt, splat (i32 -127)
  %i.zv = sitofp fast <8 x i32> %i.zu to <8 x float> ; 2 uses
  %i.zw = fadd fast <8 x float> %i.zv, splat (float 1.000000e+00)
  %i.zx = fcmp fast olt <8 x float> %i.zs, splat (float f0x3F3504F3) ; 2 uses
  %i.zy = select <8 x i1> %i.zx, <8 x float> %i.zs, <8 x float> zeroinitializer
  %i.zz = fadd fast <8 x float> %i.zs, splat (float -1.000000e+00)
  %i.aaa = select fast <8 x i1> %i.zx, <8 x float> %i.zv, <8 x float> %i.zw
  %i.aab = fadd fast <8 x float> %i.zz, %i.zy     ; 12 uses
  %i.aac = fmul fast <8 x float> %i.aab, %i.aab   ; 2 uses
  %i.aad = fmul fast <8 x float> %i.aab, splat (float f0x3D9021BB)
  %i.aae = fadd fast <8 x float> %i.aad, splat (float f0xBDEBD1B8)
  %i.aaf = fmul fast <8 x float> %i.aae, %i.aab
  %i.aag = fadd fast <8 x float> %i.aaf, splat (float f0x3DEF251A)
  %i.aah = fmul fast <8 x float> %i.aag, %i.aab
  %i.aai = fadd fast <8 x float> %i.aah, splat (float f0xBDFE5D4F)
  %i.aaj = fmul fast <8 x float> %i.aai, %i.aab
  %i.aak = fadd fast <8 x float> %i.aaj, splat (float f0x3E11E9BF)
  %i.aal = fmul fast <8 x float> %i.aak, %i.aab
  %i.aam = fadd fast <8 x float> %i.aal, splat (float f0xBE2AAE50)
  %i.aan = fmul fast <8 x float> %i.aam, %i.aab
  %i.aao = fadd fast <8 x float> %i.aan, splat (float f0x3E4CCEAC)
  %i.aap = fmul fast <8 x float> %i.aao, %i.aab
  %i.aaq = fadd fast <8 x float> %i.aap, splat (float f0xBE7FFFFC)
  %i.aar = fmul fast <8 x float> %i.aaq, %i.aab
  %i.aas = fadd fast <8 x float> %i.aar, splat (float f0x3EAAAAAA)
  %i.aat = fmul fast <8 x float> %i.aac, %i.aab
  %reass.mul.a = fmul fast <8 x float> %i.aat, %i.aas
  %.neg1229 = fmul fast <8 x float> %i.aac, splat (float -5.000000e-01)
  %reass.mul1231 = fmul fast <8 x float> %i.aaa, splat (float f0x3F317218)
  %20 = fadd fast <8 x float> %i.aab, %.neg1229
  %i.aau = fadd fast <8 x float> %reass.mul.a, %20
  %i.aav = fadd fast <8 x float> %i.aau, %reass.mul1231
  %.neg = fmul fast <8 x float> %i.aav, splat (float -2.000000e+00)
  %i.aaw = select fast <8 x i1> %i.zm, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.aax = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aaw, <8 x float> splat (float f0x42B0C0A5))
  %i.aay = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aax, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aaz = fmul fast <8 x float> %i.aay, splat (float f0x3FB8AA3B)
  %i.aba = fadd fast <8 x float> %i.aaz, splat (float 5.000000e-01) ; 2 uses
  %i.abb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aba, i32 1) ; 2 uses
  %i.abc = fcmp fast ogt <8 x float> %i.abb, %i.aba
  %i.abd = select <8 x i1> %i.abc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.abe = fsub fast <8 x float> %i.abb, %i.abd   ; 2 uses
  %i.abf = fmul fast <8 x float> %i.abe, splat (float f0x3F317218)
  %i.abg = fsub fast <8 x float> %i.aay, %i.abf   ; 8 uses
  %i.abh = fmul fast <8 x float> %i.abg, %i.abg
  %i.abi = fmul fast <8 x float> %i.abg, splat (float f0x39506967)
  %i.abj = fadd fast <8 x float> %i.abi, splat (float f0x3AB743CE)
  %i.abk = fmul fast <8 x float> %i.abj, %i.abg
  %i.abl = fadd fast <8 x float> %i.abk, splat (float f0x3C088908)
  %i.abm = fmul fast <8 x float> %i.abl, %i.abg
  %i.abn = fadd fast <8 x float> %i.abm, splat (float f0x3D2AA9C1)
  %i.abo = fmul fast <8 x float> %i.abn, %i.abg
  %i.abp = fadd fast <8 x float> %i.abo, splat (float f0x3E2AAAAA)
  %i.abq = fmul fast <8 x float> %i.abp, %i.abg
  %i.abr = fadd fast <8 x float> %i.abq, splat (float 5.000000e-01)
  %i.abs = fmul fast <8 x float> %i.abh, %i.abr
  %i.abt = fadd fast <8 x float> %i.abg, %i.abs
  %i.abu = fadd fast <8 x float> %i.abt, splat (float 1.000000e+00)
  %i.abv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abe)
  %i.abw = shl <8 x i32> %i.abv, splat (i32 23)
  %i.abx = add <8 x i32> %i.abw, splat (i32 1065353216)
  %i.aby = bitcast <8 x i32> %i.abx to <8 x float>
  %i.abz = fmul fast <8 x float> %i.abu, %i.aby
  %i.aca = fadd fast <8 x float> %i.abz, splat (float 1.000000e+00)
  %i.acb = fdiv fast <8 x float> splat (float 2.000000e+00), %i.aca
  %i.acc = fadd fast <8 x float> %i.acb, splat (float -1.000000e+00)
  %i.acd = fmul fast <8 x float> %i.acc, %i.wh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc554:                                        ; preds = %._crit_edge1414
  %i.ace = load ptr, ptr %18, align 8, !tbaa !18  ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !39
  %i.acg = insertelement <8 x float> poison, float %i.acf, i64 0
  %i.ach = shufflevector <8 x float> %i.acg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ace, i64 4
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !39
  %i.ack = insertelement <8 x float> poison, float %i.acj, i64 0
  %i.acl = shufflevector <8 x float> %i.ack, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acm = fmul fast <8 x float> %i.ach, %i.wh
  %i.acn = fadd fast <8 x float> %i.acm, %i.acl
  %i.aco = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acn, <8 x float> zeroinitializer)
  %i.acp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aco, <8 x float> splat (float 1.000000e+00))
  %i.acq = fmul fast <8 x float> %i.acp, %i.wh
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc554, %.noexc551, %.noexc550, %.noexc549, %.noexc547, %bb.ad, %._crit_edge1414
  %.0.i = phi nsz <8 x float> [ %i.acq, %.noexc554 ], [ %i.wj, %bb.ad ], [ %i.wr, %.noexc547 ], [ %i.xb, %.noexc549 ], [ %i.yh, %.noexc550 ], [ %i.acd, %.noexc551 ], [ %i.wh, %._crit_edge1414 ] ; 11 uses
  switch i32 %i.ah, label %.thread1227 [
    i32 8, label %.thread
    i32 4, label %bb.ae
    i32 1, label %bb.af
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  store <8 x float> %.0.i, ptr %.11423, align 32, !tbaa !310
  %i.acr = getelementptr inbounds nuw i8, ptr %.11423, i64 32
  br label %.thread1227

bb.ae:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.acs = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.acs, ptr %.11423, align 16, !tbaa !310
  %i.act = load i64, ptr %19, align 8, !tbaa !313
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %.11423, i64 %i.act
  %i.acv = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.acv, ptr %i.acu, align 16, !tbaa !310
  %i.acw = getelementptr inbounds nuw i8, ptr %.11423, i64 16
  br label %.thread1227

bb.af:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <8 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.11423, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <8 x float> %.0.i, i64 1
  %i.acx = load i64, ptr %19, align 8, !tbaa !313 ; 7 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %.11423, i64 %i.acx
  store float %.sroa.0.4.vec.extract, ptr %i.acy, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <8 x float> %.0.i, i64 2
  %.idx = shl i64 %i.acx, 3
  %i.acz = getelementptr inbounds nuw i8, ptr %.11423, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.acz, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <8 x float> %.0.i, i64 3
  %.idx365 = mul i64 %i.acx, 12
  %i.ada = getelementptr inbounds nuw i8, ptr %.11423, i64 %.idx365
  store float %.sroa.0.12.vec.extract, ptr %i.ada, align 4, !tbaa !39
  %.sroa.0.16.vec.extract = extractelement <8 x float> %.0.i, i64 4
  %.idx366 = shl i64 %i.acx, 4
  %i.adb = getelementptr inbounds nuw i8, ptr %.11423, i64 %.idx366
  store float %.sroa.0.16.vec.extract, ptr %i.adb, align 4, !tbaa !39
  %.sroa.0.20.vec.extract = extractelement <8 x float> %.0.i, i64 5
  %.idx367 = mul i64 %i.acx, 20
  %i.adc = getelementptr inbounds nuw i8, ptr %.11423, i64 %.idx367
  store float %.sroa.0.20.vec.extract, ptr %i.adc, align 4, !tbaa !39
  %.sroa.0.24.vec.extract = extractelement <8 x float> %.0.i, i64 6
  %.idx368 = mul i64 %i.acx, 24
  %i.add = getelementptr inbounds nuw i8, ptr %.11423, i64 %.idx368
  store float %.sroa.0.24.vec.extract, ptr %i.add, align 4, !tbaa !39
  %.sroa.0.28.vec.extract = extractelement <8 x float> %.0.i, i64 7
  %.idx369 = mul i64 %i.acx, 28
  %i.ade = getelementptr inbounds nuw i8, ptr %.11423, i64 %.idx369
  store float %.sroa.0.28.vec.extract, ptr %i.ade, align 4, !tbaa !39
  %i.adf = getelementptr inbounds nuw i8, ptr %.11423, i64 4
  br label %.thread1227

.thread1227:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.ae, %.thread, %bb.af
  %.4 = phi ptr [ %i.adf, %bb.af ], [ %.11423, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.acr, %.thread ], [ %i.acw, %bb.ae ] ; 2 uses
  %i.adg = add nuw nsw i32 %.03231422, 1          ; 2 uses
  %exitcond1488.not = icmp eq i32 %i.adg, %i.af
  br i1 %exitcond1488.not, label %._crit_edge, label %bb.c, !llvm.loop !720

._crit_edge1429:                                  ; preds = %._crit_edge1426.split, %.noexc527.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1429, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #15

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %18, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %19) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not1500 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1500, label %._crit_edge1502, label %.noexc527.lr.ph

.noexc527.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.y = load i32, ptr %i.q, align 8, !tbaa !279
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc527, label %._crit_edge1502

.noexc527:                                        ; preds = %.noexc527.lr.ph, %._crit_edge1499.split
  %.01501 = phi i32 [ %i.bi, %._crit_edge1499.split ], [ %i.k, %.noexc527.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !68
  %.fr = freeze i32 %i.aa                         ; 3 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !70
  %i.ac = mul i32 %i.ab, %.fr                     ; 11 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !56  ; 5 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !279 ; 4 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !56  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !279 ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !68  ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ei = mul i64 %i.dd, %i.cg
  %i.ej = mul i64 %i.ei, %i.df
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.dk
  %i.em = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.dm
  %i.en = mul i64 %i.dd, %i.ch
  %i.eo = mul i64 %i.en, %i.df
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.dk
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.dm
  %i.es = mul i64 %i.dd, %i.cb
  %i.et = mul i64 %i.es, %i.df
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.dk
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.dm
  %i.ex = load i16, ptr %i.dn, align 2, !tbaa !461
  %i.ey = zext i16 %i.ex to i32
  %i.ez = shl nuw i32 %i.ey, 16
  %i.fa = insertelement <8 x i32> poison, i32 %i.ez, i64 0
  %i.fb = bitcast <8 x i32> %i.fa to <8 x float>
  %i.fc = shufflevector <8 x float> %i.fb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fd = load i16, ptr %i.ds, align 2, !tbaa !461
  %i.fe = zext i16 %i.fd to i32
  %i.ff = shl nuw i32 %i.fe, 16
  %i.fg = insertelement <8 x i32> poison, i32 %i.ff, i64 0
  %i.fh = bitcast <8 x i32> %i.fg to <8 x float>
  %i.fi = shufflevector <8 x float> %i.fh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fj = load i16, ptr %i.dx, align 2, !tbaa !461
  %i.fk = zext i16 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 16
  %i.fm = insertelement <8 x i32> poison, i32 %i.fl, i64 0
  %i.fn = bitcast <8 x i32> %i.fm to <8 x float>
  %i.fo = shufflevector <8 x float> %i.fn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fp = load i16, ptr %i.ec, align 2, !tbaa !461
  %i.fq = zext i16 %i.fp to i32
  %i.fr = shl nuw i32 %i.fq, 16
  %i.fs = insertelement <8 x i32> poison, i32 %i.fr, i64 0
  %i.ft = bitcast <8 x i32> %i.fs to <8 x float>
  %i.fu = shufflevector <8 x float> %i.ft, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fv = load i16, ptr %i.eh, align 2, !tbaa !461
  %i.fw = zext i16 %i.fv to i32
  %i.fx = shl nuw i32 %i.fw, 16
  %i.fy = insertelement <8 x i32> poison, i32 %i.fx, i64 0
  %i.fz = bitcast <8 x i32> %i.fy to <8 x float>
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gb = load i16, ptr %i.em, align 2, !tbaa !461
  %i.gc = zext i16 %i.gb to i32
  %i.gd = shl nuw i32 %i.gc, 16
  %i.ge = insertelement <8 x i32> poison, i32 %i.gd, i64 0
  %i.gf = bitcast <8 x i32> %i.ge to <8 x float>
  %i.gg = shufflevector <8 x float> %i.gf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gh = load i16, ptr %i.er, align 2, !tbaa !461
  %i.gi = zext i16 %i.gh to i32
  %i.gj = shl nuw i32 %i.gi, 16
  %i.gk = insertelement <8 x i32> poison, i32 %i.gj, i64 0
  %i.gl = bitcast <8 x i32> %i.gk to <8 x float>
  %i.gm = shufflevector <8 x float> %i.gl, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit402.us:                      ; preds = %bb.i
  %i.gn = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !732
  %i.go = load ptr, ptr %4, align 8, !tbaa !18, !noalias !732 ; 2 uses
  %i.gp = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !732 ; 2 uses
  %i.gq = mul i64 %i.gp, %i.ci
  %i.gr = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !732 ; 3 uses
  %i.gs = mul i64 %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gs
  %i.gu = sext i32 %i.gn to i64
  %i.gv = mul nsw i64 %i.gu, %i.nt
  %i.gw = mul i64 %i.gv, %i.gr                    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  %i.gy = shl nsw i32 %i.cv, 2
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gx, i64 %i.gz ; 4 uses
  %i.hb = mul i64 %i.gp, %i.cj
  %i.hc = mul i64 %i.hb, %i.gr
  %i.hd = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gw
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.gz ; 4 uses
  %i.hg = load i16, ptr %i.ha, align 2, !tbaa !461
  %i.hh = zext i16 %i.hg to i32
  %i.hi = shl nuw i32 %i.hh, 16
  %i.hj = insertelement <8 x i32> poison, i32 %i.hi, i64 0
  %i.hk = bitcast <8 x i32> %i.hj to <8 x float>
  %i.hl = shufflevector <8 x float> %i.hk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !461
  %i.ho = zext i16 %i.hn to i32
  %i.hp = shl nuw i32 %i.ho, 16
  %i.hq = insertelement <8 x i32> poison, i32 %i.hp, i64 0
  %i.hr = bitcast <8 x i32> %i.hq to <8 x float>
  %i.hs = shufflevector <8 x float> %i.hr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !461
  %i.hv = zext i16 %i.hu to i32
  %i.hw = shl nuw i32 %i.hv, 16
  %i.hx = insertelement <8 x i32> poison, i32 %i.hw, i64 0
  %i.hy = bitcast <8 x i32> %i.hx to <8 x float>
  %i.hz = shufflevector <8 x float> %i.hy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ha, i64 6
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !461
  %i.ic = zext i16 %i.ib to i32
  %i.id = shl nuw i32 %i.ic, 16
  %i.ie = insertelement <8 x i32> poison, i32 %i.id, i64 0
  %i.if = bitcast <8 x i32> %i.ie to <8 x float>
  %i.ig = shufflevector <8 x float> %i.if, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ih = load i16, ptr %i.hf, align 2, !tbaa !461
  %i.ii = zext i16 %i.ih to i32
  %i.ij = shl nuw i32 %i.ii, 16
  %i.ik = insertelement <8 x i32> poison, i32 %i.ij, i64 0
  %i.il = bitcast <8 x i32> %i.ik to <8 x float>
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = getelementptr inbounds nuw i8, ptr %i.hf, i64 2
  %i.io = load i16, ptr %i.in, align 2, !tbaa !461
  %i.ip = zext i16 %i.io to i32
  %i.iq = shl nuw i32 %i.ip, 16
  %i.ir = insertelement <8 x i32> poison, i32 %i.iq, i64 0
  %i.is = bitcast <8 x i32> %i.ir to <8 x float>
  %i.it = shufflevector <8 x float> %i.is, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !461
  %i.iw = zext i16 %i.iv to i32
  %i.ix = shl nuw i32 %i.iw, 16
  %i.iy = insertelement <8 x i32> poison, i32 %i.ix, i64 0
  %i.iz = bitcast <8 x i32> %i.iy to <8 x float>
  %i.ja = shufflevector <8 x float> %i.iz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hf, i64 6
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.jc = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !735
  %i.jd = load ptr, ptr %4, align 8, !tbaa !18, !noalias !735
  %i.je = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !735
  %i.jf = mul i64 %i.je, %i.ck
  %i.jg = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !735 ; 2 uses
  %i.jh = mul i64 %i.jf, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jh
  %i.jj = sext i32 %i.jc to i64
  %i.jk = mul nsw i64 %i.jj, %i.nt
  %i.jl = mul i64 %i.jk, %i.jg
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jl
  %i.jn = shl nsw i32 %i.cv, 3
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.jm, i64 %i.jo ; 5 uses
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !461
  %i.jr = zext i16 %i.jq to i32
  %i.js = shl nuw i32 %i.jr, 16
  %i.jt = insertelement <8 x i32> poison, i32 %i.js, i64 0
  %i.ju = bitcast <8 x i32> %i.jt to <8 x float>
  %i.jv = shufflevector <8 x float> %i.ju, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !461
  %i.jy = zext i16 %i.jx to i32
  %i.jz = shl nuw i32 %i.jy, 16
  %i.ka = insertelement <8 x i32> poison, i32 %i.jz, i64 0
  %i.kb = bitcast <8 x i32> %i.ka to <8 x float>
  %i.kc = shufflevector <8 x float> %i.kb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !461
  %i.kf = zext i16 %i.ke to i32
  %i.kg = shl nuw i32 %i.kf, 16
  %i.kh = insertelement <8 x i32> poison, i32 %i.kg, i64 0
  %i.ki = bitcast <8 x i32> %i.kh to <8 x float>
  %i.kj = shufflevector <8 x float> %i.ki, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jp, i64 6
  %i.kl = load <4 x i16>, ptr %i.kk, align 2, !tbaa !461
  %i.km = zext <4 x i16> %i.kl to <4 x i32>
  %i.kn = shl nuw <4 x i32> %i.km, splat (i32 16) ; 4 uses
  %i.ko = bitcast <4 x i32> %i.kn to <4 x float>
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> poison, <8 x i32> zeroinitializer
  %i.kq = bitcast <4 x i32> %i.kn to <4 x float>
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ks = bitcast <4 x i32> %i.kn to <4 x float>
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ku = bitcast <4 x i32> %i.kn to <4 x float>
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jp, i64 14
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit400.us, %_ZN4ncnn3MatD2Ev.exit402.us, %bb.j
  %.sink1718.in = phi ptr [ %i.kw, %bb.j ], [ %i.jb, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ew, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1702 = phi <8 x float> [ %i.jv, %bb.j ], [ %i.hl, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fc, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1688 = phi <8 x float> [ %i.kc, %bb.j ], [ %i.hs, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fi, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1674 = phi <8 x float> [ %i.kj, %bb.j ], [ %i.hz, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fo, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink.a = phi <8 x float> [ %i.kp, %bb.j ], [ %i.ig, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fu, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1647 = phi <8 x float> [ %i.kr, %bb.j ], [ %i.im, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ga, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1632 = phi <8 x float> [ %i.kt, %bb.j ], [ %i.it, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.gg, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1617 = phi <8 x float> [ %i.kv, %bb.j ], [ %i.ja, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.gm, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1718 = load i16, ptr %.sink1718.in, align 2, !tbaa !461
  %i.kx = zext i16 %.sink1718 to i32
  %i.ky = shl nuw i32 %i.kx, 16
  %i.kz = insertelement <8 x i32> poison, i32 %i.ky, i64 0
  %i.la = bitcast <8 x i32> %i.kz to <8 x float>
  %i.lb = shufflevector <8 x float> %i.la, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lc = load <8 x i16>, ptr %i.da, align 16, !tbaa !310 ; 2 uses
  %i.ld = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.le = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lf = shufflevector <8 x i16> %i.ld, <8 x i16> %i.le, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lg = bitcast <16 x i16> %i.lf to <8 x float>
  %i.lh = fmul fast <8 x float> %.sink1702, %i.lg
  %i.li = fadd fast <8 x float> %.312531338.us, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.lk = load <8 x i16>, ptr %i.lj, align 16, !tbaa !310 ; 2 uses
  %i.ll = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ln = shufflevector <8 x i16> %i.ll, <8 x i16> %i.lm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lo = bitcast <16 x i16> %i.ln to <8 x float>
  %i.lp = fmul fast <8 x float> %.sink1688, %i.lo
  %i.lq = fadd fast <8 x float> %.212571337.us, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.ls = load <8 x i16>, ptr %i.lr, align 16, !tbaa !310 ; 2 uses
  %i.lt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ls, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ls, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lv = shufflevector <8 x i16> %i.lt, <8 x i16> %i.lu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lw = bitcast <16 x i16> %i.lv to <8 x float>
  %i.lx = fmul fast <8 x float> %.sink1674, %i.lw
  %i.ly = fadd fast <8 x float> %.212751336.us, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.ma = load <8 x i16>, ptr %i.lz, align 16, !tbaa !310 ; 2 uses
  %i.mb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ma, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ma, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.md = shufflevector <8 x i16> %i.mb, <8 x i16> %i.mc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.me = bitcast <16 x i16> %i.md to <8 x float>
  %i.mf = fmul fast <8 x float> %.sink.a, %i.me
  %i.mg = fadd fast <8 x float> %.212881335.us, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.mi = load <8 x i16>, ptr %i.mh, align 16, !tbaa !310 ; 2 uses
  %i.mj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ml = shufflevector <8 x i16> %i.mj, <8 x i16> %i.mk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mm = bitcast <16 x i16> %i.ml to <8 x float>
  %i.mn = fmul fast <8 x float> %.sink1647, %i.mm
  %i.mo = fadd fast <8 x float> %i.mn, %i.li
  %i.mp = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.mq = load <8 x i16>, ptr %i.mp, align 16, !tbaa !310 ; 2 uses
  %i.mr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ms = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mt = shufflevector <8 x i16> %i.mr, <8 x i16> %i.ms, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mu = bitcast <16 x i16> %i.mt to <8 x float>
  %i.mv = fmul fast <8 x float> %.sink1632, %i.mu
  %i.mw = fadd fast <8 x float> %i.mv, %i.lq
  %i.mx = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.my = load <8 x i16>, ptr %i.mx, align 16, !tbaa !310 ; 2 uses
  %i.mz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.my, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.na = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.my, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nb = shufflevector <8 x i16> %i.mz, <8 x i16> %i.na, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nc = bitcast <16 x i16> %i.nb to <8 x float>
  %i.nd = fmul fast <8 x float> %.sink1617, %i.nc
  %i.ne = fadd fast <8 x float> %i.nd, %i.ly
  %i.nf = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  %i.ng = load <8 x i16>, ptr %i.nf, align 16, !tbaa !310 ; 2 uses
  %i.nh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ng, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ni = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ng, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nj = shufflevector <8 x i16> %i.nh, <8 x i16> %i.ni, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nk = bitcast <16 x i16> %i.nj to <8 x float>
  %i.nl = fmul fast <8 x float> %i.lb, %i.nk
  %i.nm = fadd fast <8 x float> %i.nl, %i.mg
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %.51291.us = phi nsz <8 x float> [ %.212881335.us, %bb.g ], [ %.212881335.us, %bb.i ], [ %.212881335.us, %bb.h ], [ %i.nm, %.sink.split ] ; 2 uses
  %.51278.us = phi nsz <8 x float> [ %.212751336.us, %bb.g ], [ %.212751336.us, %bb.i ], [ %.212751336.us, %bb.h ], [ %i.ne, %.sink.split ] ; 2 uses
  %.51260.us = phi nsz <8 x float> [ %.212571337.us, %bb.g ], [ %.212571337.us, %bb.i ], [ %.212571337.us, %bb.h ], [ %i.mw, %.sink.split ] ; 2 uses
  %.6.us = phi nsz <8 x float> [ %.312531338.us, %bb.g ], [ %.312531338.us, %bb.i ], [ %.312531338.us, %bb.h ], [ %i.mo, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1326.us, label %bb.g, !llvm.loop !738

.loopexit1326.us:                                 ; preds = %bb.k, %.preheader1325.us.a, %bb.f, %bb.e
  %.61292.us = phi nsz <8 x float> [ %.112871343.us, %bb.e ], [ %.112871343.us, %bb.f ], [ %.112871343.us, %.preheader1325.us.a ], [ %.51291.us, %bb.k ] ; 3 uses
  %.61279.us = phi nsz <8 x float> [ %.112741344.us, %bb.e ], [ %.112741344.us, %bb.f ], [ %.112741344.us, %.preheader1325.us.a ], [ %.51278.us, %bb.k ] ; 3 uses
  %.61261.us = phi nsz <8 x float> [ %.112561345.us, %bb.e ], [ %.112561345.us, %bb.f ], [ %.112561345.us, %.preheader1325.us.a ], [ %.51260.us, %bb.k ] ; 3 uses
  %.7.us = phi nsz <8 x float> [ %.212521346.us, %bb.e ], [ %.212521346.us, %bb.f ], [ %.212521346.us, %.preheader1325.us.a ], [ %.6.us, %bb.k ] ; 3 uses
  %i.nn = add nuw nsw i32 %.03341347.us, 1        ; 2 uses
  %exitcond1522.not = icmp eq i32 %i.nn, %i.bs
  br i1 %exitcond1522.not, label %._crit_edge.us, label %bb.e, !llvm.loop !739

.preheader1325.us.a:                              ; preds = %bb.f
  %i.no = load i32, ptr %12, align 4, !tbaa !69   ; 3 uses
  %i.np = icmp sgt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph.us, label %.loopexit1326.us

.lr.ph.us:                                        ; preds = %.preheader1325.us.a
  %i.nq = load i32, ptr %13, align 4, !tbaa !69
  %i.nr = load i32, ptr %14, align 4, !tbaa !69
  %invariant.op.us = sub i32 %.neg1320, %i.nr
  %i.ns = mul nuw nsw i32 %i.no, %.03341347.us
  %i.nt = sext i32 %i.cp to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.no to i64
  br label %bb.g

._crit_edge.us:                                   ; preds = %.loopexit1326.us
  %i.nu = getelementptr inbounds [2 x i8], ptr %.03251360.us, i64 %i.bw ; 2 uses
  %indvars.iv.next1524 = add nuw nsw i64 %indvars.iv1523, 8 ; 2 uses
  %i.nv = icmp slt i64 %indvars.iv.next1524, %invariant.op
  br i1 %i.nv, label %.preheader1330.us, label %.preheader1333, !llvm.loop !740

.preheader1333:                                   ; preds = %._crit_edge.us, %.preheader1330.preheader, %_ZN4ncnn3MatD2Ev.exit404
  %.01286.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1330.preheader ], [ %.61292.us, %._crit_edge.us ] ; 3 uses
  %.01273.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1330.preheader ], [ %.61279.us, %._crit_edge.us ] ; 3 uses
  %.01255.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1330.preheader ], [ %.61261.us, %._crit_edge.us ] ; 3 uses
  %.11251.lcssa = phi <8 x float> [ %.01250, %_ZN4ncnn3MatD2Ev.exit404 ], [ %.01250, %.preheader1330.preheader ], [ %.7.us, %._crit_edge.us ] ; 3 uses
  %.0329.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit404 ], [ %i.be, %.preheader1330.preheader ], [ %i.bh, %._crit_edge.us ] ; 6 uses
  %.0325.lcssa = phi ptr [ %i.br, %_ZN4ncnn3MatD2Ev.exit404 ], [ %scevgep, %.preheader1330.preheader ], [ %i.nu, %._crit_edge.us ] ; 3 uses
  %i.nw = or disjoint i32 %.0329.lcssa, 3         ; 2 uses
  %i.nx = icmp slt i32 %i.nw, %i.ac
  br i1 %i.nx, label %.preheader1329.lr.ph, label %.preheader1332

.preheader1329.lr.ph:                             ; preds = %.preheader1333
  %i.ny = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.nz = icmp sgt i32 %i.ny, 0
  %.neg1316 = add nuw nsw i32 %.03231495, 1
  %i.oa = load i32, ptr %16, align 4, !tbaa !69
  %i.ob = shl i32 %i.oa, 5
  %i.oc = sext i32 %i.ob to i64                   ; 2 uses
  br i1 %i.nz, label %.preheader1329.lr.ph.split.us, label %.preheader1329.preheader

.preheader1329.preheader:                         ; preds = %.preheader1329.lr.ph
  %i.od = add i32 %.0329.lcssa, 7
  %smax = call i32 @llvm.smax.i32(i32 %i.ac, i32 %i.od)
  %i.oe = add i32 %smax, -4
  %i.of = sub i32 %i.oe, %.0329.lcssa             ; 2 uses
  %i.og = lshr i32 %i.of, 1
  %i.oh = and i32 %i.og, 2147483646
  %narrow1597 = add nuw i32 %i.oh, 2
  %i.oi = zext i32 %narrow1597 to i64
  %i.oj = mul nsw i64 %i.oi, %i.oc
  %scevgep1526 = getelementptr i8, ptr %.0325.lcssa, i64 %i.oj
  %i.ok = add i32 %.0329.lcssa, 4
  %i.ol = and i32 %i.of, -4
  %i.om = add i32 %i.ok, %i.ol
  br label %.preheader1332

.preheader1329.lr.ph.split.us:                    ; preds = %.preheader1329.lr.ph
  %i.on = load i32, ptr %9, align 4, !tbaa !69
  %i.oo = load i32, ptr %10, align 4, !tbaa !69
  %invariant.op1416.us = sub i32 %.neg1318.a, %i.oo
  %i.op = zext i32 %.0329.lcssa to i64
  %i.oq = zext nneg i32 %i.nw to i64
  br label %.preheader1329.us

.preheader1329.us:                                ; preds = %._crit_edge.us1439, %.preheader1329.lr.ph.split.us
  %indvars.iv1538 = phi i64 [ %indvars.iv.next1539, %._crit_edge.us1439 ], [ %i.op, %.preheader1329.lr.ph.split.us ] ; 5 uses
  %i.or = phi i64 [ %i.vx, %._crit_edge.us1439 ], [ %i.oq, %.preheader1329.lr.ph.split.us ]
  %.13261423.us = phi ptr [ %i.vw, %._crit_edge.us1439 ], [ %.0325.lcssa, %.preheader1329.lr.ph.split.us ] ; 3 uses
  %.81421.us = phi <8 x float> [ %.13.us, %._crit_edge.us1439 ], [ %.11251.lcssa, %.preheader1329.lr.ph.split.us ]
  %.712621420.us = phi <8 x float> [ %.121267.us, %._crit_edge.us1439 ], [ %.01255.lcssa, %.preheader1329.lr.ph.split.us ]
  %.712801419.us = phi <8 x float> [ %.121285.us, %._crit_edge.us1439 ], [ %.01273.lcssa, %.preheader1329.lr.ph.split.us ]
  %.712931418.us = phi <8 x float> [ %.121298.us, %._crit_edge.us1439 ], [ %.01286.lcssa, %.preheader1329.lr.ph.split.us ]
  %i.os = or disjoint i64 %indvars.iv1538, 1
  %i.ot = or disjoint i64 %indvars.iv1538, 2
  %i.ou = lshr exact i64 %indvars.iv1538, 2
  br label %bb.l

bb.l:                                             ; preds = %.preheader1329.us, %.loopexit1324.us
  %.03361411.us = phi i32 [ 0, %.preheader1329.us ], [ %i.pa, %.loopexit1324.us ] ; 3 uses
  %.91410.us = phi <8 x float> [ %.81421.us, %.preheader1329.us ], [ %.13.us, %.loopexit1324.us ] ; 6 uses
  %.812631409.us = phi <8 x float> [ %.712621420.us, %.preheader1329.us ], [ %.121267.us, %.loopexit1324.us ] ; 6 uses
  %.812811408.us = phi <8 x float> [ %.712801419.us, %.preheader1329.us ], [ %.121285.us, %.loopexit1324.us ] ; 6 uses
  %.812941407.us = phi <8 x float> [ %.712931418.us, %.preheader1329.us ], [ %.121298.us, %.loopexit1324.us ] ; 6 uses
  %i.ov = mul nsw i32 %i.on, %.03361411.us
  %.reass1417.us = add i32 %i.ov, %invariant.op1416.us ; 3 uses
  %i.ow = icmp slt i32 %.reass1417.us, 0
  br i1 %i.ow, label %.loopexit1324.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ox = load i32, ptr %11, align 4, !tbaa !69   ; 2 uses
  %i.oy = srem i32 %.reass1417.us, %i.ox
  %i.oz = sdiv i32 %.reass1417.us, %i.ox          ; 2 uses
  %.not378.us = icmp eq i32 %i.oy, 0
  %.not379.us = icmp slt i32 %i.oz, %i.ae
  %or.cond1728 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1728, label %.preheader1323.us, label %.loopexit1324.us

.loopexit1324.us:                                 ; preds = %bb.r, %bb.p, %.lr.ph.us1434, %.preheader1323.us, %bb.m, %bb.l
  %.121298.us = phi nsz <8 x float> [ %.812941407.us, %bb.l ], [ %.812941407.us, %bb.m ], [ %.111297.us.us, %bb.p ], [ %.812941407.us, %.preheader1323.us ], [ %.812941407.us, %.lr.ph.us1434 ], [ %.111297.us1395.us, %bb.r ] ; 3 uses
  %.121285.us = phi nsz <8 x float> [ %.812811408.us, %bb.l ], [ %.812811408.us, %bb.m ], [ %.111284.us.us, %bb.p ], [ %.812811408.us, %.preheader1323.us ], [ %.812811408.us, %.lr.ph.us1434 ], [ %.111284.us1396.us, %bb.r ] ; 3 uses
  %.121267.us = phi nsz <8 x float> [ %.812631409.us, %bb.l ], [ %.812631409.us, %bb.m ], [ %.111266.us.us, %bb.p ], [ %.812631409.us, %.preheader1323.us ], [ %.812631409.us, %.lr.ph.us1434 ], [ %.111266.us1397.us, %bb.r ] ; 3 uses
  %.13.us = phi nsz <8 x float> [ %.91410.us, %bb.l ], [ %.91410.us, %bb.m ], [ %.12.us.us, %bb.p ], [ %.91410.us, %.preheader1323.us ], [ %.91410.us, %.lr.ph.us1434 ], [ %.12.us1398.us, %bb.r ] ; 3 uses
  %i.pa = add nuw nsw i32 %.03361411.us, 1        ; 2 uses
  %exitcond1537.not = icmp eq i32 %i.pa, %i.ny
  br i1 %exitcond1537.not, label %._crit_edge.us1439, label %bb.l, !llvm.loop !741

.preheader1323.us:                                ; preds = %bb.m
  %i.pb = load i32, ptr %12, align 4, !tbaa !69   ; 4 uses
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %.lr.ph.us1434, label %.loopexit1324.us

.lr.ph.us1434:                                    ; preds = %.preheader1323.us
  %i.pd = load i32, ptr %13, align 4, !tbaa !69   ; 2 uses
  %i.pe = load i32, ptr %14, align 4, !tbaa !69
  %invariant.op.us1435 = sub i32 %.neg1316, %i.pe ; 2 uses
  %i.pf = mul nuw nsw i32 %i.pb, %.03361411.us    ; 2 uses
  %i.pg = sext i32 %i.oz to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1324.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1386.us.preheader
  ]

.lr.ph.split.us1386.us.preheader:                 ; preds = %.lr.ph.us1434
  %wide.trip.count1530 = zext nneg i32 %i.pb to i64
  br label %.lr.ph.split.us1386.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1434
  %wide.trip.count1535 = zext nneg i32 %i.pb to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.p
  %indvars.iv1532 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next1533, %bb.p ] ; 3 uses
  %.101375.us.us = phi <8 x float> [ %.91410.us, %.lr.ph.split.us.us.preheader ], [ %.12.us.us, %bb.p ] ; 3 uses
  %.912641374.us.us = phi <8 x float> [ %.812631409.us, %.lr.ph.split.us.us.preheader ], [ %.111266.us.us, %bb.p ] ; 3 uses
  %.912821373.us.us = phi <8 x float> [ %.812811408.us, %.lr.ph.split.us.us.preheader ], [ %.111284.us.us, %bb.p ] ; 3 uses
  %.912951372.us.us = phi <8 x float> [ %.812941407.us, %.lr.ph.split.us.us.preheader ], [ %.111297.us.us, %bb.p ] ; 3 uses
  %i.ph = trunc i64 %indvars.iv1532 to i32
  %i.pi = mul i32 %i.pd, %i.ph
  %.reass.us1380.us = add i32 %i.pi, %invariant.op.us1435 ; 3 uses
  %i.pj = icmp slt i32 %.reass.us1380.us, 0
  br i1 %i.pj, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.us
  %i.pk = load i32, ptr %15, align 4, !tbaa !69   ; 2 uses
  %i.pl = srem i32 %.reass.us1380.us, %i.pk
  %i.pm = sdiv i32 %.reass.us1380.us, %i.pk       ; 2 uses
  %.not380.us.us = icmp eq i32 %i.pl, 0
  %.not381.us.us = icmp slt i32 %i.pm, %i.ad
  %or.cond1729 = select i1 %.not380.us.us, i1 %.not381.us.us, i1 false
  br i1 %or.cond1729, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.pn = trunc i64 %indvars.iv1532 to i32
  %i.po = add i32 %i.pf, %i.pn
  %i.pp = shl nsw i32 %i.po, 5
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %.13261423.us, i64 %i.pq ; 4 uses
  %i.ps = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !742
  %i.pt = load ptr, ptr %4, align 8, !tbaa !18, !noalias !742
  %i.pu = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !742
  %i.pv = mul i64 %i.pu, %i.ou
  %i.pw = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !742 ; 2 uses
  %i.px = mul i64 %i.pv, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.px
  %i.pz = sext i32 %i.ps to i64
  %i.qa = mul nsw i64 %i.pz, %i.pg
  %i.qb = mul i64 %i.qa, %i.pw
  %i.qc = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.qb
  %i.qd = shl nsw i32 %i.pm, 2
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.qc, i64 %i.qe ; 3 uses
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !461
  %i.qh = zext i16 %i.qg to i32
  %i.qi = shl nuw i32 %i.qh, 16
  %i.qj = insertelement <8 x i32> poison, i32 %i.qi, i64 0
  %i.qk = bitcast <8 x i32> %i.qj to <8 x float>
  %i.ql = shufflevector <8 x float> %i.qk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !461
  %i.qo = zext i16 %i.qn to i32
end_hunk_10
begin_hunk_11_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a

.preheader1331:                                   ; preds = %.preheader1328.preheader, %.preheader1331.loopexit, %.preheader1332
  %.131268.lcssa = phi <8 x float> [ %.71262.lcssa, %.preheader1332 ], [ %.171272.us, %.preheader1331.loopexit ], [ %.71262.lcssa, %.preheader1328.preheader ]
  %.14.lcssa = phi <8 x float> [ %.8.lcssa, %.preheader1332 ], [ %.18.us, %.preheader1331.loopexit ], [ %.8.lcssa, %.preheader1328.preheader ] ; 3 uses
  %.2331.lcssa = phi i32 [ %.1330.lcssa, %.preheader1332 ], [ %i.zr, %.preheader1331.loopexit ], [ %i.wr, %.preheader1328.preheader ] ; 2 uses
  %.2327.lcssa = phi ptr [ %.1326.lcssa, %.preheader1332 ], [ %i.zn, %.preheader1331.loopexit ], [ %scevgep1542, %.preheader1328.preheader ]
  %i.zs = icmp slt i32 %.2331.lcssa, %i.ac
  br i1 %i.zs, label %.preheader1327.lr.ph, label %._crit_edge1487

.preheader1327.lr.ph:                             ; preds = %.preheader1331
  %i.zt = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.zu = icmp sgt i32 %i.zt, 0
  %.neg1308 = add nuw nsw i32 %.03231495, 1
  %i.zv = load i32, ptr %16, align 4, !tbaa !69
  %i.zw = shl nsw i32 %i.zv, 3
  %i.zx = sext i32 %i.zw to i64
  br i1 %i.zu, label %.preheader1327.lr.ph.split.us, label %._crit_edge1487

.preheader1327.lr.ph.split.us:                    ; preds = %.preheader1327.lr.ph
  %i.zy = load i32, ptr %9, align 4, !tbaa !69
  %i.zz = load i32, ptr %10, align 4, !tbaa !69
  %invariant.op1482.us = sub i32 %.neg1318.a, %i.zz
  %i.aaa = zext i32 %.2331.lcssa to i64
  br label %.preheader1327.us

.preheader1327.us:                                ; preds = %._crit_edge.us1493, %.preheader1327.lr.ph.split.us
  %indvars.iv1558 = phi i64 [ %indvars.iv.next1559, %._crit_edge.us1493 ], [ %i.aaa, %.preheader1327.lr.ph.split.us ] ; 2 uses
  %.33281486.us = phi ptr [ %i.aby, %._crit_edge.us1493 ], [ %.2327.lcssa, %.preheader1327.lr.ph.split.us ] ; 2 uses
  %.191484.us = phi <8 x float> [ %.23.us, %._crit_edge.us1493 ], [ %.14.lcssa, %.preheader1327.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader1327.us, %.loopexit.us
  %.03331479.us = phi i32 [ 0, %.preheader1327.us ], [ %i.abr, %.loopexit.us ] ; 3 uses
  %.201478.us = phi <8 x float> [ %.191484.us, %.preheader1327.us ], [ %.23.us, %.loopexit.us ] ; 4 uses
  %i.aab = mul nsw i32 %i.zy, %.03331479.us
  %.reass1483.us = add i32 %i.aab, %invariant.op1482.us ; 3 uses
  %i.aac = icmp slt i32 %.reass1483.us, 0
  br i1 %i.aac, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aad = load i32, ptr %11, align 4, !tbaa !69  ; 2 uses
  %i.aae = srem i32 %.reass1483.us, %i.aad
  %i.aaf = sdiv i32 %.reass1483.us, %i.aad        ; 2 uses
  %.not370.us = icmp eq i32 %i.aae, 0
  %.not371.us = icmp slt i32 %i.aaf, %i.ae
  %or.cond1733 = select i1 %.not370.us, i1 %.not371.us, i1 false
  br i1 %or.cond1733, label %.preheader.us, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us1490, %bb.ac
  %indvars.iv1552 = phi i64 [ 0, %.lr.ph.us1490 ], [ %indvars.iv.next1553, %bb.ac ] ; 3 uses
  %.211476.us = phi <8 x float> [ %.201478.us, %.lr.ph.us1490 ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.aag = trunc i64 %indvars.iv1552 to i32
  %i.aah = mul i32 %i.abu, %i.aag
  %.reass.us1489 = add i32 %i.aah, %invariant.op.us1491 ; 3 uses
  %i.aai = icmp slt i32 %.reass.us1489, 0
  br i1 %i.aai, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aaj = load i32, ptr %15, align 4, !tbaa !69  ; 2 uses
  %i.aak = srem i32 %.reass.us1489, %i.aaj
  %i.aal = sdiv i32 %.reass.us1489, %i.aaj        ; 2 uses
  %.not372.us = icmp eq i32 %i.aak, 0
  %.not373.us = icmp slt i32 %i.aal, %i.ad
  %or.cond1734 = select i1 %.not372.us, i1 %.not373.us, i1 false
  br i1 %or.cond1734, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aam = trunc i64 %indvars.iv1552 to i32
  %i.aan = add i32 %i.abw, %i.aam
  %i.aao = shl nsw i32 %i.aan, 3
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [2 x i8], ptr %.33281486.us, i64 %i.aap
  %i.aar = load i32, ptr %i.n, align 4, !tbaa !56, !noalias !756
  %i.aas = load ptr, ptr %4, align 8, !tbaa !18, !noalias !756
  %i.aat = load i64, ptr %i.w, align 8, !tbaa !20, !noalias !756
  %i.aau = mul i64 %i.aat, %indvars.iv1558
  %i.aav = load i64, ptr %i.x, align 8, !tbaa !57, !noalias !756 ; 2 uses
  %i.aaw = mul i64 %i.aau, %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aaw
  %i.aay = sext i32 %i.aar to i64
  %i.aaz = mul nsw i64 %i.aay, %i.abx
  %i.aba = mul i64 %i.aaz, %i.aav
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.aba
  %i.abc = sext i32 %i.aal to i64
  %i.abd = getelementptr inbounds [2 x i8], ptr %i.abb, i64 %i.abc
  %i.abe = load i16, ptr %i.abd, align 2, !tbaa !461
  %i.abf = zext i16 %i.abe to i32
  %i.abg = shl nuw i32 %i.abf, 16
  %i.abh = insertelement <8 x i32> poison, i32 %i.abg, i64 0
  %i.abi = bitcast <8 x i32> %i.abh to <8 x float>
  %i.abj = shufflevector <8 x float> %i.abi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.abk = load <8 x i16>, ptr %i.aaq, align 16, !tbaa !310 ; 2 uses
  %i.abl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.abk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abn = shufflevector <8 x i16> %i.abl, <8 x i16> %i.abm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abo = bitcast <16 x i16> %i.abn to <8 x float>
  %i.abp = fmul fast <8 x float> %i.abj, %i.abo
  %i.abq = fadd fast <8 x float> %i.abp, %.211476.us
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.22.us = phi nsz <8 x float> [ %.211476.us, %bb.z ], [ %i.abq, %bb.ab ], [ %.211476.us, %bb.aa ] ; 2 uses
  %indvars.iv.next1553 = add nuw nsw i64 %indvars.iv1552, 1 ; 2 uses
  %exitcond1556.not = icmp eq i64 %indvars.iv.next1553, %wide.trip.count1555
  br i1 %exitcond1556.not, label %.loopexit.us, label %bb.z, !llvm.loop !759

.loopexit.us:                                     ; preds = %bb.ac, %.preheader.us, %bb.y, %bb.x
  %.23.us = phi nsz <8 x float> [ %.201478.us, %bb.x ], [ %.201478.us, %bb.y ], [ %.201478.us, %.preheader.us ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.abr = add nuw nsw i32 %.03331479.us, 1       ; 2 uses
  %exitcond1557.not = icmp eq i32 %i.abr, %i.zt
  br i1 %exitcond1557.not, label %._crit_edge.us1493, label %bb.x, !llvm.loop !760

.preheader.us:                                    ; preds = %bb.y
  %i.abs = load i32, ptr %12, align 4, !tbaa !69  ; 3 uses
  %i.abt = icmp sgt i32 %i.abs, 0
  br i1 %i.abt, label %.lr.ph.us1490, label %.loopexit.us

.lr.ph.us1490:                                    ; preds = %.preheader.us
  %i.abu = load i32, ptr %13, align 4, !tbaa !69
  %i.abv = load i32, ptr %14, align 4, !tbaa !69
  %invariant.op.us1491 = sub i32 %.neg1308, %i.abv
  %i.abw = mul nuw nsw i32 %i.abs, %.03331479.us
  %i.abx = sext i32 %i.aaf to i64
  %wide.trip.count1555 = zext nneg i32 %i.abs to i64
  br label %bb.z

._crit_edge.us1493:                               ; preds = %.loopexit.us
  %i.aby = getelementptr inbounds [2 x i8], ptr %.33281486.us, i64 %i.zx
  %indvars.iv.next1559 = add nuw nsw i64 %indvars.iv1558, 1 ; 2 uses
  %i.abz = trunc nuw i64 %indvars.iv.next1559 to i32
  %i.aca = icmp sgt i32 %i.ac, %i.abz
  br i1 %i.aca, label %.preheader1327.us, label %._crit_edge1487, !llvm.loop !761

._crit_edge1487:                                  ; preds = %._crit_edge.us1493, %.preheader1327.lr.ph, %.preheader1331
  %.19.lcssa = phi <8 x float> [ %.14.lcssa, %.preheader1331 ], [ %.14.lcssa, %.preheader1327.lr.ph ], [ %.23.us, %._crit_edge.us1493 ]
  %i.acb = fadd fast <8 x float> %.71280.lcssa, %.71293.lcssa
  %i.acc = fadd fast <8 x float> %i.acb, %.131268.lcssa
  %i.acd = fadd fast <8 x float> %i.acc, %.19.lcssa ; 10 uses
  %i.ace = load i32, ptr %17, align 4, !tbaa !69
  switch i32 %i.ace, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %.noexc547
    i32 3, label %.noexc549
    i32 4, label %.noexc550
    i32 5, label %.noexc551
    i32 6, label %.noexc554
  ]

bb.ad:                                            ; preds = %._crit_edge1487
  %i.acf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc547:                                        ; preds = %._crit_edge1487
  %i.acg = load ptr, ptr %18, align 8, !tbaa !18
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !39
  %i.aci = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.acd)
  %i.acj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.acd)
  %i.ack = insertelement <8 x float> poison, float %i.ach, i64 0
  %i.acl = shufflevector <8 x float> %i.ack, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acm = fmul fast <8 x float> %i.acl, %i.acj
  %i.acn = fadd fast <8 x float> %i.acm, %i.aci
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc549:                                        ; preds = %._crit_edge1487
  %i.aco = load ptr, ptr %18, align 8, !tbaa !18  ; 2 uses
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !39
  %i.acq = insertelement <8 x float> poison, float %i.acp, i64 0
  %i.acr = shufflevector <8 x float> %i.acq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  %i.act = load float, ptr %i.acs, align 4, !tbaa !39
  %i.acu = insertelement <8 x float> poison, float %i.act, i64 0
  %i.acv = shufflevector <8 x float> %i.acu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.acr)
  %i.acx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acw, <8 x float> nofpclass(nan inf) %i.acv)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc550:                                        ; preds = %._crit_edge1487
  %i.acy = fneg fast <8 x float> %i.acd
  %i.acz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acy, <8 x float> splat (float f0x42B0C0A5))
  %i.ada = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.adb = fmul fast <8 x float> %i.ada, splat (float f0x3FB8AA3B)
  %i.adc = fadd fast <8 x float> %i.adb, splat (float 5.000000e-01) ; 2 uses
  %i.add = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.adc, i32 1) ; 2 uses
  %i.ade = fcmp fast ogt <8 x float> %i.add, %i.adc
  %i.adf = select <8 x i1> %i.ade, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.adg = fsub fast <8 x float> %i.add, %i.adf   ; 2 uses
  %i.adh = fmul fast <8 x float> %i.adg, splat (float f0x3F317218)
  %i.adi = fsub fast <8 x float> %i.ada, %i.adh   ; 8 uses
  %i.adj = fmul fast <8 x float> %i.adi, %i.adi
  %i.adk = fmul fast <8 x float> %i.adi, splat (float f0x39506967)
  %i.adl = fadd fast <8 x float> %i.adk, splat (float f0x3AB743CE)
  %i.adm = fmul fast <8 x float> %i.adl, %i.adi
  %i.adn = fadd fast <8 x float> %i.adm, splat (float f0x3C088908)
  %i.ado = fmul fast <8 x float> %i.adn, %i.adi
  %i.adp = fadd fast <8 x float> %i.ado, splat (float f0x3D2AA9C1)
  %i.adq = fmul fast <8 x float> %i.adp, %i.adi
  %i.adr = fadd fast <8 x float> %i.adq, splat (float f0x3E2AAAAA)
  %i.ads = fmul fast <8 x float> %i.adr, %i.adi
  %i.adt = fadd fast <8 x float> %i.ads, splat (float 5.000000e-01)
  %i.adu = fmul fast <8 x float> %i.adj, %i.adt
  %i.adv = fadd fast <8 x float> %i.adi, %i.adu
  %i.adw = fadd fast <8 x float> %i.adv, splat (float 1.000000e+00)
  %i.adx = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adg)
  %i.ady = shl <8 x i32> %i.adx, splat (i32 23)
  %i.adz = add <8 x i32> %i.ady, splat (i32 1065353216)
  %i.aea = bitcast <8 x i32> %i.adz to <8 x float>
  %i.aeb = fmul fast <8 x float> %i.adw, %i.aea
  %i.aec = fadd fast <8 x float> %i.aeb, splat (float 1.000000e+00)
  %i.aed = fdiv fast <8 x float> splat (float 1.000000e+00), %i.aec
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc551:                                        ; preds = %._crit_edge1487
  %i.aee = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> splat (float f0x42B0C0A5))
  %i.aef = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aee, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aeg = fmul fast <8 x float> %i.aef, splat (float f0x3FB8AA3B)
  %i.aeh = fadd fast <8 x float> %i.aeg, splat (float 5.000000e-01) ; 2 uses
  %i.aei = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aeh, i32 1) ; 2 uses
  %i.aej = fcmp fast ogt <8 x float> %i.aei, %i.aeh
  %i.aek = select <8 x i1> %i.aej, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ael = fsub fast <8 x float> %i.aei, %i.aek   ; 2 uses
  %i.aem = fmul fast <8 x float> %i.ael, splat (float f0x3F317218)
  %i.aen = fsub fast <8 x float> %i.aef, %i.aem   ; 8 uses
  %i.aeo = fmul fast <8 x float> %i.aen, %i.aen
  %i.aep = fmul fast <8 x float> %i.aen, splat (float f0x39506967)
  %i.aeq = fadd fast <8 x float> %i.aep, splat (float f0x3AB743CE)
  %i.aer = fmul fast <8 x float> %i.aeq, %i.aen
  %i.aes = fadd fast <8 x float> %i.aer, splat (float f0x3C088908)
  %i.aet = fmul fast <8 x float> %i.aes, %i.aen
  %i.aeu = fadd fast <8 x float> %i.aet, splat (float f0x3D2AA9C1)
  %i.aev = fmul fast <8 x float> %i.aeu, %i.aen
  %i.aew = fadd fast <8 x float> %i.aev, splat (float f0x3E2AAAAA)
  %i.aex = fmul fast <8 x float> %i.aew, %i.aen
  %i.aey = fadd fast <8 x float> %i.aex, splat (float 5.000000e-01)
  %i.aez = fmul fast <8 x float> %i.aeo, %i.aey
  %i.afa = fadd fast <8 x float> %i.aen, %i.aez
  %i.afb = fadd fast <8 x float> %i.afa, splat (float 1.000000e+00)
  %i.afc = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ael)
  %i.afd = shl <8 x i32> %i.afc, splat (i32 23)
  %i.afe = add <8 x i32> %i.afd, splat (i32 1065353216)
  %i.aff = bitcast <8 x i32> %i.afe to <8 x float>
  %i.afg = fmul fast <8 x float> %i.afb, %i.aff
  %i.afh = fadd fast <8 x float> %i.afg, splat (float 1.000000e+00) ; 2 uses
  %i.afi = fcmp fast ole <8 x float> %i.afh, zeroinitializer
  %i.afj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.afh, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.afk = bitcast <8 x float> %i.afj to <8 x i32>
  %i.afl = bitcast <8 x float> %i.afj to <8 x i32>
  %i.afm = and <8 x i32> %i.afl, splat (i32 -2139095041)
  %i.afn = or disjoint <8 x i32> %i.afm, splat (i32 1056964608)
  %i.afo = bitcast <8 x i32> %i.afn to <8 x float> ; 3 uses
  %i.afp = lshr <8 x i32> %i.afk, splat (i32 23)
  %i.afq = add nsw <8 x i32> %i.afp, splat (i32 -127)
  %i.afr = sitofp fast <8 x i32> %i.afq to <8 x float> ; 2 uses
  %i.afs = fadd fast <8 x float> %i.afr, splat (float 1.000000e+00)
  %i.aft = fcmp fast olt <8 x float> %i.afo, splat (float f0x3F3504F3) ; 2 uses
  %i.afu = select <8 x i1> %i.aft, <8 x float> %i.afo, <8 x float> zeroinitializer
  %i.afv = fadd fast <8 x float> %i.afo, splat (float -1.000000e+00)
  %i.afw = select fast <8 x i1> %i.aft, <8 x float> %i.afr, <8 x float> %i.afs
  %i.afx = fadd fast <8 x float> %i.afv, %i.afu   ; 12 uses
  %i.afy = fmul fast <8 x float> %i.afx, %i.afx   ; 2 uses
  %i.afz = fmul fast <8 x float> %i.afx, splat (float f0x3D9021BB)
  %i.aga = fadd fast <8 x float> %i.afz, splat (float f0xBDEBD1B8)
  %i.agb = fmul fast <8 x float> %i.aga, %i.afx
  %i.agc = fadd fast <8 x float> %i.agb, splat (float f0x3DEF251A)
  %i.agd = fmul fast <8 x float> %i.agc, %i.afx
  %i.age = fadd fast <8 x float> %i.agd, splat (float f0xBDFE5D4F)
  %i.agf = fmul fast <8 x float> %i.age, %i.afx
  %i.agg = fadd fast <8 x float> %i.agf, splat (float f0x3E11E9BF)
  %i.agh = fmul fast <8 x float> %i.agg, %i.afx
  %i.agi = fadd fast <8 x float> %i.agh, splat (float f0xBE2AAE50)
  %i.agj = fmul fast <8 x float> %i.agi, %i.afx
  %i.agk = fadd fast <8 x float> %i.agj, splat (float f0x3E4CCEAC)
  %i.agl = fmul fast <8 x float> %i.agk, %i.afx
  %i.agm = fadd fast <8 x float> %i.agl, splat (float f0xBE7FFFFC)
  %i.agn = fmul fast <8 x float> %i.agm, %i.afx
  %i.ago = fadd fast <8 x float> %i.agn, splat (float f0x3EAAAAAA)
  %i.agp = fmul fast <8 x float> %i.afy, %i.afx
  %reass.mul.a = fmul fast <8 x float> %i.agp, %i.ago
  %.neg1302 = fmul fast <8 x float> %i.afy, splat (float -5.000000e-01)
  %reass.mul1304 = fmul fast <8 x float> %i.afw, splat (float f0x3F317218)
  %20 = fadd fast <8 x float> %i.afx, %.neg1302
  %i.agq = fadd fast <8 x float> %reass.mul.a, %20
  %i.agr = fadd fast <8 x float> %i.agq, %reass.mul1304
  %.neg = fmul fast <8 x float> %i.agr, splat (float -2.000000e+00)
  %i.ags = select fast <8 x i1> %i.afi, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.agt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ags, <8 x float> splat (float f0x42B0C0A5))
  %i.agu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.agt, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agv = fmul fast <8 x float> %i.agu, splat (float f0x3FB8AA3B)
  %i.agw = fadd fast <8 x float> %i.agv, splat (float 5.000000e-01) ; 2 uses
  %i.agx = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.agw, i32 1) ; 2 uses
  %i.agy = fcmp fast ogt <8 x float> %i.agx, %i.agw
  %i.agz = select <8 x i1> %i.agy, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.aha = fsub fast <8 x float> %i.agx, %i.agz   ; 2 uses
  %i.ahb = fmul fast <8 x float> %i.aha, splat (float f0x3F317218)
  %i.ahc = fsub fast <8 x float> %i.agu, %i.ahb   ; 8 uses
  %i.ahd = fmul fast <8 x float> %i.ahc, %i.ahc
  %i.ahe = fmul fast <8 x float> %i.ahc, splat (float f0x39506967)
  %i.ahf = fadd fast <8 x float> %i.ahe, splat (float f0x3AB743CE)
  %i.ahg = fmul fast <8 x float> %i.ahf, %i.ahc
  %i.ahh = fadd fast <8 x float> %i.ahg, splat (float f0x3C088908)
  %i.ahi = fmul fast <8 x float> %i.ahh, %i.ahc
  %i.ahj = fadd fast <8 x float> %i.ahi, splat (float f0x3D2AA9C1)
  %i.ahk = fmul fast <8 x float> %i.ahj, %i.ahc
  %i.ahl = fadd fast <8 x float> %i.ahk, splat (float f0x3E2AAAAA)
  %i.ahm = fmul fast <8 x float> %i.ahl, %i.ahc
  %i.ahn = fadd fast <8 x float> %i.ahm, splat (float 5.000000e-01)
  %i.aho = fmul fast <8 x float> %i.ahd, %i.ahn
  %i.ahp = fadd fast <8 x float> %i.ahc, %i.aho
  %i.ahq = fadd fast <8 x float> %i.ahp, splat (float 1.000000e+00)
  %i.ahr = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aha)
  %i.ahs = shl <8 x i32> %i.ahr, splat (i32 23)
  %i.aht = add <8 x i32> %i.ahs, splat (i32 1065353216)
  %i.ahu = bitcast <8 x i32> %i.aht to <8 x float>
  %i.ahv = fmul fast <8 x float> %i.ahq, %i.ahu
  %i.ahw = fadd fast <8 x float> %i.ahv, splat (float 1.000000e+00)
  %i.ahx = fdiv fast <8 x float> splat (float 2.000000e+00), %i.ahw
  %i.ahy = fadd fast <8 x float> %i.ahx, splat (float -1.000000e+00)
  %i.ahz = fmul fast <8 x float> %i.ahy, %i.acd
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc554:                                        ; preds = %._crit_edge1487
  %i.aia = load ptr, ptr %18, align 8, !tbaa !18  ; 2 uses
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !39
  %i.aic = insertelement <8 x float> poison, float %i.aib, i64 0
  %i.aid = shufflevector <8 x float> %i.aic, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aia, i64 4
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !39
  %i.aig = insertelement <8 x float> poison, float %i.aif, i64 0
  %i.aih = shufflevector <8 x float> %i.aig, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aii = fmul fast <8 x float> %i.aid, %i.acd
  %i.aij = fadd fast <8 x float> %i.aii, %i.aih
  %i.aik = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aij, <8 x float> zeroinitializer)
  %i.ail = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aik, <8 x float> splat (float 1.000000e+00))
  %i.aim = fmul fast <8 x float> %i.ail, %i.acd
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc554, %.noexc551, %.noexc550, %.noexc549, %.noexc547, %bb.ad, %._crit_edge1487
  %.0.i = phi nsz <8 x float> [ %i.aim, %.noexc554 ], [ %i.acf, %bb.ad ], [ %i.acn, %.noexc547 ], [ %i.acx, %.noexc549 ], [ %i.aed, %.noexc550 ], [ %i.ahz, %.noexc551 ], [ %i.acd, %._crit_edge1487 ] ; 4 uses
  switch i32 %i.ah, label %.thread1300 [
    i32 8, label %.thread
    i32 4, label %bb.ae
    i32 1, label %bb.af
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.ain = bitcast <8 x float> %.0.i to <8 x i32> ; 2 uses
  %i.aio = shufflevector <8 x i32> %i.ain, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aip = shufflevector <8 x i32> %i.ain, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aiq = lshr <4 x i32> %i.aio, splat (i32 16)
  %i.air = lshr <4 x i32> %i.aip, splat (i32 16)
  %i.ais = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aiq, <4 x i32> %i.air)
  store <8 x i16> %i.ais, ptr %.11496, align 16, !tbaa !310
  %i.ait = getelementptr inbounds nuw i8, ptr %.11496, i64 16
  br label %.thread1300

bb.ae:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aiu = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aiv = shufflevector <8 x i32> %i.aiu, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aiw = lshr <4 x i32> %i.aiv, splat (i32 16)
  %i.aix = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aiw, <4 x i32> poison)
  %i.aiy = bitcast <8 x i16> %i.aix to <2 x i64>
  %i.aiz = extractelement <2 x i64> %i.aiy, i64 0
  store i64 %i.aiz, ptr %.11496, align 1, !tbaa !310
  %i.aja = load i64, ptr %19, align 8, !tbaa !313
  %i.ajb = getelementptr inbounds nuw [2 x i8], ptr %.11496, i64 %i.aja
  %i.ajc = bitcast <8 x float> %.0.i to <8 x i32>
  %i.ajd = shufflevector <8 x i32> %i.ajc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aje = lshr <4 x i32> %i.ajd, splat (i32 16)
  %i.ajf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aje, <4 x i32> poison)
  %i.ajg = bitcast <8 x i16> %i.ajf to <2 x i64>
  %i.ajh = extractelement <2 x i64> %i.ajg, i64 0
  store i64 %i.ajh, ptr %i.ajb, align 1, !tbaa !310
  %i.aji = getelementptr inbounds nuw i8, ptr %.11496, i64 8
  br label %.thread1300

bb.af:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.ajj = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.ajk = extractelement <16 x i16> %i.ajj, i64 1
  store i16 %i.ajk, ptr %.11496, align 2, !tbaa !461
  %i.ajl = extractelement <16 x i16> %i.ajj, i64 3
  %i.ajm = load i64, ptr %19, align 8, !tbaa !313 ; 7 uses
  %i.ajn = getelementptr inbounds nuw [2 x i8], ptr %.11496, i64 %i.ajm
  store i16 %i.ajl, ptr %i.ajn, align 2, !tbaa !461
  %i.ajo = extractelement <16 x i16> %i.ajj, i64 5
  %.idx = shl i64 %i.ajm, 2
  %i.ajp = getelementptr inbounds nuw i8, ptr %.11496, i64 %.idx
  store i16 %i.ajo, ptr %i.ajp, align 2, !tbaa !461
  %i.ajq = extractelement <16 x i16> %i.ajj, i64 7
  %.idx365 = mul i64 %i.ajm, 6
  %i.ajr = getelementptr inbounds nuw i8, ptr %.11496, i64 %.idx365
  store i16 %i.ajq, ptr %i.ajr, align 2, !tbaa !461
  %i.ajs = extractelement <16 x i16> %i.ajj, i64 9
  %.idx366 = shl i64 %i.ajm, 3
  %i.ajt = getelementptr inbounds nuw i8, ptr %.11496, i64 %.idx366
  store i16 %i.ajs, ptr %i.ajt, align 2, !tbaa !461
  %i.aju = extractelement <16 x i16> %i.ajj, i64 11
  %.idx367 = mul i64 %i.ajm, 10
  %i.ajv = getelementptr inbounds nuw i8, ptr %.11496, i64 %.idx367
  store i16 %i.aju, ptr %i.ajv, align 2, !tbaa !461
  %i.ajw = extractelement <16 x i16> %i.ajj, i64 13
  %.idx368 = mul i64 %i.ajm, 12
  %i.ajx = getelementptr inbounds nuw i8, ptr %.11496, i64 %.idx368
  store i16 %i.ajw, ptr %i.ajx, align 2, !tbaa !461
  %i.ajy = extractelement <16 x i16> %i.ajj, i64 15
  %.idx369 = mul i64 %i.ajm, 14
  %i.ajz = getelementptr inbounds nuw i8, ptr %.11496, i64 %.idx369
  store i16 %i.ajy, ptr %i.ajz, align 2, !tbaa !461
  %i.aka = getelementptr inbounds nuw i8, ptr %.11496, i64 2
  br label %.thread1300

.thread1300:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.ae, %.thread, %bb.af
  %.4 = phi ptr [ %i.aka, %bb.af ], [ %.11496, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.ait, %.thread ], [ %i.aji, %bb.ae ] ; 2 uses
  %i.akb = add nuw nsw i32 %.03231495, 1          ; 2 uses
  %exitcond1561.not = icmp eq i32 %i.akb, %i.af
  br i1 %exitcond1561.not, label %._crit_edge, label %bb.c, !llvm.loop !762

._crit_edge1502:                                  ; preds = %._crit_edge1499.split, %.noexc527.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge1502, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #15

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
end_hunk_11
