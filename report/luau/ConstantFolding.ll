Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ConstantFolding?download=true
inline.NumInlined: 650
inline.NumDeleted: 342
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau7CompileL10foldBinaryERNS0_8ConstantENS_13AstExprBinary2OpERKS1_S6_RNS_12AstNameTableE:bb.a

bb.ba:                                            ; preds = %bb.az
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !70 ; 2 uses
  %i.nu = fcmp une double %i.nt, 0.000000e+00
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !70
  %i.nx = fdiv double %i.nw, %i.nt                ; 2 uses
  %i.ny = fcmp oeq double %i.nx, 0.000000e+00
  %or.cond21 = or i1 %i.nu, %i.ny
  br i1 %or.cond21, label %bb.bb, label %.thread629

bb.bb:                                            ; preds = %bb.ba
  %i.nz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.oa = load double, ptr %i.nv, align 8, !tbaa !70
  %i.ob = load double, ptr %i.nz, align 8, !tbaa !70
  %i.oc = fdiv double %i.oa, %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.oc, ptr %i.od, align 8, !tbaa !70
  %i.oe = load double, ptr %i.nv, align 8, !tbaa !70
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.og = load double, ptr %i.of, align 8, !tbaa !70
  %i.oh = fdiv double %i.oe, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.oh, ptr %i.oi, align 8, !tbaa !70
  %i.oj = load double, ptr %i.nv, align 8, !tbaa !70
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !70
  %i.om = fdiv double %i.oj, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.om, ptr %i.on, align 8, !tbaa !70
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.nx, ptr %i.oo, align 8, !tbaa !70
  br label %.thread629

bb.bc:                                            ; preds = %bb.ay
  %i.op = select i1 %i.mn, i1 %i.kq, i1 false
  br i1 %i.op, label %bb.bd, label %.thread629

bb.bd:                                            ; preds = %bb.bc
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.or = load double, ptr %i.oq, align 8, !tbaa !70 ; 2 uses
  %i.os = fcmp une double %i.or, 0.000000e+00
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !70
  %i.ov = fdiv double %i.or, %i.ou                ; 2 uses
  %i.ow = fcmp oeq double %i.ov, 0.000000e+00
  %or.cond23 = or i1 %i.os, %i.ow
  br i1 %or.cond23, label %bb.be, label %.thread629

bb.be:                                            ; preds = %bb.bd
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !70
  %i.oz = load double, ptr %i.ot, align 8, !tbaa !70
  %i.pa = fdiv double %i.oy, %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.pa, ptr %i.pb, align 8, !tbaa !70
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !70
  %i.pe = load double, ptr %i.ot, align 8, !tbaa !70
  %i.pf = fdiv double %i.pd, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.pf, ptr %i.pg, align 8, !tbaa !70
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !70
  %i.pj = load double, ptr %i.ot, align 8, !tbaa !70
  %i.pk = fdiv double %i.pi, %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.pk, ptr %i.pl, align 8, !tbaa !70
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ov, ptr %i.pm, align 8, !tbaa !70
  br label %.thread629

bb.bf:                                            ; preds = %bb.a
  %i.pn = load i32, ptr %2, align 8, !tbaa !68    ; 3 uses
  %i.po = icmp eq i32 %i.pn, 3                    ; 3 uses
  %i.pp = load i32, ptr %3, align 8               ; 3 uses
  %i.pq = icmp eq i32 %i.pp, 3                    ; 3 uses
  %or.cond599 = select i1 %i.po, i1 %i.pq, i1 false
  br i1 %or.cond599, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.pr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !70
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !70
  %i.pv = fdiv double %i.ps, %i.pu
  %i.pw = tail call double @llvm.floor.f64(double %i.pv)
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.pw, ptr %i.px, align 8, !tbaa !70
  br label %.thread629

