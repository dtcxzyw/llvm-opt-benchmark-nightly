Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmscam02?download=true
inline.NumInlined: 19
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cmsCIECAM02Forward:bb.a
  %i.do = fcmp ogt double %i.dl, 0.000000e+00
  br i1 %i.do, label %ComputeCorrelates.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %ComputeCorrelates.exit

bb.m:                                             ; preds = %NonlinearCompression.exit
  %i.dp = fcmp ogt double %i.di, 0.000000e+00
  %i.dq = fdiv double %i.dl, %i.di                ; 3 uses
  br i1 %i.dp, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.dr = fcmp ogt double %i.dl, 0.000000e+00
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ds = tail call double @atan(double noundef %i.dq) #6, !noalias !53
  %i.dt = fmul double %i.ds, f0x404CA5DC1A53B118
  br label %ComputeCorrelates.exit

bb.p:                                             ; preds = %bb.n
  %i.du = fcmp oeq double %i.dl, 0.000000e+00
  br i1 %i.du, label %ComputeCorrelates.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = tail call double @atan(double noundef %i.dq) #6, !noalias !53
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double f0x404CA5DC1A53B118, double 3.600000e+02)
  br label %ComputeCorrelates.exit

bb.r:                                             ; preds = %bb.m
  %i.dx = tail call double @atan(double noundef %i.dq) #6, !noalias !53
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double f0x404CA5DC1A53B118, double 1.800000e+02)
  br label %ComputeCorrelates.exit

