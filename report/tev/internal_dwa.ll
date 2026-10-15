Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/internal_dwa?download=true
inline.NumInlined: 251
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@LossyDctDecoder_execute:bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gq, i64 80 ; 3 uses
  %i.jp = load <4 x float>, ptr %i.jo, align 16, !tbaa !60
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gr, i64 80 ; 2 uses
  %i.jr = load <4 x float>, ptr %i.jq, align 16, !tbaa !60 ; 2 uses
  %i.js = fmul <4 x float> %i.jr, splat (float 1.574700e+00)
  %i.jt = fadd <4 x float> %i.jn, %i.js
  store <4 x float> %i.jt, ptr %i.jm, align 16, !tbaa !60
  %i.ju = load <4 x float>, ptr %i.jo, align 16, !tbaa !60
  %i.jv = fmul <4 x float> %i.ju, splat (float 1.873000e-01)
  %i.jw = fmul <4 x float> %i.jr, splat (float 4.682000e-01)
  %i.jx = fsub <4 x float> %i.jn, %i.jv
  %i.jy = fsub <4 x float> %i.jx, %i.jw
  store <4 x float> %i.jy, ptr %i.jo, align 16, !tbaa !60
  %i.jz = fmul <4 x float> %i.jp, splat (float 1.855600e+00)
  %i.ka = fadd <4 x float> %i.jn, %i.jz
  store <4 x float> %i.ka, ptr %i.jq, align 16, !tbaa !60
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gp, i64 96 ; 2 uses
  %i.kc = load <4 x float>, ptr %i.kb, align 16, !tbaa !60 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gq, i64 96 ; 3 uses
  %i.ke = load <4 x float>, ptr %i.kd, align 16, !tbaa !60
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gr, i64 96 ; 2 uses
  %i.kg = load <4 x float>, ptr %i.kf, align 16, !tbaa !60 ; 2 uses
  %i.kh = fmul <4 x float> %i.kg, splat (float 1.574700e+00)
  %i.ki = fadd <4 x float> %i.kc, %i.kh
  store <4 x float> %i.ki, ptr %i.kb, align 16, !tbaa !60
  %i.kj = load <4 x float>, ptr %i.kd, align 16, !tbaa !60
  %i.kk = fmul <4 x float> %i.kj, splat (float 1.873000e-01)
  %i.kl = fmul <4 x float> %i.kg, splat (float 4.682000e-01)
  %i.km = fsub <4 x float> %i.kc, %i.kk
  %i.kn = fsub <4 x float> %i.km, %i.kl
  store <4 x float> %i.kn, ptr %i.kd, align 16, !tbaa !60
  %i.ko = fmul <4 x float> %i.ke, splat (float 1.855600e+00)
  %i.kp = fadd <4 x float> %i.kc, %i.ko
  store <4 x float> %i.kp, ptr %i.kf, align 16, !tbaa !60
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gp, i64 112 ; 2 uses
  %i.kr = load <4 x float>, ptr %i.kq, align 16, !tbaa !60 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gq, i64 112 ; 3 uses
  %i.kt = load <4 x float>, ptr %i.ks, align 16, !tbaa !60
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gr, i64 112 ; 2 uses
  %i.kv = load <4 x float>, ptr %i.ku, align 16, !tbaa !60 ; 2 uses
  %i.kw = fmul <4 x float> %i.kv, splat (float 1.574700e+00)
  %i.kx = fadd <4 x float> %i.kr, %i.kw
  store <4 x float> %i.kx, ptr %i.kq, align 16, !tbaa !60
  %i.ky = load <4 x float>, ptr %i.ks, align 16, !tbaa !60
  %i.kz = fmul <4 x float> %i.ky, splat (float 1.873000e-01)
  %i.la = fmul <4 x float> %i.kv, splat (float 4.682000e-01)
  %i.lb = fsub <4 x float> %i.kr, %i.kz
  %i.lc = fsub <4 x float> %i.lb, %i.la
  store <4 x float> %i.lc, ptr %i.ks, align 16, !tbaa !60
  %i.ld = fmul <4 x float> %i.kt, splat (float 1.855600e+00)
  %i.le = fadd <4 x float> %i.kr, %i.ld
  store <4 x float> %i.le, ptr %i.ku, align 16, !tbaa !60
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gp, i64 128 ; 2 uses
  %i.lg = load <4 x float>, ptr %i.lf, align 16, !tbaa !60 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.gq, i64 128 ; 3 uses
  %i.li = load <4 x float>, ptr %i.lh, align 16, !tbaa !60
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gr, i64 128 ; 2 uses
  %i.lk = load <4 x float>, ptr %i.lj, align 16, !tbaa !60 ; 2 uses
  %i.ll = fmul <4 x float> %i.lk, splat (float 1.574700e+00)
  %i.lm = fadd <4 x float> %i.lg, %i.ll
  store <4 x float> %i.lm, ptr %i.lf, align 16, !tbaa !60
  %i.ln = load <4 x float>, ptr %i.lh, align 16, !tbaa !60
  %i.lo = fmul <4 x float> %i.ln, splat (float 1.873000e-01)
  %i.lp = fmul <4 x float> %i.lk, splat (float 4.682000e-01)
  %i.lq = fsub <4 x float> %i.lg, %i.lo
  %i.lr = fsub <4 x float> %i.lq, %i.lp
  store <4 x float> %i.lr, ptr %i.lh, align 16, !tbaa !60
  %i.ls = fmul <4 x float> %i.li, splat (float 1.855600e+00)
  %i.lt = fadd <4 x float> %i.lg, %i.ls
  store <4 x float> %i.lt, ptr %i.lj, align 16, !tbaa !60
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gp, i64 144 ; 2 uses
  %i.lv = load <4 x float>, ptr %i.lu, align 16, !tbaa !60 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gq, i64 144 ; 3 uses
  %i.lx = load <4 x float>, ptr %i.lw, align 16, !tbaa !60
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gr, i64 144 ; 2 uses
  %i.lz = load <4 x float>, ptr %i.ly, align 16, !tbaa !60 ; 2 uses
  %i.ma = fmul <4 x float> %i.lz, splat (float 1.574700e+00)
  %i.mb = fadd <4 x float> %i.lv, %i.ma
  store <4 x float> %i.mb, ptr %i.lu, align 16, !tbaa !60
  %i.mc = load <4 x float>, ptr %i.lw, align 16, !tbaa !60
  %i.md = fmul <4 x float> %i.mc, splat (float 1.873000e-01)
  %i.me = fmul <4 x float> %i.lz, splat (float 4.682000e-01)
  %i.mf = fsub <4 x float> %i.lv, %i.md
  %i.mg = fsub <4 x float> %i.mf, %i.me
  store <4 x float> %i.mg, ptr %i.lw, align 16, !tbaa !60
  %i.mh = fmul <4 x float> %i.lx, splat (float 1.855600e+00)
  %i.mi = fadd <4 x float> %i.lv, %i.mh
  store <4 x float> %i.mi, ptr %i.ly, align 16, !tbaa !60
  %i.mj = getelementptr inbounds nuw i8, ptr %i.gp, i64 160 ; 2 uses
  %i.mk = load <4 x float>, ptr %i.mj, align 16, !tbaa !60 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gq, i64 160 ; 3 uses
  %i.mm = load <4 x float>, ptr %i.ml, align 16, !tbaa !60
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gr, i64 160 ; 2 uses
  %i.mo = load <4 x float>, ptr %i.mn, align 16, !tbaa !60 ; 2 uses
  %i.mp = fmul <4 x float> %i.mo, splat (float 1.574700e+00)
  %i.mq = fadd <4 x float> %i.mk, %i.mp
  store <4 x float> %i.mq, ptr %i.mj, align 16, !tbaa !60
  %i.mr = load <4 x float>, ptr %i.ml, align 16, !tbaa !60
  %i.ms = fmul <4 x float> %i.mr, splat (float 1.873000e-01)
  %i.mt = fmul <4 x float> %i.mo, splat (float 4.682000e-01)
  %i.mu = fsub <4 x float> %i.mk, %i.ms
  %i.mv = fsub <4 x float> %i.mu, %i.mt
  store <4 x float> %i.mv, ptr %i.ml, align 16, !tbaa !60
  %i.mw = fmul <4 x float> %i.mm, splat (float 1.855600e+00)
  %i.mx = fadd <4 x float> %i.mk, %i.mw
  store <4 x float> %i.mx, ptr %i.mn, align 16, !tbaa !60
  %i.my = getelementptr inbounds nuw i8, ptr %i.gp, i64 176 ; 2 uses
  %i.mz = load <4 x float>, ptr %i.my, align 16, !tbaa !60 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.gq, i64 176 ; 3 uses
  %i.nb = load <4 x float>, ptr %i.na, align 16, !tbaa !60
  %i.nc = getelementptr inbounds nuw i8, ptr %i.gr, i64 176 ; 2 uses
  %i.nd = load <4 x float>, ptr %i.nc, align 16, !tbaa !60 ; 2 uses
  %i.ne = fmul <4 x float> %i.nd, splat (float 1.574700e+00)
  %i.nf = fadd <4 x float> %i.mz, %i.ne
  store <4 x float> %i.nf, ptr %i.my, align 16, !tbaa !60
  %i.ng = load <4 x float>, ptr %i.na, align 16, !tbaa !60
  %i.nh = fmul <4 x float> %i.ng, splat (float 1.873000e-01)
  %i.ni = fmul <4 x float> %i.nd, splat (float 4.682000e-01)
  %i.nj = fsub <4 x float> %i.mz, %i.nh
  %i.nk = fsub <4 x float> %i.nj, %i.ni
  store <4 x float> %i.nk, ptr %i.na, align 16, !tbaa !60
  %i.nl = fmul <4 x float> %i.nb, splat (float 1.855600e+00)
  %i.nm = fadd <4 x float> %i.mz, %i.nl
  store <4 x float> %i.nm, ptr %i.nc, align 16, !tbaa !60
  %i.nn = getelementptr inbounds nuw i8, ptr %i.gp, i64 192 ; 2 uses
  %i.no = load <4 x float>, ptr %i.nn, align 16, !tbaa !60 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.gq, i64 192 ; 3 uses
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !60
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gr, i64 192 ; 2 uses
  %i.ns = load <4 x float>, ptr %i.nr, align 16, !tbaa !60 ; 2 uses
  %i.nt = fmul <4 x float> %i.ns, splat (float 1.574700e+00)
  %i.nu = fadd <4 x float> %i.no, %i.nt
  store <4 x float> %i.nu, ptr %i.nn, align 16, !tbaa !60
  %i.nv = load <4 x float>, ptr %i.np, align 16, !tbaa !60
  %i.nw = fmul <4 x float> %i.nv, splat (float 1.873000e-01)
  %i.nx = fmul <4 x float> %i.ns, splat (float 4.682000e-01)
  %i.ny = fsub <4 x float> %i.no, %i.nw
  %i.nz = fsub <4 x float> %i.ny, %i.nx
  store <4 x float> %i.nz, ptr %i.np, align 16, !tbaa !60
  %i.oa = fmul <4 x float> %i.nq, splat (float 1.855600e+00)
  %i.ob = fadd <4 x float> %i.no, %i.oa
  store <4 x float> %i.ob, ptr %i.nr, align 16, !tbaa !60
  %i.oc = getelementptr inbounds nuw i8, ptr %i.gp, i64 208 ; 2 uses
  %i.od = load <4 x float>, ptr %i.oc, align 16, !tbaa !60 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.gq, i64 208 ; 3 uses
  %i.of = load <4 x float>, ptr %i.oe, align 16, !tbaa !60
  %i.og = getelementptr inbounds nuw i8, ptr %i.gr, i64 208 ; 2 uses
  %i.oh = load <4 x float>, ptr %i.og, align 16, !tbaa !60 ; 2 uses
  %i.oi = fmul <4 x float> %i.oh, splat (float 1.574700e+00)
  %i.oj = fadd <4 x float> %i.od, %i.oi
  store <4 x float> %i.oj, ptr %i.oc, align 16, !tbaa !60
  %i.ok = load <4 x float>, ptr %i.oe, align 16, !tbaa !60
  %i.ol = fmul <4 x float> %i.ok, splat (float 1.873000e-01)
  %i.om = fmul <4 x float> %i.oh, splat (float 4.682000e-01)
  %i.on = fsub <4 x float> %i.od, %i.ol
  %i.oo = fsub <4 x float> %i.on, %i.om
  store <4 x float> %i.oo, ptr %i.oe, align 16, !tbaa !60
  %i.op = fmul <4 x float> %i.of, splat (float 1.855600e+00)
  %i.oq = fadd <4 x float> %i.od, %i.op
  store <4 x float> %i.oq, ptr %i.og, align 16, !tbaa !60
  %i.or = getelementptr inbounds nuw i8, ptr %i.gp, i64 224 ; 2 uses
  %i.os = load <4 x float>, ptr %i.or, align 16, !tbaa !60 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.gq, i64 224 ; 3 uses
  %i.ou = load <4 x float>, ptr %i.ot, align 16, !tbaa !60
  %i.ov = getelementptr inbounds nuw i8, ptr %i.gr, i64 224 ; 2 uses
  %i.ow = load <4 x float>, ptr %i.ov, align 16, !tbaa !60 ; 2 uses
  %i.ox = fmul <4 x float> %i.ow, splat (float 1.574700e+00)
  %i.oy = fadd <4 x float> %i.os, %i.ox
  store <4 x float> %i.oy, ptr %i.or, align 16, !tbaa !60
  %i.oz = load <4 x float>, ptr %i.ot, align 16, !tbaa !60
  %i.pa = fmul <4 x float> %i.oz, splat (float 1.873000e-01)
  %i.pb = fmul <4 x float> %i.ow, splat (float 4.682000e-01)
  %i.pc = fsub <4 x float> %i.os, %i.pa
  %i.pd = fsub <4 x float> %i.pc, %i.pb
  store <4 x float> %i.pd, ptr %i.ot, align 16, !tbaa !60
  %i.pe = fmul <4 x float> %i.ou, splat (float 1.855600e+00)
  %i.pf = fadd <4 x float> %i.os, %i.pe
  store <4 x float> %i.pf, ptr %i.ov, align 16, !tbaa !60
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gp, i64 240 ; 2 uses
  %i.ph = load <4 x float>, ptr %i.pg, align 16, !tbaa !60 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.gq, i64 240 ; 3 uses
  %i.pj = load <4 x float>, ptr %i.pi, align 16, !tbaa !60
  %i.pk = getelementptr inbounds nuw i8, ptr %i.gr, i64 240 ; 2 uses
  %i.pl = load <4 x float>, ptr %i.pk, align 16, !tbaa !60 ; 2 uses
  %i.pm = fmul <4 x float> %i.pl, splat (float 1.574700e+00)
  %i.pn = fadd <4 x float> %i.ph, %i.pm
  store <4 x float> %i.pn, ptr %i.pg, align 16, !tbaa !60
  %i.po = load <4 x float>, ptr %i.pi, align 16, !tbaa !60
  %i.pp = fmul <4 x float> %i.po, splat (float 1.873000e-01)
  %i.pq = fmul <4 x float> %i.pl, splat (float 4.682000e-01)
  %i.pr = fsub <4 x float> %i.ph, %i.pp
  %i.ps = fsub <4 x float> %i.pr, %i.pq
  store <4 x float> %i.ps, ptr %i.pi, align 16, !tbaa !60
  %i.pt = fmul <4 x float> %i.pj, splat (float 1.855600e+00)
  %i.pu = fadd <4 x float> %i.ph, %i.pt
  store <4 x float> %i.pu, ptr %i.pk, align 16, !tbaa !60
  %i.pv = shl nuw nsw i64 %indvars.iv468, 6
  br label %.lr.ph380.split.us.preheader