bb.bh:                                            ; preds = %bb.bf
  %i.py = icmp eq i32 %i.pn, 5                    ; 2 uses
  %i.pz = icmp eq i32 %i.pp, 5                    ; 2 uses
  %or.cond601 = select i1 %i.py, i1 %i.pz, i1 false
  br i1 %or.cond601, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !70 ; 2 uses
  %i.qc = fcmp une float %i.qb, 0.000000e+00
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.qe = load float, ptr %i.qd, align 4          ; 2 uses
  %i.qf = fcmp une float %i.qe, 0.000000e+00
  %i.qg = or i1 %i.qc, %i.qf
  %i.qh = fdiv float %i.qb, %i.qe
  %i.qi = tail call noundef float @llvm.floor.f32(float %i.qh) ; 2 uses
  %i.qj = fcmp oeq float %i.qi, 0.000000e+00
  %or.cond25 = or i1 %i.qg, %i.qj
  br i1 %or.cond25, label %bb.bj, label %.thread629

bb.bj:                                            ; preds = %bb.bi
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.qm = load float, ptr %i.qk, align 8, !tbaa !70
  %i.qn = load float, ptr %i.ql, align 8, !tbaa !70
  %i.qo = fdiv float %i.qm, %i.qn
  %i.qp = tail call noundef float @llvm.floor.f32(float %i.qo)
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.qp, ptr %i.qq, align 8, !tbaa !70
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !70
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !70
  %i.qv = fdiv float %i.qs, %i.qu
  %i.qw = tail call noundef float @llvm.floor.f32(float %i.qv)
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.qw, ptr %i.qx, align 4, !tbaa !70
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !70
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rb = load float, ptr %i.ra, align 8, !tbaa !70
  %i.rc = fdiv float %i.qz, %i.rb
  %i.rd = tail call noundef float @llvm.floor.f32(float %i.rc)
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.rd, ptr %i.re, align 8, !tbaa !70
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.qi, ptr %i.rf, align 4, !tbaa !70
  br label %.thread629

bb.bk:                                            ; preds = %bb.bh
  %or.cond603 = select i1 %i.po, i1 %i.pz, i1 false
  br i1 %or.cond603, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !70 ; 2 uses
  %i.ri = fcmp une float %i.rh, 0.000000e+00
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !70
  %i.rl = fptrunc double %i.rk to float
  %i.rm = fdiv float %i.rl, %i.rh
  %i.rn = tail call noundef float @llvm.floor.f32(float %i.rm) ; 2 uses
  %i.ro = fcmp oeq float %i.rn, 0.000000e+00
  %or.cond27 = or i1 %i.ri, %i.ro
  br i1 %or.cond27, label %bb.bm, label %.thread629

bb.bm:                                            ; preds = %bb.bl
  %i.rp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.rq = load double, ptr %i.rj, align 8, !tbaa !70
  %i.rr = fptrunc double %i.rq to float
  %i.rs = load float, ptr %i.rp, align 8, !tbaa !70
  %i.rt = fdiv float %i.rr, %i.rs
  %i.ru = tail call noundef float @llvm.floor.f32(float %i.rt)
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ru, ptr %i.rv, align 8, !tbaa !70
  %i.rw = load double, ptr %i.rj, align 8, !tbaa !70
  %i.rx = fptrunc double %i.rw to float
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !70
  %i.sa = fdiv float %i.rx, %i.rz
  %i.sb = tail call noundef float @llvm.floor.f32(float %i.sa)
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.sb, ptr %i.sc, align 4, !tbaa !70
  %i.sd = load double, ptr %i.rj, align 8, !tbaa !70
  %i.se = fptrunc double %i.sd to float
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sg = load float, ptr %i.sf, align 8, !tbaa !70
  %i.sh = fdiv float %i.se, %i.sg
  %i.si = tail call noundef float @llvm.floor.f32(float %i.sh)
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.si, ptr %i.sj, align 8, !tbaa !70
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.rn, ptr %i.sk, align 4, !tbaa !70
  br label %.thread629

bb.bn:                                            ; preds = %bb.bk
  %or.cond605 = select i1 %i.py, i1 %i.pq, i1 false
  br i1 %or.cond605, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.sl = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !70 ; 2 uses
  %i.sn = fcmp une float %i.sm, 0.000000e+00
  %i.so = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.sp = load double, ptr %i.so, align 8, !tbaa !70
  %i.sq = fptrunc double %i.sp to float
  %i.sr = fdiv float %i.sm, %i.sq
  %i.ss = tail call noundef float @llvm.floor.f32(float %i.sr)
  %i.st = fcmp oeq float %i.ss, 0.000000e+00
  %or.cond29 = or i1 %i.sn, %i.st
  br i1 %or.cond29, label %bb.bp, label %.thread629

