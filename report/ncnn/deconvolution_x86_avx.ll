Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4ncnn21Deconvolution_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.223312519.us.us.i = phi <4 x float> [ %.32332.us.us.i, %bb.be ], [ %.123302527.us.us.i, %.preheader2506.us.us.i ] ; 4 uses
  %.223462518.us.us.i = phi <4 x float> [ %.32347.us.us.i, %bb.be ], [ %.123452526.us.us.i, %.preheader2506.us.us.i ] ; 4 uses
  %.223562517.us.us.i = phi <4 x float> [ %.32357.us.us.i, %bb.be ], [ %.123552525.us.us.i, %.preheader2506.us.us.i ] ; 4 uses
  %i.op = trunc i64 %indvars.iv.i to i32
  %i.oq = mul i32 %i.nv, %i.op
  %.reass.us.us.i = add i32 %invariant.op.i, %i.oq ; 3 uses
  %i.or = icmp slt i32 %.reass.us.us.i, 0
  br i1 %i.or, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.os = srem i32 %.reass.us.us.i, %i.nu
  %i.ot = sdiv i32 %.reass.us.us.i, %i.nu         ; 4 uses
  %.not936.us.us.i = icmp eq i32 %i.os, 0
  %.not937.us.us.i = icmp slt i32 %i.ot, %i.ll
  %or.cond401 = select i1 %.not936.us.us.i, i1 %.not937.us.us.i, i1 false
  br i1 %or.cond401, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ou = add nuw nsw i64 %indvars.iv.i, %i.on
  %i.ov = shl i64 %i.ou, 5
  %i.ow = and i64 %i.ov, 4294967264
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.07512545.us.i, i64 %i.ow ; 8 uses
  switch i32 %.fr2600.i, label %bb.be [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit976.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit975.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit973.us.us.i:                 ; preds = %bb.bd
  %i.oy = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !425
  %i.oz = load ptr, ptr %1, align 8, !tbaa !20, !noalias !425 ; 8 uses
  %i.pa = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !425
  %i.pb = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !425 ; 2 uses
  %i.pc = mul i64 %i.pb, %i.pa                    ; 8 uses
  %i.pd = mul i64 %i.pc, %indvars.iv3274.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pd
  %i.pf = sext i32 %i.oy to i64
  %i.pg = mul nsw i64 %i.pf, %i.oo
  %i.ph = mul i64 %i.pg, %i.pb                    ; 8 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.ph
  %i.pj = sext i32 %i.ot to i64                   ; 8 uses
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pj
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !39
  %i.pm = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.po = mul i64 %i.pc, %i.nz
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ph
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.pj
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !39
  %i.pt = insertelement <4 x float> poison, float %i.ps, i64 0
  %i.pu = shufflevector <4 x float> %i.pt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pv = mul i64 %i.pc, %i.oa
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.ph
  %i.py = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.pj
  %i.pz = load float, ptr %i.py, align 4, !tbaa !39
  %i.qa = insertelement <4 x float> poison, float %i.pz, i64 0
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qc = mul i64 %i.pc, %i.ob
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.ph
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.pj
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !39
  %i.qh = insertelement <4 x float> poison, float %i.qg, i64 0
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qj = mul i64 %i.pc, %i.oc
  %i.qk = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.qj
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.ph
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.ql, i64 %i.pj
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !39
  %i.qo = insertelement <4 x float> poison, float %i.qn, i64 0
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qq = mul i64 %i.pc, %i.od
  %i.qr = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.ph
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.pj
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !39
  %i.qv = insertelement <4 x float> poison, float %i.qu, i64 0
  %i.qw = shufflevector <4 x float> %i.qv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qx = mul i64 %i.pc, %i.oe
  %i.qy = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.ph
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.pj
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !39
  %i.rc = insertelement <4 x float> poison, float %i.rb, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = mul i64 %i.pc, %i.ny
  %i.rf = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.ph
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.pj
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit975.us.us.i:                 ; preds = %bb.bd
  %i.ri = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !426
  %i.rj = load ptr, ptr %1, align 8, !tbaa !20, !noalias !426 ; 2 uses
  %i.rk = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !426
  %i.rl = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !426 ; 2 uses
  %i.rm = mul i64 %i.rl, %i.rk                    ; 2 uses
  %i.rn = mul i64 %i.rm, %i.of
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rn
  %i.rp = sext i32 %i.ri to i64
  %i.rq = mul nsw i64 %i.rp, %i.oo
  %i.rr = mul i64 %i.rq, %i.rl                    ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rr
  %i.rt = shl nsw i32 %i.ot, 2
  %i.ru = sext i32 %i.rt to i64                   ; 2 uses
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.ru ; 4 uses
  %i.rw = mul i64 %i.rm, %i.og
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rr
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.ru ; 4 uses
  %i.sa = load float, ptr %i.rv, align 4, !tbaa !39
  %i.sb = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.se = load float, ptr %i.sd, align 4, !tbaa !39
  %i.sf = insertelement <4 x float> poison, float %i.se, i64 0
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.si = load float, ptr %i.sh, align 4, !tbaa !39
  %i.sj = insertelement <4 x float> poison, float %i.si, i64 0
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !39
  %i.sn = insertelement <4 x float> poison, float %i.sm, i64 0
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sp = load float, ptr %i.rz, align 4, !tbaa !39
  %i.sq = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  %i.st = load float, ptr %i.ss, align 4, !tbaa !39
  %i.su = insertelement <4 x float> poison, float %i.st, i64 0
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !39
  %i.sy = insertelement <4 x float> poison, float %i.sx, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rz, i64 12
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit976.us.us.i:                 ; preds = %bb.bd
  %i.tb = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !427
  %i.tc = load ptr, ptr %1, align 8, !tbaa !20, !noalias !427
  %i.td = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !427
  %i.te = mul i64 %i.td, %i.oh
  %i.tf = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !427 ; 2 uses
  %i.tg = mul i64 %i.te, %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.tg
  %i.ti = sext i32 %i.tb to i64
  %i.tj = mul nsw i64 %i.ti, %i.oo
  %i.tk = mul i64 %i.tj, %i.tf
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tk
  %i.tm = shl nsw i32 %i.ot, 3
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.tn ; 8 uses
  %i.tp = load float, ptr %i.to, align 4, !tbaa !39
  %i.tq = insertelement <4 x float> poison, float %i.tp, i64 0
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !39
  %i.tu = insertelement <4 x float> poison, float %i.tt, i64 0
  %i.tv = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !39
  %i.ty = insertelement <4 x float> poison, float %i.tx, i64 0
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ua = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !39
  %i.uc = insertelement <4 x float> poison, float %i.ub, i64 0
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ue = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !39
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ui = getelementptr inbounds nuw i8, ptr %i.to, i64 20
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !39
  %i.uk = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.um = getelementptr inbounds nuw i8, ptr %i.to, i64 24
  %i.un = load float, ptr %i.um, align 4, !tbaa !39
  %i.uo = insertelement <4 x float> poison, float %i.un, i64 0
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uq = getelementptr inbounds nuw i8, ptr %i.to, i64 28
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit976.us.us.i, %_ZN4ncnn3MatD2Ev.exit975.us.us.i, %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  %.sink3605.in.i = phi ptr [ %i.uq, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ta, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.rh, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3604.i = phi <4 x float> [ %i.tr, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sc, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.pn, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3602.i.a = phi <4 x float> [ %i.tv, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sg, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.pu, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3600.i = phi <4 x float> [ %i.tz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sk, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qb, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3598.i = phi <4 x float> [ %i.ud, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.so, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qi, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3596.i = phi <4 x float> [ %i.uh, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sr, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qp, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3593.i = phi <4 x float> [ %i.ul, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sv, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qw, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3590.i = phi <4 x float> [ %i.up, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sz, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.rd, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3605.i = load float, ptr %.sink3605.in.i, align 4, !tbaa !39
  %i.ur = insertelement <4 x float> poison, float %.sink3605.i, i64 0
  %i.us = shufflevector <4 x float> %i.ur, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ut = load <4 x float>, ptr %i.ox, align 16, !tbaa !82
  %i.uu = fmul fast <4 x float> %i.ut, %.sink3604.i
  %i.uv = fadd fast <4 x float> %i.uu, %.323202520.us.us.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.ux = load <4 x float>, ptr %i.uw, align 16, !tbaa !82
  %i.uy = fmul fast <4 x float> %i.ux, %.sink3602.i.a
  %i.uz = fadd fast <4 x float> %i.uy, %.223312519.us.us.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.vb = load <4 x float>, ptr %i.va, align 16, !tbaa !82
  %i.vc = fmul fast <4 x float> %i.vb, %.sink3600.i
  %i.vd = fadd fast <4 x float> %i.vc, %.223462518.us.us.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ox, i64 48
  %i.vf = load <4 x float>, ptr %i.ve, align 16, !tbaa !82
  %i.vg = fmul fast <4 x float> %i.vf, %.sink3598.i
  %i.vh = fadd fast <4 x float> %i.vg, %.223562517.us.us.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ox, i64 64
  %i.vj = load <4 x float>, ptr %i.vi, align 16, !tbaa !82
  %i.vk = fmul fast <4 x float> %i.vj, %.sink3596.i
  %i.vl = fadd fast <4 x float> %i.uv, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ox, i64 80
  %i.vn = load <4 x float>, ptr %i.vm, align 16, !tbaa !82
  %i.vo = fmul fast <4 x float> %i.vn, %.sink3593.i
  %i.vp = fadd fast <4 x float> %i.uz, %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ox, i64 96
  %i.vr = load <4 x float>, ptr %i.vq, align 16, !tbaa !82
  %i.vs = fmul fast <4 x float> %i.vr, %.sink3590.i
  %i.vt = fadd fast <4 x float> %i.vd, %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ox, i64 112
  %i.vv = load <4 x float>, ptr %i.vu, align 16, !tbaa !82
  %i.vw = fmul fast <4 x float> %i.vv, %i.us
  %i.vx = fadd fast <4 x float> %i.vh, %i.vw
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i, %bb.bd, %bb.bc, %bb.bb
  %.32357.us.us.i = phi nsz <4 x float> [ %.223562517.us.us.i, %bb.bb ], [ %.223562517.us.us.i, %bb.bd ], [ %.223562517.us.us.i, %bb.bc ], [ %i.vx, %.sink.split.i ] ; 2 uses
  %.32347.us.us.i = phi nsz <4 x float> [ %.223462518.us.us.i, %bb.bb ], [ %.223462518.us.us.i, %bb.bd ], [ %.223462518.us.us.i, %bb.bc ], [ %i.vt, %.sink.split.i ] ; 2 uses
  %.32332.us.us.i = phi nsz <4 x float> [ %.223312519.us.us.i, %bb.bb ], [ %.223312519.us.us.i, %bb.bd ], [ %.223312519.us.us.i, %bb.bc ], [ %i.vp, %.sink.split.i ] ; 2 uses
  %.42321.us.us.i = phi nsz <4 x float> [ %.323202520.us.us.i, %bb.bb ], [ %.323202520.us.us.i, %bb.bd ], [ %.323202520.us.us.i, %bb.bc ], [ %i.vl, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.nx
  br i1 %exitcond.not.i, label %..loopexit2507_crit_edge.us.us.i, label %bb.bb, !llvm.loop !335

..loopexit2507_crit_edge.us.us.i:                 ; preds = %bb.be, %bb.ba, %.lr.ph2530.split.us.us.i
  %.42358.us.us.i = phi nsz <4 x float> [ %.123552525.us.us.i, %.lr.ph2530.split.us.us.i ], [ %.123552525.us.us.i, %bb.ba ], [ %.32357.us.us.i, %bb.be ] ; 2 uses
  %.42348.us.us.i = phi nsz <4 x float> [ %.123452526.us.us.i, %.lr.ph2530.split.us.us.i ], [ %.123452526.us.us.i, %bb.ba ], [ %.32347.us.us.i, %bb.be ] ; 2 uses
  %.42333.us.us.i = phi nsz <4 x float> [ %.123302527.us.us.i, %.lr.ph2530.split.us.us.i ], [ %.123302527.us.us.i, %bb.ba ], [ %.32332.us.us.i, %bb.be ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223192528.us.us.i, %.lr.ph2530.split.us.us.i ], [ %.223192528.us.us.i, %bb.ba ], [ %.42321.us.us.i, %bb.be ] ; 2 uses
  %indvars.iv.next3270.i = add nuw nsw i64 %indvars.iv3269.i, 1 ; 2 uses
  %exitcond3273.not.i = icmp eq i64 %indvars.iv.next3270.i, %wide.trip.count3272.i
  br i1 %exitcond3273.not.i, label %._crit_edge.us.i, label %.lr.ph2530.split.us.us.i, !llvm.loop !336

._crit_edge.us.i:                                 ; preds = %..loopexit2507_crit_edge.us.us.i, %.preheader2511.us.i
  %.us-phi.us.i = phi <4 x float> [ %.023542540.us.i, %.preheader2511.us.i ], [ %.42358.us.us.i, %..loopexit2507_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2537.us.i = phi <4 x float> [ %.023442541.us.i, %.preheader2511.us.i ], [ %.42348.us.us.i, %..loopexit2507_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2538.us.i = phi <4 x float> [ %.023292542.us.i, %.preheader2511.us.i ], [ %.42333.us.us.i, %..loopexit2507_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2539.us.i = phi <4 x float> [ %.123182543.us.i, %.preheader2511.us.i ], [ %.5.us.us.i, %..loopexit2507_crit_edge.us.us.i ] ; 2 uses
  %i.vy = getelementptr inbounds [4 x i8], ptr %.07512545.us.i, i64 %i.mz ; 2 uses
  %indvars.iv.next3275.i = add nuw nsw i64 %indvars.iv3274.i, 8 ; 2 uses
  %i.vz = icmp slt i64 %indvars.iv.next3275.i, %invariant.op3582.i
  br i1 %i.vz, label %.preheader2511.us.i, label %.preheader2514.i, !llvm.loop !337

.preheader2514.i:                                 ; preds = %._crit_edge.us.i, %.preheader2511.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02354.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2511.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02344.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2511.preheader.i ], [ %.us-phi2537.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02329.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2511.preheader.i ], [ %.us-phi2538.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12318.lcssa.i = phi <4 x float> [ %.02317.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02317.i, %.preheader2511.preheader.i ], [ %.us-phi2539.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0756.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.mr, %.preheader2511.preheader.i ], [ %i.mr, %._crit_edge.us.i ] ; 7 uses
  %.0751.lcssa.i = phi ptr [ %i.no, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3267.i, %.preheader2511.preheader.i ], [ %i.vy, %._crit_edge.us.i ] ; 4 uses
  %i.wa = or disjoint i32 %.0756.lcssa.i, 3       ; 2 uses
  %i.wb = icmp slt i32 %i.wa, %i.lk
  br i1 %i.wb, label %.preheader2510.lr.ph.i, label %.preheader2513.i

.preheader2510.lr.ph.i:                           ; preds = %.preheader2514.i
  %i.wc = load i32, ptr %i.d, align 4             ; 2 uses
  %i.wd = load i32, ptr %i.j, align 4
  %invariant.op2611.i = sub i32 %.neg2469.i, %i.wd ; 2 uses
  %i.we = load i32, ptr %i.f, align 4             ; 4 uses
  %i.wf = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.wf                       ; 2 uses
  %i.wg = load i32, ptr %i.c, align 4             ; 2 uses
  %i.wh = load i32, ptr %i.i, align 4
  %.neg2467.i = add nuw nsw i32 %.07482734.i, 1
  %invariant.op2575.i = sub i32 %.neg2467.i, %i.wh ; 2 uses
  %i.wi = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.mw, label %.preheader2510.lr.ph.split.us.i, label %.preheader2510.preheader.i

.preheader2510.preheader.i:                       ; preds = %.preheader2510.lr.ph.i
  %i.wj = sub i32 %i.mt, %.0756.lcssa.i
  %i.wk = and i32 %i.wj, -4                       ; 2 uses
  %i.wl = zext i32 %i.wk to i64
  %i.wm = add nuw nsw i64 %i.wl, 4
  %i.wn = mul nsw i64 %i.wm, %i.nb
  %scevgep3277.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.wn
  %i.wo = add i32 %.0756.lcssa.i, 4
  %i.wp = add i32 %i.wo, %i.wk
  br label %.preheader2513.i

.preheader2510.lr.ph.split.us.i:                  ; preds = %.preheader2510.lr.ph.i
  %i.wq = icmp sgt i32 %.fr.i, 0
  br i1 %i.wq, label %.preheader2510.us.us.preheader.i, label %.preheader2510.us.preheader.i

.preheader2510.us.preheader.i:                    ; preds = %.preheader2510.lr.ph.split.us.i
  %i.wr = sub i32 %i.mt, %.0756.lcssa.i
  %i.ws = and i32 %i.wr, -4                       ; 2 uses
  %i.wt = zext i32 %i.ws to i64
  %i.wu = add nuw nsw i64 %i.wt, 4
  %i.wv = mul nsw i64 %i.wu, %i.nb
  %scevgep3278.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.wv
  %i.ww = add i32 %.0756.lcssa.i, 4
  %i.wx = add i32 %i.ww, %i.ws
  br label %.preheader2513.i

.preheader2510.us.us.preheader.i:                 ; preds = %.preheader2510.lr.ph.split.us.i
  %i.wy = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.wz = zext i32 %.0756.lcssa.i to i64
  %i.xa = zext nneg i32 %i.wa to i64
  br label %.preheader2510.us.us.i

.preheader2510.us.us.i:                           ; preds = %._crit_edge.split.us.us2647.us.i, %.preheader2510.us.us.preheader.i
  %indvars.iv3294.i = phi i64 [ %i.wz, %.preheader2510.us.us.preheader.i ], [ %indvars.iv.next3295.i, %._crit_edge.split.us.us2647.us.i ] ; 5 uses
  %i.xb = phi i64 [ %i.xa, %.preheader2510.us.us.preheader.i ], [ %i.ace, %._crit_edge.split.us.us2647.us.i ]
  %.17522632.us.us.i = phi ptr [ %.0751.lcssa.i, %.preheader2510.us.us.preheader.i ], [ %i.acd, %._crit_edge.split.us.us2647.us.i ] ; 3 uses
  %.623222630.us.us.i = phi <4 x float> [ %.12318.lcssa.i, %.preheader2510.us.us.preheader.i ], [ %.us-phi154, %._crit_edge.split.us.us2647.us.i ] ; 3 uses
  %.523342629.us.us.i = phi <4 x float> [ %.02329.lcssa.i, %.preheader2510.us.us.preheader.i ], [ %.us-phi153, %._crit_edge.split.us.us2647.us.i ] ; 3 uses
  %.523492628.us.us.i = phi <4 x float> [ %.02344.lcssa.i, %.preheader2510.us.us.preheader.i ], [ %.us-phi152, %._crit_edge.split.us.us2647.us.i ] ; 3 uses
  %.523592627.us.us.i = phi <4 x float> [ %.02354.lcssa.i, %.preheader2510.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2647.us.i ] ; 3 uses
  %i.xc = add nuw nsw i64 %indvars.iv3294.i, 1
  %i.xd = add nuw nsw i64 %indvars.iv3294.i, 2
  %i.xe = lshr exact i64 %indvars.iv3294.i, 2
  switch i32 %.fr2600.i, label %._crit_edge.split.us.us2647.us.i [
    i32 4, label %.preheader2510.us.us.i.split.us
    i32 1, label %.preheader2510.us.us.i.split.us155
  ]

.preheader2510.us.us.i.split.us:                  ; preds = %.preheader2510.us.us.i, %..loopexit2505_crit_edge.us.us.us.i.us
  %indvars.iv3289.i.us = phi i64 [ %indvars.iv.next3290.i.us, %..loopexit2505_crit_edge.us.us.us.i.us ], [ 0, %.preheader2510.us.us.i ] ; 3 uses
  %.72604.us.us.us.i.us = phi <4 x float> [ %.102325.us.us.us.i.us, %..loopexit2505_crit_edge.us.us.us.i.us ], [ %.623222630.us.us.i, %.preheader2510.us.us.i ] ; 3 uses
  %.623352603.us.us.us.i.us = phi <4 x float> [ %.92338.us.us.us.i.us, %..loopexit2505_crit_edge.us.us.us.i.us ], [ %.523342629.us.us.i, %.preheader2510.us.us.i ] ; 3 uses
  %.623502602.us.us.us.i.us = phi <4 x float> [ %.92353.us.us.us.i.us, %..loopexit2505_crit_edge.us.us.us.i.us ], [ %.523492628.us.us.i, %.preheader2510.us.us.i ] ; 3 uses
  %.623602601.us.us.us.i.us = phi <4 x float> [ %.92363.us.us.us.i.us, %..loopexit2505_crit_edge.us.us.us.i.us ], [ %.523592627.us.us.i, %.preheader2510.us.us.i ] ; 3 uses
  %i.xf = trunc i64 %indvars.iv3289.i.us to i32
  %i.xg = mul i32 %i.wc, %i.xf
  %.reass2612.us.us.us.i.us = add i32 %i.xg, %invariant.op2611.i ; 3 uses
  %i.xh = icmp slt i32 %.reass2612.us.us.us.i.us, 0
  br i1 %i.xh, label %..loopexit2505_crit_edge.us.us.us.i.us, label %bb.bf

bb.bf:                                            ; preds = %.preheader2510.us.us.i.split.us
  %i.xi = srem i32 %.reass2612.us.us.us.i.us, %i.we
  %i.xj = sdiv i32 %.reass2612.us.us.us.i.us, %i.we ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.xi, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.xj, %i.lm
  %or.cond402 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond402, label %.preheader2504.us.us.us.i.us, label %..loopexit2505_crit_edge.us.us.us.i.us

.preheader2504.us.us.us.i.us:                     ; preds = %bb.bf
  %i.xk = mul nuw nsw i64 %indvars.iv3289.i.us, %i.wy
  %i.xl = sext i32 %i.xj to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2504.us.us.us.i.us, %bb.bh
  %indvars.iv3284.i.us = phi i64 [ %indvars.iv.next3285.i.us, %bb.bh ], [ 0, %.preheader2504.us.us.us.i.us ] ; 3 uses
  %.823232569.us.us.us.us.i.us = phi <4 x float> [ %.92324.us.us.us.us.i.us, %bb.bh ], [ %.72604.us.us.us.i.us, %.preheader2504.us.us.us.i.us ] ; 3 uses
  %.723362568.us.us.us.us.i.us = phi <4 x float> [ %.82337.us.us.us.us.i.us, %bb.bh ], [ %.623352603.us.us.us.i.us, %.preheader2504.us.us.us.i.us ] ; 3 uses
  %.723512567.us.us.us.us.i.us = phi <4 x float> [ %.82352.us.us.us.us.i.us, %bb.bh ], [ %.623502602.us.us.us.i.us, %.preheader2504.us.us.us.i.us ] ; 3 uses
  %.723612566.us.us.us.us.i.us = phi <4 x float> [ %.82362.us.us.us.us.i.us, %bb.bh ], [ %.623602601.us.us.us.i.us, %.preheader2504.us.us.us.i.us ] ; 3 uses
  %i.xm = trunc i64 %indvars.iv3284.i.us to i32
  %i.xn = mul i32 %i.wg, %i.xm
  %.reass.us.us2613.us.us.i.us = add i32 %i.xn, %invariant.op2575.i ; 3 uses
  %i.xo = icmp slt i32 %.reass.us.us2613.us.us.i.us, 0
  br i1 %i.xo, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.xp = srem i32 %.reass.us.us2613.us.us.i.us, %i.wi
  %i.xq = sdiv i32 %.reass.us.us2613.us.us.i.us, %i.wi ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.xp, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.xq, %i.ll
  %or.cond403 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond403, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.bh

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.bg
  %i.xr = add nuw nsw i64 %indvars.iv3284.i.us, %i.xk
  %i.xs = shl i64 %i.xr, 4
  %i.xt = and i64 %i.xs, 4294967280
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.17522632.us.us.i, i64 %i.xt ; 4 uses
  %i.xv = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !428
  %i.xw = load ptr, ptr %1, align 8, !tbaa !20, !noalias !428
  %i.xx = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !428
  %i.xy = mul i64 %i.xx, %i.xe
  %i.xz = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !428 ; 2 uses
  %i.ya = mul i64 %i.xy, %i.xz
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.ya
  %i.yc = sext i32 %i.xv to i64
  %i.yd = mul nsw i64 %i.yc, %i.xl
  %i.ye = mul i64 %i.yd, %i.xz
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 %i.ye
  %i.yg = shl nsw i32 %i.xq, 2
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.yh ; 4 uses
  %i.yj = load float, ptr %i.yi, align 1, !tbaa !82
  %i.yk = insertelement <4 x float> poison, float %i.yj, i64 0
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yn = load float, ptr %i.ym, align 1, !tbaa !82
  %i.yo = insertelement <4 x float> poison, float %i.yn, i64 0
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yr = load float, ptr %i.yq, align 1, !tbaa !82
  %i.ys = insertelement <4 x float> poison, float %i.yr, i64 0
  %i.yt = shufflevector <4 x float> %i.ys, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yi, i64 12
  %i.yv = load float, ptr %i.yu, align 1, !tbaa !82
  %i.yw = insertelement <4 x float> poison, float %i.yv, i64 0
  %i.yx = shufflevector <4 x float> %i.yw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yy = load <4 x float>, ptr %i.xu, align 16, !tbaa !82
  %i.yz = fmul fast <4 x float> %i.yy, %i.yl
  %i.za = fadd fast <4 x float> %i.yz, %.823232569.us.us.us.us.i.us
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.zc = load <4 x float>, ptr %i.zb, align 16, !tbaa !82
  %i.zd = fmul fast <4 x float> %i.zc, %i.yp
  %i.ze = fadd fast <4 x float> %i.zd, %.723362568.us.us.us.us.i.us
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xu, i64 32
  %i.zg = load <4 x float>, ptr %i.zf, align 16, !tbaa !82
  %i.zh = fmul fast <4 x float> %i.zg, %i.yt
  %i.zi = fadd fast <4 x float> %i.zh, %.723512567.us.us.us.us.i.us
  %i.zj = getelementptr inbounds nuw i8, ptr %i.xu, i64 48
  %i.zk = load <4 x float>, ptr %i.zj, align 16, !tbaa !82
  %i.zl = fmul fast <4 x float> %i.zk, %i.yx
  %i.zm = fadd fast <4 x float> %i.zl, %.723612566.us.us.us.us.i.us
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, %bb.bg, %.lr.ph.split.us.us.us.us.i.us
end_hunk_0
begin_hunk_1_@_ZNK4ncnn21Deconvolution_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br i1 %exitcond3308.not.i, label %._crit_edge.split.us.us2694.us.i, label %bb.bl, !llvm.loop !348

._crit_edge.split.us.us2694.us.i:                 ; preds = %..loopexit2503_crit_edge.us.us.us.i
  %i.afi = getelementptr inbounds [4 x i8], ptr %.27532680.us.us.i, i64 %i.nd ; 2 uses
  %indvars.iv.next3310.i = add nuw nsw i64 %indvars.iv3309.i, 2 ; 3 uses
  %i.afj = or disjoint i64 %indvars.iv.next3310.i, 1 ; 2 uses
  %i.afk = trunc nuw i64 %i.afj to i32
  %i.afl = icmp sgt i32 %i.lk, %i.afk
  br i1 %i.afl, label %.preheader2509.us.us.i, label %.preheader2512.loopexit.i, !llvm.loop !349

.preheader2512.loopexit.i:                        ; preds = %._crit_edge.split.us.us2694.us.i
  %i.afm = trunc nuw i64 %indvars.iv.next3310.i to i32
  br label %.preheader2512.i

.preheader2512.i:                                 ; preds = %.preheader2512.loopexit.i, %.preheader2509.us.preheader.i, %.preheader2509.preheader.i, %.preheader2513.i
  %.102339.lcssa.i = phi <4 x float> [ %.52334.lcssa.i, %.preheader2513.i ], [ %.142343.us.us.us.i, %.preheader2512.loopexit.i ], [ %.52334.lcssa.i, %.preheader2509.us.preheader.i ], [ %.52334.lcssa.i, %.preheader2509.preheader.i ]
  %.112326.lcssa.i = phi <4 x float> [ %.62322.lcssa.i, %.preheader2513.i ], [ %.152328.us.us.us.i, %.preheader2512.loopexit.i ], [ %.62322.lcssa.i, %.preheader2509.us.preheader.i ], [ %.62322.lcssa.i, %.preheader2509.preheader.i ] ; 3 uses
  %.2758.lcssa.i = phi i32 [ %.1757.lcssa.i, %.preheader2513.i ], [ %i.afm, %.preheader2512.loopexit.i ], [ %i.adj, %.preheader2509.us.preheader.i ], [ %i.acz, %.preheader2509.preheader.i ] ; 2 uses
  %.2753.lcssa.i = phi ptr [ %.1752.lcssa.i, %.preheader2513.i ], [ %i.afi, %.preheader2512.loopexit.i ], [ %scevgep3298.i, %.preheader2509.us.preheader.i ], [ %scevgep3297.i, %.preheader2509.preheader.i ]
  %i.afn = icmp slt i32 %.2758.lcssa.i, %i.lk
  br i1 %i.afn, label %.preheader2508.lr.ph.i, label %._crit_edge2720.i

.preheader2508.lr.ph.i:                           ; preds = %.preheader2512.i
  %i.afo = load i32, ptr %i.d, align 4
  %i.afp = load i32, ptr %i.j, align 4
  %invariant.op2712.i = sub i32 %.neg2469.i, %i.afp
  %i.afq = load i32, ptr %i.f, align 4            ; 2 uses
  %i.afr = load i32, ptr %i.a, align 4
  %.fr3170.i = freeze i32 %i.afr                  ; 2 uses
  %i.afs = load i32, ptr %i.c, align 4
  %i.aft = load i32, ptr %i.i, align 4
  %.neg2459.i = add nuw nsw i32 %.07482734.i, 1
  %invariant.op2707.i = sub i32 %.neg2459.i, %i.aft
  %i.afu = load i32, ptr %i.e, align 4            ; 2 uses
  %i.afv = icmp sgt i32 %.fr3170.i, 0
  %or.cond.i = and i1 %i.mw, %i.afv
  br i1 %or.cond.i, label %.preheader2508.us.us.preheader.i, label %._crit_edge2720.i

.preheader2508.us.us.preheader.i:                 ; preds = %.preheader2508.lr.ph.i
  %i.afw = zext nneg i32 %.fr3170.i to i64        ; 2 uses
  %i.afx = zext i32 %.2758.lcssa.i to i64
  br label %.preheader2508.us.us.i

.preheader2508.us.us.i:                           ; preds = %._crit_edge.split.us.us2730.us.i, %.preheader2508.us.us.preheader.i
  %indvars.iv3322.i = phi i64 [ %i.afx, %.preheader2508.us.us.preheader.i ], [ %indvars.iv.next3323.i, %._crit_edge.split.us.us2730.us.i ] ; 2 uses
  %.37542718.us.us.i = phi ptr [ %.2753.lcssa.i, %.preheader2508.us.us.preheader.i ], [ %i.ahh, %._crit_edge.split.us.us2730.us.i ] ; 2 uses
  %.162716.us.us.i = phi <4 x float> [ %.112326.lcssa.i, %.preheader2508.us.us.preheader.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2730.us.i ]
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2501_crit_edge.us.us.us.i, %.preheader2508.us.us.i
  %indvars.iv3317.i = phi i64 [ %indvars.iv.next3318.i, %..loopexit2501_crit_edge.us.us.us.i ], [ 0, %.preheader2508.us.us.i ] ; 3 uses
  %.172708.us.us.us.i = phi <4 x float> [ %.20.us.us.us.i, %..loopexit2501_crit_edge.us.us.us.i ], [ %.162716.us.us.i, %.preheader2508.us.us.i ] ; 3 uses
  %i.afy = trunc i64 %indvars.iv3317.i to i32
  %i.afz = mul i32 %i.afo, %i.afy
  %.reass2713.us.us.us.i = add i32 %i.afz, %invariant.op2712.i ; 3 uses
  %i.aga = icmp slt i32 %.reass2713.us.us.us.i, 0
  br i1 %i.aga, label %..loopexit2501_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.agb = srem i32 %.reass2713.us.us.us.i, %i.afq
  %i.agc = sdiv i32 %.reass2713.us.us.us.i, %i.afq ; 2 uses
  %.not922.us.us.us.i = icmp eq i32 %i.agb, 0
  %.not923.us.us.us.i = icmp slt i32 %i.agc, %i.lm
  %or.cond408 = select i1 %.not922.us.us.us.i, i1 %.not923.us.us.us.i, i1 false
  br i1 %or.cond408, label %.preheader2500.us.us.us.i, label %..loopexit2501_crit_edge.us.us.us.i

.preheader2500.us.us.us.i:                        ; preds = %bb.br
  %i.agd = mul nuw nsw i64 %indvars.iv3317.i, %i.afw
  %i.age = sext i32 %i.agc to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %.preheader2500.us.us.us.i
  %indvars.iv3312.i = phi i64 [ %indvars.iv.next3313.i, %bb.bu ], [ 0, %.preheader2500.us.us.us.i ] ; 3 uses
  %.182704.us.us.us.i = phi <4 x float> [ %.19.us.us.us.i, %bb.bu ], [ %.172708.us.us.us.i, %.preheader2500.us.us.us.i ] ; 3 uses
  %i.agf = trunc i64 %indvars.iv3312.i to i32
  %i.agg = mul i32 %i.afs, %i.agf
  %.reass.us.us2729.us.i = add i32 %invariant.op2707.i, %i.agg ; 3 uses
  %i.agh = icmp slt i32 %.reass.us.us2729.us.i, 0
  br i1 %i.agh, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.agi = srem i32 %.reass.us.us2729.us.i, %i.afu
  %i.agj = sdiv i32 %.reass.us.us2729.us.i, %i.afu ; 2 uses
  %.not924.us.us.us.i = icmp eq i32 %i.agi, 0
  %.not925.us.us.us.i = icmp slt i32 %i.agj, %i.ll
  %or.cond409 = select i1 %.not924.us.us.us.i, i1 %.not925.us.us.us.i, i1 false
  br i1 %or.cond409, label %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, label %bb.bu

_ZN4ncnn3MatD2Ev.exit958.us.us.us.i:              ; preds = %bb.bt
  %i.agk = add nuw nsw i64 %indvars.iv3312.i, %i.agd
  %i.agl = shl i64 %i.agk, 2
  %i.agm = and i64 %i.agl, 4294967292
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %.37542718.us.us.i, i64 %i.agm
  %i.ago = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !431
  %i.agp = load ptr, ptr %1, align 8, !tbaa !20, !noalias !431
  %i.agq = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !431
  %i.agr = mul i64 %i.agq, %indvars.iv3322.i
  %i.ags = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !431 ; 2 uses
  %i.agt = mul i64 %i.agr, %i.ags
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agp, i64 %i.agt
  %i.agv = sext i32 %i.ago to i64
  %i.agw = mul nsw i64 %i.agv, %i.age
  %i.agx = mul i64 %i.agw, %i.ags
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.agx
  %i.agz = sext i32 %i.agj to i64
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.agz
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !39
  %i.ahc = insertelement <4 x float> poison, float %i.ahb, i64 0
  %i.ahd = shufflevector <4 x float> %i.ahc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahe = load <4 x float>, ptr %i.agn, align 16, !tbaa !82
  %i.ahf = fmul fast <4 x float> %i.ahd, %i.ahe
  %i.ahg = fadd fast <4 x float> %i.ahf, %.182704.us.us.us.i
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, %bb.bt, %bb.bs
  %.19.us.us.us.i = phi nsz <4 x float> [ %.182704.us.us.us.i, %bb.bs ], [ %i.ahg, %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i ], [ %.182704.us.us.us.i, %bb.bt ] ; 2 uses
  %indvars.iv.next3313.i = add nuw nsw i64 %indvars.iv3312.i, 1 ; 2 uses
  %exitcond3316.not.i = icmp eq i64 %indvars.iv.next3313.i, %i.afw
  br i1 %exitcond3316.not.i, label %..loopexit2501_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !352

..loopexit2501_crit_edge.us.us.us.i:              ; preds = %bb.bu, %bb.br, %bb.bq
  %.20.us.us.us.i = phi nsz <4 x float> [ %.172708.us.us.us.i, %bb.bq ], [ %.172708.us.us.us.i, %bb.br ], [ %.19.us.us.us.i, %bb.bu ] ; 3 uses
  %indvars.iv.next3318.i = add nuw nsw i64 %indvars.iv3317.i, 1 ; 2 uses
  %exitcond3321.not.i = icmp eq i64 %indvars.iv.next3318.i, %wide.trip.count3272.i
  br i1 %exitcond3321.not.i, label %._crit_edge.split.us.us2730.us.i, label %bb.bq, !llvm.loop !353

._crit_edge.split.us.us2730.us.i:                 ; preds = %..loopexit2501_crit_edge.us.us.us.i
  %i.ahh = getelementptr inbounds [4 x i8], ptr %.37542718.us.us.i, i64 %i.nf
  %indvars.iv.next3323.i = add nuw nsw i64 %indvars.iv3322.i, 1 ; 2 uses
  %i.ahi = trunc nuw i64 %indvars.iv.next3323.i to i32
  %i.ahj = icmp sgt i32 %i.lk, %i.ahi
  br i1 %i.ahj, label %.preheader2508.us.us.i, label %._crit_edge2720.i, !llvm.loop !354

._crit_edge2720.i:                                ; preds = %._crit_edge.split.us.us2730.us.i, %.preheader2508.lr.ph.i, %.preheader2512.i
  %.16.lcssa.i = phi <4 x float> [ %.112326.lcssa.i, %.preheader2512.i ], [ %.112326.lcssa.i, %.preheader2508.lr.ph.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2730.us.i ]
  %i.ahk = fadd fast <4 x float> %.52349.lcssa.i, %.52359.lcssa.i
  %i.ahl = fadd fast <4 x float> %i.ahk, %.102339.lcssa.i
  %i.ahm = fadd fast <4 x float> %i.ahl, %.16.lcssa.i ; 10 uses
  switch i32 %i.md, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.bv
    i32 2, label %bb.bw
    i32 3, label %bb.bx
    i32 4, label %bb.by
    i32 5, label %bb.bz
    i32 6, label %bb.ca
  ]

bb.bv:                                            ; preds = %._crit_edge2720.i
  %i.ahn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahm, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bw:                                            ; preds = %._crit_edge2720.i
  %i.aho = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !39
  %i.ahq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ahm)
  %i.ahr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.ahm)
  %i.ahs = insertelement <4 x float> poison, float %i.ahp, i64 0
  %i.aht = shufflevector <4 x float> %i.ahs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahu = fmul fast <4 x float> %i.aht, %i.ahr
  %i.ahv = fadd fast <4 x float> %i.ahu, %i.ahq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bx:                                            ; preds = %._crit_edge2720.i
  %i.ahw = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.ahx = load float, ptr %i.ahw, align 4, !tbaa !39
  %i.ahy = insertelement <4 x float> poison, float %i.ahx, i64 0
  %i.ahz = shufflevector <4 x float> %i.ahy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahw, i64 4
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !39
  %i.aic = insertelement <4 x float> poison, float %i.aib, i64 0
  %i.aid = shufflevector <4 x float> %i.aic, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aie = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ahm, <4 x float> nofpclass(nan inf) %i.ahz)
  %i.aif = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aie, <4 x float> nofpclass(nan inf) %i.aid)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.by:                                            ; preds = %._crit_edge2720.i
  %i.aig = fneg fast <4 x float> %i.ahm
  %i.aih = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aig, <4 x float> splat (float f0x42B0C0A5))
  %i.aii = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aih, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aij = fmul fast <4 x float> %i.aii, splat (float f0x3FB8AA3B)
  %i.aik = fadd fast <4 x float> %i.aij, splat (float 5.000000e-01) ; 2 uses
  %i.ail = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aik)
  %i.aim = sitofp fast <4 x i32> %i.ail to <4 x float> ; 2 uses
  %i.ain = fcmp fast olt <4 x float> %i.aik, %i.aim
  %i.aio = select <4 x i1> %i.ain, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aip = fsub fast <4 x float> %i.aim, %i.aio   ; 2 uses
  %i.aiq = fmul fast <4 x float> %i.aip, splat (float f0x3F317218)
  %i.air = fsub fast <4 x float> %i.aii, %i.aiq   ; 8 uses
  %i.ais = fmul fast <4 x float> %i.air, %i.air
  %i.ait = fmul fast <4 x float> %i.air, splat (float f0x39506967)
  %i.aiu = fadd fast <4 x float> %i.ait, splat (float f0x3AB743CE)
  %i.aiv = fmul fast <4 x float> %i.aiu, %i.air
  %i.aiw = fadd fast <4 x float> %i.aiv, splat (float f0x3C088908)
  %i.aix = fmul fast <4 x float> %i.aiw, %i.air
  %i.aiy = fadd fast <4 x float> %i.aix, splat (float f0x3D2AA9C1)
  %i.aiz = fmul fast <4 x float> %i.aiy, %i.air
  %i.aja = fadd fast <4 x float> %i.aiz, splat (float f0x3E2AAAAA)
  %i.ajb = fmul fast <4 x float> %i.aja, %i.air
  %i.ajc = fadd fast <4 x float> %i.ajb, splat (float 5.000000e-01)
  %i.ajd = fmul fast <4 x float> %i.ais, %i.ajc
  %i.aje = fadd fast <4 x float> %i.air, splat (float 1.000000e+00)
  %i.ajf = fadd fast <4 x float> %i.aje, %i.ajd
  %i.ajg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aip)
  %i.ajh = shl <4 x i32> %i.ajg, splat (i32 23)
  %i.aji = add <4 x i32> %i.ajh, splat (i32 1065353216)
  %i.ajj = bitcast <4 x i32> %i.aji to <4 x float>
  %i.ajk = fmul fast <4 x float> %i.ajf, %i.ajj
  %i.ajl = fadd fast <4 x float> %i.ajk, splat (float 1.000000e+00)
  %i.ajm = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ajl
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.bz:                                            ; preds = %._crit_edge2720.i
  %i.ajn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ahm, <4 x float> splat (float f0x42B0C0A5))
  %i.ajo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ajn, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ajp = fmul fast <4 x float> %i.ajo, splat (float f0x3FB8AA3B)
  %i.ajq = fadd fast <4 x float> %i.ajp, splat (float 5.000000e-01) ; 2 uses
  %i.ajr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajq)
  %i.ajs = sitofp fast <4 x i32> %i.ajr to <4 x float> ; 2 uses
  %i.ajt = fcmp fast olt <4 x float> %i.ajq, %i.ajs
  %i.aju = select <4 x i1> %i.ajt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ajv = fsub fast <4 x float> %i.ajs, %i.aju   ; 2 uses
  %i.ajw = fmul fast <4 x float> %i.ajv, splat (float f0x3F317218)
  %i.ajx = fsub fast <4 x float> %i.ajo, %i.ajw   ; 8 uses
  %i.ajy = fmul fast <4 x float> %i.ajx, %i.ajx
  %i.ajz = fmul fast <4 x float> %i.ajx, splat (float f0x39506967)
  %i.aka = fadd fast <4 x float> %i.ajz, splat (float f0x3AB743CE)
  %i.akb = fmul fast <4 x float> %i.aka, %i.ajx
  %i.akc = fadd fast <4 x float> %i.akb, splat (float f0x3C088908)
  %i.akd = fmul fast <4 x float> %i.akc, %i.ajx
  %i.ake = fadd fast <4 x float> %i.akd, splat (float f0x3D2AA9C1)
  %i.akf = fmul fast <4 x float> %i.ake, %i.ajx
  %i.akg = fadd fast <4 x float> %i.akf, splat (float f0x3E2AAAAA)
  %i.akh = fmul fast <4 x float> %i.akg, %i.ajx
  %i.aki = fadd fast <4 x float> %i.akh, splat (float 5.000000e-01)
  %i.akj = fmul fast <4 x float> %i.ajy, %i.aki
  %i.akk = fadd fast <4 x float> %i.ajx, splat (float 1.000000e+00)
  %i.akl = fadd fast <4 x float> %i.akk, %i.akj
  %i.akm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajv)
  %i.akn = shl <4 x i32> %i.akm, splat (i32 23)
  %i.ako = add <4 x i32> %i.akn, splat (i32 1065353216)
  %i.akp = bitcast <4 x i32> %i.ako to <4 x float>
  %i.akq = fmul fast <4 x float> %i.akl, %i.akp
  %i.akr = fadd fast <4 x float> %i.akq, splat (float 1.000000e+00) ; 2 uses
  %i.aks = fcmp fast ole <4 x float> %i.akr, zeroinitializer
  %i.akt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akr, <4 x float> splat (float f0x00800000))
  %i.aku = bitcast <4 x float> %i.akt to <4 x i32> ; 2 uses
  %i.akv = lshr <4 x i32> %i.aku, splat (i32 23)
  %i.akw = and <4 x i32> %i.aku, splat (i32 -2139095041)
  %i.akx = or disjoint <4 x i32> %i.akw, splat (i32 1056964608)
  %i.aky = bitcast <4 x i32> %i.akx to <4 x float> ; 3 uses
  %i.akz = add nsw <4 x i32> %i.akv, splat (i32 -127)
  %i.ala = sitofp fast <4 x i32> %i.akz to <4 x float> ; 2 uses
  %i.alb = fadd fast <4 x float> %i.ala, splat (float 1.000000e+00)
  %i.alc = fcmp fast olt <4 x float> %i.aky, splat (float f0x3F3504F3) ; 2 uses
  %i.ald = select <4 x i1> %i.alc, <4 x float> %i.aky, <4 x float> zeroinitializer
  %i.ale = fadd fast <4 x float> %i.aky, splat (float -1.000000e+00)
  %i.alf = select fast <4 x i1> %i.alc, <4 x float> %i.ala, <4 x float> %i.alb
  %i.alg = fadd fast <4 x float> %i.ale, %i.ald   ; 12 uses
  %i.alh = fmul fast <4 x float> %i.alg, %i.alg
  %i.ali = fmul fast <4 x float> %i.alg, splat (float f0x3D9021BB)
  %i.alj = fadd fast <4 x float> %i.ali, splat (float f0xBDEBD1B8)
  %i.alk = fmul fast <4 x float> %i.alj, %i.alg
  %i.all = fadd fast <4 x float> %i.alk, splat (float f0x3DEF251A)
  %i.alm = fmul fast <4 x float> %i.all, %i.alg
  %i.aln = fadd fast <4 x float> %i.alm, splat (float f0xBDFE5D4F)
  %i.alo = fmul fast <4 x float> %i.aln, %i.alg
  %i.alp = fadd fast <4 x float> %i.alo, splat (float f0x3E11E9BF)
  %i.alq = fmul fast <4 x float> %i.alp, %i.alg
  %i.alr = fadd fast <4 x float> %i.alq, splat (float f0xBE2AAE50)
  %i.als = fmul fast <4 x float> %i.alr, %i.alg
  %i.alt = fadd fast <4 x float> %i.als, splat (float f0x3E4CCEAC)
  %i.alu = fmul fast <4 x float> %i.alt, %i.alg
  %i.alv = fadd fast <4 x float> %i.alu, splat (float f0xBE7FFFFC)
  %i.alw = fmul fast <4 x float> %i.alv, %i.alg
  %i.alx = fadd fast <4 x float> %i.alw, splat (float f0x3EAAAAAA)
  %i.aly = fmul fast <4 x float> %i.alx, %i.alg
  %reass.mul.i = fmul fast <4 x float> %i.alf, splat (float f0x3F317218)
  %reass.add2454.i = fadd fast <4 x float> %i.aly, splat (float -5.000000e-01)
  %reass.mul2455.i = fmul fast <4 x float> %i.alh, %reass.add2454.i
  %i.alz = fadd fast <4 x float> %reass.mul.i, %i.alg
  %i.ama = fadd fast <4 x float> %i.alz, %reass.mul2455.i
  %.neg.i = fmul fast <4 x float> %i.ama, splat (float -2.000000e+00)
  %i.amb = select fast <4 x i1> %i.aks, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.amc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.amb, <4 x float> splat (float f0x42B0C0A5))
  %i.amd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.amc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ame = fmul fast <4 x float> %i.amd, splat (float f0x3FB8AA3B)
  %i.amf = fadd fast <4 x float> %i.ame, splat (float 5.000000e-01) ; 2 uses
  %i.amg = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amf)
  %i.amh = sitofp fast <4 x i32> %i.amg to <4 x float> ; 2 uses
  %i.ami = fcmp fast olt <4 x float> %i.amf, %i.amh
  %i.amj = select <4 x i1> %i.ami, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.amk = fsub fast <4 x float> %i.amh, %i.amj   ; 2 uses
  %i.aml = fmul fast <4 x float> %i.amk, splat (float f0x3F317218)
  %i.amm = fsub fast <4 x float> %i.amd, %i.aml   ; 8 uses
  %i.amn = fmul fast <4 x float> %i.amm, %i.amm
  %i.amo = fmul fast <4 x float> %i.amm, splat (float f0x39506967)
  %i.amp = fadd fast <4 x float> %i.amo, splat (float f0x3AB743CE)
  %i.amq = fmul fast <4 x float> %i.amp, %i.amm
  %i.amr = fadd fast <4 x float> %i.amq, splat (float f0x3C088908)
  %i.ams = fmul fast <4 x float> %i.amr, %i.amm
  %i.amt = fadd fast <4 x float> %i.ams, splat (float f0x3D2AA9C1)
  %i.amu = fmul fast <4 x float> %i.amt, %i.amm
  %i.amv = fadd fast <4 x float> %i.amu, splat (float f0x3E2AAAAA)
  %i.amw = fmul fast <4 x float> %i.amv, %i.amm
  %i.amx = fadd fast <4 x float> %i.amw, splat (float 5.000000e-01)
  %i.amy = fmul fast <4 x float> %i.amn, %i.amx
  %i.amz = fadd fast <4 x float> %i.amm, splat (float 1.000000e+00)
  %i.ana = fadd fast <4 x float> %i.amz, %i.amy
  %i.anb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.amk)
  %i.anc = shl <4 x i32> %i.anb, splat (i32 23)
  %i.and = add <4 x i32> %i.anc, splat (i32 1065353216)
  %i.ane = bitcast <4 x i32> %i.and to <4 x float>
  %i.anf = fmul fast <4 x float> %i.ana, %i.ane
  %i.ang = fadd fast <4 x float> %i.anf, splat (float 1.000000e+00)
  %i.anh = fdiv fast <4 x float> splat (float 2.000000e+00), %i.ang
  %i.ani = fadd fast <4 x float> %i.anh, splat (float -1.000000e+00)
  %i.anj = fmul fast <4 x float> %i.ani, %i.ahm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ca:                                            ; preds = %._crit_edge2720.i
  %i.ank = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.anl = load float, ptr %i.ank, align 4, !tbaa !39
  %i.anm = insertelement <4 x float> poison, float %i.anl, i64 0
  %i.ann = shufflevector <4 x float> %i.anm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ank, i64 4
  %i.anp = load float, ptr %i.ano, align 4, !tbaa !39
  %i.anq = insertelement <4 x float> poison, float %i.anp, i64 0
  %i.anr = shufflevector <4 x float> %i.anq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ans = fmul fast <4 x float> %i.ann, %i.ahm
  %i.ant = fadd fast <4 x float> %i.ans, %i.anr
  %i.anu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ant, <4 x float> zeroinitializer)
  %i.anv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.anu, <4 x float> splat (float 1.000000e+00))
  %i.anw = fmul fast <4 x float> %i.anv, %i.ahm
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %._crit_edge2720.i
  %.0.i.i = phi nsz <4 x float> [ %i.anw, %bb.ca ], [ %i.ahn, %bb.bv ], [ %i.ahv, %bb.bw ], [ %i.aif, %bb.bx ], [ %i.ajm, %bb.by ], [ %i.anj, %bb.bz ], [ %i.ahm, %._crit_edge2720.i ] ; 5 uses
  switch i32 %i.lp, label %bb.cc [
    i32 4, label %.thread.i
    i32 1, label %bb.cb
  ]

.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  store <4 x float> %.0.i.i, ptr %.17402735.i, align 1, !tbaa !82
  %i.anx = getelementptr inbounds nuw i8, ptr %.17402735.i, i64 16
  br label %bb.cc

bb.cb:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.sroa.01678.0.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 0
  store float %.sroa.01678.0.vec.extract.i, ptr %.17402735.i, align 4, !tbaa !39
  %.sroa.01678.4.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 1
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %.17402735.i, i64 %i.ng
  store float %.sroa.01678.4.vec.extract.i, ptr %i.any, align 4, !tbaa !39
  %.sroa.01678.8.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 2
  %i.anz = getelementptr inbounds nuw i8, ptr %.17402735.i, i64 %.idx.i
  store float %.sroa.01678.8.vec.extract.i, ptr %i.anz, align 4, !tbaa !39
  %.sroa.01678.12.vec.extract.i = extractelement <4 x float> %.0.i.i, i64 3
  %i.aoa = getelementptr inbounds nuw i8, ptr %.17402735.i, i64 %.idx921.i
  store float %.sroa.01678.12.vec.extract.i, ptr %i.aoa, align 4, !tbaa !39
  %i.aob = getelementptr inbounds nuw i8, ptr %.17402735.i, i64 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.3742.i = phi ptr [ %i.aob, %bb.cb ], [ %.17402735.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.anx, %.thread.i ] ; 2 uses
  %i.aoc = add nuw nsw i32 %.07482734.i, 1        ; 2 uses
  %exitcond3325.not.i = icmp eq i32 %i.aoc, %i.ln
  br i1 %exitcond3325.not.i, label %._crit_edge.i, label %bb.ay, !llvm.loop !355

._crit_edge2967.split.i:                          ; preds = %._crit_edge2965.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, %._crit_edge2740.i
  %i.aod = shl nsw i32 %i.ka, 1                   ; 2 uses
  %i.aoe = add nsw i32 %i.aod, %i.jy
  %i.aof = icmp slt i32 %i.aoe, %i.iw
  br i1 %i.aof, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit

_ZN4ncnn3MatD2Ev.exit946.lr.ph.i:                 ; preds = %._crit_edge2967.split.i
  %i.aog = load i32, ptr %i.ak, align 8, !tbaa !60
  %.fr3037.i = freeze i32 %i.aog                  ; 3 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aoi = load i32, ptr %i.aoh, align 8, !tbaa !62
  %i.aoj = mul i32 %i.aoi, %.fr3037.i             ; 12 uses
  %i.aok = load i32, ptr %i.ag, align 4, !tbaa !54 ; 6 uses
  %i.aol = load i32, ptr %i.ah, align 8, !tbaa !66 ; 5 uses
  %i.aom = load i32, ptr %i.ci, align 4, !tbaa !54 ; 2 uses
  %i.aon = load i32, ptr %i.cj, align 16, !tbaa !66 ; 2 uses
  %i.aoo = load ptr, ptr %4, align 16, !tbaa !20, !noalias !432
  %i.aop = load i64, ptr %i.cl, align 16, !tbaa !21, !noalias !432
  %i.aoq = load i64, ptr %i.ce, align 16, !tbaa !55, !noalias !432
  %factor.op.mul3158.i = mul i64 %i.aoq, %i.aop
  %i.aor = icmp slt i32 %i.aon, 1
  %i.aos = icmp slt i32 %i.aom, 1
  %i.aot = icmp sgt i32 %i.aoj, 7
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %brmerge3167.i = select i1 %i.aor, i1 true, i1 %i.aos
  br i1 %brmerge3167.i, label %_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.exit, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aox = load ptr, ptr %i.im, align 8, !tbaa !20, !noalias !433
  %i.aoy = load i64, ptr %i.aow, align 8, !tbaa !21, !noalias !433
  %i.aoz = load i64, ptr %i.aov, align 8, !tbaa !55, !noalias !433
  %factor.op.mul3161.i = mul i64 %i.aoz, %i.aoy
  %i.apa = add i32 %i.aoj, -8                     ; 2 uses
  %i.apb = lshr i32 %i.apa, 1
  %i.apc = and i32 %i.apb, 2147483644
  %narrow3566.i = add nuw i32 %i.apc, 4
  %i.apd = zext i32 %narrow3566.i to i64
  %i.ape = and i32 %i.apa, -8
  %i.apf = add nuw i32 %i.ape, 8
  %i.apg = sext i32 %i.aoj to i64
  %i.aph = add i32 %i.aoj, -4                     ; 2 uses
  %i.api = add i32 %i.aoj, -2                     ; 2 uses
  %i.apj = sext i32 %i.jy to i64
  %i.apk = sext i32 %i.aod to i64
  %i.apl = add nsw i64 %i.apk, %i.apj
  %i.apm = sext i32 %i.iw to i64
  %invariant.op3584.i = add nsw i64 %i.apg, -7
  %i.apn = sext i32 %i.aok to i64                 ; 5 uses
  %i.apo = and i32 %i.aoj, -8
  br label %_ZN4ncnn3MatD2Ev.exit946.i

_ZN4ncnn3MatD2Ev.exit957.i:                       ; preds = %._crit_edge2965.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i
  %indvars.iv3410.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i ], [ %indvars.iv.next3411.i, %._crit_edge2965.i ] ; 2 uses
  %i.app = shl nuw nsw i64 %indvars.iv3410.i, 1
  %i.apq = add nsw i64 %i.app, %i.lf              ; 4 uses
  %.reass.i = mul i64 %i.apq, %factor.op.mul.i
  %i.apr = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.reass.i
  %i.aps = add nsw i64 %i.apq, 1
  %.reass2970.i = mul i64 %i.aps, %factor.op.mul.i
  %i.apt = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.reass2970.i
  %i.apu = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not903.i = icmp eq ptr %i.apu, null
  %i.apv = getelementptr inbounds [4 x i8], ptr %i.apu, i64 %i.apq
  %i.apw = trunc nsw i64 %i.apq to i32            ; 3 uses
  %i.apx = sdiv i32 %i.apw, 8
  %i.apy = srem i32 %i.apw, 8
  %.lhs.trunc2410.i = trunc nsw i32 %i.apy to i8
  %i.apz = sdiv i8 %.lhs.trunc2410.i, 4
  %.sext2411.i = sext i8 %i.apz to i32
  %i.aqa = add nsw i32 %i.apx, %.sext2411.i
  %i.aqb = srem i32 %i.apw, 4
  %.lhs.trunc2412.i = trunc nsw i32 %i.aqb to i8
  %i.aqc = sdiv i8 %.lhs.trunc2412.i, 2
  %.sext2413.i = sext i8 %i.aqc to i32
  %i.aqd = add nsw i32 %i.aqa, %.sext2413.i
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = load i32, ptr %i.g, align 4
  %.reass2974.i = mul i64 %factor.op.mul2973.i, %i.aqe
  %i.aqg = getelementptr i8, ptr %i.kt, i64 %.reass2974.i ; 3 uses
  br label %.preheader2499.i

.preheader2499.i:                                 ; preds = %._crit_edge2959.i, %_ZN4ncnn3MatD2Ev.exit957.i
  %.08042964.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %.neg2450.i, %._crit_edge2959.i ]
  %.08052963.i = phi ptr [ %i.apt, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bgh, %._crit_edge2959.i ]
  %.08072962.i = phi ptr [ %i.apr, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bgg, %._crit_edge2959.i ]
  %i.aqh = load i32, ptr %i.b, align 4            ; 2 uses
  %i.aqi = icmp sgt i32 %i.aqh, 0                 ; 4 uses
  %.neg2450.i = add nuw nsw i32 %.08042964.i, 1   ; 6 uses
  %i.aqj = load i32, ptr %i.k, align 4            ; 4 uses
  %i.aqk = shl i32 %i.aqj, 4
  %i.aql = sext i32 %i.aqk to i64                 ; 2 uses
  %i.aqm = shl i32 %i.aqj, 3
  %i.aqn = sext i32 %i.aqm to i64                 ; 3 uses
  %i.aqo = shl i32 %i.aqj, 2
  %i.aqp = sext i32 %i.aqo to i64                 ; 3 uses
  %i.aqq = shl nsw i32 %i.aqj, 1
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = mul nsw i64 %i.aql, %i.kz
  %scevgep3333.i = getelementptr i8, ptr %i.aqg, i64 %i.aqs
  %wide.trip.count3348.i = zext nneg i32 %i.aqh to i64 ; 5 uses
  br label %bb.cd

._crit_edge2965.i:                                ; preds = %._crit_edge2959.i
  %indvars.iv.next3411.i = add nuw nsw i64 %indvars.iv3410.i, 1 ; 2 uses
  %exitcond3414.not.i = icmp eq i64 %indvars.iv.next3411.i, %wide.trip.count3413.i
  br i1 %exitcond3414.not.i, label %._crit_edge2967.split.i, label %_ZN4ncnn3MatD2Ev.exit957.i, !llvm.loop !360

._crit_edge2959.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
  %exitcond3409.not.i = icmp eq i32 %.neg2450.i, %i.kj
  br i1 %exitcond3409.not.i, label %._crit_edge2965.i, label %.preheader2499.i, !llvm.loop !361

bb.cd:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, %.preheader2499.i
  %.08032958.i = phi i32 [ 0, %.preheader2499.i ], [ %i.bgi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 5 uses
  %.18062957.i = phi ptr [ %.08052963.i, %.preheader2499.i ], [ %i.bgh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.18082956.i = phi ptr [ %.08072962.i, %.preheader2499.i ], [ %i.bgg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  br i1 %.not903.i, label %_ZN4ncnn3MatD2Ev.exit955.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.aqt = load <2 x float>, ptr %i.apv, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit955.i

_ZN4ncnn3MatD2Ev.exit955.i:                       ; preds = %bb.ce, %bb.cd
  %i.aqu = phi <2 x float> [ %i.aqt, %bb.ce ], [ zeroinitializer, %bb.cd ]
  br i1 %i.kp, label %.preheader2497.lr.ph.i, label %._crit_edge2771.i

.preheader2497.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit955.i
  %i.aqv = load i32, ptr %i.d, align 4
  %i.aqw = load i32, ptr %i.j, align 4
  %invariant.op2760.i = sub i32 %.neg2450.i, %i.aqw
  %i.aqx = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aqy = load i32, ptr %i.a, align 4
  %.fr3171.i = freeze i32 %i.aqy                  ; 2 uses
  %i.aqz = load i32, ptr %i.c, align 4
  %i.ara = load i32, ptr %i.i, align 4
  %.neg2452.i = add nuw nsw i32 %.08032958.i, 1
  %invariant.op2751.i = sub i32 %.neg2452.i, %i.ara
  %i.arb = load i32, ptr %i.e, align 4            ; 2 uses
  %i.arc = icmp sgt i32 %.fr3171.i, 0
end_hunk_1
begin_hunk_2_@_ZNK4ncnn21Deconvolution_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.axx = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !438 ; 2 uses
  %factor.op.mul.us.us.us2855.us.i.us = mul i64 %i.axx, %i.axw ; 4 uses
  %i.axy = mul i64 %i.axp, %i.axx
  %invariant.gep.us.us.us2856.us.i.us = getelementptr i8, ptr %i.axv, i64 %i.axy
  %i.axz = sext i32 %i.axu to i64
  %invariant.gep2792.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2856.us.i.us, i64 %i.axz ; 4 uses
  %.reass.us.us2827.us.us.i.us = mul i64 %factor.op.mul.us.us.us2855.us.i.us, %indvars.iv3374.i
  %gep2793.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep2792.us.us.us.us.i.us, i64 %.reass.us.us2827.us.us.i.us
  %i.aya = load float, ptr %gep2793.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.03499.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.aya, i64 0
  %.reass.us.us2827.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us2855.us.i.us, %i.avv
  %gep2793.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep2792.us.us.us.us.i.us, i64 %.reass.us.us2827.us.us.1.i.us
  %i.ayb = load float, ptr %gep2793.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.03499.4.vec.insert.i.us = insertelement <4 x float> %.sroa.03499.0.vec.insert.i.us, float %i.ayb, i64 1
  %.reass.us.us2827.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us2855.us.i.us, %i.avw
  %gep2793.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep2792.us.us.us.us.i.us, i64 %.reass.us.us2827.us.us.2.i.us
  %i.ayc = load float, ptr %gep2793.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.03499.8.vec.insert.i.us = insertelement <4 x float> %.sroa.03499.4.vec.insert.i.us, float %i.ayc, i64 2
  %.reass.us.us2827.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2855.us.i.us, %i.avx
  %gep2793.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2792.us.us.us.us.i.us, i64 %.reass.us.us2827.us.us.3.i.us
  %i.ayd = load float, ptr %gep2793.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.03499.12.vec.insert.i.us = insertelement <4 x float> %.sroa.03499.8.vec.insert.i.us, float %i.ayd, i64 3 ; 2 uses
  %i.aye = add nuw nsw i64 %indvars.iv3359.i.us, %i.axn
  %i.ayf = shl i64 %i.aye, 3
  %i.ayg = and i64 %i.ayf, 4294967288
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %.17682840.us.us.i, i64 %i.ayg ; 2 uses
  %i.ayi = load <4 x float>, ptr %i.ayh, align 16, !tbaa !82
  %i.ayj = fmul fast <4 x float> %i.ayi, %.sroa.03499.12.vec.insert.i.us
  %i.ayk = fadd fast <4 x float> %i.ayj, %.223762795.us2807.us.us.us.i.us
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayh, i64 16
  %i.aym = load <4 x float>, ptr %i.ayl, align 16, !tbaa !82
  %i.ayn = fmul fast <4 x float> %i.aym, %.sroa.03499.12.vec.insert.i.us
  %i.ayo = fadd fast <4 x float> %i.ayn, %.223712796.us2806.us.us.us.i.us
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.cp, %.lr.ph.split.us2804.us.us.us.i.us
  %.32377.us2811.us.us.us.i.us = phi nsz <4 x float> [ %.223762795.us2807.us.us.us.i.us, %.lr.ph.split.us2804.us.us.us.i.us ], [ %i.ayk, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223762795.us2807.us.us.us.i.us, %bb.cp ] ; 2 uses
  %.32372.us2812.us.us.us.i.us = phi nsz <4 x float> [ %.223712796.us2806.us.us.us.i.us, %.lr.ph.split.us2804.us.us.us.i.us ], [ %i.ayo, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223712796.us2806.us.us.us.i.us, %bb.cp ] ; 2 uses
  %indvars.iv.next3360.i.us = add nuw nsw i64 %indvars.iv3359.i.us, 1 ; 2 uses
  %exitcond3363.not.i.us = icmp eq i64 %indvars.iv.next3360.i.us, %i.avr
  br i1 %exitcond3363.not.i.us, label %..loopexit2491_crit_edge.us.us.us.i.us190, label %.lr.ph.split.us2804.us.us.us.i.us, !llvm.loop !373

..loopexit2491_crit_edge.us.us.us.i.us190:        ; preds = %bb.cq, %bb.co, %.preheader2496.us.us.i.split.us182
  %.42378.us.us.us.i.us191 = phi nsz <4 x float> [ %.123752818.us.us.us.i.us185, %.preheader2496.us.us.i.split.us182 ], [ %.123752818.us.us.us.i.us185, %bb.co ], [ %.32377.us2811.us.us.us.i.us, %bb.cq ] ; 2 uses
  %.42373.us.us.us.i.us192 = phi nsz <4 x float> [ %.123702819.us.us.us.i.us184, %.preheader2496.us.us.i.split.us182 ], [ %.123702819.us.us.us.i.us184, %bb.co ], [ %.32372.us2812.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3370.i.us193 = add nuw nsw i64 %indvars.iv3369.i.us183, 1 ; 2 uses
  %exitcond3373.not.i.us194 = icmp eq i64 %indvars.iv.next3370.i.us193, %wide.trip.count3348.i
  br i1 %exitcond3373.not.i.us194, label %._crit_edge2822.split.us.us.us.i, label %.preheader2496.us.us.i.split.us182, !llvm.loop !374

._crit_edge2822.split.us.us.us.i:                 ; preds = %..loopexit2491_crit_edge.us.us.us.i.us190, %..loopexit2491_crit_edge.us.us.us.i.us, %.preheader2496.us.us.i
  %.us-phi180 = phi <4 x float> [ %.42378.us.us.us.i.us, %..loopexit2491_crit_edge.us.us.us.i.us ], [ %.023742838.us.us.i, %.preheader2496.us.us.i ], [ %.42378.us.us.us.i.us191, %..loopexit2491_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %.us-phi181 = phi <4 x float> [ %.42373.us.us.us.i.us, %..loopexit2491_crit_edge.us.us.us.i.us ], [ %.023692839.us.us.i, %.preheader2496.us.us.i ], [ %.42373.us.us.us.i.us192, %..loopexit2491_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %i.ayp = getelementptr inbounds [4 x i8], ptr %.17682840.us.us.i, i64 %i.aqn ; 2 uses
  %indvars.iv.next3375.i = add nuw nsw i64 %indvars.iv3374.i, 4 ; 2 uses
  %i.ayq = trunc i64 %indvars.iv.next3375.i to i32 ; 2 uses
  %i.ayr = or i32 %i.ayq, 3
  %i.ays = icmp slt i32 %i.ayr, %i.kf
  br i1 %i.ays, label %.preheader2496.us.us.i, label %._crit_edge2844.i, !llvm.loop !377

._crit_edge2844.i:                                ; preds = %._crit_edge2822.split.us.us.us.i, %.preheader2496.us.preheader.i, %.preheader2496.preheader.i, %._crit_edge2771.i
  %.02374.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2771.i ], [ zeroinitializer, %.preheader2496.preheader.i ], [ zeroinitializer, %.preheader2496.us.preheader.i ], [ %.us-phi180, %._crit_edge2822.split.us.us.us.i ] ; 2 uses
  %.02369.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2771.i ], [ zeroinitializer, %.preheader2496.preheader.i ], [ zeroinitializer, %.preheader2496.us.preheader.i ], [ %.us-phi181, %._crit_edge2822.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2771.i ], [ %scevgep3353.i, %.preheader2496.preheader.i ], [ %scevgep3354.i, %.preheader2496.us.preheader.i ], [ %i.ayp, %._crit_edge2822.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2771.i ], [ %i.avi, %.preheader2496.preheader.i ], [ %i.avq, %.preheader2496.us.preheader.i ], [ %i.ayq, %._crit_edge2822.split.us.us.us.i ] ; 7 uses
  %i.ayt = shufflevector <4 x float> %.02374.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ayu = fadd fast <4 x float> %i.ayt, %.02374.lcssa.i ; 2 uses
  %i.ayv = shufflevector <4 x float> %i.aun, <4 x float> %i.aus, <2 x i32> <i32 1, i32 5>
  %i.ayw = fadd fast <2 x float> %i.ayv, %i.aqu
  %i.ayx = shufflevector <4 x float> %.02369.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ayy = fadd fast <4 x float> %i.ayx, %.02369.lcssa.i ; 2 uses
  %i.ayz = shufflevector <4 x float> %i.aun, <4 x float> %i.aus, <2 x i32> <i32 0, i32 4>
  %i.aza = fadd fast <2 x float> %i.ayw, %i.ayz
  %i.azb = shufflevector <4 x float> %i.ayu, <4 x float> %i.ayy, <2 x i32> <i32 1, i32 5>
  %i.azc = fadd fast <2 x float> %i.aza, %i.azb
  %i.azd = shufflevector <4 x float> %i.ayu, <4 x float> %i.ayy, <2 x i32> <i32 0, i32 4>
  %i.aze = fadd fast <2 x float> %i.azc, %i.azd   ; 4 uses
  %i.azf = or disjoint i32 %.1764.lcssa.i, 1
  %i.azg = icmp slt i32 %i.azf, %i.kf
  br i1 %i.azg, label %.preheader2495.lr.ph.i, label %.preheader2498.i

.preheader2495.lr.ph.i:                           ; preds = %._crit_edge2844.i
  %i.azh = load i32, ptr %i.d, align 4
  %i.azi = load i32, ptr %i.j, align 4
  %invariant.op2885.i = sub i32 %.neg2450.i, %i.azi
  %i.azj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.azk = load i32, ptr %i.a, align 4
  %.fr3173.i = freeze i32 %i.azk                  ; 2 uses
  %i.azl = load i32, ptr %i.c, align 4
  %i.azm = load i32, ptr %i.i, align 4
  %.neg2444.i = add nuw nsw i32 %.08032958.i, 1
  %invariant.op2876.i = sub i32 %.neg2444.i, %i.azm
  %i.azn = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.aqi, label %.preheader2495.lr.ph.split.us.i, label %.preheader2495.preheader.i

.preheader2495.preheader.i:                       ; preds = %.preheader2495.lr.ph.i
  %i.azo = sub i32 %i.le, %.1764.lcssa.i          ; 2 uses
  %i.azp = lshr i32 %i.azo, 1
  %i.azq = zext nneg i32 %i.azp to i64
  %i.azr = shl nuw nsw i64 %i.azq, 2
  %i.azs = add nuw nsw i64 %i.azr, 4
  %i.azt = mul i64 %i.azs, %i.aqp
  %scevgep3377.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.azt
  %i.azu = add i32 %.1764.lcssa.i, 2
  %i.azv = and i32 %i.azo, -2
  %i.azw = add i32 %i.azu, %i.azv
  br label %.preheader2498.i

.preheader2495.lr.ph.split.us.i:                  ; preds = %.preheader2495.lr.ph.i
  %i.azx = icmp sgt i32 %.fr3173.i, 0
  br i1 %i.azx, label %.preheader2495.us.us.preheader.i, label %.preheader2495.us.preheader.i

.preheader2495.us.preheader.i:                    ; preds = %.preheader2495.lr.ph.split.us.i
  %i.azy = sub i32 %i.le, %.1764.lcssa.i          ; 2 uses
  %i.azz = lshr i32 %i.azy, 1
  %i.baa = zext nneg i32 %i.azz to i64
  %i.bab = shl nuw nsw i64 %i.baa, 2
  %i.bac = add nuw nsw i64 %i.bab, 4
  %i.bad = mul i64 %i.bac, %i.aqp
  %scevgep3378.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bad
  %i.bae = add i32 %.1764.lcssa.i, 2
  %i.baf = and i32 %i.azy, -2
  %i.bag = add i32 %i.bae, %i.baf
  br label %.preheader2498.i

.preheader2495.us.us.preheader.i:                 ; preds = %.preheader2495.lr.ph.split.us.i
  %i.bah = zext nneg i32 %.fr3173.i to i64        ; 2 uses
  %i.bai = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2495.us.us.i

.preheader2495.us.us.i:                           ; preds = %._crit_edge2882.split.us.us.us.i, %.preheader2495.us.us.preheader.i
  %indvars.iv3392.i = phi i64 [ %i.bai, %.preheader2495.us.us.preheader.i ], [ %indvars.iv.next3393.i, %._crit_edge2882.split.us.us.us.i ] ; 3 uses
  %.27692893.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2495.us.us.preheader.i ], [ %i.bby, %._crit_edge2882.split.us.us.us.i ] ; 2 uses
  %i.baj = phi <2 x float> [ %i.aze, %.preheader2495.us.us.preheader.i ], [ %i.bbx, %._crit_edge2882.split.us.us.us.i ]
  %i.bak = add nuw nsw i64 %indvars.iv3392.i, 1
  br label %bb.cr

bb.cr:                                            ; preds = %..loopexit2489_crit_edge.us.us.us.i, %.preheader2495.us.us.i
  %indvars.iv3387.i = phi i64 [ %indvars.iv.next3388.i, %..loopexit2489_crit_edge.us.us.us.i ], [ 0, %.preheader2495.us.us.i ] ; 3 uses
  %i.bal = phi <2 x float> [ %i.bbx, %..loopexit2489_crit_edge.us.us.us.i ], [ %i.baj, %.preheader2495.us.us.i ] ; 3 uses
  %i.bam = trunc i64 %indvars.iv3387.i to i32
  %i.ban = mul i32 %i.azh, %i.bam
  %.reass2886.us.us.us.i = add i32 %i.ban, %invariant.op2885.i ; 3 uses
  %i.bao = icmp slt i32 %.reass2886.us.us.us.i, 0
  br i1 %i.bao, label %..loopexit2489_crit_edge.us.us.us.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bap = srem i32 %.reass2886.us.us.us.i, %i.azj
  %i.baq = sdiv i32 %.reass2886.us.us.us.i, %i.azj ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.bap, 0
  %.not909.us.us.us.i = icmp slt i32 %i.baq, %i.kh
  %or.cond416 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond416, label %.preheader2488.us.us.us.i, label %..loopexit2489_crit_edge.us.us.us.i

.preheader2488.us.us.us.i:                        ; preds = %bb.cs
  %i.bar = mul nuw nsw i64 %indvars.iv3387.i, %i.bah
  %i.bas = sext i32 %i.baq to i64
  %i.bat = mul nsw i64 %i.bas, %i.lg
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit2485.us.us.us.i, %.preheader2488.us.us.us.i
  %indvars.iv3382.i = phi i64 [ %indvars.iv.next3383.i, %.loopexit2485.us.us.us.i ], [ 0, %.preheader2488.us.us.us.i ] ; 3 uses
  %i.bau = phi <2 x float> [ %i.bbw, %.loopexit2485.us.us.us.i ], [ %i.bal, %.preheader2488.us.us.us.i ] ; 3 uses
  %i.bav = trunc i64 %indvars.iv3382.i to i32
  %i.baw = mul i32 %i.azl, %i.bav
  %.reass2877.us.us.us.i = add i32 %invariant.op2876.i, %i.baw ; 3 uses
  %i.bax = icmp slt i32 %.reass2877.us.us.us.i, 0
  br i1 %i.bax, label %.loopexit2485.us.us.us.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.bay = srem i32 %.reass2877.us.us.us.i, %i.azn
  %i.baz = sdiv i32 %.reass2877.us.us.us.i, %i.azn ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.bay, 0
  %.not911.us.us.us.i = icmp slt i32 %i.baz, %i.kg
  %or.cond417 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond417, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2485.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.cu
  %i.bba = add nuw nsw i64 %indvars.iv3382.i, %i.bar
  %i.bbb = shl i64 %i.bba, 2
  %i.bbc = and i64 %i.bbb, 4294967292
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %.27692893.us.us.i, i64 %i.bbc
  %i.bbe = load ptr, ptr %1, align 8, !tbaa !20, !noalias !439
  %i.bbf = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !439
  %i.bbg = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !439 ; 2 uses
  %factor.op.mul.us.us.us2912.i = mul i64 %i.bbg, %i.bbf ; 2 uses
  %i.bbh = mul i64 %i.bat, %i.bbg
  %invariant.gep.us.us.us2913.i = getelementptr i8, ptr %i.bbe, i64 %i.bbh
  %i.bbi = sext i32 %i.baz to i64
  %invariant.gep2866.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2913.i, i64 %i.bbi ; 2 uses
  %.reass.us2887.us.us.i = mul i64 %factor.op.mul.us.us.us2912.i, %indvars.iv3392.i
  %gep2867.us.us.us.i = getelementptr i8, ptr %invariant.gep2866.us.us.us.i, i64 %.reass.us2887.us.us.i
  %i.bbj = load float, ptr %gep2867.us.us.us.i, align 4, !tbaa !39
  %.reass.us2887.us.us.1.i = mul i64 %factor.op.mul.us.us.us2912.i, %i.bak
  %gep2867.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2866.us.us.us.i, i64 %.reass.us2887.us.us.1.i
  %i.bbk = load float, ptr %gep2867.us.us.us.1.i, align 4, !tbaa !39
  %i.bbl = load <4 x float>, ptr %i.bbd, align 4, !tbaa !39 ; 2 uses
  %i.bbm = shufflevector <4 x float> %i.bbl, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.bbn = insertelement <2 x float> poison, float %i.bbj, i64 0
  %i.bbo = shufflevector <2 x float> %i.bbn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbp = fmul fast <2 x float> %i.bbm, %i.bbo
  %i.bbq = fadd fast <2 x float> %i.bbp, %i.bau
  %i.bbr = shufflevector <4 x float> %i.bbl, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bbs = insertelement <2 x float> poison, float %i.bbk, i64 0
  %i.bbt = shufflevector <2 x float> %i.bbs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbu = fmul fast <2 x float> %i.bbr, %i.bbt
  %i.bbv = fadd fast <2 x float> %i.bbq, %i.bbu
  br label %.loopexit2485.us.us.us.i

.loopexit2485.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.cu, %bb.ct
  %i.bbw = phi <2 x float> [ %i.bau, %bb.ct ], [ %i.bau, %bb.cu ], [ %i.bbv, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3383.i = add nuw nsw i64 %indvars.iv3382.i, 1 ; 2 uses
  %exitcond3386.not.i = icmp eq i64 %indvars.iv.next3383.i, %i.bah
  br i1 %exitcond3386.not.i, label %..loopexit2489_crit_edge.us.us.us.i, label %bb.ct, !llvm.loop !380

..loopexit2489_crit_edge.us.us.us.i:              ; preds = %.loopexit2485.us.us.us.i, %bb.cs, %bb.cr
  %i.bbx = phi <2 x float> [ %i.bal, %bb.cr ], [ %i.bal, %bb.cs ], [ %i.bbw, %.loopexit2485.us.us.us.i ] ; 3 uses
  %indvars.iv.next3388.i = add nuw nsw i64 %indvars.iv3387.i, 1 ; 2 uses
  %exitcond3391.not.i = icmp eq i64 %indvars.iv.next3388.i, %wide.trip.count3348.i
  br i1 %exitcond3391.not.i, label %._crit_edge2882.split.us.us.us.i, label %bb.cr, !llvm.loop !381

._crit_edge2882.split.us.us.us.i:                 ; preds = %..loopexit2489_crit_edge.us.us.us.i
  %i.bby = getelementptr inbounds [4 x i8], ptr %.27692893.us.us.i, i64 %i.aqp ; 2 uses
  %indvars.iv.next3393.i = add nuw nsw i64 %indvars.iv3392.i, 2 ; 2 uses
  %i.bbz = trunc i64 %indvars.iv.next3393.i to i32 ; 2 uses
  %i.bca = or i32 %i.bbz, 1
  %i.bcb = icmp slt i32 %i.bca, %i.kf
  br i1 %i.bcb, label %.preheader2495.us.us.i, label %.preheader2498.i, !llvm.loop !382

.preheader2498.i:                                 ; preds = %._crit_edge2882.split.us.us.us.i, %.preheader2495.us.preheader.i, %.preheader2495.preheader.i, %._crit_edge2844.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2844.i ], [ %scevgep3377.i, %.preheader2495.preheader.i ], [ %scevgep3378.i, %.preheader2495.us.preheader.i ], [ %i.bby, %._crit_edge2882.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2844.i ], [ %i.azw, %.preheader2495.preheader.i ], [ %i.bag, %.preheader2495.us.preheader.i ], [ %i.bbz, %._crit_edge2882.split.us.us.us.i ] ; 2 uses
  %i.bcc = phi <2 x float> [ %i.aze, %._crit_edge2844.i ], [ %i.aze, %.preheader2495.preheader.i ], [ %i.aze, %.preheader2495.us.preheader.i ], [ %i.bbx, %._crit_edge2882.split.us.us.us.i ] ; 3 uses
  %i.bcd = icmp slt i32 %.2765.lcssa.i, %i.kf
  br i1 %i.bcd, label %.preheader2494.lr.ph.i, label %._crit_edge2942.i

.preheader2494.lr.ph.i:                           ; preds = %.preheader2498.i
  %i.bce = load i32, ptr %i.d, align 4
  %i.bcf = load i32, ptr %i.j, align 4
  %invariant.op2931.i = sub i32 %.neg2450.i, %i.bcf
  %i.bcg = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bch = load i32, ptr %i.a, align 4
  %.fr3174.i = freeze i32 %i.bch                  ; 2 uses
  %i.bci = load i32, ptr %i.c, align 4
  %i.bcj = load i32, ptr %i.i, align 4
  %.neg2440.i = add nuw nsw i32 %.08032958.i, 1
  %invariant.op2923.i = sub i32 %.neg2440.i, %i.bcj
  %i.bck = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bcl = icmp sgt i32 %.fr3174.i, 0
  %or.cond3610.i = and i1 %i.aqi, %i.bcl
  br i1 %or.cond3610.i, label %.preheader2494.us.us.preheader.i, label %._crit_edge2942.i

.preheader2494.us.us.preheader.i:                 ; preds = %.preheader2494.lr.ph.i
  %i.bcm = zext nneg i32 %.fr3174.i to i64        ; 2 uses
  %i.bcn = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2494.us.us.i

.preheader2494.us.us.i:                           ; preds = %._crit_edge2928.split.us.us.us.i, %.preheader2494.us.us.preheader.i
  %indvars.iv3405.i = phi i64 [ %i.bcn, %.preheader2494.us.us.preheader.i ], [ %indvars.iv.next3406.i, %._crit_edge2928.split.us.us.us.i ] ; 2 uses
  %.37702939.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2494.us.us.preheader.i ], [ %i.bdy, %._crit_edge2928.split.us.us.us.i ] ; 2 uses
  %i.bco = phi <2 x float> [ %i.bcc, %.preheader2494.us.us.preheader.i ], [ %i.bdx, %._crit_edge2928.split.us.us.us.i ]
  br label %bb.cv

bb.cv:                                            ; preds = %..loopexit2487_crit_edge.us.us.us.i, %.preheader2494.us.us.i
  %indvars.iv3400.i = phi i64 [ %indvars.iv.next3401.i, %..loopexit2487_crit_edge.us.us.us.i ], [ 0, %.preheader2494.us.us.i ] ; 3 uses
  %i.bcp = phi <2 x float> [ %i.bdx, %..loopexit2487_crit_edge.us.us.us.i ], [ %i.bco, %.preheader2494.us.us.i ] ; 3 uses
  %i.bcq = trunc i64 %indvars.iv3400.i to i32
  %i.bcr = mul i32 %i.bce, %i.bcq
  %.reass2932.us.us.us.i = add i32 %i.bcr, %invariant.op2931.i ; 3 uses
  %i.bcs = icmp slt i32 %.reass2932.us.us.us.i, 0
  br i1 %i.bcs, label %..loopexit2487_crit_edge.us.us.us.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bct = srem i32 %.reass2932.us.us.us.i, %i.bcg
  %i.bcu = sdiv i32 %.reass2932.us.us.us.i, %i.bcg ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bct, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bcu, %i.kh
  %or.cond418 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond418, label %.preheader2486.us.us.us.i, label %..loopexit2487_crit_edge.us.us.us.i

.preheader2486.us.us.us.i:                        ; preds = %bb.cw
  %i.bcv = mul nuw nsw i64 %indvars.iv3400.i, %i.bcm
  %i.bcw = sext i32 %i.bcu to i64
  %i.bcx = mul nsw i64 %i.bcw, %i.lg
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.preheader2486.us.us.us.i
  %indvars.iv3395.i = phi i64 [ %indvars.iv.next3396.i, %bb.cz ], [ 0, %.preheader2486.us.us.us.i ] ; 3 uses
  %i.bcy = phi <2 x float> [ %i.bdw, %bb.cz ], [ %i.bcp, %.preheader2486.us.us.us.i ] ; 3 uses
  %i.bcz = trunc i64 %indvars.iv3395.i to i32
  %i.bda = mul i32 %i.bci, %i.bcz
  %.reass.us2933.us.us.i = add i32 %invariant.op2923.i, %i.bda ; 3 uses
  %i.bdb = icmp slt i32 %.reass.us2933.us.us.i, 0
  br i1 %i.bdb, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bdc = srem i32 %.reass.us2933.us.us.i, %i.bck
  %i.bdd = sdiv i32 %.reass.us2933.us.us.i, %i.bck ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bdc, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bdd, %i.kg
  %or.cond419 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond419, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.cz

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.cy
  %i.bde = add nuw nsw i64 %indvars.iv3395.i, %i.bcv
  %.idx3565.i = shl nuw nsw i64 %i.bde, 3
  %i.bdf = getelementptr inbounds nuw i8, ptr %.37702939.us.us.i, i64 %.idx3565.i
  %i.bdg = load ptr, ptr %1, align 8, !tbaa !20, !noalias !440
  %i.bdh = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !440
  %i.bdi = mul i64 %i.bdh, %indvars.iv3405.i
  %i.bdj = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !440 ; 2 uses
  %i.bdk = mul i64 %i.bdi, %i.bdj
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.bdk
  %i.bdm = mul i64 %i.bcx, %i.bdj
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdl, i64 %i.bdm
  %i.bdo = sext i32 %i.bdd to i64
  %i.bdp = getelementptr inbounds [4 x i8], ptr %i.bdn, i64 %i.bdo
  %i.bdq = load float, ptr %i.bdp, align 4, !tbaa !39
  %i.bdr = load <2 x float>, ptr %i.bdf, align 4, !tbaa !39
  %i.bds = insertelement <2 x float> poison, float %i.bdq, i64 0
  %i.bdt = shufflevector <2 x float> %i.bds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdu = fmul fast <2 x float> %i.bdr, %i.bdt
  %i.bdv = fadd fast <2 x float> %i.bdu, %i.bcy
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.cy, %bb.cx
  %i.bdw = phi <2 x float> [ %i.bcy, %bb.cx ], [ %i.bcy, %bb.cy ], [ %i.bdv, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3396.i = add nuw nsw i64 %indvars.iv3395.i, 1 ; 2 uses
  %exitcond3399.not.i = icmp eq i64 %indvars.iv.next3396.i, %i.bcm
  br i1 %exitcond3399.not.i, label %..loopexit2487_crit_edge.us.us.us.i, label %bb.cx, !llvm.loop !385

..loopexit2487_crit_edge.us.us.us.i:              ; preds = %bb.cz, %bb.cw, %bb.cv
  %i.bdx = phi <2 x float> [ %i.bcp, %bb.cv ], [ %i.bcp, %bb.cw ], [ %i.bdw, %bb.cz ] ; 3 uses
  %indvars.iv.next3401.i = add nuw nsw i64 %indvars.iv3400.i, 1 ; 2 uses
  %exitcond3404.not.i = icmp eq i64 %indvars.iv.next3401.i, %wide.trip.count3348.i
  br i1 %exitcond3404.not.i, label %._crit_edge2928.split.us.us.us.i, label %bb.cv, !llvm.loop !386

._crit_edge2928.split.us.us.us.i:                 ; preds = %..loopexit2487_crit_edge.us.us.us.i
  %i.bdy = getelementptr inbounds [4 x i8], ptr %.37702939.us.us.i, i64 %i.aqr
  %indvars.iv.next3406.i = add nuw nsw i64 %indvars.iv3405.i, 1 ; 2 uses
  %i.bdz = trunc nuw i64 %indvars.iv.next3406.i to i32
  %i.bea = icmp sgt i32 %i.kf, %i.bdz
  br i1 %i.bea, label %.preheader2494.us.us.i, label %._crit_edge2942.i, !llvm.loop !387

._crit_edge2942.i:                                ; preds = %._crit_edge2928.split.us.us.us.i, %.preheader2494.lr.ph.i, %.preheader2498.i
  %i.beb = phi <2 x float> [ %i.bcc, %.preheader2498.i ], [ %i.bcc, %.preheader2494.lr.ph.i ], [ %i.bdx, %._crit_edge2928.split.us.us.us.i ] ; 12 uses
  switch i32 %i.aqf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i
    i32 6, label %bb.da
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2398.i: ; preds = %._crit_edge2942.i
  %i.bec = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.beb, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2401.i: ; preds = %._crit_edge2942.i
  %i.bed = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.bee = load float, ptr %i.bed, align 4, !tbaa !39
  %i.bef = fcmp fast ogt <2 x float> %i.beb, zeroinitializer
  %i.beg = insertelement <2 x float> poison, float %i.bee, i64 0
  %i.beh = shufflevector <2 x float> %i.beg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bei = select <2 x i1> %i.bef, <2 x float> splat (float 1.000000e+00), <2 x float> %i.beh
  %i.bej = fmul fast <2 x float> %i.bei, %i.beb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2395.i: ; preds = %._crit_edge2942.i
  %i.bek = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.bel = load float, ptr %i.bek, align 4, !tbaa !39 ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bek, i64 4
  %i.ben = load float, ptr %i.bem, align 4, !tbaa !39 ; 3 uses
  %i.beo = extractelement <2 x float> %i.beb, i64 0
  %spec.select.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.beo, float %i.bel) ; 2 uses
  %i.bep = fcmp fast ogt float %spec.select.i, %i.ben
  %.123072397.i = select i1 %i.bep, float %i.ben, float %spec.select.i
  %i.beq = extractelement <2 x float> %i.beb, i64 1
  %.02308.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.beq, float %i.bel)
  %spec.select2420.i = call nnan ninf nsz float @llvm.minnum.f32(float %.02308.i, float %i.ben)
  %i.ber = insertelement <2 x float> poison, float %.123072397.i, i64 0
  %i.bes = insertelement <2 x float> %i.ber, float %spec.select2420.i, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2404.i: ; preds = %._crit_edge2942.i
  %i.bet = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.beb, <2 x float> splat (float f0x42B0C0A5))
  %i.beu = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bet, <2 x float> splat (float f0xC2B0C0A5))
  %i.bev = fneg fast <2 x float> %i.beu
  %i.bew = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bev)
  %i.bex = fadd fast <2 x float> %i.bew, splat (float 1.000000e+00)
  %i.bey = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bex
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2407.i: ; preds = %._crit_edge2942.i
  %i.bez = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.beb)
  %i.bfa = fadd fast <2 x float> %i.bez, splat (float 1.000000e+00)
  %i.bfb = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bfa)
  %i.bfc = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bfb)
  %i.bfd = fmul fast <2 x float> %i.bfc, %i.beb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

bb.da:                                            ; preds = %._crit_edge2942.i
  %i.bfe = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.bff = load float, ptr %i.bfe, align 4, !tbaa !39 ; 5 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfe, i64 4
  %i.bfh = load float, ptr %i.bfg, align 4, !tbaa !39 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNK4ncnn21Deconvolution_x86_avx7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.bnt = mul nsw i64 %i.bns, %i.apn
  br label %.lr.ph.split.us3028.us.us.us.i.us

.lr.ph.split.us3028.us.us.us.i.us:                ; preds = %bb.ds, %.preheader2475.us.us.us.i.us206
  %indvars.iv3442.i.us = phi i64 [ %indvars.iv.next3443.i.us, %bb.ds ], [ 0, %.preheader2475.us.us.us.i.us206 ] ; 3 uses
  %.223143022.us3030.us.us.us.i.us = phi <4 x float> [ %.32315.us3034.us.us.us.i.us, %bb.ds ], [ %.123133038.us.us.us.i.us202, %.preheader2475.us.us.us.i.us206 ] ; 3 uses
  %i.bnu = trunc i64 %indvars.iv3442.i.us to i32
  %i.bnv = mul i32 %i.blh, %i.bnu
  %.reass3026.us3031.us.us.us.i.us = add i32 %i.bnv, %invariant.op3025.i ; 3 uses
  %i.bnw = icmp slt i32 %.reass3026.us3031.us.us.us.i.us, 0
  br i1 %i.bnw, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.split.us3028.us.us.us.i.us
  %i.bnx = srem i32 %.reass3026.us3031.us.us.us.i.us, %i.blj
  %i.bny = sdiv i32 %.reass3026.us3031.us.us.us.i.us, %i.blj ; 2 uses
  %.not897.us3032.us.us.us.i.us = icmp eq i32 %i.bnx, 0
  %.not898.us3033.us.us.us.i.us = icmp slt i32 %i.bny, %i.aok
  %or.cond425 = select i1 %.not897.us3032.us.us.us.i.us, i1 %.not898.us3033.us.us.us.i.us, i1 false
  br i1 %or.cond425, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.ds

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.dr
  %i.bnz = load ptr, ptr %1, align 8, !tbaa !20, !noalias !445
  %i.boa = load i64, ptr %i.aou, align 8, !tbaa !21, !noalias !445
  %i.bob = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !445 ; 2 uses
  %factor.op.mul3017.us.us.us.us.i.us = mul i64 %i.bob, %i.boa ; 4 uses
  %i.boc = mul i64 %i.bnt, %i.bob
  %invariant.gep.us.us.us3070.us.i.us = getelementptr i8, ptr %i.bnz, i64 %i.boc
  %i.bod = sext i32 %i.bny to i64
  %invariant.gep3019.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3070.us.i.us, i64 %i.bod ; 4 uses
  %.reass3018.us.us.us.us.i.us = mul i64 %factor.op.mul3017.us.us.us.us.i.us, %indvars.iv3457.i
  %gep3020.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3019.us.us.us.us.i.us, i64 %.reass3018.us.us.us.us.i.us
  %i.boe = load float, ptr %gep3020.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.boe, i64 0
  %.reass3018.us.us.us.us.1.i.us = mul i64 %factor.op.mul3017.us.us.us.us.i.us, %i.bmd
  %gep3020.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3019.us.us.us.us.i.us, i64 %.reass3018.us.us.us.us.1.i.us
  %i.bof = load float, ptr %gep3020.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.bof, i64 1
  %.reass3018.us.us.us.us.2.i.us = mul i64 %factor.op.mul3017.us.us.us.us.i.us, %i.bme
  %gep3020.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3019.us.us.us.us.i.us, i64 %.reass3018.us.us.us.us.2.i.us
  %i.bog = load float, ptr %gep3020.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.bog, i64 2
  %.reass3018.us.us.us.us.3.i.us = mul i64 %factor.op.mul3017.us.us.us.us.i.us, %i.bmf
  %gep3020.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3019.us.us.us.us.i.us, i64 %.reass3018.us.us.us.us.3.i.us
  %i.boh = load float, ptr %gep3020.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.boh, i64 3
  %i.boi = add nuw nsw i64 %indvars.iv3442.i.us, %i.bnr
  %i.boj = shl i64 %i.boi, 2
  %i.bok = and i64 %i.boj, 4294967292
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %.17253055.us.us.i, i64 %i.bok
  %i.bom = load <4 x float>, ptr %i.bol, align 16, !tbaa !82
  %i.bon = fmul fast <4 x float> %i.bom, %.sroa.0.12.vec.insert.i.us
  %i.boo = fadd fast <4 x float> %i.bon, %.223143022.us3030.us.us.us.i.us
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.dr, %.lr.ph.split.us3028.us.us.us.i.us
  %.32315.us3034.us.us.us.i.us = phi nsz <4 x float> [ %.223143022.us3030.us.us.us.i.us, %.lr.ph.split.us3028.us.us.us.i.us ], [ %i.boo, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223143022.us3030.us.us.us.i.us, %bb.dr ] ; 2 uses
  %indvars.iv.next3443.i.us = add nuw nsw i64 %indvars.iv3442.i.us, 1 ; 2 uses
  %exitcond3446.not.i.us = icmp eq i64 %indvars.iv.next3443.i.us, %i.blz
  br i1 %exitcond3446.not.i.us, label %..loopexit2476_crit_edge.us.us.us.i.us207, label %.lr.ph.split.us3028.us.us.us.i.us, !llvm.loop !402

..loopexit2476_crit_edge.us.us.us.i.us207:        ; preds = %bb.ds, %bb.dq, %.preheader2481.us.us.i.split.us200
  %.42316.us.us.us.i.us208 = phi nsz <4 x float> [ %.123133038.us.us.us.i.us202, %.preheader2481.us.us.i.split.us200 ], [ %.123133038.us.us.us.i.us202, %bb.dq ], [ %.32315.us3034.us.us.us.i.us, %bb.ds ] ; 2 uses
  %indvars.iv.next3453.i.us209 = add nuw nsw i64 %indvars.iv3452.i.us201, 1 ; 2 uses
  %exitcond3456.not.i.us210 = icmp eq i64 %indvars.iv.next3453.i.us209, %wide.trip.count3431.i
  br i1 %exitcond3456.not.i.us210, label %._crit_edge3041.split.us.us.us.i, label %.preheader2481.us.us.i.split.us200, !llvm.loop !403

._crit_edge3041.split.us.us.us.i:                 ; preds = %..loopexit2476_crit_edge.us.us.us.i.us207, %..loopexit2476_crit_edge.us.us.us.i.us, %.preheader2481.us.us.i
  %.us-phi199 = phi <4 x float> [ %.42316.us.us.us.i.us, %..loopexit2476_crit_edge.us.us.us.i.us ], [ %.023123054.us.us.i, %.preheader2481.us.us.i ], [ %.42316.us.us.us.i.us208, %..loopexit2476_crit_edge.us.us.us.i.us207 ] ; 2 uses
  %i.bop = getelementptr inbounds [4 x i8], ptr %.17253055.us.us.i, i64 %i.bhf ; 2 uses
  %indvars.iv.next3458.i = add nuw nsw i64 %indvars.iv3457.i, 4 ; 2 uses
  %i.boq = trunc i64 %indvars.iv.next3458.i to i32 ; 2 uses
  %i.bor = or i32 %i.boq, 3
  %i.bos = icmp slt i32 %i.bor, %i.aoj
  br i1 %i.bos, label %.preheader2481.us.us.i, label %._crit_edge3059.i, !llvm.loop !406

._crit_edge3059.i:                                ; preds = %._crit_edge3041.split.us.us.us.i, %.preheader2481.us.preheader.i, %.preheader2481.preheader.i, %._crit_edge2999.i
  %.02312.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2999.i ], [ zeroinitializer, %.preheader2481.preheader.i ], [ zeroinitializer, %.preheader2481.us.preheader.i ], [ %.us-phi199, %._crit_edge3041.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge2999.i ], [ %scevgep3436.i, %.preheader2481.preheader.i ], [ %scevgep3437.i, %.preheader2481.us.preheader.i ], [ %i.bop, %._crit_edge3041.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge2999.i ], [ %i.blq, %.preheader2481.preheader.i ], [ %i.bly, %.preheader2481.us.preheader.i ], [ %i.boq, %._crit_edge3041.split.us.us.us.i ] ; 7 uses
  %i.bot = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.bla, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.bou = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.bla, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bov = fadd fast <4 x float> %i.bot, %i.bou
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.bov) ; 4 uses
  %i.bow = or disjoint i32 %.1.lcssa.i, 1
  %i.box = icmp slt i32 %i.bow, %i.aoj
  br i1 %i.box, label %.preheader2480.lr.ph.i, label %.preheader2483.i

.preheader2480.lr.ph.i:                           ; preds = %._crit_edge3059.i
  %i.boy = load i32, ptr %i.d, align 4
  %i.boz = load i32, ptr %i.j, align 4
  %invariant.op3094.i = sub i32 %.neg2434.i, %i.boz
  %i.bpa = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bpb = load i32, ptr %i.a, align 4
  %.fr3177.i = freeze i32 %i.bpb                  ; 2 uses
  %i.bpc = load i32, ptr %i.c, align 4
  %i.bpd = load i32, ptr %i.i, align 4
  %.neg2428.i = add nuw nsw i32 %.07323150.i, 1
  %invariant.op3087.i = sub i32 %.neg2428.i, %i.bpd
  %i.bpe = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bha, label %.preheader2480.lr.ph.split.us.i, label %.preheader2480.preheader.i

.preheader2480.preheader.i:                       ; preds = %.preheader2480.lr.ph.i
  %i.bpf = sub i32 %i.api, %.1.lcssa.i            ; 2 uses
  %i.bpg = lshr i32 %i.bpf, 1
  %i.bph = zext nneg i32 %i.bpg to i64
  %i.bpi = shl nuw nsw i64 %i.bph, 2
  %i.bpj = add nuw nsw i64 %i.bpi, 4
  %i.bpk = mul i64 %i.bpj, %i.bhh
  %scevgep3460.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bpk
  %i.bpl = add i32 %.1.lcssa.i, 2
  %i.bpm = and i32 %i.bpf, -2
  %i.bpn = add i32 %i.bpl, %i.bpm
  br label %.preheader2483.i

.preheader2480.lr.ph.split.us.i:                  ; preds = %.preheader2480.lr.ph.i
  %i.bpo = icmp sgt i32 %.fr3177.i, 0
  br i1 %i.bpo, label %.preheader2480.us.us.preheader.i, label %.preheader2480.us.preheader.i

.preheader2480.us.preheader.i:                    ; preds = %.preheader2480.lr.ph.split.us.i
  %i.bpp = sub i32 %i.api, %.1.lcssa.i            ; 2 uses
  %i.bpq = lshr i32 %i.bpp, 1
  %i.bpr = zext nneg i32 %i.bpq to i64
  %i.bps = shl nuw nsw i64 %i.bpr, 2
  %i.bpt = add nuw nsw i64 %i.bps, 4
  %i.bpu = mul i64 %i.bpt, %i.bhh
  %scevgep3461.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bpu
  %i.bpv = add i32 %.1.lcssa.i, 2
  %i.bpw = and i32 %i.bpp, -2
  %i.bpx = add i32 %i.bpv, %i.bpw
  br label %.preheader2483.i

.preheader2480.us.us.preheader.i:                 ; preds = %.preheader2480.lr.ph.split.us.i
  %i.bpy = zext nneg i32 %.fr3177.i to i64        ; 2 uses
  %i.bpz = zext i32 %.1.lcssa.i to i64
  br label %.preheader2480.us.us.i

.preheader2480.us.us.i:                           ; preds = %._crit_edge3092.split.us.us.us.i, %.preheader2480.us.us.preheader.i
  %indvars.iv3475.i = phi i64 [ %i.bpz, %.preheader2480.us.us.preheader.i ], [ %indvars.iv.next3476.i, %._crit_edge3092.split.us.us.us.i ] ; 3 uses
  %.27263099.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2480.us.us.preheader.i ], [ %i.bre, %._crit_edge3092.split.us.us.us.i ] ; 2 uses
  %.17293098.us.us.i = phi float [ %op.rdx, %.preheader2480.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3092.split.us.us.us.i ]
  %i.bqa = add nuw nsw i64 %indvars.iv3475.i, 1
  br label %bb.dt

bb.dt:                                            ; preds = %..loopexit2474_crit_edge.us.us.us.i, %.preheader2480.us.us.i
  %indvars.iv3470.i = phi i64 [ %indvars.iv.next3471.i, %..loopexit2474_crit_edge.us.us.us.i ], [ 0, %.preheader2480.us.us.i ] ; 3 uses
  %.27303089.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2474_crit_edge.us.us.us.i ], [ %.17293098.us.us.i, %.preheader2480.us.us.i ] ; 3 uses
  %i.bqb = trunc i64 %indvars.iv3470.i to i32
  %i.bqc = mul i32 %i.boy, %i.bqb
  %.reass3095.us.us.us.i = add i32 %i.bqc, %invariant.op3094.i ; 3 uses
  %i.bqd = icmp slt i32 %.reass3095.us.us.us.i, 0
  br i1 %i.bqd, label %..loopexit2474_crit_edge.us.us.us.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bqe = srem i32 %.reass3095.us.us.us.i, %i.bpa
  %i.bqf = sdiv i32 %.reass3095.us.us.us.i, %i.bpa ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bqe, 0
  %.not892.us.us.us.i = icmp slt i32 %i.bqf, %i.aol
  %or.cond426 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond426, label %.preheader2473.us.us.us.i, label %..loopexit2474_crit_edge.us.us.us.i

.preheader2473.us.us.us.i:                        ; preds = %bb.du
  %i.bqg = mul nuw nsw i64 %indvars.iv3470.i, %i.bpy
  %i.bqh = sext i32 %i.bqf to i64
  %i.bqi = mul nsw i64 %i.bqh, %i.apn
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.us.us.us.i, %.preheader2473.us.us.us.i
  %indvars.iv3465.i = phi i64 [ %indvars.iv.next3466.i, %.loopexit.us.us.us.i ], [ 0, %.preheader2473.us.us.us.i ] ; 3 uses
  %.37313084.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.27303089.us.us.us.i, %.preheader2473.us.us.us.i ] ; 3 uses
  %i.bqj = trunc i64 %indvars.iv3465.i to i32
  %i.bqk = mul i32 %i.bpc, %i.bqj
  %.reass3088.us.us.us.i = add i32 %invariant.op3087.i, %i.bqk ; 3 uses
  %i.bql = icmp slt i32 %.reass3088.us.us.us.i, 0
  br i1 %i.bql, label %.loopexit.us.us.us.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bqm = srem i32 %.reass3088.us.us.us.i, %i.bpe
  %i.bqn = sdiv i32 %.reass3088.us.us.us.i, %i.bpe ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bqm, 0
  %.not894.us.us.us.i = icmp slt i32 %i.bqn, %i.aok
  %or.cond427 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond427, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.dw
  %i.bqo = add nuw nsw i64 %indvars.iv3465.i, %i.bqg
  %.idx3567.i = shl nuw nsw i64 %i.bqo, 3
  %i.bqp = getelementptr inbounds nuw i8, ptr %.27263099.us.us.i, i64 %.idx3567.i ; 2 uses
  %i.bqq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !446
  %i.bqr = load i64, ptr %i.aou, align 8, !tbaa !21, !noalias !446
  %i.bqs = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !446 ; 2 uses
  %factor.op.mul3078.us.us.us.i = mul i64 %i.bqs, %i.bqr ; 2 uses
  %i.bqt = mul i64 %i.bqi, %i.bqs
  %invariant.gep.us.us.us3116.i = getelementptr i8, ptr %i.bqq, i64 %i.bqt
  %i.bqu = sext i32 %i.bqn to i64
  %invariant.gep3080.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3116.i, i64 %i.bqu ; 2 uses
  %.reass3079.us.us.us.i = mul i64 %factor.op.mul3078.us.us.us.i, %indvars.iv3475.i
  %gep3081.us.us.us.i = getelementptr i8, ptr %invariant.gep3080.us.us.us.i, i64 %.reass3079.us.us.us.i
  %i.bqv = load float, ptr %gep3081.us.us.us.i, align 4, !tbaa !39
  %i.bqw = load float, ptr %i.bqp, align 4, !tbaa !39
  %i.bqx = fmul fast float %i.bqw, %i.bqv
  %i.bqy = fadd fast float %i.bqx, %.37313084.us.us.us.i
  %.reass3079.us.us.us.1.i = mul i64 %factor.op.mul3078.us.us.us.i, %i.bqa
  %gep3081.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3080.us.us.us.i, i64 %.reass3079.us.us.us.1.i
  %i.bqz = load float, ptr %gep3081.us.us.us.1.i, align 4, !tbaa !39
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqp, i64 4
  %i.brb = load float, ptr %i.bra, align 4, !tbaa !39
  %i.brc = fmul fast float %i.brb, %i.bqz
  %i.brd = fadd fast float %i.bqy, %i.brc
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.dw, %bb.dv
  %.6.us.us.us.i = phi nsz float [ %.37313084.us.us.us.i, %bb.dv ], [ %.37313084.us.us.us.i, %bb.dw ], [ %i.brd, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3466.i = add nuw nsw i64 %indvars.iv3465.i, 1 ; 2 uses
  %exitcond3469.not.i = icmp eq i64 %indvars.iv.next3466.i, %i.bpy
  br i1 %exitcond3469.not.i, label %..loopexit2474_crit_edge.us.us.us.i, label %bb.dv, !llvm.loop !409

..loopexit2474_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.du, %bb.dt
  %.8.us.us.us.i = phi nsz float [ %.27303089.us.us.us.i, %bb.dt ], [ %.27303089.us.us.us.i, %bb.du ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3471.i = add nuw nsw i64 %indvars.iv3470.i, 1 ; 2 uses
  %exitcond3474.not.i = icmp eq i64 %indvars.iv.next3471.i, %wide.trip.count3431.i
  br i1 %exitcond3474.not.i, label %._crit_edge3092.split.us.us.us.i, label %bb.dt, !llvm.loop !410

._crit_edge3092.split.us.us.us.i:                 ; preds = %..loopexit2474_crit_edge.us.us.us.i
  %i.bre = getelementptr inbounds [4 x i8], ptr %.27263099.us.us.i, i64 %i.bhh ; 2 uses
  %indvars.iv.next3476.i = add nuw nsw i64 %indvars.iv3475.i, 2 ; 2 uses
  %i.brf = trunc i64 %indvars.iv.next3476.i to i32 ; 2 uses
  %i.brg = or i32 %i.brf, 1
  %i.brh = icmp slt i32 %i.brg, %i.aoj
  br i1 %i.brh, label %.preheader2480.us.us.i, label %.preheader2483.i, !llvm.loop !411

.preheader2483.i:                                 ; preds = %._crit_edge3092.split.us.us.us.i, %.preheader2480.us.preheader.i, %.preheader2480.preheader.i, %._crit_edge3059.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3059.i ], [ %op.rdx, %.preheader2480.preheader.i ], [ %op.rdx, %.preheader2480.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3092.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3059.i ], [ %scevgep3460.i, %.preheader2480.preheader.i ], [ %scevgep3461.i, %.preheader2480.us.preheader.i ], [ %i.bre, %._crit_edge3092.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3059.i ], [ %i.bpn, %.preheader2480.preheader.i ], [ %i.bpx, %.preheader2480.us.preheader.i ], [ %i.brf, %._crit_edge3092.split.us.us.us.i ] ; 2 uses
  %i.bri = icmp slt i32 %.2.lcssa.i, %i.aoj
  br i1 %i.bri, label %.preheader2479.lr.ph.i, label %._crit_edge3138.i

.preheader2479.lr.ph.i:                           ; preds = %.preheader2483.i
  %i.brj = load i32, ptr %i.d, align 4
  %i.brk = load i32, ptr %i.j, align 4
  %invariant.op3130.i = sub i32 %.neg2434.i, %i.brk
  %i.brl = load i32, ptr %i.f, align 4            ; 2 uses
  %i.brm = load i32, ptr %i.a, align 4
  %.fr3178.i = freeze i32 %i.brm                  ; 2 uses
  %i.brn = load i32, ptr %i.c, align 4
  %i.bro = load i32, ptr %i.i, align 4
  %.neg2424.i = add nuw nsw i32 %.07323150.i, 1
  %invariant.op3123.i = sub i32 %.neg2424.i, %i.bro
  %i.brp = load i32, ptr %i.e, align 4            ; 2 uses
  %i.brq = icmp sgt i32 %.fr3178.i, 0
  %or.cond3612.i = and i1 %i.bha, %i.brq
  br i1 %or.cond3612.i, label %.preheader2479.us.us.preheader.i, label %._crit_edge3138.i

.preheader2479.us.us.preheader.i:                 ; preds = %.preheader2479.lr.ph.i
  %i.brr = zext nneg i32 %.fr3178.i to i64        ; 2 uses
  %i.brs = zext i32 %.2.lcssa.i to i64
  br label %.preheader2479.us.us.i

.preheader2479.us.us.i:                           ; preds = %._crit_edge3128.split.us.us.us.i, %.preheader2479.us.us.preheader.i
  %indvars.iv3488.i = phi i64 [ %i.brs, %.preheader2479.us.us.preheader.i ], [ %indvars.iv.next3489.i, %._crit_edge3128.split.us.us.us.i ] ; 2 uses
  %.37273135.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2479.us.us.preheader.i ], [ %i.bsw, %._crit_edge3128.split.us.us.us.i ] ; 2 uses
  %.93134.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2479.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3128.split.us.us.us.i ]
  br label %bb.dx

bb.dx:                                            ; preds = %..loopexit2472_crit_edge.us.us.us.i, %.preheader2479.us.us.i
  %indvars.iv3483.i = phi i64 [ %indvars.iv.next3484.i, %..loopexit2472_crit_edge.us.us.us.i ], [ 0, %.preheader2479.us.us.i ] ; 3 uses
  %.103125.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2472_crit_edge.us.us.us.i ], [ %.93134.us.us.i, %.preheader2479.us.us.i ] ; 3 uses
  %i.brt = trunc i64 %indvars.iv3483.i to i32
  %i.bru = mul i32 %i.brj, %i.brt
  %.reass3131.us.us.us.i = add i32 %i.bru, %invariant.op3130.i ; 3 uses
  %i.brv = icmp slt i32 %.reass3131.us.us.us.i, 0
  br i1 %i.brv, label %..loopexit2472_crit_edge.us.us.us.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.brw = srem i32 %.reass3131.us.us.us.i, %i.brl
  %i.brx = sdiv i32 %.reass3131.us.us.us.i, %i.brl ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.brw, 0
  %.not888.us.us.us.i = icmp slt i32 %i.brx, %i.aol
  %or.cond428 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond428, label %.preheader.us.us.us.i, label %..loopexit2472_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.dy
  %i.bry = mul nuw nsw i64 %indvars.iv3483.i, %i.brr
  %i.brz = sext i32 %i.brx to i64
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %.37273135.us.us.i, i64 %i.bry
  %i.bsb = mul nsw i64 %i.brz, %i.apn
  br label %bb.dz

bb.dz:                                            ; preds = %bb.eb, %.preheader.us.us.us.i
  %indvars.iv3478.i = phi i64 [ %indvars.iv.next3479.i, %bb.eb ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.113120.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.eb ], [ %.103125.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.bsc = trunc i64 %indvars.iv3478.i to i32
  %i.bsd = mul i32 %i.brn, %i.bsc
  %.reass3124.us.us.us.i = add i32 %invariant.op3123.i, %i.bsd ; 3 uses
  %i.bse = icmp slt i32 %.reass3124.us.us.us.i, 0
  br i1 %i.bse, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bsf = srem i32 %.reass3124.us.us.us.i, %i.brp
  %i.bsg = sdiv i32 %.reass3124.us.us.us.i, %i.brp ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bsf, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bsg, %i.aok
  %or.cond429 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond429, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.eb

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ea
  %i.bsh = load ptr, ptr %1, align 8, !tbaa !20, !noalias !447
  %i.bsi = load i64, ptr %i.aou, align 8, !tbaa !21, !noalias !447
  %i.bsj = mul i64 %i.bsi, %indvars.iv3488.i
  %i.bsk = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !447 ; 2 uses
  %i.bsl = mul i64 %i.bsj, %i.bsk
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsh, i64 %i.bsl
  %i.bsn = mul i64 %i.bsb, %i.bsk
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsm, i64 %i.bsn
  %i.bsp = sext i32 %i.bsg to i64
  %i.bsq = getelementptr inbounds [4 x i8], ptr %i.bso, i64 %i.bsp
  %i.bsr = load float, ptr %i.bsq, align 4, !tbaa !39
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.bsa, i64 %indvars.iv3478.i
  %i.bst = load float, ptr %i.bss, align 4, !tbaa !39
  %i.bsu = fmul fast float %i.bst, %i.bsr
  %i.bsv = fadd fast float %i.bsu, %.113120.us.us.us.i
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ea, %bb.dz
  %.13.us.us.us.i = phi nsz float [ %.113120.us.us.us.i, %bb.dz ], [ %.113120.us.us.us.i, %bb.ea ], [ %i.bsv, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3479.i = add nuw nsw i64 %indvars.iv3478.i, 1 ; 2 uses
  %exitcond3482.not.i = icmp eq i64 %indvars.iv.next3479.i, %i.brr
  br i1 %exitcond3482.not.i, label %..loopexit2472_crit_edge.us.us.us.i, label %bb.dz, !llvm.loop !414

..loopexit2472_crit_edge.us.us.us.i:              ; preds = %bb.eb, %bb.dy, %bb.dx
  %.15.us.us.us.i = phi nsz float [ %.103125.us.us.us.i, %bb.dx ], [ %.103125.us.us.us.i, %bb.dy ], [ %.13.us.us.us.i, %bb.eb ] ; 3 uses
  %indvars.iv.next3484.i = add nuw nsw i64 %indvars.iv3483.i, 1 ; 2 uses
  %exitcond3487.not.i = icmp eq i64 %indvars.iv.next3484.i, %wide.trip.count3431.i
  br i1 %exitcond3487.not.i, label %._crit_edge3128.split.us.us.us.i, label %bb.dx, !llvm.loop !415

._crit_edge3128.split.us.us.us.i:                 ; preds = %..loopexit2472_crit_edge.us.us.us.i
  %i.bsw = getelementptr inbounds [4 x i8], ptr %.37273135.us.us.i, i64 %i.bhi
  %indvars.iv.next3489.i = add nuw nsw i64 %indvars.iv3488.i, 1 ; 2 uses
  %i.bsx = trunc nuw i64 %indvars.iv.next3489.i to i32
  %i.bsy = icmp sgt i32 %i.aoj, %i.bsx
  br i1 %i.bsy, label %.preheader2479.us.us.i, label %._crit_edge3138.i, !llvm.loop !416

._crit_edge3138.i:                                ; preds = %._crit_edge3128.split.us.us.us.i, %.preheader2479.lr.ph.i, %.preheader2483.i
  %.9.lcssa.i = phi float [ %.1729.lcssa.i, %.preheader2483.i ], [ %.1729.lcssa.i, %.preheader2479.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge3128.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bgx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.ec
    i32 2, label %bb.ed
    i32 3, label %bb.ee
    i32 4, label %bb.ef
    i32 5, label %bb.eg
    i32 6, label %bb.eh
  ]

bb.ec:                                            ; preds = %._crit_edge3138.i
  %i.bsz = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ed:                                            ; preds = %._crit_edge3138.i
  %i.bta = load ptr, ptr %i.iu, align 8, !tbaa !20
  %i.btb = load float, ptr %i.bta, align 4, !tbaa !39
  %i.btc = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.btd = select fast i1 %i.btc, float 1.000000e+00, float %i.btb
  %i.bte = fmul fast float %i.btd, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ee:                                            ; preds = %._crit_edge3138.i
  %i.btf = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.btg = load float, ptr %i.btf, align 4, !tbaa !39
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btf, i64 4
  %i.bti = load float, ptr %i.bth, align 4, !tbaa !39
  %spec.select2418.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.btg)
  %spec.select2419.i = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2418.i, float %i.bti)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.ef:                                            ; preds = %._crit_edge3138.i
  %.sroa.speculated2165.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2165.i, float f0xC2B0C0A5)
  %i.btj = fneg fast float %.sroa.speculated.i
  %i.btk = call fast float @llvm.exp.f32(float %i.btj)
  %i.btl = fadd fast float %i.btk, 1.000000e+00
  %i.btm = fdiv fast float 1.000000e+00, %i.btl
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eg:                                            ; preds = %._crit_edge3138.i
  %i.btn = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.bto = fadd fast float %i.btn, 1.000000e+00
  %i.btp = call fast float @llvm.log.f32(float %i.bto)
  %i.btq = call fast float @llvm.tanh.f32(float %i.btp)
  %i.btr = fmul fast float %i.btq, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.eh:                                            ; preds = %._crit_edge3138.i
  %i.bts = load ptr, ptr %i.iu, align 8, !tbaa !20 ; 2 uses
  %i.btt = load float, ptr %i.bts, align 4, !tbaa !39 ; 3 uses
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bts, i64 4
  %i.btv = load float, ptr %i.btu, align 4, !tbaa !39 ; 2 uses
  %i.btw = fneg fast float %i.btv
  %i.btx = fdiv fast float %i.btw, %i.btt         ; 2 uses
  %i.bty = fcmp fast olt float %.9.lcssa.i, %i.btx
  br i1 %i.bty, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.btz = fdiv fast float 1.000000e+00, %i.btt
  %i.bua = fadd fast float %i.btx, %i.btz
  %i.bub = fcmp fast ogt float %.9.lcssa.i, %i.bua
  br i1 %i.bub, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
end_hunk_3
begin_hunk_4_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.lq = shl nuw i32 %i.lp, 16
  %i.lr = insertelement <4 x i32> poison, i32 %i.lq, i64 0
  %i.ls = bitcast <4 x i32> %i.lr to <4 x float>
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lu = mul i64 %i.kv, %i.jt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.la
  %i.lx = getelementptr inbounds [2 x i8], ptr %i.lw, i64 %i.lc
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !89
  %i.lz = zext i16 %i.ly to i32
  %i.ma = shl nuw i32 %i.lz, 16
  %i.mb = insertelement <4 x i32> poison, i32 %i.ma, i64 0
  %i.mc = bitcast <4 x i32> %i.mb to <4 x float>
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.me = mul i64 %i.kv, %i.ju
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.la
  %i.mh = getelementptr inbounds [2 x i8], ptr %i.mg, i64 %i.lc
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !89
  %i.mj = zext i16 %i.mi to i32
  %i.mk = shl nuw i32 %i.mj, 16
  %i.ml = insertelement <4 x i32> poison, i32 %i.mk, i64 0
  %i.mm = bitcast <4 x i32> %i.ml to <4 x float>
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mo = mul i64 %i.kv, %i.jv
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.la
  %i.mr = getelementptr inbounds [2 x i8], ptr %i.mq, i64 %i.lc
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !89
  %i.mt = zext i16 %i.ms to i32
  %i.mu = shl nuw i32 %i.mt, 16
  %i.mv = insertelement <4 x i32> poison, i32 %i.mu, i64 0
  %i.mw = bitcast <4 x i32> %i.mv to <4 x float>
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.my = mul i64 %i.kv, %i.jw
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.la
  %i.nb = getelementptr inbounds [2 x i8], ptr %i.na, i64 %i.lc
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !89
  %i.nd = zext i16 %i.nc to i32
  %i.ne = shl nuw i32 %i.nd, 16
  %i.nf = insertelement <4 x i32> poison, i32 %i.ne, i64 0
  %i.ng = bitcast <4 x i32> %i.nf to <4 x float>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ni = mul i64 %i.kv, %i.jx
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.la
  %i.nl = getelementptr inbounds [2 x i8], ptr %i.nk, i64 %i.lc
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !89
  %i.nn = zext i16 %i.nm to i32
  %i.no = shl nuw i32 %i.nn, 16
  %i.np = insertelement <4 x i32> poison, i32 %i.no, i64 0
  %i.nq = bitcast <4 x i32> %i.np to <4 x float>
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ns = mul i64 %i.kv, %i.jr
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.la
  %i.nv = getelementptr inbounds [2 x i8], ptr %i.nu, i64 %i.lc
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit975.us.us.i:                 ; preds = %bb.ac
  %i.nw = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !623
  %i.nx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !623 ; 2 uses
  %i.ny = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !623
  %i.nz = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !623 ; 2 uses
  %i.oa = mul i64 %i.nz, %i.ny                    ; 2 uses
  %i.ob = mul i64 %i.oa, %i.jy
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ob
  %i.od = sext i32 %i.nw to i64
  %i.oe = mul nsw i64 %i.od, %i.kh
  %i.of = mul i64 %i.oe, %i.nz                    ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.of
  %i.oh = shl nsw i32 %i.km, 2
  %i.oi = sext i32 %i.oh to i64                   ; 2 uses
  %i.oj = getelementptr inbounds [2 x i8], ptr %i.og, i64 %i.oi ; 4 uses
  %i.ok = mul i64 %i.oa, %i.jz
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.of
  %i.on = getelementptr inbounds [2 x i8], ptr %i.om, i64 %i.oi ; 4 uses
  %i.oo = load i16, ptr %i.oj, align 2, !tbaa !89
  %i.op = zext i16 %i.oo to i32
  %i.oq = shl nuw i32 %i.op, 16
  %i.or = insertelement <4 x i32> poison, i32 %i.oq, i64 0
  %i.os = bitcast <4 x i32> %i.or to <4 x float>
  %i.ot = shufflevector <4 x float> %i.os, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !89
  %i.ow = zext i16 %i.ov to i32
  %i.ox = shl nuw i32 %i.ow, 16
  %i.oy = insertelement <4 x i32> poison, i32 %i.ox, i64 0
  %i.oz = bitcast <4 x i32> %i.oy to <4 x float>
  %i.pa = shufflevector <4 x float> %i.oz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !89
  %i.pd = zext i16 %i.pc to i32
  %i.pe = shl nuw i32 %i.pd, 16
  %i.pf = insertelement <4 x i32> poison, i32 %i.pe, i64 0
  %i.pg = bitcast <4 x i32> %i.pf to <4 x float>
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oj, i64 6
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !89
  %i.pk = zext i16 %i.pj to i32
  %i.pl = shl nuw i32 %i.pk, 16
  %i.pm = insertelement <4 x i32> poison, i32 %i.pl, i64 0
  %i.pn = bitcast <4 x i32> %i.pm to <4 x float>
  %i.po = shufflevector <4 x float> %i.pn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pp = load i16, ptr %i.on, align 2, !tbaa !89
  %i.pq = zext i16 %i.pp to i32
  %i.pr = shl nuw i32 %i.pq, 16
  %i.ps = insertelement <4 x i32> poison, i32 %i.pr, i64 0
  %i.pt = bitcast <4 x i32> %i.ps to <4 x float>
  %i.pu = shufflevector <4 x float> %i.pt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pv = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !89
  %i.px = zext i16 %i.pw to i32
  %i.py = shl nuw i32 %i.px, 16
  %i.pz = insertelement <4 x i32> poison, i32 %i.py, i64 0
  %i.qa = bitcast <4 x i32> %i.pz to <4 x float>
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qc = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !89
  %i.qe = zext i16 %i.qd to i32
  %i.qf = shl nuw i32 %i.qe, 16
  %i.qg = insertelement <4 x i32> poison, i32 %i.qf, i64 0
  %i.qh = bitcast <4 x i32> %i.qg to <4 x float>
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qj = getelementptr inbounds nuw i8, ptr %i.on, i64 6
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit976.us.us.i:                 ; preds = %bb.ac
  %i.qk = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !624
  %i.ql = load ptr, ptr %1, align 8, !tbaa !20, !noalias !624
  %i.qm = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !624
  %i.qn = mul i64 %i.qm, %i.ka
  %i.qo = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !624 ; 2 uses
  %i.qp = mul i64 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qp
  %i.qr = sext i32 %i.qk to i64
  %i.qs = mul nsw i64 %i.qr, %i.kh
  %i.qt = mul i64 %i.qs, %i.qo
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qt
  %i.qv = shl nsw i32 %i.km, 3
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [2 x i8], ptr %i.qu, i64 %i.qw ; 5 uses
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !89
  %i.qz = zext i16 %i.qy to i32
  %i.ra = shl nuw i32 %i.qz, 16
  %i.rb = insertelement <4 x i32> poison, i32 %i.ra, i64 0
  %i.rc = bitcast <4 x i32> %i.rb to <4 x float>
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !89
  %i.rg = zext i16 %i.rf to i32
  %i.rh = shl nuw i32 %i.rg, 16
  %i.ri = insertelement <4 x i32> poison, i32 %i.rh, i64 0
  %i.rj = bitcast <4 x i32> %i.ri to <4 x float>
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !89
  %i.rn = zext i16 %i.rm to i32
  %i.ro = shl nuw i32 %i.rn, 16
  %i.rp = insertelement <4 x i32> poison, i32 %i.ro, i64 0
  %i.rq = bitcast <4 x i32> %i.rp to <4 x float>
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qx, i64 6
  %i.rt = load <4 x i16>, ptr %i.rs, align 2, !tbaa !89
  %i.ru = zext <4 x i16> %i.rt to <4 x i32>
  %i.rv = shl nuw <4 x i32> %i.ru, splat (i32 16) ; 4 uses
  %i.rw = bitcast <4 x i32> %i.rv to <4 x float>
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ry = bitcast <4 x i32> %i.rv to <4 x float>
  %i.rz = shufflevector <4 x float> %i.ry, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.sa = bitcast <4 x i32> %i.rv to <4 x float>
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.sc = bitcast <4 x i32> %i.rv to <4 x float>
  %i.sd = shufflevector <4 x float> %i.sc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.se = getelementptr inbounds nuw i8, ptr %i.qx, i64 14
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit976.us.us.i, %_ZN4ncnn3MatD2Ev.exit975.us.us.i, %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  %.sink.in.i = phi ptr [ %i.se, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qj, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nv, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3695.i = phi <4 x float> [ %i.rd, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ot, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lj, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3691.i.a = phi <4 x float> [ %i.rk, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pa, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lt, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3687.i = phi <4 x float> [ %i.rr, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ph, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.md, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3683.i = phi <4 x float> [ %i.rx, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.po, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.mn, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3679.i = phi <4 x float> [ %i.rz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pu, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.mx, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3674.i = phi <4 x float> [ %i.sb, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qb, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nh, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3669.i = phi <4 x float> [ %i.sd, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qi, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nr, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink.i = load i16, ptr %.sink.in.i, align 2, !tbaa !89
  %i.sf = zext i16 %.sink.i to i32
  %i.sg = shl nuw i32 %i.sf, 16
  %i.sh = insertelement <4 x i32> poison, i32 %i.sg, i64 0
  %i.si = bitcast <4 x i32> %i.sh to <4 x float>
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sk = load i64, ptr %i.kq, align 1, !tbaa !82
  %i.sl = insertelement <2 x i64> poison, i64 %i.sk, i64 0
  %i.sm = bitcast <2 x i64> %i.sl to <8 x i16>
  %i.sn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.so = bitcast <8 x i16> %i.sn to <4 x float>
  %i.sp = fmul fast <4 x float> %.sink3695.i, %i.so
  %i.sq = fadd fast <4 x float> %i.sp, %.323852590.us.us.i
  %i.sr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ss = load i64, ptr %i.sr, align 1, !tbaa !82
  %i.st = insertelement <2 x i64> poison, i64 %i.ss, i64 0
  %i.su = bitcast <2 x i64> %i.st to <8 x i16>
  %i.sv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.su, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sw = bitcast <8 x i16> %i.sv to <4 x float>
  %i.sx = fmul fast <4 x float> %.sink3691.i.a, %i.sw
  %i.sy = fadd fast <4 x float> %i.sx, %.224012589.us.us.i
  %i.sz = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ta = load i64, ptr %i.sz, align 1, !tbaa !82
  %i.tb = insertelement <2 x i64> poison, i64 %i.ta, i64 0
  %i.tc = bitcast <2 x i64> %i.tb to <8 x i16>
  %i.td = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.te = bitcast <8 x i16> %i.td to <4 x float>
  %i.tf = fmul fast <4 x float> %.sink3687.i, %i.te
  %i.tg = fadd fast <4 x float> %i.tf, %.224162588.us.us.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ti = load i64, ptr %i.th, align 1, !tbaa !82
  %i.tj = insertelement <2 x i64> poison, i64 %i.ti, i64 0
  %i.tk = bitcast <2 x i64> %i.tj to <8 x i16>
  %i.tl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tm = bitcast <8 x i16> %i.tl to <4 x float>
  %i.tn = fmul fast <4 x float> %.sink3683.i, %i.tm
  %i.to = fadd fast <4 x float> %i.tn, %.224262587.us.us.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.tq = load i64, ptr %i.tp, align 1, !tbaa !82
  %i.tr = insertelement <2 x i64> poison, i64 %i.tq, i64 0
  %i.ts = bitcast <2 x i64> %i.tr to <8 x i16>
  %i.tt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ts, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tu = bitcast <8 x i16> %i.tt to <4 x float>
  %i.tv = fmul fast <4 x float> %.sink3679.i, %i.tu
  %i.tw = fadd fast <4 x float> %i.sq, %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  %i.ty = load i64, ptr %i.tx, align 1, !tbaa !82
  %i.tz = insertelement <2 x i64> poison, i64 %i.ty, i64 0
  %i.ua = bitcast <2 x i64> %i.tz to <8 x i16>
  %i.ub = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ua, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uc = bitcast <8 x i16> %i.ub to <4 x float>
  %i.ud = fmul fast <4 x float> %.sink3674.i, %i.uc
  %i.ue = fadd fast <4 x float> %i.sy, %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  %i.ug = load i64, ptr %i.uf, align 1, !tbaa !82
  %i.uh = insertelement <2 x i64> poison, i64 %i.ug, i64 0
  %i.ui = bitcast <2 x i64> %i.uh to <8 x i16>
  %i.uj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ui, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uk = bitcast <8 x i16> %i.uj to <4 x float>
  %i.ul = fmul fast <4 x float> %.sink3669.i, %i.uk
  %i.um = fadd fast <4 x float> %i.tg, %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.uo = load i64, ptr %i.un, align 1, !tbaa !82
  %i.up = insertelement <2 x i64> poison, i64 %i.uo, i64 0
  %i.uq = bitcast <2 x i64> %i.up to <8 x i16>
  %i.ur = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.us = bitcast <8 x i16> %i.ur to <4 x float>
  %i.ut = fmul fast <4 x float> %i.sj, %i.us
  %i.uu = fadd fast <4 x float> %i.to, %i.ut
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac, %bb.ab, %bb.aa
  %.32427.us.us.i = phi nsz <4 x float> [ %.224262587.us.us.i, %bb.aa ], [ %.224262587.us.us.i, %bb.ac ], [ %.224262587.us.us.i, %bb.ab ], [ %i.uu, %.sink.split.i ] ; 2 uses
  %.32417.us.us.i = phi nsz <4 x float> [ %.224162588.us.us.i, %bb.aa ], [ %.224162588.us.us.i, %bb.ac ], [ %.224162588.us.us.i, %bb.ab ], [ %i.um, %.sink.split.i ] ; 2 uses
  %.32402.us.us.i = phi nsz <4 x float> [ %.224012589.us.us.i, %bb.aa ], [ %.224012589.us.us.i, %bb.ac ], [ %.224012589.us.us.i, %bb.ab ], [ %i.ue, %.sink.split.i ] ; 2 uses
  %.42386.us.us.i = phi nsz <4 x float> [ %.323852590.us.us.i, %bb.aa ], [ %.323852590.us.us.i, %bb.ac ], [ %.323852590.us.us.i, %bb.ab ], [ %i.tw, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jq
  br i1 %exitcond.not.i, label %..loopexit2577_crit_edge.us.us.i, label %bb.aa, !llvm.loop !535

..loopexit2577_crit_edge.us.us.i:                 ; preds = %bb.ad, %bb.z, %.lr.ph2600.split.us.us.i
  %.42428.us.us.i = phi nsz <4 x float> [ %.124252595.us.us.i, %.lr.ph2600.split.us.us.i ], [ %.124252595.us.us.i, %bb.z ], [ %.32427.us.us.i, %bb.ad ] ; 2 uses
  %.42418.us.us.i = phi nsz <4 x float> [ %.124152596.us.us.i, %.lr.ph2600.split.us.us.i ], [ %.124152596.us.us.i, %bb.z ], [ %.32417.us.us.i, %bb.ad ] ; 2 uses
  %.42403.us.us.i = phi nsz <4 x float> [ %.124002597.us.us.i, %.lr.ph2600.split.us.us.i ], [ %.124002597.us.us.i, %bb.z ], [ %.32402.us.us.i, %bb.ad ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223842598.us.us.i, %.lr.ph2600.split.us.us.i ], [ %.223842598.us.us.i, %bb.z ], [ %.42386.us.us.i, %bb.ad ] ; 2 uses
  %indvars.iv.next3340.i = add nuw nsw i64 %indvars.iv3339.i, 1 ; 2 uses
  %exitcond3343.not.i = icmp eq i64 %indvars.iv.next3340.i, %wide.trip.count3342.i
  br i1 %exitcond3343.not.i, label %._crit_edge.us.i, label %.lr.ph2600.split.us.us.i, !llvm.loop !536

._crit_edge.us.i:                                 ; preds = %..loopexit2577_crit_edge.us.us.i, %.preheader2581.us.i
  %.us-phi.us.i = phi <4 x float> [ %.024242610.us.i, %.preheader2581.us.i ], [ %.42428.us.us.i, %..loopexit2577_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2607.us.i = phi <4 x float> [ %.024142611.us.i, %.preheader2581.us.i ], [ %.42418.us.us.i, %..loopexit2577_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2608.us.i = phi <4 x float> [ %.023992612.us.i, %.preheader2581.us.i ], [ %.42403.us.us.i, %..loopexit2577_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2609.us.i = phi <4 x float> [ %.123832613.us.i, %.preheader2581.us.i ], [ %.5.us.us.i, %..loopexit2577_crit_edge.us.us.i ] ; 2 uses
  %i.uv = getelementptr inbounds [2 x i8], ptr %.07512615.us.i, i64 %i.ir ; 2 uses
  %indvars.iv.next3345.i = add nuw nsw i64 %indvars.iv3344.i, 8 ; 2 uses
  %i.uw = icmp slt i64 %indvars.iv.next3345.i, %invariant.op3660.i
  br i1 %i.uw, label %.preheader2581.us.i, label %.preheader2584.i, !llvm.loop !537

.preheader2584.i:                                 ; preds = %._crit_edge.us.i, %.preheader2581.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02424.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2581.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02414.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2581.preheader.i ], [ %.us-phi2607.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02399.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2581.preheader.i ], [ %.us-phi2608.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12383.lcssa.i = phi <4 x float> [ %.02382.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02382.i, %.preheader2581.preheader.i ], [ %.us-phi2609.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0756.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.ij, %.preheader2581.preheader.i ], [ %i.ij, %._crit_edge.us.i ] ; 7 uses
  %.0751.lcssa.i = phi ptr [ %i.jh, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3337.i, %.preheader2581.preheader.i ], [ %i.uv, %._crit_edge.us.i ] ; 4 uses
  %i.ux = or disjoint i32 %.0756.lcssa.i, 3       ; 2 uses
  %i.uy = icmp slt i32 %i.ux, %i.he
  br i1 %i.uy, label %.preheader2580.lr.ph.i, label %.preheader2583.i

.preheader2580.lr.ph.i:                           ; preds = %.preheader2584.i
  %i.uz = load i32, ptr %i.d, align 4             ; 2 uses
  %i.va = load i32, ptr %i.j, align 4
  %invariant.op2681.i = sub i32 %.neg2539.i, %i.va ; 2 uses
  %i.vb = load i32, ptr %i.f, align 4             ; 4 uses
  %i.vc = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.vc                       ; 2 uses
  %i.vd = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ve = load i32, ptr %i.i, align 4
  %.neg2537.i = add nuw nsw i32 %.07482804.i, 1
  %invariant.op2645.i = sub i32 %.neg2537.i, %i.ve ; 2 uses
  %i.vf = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.io, label %.preheader2580.lr.ph.split.us.i, label %.preheader2580.preheader.i

.preheader2580.preheader.i:                       ; preds = %.preheader2580.lr.ph.i
  %i.vg = sub i32 %i.il, %.0756.lcssa.i           ; 2 uses
  %i.vh = lshr i32 %i.vg, 1
  %i.vi = and i32 %i.vh, 2147483646
  %narrow3636.i = add nuw i32 %i.vi, 2
  %i.vj = zext i32 %narrow3636.i to i64
  %i.vk = mul nsw i64 %i.vj, %i.it
  %scevgep3347.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vk
  %i.vl = add i32 %.0756.lcssa.i, 4
  %i.vm = and i32 %i.vg, -4
  %i.vn = add i32 %i.vl, %i.vm
  br label %.preheader2583.i

.preheader2580.lr.ph.split.us.i:                  ; preds = %.preheader2580.lr.ph.i
  %i.vo = icmp sgt i32 %.fr.i, 0
  br i1 %i.vo, label %.preheader2580.us.us.preheader.i, label %.preheader2580.us.preheader.i

.preheader2580.us.preheader.i:                    ; preds = %.preheader2580.lr.ph.split.us.i
  %i.vp = sub i32 %i.il, %.0756.lcssa.i           ; 2 uses
  %i.vq = lshr i32 %i.vp, 1
  %i.vr = and i32 %i.vq, 2147483646
  %narrow3637.i = add nuw i32 %i.vr, 2
  %i.vs = zext i32 %narrow3637.i to i64
  %i.vt = mul nsw i64 %i.vs, %i.it
  %scevgep3348.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vt
  %i.vu = add i32 %.0756.lcssa.i, 4
  %i.vv = and i32 %i.vp, -4
  %i.vw = add i32 %i.vu, %i.vv
  br label %.preheader2583.i

.preheader2580.us.us.preheader.i:                 ; preds = %.preheader2580.lr.ph.split.us.i
  %i.vx = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.vy = zext i32 %.0756.lcssa.i to i64
  %i.vz = zext nneg i32 %i.ux to i64
  br label %.preheader2580.us.us.i

.preheader2580.us.us.i:                           ; preds = %._crit_edge.split.us.us2717.us.i, %.preheader2580.us.us.preheader.i
  %indvars.iv3364.i = phi i64 [ %i.vy, %.preheader2580.us.us.preheader.i ], [ %indvars.iv.next3365.i, %._crit_edge.split.us.us2717.us.i ] ; 5 uses
  %i.wa = phi i64 [ %i.vz, %.preheader2580.us.us.preheader.i ], [ %i.acr, %._crit_edge.split.us.us2717.us.i ]
  %.17522702.us.us.i = phi ptr [ %.0751.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %i.acq, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %.623872700.us.us.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %.us-phi76, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %.524042699.us.us.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %.us-phi75, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %.524192698.us.us.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %.us-phi74, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %.524292697.us.us.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2580.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2717.us.i ] ; 3 uses
  %i.wb = add nuw nsw i64 %indvars.iv3364.i, 1
  %i.wc = add nuw nsw i64 %indvars.iv3364.i, 2
  %i.wd = lshr exact i64 %indvars.iv3364.i, 2
  switch i32 %.fr2670.i, label %._crit_edge.split.us.us2717.us.i [
    i32 4, label %.preheader2580.us.us.i.split.us
    i32 1, label %.preheader2580.us.us.i.split.us77
  ]

.preheader2580.us.us.i.split.us:                  ; preds = %.preheader2580.us.us.i, %..loopexit2575_crit_edge.us.us.us.i.us
  %indvars.iv3359.i.us = phi i64 [ %indvars.iv.next3360.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ 0, %.preheader2580.us.us.i ] ; 3 uses
  %.72674.us.us.us.i.us = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.623872700.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624052673.us.us.us.i.us = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524042699.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624202672.us.us.us.i.us = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524192698.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %.624302671.us.us.us.i.us = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2575_crit_edge.us.us.us.i.us ], [ %.524292697.us.us.i, %.preheader2580.us.us.i ] ; 3 uses
  %i.we = trunc i64 %indvars.iv3359.i.us to i32
  %i.wf = mul i32 %i.uz, %i.we
  %.reass2682.us.us.us.i.us = add i32 %i.wf, %invariant.op2681.i ; 3 uses
  %i.wg = icmp slt i32 %.reass2682.us.us.us.i.us, 0
  br i1 %i.wg, label %..loopexit2575_crit_edge.us.us.us.i.us, label %bb.ae

bb.ae:                                            ; preds = %.preheader2580.us.us.i.split.us
  %i.wh = srem i32 %.reass2682.us.us.us.i.us, %i.vb
  %i.wi = sdiv i32 %.reass2682.us.us.us.i.us, %i.vb ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.wh, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.wi, %i.hg
  %or.cond300 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond300, label %.preheader2574.us.us.us.i.us, label %..loopexit2575_crit_edge.us.us.us.i.us

.preheader2574.us.us.us.i.us:                     ; preds = %bb.ae
  %i.wj = mul nuw nsw i64 %indvars.iv3359.i.us, %i.vx
  %i.wk = sext i32 %i.wi to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2574.us.us.us.i.us, %bb.ag
  %indvars.iv3354.i.us = phi i64 [ %indvars.iv.next3355.i.us, %bb.ag ], [ 0, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %.823882639.us.us.us.us.i.us = phi <4 x float> [ %.92389.us.us.us.us.i.us, %bb.ag ], [ %.72674.us.us.us.i.us, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %.724062638.us.us.us.us.i.us = phi <4 x float> [ %.82407.us.us.us.us.i.us, %bb.ag ], [ %.624052673.us.us.us.i.us, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %.724212637.us.us.us.us.i.us = phi <4 x float> [ %.82422.us.us.us.us.i.us, %bb.ag ], [ %.624202672.us.us.us.i.us, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %.724312636.us.us.us.us.i.us = phi <4 x float> [ %.82432.us.us.us.us.i.us, %bb.ag ], [ %.624302671.us.us.us.i.us, %.preheader2574.us.us.us.i.us ] ; 3 uses
  %i.wl = trunc i64 %indvars.iv3354.i.us to i32
  %i.wm = mul i32 %i.vd, %i.wl
  %.reass.us.us2683.us.us.i.us = add i32 %i.wm, %invariant.op2645.i ; 3 uses
  %i.wn = icmp slt i32 %.reass.us.us2683.us.us.i.us, 0
  br i1 %i.wn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.wo = srem i32 %.reass.us.us2683.us.us.i.us, %i.vf
  %i.wp = sdiv i32 %.reass.us.us2683.us.us.i.us, %i.vf ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.wo, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.wp, %i.hf
  %or.cond301 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond301, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.ag

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.af
  %i.wq = add nuw nsw i64 %indvars.iv3354.i.us, %i.wj
  %i.wr = shl i64 %i.wq, 4
  %i.ws = and i64 %i.wr, 4294967280
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %.17522702.us.us.i, i64 %i.ws ; 4 uses
  %i.wu = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !625
  %i.wv = load ptr, ptr %1, align 8, !tbaa !20, !noalias !625
  %i.ww = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !625
  %i.wx = mul i64 %i.ww, %i.wd
  %i.wy = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !625 ; 2 uses
  %i.wz = mul i64 %i.wx, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wz
  %i.xb = sext i32 %i.wu to i64
  %i.xc = mul nsw i64 %i.xb, %i.wk
  %i.xd = mul i64 %i.xc, %i.wy
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xd
  %i.xf = shl nsw i32 %i.wp, 2
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [2 x i8], ptr %i.xe, i64 %i.xg
  %i.xi = load <4 x i16>, ptr %i.xh, align 2, !tbaa !89
  %i.xj = zext <4 x i16> %i.xi to <4 x i32>
  %i.xk = shl nuw <4 x i32> %i.xj, splat (i32 16) ; 4 uses
  %i.xl = bitcast <4 x i32> %i.xk to <4 x float>
  %i.xm = shufflevector <4 x float> %i.xl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xn = bitcast <4 x i32> %i.xk to <4 x float>
  %i.xo = shufflevector <4 x float> %i.xn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.xp = bitcast <4 x i32> %i.xk to <4 x float>
  %i.xq = shufflevector <4 x float> %i.xp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.xr = bitcast <4 x i32> %i.xk to <4 x float>
  %i.xs = shufflevector <4 x float> %i.xr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.xt = load i64, ptr %i.wt, align 1, !tbaa !82
  %i.xu = insertelement <2 x i64> poison, i64 %i.xt, i64 0
  %i.xv = bitcast <2 x i64> %i.xu to <8 x i16>
  %i.xw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xx = bitcast <8 x i16> %i.xw to <4 x float>
  %i.xy = fmul fast <4 x float> %i.xm, %i.xx
  %i.xz = fadd fast <4 x float> %i.xy, %.823882639.us.us.us.us.i.us
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.yb = load i64, ptr %i.ya, align 1, !tbaa !82
  %i.yc = insertelement <2 x i64> poison, i64 %i.yb, i64 0
  %i.yd = bitcast <2 x i64> %i.yc to <8 x i16>
  %i.ye = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yf = bitcast <8 x i16> %i.ye to <4 x float>
  %i.yg = fmul fast <4 x float> %i.xo, %i.yf
  %i.yh = fadd fast <4 x float> %i.yg, %.724062638.us.us.us.us.i.us
  %i.yi = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.yj = load i64, ptr %i.yi, align 1, !tbaa !82
  %i.yk = insertelement <2 x i64> poison, i64 %i.yj, i64 0
end_hunk_4
begin_hunk_5_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.agi = icmp sgt i32 %i.he, %i.agh
  br i1 %i.agi, label %.preheader2579.us.us.i, label %.preheader2582.loopexit.i, !llvm.loop !549

.preheader2582.loopexit.i:                        ; preds = %._crit_edge.split.us.us2764.us.i
  %i.agj = trunc nuw i64 %indvars.iv.next3380.i to i32
  br label %.preheader2582.i

.preheader2582.i:                                 ; preds = %.preheader2582.loopexit.i, %.preheader2579.us.preheader.i, %.preheader2579.preheader.i, %.preheader2583.i
  %.102409.lcssa.i = phi <4 x float> [ %.52404.lcssa.i, %.preheader2583.i ], [ %.142413.us.us.us.i, %.preheader2582.loopexit.i ], [ %.52404.lcssa.i, %.preheader2579.us.preheader.i ], [ %.52404.lcssa.i, %.preheader2579.preheader.i ]
  %.112391.lcssa.i = phi <4 x float> [ %.62387.lcssa.i, %.preheader2583.i ], [ %.152393.us.us.us.i, %.preheader2582.loopexit.i ], [ %.62387.lcssa.i, %.preheader2579.us.preheader.i ], [ %.62387.lcssa.i, %.preheader2579.preheader.i ] ; 3 uses
  %.2758.lcssa.i = phi i32 [ %.1757.lcssa.i, %.preheader2583.i ], [ %i.agj, %.preheader2582.loopexit.i ], [ %i.ads, %.preheader2579.us.preheader.i ], [ %i.adk, %.preheader2579.preheader.i ] ; 2 uses
  %.2753.lcssa.i = phi ptr [ %.1752.lcssa.i, %.preheader2583.i ], [ %i.agf, %.preheader2582.loopexit.i ], [ %scevgep3368.i, %.preheader2579.us.preheader.i ], [ %scevgep3367.i, %.preheader2579.preheader.i ]
  %i.agk = icmp slt i32 %.2758.lcssa.i, %i.he
  br i1 %i.agk, label %.preheader2578.lr.ph.i, label %._crit_edge2790.i

.preheader2578.lr.ph.i:                           ; preds = %.preheader2582.i
  %i.agl = load i32, ptr %i.d, align 4
  %i.agm = load i32, ptr %i.j, align 4
  %invariant.op2782.i = sub i32 %.neg2539.i, %i.agm
  %i.agn = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ago = load i32, ptr %i.a, align 4
  %.fr3240.i = freeze i32 %i.ago                  ; 2 uses
  %i.agp = load i32, ptr %i.c, align 4
  %i.agq = load i32, ptr %i.i, align 4
  %.neg2529.i = add nuw nsw i32 %.07482804.i, 1
  %invariant.op2777.i = sub i32 %.neg2529.i, %i.agq
  %i.agr = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ags = icmp sgt i32 %.fr3240.i, 0
  %or.cond.i = and i1 %i.io, %i.ags
  br i1 %or.cond.i, label %.preheader2578.us.us.preheader.i, label %._crit_edge2790.i

.preheader2578.us.us.preheader.i:                 ; preds = %.preheader2578.lr.ph.i
  %i.agt = zext nneg i32 %.fr3240.i to i64        ; 2 uses
  %i.agu = zext i32 %.2758.lcssa.i to i64
  br label %.preheader2578.us.us.i

.preheader2578.us.us.i:                           ; preds = %._crit_edge.split.us.us2800.us.i, %.preheader2578.us.us.preheader.i
  %indvars.iv3392.i = phi i64 [ %i.agu, %.preheader2578.us.us.preheader.i ], [ %indvars.iv.next3393.i, %._crit_edge.split.us.us2800.us.i ] ; 2 uses
  %.37542788.us.us.i = phi ptr [ %.2753.lcssa.i, %.preheader2578.us.us.preheader.i ], [ %i.ail, %._crit_edge.split.us.us2800.us.i ] ; 2 uses
  %.162786.us.us.i = phi <4 x float> [ %.112391.lcssa.i, %.preheader2578.us.us.preheader.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2800.us.i ]
  br label %bb.ap

bb.ap:                                            ; preds = %..loopexit2571_crit_edge.us.us.us.i, %.preheader2578.us.us.i
  %indvars.iv3387.i = phi i64 [ %indvars.iv.next3388.i, %..loopexit2571_crit_edge.us.us.us.i ], [ 0, %.preheader2578.us.us.i ] ; 3 uses
  %.172778.us.us.us.i = phi <4 x float> [ %.20.us.us.us.i, %..loopexit2571_crit_edge.us.us.us.i ], [ %.162786.us.us.i, %.preheader2578.us.us.i ] ; 3 uses
  %i.agv = trunc i64 %indvars.iv3387.i to i32
  %i.agw = mul i32 %i.agl, %i.agv
  %.reass2783.us.us.us.i = add i32 %i.agw, %invariant.op2782.i ; 3 uses
  %i.agx = icmp slt i32 %.reass2783.us.us.us.i, 0
  br i1 %i.agx, label %..loopexit2571_crit_edge.us.us.us.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.agy = srem i32 %.reass2783.us.us.us.i, %i.agn
  %i.agz = sdiv i32 %.reass2783.us.us.us.i, %i.agn ; 2 uses
  %.not922.us.us.us.i = icmp eq i32 %i.agy, 0
  %.not923.us.us.us.i = icmp slt i32 %i.agz, %i.hg
  %or.cond306 = select i1 %.not922.us.us.us.i, i1 %.not923.us.us.us.i, i1 false
  br i1 %or.cond306, label %.preheader2570.us.us.us.i, label %..loopexit2571_crit_edge.us.us.us.i

.preheader2570.us.us.us.i:                        ; preds = %bb.aq
  %i.aha = mul nuw nsw i64 %indvars.iv3387.i, %i.agt
  %i.ahb = sext i32 %i.agz to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.preheader2570.us.us.us.i
  %indvars.iv3382.i = phi i64 [ %indvars.iv.next3383.i, %bb.at ], [ 0, %.preheader2570.us.us.us.i ] ; 3 uses
  %.182774.us.us.us.i = phi <4 x float> [ %.19.us.us.us.i, %bb.at ], [ %.172778.us.us.us.i, %.preheader2570.us.us.us.i ] ; 3 uses
  %i.ahc = trunc i64 %indvars.iv3382.i to i32
  %i.ahd = mul i32 %i.agp, %i.ahc
  %.reass.us.us2799.us.i = add i32 %invariant.op2777.i, %i.ahd ; 3 uses
  %i.ahe = icmp slt i32 %.reass.us.us2799.us.i, 0
  br i1 %i.ahe, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ahf = srem i32 %.reass.us.us2799.us.i, %i.agr
  %i.ahg = sdiv i32 %.reass.us.us2799.us.i, %i.agr ; 2 uses
  %.not924.us.us.us.i = icmp eq i32 %i.ahf, 0
  %.not925.us.us.us.i = icmp slt i32 %i.ahg, %i.hf
  %or.cond307 = select i1 %.not924.us.us.us.i, i1 %.not925.us.us.us.i, i1 false
  br i1 %or.cond307, label %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, label %bb.at

_ZN4ncnn3MatD2Ev.exit958.us.us.us.i:              ; preds = %bb.as
  %i.ahh = add nuw nsw i64 %indvars.iv3382.i, %i.aha
  %i.ahi = shl i64 %i.ahh, 2
  %i.ahj = and i64 %i.ahi, 4294967292
  %i.ahk = getelementptr inbounds nuw [2 x i8], ptr %.37542788.us.us.i, i64 %i.ahj
  %i.ahl = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !628
  %i.ahm = load ptr, ptr %1, align 8, !tbaa !20, !noalias !628
  %i.ahn = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !628
  %i.aho = mul i64 %i.ahn, %indvars.iv3392.i
  %i.ahp = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !628 ; 2 uses
  %i.ahq = mul i64 %i.aho, %i.ahp
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %i.ahq
  %i.ahs = sext i32 %i.ahl to i64
  %i.aht = mul nsw i64 %i.ahs, %i.ahb
  %i.ahu = mul i64 %i.aht, %i.ahp
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.ahu
  %i.ahw = sext i32 %i.ahg to i64
  %i.ahx = getelementptr inbounds [2 x i8], ptr %i.ahv, i64 %i.ahw
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !89
  %i.ahz = zext i16 %i.ahy to i32
  %i.aia = shl nuw i32 %i.ahz, 16
  %i.aib = insertelement <4 x i32> poison, i32 %i.aia, i64 0
  %i.aic = bitcast <4 x i32> %i.aib to <4 x float>
  %i.aid = shufflevector <4 x float> %i.aic, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aie = load i64, ptr %i.ahk, align 1, !tbaa !82
  %i.aif = insertelement <2 x i64> poison, i64 %i.aie, i64 0
  %i.aig = bitcast <2 x i64> %i.aif to <8 x i16>
  %i.aih = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aig, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aii = bitcast <8 x i16> %i.aih to <4 x float>
  %i.aij = fmul fast <4 x float> %i.aid, %i.aii
  %i.aik = fadd fast <4 x float> %i.aij, %.182774.us.us.us.i
  br label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, %bb.as, %bb.ar
  %.19.us.us.us.i = phi nsz <4 x float> [ %.182774.us.us.us.i, %bb.ar ], [ %i.aik, %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i ], [ %.182774.us.us.us.i, %bb.as ] ; 2 uses
  %indvars.iv.next3383.i = add nuw nsw i64 %indvars.iv3382.i, 1 ; 2 uses
  %exitcond3386.not.i = icmp eq i64 %indvars.iv.next3383.i, %i.agt
  br i1 %exitcond3386.not.i, label %..loopexit2571_crit_edge.us.us.us.i, label %bb.ar, !llvm.loop !552

..loopexit2571_crit_edge.us.us.us.i:              ; preds = %bb.at, %bb.aq, %bb.ap
  %.20.us.us.us.i = phi nsz <4 x float> [ %.172778.us.us.us.i, %bb.ap ], [ %.172778.us.us.us.i, %bb.aq ], [ %.19.us.us.us.i, %bb.at ] ; 3 uses
  %indvars.iv.next3388.i = add nuw nsw i64 %indvars.iv3387.i, 1 ; 2 uses
  %exitcond3391.not.i = icmp eq i64 %indvars.iv.next3388.i, %wide.trip.count3342.i
  br i1 %exitcond3391.not.i, label %._crit_edge.split.us.us2800.us.i, label %bb.ap, !llvm.loop !553

._crit_edge.split.us.us2800.us.i:                 ; preds = %..loopexit2571_crit_edge.us.us.us.i
  %i.ail = getelementptr inbounds [2 x i8], ptr %.37542788.us.us.i, i64 %i.ix
  %indvars.iv.next3393.i = add nuw nsw i64 %indvars.iv3392.i, 1 ; 2 uses
  %i.aim = trunc nuw i64 %indvars.iv.next3393.i to i32
  %i.ain = icmp sgt i32 %i.he, %i.aim
  br i1 %i.ain, label %.preheader2578.us.us.i, label %._crit_edge2790.i, !llvm.loop !554

._crit_edge2790.i:                                ; preds = %._crit_edge.split.us.us2800.us.i, %.preheader2578.lr.ph.i, %.preheader2582.i
  %.16.lcssa.i = phi <4 x float> [ %.112391.lcssa.i, %.preheader2582.i ], [ %.112391.lcssa.i, %.preheader2578.lr.ph.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2800.us.i ]
  %i.aio = fadd fast <4 x float> %.52419.lcssa.i, %.52429.lcssa.i
  %i.aip = fadd fast <4 x float> %i.aio, %.102409.lcssa.i
  %i.aiq = fadd fast <4 x float> %i.aip, %.16.lcssa.i ; 10 uses
  switch i32 %i.hv, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 3, label %bb.aw
    i32 4, label %bb.ax
    i32 5, label %bb.ay
    i32 6, label %bb.az
  ]

bb.au:                                            ; preds = %._crit_edge2790.i
  %i.air = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aiq, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.av:                                            ; preds = %._crit_edge2790.i
  %i.ais = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !39
  %i.aiu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aiq)
  %i.aiv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %i.aiq)
  %i.aiw = insertelement <4 x float> poison, float %i.ait, i64 0
  %i.aix = shufflevector <4 x float> %i.aiw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiy = fmul fast <4 x float> %i.aix, %i.aiv
  %i.aiz = fadd fast <4 x float> %i.aiy, %i.aiu
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.aw:                                            ; preds = %._crit_edge2790.i
  %i.aja = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !39
  %i.ajc = insertelement <4 x float> poison, float %i.ajb, i64 0
  %i.ajd = shufflevector <4 x float> %i.ajc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !39
  %i.ajg = insertelement <4 x float> poison, float %i.ajf, i64 0
  %i.ajh = shufflevector <4 x float> %i.ajg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aiq, <4 x float> nofpclass(nan inf) %i.ajd)
  %i.ajj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aji, <4 x float> nofpclass(nan inf) %i.ajh)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ax:                                            ; preds = %._crit_edge2790.i
  %i.ajk = fneg fast <4 x float> %i.aiq
  %i.ajl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ajk, <4 x float> splat (float f0x42B0C0A5))
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
  %i.aki = fadd fast <4 x float> %i.ajv, splat (float 1.000000e+00)
  %i.akj = fadd fast <4 x float> %i.aki, %i.akh
  %i.akk = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ajt)
  %i.akl = shl <4 x i32> %i.akk, splat (i32 23)
  %i.akm = add <4 x i32> %i.akl, splat (i32 1065353216)
  %i.akn = bitcast <4 x i32> %i.akm to <4 x float>
  %i.ako = fmul fast <4 x float> %i.akj, %i.akn
  %i.akp = fadd fast <4 x float> %i.ako, splat (float 1.000000e+00)
  %i.akq = fdiv fast <4 x float> splat (float 1.000000e+00), %i.akp
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.ay:                                            ; preds = %._crit_edge2790.i
  %i.akr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aiq, <4 x float> splat (float f0x42B0C0A5))
  %i.aks = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.akr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.akt = fmul fast <4 x float> %i.aks, splat (float f0x3FB8AA3B)
  %i.aku = fadd fast <4 x float> %i.akt, splat (float 5.000000e-01) ; 2 uses
  %i.akv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aku)
  %i.akw = sitofp fast <4 x i32> %i.akv to <4 x float> ; 2 uses
  %i.akx = fcmp fast olt <4 x float> %i.aku, %i.akw
  %i.aky = select <4 x i1> %i.akx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.akz = fsub fast <4 x float> %i.akw, %i.aky   ; 2 uses
  %i.ala = fmul fast <4 x float> %i.akz, splat (float f0x3F317218)
  %i.alb = fsub fast <4 x float> %i.aks, %i.ala   ; 8 uses
  %i.alc = fmul fast <4 x float> %i.alb, %i.alb
  %i.ald = fmul fast <4 x float> %i.alb, splat (float f0x39506967)
  %i.ale = fadd fast <4 x float> %i.ald, splat (float f0x3AB743CE)
  %i.alf = fmul fast <4 x float> %i.ale, %i.alb
  %i.alg = fadd fast <4 x float> %i.alf, splat (float f0x3C088908)
  %i.alh = fmul fast <4 x float> %i.alg, %i.alb
  %i.ali = fadd fast <4 x float> %i.alh, splat (float f0x3D2AA9C1)
  %i.alj = fmul fast <4 x float> %i.ali, %i.alb
  %i.alk = fadd fast <4 x float> %i.alj, splat (float f0x3E2AAAAA)
  %i.all = fmul fast <4 x float> %i.alk, %i.alb
  %i.alm = fadd fast <4 x float> %i.all, splat (float 5.000000e-01)
  %i.aln = fmul fast <4 x float> %i.alc, %i.alm
  %i.alo = fadd fast <4 x float> %i.alb, splat (float 1.000000e+00)
  %i.alp = fadd fast <4 x float> %i.alo, %i.aln
  %i.alq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.akz)
  %i.alr = shl <4 x i32> %i.alq, splat (i32 23)
  %i.als = add <4 x i32> %i.alr, splat (i32 1065353216)
  %i.alt = bitcast <4 x i32> %i.als to <4 x float>
  %i.alu = fmul fast <4 x float> %i.alp, %i.alt
  %i.alv = fadd fast <4 x float> %i.alu, splat (float 1.000000e+00) ; 2 uses
  %i.alw = fcmp fast ole <4 x float> %i.alv, zeroinitializer
  %i.alx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.alv, <4 x float> splat (float f0x00800000))
  %i.aly = bitcast <4 x float> %i.alx to <4 x i32> ; 2 uses
  %i.alz = lshr <4 x i32> %i.aly, splat (i32 23)
  %i.ama = and <4 x i32> %i.aly, splat (i32 -2139095041)
  %i.amb = or disjoint <4 x i32> %i.ama, splat (i32 1056964608)
  %i.amc = bitcast <4 x i32> %i.amb to <4 x float> ; 3 uses
  %i.amd = add nsw <4 x i32> %i.alz, splat (i32 -127)
  %i.ame = sitofp fast <4 x i32> %i.amd to <4 x float> ; 2 uses
  %i.amf = fadd fast <4 x float> %i.ame, splat (float 1.000000e+00)
  %i.amg = fcmp fast olt <4 x float> %i.amc, splat (float f0x3F3504F3) ; 2 uses
  %i.amh = select <4 x i1> %i.amg, <4 x float> %i.amc, <4 x float> zeroinitializer
  %i.ami = fadd fast <4 x float> %i.amc, splat (float -1.000000e+00)
  %i.amj = select fast <4 x i1> %i.amg, <4 x float> %i.ame, <4 x float> %i.amf
  %i.amk = fadd fast <4 x float> %i.ami, %i.amh   ; 12 uses
  %i.aml = fmul fast <4 x float> %i.amk, %i.amk
  %i.amm = fmul fast <4 x float> %i.amk, splat (float f0x3D9021BB)
  %i.amn = fadd fast <4 x float> %i.amm, splat (float f0xBDEBD1B8)
  %i.amo = fmul fast <4 x float> %i.amn, %i.amk
  %i.amp = fadd fast <4 x float> %i.amo, splat (float f0x3DEF251A)
  %i.amq = fmul fast <4 x float> %i.amp, %i.amk
  %i.amr = fadd fast <4 x float> %i.amq, splat (float f0xBDFE5D4F)
  %i.ams = fmul fast <4 x float> %i.amr, %i.amk
  %i.amt = fadd fast <4 x float> %i.ams, splat (float f0x3E11E9BF)
  %i.amu = fmul fast <4 x float> %i.amt, %i.amk
  %i.amv = fadd fast <4 x float> %i.amu, splat (float f0xBE2AAE50)
  %i.amw = fmul fast <4 x float> %i.amv, %i.amk
  %i.amx = fadd fast <4 x float> %i.amw, splat (float f0x3E4CCEAC)
  %i.amy = fmul fast <4 x float> %i.amx, %i.amk
  %i.amz = fadd fast <4 x float> %i.amy, splat (float f0xBE7FFFFC)
  %i.ana = fmul fast <4 x float> %i.amz, %i.amk
  %i.anb = fadd fast <4 x float> %i.ana, splat (float f0x3EAAAAAA)
  %i.anc = fmul fast <4 x float> %i.anb, %i.amk
  %reass.mul.i = fmul fast <4 x float> %i.amj, splat (float f0x3F317218)
  %reass.add2524.i = fadd fast <4 x float> %i.anc, splat (float -5.000000e-01)
  %reass.mul2525.i = fmul fast <4 x float> %i.aml, %reass.add2524.i
  %i.and = fadd fast <4 x float> %reass.mul.i, %i.amk
  %i.ane = fadd fast <4 x float> %i.and, %reass.mul2525.i
  %.neg.i = fmul fast <4 x float> %i.ane, splat (float -2.000000e+00)
  %i.anf = select fast <4 x i1> %i.alw, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg.i
  %i.ang = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.anf, <4 x float> splat (float f0x42B0C0A5))
  %i.anh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ang, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ani = fmul fast <4 x float> %i.anh, splat (float f0x3FB8AA3B)
  %i.anj = fadd fast <4 x float> %i.ani, splat (float 5.000000e-01) ; 2 uses
  %i.ank = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.anj)
  %i.anl = sitofp fast <4 x i32> %i.ank to <4 x float> ; 2 uses
  %i.anm = fcmp fast olt <4 x float> %i.anj, %i.anl
  %i.ann = select <4 x i1> %i.anm, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ano = fsub fast <4 x float> %i.anl, %i.ann   ; 2 uses
  %i.anp = fmul fast <4 x float> %i.ano, splat (float f0x3F317218)
  %i.anq = fsub fast <4 x float> %i.anh, %i.anp   ; 8 uses
  %i.anr = fmul fast <4 x float> %i.anq, %i.anq
  %i.ans = fmul fast <4 x float> %i.anq, splat (float f0x39506967)
  %i.ant = fadd fast <4 x float> %i.ans, splat (float f0x3AB743CE)
  %i.anu = fmul fast <4 x float> %i.ant, %i.anq
  %i.anv = fadd fast <4 x float> %i.anu, splat (float f0x3C088908)
  %i.anw = fmul fast <4 x float> %i.anv, %i.anq
  %i.anx = fadd fast <4 x float> %i.anw, splat (float f0x3D2AA9C1)
  %i.any = fmul fast <4 x float> %i.anx, %i.anq
  %i.anz = fadd fast <4 x float> %i.any, splat (float f0x3E2AAAAA)
  %i.aoa = fmul fast <4 x float> %i.anz, %i.anq
  %i.aob = fadd fast <4 x float> %i.aoa, splat (float 5.000000e-01)
  %i.aoc = fmul fast <4 x float> %i.anr, %i.aob
  %i.aod = fadd fast <4 x float> %i.anq, splat (float 1.000000e+00)
  %i.aoe = fadd fast <4 x float> %i.aod, %i.aoc
  %i.aof = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ano)
  %i.aog = shl <4 x i32> %i.aof, splat (i32 23)
  %i.aoh = add <4 x i32> %i.aog, splat (i32 1065353216)
  %i.aoi = bitcast <4 x i32> %i.aoh to <4 x float>
  %i.aoj = fmul fast <4 x float> %i.aoe, %i.aoi
  %i.aok = fadd fast <4 x float> %i.aoj, splat (float 1.000000e+00)
  %i.aol = fdiv fast <4 x float> splat (float 2.000000e+00), %i.aok
  %i.aom = fadd fast <4 x float> %i.aol, splat (float -1.000000e+00)
  %i.aon = fmul fast <4 x float> %i.aom, %i.aiq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

bb.az:                                            ; preds = %._crit_edge2790.i
  %i.aoo = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.aop = load float, ptr %i.aoo, align 4, !tbaa !39
  %i.aoq = insertelement <4 x float> poison, float %i.aop, i64 0
  %i.aor = shufflevector <4 x float> %i.aoq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoo, i64 4
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !39
  %i.aou = insertelement <4 x float> poison, float %i.aot, i64 0
  %i.aov = shufflevector <4 x float> %i.aou, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aow = fmul fast <4 x float> %i.aor, %i.aiq
  %i.aox = fadd fast <4 x float> %i.aow, %i.aov
  %i.aoy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aox, <4 x float> zeroinitializer)
  %i.aoz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.aoy, <4 x float> splat (float 1.000000e+00))
  %i.apa = fmul fast <4 x float> %i.aoz, %i.aiq
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i:    ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %._crit_edge2790.i
  %.0.i.i = phi nsz <4 x float> [ %i.apa, %bb.az ], [ %i.air, %bb.au ], [ %i.aiz, %bb.av ], [ %i.ajj, %bb.aw ], [ %i.akq, %bb.ax ], [ %i.aon, %bb.ay ], [ %i.aiq, %._crit_edge2790.i ] ; 2 uses
  switch i32 %i.hj, label %bb.bb [
    i32 4, label %.thread.i
    i32 1, label %bb.ba
  ]

.thread.i:                                        ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.apb = bitcast <4 x float> %.0.i.i to <4 x i32>
  %i.apc = lshr <4 x i32> %i.apb, splat (i32 16)
  %i.apd = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.apc, <4 x i32> poison)
  %i.ape = bitcast <8 x i16> %i.apd to <2 x i64>
  %i.apf = extractelement <2 x i64> %i.ape, i64 0
  store i64 %i.apf, ptr %.17402805.i, align 1, !tbaa !82
  %i.apg = getelementptr inbounds nuw i8, ptr %.17402805.i, i64 8
  br label %bb.bb

bb.ba:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %i.aph = bitcast <4 x float> %.0.i.i to <8 x i16> ; 4 uses
  %i.api = extractelement <8 x i16> %i.aph, i64 1
  store i16 %i.api, ptr %.17402805.i, align 2, !tbaa !89
  %i.apj = extractelement <8 x i16> %i.aph, i64 3
  %i.apk = load i64, ptr %i.h, align 8, !tbaa !84 ; 3 uses
  %i.apl = getelementptr inbounds nuw [2 x i8], ptr %.17402805.i, i64 %i.apk
  store i16 %i.apj, ptr %i.apl, align 2, !tbaa !89
  %i.apm = extractelement <8 x i16> %i.aph, i64 5
  %.idx.i = shl i64 %i.apk, 2
  %i.apn = getelementptr inbounds nuw i8, ptr %.17402805.i, i64 %.idx.i
  store i16 %i.apm, ptr %i.apn, align 2, !tbaa !89
  %i.apo = extractelement <8 x i16> %i.aph, i64 7
  %.idx921.i = mul i64 %i.apk, 6
  %i.app = getelementptr inbounds nuw i8, ptr %.17402805.i, i64 %.idx921.i
  store i16 %i.apo, ptr %i.app, align 2, !tbaa !89
  %i.apq = getelementptr inbounds nuw i8, ptr %.17402805.i, i64 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i
  %.3742.i = phi ptr [ %i.apq, %bb.ba ], [ %.17402805.i, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit.i ], [ %i.apg, %.thread.i ] ; 2 uses
  %i.apr = add nuw nsw i32 %.07482804.i, 1        ; 2 uses
  %exitcond3395.not.i = icmp eq i32 %i.apr, %i.hh
  br i1 %exitcond3395.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !555

._crit_edge3037.split.i:                          ; preds = %._crit_edge3035.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.i, %._crit_edge2810.i
  %i.aps = shl nsw i32 %i.fs, 1                   ; 2 uses
  %i.apt = add nsw i32 %i.aps, %i.fq
  %i.apu = icmp slt i32 %i.apt, %i.ek
  br i1 %i.apu, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i, label %.loopexit

_ZN4ncnn3MatD2Ev.exit946.lr.ph.i:                 ; preds = %._crit_edge3037.split.i
  %i.apv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.apw = load i32, ptr %i.apv, align 8, !tbaa !60
  %.fr3107.i = freeze i32 %i.apw                  ; 3 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.apy = load i32, ptr %i.apx, align 8, !tbaa !62
  %i.apz = mul i32 %i.apy, %.fr3107.i             ; 12 uses
  %i.aqa = load i32, ptr %i.o, align 4, !tbaa !54 ; 6 uses
  %i.aqb = load i32, ptr %i.p, align 8, !tbaa !66 ; 5 uses
  %i.aqc = load i32, ptr %i.bj, align 4, !tbaa !54 ; 2 uses
  %i.aqd = load i32, ptr %i.bk, align 16, !tbaa !66 ; 2 uses
  %i.aqe = load ptr, ptr %4, align 16, !tbaa !20, !noalias !629
  %i.aqf = load i64, ptr %i.bm, align 16, !tbaa !21, !noalias !629
  %i.aqg = load i64, ptr %i.bf, align 16, !tbaa !55, !noalias !629
  %factor.op.mul3228.i = mul i64 %i.aqg, %i.aqf
  %i.aqh = icmp slt i32 %i.aqd, 1
  %i.aqi = icmp slt i32 %i.aqc, 1
  %i.aqj = icmp sgt i32 %i.apz, 7
  %i.aqk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %brmerge3237.i = select i1 %i.aqh, i1 true, i1 %i.aqi
  br i1 %brmerge3237.i, label %.loopexit, label %_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i

_ZN4ncnn3MatD2Ev.exit946.lr.ph.split.split.i:     ; preds = %_ZN4ncnn3MatD2Ev.exit946.lr.ph.i
  %i.aqm = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aqn = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aqo = load ptr, ptr %i.dw, align 8, !tbaa !20, !noalias !630
  %i.aqp = load i64, ptr %i.aqn, align 8, !tbaa !21, !noalias !630
  %i.aqq = load i64, ptr %i.aqm, align 8, !tbaa !55, !noalias !630
  %factor.op.mul3231.i = mul i64 %i.aqq, %i.aqp
  %i.aqr = add i32 %i.apz, -8                     ; 2 uses
  %i.aqs = lshr i32 %i.aqr, 2
  %i.aqt = and i32 %i.aqs, 1073741822
  %narrow3642.i = add nuw nsw i32 %i.aqt, 2
  %i.aqu = zext nneg i32 %narrow3642.i to i64
  %i.aqv = and i32 %i.aqr, -8
  %i.aqw = add nuw i32 %i.aqv, 8
  %i.aqx = sext i32 %i.apz to i64
  %i.aqy = add i32 %i.apz, -4                     ; 2 uses
  %i.aqz = add i32 %i.apz, -2                     ; 2 uses
  %i.ara = sext i32 %i.fq to i64
  %i.arb = sext i32 %i.aps to i64
  %i.arc = add nsw i64 %i.arb, %i.ara
  %i.ard = sext i32 %i.ek to i64
  %invariant.op3662.i = add nsw i64 %i.aqx, -7
  %i.are = sext i32 %i.aqa to i64                 ; 5 uses
  %i.arf = and i32 %i.apz, -8
  br label %_ZN4ncnn3MatD2Ev.exit946.i

_ZN4ncnn3MatD2Ev.exit957.i:                       ; preds = %._crit_edge3035.i, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i
  %indvars.iv3480.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit957.lr.ph.split.split.i ], [ %indvars.iv.next3481.i, %._crit_edge3035.i ] ; 2 uses
  %i.arg = shl nuw nsw i64 %indvars.iv3480.i, 1
  %i.arh = add nsw i64 %i.arg, %i.gz              ; 4 uses
  %.reass.i = mul i64 %i.arh, %factor.op.mul.i
  %i.ari = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass.i
  %i.arj = add nsw i64 %i.arh, 1
  %.reass3040.i = mul i64 %i.arj, %factor.op.mul.i
  %i.ark = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.reass3040.i
  %i.arl = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not903.i = icmp eq ptr %i.arl, null
  %i.arm = getelementptr inbounds [4 x i8], ptr %i.arl, i64 %i.arh
  %i.arn = trunc nsw i64 %i.arh to i32            ; 3 uses
  %i.aro = sdiv i32 %i.arn, 8
  %i.arp = srem i32 %i.arn, 8
  %.lhs.trunc2480.i = trunc nsw i32 %i.arp to i8
  %i.arq = sdiv i8 %.lhs.trunc2480.i, 4
  %.sext2481.i = sext i8 %i.arq to i32
  %i.arr = add nsw i32 %i.aro, %.sext2481.i
  %i.ars = srem i32 %i.arn, 4
  %.lhs.trunc2482.i = trunc nsw i32 %i.ars to i8
  %i.art = sdiv i8 %.lhs.trunc2482.i, 2
  %.sext2483.i = sext i8 %i.art to i32
  %i.aru = add nsw i32 %i.arr, %.sext2483.i
  %i.arv = sext i32 %i.aru to i64
  %i.arw = load i32, ptr %i.g, align 4
  %.reass3044.i = mul i64 %factor.op.mul3043.i, %i.arv
  %i.arx = getelementptr i8, ptr %i.gn, i64 %.reass3044.i ; 3 uses
  br label %.preheader2569.i

.preheader2569.i:                                 ; preds = %._crit_edge3029.i, %_ZN4ncnn3MatD2Ev.exit957.i
  %.08043034.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %.neg2520.i, %._crit_edge3029.i ]
  %.08053033.i = phi ptr [ %i.ark, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bmb, %._crit_edge3029.i ]
  %.08073032.i = phi ptr [ %i.ari, %_ZN4ncnn3MatD2Ev.exit957.i ], [ %i.bma, %._crit_edge3029.i ]
  %i.ary = load i32, ptr %i.b, align 4            ; 2 uses
  %i.arz = icmp sgt i32 %i.ary, 0                 ; 4 uses
  %.neg2520.i = add nuw nsw i32 %.08043034.i, 1   ; 6 uses
  %i.asa = load i32, ptr %i.k, align 4            ; 4 uses
  %i.asb = shl i32 %i.asa, 4
  %i.asc = sext i32 %i.asb to i64                 ; 2 uses
  %i.asd = shl i32 %i.asa, 3
  %i.ase = sext i32 %i.asd to i64                 ; 3 uses
  %i.asf = shl i32 %i.asa, 2
  %i.asg = sext i32 %i.asf to i64                 ; 3 uses
  %i.ash = shl nsw i32 %i.asa, 1
  %i.asi = sext i32 %i.ash to i64
  %i.asj = mul nsw i64 %i.asc, %i.gt
  %scevgep3403.i = getelementptr i8, ptr %i.arx, i64 %i.asj
  %wide.trip.count3418.i = zext nneg i32 %i.ary to i64 ; 5 uses
  br label %bb.bc

._crit_edge3035.i:                                ; preds = %._crit_edge3029.i
  %indvars.iv.next3481.i = add nuw nsw i64 %indvars.iv3480.i, 1 ; 2 uses
  %exitcond3484.not.i = icmp eq i64 %indvars.iv.next3481.i, %wide.trip.count3483.i
  br i1 %exitcond3484.not.i, label %._crit_edge3037.split.i, label %_ZN4ncnn3MatD2Ev.exit957.i, !llvm.loop !560

._crit_edge3029.i:                                ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
  %exitcond3479.not.i = icmp eq i32 %.neg2520.i, %i.gc
  br i1 %exitcond3479.not.i, label %._crit_edge3035.i, label %.preheader2569.i, !llvm.loop !561

bb.bc:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i, %.preheader2569.i
  %.08033028.i = phi i32 [ 0, %.preheader2569.i ], [ %i.bmc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 5 uses
  %.18063027.i = phi ptr [ %.08053033.i, %.preheader2569.i ], [ %i.bmb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  %.18083026.i = phi ptr [ %.08073032.i, %.preheader2569.i ], [ %i.bma, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i ] ; 2 uses
  br i1 %.not903.i, label %_ZN4ncnn3MatD2Ev.exit955.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ask = load <2 x float>, ptr %i.arm, align 4, !tbaa !39
  br label %_ZN4ncnn3MatD2Ev.exit955.i

_ZN4ncnn3MatD2Ev.exit955.i:                       ; preds = %bb.bd, %bb.bc
  %i.asl = phi <2 x float> [ %i.ask, %bb.bd ], [ zeroinitializer, %bb.bc ]
  br i1 %i.gi, label %.preheader2567.lr.ph.i, label %._crit_edge2841.i

.preheader2567.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit955.i
  %i.asm = load i32, ptr %i.d, align 4
end_hunk_5
begin_hunk_6_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.bcr = load i16, ptr %gep2863.us.us.us.us.3.i.us, align 2, !tbaa !89
  %i.bcs = zext i16 %i.bco to i32
  %i.bct = zext i16 %i.bcp to i32
  %i.bcu = zext i16 %i.bcq to i32
  %i.bcv = zext i16 %i.bcr to i32
  %i.bcw = insertelement <4 x i32> poison, i32 %i.bcs, i64 0
  %i.bcx = insertelement <4 x i32> %i.bcw, i32 %i.bct, i64 1
  %i.bcy = insertelement <4 x i32> %i.bcx, i32 %i.bcu, i64 2
  %i.bcz = insertelement <4 x i32> %i.bcy, i32 %i.bcv, i64 3
  %i.bda = shl nuw <4 x i32> %i.bcz, splat (i32 16)
  %.sroa.03569.12.vec.insert.i.us = bitcast <4 x i32> %i.bda to <4 x float> ; 2 uses
  %i.bdb = add nuw nsw i64 %indvars.iv3429.i.us, %i.bcb
  %i.bdc = shl i64 %i.bdb, 3
  %i.bdd = and i64 %i.bdc, 4294967288
  %i.bde = getelementptr inbounds nuw [2 x i8], ptr %.17682910.us.us.i, i64 %i.bdd ; 2 uses
  %i.bdf = load i64, ptr %i.bde, align 1, !tbaa !82
  %i.bdg = insertelement <2 x i64> poison, i64 %i.bdf, i64 0
  %i.bdh = bitcast <2 x i64> %i.bdg to <8 x i16>
  %i.bdi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdj = bitcast <8 x i16> %i.bdi to <4 x float>
  %i.bdk = fmul fast <4 x float> %i.bdj, %.sroa.03569.12.vec.insert.i.us
  %i.bdl = fadd fast <4 x float> %i.bdk, %.224462865.us2877.us.us.us.i.us
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  %i.bdn = load i64, ptr %i.bdm, align 1, !tbaa !82
  %i.bdo = insertelement <2 x i64> poison, i64 %i.bdn, i64 0
  %i.bdp = bitcast <2 x i64> %i.bdo to <8 x i16>
  %i.bdq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdr = bitcast <8 x i16> %i.bdq to <4 x float>
  %i.bds = fmul fast <4 x float> %i.bdr, %.sroa.03569.12.vec.insert.i.us
  %i.bdt = fadd fast <4 x float> %i.bds, %.224412866.us2876.us.us.us.i.us
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.bo, %.lr.ph.split.us2874.us.us.us.i.us
  %.32447.us2881.us.us.us.i.us = phi nsz <4 x float> [ %.224462865.us2877.us.us.us.i.us, %.lr.ph.split.us2874.us.us.us.i.us ], [ %i.bdl, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224462865.us2877.us.us.us.i.us, %bb.bo ] ; 2 uses
  %.32442.us2882.us.us.us.i.us = phi nsz <4 x float> [ %.224412866.us2876.us.us.us.i.us, %.lr.ph.split.us2874.us.us.us.i.us ], [ %i.bdt, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224412866.us2876.us.us.us.i.us, %bb.bo ] ; 2 uses
  %indvars.iv.next3430.i.us = add nuw nsw i64 %indvars.iv3429.i.us, 1 ; 2 uses
  %exitcond3433.not.i.us = icmp eq i64 %indvars.iv.next3430.i.us, %i.azt
  br i1 %exitcond3433.not.i.us, label %..loopexit2561_crit_edge.us.us.us.i.us112, label %.lr.ph.split.us2874.us.us.us.i.us, !llvm.loop !573

..loopexit2561_crit_edge.us.us.us.i.us112:        ; preds = %bb.bp, %bb.bn, %.preheader2566.us.us.i.split.us104
  %.42448.us.us.us.i.us113 = phi nsz <4 x float> [ %.124452888.us.us.us.i.us107, %.preheader2566.us.us.i.split.us104 ], [ %.124452888.us.us.us.i.us107, %bb.bn ], [ %.32447.us2881.us.us.us.i.us, %bb.bp ] ; 2 uses
  %.42443.us.us.us.i.us114 = phi nsz <4 x float> [ %.124402889.us.us.us.i.us106, %.preheader2566.us.us.i.split.us104 ], [ %.124402889.us.us.us.i.us106, %bb.bn ], [ %.32442.us2882.us.us.us.i.us, %bb.bp ] ; 2 uses
  %indvars.iv.next3440.i.us115 = add nuw nsw i64 %indvars.iv3439.i.us105, 1 ; 2 uses
  %exitcond3443.not.i.us116 = icmp eq i64 %indvars.iv.next3440.i.us115, %wide.trip.count3418.i
  br i1 %exitcond3443.not.i.us116, label %._crit_edge2892.split.us.us.us.i, label %.preheader2566.us.us.i.split.us104, !llvm.loop !574

._crit_edge2892.split.us.us.us.i:                 ; preds = %..loopexit2561_crit_edge.us.us.us.i.us112, %..loopexit2561_crit_edge.us.us.us.i.us, %.preheader2566.us.us.i
  %.us-phi102 = phi <4 x float> [ %.42448.us.us.us.i.us, %..loopexit2561_crit_edge.us.us.us.i.us ], [ %.024442908.us.us.i, %.preheader2566.us.us.i ], [ %.42448.us.us.us.i.us113, %..loopexit2561_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %.us-phi103 = phi <4 x float> [ %.42443.us.us.us.i.us, %..loopexit2561_crit_edge.us.us.us.i.us ], [ %.024392909.us.us.i, %.preheader2566.us.us.i ], [ %.42443.us.us.us.i.us114, %..loopexit2561_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %i.bdu = getelementptr inbounds [2 x i8], ptr %.17682910.us.us.i, i64 %i.ase ; 2 uses
  %indvars.iv.next3445.i = add nuw nsw i64 %indvars.iv3444.i, 4 ; 2 uses
  %i.bdv = trunc i64 %indvars.iv.next3445.i to i32 ; 2 uses
  %i.bdw = or i32 %i.bdv, 3
  %i.bdx = icmp slt i32 %i.bdw, %i.fy
  br i1 %i.bdx, label %.preheader2566.us.us.i, label %._crit_edge2914.i, !llvm.loop !577

._crit_edge2914.i:                                ; preds = %._crit_edge2892.split.us.us.us.i, %.preheader2566.us.preheader.i, %.preheader2566.preheader.i, %._crit_edge2841.i
  %.02444.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2841.i ], [ zeroinitializer, %.preheader2566.preheader.i ], [ zeroinitializer, %.preheader2566.us.preheader.i ], [ %.us-phi102, %._crit_edge2892.split.us.us.us.i ] ; 2 uses
  %.02439.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2841.i ], [ zeroinitializer, %.preheader2566.preheader.i ], [ zeroinitializer, %.preheader2566.us.preheader.i ], [ %.us-phi103, %._crit_edge2892.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2841.i ], [ %scevgep3423.i, %.preheader2566.preheader.i ], [ %scevgep3424.i, %.preheader2566.us.preheader.i ], [ %i.bdu, %._crit_edge2892.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2841.i ], [ %i.azj, %.preheader2566.preheader.i ], [ %i.azs, %.preheader2566.us.preheader.i ], [ %i.bdv, %._crit_edge2892.split.us.us.us.i ] ; 7 uses
  %i.bdy = shufflevector <4 x float> %.02444.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bdz = fadd fast <4 x float> %i.bdy, %.02444.lcssa.i ; 2 uses
  %i.bea = shufflevector <4 x float> %i.ayn, <4 x float> %i.ays, <2 x i32> <i32 1, i32 5>
  %i.beb = fadd fast <2 x float> %i.bea, %i.asl
  %i.bec = shufflevector <4 x float> %.02439.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bed = fadd fast <4 x float> %i.bec, %.02439.lcssa.i ; 2 uses
  %i.bee = shufflevector <4 x float> %i.ayn, <4 x float> %i.ays, <2 x i32> <i32 0, i32 4>
  %i.bef = fadd fast <2 x float> %i.beb, %i.bee
  %i.beg = shufflevector <4 x float> %i.bdz, <4 x float> %i.bed, <2 x i32> <i32 1, i32 5>
  %i.beh = fadd fast <2 x float> %i.bef, %i.beg
  %i.bei = shufflevector <4 x float> %i.bdz, <4 x float> %i.bed, <2 x i32> <i32 0, i32 4>
  %i.bej = fadd fast <2 x float> %i.beh, %i.bei   ; 4 uses
  %i.bek = or disjoint i32 %.1764.lcssa.i, 1
  %i.bel = icmp slt i32 %i.bek, %i.fy
  br i1 %i.bel, label %.preheader2565.lr.ph.i, label %.preheader2568.i

.preheader2565.lr.ph.i:                           ; preds = %._crit_edge2914.i
  %i.bem = load i32, ptr %i.d, align 4
  %i.ben = load i32, ptr %i.j, align 4
  %invariant.op2955.i = sub i32 %.neg2520.i, %i.ben
  %i.beo = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bep = load i32, ptr %i.a, align 4
  %.fr3243.i = freeze i32 %i.bep                  ; 2 uses
  %i.beq = load i32, ptr %i.c, align 4
  %i.ber = load i32, ptr %i.i, align 4
  %.neg2514.i = add nuw nsw i32 %.08033028.i, 1
  %invariant.op2946.i = sub i32 %.neg2514.i, %i.ber
  %i.bes = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.arz, label %.preheader2565.lr.ph.split.us.i, label %.preheader2565.preheader.i

.preheader2565.preheader.i:                       ; preds = %.preheader2565.lr.ph.i
  %i.bet = sub i32 %i.gy, %.1764.lcssa.i
  %i.beu = and i32 %i.bet, -2                     ; 2 uses
  %i.bev = zext i32 %i.beu to i64
  %i.bew = add nuw nsw i64 %i.bev, 2
  %i.bex = mul nsw i64 %i.bew, %i.asg
  %scevgep3447.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bex
  %i.bey = add i32 %.1764.lcssa.i, 2
  %i.bez = add i32 %i.bey, %i.beu
  br label %.preheader2568.i

.preheader2565.lr.ph.split.us.i:                  ; preds = %.preheader2565.lr.ph.i
  %i.bfa = icmp sgt i32 %.fr3243.i, 0
  br i1 %i.bfa, label %.preheader2565.us.us.preheader.i, label %.preheader2565.us.preheader.i

.preheader2565.us.preheader.i:                    ; preds = %.preheader2565.lr.ph.split.us.i
  %i.bfb = sub i32 %i.gy, %.1764.lcssa.i
  %i.bfc = and i32 %i.bfb, -2                     ; 2 uses
  %i.bfd = zext i32 %i.bfc to i64
  %i.bfe = add nuw nsw i64 %i.bfd, 2
  %i.bff = mul nsw i64 %i.bfe, %i.asg
  %scevgep3448.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bff
  %i.bfg = add i32 %.1764.lcssa.i, 2
  %i.bfh = add i32 %i.bfg, %i.bfc
  br label %.preheader2568.i

.preheader2565.us.us.preheader.i:                 ; preds = %.preheader2565.lr.ph.split.us.i
  %i.bfi = zext nneg i32 %.fr3243.i to i64        ; 2 uses
  %i.bfj = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2565.us.us.i

.preheader2565.us.us.i:                           ; preds = %._crit_edge2952.split.us.us.us.i, %.preheader2565.us.us.preheader.i
  %indvars.iv3462.i = phi i64 [ %i.bfj, %.preheader2565.us.us.preheader.i ], [ %indvars.iv.next3463.i, %._crit_edge2952.split.us.us.us.i ] ; 3 uses
  %.27692963.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2565.us.us.preheader.i ], [ %i.bhj, %._crit_edge2952.split.us.us.us.i ] ; 2 uses
  %i.bfk = phi <2 x float> [ %i.bej, %.preheader2565.us.us.preheader.i ], [ %i.bhi, %._crit_edge2952.split.us.us.us.i ]
  %i.bfl = add nuw nsw i64 %indvars.iv3462.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2559_crit_edge.us.us.us.i, %.preheader2565.us.us.i
  %indvars.iv3457.i = phi i64 [ %indvars.iv.next3458.i, %..loopexit2559_crit_edge.us.us.us.i ], [ 0, %.preheader2565.us.us.i ] ; 3 uses
  %i.bfm = phi <2 x float> [ %i.bhi, %..loopexit2559_crit_edge.us.us.us.i ], [ %i.bfk, %.preheader2565.us.us.i ] ; 3 uses
  %i.bfn = trunc i64 %indvars.iv3457.i to i32
  %i.bfo = mul i32 %i.bem, %i.bfn
  %.reass2956.us.us.us.i = add i32 %i.bfo, %invariant.op2955.i ; 3 uses
  %i.bfp = icmp slt i32 %.reass2956.us.us.us.i, 0
  br i1 %i.bfp, label %..loopexit2559_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bfq = srem i32 %.reass2956.us.us.us.i, %i.beo
  %i.bfr = sdiv i32 %.reass2956.us.us.us.i, %i.beo ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.bfq, 0
  %.not909.us.us.us.i = icmp slt i32 %i.bfr, %i.ga
  %or.cond314 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond314, label %.preheader2558.us.us.us.i, label %..loopexit2559_crit_edge.us.us.us.i

.preheader2558.us.us.us.i:                        ; preds = %bb.br
  %i.bfs = mul nuw nsw i64 %indvars.iv3457.i, %i.bfi
  %i.bft = sext i32 %i.bfr to i64
  %i.bfu = mul nsw i64 %i.bft, %i.ha
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit2555.us.us.us.i, %.preheader2558.us.us.us.i
  %indvars.iv3452.i = phi i64 [ %indvars.iv.next3453.i, %.loopexit2555.us.us.us.i ], [ 0, %.preheader2558.us.us.us.i ] ; 3 uses
  %i.bfv = phi <2 x float> [ %i.bhh, %.loopexit2555.us.us.us.i ], [ %i.bfm, %.preheader2558.us.us.us.i ] ; 3 uses
  %i.bfw = trunc i64 %indvars.iv3452.i to i32
  %i.bfx = mul i32 %i.beq, %i.bfw
  %.reass2947.us.us.us.i = add i32 %invariant.op2946.i, %i.bfx ; 3 uses
  %i.bfy = icmp slt i32 %.reass2947.us.us.us.i, 0
  br i1 %i.bfy, label %.loopexit2555.us.us.us.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bfz = srem i32 %.reass2947.us.us.us.i, %i.bes
  %i.bga = sdiv i32 %.reass2947.us.us.us.i, %i.bes ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.bfz, 0
  %.not911.us.us.us.i = icmp slt i32 %i.bga, %i.fz
  %or.cond315 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond315, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2555.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.bt
  %i.bgb = add nuw nsw i64 %indvars.iv3452.i, %i.bfs
  %i.bgc = shl i64 %i.bgb, 2
  %i.bgd = and i64 %i.bgc, 4294967292
  %i.bge = getelementptr inbounds nuw [2 x i8], ptr %.27692963.us.us.i, i64 %i.bgd
  %i.bgf = load ptr, ptr %1, align 8, !tbaa !20, !noalias !636
  %i.bgg = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !636
  %i.bgh = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !636 ; 2 uses
  %factor.op.mul.us.us.us2982.i = mul i64 %i.bgh, %i.bgg ; 2 uses
  %i.bgi = mul i64 %i.bfu, %i.bgh
  %invariant.gep.us.us.us2983.i = getelementptr i8, ptr %i.bgf, i64 %i.bgi
  %i.bgj = sext i32 %i.bga to i64
  %invariant.gep2936.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us2983.i, i64 %i.bgj ; 2 uses
  %.reass.us2957.us.us.i = mul i64 %factor.op.mul.us.us.us2982.i, %indvars.iv3462.i
  %gep2937.us.us.us.i = getelementptr i8, ptr %invariant.gep2936.us.us.us.i, i64 %.reass.us2957.us.us.i
  %i.bgk = load i16, ptr %gep2937.us.us.us.i, align 2, !tbaa !89
  %.reass.us2957.us.us.1.i = mul i64 %factor.op.mul.us.us.us2982.i, %i.bfl
  %gep2937.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2936.us.us.us.i, i64 %.reass.us2957.us.us.1.i
  %i.bgl = load i16, ptr %gep2937.us.us.us.1.i, align 2, !tbaa !89
  %i.bgm = zext i16 %i.bgk to i32
  %i.bgn = shl nuw i32 %i.bgm, 16
  %i.bgo = load <4 x i16>, ptr %i.bge, align 2, !tbaa !89
  %i.bgp = freeze <4 x i16> %i.bgo
  %i.bgq = bitcast <4 x i16> %i.bgp to <2 x i32>  ; 2 uses
  %i.bgr = and <2 x i32> %i.bgq, splat (i32 -65536)
  %i.bgs = shl <2 x i32> %i.bgq, splat (i32 16)
  %i.bgt = bitcast <2 x i32> %i.bgs to <2 x float>
  %i.bgu = insertelement <2 x i32> poison, i32 %i.bgn, i64 0
  %i.bgv = bitcast <2 x i32> %i.bgu to <2 x float>
  %i.bgw = shufflevector <2 x float> %i.bgv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgx = fmul fast <2 x float> %i.bgw, %i.bgt
  %i.bgy = fadd fast <2 x float> %i.bgx, %i.bfv
  %i.bgz = zext i16 %i.bgl to i32
  %i.bha = shl nuw i32 %i.bgz, 16
  %i.bhb = bitcast <2 x i32> %i.bgr to <2 x float>
  %i.bhc = insertelement <2 x i32> poison, i32 %i.bha, i64 0
  %i.bhd = bitcast <2 x i32> %i.bhc to <2 x float>
  %i.bhe = shufflevector <2 x float> %i.bhd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhf = fmul fast <2 x float> %i.bhe, %i.bhb
  %i.bhg = fadd fast <2 x float> %i.bgy, %i.bhf
  br label %.loopexit2555.us.us.us.i

.loopexit2555.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.bt, %bb.bs
  %i.bhh = phi <2 x float> [ %i.bfv, %bb.bs ], [ %i.bfv, %bb.bt ], [ %i.bhg, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3453.i = add nuw nsw i64 %indvars.iv3452.i, 1 ; 2 uses
  %exitcond3456.not.i = icmp eq i64 %indvars.iv.next3453.i, %i.bfi
  br i1 %exitcond3456.not.i, label %..loopexit2559_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !580

..loopexit2559_crit_edge.us.us.us.i:              ; preds = %.loopexit2555.us.us.us.i, %bb.br, %bb.bq
  %i.bhi = phi <2 x float> [ %i.bfm, %bb.bq ], [ %i.bfm, %bb.br ], [ %i.bhh, %.loopexit2555.us.us.us.i ] ; 3 uses
  %indvars.iv.next3458.i = add nuw nsw i64 %indvars.iv3457.i, 1 ; 2 uses
  %exitcond3461.not.i = icmp eq i64 %indvars.iv.next3458.i, %wide.trip.count3418.i
  br i1 %exitcond3461.not.i, label %._crit_edge2952.split.us.us.us.i, label %bb.bq, !llvm.loop !581

._crit_edge2952.split.us.us.us.i:                 ; preds = %..loopexit2559_crit_edge.us.us.us.i
  %i.bhj = getelementptr inbounds [2 x i8], ptr %.27692963.us.us.i, i64 %i.asg ; 2 uses
  %indvars.iv.next3463.i = add nuw nsw i64 %indvars.iv3462.i, 2 ; 2 uses
  %i.bhk = trunc i64 %indvars.iv.next3463.i to i32 ; 2 uses
  %i.bhl = or i32 %i.bhk, 1
  %i.bhm = icmp slt i32 %i.bhl, %i.fy
  br i1 %i.bhm, label %.preheader2565.us.us.i, label %.preheader2568.i, !llvm.loop !582

.preheader2568.i:                                 ; preds = %._crit_edge2952.split.us.us.us.i, %.preheader2565.us.preheader.i, %.preheader2565.preheader.i, %._crit_edge2914.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2914.i ], [ %scevgep3447.i, %.preheader2565.preheader.i ], [ %scevgep3448.i, %.preheader2565.us.preheader.i ], [ %i.bhj, %._crit_edge2952.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2914.i ], [ %i.bez, %.preheader2565.preheader.i ], [ %i.bfh, %.preheader2565.us.preheader.i ], [ %i.bhk, %._crit_edge2952.split.us.us.us.i ] ; 2 uses
  %i.bhn = phi <2 x float> [ %i.bej, %._crit_edge2914.i ], [ %i.bej, %.preheader2565.preheader.i ], [ %i.bej, %.preheader2565.us.preheader.i ], [ %i.bhi, %._crit_edge2952.split.us.us.us.i ] ; 3 uses
  %i.bho = icmp slt i32 %.2765.lcssa.i, %i.fy
  br i1 %i.bho, label %.preheader2564.lr.ph.i, label %._crit_edge3012.i

.preheader2564.lr.ph.i:                           ; preds = %.preheader2568.i
  %i.bhp = load i32, ptr %i.d, align 4
  %i.bhq = load i32, ptr %i.j, align 4
  %invariant.op3001.i = sub i32 %.neg2520.i, %i.bhq
  %i.bhr = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bhs = load i32, ptr %i.a, align 4
  %.fr3244.i = freeze i32 %i.bhs                  ; 2 uses
  %i.bht = load i32, ptr %i.c, align 4
  %i.bhu = load i32, ptr %i.i, align 4
  %.neg2510.i = add nuw nsw i32 %.08033028.i, 1
  %invariant.op2993.i = sub i32 %.neg2510.i, %i.bhu
  %i.bhv = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bhw = icmp sgt i32 %.fr3244.i, 0
  %or.cond3702.i = and i1 %i.arz, %i.bhw
  br i1 %or.cond3702.i, label %.preheader2564.us.us.preheader.i, label %._crit_edge3012.i

.preheader2564.us.us.preheader.i:                 ; preds = %.preheader2564.lr.ph.i
  %i.bhx = zext nneg i32 %.fr3244.i to i64        ; 2 uses
  %i.bhy = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2564.us.us.i

.preheader2564.us.us.i:                           ; preds = %._crit_edge2998.split.us.us.us.i, %.preheader2564.us.us.preheader.i
  %indvars.iv3475.i = phi i64 [ %i.bhy, %.preheader2564.us.us.preheader.i ], [ %indvars.iv.next3476.i, %._crit_edge2998.split.us.us.us.i ] ; 2 uses
  %.37703009.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2564.us.us.preheader.i ], [ %i.bjp, %._crit_edge2998.split.us.us.us.i ] ; 2 uses
  %i.bhz = phi <2 x float> [ %i.bhn, %.preheader2564.us.us.preheader.i ], [ %i.bjo, %._crit_edge2998.split.us.us.us.i ]
  br label %bb.bu

bb.bu:                                            ; preds = %..loopexit2557_crit_edge.us.us.us.i, %.preheader2564.us.us.i
  %indvars.iv3470.i = phi i64 [ %indvars.iv.next3471.i, %..loopexit2557_crit_edge.us.us.us.i ], [ 0, %.preheader2564.us.us.i ] ; 3 uses
  %i.bia = phi <2 x float> [ %i.bjo, %..loopexit2557_crit_edge.us.us.us.i ], [ %i.bhz, %.preheader2564.us.us.i ] ; 3 uses
  %i.bib = trunc i64 %indvars.iv3470.i to i32
  %i.bic = mul i32 %i.bhp, %i.bib
  %.reass3002.us.us.us.i = add i32 %i.bic, %invariant.op3001.i ; 3 uses
  %i.bid = icmp slt i32 %.reass3002.us.us.us.i, 0
  br i1 %i.bid, label %..loopexit2557_crit_edge.us.us.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bie = srem i32 %.reass3002.us.us.us.i, %i.bhr
  %i.bif = sdiv i32 %.reass3002.us.us.us.i, %i.bhr ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bie, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bif, %i.ga
  %or.cond316 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond316, label %.preheader2556.us.us.us.i, label %..loopexit2557_crit_edge.us.us.us.i

.preheader2556.us.us.us.i:                        ; preds = %bb.bv
  %i.big = mul nuw nsw i64 %indvars.iv3470.i, %i.bhx
  %i.bih = sext i32 %i.bif to i64
  %i.bii = mul nsw i64 %i.bih, %i.ha
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %.preheader2556.us.us.us.i
  %indvars.iv3465.i = phi i64 [ %indvars.iv.next3466.i, %bb.by ], [ 0, %.preheader2556.us.us.us.i ] ; 3 uses
  %i.bij = phi <2 x float> [ %i.bjn, %bb.by ], [ %i.bia, %.preheader2556.us.us.us.i ] ; 3 uses
  %i.bik = trunc i64 %indvars.iv3465.i to i32
  %i.bil = mul i32 %i.bht, %i.bik
  %.reass.us3003.us.us.i = add i32 %invariant.op2993.i, %i.bil ; 3 uses
  %i.bim = icmp slt i32 %.reass.us3003.us.us.i, 0
  br i1 %i.bim, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.bin = srem i32 %.reass.us3003.us.us.i, %i.bhv
  %i.bio = sdiv i32 %.reass.us3003.us.us.i, %i.bhv ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bin, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bio, %i.fz
  %or.cond317 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond317, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.by

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.bx
  %i.bip = add nuw nsw i64 %indvars.iv3465.i, %i.big
  %.idx3641.i = shl nuw nsw i64 %i.bip, 2
  %i.biq = getelementptr inbounds nuw i8, ptr %.37703009.us.us.i, i64 %.idx3641.i
  %i.bir = load ptr, ptr %1, align 8, !tbaa !20, !noalias !637
  %i.bis = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !637
  %i.bit = mul i64 %i.bis, %indvars.iv3475.i
  %i.biu = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !637 ; 2 uses
  %i.biv = mul i64 %i.bit, %i.biu
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bir, i64 %i.biv
  %i.bix = mul i64 %i.bii, %i.biu
  %i.biy = getelementptr inbounds nuw i8, ptr %i.biw, i64 %i.bix
  %i.biz = sext i32 %i.bio to i64
  %i.bja = getelementptr inbounds [2 x i8], ptr %i.biy, i64 %i.biz
  %i.bjb = load i16, ptr %i.bja, align 2, !tbaa !89
  %i.bjc = zext i16 %i.bjb to i32
  %i.bjd = shl nuw i32 %i.bjc, 16
  %i.bje = load <2 x i16>, ptr %i.biq, align 2, !tbaa !89
  %i.bjf = zext <2 x i16> %i.bje to <2 x i32>
  %i.bjg = shl nuw <2 x i32> %i.bjf, splat (i32 16)
  %i.bjh = bitcast <2 x i32> %i.bjg to <2 x float>
  %i.bji = insertelement <2 x i32> poison, i32 %i.bjd, i64 0
  %i.bjj = bitcast <2 x i32> %i.bji to <2 x float>
  %i.bjk = shufflevector <2 x float> %i.bjj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjl = fmul fast <2 x float> %i.bjk, %i.bjh
  %i.bjm = fadd fast <2 x float> %i.bjl, %i.bij
  br label %bb.by

bb.by:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, %bb.bx, %bb.bw
  %i.bjn = phi <2 x float> [ %i.bij, %bb.bw ], [ %i.bij, %bb.bx ], [ %i.bjm, %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i ] ; 2 uses
  %indvars.iv.next3466.i = add nuw nsw i64 %indvars.iv3465.i, 1 ; 2 uses
  %exitcond3469.not.i = icmp eq i64 %indvars.iv.next3466.i, %i.bhx
  br i1 %exitcond3469.not.i, label %..loopexit2557_crit_edge.us.us.us.i, label %bb.bw, !llvm.loop !585

..loopexit2557_crit_edge.us.us.us.i:              ; preds = %bb.by, %bb.bv, %bb.bu
  %i.bjo = phi <2 x float> [ %i.bia, %bb.bu ], [ %i.bia, %bb.bv ], [ %i.bjn, %bb.by ] ; 3 uses
  %indvars.iv.next3471.i = add nuw nsw i64 %indvars.iv3470.i, 1 ; 2 uses
  %exitcond3474.not.i = icmp eq i64 %indvars.iv.next3471.i, %wide.trip.count3418.i
  br i1 %exitcond3474.not.i, label %._crit_edge2998.split.us.us.us.i, label %bb.bu, !llvm.loop !586

._crit_edge2998.split.us.us.us.i:                 ; preds = %..loopexit2557_crit_edge.us.us.us.i
  %i.bjp = getelementptr inbounds [2 x i8], ptr %.37703009.us.us.i, i64 %i.asi
  %indvars.iv.next3476.i = add nuw nsw i64 %indvars.iv3475.i, 1 ; 2 uses
  %i.bjq = trunc nuw i64 %indvars.iv.next3476.i to i32
  %i.bjr = icmp sgt i32 %i.fy, %i.bjq
  br i1 %i.bjr, label %.preheader2564.us.us.i, label %._crit_edge3012.i, !llvm.loop !587

._crit_edge3012.i:                                ; preds = %._crit_edge2998.split.us.us.us.i, %.preheader2564.lr.ph.i, %.preheader2568.i
  %i.bjs = phi <2 x float> [ %i.bhn, %.preheader2568.i ], [ %i.bhn, %.preheader2564.lr.ph.i ], [ %i.bjo, %._crit_edge2998.split.us.us.us.i ] ; 12 uses
  switch i32 %i.arw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i
    i32 6, label %bb.bz
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2468.i: ; preds = %._crit_edge3012.i
  %i.bjt = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bjs, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2471.i: ; preds = %._crit_edge3012.i
  %i.bju = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.bjv = load float, ptr %i.bju, align 4, !tbaa !39
  %i.bjw = fcmp fast ogt <2 x float> %i.bjs, zeroinitializer
  %i.bjx = insertelement <2 x float> poison, float %i.bjv, i64 0
  %i.bjy = shufflevector <2 x float> %i.bjx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjz = select <2 x i1> %i.bjw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bjy
  %i.bka = fmul fast <2 x float> %i.bjz, %i.bjs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2465.i: ; preds = %._crit_edge3012.i
  %i.bkb = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.bkc = load float, ptr %i.bkb, align 4, !tbaa !39 ; 2 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkb, i64 4
  %i.bke = load float, ptr %i.bkd, align 4, !tbaa !39 ; 3 uses
  %i.bkf = extractelement <2 x float> %i.bjs, i64 0
  %spec.select.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bkf, float %i.bkc) ; 2 uses
  %i.bkg = fcmp fast ogt float %spec.select.i, %i.bke
  %.123772467.i = select i1 %i.bkg, float %i.bke, float %spec.select.i
  %i.bkh = extractelement <2 x float> %i.bjs, i64 1
  %.02378.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bkh, float %i.bkc)
  %spec.select2490.i = call nnan ninf nsz float @llvm.minnum.f32(float %.02378.i, float %i.bke)
  %i.bki = insertelement <2 x float> poison, float %.123772467.i, i64 0
  %i.bkj = insertelement <2 x float> %i.bki, float %spec.select2490.i, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2474.i: ; preds = %._crit_edge3012.i
  %i.bkk = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bjs, <2 x float> splat (float f0x42B0C0A5))
  %i.bkl = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bkk, <2 x float> splat (float f0xC2B0C0A5))
  %i.bkm = fneg fast <2 x float> %i.bkl
  %i.bkn = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bkm)
  %i.bko = fadd fast <2 x float> %i.bkn, splat (float 1.000000e+00)
  %i.bkp = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bko
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit1267.thread2477.i: ; preds = %._crit_edge3012.i
  %i.bkq = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bjs)
  %i.bkr = fadd fast <2 x float> %i.bkq, splat (float 1.000000e+00)
  %i.bks = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bkr)
  %i.bkt = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bks)
  %i.bku = fmul fast <2 x float> %i.bkt, %i.bjs
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1266.i
end_hunk_6
begin_hunk_7_@_ZNK4ncnn21Deconvolution_x86_avx13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.cq
  %i.bvq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !642
  %i.bvr = load i64, ptr %i.aqk, align 8, !tbaa !21, !noalias !642
  %i.bvs = load i64, ptr %i.aql, align 8, !tbaa !55, !noalias !642 ; 2 uses
  %factor.op.mul3087.us.us.us.us.i.us = mul i64 %i.bvs, %i.bvr ; 4 uses
  %i.bvt = mul i64 %i.bvk, %i.bvs
  %invariant.gep.us.us.us3140.us.i.us = getelementptr i8, ptr %i.bvq, i64 %i.bvt
  %i.bvu = sext i32 %i.bvp to i64
  %invariant.gep3089.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3140.us.i.us, i64 %i.bvu ; 4 uses
  %.reass3088.us.us.us.us.i.us = mul i64 %factor.op.mul3087.us.us.us.us.i.us, %indvars.iv3527.i
  %gep3090.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3089.us.us.us.us.i.us, i64 %.reass3088.us.us.us.us.i.us
  %i.bvv = load i16, ptr %gep3090.us.us.us.us.i.us, align 2, !tbaa !89
  %.reass3088.us.us.us.us.1.i.us = mul i64 %factor.op.mul3087.us.us.us.us.i.us, %i.btm
  %gep3090.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3089.us.us.us.us.i.us, i64 %.reass3088.us.us.us.us.1.i.us
  %i.bvw = load i16, ptr %gep3090.us.us.us.us.1.i.us, align 2, !tbaa !89
  %.reass3088.us.us.us.us.2.i.us = mul i64 %factor.op.mul3087.us.us.us.us.i.us, %i.btn
  %gep3090.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3089.us.us.us.us.i.us, i64 %.reass3088.us.us.us.us.2.i.us
  %i.bvx = load i16, ptr %gep3090.us.us.us.us.2.i.us, align 2, !tbaa !89
  %.reass3088.us.us.us.us.3.i.us = mul i64 %factor.op.mul3087.us.us.us.us.i.us, %i.bto
  %gep3090.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3089.us.us.us.us.i.us, i64 %.reass3088.us.us.us.us.3.i.us
  %i.bvy = load i16, ptr %gep3090.us.us.us.us.3.i.us, align 2, !tbaa !89
  %i.bvz = zext i16 %i.bvv to i32
  %i.bwa = zext i16 %i.bvw to i32
  %i.bwb = zext i16 %i.bvx to i32
  %i.bwc = zext i16 %i.bvy to i32
  %i.bwd = insertelement <4 x i32> poison, i32 %i.bvz, i64 0
  %i.bwe = insertelement <4 x i32> %i.bwd, i32 %i.bwa, i64 1
  %i.bwf = insertelement <4 x i32> %i.bwe, i32 %i.bwb, i64 2
  %i.bwg = insertelement <4 x i32> %i.bwf, i32 %i.bwc, i64 3
  %i.bwh = shl nuw <4 x i32> %i.bwg, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.bwh to <4 x float>
  %i.bwi = add nuw nsw i64 %indvars.iv3512.i.us, %i.bvi
  %i.bwj = shl i64 %i.bwi, 2
  %i.bwk = and i64 %i.bwj, 4294967292
  %i.bwl = getelementptr inbounds nuw [2 x i8], ptr %.17253125.us.us.i, i64 %i.bwk
  %i.bwm = load i64, ptr %i.bwl, align 1, !tbaa !82
  %i.bwn = insertelement <2 x i64> poison, i64 %i.bwm, i64 0
  %i.bwo = bitcast <2 x i64> %i.bwn to <8 x i16>
  %i.bwp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bwo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bwq = bitcast <8 x i16> %i.bwp to <4 x float>
  %i.bwr = fmul fast <4 x float> %i.bwq, %.sroa.0.12.vec.insert.i.us
  %i.bws = fadd fast <4 x float> %i.bwr, %.223963092.us3100.us.us.us.i.us
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.cq, %.lr.ph.split.us3098.us.us.us.i.us
  %.32397.us3104.us.us.us.i.us = phi nsz <4 x float> [ %.223963092.us3100.us.us.us.i.us, %.lr.ph.split.us3098.us.us.us.i.us ], [ %i.bws, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223963092.us3100.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3513.i.us = add nuw nsw i64 %indvars.iv3512.i.us, 1 ; 2 uses
  %exitcond3516.not.i.us = icmp eq i64 %indvars.iv.next3513.i.us, %i.bti
  br i1 %exitcond3516.not.i.us, label %..loopexit2546_crit_edge.us.us.us.i.us129, label %.lr.ph.split.us3098.us.us.us.i.us, !llvm.loop !602

..loopexit2546_crit_edge.us.us.us.i.us129:        ; preds = %bb.cr, %bb.cp, %.preheader2551.us.us.i.split.us122
  %.42398.us.us.us.i.us130 = phi nsz <4 x float> [ %.123953108.us.us.us.i.us124, %.preheader2551.us.us.i.split.us122 ], [ %.123953108.us.us.us.i.us124, %bb.cp ], [ %.32397.us3104.us.us.us.i.us, %bb.cr ] ; 2 uses
  %indvars.iv.next3523.i.us131 = add nuw nsw i64 %indvars.iv3522.i.us123, 1 ; 2 uses
  %exitcond3526.not.i.us132 = icmp eq i64 %indvars.iv.next3523.i.us131, %wide.trip.count3501.i
  br i1 %exitcond3526.not.i.us132, label %._crit_edge3111.split.us.us.us.i, label %.preheader2551.us.us.i.split.us122, !llvm.loop !603

._crit_edge3111.split.us.us.us.i:                 ; preds = %..loopexit2546_crit_edge.us.us.us.i.us129, %..loopexit2546_crit_edge.us.us.us.i.us, %.preheader2551.us.us.i
  %.us-phi121 = phi <4 x float> [ %.42398.us.us.us.i.us, %..loopexit2546_crit_edge.us.us.us.i.us ], [ %.023943124.us.us.i, %.preheader2551.us.us.i ], [ %.42398.us.us.us.i.us130, %..loopexit2546_crit_edge.us.us.us.i.us129 ] ; 2 uses
  %i.bwt = getelementptr inbounds [2 x i8], ptr %.17253125.us.us.i, i64 %i.bmz ; 2 uses
  %indvars.iv.next3528.i = add nuw nsw i64 %indvars.iv3527.i, 4 ; 2 uses
  %i.bwu = trunc i64 %indvars.iv.next3528.i to i32 ; 2 uses
  %i.bwv = or i32 %i.bwu, 3
  %i.bww = icmp slt i32 %i.bwv, %i.apz
  br i1 %i.bww, label %.preheader2551.us.us.i, label %._crit_edge3129.i, !llvm.loop !606

._crit_edge3129.i:                                ; preds = %._crit_edge3111.split.us.us.us.i, %.preheader2551.us.preheader.i, %.preheader2551.preheader.i, %._crit_edge3069.i
  %.02394.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3069.i ], [ zeroinitializer, %.preheader2551.preheader.i ], [ zeroinitializer, %.preheader2551.us.preheader.i ], [ %.us-phi121, %._crit_edge3111.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge3069.i ], [ %scevgep3506.i, %.preheader2551.preheader.i ], [ %scevgep3507.i, %.preheader2551.us.preheader.i ], [ %i.bwt, %._crit_edge3111.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge3069.i ], [ %i.bsy, %.preheader2551.preheader.i ], [ %i.bth, %.preheader2551.us.preheader.i ], [ %i.bwu, %._crit_edge3111.split.us.us.us.i ] ; 7 uses
  %i.bwx = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.bsh, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.bwy = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.bsh, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bwz = fadd fast <4 x float> %i.bwx, %i.bwy
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.bwz) ; 4 uses
  %i.bxa = or disjoint i32 %.1.lcssa.i, 1
  %i.bxb = icmp slt i32 %i.bxa, %i.apz
  br i1 %i.bxb, label %.preheader2550.lr.ph.i, label %.preheader2553.i

.preheader2550.lr.ph.i:                           ; preds = %._crit_edge3129.i
  %i.bxc = load i32, ptr %i.d, align 4
  %i.bxd = load i32, ptr %i.j, align 4
  %invariant.op3164.i = sub i32 %.neg2504.i, %i.bxd
  %i.bxe = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bxf = load i32, ptr %i.a, align 4
  %.fr3247.i = freeze i32 %i.bxf                  ; 2 uses
  %i.bxg = load i32, ptr %i.c, align 4
  %i.bxh = load i32, ptr %i.i, align 4
  %.neg2498.i = add nuw nsw i32 %.07323220.i, 1
  %invariant.op3157.i = sub i32 %.neg2498.i, %i.bxh
  %i.bxi = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bmu, label %.preheader2550.lr.ph.split.us.i, label %.preheader2550.preheader.i

.preheader2550.preheader.i:                       ; preds = %.preheader2550.lr.ph.i
  %i.bxj = sub i32 %i.aqz, %.1.lcssa.i
  %i.bxk = and i32 %i.bxj, -2                     ; 2 uses
  %i.bxl = zext i32 %i.bxk to i64
  %i.bxm = add nuw nsw i64 %i.bxl, 2
  %i.bxn = mul nsw i64 %i.bxm, %i.bnb
  %scevgep3530.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bxn
  %i.bxo = add i32 %.1.lcssa.i, 2
  %i.bxp = add i32 %i.bxo, %i.bxk
  br label %.preheader2553.i

.preheader2550.lr.ph.split.us.i:                  ; preds = %.preheader2550.lr.ph.i
  %i.bxq = icmp sgt i32 %.fr3247.i, 0
  br i1 %i.bxq, label %.preheader2550.us.us.preheader.i, label %.preheader2550.us.preheader.i

.preheader2550.us.preheader.i:                    ; preds = %.preheader2550.lr.ph.split.us.i
  %i.bxr = sub i32 %i.aqz, %.1.lcssa.i
  %i.bxs = and i32 %i.bxr, -2                     ; 2 uses
  %i.bxt = zext i32 %i.bxs to i64
  %i.bxu = add nuw nsw i64 %i.bxt, 2
  %i.bxv = mul nsw i64 %i.bxu, %i.bnb
  %scevgep3531.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bxv
  %i.bxw = add i32 %.1.lcssa.i, 2
  %i.bxx = add i32 %i.bxw, %i.bxs
  br label %.preheader2553.i

.preheader2550.us.us.preheader.i:                 ; preds = %.preheader2550.lr.ph.split.us.i
  %i.bxy = zext nneg i32 %.fr3247.i to i64        ; 2 uses
  %i.bxz = zext i32 %.1.lcssa.i to i64
  br label %.preheader2550.us.us.i

.preheader2550.us.us.i:                           ; preds = %._crit_edge3162.split.us.us.us.i, %.preheader2550.us.us.preheader.i
  %indvars.iv3545.i = phi i64 [ %i.bxz, %.preheader2550.us.us.preheader.i ], [ %indvars.iv.next3546.i, %._crit_edge3162.split.us.us.us.i ] ; 3 uses
  %.27263169.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2550.us.us.preheader.i ], [ %i.bzm, %._crit_edge3162.split.us.us.us.i ] ; 2 uses
  %.17293168.us.us.i = phi float [ %op.rdx, %.preheader2550.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3162.split.us.us.us.i ]
  %i.bya = add nuw nsw i64 %indvars.iv3545.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %..loopexit2544_crit_edge.us.us.us.i, %.preheader2550.us.us.i
  %indvars.iv3540.i = phi i64 [ %indvars.iv.next3541.i, %..loopexit2544_crit_edge.us.us.us.i ], [ 0, %.preheader2550.us.us.i ] ; 3 uses
  %.27303159.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2544_crit_edge.us.us.us.i ], [ %.17293168.us.us.i, %.preheader2550.us.us.i ] ; 3 uses
  %i.byb = trunc i64 %indvars.iv3540.i to i32
  %i.byc = mul i32 %i.bxc, %i.byb
  %.reass3165.us.us.us.i = add i32 %i.byc, %invariant.op3164.i ; 3 uses
  %i.byd = icmp slt i32 %.reass3165.us.us.us.i, 0
  br i1 %i.byd, label %..loopexit2544_crit_edge.us.us.us.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bye = srem i32 %.reass3165.us.us.us.i, %i.bxe
  %i.byf = sdiv i32 %.reass3165.us.us.us.i, %i.bxe ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bye, 0
  %.not892.us.us.us.i = icmp slt i32 %i.byf, %i.aqb
  %or.cond324 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond324, label %.preheader2543.us.us.us.i, label %..loopexit2544_crit_edge.us.us.us.i

.preheader2543.us.us.us.i:                        ; preds = %bb.ct
  %i.byg = mul nuw nsw i64 %indvars.iv3540.i, %i.bxy
  %i.byh = sext i32 %i.byf to i64
  %i.byi = mul nsw i64 %i.byh, %i.are
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.us.us.us.i, %.preheader2543.us.us.us.i
  %indvars.iv3535.i = phi i64 [ %indvars.iv.next3536.i, %.loopexit.us.us.us.i ], [ 0, %.preheader2543.us.us.us.i ] ; 3 uses
  %.37313154.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.27303159.us.us.us.i, %.preheader2543.us.us.us.i ] ; 3 uses
  %i.byj = trunc i64 %indvars.iv3535.i to i32
  %i.byk = mul i32 %i.bxg, %i.byj
  %.reass3158.us.us.us.i = add i32 %invariant.op3157.i, %i.byk ; 3 uses
  %i.byl = icmp slt i32 %.reass3158.us.us.us.i, 0
  br i1 %i.byl, label %.loopexit.us.us.us.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bym = srem i32 %.reass3158.us.us.us.i, %i.bxi
  %i.byn = sdiv i32 %.reass3158.us.us.us.i, %i.bxi ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bym, 0
  %.not894.us.us.us.i = icmp slt i32 %i.byn, %i.aqa
  %or.cond325 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond325, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.cv
  %i.byo = add nuw nsw i64 %indvars.iv3535.i, %i.byg
  %.idx3645.i = shl nuw nsw i64 %i.byo, 2
  %i.byp = getelementptr inbounds nuw i8, ptr %.27263169.us.us.i, i64 %.idx3645.i
  %i.byq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !643
  %i.byr = load i64, ptr %i.aqk, align 8, !tbaa !21, !noalias !643
  %i.bys = load i64, ptr %i.aql, align 8, !tbaa !55, !noalias !643 ; 2 uses
  %factor.op.mul3148.us.us.us.i = mul i64 %i.bys, %i.byr ; 2 uses
  %i.byt = mul i64 %i.byi, %i.bys
  %invariant.gep.us.us.us3186.i = getelementptr i8, ptr %i.byq, i64 %i.byt
  %i.byu = sext i32 %i.byn to i64
  %invariant.gep3150.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3186.i, i64 %i.byu ; 2 uses
  %.reass3149.us.us.us.i = mul i64 %factor.op.mul3148.us.us.us.i, %indvars.iv3545.i
  %gep3151.us.us.us.i = getelementptr i8, ptr %invariant.gep3150.us.us.us.i, i64 %.reass3149.us.us.us.i
  %i.byv = load i16, ptr %gep3151.us.us.us.i, align 2, !tbaa !89
  %.reass3149.us.us.us.1.i = mul i64 %factor.op.mul3148.us.us.us.i, %i.bya
  %gep3151.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3150.us.us.us.i, i64 %.reass3149.us.us.us.1.i
  %i.byw = load i16, ptr %gep3151.us.us.us.1.i, align 2, !tbaa !89
  %i.byx = zext i16 %i.byv to i32
  %i.byy = zext i16 %i.byw to i32
  %i.byz = insertelement <2 x i32> poison, i32 %i.byx, i64 0
  %i.bza = insertelement <2 x i32> %i.byz, i32 %i.byy, i64 1
  %i.bzb = shl nuw <2 x i32> %i.bza, splat (i32 16)
  %i.bzc = bitcast <2 x i32> %i.bzb to <2 x float>
  %i.bzd = load <2 x i16>, ptr %i.byp, align 2, !tbaa !89
  %i.bze = zext <2 x i16> %i.bzd to <2 x i32>
  %i.bzf = shl nuw <2 x i32> %i.bze, splat (i32 16)
  %i.bzg = bitcast <2 x i32> %i.bzf to <2 x float>
  %i.bzh = fmul fast <2 x float> %i.bzg, %i.bzc   ; 2 uses
  %i.bzi = extractelement <2 x float> %i.bzh, i64 0
  %i.bzj = fadd fast float %i.bzi, %.37313154.us.us.us.i
  %i.bzk = extractelement <2 x float> %i.bzh, i64 1
  %i.bzl = fadd fast float %i.bzj, %i.bzk
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.cv, %bb.cu
  %.6.us.us.us.i = phi nsz float [ %.37313154.us.us.us.i, %bb.cu ], [ %.37313154.us.us.us.i, %bb.cv ], [ %i.bzl, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3536.i = add nuw nsw i64 %indvars.iv3535.i, 1 ; 2 uses
  %exitcond3539.not.i = icmp eq i64 %indvars.iv.next3536.i, %i.bxy
  br i1 %exitcond3539.not.i, label %..loopexit2544_crit_edge.us.us.us.i, label %bb.cu, !llvm.loop !609

..loopexit2544_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.ct, %bb.cs
  %.8.us.us.us.i = phi nsz float [ %.27303159.us.us.us.i, %bb.cs ], [ %.27303159.us.us.us.i, %bb.ct ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3541.i = add nuw nsw i64 %indvars.iv3540.i, 1 ; 2 uses
  %exitcond3544.not.i = icmp eq i64 %indvars.iv.next3541.i, %wide.trip.count3501.i
  br i1 %exitcond3544.not.i, label %._crit_edge3162.split.us.us.us.i, label %bb.cs, !llvm.loop !610

._crit_edge3162.split.us.us.us.i:                 ; preds = %..loopexit2544_crit_edge.us.us.us.i
  %i.bzm = getelementptr inbounds [2 x i8], ptr %.27263169.us.us.i, i64 %i.bnb ; 2 uses
  %indvars.iv.next3546.i = add nuw nsw i64 %indvars.iv3545.i, 2 ; 2 uses
  %i.bzn = trunc i64 %indvars.iv.next3546.i to i32 ; 2 uses
  %i.bzo = or i32 %i.bzn, 1
  %i.bzp = icmp slt i32 %i.bzo, %i.apz
  br i1 %i.bzp, label %.preheader2550.us.us.i, label %.preheader2553.i, !llvm.loop !611

.preheader2553.i:                                 ; preds = %._crit_edge3162.split.us.us.us.i, %.preheader2550.us.preheader.i, %.preheader2550.preheader.i, %._crit_edge3129.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3129.i ], [ %op.rdx, %.preheader2550.preheader.i ], [ %op.rdx, %.preheader2550.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3162.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3129.i ], [ %scevgep3530.i, %.preheader2550.preheader.i ], [ %scevgep3531.i, %.preheader2550.us.preheader.i ], [ %i.bzm, %._crit_edge3162.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3129.i ], [ %i.bxp, %.preheader2550.preheader.i ], [ %i.bxx, %.preheader2550.us.preheader.i ], [ %i.bzn, %._crit_edge3162.split.us.us.us.i ] ; 2 uses
  %i.bzq = icmp slt i32 %.2.lcssa.i, %i.apz
  br i1 %i.bzq, label %.preheader2549.lr.ph.i, label %._crit_edge3208.i

.preheader2549.lr.ph.i:                           ; preds = %.preheader2553.i
  %i.bzr = load i32, ptr %i.d, align 4
  %i.bzs = load i32, ptr %i.j, align 4
  %invariant.op3200.i = sub i32 %.neg2504.i, %i.bzs
  %i.bzt = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bzu = load i32, ptr %i.a, align 4
  %.fr3248.i = freeze i32 %i.bzu                  ; 2 uses
  %i.bzv = load i32, ptr %i.c, align 4
  %i.bzw = load i32, ptr %i.i, align 4
  %.neg2494.i = add nuw nsw i32 %.07323220.i, 1
  %invariant.op3193.i = sub i32 %.neg2494.i, %i.bzw
  %i.bzx = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bzy = icmp sgt i32 %.fr3248.i, 0
  %or.cond3704.i = and i1 %i.bmu, %i.bzy
  br i1 %or.cond3704.i, label %.preheader2549.us.us.preheader.i, label %._crit_edge3208.i

.preheader2549.us.us.preheader.i:                 ; preds = %.preheader2549.lr.ph.i
  %i.bzz = zext nneg i32 %.fr3248.i to i64        ; 2 uses
  %i.caa = zext i32 %.2.lcssa.i to i64
  br label %.preheader2549.us.us.i

.preheader2549.us.us.i:                           ; preds = %._crit_edge3198.split.us.us.us.i, %.preheader2549.us.us.preheader.i
  %indvars.iv3558.i = phi i64 [ %i.caa, %.preheader2549.us.us.preheader.i ], [ %indvars.iv.next3559.i, %._crit_edge3198.split.us.us.us.i ] ; 2 uses
  %.37273205.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2549.us.us.preheader.i ], [ %i.cbk, %._crit_edge3198.split.us.us.us.i ] ; 2 uses
  %.93204.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2549.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3198.split.us.us.us.i ]
  br label %bb.cw

bb.cw:                                            ; preds = %..loopexit2542_crit_edge.us.us.us.i, %.preheader2549.us.us.i
  %indvars.iv3553.i = phi i64 [ %indvars.iv.next3554.i, %..loopexit2542_crit_edge.us.us.us.i ], [ 0, %.preheader2549.us.us.i ] ; 3 uses
  %.103195.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2542_crit_edge.us.us.us.i ], [ %.93204.us.us.i, %.preheader2549.us.us.i ] ; 3 uses
  %i.cab = trunc i64 %indvars.iv3553.i to i32
  %i.cac = mul i32 %i.bzr, %i.cab
  %.reass3201.us.us.us.i = add i32 %i.cac, %invariant.op3200.i ; 3 uses
  %i.cad = icmp slt i32 %.reass3201.us.us.us.i, 0
  br i1 %i.cad, label %..loopexit2542_crit_edge.us.us.us.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.cae = srem i32 %.reass3201.us.us.us.i, %i.bzt
  %i.caf = sdiv i32 %.reass3201.us.us.us.i, %i.bzt ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.cae, 0
  %.not888.us.us.us.i = icmp slt i32 %i.caf, %i.aqb
  %or.cond326 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond326, label %.preheader.us.us.us.i, label %..loopexit2542_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.cx
  %i.cag = mul nuw nsw i64 %indvars.iv3553.i, %i.bzz
  %i.cah = sext i32 %i.caf to i64
  %i.cai = getelementptr inbounds nuw [2 x i8], ptr %.37273205.us.us.i, i64 %i.cag
  %i.caj = mul nsw i64 %i.cah, %i.are
  br label %bb.cy

bb.cy:                                            ; preds = %bb.da, %.preheader.us.us.us.i
  %indvars.iv3548.i = phi i64 [ %indvars.iv.next3549.i, %bb.da ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.113190.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.da ], [ %.103195.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.cak = trunc i64 %indvars.iv3548.i to i32
  %i.cal = mul i32 %i.bzv, %i.cak
  %.reass3194.us.us.us.i = add i32 %invariant.op3193.i, %i.cal ; 3 uses
  %i.cam = icmp slt i32 %.reass3194.us.us.us.i, 0
  br i1 %i.cam, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.can = srem i32 %.reass3194.us.us.us.i, %i.bzx
  %i.cao = sdiv i32 %.reass3194.us.us.us.i, %i.bzx ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.can, 0
  %.not890.us.us.us.i = icmp slt i32 %i.cao, %i.aqa
  %or.cond327 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond327, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.da

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.cz
  %i.cap = load ptr, ptr %1, align 8, !tbaa !20, !noalias !644
  %i.caq = load i64, ptr %i.aqk, align 8, !tbaa !21, !noalias !644
  %i.car = mul i64 %i.caq, %indvars.iv3558.i
  %i.cas = load i64, ptr %i.aql, align 8, !tbaa !55, !noalias !644 ; 2 uses
  %i.cat = mul i64 %i.car, %i.cas
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.cat
  %i.cav = mul i64 %i.caj, %i.cas
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cau, i64 %i.cav
  %i.cax = sext i32 %i.cao to i64
  %i.cay = getelementptr inbounds [2 x i8], ptr %i.caw, i64 %i.cax
  %i.caz = load i16, ptr %i.cay, align 2, !tbaa !89
  %i.cba = zext i16 %i.caz to i32
  %i.cbb = shl nuw i32 %i.cba, 16
  %i.cbc = bitcast i32 %i.cbb to float
  %i.cbd = getelementptr inbounds nuw [2 x i8], ptr %i.cai, i64 %indvars.iv3548.i
  %i.cbe = load i16, ptr %i.cbd, align 2, !tbaa !89
  %i.cbf = zext i16 %i.cbe to i32
  %i.cbg = shl nuw i32 %i.cbf, 16
  %i.cbh = bitcast i32 %i.cbg to float
  %i.cbi = fmul fast float %i.cbh, %i.cbc
  %i.cbj = fadd fast float %i.cbi, %.113190.us.us.us.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.cz, %bb.cy
  %.13.us.us.us.i = phi nsz float [ %.113190.us.us.us.i, %bb.cy ], [ %.113190.us.us.us.i, %bb.cz ], [ %i.cbj, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3549.i = add nuw nsw i64 %indvars.iv3548.i, 1 ; 2 uses
  %exitcond3552.not.i = icmp eq i64 %indvars.iv.next3549.i, %i.bzz
  br i1 %exitcond3552.not.i, label %..loopexit2542_crit_edge.us.us.us.i, label %bb.cy, !llvm.loop !614

..loopexit2542_crit_edge.us.us.us.i:              ; preds = %bb.da, %bb.cx, %bb.cw
  %.15.us.us.us.i = phi nsz float [ %.103195.us.us.us.i, %bb.cw ], [ %.103195.us.us.us.i, %bb.cx ], [ %.13.us.us.us.i, %bb.da ] ; 3 uses
  %indvars.iv.next3554.i = add nuw nsw i64 %indvars.iv3553.i, 1 ; 2 uses
  %exitcond3557.not.i = icmp eq i64 %indvars.iv.next3554.i, %wide.trip.count3501.i
  br i1 %exitcond3557.not.i, label %._crit_edge3198.split.us.us.us.i, label %bb.cw, !llvm.loop !615

._crit_edge3198.split.us.us.us.i:                 ; preds = %..loopexit2542_crit_edge.us.us.us.i
  %i.cbk = getelementptr inbounds [2 x i8], ptr %.37273205.us.us.i, i64 %i.bnc
  %indvars.iv.next3559.i = add nuw nsw i64 %indvars.iv3558.i, 1 ; 2 uses
  %i.cbl = trunc nuw i64 %indvars.iv.next3559.i to i32
  %i.cbm = icmp sgt i32 %i.apz, %i.cbl
  br i1 %i.cbm, label %.preheader2549.us.us.i, label %._crit_edge3208.i, !llvm.loop !616

._crit_edge3208.i:                                ; preds = %._crit_edge3198.split.us.us.us.i, %.preheader2549.lr.ph.i, %.preheader2553.i
  %.9.lcssa.i = phi float [ %.1729.lcssa.i, %.preheader2553.i ], [ %.1729.lcssa.i, %.preheader2549.lr.ph.i ], [ %.15.us.us.us.i, %._crit_edge3198.split.us.us.us.i ] ; 13 uses
  switch i32 %i.bmr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i [
    i32 1, label %bb.db
    i32 2, label %bb.dc
    i32 3, label %bb.dd
    i32 4, label %bb.de
    i32 5, label %bb.df
    i32 6, label %bb.dg
  ]

bb.db:                                            ; preds = %._crit_edge3208.i
  %i.cbn = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.9.lcssa.i, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dc:                                            ; preds = %._crit_edge3208.i
  %i.cbo = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.cbp = load float, ptr %i.cbo, align 4, !tbaa !39
  %i.cbq = fcmp fast ogt float %.9.lcssa.i, 0.000000e+00
  %i.cbr = select fast i1 %i.cbq, float 1.000000e+00, float %i.cbp
  %i.cbs = fmul fast float %i.cbr, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dd:                                            ; preds = %._crit_edge3208.i
  %i.cbt = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.cbu = load float, ptr %i.cbt, align 4, !tbaa !39
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbt, i64 4
  %i.cbw = load float, ptr %i.cbv, align 4, !tbaa !39
  %spec.select2488.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.9.lcssa.i, float %i.cbu)
  %spec.select2489.i = call nnan ninf nsz float @llvm.minnum.f32(float %spec.select2488.i, float %i.cbw)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.de:                                            ; preds = %._crit_edge3208.i
  %.sroa.speculated2235.i = call nnan ninf nsz float @llvm.minnum.f32(float %.9.lcssa.i, float f0x42B0C0A5)
  %.sroa.speculated.i = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2235.i, float f0xC2B0C0A5)
  %i.cbx = fneg fast float %.sroa.speculated.i
  %i.cby = call fast float @llvm.exp.f32(float %i.cbx)
  %i.cbz = fadd fast float %i.cby, 1.000000e+00
  %i.cca = fdiv fast float 1.000000e+00, %i.cbz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.df:                                            ; preds = %._crit_edge3208.i
  %i.ccb = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.9.lcssa.i)
  %i.ccc = fadd fast float %i.ccb, 1.000000e+00
  %i.ccd = call fast float @llvm.log.f32(float %i.ccc)
  %i.cce = call fast float @llvm.tanh.f32(float %i.ccd)
  %i.ccf = fmul fast float %i.cce, %.9.lcssa.i
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i

bb.dg:                                            ; preds = %._crit_edge3208.i
  %i.ccg = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.cch = load float, ptr %i.ccg, align 4, !tbaa !39 ; 3 uses
  %i.cci = getelementptr inbounds nuw i8, ptr %i.ccg, i64 4
  %i.ccj = load float, ptr %i.cci, align 4, !tbaa !39 ; 2 uses
  %i.cck = fneg fast float %i.ccj
  %i.ccl = fdiv fast float %i.cck, %i.cch         ; 2 uses
  %i.ccm = fcmp fast olt float %.9.lcssa.i, %i.ccl
  br i1 %i.ccm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
end_hunk_7
begin_hunk_8_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.cv = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.cw = srem i32 %.reass.us, %i.cv
  %i.cx = sdiv i32 %.reass.us, %i.cv              ; 4 uses
  %.not384.us = icmp eq i32 %i.cw, 0
  %.not385.us = icmp slt i32 %i.cx, %i.ad
  %or.cond1555 = select i1 %.not384.us, i1 %.not385.us, i1 false
  br i1 %or.cond1555, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cy = trunc i64 %indvars.iv to i32
  %i.cz = add i32 %i.kq, %i.cy
  %i.da = shl nsw i32 %i.cz, 6
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.03291286.us, i64 %i.db ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %bb.j
    i32 4, label %_ZN4ncnn3MatD2Ev.exit402.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit400.us
  ]

_ZN4ncnn3MatD2Ev.exit400.us:                      ; preds = %bb.i
  %i.dd = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !714
  %i.de = load ptr, ptr %4, align 8, !tbaa !20, !noalias !714 ; 8 uses
  %i.df = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !714 ; 8 uses
  %i.dg = mul i64 %i.df, %indvars.iv1450
  %i.dh = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !714 ; 9 uses
  %i.di = mul i64 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di
  %i.dk = sext i32 %i.dd to i64
  %i.dl = mul nsw i64 %i.dk, %i.kr
  %i.dm = mul i64 %i.dl, %i.dh                    ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dm
  %i.do = sext i32 %i.cx to i64                   ; 8 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.do
  %i.dq = mul i64 %i.df, %i.ce
  %i.dr = mul i64 %i.dq, %i.dh
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dm
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.do
  %i.dv = mul i64 %i.df, %i.cf
  %i.dw = mul i64 %i.dv, %i.dh
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dm
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.do
  %i.ea = mul i64 %i.df, %i.cg
  %i.eb = mul i64 %i.ea, %i.dh
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dm
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.do
  %i.ef = mul i64 %i.df, %i.ch
  %i.eg = mul i64 %i.ef, %i.dh
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dm
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.do
  %i.ek = mul i64 %i.df, %i.ci
  %i.el = mul i64 %i.ek, %i.dh
  %i.em = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.dm
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.do
  %i.ep = mul i64 %i.df, %i.cj
  %i.eq = mul i64 %i.ep, %i.dh
  %i.er = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.dm
  %i.et = mul i64 %i.df, %i.cd
  %i.eu = mul i64 %i.et, %i.dh
  %i.ev = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.eu
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.do
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.dm
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.do
  %i.ez = load float, ptr %i.dp, align 1, !tbaa !82
  %i.fa = insertelement <8 x float> poison, float %i.ez, i64 0
  %i.fb = shufflevector <8 x float> %i.fa, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fc = load float, ptr %i.du, align 1, !tbaa !82
  %i.fd = insertelement <8 x float> poison, float %i.fc, i64 0
  %i.fe = shufflevector <8 x float> %i.fd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ff = load float, ptr %i.dz, align 1, !tbaa !82
  %i.fg = insertelement <8 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <8 x float> %i.fg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fi = load float, ptr %i.ee, align 1, !tbaa !82
  %i.fj = insertelement <8 x float> poison, float %i.fi, i64 0
  %i.fk = shufflevector <8 x float> %i.fj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fl = load float, ptr %i.ej, align 1, !tbaa !82
  %i.fm = insertelement <8 x float> poison, float %i.fl, i64 0
  %i.fn = shufflevector <8 x float> %i.fm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fo = load float, ptr %i.eo, align 1, !tbaa !82
  %i.fp = insertelement <8 x float> poison, float %i.fo, i64 0
  %i.fq = shufflevector <8 x float> %i.fp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fr = load float, ptr %i.ew, align 1, !tbaa !82
  %i.fs = insertelement <8 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <8 x float> %i.fs, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit402.us:                      ; preds = %bb.i
  %i.fu = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !715
  %i.fv = load ptr, ptr %4, align 8, !tbaa !20, !noalias !715 ; 2 uses
  %i.fw = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !715 ; 2 uses
  %i.fx = mul i64 %i.fw, %i.ck
  %i.fy = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !715 ; 3 uses
  %i.fz = mul i64 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fz
  %i.gb = sext i32 %i.fu to i64
  %i.gc = mul nsw i64 %i.gb, %i.kr
  %i.gd = mul i64 %i.gc, %i.fy                    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd
  %i.gf = mul i64 %i.fw, %i.cl
  %i.gg = mul i64 %i.gf, %i.fy
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gg
  %i.gi = shl nsw i32 %i.cx, 2
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gj ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gd
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gj ; 4 uses
  %i.gn = load float, ptr %i.gk, align 1, !tbaa !82
  %i.go = insertelement <8 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <8 x float> %i.go, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gr = load float, ptr %i.gq, align 1, !tbaa !82
  %i.gs = insertelement <8 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <8 x float> %i.gs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gv = load float, ptr %i.gu, align 1, !tbaa !82
  %i.gw = insertelement <8 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <8 x float> %i.gw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gz = load float, ptr %i.gy, align 1, !tbaa !82
  %i.ha = insertelement <8 x float> poison, float %i.gz, i64 0
  %i.hb = shufflevector <8 x float> %i.ha, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hc = load float, ptr %i.gm, align 1, !tbaa !82
  %i.hd = insertelement <8 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <8 x float> %i.hd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.hg = load float, ptr %i.hf, align 1, !tbaa !82
  %i.hh = insertelement <8 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <8 x float> %i.hh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.hk = load float, ptr %i.hj, align 1, !tbaa !82
  %i.hl = insertelement <8 x float> poison, float %i.hk, i64 0
  %i.hm = shufflevector <8 x float> %i.hl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.ho = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !716
  %i.hp = load ptr, ptr %4, align 8, !tbaa !20, !noalias !716
  %i.hq = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !716
  %i.hr = mul i64 %i.hq, %i.cm
  %i.hs = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !716 ; 2 uses
  %i.ht = mul i64 %i.hr, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ht
  %i.hv = sext i32 %i.ho to i64
  %i.hw = mul nsw i64 %i.hv, %i.kr
  %i.hx = mul i64 %i.hw, %i.hs
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hx
  %i.hz = shl nsw i32 %i.cx, 3
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ia ; 8 uses
  %i.ic = load float, ptr %i.ib, align 1, !tbaa !82
  %i.id = insertelement <8 x float> poison, float %i.ic, i64 0
  %i.ie = shufflevector <8 x float> %i.id, <8 x float> poison, <8 x i32> zeroinitializer
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.ig = load float, ptr %i.if, align 1, !tbaa !82
  %i.ih = insertelement <8 x float> poison, float %i.ig, i64 0
  %i.ii = shufflevector <8 x float> %i.ih, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ik = load float, ptr %i.ij, align 1, !tbaa !82
  %i.il = insertelement <8 x float> poison, float %i.ik, i64 0
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %i.io = load float, ptr %i.in, align 1, !tbaa !82
  %i.ip = insertelement <8 x float> poison, float %i.io, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.is = load float, ptr %i.ir, align 1, !tbaa !82
  %i.it = insertelement <8 x float> poison, float %i.is, i64 0
  %i.iu = shufflevector <8 x float> %i.it, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 20
  %i.iw = load float, ptr %i.iv, align 1, !tbaa !82
  %i.ix = insertelement <8 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <8 x float> %i.ix, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.ja = load float, ptr %i.iz, align 1, !tbaa !82
  %i.jb = insertelement <8 x float> poison, float %i.ja, i64 0
  %i.jc = shufflevector <8 x float> %i.jb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit400.us, %_ZN4ncnn3MatD2Ev.exit402.us, %bb.j
  %.sink1546.in = phi ptr [ %i.jd, %bb.j ], [ %i.hn, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1545 = phi <8 x float> [ %i.ie, %bb.j ], [ %i.gp, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fb, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1543.a = phi <8 x float> [ %i.ii, %bb.j ], [ %i.gt, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fe, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1541 = phi <8 x float> [ %i.im, %bb.j ], [ %i.gx, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fh, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1539 = phi <8 x float> [ %i.iq, %bb.j ], [ %i.hb, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fk, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1537 = phi <8 x float> [ %i.iu, %bb.j ], [ %i.he, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fn, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1534 = phi <8 x float> [ %i.iy, %bb.j ], [ %i.hi, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fq, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1531 = phi <8 x float> [ %i.jc, %bb.j ], [ %i.hm, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ft, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1546 = load float, ptr %.sink1546.in, align 1, !tbaa !82
  %i.je = insertelement <8 x float> poison, float %.sink1546, i64 0
  %i.jf = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jg = load <8 x float>, ptr %i.dc, align 32, !tbaa !82
  %i.jh = fmul fast <8 x float> %i.jg, %.sink1545
  %i.ji = fadd fast <8 x float> %i.jh, %.311801265.us
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.jk = load <8 x float>, ptr %i.jj, align 32, !tbaa !82
  %i.jl = fmul fast <8 x float> %i.jk, %.sink1543.a
  %i.jm = fadd fast <8 x float> %i.jl, %.211841264.us
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.jo = load <8 x float>, ptr %i.jn, align 32, !tbaa !82
  %i.jp = fmul fast <8 x float> %i.jo, %.sink1541
  %i.jq = fadd fast <8 x float> %i.jp, %.212021263.us
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.js = load <8 x float>, ptr %i.jr, align 32, !tbaa !82
  %i.jt = fmul fast <8 x float> %i.js, %.sink1539
  %i.ju = fadd fast <8 x float> %i.jt, %.212151262.us
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.jw = load <8 x float>, ptr %i.jv, align 32, !tbaa !82
  %i.jx = fmul fast <8 x float> %i.jw, %.sink1537
  %i.jy = fadd fast <8 x float> %i.ji, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  %i.ka = load <8 x float>, ptr %i.jz, align 32, !tbaa !82
  %i.kb = fmul fast <8 x float> %i.ka, %.sink1534
  %i.kc = fadd fast <8 x float> %i.jm, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.ke = load <8 x float>, ptr %i.kd, align 32, !tbaa !82
  %i.kf = fmul fast <8 x float> %i.ke, %.sink1531
  %i.kg = fadd fast <8 x float> %i.jq, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.dc, i64 224
  %i.ki = load <8 x float>, ptr %i.kh, align 32, !tbaa !82
  %i.kj = fmul fast <8 x float> %i.ki, %i.jf
  %i.kk = fadd fast <8 x float> %i.ju, %i.kj
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %.51218.us = phi nsz <8 x float> [ %.212151262.us, %bb.g ], [ %.212151262.us, %bb.i ], [ %.212151262.us, %bb.h ], [ %i.kk, %.sink.split ] ; 2 uses
  %.51205.us = phi nsz <8 x float> [ %.212021263.us, %bb.g ], [ %.212021263.us, %bb.i ], [ %.212021263.us, %bb.h ], [ %i.kg, %.sink.split ] ; 2 uses
  %.51187.us = phi nsz <8 x float> [ %.211841264.us, %bb.g ], [ %.211841264.us, %bb.i ], [ %.211841264.us, %bb.h ], [ %i.kc, %.sink.split ] ; 2 uses
  %.6.us = phi nsz <8 x float> [ %.311801265.us, %bb.g ], [ %.311801265.us, %bb.i ], [ %.311801265.us, %bb.h ], [ %i.jy, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1253.us, label %bb.g, !llvm.loop !691

.loopexit1253.us:                                 ; preds = %bb.k, %.preheader1252.us, %bb.f, %bb.e
  %.61219.us = phi nsz <8 x float> [ %.112141270.us, %bb.e ], [ %.112141270.us, %bb.f ], [ %.112141270.us, %.preheader1252.us ], [ %.51218.us, %bb.k ] ; 3 uses
  %.61206.us = phi nsz <8 x float> [ %.112011271.us, %bb.e ], [ %.112011271.us, %bb.f ], [ %.112011271.us, %.preheader1252.us ], [ %.51205.us, %bb.k ] ; 3 uses
  %.61188.us = phi nsz <8 x float> [ %.111831272.us, %bb.e ], [ %.111831272.us, %bb.f ], [ %.111831272.us, %.preheader1252.us ], [ %.51187.us, %bb.k ] ; 3 uses
  %.7.us = phi nsz <8 x float> [ %.211791273.us, %bb.e ], [ %.211791273.us, %bb.f ], [ %.211791273.us, %.preheader1252.us ], [ %.6.us, %bb.k ] ; 3 uses
  %i.kl = add nuw nsw i32 %.03271274.us, 1        ; 2 uses
  %exitcond1449.not = icmp eq i32 %i.kl, %i.bu
  br i1 %exitcond1449.not, label %._crit_edge.us, label %bb.e, !llvm.loop !692

.preheader1252.us:                                ; preds = %bb.f
  %i.km = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.lr.ph.us, label %.loopexit1253.us

.lr.ph.us:                                        ; preds = %.preheader1252.us
  %i.ko = load i32, ptr %13, align 4, !tbaa !61
  %i.kp = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us = sub i32 %.neg1247, %i.kp
  %i.kq = mul nuw nsw i32 %i.km, %.03271274.us
  %i.kr = sext i32 %i.cr to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.km to i64
  br label %bb.g

._crit_edge.us:                                   ; preds = %.loopexit1253.us
  %i.ks = getelementptr inbounds [4 x i8], ptr %.03291286.us, i64 %i.by ; 2 uses
  %indvars.iv.next1451 = add nuw nsw i64 %indvars.iv1450, 8 ; 2 uses
  %i.kt = icmp slt i64 %indvars.iv.next1451, %invariant.op
  br i1 %i.kt, label %.preheader1257.us, label %.preheader1260, !llvm.loop !693

.preheader1260:                                   ; preds = %._crit_edge.us, %.preheader1257.preheader, %_ZN4ncnn3MatD2Ev.exit404
  %.01213.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1257.preheader ], [ %.61219.us, %._crit_edge.us ] ; 3 uses
  %.01200.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1257.preheader ], [ %.61206.us, %._crit_edge.us ] ; 3 uses
  %.01182.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1257.preheader ], [ %.61188.us, %._crit_edge.us ] ; 3 uses
  %.11178.lcssa = phi <8 x float> [ %.01177, %_ZN4ncnn3MatD2Ev.exit404 ], [ %.01177, %.preheader1257.preheader ], [ %.7.us, %._crit_edge.us ] ; 3 uses
  %.0329.lcssa = phi ptr [ %i.bt, %_ZN4ncnn3MatD2Ev.exit404 ], [ %scevgep, %.preheader1257.preheader ], [ %i.ks, %._crit_edge.us ] ; 3 uses
  %.0328.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit404 ], [ %i.be, %.preheader1257.preheader ], [ %i.bh, %._crit_edge.us ] ; 5 uses
  %i.ku = or disjoint i32 %.0328.lcssa, 3         ; 2 uses
  %i.kv = icmp slt i32 %i.ku, %i.ac
  br i1 %i.kv, label %.preheader1256.lr.ph, label %.preheader1259

.preheader1256.lr.ph:                             ; preds = %.preheader1260
  %i.kw = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, 0
  %.neg1243 = add nuw nsw i32 %.03331423, 1
  %i.ky = load i32, ptr %16, align 4, !tbaa !61
  %i.kz = shl i32 %i.ky, 5
  %i.la = sext i32 %i.kz to i64                   ; 2 uses
  br i1 %i.kx, label %.preheader1256.lr.ph.split.us, label %.preheader1256.preheader

.preheader1256.preheader:                         ; preds = %.preheader1256.lr.ph
  %i.lb = sub i32 %i.bi, %.0328.lcssa             ; 2 uses
  %i.lc = and i32 %i.lb, -4
  %i.ld = zext i32 %i.lc to i64
  %i.le = add nuw nsw i64 %i.ld, 4
  %i.lf = mul nsw i64 %i.le, %i.la
  %scevgep1453 = getelementptr i8, ptr %.0329.lcssa, i64 %i.lf
  %i.lg = add i32 %.0328.lcssa, 4
  %i.lh = and i32 %i.lb, -4
  %i.li = add i32 %i.lg, %i.lh
  br label %.preheader1259

.preheader1256.lr.ph.split.us:                    ; preds = %.preheader1256.lr.ph
  %i.lj = load i32, ptr %9, align 4, !tbaa !61
  %i.lk = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1343.us = sub i32 %.neg1245, %i.lk
  %i.ll = zext i32 %.0328.lcssa to i64
  %i.lm = zext nneg i32 %i.ku to i64
  br label %.preheader1256.us

.preheader1256.us:                                ; preds = %._crit_edge.us1366, %.preheader1256.lr.ph.split.us
  %indvars.iv1465 = phi i64 [ %indvars.iv.next1466, %._crit_edge.us1366 ], [ %i.ll, %.preheader1256.lr.ph.split.us ] ; 5 uses
  %i.ln = phi i64 [ %i.qv, %._crit_edge.us1366 ], [ %i.lm, %.preheader1256.lr.ph.split.us ]
  %.13301349.us = phi ptr [ %i.qu, %._crit_edge.us1366 ], [ %.0329.lcssa, %.preheader1256.lr.ph.split.us ] ; 3 uses
  %.81348.us = phi <8 x float> [ %.13.us, %._crit_edge.us1366 ], [ %.11178.lcssa, %.preheader1256.lr.ph.split.us ]
  %.711891347.us = phi <8 x float> [ %.121194.us, %._crit_edge.us1366 ], [ %.01182.lcssa, %.preheader1256.lr.ph.split.us ]
  %.712071346.us = phi <8 x float> [ %.121212.us, %._crit_edge.us1366 ], [ %.01200.lcssa, %.preheader1256.lr.ph.split.us ]
  %.712201345.us = phi <8 x float> [ %.121225.us, %._crit_edge.us1366 ], [ %.01213.lcssa, %.preheader1256.lr.ph.split.us ]
  %i.lo = or disjoint i64 %indvars.iv1465, 1
  %i.lp = or disjoint i64 %indvars.iv1465, 2
  %i.lq = lshr exact i64 %indvars.iv1465, 2
  br label %bb.l

bb.l:                                             ; preds = %.preheader1256.us, %.loopexit1251.us
  %.03251338.us = phi i32 [ 0, %.preheader1256.us ], [ %i.qt, %.loopexit1251.us ] ; 3 uses
  %.91337.us = phi <8 x float> [ %.81348.us, %.preheader1256.us ], [ %.13.us, %.loopexit1251.us ] ; 6 uses
  %.811901336.us = phi <8 x float> [ %.711891347.us, %.preheader1256.us ], [ %.121194.us, %.loopexit1251.us ] ; 6 uses
  %.812081335.us = phi <8 x float> [ %.712071346.us, %.preheader1256.us ], [ %.121212.us, %.loopexit1251.us ] ; 6 uses
  %.812211334.us = phi <8 x float> [ %.712201345.us, %.preheader1256.us ], [ %.121225.us, %.loopexit1251.us ] ; 6 uses
  %i.lr = mul nsw i32 %i.lj, %.03251338.us
  %.reass1344.us = add i32 %i.lr, %invariant.op1343.us ; 3 uses
  %i.ls = icmp slt i32 %.reass1344.us, 0
  br i1 %i.ls, label %.loopexit1251.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.lt = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.lu = srem i32 %.reass1344.us, %i.lt
  %i.lv = sdiv i32 %.reass1344.us, %i.lt          ; 2 uses
  %.not378.us = icmp eq i32 %i.lu, 0
  %.not379.us = icmp slt i32 %i.lv, %i.ae
  %or.cond1556 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1556, label %.preheader1250.us, label %.loopexit1251.us

.preheader1250.us:                                ; preds = %bb.m
  %i.lw = load i32, ptr %12, align 4, !tbaa !61   ; 4 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.lr.ph.us1357, label %.loopexit1251.us

.lr.ph.us1357:                                    ; preds = %.preheader1250.us
  %i.ly = load i32, ptr %13, align 4, !tbaa !61   ; 2 uses
  %i.lz = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1358 = sub i32 %.neg1243, %i.lz ; 2 uses
  %i.ma = mul nuw nsw i32 %i.lw, %.03251338.us    ; 2 uses
  %i.mb = sext i32 %i.lv to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1251.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1313.us.preheader
  ]

.lr.ph.split.us1313.us.preheader:                 ; preds = %.lr.ph.us1357
  %wide.trip.count1457 = zext nneg i32 %i.lw to i64
  br label %.lr.ph.split.us1313.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1357
  %wide.trip.count1462 = zext nneg i32 %i.lw to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us1313.us:                           ; preds = %.lr.ph.split.us1313.us.preheader, %bb.o
  %indvars.iv1454 = phi i64 [ 0, %.lr.ph.split.us1313.us.preheader ], [ %indvars.iv.next1455, %bb.o ] ; 3 uses
  %.101302.us1315.us = phi <8 x float> [ %.91337.us, %.lr.ph.split.us1313.us.preheader ], [ %.12.us1325.us, %bb.o ] ; 3 uses
  %.911911301.us1316.us = phi <8 x float> [ %.811901336.us, %.lr.ph.split.us1313.us.preheader ], [ %.111193.us1324.us, %bb.o ] ; 3 uses
  %.912091300.us1317.us = phi <8 x float> [ %.812081335.us, %.lr.ph.split.us1313.us.preheader ], [ %.111211.us1323.us, %bb.o ] ; 3 uses
  %.912221299.us1318.us = phi <8 x float> [ %.812211334.us, %.lr.ph.split.us1313.us.preheader ], [ %.111224.us1322.us, %bb.o ] ; 3 uses
  %i.mc = trunc i64 %indvars.iv1454 to i32
  %i.md = mul i32 %i.ly, %i.mc
  %.reass.us1319.us = add i32 %i.md, %invariant.op.us1358 ; 3 uses
  %i.me = icmp slt i32 %.reass.us1319.us, 0
  br i1 %i.me, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us1313.us
  %i.mf = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.mg = srem i32 %.reass.us1319.us, %i.mf
  %i.mh = sdiv i32 %.reass.us1319.us, %i.mf       ; 2 uses
  %.not380.us1320.us = icmp eq i32 %i.mg, 0
  %.not381.us1321.us = icmp slt i32 %i.mh, %i.ad
  %or.cond1557 = select i1 %.not380.us1320.us, i1 %.not381.us1321.us, i1 false
  br i1 %or.cond1557, label %_ZN4ncnn3MatD2Ev.exit391.us.us, label %bb.o

_ZN4ncnn3MatD2Ev.exit391.us.us:                   ; preds = %bb.n
  %i.mi = trunc i64 %indvars.iv1454 to i32
  %i.mj = add i32 %i.ma, %i.mi
  %i.mk = shl nsw i32 %i.mj, 5
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.13301349.us, i64 %i.ml ; 4 uses
  %i.mn = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !717
  %i.mo = load ptr, ptr %4, align 8, !tbaa !20, !noalias !717 ; 4 uses
  %i.mp = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !717 ; 4 uses
  %i.mq = mul i64 %i.mp, %indvars.iv1465
  %i.mr = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !717 ; 5 uses
  %i.ms = mul i64 %i.mq, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ms
  %i.mu = sext i32 %i.mn to i64
  %i.mv = mul nsw i64 %i.mu, %i.mb
  %i.mw = mul i64 %i.mv, %i.mr                    ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mw
  %i.my = sext i32 %i.mh to i64                   ; 4 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.my
  %i.na = mul i64 %i.mp, %i.lo
  %i.nb = mul i64 %i.na, %i.mr
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.mw
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.nd, i64 %i.my
  %i.nf = mul i64 %i.mp, %i.lp
  %i.ng = mul i64 %i.nf, %i.mr
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.mw
  %i.nj = mul i64 %i.mp, %i.ln
  %i.nk = mul i64 %i.nj, %i.mr
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.nk
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.ni, i64 %i.my
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.mw
  %i.no = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %i.my
  %i.np = load float, ptr %i.mz, align 1, !tbaa !82
  %i.nq = insertelement <8 x float> poison, float %i.np, i64 0
  %i.nr = shufflevector <8 x float> %i.nq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ns = load float, ptr %i.ne, align 1, !tbaa !82
  %i.nt = insertelement <8 x float> poison, float %i.ns, i64 0
  %i.nu = shufflevector <8 x float> %i.nt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nv = load float, ptr %i.nm, align 1, !tbaa !82
  %i.nw = insertelement <8 x float> poison, float %i.nv, i64 0
end_hunk_8
begin_hunk_9_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ty = trunc nuw i64 %i.tx to i32
  %i.tz = icmp sgt i32 %i.ac, %i.ty
  br i1 %i.tz, label %.preheader1255.us, label %.preheader1258.loopexit, !llvm.loop !705

.preheader1258.loopexit:                          ; preds = %._crit_edge.us1398
  %i.ua = trunc nuw i64 %indvars.iv.next1476 to i32
  br label %.preheader1258

.preheader1258:                                   ; preds = %.preheader1255.preheader, %.preheader1258.loopexit, %.preheader1259
  %.131195.lcssa = phi <8 x float> [ %.71189.lcssa, %.preheader1259 ], [ %.171199.us, %.preheader1258.loopexit ], [ %.71189.lcssa, %.preheader1255.preheader ]
  %.14.lcssa = phi <8 x float> [ %.8.lcssa, %.preheader1259 ], [ %.18.us, %.preheader1258.loopexit ], [ %.8.lcssa, %.preheader1255.preheader ] ; 3 uses
  %.2331.lcssa = phi ptr [ %.1330.lcssa, %.preheader1259 ], [ %i.tw, %.preheader1258.loopexit ], [ %scevgep1468, %.preheader1255.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1259 ], [ %i.ua, %.preheader1258.loopexit ], [ %i.ro, %.preheader1255.preheader ] ; 2 uses
  %i.ub = icmp slt i32 %.2.lcssa, %i.ac
  br i1 %i.ub, label %.preheader1254.lr.ph, label %._crit_edge1414

.preheader1254.lr.ph:                             ; preds = %.preheader1258
  %i.uc = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.ud = icmp sgt i32 %i.uc, 0
  %.neg1235 = add nuw nsw i32 %.03331423, 1
  %i.ue = load i32, ptr %16, align 4, !tbaa !61
  %i.uf = shl nsw i32 %i.ue, 3
  %i.ug = sext i32 %i.uf to i64
  br i1 %i.ud, label %.preheader1254.lr.ph.split.us, label %._crit_edge1414

.preheader1254.lr.ph.split.us:                    ; preds = %.preheader1254.lr.ph
  %i.uh = load i32, ptr %9, align 4, !tbaa !61
  %i.ui = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1409.us = sub i32 %.neg1245, %i.ui
  %i.uj = zext i32 %.2.lcssa to i64
  br label %.preheader1254.us

.preheader1254.us:                                ; preds = %._crit_edge.us1420, %.preheader1254.lr.ph.split.us
  %indvars.iv1484 = phi i64 [ %indvars.iv.next1485, %._crit_edge.us1420 ], [ %i.uj, %.preheader1254.lr.ph.split.us ] ; 2 uses
  %.33321412.us = phi ptr [ %i.wa, %._crit_edge.us1420 ], [ %.2331.lcssa, %.preheader1254.lr.ph.split.us ] ; 2 uses
  %.191411.us = phi <8 x float> [ %.23.us, %._crit_edge.us1420 ], [ %.14.lcssa, %.preheader1254.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader1254.us, %.loopexit.us
  %.03211406.us = phi i32 [ 0, %.preheader1254.us ], [ %i.vv, %.loopexit.us ] ; 3 uses
  %.201405.us = phi <8 x float> [ %.191411.us, %.preheader1254.us ], [ %.23.us, %.loopexit.us ] ; 4 uses
  %i.uk = mul nsw i32 %i.uh, %.03211406.us
  %.reass1410.us = add i32 %i.uk, %invariant.op1409.us ; 3 uses
  %i.ul = icmp slt i32 %.reass1410.us, 0
  br i1 %i.ul, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.um = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.un = srem i32 %.reass1410.us, %i.um
  %i.uo = sdiv i32 %.reass1410.us, %i.um          ; 2 uses
  %.not370.us = icmp eq i32 %i.un, 0
  %.not371.us = icmp slt i32 %i.uo, %i.ae
  %or.cond1561 = select i1 %.not370.us, i1 %.not371.us, i1 false
  br i1 %or.cond1561, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.y
  %i.up = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.uq = icmp sgt i32 %i.up, 0
  br i1 %i.uq, label %.lr.ph.us1417, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us1417, %bb.ac
  %indvars.iv1478 = phi i64 [ 0, %.lr.ph.us1417 ], [ %indvars.iv.next1479, %bb.ac ] ; 3 uses
  %.211403.us = phi <8 x float> [ %.201405.us, %.lr.ph.us1417 ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.ur = trunc i64 %indvars.iv1478 to i32
  %i.us = mul i32 %i.vw, %i.ur
  %.reass.us1416 = add i32 %i.us, %invariant.op.us1418 ; 3 uses
  %i.ut = icmp slt i32 %.reass.us1416, 0
  br i1 %i.ut, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.uu = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.uv = srem i32 %.reass.us1416, %i.uu
  %i.uw = sdiv i32 %.reass.us1416, %i.uu          ; 2 uses
  %.not372.us = icmp eq i32 %i.uv, 0
  %.not373.us = icmp slt i32 %i.uw, %i.ad
  %or.cond1562 = select i1 %.not372.us, i1 %.not373.us, i1 false
  br i1 %or.cond1562, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ux = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !720
  %i.uy = load ptr, ptr %4, align 8, !tbaa !20, !noalias !720
  %i.uz = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !720
  %i.va = mul i64 %i.uz, %indvars.iv1484
  %i.vb = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !720 ; 2 uses
  %i.vc = mul i64 %i.va, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.vc
  %i.ve = sext i32 %i.ux to i64
  %i.vf = trunc i64 %indvars.iv1478 to i32
  %i.vg = add i32 %i.vy, %i.vf
  %i.vh = shl nsw i32 %i.vg, 3
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.33321412.us, i64 %i.vi
  %i.vk = mul nsw i64 %i.ve, %i.vz
  %i.vl = mul i64 %i.vk, %i.vb
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vl
  %i.vn = sext i32 %i.uw to i64
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.vn
  %i.vp = load float, ptr %i.vo, align 1, !tbaa !82
  %i.vq = insertelement <8 x float> poison, float %i.vp, i64 0
  %i.vr = shufflevector <8 x float> %i.vq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.vs = load <8 x float>, ptr %i.vj, align 32, !tbaa !82
  %i.vt = fmul fast <8 x float> %i.vr, %i.vs
  %i.vu = fadd fast <8 x float> %i.vt, %.211403.us
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.22.us = phi nsz <8 x float> [ %.211403.us, %bb.z ], [ %i.vu, %bb.ab ], [ %.211403.us, %bb.aa ] ; 2 uses
  %indvars.iv.next1479 = add nuw nsw i64 %indvars.iv1478, 1 ; 2 uses
  %exitcond1482.not = icmp eq i64 %indvars.iv.next1479, %wide.trip.count1481
  br i1 %exitcond1482.not, label %.loopexit.us, label %bb.z, !llvm.loop !708

.loopexit.us:                                     ; preds = %bb.ac, %.preheader.us, %bb.y, %bb.x
  %.23.us = phi nsz <8 x float> [ %.201405.us, %bb.x ], [ %.201405.us, %bb.y ], [ %.201405.us, %.preheader.us ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.vv = add nuw nsw i32 %.03211406.us, 1        ; 2 uses
  %exitcond1483.not = icmp eq i32 %i.vv, %i.uc
  br i1 %exitcond1483.not, label %._crit_edge.us1420, label %bb.x, !llvm.loop !709

.lr.ph.us1417:                                    ; preds = %.preheader.us
  %i.vw = load i32, ptr %13, align 4, !tbaa !61
  %i.vx = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1418 = sub i32 %.neg1235, %i.vx
  %i.vy = mul nuw nsw i32 %i.up, %.03211406.us
  %i.vz = sext i32 %i.uo to i64
  %wide.trip.count1481 = zext nneg i32 %i.up to i64
  br label %bb.z

._crit_edge.us1420:                               ; preds = %.loopexit.us
  %i.wa = getelementptr inbounds [4 x i8], ptr %.33321412.us, i64 %i.ug
  %indvars.iv.next1485 = add nuw nsw i64 %indvars.iv1484, 1 ; 2 uses
  %i.wb = trunc nuw i64 %indvars.iv.next1485 to i32
  %i.wc = icmp sgt i32 %i.ac, %i.wb
  br i1 %i.wc, label %.preheader1254.us, label %._crit_edge1414, !llvm.loop !710

._crit_edge1414:                                  ; preds = %._crit_edge.us1420, %.preheader1254.lr.ph, %.preheader1258
  %.19.lcssa = phi <8 x float> [ %.14.lcssa, %.preheader1258 ], [ %.14.lcssa, %.preheader1254.lr.ph ], [ %.23.us, %._crit_edge.us1420 ]
  %i.wd = fadd fast <8 x float> %.71207.lcssa, %.71220.lcssa
  %i.we = fadd fast <8 x float> %i.wd, %.131195.lcssa
  %i.wf = fadd fast <8 x float> %i.we, %.19.lcssa ; 10 uses
  %i.wg = load i32, ptr %17, align 4, !tbaa !61
  switch i32 %i.wg, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %.noexc547
    i32 3, label %.noexc549
    i32 4, label %.noexc550
    i32 5, label %.noexc551
    i32 6, label %.noexc554
  ]

bb.ad:                                            ; preds = %._crit_edge1414
  %i.wh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.wf, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc547:                                        ; preds = %._crit_edge1414
  %i.wi = load ptr, ptr %18, align 8, !tbaa !20
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !39
  %i.wk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.wf)
  %i.wl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.wf)
  %i.wm = insertelement <8 x float> poison, float %i.wj, i64 0
  %i.wn = shufflevector <8 x float> %i.wm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wo = fmul fast <8 x float> %i.wn, %i.wl
  %i.wp = fadd fast <8 x float> %i.wo, %i.wk
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc549:                                        ; preds = %._crit_edge1414
  %i.wq = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !39
  %i.ws = insertelement <8 x float> poison, float %i.wr, i64 0
  %i.wt = shufflevector <8 x float> %i.ws, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 4
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !39
  %i.ww = insertelement <8 x float> poison, float %i.wv, i64 0
  %i.wx = shufflevector <8 x float> %i.ww, <8 x float> poison, <8 x i32> zeroinitializer
  %i.wy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.wf, <8 x float> nofpclass(nan inf) %i.wt)
  %i.wz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.wy, <8 x float> nofpclass(nan inf) %i.wx)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc550:                                        ; preds = %._crit_edge1414
  %i.xa = fneg fast <8 x float> %i.wf
  %i.xb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.xa, <8 x float> splat (float f0x42B0C0A5))
  %i.xc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.xb, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.xd = fmul fast <8 x float> %i.xc, splat (float f0x3FB8AA3B)
  %i.xe = fadd fast <8 x float> %i.xd, splat (float 5.000000e-01) ; 2 uses
  %i.xf = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.xe, i32 1) ; 2 uses
  %i.xg = fcmp fast ogt <8 x float> %i.xf, %i.xe
  %i.xh = select <8 x i1> %i.xg, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.xi = fsub fast <8 x float> %i.xf, %i.xh      ; 2 uses
  %i.xj = fmul fast <8 x float> %i.xi, splat (float f0x3F317218)
  %i.xk = fsub fast <8 x float> %i.xc, %i.xj      ; 8 uses
  %i.xl = fmul fast <8 x float> %i.xk, %i.xk
  %i.xm = fmul fast <8 x float> %i.xk, splat (float f0x39506967)
  %i.xn = fadd fast <8 x float> %i.xm, splat (float f0x3AB743CE)
  %i.xo = fmul fast <8 x float> %i.xn, %i.xk
  %i.xp = fadd fast <8 x float> %i.xo, splat (float f0x3C088908)
  %i.xq = fmul fast <8 x float> %i.xp, %i.xk
  %i.xr = fadd fast <8 x float> %i.xq, splat (float f0x3D2AA9C1)
  %i.xs = fmul fast <8 x float> %i.xr, %i.xk
  %i.xt = fadd fast <8 x float> %i.xs, splat (float f0x3E2AAAAA)
  %i.xu = fmul fast <8 x float> %i.xt, %i.xk
  %i.xv = fadd fast <8 x float> %i.xu, splat (float 5.000000e-01)
  %i.xw = fmul fast <8 x float> %i.xl, %i.xv
  %i.xx = fadd fast <8 x float> %i.xk, splat (float 1.000000e+00)
  %i.xy = fadd fast <8 x float> %i.xx, %i.xw
  %i.xz = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.xi)
  %i.ya = shl <8 x i32> %i.xz, splat (i32 23)
  %i.yb = add <8 x i32> %i.ya, splat (i32 1065353216)
  %i.yc = bitcast <8 x i32> %i.yb to <8 x float>
  %i.yd = fmul fast <8 x float> %i.xy, %i.yc
  %i.ye = fadd fast <8 x float> %i.yd, splat (float 1.000000e+00)
  %i.yf = fdiv fast <8 x float> splat (float 1.000000e+00), %i.ye
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc551:                                        ; preds = %._crit_edge1414
  %i.yg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.wf, <8 x float> splat (float f0x42B0C0A5))
  %i.yh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.yg, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.yi = fmul fast <8 x float> %i.yh, splat (float f0x3FB8AA3B)
  %i.yj = fadd fast <8 x float> %i.yi, splat (float 5.000000e-01) ; 2 uses
  %i.yk = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.yj, i32 1) ; 2 uses
  %i.yl = fcmp fast ogt <8 x float> %i.yk, %i.yj
  %i.ym = select <8 x i1> %i.yl, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.yn = fsub fast <8 x float> %i.yk, %i.ym      ; 2 uses
  %i.yo = fmul fast <8 x float> %i.yn, splat (float f0x3F317218)
  %i.yp = fsub fast <8 x float> %i.yh, %i.yo      ; 8 uses
  %i.yq = fmul fast <8 x float> %i.yp, %i.yp
  %i.yr = fmul fast <8 x float> %i.yp, splat (float f0x39506967)
  %i.ys = fadd fast <8 x float> %i.yr, splat (float f0x3AB743CE)
  %i.yt = fmul fast <8 x float> %i.ys, %i.yp
  %i.yu = fadd fast <8 x float> %i.yt, splat (float f0x3C088908)
  %i.yv = fmul fast <8 x float> %i.yu, %i.yp
  %i.yw = fadd fast <8 x float> %i.yv, splat (float f0x3D2AA9C1)
  %i.yx = fmul fast <8 x float> %i.yw, %i.yp
  %i.yy = fadd fast <8 x float> %i.yx, splat (float f0x3E2AAAAA)
  %i.yz = fmul fast <8 x float> %i.yy, %i.yp
  %i.za = fadd fast <8 x float> %i.yz, splat (float 5.000000e-01)
  %i.zb = fmul fast <8 x float> %i.yq, %i.za
  %i.zc = fadd fast <8 x float> %i.yp, splat (float 1.000000e+00)
  %i.zd = fadd fast <8 x float> %i.zc, %i.zb
  %i.ze = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.yn)
  %i.zf = shl <8 x i32> %i.ze, splat (i32 23)
  %i.zg = add <8 x i32> %i.zf, splat (i32 1065353216)
  %i.zh = bitcast <8 x i32> %i.zg to <8 x float>
  %i.zi = fmul fast <8 x float> %i.zd, %i.zh
  %i.zj = fadd fast <8 x float> %i.zi, splat (float 1.000000e+00) ; 2 uses
  %i.zk = fcmp fast ole <8 x float> %i.zj, zeroinitializer
  %i.zl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.zj, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.zm = bitcast <8 x float> %i.zl to <8 x i32>
  %i.zn = bitcast <8 x float> %i.zl to <8 x i32>
  %i.zo = and <8 x i32> %i.zn, splat (i32 -2139095041)
  %i.zp = or disjoint <8 x i32> %i.zo, splat (i32 1056964608)
  %i.zq = bitcast <8 x i32> %i.zp to <8 x float>  ; 3 uses
  %i.zr = lshr <8 x i32> %i.zm, splat (i32 23)
  %i.zs = add nsw <8 x i32> %i.zr, splat (i32 -127)
  %i.zt = sitofp fast <8 x i32> %i.zs to <8 x float> ; 2 uses
  %i.zu = fadd fast <8 x float> %i.zt, splat (float 1.000000e+00)
  %i.zv = fcmp fast olt <8 x float> %i.zq, splat (float f0x3F3504F3) ; 2 uses
  %i.zw = select <8 x i1> %i.zv, <8 x float> %i.zq, <8 x float> zeroinitializer
  %i.zx = fadd fast <8 x float> %i.zq, splat (float -1.000000e+00)
  %i.zy = select fast <8 x i1> %i.zv, <8 x float> %i.zt, <8 x float> %i.zu
  %i.zz = fadd fast <8 x float> %i.zx, %i.zw      ; 12 uses
  %i.aaa = fmul fast <8 x float> %i.zz, %i.zz
  %i.aab = fmul fast <8 x float> %i.zz, splat (float f0x3D9021BB)
  %i.aac = fadd fast <8 x float> %i.aab, splat (float f0xBDEBD1B8)
  %i.aad = fmul fast <8 x float> %i.aac, %i.zz
  %i.aae = fadd fast <8 x float> %i.aad, splat (float f0x3DEF251A)
  %i.aaf = fmul fast <8 x float> %i.aae, %i.zz
  %i.aag = fadd fast <8 x float> %i.aaf, splat (float f0xBDFE5D4F)
  %i.aah = fmul fast <8 x float> %i.aag, %i.zz
  %i.aai = fadd fast <8 x float> %i.aah, splat (float f0x3E11E9BF)
  %i.aaj = fmul fast <8 x float> %i.aai, %i.zz
  %i.aak = fadd fast <8 x float> %i.aaj, splat (float f0xBE2AAE50)
  %i.aal = fmul fast <8 x float> %i.aak, %i.zz
  %i.aam = fadd fast <8 x float> %i.aal, splat (float f0x3E4CCEAC)
  %i.aan = fmul fast <8 x float> %i.aam, %i.zz
  %i.aao = fadd fast <8 x float> %i.aan, splat (float f0xBE7FFFFC)
  %i.aap = fmul fast <8 x float> %i.aao, %i.zz
  %i.aaq = fadd fast <8 x float> %i.aap, splat (float f0x3EAAAAAA)
  %i.aar = fmul fast <8 x float> %i.aaq, %i.zz
  %reass.mul = fmul fast <8 x float> %i.zy, splat (float f0x3F317218)
  %reass.add1230 = fadd fast <8 x float> %i.aar, splat (float -5.000000e-01)
  %reass.mul1231 = fmul fast <8 x float> %i.aaa, %reass.add1230
  %i.aas = fadd fast <8 x float> %reass.mul, %i.zz
  %i.aat = fadd fast <8 x float> %i.aas, %reass.mul1231
  %.neg = fmul fast <8 x float> %i.aat, splat (float -2.000000e+00)
  %i.aau = select fast <8 x i1> %i.zk, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.aav = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aau, <8 x float> splat (float f0x42B0C0A5))
  %i.aaw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aav, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aax = fmul fast <8 x float> %i.aaw, splat (float f0x3FB8AA3B)
  %i.aay = fadd fast <8 x float> %i.aax, splat (float 5.000000e-01) ; 2 uses
  %i.aaz = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aay, i32 1) ; 2 uses
  %i.aba = fcmp fast ogt <8 x float> %i.aaz, %i.aay
  %i.abb = select <8 x i1> %i.aba, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.abc = fsub fast <8 x float> %i.aaz, %i.abb   ; 2 uses
  %i.abd = fmul fast <8 x float> %i.abc, splat (float f0x3F317218)
  %i.abe = fsub fast <8 x float> %i.aaw, %i.abd   ; 8 uses
  %i.abf = fmul fast <8 x float> %i.abe, %i.abe
  %i.abg = fmul fast <8 x float> %i.abe, splat (float f0x39506967)
  %i.abh = fadd fast <8 x float> %i.abg, splat (float f0x3AB743CE)
  %i.abi = fmul fast <8 x float> %i.abh, %i.abe
  %i.abj = fadd fast <8 x float> %i.abi, splat (float f0x3C088908)
  %i.abk = fmul fast <8 x float> %i.abj, %i.abe
  %i.abl = fadd fast <8 x float> %i.abk, splat (float f0x3D2AA9C1)
  %i.abm = fmul fast <8 x float> %i.abl, %i.abe
  %i.abn = fadd fast <8 x float> %i.abm, splat (float f0x3E2AAAAA)
  %i.abo = fmul fast <8 x float> %i.abn, %i.abe
  %i.abp = fadd fast <8 x float> %i.abo, splat (float 5.000000e-01)
  %i.abq = fmul fast <8 x float> %i.abf, %i.abp
  %i.abr = fadd fast <8 x float> %i.abe, splat (float 1.000000e+00)
  %i.abs = fadd fast <8 x float> %i.abr, %i.abq
  %i.abt = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.abc)
  %i.abu = shl <8 x i32> %i.abt, splat (i32 23)
  %i.abv = add <8 x i32> %i.abu, splat (i32 1065353216)
  %i.abw = bitcast <8 x i32> %i.abv to <8 x float>
  %i.abx = fmul fast <8 x float> %i.abs, %i.abw
  %i.aby = fadd fast <8 x float> %i.abx, splat (float 1.000000e+00)
  %i.abz = fdiv fast <8 x float> splat (float 2.000000e+00), %i.aby
  %i.aca = fadd fast <8 x float> %i.abz, splat (float -1.000000e+00)
  %i.acb = fmul fast <8 x float> %i.aca, %i.wf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc554:                                        ; preds = %._crit_edge1414
  %i.acc = load ptr, ptr %18, align 8, !tbaa !20  ; 2 uses
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !39
  %i.ace = insertelement <8 x float> poison, float %i.acd, i64 0
  %i.acf = shufflevector <8 x float> %i.ace, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !39
  %i.aci = insertelement <8 x float> poison, float %i.ach, i64 0
  %i.acj = shufflevector <8 x float> %i.aci, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ack = fmul fast <8 x float> %i.acf, %i.wf
  %i.acl = fadd fast <8 x float> %i.ack, %i.acj
  %i.acm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acl, <8 x float> zeroinitializer)
  %i.acn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acm, <8 x float> splat (float 1.000000e+00))
  %i.aco = fmul fast <8 x float> %i.acn, %i.wf
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc554, %.noexc551, %.noexc550, %.noexc549, %.noexc547, %bb.ad, %._crit_edge1414
  %.0.i = phi nsz <8 x float> [ %i.aco, %.noexc554 ], [ %i.wh, %bb.ad ], [ %i.wp, %.noexc547 ], [ %i.wz, %.noexc549 ], [ %i.yf, %.noexc550 ], [ %i.acb, %.noexc551 ], [ %i.wf, %._crit_edge1414 ] ; 11 uses
  switch i32 %i.ah, label %.thread1227 [
    i32 8, label %.thread
    i32 4, label %bb.ae
    i32 1, label %bb.af
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  store <8 x float> %.0.i, ptr %.13361422, align 32, !tbaa !82
  %i.acp = getelementptr inbounds nuw i8, ptr %.13361422, i64 32
  br label %.thread1227

bb.ae:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.acq = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.acq, ptr %.13361422, align 16, !tbaa !82
  %i.acr = load i64, ptr %19, align 8, !tbaa !84
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %.13361422, i64 %i.acr
  %i.act = shufflevector <8 x float> %.0.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.act, ptr %i.acs, align 16, !tbaa !82
  %i.acu = getelementptr inbounds nuw i8, ptr %.13361422, i64 16
  br label %.thread1227

bb.af:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <8 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.13361422, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <8 x float> %.0.i, i64 1
  %i.acv = load i64, ptr %19, align 8, !tbaa !84  ; 7 uses
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.13361422, i64 %i.acv
  store float %.sroa.0.4.vec.extract, ptr %i.acw, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <8 x float> %.0.i, i64 2
  %.idx = shl i64 %i.acv, 3
  %i.acx = getelementptr inbounds nuw i8, ptr %.13361422, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.acx, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <8 x float> %.0.i, i64 3
  %.idx365 = mul i64 %i.acv, 12
  %i.acy = getelementptr inbounds nuw i8, ptr %.13361422, i64 %.idx365
  store float %.sroa.0.12.vec.extract, ptr %i.acy, align 4, !tbaa !39
  %.sroa.0.16.vec.extract = extractelement <8 x float> %.0.i, i64 4
  %.idx366 = shl i64 %i.acv, 4
  %i.acz = getelementptr inbounds nuw i8, ptr %.13361422, i64 %.idx366
  store float %.sroa.0.16.vec.extract, ptr %i.acz, align 4, !tbaa !39
  %.sroa.0.20.vec.extract = extractelement <8 x float> %.0.i, i64 5
  %.idx367 = mul i64 %i.acv, 20
  %i.ada = getelementptr inbounds nuw i8, ptr %.13361422, i64 %.idx367
  store float %.sroa.0.20.vec.extract, ptr %i.ada, align 4, !tbaa !39
  %.sroa.0.24.vec.extract = extractelement <8 x float> %.0.i, i64 6
  %.idx368 = mul i64 %i.acv, 24
  %i.adb = getelementptr inbounds nuw i8, ptr %.13361422, i64 %.idx368
  store float %.sroa.0.24.vec.extract, ptr %i.adb, align 4, !tbaa !39
  %.sroa.0.28.vec.extract = extractelement <8 x float> %.0.i, i64 7
  %.idx369 = mul i64 %i.acv, 28
  %i.adc = getelementptr inbounds nuw i8, ptr %.13361422, i64 %.idx369
  store float %.sroa.0.28.vec.extract, ptr %i.adc, align 4, !tbaa !39
  %i.add = getelementptr inbounds nuw i8, ptr %.13361422, i64 4
  br label %.thread1227

.thread1227:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.ae, %.thread, %bb.af
  %.4 = phi ptr [ %i.add, %bb.af ], [ %.13361422, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.acp, %.thread ], [ %i.acu, %bb.ae ] ; 2 uses
  %i.ade = add nuw nsw i32 %.03331423, 1          ; 2 uses
  %exitcond1487.not = icmp eq i32 %i.ade, %i.af
  br i1 %exitcond1487.not, label %._crit_edge, label %bb.c, !llvm.loop !711

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
  %i.e = load i32, ptr %2, align 4, !tbaa !61     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !61
  %i.h = load i32, ptr %0, align 4, !tbaa !61     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !61
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !61
  %i.k = load i32, ptr %i.a, align 4, !tbaa !61   ; 2 uses
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
  %i.y = load i32, ptr %i.q, align 8, !tbaa !66
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.noexc527, label %._crit_edge1502

.noexc527:                                        ; preds = %.noexc527.lr.ph, %._crit_edge1499.split
  %.03391501 = phi i32 [ %i.bk, %._crit_edge1499.split ], [ %i.k, %.noexc527.lr.ph ] ; 3 uses
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !60
  %.fr = freeze i32 %i.aa                         ; 3 uses
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !62
  %i.ac = mul i32 %i.ab, %.fr                     ; 11 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !54  ; 5 uses
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !66  ; 4 uses
  %i.af = load i32, ptr %i.p, align 4, !tbaa !54  ; 2 uses
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !66  ; 2 uses
  %i.ah = load i32, ptr %i.r, align 8, !tbaa !60  ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ek = mul i64 %i.df, %i.ci
  %i.el = mul i64 %i.ek, %i.dh
  %i.em = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.dm
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.do
  %i.ep = mul i64 %i.df, %i.cj
  %i.eq = mul i64 %i.ep, %i.dh
  %i.er = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.dm
  %i.et = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.do
  %i.eu = mul i64 %i.df, %i.cd
  %i.ev = mul i64 %i.eu, %i.dh
  %i.ew = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.dm
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.do
  %i.ez = load i16, ptr %i.dp, align 2, !tbaa !89
  %i.fa = zext i16 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 16
  %i.fc = insertelement <8 x i32> poison, i32 %i.fb, i64 0
  %i.fd = bitcast <8 x i32> %i.fc to <8 x float>
  %i.fe = shufflevector <8 x float> %i.fd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ff = load i16, ptr %i.du, align 2, !tbaa !89
  %i.fg = zext i16 %i.ff to i32
  %i.fh = shl nuw i32 %i.fg, 16
  %i.fi = insertelement <8 x i32> poison, i32 %i.fh, i64 0
  %i.fj = bitcast <8 x i32> %i.fi to <8 x float>
  %i.fk = shufflevector <8 x float> %i.fj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fl = load i16, ptr %i.dz, align 2, !tbaa !89
  %i.fm = zext i16 %i.fl to i32
  %i.fn = shl nuw i32 %i.fm, 16
  %i.fo = insertelement <8 x i32> poison, i32 %i.fn, i64 0
  %i.fp = bitcast <8 x i32> %i.fo to <8 x float>
  %i.fq = shufflevector <8 x float> %i.fp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fr = load i16, ptr %i.ee, align 2, !tbaa !89
  %i.fs = zext i16 %i.fr to i32
  %i.ft = shl nuw i32 %i.fs, 16
  %i.fu = insertelement <8 x i32> poison, i32 %i.ft, i64 0
  %i.fv = bitcast <8 x i32> %i.fu to <8 x float>
  %i.fw = shufflevector <8 x float> %i.fv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fx = load i16, ptr %i.ej, align 2, !tbaa !89
  %i.fy = zext i16 %i.fx to i32
  %i.fz = shl nuw i32 %i.fy, 16
  %i.ga = insertelement <8 x i32> poison, i32 %i.fz, i64 0
  %i.gb = bitcast <8 x i32> %i.ga to <8 x float>
  %i.gc = shufflevector <8 x float> %i.gb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gd = load i16, ptr %i.eo, align 2, !tbaa !89
  %i.ge = zext i16 %i.gd to i32
  %i.gf = shl nuw i32 %i.ge, 16
  %i.gg = insertelement <8 x i32> poison, i32 %i.gf, i64 0
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>
  %i.gi = shufflevector <8 x float> %i.gh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gj = load i16, ptr %i.et, align 2, !tbaa !89
  %i.gk = zext i16 %i.gj to i32
  %i.gl = shl nuw i32 %i.gk, 16
  %i.gm = insertelement <8 x i32> poison, i32 %i.gl, i64 0
  %i.gn = bitcast <8 x i32> %i.gm to <8 x float>
  %i.go = shufflevector <8 x float> %i.gn, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit402.us:                      ; preds = %bb.i
  %i.gp = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !757
  %i.gq = load ptr, ptr %4, align 8, !tbaa !20, !noalias !757 ; 2 uses
  %i.gr = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !757 ; 2 uses
  %i.gs = mul i64 %i.gr, %i.ck
  %i.gt = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !757 ; 3 uses
  %i.gu = mul i64 %i.gs, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gu
  %i.gw = sext i32 %i.gp to i64
  %i.gx = mul nsw i64 %i.gw, %i.nv
  %i.gy = mul i64 %i.gx, %i.gt                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gy
  %i.ha = shl nsw i32 %i.cx, 2
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.hb ; 4 uses
  %i.hd = mul i64 %i.gr, %i.cl
  %i.he = mul i64 %i.hd, %i.gt
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gy
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hg, i64 %i.hb ; 4 uses
  %i.hi = load i16, ptr %i.hc, align 2, !tbaa !89
  %i.hj = zext i16 %i.hi to i32
  %i.hk = shl nuw i32 %i.hj, 16
  %i.hl = insertelement <8 x i32> poison, i32 %i.hk, i64 0
  %i.hm = bitcast <8 x i32> %i.hl to <8 x float>
  %i.hn = shufflevector <8 x float> %i.hm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !89
  %i.hq = zext i16 %i.hp to i32
  %i.hr = shl nuw i32 %i.hq, 16
  %i.hs = insertelement <8 x i32> poison, i32 %i.hr, i64 0
  %i.ht = bitcast <8 x i32> %i.hs to <8 x float>
  %i.hu = shufflevector <8 x float> %i.ht, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !89
  %i.hx = zext i16 %i.hw to i32
  %i.hy = shl nuw i32 %i.hx, 16
  %i.hz = insertelement <8 x i32> poison, i32 %i.hy, i64 0
  %i.ia = bitcast <8 x i32> %i.hz to <8 x float>
  %i.ib = shufflevector <8 x float> %i.ia, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hc, i64 6
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !89
  %i.ie = zext i16 %i.id to i32
  %i.if = shl nuw i32 %i.ie, 16
  %i.ig = insertelement <8 x i32> poison, i32 %i.if, i64 0
  %i.ih = bitcast <8 x i32> %i.ig to <8 x float>
  %i.ii = shufflevector <8 x float> %i.ih, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ij = load i16, ptr %i.hh, align 2, !tbaa !89
  %i.ik = zext i16 %i.ij to i32
  %i.il = shl nuw i32 %i.ik, 16
  %i.im = insertelement <8 x i32> poison, i32 %i.il, i64 0
  %i.in = bitcast <8 x i32> %i.im to <8 x float>
  %i.io = shufflevector <8 x float> %i.in, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !89
  %i.ir = zext i16 %i.iq to i32
  %i.is = shl nuw i32 %i.ir, 16
  %i.it = insertelement <8 x i32> poison, i32 %i.is, i64 0
  %i.iu = bitcast <8 x i32> %i.it to <8 x float>
  %i.iv = shufflevector <8 x float> %i.iu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !89
  %i.iy = zext i16 %i.ix to i32
  %i.iz = shl nuw i32 %i.iy, 16
  %i.ja = insertelement <8 x i32> poison, i32 %i.iz, i64 0
  %i.jb = bitcast <8 x i32> %i.ja to <8 x float>
  %i.jc = shufflevector <8 x float> %i.jb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hh, i64 6
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.je = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !758
  %i.jf = load ptr, ptr %4, align 8, !tbaa !20, !noalias !758
  %i.jg = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !758
  %i.jh = mul i64 %i.jg, %i.cm
  %i.ji = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !758 ; 2 uses
  %i.jj = mul i64 %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jj
  %i.jl = sext i32 %i.je to i64
  %i.jm = mul nsw i64 %i.jl, %i.nv
  %i.jn = mul i64 %i.jm, %i.ji
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jn
  %i.jp = shl nsw i32 %i.cx, 3
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.jq ; 5 uses
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !89
  %i.jt = zext i16 %i.js to i32
  %i.ju = shl nuw i32 %i.jt, 16
  %i.jv = insertelement <8 x i32> poison, i32 %i.ju, i64 0
  %i.jw = bitcast <8 x i32> %i.jv to <8 x float>
  %i.jx = shufflevector <8 x float> %i.jw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !89
  %i.ka = zext i16 %i.jz to i32
  %i.kb = shl nuw i32 %i.ka, 16
  %i.kc = insertelement <8 x i32> poison, i32 %i.kb, i64 0
  %i.kd = bitcast <8 x i32> %i.kc to <8 x float>
  %i.ke = shufflevector <8 x float> %i.kd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !89
  %i.kh = zext i16 %i.kg to i32
  %i.ki = shl nuw i32 %i.kh, 16
  %i.kj = insertelement <8 x i32> poison, i32 %i.ki, i64 0
  %i.kk = bitcast <8 x i32> %i.kj to <8 x float>
  %i.kl = shufflevector <8 x float> %i.kk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.km = getelementptr inbounds nuw i8, ptr %i.jr, i64 6
  %i.kn = load <4 x i16>, ptr %i.km, align 2, !tbaa !89
  %i.ko = zext <4 x i16> %i.kn to <4 x i32>
  %i.kp = shl nuw <4 x i32> %i.ko, splat (i32 16) ; 4 uses
  %i.kq = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ks = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ku = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.kw = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jr, i64 14
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit400.us, %_ZN4ncnn3MatD2Ev.exit402.us, %bb.j
  %.sink.in = phi ptr [ %i.ky, %bb.j ], [ %i.jd, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1667 = phi <8 x float> [ %i.jx, %bb.j ], [ %i.hn, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fe, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1658 = phi <8 x float> [ %i.ke, %bb.j ], [ %i.hu, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fk, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1649 = phi <8 x float> [ %i.kl, %bb.j ], [ %i.ib, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fq, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1640 = phi <8 x float> [ %i.kr, %bb.j ], [ %i.ii, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fw, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1631.a = phi <8 x float> [ %i.kt, %bb.j ], [ %i.io, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.gc, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1621 = phi <8 x float> [ %i.kv, %bb.j ], [ %i.iv, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.gi, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1611 = phi <8 x float> [ %i.kx, %bb.j ], [ %i.jc, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.go, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !89
  %i.kz = zext i16 %.sink to i32
  %i.la = shl nuw i32 %i.kz, 16
  %i.lb = insertelement <8 x i32> poison, i32 %i.la, i64 0
  %i.lc = bitcast <8 x i32> %i.lb to <8 x float>
  %i.ld = shufflevector <8 x float> %i.lc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.le = load <8 x i16>, ptr %i.dc, align 16, !tbaa !82 ; 2 uses
  %i.lf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.le, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.le, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lh = shufflevector <8 x i16> %i.lf, <8 x i16> %i.lg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.li = bitcast <16 x i16> %i.lh to <8 x float>
  %i.lj = fmul fast <8 x float> %.sink1667, %i.li
  %i.lk = fadd fast <8 x float> %i.lj, %.312531338.us
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.lm = load <8 x i16>, ptr %i.ll, align 16, !tbaa !82 ; 2 uses
  %i.ln = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lo = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lp = shufflevector <8 x i16> %i.ln, <8 x i16> %i.lo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lq = bitcast <16 x i16> %i.lp to <8 x float>
  %i.lr = fmul fast <8 x float> %.sink1658, %i.lq
  %i.ls = fadd fast <8 x float> %i.lr, %.212571337.us
  %i.lt = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.lu = load <8 x i16>, ptr %i.lt, align 16, !tbaa !82 ; 2 uses
  %i.lv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lx = shufflevector <8 x i16> %i.lv, <8 x i16> %i.lw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ly = bitcast <16 x i16> %i.lx to <8 x float>
  %i.lz = fmul fast <8 x float> %.sink1649, %i.ly
  %i.ma = fadd fast <8 x float> %i.lz, %.212751336.us
  %i.mb = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.mc = load <8 x i16>, ptr %i.mb, align 16, !tbaa !82 ; 2 uses
  %i.md = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.me = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mf = shufflevector <8 x i16> %i.md, <8 x i16> %i.me, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mg = bitcast <16 x i16> %i.mf to <8 x float>
  %i.mh = fmul fast <8 x float> %.sink1640, %i.mg
  %i.mi = fadd fast <8 x float> %i.mh, %.212881335.us
  %i.mj = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.mk = load <8 x i16>, ptr %i.mj, align 16, !tbaa !82 ; 2 uses
  %i.ml = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mm = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mn = shufflevector <8 x i16> %i.ml, <8 x i16> %i.mm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mo = bitcast <16 x i16> %i.mn to <8 x float>
  %i.mp = fmul fast <8 x float> %.sink1631.a, %i.mo
  %i.mq = fadd fast <8 x float> %i.lk, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.ms = load <8 x i16>, ptr %i.mr, align 16, !tbaa !82 ; 2 uses
  %i.mt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ms, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ms, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mv = shufflevector <8 x i16> %i.mt, <8 x i16> %i.mu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mw = bitcast <16 x i16> %i.mv to <8 x float>
  %i.mx = fmul fast <8 x float> %.sink1621, %i.mw
  %i.my = fadd fast <8 x float> %i.ls, %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.na = load <8 x i16>, ptr %i.mz, align 16, !tbaa !82 ; 2 uses
  %i.nb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.na, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.na, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nd = shufflevector <8 x i16> %i.nb, <8 x i16> %i.nc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ne = bitcast <16 x i16> %i.nd to <8 x float>
  %i.nf = fmul fast <8 x float> %.sink1611, %i.ne
  %i.ng = fadd fast <8 x float> %i.ma, %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.ni = load <8 x i16>, ptr %i.nh, align 16, !tbaa !82 ; 2 uses
  %i.nj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ni, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ni, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.nl = shufflevector <8 x i16> %i.nj, <8 x i16> %i.nk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nm = bitcast <16 x i16> %i.nl to <8 x float>
  %i.nn = fmul fast <8 x float> %i.ld, %i.nm
  %i.no = fadd fast <8 x float> %i.mi, %i.nn
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %.51291.us = phi nsz <8 x float> [ %.212881335.us, %bb.g ], [ %.212881335.us, %bb.i ], [ %.212881335.us, %bb.h ], [ %i.no, %.sink.split ] ; 2 uses
  %.51278.us = phi nsz <8 x float> [ %.212751336.us, %bb.g ], [ %.212751336.us, %bb.i ], [ %.212751336.us, %bb.h ], [ %i.ng, %.sink.split ] ; 2 uses
  %.51260.us = phi nsz <8 x float> [ %.212571337.us, %bb.g ], [ %.212571337.us, %bb.i ], [ %.212571337.us, %bb.h ], [ %i.my, %.sink.split ] ; 2 uses
  %.6.us = phi nsz <8 x float> [ %.312531338.us, %bb.g ], [ %.312531338.us, %bb.i ], [ %.312531338.us, %bb.h ], [ %i.mq, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1326.us, label %bb.g, !llvm.loop !733

.loopexit1326.us:                                 ; preds = %bb.k, %.preheader1325.us, %bb.f, %bb.e
  %.61292.us = phi nsz <8 x float> [ %.112871343.us, %bb.e ], [ %.112871343.us, %bb.f ], [ %.112871343.us, %.preheader1325.us ], [ %.51291.us, %bb.k ] ; 3 uses
  %.61279.us = phi nsz <8 x float> [ %.112741344.us, %bb.e ], [ %.112741344.us, %bb.f ], [ %.112741344.us, %.preheader1325.us ], [ %.51278.us, %bb.k ] ; 3 uses
  %.61261.us = phi nsz <8 x float> [ %.112561345.us, %bb.e ], [ %.112561345.us, %bb.f ], [ %.112561345.us, %.preheader1325.us ], [ %.51260.us, %bb.k ] ; 3 uses
  %.7.us = phi nsz <8 x float> [ %.212521346.us, %bb.e ], [ %.212521346.us, %bb.f ], [ %.212521346.us, %.preheader1325.us ], [ %.6.us, %bb.k ] ; 3 uses
  %i.np = add nuw nsw i32 %.03271347.us, 1        ; 2 uses
  %exitcond1522.not = icmp eq i32 %i.np, %i.bu
  br i1 %exitcond1522.not, label %._crit_edge.us, label %bb.e, !llvm.loop !734

.preheader1325.us:                                ; preds = %bb.f
  %i.nq = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %.lr.ph.us, label %.loopexit1326.us

.lr.ph.us:                                        ; preds = %.preheader1325.us
  %i.ns = load i32, ptr %13, align 4, !tbaa !61
  %i.nt = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us = sub i32 %.neg1320, %i.nt
  %i.nu = mul nuw nsw i32 %i.nq, %.03271347.us
  %i.nv = sext i32 %i.cr to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.nq to i64
  br label %bb.g

._crit_edge.us:                                   ; preds = %.loopexit1326.us
  %i.nw = getelementptr inbounds [2 x i8], ptr %.03291359.us, i64 %i.by ; 2 uses
  %indvars.iv.next1524 = add nuw nsw i64 %indvars.iv1523, 8 ; 2 uses
  %i.nx = icmp slt i64 %indvars.iv.next1524, %invariant.op
  br i1 %i.nx, label %.preheader1330.us, label %.preheader1333, !llvm.loop !735

.preheader1333:                                   ; preds = %._crit_edge.us, %.preheader1330.preheader, %_ZN4ncnn3MatD2Ev.exit404
  %.01286.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1330.preheader ], [ %.61292.us, %._crit_edge.us ] ; 3 uses
  %.01273.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1330.preheader ], [ %.61279.us, %._crit_edge.us ] ; 3 uses
  %.01255.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1330.preheader ], [ %.61261.us, %._crit_edge.us ] ; 3 uses
  %.11251.lcssa = phi <8 x float> [ %.01250, %_ZN4ncnn3MatD2Ev.exit404 ], [ %.01250, %.preheader1330.preheader ], [ %.7.us, %._crit_edge.us ] ; 3 uses
  %.0329.lcssa = phi ptr [ %i.bt, %_ZN4ncnn3MatD2Ev.exit404 ], [ %scevgep, %.preheader1330.preheader ], [ %i.nw, %._crit_edge.us ] ; 3 uses
  %.0328.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit404 ], [ %i.be, %.preheader1330.preheader ], [ %i.bh, %._crit_edge.us ] ; 5 uses
  %i.ny = or disjoint i32 %.0328.lcssa, 3         ; 2 uses
  %i.nz = icmp slt i32 %i.ny, %i.ac
  br i1 %i.nz, label %.preheader1329.lr.ph, label %.preheader1332

.preheader1329.lr.ph:                             ; preds = %.preheader1333
  %i.oa = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.ob = icmp sgt i32 %i.oa, 0
  %.neg1316 = add nuw nsw i32 %.03331496, 1
  %i.oc = load i32, ptr %16, align 4, !tbaa !61
  %i.od = shl i32 %i.oc, 5
  %i.oe = sext i32 %i.od to i64                   ; 2 uses
  br i1 %i.ob, label %.preheader1329.lr.ph.split.us, label %.preheader1329.preheader

.preheader1329.preheader:                         ; preds = %.preheader1329.lr.ph
  %i.of = sub i32 %i.bi, %.0328.lcssa             ; 2 uses
  %i.og = lshr i32 %i.of, 1
  %i.oh = and i32 %i.og, 2147483646
  %narrow1596 = add nuw i32 %i.oh, 2
  %i.oi = zext i32 %narrow1596 to i64
  %i.oj = mul nsw i64 %i.oi, %i.oe
  %scevgep1526 = getelementptr i8, ptr %.0329.lcssa, i64 %i.oj
  %i.ok = add i32 %.0328.lcssa, 4
  %i.ol = and i32 %i.of, -4
  %i.om = add i32 %i.ok, %i.ol
  br label %.preheader1332

.preheader1329.lr.ph.split.us:                    ; preds = %.preheader1329.lr.ph
  %i.on = load i32, ptr %9, align 4, !tbaa !61
  %i.oo = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1416.us = sub i32 %.neg1318, %i.oo
  %i.op = zext i32 %.0328.lcssa to i64
  %i.oq = zext nneg i32 %i.ny to i64
  br label %.preheader1329.us

.preheader1329.us:                                ; preds = %._crit_edge.us1439, %.preheader1329.lr.ph.split.us
  %indvars.iv1538 = phi i64 [ %indvars.iv.next1539, %._crit_edge.us1439 ], [ %i.op, %.preheader1329.lr.ph.split.us ] ; 5 uses
  %i.or = phi i64 [ %i.vn, %._crit_edge.us1439 ], [ %i.oq, %.preheader1329.lr.ph.split.us ]
  %.13301422.us = phi ptr [ %i.vm, %._crit_edge.us1439 ], [ %.0329.lcssa, %.preheader1329.lr.ph.split.us ] ; 3 uses
  %.81421.us = phi <8 x float> [ %.13.us, %._crit_edge.us1439 ], [ %.11251.lcssa, %.preheader1329.lr.ph.split.us ]
  %.712621420.us = phi <8 x float> [ %.121267.us, %._crit_edge.us1439 ], [ %.01255.lcssa, %.preheader1329.lr.ph.split.us ]
  %.712801419.us = phi <8 x float> [ %.121285.us, %._crit_edge.us1439 ], [ %.01273.lcssa, %.preheader1329.lr.ph.split.us ]
  %.712931418.us = phi <8 x float> [ %.121298.us, %._crit_edge.us1439 ], [ %.01286.lcssa, %.preheader1329.lr.ph.split.us ]
  %i.os = or disjoint i64 %indvars.iv1538, 1
  %i.ot = or disjoint i64 %indvars.iv1538, 2
  %i.ou = lshr exact i64 %indvars.iv1538, 2
  br label %bb.l

bb.l:                                             ; preds = %.preheader1329.us, %.loopexit1324.us
  %.03251411.us = phi i32 [ 0, %.preheader1329.us ], [ %i.vl, %.loopexit1324.us ] ; 3 uses
  %.91410.us = phi <8 x float> [ %.81421.us, %.preheader1329.us ], [ %.13.us, %.loopexit1324.us ] ; 6 uses
  %.812631409.us = phi <8 x float> [ %.712621420.us, %.preheader1329.us ], [ %.121267.us, %.loopexit1324.us ] ; 6 uses
  %.812811408.us = phi <8 x float> [ %.712801419.us, %.preheader1329.us ], [ %.121285.us, %.loopexit1324.us ] ; 6 uses
  %.812941407.us = phi <8 x float> [ %.712931418.us, %.preheader1329.us ], [ %.121298.us, %.loopexit1324.us ] ; 6 uses
  %i.ov = mul nsw i32 %i.on, %.03251411.us
  %.reass1417.us = add i32 %i.ov, %invariant.op1416.us ; 3 uses
  %i.ow = icmp slt i32 %.reass1417.us, 0
  br i1 %i.ow, label %.loopexit1324.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ox = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.oy = srem i32 %.reass1417.us, %i.ox
  %i.oz = sdiv i32 %.reass1417.us, %i.ox          ; 2 uses
  %.not378.us = icmp eq i32 %i.oy, 0
  %.not379.us = icmp slt i32 %i.oz, %i.ae
  %or.cond1686 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1686, label %.preheader1323.us, label %.loopexit1324.us

.preheader1323.us:                                ; preds = %bb.m
  %i.pa = load i32, ptr %12, align 4, !tbaa !61   ; 4 uses
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %.lr.ph.us1430, label %.loopexit1324.us

.lr.ph.us1430:                                    ; preds = %.preheader1323.us
  %i.pc = load i32, ptr %13, align 4, !tbaa !61   ; 2 uses
  %i.pd = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1431 = sub i32 %.neg1316, %i.pd ; 2 uses
  %i.pe = mul nuw nsw i32 %i.pa, %.03251411.us    ; 2 uses
  %i.pf = sext i32 %i.oz to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1324.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1386.us.preheader
  ]

.lr.ph.split.us1386.us.preheader:                 ; preds = %.lr.ph.us1430
  %wide.trip.count1530 = zext nneg i32 %i.pa to i64
  br label %.lr.ph.split.us1386.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1430
  %wide.trip.count1535 = zext nneg i32 %i.pa to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us1386.us:                           ; preds = %.lr.ph.split.us1386.us.preheader, %bb.o
  %indvars.iv1527 = phi i64 [ 0, %.lr.ph.split.us1386.us.preheader ], [ %indvars.iv.next1528, %bb.o ] ; 3 uses
  %.101375.us1388.us = phi <8 x float> [ %.91410.us, %.lr.ph.split.us1386.us.preheader ], [ %.12.us1398.us, %bb.o ] ; 3 uses
  %.912641374.us1389.us = phi <8 x float> [ %.812631409.us, %.lr.ph.split.us1386.us.preheader ], [ %.111266.us1397.us, %bb.o ] ; 3 uses
  %.912821373.us1390.us = phi <8 x float> [ %.812811408.us, %.lr.ph.split.us1386.us.preheader ], [ %.111284.us1396.us, %bb.o ] ; 3 uses
  %.912951372.us1391.us = phi <8 x float> [ %.812941407.us, %.lr.ph.split.us1386.us.preheader ], [ %.111297.us1395.us, %bb.o ] ; 3 uses
  %i.pg = trunc i64 %indvars.iv1527 to i32
  %i.ph = mul i32 %i.pc, %i.pg
  %.reass.us1392.us = add i32 %i.ph, %invariant.op.us1431 ; 3 uses
  %i.pi = icmp slt i32 %.reass.us1392.us, 0
  br i1 %i.pi, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us1386.us
  %i.pj = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.pk = srem i32 %.reass.us1392.us, %i.pj
  %i.pl = sdiv i32 %.reass.us1392.us, %i.pj       ; 2 uses
  %.not380.us1393.us = icmp eq i32 %i.pk, 0
  %.not381.us1394.us = icmp slt i32 %i.pl, %i.ad
  %or.cond1687 = select i1 %.not380.us1393.us, i1 %.not381.us1394.us, i1 false
  br i1 %or.cond1687, label %_ZN4ncnn3MatD2Ev.exit391.us.us, label %bb.o

_ZN4ncnn3MatD2Ev.exit391.us.us:                   ; preds = %bb.n
  %i.pm = trunc i64 %indvars.iv1527 to i32
  %i.pn = add i32 %i.pe, %i.pm
  %i.po = shl nsw i32 %i.pn, 5
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %.13301422.us, i64 %i.pp ; 4 uses
  %i.pr = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !759
  %i.ps = load ptr, ptr %4, align 8, !tbaa !20, !noalias !759 ; 4 uses
  %i.pt = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !759 ; 4 uses
  %i.pu = mul i64 %i.pt, %indvars.iv1538
  %i.pv = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !759 ; 5 uses
  %i.pw = mul i64 %i.pu, %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pw
  %i.py = sext i32 %i.pr to i64
  %i.pz = mul nsw i64 %i.py, %i.pf
  %i.qa = mul i64 %i.pz, %i.pv                    ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.qa
  %i.qc = sext i32 %i.pl to i64                   ; 4 uses
  %i.qd = getelementptr inbounds [2 x i8], ptr %i.qb, i64 %i.qc
  %i.qe = mul i64 %i.pt, %i.os
  %i.qf = mul i64 %i.qe, %i.pv
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qa
  %i.qi = getelementptr inbounds [2 x i8], ptr %i.qh, i64 %i.qc
  %i.qj = mul i64 %i.pt, %i.ot
  %i.qk = mul i64 %i.qj, %i.pv
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qa
  %i.qn = getelementptr inbounds [2 x i8], ptr %i.qm, i64 %i.qc
  %i.qo = mul i64 %i.pt, %i.or
  %i.qp = mul i64 %i.qo, %i.pv
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qa
  %i.qs = getelementptr inbounds [2 x i8], ptr %i.qr, i64 %i.qc
  %i.qt = load i16, ptr %i.qd, align 2, !tbaa !89
  %i.qu = zext i16 %i.qt to i32
  %i.qv = shl nuw i32 %i.qu, 16
  %i.qw = insertelement <8 x i32> poison, i32 %i.qv, i64 0
  %i.qx = bitcast <8 x i32> %i.qw to <8 x float>
  %i.qy = shufflevector <8 x float> %i.qx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qz = load i16, ptr %i.qi, align 2, !tbaa !89
end_hunk_10
begin_hunk_11_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a

.preheader1331:                                   ; preds = %.preheader1328.preheader, %.preheader1331.loopexit, %.preheader1332
  %.131268.lcssa = phi <8 x float> [ %.71262.lcssa, %.preheader1332 ], [ %.171272.us, %.preheader1331.loopexit ], [ %.71262.lcssa, %.preheader1328.preheader ]
  %.14.lcssa = phi <8 x float> [ %.8.lcssa, %.preheader1332 ], [ %.18.us, %.preheader1331.loopexit ], [ %.8.lcssa, %.preheader1328.preheader ] ; 3 uses
  %.2331.lcssa = phi ptr [ %.1330.lcssa, %.preheader1332 ], [ %i.zb, %.preheader1331.loopexit ], [ %scevgep1541, %.preheader1328.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1332 ], [ %i.zf, %.preheader1331.loopexit ], [ %i.wf, %.preheader1328.preheader ] ; 2 uses
  %i.zg = icmp slt i32 %.2.lcssa, %i.ac
  br i1 %i.zg, label %.preheader1327.lr.ph, label %._crit_edge1487

.preheader1327.lr.ph:                             ; preds = %.preheader1331
  %i.zh = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.zi = icmp sgt i32 %i.zh, 0
  %.neg1308 = add nuw nsw i32 %.03331496, 1
  %i.zj = load i32, ptr %16, align 4, !tbaa !61
  %i.zk = shl nsw i32 %i.zj, 3
  %i.zl = sext i32 %i.zk to i64
  br i1 %i.zi, label %.preheader1327.lr.ph.split.us, label %._crit_edge1487

.preheader1327.lr.ph.split.us:                    ; preds = %.preheader1327.lr.ph
  %i.zm = load i32, ptr %9, align 4, !tbaa !61
  %i.zn = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1482.us = sub i32 %.neg1318, %i.zn
  %i.zo = zext i32 %.2.lcssa to i64
  br label %.preheader1327.us

.preheader1327.us:                                ; preds = %._crit_edge.us1493, %.preheader1327.lr.ph.split.us
  %indvars.iv1557 = phi i64 [ %indvars.iv.next1558, %._crit_edge.us1493 ], [ %i.zo, %.preheader1327.lr.ph.split.us ] ; 2 uses
  %.33321485.us = phi ptr [ %i.abm, %._crit_edge.us1493 ], [ %.2331.lcssa, %.preheader1327.lr.ph.split.us ] ; 2 uses
  %.191484.us = phi <8 x float> [ %.23.us, %._crit_edge.us1493 ], [ %.14.lcssa, %.preheader1327.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader1327.us, %.loopexit.us
  %.03211479.us = phi i32 [ 0, %.preheader1327.us ], [ %i.abh, %.loopexit.us ] ; 3 uses
  %.201478.us = phi <8 x float> [ %.191484.us, %.preheader1327.us ], [ %.23.us, %.loopexit.us ] ; 4 uses
  %i.zp = mul nsw i32 %i.zm, %.03211479.us
  %.reass1483.us = add i32 %i.zp, %invariant.op1482.us ; 3 uses
  %i.zq = icmp slt i32 %.reass1483.us, 0
  br i1 %i.zq, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.zr = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.zs = srem i32 %.reass1483.us, %i.zr
  %i.zt = sdiv i32 %.reass1483.us, %i.zr          ; 2 uses
  %.not370.us = icmp eq i32 %i.zs, 0
  %.not371.us = icmp slt i32 %i.zt, %i.ae
  %or.cond1691 = select i1 %.not370.us, i1 %.not371.us, i1 false
  br i1 %or.cond1691, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.y
  %i.zu = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.zv = icmp sgt i32 %i.zu, 0
  br i1 %i.zv, label %.lr.ph.us1490, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us1490, %bb.ac
  %indvars.iv1551 = phi i64 [ 0, %.lr.ph.us1490 ], [ %indvars.iv.next1552, %bb.ac ] ; 3 uses
  %.211476.us = phi <8 x float> [ %.201478.us, %.lr.ph.us1490 ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.zw = trunc i64 %indvars.iv1551 to i32
  %i.zx = mul i32 %i.abi, %i.zw
  %.reass.us1489 = add i32 %i.zx, %invariant.op.us1491 ; 3 uses
  %i.zy = icmp slt i32 %.reass.us1489, 0
  br i1 %i.zy, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.zz = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.aaa = srem i32 %.reass.us1489, %i.zz
  %i.aab = sdiv i32 %.reass.us1489, %i.zz         ; 2 uses
  %.not372.us = icmp eq i32 %i.aaa, 0
  %.not373.us = icmp slt i32 %i.aab, %i.ad
  %or.cond1692 = select i1 %.not372.us, i1 %.not373.us, i1 false
  br i1 %or.cond1692, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aac = trunc i64 %indvars.iv1551 to i32
  %i.aad = add i32 %i.abk, %i.aac
  %i.aae = shl nsw i32 %i.aad, 3
  %i.aaf = zext nneg i32 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %.33321485.us, i64 %i.aaf
  %i.aah = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !762
  %i.aai = load ptr, ptr %4, align 8, !tbaa !20, !noalias !762
  %i.aaj = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !762
  %i.aak = mul i64 %i.aaj, %indvars.iv1557
  %i.aal = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !762 ; 2 uses
  %i.aam = mul i64 %i.aak, %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aam
  %i.aao = sext i32 %i.aah to i64
  %i.aap = mul nsw i64 %i.aao, %i.abl
  %i.aaq = mul i64 %i.aap, %i.aal
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.aaq
  %i.aas = sext i32 %i.aab to i64
  %i.aat = getelementptr inbounds [2 x i8], ptr %i.aar, i64 %i.aas
  %i.aau = load i16, ptr %i.aat, align 2, !tbaa !89
  %i.aav = zext i16 %i.aau to i32
  %i.aaw = shl nuw i32 %i.aav, 16
  %i.aax = insertelement <8 x i32> poison, i32 %i.aaw, i64 0
  %i.aay = bitcast <8 x i32> %i.aax to <8 x float>
  %i.aaz = shufflevector <8 x float> %i.aay, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aba = load <8 x i16>, ptr %i.aag, align 16, !tbaa !82 ; 2 uses
  %i.abb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aba, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aba, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.abd = shufflevector <8 x i16> %i.abb, <8 x i16> %i.abc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abe = bitcast <16 x i16> %i.abd to <8 x float>
  %i.abf = fmul fast <8 x float> %i.aaz, %i.abe
  %i.abg = fadd fast <8 x float> %i.abf, %.211476.us
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.22.us = phi nsz <8 x float> [ %.211476.us, %bb.z ], [ %i.abg, %bb.ab ], [ %.211476.us, %bb.aa ] ; 2 uses
  %indvars.iv.next1552 = add nuw nsw i64 %indvars.iv1551, 1 ; 2 uses
  %exitcond1555.not = icmp eq i64 %indvars.iv.next1552, %wide.trip.count1554
  br i1 %exitcond1555.not, label %.loopexit.us, label %bb.z, !llvm.loop !750

.loopexit.us:                                     ; preds = %bb.ac, %.preheader.us, %bb.y, %bb.x
  %.23.us = phi nsz <8 x float> [ %.201478.us, %bb.x ], [ %.201478.us, %bb.y ], [ %.201478.us, %.preheader.us ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.abh = add nuw nsw i32 %.03211479.us, 1       ; 2 uses
  %exitcond1556.not = icmp eq i32 %i.abh, %i.zh
  br i1 %exitcond1556.not, label %._crit_edge.us1493, label %bb.x, !llvm.loop !751

.lr.ph.us1490:                                    ; preds = %.preheader.us
  %i.abi = load i32, ptr %13, align 4, !tbaa !61
  %i.abj = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1491 = sub i32 %.neg1308, %i.abj
  %i.abk = mul nuw nsw i32 %i.zu, %.03211479.us
  %i.abl = sext i32 %i.zt to i64
  %wide.trip.count1554 = zext nneg i32 %i.zu to i64
  br label %bb.z

._crit_edge.us1493:                               ; preds = %.loopexit.us
  %i.abm = getelementptr inbounds [2 x i8], ptr %.33321485.us, i64 %i.zl
  %indvars.iv.next1558 = add nuw nsw i64 %indvars.iv1557, 1 ; 2 uses
  %i.abn = trunc nuw i64 %indvars.iv.next1558 to i32
  %i.abo = icmp sgt i32 %i.ac, %i.abn
  br i1 %i.abo, label %.preheader1327.us, label %._crit_edge1487, !llvm.loop !752

._crit_edge1487:                                  ; preds = %._crit_edge.us1493, %.preheader1327.lr.ph, %.preheader1331
  %.19.lcssa = phi <8 x float> [ %.14.lcssa, %.preheader1331 ], [ %.14.lcssa, %.preheader1327.lr.ph ], [ %.23.us, %._crit_edge.us1493 ]
  %i.abp = fadd fast <8 x float> %.71280.lcssa, %.71293.lcssa
  %i.abq = fadd fast <8 x float> %i.abp, %.131268.lcssa
  %i.abr = fadd fast <8 x float> %i.abq, %.19.lcssa ; 10 uses
  %i.abs = load i32, ptr %17, align 4, !tbaa !61
  switch i32 %i.abs, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit [
    i32 1, label %bb.ad
    i32 2, label %.noexc547
    i32 3, label %.noexc549
    i32 4, label %.noexc550
    i32 5, label %.noexc551
    i32 6, label %.noexc554
  ]

bb.ad:                                            ; preds = %._crit_edge1487
  %i.abt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abr, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc547:                                        ; preds = %._crit_edge1487
  %i.abu = load ptr, ptr %18, align 8, !tbaa !20
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !39
  %i.abw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.abr)
  %i.abx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %i.abr)
  %i.aby = insertelement <8 x float> poison, float %i.abv, i64 0
  %i.abz = shufflevector <8 x float> %i.aby, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aca = fmul fast <8 x float> %i.abz, %i.abx
  %i.acb = fadd fast <8 x float> %i.aca, %i.abw
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc549:                                        ; preds = %._crit_edge1487
  %i.acc = load ptr, ptr %18, align 8, !tbaa !20  ; 2 uses
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !39
  %i.ace = insertelement <8 x float> poison, float %i.acd, i64 0
  %i.acf = shufflevector <8 x float> %i.ace, <8 x float> poison, <8 x i32> zeroinitializer
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !39
  %i.aci = insertelement <8 x float> poison, float %i.ach, i64 0
  %i.acj = shufflevector <8 x float> %i.aci, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ack = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.abr, <8 x float> nofpclass(nan inf) %i.acf)
  %i.acl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ack, <8 x float> nofpclass(nan inf) %i.acj)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc550:                                        ; preds = %._crit_edge1487
  %i.acm = fneg fast <8 x float> %i.abr
  %i.acn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.acm, <8 x float> splat (float f0x42B0C0A5))
  %i.aco = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.acn, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.acp = fmul fast <8 x float> %i.aco, splat (float f0x3FB8AA3B)
  %i.acq = fadd fast <8 x float> %i.acp, splat (float 5.000000e-01) ; 2 uses
  %i.acr = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.acq, i32 1) ; 2 uses
  %i.acs = fcmp fast ogt <8 x float> %i.acr, %i.acq
  %i.act = select <8 x i1> %i.acs, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.acu = fsub fast <8 x float> %i.acr, %i.act   ; 2 uses
  %i.acv = fmul fast <8 x float> %i.acu, splat (float f0x3F317218)
  %i.acw = fsub fast <8 x float> %i.aco, %i.acv   ; 8 uses
  %i.acx = fmul fast <8 x float> %i.acw, %i.acw
  %i.acy = fmul fast <8 x float> %i.acw, splat (float f0x39506967)
  %i.acz = fadd fast <8 x float> %i.acy, splat (float f0x3AB743CE)
  %i.ada = fmul fast <8 x float> %i.acz, %i.acw
  %i.adb = fadd fast <8 x float> %i.ada, splat (float f0x3C088908)
  %i.adc = fmul fast <8 x float> %i.adb, %i.acw
  %i.add = fadd fast <8 x float> %i.adc, splat (float f0x3D2AA9C1)
  %i.ade = fmul fast <8 x float> %i.add, %i.acw
  %i.adf = fadd fast <8 x float> %i.ade, splat (float f0x3E2AAAAA)
  %i.adg = fmul fast <8 x float> %i.adf, %i.acw
  %i.adh = fadd fast <8 x float> %i.adg, splat (float 5.000000e-01)
  %i.adi = fmul fast <8 x float> %i.acx, %i.adh
  %i.adj = fadd fast <8 x float> %i.acw, splat (float 1.000000e+00)
  %i.adk = fadd fast <8 x float> %i.adj, %i.adi
  %i.adl = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acu)
  %i.adm = shl <8 x i32> %i.adl, splat (i32 23)
  %i.adn = add <8 x i32> %i.adm, splat (i32 1065353216)
  %i.ado = bitcast <8 x i32> %i.adn to <8 x float>
  %i.adp = fmul fast <8 x float> %i.adk, %i.ado
  %i.adq = fadd fast <8 x float> %i.adp, splat (float 1.000000e+00)
  %i.adr = fdiv fast <8 x float> splat (float 1.000000e+00), %i.adq
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc551:                                        ; preds = %._crit_edge1487
  %i.ads = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.abr, <8 x float> splat (float f0x42B0C0A5))
  %i.adt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ads, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.adu = fmul fast <8 x float> %i.adt, splat (float f0x3FB8AA3B)
  %i.adv = fadd fast <8 x float> %i.adu, splat (float 5.000000e-01) ; 2 uses
  %i.adw = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.adv, i32 1) ; 2 uses
  %i.adx = fcmp fast ogt <8 x float> %i.adw, %i.adv
  %i.ady = select <8 x i1> %i.adx, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.adz = fsub fast <8 x float> %i.adw, %i.ady   ; 2 uses
  %i.aea = fmul fast <8 x float> %i.adz, splat (float f0x3F317218)
  %i.aeb = fsub fast <8 x float> %i.adt, %i.aea   ; 8 uses
  %i.aec = fmul fast <8 x float> %i.aeb, %i.aeb
  %i.aed = fmul fast <8 x float> %i.aeb, splat (float f0x39506967)
  %i.aee = fadd fast <8 x float> %i.aed, splat (float f0x3AB743CE)
  %i.aef = fmul fast <8 x float> %i.aee, %i.aeb
  %i.aeg = fadd fast <8 x float> %i.aef, splat (float f0x3C088908)
  %i.aeh = fmul fast <8 x float> %i.aeg, %i.aeb
  %i.aei = fadd fast <8 x float> %i.aeh, splat (float f0x3D2AA9C1)
  %i.aej = fmul fast <8 x float> %i.aei, %i.aeb
  %i.aek = fadd fast <8 x float> %i.aej, splat (float f0x3E2AAAAA)
  %i.ael = fmul fast <8 x float> %i.aek, %i.aeb
  %i.aem = fadd fast <8 x float> %i.ael, splat (float 5.000000e-01)
  %i.aen = fmul fast <8 x float> %i.aec, %i.aem
  %i.aeo = fadd fast <8 x float> %i.aeb, splat (float 1.000000e+00)
  %i.aep = fadd fast <8 x float> %i.aeo, %i.aen
  %i.aeq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adz)
  %i.aer = shl <8 x i32> %i.aeq, splat (i32 23)
  %i.aes = add <8 x i32> %i.aer, splat (i32 1065353216)
  %i.aet = bitcast <8 x i32> %i.aes to <8 x float>
  %i.aeu = fmul fast <8 x float> %i.aep, %i.aet
  %i.aev = fadd fast <8 x float> %i.aeu, splat (float 1.000000e+00) ; 2 uses
  %i.aew = fcmp fast ole <8 x float> %i.aev, zeroinitializer
  %i.aex = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aev, <8 x float> splat (float f0x00800000)) ; 2 uses
  %i.aey = bitcast <8 x float> %i.aex to <8 x i32>
  %i.aez = bitcast <8 x float> %i.aex to <8 x i32>
  %i.afa = and <8 x i32> %i.aez, splat (i32 -2139095041)
  %i.afb = or disjoint <8 x i32> %i.afa, splat (i32 1056964608)
  %i.afc = bitcast <8 x i32> %i.afb to <8 x float> ; 3 uses
  %i.afd = lshr <8 x i32> %i.aey, splat (i32 23)
  %i.afe = add nsw <8 x i32> %i.afd, splat (i32 -127)
  %i.aff = sitofp fast <8 x i32> %i.afe to <8 x float> ; 2 uses
  %i.afg = fadd fast <8 x float> %i.aff, splat (float 1.000000e+00)
  %i.afh = fcmp fast olt <8 x float> %i.afc, splat (float f0x3F3504F3) ; 2 uses
  %i.afi = select <8 x i1> %i.afh, <8 x float> %i.afc, <8 x float> zeroinitializer
  %i.afj = fadd fast <8 x float> %i.afc, splat (float -1.000000e+00)
  %i.afk = select fast <8 x i1> %i.afh, <8 x float> %i.aff, <8 x float> %i.afg
  %i.afl = fadd fast <8 x float> %i.afj, %i.afi   ; 12 uses
  %i.afm = fmul fast <8 x float> %i.afl, %i.afl
  %i.afn = fmul fast <8 x float> %i.afl, splat (float f0x3D9021BB)
  %i.afo = fadd fast <8 x float> %i.afn, splat (float f0xBDEBD1B8)
  %i.afp = fmul fast <8 x float> %i.afo, %i.afl
  %i.afq = fadd fast <8 x float> %i.afp, splat (float f0x3DEF251A)
  %i.afr = fmul fast <8 x float> %i.afq, %i.afl
  %i.afs = fadd fast <8 x float> %i.afr, splat (float f0xBDFE5D4F)
  %i.aft = fmul fast <8 x float> %i.afs, %i.afl
  %i.afu = fadd fast <8 x float> %i.aft, splat (float f0x3E11E9BF)
  %i.afv = fmul fast <8 x float> %i.afu, %i.afl
  %i.afw = fadd fast <8 x float> %i.afv, splat (float f0xBE2AAE50)
  %i.afx = fmul fast <8 x float> %i.afw, %i.afl
  %i.afy = fadd fast <8 x float> %i.afx, splat (float f0x3E4CCEAC)
  %i.afz = fmul fast <8 x float> %i.afy, %i.afl
  %i.aga = fadd fast <8 x float> %i.afz, splat (float f0xBE7FFFFC)
  %i.agb = fmul fast <8 x float> %i.aga, %i.afl
  %i.agc = fadd fast <8 x float> %i.agb, splat (float f0x3EAAAAAA)
  %i.agd = fmul fast <8 x float> %i.agc, %i.afl
  %reass.mul = fmul fast <8 x float> %i.afk, splat (float f0x3F317218)
  %reass.add1303 = fadd fast <8 x float> %i.agd, splat (float -5.000000e-01)
  %reass.mul1304 = fmul fast <8 x float> %i.afm, %reass.add1303
  %i.age = fadd fast <8 x float> %reass.mul, %i.afl
  %i.agf = fadd fast <8 x float> %i.age, %reass.mul1304
  %.neg = fmul fast <8 x float> %i.agf, splat (float -2.000000e+00)
  %i.agg = select fast <8 x i1> %i.aew, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg
  %i.agh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.agg, <8 x float> splat (float f0x42B0C0A5))
  %i.agi = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.agh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.agj = fmul fast <8 x float> %i.agi, splat (float f0x3FB8AA3B)
  %i.agk = fadd fast <8 x float> %i.agj, splat (float 5.000000e-01) ; 2 uses
  %i.agl = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.agk, i32 1) ; 2 uses
  %i.agm = fcmp fast ogt <8 x float> %i.agl, %i.agk
  %i.agn = select <8 x i1> %i.agm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ago = fsub fast <8 x float> %i.agl, %i.agn   ; 2 uses
  %i.agp = fmul fast <8 x float> %i.ago, splat (float f0x3F317218)
  %i.agq = fsub fast <8 x float> %i.agi, %i.agp   ; 8 uses
  %i.agr = fmul fast <8 x float> %i.agq, %i.agq
  %i.ags = fmul fast <8 x float> %i.agq, splat (float f0x39506967)
  %i.agt = fadd fast <8 x float> %i.ags, splat (float f0x3AB743CE)
  %i.agu = fmul fast <8 x float> %i.agt, %i.agq
  %i.agv = fadd fast <8 x float> %i.agu, splat (float f0x3C088908)
  %i.agw = fmul fast <8 x float> %i.agv, %i.agq
  %i.agx = fadd fast <8 x float> %i.agw, splat (float f0x3D2AA9C1)
  %i.agy = fmul fast <8 x float> %i.agx, %i.agq
  %i.agz = fadd fast <8 x float> %i.agy, splat (float f0x3E2AAAAA)
  %i.aha = fmul fast <8 x float> %i.agz, %i.agq
  %i.ahb = fadd fast <8 x float> %i.aha, splat (float 5.000000e-01)
  %i.ahc = fmul fast <8 x float> %i.agr, %i.ahb
  %i.ahd = fadd fast <8 x float> %i.agq, splat (float 1.000000e+00)
  %i.ahe = fadd fast <8 x float> %i.ahd, %i.ahc
  %i.ahf = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ago)
  %i.ahg = shl <8 x i32> %i.ahf, splat (i32 23)
  %i.ahh = add <8 x i32> %i.ahg, splat (i32 1065353216)
  %i.ahi = bitcast <8 x i32> %i.ahh to <8 x float>
  %i.ahj = fmul fast <8 x float> %i.ahe, %i.ahi
  %i.ahk = fadd fast <8 x float> %i.ahj, splat (float 1.000000e+00)
  %i.ahl = fdiv fast <8 x float> splat (float 2.000000e+00), %i.ahk
  %i.ahm = fadd fast <8 x float> %i.ahl, splat (float -1.000000e+00)
  %i.ahn = fmul fast <8 x float> %i.ahm, %i.abr
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

.noexc554:                                        ; preds = %._crit_edge1487
  %i.aho = load ptr, ptr %18, align 8, !tbaa !20  ; 2 uses
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !39
  %i.ahq = insertelement <8 x float> poison, float %i.ahp, i64 0
  %i.ahr = shufflevector <8 x float> %i.ahq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.aho, i64 4
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !39
  %i.ahu = insertelement <8 x float> poison, float %i.aht, i64 0
  %i.ahv = shufflevector <8 x float> %i.ahu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahw = fmul fast <8 x float> %i.ahr, %i.abr
  %i.ahx = fadd fast <8 x float> %i.ahw, %i.ahv
  %i.ahy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ahx, <8 x float> zeroinitializer)
  %i.ahz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ahy, <8 x float> splat (float 1.000000e+00))
  %i.aia = fmul fast <8 x float> %i.ahz, %i.abr
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %.noexc554, %.noexc551, %.noexc550, %.noexc549, %.noexc547, %bb.ad, %._crit_edge1487
  %.0.i = phi nsz <8 x float> [ %i.aia, %.noexc554 ], [ %i.abt, %bb.ad ], [ %i.acb, %.noexc547 ], [ %i.acl, %.noexc549 ], [ %i.adr, %.noexc550 ], [ %i.ahn, %.noexc551 ], [ %i.abr, %._crit_edge1487 ] ; 4 uses
  switch i32 %i.ah, label %.thread1300 [
    i32 8, label %.thread
    i32 4, label %bb.ae
    i32 1, label %bb.af
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aib = bitcast <8 x float> %.0.i to <8 x i32> ; 2 uses
  %i.aic = shufflevector <8 x i32> %i.aib, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aid = shufflevector <8 x i32> %i.aib, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aie = lshr <4 x i32> %i.aic, splat (i32 16)
  %i.aif = lshr <4 x i32> %i.aid, splat (i32 16)
  %i.aig = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aie, <4 x i32> %i.aif)
  store <8 x i16> %i.aig, ptr %.13361495, align 16, !tbaa !82
  %i.aih = getelementptr inbounds nuw i8, ptr %.13361495, i64 16
  br label %.thread1300

bb.ae:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aii = bitcast <8 x float> %.0.i to <8 x i32>
  %i.aij = shufflevector <8 x i32> %i.aii, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aik = lshr <4 x i32> %i.aij, splat (i32 16)
  %i.ail = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aik, <4 x i32> poison)
  %i.aim = bitcast <8 x i16> %i.ail to <2 x i64>
  %i.ain = extractelement <2 x i64> %i.aim, i64 0
  store i64 %i.ain, ptr %.13361495, align 1, !tbaa !82
  %i.aio = load i64, ptr %19, align 8, !tbaa !84
  %i.aip = getelementptr inbounds nuw [2 x i8], ptr %.13361495, i64 %i.aio
  %i.aiq = bitcast <8 x float> %.0.i to <8 x i32>
  %i.air = shufflevector <8 x i32> %i.aiq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ais = lshr <4 x i32> %i.air, splat (i32 16)
  %i.ait = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ais, <4 x i32> poison)
  %i.aiu = bitcast <8 x i16> %i.ait to <2 x i64>
  %i.aiv = extractelement <2 x i64> %i.aiu, i64 0
  store i64 %i.aiv, ptr %i.aip, align 1, !tbaa !82
  %i.aiw = getelementptr inbounds nuw i8, ptr %.13361495, i64 8
  br label %.thread1300

bb.af:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aix = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.aiy = extractelement <16 x i16> %i.aix, i64 1
  store i16 %i.aiy, ptr %.13361495, align 2, !tbaa !89
  %i.aiz = extractelement <16 x i16> %i.aix, i64 3
  %i.aja = load i64, ptr %19, align 8, !tbaa !84  ; 7 uses
  %i.ajb = getelementptr inbounds nuw [2 x i8], ptr %.13361495, i64 %i.aja
  store i16 %i.aiz, ptr %i.ajb, align 2, !tbaa !89
  %i.ajc = extractelement <16 x i16> %i.aix, i64 5
  %.idx = shl i64 %i.aja, 2
  %i.ajd = getelementptr inbounds nuw i8, ptr %.13361495, i64 %.idx
  store i16 %i.ajc, ptr %i.ajd, align 2, !tbaa !89
  %i.aje = extractelement <16 x i16> %i.aix, i64 7
  %.idx365 = mul i64 %i.aja, 6
  %i.ajf = getelementptr inbounds nuw i8, ptr %.13361495, i64 %.idx365
  store i16 %i.aje, ptr %i.ajf, align 2, !tbaa !89
  %i.ajg = extractelement <16 x i16> %i.aix, i64 9
  %.idx366 = shl i64 %i.aja, 3
  %i.ajh = getelementptr inbounds nuw i8, ptr %.13361495, i64 %.idx366
  store i16 %i.ajg, ptr %i.ajh, align 2, !tbaa !89
  %i.aji = extractelement <16 x i16> %i.aix, i64 11
  %.idx367 = mul i64 %i.aja, 10
  %i.ajj = getelementptr inbounds nuw i8, ptr %.13361495, i64 %.idx367
  store i16 %i.aji, ptr %i.ajj, align 2, !tbaa !89
  %i.ajk = extractelement <16 x i16> %i.aix, i64 13
  %.idx368 = mul i64 %i.aja, 12
  %i.ajl = getelementptr inbounds nuw i8, ptr %.13361495, i64 %.idx368
  store i16 %i.ajk, ptr %i.ajl, align 2, !tbaa !89
  %i.ajm = extractelement <16 x i16> %i.aix, i64 15
  %.idx369 = mul i64 %i.aja, 14
  %i.ajn = getelementptr inbounds nuw i8, ptr %.13361495, i64 %.idx369
  store i16 %i.ajm, ptr %i.ajn, align 2, !tbaa !89
  %i.ajo = getelementptr inbounds nuw i8, ptr %.13361495, i64 2
  br label %.thread1300

.thread1300:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.ae, %.thread, %bb.af
  %.4 = phi ptr [ %i.ajo, %bb.af ], [ %.13361495, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.aih, %.thread ], [ %i.aiw, %bb.ae ] ; 2 uses
  %i.ajp = add nuw nsw i32 %.03331496, 1          ; 2 uses
  %exitcond1560.not = icmp eq i32 %i.ajp, %i.af
  br i1 %exitcond1560.not, label %._crit_edge, label %bb.c, !llvm.loop !753

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

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !8, i64 24, !16, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !15, i64 64}
!18 = !{!17, !14, i64 8}
end_hunk_11