.thread:                                          ; preds = %bb.aj
  %i.pw = load float, ptr %i.gq, align 4, !tbaa !102 ; 2 uses
  %i.px = load float, ptr %i.gr, align 4, !tbaa !102 ; 2 uses
  %i.py = load float, ptr %i.gp, align 4, !tbaa !102 ; 3 uses
  %3 = tail call float @llvm.fmuladd.f32(float %i.px, float 1.574700e+00, float %i.py)
  store float %3, ptr %i.gp, align 4, !tbaa !102
  %4 = tail call float @llvm.fmuladd.f32(float %i.pw, float -1.873000e-01, float %i.py)
  %5 = insertelement <2 x float> poison, float %i.px, i64 0
  %6 = insertelement <2 x float> %5, float %i.pw, i64 1
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %i.pz = insertelement <2 x float> %7, float %i.py, i64 1
  %i.qa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %i.pz) ; 2 uses
  %i.qb = extractelement <2 x float> %i.qa, i64 0
  store float %i.qb, ptr %i.gq, align 4, !tbaa !102
  %i.qc = extractelement <2 x float> %i.qa, i64 1
  store float %i.qc, ptr %i.gr, align 4, !tbaa !102
  %i.qd = shl nuw nsw i64 %indvars.iv468, 6
  br label %.lr.ph380.split.preheader

