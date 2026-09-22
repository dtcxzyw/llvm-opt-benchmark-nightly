Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_solver?download=true
inline.NumInlined: 1025
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZNK2cv4usac26AffineNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.r, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !83     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.y = icmp eq ptr %i.v, %i.x
  %i.z = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.y, label %.preheader219, label %.preheader222

.preheader222:                                    ; preds = %bb.h
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader222
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.k

.preheader219:                                    ; preds = %bb.h
  br i1 %i.z, label %.lr.ph231, label %.loopexit

.lr.ph231:                                        ; preds = %.preheader219
  %i.aa = load i8, ptr %i.f, align 8, !tbaa !118, !range !68, !noundef !69
  %i.ab = trunc nuw i8 %i.aa to i1
  %wide.trip.count253 = zext nneg i32 %2 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph231, %.preheader218
  %.sroa.85.0 = phi double [ 0.000000e+00, %.lr.ph231 ], [ %i.ci, %.preheader218 ]
  %.sroa.149.0 = phi double [ 0.000000e+00, %.lr.ph231 ], [ %i.dc, %.preheader218 ]
  %indvars.iv250 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next251, %.preheader218 ] ; 3 uses
  %i.ac = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.bf, %.preheader218 ]
  %i.ad = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.br, %.preheader218 ]
  %i.ae = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.bu, %.preheader218 ]
  %i.af = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.bp, %.preheader218 ]
  %i.ag = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.bx, %.preheader218 ]
  %i.ah = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cg, %.preheader218 ]
  %i.ai = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cm, %.preheader218 ]
  %i.aj = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.da, %.preheader218 ]
  %i.ak = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cd, %.preheader218 ]
  %i.al = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.cv, %.preheader218 ]
  %i.am = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.dg, %.preheader218 ]
  %i.an = phi <2 x double> [ zeroinitializer, %.lr.ph231 ], [ %i.ct, %.preheader218 ]
  %i.ao = trunc nuw nsw i64 %indvars.iv250 to i32
  br i1 %i.ab, label %.preheader218, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %1, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv250
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !52
  br label %.preheader218

.preheader218:                                    ; preds = %bb.i, %bb.j
  %.in186 = phi i32 [ %i.ar, %bb.j ], [ %i.ao, %bb.i ]
  %i.as = shl nsw i32 %.in186, 2
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.at ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.au, i64 12
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !67
  %i.az = fpext float %i.aw to double             ; 3 uses
  %i.ba = fpext float %i.ay to double             ; 4 uses
  %i.bb = load <2 x float>, ptr %i.au, align 4, !tbaa !67
  %i.bc = fpext <2 x float> %i.bb to <2 x double> ; 11 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.be = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.bc, <2 x double> zeroinitializer)
  %i.bf = fadd <2 x double> %i.ac, %i.be          ; 2 uses
  %i.bg = extractelement <2 x double> %i.bc, i64 0 ; 2 uses
  %i.bh = extractelement <2 x double> %i.bc, i64 1 ; 4 uses
  %i.bi = fmul double %i.ba, 0.000000e+00         ; 2 uses
  %i.bj = fadd <2 x double> %i.bc, zeroinitializer ; 2 uses
  %i.bk = fmul <2 x double> %i.bc, zeroinitializer ; 4 uses
  %i.bl = insertelement <2 x double> %i.bc, double 0.000000e+00, i64 0
  %i.bm = insertelement <2 x double> %i.bk, double 0.000000e+00, i64 1
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bl, <2 x double> %i.bm) ; 2 uses
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.bp = fadd <2 x double> %i.af, %i.bo          ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bj, <2 x double> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.br = fadd <2 x double> %i.ad, %i.bq          ; 2 uses
  %i.bs = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.bk, <2 x i32> <i32 3, i32 1>
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> zeroinitializer, <2 x double> %i.bs)
  %i.bu = fadd <2 x double> %i.ae, %i.bt          ; 2 uses
  %i.bv = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> zeroinitializer, <2 x double> %i.bk)
  %i.bx = fadd <2 x double> %i.ag, %i.bw          ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bz, <2 x double> %i.cb)
  %i.cd = fadd <2 x double> %i.ak, %i.cc          ; 2 uses
  %i.ce = fadd <2 x double> %i.bk, zeroinitializer ; 2 uses
  %i.cf = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cg = fadd <2 x double> %i.ah, %i.cf          ; 2 uses
  %i.ch = extractelement <2 x double> %i.ce, i64 1
  %i.ci = fadd double %.sroa.85.0, %i.ch          ; 2 uses
  %i.cj = fadd double %i.bi, %i.az
  %i.ck = fmul <2 x double> %i.bd, %i.bc
  %i.cl = fadd <2 x double> %i.ck, <double -0.000000e+00, double 0.000000e+00>
  %i.cm = fadd <2 x double> %i.ai, %i.cl          ; 2 uses
  %i.cn = fadd double %i.bg, 0.000000e+00
  %i.co = fmul double %i.bg, %i.ba
  %i.cp = insertelement <2 x double> %i.bv, double %i.az, i64 1
  %i.cq = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.co, i64 1
  %i.cr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> zeroinitializer, <2 x double> %i.cq) ; 2 uses
  %i.cs = insertelement <2 x double> %i.cr, double %i.cn, i64 1
  %i.ct = fadd <2 x double> %i.an, %i.cs          ; 2 uses
  %i.cu = insertelement <2 x double> %i.cr, double %i.cj, i64 0
  %i.cv = fadd <2 x double> %i.al, %i.cu          ; 2 uses
  %i.cw = fadd double %i.bh, 0.000000e+00
  %i.cx = fmul double %i.bh, %i.bh
  %i.cy = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.cz = insertelement <2 x double> %i.cy, double %i.cw, i64 1
  %i.da = fadd <2 x double> %i.aj, %i.cz          ; 2 uses
  %i.db = fmul double %i.bh, %i.ba
  %i.dc = fadd double %.sroa.149.0, 1.000000e+00  ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %i.db, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.ba, i64 1
  %i.df = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> zeroinitializer, <2 x double> %i.de)
  %i.dg = fadd <2 x double> %i.am, %i.df          ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond254.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count253
  br i1 %exitcond254.not, label %.loopexit.loopexit, label %bb.i, !llvm.loop !229

