Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/internal_dwa?download=true
inline.NumInlined: 251
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@LossyDctDecoder_execute:bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gq, i64 80 ; 3 uses
  %i.jp = load <4 x float>, ptr %i.jo, align 16, !tbaa !58
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gr, i64 80 ; 2 uses
  %i.jr = load <4 x float>, ptr %i.jq, align 16, !tbaa !58 ; 2 uses
  %i.js = fmul <4 x float> %i.jr, splat (float 1.574700e+00)
  %i.jt = fadd <4 x float> %i.jn, %i.js
  store <4 x float> %i.jt, ptr %i.jm, align 16, !tbaa !58
  %i.ju = load <4 x float>, ptr %i.jo, align 16, !tbaa !58
  %i.jv = fmul <4 x float> %i.ju, splat (float 1.873000e-01)
  %i.jw = fmul <4 x float> %i.jr, splat (float 4.682000e-01)
  %i.jx = fsub <4 x float> %i.jn, %i.jv
  %i.jy = fsub <4 x float> %i.jx, %i.jw
  store <4 x float> %i.jy, ptr %i.jo, align 16, !tbaa !58
  %i.jz = fmul <4 x float> %i.jp, splat (float 1.855600e+00)
  %i.ka = fadd <4 x float> %i.jn, %i.jz
  store <4 x float> %i.ka, ptr %i.jq, align 16, !tbaa !58
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gp, i64 96 ; 2 uses
  %i.kc = load <4 x float>, ptr %i.kb, align 16, !tbaa !58 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gq, i64 96 ; 3 uses
  %i.ke = load <4 x float>, ptr %i.kd, align 16, !tbaa !58
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gr, i64 96 ; 2 uses
  %i.kg = load <4 x float>, ptr %i.kf, align 16, !tbaa !58 ; 2 uses
  %i.kh = fmul <4 x float> %i.kg, splat (float 1.574700e+00)
  %i.ki = fadd <4 x float> %i.kc, %i.kh
  store <4 x float> %i.ki, ptr %i.kb, align 16, !tbaa !58
  %i.kj = load <4 x float>, ptr %i.kd, align 16, !tbaa !58
  %i.kk = fmul <4 x float> %i.kj, splat (float 1.873000e-01)
  %i.kl = fmul <4 x float> %i.kg, splat (float 4.682000e-01)
  %i.km = fsub <4 x float> %i.kc, %i.kk
  %i.kn = fsub <4 x float> %i.km, %i.kl
  store <4 x float> %i.kn, ptr %i.kd, align 16, !tbaa !58
  %i.ko = fmul <4 x float> %i.ke, splat (float 1.855600e+00)
  %i.kp = fadd <4 x float> %i.kc, %i.ko
  store <4 x float> %i.kp, ptr %i.kf, align 16, !tbaa !58
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gp, i64 112 ; 2 uses
  %i.kr = load <4 x float>, ptr %i.kq, align 16, !tbaa !58 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gq, i64 112 ; 3 uses
  %i.kt = load <4 x float>, ptr %i.ks, align 16, !tbaa !58
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gr, i64 112 ; 2 uses
  %i.kv = load <4 x float>, ptr %i.ku, align 16, !tbaa !58 ; 2 uses
  %i.kw = fmul <4 x float> %i.kv, splat (float 1.574700e+00)
  %i.kx = fadd <4 x float> %i.kr, %i.kw
  store <4 x float> %i.kx, ptr %i.kq, align 16, !tbaa !58
  %i.ky = load <4 x float>, ptr %i.ks, align 16, !tbaa !58
  %i.kz = fmul <4 x float> %i.ky, splat (float 1.873000e-01)
  %i.la = fmul <4 x float> %i.kv, splat (float 4.682000e-01)
  %i.lb = fsub <4 x float> %i.kr, %i.kz
  %i.lc = fsub <4 x float> %i.lb, %i.la
  store <4 x float> %i.lc, ptr %i.ks, align 16, !tbaa !58
  %i.ld = fmul <4 x float> %i.kt, splat (float 1.855600e+00)
  %i.le = fadd <4 x float> %i.kr, %i.ld
  store <4 x float> %i.le, ptr %i.ku, align 16, !tbaa !58
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gp, i64 128 ; 2 uses
  %i.lg = load <4 x float>, ptr %i.lf, align 16, !tbaa !58 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.gq, i64 128 ; 3 uses
  %i.li = load <4 x float>, ptr %i.lh, align 16, !tbaa !58
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gr, i64 128 ; 2 uses
  %i.lk = load <4 x float>, ptr %i.lj, align 16, !tbaa !58 ; 2 uses
  %i.ll = fmul <4 x float> %i.lk, splat (float 1.574700e+00)
  %i.lm = fadd <4 x float> %i.lg, %i.ll
  store <4 x float> %i.lm, ptr %i.lf, align 16, !tbaa !58
  %i.ln = load <4 x float>, ptr %i.lh, align 16, !tbaa !58
  %i.lo = fmul <4 x float> %i.ln, splat (float 1.873000e-01)
  %i.lp = fmul <4 x float> %i.lk, splat (float 4.682000e-01)
  %i.lq = fsub <4 x float> %i.lg, %i.lo
  %i.lr = fsub <4 x float> %i.lq, %i.lp
  store <4 x float> %i.lr, ptr %i.lh, align 16, !tbaa !58
  %i.ls = fmul <4 x float> %i.li, splat (float 1.855600e+00)
  %i.lt = fadd <4 x float> %i.lg, %i.ls
  store <4 x float> %i.lt, ptr %i.lj, align 16, !tbaa !58
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gp, i64 144 ; 2 uses
  %i.lv = load <4 x float>, ptr %i.lu, align 16, !tbaa !58 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.gq, i64 144 ; 3 uses
  %i.lx = load <4 x float>, ptr %i.lw, align 16, !tbaa !58
  %i.ly = getelementptr inbounds nuw i8, ptr %i.gr, i64 144 ; 2 uses
  %i.lz = load <4 x float>, ptr %i.ly, align 16, !tbaa !58 ; 2 uses
  %i.ma = fmul <4 x float> %i.lz, splat (float 1.574700e+00)
  %i.mb = fadd <4 x float> %i.lv, %i.ma
  store <4 x float> %i.mb, ptr %i.lu, align 16, !tbaa !58
  %i.mc = load <4 x float>, ptr %i.lw, align 16, !tbaa !58
  %i.md = fmul <4 x float> %i.mc, splat (float 1.873000e-01)
  %i.me = fmul <4 x float> %i.lz, splat (float 4.682000e-01)
  %i.mf = fsub <4 x float> %i.lv, %i.md
  %i.mg = fsub <4 x float> %i.mf, %i.me
  store <4 x float> %i.mg, ptr %i.lw, align 16, !tbaa !58
  %i.mh = fmul <4 x float> %i.lx, splat (float 1.855600e+00)
  %i.mi = fadd <4 x float> %i.lv, %i.mh
  store <4 x float> %i.mi, ptr %i.ly, align 16, !tbaa !58
  %i.mj = getelementptr inbounds nuw i8, ptr %i.gp, i64 160 ; 2 uses
  %i.mk = load <4 x float>, ptr %i.mj, align 16, !tbaa !58 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.gq, i64 160 ; 3 uses
  %i.mm = load <4 x float>, ptr %i.ml, align 16, !tbaa !58
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gr, i64 160 ; 2 uses
  %i.mo = load <4 x float>, ptr %i.mn, align 16, !tbaa !58 ; 2 uses
  %i.mp = fmul <4 x float> %i.mo, splat (float 1.574700e+00)
  %i.mq = fadd <4 x float> %i.mk, %i.mp
  store <4 x float> %i.mq, ptr %i.mj, align 16, !tbaa !58
  %i.mr = load <4 x float>, ptr %i.ml, align 16, !tbaa !58
  %i.ms = fmul <4 x float> %i.mr, splat (float 1.873000e-01)
  %i.mt = fmul <4 x float> %i.mo, splat (float 4.682000e-01)
  %i.mu = fsub <4 x float> %i.mk, %i.ms
  %i.mv = fsub <4 x float> %i.mu, %i.mt
  store <4 x float> %i.mv, ptr %i.ml, align 16, !tbaa !58
  %i.mw = fmul <4 x float> %i.mm, splat (float 1.855600e+00)
  %i.mx = fadd <4 x float> %i.mk, %i.mw
  store <4 x float> %i.mx, ptr %i.mn, align 16, !tbaa !58
  %i.my = getelementptr inbounds nuw i8, ptr %i.gp, i64 176 ; 2 uses
  %i.mz = load <4 x float>, ptr %i.my, align 16, !tbaa !58 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.gq, i64 176 ; 3 uses
  %i.nb = load <4 x float>, ptr %i.na, align 16, !tbaa !58
  %i.nc = getelementptr inbounds nuw i8, ptr %i.gr, i64 176 ; 2 uses
  %i.nd = load <4 x float>, ptr %i.nc, align 16, !tbaa !58 ; 2 uses
  %i.ne = fmul <4 x float> %i.nd, splat (float 1.574700e+00)
  %i.nf = fadd <4 x float> %i.mz, %i.ne
  store <4 x float> %i.nf, ptr %i.my, align 16, !tbaa !58
  %i.ng = load <4 x float>, ptr %i.na, align 16, !tbaa !58
  %i.nh = fmul <4 x float> %i.ng, splat (float 1.873000e-01)
  %i.ni = fmul <4 x float> %i.nd, splat (float 4.682000e-01)
  %i.nj = fsub <4 x float> %i.mz, %i.nh
  %i.nk = fsub <4 x float> %i.nj, %i.ni
  store <4 x float> %i.nk, ptr %i.na, align 16, !tbaa !58
  %i.nl = fmul <4 x float> %i.nb, splat (float 1.855600e+00)
  %i.nm = fadd <4 x float> %i.mz, %i.nl
  store <4 x float> %i.nm, ptr %i.nc, align 16, !tbaa !58
  %i.nn = getelementptr inbounds nuw i8, ptr %i.gp, i64 192 ; 2 uses
  %i.no = load <4 x float>, ptr %i.nn, align 16, !tbaa !58 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.gq, i64 192 ; 3 uses
  %i.nq = load <4 x float>, ptr %i.np, align 16, !tbaa !58
  %i.nr = getelementptr inbounds nuw i8, ptr %i.gr, i64 192 ; 2 uses
  %i.ns = load <4 x float>, ptr %i.nr, align 16, !tbaa !58 ; 2 uses
  %i.nt = fmul <4 x float> %i.ns, splat (float 1.574700e+00)
  %i.nu = fadd <4 x float> %i.no, %i.nt
  store <4 x float> %i.nu, ptr %i.nn, align 16, !tbaa !58
  %i.nv = load <4 x float>, ptr %i.np, align 16, !tbaa !58
  %i.nw = fmul <4 x float> %i.nv, splat (float 1.873000e-01)
  %i.nx = fmul <4 x float> %i.ns, splat (float 4.682000e-01)
  %i.ny = fsub <4 x float> %i.no, %i.nw
  %i.nz = fsub <4 x float> %i.ny, %i.nx
  store <4 x float> %i.nz, ptr %i.np, align 16, !tbaa !58
  %i.oa = fmul <4 x float> %i.nq, splat (float 1.855600e+00)
  %i.ob = fadd <4 x float> %i.no, %i.oa
  store <4 x float> %i.ob, ptr %i.nr, align 16, !tbaa !58
  %i.oc = getelementptr inbounds nuw i8, ptr %i.gp, i64 208 ; 2 uses
  %i.od = load <4 x float>, ptr %i.oc, align 16, !tbaa !58 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.gq, i64 208 ; 3 uses
  %i.of = load <4 x float>, ptr %i.oe, align 16, !tbaa !58
  %i.og = getelementptr inbounds nuw i8, ptr %i.gr, i64 208 ; 2 uses
  %i.oh = load <4 x float>, ptr %i.og, align 16, !tbaa !58 ; 2 uses
  %i.oi = fmul <4 x float> %i.oh, splat (float 1.574700e+00)
  %i.oj = fadd <4 x float> %i.od, %i.oi
  store <4 x float> %i.oj, ptr %i.oc, align 16, !tbaa !58
  %i.ok = load <4 x float>, ptr %i.oe, align 16, !tbaa !58
  %i.ol = fmul <4 x float> %i.ok, splat (float 1.873000e-01)
  %i.om = fmul <4 x float> %i.oh, splat (float 4.682000e-01)
  %i.on = fsub <4 x float> %i.od, %i.ol
  %i.oo = fsub <4 x float> %i.on, %i.om
  store <4 x float> %i.oo, ptr %i.oe, align 16, !tbaa !58
  %i.op = fmul <4 x float> %i.of, splat (float 1.855600e+00)
  %i.oq = fadd <4 x float> %i.od, %i.op
  store <4 x float> %i.oq, ptr %i.og, align 16, !tbaa !58
  %i.or = getelementptr inbounds nuw i8, ptr %i.gp, i64 224 ; 2 uses
  %i.os = load <4 x float>, ptr %i.or, align 16, !tbaa !58 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.gq, i64 224 ; 3 uses
  %i.ou = load <4 x float>, ptr %i.ot, align 16, !tbaa !58
  %i.ov = getelementptr inbounds nuw i8, ptr %i.gr, i64 224 ; 2 uses
  %i.ow = load <4 x float>, ptr %i.ov, align 16, !tbaa !58 ; 2 uses
  %i.ox = fmul <4 x float> %i.ow, splat (float 1.574700e+00)
  %i.oy = fadd <4 x float> %i.os, %i.ox
  store <4 x float> %i.oy, ptr %i.or, align 16, !tbaa !58
  %i.oz = load <4 x float>, ptr %i.ot, align 16, !tbaa !58
  %i.pa = fmul <4 x float> %i.oz, splat (float 1.873000e-01)
  %i.pb = fmul <4 x float> %i.ow, splat (float 4.682000e-01)
  %i.pc = fsub <4 x float> %i.os, %i.pa
  %i.pd = fsub <4 x float> %i.pc, %i.pb
  store <4 x float> %i.pd, ptr %i.ot, align 16, !tbaa !58
  %i.pe = fmul <4 x float> %i.ou, splat (float 1.855600e+00)
  %i.pf = fadd <4 x float> %i.os, %i.pe
  store <4 x float> %i.pf, ptr %i.ov, align 16, !tbaa !58
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gp, i64 240 ; 2 uses
  %i.ph = load <4 x float>, ptr %i.pg, align 16, !tbaa !58 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.gq, i64 240 ; 3 uses
  %i.pj = load <4 x float>, ptr %i.pi, align 16, !tbaa !58
  %i.pk = getelementptr inbounds nuw i8, ptr %i.gr, i64 240 ; 2 uses
  %i.pl = load <4 x float>, ptr %i.pk, align 16, !tbaa !58 ; 2 uses
  %i.pm = fmul <4 x float> %i.pl, splat (float 1.574700e+00)
  %i.pn = fadd <4 x float> %i.ph, %i.pm
  store <4 x float> %i.pn, ptr %i.pg, align 16, !tbaa !58
  %i.po = load <4 x float>, ptr %i.pi, align 16, !tbaa !58
  %i.pp = fmul <4 x float> %i.po, splat (float 1.873000e-01)
  %i.pq = fmul <4 x float> %i.pl, splat (float 4.682000e-01)
  %i.pr = fsub <4 x float> %i.ph, %i.pp
  %i.ps = fsub <4 x float> %i.pr, %i.pq
  store <4 x float> %i.ps, ptr %i.pi, align 16, !tbaa !58
  %i.pt = fmul <4 x float> %i.pj, splat (float 1.855600e+00)
  %i.pu = fadd <4 x float> %i.ph, %i.pt
  store <4 x float> %i.pu, ptr %i.pk, align 16, !tbaa !58
  %i.pv = shl nuw nsw i64 %indvars.iv468, 6
  br label %.lr.ph380.split.us.preheader