bb.bp:                                            ; preds = %bb.bo
  %i.su = add nuw i64 %i.c, 24                    ; 2 uses
  %i.sv = add nuw i64 %i.b, 8
  %i.sw = add nuw i64 %i.b, 24
  %i.sx = add nuw i64 %i.a, 8
  %i.sy = add nuw i64 %i.a, 16
  %rt.bound0684 = icmp ugt i64 %i.sw, %i.c
  %rt.bound1685 = icmp ult i64 %i.sv, %i.su
  %rt.conflict686 = and i1 %rt.bound0684, %rt.bound1685
  %rt.bound0687 = icmp ugt i64 %i.sy, %i.c
  %rt.bound1688 = icmp ult i64 %i.sx, %i.su
  %rt.conflict689 = and i1 %rt.bound0687, %rt.bound1688
  %rt.conflict.all690 = or i1 %rt.conflict686, %rt.conflict689
  %rt.guard691 = freeze i1 %rt.conflict.all690
  br i1 %rt.guard691, label %.rtscalar682, label %.rtvec681, !prof !292

bb.bq:                                            ; preds = %bb.bn
  %i.sz = icmp eq i32 %i.pn, 6                    ; 2 uses
  %i.ta = icmp eq i32 %i.pp, 6                    ; 2 uses
  %or.cond607 = select i1 %i.sz, i1 %i.ta, i1 false
  br i1 %or.cond607, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.tb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.td = load double, ptr %i.tc, align 8, !tbaa !70 ; 3 uses
  %i.te = fcmp une double %i.td, 0.000000e+00
  %i.tf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !70 ; 3 uses
  br i1 %i.te, label %.thread633, label %bb.bs

.thread633:                                       ; preds = %bb.br
  %i.th = fdiv double %i.td, %i.tg
  %i.ti = tail call double @llvm.floor.f64(double %i.th)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.tj = fcmp une double %i.tg, 0.000000e+00
  %i.tk = fdiv double %i.td, %i.tg
  %i.tl = tail call double @llvm.floor.f64(double %i.tk) ; 2 uses
  %i.tm = fcmp oeq double %i.tl, 0.000000e+00
  %or.cond31 = or i1 %i.tj, %i.tm
  br i1 %or.cond31, label %bb.bt, label %.thread629

bb.bt:                                            ; preds = %.thread633, %bb.bs
  %i.tn = phi double [ %i.ti, %.thread633 ], [ %i.tl, %bb.bs ]
  %i.to = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.tp = load double, ptr %i.tb, align 8, !tbaa !70
  %i.tq = load double, ptr %i.to, align 8, !tbaa !70
  %i.tr = fdiv double %i.tp, %i.tq
  %i.ts = tail call double @llvm.floor.f64(double %i.tr)
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ts, ptr %i.tt, align 8, !tbaa !70
  %i.tu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !70
  %i.tw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !70
  %i.ty = fdiv double %i.tv, %i.tx
  %i.tz = tail call double @llvm.floor.f64(double %i.ty)
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.tz, ptr %i.ua, align 8, !tbaa !70
  %i.ub = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !70
  %i.ud = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !70
  %i.uf = fdiv double %i.uc, %i.ue
  %i.ug = tail call double @llvm.floor.f64(double %i.uf)
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ug, ptr %i.uh, align 8, !tbaa !70
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.tn, ptr %i.ui, align 8, !tbaa !70
  br label %.thread629

bb.bu:                                            ; preds = %bb.bq
  br i1 %i.po, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.ta, label %bb.bw, label %.thread629

bb.bw:                                            ; preds = %bb.bv
  %i.uj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !70 ; 2 uses
  %i.ul = fcmp une double %i.uk, 0.000000e+00
  %i.um = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !70
  %i.uo = fdiv double %i.un, %i.uk
  %i.up = tail call double @llvm.floor.f64(double %i.uo) ; 2 uses
  %i.uq = fcmp oeq double %i.up, 0.000000e+00
  %or.cond33 = or i1 %i.ul, %i.uq
  br i1 %or.cond33, label %bb.bx, label %.thread629

