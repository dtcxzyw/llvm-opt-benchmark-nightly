Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n1_11?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 11, ptr @.str, %struct.opcnt { double 6.000000e+01, double 2.000000e+01, double 8.000000e+01, double 0.000000e+00 }, ptr @fftw_dft_n_genus, i64 0, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"n1_11\00", align 1
@fftw_dft_n_genus = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n1_11(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n1_11, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n1_11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0310 = phi ptr [ %0, %.lr.ph ], [ %i.kx, %bb.b ] ; 12 uses
  %.0298309 = phi ptr [ %1, %.lr.ph ], [ %i.ky, %bb.b ] ; 12 uses
  %.0299308 = phi ptr [ %2, %.lr.ph ], [ %i.kz, %bb.b ] ; 12 uses
  %.0300307 = phi ptr [ %3, %.lr.ph ], [ %i.la, %bb.b ] ; 12 uses
  %.0301306 = phi ptr [ %4, %.lr.ph ], [ %i.lb, %bb.b ] ; 11 uses
  %.0302305 = phi ptr [ %5, %.lr.ph ], [ %i.lc, %bb.b ] ; 11 uses
  %.0303304 = phi i64 [ %6, %.lr.ph ], [ %i.kw, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0310, align 8, !tbaa !13 ; 6 uses
  %i.d = load double, ptr %.0298309, align 8, !tbaa !13 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0301306, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0301306, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.f
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.j
  %i.p = load double, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0301306, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0301306, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !13 ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.r
  %i.z = load double, ptr %i.y, align 8, !tbaa !13 ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.v
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0301306, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0301306, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.ad
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.ah
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0301306, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0301306, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.ap
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.at
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0301306, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0301306, i64 48
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.bb
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0310, i64 %i.bf
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = insertelement <2 x double> poison, double %i.n, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.ax, i64 1
  %i.bo = insertelement <2 x double> poison, double %i.p, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.az, i64 1
  %i.bq = fsub <2 x double> %i.bn, %i.bp          ; 6 uses
  %i.br = insertelement <2 x double> poison, double %i.al, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bd, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.an, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bh, i64 1
  %i.bv = fsub <2 x double> %i.bs, %i.bu          ; 7 uses
  %i.bw = fmul <2 x double> %i.bv, <double f0x3FE14CEDF8BB580B, double f0xBFED1BB48EEE2C13>
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> <double f0x3FE82F19BB3A28A1, double f0x3FD207E7FD768DBF>, <2 x double> %i.bw) ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.h, i64 1
  %i.ca = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.l, i64 1
  %i.cc = fadd <2 x double> %i.bz, %i.cb          ; 9 uses
  %i.cd = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.z, i64 1
  %i.cf = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.ab, i64 1
  %i.ch = fadd <2 x double> %i.ce, %i.cg          ; 8 uses
  %9 = insertelement <2 x double> %i.bx, double %i.c, i64 1
  %10 = shufflevector <2 x double> %i.bx, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %11 = fadd <2 x double> %9, %10                 ; 2 uses
  %12 = insertelement <2 x double> %11, double %i.c, i64 1
  %i.ci = extractelement <2 x double> %i.cc, i64 0
  %i.cj = extractelement <2 x double> %i.ch, i64 0
  %i.ck = fmul <2 x double> %i.cc, <double f0xBFEEB42A9BCD5057, double f0x3FE4F49E7F775887>
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> <double f0x3FDA9628D9C712B6, double f0x3FC2375F640F44DB>, <2 x double> %i.ck) ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0302305, i64 56
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !11 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.0302305, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !11 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.cq
  %i.cs = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.av, i64 1
  %i.cu = insertelement <2 x double> poison, double %i.h, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ar, i64 1
  %i.cw = fsub <2 x double> %i.ct, %i.cv          ; 6 uses
  %i.cx = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.bl, i64 1
  %i.cz = insertelement <2 x double> poison, double %i.af, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.bj, i64 1
  %i.db = fsub <2 x double> %i.cy, %i.da          ; 7 uses
  %i.dc = fmul <2 x double> %i.db, <double f0x3FE14CEDF8BB580B, double f0xBFED1BB48EEE2C13>
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> <double f0x3FE82F19BB3A28A1, double f0x3FD207E7FD768DBF>, <2 x double> %i.dc) ; 2 uses
  %13 = shufflevector <2 x double> %11, <2 x double> %i.dd, <2 x i32> <i32 1, i32 2>
  %14 = shufflevector <2 x double> %i.ch, <2 x double> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.de = fadd <2 x double> %13, %14              ; 2 uses
  %15 = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x double> %15, double %i.d, i64 1
  %i.dg = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.n, i64 1
  %i.di = insertelement <2 x double> poison, double %i.az, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.p, i64 1
  %i.dk = fadd <2 x double> %i.dh, %i.dj          ; 9 uses
  %i.dl = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.t, i64 1
  %i.dn = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.x, i64 1
  %i.dp = fadd <2 x double> %i.dm, %i.do          ; 8 uses
  %i.dq = extractelement <2 x double> %i.dk, i64 0
  %i.dr = extractelement <2 x double> %i.dp, i64 0
  %i.ds = fmul <2 x double> %i.dk, <double f0xBFEEB42A9BCD5057, double f0x3FE4F49E7F775887>
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> <double f0x3FDA9628D9C712B6, double f0x3FC2375F640F44DB>, <2 x double> %i.ds) ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.cq
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.cn
  %i.dw = shufflevector <2 x double> %i.cw, <2 x double> %i.db, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.dx = shufflevector <2 x double> %i.db, <2 x double> %i.dk, <2 x i32> <i32 0, i32 3>
  %i.dy = shufflevector <2 x double> %i.dk, <2 x double> %i.dp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dz = fmul <2 x double> %i.dy, <double f0xBFC2375F640F44DB, double f0x3FE4F49E7F775887>
  %i.ea = getelementptr inbounds nuw i8, ptr %.0302305, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !11 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %.0302305, i64 72
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !11 ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.ee
  %i.eg = shufflevector <2 x double> %i.bq, <2 x double> %i.bv, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.eh = shufflevector <2 x double> %i.bv, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.ei = shufflevector <2 x double> %i.cc, <2 x double> %i.ch, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ej = fmul <2 x double> %i.ei, <double f0xBFC2375F640F44DB, double f0x3FE4F49E7F775887>
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.ee
  %i.el = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.eb
  %i.em = shufflevector <2 x double> %i.bq, <2 x double> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.en = shufflevector <2 x double> %i.bv, <2 x double> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.eo = shufflevector <2 x double> %i.ch, <2 x double> %i.cc, <2 x i32> <i32 1, i32 2>
  %i.ep = getelementptr inbounds nuw i8, ptr %.0302305, i64 80
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %.0302305, i64 8
  %i.et = shufflevector <2 x double> %i.cw, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.eu = shufflevector <2 x double> %i.db, <2 x double> %i.dk, <2 x i32> <i32 1, i32 3>
  %i.ev = shufflevector <2 x double> %i.dp, <2 x double> %i.dk, <2 x i32> <i32 1, i32 2>
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.eq
  %i.ex = shufflevector <2 x double> %i.bq, <2 x double> %i.bv, <2 x i32> <i32 1, i32 2>
  %i.ey = fmul <2 x double> %i.ex, <double f0x3FE14CEDF8BB580B, double f0xBFED1BB48EEE2C13>
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> <double f0x3FEFAC9E043842EF, double f0x3FE82F19BB3A28A1>, <2 x double> %i.ey) ; 2 uses
  %16 = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %17 = insertelement <2 x double> %16, double %i.d, i64 0
  %18 = shufflevector <2 x double> %i.dk, <2 x double> %i.ez, <2 x i32> <i32 1, i32 3>
  %19 = fadd <2 x double> %17, %18                ; 2 uses
  %shift = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %19, %shift
  %20 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fa = fsub double %i.t, %i.x                  ; 3 uses
  %i.fb = fadd double %i.af, %i.aj                ; 4 uses
  %i.fc = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.fb, i64 1 ; 2 uses
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> <double f0xBFEFAC9E043842EF, double f0x3FEAEB8C8764F0BA>, <2 x double> %12) ; 3 uses
  %21 = extractelement <2 x double> %i.de, i64 0
  %i.ff = fadd double %21, %i.fb
  %i.fg = fadd double %i.ff, %i.ci
  %i.fh = fadd double %i.fg, %i.cj
  store double %i.fh, ptr %.0299308, align 8, !tbaa !13
  %shift318 = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop319 = fadd <2 x double> %shift318, %i.cl
  %shift321 = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop322 = fsub <2 x double> %foldExtExtBinop319, %shift321 ; 2 uses
  %foldExtExtBinop324 = fsub <2 x double> %foldExtExtBinop322, %i.fe
  %i.fi = extractelement <2 x double> %foldExtExtBinop324, i64 0
  %foldExtExtBinop326 = fadd <2 x double> %i.fe, %foldExtExtBinop322
  %i.fj = extractelement <2 x double> %foldExtExtBinop326, i64 0
  %i.fk = insertelement <2 x double> %i.bq, double %i.fa, i64 0 ; 2 uses
  %i.fl = fmul <2 x double> %i.fk, <double f0x3FE82F19BB3A28A1, double f0x3FEFAC9E043842EF>
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> <double f0x3FED1BB48EEE2C13, double f0x3FE14CEDF8BB580B>, <2 x double> %i.fl) ; 2 uses
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fo = fsub <2 x double> %i.fm, %i.fn
  %i.fp = insertelement <2 x double> %i.fo, double %i.c, i64 1
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> <double f0xBFD207E7FD768DBF, double f0x3FDA9628D9C712B6>, <2 x double> %i.fp) ; 3 uses
  %i.fr = insertelement <2 x double> %i.ch, double %i.fb, i64 1 ; 2 uses
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> <double f0x3FEAEB8C8764F0BA, double f0x3FEEB42A9BCD5057>, <2 x double> %i.ej) ; 2 uses
  %i.ft = fmul <2 x double> %i.fk, <double f0x3FED1BB48EEE2C13, double f0x3FE82F19BB3A28A1>
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> <double f0x3FE14CEDF8BB580B, double f0x3FEFAC9E043842EF>, <2 x double> %i.ft) ; 2 uses
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fw = fadd <2 x double> %i.fu, %i.fv
  %i.fx = insertelement <2 x double> %i.fw, double %i.c, i64 1
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> <double f0x3FD207E7FD768DBF, double f0x3FEAEB8C8764F0BA>, <2 x double> %i.fx) ; 3 uses
  %i.fz = fmul <2 x double> %i.fr, <double f0xBFEEB42A9BCD5057, double f0x3FC2375F640F44DB>
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> <double f0x3FDA9628D9C712B6, double f0x3FE4F49E7F775887>, <2 x double> %i.fz) ; 2 uses
  %i.gb = shufflevector <2 x double> %i.fq, <2 x double> %i.fy, <2 x i32> <i32 1, i32 3>
  %i.gc = shufflevector <2 x double> %i.fs, <2 x double> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.gd = fadd <2 x double> %i.gb, %i.gc
  %i.ge = shufflevector <2 x double> %i.fs, <2 x double> %i.ga, <2 x i32> <i32 1, i32 3>
  %i.gf = fsub <2 x double> %i.gd, %i.ge          ; 3 uses
  %foldExtExtBinop334.a = fadd <2 x double> %i.fq, %i.gf
  %i.gg = extractelement <2 x double> %foldExtExtBinop334.a, i64 0
  %i.gh = shufflevector <2 x double> %i.fq, <2 x double> %i.fy, <2 x i32> <i32 0, i32 2>
  %i.gi = fsub <2 x double> %i.gf, %i.gh          ; 2 uses
  %shift336 = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop337 = fadd <2 x double> %i.fy, %shift336
  %i.gj = extractelement <2 x double> %foldExtExtBinop337, i64 0
  %i.gk = load i64, ptr %i.es, align 8, !tbaa !11 ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.gk
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.gk
  %i.gn = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.go = insertelement <2 x double> %i.gn, double %i.c, i64 1
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> <double f0xBFD207E7FD768DBF, double f0x3FDA9628D9C712B6>, <2 x double> %i.go) ; 3 uses
  %i.gq = shufflevector <2 x double> %i.ch, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gr = fmul <2 x double> %i.gq, <double f0xBFE4F49E7F775887, double f0x3FC2375F640F44DB>
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> <double f0x3FEAEB8C8764F0BA, double f0x3FEEB42A9BCD5057>, <2 x double> %i.gr) ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0302305, i64 64
  %i.gu = getelementptr inbounds nuw i8, ptr %.0302305, i64 24
  %i.gv = shufflevector <2 x double> %i.cw, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %i.gw = fmul <2 x double> %i.gv, <double f0x3FE14CEDF8BB580B, double f0xBFED1BB48EEE2C13>
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> <double f0x3FEFAC9E043842EF, double f0x3FE82F19BB3A28A1>, <2 x double> %i.gw) ; 2 uses
  %22 = shufflevector <2 x double> %i.gp, <2 x double> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.gy = fsub double %i.ab, %i.z                 ; 3 uses
  %i.gz = fadd double %i.al, %i.an                ; 4 uses
  %i.ha = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gz, i64 1 ; 2 uses
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> <double f0xBFEFAC9E043842EF, double f0x3FEAEB8C8764F0BA>, <2 x double> %i.df) ; 3 uses
  %i.hd = fadd double %20, %i.gz
  %i.he = fadd double %i.hd, %i.dq
  %i.hf = fadd double %i.he, %i.dr
  %i.hg = shufflevector <2 x double> %i.gp, <2 x double> %i.hc, <2 x i32> <i32 1, i32 3>
  %i.hh = shufflevector <2 x double> %i.gs, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.hi = fadd <2 x double> %i.hg, %i.hh
  %i.hj = shufflevector <2 x double> %i.gs, <2 x double> %i.dt, <2 x i32> <i32 1, i32 3>
  %i.hk = fsub <2 x double> %i.hi, %i.hj          ; 3 uses
  %23 = shufflevector <2 x double> %i.hk, <2 x double> %i.gx, <2 x i32> <i32 0, i32 3>
  %24 = fadd <2 x double> %22, %23                ; 2 uses
  %shift344 = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop345.a = fadd <2 x double> %shift344, %i.hc
  %i.hl = extractelement <2 x double> %foldExtExtBinop345.a, i64 0
  %i.hm = shufflevector <2 x double> %i.gp, <2 x double> %i.hc, <2 x i32> <i32 0, i32 2>
  %i.hn = fsub <2 x double> %i.hk, %i.hm          ; 2 uses
  %i.ho = insertelement <2 x double> %i.cw, double %i.gy, i64 0 ; 2 uses
  %i.hp = fmul <2 x double> %i.ho, <double f0x3FE82F19BB3A28A1, double f0x3FEFAC9E043842EF>
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> <double f0x3FED1BB48EEE2C13, double f0x3FE14CEDF8BB580B>, <2 x double> %i.hp) ; 2 uses
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hs = fsub <2 x double> %i.hq, %i.hr
  %i.ht = insertelement <2 x double> %i.hs, double %i.d, i64 1
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> <double f0xBFD207E7FD768DBF, double f0x3FDA9628D9C712B6>, <2 x double> %i.ht) ; 3 uses
  %i.hv = insertelement <2 x double> %i.dp, double %i.gz, i64 1 ; 2 uses
  %i.hw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> <double f0x3FEAEB8C8764F0BA, double f0x3FEEB42A9BCD5057>, <2 x double> %i.dz) ; 2 uses
  %shift350 = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop351 = fadd <2 x double> %shift350, %i.hw
  %shift353 = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop354 = fsub <2 x double> %foldExtExtBinop351, %shift353 ; 2 uses
  %foldExtExtBinop356 = fadd <2 x double> %foldExtExtBinop354, %i.hu
  %i.hx = extractelement <2 x double> %foldExtExtBinop356, i64 0
  %foldExtExtBinop358 = fsub <2 x double> %foldExtExtBinop354, %i.hu
  %i.hy = extractelement <2 x double> %foldExtExtBinop358, i64 0
  %i.hz = fmul <2 x double> %i.ho, <double f0x3FED1BB48EEE2C13, double f0x3FE82F19BB3A28A1>
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> <double f0x3FE14CEDF8BB580B, double f0x3FEFAC9E043842EF>, <2 x double> %i.hz) ; 2 uses
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ic = fadd <2 x double> %i.ia, %i.ib
  %i.id = insertelement <2 x double> %i.ic, double %i.d, i64 1
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> <double f0x3FD207E7FD768DBF, double f0x3FEAEB8C8764F0BA>, <2 x double> %i.id) ; 3 uses
  %i.if = fmul <2 x double> %i.hv, <double f0xBFEEB42A9BCD5057, double f0x3FC2375F640F44DB>
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> <double f0x3FDA9628D9C712B6, double f0x3FE4F49E7F775887>, <2 x double> %i.if) ; 2 uses
  store double %i.hf, ptr %.0300307, align 8, !tbaa !13
  store double %i.fi, ptr %i.co, align 8, !tbaa !13
  store double %i.fj, ptr %i.cr, align 8, !tbaa !13
  store double %i.hl, ptr %i.du, align 8, !tbaa !13
  %i.ih = extractelement <2 x double> %i.hn, i64 1
  store double %i.ih, ptr %i.dv, align 8, !tbaa !13
  store double %i.hx, ptr %i.ec, align 8, !tbaa !13
  store double %i.hy, ptr %i.ef, align 8, !tbaa !13
  %i.ii = extractelement <2 x double> %i.gi, i64 0
  store double %i.ii, ptr %i.ek, align 8, !tbaa !13
  store double %i.gg, ptr %i.el, align 8, !tbaa !13
  %i.ij = extractelement <2 x double> %i.gi, i64 1
  store double %i.ij, ptr %i.er, align 8, !tbaa !13
  store double %i.gj, ptr %i.gl, align 8, !tbaa !13
  %i.ik = load i64, ptr %i.gt, align 8, !tbaa !11 ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.ik
  %i.im = extractelement <2 x double> %i.hn, i64 0
  %i.in = load i64, ptr %i.gu, align 8, !tbaa !11 ; 2 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.in
  %25 = extractelement <2 x double> %24, i64 0
  %26 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ip = insertelement <2 x double> %26, double %i.d, i64 1
  %i.iq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> <double f0xBFD207E7FD768DBF, double f0x3FDA9628D9C712B6>, <2 x double> %i.ip) ; 3 uses
  %i.ir = shufflevector <2 x double> %i.dp, <2 x double> %i.dk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.is = fmul <2 x double> %i.ir, <double f0xBFE4F49E7F775887, double f0x3FC2375F640F44DB>
  %i.it = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> <double f0x3FEAEB8C8764F0BA, double f0x3FEEB42A9BCD5057>, <2 x double> %i.is) ; 2 uses
  %i.iu = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.in
  %i.iv = shufflevector <2 x double> %i.ie, <2 x double> %i.iq, <2 x i32> <i32 1, i32 3>
  %i.iw = shufflevector <2 x double> %i.ig, <2 x double> %i.it, <2 x i32> <i32 0, i32 2>
  %i.ix = fadd <2 x double> %i.iv, %i.iw
  %i.iy = shufflevector <2 x double> %i.ig, <2 x double> %i.it, <2 x i32> <i32 1, i32 3>
  %i.iz = fsub <2 x double> %i.ix, %i.iy          ; 3 uses
  %foldExtExtBinop363.a = fadd <2 x double> %i.ie, %i.iz
  %i.ja = extractelement <2 x double> %foldExtExtBinop363.a, i64 0
  store double %i.ja, ptr %i.gm, align 8, !tbaa !13
  %i.jb = shufflevector <2 x double> %i.ie, <2 x double> %i.iq, <2 x i32> <i32 0, i32 2>
  %i.jc = fsub <2 x double> %i.iz, %i.jb          ; 2 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0
  store double %i.jd, ptr %i.ew, align 8, !tbaa !13
  store double %i.im, ptr %i.il, align 8, !tbaa !13
  store double %25, ptr %i.io, align 8, !tbaa !13
  %shift365.a = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop366.a = fadd <2 x double> %shift365.a, %i.iq
  %i.je = extractelement <2 x double> %foldExtExtBinop366.a, i64 0
  store double %i.je, ptr %i.iu, align 8, !tbaa !13
  %i.jf = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.ik
  %i.jg = extractelement <2 x double> %i.jc, i64 1
  store double %i.jg, ptr %i.jf, align 8, !tbaa !13
  %i.jh = shufflevector <2 x double> %i.db, <2 x double> %i.cw, <2 x i32> <i32 0, i32 3>
  %i.ji = fmul <2 x double> %i.jh, <double f0x3FE82F19BB3A28A1, double f0xBFED1BB48EEE2C13>
  %i.jj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> <double f0x3FD207E7FD768DBF, double f0x3FEFAC9E043842EF>, <2 x double> %i.ji) ; 2 uses
  %i.jk = insertelement <2 x double> %i.dp, double %i.gy, i64 0
  %i.jl = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jm = fadd <2 x double> %i.jj, %i.jl
  %i.jn = insertelement <2 x double> %i.jm, double %i.d, i64 1
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> <double f0xBFE14CEDF8BB580B, double f0x3FEAEB8C8764F0BA>, <2 x double> %i.jn) ; 3 uses
  %i.jp = fmul <2 x double> %i.ir, <double f0xBFC2375F640F44DB, double f0x3FEEB42A9BCD5057>
  %i.jq = insertelement <2 x double> %i.dk, double %i.gz, i64 1
  %i.jr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> <double f0x3FDA9628D9C712B6, double f0x3FE4F49E7F775887>, <2 x double> %i.jp) ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0302305, i64 40
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !11 ; 2 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %.0302305, i64 48
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !11 ; 2 uses
  %i.jx = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %i.jw
  %i.jy = shufflevector <2 x double> %i.bv, <2 x double> %i.bq, <2 x i32> <i32 0, i32 3>
  %i.jz = fmul <2 x double> %i.jy, <double f0x3FE82F19BB3A28A1, double f0xBFED1BB48EEE2C13>
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> <double f0x3FD207E7FD768DBF, double f0x3FEFAC9E043842EF>, <2 x double> %i.jz) ; 2 uses
  %i.kb = insertelement <2 x double> %i.ch, double %i.fa, i64 0
  %i.kc = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kd = fadd <2 x double> %i.ka, %i.kc
  %i.ke = insertelement <2 x double> %i.kd, double %i.c, i64 1
  %i.kf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> <double f0xBFE14CEDF8BB580B, double f0x3FEAEB8C8764F0BA>, <2 x double> %i.ke) ; 3 uses
  %i.kg = fmul <2 x double> %i.gq, <double f0xBFC2375F640F44DB, double f0x3FEEB42A9BCD5057>
  %i.kh = insertelement <2 x double> %i.cc, double %i.fb, i64 1
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> <double f0x3FDA9628D9C712B6, double f0x3FE4F49E7F775887>, <2 x double> %i.kg) ; 2 uses
  %i.kj = shufflevector <2 x double> %i.jo, <2 x double> %i.kf, <2 x i32> <i32 1, i32 3>
  %i.kk = shufflevector <2 x double> %i.jr, <2 x double> %i.ki, <2 x i32> <i32 0, i32 2>
  %i.kl = fadd <2 x double> %i.kj, %i.kk
  %i.km = shufflevector <2 x double> %i.jr, <2 x double> %i.ki, <2 x i32> <i32 1, i32 3>
  %i.kn = fsub <2 x double> %i.kl, %i.km          ; 3 uses
  %foldExtExtBinop374 = fadd <2 x double> %i.kn, %i.jo
  %i.ko = extractelement <2 x double> %foldExtExtBinop374, i64 0
  store double %i.ko, ptr %i.ju, align 8, !tbaa !13
  %i.kp = shufflevector <2 x double> %i.jo, <2 x double> %i.kf, <2 x i32> <i32 0, i32 2>
  %i.kq = fsub <2 x double> %i.kn, %i.kp          ; 2 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 0
  store double %i.kr, ptr %i.jx, align 8, !tbaa !13
  %i.ks = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.jw
  %i.kt = extractelement <2 x double> %i.kq, i64 1
  store double %i.kt, ptr %i.ks, align 8, !tbaa !13
  %shift376 = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop377 = fadd <2 x double> %i.kf, %shift376
  %i.ku = extractelement <2 x double> %foldExtExtBinop377, i64 0
  %i.kv = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %i.jt
  store double %i.ku, ptr %i.kv, align 8, !tbaa !13
  %i.kw = add nsw i64 %.0303304, -1
  %i.kx = getelementptr inbounds [8 x i8], ptr %.0310, i64 %7
  %i.ky = getelementptr inbounds [8 x i8], ptr %.0298309, i64 %7
  %i.kz = getelementptr inbounds [8 x i8], ptr %.0299308, i64 %8
  %i.la = getelementptr inbounds [8 x i8], ptr %.0300307, i64 %8
  %i.lb = getelementptr inbounds [8 x i8], ptr %.0301306, i64 %i.b
  %i.lc = getelementptr inbounds [8 x i8], ptr %.0302305, i64 %i.b
  %i.ld = icmp samesign ugt i64 %.0303304, 1
  br i1 %i.ld, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

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