.lr.ph380:                                        ; preds = %.thread338
  %i.qe = shl nuw nsw i64 %indvars.iv468, 6       ; 2 uses
  br i1 %i.go, label %.lr.ph380.split.us.preheader, label %.lr.ph380.split.preheader

.lr.ph380.split.preheader:                        ; preds = %.thread, %.lr.ph380
  %i.qf = phi i64 [ %i.qd, %.thread ], [ %i.qe, %.lr.ph380 ]
  br label %.lr.ph380.split

.lr.ph380.split.us.preheader:                     ; preds = %.thread.thread, %.lr.ph380
  %i.qg = phi i64 [ %i.pv, %.thread.thread ], [ %i.qe, %.lr.ph380 ]
  br label %.lr.ph380.split.us

.lr.ph380.split.us:                               ; preds = %.lr.ph380.split.us.preheader, %.lr.ph380.split.us
  %indvars.iv463 = phi i64 [ 0, %.lr.ph380.split.us.preheader ], [ %indvars.iv.next464, %.lr.ph380.split.us ] ; 3 uses
  %i.qh = load ptr, ptr @convertFloatToHalf64, align 8, !tbaa !17
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv463
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !285
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %i.qg
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv463
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !81
  tail call void %i.qh(ptr noundef %i.qk, ptr noundef %i.qm) #21, !callees !295
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge381, label %.lr.ph380.split.us, !llvm.loop !270