bb.bx:                                            ; preds = %bb.bw
  %i.ur = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.us = load double, ptr %i.um, align 8, !tbaa !70
  %i.ut = load double, ptr %i.ur, align 8, !tbaa !70
  %i.uu = fdiv double %i.us, %i.ut
  %i.uv = tail call double @llvm.floor.f64(double %i.uu)
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.uv, ptr %i.uw, align 8, !tbaa !70
  %i.ux = load double, ptr %i.um, align 8, !tbaa !70
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !70
  %i.va = fdiv double %i.ux, %i.uz
  %i.vb = tail call double @llvm.floor.f64(double %i.va)
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.vb, ptr %i.vc, align 8, !tbaa !70
  %i.vd = load double, ptr %i.um, align 8, !tbaa !70
  %i.ve = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !70
  %i.vg = fdiv double %i.vd, %i.vf
  %i.vh = tail call double @llvm.floor.f64(double %i.vg)
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.vh, ptr %i.vi, align 8, !tbaa !70
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.up, ptr %i.vj, align 8, !tbaa !70
  br label %.thread629

bb.by:                                            ; preds = %bb.bu
  %i.vk = select i1 %i.sz, i1 %i.pq, i1 false
  br i1 %i.vk, label %bb.bz, label %.thread629

bb.bz:                                            ; preds = %bb.by
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !70 ; 2 uses
  %i.vn = fcmp une double %i.vm, 0.000000e+00
  %i.vo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !70
  %i.vq = fdiv double %i.vm, %i.vp
  %i.vr = tail call double @llvm.floor.f64(double %i.vq)
  %i.vs = fcmp oeq double %i.vr, 0.000000e+00
  %or.cond35 = or i1 %i.vn, %i.vs
  br i1 %or.cond35, label %bb.ca, label %.thread629

bb.ca:                                            ; preds = %bb.bz
  %i.vt = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 6, ptr %0, align 8, !tbaa !68
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !70
  %i.vv = load double, ptr %i.vo, align 8, !tbaa !70
  %i.vw = fdiv double %i.vu, %i.vv
  %i.vx = tail call double @llvm.floor.f64(double %i.vw)
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.vx, ptr %i.vy, align 8, !tbaa !70
  %i.vz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !70
  %i.wb = load double, ptr %i.vo, align 8, !tbaa !70
  %i.wc = fdiv double %i.wa, %i.wb
  %i.wd = tail call double @llvm.floor.f64(double %i.wc)
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.wd, ptr %i.we, align 8, !tbaa !70
  %i.wf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !70
  %i.wh = load double, ptr %i.vo, align 8, !tbaa !70
  %i.wi = fdiv double %i.wg, %i.wh
  %i.wj = tail call double @llvm.floor.f64(double %i.wi)
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.wj, ptr %i.wk, align 8, !tbaa !70
  %i.wl = load double, ptr %i.vl, align 8, !tbaa !70
  %i.wm = load double, ptr %i.vo, align 8, !tbaa !70
  %i.wn = fdiv double %i.wl, %i.wm
  %i.wo = tail call double @llvm.floor.f64(double %i.wn)
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.wo, ptr %i.wp, align 8, !tbaa !70
  br label %.thread629

bb.cb:                                            ; preds = %bb.a
  %i.wq = load i32, ptr %2, align 8, !tbaa !68
  %i.wr = icmp eq i32 %i.wq, 3
  %i.ws = load i32, ptr %3, align 8
  %i.wt = icmp eq i32 %i.ws, 3
  %or.cond609 = select i1 %i.wr, i1 %i.wt, i1 false
  br i1 %or.cond609, label %bb.cc, label %.thread629

bb.cc:                                            ; preds = %bb.cb
  store i32 3, ptr %0, align 8, !tbaa !68
  %i.wu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !70 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !70 ; 2 uses
  %i.wy = fdiv double %i.wv, %i.wx
  %i.wz = tail call double @llvm.floor.f64(double %i.wy)
  %i.xa = fneg double %i.wz
  %i.xb = tail call double @llvm.fmuladd.f64(double %i.xa, double %i.wx, double %i.wv)
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.xb, ptr %i.xc, align 8, !tbaa !70
  br label %.thread629

