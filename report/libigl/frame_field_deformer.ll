Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/frame_field_deformer?download=true
inline.NumInlined: 7666
inline.NumDeleted: 3720
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN3igl20Frame_field_deformer13computeXFieldERSt6vectorIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEESaIS4_EE:bb.a
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.w, 4 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.t, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = load double, ptr %i.ad, align 8, !tbaa !93
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !93
  %i.ah = sext i32 %i.q to i64                    ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ah ; 3 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !93
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.w
  %i.al = load double, ptr %i.ak, align 8, !tbaa !93
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !93
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !72, !noalias !347 ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.r ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.u ; 4 uses
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !89  ; 4 uses
  %i.as = load double, ptr %i.ap, align 8, !tbaa !93
  %i.at = load double, ptr %i.aq, align 8, !tbaa !93
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ar
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i20 = shl nsw i64 %i.ar, 4 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i20
  %i.ax = getelementptr inbounds i8, ptr %i.aq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i20 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ah ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ar
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i20
  %i.bb = fsub double %i.as, %i.at                ; 3 uses
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bc = load double, ptr %i.au, align 8, !tbaa !93
  %i.bd = load double, ptr %i.av, align 8, !tbaa !93
  %i.be = fsub double %i.bc, %i.bd                ; 3 uses
  %.sroa.0.8.vec.insert = insertelement <2 x double> %.sroa.0.0.vec.insert, double %i.be, i64 1 ; 3 uses
  %i.bf = load double, ptr %i.aw, align 8, !tbaa !93
  %i.bg = load double, ptr %i.ax, align 8, !tbaa !93
  %i.bh = insertelement <2 x double> poison, double %i.be, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.bi = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.al, i64 1
  %i.bk = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fsub <2 x double> %i.bj, %i.bl          ; 8 uses
  %i.bn = insertelement <2 x double> poison, double %i.af, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.an, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fsub <2 x double> %i.bo, %i.bq          ; 10 uses
  %i.bs = extractelement <2 x double> %i.bm, i64 1
  %i.bt = extractelement <2 x double> %i.br, i64 1
  %i.bu = fneg double %i.bt                       ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = shufflevector <2 x double> %i.br, <2 x double> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.bx = extractelement <2 x double> %i.br, i64 0
  %i.by = insertelement <2 x double> poison, double %i.x, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.aj, i64 1
  %i.ca = insertelement <2 x double> poison, double %i.y, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fsub <2 x double> %i.bz, %i.cb          ; 8 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.ce = extractelement <2 x double> %i.cc, i64 0
  %i.cf = fmul double %i.ce, %i.bu
  %i.cg = shufflevector <2 x double> %i.br, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ch = extractelement <2 x double> %i.cc, i64 1 ; 2 uses
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.ch, double %i.cf) ; 3 uses
  %i.cj = fmul double %i.ci, %i.bu
  %i.ck = insertelement <2 x double> %i.bv, double %i.ci, i64 0 ; 2 uses
  %i.cl = fneg <2 x double> %i.ck
  %i.cm = fmul <2 x double> %i.cc, %i.cl
  %i.cn = shufflevector <2 x double> %i.cc, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.co = fneg <2 x double> %i.cn                 ; 2 uses
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = fneg double %i.ch                       ; 2 uses
  %i.cr = insertelement <2 x double> %i.cp, double %i.cq, i64 1
  %i.cs = fmul <2 x double> %i.bw, %i.cr
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bm, <2 x double> %i.cs) ; 7 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 1
  %i.cv = tail call noundef double @llvm.fmuladd.f64(double %i.bs, double %i.cu, double %i.cj) ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.cw = shufflevector <2 x double> %i.ct, <2 x double> %i.br, <2 x i32> <i32 1, i32 2>
  %i.cx = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cy = fneg <2 x double> %i.ct
  %i.cz = shufflevector <2 x double> %i.cx, <2 x double> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.da = fmul <2 x double> %i.cw, %i.cz
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ct, <2 x double> %i.da) ; 2 uses
  %i.dc = shufflevector <2 x double> %.sroa.0.0.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dd = shufflevector <2 x double> %i.br, <2 x double> %i.ct, <2 x i32> <i32 1, i32 2>
  %i.de = fmul <2 x double> %i.dd, %i.co
  %i.df = insertelement <2 x double> %i.br, double %i.ci, i64 1
  %i.dg = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dg, <2 x double> %i.de) ; 2 uses
  %i.di = fmul <2 x double> %i.cd, %i.dc          ; 2 uses
  %shift = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.di, %shift
  %shift304 = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop305 = fmul <2 x double> %i.br, %shift304
  %foldExtExtBinop307 = fadd <2 x double> %foldExtExtBinop305, %foldExtExtBinop
  %i.dj = extractelement <2 x double> %foldExtExtBinop307, i64 0
  %i.dk = fdiv double 1.000000e+00, %i.dj         ; 2 uses
  %i.dl = shufflevector <2 x double> %i.ct, <2 x double> %i.br, <2 x i32> <i32 1, i32 2>
  %i.dm = fneg <2 x double> %i.dl
  %i.dn = fmul <2 x double> %i.bm, %i.dm
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.br, <2 x double> %i.dn)
  %i.dp = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dr = fmul <2 x double> %i.do, %i.dq          ; 3 uses
  %i.ds = shufflevector <2 x double> %i.ct, <2 x double> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.bm, <2 x double> %i.cm)
  %i.du = fmul <2 x double> %i.dt, %i.dq          ; 3 uses
  %i.dv = fmul double %i.cv, %i.dk                ; 2 uses
  %i.dw = fmul <2 x double> %i.db, %i.dq          ; 3 uses
  %i.dx = fmul <2 x double> %i.dh, %i.dq          ; 3 uses
  %i.dy = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.dz, %.sroa.0.8.vec.insert
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.0.vec.extract = extractelement <2 x double> %i.dr, i64 0
  %i.eb = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.0.vec.extract to <1 x double>
  %i.ec = shufflevector <1 x double> %i.eb, <1 x double> poison, <2 x i32> zeroinitializer
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.vec.extract = extractelement <2 x double> %i.dr, i64 1
  %i.ed = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.0.8.vec.extract to <1 x double>
  %i.ee = shufflevector <1 x double> %i.ed, <1 x double> poison, <2 x i32> zeroinitializer
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.5.16.vec.extract = extractelement <2 x double> %i.dw, i64 0
  %i.ef = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.5.16.vec.extract to <1 x double>
  %i.eg = shufflevector <1 x double> %i.ef, <1 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x double> %.sroa.0.8.vec.insert, %i.eg
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.5.24.vec.extract = extractelement <2 x double> %i.dw, i64 1
  %i.ei = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.5.24.vec.extract to <1 x double>
  %i.ej = shufflevector <1 x double> %i.ei, <1 x double> poison, <2 x i32> zeroinitializer
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.8.32.vec.extract = extractelement <2 x double> %i.dx, i64 0
  %i.ek = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.8.32.vec.extract to <1 x double>
  %i.el = shufflevector <1 x double> %i.ek, <1 x double> poison, <2 x i32> zeroinitializer
  %i.em = fsub double %i.bf, %i.bg                ; 4 uses
  %i.en = load double, ptr %i.ay, align 8, !tbaa !93
  %i.eo = load double, ptr %i.aq, align 8, !tbaa !93
  %i.ep = fsub double %i.en, %i.eo                ; 3 uses
  %.sroa.6.24.vec.insert = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.eq = load double, ptr %i.az, align 8, !tbaa !93
  %i.er = load double, ptr %i.av, align 8, !tbaa !93
  %i.es = fsub double %i.eq, %i.er                ; 3 uses
  %.sroa.6.32.vec.insert = insertelement <2 x double> %.sroa.6.24.vec.insert, double %i.es, i64 1 ; 3 uses
  %i.et = load double, ptr %i.ba, align 8, !tbaa !93
  %i.eu = load double, ptr %i.ax, align 8, !tbaa !93
  %i.ev = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ew = insertelement <2 x double> poison, double %i.em, i64 0 ; 2 uses
  %i.ex = insertelement <2 x double> %i.ew, double %i.bb, i64 1
  %i.ey = insertelement <2 x double> %i.bh, double %i.em, i64 1
  %i.ez = fneg double %i.ep
  %i.fa = fmul <2 x double> %.sroa.6.32.vec.insert, %i.ec
  %i.fb = fadd <2 x double> %i.ea, %i.fa
  %i.fc = fmul double %i.em, %i.dv
  %i.fd = fmul <2 x double> %.sroa.6.32.vec.insert, %i.ej
  %i.fe = fadd <2 x double> %i.eh, %i.fd
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.8.40.vec.extract = extractelement <2 x double> %i.dx, i64 1
  %i.ff = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.8.40.vec.extract to <1 x double>
  %i.fg = shufflevector <1 x double> %i.ff, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x double> %.sroa.0.8.vec.insert, %i.fg
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.11.48.vec.extract = extractelement <2 x double> %i.du, i64 0
  %i.fi = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.11.48.vec.extract to <1 x double>
  %i.fj = shufflevector <1 x double> %i.fi, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x double> %.sroa.6.32.vec.insert, %i.fj
  %i.fl = fadd <2 x double> %i.fh, %i.fk
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.11.56.vec.extract = extractelement <2 x double> %i.du, i64 1
  %i.fm = bitcast double %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.sroa.11.56.vec.extract to <1 x double>
  %i.fn = shufflevector <1 x double> %i.fm, <1 x double> poison, <2 x i32> zeroinitializer
  %i.fo = fsub double %i.et, %i.eu                ; 3 uses
  %i.fp = insertelement <2 x double> %i.ev, double %i.fo, i64 1
  %i.fq = fneg <2 x double> %i.fp
  %i.fr = fmul <2 x double> %i.ex, %i.fq
  %i.fs = insertelement <2 x double> poison, double %i.fo, i64 0 ; 2 uses
  %i.ft = insertelement <2 x double> %i.fs, double %i.ep, i64 1
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ft, <2 x double> %i.fr) ; 3 uses
  %i.fv = fmul double %i.be, %i.ez
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.es, double %i.fv) ; 2 uses
  %i.fx = fmul <2 x double> %i.fu, %i.ee
  %i.fy = fadd <2 x double> %i.fb, %i.fx          ; 2 uses
  %i.fz = insertelement <2 x double> %i.fs, double %i.fw, i64 1 ; 2 uses
  %i.ga = fmul <2 x double> %i.dr, %i.fz          ; 2 uses
  %shift309 = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop310 = fadd <2 x double> %i.ga, %shift309
  %i.gb = extractelement <2 x double> %foldExtExtBinop310, i64 0
  %i.gc = fadd double %i.fc, %i.gb
  store double %i.gc, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !93
  %i.gd = fmul <2 x double> %i.fu, %i.el
  %i.ge = fadd <2 x double> %i.fe, %i.gd
  store <2 x double> %i.ge, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !97
  %i.gf = insertelement <2 x double> %i.ew, double %i.fo, i64 1
  %i.gg = fmul <2 x double> %i.gf, %i.dw          ; 2 uses
  %i.gh = fmul <2 x double> %i.fu, %i.fn
  %i.gi = fadd <2 x double> %i.fl, %i.gh          ; 2 uses
  %i.gj = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.em, i64 1
  %i.gl = fmul <2 x double> %i.dx, %i.gk          ; 2 uses
  %shift312 = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop313 = fadd <2 x double> %shift312, %i.gl
  %foldExtExtBinop315 = fadd <2 x double> %i.gg, %foldExtExtBinop313
  %i.gm = extractelement <2 x double> %foldExtExtBinop315, i64 0
  store double %i.gm, ptr %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !93
  %i.gn = fmul <2 x double> %i.du, %i.fz          ; 2 uses
  %shift317 = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop318 = fadd <2 x double> %i.gn, %shift317
  %shift320 = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop321 = fadd <2 x double> %shift320, %foldExtExtBinop318 ; 2 uses
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !97 ; 2 uses
  store <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, ptr %.sroa.4, align 16, !tbaa !97
  %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !97 ; 3 uses
  store <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, ptr %.sroa.4.16..sroa_idx334, align 16, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.go = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.gp = getelementptr inbounds nuw [48 x i8], ptr %i.go, i64 %indvars.iv ; 4 uses
  %i.gq = load ptr, ptr %1, align 8, !tbaa !73
  %i.gr = getelementptr inbounds nuw [48 x i8], ptr %i.gq, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i28)
  %i.gs = load <2 x double>, ptr %i.gp, align 16  ; 2 uses
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x double> %i.fy, %i.gt
  %.sroa.4.8..sroa.4.8..sroa.4.24. = load <2 x double>, ptr %.sroa.4.8..sroa_idx333, align 8, !tbaa !97 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gw = load <2 x double>, ptr %i.gv, align 8   ; 2 uses
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x double> %.sroa.4.8..sroa.4.8..sroa.4.24., %i.gx
  %i.gz = fadd <2 x double> %i.gu, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.hb = load <2 x double>, ptr %i.ha, align 16  ; 4 uses
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x double> %i.gi, %i.hc
  %i.he = fadd <2 x double> %i.gz, %i.hd
  %i.hf = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hg = fmul <2 x double> %i.fy, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.hi = load <2 x double>, ptr %i.hh, align 16, !tbaa !93 ; 4 uses
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = shufflevector <2 x double> %foldExtExtBinop321, <2 x double> %i.hi, <2 x i32> <i32 0, i32 2>
  %i.hl = shufflevector <2 x double> %i.hb, <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, <2 x i32> <i32 0, i32 3>
  %i.hm = fmul <2 x double> %i.hk, %i.hl
  %i.hn = shufflevector <2 x double> %i.gw, <2 x double> %foldExtExtBinop321, <2 x i32> <i32 0, i32 2>
  %i.ho = shufflevector <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, <2 x double> %i.hi, <2 x i32> <i32 1, i32 3>
  %i.hp = fmul <2 x double> %i.hn, %i.ho
  %i.hq = fadd <2 x double> %i.hm, %i.hp
  %2 = fmul <2 x double> %.sroa.4.8..sroa.4.8..sroa.4.24., %i.hj
  %3 = fadd <2 x double> %i.hg, %2
  %4 = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hr = fmul <2 x double> %i.gi, %4
  %i.hs = fadd <2 x double> %3, %i.hr
  store <2 x double> %i.hs, ptr %.sroa.4.i.i.i.i28.8.i.i.i.i28.8.i.i.i.i28.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !97
  %5 = shufflevector <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = shufflevector <2 x double> %i.gs, <2 x double> %i.hb, <2 x i32> <i32 0, i32 3>
  %7 = fmul <2 x double> %5, %6
  %8 = fadd <2 x double> %7, %i.hq                ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  store double %9, ptr %.sroa.4.i.i.i.i28, align 16, !tbaa !93
  %i.ht = extractelement <2 x double> %8, i64 1
  store double %i.ht, ptr %.sroa.4.i.i.i.i28.24.i.i.i.i28.24.i.i.i.i28.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !93
  store <2 x double> %i.he, ptr %i.gr, align 16, !tbaa !97
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %.sroa.4.i.i.i.i28.0..sroa.4.i.i.i.i28.0..sroa.4.i.i.i.i28.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i31 = load <2 x double>, ptr %.sroa.4.i.i.i.i28, align 16, !tbaa !97
  store <2 x double> %.sroa.4.i.i.i.i28.0..sroa.4.i.i.i.i28.0..sroa.4.i.i.i.i28.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i31, ptr %i.hu, align 16, !tbaa !97
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %.sroa.4.i.i.i.i28.16..sroa.4.i.i.i.i28.16..sroa.4.i.i.i.i28.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i33 = load <2 x double>, ptr %.sroa.4.i.i.i.i28.16.i.i.i.i28.16.i.i.i.i28.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !97
  store <2 x double> %.sroa.4.i.i.i.i28.16..sroa.4.i.i.i.i28.16..sroa.4.i.i.i.i28.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i33, ptr %i.hv, align 16, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i28)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hw = load i64, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %i.hx = icmp sgt i64 %i.hw, %indvars.iv.next
  br i1 %i.hx, label %bb.b, label %._crit_edge, !llvm.loop !345
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @_ZN3igl25vertex_triangle_adjacencyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEiEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERSt6vectorISE_IT1_SaISF_EESaISH_EESK_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZN3igl9cotmatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl20Frame_field_deformer15precompute_ARAPERN5Eigen12SparseMatrixIdLi0EiEERNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %5 = alloca %"class.Eigen::CwiseBinaryOp.70", align 8 ; 7 uses
  %6 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %7 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %8 = alloca %"class.Eigen::Product", align 8    ; 13 uses
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !117
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.4, i64 24, i64 1, ptr %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %5, align 8, !tbaa !144, !alias.scope !354
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load <2 x i64>, ptr %i.c, align 8, !tbaa !109, !noalias !354
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.f, ptr %i.d, align 8, !alias.scope !354
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double -4.000000e+00, ptr %i.g, align 8, !tbaa !111, !alias.scope !354
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.b, ptr %i.h, align 8, !tbaa !113, !alias.scope !354
  store i8 0, ptr %4, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  invoke void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS3_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(41) %5)
          to label %bb.c unwind label %bb.b