.lr.ph380.split:                                  ; preds = %.lr.ph380.split.preheader, %float_to_half.exit
  %indvars.iv458 = phi i64 [ 0, %.lr.ph380.split.preheader ], [ %indvars.iv.next459, %float_to_half.exit ] ; 3 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv458
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !285
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %i.qf ; 8 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv458
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !81
  %i.qs = load float, ptr %i.qr, align 32, !tbaa !102 ; 2 uses
  %i.qt = bitcast float %i.qs to i32
  %i.qu = tail call float @llvm.fabs.f32(float %i.qs)
  %i.qv = bitcast float %i.qu to i32              ; 10 uses
  %i.qw = lshr i32 %i.qt, 16                      ; 3 uses
  %i.qx = trunc nuw i32 %i.qw to i16
  %i.qy = and i16 %i.qx, -32768                   ; 3 uses
  %i.qz = icmp samesign ugt i32 %i.qv, 947912703
  br i1 %i.qz, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.lr.ph380.split
  %i.ra = icmp samesign ugt i32 %i.qv, 2139095039
  br i1 %i.ra, label %bb.al, label %bb.an, !prof !103

bb.al:                                            ; preds = %bb.ak
  %i.rb = or disjoint i16 %i.qy, 31744            ; 2 uses
  %i.rc = icmp eq i32 %i.qv, 2139095040
  br i1 %i.rc, label %float_to_half.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.rd = lshr i32 %i.qv, 13
  %i.re = and i32 %i.rd, 1023                     ; 2 uses
  %i.rf = icmp eq i32 %i.re, 0
  %i.rg = zext i1 %i.rf to i16
  %i.rh = trunc nuw nsw i32 %i.re to i16
  %i.ri = or i16 %i.rh, %i.rg
  %i.rj = or disjoint i16 %i.ri, %i.rb
  br label %float_to_half.exit

