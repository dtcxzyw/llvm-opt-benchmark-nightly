Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@LossyDctDecoder_execute:bb.a
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gn, i64 80 ; 3 uses
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !tbaa !60
  %i.jn = getelementptr inbounds nuw i8, ptr %i.go, i64 80 ; 2 uses
  %i.jo = load <4 x float>, ptr %i.jn, align 16, !tbaa !60 ; 2 uses
  %i.jp = fmul <4 x float> %i.jo, splat (float 1.574700e+00)
  %i.jq = fadd <4 x float> %i.jk, %i.jp
  store <4 x float> %i.jq, ptr %i.jj, align 16, !tbaa !60
  %i.jr = load <4 x float>, ptr %i.jl, align 16, !tbaa !60
  %i.js = fmul <4 x float> %i.jr, splat (float 1.873000e-01)
  %i.jt = fmul <4 x float> %i.jo, splat (float 4.682000e-01)
  %i.ju = fsub <4 x float> %i.jk, %i.js
  %i.jv = fsub <4 x float> %i.ju, %i.jt
  store <4 x float> %i.jv, ptr %i.jl, align 16, !tbaa !60
  %i.jw = fmul <4 x float> %i.jm, splat (float 1.855600e+00)
  %i.jx = fadd <4 x float> %i.jk, %i.jw
  store <4 x float> %i.jx, ptr %i.jn, align 16, !tbaa !60
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gm, i64 96 ; 2 uses
  %i.jz = load <4 x float>, ptr %i.jy, align 16, !tbaa !60 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gn, i64 96 ; 3 uses
  %i.kb = load <4 x float>, ptr %i.ka, align 16, !tbaa !60
  %i.kc = getelementptr inbounds nuw i8, ptr %i.go, i64 96 ; 2 uses
  %i.kd = load <4 x float>, ptr %i.kc, align 16, !tbaa !60 ; 2 uses
  %i.ke = fmul <4 x float> %i.kd, splat (float 1.574700e+00)
  %i.kf = fadd <4 x float> %i.jz, %i.ke
  store <4 x float> %i.kf, ptr %i.jy, align 16, !tbaa !60
  %i.kg = load <4 x float>, ptr %i.ka, align 16, !tbaa !60
  %i.kh = fmul <4 x float> %i.kg, splat (float 1.873000e-01)
  %i.ki = fmul <4 x float> %i.kd, splat (float 4.682000e-01)
  %i.kj = fsub <4 x float> %i.jz, %i.kh
  %i.kk = fsub <4 x float> %i.kj, %i.ki
  store <4 x float> %i.kk, ptr %i.ka, align 16, !tbaa !60
  %i.kl = fmul <4 x float> %i.kb, splat (float 1.855600e+00)
  %i.km = fadd <4 x float> %i.jz, %i.kl
  store <4 x float> %i.km, ptr %i.kc, align 16, !tbaa !60
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gm, i64 112 ; 2 uses
  %i.ko = load <4 x float>, ptr %i.kn, align 16, !tbaa !60 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gn, i64 112 ; 3 uses
  %i.kq = load <4 x float>, ptr %i.kp, align 16, !tbaa !60
  %i.kr = getelementptr inbounds nuw i8, ptr %i.go, i64 112 ; 2 uses
  %i.ks = load <4 x float>, ptr %i.kr, align 16, !tbaa !60 ; 2 uses
  %i.kt = fmul <4 x float> %i.ks, splat (float 1.574700e+00)
  %i.ku = fadd <4 x float> %i.ko, %i.kt
  store <4 x float> %i.ku, ptr %i.kn, align 16, !tbaa !60
  %i.kv = load <4 x float>, ptr %i.kp, align 16, !tbaa !60
  %i.kw = fmul <4 x float> %i.kv, splat (float 1.873000e-01)
  %i.kx = fmul <4 x float> %i.ks, splat (float 4.682000e-01)
  %i.ky = fsub <4 x float> %i.ko, %i.kw
  %i.kz = fsub <4 x float> %i.ky, %i.kx
  store <4 x float> %i.kz, ptr %i.kp, align 16, !tbaa !60
  %i.la = fmul <4 x float> %i.kq, splat (float 1.855600e+00)
  %i.lb = fadd <4 x float> %i.ko, %i.la
  store <4 x float> %i.lb, ptr %i.kr, align 16, !tbaa !60
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gm, i64 128 ; 2 uses
  %i.ld = load <4 x float>, ptr %i.lc, align 16, !tbaa !60 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.gn, i64 128 ; 3 uses
  %i.lf = load <4 x float>, ptr %i.le, align 16, !tbaa !60
  %i.lg = getelementptr inbounds nuw i8, ptr %i.go, i64 128 ; 2 uses
  %i.lh = load <4 x float>, ptr %i.lg, align 16, !tbaa !60 ; 2 uses
  %i.li = fmul <4 x float> %i.lh, splat (float 1.574700e+00)
  %i.lj = fadd <4 x float> %i.ld, %i.li
  store <4 x float> %i.lj, ptr %i.lc, align 16, !tbaa !60
  %i.lk = load <4 x float>, ptr %i.le, align 16, !tbaa !60
  %i.ll = fmul <4 x float> %i.lk, splat (float 1.873000e-01)
  %i.lm = fmul <4 x float> %i.lh, splat (float 4.682000e-01)
  %i.ln = fsub <4 x float> %i.ld, %i.ll
  %i.lo = fsub <4 x float> %i.ln, %i.lm
  store <4 x float> %i.lo, ptr %i.le, align 16, !tbaa !60
  %i.lp = fmul <4 x float> %i.lf, splat (float 1.855600e+00)
  %i.lq = fadd <4 x float> %i.ld, %i.lp
  store <4 x float> %i.lq, ptr %i.lg, align 16, !tbaa !60
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gm, i64 144 ; 2 uses
  %i.ls = load <4 x float>, ptr %i.lr, align 16, !tbaa !60 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.gn, i64 144 ; 3 uses
  %i.lu = load <4 x float>, ptr %i.lt, align 16, !tbaa !60
  %i.lv = getelementptr inbounds nuw i8, ptr %i.go, i64 144 ; 2 uses
  %i.lw = load <4 x float>, ptr %i.lv, align 16, !tbaa !60 ; 2 uses
  %i.lx = fmul <4 x float> %i.lw, splat (float 1.574700e+00)
  %i.ly = fadd <4 x float> %i.ls, %i.lx
  store <4 x float> %i.ly, ptr %i.lr, align 16, !tbaa !60
  %i.lz = load <4 x float>, ptr %i.lt, align 16, !tbaa !60
  %i.ma = fmul <4 x float> %i.lz, splat (float 1.873000e-01)
  %i.mb = fmul <4 x float> %i.lw, splat (float 4.682000e-01)
  %i.mc = fsub <4 x float> %i.ls, %i.ma
  %i.md = fsub <4 x float> %i.mc, %i.mb
  store <4 x float> %i.md, ptr %i.lt, align 16, !tbaa !60
  %i.me = fmul <4 x float> %i.lu, splat (float 1.855600e+00)
  %i.mf = fadd <4 x float> %i.ls, %i.me
  store <4 x float> %i.mf, ptr %i.lv, align 16, !tbaa !60
  %i.mg = getelementptr inbounds nuw i8, ptr %i.gm, i64 160 ; 2 uses
  %i.mh = load <4 x float>, ptr %i.mg, align 16, !tbaa !60 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.gn, i64 160 ; 3 uses
  %i.mj = load <4 x float>, ptr %i.mi, align 16, !tbaa !60
  %i.mk = getelementptr inbounds nuw i8, ptr %i.go, i64 160 ; 2 uses
  %i.ml = load <4 x float>, ptr %i.mk, align 16, !tbaa !60 ; 2 uses
  %i.mm = fmul <4 x float> %i.ml, splat (float 1.574700e+00)
  %i.mn = fadd <4 x float> %i.mh, %i.mm
  store <4 x float> %i.mn, ptr %i.mg, align 16, !tbaa !60
  %i.mo = load <4 x float>, ptr %i.mi, align 16, !tbaa !60
  %i.mp = fmul <4 x float> %i.mo, splat (float 1.873000e-01)
  %i.mq = fmul <4 x float> %i.ml, splat (float 4.682000e-01)
  %i.mr = fsub <4 x float> %i.mh, %i.mp
  %i.ms = fsub <4 x float> %i.mr, %i.mq
  store <4 x float> %i.ms, ptr %i.mi, align 16, !tbaa !60
  %i.mt = fmul <4 x float> %i.mj, splat (float 1.855600e+00)
  %i.mu = fadd <4 x float> %i.mh, %i.mt
  store <4 x float> %i.mu, ptr %i.mk, align 16, !tbaa !60
  %i.mv = getelementptr inbounds nuw i8, ptr %i.gm, i64 176 ; 2 uses
  %i.mw = load <4 x float>, ptr %i.mv, align 16, !tbaa !60 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.gn, i64 176 ; 3 uses
  %i.my = load <4 x float>, ptr %i.mx, align 16, !tbaa !60
  %i.mz = getelementptr inbounds nuw i8, ptr %i.go, i64 176 ; 2 uses
  %i.na = load <4 x float>, ptr %i.mz, align 16, !tbaa !60 ; 2 uses
  %i.nb = fmul <4 x float> %i.na, splat (float 1.574700e+00)
  %i.nc = fadd <4 x float> %i.mw, %i.nb
  store <4 x float> %i.nc, ptr %i.mv, align 16, !tbaa !60
  %i.nd = load <4 x float>, ptr %i.mx, align 16, !tbaa !60
  %i.ne = fmul <4 x float> %i.nd, splat (float 1.873000e-01)
  %i.nf = fmul <4 x float> %i.na, splat (float 4.682000e-01)
  %i.ng = fsub <4 x float> %i.mw, %i.ne
  %i.nh = fsub <4 x float> %i.ng, %i.nf
  store <4 x float> %i.nh, ptr %i.mx, align 16, !tbaa !60
  %i.ni = fmul <4 x float> %i.my, splat (float 1.855600e+00)
  %i.nj = fadd <4 x float> %i.mw, %i.ni
  store <4 x float> %i.nj, ptr %i.mz, align 16, !tbaa !60
  %i.nk = getelementptr inbounds nuw i8, ptr %i.gm, i64 192 ; 2 uses
  %i.nl = load <4 x float>, ptr %i.nk, align 16, !tbaa !60 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.gn, i64 192 ; 3 uses
  %i.nn = load <4 x float>, ptr %i.nm, align 16, !tbaa !60
  %i.no = getelementptr inbounds nuw i8, ptr %i.go, i64 192 ; 2 uses
  %i.np = load <4 x float>, ptr %i.no, align 16, !tbaa !60 ; 2 uses
  %i.nq = fmul <4 x float> %i.np, splat (float 1.574700e+00)
  %i.nr = fadd <4 x float> %i.nl, %i.nq
  store <4 x float> %i.nr, ptr %i.nk, align 16, !tbaa !60
  %i.ns = load <4 x float>, ptr %i.nm, align 16, !tbaa !60
  %i.nt = fmul <4 x float> %i.ns, splat (float 1.873000e-01)
  %i.nu = fmul <4 x float> %i.np, splat (float 4.682000e-01)
  %i.nv = fsub <4 x float> %i.nl, %i.nt
  %i.nw = fsub <4 x float> %i.nv, %i.nu
  store <4 x float> %i.nw, ptr %i.nm, align 16, !tbaa !60
  %i.nx = fmul <4 x float> %i.nn, splat (float 1.855600e+00)
  %i.ny = fadd <4 x float> %i.nl, %i.nx
  store <4 x float> %i.ny, ptr %i.no, align 16, !tbaa !60
  %i.nz = getelementptr inbounds nuw i8, ptr %i.gm, i64 208 ; 2 uses
  %i.oa = load <4 x float>, ptr %i.nz, align 16, !tbaa !60 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gn, i64 208 ; 3 uses
  %i.oc = load <4 x float>, ptr %i.ob, align 16, !tbaa !60
  %i.od = getelementptr inbounds nuw i8, ptr %i.go, i64 208 ; 2 uses
  %i.oe = load <4 x float>, ptr %i.od, align 16, !tbaa !60 ; 2 uses
  %i.of = fmul <4 x float> %i.oe, splat (float 1.574700e+00)
  %i.og = fadd <4 x float> %i.oa, %i.of
  store <4 x float> %i.og, ptr %i.nz, align 16, !tbaa !60
  %i.oh = load <4 x float>, ptr %i.ob, align 16, !tbaa !60
  %i.oi = fmul <4 x float> %i.oh, splat (float 1.873000e-01)
  %i.oj = fmul <4 x float> %i.oe, splat (float 4.682000e-01)
  %i.ok = fsub <4 x float> %i.oa, %i.oi
  %i.ol = fsub <4 x float> %i.ok, %i.oj
  store <4 x float> %i.ol, ptr %i.ob, align 16, !tbaa !60
  %i.om = fmul <4 x float> %i.oc, splat (float 1.855600e+00)
  %i.on = fadd <4 x float> %i.oa, %i.om
  store <4 x float> %i.on, ptr %i.od, align 16, !tbaa !60
  %i.oo = getelementptr inbounds nuw i8, ptr %i.gm, i64 224 ; 2 uses
  %i.op = load <4 x float>, ptr %i.oo, align 16, !tbaa !60 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.gn, i64 224 ; 3 uses
  %i.or = load <4 x float>, ptr %i.oq, align 16, !tbaa !60
  %i.os = getelementptr inbounds nuw i8, ptr %i.go, i64 224 ; 2 uses
  %i.ot = load <4 x float>, ptr %i.os, align 16, !tbaa !60 ; 2 uses
  %i.ou = fmul <4 x float> %i.ot, splat (float 1.574700e+00)
  %i.ov = fadd <4 x float> %i.op, %i.ou
  store <4 x float> %i.ov, ptr %i.oo, align 16, !tbaa !60
  %i.ow = load <4 x float>, ptr %i.oq, align 16, !tbaa !60
  %i.ox = fmul <4 x float> %i.ow, splat (float 1.873000e-01)
  %i.oy = fmul <4 x float> %i.ot, splat (float 4.682000e-01)
  %i.oz = fsub <4 x float> %i.op, %i.ox
  %i.pa = fsub <4 x float> %i.oz, %i.oy
  store <4 x float> %i.pa, ptr %i.oq, align 16, !tbaa !60
  %i.pb = fmul <4 x float> %i.or, splat (float 1.855600e+00)
  %i.pc = fadd <4 x float> %i.op, %i.pb
  store <4 x float> %i.pc, ptr %i.os, align 16, !tbaa !60
  %i.pd = getelementptr inbounds nuw i8, ptr %i.gm, i64 240 ; 2 uses
  %i.pe = load <4 x float>, ptr %i.pd, align 16, !tbaa !60 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.gn, i64 240 ; 3 uses
  %i.pg = load <4 x float>, ptr %i.pf, align 16, !tbaa !60
  %i.ph = getelementptr inbounds nuw i8, ptr %i.go, i64 240 ; 2 uses
  %i.pi = load <4 x float>, ptr %i.ph, align 16, !tbaa !60 ; 2 uses
  %i.pj = fmul <4 x float> %i.pi, splat (float 1.574700e+00)
  %i.pk = fadd <4 x float> %i.pe, %i.pj
  store <4 x float> %i.pk, ptr %i.pd, align 16, !tbaa !60
  %i.pl = load <4 x float>, ptr %i.pf, align 16, !tbaa !60
  %i.pm = fmul <4 x float> %i.pl, splat (float 1.873000e-01)
  %i.pn = fmul <4 x float> %i.pi, splat (float 4.682000e-01)
  %i.po = fsub <4 x float> %i.pe, %i.pm
  %i.pp = fsub <4 x float> %i.po, %i.pn
  store <4 x float> %i.pp, ptr %i.pf, align 16, !tbaa !60
  %i.pq = fmul <4 x float> %i.pg, splat (float 1.855600e+00)
  %i.pr = fadd <4 x float> %i.pe, %i.pq
  store <4 x float> %i.pr, ptr %i.ph, align 16, !tbaa !60
  %i.ps = shl nuw nsw i64 %indvars.iv471, 6
  br label %.lr.ph382.split.us.preheader