bb.k:                                             ; preds = %.lr.ph, %.loopexit221
  %.sroa.149.1 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.149.2, %.loopexit221 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit221 ] ; 4 uses
  %i.dh = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gq, %.loopexit221 ] ; 2 uses
  %i.di = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gr, %.loopexit221 ] ; 2 uses
  %i.dj = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gs, %.loopexit221 ] ; 2 uses
  %i.dk = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gt, %.loopexit221 ] ; 2 uses
  %i.dl = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gu, %.loopexit221 ] ; 2 uses
  %i.dm = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gv, %.loopexit221 ] ; 2 uses
  %i.dn = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gw, %.loopexit221 ] ; 2 uses
  %i.do = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gx, %.loopexit221 ] ; 2 uses
  %i.dp = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gy, %.loopexit221 ] ; 2 uses
  %i.dq = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.gz, %.loopexit221 ] ; 2 uses
  %i.dr = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ha, %.loopexit221 ] ; 2 uses
  %i.ds = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hb, %.loopexit221 ] ; 2 uses
  %i.dt = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.hc, %.loopexit221 ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.dv = load double, ptr %i.du, align 8, !tbaa !61 ; 7 uses
  %i.dw = fcmp olt double %i.dv, f0x3E80000000000000
  br i1 %i.dw, label %.loopexit221, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load i8, ptr %i.f, align 8, !tbaa !118, !range !68, !noundef !69
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.dy, label %.preheader220, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = load ptr, ptr %1, align 8, !tbaa !65
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !52
  br label %.preheader220