bb.an:                                            ; preds = %bb.ak
  %i.rk = icmp samesign ugt i32 %i.qv, 1199566847
  br i1 %i.rk, label %bb.ao, label %bb.ap, !prof !103

bb.ao:                                            ; preds = %bb.an
  %i.rl = or disjoint i16 %i.qy, 31744
  br label %float_to_half.exit

bb.ap:                                            ; preds = %bb.an
  %i.rm = add nuw nsw i32 %i.qv, 134221823
  %i.rn = lshr i32 %i.qv, 13
  %i.ro = and i32 %i.rn, 1
  %i.rp = add nuw nsw i32 %i.rm, %i.ro
  %i.rq = lshr i32 %i.rp, 13
  %i.rr = and i32 %i.qw, 32768
  %i.rs = or i32 %i.rq, %i.rr
  %i.rt = trunc i32 %i.rs to i16
  br label %float_to_half.exit

bb.aq:                                            ; preds = %.lr.ph380.split
  %i.ru = icmp samesign ult i32 %i.qv, 855638017
  br i1 %i.ru, label %float_to_half.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.rv = lshr i32 %i.qv, 23                      ; 2 uses
  %i.rw = sub nuw nsw i32 126, %i.rv
  %i.rx = and i32 %i.qv, 8388607
  %i.ry = or disjoint i32 %i.rx, 8388608          ; 2 uses
  %i.rz = add nsw i32 %i.rv, -94
  %i.sa = shl i32 %i.ry, %i.rz                    ; 2 uses
  %i.sb = lshr i32 %i.ry, %i.rw                   ; 2 uses
  %i.sc = and i32 %i.qw, 32768
  %i.sd = or i32 %i.sb, %i.sc
  %i.se = trunc nuw i32 %i.sd to i16              ; 2 uses
  %i.sf = icmp ugt i32 %i.sa, -2147483648
  br i1 %i.sf, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sg = icmp ne i32 %i.sa, -2147483648
  %i.sh = and i32 %i.sb, 1
  %.not.i.i301 = icmp eq i32 %i.sh, 0
  %or.cond.i.i = select i1 %i.sg, i1 true, i1 %.not.i.i301
  br i1 %or.cond.i.i, label %float_to_half.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.si = add nuw i16 %i.se, 1
  br label %float_to_half.exit