.thread:                                          ; preds = %bb.aj
  %i.pt = load float, ptr %i.gm, align 4, !tbaa !103 ; 3 uses
  %i.pu = load float, ptr %i.gn, align 4, !tbaa !103 ; 2 uses
  %i.pv = load float, ptr %i.go, align 4, !tbaa !103 ; 2 uses
  %i.pw = tail call float @llvm.fmuladd.f32(float %i.pv, float 1.574700e+00, float %i.pt)
  store float %i.pw, ptr %i.gm, align 4, !tbaa !103
  %i.px = tail call float @llvm.fmuladd.f32(float %i.pu, float -1.873000e-01, float %i.pt)
  %i.py = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.pz = insertelement <2 x float> %i.py, float %i.pu, i64 1
  %i.qa = insertelement <2 x float> poison, float %i.px, i64 0
  %i.qb = insertelement <2 x float> %i.qa, float %i.pt, i64 1
  %i.qc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pz, <2 x float> <float -4.682000e-01, float 1.855600e+00>, <2 x float> %i.qb) ; 2 uses
  %i.qd = extractelement <2 x float> %i.qc, i64 0
  store float %i.qd, ptr %i.gn, align 4, !tbaa !103
  %i.qe = extractelement <2 x float> %i.qc, i64 1
  store float %i.qe, ptr %i.go, align 4, !tbaa !103
  %i.qf = shl nuw nsw i64 %indvars.iv471, 6
  br label %.lr.ph382.split.preheader

