inline.NumInlined: 251
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@LossyDctDecoder_execute:bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gq, i64 80 ; 3 uses
  %i.jp = load <4 x float>, ptr %i.jo, align 16, !tbaa !88
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gr, i64 80 ; 2 uses
  %i.jr = load <4 x float>, ptr %i.jq, align 16, !tbaa !88 ; 2 uses
  %i.js = fmul <4 x float> %i.jr, splat (float 1.574700e+00)
  %i.jt = fadd <4 x float> %i.jn, %i.js
  store <4 x float> %i.jt, ptr %i.jm, align 16, !tbaa !88
  %i.ju = load <4 x float>, ptr %i.jo, align 16, !tbaa !88
  %i.jv = fmul <4 x float> %i.ju, splat (float 1.873000e-01)
  %i.jw = fmul <4 x float> %i.jr, splat (float 4.682000e-01)
  %i.jx = fsub <4 x float> %i.jn, %i.jv
  %i.jy = fsub <4 x float> %i.jx, %i.jw
  store <4 x float> %i.jy, ptr %i.jo, align 16, !tbaa !88
  %i.jz = fmul <4 x float> %i.jp, splat (float 1.855600e+00)
  %i.ka = fadd <4 x float> %i.jn, %i.jz
  store <4 x float> %i.ka, ptr %i.jq, align 16, !tbaa !88
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gp, i64 96 ; 2 uses
  %i.kc = load <4 x float>, ptr %i.kb, align 16, !tbaa !88 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gq, i64 96 ; 3 uses
  %i.ke = load <4 x float>, ptr %i.kd, align 16, !tbaa !88
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gr, i64 96 ; 2 uses
  %i.kg = load <4 x float>, ptr %i.kf, align 16, !tbaa !88 ; 2 uses
  %i.kh = fmul <4 x float> %i.kg, splat (float 1.574700e+00)
  %i.ki = fadd <4 x float> %i.kc, %i.kh
  store <4 x float> %i.ki, ptr %i.kb, align 16, !tbaa !88
  %i.kj = load <4 x float>, ptr %i.kd, align 16, !tbaa !88
  %i.kk = fmul <4 x float> %i.kj, splat (float 1.873000e-01)
  %i.kl = fmul <4 x float> %i.kg, splat (float 4.682000e-01)
  %i.km = fsub <4 x float> %i.kc, %i.kk
  %i.kn = fsub <4 x float> %i.km, %i.kl
  store <4 x float> %i.kn, ptr %i.kd, align 16, !tbaa !88
  %i.ko = fmul <4 x float> %i.ke, splat (float 1.855600e+00)
  %i.kp = fadd <4 x float> %i.kc, %i.ko
  store <4 x float> %i.kp, ptr %i.kf, align 16, !tbaa !88
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gp, i64 112 ; 2 uses
  %i.kr = load <4 x float>, ptr %i.kq, align 16, !tbaa !88 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gq, i64 112 ; 3 uses
  %i.kt = load <4 x float>, ptr %i.ks, align 16, !tbaa !88
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gr, i64 112 ; 2 uses
  %i.kv = load <4 x float>, ptr %i.ku, align 16, !tbaa !88 ; 2 uses
  %i.kw = fmul <4 x float> %i.kv, splat (float 1.574700e+00)
  %i.kx = fadd <4 x float> %i.kr, %i.kw
  store <4 x float> %i.kx, ptr %i.kq, align 16, !tbaa !88
  %i.ky = load <4 x float>, ptr %i.ks, align 16, !tbaa !88
  %i.kz = fmul <4 x float> %i.ky, splat (float 1.873000e-01)
  %i.la = fmul <4 x float> %i.kv, splat (float 4.682000e-01)
  %i.lb = fsub <4 x float> %i.kr, %i.kz
  %i.lc = fsub <4 x float> %i.lb, %i.la
  store <4 x float> %i.lc, ptr %i.ks, align 16, !tbaa !88
  %i.ld = fmul <4 x float> %i.kt, splat (float 1.855600e+00)
  %i.le = fadd <4 x float> %i.kr, %i.ld
  store <4 x float> %i.le, ptr %i.ku, align 16, !tbaa !88
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gp, i64 128 ; 2 uses
  %i.lg = load <4 x float>, ptr %i.lf, align 16, !tbaa !88 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.gq, i64 128 ; 3 uses
  %i.li = load <4 x float>, ptr %i.lh, align 16, !tbaa !88
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gr, i64 128 ; 2 uses
  %i.lk = load <4 x float>, ptr %i.lj, align 16, !tbaa !88 ; 2 uses
  %i.ll = fmul <4 x float> %i.lk, splat (float 1.574700e+00)
  %i.lm = fadd <4 x float> %i.lg, %i.ll
  store <4 x float> %i.lm, ptr %i.lf, align 16, !tbaa !88
  %i.ln = load <4 x float>, ptr %i.lh, align 16, !tbaa !88
  %i.lo = fmul <4 x float> %i.ln, splat (float 1.873000e-01)
  %i.lp = fmul <4 x float> %i.lk, splat (float 4.682000e-01)
  %i.lq = fsub <4 x float> %i.lg, %i.lo
  %i.lr = fsub <4 x float> %i.lq, %i.lp
  store <4 x float> %i.lr, ptr %i.lh, align 16, !tbaa !88
  %i.ls = fmul <4 x float> %i.li, splat (float 1.855600e+00)
  %i.lt = fadd <4 x float> %i.lg, %i.ls
  store <4 x float> %i.lt, ptr %i.lj, align 16, !tbaa !88
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gp, i64 144 ; 2 uses
  %i.lv = load <4 x float>, ptr %i.lu, align 16, !tbaa !88 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gq, i64 144 ; 3 uses
  %i.lx = load <4 x float>, ptr %i.lw, align 16, !tbaa !88
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gr, i64 144 ; 2 uses
  %i.lz = load <4 x float>, ptr %i.ly, align 16, !tbaa !88 ; 2 uses
  %i.ma = fmul <4 x float> %i.lz, splat (float 1.574700e+00)
  %i.mb = fadd <4 x float> %i.lv, %i.ma
  store <4 x float> %i.mb, ptr %i.lu, align 16, !tbaa !88
  %i.mc = load <4 x float>, ptr %i.lw, align 16, !tbaa !88
  %i.md = fmul <4 x float> %i.mc, splat (float 1.873000e-01)
  %i.me = fmul <4 x float> %i.lz, splat (float 4.682000e-01)
  %i.mf = fsub <4 x float> %i.lv, %i.md
  %i.mg = fsub <4 x float> %i.mf, %i.me
  store <4 x float> %i.mg, ptr %i.lw, align 16, !tbaa !88
  %i.mh = fmul <4 x float> %i.lx, splat (float 1.855600e+00)
  %i.mi = fadd <4 x float> %i.lv, %i.mh
  store <4 x float> %i.mi, ptr %i.ly, align 16, !tbaa !88
  %i.mj = getelementptr inbounds nuw i8, ptr %i.gp, i64 160 ; 2 uses
  %i.mk = load <4 x float>, ptr %i.mj, align 16, !tbaa !88 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gq, i64 160 ; 3 uses
  %i.mm = load <4 x float>, ptr %i.ml, align 16, !tbaa !88
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gr, i64 160 ; 2 uses
  %i.mo = load <4 x float>, ptr %i.mn, align 16, !tbaa !88 ; 2 uses
  %i.mp = fmul <4 x float> %i.mo, splat (float 1.574700e+00)
  %i.mq = fadd <4 x float> %i.mk, %i.mp
  store <4 x float> %i.mq, ptr %i.mj, align 16, !tbaa !88
  %i.mr = load <4 x float>, ptr %i.ml, align 16, !tbaa !88
  %i.ms = fmul <4 x float> %i.mr, splat (float 1.873000e-01)
  %i.mt = fmul <4 x float> %i.mo, splat (float 4.682000e-01)
  %i.mu = fsub <4 x float> %i.mk, %i.ms
  %i.mv = fsub <4 x float> %i.mu, %i.mt
  store <4 x float> %i.mv, ptr %i.ml, align 16, !tbaa !88
  %i.mw = fmul <4 x float> %i.mm, splat (float 1.855600e+00)
  %i.mx = fadd <4 x float> %i.mk, %i.mw
  store <4 x float> %i.mx, ptr %i.mn, align 16, !tbaa !88
  %i.my = getelementptr inbounds nuw i8, ptr %i.gp, i64 176 ; 2 uses
  %i.mz = load <4 x float>, ptr %i.my, align 16, !tbaa !88 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.gq, i64 176 ; 3 uses
  %i.nb = load <4 x float>, ptr %i.na, align 16, !tbaa !88
  %i.nc = getelementptr inbounds nuw i8, ptr %i.gr, i64 176 ; 2 uses
  %i.nd = load <4 x float>, ptr %i.nc, align 16, !tbaa !88 ; 2 uses
  %i.ne = fmul <4 x float> %i.nd, splat (float 1.574700e+00)
  %i.nf = fadd <4 x float> %i.mz, %i.ne
  store <4 x float> %i.nf, ptr %i.my, align 16, !tbaa !88
  %i.ng = load <4 x float>, ptr %i.na, align 16, !tbaa !88
  %i.nh = fmul <4 x float> %i.ng, splat (float 1.873000e-01)
  %i.ni = fmul <4 x float> %i.nd, splat (float 4.682000e-01)
  %i.nj = fsub <4 x float> %i.mz, %i.nh
  %i.nk = fsub <4 x float> %i.nj, %i.ni
  store <4 x float> %i.nk, ptr %i.na, align 16, !tbaa !88
  %i.nl = fmul <4 x float> %i.nb, splat (float 1.855600e+00)
  %i.nm = fadd <4 x float> %i.mz, %i.nl
  store <4 x float> %i.nm, ptr %i.nc, align 16, !tbaa !88
  %i.nn = getelementptr inbounds nuw i8, ptr %i.gp, i64 192 ; 2 uses
  %i.no = load <4 x float>, ptr %i.nn, align 16, !tbaa !88 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.gq, i64 192 ; 3 uses
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !88
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gr, i64 192 ; 2 uses
  %i.ns = load <4 x float>, ptr %i.nr, align 16, !tbaa !88 ; 2 uses
  %i.nt = fmul <4 x float> %i.ns, splat (float 1.574700e+00)
  %i.nu = fadd <4 x float> %i.no, %i.nt
  store <4 x float> %i.nu, ptr %i.nn, align 16, !tbaa !88
  %i.nv = load <4 x float>, ptr %i.np, align 16, !tbaa !88
  %i.nw = fmul <4 x float> %i.nv, splat (float 1.873000e-01)
  %i.nx = fmul <4 x float> %i.ns, splat (float 4.682000e-01)
  %i.ny = fsub <4 x float> %i.no, %i.nw
  %i.nz = fsub <4 x float> %i.ny, %i.nx
  store <4 x float> %i.nz, ptr %i.np, align 16, !tbaa !88
  %i.oa = fmul <4 x float> %i.nq, splat (float 1.855600e+00)
  %i.ob = fadd <4 x float> %i.no, %i.oa
  store <4 x float> %i.ob, ptr %i.nr, align 16, !tbaa !88
  %i.oc = getelementptr inbounds nuw i8, ptr %i.gp, i64 208 ; 2 uses
  %i.od = load <4 x float>, ptr %i.oc, align 16, !tbaa !88 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.gq, i64 208 ; 3 uses
  %i.of = load <4 x float>, ptr %i.oe, align 16, !tbaa !88
  %i.og = getelementptr inbounds nuw i8, ptr %i.gr, i64 208 ; 2 uses
  %i.oh = load <4 x float>, ptr %i.og, align 16, !tbaa !88 ; 2 uses
  %i.oi = fmul <4 x float> %i.oh, splat (float 1.574700e+00)
  %i.oj = fadd <4 x float> %i.od, %i.oi
  store <4 x float> %i.oj, ptr %i.oc, align 16, !tbaa !88
  %i.ok = load <4 x float>, ptr %i.oe, align 16, !tbaa !88
  %i.ol = fmul <4 x float> %i.ok, splat (float 1.873000e-01)
  %i.om = fmul <4 x float> %i.oh, splat (float 4.682000e-01)
  %i.on = fsub <4 x float> %i.od, %i.ol
  %i.oo = fsub <4 x float> %i.on, %i.om
  store <4 x float> %i.oo, ptr %i.oe, align 16, !tbaa !88
  %i.op = fmul <4 x float> %i.of, splat (float 1.855600e+00)
  %i.oq = fadd <4 x float> %i.od, %i.op
  store <4 x float> %i.oq, ptr %i.og, align 16, !tbaa !88
  %i.or = getelementptr inbounds nuw i8, ptr %i.gp, i64 224 ; 2 uses
  %i.os = load <4 x float>, ptr %i.or, align 16, !tbaa !88 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.gq, i64 224 ; 3 uses
  %i.ou = load <4 x float>, ptr %i.ot, align 16, !tbaa !88
  %i.ov = getelementptr inbounds nuw i8, ptr %i.gr, i64 224 ; 2 uses
  %i.ow = load <4 x float>, ptr %i.ov, align 16, !tbaa !88 ; 2 uses
  %i.ox = fmul <4 x float> %i.ow, splat (float 1.574700e+00)
  %i.oy = fadd <4 x float> %i.os, %i.ox
  store <4 x float> %i.oy, ptr %i.or, align 16, !tbaa !88
  %i.oz = load <4 x float>, ptr %i.ot, align 16, !tbaa !88
  %i.pa = fmul <4 x float> %i.oz, splat (float 1.873000e-01)
  %i.pb = fmul <4 x float> %i.ow, splat (float 4.682000e-01)
  %i.pc = fsub <4 x float> %i.os, %i.pa
  %i.pd = fsub <4 x float> %i.pc, %i.pb
  store <4 x float> %i.pd, ptr %i.ot, align 16, !tbaa !88
  %i.pe = fmul <4 x float> %i.ou, splat (float 1.855600e+00)
  %i.pf = fadd <4 x float> %i.os, %i.pe
  store <4 x float> %i.pf, ptr %i.ov, align 16, !tbaa !88
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gp, i64 240 ; 2 uses
  %i.ph = load <4 x float>, ptr %i.pg, align 16, !tbaa !88 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.gq, i64 240 ; 3 uses
  %i.pj = load <4 x float>, ptr %i.pi, align 16, !tbaa !88
  %i.pk = getelementptr inbounds nuw i8, ptr %i.gr, i64 240 ; 2 uses
  %i.pl = load <4 x float>, ptr %i.pk, align 16, !tbaa !88 ; 2 uses
  %i.pm = fmul <4 x float> %i.pl, splat (float 1.574700e+00)
  %i.pn = fadd <4 x float> %i.ph, %i.pm
  store <4 x float> %i.pn, ptr %i.pg, align 16, !tbaa !88
  %i.po = load <4 x float>, ptr %i.pi, align 16, !tbaa !88
  %i.pp = fmul <4 x float> %i.po, splat (float 1.873000e-01)
  %i.pq = fmul <4 x float> %i.pl, splat (float 4.682000e-01)
  %i.pr = fsub <4 x float> %i.ph, %i.pp
  %i.ps = fsub <4 x float> %i.pr, %i.pq
  store <4 x float> %i.ps, ptr %i.pi, align 16, !tbaa !88
  %i.pt = fmul <4 x float> %i.pj, splat (float 1.855600e+00)
  %i.pu = fadd <4 x float> %i.ph, %i.pt
  store <4 x float> %i.pu, ptr %i.pk, align 16, !tbaa !88
  %i.pv = shl nuw nsw i64 %indvars.iv468, 6
  br label %.lr.ph380.split.us.preheader