bb.cd:                                            ; preds = %bb.a
  %i.xd = load i32, ptr %2, align 8, !tbaa !68
  %i.xe = icmp eq i32 %i.xd, 3
  %i.xf = load i32, ptr %3, align 8
end_hunk_0
begin_hunk_1_@_ZN4Luau7CompileL10foldBinaryERNS0_8ConstantENS_13AstExprBinary2OpERKS1_S6_RNS_12AstNameTableE:bb.a
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !70
  %i.abl = fcmp oge double %i.abi, %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abn = zext i1 %i.abl to i8
  store i8 %i.abn, ptr %i.abm, align 8, !tbaa !70
  br label %.thread629

bb.df:                                            ; preds = %bb.a
  %i.abo = load i32, ptr %2, align 8, !tbaa !68
  switch i32 %i.abo, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread [
    i32 0, label %.thread629
    i32 1, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636
    i32 2, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  ]

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit:    ; preds = %bb.df
  %i.abp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abq = load i8, ptr %i.abp, align 8, !tbaa !70, !range !41, !noundef !42
  %.not646 = icmp eq i8 %i.abq, 0
  br i1 %.not646, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread: ; preds = %bb.df, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit
  br label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636: ; preds = %bb.df, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread
  %i.abr = phi ptr [ %3, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread ], [ %2, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit ], [ %2, %bb.df ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.abr, i64 40, i1 false), !tbaa.struct !71
  br label %.thread629

bb.dg:                                            ; preds = %bb.a
  %i.abs = load i32, ptr %2, align 8, !tbaa !68
  switch i32 %i.abs, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread [
    i32 0, label %.thread629
    i32 1, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637
    i32 2, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627
  ]

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627: ; preds = %bb.dg
  %i.abt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abu = load i8, ptr %i.abt, align 8, !tbaa !70, !range !41, !noundef !42
  %.not = icmp eq i8 %i.abu, 0
  br i1 %.not, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637, label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread: ; preds = %bb.dg, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627
  br label %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637

_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637: ; preds = %bb.dg, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread
  %i.abv = phi ptr [ %2, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread ], [ %3, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627 ], [ %3, %bb.dg ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.abv, i64 40, i1 false), !tbaa.struct !71
  br label %.thread629

.thread629:                                       ; preds = %.rtvec681, %.rtscalar682, %.rtvec670, %.rtscalar671, %.rtvec659, %.rtscalar660, %.rtvec, %.rtscalar, %bb.dg, %bb.df, %bb.by, %bb.bc, %bb.ag, %bb.bv, %bb.az, %bb.ad, %bb.ca, %bb.bz, %bb.bx, %bb.bw, %bb.bt, %bb.bs, %bb.bo, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.ax, %bb.aw, %bb.as, %bb.ap, %bb.am, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.q, %bb.a, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit627.thread637, %_ZNK4Luau7Compile8Constant10isTruthfulEv.exit.thread636, %bb.dd, %bb.de, %bb.db, %bb.dc, %bb.cz, %bb.da, %bb.cx, %bb.cy, %bb.cv, %bb.cw, %bb.ct, %bb.cu, %bb.cf, %bb.cg, %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ci, %bb.cd, %bb.ce, %bb.cb, %bb.cc, %bb.bg, %bb.ak, %bb.o, %bb.i, %bb.l, %bb.m, %bb.k, %bb.c, %bb.f, %bb.g, %bb.e
  ret void

.rtvec:                                           ; preds = %bb.an
  %i.abw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aca = load float, ptr %i.abz, align 8, !tbaa !70
  %i.acb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acc = load float, ptr %i.acb, align 8, !tbaa !70
  %i.acd = load <4 x float>, ptr %i.abw, align 8
  %i.ace = load <4 x float>, ptr %i.abx, align 8
  %i.acf = insertelement <4 x float> poison, float %i.aca, i64 2
  %i.acg = insertelement <4 x float> %i.acf, float %i.lg, i64 3
  %i.ach = shufflevector <4 x float> %i.acd, <4 x float> %i.acg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aci = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.acc, i64 2
  %i.acj = shufflevector <4 x float> %i.ace, <4 x float> %i.aci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ack = fdiv <4 x float> %i.ach, %i.acj
  store <4 x float> %i.ack, ptr %i.aby, align 8, !tbaa !70
  br label %.thread629

