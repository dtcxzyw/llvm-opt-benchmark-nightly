Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aexciter?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
begin_hunk_0_@filter_frame:bb.a
  store <4 x double> %i.cd, ptr %i.as, align 8, !tbaa !37
  %i.ce = fcmp nsz ult double %i.bq, 0.000000e+00
  br i1 %i.ce, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !39
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !40
  %i.cj = fsub nsz double %i.ci, %i.bq
  %i.ck = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.cj, double %i.cg)
  %i.cl = tail call nsz double @llvm.fabs.f64(double %i.ck) ; 2 uses
  %i.cm = fcmp nsz ogt double %i.cl, 1.000000e-08
  %i.cn = tail call nsz double @llvm.sqrt.f64(double %i.cl)
  %i.co = select nsz i1 %i.cm, double %i.cn, double 0.000000e+00
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !41
  %i.cr = fadd nsz double %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !42
  %i.cu = fmul nsz double %i.ct, %i.cr
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !43
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !63
  %i.cz = fadd nsz double %i.bq, %i.cy
  %i.da = fneg nsz double %i.bq
  %i.db = tail call nsz double @llvm.fmuladd.f64(double %i.da, double %i.cz, double %i.cw)
  %i.dc = tail call nsz double @llvm.fabs.f64(double %i.db) ; 2 uses
  %i.dd = fcmp nsz ogt double %i.dc, 1.000000e-08
  %i.de = tail call nsz double @llvm.sqrt.f64(double %i.dc)
  %i.df = select nsz i1 %i.dd, double %i.de, double 0.000000e+00
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !64
  %i.di = fadd nsz double %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !42
  %i.dl = fneg nsz double %i.dk
  %i.dm = fmul nsz double %i.di, %i.dl
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi nsz double [ %i.cu, %bb.g ], [ %i.dm, %bb.h ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.do = load double, ptr %i.dn, align 8, !tbaa !44
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aq, i64 120 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !65
  %i.dr = fsub nsz double %.0.i, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !66
  %i.du = fadd nsz double %i.dr, %i.dt
  %i.dv = fmul nsz double %i.do, %i.du            ; 3 uses
  %i.dw = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.dv, i64 1 ; 2 uses
  %i.dy = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dx)
  %i.dz = fcmp nsz ogt <2 x double> %i.dy, splat (double 1.000000e-08)
  %i.ea = select <2 x i1> %i.dz, <2 x double> %i.dx, <2 x double> zeroinitializer
  store <2 x double> %i.ea, ptr %i.dp, align 8, !tbaa !37
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aq, i64 248 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  %i.ed = load double, ptr %i.eb, align 8, !tbaa !37
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.eg = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ee, i64 1
  %i.ek = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.eh, <2 x double> %i.ej) ; 4 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = fmul nsz double %i.bj, %i.el
  %i.en = load <2 x double>, ptr %i.ef, align 8, !tbaa !37
  %i.eo = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.eo, <2 x double> %i.en) ; 4 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.er = fmul nsz double %i.bj, %i.eq
  %i.es = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.et = insertelement <4 x double> %i.es, double %i.dv, i64 1
  %i.eu = shufflevector <2 x double> %i.ep, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ev = shufflevector <4 x double> %i.et, <4 x double> %i.eu, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.ew = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ex = insertelement <4 x double> %i.ew, double %i.em, i64 1
  %i.ey = shufflevector <4 x double> %i.ex, <4 x double> %i.eu, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ez = insertelement <4 x double> %i.ey, double %i.er, i64 3
  %i.fa = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bt, <4 x double> %i.ev, <4 x double> %i.ez)
  store <4 x double> %i.fa, ptr %i.eb, align 8, !tbaa !37
  %i.fb = load double, ptr %i.af, align 8, !tbaa !67
  %i.fc = fcmp nsz ult double %i.fb, 1.000000e+04
  br i1 %i.fc, label %distortion_process.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aq, i64 280 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aq, i64 208
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aq, i64 184
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aq, i64 296
  %i.fj = load <2 x double>, ptr %i.fe, align 8, !tbaa !37
  %i.fk = load <2 x double>, ptr %i.ff, align 8, !tbaa !37 ; 2 uses
  %i.fl = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.fl, <2 x double> %i.fj) ; 4 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 0
  %i.fo = load double, ptr %i.fg, align 8, !tbaa !37
  %i.fp = load <2 x double>, ptr %i.fd, align 8, !tbaa !37
  %i.fq = load double, ptr %i.fh, align 8, !tbaa !37 ; 2 uses
  %i.fr = fmul nsz double %i.fn, %i.fq
  %i.fs = load <2 x double>, ptr %i.fi, align 8, !tbaa !37
  %i.ft = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.ft, <2 x double> %i.fs) ; 2 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 0 ; 2 uses
  %i.fw = fmul nsz double %i.fq, %i.fv
  %i.fx = insertelement <2 x double> %i.fp, double %i.fo, i64 1
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fz = shufflevector <2 x double> %i.fm, <2 x double> %i.ep, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ga = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gb = shufflevector <4 x double> %i.fz, <4 x double> %i.ga, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.gc = shufflevector <2 x double> %i.fm, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gd = insertelement <4 x double> %i.gc, double %i.fr, i64 1
  %i.ge = shufflevector <4 x double> %i.gd, <4 x double> %i.ga, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.gf = insertelement <4 x double> %i.ge, double %i.fw, i64 3
  %i.gg = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fy, <4 x double> %i.gb, <4 x double> %i.gf)
  store <4 x double> %i.gg, ptr %i.fe, align 8, !tbaa !37
  br label %distortion_process.exit