.thread:                                          ; preds = %bb.aj
  %i.pw = load float, ptr %i.gq, align 4, !tbaa !182 ; 2 uses
  %i.px = load float, ptr %i.gr, align 4, !tbaa !182 ; 2 uses
  %i.py = load float, ptr %i.gp, align 4, !tbaa !182 ; 3 uses
  %i.pz = tail call float @llvm.fmuladd.f32(float %i.px, float 1.574700e+00, float %i.py)
  store float %i.pz, ptr %i.gp, align 4, !tbaa !182
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.pw, float -1.873000e-01, float %i.py)
  %i.qb = insertelement <2 x float> poison, float %i.px, i64 0
  %i.qc = insertelement <2 x float> %i.qb, float %i.pw, i64 1
  %i.qd = insertelement <2 x float> poison, float %i.qa, i64 0
  %i.qe = insertelement <2 x float> %i.qd, float %i.py, i64 1
  %i.qf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qc, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %i.qe) ; 2 uses
  %i.qg = extractelement <2 x float> %i.qf, i64 0
  store float %i.qg, ptr %i.gq, align 4, !tbaa !182
  %i.qh = extractelement <2 x float> %i.qf, i64 1
  store float %i.qh, ptr %i.gr, align 4, !tbaa !182
  %i.qi = shl nuw nsw i64 %indvars.iv468, 6
  br label %.lr.ph380.split.preheader