float_to_half.exit:                               ; preds = %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.as, %bb.at
  %.033.i.i = phi i16 [ %i.qy, %bb.aq ], [ %i.rj, %bb.am ], [ %i.rl, %bb.ao ], [ %i.rt, %bb.ap ], [ %i.rb, %bb.al ], [ %i.si, %bb.at ], [ %i.se, %bb.as ]
  %i.sj = insertelement <8 x i16> poison, i16 %.033.i.i, i64 0
  %i.sk = shufflevector <8 x i16> %i.sj, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  store <8 x i16> %i.sk, ptr %i.qp, align 16, !tbaa !60
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  store <8 x i16> %i.sk, ptr %i.sl, align 16, !tbaa !60
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  store <8 x i16> %i.sk, ptr %i.sm, align 16, !tbaa !60
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qp, i64 48
  store <8 x i16> %i.sk, ptr %i.sn, align 16, !tbaa !60
  %i.so = getelementptr inbounds nuw i8, ptr %i.qp, i64 64
  store <8 x i16> %i.sk, ptr %i.so, align 16, !tbaa !60
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qp, i64 80
  store <8 x i16> %i.sk, ptr %i.sp, align 16, !tbaa !60
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qp, i64 96
  store <8 x i16> %i.sk, ptr %i.sq, align 16, !tbaa !60
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qp, i64 112
  store <8 x i16> %i.sk, ptr %i.sr, align 16, !tbaa !60
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %._crit_edge381, label %.lr.ph380.split, !llvm.loop !270

