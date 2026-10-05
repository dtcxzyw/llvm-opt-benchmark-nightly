Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/t1_7?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ct_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.ct_genus = type { ptr, i64 }

@desc = internal constant %struct.ct_desc_s { i64 7, ptr @.str, ptr @twinstr, ptr @fftw_dft_t_genus, %struct.opcnt { double 3.600000e+01, double 2.400000e+01, double 3.600000e+01, double 0.000000e+00 }, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [5 x i8] c"t1_7\00", align 1
@twinstr = internal constant [2 x %struct.tw_instr] [%struct.tw_instr { i8 4, i8 0, i16 7 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 2
@fftw_dft_t_genus = external constant %struct.ct_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_t1_7(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_dit_register(ptr noundef %0, ptr noundef nonnull @t1_7, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_dit_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @t1_7(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
bb.a:
  %i.a = icmp slt i64 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %4, 96
  %i.b = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.c = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0229 = phi ptr [ %0, %.lr.ph ], [ %i.ec, %bb.b ] ; 9 uses
  %.0221228 = phi ptr [ %1, %.lr.ph ], [ %i.ed, %bb.b ] ; 9 uses
  %.0222227 = phi ptr [ %i.b, %.lr.ph ], [ %i.ee, %bb.b ] ; 7 uses
  %.0223226 = phi ptr [ %3, %.lr.ph ], [ %i.ef, %bb.b ] ; 7 uses
  %.0224225 = phi i64 [ %4, %.lr.ph ], [ %i.eb, %bb.b ]
  %i.d = load double, ptr %.0229, align 8, !tbaa !13 ; 3 uses
  %i.e = load double, ptr %.0221228, align 8, !tbaa !13 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0223226, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.g ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = fneg double %i.i
  %i.m = load <2 x double>, ptr %.0222227, align 8, !tbaa !13 ; 2 uses
  %i.n = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.o = insertelement <2 x double> poison, double %i.k, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.l, i64 1
  %i.q = fmul <2 x double> %i.n, %i.p
  %i.r = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x double> poison, double %i.i, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.k, i64 1
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.q) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0223226, i64 48
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.w ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.w ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0222227, i64 80
  %i.ac = fneg double %i.y
  %i.ad = load <2 x double>, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.af = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ac, i64 1
  %i.ah = fmul <2 x double> %i.ae, %i.ag
  %i.ai = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.aa, i64 1
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ak, <2 x double> %i.ah) ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0223226, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.an ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.an ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0222227, i64 16
  %i.at = fneg double %i.ap
  %i.au = load <2 x double>, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aw = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.at, i64 1
  %i.ay = fmul <2 x double> %i.av, %i.ax
  %i.az = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.ar, i64 1
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.bb, <2 x double> %i.ay) ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0223226, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.be ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.be ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0222227, i64 64
  %i.bk = fneg double %i.bg
  %i.bl = load <2 x double>, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bk, i64 1
  %i.bp = fmul <2 x double> %i.bm, %i.bo
  %i.bq = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bi, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bs, <2 x double> %i.bp) ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0223226, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.bv ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.bv ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0222227, i64 32
  %i.cb = fneg double %i.bx
  %i.cc = load <2 x double>, ptr %i.ca, align 8, !tbaa !13 ; 2 uses
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.cb, i64 1
  %i.cg = fmul <2 x double> %i.cd, %i.cf
  %i.ch = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.bz, i64 1
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cj, <2 x double> %i.cg) ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0223226, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !11 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.0229, i64 %i.cm ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %i.cm ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0222227, i64 48
  %i.cs = fneg double %i.co
  %i.ct = load <2 x double>, ptr %i.cr, align 8, !tbaa !13 ; 2 uses
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cs, i64 1
  %i.cx = fmul <2 x double> %i.cu, %i.cw
  %i.cy = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x double> poison, double %i.co, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cq, i64 1
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.da, <2 x double> %i.cx) ; 4 uses
  %foldExtExtBinop = fadd <2 x double> %i.ck, %i.db ; 2 uses
  %i.dc = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 3 uses
  %7 = tail call double @llvm.fmuladd.f64(double %i.dc, double f0x3FE3F3A0E28BEDD1, double %i.e)
  %8 = shufflevector <2 x double> %i.u, <2 x double> %i.bc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %9 = shufflevector <2 x double> %i.al, <2 x double> %i.bt, <2 x i32> <i32 1, i32 3> ; 2 uses
  %10 = fadd <2 x double> %8, %9                  ; 3 uses
  %11 = fsub <2 x double> %8, %9                  ; 3 uses
  %12 = shufflevector <2 x double> %10, <2 x double> %11, <2 x i32> <i32 0, i32 3> ; 2 uses
  %13 = shufflevector <2 x double> %i.bc, <2 x double> %i.u, <2 x i32> <i32 1, i32 3> ; 2 uses
  %14 = shufflevector <2 x double> %i.bt, <2 x double> %i.al, <2 x i32> <i32 1, i32 3> ; 2 uses
  %15 = fadd <2 x double> %13, %14                ; 3 uses
  %16 = fsub <2 x double> %13, %14                ; 3 uses
  %17 = shufflevector <2 x double> %15, <2 x double> %16, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dd = extractelement <2 x double> %10, i64 0
  %foldExtExtBinop232 = fadd <2 x double> %12, %17
  %i.de = extractelement <2 x double> %foldExtExtBinop232, i64 0
  %i.df = fadd double %i.de, %i.dc
  %i.dg = fadd double %i.e, %i.df
  %18 = extractelement <2 x double> %11, i64 1
  %19 = fmul <2 x double> %12, <double f0x3FCC7B90E3024582, double f0x3FEF329C0558E969>
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FE904C37505DE4B>, <2 x double> %19) ; 2 uses
  %20 = extractelement <2 x double> %i.dh, i64 0
  %21 = fsub double %7, %20                       ; 2 uses
  %foldExtExtBinop234.a = fsub <2 x double> %i.bt, %i.bc ; 3 uses
  %i.di = extractelement <2 x double> %foldExtExtBinop234.a, i64 0
  %foldExtExtBinop236 = fadd <2 x double> %i.bc, %i.bt ; 4 uses
  %22 = extractelement <2 x double> %foldExtExtBinop236, i64 0
  %i.dj = shufflevector <2 x double> %foldExtExtBinop236, <2 x double> %foldExtExtBinop234.a, <2 x i32> <i32 0, i32 2>
  %23 = fmul <2 x double> %i.dj, <double f0x3FCC7B90E3024582, double f0x3FEF329C0558E969>
  %24 = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %16, <2 x i32> <i32 1, i32 3>
  %foldExtExtBinop238 = fadd <2 x double> %i.u, %i.al ; 3 uses
  %i.dk = extractelement <2 x double> %foldExtExtBinop238, i64 0
  %25 = fadd double %i.d, %i.dk
  %foldExtExtBinop240 = fadd <2 x double> %i.ck, %i.db ; 3 uses
  %26 = extractelement <2 x double> %foldExtExtBinop240, i64 0
  %foldExtExtBinop242 = fsub <2 x double> %i.al, %i.u ; 2 uses
  %27 = fadd double %25, %22
  %28 = fadd double %27, %26
  store double %28, ptr %.0229, align 8, !tbaa !13
  %29 = shufflevector <2 x double> %foldExtExtBinop236, <2 x double> %foldExtExtBinop242, <2 x i32> <i32 0, i32 2>
  %30 = shufflevector <2 x double> %16, <2 x double> %foldExtExtBinop240, <2 x i32> <i32 1, i32 2>
  store double %i.dg, ptr %.0221228, align 8, !tbaa !13
  %31 = shufflevector <2 x double> %foldExtExtBinop240, <2 x double> %foldExtExtBinop242, <2 x i32> <i32 0, i32 2> ; 2 uses
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FE904C37505DE4B>, <2 x double> %23) ; 2 uses
  %33 = shufflevector <2 x double> %i.ck, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %34 = shufflevector <2 x double> %i.db, <2 x double> %i.ck, <2 x i32> <i32 1, i32 2>
  %35 = fsub <2 x double> %33, %34                ; 4 uses
  %36 = extractelement <2 x double> %35, i64 0
  %i.dl = fmul double %36, f0xBFE904C37505DE4B
  %37 = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dm = insertelement <2 x double> %37, double %i.d, i64 1
  %38 = shufflevector <2 x double> %15, <2 x double> %35, <2 x i32> <i32 0, i32 2>
  %39 = fmul <2 x double> %38, <double f0x3FCC7B90E3024582, double f0x3FEF329C0558E969>
  %40 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %24, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FDBC4C04D71ABC1>, <2 x double> %39) ; 2 uses
  %41 = shufflevector <2 x double> %foldExtExtBinop238, <2 x double> %35, <2 x i32> <i32 0, i32 3> ; 2 uses
  %42 = fmul <2 x double> %41, <double f0x3FCC7B90E3024582, double f0xBFE904C37505DE4B>
  %43 = shufflevector <2 x double> %foldExtExtBinop238, <2 x double> %10, <2 x i32> <i32 0, i32 2>
  %44 = insertelement <2 x double> poison, double %i.d, i64 0
  %i.dn = insertelement <2 x double> %44, double %i.e, i64 1 ; 2 uses
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.dn)
  %45 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> <double f0x3FECD4BCA9CB5C71, double f0x3FEF329C0558E969>, <2 x double> %42) ; 2 uses
  %i.dp = extractelement <2 x double> %45, i64 1
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.di, double f0xBFDBC4C04D71ABC1, double %i.dp) ; 2 uses
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> <double f0x3FEF329C0558E969, double f0x3FE3F3A0E28BEDD1>, <2 x double> %i.dm) ; 2 uses
  %47 = extractelement <2 x double> %46, i64 0
  %48 = tail call double @llvm.fmuladd.f64(double %18, double f0xBFDBC4C04D71ABC1, double %47) ; 2 uses
  %shift.a = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop244.a = fsub <2 x double> %shift.a, %45
  %i.dr = extractelement <2 x double> %foldExtExtBinop244.a, i64 0 ; 2 uses
  %i.ds = fsub double %i.dr, %48
  store double %i.ds, ptr %i.bf, align 8, !tbaa !13
  %49 = fadd double %i.dr, %48
  store double %49, ptr %i.ao, align 8, !tbaa !13
  %i.dt = fadd double %21, %i.dq
  store double %i.dt, ptr %i.aq, align 8, !tbaa !13
  %i.du = fsub double %21, %i.dq
  store double %i.du, ptr %i.bh, align 8, !tbaa !13
  %50 = shufflevector <2 x double> %32, <2 x double> %40, <2 x i32> <i32 0, i32 2>
  %51 = fsub <2 x double> %i.do, %50              ; 2 uses
  %52 = shufflevector <2 x double> %i.dh, <2 x double> %32, <2 x i32> <i32 1, i32 3>
  %53 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> splat (double f0x3FDBC4C04D71ABC1), <2 x double> %52) ; 2 uses
  %54 = fadd <2 x double> %53, %51                ; 2 uses
  %55 = extractelement <2 x double> %54, i64 0
  %56 = extractelement <2 x double> %54, i64 1
  %57 = fsub <2 x double> %51, %53                ; 2 uses
  %58 = extractelement <2 x double> %57, i64 0
  store double %58, ptr %i.x, align 8, !tbaa !13
  store double %55, ptr %i.h, align 8, !tbaa !13
  store double %56, ptr %i.j, align 8, !tbaa !13
  %59 = extractelement <2 x double> %57, i64 1
  store double %59, ptr %i.z, align 8, !tbaa !13
  %i.dv = fmul <2 x double> %41, <double f0x3FECD4BCA9CB5C71, double f0x3FEF329C0558E969>
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> <double f0x3FCC7B90E3024582, double f0x3FDBC4C04D71ABC1>, <2 x double> %i.dv) ; 2 uses
  %60 = shufflevector <2 x double> %11, <2 x double> %foldExtExtBinop234.a, <2 x i32> <i32 1, i32 2>
  %61 = shufflevector <2 x double> %40, <2 x double> %i.dw, <2 x i32> <i32 1, i32 3>
  %62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> splat (double f0xBFE904C37505DE4B), <2 x double> %61) ; 2 uses
  %63 = shufflevector <2 x double> %foldExtExtBinop236, <2 x double> %15, <2 x i32> <i32 0, i32 2>
  %64 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %63, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.dn)
  %i.dx = fmul double %i.dd, f0x3FECD4BCA9CB5C71
  %65 = tail call double @llvm.fmuladd.f64(double %i.dc, double f0x3FCC7B90E3024582, double %i.dx)
  %i.dy = insertelement <2 x double> %i.dw, double %65, i64 1
  %66 = fsub <2 x double> %64, %i.dy              ; 2 uses
  %67 = fadd <2 x double> %66, %62                ; 2 uses
  %i.dz = extractelement <2 x double> %67, i64 0
  %68 = extractelement <2 x double> %67, i64 1
  %69 = fsub <2 x double> %66, %62                ; 2 uses
  %i.ea = extractelement <2 x double> %69, i64 0
  store double %i.ea, ptr %i.cn, align 8, !tbaa !13
  store double %i.dz, ptr %i.bw, align 8, !tbaa !13
  store double %68, ptr %i.by, align 8, !tbaa !13
  %70 = extractelement <2 x double> %69, i64 1
  store double %70, ptr %i.cp, align 8, !tbaa !13
  %i.eb = add nsw i64 %.0224225, 1                ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0229, i64 %6
  %i.ed = getelementptr inbounds [8 x i8], ptr %.0221228, i64 %6
  %i.ee = getelementptr inbounds nuw i8, ptr %.0222227, i64 96
  %i.ef = getelementptr inbounds [8 x i8], ptr %.0223226, i64 %i.c
  %exitcond.not = icmp eq i64 %i.eb, %5
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