.lr.ph380:                                        ; preds = %.thread338
  %i.qj = shl nuw nsw i64 %indvars.iv468, 6       ; 2 uses
  br i1 %i.go, label %.lr.ph380.split.us.preheader, label %.lr.ph380.split.preheader

.lr.ph380.split.preheader:                        ; preds = %.thread, %.lr.ph380
  %i.qk = phi i64 [ %i.qi, %.thread ], [ %i.qj, %.lr.ph380 ]
  br label %.lr.ph380.split

.lr.ph380.split.us.preheader:                     ; preds = %.thread.thread, %.lr.ph380
  %i.ql = phi i64 [ %i.pv, %.thread.thread ], [ %i.qj, %.lr.ph380 ]
  br label %.lr.ph380.split.us

.lr.ph380.split.us:                               ; preds = %.lr.ph380.split.us.preheader, %.lr.ph380.split.us
  %indvars.iv463 = phi i64 [ 0, %.lr.ph380.split.us.preheader ], [ %indvars.iv.next464, %.lr.ph380.split.us ] ; 3 uses
  %i.qm = load ptr, ptr @convertFloatToHalf64, align 8, !tbaa !15
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv463
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !262
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %i.ql
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv463
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !120
  tail call void %i.qm(ptr noundef %i.qp, ptr noundef %i.qr) #21, !callees !278
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge381, label %.lr.ph380.split.us, !llvm.loop !279