.lr.ph382:                                        ; preds = %.thread340
  %i.qg = shl nuw nsw i64 %indvars.iv471, 6       ; 2 uses
  br i1 %i.gl, label %.lr.ph382.split.us.preheader, label %.lr.ph382.split.preheader

.lr.ph382.split.preheader:                        ; preds = %.thread, %.lr.ph382
  %i.qh = phi i64 [ %i.qf, %.thread ], [ %i.qg, %.lr.ph382 ]
  br label %.lr.ph382.split

.lr.ph382.split.us.preheader:                     ; preds = %.thread.thread, %.lr.ph382
  %i.qi = phi i64 [ %i.ps, %.thread.thread ], [ %i.qg, %.lr.ph382 ]
  br label %.lr.ph382.split.us

.lr.ph382.split.us:                               ; preds = %.lr.ph382.split.us.preheader, %.lr.ph382.split.us
  %indvars.iv466 = phi i64 [ 0, %.lr.ph382.split.us.preheader ], [ %indvars.iv.next467, %.lr.ph382.split.us ] ; 3 uses
  %i.qj = load ptr, ptr @convertFloatToHalf64, align 8, !tbaa !17
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv466
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !80
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %i.qi
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv466
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !82
  tail call void %i.qj(ptr noundef %i.qm, ptr noundef %i.qo) #21, !callees !295
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next467, %wide.trip.count469
  br i1 %exitcond470.not, label %._crit_edge383, label %.lr.ph382.split.us, !llvm.loop !271