.thread:                                          ; preds = %bb.aj
  %i.pw = load float, ptr %i.gp, align 4, !tbaa !100 ; 3 uses
  %i.px = load float, ptr %i.gq, align 4, !tbaa !100 ; 2 uses
  %i.py = load float, ptr %i.gr, align 4, !tbaa !100 ; 2 uses
  %i.pz = tail call float @llvm.fmuladd.f32(float %i.py, float 1.574700e+00, float %i.pw)
  store float %i.pz, ptr %i.gp, align 4, !tbaa !100
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.px, float -1.873000e-01, float %i.pw)
  %3 = tail call float @llvm.fmuladd.f32(float %i.py, float -4.682000e-01, float %i.qa)
  store float %3, ptr %i.gq, align 4, !tbaa !100
  %4 = tail call float @llvm.fmuladd.f32(float %i.px, float 1.855600e+00, float %i.pw)
  store float %4, ptr %i.gr, align 4, !tbaa !100
  %i.qb = shl nuw nsw i64 %indvars.iv468, 6
  br label %.lr.ph380.split.preheader

.lr.ph380:                                        ; preds = %.thread338
  %i.qc = shl nuw nsw i64 %indvars.iv468, 6       ; 2 uses
  br i1 %i.go, label %.lr.ph380.split.us.preheader, label %.lr.ph380.split.preheader