common.resume:                                    ; preds = %bb.ab, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn11.pn.pn.pn, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.k) #27
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  store i8 0, ptr %6, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !145
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.r = shl nsw i64 %i.n, 2
  %i.s = add nsw i64 %i.r, 4
  %calloc39 = call ptr @calloc(i64 1, i64 %i.s)   ; 2 uses
  store ptr %calloc39, ptr %i.q, align 8, !tbaa !76
  %.not6.i = icmp eq ptr %calloc39, null
  br i1 %.not6.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !92
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #27
  br label %.body

bb.f:                                             ; preds = %bb.c
  store i64 %i.n, ptr %i.o, align 8, !tbaa !28
  %i.w = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.g unwind label %bb.w       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !76
  call void @free(ptr noundef %i.y) #27
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !77
  call void @free(ptr noundef %i.z) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !79 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #28
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ag = load i32, ptr %i.l, align 8, !tbaa !105 ; 2 uses
  invoke void @_ZN3igl20Frame_field_deformer12extractBlockERN5Eigen12SparseMatrixIdLi0EiEEiiiiS4_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 0, i32 noundef 0, i32 noundef %i.ag, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ah = load i32, ptr %i.l, align 8, !tbaa !105 ; 3 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !106 ; 2 uses
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  store i8 0, ptr %7, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.am, i8 0, i64 64, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.ai, ptr %i.an, align 8, !tbaa !145
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ap = shl nsw i64 %i.al, 2
  %i.aq = add nsw i64 %i.ap, 4
  %calloc = call ptr @calloc(i64 1, i64 %i.aq)    ; 2 uses
  store ptr %calloc, ptr %i.ao, align 8, !tbaa !76
  %.not6.i25 = icmp eq ptr %calloc, null
  br i1 %.not6.i25, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ar = call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ar, align 8, !tbaa !92
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.at) #27
  br label %.body16

bb.n:                                             ; preds = %bb.k
  store i64 %i.al, ptr %i.am, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 32
  invoke void @_ZN3igl20Frame_field_deformer12extractBlockERN5Eigen12SparseMatrixIdLi0EiEEiiiiS4_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 0, i32 noundef %i.ah, i32 noundef %i.ah, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aw = load i32, ptr %i.l, align 8, !tbaa !105
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = load i32, ptr %i.aj, align 4, !tbaa !106
  %i.az = sext i32 %i.ay to i64
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !72, !noalias !355
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !89, !noalias !355
  store i8 0, ptr %8, align 8, !alias.scope !356
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %7, ptr %i.be, align 8, !tbaa !113, !alias.scope !356
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bb, ptr %i.bf, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.az, ptr %.sroa.5.0..sroa_idx, align 8
end_hunk_0