._crit_edge381:                                   ; preds = %float_to_half.exit, %.lr.ph380.split.us, %.lr.ph388
  %.2309.lcssa528533 = phi ptr [ %.1308383, %.lr.ph388 ], [ %i.ej, %.lr.ph380.split.us ], [ %i.ej, %float_to_half.exit ] ; 2 uses
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %.preheader353, label %.lr.ph388, !llvm.loop !271

.preheader353:                                    ; preds = %._crit_edge381, %bb.g
  %.4311.ph = phi ptr [ %.0307423, %bb.g ], [ %.2309.lcssa528533, %._crit_edge381 ]
  %.2278.ph = phi i32 [ 8, %bb.g ], [ %spec.select298, %._crit_edge381 ] ; 5 uses
  br i1 %i.ag, label %.lr.ph420, label %._crit_edge421

.lr.ph420:                                        ; preds = %.preheader353
  %i.ss = shl nuw nsw i32 %.0280424, 3
  %i.st = add nsw i32 %spec.select, %i.ss
  %i.su = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.sv = icmp slt i32 %spec.select, 1
  %i.sw = icmp sgt i32 %.2278.ph, 0
  %i.sx = sext i32 %.2278.ph to i64
  %i.sy = shl nsw i64 %i.sx, 1
  %i.sz = sext i32 %i.st to i64                   ; 3 uses
  %brmerge = select i1 %.not295, i1 true, i1 %i.sv
  %xtraiter580 = and i32 %.2278.ph, 3             ; 3 uses
  %i.ta = icmp ult i32 %.2278.ph, 4
  %unroll_iter584 = and i32 %.2278.ph, 2147483644
  %lcmp.mod582.not = icmp eq i32 %xtraiter580, 0
  %lcmp.mod583 = icmp ne i32 %xtraiter580, 0
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph420, %.loopexit350
  %indvars.iv487 = phi i64 [ 0, %.lr.ph420 ], [ %indvars.iv.next488, %.loopexit350 ] ; 7 uses
  %i.tb = load ptr, ptr %i.cj, align 8, !tbaa !96
  %.not294 = icmp eq ptr %i.tb, null
  br i1 %.not294, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.su, label %.lr.ph400, label %.loopexit350

.lr.ph400:                                        ; preds = %bb.av
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv487
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !81
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 392
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv487
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !285
  br i1 %i.ck, label %.lr.ph396, label %.loopexit351

.lr.ph396:                                        ; preds = %.lr.ph400, %._crit_edge397
  %indvars.iv476 = phi i64 [ %indvars.iv.next477, %._crit_edge397 ], [ %indvars.iv474, %.lr.ph400 ] ; 3 uses
  %i.th = load ptr, ptr %i.te, align 8, !tbaa !77
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv476
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !65
  %i.tk = shl i64 %indvars.iv476, 3
  %i.tl = and i64 %i.tk, 56
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.tl
  br label %bb.aw

._crit_edge397:                                   ; preds = %bb.aw
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.tn = icmp slt i64 %indvars.iv.next477, %i.sz
  br i1 %i.tn, label %.lr.ph396, label %.loopexit351, !llvm.loop !272

bb.aw:                                            ; preds = %.lr.ph396, %bb.aw
end_hunk_0