.lr.ph380.split.preheader:                        ; preds = %.thread, %.lr.ph380
  %i.qd = phi i64 [ %i.qb, %.thread ], [ %i.qc, %.lr.ph380 ]
  br label %.lr.ph380.split

.lr.ph380.split.us.preheader:                     ; preds = %.thread.thread, %.lr.ph380
  %i.qe = phi i64 [ %i.pv, %.thread.thread ], [ %i.qc, %.lr.ph380 ]
  br label %.lr.ph380.split.us

.lr.ph380.split.us:                               ; preds = %.lr.ph380.split.us.preheader, %.lr.ph380.split.us
  %indvars.iv463 = phi i64 [ 0, %.lr.ph380.split.us.preheader ], [ %indvars.iv.next464, %.lr.ph380.split.us ] ; 3 uses
  %i.qf = load ptr, ptr @convertFloatToHalf64, align 8, !tbaa !16
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv463
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !283
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.qh, i64 %i.qe
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv463
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !79
  tail call void %i.qf(ptr noundef %i.qi, ptr noundef %i.qk) #21, !callees !293
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %exitcond467.not = icmp eq i64 %indvars.iv.next464, %wide.trip.count466
  br i1 %exitcond467.not, label %._crit_edge381, label %.lr.ph380.split.us, !llvm.loop !268

