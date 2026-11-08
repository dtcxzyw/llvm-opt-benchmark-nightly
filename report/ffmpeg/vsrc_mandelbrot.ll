Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_mandelbrot?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@request_frame:bb.a
  %i.ln = fpext nsz float %.0394.i to double      ; 4 uses
  %i.lo = zext nneg i32 %i.ll to i64
  %i.lp = add nsw i32 %i.lj, -9
  %i.lq = and i32 %i.lp, -8
  %i.lr = add nuw nsw i32 %i.lq, 8
  %i.ls = add nsw i32 %i.lj, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.az, %.lr.ph.i
  %indvars.iv593.i = phi i32 [ %i.ls, %.lr.ph.i ], [ %indvars.iv.next594.i, %bb.az ] ; 2 uses
  %indvars.iv590.i = phi i32 [ 1, %.lr.ph.i ], [ %indvars.iv.next591.i, %bb.az ] ; 2 uses
  %indvars.iv583.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next584.i, %bb.az ] ; 11 uses
  %.1383508.i = phi double [ %.0382646.i, %.lr.ph.i ], [ %i.qk, %bb.az ] ; 3 uses
  %.1389507.i = phi double [ %.0388643.i, %.lr.ph.i ], [ %i.qm, %bb.az ] ; 3 uses
  %i.lt = fneg nsz double %.1383508.i
  %i.lu = fmul nsz double %.1383508.i, %i.lt
  %i.lv = tail call nsz double @llvm.fmuladd.f64(double %.1389507.i, double %.1389507.i, double %i.lu)
  %i.lw = fmul nsz double %.1389507.i, 2.000000e+00
  %i.lx = tail call nsz double @llvm.fmuladd.f64(double %i.lw, double %.1383508.i, double %i.cc) ; 4 uses
  %i.ly = getelementptr [16 x i8], ptr %i.lm, i64 %indvars.iv583.i ; 10 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store double %i.lx, ptr %i.lz, align 8, !tbaa !28
  %i.ma = fneg nsz double %i.lx
  %i.mb = fmul nsz double %i.lx, %i.ma
  %i.mc = fadd nsz double %i.gb, %i.lv            ; 2 uses
  store double %i.mc, ptr %i.ly, align 8, !tbaa !28
  %i.md = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mf = fmul nsz <2 x double> %i.me, <double 1.000000e+00, double 2.000000e+00>
  %i.mg = insertelement <2 x double> %i.me, double %i.lx, i64 1
  %i.mh = insertelement <2 x double> %i.fv, double %i.mb, i64 0
  %i.mi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.mg, <2 x double> %i.mh) ; 4 uses
  %i.mj = extractelement <2 x double> %i.mi, i64 1 ; 4 uses
  %i.mk = extractelement <2 x double> %i.mi, i64 0
  %i.ml = fadd nsz double %i.gb, %i.mk            ; 5 uses
  br i1 %i.li, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mm = lshr exact i64 %indvars.iv583.i, 1
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.mm
  %i.mo = load <2 x double>, ptr %i.mn, align 8, !tbaa !28
  %i.mp = insertelement <2 x double> %i.mi, double %i.ml, i64 0
  %i.mq = fsub nsz <2 x double> %i.mo, %i.mp
  %i.mr = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.mq)
  %i.ms = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.mr)
  %i.mt = fcmp nsz ugt double %i.ms, %i.ln
  br i1 %i.mt, label %bb.an, label %.thread474.thread.loopexit.split.loop.exit684.i

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store double %i.ml, ptr %i.mu, align 8, !tbaa !28
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  store double %i.mj, ptr %i.mv, align 8, !tbaa !28
  %i.mw = fneg nsz double %i.mj
  %i.mx = fmul nsz double %i.mj, %i.mw
  %i.my = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = fmul nsz <2 x double> %i.mz, <double 1.000000e+00, double 2.000000e+00>
  %i.nb = insertelement <2 x double> %i.mi, double %i.ml, i64 0
  %i.nc = insertelement <2 x double> %i.fv, double %i.mx, i64 0
  %i.nd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %i.nb, <2 x double> %i.nc) ; 3 uses
  %i.ne = extractelement <2 x double> %i.nd, i64 1 ; 3 uses
  %i.nf = extractelement <2 x double> %i.nd, i64 0
  %i.ng = getelementptr i8, ptr %i.ly, i64 32
  %i.nh = getelementptr i8, ptr %i.ly, i64 40
  store double %i.ne, ptr %i.nh, align 8, !tbaa !28
  %i.ni = or disjoint i64 %indvars.iv583.i, 3     ; 2 uses
  %i.nj = fneg nsz double %i.ne
  %i.nk = fmul nsz double %i.ne, %i.nj
  %i.nl = fadd nsz double %i.gb, %i.nf            ; 3 uses
  store double %i.nl, ptr %i.ng, align 8, !tbaa !28
  %i.nm = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.nn = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.no = fmul nsz <2 x double> %i.nn, <double 1.000000e+00, double 2.000000e+00>
  %i.np = insertelement <2 x double> %i.nd, double %i.nl, i64 0
  %i.nq = insertelement <2 x double> %i.fv, double %i.nk, i64 0
  %i.nr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> %i.np, <2 x double> %i.nq) ; 4 uses
  %i.ns = extractelement <2 x double> %i.nr, i64 1 ; 4 uses
  %i.nt = extractelement <2 x double> %i.nr, i64 0
  %i.nu = fadd nsz double %i.gb, %i.nt            ; 5 uses
  br i1 %i.li, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.nv = lshr i64 %i.ni, 1
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.nv
  %i.nx = load <2 x double>, ptr %i.nw, align 8, !tbaa !28
  %i.ny = insertelement <2 x double> %i.nr, double %i.nu, i64 0
  %i.nz = fsub nsz <2 x double> %i.nx, %i.ny
  %i.oa = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nz)
  %i.ob = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.oa)
  %i.oc = fcmp nsz ugt double %i.ob, %i.ln
  br i1 %i.oc, label %bb.ap, label %.thread474.thread.loopexit.split.loop.exit680.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.ni ; 2 uses
  store double %i.nu, ptr %i.od, align 8, !tbaa !28
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store double %i.ns, ptr %i.oe, align 8, !tbaa !28
  %i.of = fneg nsz double %i.ns
  %i.og = fmul nsz double %i.ns, %i.of
  %i.oh = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.oi = shufflevector <2 x double> %i.oh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oj = fmul nsz <2 x double> %i.oi, <double 1.000000e+00, double 2.000000e+00>
  %i.ok = insertelement <2 x double> %i.nr, double %i.nu, i64 0
  %i.ol = insertelement <2 x double> %i.fv, double %i.og, i64 0
  %i.om = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oj, <2 x double> %i.ok, <2 x double> %i.ol) ; 3 uses
  %i.on = extractelement <2 x double> %i.om, i64 1 ; 3 uses
  %i.oo = extractelement <2 x double> %i.om, i64 0
  %i.op = getelementptr i8, ptr %i.ly, i64 64
  %i.oq = getelementptr i8, ptr %i.ly, i64 72
  store double %i.on, ptr %i.oq, align 8, !tbaa !28
  %i.or = or disjoint i64 %indvars.iv583.i, 5     ; 3 uses
  %i.os = fneg nsz double %i.on
  %i.ot = fmul nsz double %i.on, %i.os
  %i.ou = fadd nsz double %i.gb, %i.oo            ; 3 uses
  store double %i.ou, ptr %i.op, align 8, !tbaa !28
  %i.ov = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ox = fmul nsz <2 x double> %i.ow, <double 1.000000e+00, double 2.000000e+00>
  %i.oy = insertelement <2 x double> %i.om, double %i.ou, i64 0
  %i.oz = insertelement <2 x double> %i.fv, double %i.ot, i64 0
  %i.pa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.oy, <2 x double> %i.oz) ; 4 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 1 ; 4 uses
  %i.pc = extractelement <2 x double> %i.pa, i64 0
  %i.pd = fadd nsz double %i.gb, %i.pc            ; 5 uses
  br i1 %i.li, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.pe = lshr i64 %i.or, 1
  %i.pf = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.pe
  %i.pg = load <2 x double>, ptr %i.pf, align 8, !tbaa !28
  %i.ph = insertelement <2 x double> %i.pa, double %i.pd, i64 0
  %i.pi = fsub nsz <2 x double> %i.pg, %i.ph
  %i.pj = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pi)
  %i.pk = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.pj)
  %i.pl = fcmp nsz ugt double %i.pk, %i.ln
  br i1 %i.pl, label %bb.ar, label %.thread474.thread.loopexit.split.loop.exit676.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.or ; 2 uses
  store double %i.pd, ptr %i.pm, align 8, !tbaa !28
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  store double %i.pb, ptr %i.pn, align 8, !tbaa !28
  %i.po = fneg nsz double %i.pb
  %i.pp = fmul nsz double %i.pb, %i.po
  %i.pq = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pr = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ps = fmul nsz <2 x double> %i.pr, <double 1.000000e+00, double 2.000000e+00>
  %i.pt = insertelement <2 x double> %i.pa, double %i.pd, i64 0
  %i.pu = insertelement <2 x double> %i.fv, double %i.pp, i64 0
  %i.pv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> %i.pt, <2 x double> %i.pu) ; 3 uses
  %i.pw = extractelement <2 x double> %i.pv, i64 1 ; 3 uses
  %i.px = extractelement <2 x double> %i.pv, i64 0
  %i.py = getelementptr i8, ptr %i.ly, i64 96
  %i.pz = getelementptr i8, ptr %i.ly, i64 104
  store double %i.pw, ptr %i.pz, align 8, !tbaa !28
  %i.qa = or disjoint i64 %indvars.iv583.i, 7     ; 2 uses
  %i.qb = fneg nsz double %i.pw
  %i.qc = fmul nsz double %i.pw, %i.qb
  %i.qd = fadd nsz double %i.gb, %i.px            ; 3 uses
  store double %i.qd, ptr %i.py, align 8, !tbaa !28
  %i.qe = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.qf = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qg = fmul nsz <2 x double> %i.qf, <double 1.000000e+00, double 2.000000e+00>
  %i.qh = insertelement <2 x double> %i.pv, double %i.qd, i64 0
  %i.qi = insertelement <2 x double> %i.fv, double %i.qc, i64 0
  %i.qj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.qh, <2 x double> %i.qi) ; 3 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 1 ; 7 uses
  %i.ql = extractelement <2 x double> %i.qj, i64 0
  %i.qm = fadd nsz double %i.gb, %i.ql            ; 8 uses
  br i1 %i.li, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qn = lshr i64 %i.qa, 1
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.qn
  %i.qp = load <2 x double>, ptr %i.qo, align 8, !tbaa !28
  %i.qq = insertelement <2 x double> %i.qj, double %i.qm, i64 0
  %i.qr = fsub nsz <2 x double> %i.qp, %i.qq
  %i.qs = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.qr)
  %i.qt = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.qs)
  %i.qu = fcmp nsz ugt double %i.qt, %i.ln
  br i1 %i.qu, label %bb.at, label %.thread474.thread.loopexit.split.loop.exit.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.qa ; 2 uses
  store double %i.qm, ptr %i.qv, align 8, !tbaa !28
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store double %i.qk, ptr %i.qw, align 8, !tbaa !28
  %i.qx = fmul nsz double %i.qk, %i.qk
  %i.qy = tail call nsz double @llvm.fmuladd.f64(double %i.qm, double %i.qm, double %i.qx)
  %i.qz = load double, ptr %i.br, align 8, !tbaa !26 ; 4 uses
  %i.ra = fcmp nsz ogt double %i.qy, %i.qz
  br i1 %i.ra, label %.preheader489.i, label %bb.az