.rtscalar:                                        ; preds = %bb.an
  %i.acl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.acn = load float, ptr %i.acl, align 8, !tbaa !70
  %i.aco = load float, ptr %i.acm, align 8, !tbaa !70
  %i.acp = fdiv float %i.acn, %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.acp, ptr %i.acq, align 8, !tbaa !70
  %i.acr = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !70
  %i.act = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.acu = load float, ptr %i.act, align 4, !tbaa !70
  %i.acv = fdiv float %i.acs, %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.acv, ptr %i.acw, align 4, !tbaa !70
  %i.acx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.acy = load float, ptr %i.acx, align 8, !tbaa !70
  %i.acz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ada = load float, ptr %i.acz, align 8, !tbaa !70
  %i.adb = fdiv float %i.acy, %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.adb, ptr %i.adc, align 8, !tbaa !70
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.lg, ptr %i.add, align 4, !tbaa !70
  br label %.thread629

.rtvec659:                                        ; preds = %bb.aq
  %i.ade = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.adf = load double, ptr %i.lq, align 8, !tbaa !70 ; 3 uses
  %i.adg = fptrunc double %i.adf to float
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adi = fptrunc double %i.adf to float
  %i.adj = fptrunc double %i.adf to float
  %i.adk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.adl = load float, ptr %i.adk, align 8, !tbaa !70
  %i.adm = load <4 x float>, ptr %i.ade, align 8
  %i.adn = insertelement <4 x float> poison, float %i.adg, i64 0
  %i.ado = insertelement <4 x float> %i.adn, float %i.adi, i64 1
  %i.adp = insertelement <4 x float> %i.ado, float %i.adj, i64 2
  %i.adq = insertelement <4 x float> %i.adp, float %i.lt, i64 3
  %i.adr = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.adl, i64 2
  %i.ads = shufflevector <4 x float> %i.adm, <4 x float> %i.adr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adt = fdiv <4 x float> %i.adq, %i.ads
  store <4 x float> %i.adt, ptr %i.adh, align 8, !tbaa !70
  br label %.thread629

.rtscalar660:                                     ; preds = %bb.aq
  %i.adu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.adv = load double, ptr %i.lq, align 8, !tbaa !70
  %i.adw = fptrunc double %i.adv to float
  %i.adx = load float, ptr %i.adu, align 8, !tbaa !70
  %i.ady = fdiv float %i.adw, %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ady, ptr %i.adz, align 8, !tbaa !70
  %i.aea = load double, ptr %i.lq, align 8, !tbaa !70
  %i.aeb = fptrunc double %i.aea to float
  %i.aec = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !70
  %i.aee = fdiv float %i.aeb, %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aee, ptr %i.aef, align 4, !tbaa !70
  %i.aeg = load double, ptr %i.lq, align 8, !tbaa !70
  %i.aeh = fptrunc double %i.aeg to float
  %i.aei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aej = load float, ptr %i.aei, align 8, !tbaa !70
  %i.aek = fdiv float %i.aeh, %i.aej
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.aek, ptr %i.ael, align 8, !tbaa !70
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.lt, ptr %i.aem, align 4, !tbaa !70
  br label %.thread629

.rtvec670:                                        ; preds = %bb.at
  %i.aen = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.aeo = load double, ptr %i.md, align 8, !tbaa !70 ; 3 uses
  %i.aep = fptrunc double %i.aeo to float
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aer = fptrunc double %i.aeo to float
  %i.aes = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aet = load float, ptr %i.aes, align 8, !tbaa !70
  %i.aeu = fptrunc double %i.aeo to float
  %i.aev = load <4 x float>, ptr %i.aen, align 8
  %i.aew = insertelement <4 x float> poison, float %i.aet, i64 2
  %i.aex = insertelement <4 x float> %i.aew, float %i.mg, i64 3
  %i.aey = shufflevector <4 x float> %i.aev, <4 x float> %i.aex, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aez = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aep, i64 0
  %i.afa = insertelement <4 x float> %i.aez, float %i.aer, i64 1
  %i.afb = insertelement <4 x float> %i.afa, float %i.aeu, i64 2
  %i.afc = fdiv <4 x float> %i.aey, %i.afb
  store <4 x float> %i.afc, ptr %i.aeq, align 8, !tbaa !70
  br label %.thread629