.lr.ph380.split:                                  ; preds = %.lr.ph380.split.preheader, %float_to_half.exit
  %indvars.iv458 = phi i64 [ 0, %.lr.ph380.split.preheader ], [ %indvars.iv.next459, %float_to_half.exit ] ; 3 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv458
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !283
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.qm, i64 %i.qd ; 8 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv458
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !79
  %i.qq = load float, ptr %i.qp, align 32, !tbaa !100 ; 2 uses
  %i.qr = bitcast float %i.qq to i32
  %i.qs = tail call float @llvm.fabs.f32(float %i.qq)
  %i.qt = bitcast float %i.qs to i32              ; 10 uses
  %i.qu = lshr i32 %i.qr, 16                      ; 3 uses
  %i.qv = trunc nuw i32 %i.qu to i16
  %i.qw = and i16 %i.qv, -32768                   ; 3 uses
  %i.qx = icmp samesign ugt i32 %i.qt, 947912703
  br i1 %i.qx, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %.lr.ph380.split
  %i.qy = icmp samesign ugt i32 %i.qt, 2139095039
  br i1 %i.qy, label %bb.al, label %bb.an, !prof !101

bb.al:                                            ; preds = %bb.ak
  %i.qz = or disjoint i16 %i.qw, 31744            ; 2 uses
  %i.ra = icmp eq i32 %i.qt, 2139095040
  br i1 %i.ra, label %float_to_half.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.rb = lshr i32 %i.qt, 13
  %i.rc = and i32 %i.rb, 1023                     ; 2 uses
  %i.rd = icmp eq i32 %i.rc, 0
  %i.re = zext i1 %i.rd to i16
  %i.rf = trunc nuw nsw i32 %i.rc to i16
  %i.rg = or i16 %i.rf, %i.re
  %i.rh = or disjoint i16 %i.rg, %i.qz
  br label %float_to_half.exit

bb.an:                                            ; preds = %bb.ak
  %i.ri = icmp samesign ugt i32 %i.qt, 1199566847
  br i1 %i.ri, label %bb.ao, label %bb.ap, !prof !101

bb.ao:                                            ; preds = %bb.an
  %i.rj = or disjoint i16 %i.qw, 31744
  br label %float_to_half.exit

bb.ap:                                            ; preds = %bb.an
  %i.rk = add nuw nsw i32 %i.qt, 134221823
  %i.rl = lshr i32 %i.qt, 13
  %i.rm = and i32 %i.rl, 1
  %i.rn = add nuw nsw i32 %i.rk, %i.rm
  %i.ro = lshr i32 %i.rn, 13
  %i.rp = and i32 %i.qu, 32768
  %i.rq = or i32 %i.ro, %i.rp
  %i.rr = trunc i32 %i.rq to i16
  br label %float_to_half.exit

bb.aq:                                            ; preds = %.lr.ph380.split
  %i.rs = icmp samesign ult i32 %i.qt, 855638017
  br i1 %i.rs, label %float_to_half.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.rt = lshr i32 %i.qt, 23                      ; 2 uses
  %i.ru = sub nuw nsw i32 126, %i.rt
  %i.rv = and i32 %i.qt, 8388607
  %i.rw = or disjoint i32 %i.rv, 8388608          ; 2 uses
  %i.rx = add nsw i32 %i.rt, -94
  %i.ry = shl i32 %i.rw, %i.rx                    ; 2 uses
  %i.rz = lshr i32 %i.rw, %i.ru                   ; 2 uses
  %i.sa = and i32 %i.qu, 32768
  %i.sb = or i32 %i.rz, %i.sa
  %i.sc = trunc nuw i32 %i.sb to i16              ; 2 uses
  %i.sd = icmp ugt i32 %i.ry, -2147483648
  br i1 %i.sd, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.se = icmp ne i32 %i.ry, -2147483648
  %i.sf = and i32 %i.rz, 1
  %.not.i.i301 = icmp eq i32 %i.sf, 0
  %or.cond.i.i = select i1 %i.se, i1 true, i1 %.not.i.i301
  br i1 %or.cond.i.i, label %float_to_half.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.sg = add nuw i16 %i.sc, 1
  br label %float_to_half.exit

