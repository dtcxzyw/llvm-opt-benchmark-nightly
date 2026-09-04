Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/blenders?download=true
inline.NumInlined: 723
inline.NumDeleted: 215
begin_hunk_0_@_ZN2cv6detail16MultiBandBlender4feedERKNS_11_InputArrayES4_NS_6Point_IiEE:bb.a
  %i.jz = mul i64 %i.ia, %indvars.iv330
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.jz ; 2 uses
  %i.kb = mul i64 %i.ic, %indvars.iv330
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.kb ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx437
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph302, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph302 ] ; 8 uses
  %i.kd = or disjoint i64 %index, 1               ; 2 uses
  %i.ke = or disjoint i64 %index, 2               ; 2 uses
  %i.kf = or disjoint i64 %index, 3               ; 2 uses
  %i.kg = getelementptr inbounds nuw [6 x i8], ptr %i.jw, i64 %index ; 3 uses
  %i.kh = getelementptr inbounds nuw [6 x i8], ptr %i.jw, i64 %i.kd ; 3 uses
  %i.ki = getelementptr inbounds nuw [6 x i8], ptr %i.jw, i64 %i.ke ; 3 uses
  %i.kj = getelementptr inbounds nuw [6 x i8], ptr %i.jw, i64 %i.kf ; 3 uses
  %i.kk = load i16, ptr %i.kg, align 2, !tbaa !53, !alias.scope !185
  %i.kl = load i16, ptr %i.kh, align 2, !tbaa !53, !alias.scope !185
  %i.km = load i16, ptr %i.ki, align 2, !tbaa !53, !alias.scope !185
  %i.kn = load i16, ptr %i.kj, align 2, !tbaa !53, !alias.scope !185
  %i.ko = insertelement <4 x i16> poison, i16 %i.kk, i64 0
  %i.kp = insertelement <4 x i16> %i.ko, i16 %i.kl, i64 1
  %i.kq = insertelement <4 x i16> %i.kp, i16 %i.km, i64 2
  %i.kr = insertelement <4 x i16> %i.kq, i16 %i.kn, i64 3
  %i.ks = sitofp <4 x i16> %i.kr to <4 x float>
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %index
  %wide.load = load <4 x float>, ptr %i.kt, align 4, !tbaa !54, !alias.scope !186 ; 4 uses
  %i.ku = fmul <4 x float> %wide.load, %i.ks
  %i.kv = fptosi <4 x float> %i.ku to <4 x i16>
  %i.kw = getelementptr inbounds nuw [6 x i8], ptr %i.jy, i64 %index ; 4 uses
  %i.kx = getelementptr inbounds nuw [6 x i8], ptr %i.jy, i64 %i.kd ; 3 uses
  %i.ky = getelementptr inbounds nuw [6 x i8], ptr %i.jy, i64 %i.ke ; 3 uses
  %i.kz = getelementptr inbounds nuw [6 x i8], ptr %i.jy, i64 %i.kf ; 3 uses
  %i.la = load i16, ptr %i.kw, align 2, !tbaa !53, !alias.scope !187, !noalias !185
  %i.lb = load i16, ptr %i.kx, align 2, !tbaa !53, !alias.scope !187, !noalias !185
  %i.lc = load i16, ptr %i.ky, align 2, !tbaa !53, !alias.scope !187, !noalias !185
  %i.ld = load i16, ptr %i.kz, align 2, !tbaa !53, !alias.scope !187, !noalias !185
  %i.le = insertelement <4 x i16> poison, i16 %i.la, i64 0
  %i.lf = insertelement <4 x i16> %i.le, i16 %i.lb, i64 1
  %i.lg = insertelement <4 x i16> %i.lf, i16 %i.lc, i64 2
  %i.lh = insertelement <4 x i16> %i.lg, i16 %i.ld, i64 3
  %i.li = add <4 x i16> %i.lh, %i.kv
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.ln = load i16, ptr %i.lj, align 2, !tbaa !55, !alias.scope !188
  %i.lo = load i16, ptr %i.lk, align 2, !tbaa !55, !alias.scope !188
  %i.lp = load i16, ptr %i.ll, align 2, !tbaa !55, !alias.scope !188
  %i.lq = load i16, ptr %i.lm, align 2, !tbaa !55, !alias.scope !188
  %i.lr = insertelement <4 x i16> poison, i16 %i.ln, i64 0
  %i.ls = insertelement <4 x i16> %i.lr, i16 %i.lo, i64 1
  %i.lt = insertelement <4 x i16> %i.ls, i16 %i.lp, i64 2
  %i.lu = insertelement <4 x i16> %i.lt, i16 %i.lq, i64 3
  %i.lv = sitofp <4 x i16> %i.lu to <4 x float>
  %i.lw = fmul <4 x float> %wide.load, %i.lv
  %i.lx = fptosi <4 x float> %i.lw to <4 x i16>
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kz, i64 2
  %i.mc = load i16, ptr %i.ly, align 2, !tbaa !55, !alias.scope !189, !noalias !188
  %i.md = load i16, ptr %i.lz, align 2, !tbaa !55, !alias.scope !189, !noalias !188
  %i.me = load i16, ptr %i.ma, align 2, !tbaa !55, !alias.scope !189, !noalias !188
  %i.mf = load i16, ptr %i.mb, align 2, !tbaa !55, !alias.scope !189, !noalias !188
  %i.mg = insertelement <4 x i16> poison, i16 %i.mc, i64 0
  %i.mh = insertelement <4 x i16> %i.mg, i16 %i.md, i64 1
  %i.mi = insertelement <4 x i16> %i.mh, i16 %i.me, i64 2
  %i.mj = insertelement <4 x i16> %i.mi, i16 %i.mf, i64 3
  %i.mk = add <4 x i16> %i.mj, %i.lx
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.mp = load i16, ptr %i.ml, align 2, !tbaa !56, !alias.scope !190
  %i.mq = load i16, ptr %i.mm, align 2, !tbaa !56, !alias.scope !190
  %i.mr = load i16, ptr %i.mn, align 2, !tbaa !56, !alias.scope !190
  %i.ms = load i16, ptr %i.mo, align 2, !tbaa !56, !alias.scope !190
  %i.mt = insertelement <4 x i16> poison, i16 %i.mp, i64 0
  %i.mu = insertelement <4 x i16> %i.mt, i16 %i.mq, i64 1
  %i.mv = insertelement <4 x i16> %i.mu, i16 %i.mr, i64 2
  %i.mw = insertelement <4 x i16> %i.mv, i16 %i.ms, i64 3
  %i.mx = sitofp <4 x i16> %i.mw to <4 x float>
  %i.my = fmul <4 x float> %wide.load, %i.mx
  %i.mz = fptosi <4 x float> %i.my to <4 x i16>
  %i.na = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.ne = load i16, ptr %i.na, align 2, !tbaa !56, !alias.scope !191, !noalias !190
  %i.nf = load i16, ptr %i.nb, align 2, !tbaa !56, !alias.scope !191, !noalias !190
  %i.ng = load i16, ptr %i.nc, align 2, !tbaa !56, !alias.scope !191, !noalias !190
  %i.nh = load i16, ptr %i.nd, align 2, !tbaa !56, !alias.scope !191, !noalias !190
  %i.ni = insertelement <4 x i16> poison, i16 %i.ne, i64 0
  %i.nj = insertelement <4 x i16> %i.ni, i16 %i.nf, i64 1
  %i.nk = insertelement <4 x i16> %i.nj, i16 %i.ng, i64 2
  %i.nl = insertelement <4 x i16> %i.nk, i16 %i.nh, i64 3
  %i.nm = add <4 x i16> %i.nl, %i.mz
  %i.nn = shufflevector <4 x i16> %i.li, <4 x i16> %i.mk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.no = shufflevector <4 x i16> %i.nm, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x i16> %i.nn, <8 x i16> %i.no, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i16> %interleaved.vec, ptr %i.kw, align 2, !tbaa !47
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %index ; 2 uses
  %wide.load384 = load <4 x float>, ptr %i.np, align 4, !tbaa !54, !alias.scope !192, !noalias !186
  %i.nq = fadd <4 x float> %wide.load, %wide.load384
  store <4 x float> %i.nq, ptr %i.np, align 4, !tbaa !54, !alias.scope !192, !noalias !186
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph302, %middle.block
  %indvars.iv325.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph302 ]
  br label %scalar.ph