.rtscalar671:                                     ; preds = %bb.at
  %i.afd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.afe = load float, ptr %i.afd, align 8, !tbaa !70
  %i.aff = load double, ptr %i.md, align 8, !tbaa !70
  %i.afg = fptrunc double %i.aff to float
  %i.afh = fdiv float %i.afe, %i.afg
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.afh, ptr %i.afi, align 8, !tbaa !70
  %i.afj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !70
  %i.afl = load double, ptr %i.md, align 8, !tbaa !70
  %i.afm = fptrunc double %i.afl to float
  %i.afn = fdiv float %i.afk, %i.afm
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.afn, ptr %i.afo, align 4, !tbaa !70
  %i.afp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.afq = load float, ptr %i.afp, align 8, !tbaa !70
  %i.afr = load double, ptr %i.md, align 8, !tbaa !70
  %i.afs = fptrunc double %i.afr to float
  %i.aft = fdiv float %i.afq, %i.afs
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.aft, ptr %i.afu, align 8, !tbaa !70
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.mg, ptr %i.afv, align 4, !tbaa !70
  br label %.thread629

.rtvec681:                                        ; preds = %bb.bp
  %i.afw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %6 = load <2 x double>, ptr %i.so, align 8
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load double, ptr %i.so, align 8, !tbaa !70 ; 3 uses
  %i.afy = load <4 x float>, ptr %i.afw, align 8, !tbaa !70
  %9 = insertelement <4 x double> %7, double %8, i64 1
  %10 = insertelement <4 x double> %9, double %8, i64 2
  %11 = insertelement <4 x double> %10, double %8, i64 3
  %i.afz = fptrunc <4 x double> %11 to <4 x float>
  %i.aga = fdiv <4 x float> %i.afy, %i.afz
  %i.agb = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.aga)
  store <4 x float> %i.agb, ptr %i.afx, align 8, !tbaa !70
  br label %.thread629

.rtscalar682:                                     ; preds = %bb.bp
  %i.agc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 5, ptr %0, align 8, !tbaa !68
  %i.agd = load float, ptr %i.agc, align 8, !tbaa !70
  %i.age = load double, ptr %i.so, align 8, !tbaa !70
  %i.agf = fptrunc double %i.age to float
  %i.agg = fdiv float %i.agd, %i.agf
  %i.agh = tail call noundef float @llvm.floor.f32(float %i.agg)
  %i.agi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.agh, ptr %i.agi, align 8, !tbaa !70
  %i.agj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !70
  %i.agl = load double, ptr %i.so, align 8, !tbaa !70
  %i.agm = fptrunc double %i.agl to float
  %i.agn = fdiv float %i.agk, %i.agm
  %i.ago = tail call noundef float @llvm.floor.f32(float %i.agn)
  %i.agp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ago, ptr %i.agp, align 4, !tbaa !70
  %i.agq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.agr = load float, ptr %i.agq, align 8, !tbaa !70
  %i.ags = load double, ptr %i.so, align 8, !tbaa !70
  %i.agt = fptrunc double %i.ags to float
  %i.agu = fdiv float %i.agr, %i.agt
  %i.agv = tail call noundef float @llvm.floor.f32(float %i.agu)
  %i.agw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.agv, ptr %i.agw, align 8, !tbaa !70
  %i.agx = load float, ptr %i.sl, align 4, !tbaa !70
  %i.agy = load double, ptr %i.so, align 8, !tbaa !70
  %i.agz = fptrunc double %i.agy to float
  %i.aha = fdiv float %i.agx, %i.agz
  %i.ahb = tail call noundef float @llvm.floor.f32(float %i.aha)
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ahb, ptr %i.ahc, align 4, !tbaa !70
  br label %.thread629
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4Luau7CompileL16foldInterpStringERNS0_8ConstantEPNS_19AstExprInterpStringERNS_12DenseHashMapIPNS_7AstExprES1_NS_16DenseHashPointerESt8equal_toIS7_EEERNS_12AstNameTableE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !298  ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.thread, label %.lr.ph76

