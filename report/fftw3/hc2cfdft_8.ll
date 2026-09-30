Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cfdft_8?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2c_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2c_genus = type { ptr, i32, i64 }

@desc = internal constant %struct.hc2c_desc_s { i64 8, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hc2cf_genus, %struct.opcnt { double 6.800000e+01, double 3.000000e+01, double 1.400000e+01, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [11 x i8] c"hc2cfdft_8\00", align 1
@twinstr = internal constant [2 x %struct.tw_instr] [%struct.tw_instr { i8 4, i8 1, i16 8 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 2
@fftw_rdft_hc2cf_genus = external constant %struct.hc2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hc2cfdft_8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2c_register(ptr noundef %0, ptr noundef nonnull @hc2cfdft_8, ptr noundef nonnull @desc, i32 noundef 1) #4
  ret void
}

declare void @fftw_khc2c_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hc2cfdft_8(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp slt i64 %6, %7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul i64 %6, 112
  %i.b = getelementptr i8, ptr %4, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -112
  %i.d = sub i64 0, %8                            ; 2 uses
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0289 = phi ptr [ %0, %.lr.ph ], [ %i.ed, %bb.b ] ; 6 uses
  %.0277288 = phi ptr [ %1, %.lr.ph ], [ %i.ee, %bb.b ] ; 6 uses
  %.0278287 = phi ptr [ %2, %.lr.ph ], [ %i.ef, %bb.b ] ; 6 uses
  %.0279286 = phi ptr [ %3, %.lr.ph ], [ %i.eg, %bb.b ] ; 6 uses
  %.0280285 = phi ptr [ %i.c, %.lr.ph ], [ %i.eh, %bb.b ] ; 8 uses
  %.0281284 = phi ptr [ %5, %.lr.ph ], [ %i.ei, %bb.b ] ; 4 uses
  %.0282283 = phi i64 [ %6, %.lr.ph ], [ %i.ec, %bb.b ]
  %i.f = load double, ptr %.0277288, align 8, !tbaa !13 ; 2 uses
  %i.g = load double, ptr %.0279286, align 8, !tbaa !13 ; 2 uses
  %i.h = fadd double %i.f, %i.g                   ; 2 uses
  %i.i = load double, ptr %.0278287, align 8, !tbaa !13 ; 2 uses
  %i.j = load double, ptr %.0289, align 8, !tbaa !13 ; 2 uses
  %i.k = fsub double %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.0281284, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 4 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.0277288, i64 %i.m ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.0279286, i64 %i.m ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !13 ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.0289, i64 %i.m ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.0278287, i64 %i.m ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0280285, i64 48
  %i.w = fsub double %i.o, %i.q                   ; 2 uses
  %i.x = fadd double %i.s, %i.u                   ; 2 uses
  %i.y = load <2 x double>, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.z = fneg double %i.x
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.w, i64 1
  %i.ad = fmul <2 x double> %i.aa, %i.ac
  %i.ae = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.x, i64 1
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ag, <2 x double> %i.ad) ; 2 uses
  %i.ai = fneg double %i.h
  %i.aj = load <2 x double>, ptr %.0280285, align 8, !tbaa !13 ; 2 uses
  %i.ak = insertelement <2 x double> poison, double %i.h, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ai, i64 1
  %i.am = fmul <2 x double> %i.aj, %i.al
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ap, <2 x double> %i.an) ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0280285, i64 64
  %i.as = fadd double %i.o, %i.q                  ; 2 uses
  %i.at = fsub double %i.s, %i.u                  ; 2 uses
  %i.au = load <2 x double>, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %i.av = fneg double %i.at
  %i.aw = insertelement <2 x double> poison, double %i.as, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x double> %i.ax, %i.ay
  %i.ba = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.as, i64 1
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bc, <2 x double> %i.az) ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0281284, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 4 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0277288, i64 %i.bf ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0279286, i64 %i.bf ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0289, i64 %i.bf ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0278287, i64 %i.bf ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0281284, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11 ; 4 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0277288, i64 %i.bp ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %.0279286, i64 %i.bp ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %.0289, i64 %i.bp ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0278287, i64 %i.bp ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0280285, i64 16
  %i.bz = fsub double %i.bh, %i.bj                ; 2 uses
  %i.ca = fadd double %i.bl, %i.bn                ; 2 uses
  %i.cb = load <2 x double>, ptr %i.by, align 8, !tbaa !13 ; 2 uses
  %i.cc = fneg double %i.ca
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.bz, i64 1
  %i.cg = fmul <2 x double> %i.cd, %i.cf
  %i.ch = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ca, i64 1
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cj, <2 x double> %i.cg) ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0280285, i64 80
  %i.cm = fsub double %i.br, %i.bt                ; 2 uses
  %i.cn = fadd double %i.bv, %i.bx                ; 2 uses
  %i.co = load <2 x double>, ptr %i.cl, align 8, !tbaa !13 ; 2 uses
  %i.cp = fneg double %i.cn
  %i.cq = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cm, i64 1
  %i.ct = fmul <2 x double> %i.cq, %i.cs
  %i.cu = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cn, i64 1
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cw, <2 x double> %i.ct) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0280285, i64 32
  %i.cz = fadd double %i.bh, %i.bj                ; 2 uses
  %i.da = fsub double %i.bl, %i.bn                ; 2 uses
  %i.db = load <2 x double>, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.dc = fneg double %i.da
  %i.dd = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.dc, i64 1
  %i.df = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dg = fmul <2 x double> %i.de, %i.df
  %i.dh = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.cz, i64 1
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.dj, <2 x double> %i.dg) ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0280285, i64 96
  %i.dm = fadd double %i.br, %i.bt                ; 2 uses
  %i.dn = fsub double %i.bv, %i.bx                ; 2 uses
  %i.do = load <2 x double>, ptr %i.dl, align 8, !tbaa !13 ; 2 uses
  %i.dp = fneg double %i.dn
  %i.dq = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.ds = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = fmul <2 x double> %i.dr, %i.ds
  %i.du = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.dm, i64 1
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dw, <2 x double> %i.dt) ; 3 uses
  %9 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop = fadd <2 x double> %i.aq, %i.bd
  %foldExtExtBinop292 = fsub <2 x double> %i.dx, %i.dk
  %10 = shufflevector <2 x double> %i.aq, <2 x double> %i.dk, <2 x i32> <i32 1, i32 2>
  %11 = shufflevector <2 x double> %i.bd, <2 x double> %i.dx, <2 x i32> <i32 1, i32 2>
  %foldExtExtBinop292.a = fsub <2 x double> %10, %11 ; 2 uses
  %12 = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %foldExtExtBinop292, <2 x i32> <i32 0, i32 3> ; 2 uses
  %13 = fadd <2 x double> %12, %foldExtExtBinop292.a ; 3 uses
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %15 = fsub <2 x double> %12, %foldExtExtBinop292.a ; 3 uses
  %16 = fsub <2 x double> %15, %14
  %17 = fmul <2 x double> %16, splat (double f0x3FD6A09E667F3BCD) ; 3 uses
  %18 = fsub <2 x double> %i.ck, %i.cx            ; 4 uses
  %19 = shufflevector <2 x double> %15, <2 x double> %18, <2 x i32> <i32 3, i32 1> ; 2 uses
  %20 = shufflevector <2 x double> %13, <2 x double> %18, <2 x i32> <i32 1, i32 2>
  %21 = fadd <2 x double> %i.aq, %i.bd
  %22 = fsub <2 x double> %i.aq, %i.bd
  %23 = shufflevector <2 x double> %22, <2 x double> %21, <2 x i32> <i32 0, i32 3> ; 3 uses
  %24 = fadd <2 x double> %i.dk, %i.dx            ; 3 uses
  %foldExtExtBinop294 = fsub <2 x double> %24, %23 ; 2 uses
  %foldExtExtBinop296 = fsub <2 x double> %23, %24 ; 2 uses
  %25 = fadd <2 x double> %23, %24                ; 3 uses
  %26 = fsub double %i.f, %i.g                    ; 2 uses
  %i.dy = fadd double %i.i, %i.j                  ; 2 uses
  %27 = insertelement <2 x double> poison, double %i.dy, i64 0
  %28 = insertelement <2 x double> %27, double %26, i64 1
  %29 = fsub <2 x double> %28, %9                 ; 4 uses
  %30 = fsub <2 x double> %29, %18
  %31 = fadd <2 x double> %29, %18
  %32 = shufflevector <2 x double> %30, <2 x double> %31, <2 x i32> <i32 0, i32 3>
  %33 = fmul <2 x double> %32, splat (double 5.000000e-01) ; 3 uses
  %34 = shufflevector <2 x double> %29, <2 x double> %13, <2 x i32> <i32 1, i32 2> ; 2 uses
  %foldExtExtBinop294.a = fsub <2 x double> %34, %19
  %35 = fadd <2 x double> %34, %19
  %36 = shufflevector <2 x double> %foldExtExtBinop294.a, <2 x double> %35, <2 x i32> <i32 0, i32 3>
  %37 = fmul <2 x double> %36, <double 5.000000e-01, double f0x3FD6A09E667F3BCD> ; 3 uses
  %38 = shufflevector <2 x double> %15, <2 x double> %29, <2 x i32> <i32 0, i32 2>
  %39 = fadd <2 x double> %38, %20
  %40 = fmul <2 x double> %39, <double f0x3FD6A09E667F3BCD, double 5.000000e-01> ; 3 uses
  %41 = fadd <2 x double> %40, %37                ; 2 uses
  %42 = extractelement <2 x double> %41, i64 0
  store double %42, ptr %i.bg, align 8, !tbaa !13
  %43 = extractelement <2 x double> %41, i64 1
  store double %43, ptr %i.bk, align 8, !tbaa !13
  %foldExtExtBinop298 = fsub <2 x double> %40, %37
  %44 = extractelement <2 x double> %foldExtExtBinop298, i64 0
  store double %44, ptr %i.p, align 8, !tbaa !13
  %foldExtExtBinop300 = fsub <2 x double> %40, %37
  %45 = extractelement <2 x double> %foldExtExtBinop300, i64 1
  store double %45, ptr %i.t, align 8, !tbaa !13
  %foldExtExtBinop302 = fsub <2 x double> %33, %17
  %46 = extractelement <2 x double> %foldExtExtBinop302, i64 0
  store double %46, ptr %.0278287, align 8, !tbaa !13
  %foldExtExtBinop304 = fsub <2 x double> %17, %33
  %47 = extractelement <2 x double> %foldExtExtBinop304, i64 1
  store double %47, ptr %.0279286, align 8, !tbaa !13
  %foldExtExtBinop296.a = fadd <2 x double> %33, %17 ; 2 uses
  %i.dz = extractelement <2 x double> %foldExtExtBinop296.a, i64 0
  store double %i.dz, ptr %i.bu, align 8, !tbaa !13
  %48 = extractelement <2 x double> %foldExtExtBinop296.a, i64 1
  store double %48, ptr %i.bq, align 8, !tbaa !13
  %49 = insertelement <2 x double> poison, double %26, i64 0
  %50 = insertelement <2 x double> %49, double %i.dy, i64 1
  %51 = fadd <2 x double> %50, %i.ah              ; 2 uses
  %52 = fadd <2 x double> %i.ck, %i.cx            ; 2 uses
  %foldExtExtBinop300.a = fadd <2 x double> %51, %52 ; 3 uses
  %53 = shufflevector <2 x double> %foldExtExtBinop296, <2 x double> %25, <2 x i32> <i32 0, i32 3>
  %54 = fadd <2 x double> %foldExtExtBinop300.a, %53
  %55 = fmul <2 x double> %54, splat (double 5.000000e-01) ; 2 uses
  %i.ea = extractelement <2 x double> %55, i64 0
  store double %i.ea, ptr %.0277288, align 8, !tbaa !13
  %56 = extractelement <2 x double> %55, i64 1
  store double %56, ptr %.0289, align 8, !tbaa !13
  %foldExtExtBinop306 = fsub <2 x double> %foldExtExtBinop296, %foldExtExtBinop300.a
  %57 = fsub <2 x double> %51, %52                ; 3 uses
  %58 = shufflevector <2 x double> %57, <2 x double> %foldExtExtBinop300.a, <2 x i32> <i32 1, i32 3>
  %59 = fsub <2 x double> %58, %25                ; 2 uses
  %60 = shufflevector <2 x double> %foldExtExtBinop306, <2 x double> %59, <2 x i32> <i32 0, i32 3>
  %61 = fmul <2 x double> %60, splat (double 5.000000e-01) ; 2 uses
  %62 = extractelement <2 x double> %61, i64 0
  store double %62, ptr %i.bs, align 8, !tbaa !13
  %63 = extractelement <2 x double> %61, i64 1
  store double %63, ptr %i.bw, align 8, !tbaa !13
  %64 = extractelement <2 x double> %59, i64 0
  %i.eb = fmul double %64, 5.000000e-01
  store double %i.eb, ptr %i.bm, align 8, !tbaa !13
  %shift = shufflevector <2 x double> %foldExtExtBinop294, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop308 = fsub <2 x double> %shift, %57
  %65 = extractelement <2 x double> %foldExtExtBinop308, i64 0
  %66 = fmul double %65, 5.000000e-01
  store double %66, ptr %i.bi, align 8, !tbaa !13
  %67 = shufflevector <2 x double> %foldExtExtBinop294, <2 x double> %25, <2 x i32> <i32 1, i32 2>
  %68 = fadd <2 x double> %57, %67
  %69 = fmul <2 x double> %68, splat (double 5.000000e-01) ; 2 uses
  %70 = extractelement <2 x double> %69, i64 1
  store double %70, ptr %i.r, align 8, !tbaa !13
  %71 = extractelement <2 x double> %69, i64 0
  store double %71, ptr %i.n, align 8, !tbaa !13
  %i.ec = add nsw i64 %.0282283, 1                ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %.0289, i64 %8
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0277288, i64 %8
  %i.ef = getelementptr inbounds [8 x i8], ptr %.0278287, i64 %i.d
  %i.eg = getelementptr inbounds [8 x i8], ptr %.0279286, i64 %i.d
  %i.eh = getelementptr inbounds nuw i8, ptr %.0280285, i64 112
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0281284, i64 %i.e
  %exitcond.not = icmp eq i64 %i.ec, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

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