ComputeCorrelates.exit:                           ; preds = %bb.p, %bb.k, %bb.j, %bb.r, %bb.q, %bb.o, %bb.l
  %.sroa.37.0 = phi double [ %i.dy, %bb.r ], [ 0.000000e+00, %bb.j ], [ 2.700000e+02, %bb.l ], [ %i.dt, %bb.o ], [ 9.000000e+01, %bb.k ], [ %i.dw, %bb.q ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !19, !noalias !53
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !24, !noalias !53
  %i.ed = insertelement <2 x double> poison, double %.sroa.37.0, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %storemerge.i, i64 1
  %i.ef = insertelement <2 x double> <double 2.000000e+00, double poison>, double %.sink.i, i64 1
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> <double f0x3F91DF46A25CA311, double 2.000000e+00>, <2 x double> %i.ef) ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = tail call double @cos(double noundef %i.eh) #6, !noalias !53
  %i.ej = fdiv double %.sink21.i, 2.000000e+01
  %i.ek = extractelement <2 x double> %i.eg, i64 1
  %i.el = fadd double %i.ek, %i.ej
  %i.em = fadd double %i.el, -3.050000e-01
  %i.en = fmul double %i.da, %i.em
  %i.eo = fmul double %i.ea, f0x408E0C4EC4EC4EC5
  %i.ep = fmul double %i.eo, %i.ec
  %i.eq = fadd double %i.ei, 3.800000e+00
  %i.er = fmul double %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.et = load double, ptr %i.es, align 8, !tbaa !26, !noalias !53 ; 2 uses
  %i.eu = fdiv double %i.en, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !18, !noalias !53 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !21, !noalias !53
  %i.ez = fmul double %i.ew, %i.ey
  %i.fa = tail call double @pow(double noundef %i.eu, double noundef %i.ez) #6, !noalias !53
  %i.fb = fmul double %i.fa, 1.000000e+02         ; 2 uses
  %i.fc = fdiv double 4.000000e+00, %i.ew
  %i.fd = fdiv double %i.fb, 1.000000e+02         ; 2 uses
  %i.fe = tail call double @pow(double noundef %i.fd, double noundef 5.000000e-01) #6, !noalias !53
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = fadd double %i.et, 4.000000e+00
  %i.fh = fmul double %i.fg, %i.ff
  %i.fi = tail call double @pow(double noundef %i.bc, double noundef 2.500000e-01) #6, !noalias !53
  %i.fj = fmul double %i.fi, %i.fh
  %i.fk = fmul double %i.dl, %i.dl
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.di, double %i.di, double %i.fk)
  %i.fm = tail call double @pow(double noundef %i.fl, double noundef 5.000000e-01) #6, !noalias !53
  %i.fn = fmul double %i.er, %i.fm
  %i.fo = tail call double @llvm.fmuladd.f64(double %.sink21.i, double 1.050000e+00, double %i.dj)
  %i.fp = fdiv double %i.fn, %i.fo
  %i.fq = tail call double @pow(double noundef %i.fp, double noundef 9.000000e-01) #6, !noalias !53
  %i.fr = tail call double @pow(double noundef %i.fd, double noundef 5.000000e-01) #6, !noalias !53
  %i.fs = fmul double %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !20, !noalias !53
  %i.fv = tail call double @pow(double noundef 2.900000e-01, double noundef %i.fu) #6, !noalias !53
  %i.fw = fsub double 1.640000e+00, %i.fv
  %i.fx = tail call double @pow(double noundef %i.fw, double noundef 7.300000e-01) #6, !noalias !53
  %i.fy = fmul double %i.fs, %i.fx                ; 2 uses
  %i.fz = tail call double @pow(double noundef %i.bc, double noundef 2.500000e-01) #6, !noalias !53
  %i.ga = fmul double %i.fy, %i.fz
  %i.gb = fdiv double %i.ga, %i.fj
  %i.gc = tail call double @pow(double noundef %i.gb, double noundef 5.000000e-01) #6, !noalias !53 ; 0 uses
  store double %i.fb, ptr %2, align 8, !tbaa !27
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.fy, ptr %i.gd, align 8, !tbaa !28
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.sroa.37.0, ptr %i.ge, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @cmsCIECAM02Reverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.f = fdiv double %i.a, 1.000000e+02           ; 2 uses
  %i.g = tail call double @pow(double noundef %i.f, double noundef 5.000000e-01) #6, !noalias !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load double, ptr %i.h, align 8, !tbaa !20, !noalias !60
  %i.j = tail call double @pow(double noundef 2.900000e-01, double noundef %i.i) #6, !noalias !60
  %i.k = fsub double 1.640000e+00, %i.j
  %i.l = tail call double @pow(double noundef %i.k, double noundef 7.300000e-01) #6, !noalias !60
  %i.m = fmul double %i.g, %i.l
  %i.n = fdiv double %i.c, %i.m
  %i.o = tail call double @pow(double noundef %i.n, double noundef f0x3FF1C71C71C71C72) #6, !noalias !60
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.q = tail call double @llvm.fmuladd.f64(double %i.e, double f0x3F91DF46A25CA311, double 2.000000e+00)
  %i.r = tail call double @cos(double noundef %i.q) #6, !noalias !60
  %i.s = fadd double %i.r, 3.800000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load double, ptr %i.t, align 8, !tbaa !26, !noalias !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !16, !noalias !60
  %i.x = fmul <2 x double> %i.w, <double 1.000000e+00, double f0x408E0C4EC4EC4EC5>
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = load <2 x double>, ptr %i.p, align 8, !tbaa !16, !noalias !60
  %i.aa = fmul <2 x double> %i.y, %i.z            ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = fmul double %i.ab, %i.s
  %i.ad = extractelement <2 x double> %i.aa, i64 1
  %i.ae = fdiv double 1.000000e+00, %i.ad
  %i.af = tail call double @pow(double noundef %i.f, double noundef %i.ae) #6, !noalias !60
  %i.ag = fmul double %i.u, %i.af
  %i.ah = fdiv double %i.ac, %i.o                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !22, !noalias !60
  %i.ak = fdiv double %i.ag, %i.aj
  %i.al = fadd double %i.ak, 3.050000e-01         ; 4 uses
  %i.am = fmul double %i.e, f0x3F91DF46A25CA311   ; 11 uses
  %i.an = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.ao = tail call double @llvm.fabs.f64(double %i.an)
  %i.ap = tail call double @cos(double noundef %i.am) #6, !noalias !60 ; 2 uses
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp ult double %i.ao, %i.aq
  br i1 %i.ar, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.as = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.at = fdiv double %i.ah, %i.as
  %i.au = fmul double %i.al, 3.050000e+00
  %i.av = fmul double %i.au, f0x3FD4FBCDA3AC10C9
  %i.aw = tail call double @cos(double noundef %i.am) #6, !noalias !60
  %i.ax = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.ay = fdiv double %i.aw, %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double f0x3FDE9BD37A6F4DE9, double %i.at)
  %i.ba = fadd double %i.az, f0xBF93B4D2EE4D002F
  %i.bb = fadd double %i.ba, f0x4012DC0DDE0FB12D
  %i.bc = fdiv double %i.av, %i.bb                ; 2 uses
  %i.bd = tail call double @cos(double noundef %i.am) #6, !noalias !60
  %i.be = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.bf = fdiv double %i.bd, %i.be
  %i.bg = fmul double %i.bf, %i.bc
  br label %InverseCorrelates.exit