.lr.ph380.split:                                  ; preds = %.lr.ph380.split.preheader, %float_to_half.exit
  %indvars.iv458 = phi i64 [ 0, %.lr.ph380.split.preheader ], [ %indvars.iv.next459, %float_to_half.exit ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv458
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !262
  %i.qu = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %i.qk ; 8 uses
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv458
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !120
  %i.qx = load float, ptr %i.qw, align 32, !tbaa !182 ; 2 uses
  %i.qy = bitcast float %i.qx to i32
  %i.qz = tail call float @llvm.fabs.f32(float %i.qx)
  %i.ra = bitcast float %i.qz to i32              ; 10 uses
  %i.rb = lshr i32 %i.qy, 16                      ; 3 uses
  %i.rc = trunc nuw i32 %i.rb to i16
  %i.rd = and i16 %i.rc, -32768                   ; 3 uses
  %i.re = icmp samesign ugt i32 %i.ra, 947912703
  br i1 %i.re, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.lr.ph380.split
  %i.rf = icmp samesign ugt i32 %i.ra, 2139095039
  br i1 %i.rf, label %bb.al, label %bb.an, !prof !183

bb.al:                                            ; preds = %bb.ak
  %i.rg = or disjoint i16 %i.rd, 31744            ; 2 uses
  %i.rh = icmp eq i32 %i.ra, 2139095040
  br i1 %i.rh, label %float_to_half.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ri = lshr i32 %i.ra, 13
  %i.rj = and i32 %i.ri, 1023                     ; 2 uses
  %i.rk = icmp eq i32 %i.rj, 0
  %i.rl = zext i1 %i.rk to i16
  %i.rm = trunc nuw nsw i32 %i.rj to i16
  %i.rn = or i16 %i.rm, %i.rl
  %i.ro = or disjoint i16 %i.rn, %i.rg
  br label %float_to_half.exit

bb.an:                                            ; preds = %bb.ak
  %i.rp = icmp samesign ugt i32 %i.ra, 1199566847
  br i1 %i.rp, label %bb.ao, label %bb.ap, !prof !183

bb.ao:                                            ; preds = %bb.an
  %i.rq = or disjoint i16 %i.rd, 31744
  br label %float_to_half.exit

bb.ap:                                            ; preds = %bb.an
  %i.rr = add nuw nsw i32 %i.ra, 134221823
  %i.rs = lshr i32 %i.ra, 13
  %i.rt = and i32 %i.rs, 1
  %i.ru = add nuw nsw i32 %i.rr, %i.rt
  %i.rv = lshr i32 %i.ru, 13
  %i.rw = and i32 %i.rb, 32768
  %i.rx = or i32 %i.rv, %i.rw
  %i.ry = trunc i32 %i.rx to i16
  br label %float_to_half.exit

bb.aq:                                            ; preds = %.lr.ph380.split
  %i.rz = icmp samesign ult i32 %i.ra, 855638017
  br i1 %i.rz, label %float_to_half.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.sa = lshr i32 %i.ra, 23                      ; 2 uses
  %i.sb = sub nuw nsw i32 126, %i.sa
  %i.sc = and i32 %i.ra, 8388607
  %i.sd = or disjoint i32 %i.sc, 8388608          ; 2 uses
  %i.se = add nsw i32 %i.sa, -94
  %i.sf = shl i32 %i.sd, %i.se                    ; 2 uses
  %i.sg = lshr i32 %i.sd, %i.sb                   ; 2 uses
  %i.sh = and i32 %i.rb, 32768
  %i.si = or i32 %i.sg, %i.sh
  %i.sj = trunc nuw i32 %i.si to i16              ; 2 uses
  %i.sk = icmp ugt i32 %i.sf, -2147483648
  br i1 %i.sk, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.sl = icmp ne i32 %i.sf, -2147483648
  %i.sm = and i32 %i.sg, 1
  %.not.i.i301 = icmp eq i32 %i.sm, 0
  %or.cond.i.i = select i1 %i.sl, i1 true, i1 %.not.i.i301
  br i1 %or.cond.i.i, label %float_to_half.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.sn = add nuw i16 %i.sj, 1
  br label %float_to_half.exit

float_to_half.exit:                               ; preds = %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.as, %bb.at
  %.0.i.i = phi i16 [ %i.rd, %bb.aq ], [ %i.ro, %bb.am ], [ %i.rq, %bb.ao ], [ %i.ry, %bb.ap ], [ %i.rg, %bb.al ], [ %i.sn, %bb.at ], [ %i.sj, %bb.as ]
  %i.so = insertelement <8 x i16> poison, i16 %.0.i.i, i64 0
  %i.sp = shufflevector <8 x i16> %i.so, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  store <8 x i16> %i.sp, ptr %i.qu, align 16, !tbaa !88
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  store <8 x i16> %i.sp, ptr %i.sq, align 16, !tbaa !88
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qu, i64 32
  store <8 x i16> %i.sp, ptr %i.sr, align 16, !tbaa !88
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qu, i64 48
  store <8 x i16> %i.sp, ptr %i.ss, align 16, !tbaa !88
  %i.st = getelementptr inbounds nuw i8, ptr %i.qu, i64 64
  store <8 x i16> %i.sp, ptr %i.st, align 16, !tbaa !88
  %i.su = getelementptr inbounds nuw i8, ptr %i.qu, i64 80
  store <8 x i16> %i.sp, ptr %i.su, align 16, !tbaa !88
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qu, i64 96
  store <8 x i16> %i.sp, ptr %i.sv, align 16, !tbaa !88
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qu, i64 112
  store <8 x i16> %i.sp, ptr %i.sw, align 16, !tbaa !88
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %._crit_edge381, label %.lr.ph380.split, !llvm.loop !279

._crit_edge381:                                   ; preds = %float_to_half.exit, %.lr.ph380.split.us, %.lr.ph388
  %.2309.lcssa525530 = phi ptr [ %.1308383, %.lr.ph388 ], [ %i.ej, %.lr.ph380.split.us ], [ %i.ej, %float_to_half.exit ] ; 2 uses
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %.preheader353, label %.lr.ph388, !llvm.loop !280

.preheader353:                                    ; preds = %._crit_edge381, %bb.g
  %.4311.ph = phi ptr [ %.0307423, %bb.g ], [ %.2309.lcssa525530, %._crit_edge381 ]
  %.2270.ph = phi i32 [ 8, %bb.g ], [ %spec.select298, %._crit_edge381 ] ; 5 uses
  br i1 %i.ag, label %.lr.ph420, label %._crit_edge421

.lr.ph420:                                        ; preds = %.preheader353
  %i.sx = shl nuw nsw i32 %.0266424, 3
  %i.sy = add nsw i32 %spec.select, %i.sx
  %i.sz = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ta = icmp slt i32 %spec.select, 1
  %i.tb = icmp sgt i32 %.2270.ph, 0
  %i.tc = sext i32 %.2270.ph to i64
  %i.td = shl nsw i64 %i.tc, 1
  %i.te = sext i32 %i.sy to i64                   ; 3 uses
  %brmerge = select i1 %.not295, i1 true, i1 %i.ta
  %xtraiter577 = and i32 %.2270.ph, 3             ; 3 uses
  %i.tf = icmp ult i32 %.2270.ph, 4
  %unroll_iter581 = and i32 %.2270.ph, 2147483644
  %lcmp.mod579.not = icmp eq i32 %xtraiter577, 0
  %lcmp.mod580 = icmp ne i32 %xtraiter577, 0
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph420, %.loopexit350
  %indvars.iv487 = phi i64 [ 0, %.lr.ph420 ], [ %indvars.iv.next488, %.loopexit350 ] ; 7 uses
  %i.tg = load ptr, ptr %i.cj, align 8, !tbaa !169
  %.not294 = icmp eq ptr %i.tg, null
  br i1 %.not294, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.sz, label %.lr.ph400, label %.loopexit350

.lr.ph400:                                        ; preds = %bb.av
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv487
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !120
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 392
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv487
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !262
  br i1 %i.ck, label %.lr.ph396, label %.loopexit351

.lr.ph396:                                        ; preds = %.lr.ph400, %._crit_edge397
  %indvars.iv476 = phi i64 [ %indvars.iv.next477, %._crit_edge397 ], [ %indvars.iv474, %.lr.ph400 ] ; 3 uses
  %i.tm = load ptr, ptr %i.tj, align 8, !tbaa !113
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %indvars.iv476
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !95
  %i.tp = shl i64 %indvars.iv476, 3
  %i.tq = and i64 %i.tp, 56
  %i.tr = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %i.tq
  br label %bb.aw

._crit_edge397:                                   ; preds = %bb.aw
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.ts = icmp slt i64 %indvars.iv.next477, %i.te
  br i1 %i.ts, label %.lr.ph396, label %.loopexit351, !llvm.loop !281

end_hunk_0
