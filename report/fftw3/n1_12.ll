Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n1_12?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 12, ptr @.str, %struct.opcnt { double 8.800000e+01, double 8.000000e+00, double 8.000000e+00, double 0.000000e+00 }, ptr @fftw_dft_n_genus, i64 0, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"n1_12\00", align 1
@fftw_dft_n_genus = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n1_12(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n1_12, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n1_12(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0308 = phi ptr [ %0, %.lr.ph ], [ %i.ep, %bb.b ] ; 13 uses
  %.0296307 = phi ptr [ %1, %.lr.ph ], [ %i.eq, %bb.b ] ; 13 uses
  %.0297306 = phi ptr [ %2, %.lr.ph ], [ %i.er, %bb.b ] ; 13 uses
  %.0298305 = phi ptr [ %3, %.lr.ph ], [ %i.es, %bb.b ] ; 13 uses
  %.0299304 = phi ptr [ %4, %.lr.ph ], [ %i.et, %bb.b ] ; 12 uses
  %.0300303 = phi ptr [ %5, %.lr.ph ], [ %i.eu, %bb.b ] ; 12 uses
  %.0301302 = phi i64 [ %6, %.lr.ph ], [ %i.eo, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0308, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %.0299304, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0299304, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %9 = fsub double %i.k, %i.g
  %10 = fmul double %9, f0x3FEBB67AE8584CAA       ; 2 uses
  %i.l = load double, ptr %.0296307, align 8, !tbaa !13
  %i.m = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.e
  %i.n = load double, ptr %i.m, align 8, !tbaa !13 ; 2 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.i
  %i.p = load double, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %11 = fsub double %i.n, %i.p
  %12 = fmul double %11, f0x3FEBB67AE8584CAA      ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.g, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.n, i64 1
  %i.s = insertelement <2 x double> poison, double %i.k, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.p, i64 1
  %i.u = fadd <2 x double> %i.r, %i.t             ; 2 uses
  %i.v = insertelement <2 x double> poison, double %i.c, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.l, i64 1 ; 2 uses
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> splat (double -5.000000e-01), <2 x double> %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0299304, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.0299304, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0299304, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %13 = fsub double %i.aj, %i.af
  %14 = fmul double %13, f0x3FEBB67AE8584CAA      ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.z
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.ad
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.ah
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %15 = fsub double %i.an, %i.ap
  %16 = fmul double %15, f0x3FEBB67AE8584CAA      ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.an, i64 1
  %i.as = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ap, i64 1
  %i.au = fadd <2 x double> %i.ar, %i.at          ; 2 uses
  %i.av = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.al, i64 1 ; 2 uses
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> splat (double -5.000000e-01), <2 x double> %i.aw) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0299304, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.0299304, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0299304, i64 88
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %17 = fsub double %i.bj, %i.bf
  %18 = fmul double %17, f0x3FEBB67AE8584CAA      ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.az
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.bd
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.bh
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %19 = fsub double %i.bn, %i.bp
  %20 = fmul double %19, f0x3FEBB67AE8584CAA      ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bn, i64 1
  %i.bs = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bp, i64 1
  %i.bu = fadd <2 x double> %i.br, %i.bt          ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bl, i64 1 ; 2 uses
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> splat (double -5.000000e-01), <2 x double> %i.bw) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0299304, i64 72
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.0299304, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0299304, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11 ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.0308, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !13 ; 2 uses
  %21 = fsub double %i.cj, %i.cf
  %22 = fmul double %21, f0x3FEBB67AE8584CAA      ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.bz
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !13
  %i.cm = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.cd
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !13 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %i.ch
  %i.cp = load double, ptr %i.co, align 8, !tbaa !13 ; 2 uses
  %23 = fsub double %i.cn, %i.cp
  %24 = fmul double %23, f0x3FEBB67AE8584CAA      ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cn, i64 1
  %i.cs = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cp, i64 1
  %i.cu = fadd <2 x double> %i.cr, %i.ct          ; 2 uses
  %i.cv = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cl, i64 1 ; 2 uses
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> splat (double -5.000000e-01), <2 x double> %i.cw) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0300303, i64 48
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !11 ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %i.cz
  %i.db = fadd <2 x double> %i.w, %i.u            ; 2 uses
  %i.dc = fadd <2 x double> %i.aw, %i.au          ; 2 uses
  %i.dd = fadd <2 x double> %i.bw, %i.bu          ; 2 uses
  %i.de = fadd <2 x double> %i.cw, %i.cu          ; 2 uses
  %i.df = fadd <2 x double> %i.db, %i.dc          ; 2 uses
  %i.dg = fadd <2 x double> %i.dd, %i.de          ; 2 uses
  %i.dh = fsub <2 x double> %i.df, %i.dg          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  store double %i.di, ptr %i.da, align 8, !tbaa !13
  %i.dj = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %i.cz
  %i.dk = extractelement <2 x double> %i.dh, i64 1
  %i.dl = fadd <2 x double> %i.df, %i.dg          ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 0
  store double %i.dm, ptr %.0297306, align 8, !tbaa !13
  store double %i.dk, ptr %i.dj, align 8, !tbaa !13
  %i.dn = extractelement <2 x double> %i.dl, i64 1
  store double %i.dn, ptr %.0298305, align 8, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.0300303, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.0300303, i64 72
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !11 ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %i.ds
  %i.du = fsub <2 x double> %i.db, %i.dc
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = fsub <2 x double> %i.dd, %i.de          ; 2 uses
  %i.dx = fsub <2 x double> %i.dv, %i.dw          ; 2 uses
  %i.dy = extractelement <2 x double> %i.dx, i64 0
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %i.dp
  %i.ea = extractelement <2 x double> %i.dx, i64 1
  %i.eb = fadd <2 x double> %i.dv, %i.dw          ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  store double %i.ec, ptr %i.dq, align 8, !tbaa !13
  store double %i.dy, ptr %i.dt, align 8, !tbaa !13
  store double %i.ea, ptr %i.dz, align 8, !tbaa !13
  %i.ed = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %i.ds
  %i.ee = extractelement <2 x double> %i.eb, i64 1
  store double %i.ee, ptr %i.ed, align 8, !tbaa !13
  %25 = extractelement <2 x double> %i.x, i64 1   ; 2 uses
  %26 = fadd double %10, %25                      ; 2 uses
  %27 = extractelement <2 x double> %i.ax, i64 1  ; 2 uses
  %28 = fadd double %14, %27                      ; 2 uses
  %29 = fsub double %26, %28                      ; 2 uses
  %30 = fadd double %26, %28                      ; 2 uses
  %31 = extractelement <2 x double> %i.bx, i64 1  ; 2 uses
  %32 = fadd double %18, %31                      ; 2 uses
  %33 = extractelement <2 x double> %i.cx, i64 1  ; 2 uses
  %34 = fadd double %22, %33                      ; 2 uses
  %35 = fsub double %32, %34                      ; 2 uses
  %36 = fadd double %32, %34                      ; 2 uses
  %37 = extractelement <2 x double> %i.bx, i64 0  ; 2 uses
  %38 = fadd double %37, %20                      ; 2 uses
  %39 = extractelement <2 x double> %i.cx, i64 0  ; 2 uses
  %40 = fadd double %39, %24                      ; 2 uses
  %41 = fsub double %38, %40                      ; 2 uses
  %42 = fadd double %38, %40                      ; 2 uses
  %43 = extractelement <2 x double> %i.x, i64 0   ; 2 uses
  %44 = fadd double %43, %12                      ; 2 uses
  %45 = extractelement <2 x double> %i.ax, i64 0  ; 2 uses
  %46 = fadd double %45, %16                      ; 2 uses
  %47 = fadd double %44, %46                      ; 2 uses
  %48 = fsub double %44, %46                      ; 2 uses
  %49 = fsub double %29, %41
  %50 = getelementptr inbounds nuw i8, ptr %.0300303, i64 8
  %51 = load i64, ptr %50, align 8, !tbaa !11     ; 2 uses
  %52 = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %51
  store double %49, ptr %52, align 8, !tbaa !13
  %53 = fadd double %48, %35
  %54 = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %51
  store double %53, ptr %54, align 8, !tbaa !13
  %55 = fadd double %29, %41
  %56 = getelementptr inbounds nuw i8, ptr %.0300303, i64 56
  %57 = load i64, ptr %56, align 8, !tbaa !11     ; 2 uses
  %58 = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %57
  store double %55, ptr %58, align 8, !tbaa !13
  %59 = fsub double %48, %35
  %i.ef = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %57
  store double %59, ptr %i.ef, align 8, !tbaa !13
  %60 = fsub double %47, %42
  %i.eg = getelementptr inbounds nuw i8, ptr %.0300303, i64 80
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !11 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %i.eh
  store double %60, ptr %i.ei, align 8, !tbaa !13
  %61 = fsub double %30, %36
  %62 = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %i.eh
  store double %61, ptr %62, align 8, !tbaa !13
  %63 = fadd double %47, %42
  %64 = getelementptr inbounds nuw i8, ptr %.0300303, i64 32
  %65 = load i64, ptr %64, align 8, !tbaa !11     ; 2 uses
  %66 = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %65
  store double %63, ptr %66, align 8, !tbaa !13
  %67 = fadd double %30, %36
  %i.ej = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %65
  store double %67, ptr %i.ej, align 8, !tbaa !13
  %68 = fsub double %25, %10                      ; 2 uses
  %69 = fsub double %27, %14                      ; 2 uses
  %70 = fsub double %68, %69                      ; 2 uses
  %71 = fadd double %68, %69                      ; 2 uses
  %72 = fsub double %31, %18                      ; 2 uses
  %73 = fsub double %33, %22                      ; 2 uses
  %74 = fsub double %72, %73                      ; 2 uses
  %75 = fadd double %72, %73                      ; 2 uses
  %76 = fsub double %37, %20                      ; 2 uses
  %77 = fsub double %39, %24                      ; 2 uses
  %78 = fsub double %76, %77                      ; 2 uses
  %79 = fadd double %76, %77                      ; 2 uses
  %80 = fsub double %43, %12                      ; 2 uses
  %81 = fsub double %45, %16                      ; 2 uses
  %82 = fadd double %80, %81                      ; 2 uses
  %83 = fsub double %80, %81                      ; 2 uses
  %84 = fsub double %70, %78
  %85 = getelementptr inbounds nuw i8, ptr %.0300303, i64 40
  %86 = load i64, ptr %85, align 8, !tbaa !11     ; 2 uses
  %87 = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %86
  store double %84, ptr %87, align 8, !tbaa !13
  %88 = fadd double %83, %74
  %89 = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %86
  store double %88, ptr %89, align 8, !tbaa !13
  %90 = fadd double %70, %78
  %91 = getelementptr inbounds nuw i8, ptr %.0300303, i64 88
  %92 = load i64, ptr %91, align 8, !tbaa !11     ; 2 uses
  %93 = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %92
  store double %90, ptr %93, align 8, !tbaa !13
  %94 = fsub double %83, %74
  %95 = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %92
  store double %94, ptr %95, align 8, !tbaa !13
  %96 = fsub double %82, %79
  %97 = getelementptr inbounds nuw i8, ptr %.0300303, i64 16
  %98 = load i64, ptr %97, align 8, !tbaa !11     ; 2 uses
  %99 = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %98
  store double %96, ptr %99, align 8, !tbaa !13
  %100 = fsub double %71, %75
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %98
  store double %100, ptr %i.ek, align 8, !tbaa !13
  %101 = fadd double %82, %79
  %i.el = getelementptr inbounds nuw i8, ptr %.0300303, i64 64
  %i.em = load i64, ptr %i.el, align 8, !tbaa !11 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %i.em
  store double %101, ptr %i.en, align 8, !tbaa !13
  %102 = fadd double %71, %75
  %103 = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %i.em
  store double %102, ptr %103, align 8, !tbaa !13
  %i.eo = add nsw i64 %.0301302, -1
  %i.ep = getelementptr inbounds [8 x i8], ptr %.0308, i64 %7
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0296307, i64 %7
  %i.er = getelementptr inbounds [8 x i8], ptr %.0297306, i64 %8
  %i.es = getelementptr inbounds [8 x i8], ptr %.0298305, i64 %8
  %i.et = getelementptr inbounds [8 x i8], ptr %.0299304, i64 %i.b
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0300303, i64 %i.b
  %i.ev = icmp samesign ugt i64 %.0301302, 1
  br i1 %i.ev, label %bb.b, label %._crit_edge, !llvm.loop !9

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