.preheader220:                                    ; preds = %bb.l, %bb.m
  %.in = phi i32 [ %i.ec, %bb.m ], [ %i.dz, %bb.l ]
  %i.ed = shl nsw i32 %.in, 2
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ee ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load <2 x float>, ptr %i.ef, align 4, !tbaa !67
  %i.ei = fpext <2 x float> %i.eh to <2 x double>
  %i.ej = insertelement <2 x double> poison, double %i.dv, i64 0 ; 2 uses
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.el = fmul <2 x double> %i.ek, %i.ei          ; 9 uses
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.en = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.el, <2 x double> zeroinitializer)
  %i.eo = fadd <2 x double> %i.dh, %i.en
  %i.ep = extractelement <2 x double> %i.el, i64 0
  %i.eq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.dv, i64 0
  %i.er = extractelement <2 x double> %i.el, i64 1
  %i.es = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.et = insertelement <2 x double> %i.es, double %i.dv, i64 1 ; 4 uses
  %i.eu = fmul <2 x double> %i.et, zeroinitializer ; 4 uses
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> zeroinitializer, <2 x double> %i.eu)
  %i.ew = fadd <2 x double> %i.dj, %i.ev
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.et, <2 x double> zeroinitializer)
  %i.ey = fadd <2 x double> %i.dk, %i.ex
  %i.ez = shufflevector <2 x double> %i.el, <2 x double> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.fa = fmul <2 x double> %i.ez, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.fb = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.fc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.eq, <2 x double> %i.fb)
  %i.fd = fadd <2 x double> %i.di, %i.fc
  %i.fe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> zeroinitializer, <2 x double> %i.fa)
  %i.ff = fadd <2 x double> %i.dl, %i.fe
  %i.fg = extractelement <2 x double> %i.eu, i64 1
  %i.fh = insertelement <2 x double> %i.ej, double 0.000000e+00, i64 1 ; 2 uses
  %i.fi = shufflevector <2 x double> %i.fa, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.fh, <2 x double> %i.fi)
  %i.fk = fadd <2 x double> %i.dm, %i.fj
  %i.fl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> zeroinitializer, <2 x double> %i.eu)
  %i.fm = fadd <2 x double> %i.dn, %i.fl
  %i.fn = fmul <2 x double> %i.em, %i.el
  %i.fo = fadd <2 x double> %i.fn, <double -0.000000e+00, double 0.000000e+00>
  %i.fp = fadd <2 x double> %i.do, %i.fo
  %i.fq = fmul double %i.ep, %i.dv
  %i.fr = fadd double %i.fq, 0.000000e+00
  %i.fs = call double @llvm.fmuladd.f64(double %i.er, double 0.000000e+00, double %i.fg)
  %i.ft = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fr, i64 1
  %i.fv = fadd <2 x double> %i.dt, %i.fu
  %i.fw = load <2 x float>, ptr %i.eg, align 4, !tbaa !67
  %i.fx = fpext <2 x float> %i.fw to <2 x double>
  %i.fy = fmul <2 x double> %i.ek, %i.fx          ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ga = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gb = shufflevector <2 x double> %i.el, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.gc = fmul <2 x double> %i.ga, %i.gb          ; 2 uses
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.fz, <2 x double> %i.gd)
  %i.gf = fadd <2 x double> %i.dq, %i.ge
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fz, <2 x double> %i.gc)
  %i.gh = fadd <2 x double> %i.dr, %i.gg
  %i.gi = fmul <2 x double> %i.es, %i.et
  %i.gj = fadd <2 x double> %i.gi, <double -0.000000e+00, double 0.000000e+00>
  %i.gk = fadd <2 x double> %i.dp, %i.gj
  %i.gl = fmul double %i.dv, %i.dv
  %i.gm = fadd double %.sroa.149.1, %i.gl
  %i.gn = fmul <2 x double> %i.ga, %i.et
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> zeroinitializer, <2 x double> %i.gn)
  %i.gp = fadd <2 x double> %i.ds, %i.go
  br label %.loopexit221