.thread:                                          ; preds = %bb.a
  store i32 7, ptr %0, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !156
  br label %bb.f

.lr.ph76:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !299
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !300
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, -1                         ; 3 uses
  %i.n = load ptr, ptr %2, align 8                ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.o = icmp ugt i64 %.144, 4096
  br i1 %i.o, label %bb.n, label %bb.e

bb.b:                                             ; preds = %.lr.ph76, %bb.d
  %.04375 = phi i64 [ 0, %.lr.ph76 ], [ %.144, %bb.d ]
  %.04574 = phi i64 [ 0, %.lr.ph76 ], [ %i.aq, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.04574
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !301
  %i.s = add i64 %i.r, %.04375                    ; 2 uses
  %i.t = icmp ult i64 %.04574, %i.g
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !302
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.04574
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 4 uses
  %i.x = icmp ne ptr %i.w, %i.j
  tail call void @llvm.assume(i1 %i.x)
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 31
  %i.ab = xor i64 %i.aa, %i.z
  %.01929.i.i71 = and i64 %i.ab, %i.m             ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.01929.i.i71
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = icmp eq ptr %i.ad, %i.w
  br i1 %i.ae, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.01929.i.i73 = phi i64 [ %.01929.i.i, %.lr.ph ], [ %.01929.i.i71, %bb.c ]
  %.01828.i.i72 = phi i64 [ %i.af, %.lr.ph ], [ 0, %bb.c ]
  %i.af = add i64 %.01828.i.i72, 1                ; 3 uses
  %i.ag = add i64 %i.af, %.01929.i.i73
  %.not.i.i = icmp ule i64 %i.af, %i.m
  tail call void @llvm.assume(i1 %.not.i.i)
  %.01929.i.i = and i64 %i.ag, %i.m               ; 3 uses
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.01929.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit, label %.lr.ph

_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit: ; preds = %.lr.ph, %bb.c
  %i.ak = phi i64 [ %.01929.i.i71, %bb.c ], [ %.01929.i.i, %.lr.ph ]
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !156
  %i.ao = zext i32 %i.an to i64
  %i.ap = add i64 %i.s, %i.ao
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit
  %.144 = phi i64 [ %i.ap, %_ZN4Luau12DenseHashMapIPNS_7AstExprENS_7Compile8ConstantENS_16DenseHashPointerESt8equal_toIS2_EE4findERKS2_.exit ], [ %i.s, %bb.b ] ; 6 uses
  %i.aq = add nuw i64 %.04574, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !293

bb.e:                                             ; preds = %._crit_edge
  store i32 7, ptr %0, align 8, !tbaa !68
  %i.ar = trunc nuw nsw i64 %.144 to i32          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !156
  %i.at = icmp eq i64 %.144, 0
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.70, ptr %i.au, align 8, !tbaa !70
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !165
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.aw, align 8, !tbaa !167
  store i8 0, ptr %i.av, align 8, !tbaa !70
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.144)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !298
  %.not89 = icmp eq i64 %i.ax, 0
  br i1 %.not89, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

._crit_edge88:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59, %.preheader
  store i32 7, ptr %0, align 8, !tbaa !68
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !156
  %i.bc = load ptr, ptr %4, align 8, !tbaa !168
  %i.bd = invoke ptr @_ZN4Luau12AstNameTable8getOrAddEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.bc, i64 noundef %.144)
          to label %bb.m unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %.lr.ph87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59
  %.086 = phi i64 [ 0, %.lr.ph87 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit59 ] ; 4 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !299
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.086 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !152 ; 2 uses
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !167
  %i.bi = sub i64 4611686018427387903, %i.bh
  %i.bj = icmp ult i64 %i.bi, %.sroa.5.0.copyload
  br i1 %i.bj, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.69) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.i
  %.sroa.02.0.copyload = load ptr, ptr %i.bg, align 8, !tbaa !161
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %.sroa.02.0.copyload, i64 noundef %.sroa.5.0.copyload)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bl = load i64, ptr %i.ay, align 8, !tbaa !300
end_hunk_1