.preheader489.i:                                  ; preds = %bb.at
  %indvars586.le699.i = trunc i64 %indvars.iv583.i to i32 ; 2 uses
  %i.rb = icmp sgt i32 %i.lj, %indvars586.le699.i
  br i1 %i.rb, label %.lr.ph533.preheader.i, label %.thread474.thread.i

.lr.ph533.preheader.i:                            ; preds = %.preheader489.i
  %wide.trip.count598.i = zext nneg i32 %i.lj to i64
  br label %.lr.ph533.i

.lr.ph533.i:                                      ; preds = %bb.ay, %.lr.ph533.preheader.i
  %indvars.iv588.i = phi i64 [ %indvars.iv583.i, %.lr.ph533.preheader.i ], [ %indvars.iv.next589.i, %bb.ay ] ; 3 uses
  %i.rc = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %indvars.iv588.i
  %i.rd = load <2 x double>, ptr %i.rc, align 8, !tbaa !28 ; 5 uses
  %i.re = extractelement <2 x double> %i.rd, i64 1 ; 4 uses
  %i.rf = fmul nsz double %i.re, %i.re
  %i.rg = extractelement <2 x double> %i.rd, i64 0 ; 4 uses
  %i.rh = tail call nsz double @llvm.fmuladd.f64(double %i.rg, double %i.rg, double %i.rf) ; 2 uses
  %i.ri = fcmp nsz ogt double %i.rh, %i.qz
  br i1 %i.ri, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %.lr.ph533.i
  %i.rj = trunc nuw nsw i64 %indvars.iv588.i to i32 ; 5 uses
  %i.rk = load i32, ptr %i.bs, align 8, !tbaa !73
  switch i32 %i.rk, label %.thread474.thread.i [
    i32 0, label %bb.av
    i32 1, label %bb.aw
    i32 2, label %.critedge.i
    i32 3, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.rl = uitofp nsz nneg i32 %i.rj to double     ; 2 uses
  %i.rm = uitofp nneg i32 %i.rj to float
  %i.rn = tail call nsz float @llvm.sin.f32(float %i.rm)
  %i.ro = fadd nnan nsz float %i.rn, 1.000000e+00
  %i.rp = fmul nnan nsz float %i.ro, 1.270000e+02
  %i.rq = tail call i64 @llvm.lrint.i64.f32(float %i.rp)
  %i.rr = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rt = fdiv nsz <2 x double> %i.rs, <double 1.234000e+00, double 1.000000e+02> ; 2 uses
  %i.ru = extractelement <2 x double> %i.rt, i64 0
  %i.rv = fptrunc nsz double %i.ru to float
  %i.rw = tail call nsz float @llvm.sin.f32(float %i.rv)
  %i.rx = fadd nsz float %i.rw, 1.000000e+00
  %i.ry = fmul nsz float %i.rx, 1.270000e+02
  %i.rz = tail call i64 @llvm.lrint.i64.f32(float %i.ry)
  %i.sa = shl nsw i64 %i.rz, 16
  %i.sb = add nsw i64 %i.sa, %i.rq
  %i.sc = extractelement <2 x double> %i.rt, i64 1
  %i.sd = fptrunc nsz double %i.sc to float
  %i.se = tail call nsz float @llvm.sin.f32(float %i.sd)
  %i.sf = fadd nsz float %i.se, 1.000000e+00
  %i.sg = fmul nsz float %i.sf, 1.270000e+02
  %i.sh = tail call i64 @llvm.lrint.i64.f32(float %i.sg)
  %i.si = shl nsw i64 %i.sh, 8
  %i.sj = add nsw i64 %i.sb, %i.si
  %i.sk = trunc i64 %i.sj to i32
  %i.sl = insertelement <2 x double> %i.rd, double %i.rl, i64 0
  br label %.thread474.i

bb.aw:                                            ; preds = %bb.au
  %i.sm = uitofp nsz nneg i32 %i.rj to double
  %i.sn = tail call nsz double @llvm.log.f64(double %i.qz)
  %i.so = tail call nsz double @llvm.log.f64(double %i.rh)
  %i.sp = fdiv nsz double %i.sn, %i.so
  %i.sq = tail call nsz double @llvm.log2.f64(double %i.sp)
  %i.sr = fadd nsz double %i.sq, %i.sm            ; 4 uses
  %i.ss = fptrunc nsz double %i.sr to float
  %i.st = tail call nsz float @llvm.sin.f32(float %i.ss)
  %i.su = fadd nsz float %i.st, 1.000000e+00
  %i.sv = fmul nsz float %i.su, 1.270000e+02
  %i.sw = tail call i64 @llvm.lrint.i64.f32(float %i.sv)
  %i.sx = fdiv nsz double %i.sr, 1.234000e+00
  %i.sy = fptrunc nsz double %i.sx to float
  %i.sz = tail call nsz float @llvm.sin.f32(float %i.sy)
  %i.ta = fadd nsz float %i.sz, 1.000000e+00
  %i.tb = fmul nsz float %i.ta, 1.270000e+02
  %i.tc = tail call i64 @llvm.lrint.i64.f32(float %i.tb)
  %i.td = shl nsw i64 %i.tc, 16
  %i.te = add nsw i64 %i.td, %i.sw
  %i.tf = fdiv nsz double %i.sr, 1.000000e+02
  %i.tg = fptrunc nsz double %i.tf to float
  %i.th = tail call nsz float @llvm.sin.f32(float %i.tg)
  %i.ti = fadd nsz float %i.th, 1.000000e+00
  %i.tj = fmul nsz float %i.ti, 1.270000e+02
  %i.tk = tail call i64 @llvm.lrint.i64.f32(float %i.tj)
  %i.tl = shl nsw i64 %i.tk, 8
  %i.tm = add nsw i64 %i.te, %i.tl
  %i.tn = trunc i64 %i.tm to i32
  %i.to = insertelement <2 x double> %i.rd, double %i.sr, i64 0
  br label %.thread474.i

bb.ax:                                            ; preds = %bb.au
  %i.tp = insertelement <2 x double> poison, double %i.qz, i64 0
  %i.tq = shufflevector <2 x double> %i.tp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tr = fdiv nsz <2 x double> %i.rd, %i.tq      ; 2 uses
  %i.ts = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tr, <2 x double> splat (double 1.280000e+02), <2 x double> splat (double 1.280000e+02)) ; 2 uses
  %i.tt = extractelement <2 x double> %i.ts, i64 0
  %i.tu = fptosi double %i.tt to i32
  %i.tv = shl i32 %i.tu, 8
  %i.tw = and i32 %i.tv, 65280
  %i.tx = extractelement <2 x double> %i.ts, i64 1
  %i.ty = fptosi double %i.tx to i32
  %i.tz = and i32 %i.ty, 255
  %i.ua = or disjoint i32 %i.tw, %i.tz
  br label %.thread474.i