float_to_half.exit:                               ; preds = %bb.al, %bb.am, %bb.ao, %bb.ap, %bb.aq, %bb.as, %bb.at
  %.033.i.i = phi i16 [ %i.qw, %bb.aq ], [ %i.rh, %bb.am ], [ %i.rj, %bb.ao ], [ %i.rr, %bb.ap ], [ %i.qz, %bb.al ], [ %i.sg, %bb.at ], [ %i.sc, %bb.as ]
  %i.sh = insertelement <8 x i16> poison, i16 %.033.i.i, i64 0
  %i.si = shufflevector <8 x i16> %i.sh, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  store <8 x i16> %i.si, ptr %i.qn, align 16, !tbaa !58
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store <8 x i16> %i.si, ptr %i.sj, align 16, !tbaa !58
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  store <8 x i16> %i.si, ptr %i.sk, align 16, !tbaa !58
  %i.sl = getelementptr inbounds nuw i8, ptr %i.qn, i64 48
  store <8 x i16> %i.si, ptr %i.sl, align 16, !tbaa !58
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qn, i64 64
  store <8 x i16> %i.si, ptr %i.sm, align 16, !tbaa !58
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qn, i64 80
  store <8 x i16> %i.si, ptr %i.sn, align 16, !tbaa !58
  %i.so = getelementptr inbounds nuw i8, ptr %i.qn, i64 96
  store <8 x i16> %i.si, ptr %i.so, align 16, !tbaa !58
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qn, i64 112
  store <8 x i16> %i.si, ptr %i.sp, align 16, !tbaa !58
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next459, %wide.trip.count461
  br i1 %exitcond462.not, label %._crit_edge381, label %.lr.ph380.split, !llvm.loop !268

._crit_edge381:                                   ; preds = %float_to_half.exit, %.lr.ph380.split.us, %.lr.ph388
  %.2309.lcssa525530 = phi ptr [ %.1308383, %.lr.ph388 ], [ %i.ej, %.lr.ph380.split.us ], [ %i.ej, %float_to_half.exit ] ; 2 uses
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %.preheader353, label %.lr.ph388, !llvm.loop !269

.preheader353:                                    ; preds = %._crit_edge381, %bb.g
  %.4311.ph = phi ptr [ %.0307423, %bb.g ], [ %.2309.lcssa525530, %._crit_edge381 ]
  %.2278.ph = phi i32 [ 8, %bb.g ], [ %spec.select298, %._crit_edge381 ] ; 5 uses
  br i1 %i.ag, label %.lr.ph420, label %._crit_edge421

.lr.ph420:                                        ; preds = %.preheader353
  %i.sq = shl nuw nsw i32 %.0280424, 3
  %i.sr = add nsw i32 %spec.select, %i.sq
  %i.ss = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.st = icmp slt i32 %spec.select, 1
  %i.su = icmp sgt i32 %.2278.ph, 0
  %i.sv = sext i32 %.2278.ph to i64
  %i.sw = shl nsw i64 %i.sv, 1
  %i.sx = sext i32 %i.sr to i64                   ; 3 uses
  %brmerge = select i1 %.not295, i1 true, i1 %i.st
  %xtraiter577 = and i32 %.2278.ph, 3             ; 3 uses
  %i.sy = icmp ult i32 %.2278.ph, 4
  %unroll_iter581 = and i32 %.2278.ph, 2147483644
  %lcmp.mod579.not = icmp eq i32 %xtraiter577, 0
  %lcmp.mod580 = icmp ne i32 %xtraiter577, 0
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph420, %.loopexit350
  %indvars.iv487 = phi i64 [ 0, %.lr.ph420 ], [ %indvars.iv.next488, %.loopexit350 ] ; 7 uses
  %i.sz = load ptr, ptr %i.cj, align 8, !tbaa !94
  %.not294 = icmp eq ptr %i.sz, null
  br i1 %.not294, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %i.ss, label %.lr.ph400, label %.loopexit350

.lr.ph400:                                        ; preds = %bb.av
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv487
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !79
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 392
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv487
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !283
  br i1 %i.ck, label %.lr.ph396, label %.loopexit351

.lr.ph396:                                        ; preds = %.lr.ph400, %._crit_edge397
  %indvars.iv476 = phi i64 [ %indvars.iv.next477, %._crit_edge397 ], [ %indvars.iv474, %.lr.ph400 ] ; 3 uses
  %i.tf = load ptr, ptr %i.tc, align 8, !tbaa !75
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %indvars.iv476
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !63
  %i.ti = shl i64 %indvars.iv476, 3
  %i.tj = and i64 %i.ti, 56
  %i.tk = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %i.tj
  br label %bb.aw

._crit_edge397:                                   ; preds = %bb.aw
  %indvars.iv.next477 = add nuw nsw i64 %indvars.iv476, 1 ; 2 uses
  %i.tl = icmp slt i64 %indvars.iv.next477, %i.sx
  br i1 %i.tl, label %.lr.ph396, label %.loopexit351, !llvm.loop !270