.loopexit221:                                     ; preds = %.preheader220, %bb.k
  %.sroa.149.2 = phi double [ %.sroa.149.1, %bb.k ], [ %i.gm, %.preheader220 ] ; 2 uses
  %i.gq = phi <2 x double> [ %i.dh, %bb.k ], [ %i.eo, %.preheader220 ] ; 2 uses
  %i.gr = phi <2 x double> [ %i.di, %bb.k ], [ %i.fd, %.preheader220 ] ; 2 uses
  %i.gs = phi <2 x double> [ %i.dj, %bb.k ], [ %i.ew, %.preheader220 ] ; 2 uses
  %i.gt = phi <2 x double> [ %i.dk, %bb.k ], [ %i.ey, %.preheader220 ] ; 2 uses
  %i.gu = phi <2 x double> [ %i.dl, %bb.k ], [ %i.ff, %.preheader220 ] ; 2 uses
  %i.gv = phi <2 x double> [ %i.dm, %bb.k ], [ %i.fk, %.preheader220 ] ; 2 uses
  %i.gw = phi <2 x double> [ %i.dn, %bb.k ], [ %i.fm, %.preheader220 ] ; 2 uses
  %i.gx = phi <2 x double> [ %i.do, %bb.k ], [ %i.fp, %.preheader220 ] ; 2 uses
  %i.gy = phi <2 x double> [ %i.dp, %bb.k ], [ %i.gk, %.preheader220 ] ; 2 uses
  %i.gz = phi <2 x double> [ %i.dq, %bb.k ], [ %i.gf, %.preheader220 ] ; 2 uses
  %i.ha = phi <2 x double> [ %i.dr, %bb.k ], [ %i.gh, %.preheader220 ] ; 2 uses
  %i.hb = phi <2 x double> [ %i.ds, %bb.k ], [ %i.gp, %.preheader220 ] ; 2 uses
  %i.hc = phi <2 x double> [ %i.dt, %bb.k ], [ %i.fv, %.preheader220 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !230

.loopexit.loopexit:                               ; preds = %.preheader218
  %i.hd = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ci, i64 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit221, %.loopexit.loopexit, %.preheader222, %.preheader219
  %.sroa.149.3 = phi double [ 0.000000e+00, %.preheader222 ], [ 0.000000e+00, %.preheader219 ], [ %i.dc, %.loopexit.loopexit ], [ %.sroa.149.2, %.loopexit221 ]
  %i.he = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bf, %.loopexit.loopexit ], [ %i.gq, %.loopexit221 ] ; 2 uses
  %i.hf = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.br, %.loopexit.loopexit ], [ %i.gr, %.loopexit221 ] ; 3 uses
  %i.hg = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bu, %.loopexit.loopexit ], [ %i.gs, %.loopexit221 ] ; 3 uses
  %i.hh = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bp, %.loopexit.loopexit ], [ %i.gt, %.loopexit221 ] ; 2 uses
  %i.hi = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.bx, %.loopexit.loopexit ], [ %i.gu, %.loopexit221 ] ; 3 uses
  %i.hj = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cg, %.loopexit.loopexit ], [ %i.gv, %.loopexit221 ] ; 2 uses
  %i.hk = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.hd, %.loopexit.loopexit ], [ %i.gw, %.loopexit221 ] ; 3 uses
  %i.hl = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cm, %.loopexit.loopexit ], [ %i.gx, %.loopexit221 ] ; 2 uses
  %i.hm = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.da, %.loopexit.loopexit ], [ %i.gy, %.loopexit221 ] ; 2 uses
  %i.hn = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cd, %.loopexit.loopexit ], [ %i.gz, %.loopexit221 ]
  %i.ho = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.cv, %.loopexit.loopexit ], [ %i.ha, %.loopexit221 ]
  %i.hp = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.dg, %.loopexit.loopexit ], [ %i.hb, %.loopexit221 ]
  %i.hq = phi <2 x double> [ zeroinitializer, %.preheader222 ], [ zeroinitializer, %.preheader219 ], [ %i.ct, %.loopexit.loopexit ], [ %i.hc, %.loopexit221 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %10, i8 0, i64 48, i1 false), !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store <2 x double> %i.he, ptr %12, align 16, !tbaa !61
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x double> %i.hf, ptr %i.hr, align 16, !tbaa !61
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 32
  store <2 x double> %i.hg, ptr %i.hs, align 16, !tbaa !61
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.hu = extractelement <2 x double> %i.he, i64 1
  store double %i.hu, ptr %i.ht, align 16, !tbaa !61
  %i.hv = getelementptr inbounds nuw i8, ptr %12, i64 56
  store <2 x double> %i.hh, ptr %i.hv, align 8, !tbaa !61
  %i.hw = getelementptr inbounds nuw i8, ptr %12, i64 72
  store <2 x double> %i.hi, ptr %i.hw, align 8, !tbaa !61
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.hy = extractelement <2 x double> %i.hq, i64 0 ; 2 uses
  store double %i.hy, ptr %i.hx, align 8, !tbaa !61
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.ia = shufflevector <2 x double> %i.hf, <2 x double> %i.hh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ia, ptr %i.hz, align 16, !tbaa !61
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 112
  store <2 x double> %i.hj, ptr %i.ib, align 16, !tbaa !61
  %i.ic = getelementptr inbounds nuw i8, ptr %12, i64 128
  store <2 x double> %i.hk, ptr %i.ic, align 16, !tbaa !61
  %i.id = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.ie = shufflevector <2 x double> %i.hf, <2 x double> %i.hi, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ie, ptr %i.id, align 16, !tbaa !61
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.ig = extractelement <2 x double> %i.hj, i64 1
  store double %i.ig, ptr %i.if, align 16, !tbaa !61
  %i.ih = getelementptr inbounds nuw i8, ptr %12, i64 168
  store <2 x double> %i.hl, ptr %i.ih, align 8, !tbaa !61
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 184
  %i.ij = extractelement <2 x double> %i.hq, i64 1 ; 2 uses
  store double %i.ij, ptr %i.ii, align 8, !tbaa !61
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 192
  %i.il = shufflevector <2 x double> %i.hg, <2 x double> %i.hi, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.il, ptr %i.ik, align 16, !tbaa !61
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 208
  %i.in = shufflevector <2 x double> %i.hk, <2 x double> %i.hl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.in, ptr %i.im, align 16, !tbaa !61
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 224
  store <2 x double> %i.hm, ptr %i.io, align 16, !tbaa !61
  %i.ip = getelementptr inbounds nuw i8, ptr %12, i64 240
  %i.iq = extractelement <2 x double> %i.hg, i64 1
  store double %i.iq, ptr %i.ip, align 16, !tbaa !61
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 248
  store double %i.hy, ptr %i.ir, align 8, !tbaa !61
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 256
  %i.it = extractelement <2 x double> %i.hk, i64 1
  store double %i.it, ptr %i.is, align 16, !tbaa !61
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 264
  store double %i.ij, ptr %i.iu, align 8, !tbaa !61
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 272
  %i.iw = extractelement <2 x double> %i.hm, i64 1
  store double %i.iw, ptr %i.iv, align 16, !tbaa !61
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 280
  store double %.sroa.149.3, ptr %i.ix, align 8, !tbaa !61
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 -1056833530, ptr %11, align 8, !tbaa !78
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %12, ptr %i.iz, align 8, !tbaa !79
  store i64 25769803782, ptr %i.iy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store <2 x double> %i.hn, ptr %14, align 16, !tbaa !61
  %i.ja = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <2 x double> %i.ho, ptr %i.ja, align 16, !tbaa !61
  %i.jb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store <2 x double> %i.hp, ptr %i.jb, align 16, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 -1056833530, ptr %13, align 8, !tbaa !78
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %14, ptr %i.jd, align 8, !tbaa !79
  store i64 25769803777, ptr %i.jc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 -1040056314, ptr %15, align 8, !tbaa !78
  store ptr %10, ptr %i.je, align 8, !tbaa !79
  %i.jf = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 25769803777, ptr %i.jf, align 8
  %i.jg = invoke noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 0)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %i.jg, label %bb.p, label %bb.x

