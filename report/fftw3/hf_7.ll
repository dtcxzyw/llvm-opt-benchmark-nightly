Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hf_7?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2hc_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2hc_genus = type { i32, i64 }

@desc = internal constant %struct.hc2hc_desc_s { i64 7, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hf_genus, %struct.opcnt { double 3.600000e+01, double 2.400000e+01, double 3.600000e+01, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [5 x i8] c"hf_7\00", align 1
@twinstr = internal constant [2 x %struct.tw_instr] [%struct.tw_instr { i8 4, i8 1, i16 7 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 2
@fftw_rdft_hf_genus = external constant %struct.hc2hc_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hf_7(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2hc_register(ptr noundef %0, ptr noundef nonnull @hf_7, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_khc2hc_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hf_7(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
bb.a:
  %i.a = icmp slt i64 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul i64 %4, 96
  %i.b = getelementptr i8, ptr %2, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -96
  %i.d = sub i64 0, %6
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0229 = phi ptr [ %0, %.lr.ph ], [ %i.fr, %bb.b ] ; 9 uses
  %.0221228 = phi ptr [ %1, %.lr.ph ], [ %i.fs, %bb.b ] ; 9 uses
  %.0222227 = phi ptr [ %i.c, %.lr.ph ], [ %i.ft, %bb.b ] ; 7 uses
  %.0223226 = phi ptr [ %3, %.lr.ph ], [ %i.fu, %bb.b ] ; 7 uses
  %.0224225 = phi i64 [ %4, %.lr.ph ], [ %i.fq, %bb.b ]
  %i.f = load double, ptr %.0229, align 8, !tbaa !13 ; 4 uses
  %i.g = load double, ptr %.0221228, align 8, !tbaa !13 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0223226, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.i ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.i ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = fneg double %i.k
  %i.o = load <2 x double>, ptr %.0222227, align 8, !tbaa !13 ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.n, i64 1
  %i.s = fmul <2 x double> %i.p, %i.r
  %i.t = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = insertelement <2 x double> poison, double %i.k, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.m, i64 1
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.v, <2 x double> %i.s) ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0223226, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.y ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0222227, i64 80
  %i.ae = fneg double %i.aa
  %i.af = load <2 x double>, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.ae, i64 1
  %i.aj = fmul <2 x double> %i.ag, %i.ai
  %i.ak = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ac, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.am, <2 x double> %i.aj) ; 4 uses
  %foldExtExtBinop = fsub <2 x double> %i.w, %i.an ; 2 uses
  %i.ao = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0223226, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.aq ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.aq ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0222227, i64 16
  %i.aw = fneg double %i.as
  %i.ax = load <2 x double>, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.aw, i64 1
  %i.bb = fmul <2 x double> %i.ay, %i.ba
  %i.bc = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x double> poison, double %i.as, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.au, i64 1
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.be, <2 x double> %i.bb) ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0223226, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.bh ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.bh ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0222227, i64 64
  %i.bn = fneg double %i.bj
  %i.bo = load <2 x double>, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bn, i64 1
  %i.bs = fmul <2 x double> %i.bp, %i.br
  %i.bt = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bl, i64 1
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bv, <2 x double> %i.bs) ; 3 uses
  %foldExtExtBinop232 = fadd <2 x double> %i.bf, %i.bw
  %i.bx = extractelement <2 x double> %foldExtExtBinop232, i64 0 ; 4 uses
  %i.by = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %i.bz = extractelement <2 x double> %i.bw, i64 1 ; 2 uses
  %i.ca = fsub double %i.by, %i.bz                ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0223226, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.cc ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13 ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0222227, i64 32
  %i.ci = fneg double %i.ce
  %i.cj = load <2 x double>, ptr %i.ch, align 8, !tbaa !13 ; 2 uses
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ci, i64 1
  %i.cn = fmul <2 x double> %i.ck, %i.cm
  %i.co = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.cg, i64 1
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cq, <2 x double> %i.cn) ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0223226, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !11 ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.ct ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !13 ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.ct ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !13 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0222227, i64 48
  %i.cz = fneg double %i.cv
  %i.da = load <2 x double>, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cz, i64 1
  %i.de = fmul <2 x double> %i.db, %i.dd
  %i.df = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cx, i64 1
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dh, <2 x double> %i.de) ; 4 uses
  %foldExtExtBinop238.a = fsub <2 x double> %i.cr, %i.di ; 2 uses
  %i.dj = extractelement <2 x double> %foldExtExtBinop238.a, i64 1 ; 2 uses
  %i.dk = fmul double %i.ca, f0x3FEF329C0558E969
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.ao, double f0x3FE904C37505DE4B, double %i.dk)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dj, double f0x3FDBC4C04D71ABC1, double %i.dl) ; 2 uses
  %i.dn = fmul double %i.bx, f0x3FCC7B90E3024582
  %i.do = shufflevector <2 x double> %i.w, <2 x double> %i.cr, <2 x i32> <i32 0, i32 2>
  %i.dp = shufflevector <2 x double> %i.an, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.dq = fadd <2 x double> %i.do, %i.dp          ; 6 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0 ; 2 uses
  %i.ds = fadd double %i.f, %i.dr
  %i.dt = fadd double %i.ds, %i.bx
  %i.du = extractelement <2 x double> %i.dq, i64 1
  %i.dv = fadd double %i.dt, %i.du
  store double %i.dv, ptr %.0229, align 8, !tbaa !13
  %i.dw = insertelement <2 x double> poison, double %i.f, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.dn, i64 1
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> <double f0x3FE3F3A0E28BEDD1, double f0x3FECD4BCA9CB5C71>, <2 x double> %i.dx) ; 2 uses
  %shift = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop240 = fsub <2 x double> %i.dy, %shift
  %i.dz = extractelement <2 x double> %foldExtExtBinop240, i64 0 ; 2 uses
  %i.ea = fsub double %i.dz, %i.dm
  store double %i.ea, ptr %.0221228, align 8, !tbaa !13
  %i.eb = fadd double %i.dm, %i.dz
  store double %i.eb, ptr %i.j, align 8, !tbaa !13
  %i.ec = shufflevector <2 x double> %i.w, <2 x double> %i.cr, <2 x i32> <i32 1, i32 3>
  %i.ed = shufflevector <2 x double> %i.an, <2 x double> %i.di, <2 x i32> <i32 1, i32 3>
  %i.ee = fadd <2 x double> %i.ec, %i.ed          ; 6 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 0 ; 2 uses
  %i.eg = extractelement <2 x double> %i.ee, i64 1
  %7 = shufflevector <2 x double> %i.bf, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %8 = shufflevector <2 x double> %i.bw, <2 x double> %i.cr, <2 x i32> <i32 0, i32 2>
  %9 = fsub <2 x double> %7, %8                   ; 5 uses
  %10 = fmul <2 x double> %9, splat (double f0x3FDBC4C04D71ABC1) ; 2 uses
  %i.eh = insertelement <2 x double> %10, double %i.g, i64 1
  %i.ei = fmul double %i.ef, f0x3FCC7B90E3024582
  %11 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %12 = extractelement <2 x double> %9, i64 0
  %foldExtExtBinop242 = fsub <2 x double> %i.an, %i.w ; 3 uses
  %i.ej = extractelement <2 x double> %foldExtExtBinop242, i64 0
  %13 = shufflevector <2 x double> %foldExtExtBinop242, <2 x double> %i.ee, <2 x i32> <i32 0, i32 3>
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> <double f0x3FEF329C0558E969, double f0x3FE3F3A0E28BEDD1>, <2 x double> %i.eh) ; 2 uses
  %i.ek = fadd double %i.by, %i.bz                ; 4 uses
  %15 = extractelement <2 x double> %10, i64 1
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ej, double f0x3FE904C37505DE4B, double %15)
  %i.em = tail call double @llvm.fmuladd.f64(double %12, double f0xBFEF329C0558E969, double %i.el) ; 2 uses
  %16 = insertelement <2 x double> %9, double %i.ek, i64 1
  %17 = fmul <2 x double> %16, <double f0x3FE904C37505DE4B, double f0x3FCC7B90E3024582> ; 2 uses
  %i.en = fadd double %i.ef, %i.ek
  %i.eo = fadd double %i.en, %i.eg
  %i.ep = fadd double %i.g, %i.eo
  store double %i.ep, ptr %i.ab, align 8, !tbaa !13
  %i.eq = insertelement <2 x double> %17, double %i.g, i64 0
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> <double f0x3FE3F3A0E28BEDD1, double f0x3FECD4BCA9CB5C71>, <2 x double> %i.eq) ; 2 uses
  %shift244 = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop245 = fsub <2 x double> %i.er, %shift244
  %i.es = extractelement <2 x double> %foldExtExtBinop245, i64 0 ; 2 uses
  %i.et = fsub double %i.em, %i.es
  store double %i.et, ptr %i.z, align 8, !tbaa !13
  %i.eu = fadd double %i.es, %i.em
  store double %i.eu, ptr %i.bk, align 8, !tbaa !13
  %18 = insertelement <2 x double> %11, double %i.ek, i64 1
  %19 = insertelement <2 x double> %14, double %i.ei, i64 1
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> <double f0xBFE904C37505DE4B, double f0x3FECD4BCA9CB5C71>, <2 x double> %19) ; 2 uses
  %i.ev = insertelement <2 x double> %foldExtExtBinop242, double %i.ek, i64 1
  %21 = insertelement <2 x double> %17, double %i.g, i64 1
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> <double f0x3FDBC4C04D71ABC1, double f0x3FE3F3A0E28BEDD1>, <2 x double> %21) ; 2 uses
  %22 = shufflevector <2 x double> %i.ew, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %23 = fmul <2 x double> %22, <double 1.000000e+00, double f0x3FECD4BCA9CB5C71>
  %24 = shufflevector <2 x double> %i.ee, <2 x double> %9, <2 x i32> <i32 3, i32 1>
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> <double f0x3FEF329C0558E969, double f0x3FCC7B90E3024582>, <2 x double> %23) ; 2 uses
  %25 = shufflevector <2 x double> %14, <2 x double> %i.ew, <2 x i32> <i32 1, i32 3>
  %26 = shufflevector <2 x double> %20, <2 x double> %i.ex, <2 x i32> <i32 1, i32 3>
  %27 = fsub <2 x double> %25, %26                ; 2 uses
  %28 = shufflevector <2 x double> %20, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ey = fadd <2 x double> %28, %27              ; 2 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 0
  %i.fa = fsub <2 x double> %28, %27              ; 2 uses
  %i.fb = extractelement <2 x double> %i.fa, i64 0
  store double %i.fb, ptr %i.bi, align 8, !tbaa !13
  store double %i.ez, ptr %i.cw, align 8, !tbaa !13
  %i.fc = extractelement <2 x double> %i.fa, i64 1
  store double %i.fc, ptr %i.cu, align 8, !tbaa !13
  %i.fd = extractelement <2 x double> %i.ey, i64 1
  store double %i.fd, ptr %i.cf, align 8, !tbaa !13
  %i.fe = fmul double %i.dj, f0x3FEF329C0558E969
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ao, double f0x3FDBC4C04D71ABC1, double %i.fe)
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ca, double f0xBFE904C37505DE4B, double %i.ff) ; 2 uses
  %29 = tail call double @llvm.fmuladd.f64(double %i.bx, double f0x3FE3F3A0E28BEDD1, double %i.f)
  %i.fh = shufflevector <2 x double> %i.dq, <2 x double> %foldExtExtBinop238.a, <2 x i32> <i32 0, i32 3>
  %30 = fmul <2 x double> %i.fh, <double f0x3FECD4BCA9CB5C71, double f0xBFE904C37505DE4B>
  %31 = shufflevector <2 x double> %i.dq, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> <double f0x3FCC7B90E3024582, double f0x3FEF329C0558E969>, <2 x double> %30) ; 2 uses
  %33 = extractelement <2 x double> %32, i64 0
  %34 = fsub double %29, %33                      ; 2 uses
  %i.fi = fsub double %34, %i.fg
  store double %i.fi, ptr %i.at, align 8, !tbaa !13
  %i.fj = fadd double %34, %i.fg
  store double %i.fj, ptr %i.cd, align 8, !tbaa !13
  %35 = insertelement <2 x double> %i.dq, double %i.ca, i64 0
  %36 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fk = insertelement <2 x double> %36, double %i.f, i64 1
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> <double f0xBFDBC4C04D71ABC1, double f0x3FE3F3A0E28BEDD1>, <2 x double> %i.fk) ; 2 uses
  %37 = fmul double %i.dr, f0x3FCC7B90E3024582
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.bx, double f0x3FECD4BCA9CB5C71, double %37)
  %38 = extractelement <2 x double> %i.fl, i64 1
  %39 = fsub double %38, %i.fm                    ; 2 uses
  %i.fn = extractelement <2 x double> %i.fl, i64 0 ; 2 uses
  %i.fo = fsub double %39, %i.fn
  store double %i.fo, ptr %i.l, align 8, !tbaa !13
  %i.fp = fadd double %39, %i.fn
  store double %i.fp, ptr %i.ar, align 8, !tbaa !13
  %i.fq = add nsw i64 %.0224225, 1                ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %.0229, i64 %6
  %i.fs = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.d
  %i.ft = getelementptr inbounds nuw i8, ptr %.0222227, i64 96
  %i.fu = getelementptr inbounds [8 x i8], ptr %.0223226, i64 %i.e
  %exitcond.not = icmp eq i64 %i.fq, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

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