bb.aw:                                            ; preds = %.lr.ph396, %bb.aw
  %.0257394 = phi i32 [ 0, %.lr.ph396 ], [ %i.vl, %bb.aw ]
  %.0258393 = phi ptr [ %i.tk, %.lr.ph396 ], [ %i.vk, %bb.aw ] ; 10 uses
  %.0259392 = phi ptr [ %i.th, %.lr.ph396 ], [ %i.vj, %bb.aw ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.0258393, i64 2048
end_hunk_0
begin_hunk_1_@interleaveByte2:bb.a
  %i.gs = icmp slt i32 %i.gr, %3
  br i1 %i.gs, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %._crit_edge
  %i.gt = sext i32 %i.gr to i64                   ; 10 uses
  %wide.trip.count157 = sext i32 %3 to i64        ; 9 uses
  %i.gu = sub nsw i64 %wide.trip.count157, %i.gt  ; 4 uses
  %min.iters.check = icmp ult i64 %i.gu, 4
  br i1 %min.iters.check, label %.lr.ph133.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gv = shl nsw i64 %i.gt, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.gv  ; 2 uses
  %i.gw = shl nsw i64 %wide.trip.count157, 1
  %scevgep193 = getelementptr i8, ptr %0, i64 %i.gw ; 2 uses
  %scevgep194 = getelementptr i8, ptr %1, i64 %i.gt
  %scevgep195 = getelementptr i8, ptr %1, i64 %wide.trip.count157
  %scevgep196 = getelementptr i8, ptr %2, i64 %i.gt
  %scevgep197 = getelementptr i8, ptr %2, i64 %wide.trip.count157
  %bound0 = icmp ult ptr %scevgep, %scevgep195
  %bound1 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict = and i1 %bound0, %bound1
  %bound0198 = icmp ult ptr %scevgep, %scevgep197
  %bound1199 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx = or i1 %found.conflict, %found.conflict200
  br i1 %conflict.rdx, label %.lr.ph133.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check201 = icmp ult i64 %i.gu, 16
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i64 %wide.trip.count157, 15         ; 2 uses
  %n.vec = sub nuw nsw i64 %i.gu, %i.gx           ; 3 uses
  %i.gy = add nsw i64 %n.vec, %i.gt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gz = add i64 %index, %i.gt                   ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %1, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %wide.load = load <8 x i8>, ptr %i.ha, align 1, !tbaa !58, !alias.scope !328
  %wide.load202 = load <8 x i8>, ptr %i.hb, align 1, !tbaa !58, !alias.scope !328
  %i.hc = shl nsw i64 %i.gz, 1
  %i.hd = shl i64 %i.gz, 1
  %i.he = getelementptr inbounds i8, ptr %0, i64 %i.hc
  %i.hf = getelementptr i8, ptr %0, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  %i.hh = getelementptr inbounds i8, ptr %2, i64 %i.gz ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %wide.load203 = load <8 x i8>, ptr %i.hh, align 1, !tbaa !58, !alias.scope !329
  %wide.load204 = load <8 x i8>, ptr %i.hi, align 1, !tbaa !58, !alias.scope !329
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load203, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.he, align 1, !tbaa !58, !alias.scope !330, !noalias !331
  %interleaved.vec205 = shufflevector <8 x i8> %wide.load202, <8 x i8> %wide.load204, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec205, ptr %i.hg, align 1, !tbaa !58, !alias.scope !330, !noalias !331
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %i.hk = and i32 %3, 15
  %cmp.n = icmp eq i32 %i.hk, 0
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.gx, 4
  br i1 %min.epilog.iters.check, label %.lr.ph133.preheader, label %vec.epilog.ph, !prof !322

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hl = and i64 %wide.trip.count157, 3
  %n.vec206 = sub nsw i64 %i.gu, %i.hl            ; 2 uses
  %i.hm = add nsw i64 %n.vec206, %i.gt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index207 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next211, %vec.epilog.vector.body ] ; 2 uses
  %i.hn = add i64 %index207, %i.gt                ; 3 uses
  %i.ho = getelementptr inbounds i8, ptr %1, i64 %i.hn
  %wide.load208 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !58, !alias.scope !328
  %i.hp = shl nsw i64 %i.hn, 1
  %i.hq = getelementptr inbounds i8, ptr %0, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %2, i64 %i.hn
  %wide.load209 = load <4 x i8>, ptr %i.hr, align 1, !tbaa !58, !alias.scope !329
  %interleaved.vec210 = shufflevector <4 x i8> %wide.load208, <4 x i8> %wide.load209, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec210, ptr %i.hq, align 1, !tbaa !58, !alias.scope !330, !noalias !331
  %index.next211 = add nuw i64 %index207, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.hs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !315

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ht = and i32 %3, 3
  %cmp.n212 = icmp eq i32 %i.ht, 0
  br i1 %cmp.n212, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv154.ph = phi i64 [ %i.gt, %iter.check ], [ %i.gt, %vector.memcheck ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hm, %vec.epilog.middle.block ] ; 7 uses
  %i.hu = sub nsw i64 %wide.trip.count157, %indvars.iv154.ph
  %xtraiter = and i64 %i.hu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph133.prol.loopexit, label %.lr.ph133.prol

.lr.ph133.prol:                                   ; preds = %.lr.ph133.preheader
  %i.hv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv154.ph
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !58
  %i.hx = shl nsw i64 %indvars.iv154.ph, 1
  %i.hy = getelementptr inbounds i8, ptr %0, i64 %i.hx ; 2 uses
  store i8 %i.hw, ptr %i.hy, align 1, !tbaa !58
  %i.hz = getelementptr inbounds i8, ptr %2, i64 %indvars.iv154.ph
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !58
  %i.ib = getelementptr i8, ptr %i.hy, i64 1
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !58
  %indvars.iv.next155.prol = add nsw i64 %indvars.iv154.ph, 1
  br label %.lr.ph133.prol.loopexit

.lr.ph133.prol.loopexit:                          ; preds = %.lr.ph133.prol, %.lr.ph133.preheader
  %indvars.iv154.unr = phi i64 [ %indvars.iv154.ph, %.lr.ph133.preheader ], [ %indvars.iv.next155.prol, %.lr.ph133.prol ]
  %i.ic = add nsw i64 %wide.trip.count157, -1
  %i.id = icmp eq i64 %indvars.iv154.ph, %i.ic
  br i1 %i.id, label %.loopexit, label %.lr.ph133

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.if = load <16 x i8>, ptr %i.ie, align 1, !tbaa !58 ; 2 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.ih = load <16 x i8>, ptr %i.ig, align 1, !tbaa !58 ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 5
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.ij = shufflevector <16 x i8> %i.if, <16 x i8> %i.ih, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ij, ptr %i.ii, align 1, !tbaa !58
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.il = shufflevector <16 x i8> %i.if, <16 x i8> %i.ih, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.il, ptr %i.ik, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !316