distortion_process.exit:                          ; preds = %bb.i, %bb.j
  %.048.i = phi nsz double [ %i.fv, %bb.j ], [ %i.eq, %bb.i ]
  %i.gh = load double, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.gi = fmul nsz double %i.s, %i.gh
  %i.gj = tail call nsz double @llvm.fmuladd.f64(double %.048.i, double %i.o, double %i.gi)
  %i.gk = fmul nsz double %i.m, %i.gj
  %.sink = select i1 %.not54, double %i.gk, double %i.gh
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.04658, i64 %indvars.iv
  store double %.sink, ptr %i.gl, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !47

bb.k:                                             ; preds = %._crit_edge60.split
  call void @av_frame_free(ptr noundef nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge60.split
  %i.gm = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef nonnull %.048) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %.049 = phi i32 [ %i.gm, %bb.l ], [ -12, %bb.c ]
  ret i32 %.049
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @config_input(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @av_calloc(i64 noundef %i.i, i64 noundef 312) #5 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !35
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !69
  %i.s = sitofp nsz i32 %i.r to double            ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.u = fmul nnan nsz double %i.s, 1.000000e-01
  %i.v = tail call nsz double @llvm.fmuladd.f64(double %i.s, double 1.000000e-01, double 1.000000e+00)
  %i.w = fdiv nsz double %i.u, %i.v
  %wide.trip.count = zext nneg i32 %i.m to i64
  %i.x = insertelement <2 x double> poison, double %i.s, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw [312 x i8], ptr %i.k, i64 %indvars.iv ; 18 uses
  %i.aa = load double, ptr %i.o, align 8, !tbaa !70
  %i.ab = load double, ptr %i.p, align 8, !tbaa !71
  %i.ac = fdiv nsz double 1.200000e+01, %i.ab     ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store double %i.ac, ptr %i.ad, align 8, !tbaa !72
  %i.ae = fsub nsz double 1.050000e+01, %i.aa
  %i.af = fdiv nsz double %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = fmul nsz double %i.ac, %i.ac
  %i.ai = tail call nsz double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double -1.000000e+00)
  %i.aj = tail call nsz double @llvm.fabs.f64(double %i.ai) ; 2 uses
  %i.ak = fcmp nsz ogt double %i.aj, 1.000000e-08
  %i.al = tail call nsz double @llvm.sqrt.f64(double %i.aj)
  %i.am = select nsz i1 %i.ak, double %i.al, double 0.000000e+00 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.aq = fmul nsz double %i.ac, 2.000000e+00
  %i.ar = fneg nsz double %i.ac
  %i.as = fmul nsz double %i.aq, %i.ar
  %i.at = tail call nsz double @llvm.fmuladd.f64(double %i.am, double 2.000000e+00, double %i.as)
  %i.au = tail call nsz double @llvm.fabs.f64(double %i.at) ; 2 uses
  %i.av = fcmp nsz ogt double %i.au, 1.000000e-08
  %i.aw = tail call nsz double @llvm.sqrt.f64(double %i.au)
  %i.ax = select nsz i1 %i.av, double %i.aw, double 0.000000e+00
  %i.ay = fmul nsz double %i.af, 7.800000e+02
  %i.az = fadd nsz double %i.am, 1.000000e+00     ; 4 uses
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = insertelement <2 x double> <double 3.300000e+01, double poison>, double %i.ax, i64 1
  %i.bd = fdiv nsz <2 x double> %i.bb, %i.bc      ; 6 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  store double %i.be, ptr %i.ag, align 8, !tbaa !73
  store double %i.az, ptr %i.an, align 8, !tbaa !40
  %i.bf = fsub nsz double 2.000000e+00, %i.az
  %i.bg = fmul nsz double %i.bf, 5.000000e-01
  store double %i.bg, ptr %i.ao, align 8, !tbaa !41
  %i.bh = fneg nsz double %i.az
  %1 = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %2 = extractelement <2 x double> %i.bd, i64 1   ; 2 uses
  store double %2, ptr %1, align 8, !tbaa !74
  %3 = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  store double %i.w, ptr %3, align 8, !tbaa !44
  %4 = insertelement <2 x double> %i.bd, double %i.ac, i64 0 ; 2 uses
  %5 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.bh, i64 0
  %6 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %4, <2 x double> %5) ; 2 uses
  %i.bi = extractelement <2 x double> %6, i64 1   ; 3 uses
  %7 = extractelement <2 x double> %6, i64 0
  %8 = fadd nsz double %7, 1.000000e+00
  %9 = fmul nsz double %8, 5.000000e-01
  store double %9, ptr %i.ap, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store double %i.bi, ptr %i.bj, align 8, !tbaa !75
  %i.bk = tail call nsz double @llvm.fabs.f64(double %i.bi) ; 2 uses
  %i.bl = fcmp nsz ogt double %i.bk, 1.000000e-08
  %i.bm = tail call nsz double @llvm.sqrt.f64(double %i.bk)
  %i.bn = select nsz i1 %i.bl, double %i.bm, double 0.000000e+00
  %i.bo = fmul nsz double %2, 2.000000e+00
  %i.bp = fmul nsz double %i.be, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.br = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bs = fneg nsz <2 x double> %i.bd
  %i.bt = shufflevector <2 x double> %i.br, <2 x double> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.bu = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv nsz <2 x double> %i.bt, %i.bv      ; 3 uses
  %foldExtExtBinop = fmul nsz <2 x double> %i.bd, %i.bd
  %i.bx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.by = fdiv nsz double %i.bx, %i.bi            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store double %i.by, ptr %i.bz, align 8, !tbaa !43
  %i.ca = fmul nsz double %i.by, 4.000000e+00
  %i.cb = extractelement <2 x double> %i.bw, i64 0
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.cb, double 2.000000e+00, double %i.ca)
  %i.cd = fadd nsz double %i.cc, -1.000000e+00
  %i.ce = tail call nsz double @llvm.fabs.f64(double %i.cd) ; 2 uses
  %i.cf = fcmp nsz ogt double %i.ce, 1.000000e-08
  %i.cg = tail call nsz double @llvm.sqrt.f64(double %i.ce)
  %i.ch = select nsz i1 %i.cf, double %i.cg, double 0.000000e+00
  %i.ci = extractelement <2 x double> %i.bw, i64 1
  %i.cj = tail call nsz double @llvm.fmuladd.f64(double %i.ci, double 2.000000e+00, double %i.ch) ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store double %i.cj, ptr %i.ck, align 8, !tbaa !76
  %i.cl = fadd nsz double %i.cj, 1.000000e+00
  %i.cm = fdiv nsz double 2.000000e+00, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  store double %i.cm, ptr %i.cn, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.cp = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.cr = load <2 x double>, ptr %i.t, align 8, !tbaa !37
  store <2 x double> %i.bw, ptr %i.bq, align 8, !tbaa !37
  %i.cs = fmul nsz <2 x double> %i.cr, splat (double f0x401921FB54442D18)
  %i.ct = fdiv nsz <2 x double> %i.cs, %i.y
  %i.cu = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ct) ; 2 uses
  %i.cv = extractvalue { <2 x double>, <2 x double> } %i.cu, 0
  %i.cw = extractvalue { <2 x double>, <2 x double> } %i.cu, 1 ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0 ; 2 uses
  %i.cy = fadd nsz double %i.cx, 1.000000e+00     ; 2 uses
  %i.cz = fmul nsz double %i.cy, 5.000000e-01
  %i.da = fneg nsz double %i.cy
  %i.db = fmul nsz double %i.cx, 2.000000e+00
  %i.dc = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dd = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.da, i64 1
  %i.df = extractelement <2 x double> %i.cw, i64 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  %i.dh = fmul nsz double %i.df, 2.000000e+00
  %i.di = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.dj = fsub nsz double 1.000000e+00, %i.df
  %i.dk = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul nsz <2 x double> %i.dl, <double 1.000000e+00, double 5.000000e-01>
  %i.dn = fdiv nsz <2 x double> %i.cv, splat (double 1.414000e+00) ; 4 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0
  %i.dp = fadd nsz double %i.do, 1.000000e+00
  %i.dq = shufflevector <2 x double> %i.dc, <2 x double> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dr = fadd nsz <2 x double> %i.dq, <double -0.000000e+00, double -1.000000e+00>
  %i.ds = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = fdiv nsz <2 x double> %i.dr, %i.dt
  store <2 x double> %i.du, ptr %i.co, align 8, !tbaa !37
  %i.dv = fdiv nsz <2 x double> %i.de, %i.dt      ; 2 uses
  store <2 x double> %i.dv, ptr %i.cp, align 8, !tbaa !37
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  store double %i.dw, ptr %i.cq, align 8, !tbaa !37
  %i.dx = extractelement <2 x double> %i.dn, i64 1
  %i.dy = fadd nsz double %i.dx, 1.000000e+00
  %i.dz = insertelement <2 x double> %i.dn, double %i.dh, i64 0
  %i.ea = fadd nsz <2 x double> %i.dz, <double -0.000000e+00, double -1.000000e+00>
  %i.eb = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = fdiv nsz <2 x double> %i.ea, %i.ec
  store <2 x double> %i.ed, ptr %i.dg, align 8, !tbaa !37
  %i.ee = fdiv nsz <2 x double> %i.dm, %i.ec      ; 2 uses
  %10 = extractelement <2 x double> %i.ee, i64 1
  store double %10, ptr %i.di, align 8, !tbaa !37
  %11 = getelementptr inbounds nuw i8, ptr %i.z, i64 200
  store <2 x double> %i.ee, ptr %11, align 8, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !68