bb.ay:                                            ; preds = %.lr.ph533.i
  %indvars.iv.next589.i = add nuw nsw i64 %indvars.iv588.i, 1 ; 2 uses
  %exitcond599.not.i = icmp eq i64 %indvars.iv.next589.i, %wide.trip.count598.i
  br i1 %exitcond599.not.i, label %.thread474.loopexit.i, label %.lr.ph533.i, !llvm.loop !46

bb.az:                                            ; preds = %bb.at
  %indvars.iv.next584.i = add nuw nsw i64 %indvars.iv583.i, 8 ; 2 uses
  %i.ub = icmp samesign ult i64 %indvars.iv.next584.i, %i.lo
  %indvars.iv.next591.i = add i32 %indvars.iv590.i, 8
  %indvars.iv.next594.i = add i32 %indvars.iv593.i, -8
  br i1 %i.ub, label %bb.al, label %.thread474.thread.i, !llvm.loop !47

.thread474.loopexit.i:                            ; preds = %bb.ay
  %i.uc = add i32 %indvars.iv590.i, %indvars.iv593.i
  br label %.thread474.thread.i

.thread474.i:                                     ; preds = %bb.ax, %bb.aw, %bb.av
  %.3.i = phi i32 [ %i.tn, %bb.aw ], [ %i.ua, %bb.ax ], [ %i.sk, %bb.av ] ; 2 uses
  %i.ud = phi <2 x double> [ %i.to, %bb.aw ], [ %i.tr, %bb.ax ], [ %i.sl, %bb.av ] ; 2 uses
  %.not416.i = icmp eq i32 %.3.i, 0
  %i.ue = extractelement <2 x double> %i.ud, i64 0
  %i.uf = extractelement <2 x double> %i.ud, i64 1
  br i1 %.not416.i, label %.thread474.thread.i, label %.critedge.i