.lr.ph133:                                        ; preds = %.lr.ph133.prol.loopexit, %.lr.ph133
  %indvars.iv154 = phi i64 [ %indvars.iv.next155.1, %.lr.ph133 ], [ %indvars.iv154.unr, %.lr.ph133.prol.loopexit ] ; 5 uses
  %i.im = getelementptr inbounds i8, ptr %1, i64 %indvars.iv154
  %i.in = load i8, ptr %i.im, align 1, !tbaa !58
  %i.io = shl nsw i64 %indvars.iv154, 1
  %i.ip = getelementptr inbounds i8, ptr %0, i64 %i.io ; 2 uses
  store i8 %i.in, ptr %i.ip, align 1, !tbaa !58
  %i.iq = getelementptr inbounds i8, ptr %2, i64 %indvars.iv154
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !58
  %i.is = getelementptr i8, ptr %i.ip, i64 1
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !58
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1 ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next155
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !58
  %i.iv = shl nsw i64 %indvars.iv.next155, 1
  %i.iw = getelementptr inbounds i8, ptr %0, i64 %i.iv ; 2 uses
  store i8 %i.iu, ptr %i.iw, align 1, !tbaa !58
  %i.ix = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next155
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !58
  %i.iz = getelementptr i8, ptr %i.iw, i64 1
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !58
  %indvars.iv.next155.1 = add nsw i64 %indvars.iv154, 2 ; 2 uses
  %exitcond158.not.1 = icmp eq i64 %indvars.iv.next155.1, %wide.trip.count157
  br i1 %exitcond158.not.1, label %.loopexit, label %.lr.ph133, !llvm.loop !317