.loopexit:                                        ; preds = %bb.c, %.preheader, %bb.b
  %.016 = phi i32 [ -12, %bb.b ], [ 0, %.preheader ], [ 0, %bb.c ]
  ret i32 %.016
}

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #2

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!23 = !{!"AVRational", !6, i64 0, !6, i64 4}
!24 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!25 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!26 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!27 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!28 = !{!"AVFilterFormatsConfig", !26, i64 0, !26, i64 8, !27, i64 16, !26, i64 24, !26, i64 32, !26, i64 40}
!29 = !{!"AVFilterLink", !22, i64 0, !13, i64 8, !22, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !24, i64 72, !23, i64 96, !25, i64 104, !6, i64 112, !6, i64 116, !28, i64 120, !28, i64 168}
!30 = !{!29, !22, i64 16}
!31 = !{!"double", !5, i64 0}
!32 = !{!"p1 _ZTS13ChannelParams", !9, i64 0}
!33 = !{!"AExciterContext", !10, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !6, i64 64, !32, i64 72}
!34 = !{!29, !6, i64 76}
!35 = !{!33, !32, i64 72}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!31, !31, i64 0}
!38 = !{!"ChannelParams", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !31, i64 104, !31, i64 112, !31, i64 120, !31, i64 128, !5, i64 136, !5, i64 176, !5, i64 216, !5, i64 280}
!39 = !{!38, !31, i64 64}
!40 = !{!38, !31, i64 32}
!41 = !{!38, !31, i64 40}
!42 = !{!38, !31, i64 112}
!43 = !{!38, !31, i64 72}
!44 = !{!38, !31, i64 96}
!45 = !{!18, !15, i64 32}
!46 = distinct !{!46, !36}
!47 = distinct !{!47, !36}
!48 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!18, !15, i64 56}
!51 = !{!12, !12, i64 0}
!52 = !{!33, !31, i64 8}
!53 = !{!33, !31, i64 16}
!54 = !{!33, !31, i64 24}
!55 = !{!33, !6, i64 64}
!56 = !{!"p2 omnipotent char", !14, i64 0}
!57 = !{!"long", !5, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!60 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !23, i64 124, !57, i64 136, !57, i64 144, !23, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !58, i64 248, !6, i64 256, !25, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !57, i64 304, !59, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !9, i64 376, !24, i64 384, !57, i64 408, !6, i64 416}
!61 = !{!60, !6, i64 112}
!62 = !{!18, !6, i64 104}
!63 = !{!38, !31, i64 48}
!64 = !{!38, !31, i64 56}
!65 = !{!38, !31, i64 120}
!66 = !{!38, !31, i64 128}
!67 = !{!33, !31, i64 56}
!68 = distinct !{!68, !36}
!69 = !{!29, !6, i64 64}
!70 = !{!33, !31, i64 40}
!71 = !{!33, !31, i64 32}
!72 = !{!38, !31, i64 16}
!73 = !{!38, !31, i64 24}
!74 = !{!38, !31, i64 88}
!75 = !{!38, !31, i64 104}
!76 = !{!38, !31, i64 80}
end_hunk_0
