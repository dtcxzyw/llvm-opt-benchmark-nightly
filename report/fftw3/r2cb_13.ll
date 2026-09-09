Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cb_13?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 13, ptr @.str, %struct.opcnt { double 5.600000e+01, double 1.500000e+01, double 2.000000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cb_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cb_13\00", align 1
@fftw_rdft_r2cb_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cb_13(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cb_13, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cb_13(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0228 = phi ptr [ %0, %.lr.ph ], [ %i.fx, %bb.b ] ; 8 uses
  %.0214227 = phi ptr [ %1, %.lr.ph ], [ %i.fy, %bb.b ] ; 7 uses
  %.0215226 = phi ptr [ %2, %.lr.ph ], [ %i.fz, %bb.b ] ; 8 uses
  %.0216225 = phi ptr [ %3, %.lr.ph ], [ %i.ga, %bb.b ] ; 7 uses
  %.0217224 = phi ptr [ %4, %.lr.ph ], [ %i.gb, %bb.b ] ; 7 uses
  %.0218223 = phi ptr [ %5, %.lr.ph ], [ %i.gc, %bb.b ] ; 7 uses
  %.0219222 = phi ptr [ %6, %.lr.ph ], [ %i.gd, %bb.b ] ; 7 uses
  %.0220221 = phi i64 [ %7, %.lr.ph ], [ %i.fw, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0219222, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0219222, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0219222, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0219222, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !13 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0219222, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0219222, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !13 ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.r, i64 1
  %i.ac = fadd double %i.j, %i.n
  %i.ad = fsub double %i.v, %i.z
  %i.ae = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ac, i64 1
  %10 = fmul <2 x double> %i.af, splat (double f0x3FFBB67AE8584CAA) ; 2 uses
  %i.ag = fadd double %i.v, %i.z                  ; 2 uses
  %11 = fsub double %i.j, %i.n                    ; 2 uses
  %12 = fneg double %11
  %13 = insertelement <2 x double> poison, double %12, i64 0
  %i.ah = insertelement <2 x double> %13, double %i.ag, i64 1
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> <double 2.000000e+00, double -2.000000e+00>, <2 x double> %i.ah) ; 2 uses
  %15 = fadd <2 x double> %14, %10                ; 3 uses
  %16 = fsub <2 x double> %14, %10                ; 3 uses
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %18 = fmul <2 x double> %17, <double f0x3FD3371C1C9E25A7, double f0xBF87C14599EAC08D>
  %19 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> <double f0x3F87C14599EAC08D, double f0x3FD3371C1C9E25A7>, <2 x double> %18) ; 3 uses
  %21 = fadd double %i.r, %i.ag
  %22 = fadd double %i.f, %11
  %23 = insertelement <2 x double> poison, double %21, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = fmul <2 x double> %24, <double f0xBFD64A2C7675B5D5, double f0x3FF2678D87F60797>
  %26 = insertelement <2 x double> poison, double %22, i64 0
  %27 = shufflevector <2 x double> %26, <2 x double> poison, <2 x i32> zeroinitializer
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> <double f0x3FF2678D87F60797, double f0x3FD64A2C7675B5D5>, <2 x double> %25) ; 2 uses
  %i.ai = shufflevector <2 x double> %16, <2 x double> %15, <2 x i32> <i32 0, i32 3>
  %i.aj = shufflevector <2 x double> %15, <2 x double> %16, <2 x i32> <i32 1, i32 2>
  %i.ak = fmul <2 x double> %i.aj, <double f0x3FD0665CA247FDBA, double f0xBFD0665CA247FDBA>
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> splat (double f0x3FC4150460CB959A), <2 x double> %i.ak) ; 3 uses
  %i.am = load double, ptr %.0215226, align 8, !tbaa !13 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0218223, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !13 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0218223, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0218223, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0218223, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0218223, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0218223, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bg, i64 1
  %i.bn = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bk, i64 1
  %i.bp = fadd <2 x double> %i.bm, %i.bo          ; 3 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = extractelement <2 x double> %i.bp, i64 1
  %i.bs = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bc, i64 1
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> splat (double -5.000000e-01), <2 x double> %i.bt) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.bw = extractelement <2 x double> %i.bu, i64 1 ; 2 uses
  %i.bx = fadd double %i.aq, %i.bq                ; 2 uses
  %i.by = fadd double %i.bc, %i.br                ; 2 uses
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = fmul double %i.bz, f0x3FE33AC782EB914D  ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %i.am, i64 0
  %i.cc = fadd double %i.bx, %i.by                ; 2 uses
  %i.cd = insertelement <2 x double> poison, double %i.cc, i64 0
  %foldExtExtBinop.a = fadd <2 x double> %20, %i.al
  %i.ce = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.cf = fmul double %i.ce, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.cg = extractelement <2 x double> %20, i64 1  ; 2 uses
  %i.ch = extractelement <2 x double> %i.al, i64 1 ; 2 uses
  %i.ci = fsub double %i.cg, %i.ch
  %i.cj = fmul double %i.ci, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.ck = fadd double %i.cg, %i.ch                ; 2 uses
  %i.cl = extractelement <2 x double> %28, i64 0  ; 2 uses
  %i.cm = fsub double %i.cl, %i.ck                ; 2 uses
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ck, double 2.000000e+00, double %i.cl) ; 2 uses
  %foldExtExtBinop230.a = fsub <2 x double> %20, %i.al
  %i.co = extractelement <2 x double> %foldExtExtBinop230.a, i64 0 ; 2 uses
  %i.cp = extractelement <2 x double> %28, i64 1  ; 2 uses
  %i.cq = fneg double %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.co, double 2.000000e+00, double %i.cq) ; 2 uses
  %i.cs = fadd double %i.cp, %i.co                ; 2 uses
  %i.ct = fadd double %i.bv, %i.bw                ; 2 uses
  %i.cu = fsub double %i.bw, %i.bv
  %i.cv = fmul double %i.ct, f0x3FC36E60CAB2D064
  %i.cw = fsub double %i.au, %i.ay                ; 2 uses
  %i.cx = fsub double %i.bg, %i.bk                ; 2 uses
  %i.cy = insertelement <2 x double> %i.cb, double %i.cv, i64 1
  %i.cz = fadd double %i.cw, %i.cx                ; 2 uses
  %i.da = fsub double %i.cx, %i.cw                ; 2 uses
  %i.db = fmul double %i.da, f0xBFD105974D8DEBB7
  %i.dc = insertelement <2 x double> %i.cd, double %i.cz, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> <double f0xBFC5555555555555, double f0x3FE01CF9B20F3131>, <2 x double> %i.cy) ; 4 uses
  %i.de = insertelement <2 x double> poison, double %i.cu, i64 0 ; 2 uses
  %i.df = insertelement <2 x double> %i.de, double %i.cc, i64 1
  %i.dg = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.am, i64 1
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> <double f0x3FE08756968F6ED4, double 2.000000e+00>, <2 x double> %i.dh) ; 3 uses
  %i.dj = extractelement <2 x double> %i.di, i64 1
  store double %i.dj, ptr %.0228, align 8, !tbaa !13
  %i.dk = insertelement <2 x double> %i.de, double %i.ct, i64 1
  %i.dl = fmul <2 x double> %i.dk, <double f0x3FE105974D8DEBB7, double f0xBFF01CF9B20F3131>
  %i.dm = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.cz, i64 1
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> <double f0x3FE8CB01E1D7263E, double f0x3FCD2591300C3896>, <2 x double> %i.dl) ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0 ; 2 uses
  %i.dq = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %i.dr = fsub double %i.dp, %i.dq                ; 2 uses
  %i.ds = fadd double %i.dp, %i.dq                ; 2 uses
  %shift = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop232 = fsub <2 x double> %i.dd, %shift
  %i.dt = extractelement <2 x double> %foldExtExtBinop232, i64 0 ; 2 uses
  %i.du = extractelement <2 x double> %i.di, i64 0
  %i.dv = fsub double %i.ca, %i.du                ; 2 uses
  %i.dw = fsub double %i.dt, %i.dv                ; 2 uses
  %i.dx = fadd double %i.dv, %i.dt                ; 2 uses
  %i.dy = shufflevector <2 x double> %i.dd, <2 x double> %i.di, <2 x i32> <i32 1, i32 2>
  %i.dz = insertelement <2 x double> %i.dd, double %i.ca, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> splat (double 2.000000e+00), <2 x double> %i.dz) ; 2 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0 ; 2 uses
  %i.ec = extractelement <2 x double> %i.ea, i64 1 ; 2 uses
  %i.ed = fsub double %i.eb, %i.ec                ; 2 uses
  %i.ee = fadd double %i.ec, %i.eb                ; 2 uses
  %i.ef = fsub double %i.ed, %i.cn
  %i.eg = getelementptr inbounds nuw i8, ptr %.0217224, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !11 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.eh
  store double %i.ef, ptr %i.ei, align 8, !tbaa !13
  %i.ej = fsub double %i.ee, %i.cr
  %i.ek = getelementptr inbounds nuw i8, ptr %.0217224, i64 48
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !11
  %i.em = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.el
  store double %i.ej, ptr %i.em, align 8, !tbaa !13
  %i.en = fadd double %i.cr, %i.ee
  store double %i.en, ptr %.0214227, align 8, !tbaa !13
  %i.eo = fadd double %i.cn, %i.ed
  %i.ep = getelementptr inbounds nuw i8, ptr %.0217224, i64 32
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.eq
  store double %i.eo, ptr %i.er, align 8, !tbaa !13
  %i.es = fsub double %i.dw, %i.cf                ; 2 uses
  %i.et = fsub double %i.dr, %i.cm                ; 2 uses
  %i.eu = fsub double %i.es, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.0217224, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !11 ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.ew
  store double %i.eu, ptr %i.ex, align 8, !tbaa !13
  %i.ey = fadd double %i.et, %i.es
  %i.ez = getelementptr inbounds nuw i8, ptr %.0217224, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !11 ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.fa
  store double %i.ey, ptr %i.fb, align 8, !tbaa !13
  %i.fc = fsub double %i.dx, %i.cs                ; 2 uses
  %i.fd = fadd double %i.cj, %i.ds                ; 2 uses
  %i.fe = fsub double %i.fc, %i.fd
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.fa
  store double %i.fe, ptr %i.ff, align 8, !tbaa !13
  %i.fg = fadd double %i.fd, %i.fc
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.eq
  store double %i.fg, ptr %i.fh, align 8, !tbaa !13
  %i.fi = fsub double %i.ds, %i.cj                ; 2 uses
  %i.fj = fadd double %i.cs, %i.dx                ; 2 uses
  %i.fk = fadd double %i.fi, %i.fj
  %i.fl = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.eh
  store double %i.fk, ptr %i.fl, align 8, !tbaa !13
  %i.fm = fsub double %i.fj, %i.fi
  %i.fn = getelementptr inbounds nuw i8, ptr %.0217224, i64 40
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !11 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.fo
  store double %i.fm, ptr %i.fp, align 8, !tbaa !13
  %i.fq = fadd double %i.cf, %i.dw                ; 2 uses
  %i.fr = fadd double %i.cm, %i.dr                ; 2 uses
  %i.fs = fsub double %i.fq, %i.fr
  %i.ft = getelementptr inbounds [8 x i8], ptr %.0228, i64 %i.ew
  store double %i.fs, ptr %i.ft, align 8, !tbaa !13
  %i.fu = fadd double %i.fr, %i.fq
  %i.fv = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %i.fo
  store double %i.fu, ptr %i.fv, align 8, !tbaa !13
  %i.fw = add nsw i64 %.0220221, -1
  %i.fx = getelementptr inbounds [8 x i8], ptr %.0228, i64 %9
  %i.fy = getelementptr inbounds [8 x i8], ptr %.0214227, i64 %9
  %i.fz = getelementptr inbounds [8 x i8], ptr %.0215226, i64 %8
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0216225, i64 %8
  %i.gb = getelementptr inbounds [8 x i8], ptr %.0217224, i64 %i.b
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0218223, i64 %i.b
  %i.gd = getelementptr inbounds [8 x i8], ptr %.0219222, i64 %i.b
  %i.ge = icmp samesign ugt i64 %.0220221, 1
  br i1 %i.ge, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !14}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