.loopexit:                                        ; preds = %.lr.ph133.prol.loopexit, %.lr.ph133, %.lr.ph144.prol.loopexit, %.lr.ph144, %.lr.ph150.prol.loopexit, %.lr.ph150, %middle.block, %vec.epilog.middle.block, %middle.block242, %vec.epilog.middle.block257, %middle.block288, %vec.epilog.middle.block303, %bb.c, %._crit_edge, %._crit_edge141, %._crit_edge147, %._crit_edge137
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.ctpop.v2i16(<2 x i16>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { nounwind memory(none) }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !44}
!1 = distinct !{!1, !44}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!"p1 _ZTS19_priv_exr_context_t", !10, i64 0}
!13 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!"_exr_encode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !7, i64 20, !12, i64 24, !13, i64 32, !10, i64 96, !10, i64 104, !9, i64 112, !9, i64 120, !14, i64 128, !9, i64 136, !10, i64 144, !9, i64 152, !9, i64 160, !10, i64 168, !9, i64 176, !9, i64 184, !10, i64 192, !9, i64 200, !10, i64 208, !9, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !6, i64 272}
!16 = !{!10, !10, i64 0}
!17 = !{!"p1 _ZTS20_exr_encode_pipeline", !10, i64 0}
!18 = !{!"p1 _ZTS20_exr_decode_pipeline", !10, i64 0}
!19 = !{!"p1 _ZTS12_ChannelData", !10, i64 0}
!20 = !{!"p1 _ZTS14_CscChannelSet", !10, i64 0}
!21 = !{!"p1 _ZTS11_Classifier", !10, i64 0}
!22 = !{!"p1 omnipotent char", !10, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!"_DwaCompressor", !17, i64 0, !18, i64 8, !7, i64 16, !7, i64 20, !6, i64 24, !6, i64 32, !7, i64 40, !7, i64 44, !19, i64 48, !20, i64 56, !10, i64 64, !21, i64 72, !9, i64 80, !22, i64 88, !9, i64 96, !22, i64 104, !9, i64 112, !22, i64 120, !9, i64 128, !6, i64 136, !6, i64 160, !10, i64 184, !10, i64 192, !7, i64 200, !23, i64 204}
!25 = !{!24, !7, i64 16}
!26 = !{!24, !17, i64 0}
!27 = !{!24, !18, i64 8}
!28 = !{!15, !12, i64 24}
!29 = !{!"any p2 pointer", !10, i64 0}
!30 = !{!24, !10, i64 184}
!31 = !{!24, !10, i64 192}
!32 = !{!24, !19, i64 48}
!33 = !{!24, !7, i64 40}
!34 = !{!24, !7, i64 20}
!35 = !{!"p1 short", !10, i64 0}
!36 = !{!"p2 omnipotent char", !29, i64 0}
!37 = !{!"_DctCoderChannelData", !6, i64 0, !6, i64 256, !35, i64 384, !36, i64 392, !9, i64 400, !9, i64 408, !7, i64 416, !6, i64 420}
!38 = !{!"_ChannelData", !37, i64 0, !10, i64 448, !22, i64 456, !22, i64 464, !6, i64 472, !6, i64 504, !9, i64 536, !7, i64 544, !7, i64 548, !7, i64 552, !6, i64 556}
!39 = !{!38, !10, i64 448}
!40 = !{!38, !7, i64 548}
!41 = !{!"", !22, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !6, i64 24, !6, i64 25, !11, i64 26, !11, i64 28, !11, i64 30, !7, i64 32, !7, i64 36, !6, i64 40}
!42 = !{!41, !11, i64 26}
!43 = !{!37, !7, i64 416}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"_exr_decode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !7, i64 20, !12, i64 24, !13, i64 32, !7, i64 96, !7, i64 100, !9, i64 104, !10, i64 112, !10, i64 120, !9, i64 128, !10, i64 136, !9, i64 144, !10, i64 152, !9, i64 160, !14, i64 168, !9, i64 176, !10, i64 184, !9, i64 192, !10, i64 200, !9, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !6, i64 264}
!46 = !{!45, !12, i64 24}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!9, !9, i64 0}
!49 = !{!24, !21, i64 72}
!50 = !{!24, !9, i64 80}
!51 = !{!"_Classifier", !22, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 20, !11, i64 22}
!52 = !{!51, !7, i64 12}
!53 = !{!41, !22, i64 0}
!54 = !{!51, !11, i64 20}
!55 = !{!51, !22, i64 0}
!56 = !{!51, !7, i64 16}
!57 = !{!51, !7, i64 8}
!58 = !{!6, !6, i64 0}
!59 = !{!"llvm.loop.unswitch.partial.disable"}
!60 = !{!11, !11, i64 0}
!61 = !{!24, !22, i64 88}
!62 = !{!24, !22, i64 104}
!63 = !{!22, !22, i64 0}
!64 = !{!41, !7, i64 12}
!65 = !{!41, !7, i64 8}
!66 = !{!41, !6, i64 25}
!67 = !{!38, !9, i64 536}
!68 = !{!38, !22, i64 456}
!69 = !{!38, !22, i64 464}
!70 = !{!38, !7, i64 552}
!71 = !{!38, !7, i64 544}
!72 = !{!41, !7, i64 20}
!73 = !{!37, !9, i64 408}
!74 = !{!37, !9, i64 400}
!75 = !{!37, !36, i64 392}
!76 = !{!24, !7, i64 44}
!77 = !{!24, !20, i64 56}
!78 = !{!"p1 _ZTS20_DctCoderChannelData", !10, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!"_LossyDctEncoder", !35, i64 0, !9, i64 8, !9, i64 16, !6, i64 24, !7, i64 48, !7, i64 52, !7, i64 56, !23, i64 60, !22, i64 64, !22, i64 72, !6, i64 80, !6, i64 336, !6, i64 464, !6, i64 720}
!81 = !{!80, !7, i64 48}
!82 = !{!41, !6, i64 24}
!83 = !{!24, !22, i64 120}
!84 = !{!24, !9, i64 128}
!85 = !{!51, !11, i64 22}
!86 = !{!45, !9, i64 104}
!87 = !{!24, !9, i64 96}
!88 = !{!24, !9, i64 112}
!89 = !{!"_LossyDctDecoder", !9, i64 0, !9, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !9, i64 40, !35, i64 48, !7, i64 56, !7, i64 60, !6, i64 64, !7, i64 88, !6, i64 92}
!90 = !{!89, !22, i64 16}
!91 = !{!89, !22, i64 24}
!92 = !{!89, !22, i64 32}
!93 = !{!89, !9, i64 40}
!94 = !{!89, !35, i64 48}
!95 = !{!89, !7, i64 88}
!96 = !{!89, !9, i64 0}
!97 = !{!89, !9, i64 8}
!98 = !{!89, !7, i64 56}
!99 = !{!89, !7, i64 60}
!100 = !{!23, !23, i64 0}
!101 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!102 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!103 = !{!80, !7, i64 52}
!104 = !{!80, !7, i64 56}
!105 = !{!80, !22, i64 64}
!106 = !{!80, !22, i64 72}
!107 = !{!80, !35, i64 0}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = !{!15, !6, i64 54}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, !47}
!113 = distinct !{!113, !44}
!114 = !{i64 2152638021, i64 2152638103, i64 2152638184}
!115 = !{i64 2152638397, i64 2152638479, i64 2152638560}
!116 = !{i64 5134825}
!117 = !{!"", !7, i64 0, !7, i64 4, !22, i64 8}
!118 = !{!"exr_attribute_list", !7, i64 0, !7, i64 4, !29, i64 8, !29, i64 16}
!119 = !{!"", !7, i64 0, !7, i64 4}
!120 = !{!"", !119, i64 0, !119, i64 8}
!121 = !{!"_priv_exr_part_t", !7, i64 0, !7, i64 4, !118, i64 8, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !120, i64 144, !120, i64 160, !7, i64 176, !7, i64 180, !7, i64 184, !23, i64 188, !7, i64 192, !7, i64 196, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !9, i64 232, !11, i64 240, !11, i64 242, !7, i64 244, !9, i64 248, !6, i64 256}
!122 = !{!"p1 _ZTS16_priv_exr_part_t", !10, i64 0}
!123 = !{!"p2 _ZTS16_priv_exr_part_t", !29, i64 0}
!124 = !{!"_priv_exr_context_t", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !117, i64 8, !117, i64 24, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !23, i64 124, !10, i64 128, !10, i64 136, !10, i64 144, !9, i64 152, !10, i64 160, !10, i64 168, !9, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !121, i64 200, !122, i64 464, !123, i64 472, !118, i64 480, !6, i64 504, !6, i64 544, !6, i64 545, !6, i64 546, !7, i64 548}
!125 = !{!124, !10, i64 88}
!126 = !{!124, !10, i64 96}
!127 = !{!15, !11, i64 16}
!128 = !{!15, !7, i64 44}
!129 = !{!15, !7, i64 36}
!130 = !{!15, !7, i64 40}
!131 = !{!15, !7, i64 48}
!132 = !{!15, !7, i64 20}
!133 = !{!15, !10, i64 8}
!134 = !{!45, !11, i64 16}
!135 = !{!45, !10, i64 8}
!136 = !{!45, !7, i64 44}
!137 = !{!45, !7, i64 36}
!138 = !{!45, !7, i64 40}
!139 = !{!45, !7, i64 48}
!140 = distinct !{!140, !44}
!141 = distinct !{!141, !44, !59}
!142 = distinct !{!142, !47}
!143 = distinct !{!143, !47}
!144 = distinct !{!144, !44}
!145 = distinct !{!145, !44}
!146 = distinct !{!146, !44, !59}
!147 = distinct !{!147, !44}
!148 = distinct !{!148, !44}
!149 = distinct !{!149, !44, !59}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !44}
!152 = distinct !{!152, !44}
!153 = distinct !{!153, !44}
!154 = !{!15, !9, i64 184}
!155 = !{!15, !10, i64 168}
!156 = !{!15, !10, i64 104}
!157 = !{ptr @DctCoderChannelData_push_row}
!158 = !{!24, !23, i64 204}
!159 = !{!15, !10, i64 192}
!160 = !{!15, !9, i64 200}
!161 = !{!15, !9, i64 120}
!162 = !{!15, !9, i64 176}
!163 = !{!24, !7, i64 200}
!164 = !{!15, !9, i64 112}
!165 = distinct !{null}
!166 = distinct !{!166, !44}
!167 = distinct !{null}
!168 = distinct !{!168, !44}
!169 = !{!24, !10, i64 64}
!170 = distinct !{!170, !44}
end_hunk_1