.lr.ph382.split:                                  ; preds = %.lr.ph382.split.preheader, %float_to_half.exit
  %indvars.iv461 = phi i64 [ 0, %.lr.ph382.split.preheader ], [ %indvars.iv.next462, %float_to_half.exit ] ; 3 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv461
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !80
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.qq, i64 %i.qh ; 8 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv461
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !82
  %i.qu = load float, ptr %i.qt, align 32, !tbaa !103 ; 2 uses
  %i.qv = bitcast float %i.qu to i32
  %i.qw = tail call float @llvm.fabs.f32(float %i.qu)
  %i.qx = bitcast float %i.qw to i32              ; 10 uses
  %i.qy = lshr i32 %i.qv, 16                      ; 3 uses
  %i.qz = trunc nuw i32 %i.qy to i16
  %i.ra = and i16 %i.qz, -32768                   ; 3 uses
  %i.rb = icmp samesign ugt i32 %i.qx, 947912703
  br i1 %i.rb, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.lr.ph382.split
  %i.rc = icmp samesign ugt i32 %i.qx, 2139095039
  br i1 %i.rc, label %bb.al, label %bb.an, !prof !104

bb.al:                                            ; preds = %bb.ak
  %i.rd = or disjoint i16 %i.ra, 31744            ; 2 uses
  %i.re = icmp eq i32 %i.qx, 2139095040
  br i1 %i.re, label %float_to_half.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.rf = lshr i32 %i.qx, 13
  %i.rg = and i32 %i.rf, 1023                     ; 2 uses
  %i.rh = icmp eq i32 %i.rg, 0
  %i.ri = zext i1 %i.rh to i16
  %i.rj = trunc nuw nsw i32 %i.rg to i16
  %i.rk = or i16 %i.rj, %i.ri
  %i.rl = or disjoint i16 %i.rk, %i.rd
  br label %float_to_half.exit