.thread474.thread.loopexit.split.loop.exit.i:     ; preds = %bb.as
  %indvars586.le697.i = trunc i64 %indvars.iv583.i to i32
  %i.ug = or disjoint i32 %indvars586.le697.i, 7
  br label %.thread474.thread.i

.thread474.thread.loopexit.split.loop.exit676.i:  ; preds = %bb.aq
  %i.uh = trunc nuw nsw i64 %i.or to i32
  br label %.thread474.thread.i

.thread474.thread.loopexit.split.loop.exit680.i:  ; preds = %bb.ao
  %indvars586.le695.i = trunc i64 %indvars.iv583.i to i32
  %i.ui = or disjoint i32 %indvars586.le695.i, 3
  br label %.thread474.thread.i

.thread474.thread.loopexit.split.loop.exit684.i:  ; preds = %bb.am
  %indvars586.le.i = trunc i64 %indvars.iv583.i to i32
  %i.uj = or disjoint i32 %indvars586.le.i, 1
  br label %.thread474.thread.i

.thread474.thread.i:                              ; preds = %bb.az, %.thread474.thread.loopexit.split.loop.exit684.i, %.thread474.thread.loopexit.split.loop.exit680.i, %.thread474.thread.loopexit.split.loop.exit676.i, %.thread474.thread.loopexit.split.loop.exit.i, %.thread474.i, %.thread474.loopexit.i, %bb.au, %.preheader489.i, %bb.ak
  %.5387656.i = phi double [ %i.uf, %.thread474.i ], [ %i.re, %bb.au ], [ %.0382646.i, %bb.ak ], [ %i.qk, %.preheader489.i ], [ %i.re, %.thread474.loopexit.i ], [ %i.mj, %.thread474.thread.loopexit.split.loop.exit684.i ], [ %i.qk, %.thread474.thread.loopexit.split.loop.exit.i ], [ %i.pb, %.thread474.thread.loopexit.split.loop.exit676.i ], [ %i.ns, %.thread474.thread.loopexit.split.loop.exit680.i ], [ %i.qk, %bb.az ]
  %.5393655.i = phi double [ %i.ue, %.thread474.i ], [ %i.rg, %bb.au ], [ %.0388643.i, %bb.ak ], [ %i.qm, %.preheader489.i ], [ %i.rg, %.thread474.loopexit.i ], [ %i.ml, %.thread474.thread.loopexit.split.loop.exit684.i ], [ %i.qm, %.thread474.thread.loopexit.split.loop.exit.i ], [ %i.pd, %.thread474.thread.loopexit.split.loop.exit676.i ], [ %i.nu, %.thread474.thread.loopexit.split.loop.exit680.i ], [ %i.qm, %bb.az ]
  %.3398654.i = phi i32 [ %i.rj, %.thread474.i ], [ %i.rj, %bb.au ], [ 0, %bb.ak ], [ %indvars586.le699.i, %.preheader489.i ], [ %i.uc, %.thread474.loopexit.i ], [ %i.uj, %.thread474.thread.loopexit.split.loop.exit684.i ], [ %i.ug, %.thread474.thread.loopexit.split.loop.exit.i ], [ %i.uh, %.thread474.thread.loopexit.split.loop.exit676.i ], [ %i.ui, %.thread474.thread.loopexit.split.loop.exit680.i ], [ %i.lr, %bb.az ] ; 7 uses
  %i.uk = load i32, ptr %i.bo, align 4, !tbaa !72
  switch i32 %i.uk, label %.critedge.i [
    i32 1, label %.preheader.i
    i32 2, label %bb.bc
    i32 3, label %.preheader488.i
  ]