bb.c:                                             ; preds = %bb.a
  %i.bh = fdiv double %i.ah, %i.ap
  %i.bi = fmul double %i.al, 3.050000e+00
  %i.bj = fmul double %i.bi, f0x3FD4FBCDA3AC10C9
  %i.bk = fadd double %i.bh, f0x3FDE9BD37A6F4DE9
  %i.bl = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.bm = tail call double @cos(double noundef %i.am) #6, !noalias !60
  %i.bn = fdiv double %i.bl, %i.bm
  %i.bo = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.bp = tail call double @cos(double noundef %i.am) #6, !noalias !60
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bn, double f0x4012C8590B21642D, double %i.bk)
  %i.br = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bo, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bp, i64 1
  %i.bv = fdiv <2 x double> %i.bs, %i.bu          ; 3 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0
  %shift = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bv, %shift
  %i.bx = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %InverseCorrelates.exit

InverseCorrelates.exit:                           ; preds = %bb.b, %bb.c
  %.sink38.i = phi double [ %i.bw, %bb.c ], [ %i.bg, %bb.b ] ; 2 uses
  %.sink.i = phi double [ %i.bx, %bb.c ], [ %i.bc, %bb.b ] ; 2 uses
  %i.by = fmul double %.sink38.i, f0x3FD492B3E95FCB73
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3FD4FBCDA3AC10C9, double %i.by)
  %i.ca = tail call double @llvm.fmuladd.f64(double %.sink.i, double f0x3FCA466E93115594, double %i.bz)
  %i.cb = insertelement <2 x double> poison, double %.sink38.i, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x double> %i.cc, <double f0xBFC4123F221F04ED, double f0xBFE4527985BF6830>
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !23, !noalias !61
  %i.cg = fdiv double 1.000000e+02, %i.cf         ; 2 uses
  %i.ch = fneg double %i.cg
  %i.ci = fadd double %i.ca, -1.000000e-01        ; 2 uses
  %i.cj = fcmp olt double %i.ci, 0.000000e+00
  %i.ck = insertelement <2 x double> poison, double %i.al, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> splat (double f0x3FD4FBCDA3AC10C9), <2 x double> %i.cd)
  %i.cn = insertelement <2 x double> poison, double %.sink.i, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> <double f0xC011F6259688D980, double f0xBFC7CFD43547B58E>, <2 x double> %i.cm)
  %i.cq = fadd <2 x double> %i.cp, splat (double -1.000000e-01) ; 3 uses
  %i.cr = fcmp olt <2 x double> %i.cq, zeroinitializer
  %i.cs = insertelement <2 x double> %i.cq, double %i.ci, i64 0
  %i.ct = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cs) ; 2 uses
  %i.cu = fmul <2 x double> %i.ct, splat (double 2.713000e+01)
  %i.cv = fsub <2 x double> splat (double 4.000000e+02), %i.ct
  %i.cw = fdiv <2 x double> %i.cu, %i.cv          ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = tail call double @pow(double noundef %i.cx, double noundef f0x40030C30C30C30C3) #6, !noalias !61
  %i.cz = extractelement <2 x double> %i.cw, i64 1
  %i.da = tail call double @pow(double noundef %i.cz, double noundef f0x40030C30C30C30C3) #6, !noalias !61
  %i.db = extractelement <2 x double> %i.cq, i64 0
  %i.dc = tail call double @llvm.fabs.f64(double %i.db) ; 2 uses
  %i.dd = fmul double %i.dc, 2.713000e+01
  %i.de = fsub double 4.000000e+02, %i.dc
  %i.df = fdiv double %i.dd, %i.de
  %i.dg = tail call double @pow(double noundef %i.df, double noundef f0x40030C30C30C30C3) #6, !noalias !61
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load double, ptr %i.dh, align 8, !tbaa !16, !noalias !62
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !17, !noalias !62 ; 3 uses
  %i.dl = fmul double %i.di, %i.dk                ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.do = load double, ptr %i.dn, align 8, !tbaa !16, !noalias !62
  %i.dp = load <2 x double>, ptr %i.dm, align 8, !tbaa !16, !noalias !62
  %i.dq = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fdiv <2 x double> %i.dr, %i.dp          ; 2 uses
  %i.dt = fdiv double %i.dl, %i.do
  %i.du = extractelement <2 x double> %i.ds, i64 1
  %i.dv = fadd double %i.du, 1.000000e+00
  %i.dw = fsub double %i.dv, %i.dk
  %3 = shufflevector <2 x i1> %i.cr, <2 x i1> poison, <3 x i32> <i32 0, i32 poison, i32 1>
  %4 = insertelement <3 x i1> %3, i1 %i.cj, i64 1
  %5 = insertelement <3 x double> poison, double %i.ch, i64 0
  %6 = shufflevector <3 x double> %5, <3 x double> poison, <3 x i32> zeroinitializer
  %7 = insertelement <3 x double> poison, double %i.cg, i64 0
  %8 = shufflevector <3 x double> %7, <3 x double> poison, <3 x i32> zeroinitializer
  %9 = select <3 x i1> %4, <3 x double> %6, <3 x double> %8
  %10 = insertelement <3 x double> poison, double %i.dg, i64 0
  %11 = insertelement <3 x double> %10, double %i.cy, i64 1
  %12 = insertelement <3 x double> %11, double %i.da, i64 2
  %13 = fmul <3 x double> %9, %12                 ; 6 uses
  %14 = extractelement <3 x double> %13, i64 2
  %15 = fmul double %14, f0x3FFD9ADE4046FFDE
  %16 = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.dx = fmul <2 x double> %16, <double f0xBFE16E5EA75C2336, double f0x3F756044DD566727>
  %17 = extractelement <3 x double> %13, i64 1
  %18 = tail call double @llvm.fmuladd.f64(double %17, double f0xBFE6DBC443794205, double %15)
  %19 = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> <double f0x3FF8F249DF5F3018, double f0x3F8611789ABDD357>, <2 x double> %i.dx)
  %20 = extractelement <3 x double> %13, i64 0
  %21 = tail call double @llvm.fmuladd.f64(double %20, double f0xBFC166C5EFA969C8, double %18)
  %i.dz = shufflevector <3 x double> %13, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> <double f0xBF8D91DEAABEDCA0, double f0x3FEF7CF9CCDE6036>, <2 x double> %i.dy)
  %i.eb = insertelement <2 x double> %i.ds, double %i.dt, i64 1
  %i.ec = fadd <2 x double> %i.eb, splat (double 1.000000e+00)
  %i.ed = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = fsub <2 x double> %i.ec, %i.ee
  %i.eg = fdiv double %21, %i.dw                  ; 2 uses
  %i.eh = fdiv <2 x double> %i.ea, %i.ef          ; 4 uses
  %i.ei = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x double> %i.ej, <double -2.788690e-01, double 4.735330e-01>
  %i.el = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> <double f0x3FF189B951C5C572, double 4.543690e-01>, <2 x double> %i.ek)
  %i.en = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> <double 1.827450e-01, double 7.209800e-02>, <2 x double> %i.em)
  %i.ep = fmul double %i.eg, -5.698000e-03
  %i.eq = extractelement <2 x double> %i.eh, i64 0
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double f0xBF83B7D84901D191, double %i.ep)
  %i.es = extractelement <2 x double> %i.eh, i64 1
  %i.et = tail call double @llvm.fmuladd.f64(double %i.es, double f0x3FF03EC679CC74B8, double %i.er)
  store <2 x double> %i.eo, ptr %2, align 8, !tbaa !16
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.et, ptr %i.eu, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 24, !5, i64 48, !5, i64 72, !5, i64 96, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !5, i64 216, !5, i64 232, !5, i64 248}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS18_cmsContext_struct", !11, i64 0}
!13 = !{!"", !10, i64 0, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !6, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !12, i64 360}
!14 = !{!13, !12, i64 360}
!15 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!16 = !{!9, !9, i64 0}
!17 = !{!13, !9, i64 352}
!18 = !{!13, !9, i64 288}
!19 = !{!13, !9, i64 296}
!20 = !{!13, !9, i64 312}
!21 = !{!13, !9, i64 336}
!22 = !{!13, !9, i64 320}
!23 = !{!13, !9, i64 344}
!24 = !{!13, !9, i64 328}
!25 = !{!15, !9, i64 16}
!26 = !{!13, !9, i64 160}
!27 = !{!15, !9, i64 0}
!28 = !{!15, !9, i64 8}
!29 = distinct !{!29, !"NonlinearCompression"}
!30 = distinct !{!30, !29, !"NonlinearCompression: argument 0"}
!31 = !{!"", !15, i64 0, !9, i64 24, !9, i64 32, !6, i64 40, !9, i64 48}
!32 = !{!31, !9, i64 0}
!33 = !{!31, !9, i64 8}
!34 = !{!31, !9, i64 16}
!35 = !{!31, !9, i64 32}
!36 = !{!13, !9, i64 264}
!37 = !{!31, !9, i64 24}
!38 = !{!13, !9, i64 272}
!39 = !{!31, !9, i64 48}
!40 = !{!31, !6, i64 40}
!41 = !{!13, !6, i64 304}
!42 = !{!13, !9, i64 280}
!43 = !{!5, !5, i64 0}
!44 = !{!30}
!45 = distinct !{!45, !"ChromaticAdaptation"}
!46 = distinct !{!46, !45, !"ChromaticAdaptation: argument 0"}
!47 = distinct !{!47, !"NonlinearCompression"}
!48 = distinct !{!48, !47, !"NonlinearCompression: argument 0"}
!49 = distinct !{!49, !"ComputeCorrelates"}
!50 = distinct !{!50, !49, !"ComputeCorrelates: argument 0"}
!51 = !{!46}
!52 = !{!48}
!53 = !{!50}
!54 = distinct !{!54, !"InverseCorrelates"}
!55 = distinct !{!55, !54, !"InverseCorrelates: argument 0"}
!56 = distinct !{!56, !"InverseNonlinearity"}
!57 = distinct !{!57, !56, !"InverseNonlinearity: argument 0"}
!58 = distinct !{!58, !"InverseChromaticAdaptation"}
!59 = distinct !{!59, !58, !"InverseChromaticAdaptation: argument 0"}
!60 = !{!55}
!61 = !{!57}
!62 = !{!59}
end_hunk_0