bb.an:                                            ; preds = %bb.ak
  %i.rm = icmp samesign ugt i32 %i.qx, 1199566847
  br i1 %i.rm, label %bb.ao, label %bb.ap, !prof !104

bb.ao:                                            ; preds = %bb.an
  %i.rn = or disjoint i16 %i.ra, 31744
  br label %float_to_half.exit

bb.ap:                                            ; preds = %bb.an
  %i.ro = add nuw nsw i32 %i.qx, 134221823
  %i.rp = lshr i32 %i.qx, 13
  %i.rq = and i32 %i.rp, 1
  %i.rr = add nuw nsw i32 %i.ro, %i.rq
  %i.rs = lshr i32 %i.rr, 13
  %i.rt = and i32 %i.qy, 32768
  %i.ru = or i32 %i.rs, %i.rt
  %i.rv = trunc i32 %i.ru to i16
  br label %float_to_half.exit

bb.aq:                                            ; preds = %.lr.ph382.split
  %i.rw = icmp samesign ult i32 %i.qx, 855638017
  br i1 %i.rw, label %float_to_half.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.rx = lshr i32 %i.qx, 23                      ; 2 uses
  %i.ry = sub nuw nsw i32 126, %i.rx
  %i.rz = and i32 %i.qx, 8388607
  %i.sa = or disjoint i32 %i.rz, 8388608          ; 2 uses
  %i.sb = add nsw i32 %i.rx, -94
  %i.sc = shl i32 %i.sa, %i.sb                    ; 2 uses
  %i.sd = lshr i32 %i.sa, %i.ry                   ; 2 uses
  %i.se = and i32 %i.qy, 32768
  %i.sf = or i32 %i.sd, %i.se
  %i.sg = trunc nuw i32 %i.sf to i16              ; 2 uses
  %i.sh = icmp ugt i32 %i.sc, -2147483648
  br i1 %i.sh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.si = icmp ne i32 %i.sc, -2147483648
  %i.sj = and i32 %i.sd, 1
  %.not.i.i303 = icmp eq i32 %i.sj, 0
  %or.cond.i.i = select i1 %i.si, i1 true, i1 %.not.i.i303
  br i1 %or.cond.i.i, label %float_to_half.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.sk = add nuw i16 %i.sg, 1
  br label %float_to_half.exit