.preheader488.i:                                  ; preds = %.thread474.thread.i
  %i.ul = icmp sgt i32 %.3398654.i, 0
  %.pre622.i.a = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 4 uses
  br i1 %i.ul, label %.lr.ph540.i, label %._crit_edge.i

.lr.ph540.i:                                      ; preds = %.preheader488.i
  %i.um = zext nneg i32 %.3398654.i to i64        ; 4 uses
  %xtraiter = and i64 %i.um, 1
  %i.un = icmp eq i32 %.3398654.i, 1
  br i1 %i.un, label %.epil.preheader, label %.lr.ph540.i.new

.lr.ph540.i.new:                                  ; preds = %.lr.ph540.i
  %unroll_iter = and i64 %i.um, 2147483646
  br label %bb.bd

.preheader.i:                                     ; preds = %.thread474.thread.i
  %i.uo = fmul nsz float %.0394.i, %.0394.i
  %i.up = fmul nsz float %i.uo, 1.000000e+01
  %i.uq = fpext nsz float %i.up to double
  %i.ur = sext i32 %.3398654.i to i64
  %indvars.iv.next605.i299 = add nsw i64 %i.ur, -1 ; 2 uses
  %.not417.i300 = icmp eq i64 %indvars.iv.next605.i299, 0
  br i1 %.not417.i300, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader.i
  %i.us = load ptr, ptr %i.bq, align 8, !tbaa !35
  br label %.lr.ph