._crit_edge303:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %.loopexit, label %.lr.ph302, !llvm.loop !170

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %scalar.ph ], [ %indvars.iv325.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ns = getelementptr inbounds nuw [6 x i8], ptr %i.jw, i64 %indvars.iv325 ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv325
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !54 ; 3 uses
  %i.nv = getelementptr inbounds nuw [6 x i8], ptr %i.jy, i64 %indvars.iv325 ; 3 uses
  %i.nw = load <2 x i16>, ptr %i.ns, align 2, !tbaa !47
  %i.nx = sitofp <2 x i16> %i.nw to <2 x float>
  %i.ny = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oa = fmul <2 x float> %i.nz, %i.nx
  %i.ob = fptosi <2 x float> %i.oa to <2 x i16>
  %i.oc = load <2 x i16>, ptr %i.nv, align 2, !tbaa !47
  %i.od = add <2 x i16> %i.oc, %i.ob
  store <2 x i16> %i.od, ptr %i.nv, align 2, !tbaa !47
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !56
  %i.og = sitofp i16 %i.of to float
  %i.oh = fmul float %i.nu, %i.og
  %i.oi = fptosi float %i.oh to i16
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nv, i64 4 ; 2 uses
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !56
  %i.ol = add i16 %i.ok, %i.oi
  store i16 %i.ol, ptr %i.oj, align 2, !tbaa !56
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv325 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !54
  %i.oo = fadd float %i.nu, %i.on
  store float %i.oo, ptr %i.om, align 4, !tbaa !54
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %._crit_edge303, label %scalar.ph, !llvm.loop !171

.lr.ph296:                                        ; preds = %.lr.ph296.preheader, %._crit_edge297
  %indvars.iv320 = phi i64 [ 0, %.lr.ph296.preheader ], [ %indvars.iv.next321, %._crit_edge297 ] ; 5 uses
  %i.op = mul i64 %i.gl, %indvars.iv320
  %i.oq = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.op ; 9 uses
  %i.or = mul i64 %i.gn, %indvars.iv320
  %i.os = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.or ; 9 uses
  %i.ot = mul i64 %i.gp, %indvars.iv320
  %i.ou = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.ot ; 2 uses
  %i.ov = mul i64 %i.gr, %indvars.iv320
  %i.ow = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ov ; 2 uses
  %brmerge439 = select i1 %min.iters.check420, i1 true, i1 %conflict.rdx418
  br i1 %brmerge439, label %scalar.ph419.preheader, label %vector.body423

vector.body423:                                   ; preds = %.lr.ph296, %vector.body423
  %index424 = phi i64 [ %index.next431, %vector.body423 ], [ 0, %.lr.ph296 ] ; 12 uses
  %i.ox = or disjoint i64 %index424, 1            ; 2 uses
  %i.oy = or disjoint i64 %index424, 2            ; 2 uses
  %i.oz = or disjoint i64 %index424, 3            ; 2 uses
  %i.pa = or disjoint i64 %index424, 4            ; 2 uses
  %i.pb = or disjoint i64 %index424, 5            ; 2 uses
  %i.pc = or disjoint i64 %index424, 6            ; 2 uses
  %i.pd = or disjoint i64 %index424, 7            ; 2 uses
  %i.pe = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %index424 ; 3 uses
  %i.pf = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %i.ox ; 3 uses
  %i.pg = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %i.oy ; 3 uses
  %i.ph = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %i.oz ; 3 uses
  %i.pi = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %i.pa ; 3 uses
  %i.pj = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %i.pb ; 3 uses
  %i.pk = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %i.pc ; 3 uses
  %i.pl = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %i.pd ; 3 uses
  %i.pm = load i16, ptr %i.pe, align 2, !tbaa !53, !alias.scope !193
  %i.pn = load i16, ptr %i.pf, align 2, !tbaa !53, !alias.scope !193
  %i.po = load i16, ptr %i.pg, align 2, !tbaa !53, !alias.scope !193
  %i.pp = load i16, ptr %i.ph, align 2, !tbaa !53, !alias.scope !193
  %i.pq = load i16, ptr %i.pi, align 2, !tbaa !53, !alias.scope !193
  %i.pr = load i16, ptr %i.pj, align 2, !tbaa !53, !alias.scope !193
  %i.ps = load i16, ptr %i.pk, align 2, !tbaa !53, !alias.scope !193
  %i.pt = load i16, ptr %i.pl, align 2, !tbaa !53, !alias.scope !193
  %i.pu = insertelement <8 x i16> poison, i16 %i.pm, i64 0
  %i.pv = insertelement <8 x i16> %i.pu, i16 %i.pn, i64 1
  %i.pw = insertelement <8 x i16> %i.pv, i16 %i.po, i64 2
  %i.px = insertelement <8 x i16> %i.pw, i16 %i.pp, i64 3
  %i.py = insertelement <8 x i16> %i.px, i16 %i.pq, i64 4
  %i.pz = insertelement <8 x i16> %i.py, i16 %i.pr, i64 5
  %i.qa = insertelement <8 x i16> %i.pz, i16 %i.ps, i64 6
  %i.qb = insertelement <8 x i16> %i.qa, i16 %i.pt, i64 7
  %i.qc = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %index424 ; 2 uses
  %wide.load425 = load <8 x i16>, ptr %i.qc, align 2, !tbaa !47, !alias.scope !194
  %42 = sext <8 x i16> %wide.load425 to <8 x i32> ; 2 uses
  %i.qd = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %index424 ; 4 uses
  %i.qe = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %i.ox ; 3 uses
  %i.qf = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %i.oy ; 3 uses
  %i.qg = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %i.oz ; 3 uses
  %i.qh = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %i.pa ; 3 uses
  %i.qi = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %i.pb ; 3 uses
  %i.qj = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %i.pc ; 3 uses
  %i.qk = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %i.pd ; 3 uses
  %i.ql = load i16, ptr %i.qd, align 2, !tbaa !53, !alias.scope !195, !noalias !196
  %i.qm = load i16, ptr %i.qe, align 2, !tbaa !53, !alias.scope !195, !noalias !196
  %i.qn = load i16, ptr %i.qf, align 2, !tbaa !53, !alias.scope !195, !noalias !196
  %i.qo = load i16, ptr %i.qg, align 2, !tbaa !53, !alias.scope !195, !noalias !196
  %i.qp = load i16, ptr %i.qh, align 2, !tbaa !53, !alias.scope !195, !noalias !196
  %i.qq = load i16, ptr %i.qi, align 2, !tbaa !53, !alias.scope !195, !noalias !196
  %i.qr = load i16, ptr %i.qj, align 2, !tbaa !53, !alias.scope !195, !noalias !196
  %i.qs = load i16, ptr %i.qk, align 2, !tbaa !53, !alias.scope !195, !noalias !196
  %i.qt = insertelement <8 x i16> poison, i16 %i.ql, i64 0
  %i.qu = insertelement <8 x i16> %i.qt, i16 %i.qm, i64 1
  %i.qv = insertelement <8 x i16> %i.qu, i16 %i.qn, i64 2
  %i.qw = insertelement <8 x i16> %i.qv, i16 %i.qo, i64 3
  %i.qx = insertelement <8 x i16> %i.qw, i16 %i.qp, i64 4
  %i.qy = insertelement <8 x i16> %i.qx, i16 %i.qq, i64 5
  %i.qz = insertelement <8 x i16> %i.qy, i16 %i.qr, i64 6
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 7
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pe, i64 2
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pf, i64 2
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pg, i64 2
  %i.re = getelementptr inbounds nuw i8, ptr %i.ph, i64 2
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pi, i64 2
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.ri = getelementptr inbounds nuw i8, ptr %i.pl, i64 2
  %i.rj = load i16, ptr %i.rb, align 2, !tbaa !55, !alias.scope !193
  %i.rk = load i16, ptr %i.rc, align 2, !tbaa !55, !alias.scope !193
  %i.rl = load i16, ptr %i.rd, align 2, !tbaa !55, !alias.scope !193
  %i.rm = load i16, ptr %i.re, align 2, !tbaa !55, !alias.scope !193
  %i.rn = load i16, ptr %i.rf, align 2, !tbaa !55, !alias.scope !193
  %i.ro = load i16, ptr %i.rg, align 2, !tbaa !55, !alias.scope !193
  %i.rp = load i16, ptr %i.rh, align 2, !tbaa !55, !alias.scope !193
  %i.rq = load i16, ptr %i.ri, align 2, !tbaa !55, !alias.scope !193
  %i.rr = insertelement <8 x i16> poison, i16 %i.rj, i64 0
  %i.rs = insertelement <8 x i16> %i.rr, i16 %i.rk, i64 1
  %i.rt = insertelement <8 x i16> %i.rs, i16 %i.rl, i64 2
  %i.ru = insertelement <8 x i16> %i.rt, i16 %i.rm, i64 3
  %i.rv = insertelement <8 x i16> %i.ru, i16 %i.rn, i64 4
  %i.rw = insertelement <8 x i16> %i.rv, i16 %i.ro, i64 5
  %i.rx = insertelement <8 x i16> %i.rw, i16 %i.rp, i64 6
  %i.ry = insertelement <8 x i16> %i.rx, i16 %i.rq, i64 7
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qe, i64 2
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qg, i64 2
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  %i.se = getelementptr inbounds nuw i8, ptr %i.qi, i64 2
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %i.sh = load i16, ptr %i.rz, align 2, !tbaa !55, !alias.scope !195, !noalias !196
  %i.si = load i16, ptr %i.sa, align 2, !tbaa !55, !alias.scope !195, !noalias !196
  %i.sj = load i16, ptr %i.sb, align 2, !tbaa !55, !alias.scope !195, !noalias !196
  %i.sk = load i16, ptr %i.sc, align 2, !tbaa !55, !alias.scope !195, !noalias !196
  %i.sl = load i16, ptr %i.sd, align 2, !tbaa !55, !alias.scope !195, !noalias !196
  %i.sm = load i16, ptr %i.se, align 2, !tbaa !55, !alias.scope !195, !noalias !196
  %i.sn = load i16, ptr %i.sf, align 2, !tbaa !55, !alias.scope !195, !noalias !196
  %i.so = load i16, ptr %i.sg, align 2, !tbaa !55, !alias.scope !195, !noalias !196
  %i.sp = insertelement <8 x i16> poison, i16 %i.sh, i64 0
  %i.sq = insertelement <8 x i16> %i.sp, i16 %i.si, i64 1
  %i.sr = insertelement <8 x i16> %i.sq, i16 %i.sj, i64 2
  %i.ss = insertelement <8 x i16> %i.sr, i16 %i.sk, i64 3
  %i.st = insertelement <8 x i16> %i.ss, i16 %i.sl, i64 4
  %i.su = insertelement <8 x i16> %i.st, i16 %i.sm, i64 5
  %i.sv = insertelement <8 x i16> %i.su, i16 %i.sn, i64 6
  %i.sw = insertelement <8 x i16> %i.sv, i16 %i.so, i64 7
  %i.sx = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.sy = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.tb = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  %i.tc = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %i.td = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.te = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %i.tf = load i16, ptr %i.sx, align 2, !tbaa !56, !alias.scope !193
  %i.tg = load i16, ptr %i.sy, align 2, !tbaa !56, !alias.scope !193
  %i.th = load i16, ptr %i.sz, align 2, !tbaa !56, !alias.scope !193
  %i.ti = load i16, ptr %i.ta, align 2, !tbaa !56, !alias.scope !193
  %i.tj = load i16, ptr %i.tb, align 2, !tbaa !56, !alias.scope !193
  %i.tk = load i16, ptr %i.tc, align 2, !tbaa !56, !alias.scope !193
  %i.tl = load i16, ptr %i.td, align 2, !tbaa !56, !alias.scope !193
  %i.tm = load i16, ptr %i.te, align 2, !tbaa !56, !alias.scope !193
  %i.tn = insertelement <8 x i16> poison, i16 %i.tf, i64 0
  %i.to = insertelement <8 x i16> %i.tn, i16 %i.tg, i64 1
  %i.tp = insertelement <8 x i16> %i.to, i16 %i.th, i64 2
  %i.tq = insertelement <8 x i16> %i.tp, i16 %i.ti, i64 3
  %i.tr = insertelement <8 x i16> %i.tq, i16 %i.tj, i64 4
  %i.ts = insertelement <8 x i16> %i.tr, i16 %i.tk, i64 5
  %i.tt = insertelement <8 x i16> %i.ts, i16 %i.tl, i64 6
  %i.tu = insertelement <8 x i16> %i.tt, i16 %i.tm, i64 7
  %i.tv = sext <8 x i16> %i.tu to <8 x i32>
  %i.tw = mul nsw <8 x i32> %42, %i.tv
  %i.tx = lshr <8 x i32> %i.tw, splat (i32 8)
  %i.ty = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.tz = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.ua = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  %i.ub = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.ud = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.ue = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.uf = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.ug = load i16, ptr %i.ty, align 2, !tbaa !56, !alias.scope !195, !noalias !196
  %i.uh = load i16, ptr %i.tz, align 2, !tbaa !56, !alias.scope !195, !noalias !196
  %i.ui = load i16, ptr %i.ua, align 2, !tbaa !56, !alias.scope !195, !noalias !196
  %i.uj = load i16, ptr %i.ub, align 2, !tbaa !56, !alias.scope !195, !noalias !196
  %i.uk = load i16, ptr %i.uc, align 2, !tbaa !56, !alias.scope !195, !noalias !196
  %i.ul = load i16, ptr %i.ud, align 2, !tbaa !56, !alias.scope !195, !noalias !196
  %i.um = load i16, ptr %i.ue, align 2, !tbaa !56, !alias.scope !195, !noalias !196
  %i.un = load i16, ptr %i.uf, align 2, !tbaa !56, !alias.scope !195, !noalias !196
  %i.uo = insertelement <8 x i16> poison, i16 %i.ug, i64 0
  %i.up = insertelement <8 x i16> %i.uo, i16 %i.uh, i64 1
  %i.uq = insertelement <8 x i16> %i.up, i16 %i.ui, i64 2
  %i.ur = insertelement <8 x i16> %i.uq, i16 %i.uj, i64 3
  %i.us = insertelement <8 x i16> %i.ur, i16 %i.uk, i64 4
  %i.ut = insertelement <8 x i16> %i.us, i16 %i.ul, i64 5
  %i.uu = insertelement <8 x i16> %i.ut, i16 %i.um, i64 6
  %i.uv = insertelement <8 x i16> %i.uu, i16 %i.un, i64 7
  %i.uw = trunc <8 x i32> %i.tx to <8 x i16>
  %i.ux = add <8 x i16> %i.uv, %i.uw
  %i.uy = shufflevector <8 x i16> %i.ra, <8 x i16> %i.sw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %43 = shufflevector <8 x i32> %42, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uz = shufflevector <8 x i16> %i.qb, <8 x i16> %i.ry, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.va = sext <16 x i16> %i.uz to <16 x i32>
  %i.vb = mul nsw <16 x i32> %43, %i.va
  %i.vc = lshr <16 x i32> %i.vb, splat (i32 8)
  %i.vd = trunc <16 x i32> %i.vc to <16 x i16>
  %i.ve = add <16 x i16> %i.uy, %i.vd
  %i.vf = shufflevector <8 x i16> %i.ux, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec428 = shufflevector <16 x i16> %i.ve, <16 x i16> %i.vf, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec428, ptr %i.qd, align 2, !tbaa !47, !alias.scope !195, !noalias !196
  %wide.load429 = load <8 x i16>, ptr %i.qc, align 2, !tbaa !47, !alias.scope !194
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.ow, i64 %index424 ; 2 uses
  %wide.load430 = load <8 x i16>, ptr %i.vg, align 2, !tbaa !47, !alias.scope !197, !noalias !198
  %i.vh = add <8 x i16> %wide.load430, %wide.load429
  store <8 x i16> %i.vh, ptr %i.vg, align 2, !tbaa !47, !alias.scope !197, !noalias !198
  %index.next431 = add nuw i64 %index424, 8       ; 2 uses
  %i.vi = icmp eq i64 %index.next431, %n.vec422
  br i1 %i.vi, label %middle.block432, label %vector.body423, !llvm.loop !177

middle.block432:                                  ; preds = %vector.body423
  br i1 %cmp.n433, label %._crit_edge297, label %scalar.ph419.preheader

scalar.ph419.preheader:                           ; preds = %.lr.ph296, %middle.block432
  %indvars.iv317.ph = phi i64 [ %n.vec422, %middle.block432 ], [ 0, %.lr.ph296 ]
  br label %scalar.ph419

._crit_edge297:                                   ; preds = %scalar.ph419, %middle.block432
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %wide.trip.count323
  br i1 %exitcond324.not, label %.loopexit, label %.lr.ph296, !llvm.loop !178

scalar.ph419:                                     ; preds = %scalar.ph419.preheader, %scalar.ph419
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %scalar.ph419 ], [ %indvars.iv317.ph, %scalar.ph419.preheader ] ; 5 uses
  %i.vj = getelementptr inbounds nuw [6 x i8], ptr %i.oq, i64 %indvars.iv317 ; 3 uses
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !53
  %i.vl = sext i16 %i.vk to i32
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %indvars.iv317 ; 4 uses
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !47
  %i.vo = sext i16 %i.vn to i32
  %i.vp = mul nsw i32 %i.vo, %i.vl
  %i.vq = lshr i32 %i.vp, 8
  %i.vr = getelementptr inbounds nuw [6 x i8], ptr %i.os, i64 %indvars.iv317 ; 4 uses
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !53
  %i.vt = trunc i32 %i.vq to i16
  %i.vu = add i16 %i.vs, %i.vt
  store i16 %i.vu, ptr %i.vr, align 2, !tbaa !53
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.vw = load i16, ptr %i.vv, align 2, !tbaa !55
  %i.vx = sext i16 %i.vw to i32
  %i.vy = load i16, ptr %i.vm, align 2, !tbaa !47
  %i.vz = sext i16 %i.vy to i32
  %i.wa = mul nsw i32 %i.vz, %i.vx
  %i.wb = lshr i32 %i.wa, 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vr, i64 2 ; 2 uses
  %i.wd = load i16, ptr %i.wc, align 2, !tbaa !55
  %i.we = trunc i32 %i.wb to i16
  %i.wf = add i16 %i.wd, %i.we
  store i16 %i.wf, ptr %i.wc, align 2, !tbaa !55
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !56
  %i.wi = sext i16 %i.wh to i32
  %i.wj = load i16, ptr %i.vm, align 2, !tbaa !47
  %i.wk = sext i16 %i.wj to i32
  %i.wl = mul nsw i32 %i.wk, %i.wi
  %i.wm = lshr i32 %i.wl, 8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vr, i64 4 ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !56
  %i.wp = trunc i32 %i.wm to i16
  %i.wq = add i16 %i.wo, %i.wp
  store i16 %i.wq, ptr %i.wn, align 2, !tbaa !56
  %i.wr = load i16, ptr %i.vm, align 2, !tbaa !47
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.ow, i64 %indvars.iv317 ; 2 uses
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !47
  %i.wu = add i16 %i.wt, %i.wr
  store i16 %i.wu, ptr %i.ws, align 2, !tbaa !47
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge297, label %scalar.ph419, !llvm.loop !179