float_to_half.exit:                               ; preds = %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.as, %bb.at
  %.033.i.i = phi i16 [ %i.ra, %bb.aq ], [ %i.rl, %bb.am ], [ %i.rn, %bb.ao ], [ %i.rv, %bb.ap ], [ %i.rd, %bb.al ], [ %i.sk, %bb.at ], [ %i.sg, %bb.as ]
  %i.sl = insertelement <8 x i16> poison, i16 %.033.i.i, i64 0
  %i.sm = shufflevector <8 x i16> %i.sl, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  store <8 x i16> %i.sm, ptr %i.qr, align 16, !tbaa !60
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store <8 x i16> %i.sm, ptr %i.sn, align 16, !tbaa !60
  %i.so = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  store <8 x i16> %i.sm, ptr %i.so, align 16, !tbaa !60
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  store <8 x i16> %i.sm, ptr %i.sp, align 16, !tbaa !60
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qr, i64 64
  store <8 x i16> %i.sm, ptr %i.sq, align 16, !tbaa !60
  %i.sr = getelementptr inbounds nuw i8, ptr %i.qr, i64 80
  store <8 x i16> %i.sm, ptr %i.sr, align 16, !tbaa !60
  %i.ss = getelementptr inbounds nuw i8, ptr %i.qr, i64 96
  store <8 x i16> %i.sm, ptr %i.ss, align 16, !tbaa !60
  %i.st = getelementptr inbounds nuw i8, ptr %i.qr, i64 112
  store <8 x i16> %i.sm, ptr %i.st, align 16, !tbaa !60
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond465.not = icmp eq i64 %indvars.iv.next462, %wide.trip.count464
  br i1 %exitcond465.not, label %._crit_edge383, label %.lr.ph382.split, !llvm.loop !271