bb.o:                                             ; preds = %.loopexit
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.y

bb.p:                                             ; preds = %bb.n
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jj = load <2 x double>, ptr %i.ji, align 16
  %i.jk = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.jl = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !61
  %i.jn = load ptr, ptr %i.o, align 8, !tbaa !82
  %.not217 = icmp eq ptr %i.jn, null              ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.sel147 = select i1 %.not217, ptr %i.jo, ptr %7
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.sroa.sel = select i1 %.not217, ptr %i.jp, ptr %8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.jq = load double, ptr %.sroa.sel147, align 8, !tbaa !61 ; 2 uses
  %i.jr = load double, ptr %.sroa.sel, align 8, !tbaa !61 ; 5 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.gep203 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.sel.sroa.sel = select i1 %.not217, ptr %.sroa.gep203, ptr %.sroa.gep
  %i.js = load double, ptr %.sroa.sel.sroa.sel, align 8, !tbaa !61 ; 2 uses
  %i.jt = fmul double %i.js, 0.000000e+00
  %i.ju = fdiv double %i.jt, %i.jr
  %.sroa.gep207 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.gep208 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.sel147.sroa.sel = select i1 %.not217, ptr %.sroa.gep208, ptr %.sroa.gep207
  %i.jv = load double, ptr %.sroa.sel147.sroa.sel, align 8, !tbaa !61 ; 2 uses
  %.sroa.gep209 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.sroa.gep210 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.sroa.sel147.sroa.sel211 = select i1 %.not217, ptr %.sroa.gep210, ptr %.sroa.gep209
  %i.jw = load double, ptr %.sroa.sel147.sroa.sel211, align 8, !tbaa !61 ; 3 uses
  %i.jx = fdiv double %i.js, %i.jr
  %.sroa.gep204 = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.gep205 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.sel.sroa.sel206 = select i1 %.not217, ptr %.sroa.gep205, ptr %.sroa.gep204
  %i.jy = load double, ptr %.sroa.sel.sroa.sel206, align 8, !tbaa !61 ; 2 uses
  %i.jz = fmul double %i.jy, 0.000000e+00
  %i.ka = fdiv double %i.jz, %i.jr
  %i.kb = fdiv double %i.jy, %i.jr
  %i.kc = fmul double %i.jq, 0.000000e+00         ; 2 uses
  %i.kd = call double @llvm.fmuladd.f64(double %i.jv, double 0.000000e+00, double 1.000000e+00)
  %i.ke = call double @llvm.fmuladd.f64(double %i.jw, double 0.000000e+00, double %i.kd)
  %i.kf = load <2 x double>, ptr %10, align 16, !tbaa !61
  %i.kg = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ki = fdiv <2 x double> %i.kf, %i.kh
  %i.kj = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