.loopexit:                                        ; preds = %._crit_edge297, %._crit_edge303, %.preheader290, %.lr.ph299, %.preheader, %.lr.ph305
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  %i.wv = sdiv <4 x i32> %i.ft, splat (i32 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1
  %i.ww = load i32, ptr %i.x, align 4, !tbaa !72
  %i.wx = sext i32 %i.ww to i64
  %.not.not = icmp slt i64 %indvars.iv335, %i.wx
  br i1 %.not.not, label %bb.bd, label %._crit_edge314, !llvm.loop !180

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn199.pn = phi { ptr, i32 } [ %.pn199, %bb.bp ], [ %i.js, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %37) #18
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bl
  %.pn199.pn.pn = phi { ptr, i32 } [ %.pn199.pn, %bb.bq ], [ %.pn197, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #18
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bi
  %.pn199.pn.pn.pn = phi { ptr, i32 } [ %.pn199.pn.pn, %bb.br ], [ %i.jp, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  br label %bb.bx

bb.bt:                                            ; preds = %._crit_edge314
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.cx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bt, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.wy, %.lr.ph.i.i.i ], [ %.pr.i, %bb.bt ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i) #18
  %i.wy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.wy, %i.cx
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %bb.bt
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i
  %i.wz = ptrtoint ptr %.pr.i to i64
  %i.xa = sub i64 %i.cv, %i.wz
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.xa) #19
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.xb = load ptr, ptr %13, align 8, !tbaa !62   ; 3 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i240 = icmp eq ptr %i.xb, %i.xd
  br i1 %.not4.i.i.i240, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i246, label %.lr.ph.i.i.i241

.lr.ph.i.i.i241:                                  ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i241
  %.05.i.i.i242 = phi ptr [ %i.xe, %.lr.ph.i.i.i241 ], [ %i.xb, %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i242) #18
  %i.xe = getelementptr inbounds nuw i8, ptr %.05.i.i.i242, i64 184 ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %i.xe, %i.xd
  br i1 %.not.i.i.i243, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i244, label %.lr.ph.i.i.i241, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i244: ; preds = %.lr.ph.i.i.i241
  %.pr.i245 = load ptr, ptr %13, align 8, !tbaa !62
  br label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i246

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i246: ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i244, %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit
  %i.xf = phi ptr [ %.pr.i245, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i244 ], [ %i.xb, %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i247 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i1.i247, label %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit248, label %bb.bv

bb.bv:                                            ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i246
  %i.xg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !71
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = ptrtoint ptr %i.xf to i64
  %i.xk = sub i64 %i.xi, %i.xj
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef %i.xk) #19
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit248

_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev.exit248:      ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i246, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.bw:                                            ; preds = %._crit_edge314
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bs, %bb.bw, %bb.bc, %bb.ba, %bb.ax, %bb.au, %bb.ar, %bb.aj
  %.pn205.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.ba ], [ %.pn179.pn, %bb.ar ], [ %i.fr, %bb.bc ], [ %i.ep, %bb.ax ], [ %.pn191.pn, %bb.aj ], [ %.pn185.pn.pn.pn.pn, %bb.au ], [ %.pn199.pn.pn.pn, %bb.bs ], [ %i.xl, %bb.bw ]
  call void @_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #18
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.ag
  %.pn205.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn, %bb.bx ], [ %i.dd, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.ac, %bb.ab
  %.pn205.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn, %bb.by ], [ %i.ct, %bb.ac ], [ %i.cs, %bb.ab ]
  call void @_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.w, %bb.v
  %.pn205.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn205.pn.pn.pn.pn, %bb.bz ], [ %i.ca, %bb.w ], [ %i.bz, %bb.v ]
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.cb

end_hunk_0