._crit_edge383:                                   ; preds = %float_to_half.exit, %.lr.ph382.split.us, %.lr.ph390
  %.2311.lcssa530535 = phi ptr [ %.1310385, %.lr.ph390 ], [ %i.eg, %.lr.ph382.split.us ], [ %i.eg, %float_to_half.exit ] ; 2 uses
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %exitcond475.not = icmp eq i64 %indvars.iv.next472, %wide.trip.count474
  br i1 %exitcond475.not, label %.preheader355, label %.lr.ph390, !llvm.loop !272

.preheader355:                                    ; preds = %._crit_edge383, %bb.g
  %.4313.ph = phi ptr [ %.0309425, %bb.g ], [ %.2311.lcssa530535, %._crit_edge383 ]
  %.2283.ph = phi i32 [ 8, %bb.g ], [ %spec.select300, %._crit_edge383 ] ; 5 uses
  br i1 %i.ag, label %.lr.ph422, label %._crit_edge423

.lr.ph422:                                        ; preds = %.preheader355
  %i.su = shl nuw nsw i32 %.0274426, 3
  %i.sv = add nsw i32 %spec.select, %i.su
  %i.sw = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.sx = icmp slt i32 %spec.select, 1
  %i.sy = icmp sgt i32 %.2283.ph, 0
  %i.sz = sext i32 %.2283.ph to i64
  %i.ta = shl nsw i64 %i.sz, 1
  %i.tb = sext i32 %i.sv to i64                   ; 3 uses
  %brmerge = select i1 %.not297, i1 true, i1 %i.sx
  %xtraiter582 = and i32 %.2283.ph, 3             ; 3 uses
  %i.tc = icmp ult i32 %.2283.ph, 4
  %unroll_iter586 = and i32 %.2283.ph, 2147483644
  %lcmp.mod584.not = icmp eq i32 %xtraiter582, 0
  %lcmp.mod585 = icmp ne i32 %xtraiter582, 0
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph422, %.loopexit352
  %indvars.iv490 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next491, %.loopexit352 ] ; 7 uses
  %i.td = load ptr, ptr %i.cg, align 8, !tbaa !97
  %.not296 = icmp eq ptr %i.td, null
  br i1 %.not296, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.sw, label %.lr.ph402, label %.loopexit352

.lr.ph402:                                        ; preds = %bb.av
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv490
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !82
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 392
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv490
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !80
  br i1 %i.ch, label %.lr.ph398, label %.loopexit353

.lr.ph398:                                        ; preds = %.lr.ph402, %._crit_edge399
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %._crit_edge399 ], [ %indvars.iv477, %.lr.ph402 ] ; 3 uses
  %i.tj = load ptr, ptr %i.tg, align 8, !tbaa !77
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %indvars.iv479
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !65
  %i.tm = shl i64 %indvars.iv479, 3
  %i.tn = and i64 %i.tm, 56
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.ti, i64 %i.tn
  br label %bb.aw

._crit_edge399:                                   ; preds = %bb.aw
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1 ; 2 uses
  %i.tp = icmp slt i64 %indvars.iv.next480, %i.tb
  br i1 %i.tp, label %.lr.ph398, label %.loopexit353, !llvm.loop !273

end_hunk_0