bb.ba:                                            ; preds = %.lr.ph
  %indvars.iv.next605.i = add nsw i64 %indvars.iv.next605.i301, -1 ; 2 uses
  %.not417.i = icmp eq i64 %indvars.iv.next605.i, 0
  br i1 %.not417.i, label %.critedge.i, label %.lr.ph, !llvm.loop !48

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ba
  %indvars.iv.next605.i301 = phi i64 [ %indvars.iv.next605.i, %bb.ba ], [ %indvars.iv.next605.i299, %.lr.ph.preheader ] ; 3 uses
  %i.ut = getelementptr inbounds [16 x i8], ptr %i.us, i64 %indvars.iv.next605.i301 ; 2 uses
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !28
  %i.uv = fsub nsz double %i.uu, %.5393655.i      ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !28
  %i.uy = fsub nsz double %i.ux, %.5387656.i      ; 2 uses
  %i.uz = fmul nsz double %i.uy, %i.uy
  %i.va = tail call nsz double @llvm.fmuladd.f64(double %i.uv, double %i.uv, double %i.uz)
  %i.vb = fcmp nsz olt double %i.va, %i.uq
  br i1 %i.vb, label %bb.bb, label %bb.ba, !llvm.loop !48

bb.bb:                                            ; preds = %.lr.ph
  %i.vc = trunc nsw i64 %indvars.iv.next605.i301 to i32
  %i.vd = sub nsw i32 %.3398654.i, %i.vc          ; 3 uses
  %i.ve = shl i32 %i.vd, 5
end_hunk_0
