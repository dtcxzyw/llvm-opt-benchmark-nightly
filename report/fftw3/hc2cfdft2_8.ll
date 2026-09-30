Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cfdft2_8?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2c_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2c_genus = type { ptr, i32, i64 }

@desc = internal constant %struct.hc2c_desc_s { i64 8, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hc2cf_genus, %struct.opcnt { double 7.200000e+01, double 3.800000e+01, double 1.800000e+01, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [12 x i8] c"hc2cfdft2_8\00", align 1
@twinstr = internal constant [4 x %struct.tw_instr] [%struct.tw_instr { i8 2, i8 1, i16 1 }, %struct.tw_instr { i8 2, i8 1, i16 3 }, %struct.tw_instr { i8 2, i8 1, i16 7 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 16
@fftw_rdft_hc2cf_genus = external constant %struct.hc2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hc2cfdft2_8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2c_register(ptr noundef %0, ptr noundef nonnull @hc2cfdft2_8, ptr noundef nonnull @desc, i32 noundef 1) #4
  ret void
}

declare void @fftw_khc2c_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hc2cfdft2_8(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp slt i64 %6, %7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul i64 %6, 48
  %i.b = getelementptr i8, ptr %4, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -48
  %i.d = sub i64 0, %8                            ; 2 uses
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0313 = phi ptr [ %0, %.lr.ph ], [ %i.er, %bb.b ] ; 6 uses
  %.0301312 = phi ptr [ %1, %.lr.ph ], [ %i.es, %bb.b ] ; 6 uses
  %.0302311 = phi ptr [ %2, %.lr.ph ], [ %i.et, %bb.b ] ; 6 uses
  %.0303310 = phi ptr [ %3, %.lr.ph ], [ %i.eu, %bb.b ] ; 6 uses
  %.0304309 = phi ptr [ %i.c, %.lr.ph ], [ %i.ev, %bb.b ] ; 6 uses
  %.0305308 = phi ptr [ %5, %.lr.ph ], [ %i.ew, %bb.b ] ; 4 uses
  %.0306307 = phi i64 [ %6, %.lr.ph ], [ %i.eq, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0304309, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.0304309, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0304309, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.0304309, i64 32
  %i.j = load <2 x double>, ptr %.0304309, align 8, !tbaa !13 ; 5 uses
  %i.k = load double, ptr %i.f, align 8, !tbaa !13 ; 6 uses
  %i.l = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.m = load <2 x double>, ptr %i.i, align 8, !tbaa !13 ; 7 uses
  %i.n = extractelement <2 x double> %i.m, i64 1  ; 3 uses
  %i.o = fmul double %i.k, %i.n
  %i.p = extractelement <2 x double> %i.m, i64 0  ; 2 uses
  %i.q = fneg double %i.p                         ; 2 uses
  %i.r = insertelement <2 x double> poison, double %i.o, i64 0
  %i.s = load double, ptr %.0301312, align 8, !tbaa !13 ; 2 uses
  %i.t = load double, ptr %.0303310, align 8, !tbaa !13 ; 2 uses
  %i.u = fadd double %i.s, %i.t                   ; 2 uses
  %i.v = load double, ptr %.0302311, align 8, !tbaa !13 ; 2 uses
  %i.w = load double, ptr %.0313, align 8, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0305308, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0301312, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0303310, i64 %i.y ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0313, i64 %i.y ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.0302311, i64 %i.y ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  %i.ah = fadd double %i.aa, %i.ac                ; 2 uses
  %i.ai = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aj = fneg double %i.u
  %i.ak = fsub double %i.ae, %i.ag                ; 2 uses
  %i.al = fneg double %i.ak
  %i.am = fsub double %i.v, %i.w                  ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.u, i64 1
  %i.ap = insertelement <2 x double> %i.ai, double %i.am, i64 1
  %i.aq = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ah, i64 1
  %i.as = insertelement <2 x double> poison, double %i.am, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ak, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0305308, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11 ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0301312, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0303310, i64 %i.av ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0313, i64 %i.av ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0302311, i64 %i.av ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0305308, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 4 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.0301312, i64 %i.bf ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0303310, i64 %i.bf ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.0313, i64 %i.bf ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !13 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0302311, i64 %i.bf ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = fmul double %i.k, %i.q
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.l, double %i.n, double %i.bo) ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.ax, i64 1
  %i.bs = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.az, i64 1
  %i.bu = fsub <2 x double> %i.br, %i.bt          ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bb, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bd, i64 1
  %i.bz = fadd <2 x double> %i.bw, %i.by          ; 2 uses
  %i.ca = fneg <2 x double> %i.bz
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.ce = load <2 x double>, ptr %i.g, align 8, !tbaa !13 ; 5 uses
  %i.cf = load double, ptr %i.h, align 8, !tbaa !13 ; 3 uses
  %i.cg = extractelement <2 x double> %i.ce, i64 0
  %9 = insertelement <2 x double> poison, double %i.ax, i64 0
  %10 = insertelement <2 x double> %9, double %i.bh, i64 1
  %11 = insertelement <2 x double> poison, double %i.az, i64 0
  %12 = insertelement <2 x double> %11, double %i.bj, i64 1
  %13 = fadd <2 x double> %10, %12                ; 2 uses
  %14 = insertelement <2 x double> poison, double %i.bb, i64 0
  %15 = insertelement <2 x double> %14, double %i.bl, i64 1
  %16 = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.ch = insertelement <2 x double> %16, double %i.bn, i64 1
  %17 = fsub <2 x double> %15, %i.ch              ; 2 uses
  %18 = fneg <2 x double> %17
  %19 = shufflevector <2 x double> %i.m, <2 x double> %i.ce, <2 x i32> <i32 3, i32 1>
  %20 = fmul <2 x double> %19, %18
  %21 = shufflevector <2 x double> %i.ce, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %13, <2 x double> %20) ; 2 uses
  %23 = extractelement <2 x double> %22, i64 0    ; 2 uses
  %24 = extractelement <2 x double> %22, i64 1    ; 2 uses
  %i.ci = insertelement <2 x double> %i.m, double %i.cf, i64 0
  %25 = fmul <2 x double> %i.ci, %13
  %26 = shufflevector <2 x double> %i.ce, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %17, <2 x double> %25) ; 4 uses
  %28 = fsub double %i.aa, %i.ac                  ; 2 uses
  %29 = fadd double %i.ae, %i.ag                  ; 2 uses
  %30 = fadd double %i.v, %i.w                    ; 2 uses
  %31 = fneg double %29
  %foldExtExtBinop = fmul <2 x double> %i.j, %i.ce
  %32 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %33 = fmul double %i.k, %i.cg                   ; 2 uses
  %34 = fmul double %i.k, %i.cf                   ; 2 uses
  %35 = fmul double %i.l, %i.cf                   ; 2 uses
  %36 = fsub double %32, %34                      ; 2 uses
  %37 = fadd double %33, %35                      ; 2 uses
  %38 = fadd double %32, %34                      ; 4 uses
  %i.cj = insertelement <2 x double> %i.j, double %38, i64 1
  %39 = fmul double %37, %31
  %40 = fmul double %37, %28
  %i.ck = fsub double %35, %33                    ; 4 uses
  %i.cl = fmul double %i.ck, %i.q
  %i.cm = insertelement <2 x double> %i.r, double %i.cl, i64 1
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.m, <2 x double> %i.cm) ; 4 uses
  %i.co = fmul double %i.ck, %i.n
  %i.cp = shufflevector <2 x double> %i.cn, <2 x double> %i.j, <2 x i32> <i32 1, i32 2>
  %i.cq = tail call double @llvm.fmuladd.f64(double %38, double %i.p, double %i.co) ; 2 uses
  %i.cr = fmul <2 x double> %i.cp, %i.ao
  %i.cs = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.k, i64 1
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.ap, <2 x double> %i.cr) ; 4 uses
  %i.cv = insertelement <2 x double> %i.cn, double %i.k, i64 0
  %i.cw = fmul <2 x double> %i.cv, %i.ar
  %i.cx = insertelement <2 x double> %i.j, double %i.cq, i64 1
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.at, <2 x double> %i.cw) ; 2 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 0 ; 2 uses
  %i.da = extractelement <2 x double> %i.cy, i64 1 ; 2 uses
  %i.db = fadd double %i.cz, %i.da
  %i.dc = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.bp, i64 1
  %i.de = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.df = insertelement <2 x double> %i.de, double %38, i64 0
  %i.dg = fmul <2 x double> %i.dd, %i.cb
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cc, <2 x double> %i.dg) ; 4 uses
  %i.di = insertelement <2 x double> %i.cd, double %i.ck, i64 1
  %i.dj = fmul <2 x double> %i.di, %i.bu
  %i.dk = insertelement <2 x double> %i.cn, double %38, i64 1
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.bz, <2 x double> %i.dj) ; 2 uses
  %41 = fsub double %24, %23
  %42 = shufflevector <2 x double> %27, <2 x double> %i.cu, <2 x i32> <i32 0, i32 3>
  %43 = shufflevector <2 x double> %27, <2 x double> %i.cu, <2 x i32> <i32 1, i32 2>
  %44 = fsub <2 x double> %42, %43                ; 2 uses
  %45 = extractelement <2 x double> %i.dl, i64 0  ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 1 ; 2 uses
  %46 = fsub double %i.dm, %45                    ; 2 uses
  %47 = insertelement <2 x double> poison, double %41, i64 0
  %i.dn = insertelement <2 x double> %47, double %i.db, i64 1 ; 2 uses
  %48 = fadd <2 x double> %44, %i.dn
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %50 = fsub <2 x double> %i.dn, %44              ; 3 uses
  %foldExtExtBinop316 = fadd <2 x double> %49, %50
  %i.do = extractelement <2 x double> %foldExtExtBinop316, i64 0
  %51 = fmul double %i.do, f0x3FD6A09E667F3BCD    ; 2 uses
  %foldExtExtBinop318 = fadd <2 x double> %50, %49
  %i.dp = extractelement <2 x double> %foldExtExtBinop318, i64 1
  %52 = fmul double %i.dp, f0x3FD6A09E667F3BCD    ; 2 uses
  %53 = fsub <2 x double> %50, %49
  %54 = fmul <2 x double> %53, splat (double f0x3FD6A09E667F3BCD) ; 3 uses
  %shift = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop320 = fsub <2 x double> %i.dh, %shift
  %55 = extractelement <2 x double> %foldExtExtBinop320, i64 0 ; 2 uses
  %i.dq = fsub double %i.s, %i.t                  ; 2 uses
  %56 = tail call double @llvm.fmuladd.f64(double %36, double %28, double %39) ; 2 uses
  %57 = fsub double %i.dq, %56                    ; 2 uses
  %i.dr = fsub double %57, %46
  %i.ds = fmul double %i.dr, 5.000000e-01         ; 2 uses
  %i.dt = fadd double %57, %46
  %58 = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.du = fadd double %i.ds, %52
  store double %i.du, ptr %i.aw, align 8, !tbaa !13
  %i.dv = fsub double %52, %i.ds
  %i.dw = fadd double %i.dq, %56                  ; 2 uses
  %59 = shufflevector <2 x double> %i.dh, <2 x double> %i.cu, <2 x i32> <i32 0, i32 3>
  %60 = shufflevector <2 x double> %i.dh, <2 x double> %i.cu, <2 x i32> <i32 1, i32 2>
  %61 = fadd <2 x double> %59, %60                ; 3 uses
  %62 = extractelement <2 x double> %61, i64 0
  %i.dx = fsub double %i.dw, %62                  ; 2 uses
  %63 = fadd double %23, %24                      ; 2 uses
  %i.dy = extractelement <2 x double> %61, i64 1
  %i.dz = fsub double %63, %i.dy                  ; 2 uses
  %64 = insertelement <2 x double> poison, double %i.dw, i64 0
  %65 = insertelement <2 x double> %64, double %63, i64 1
  %66 = fadd <2 x double> %61, %65                ; 2 uses
  %67 = tail call double @llvm.fmuladd.f64(double %36, double %29, double %40) ; 2 uses
  %68 = fsub double %30, %67                      ; 2 uses
  %69 = fsub double %68, %55
  %70 = insertelement <2 x double> %58, double %69, i64 1
  %71 = fmul <2 x double> %70, splat (double 5.000000e-01) ; 3 uses
  %72 = fadd double %68, %55
  %73 = fmul double %72, 5.000000e-01             ; 2 uses
  %74 = fadd double %73, %51
  store double %74, ptr %i.ba, align 8, !tbaa !13
  store double %i.dv, ptr %i.ab, align 8, !tbaa !13
  %i.ea = fsub double %73, %51
  store double %i.ea, ptr %i.af, align 8, !tbaa !13
  %foldExtExtBinop322 = fsub <2 x double> %71, %54
  %75 = extractelement <2 x double> %foldExtExtBinop322, i64 1
  store double %75, ptr %.0302311, align 8, !tbaa !13
  %foldExtExtBinop324 = fsub <2 x double> %54, %71
  %76 = extractelement <2 x double> %foldExtExtBinop324, i64 0
  store double %76, ptr %.0303310, align 8, !tbaa !13
  %77 = fadd <2 x double> %71, %54                ; 2 uses
  %78 = extractelement <2 x double> %77, i64 1
  store double %78, ptr %i.bk, align 8, !tbaa !13
  %79 = extractelement <2 x double> %77, i64 0
  store double %79, ptr %i.bg, align 8, !tbaa !13
  %i.eb = fsub double %i.cz, %i.da                ; 2 uses
  %shift326 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327 = fadd <2 x double> %27, %shift326
  %80 = extractelement <2 x double> %foldExtExtBinop327, i64 0 ; 2 uses
  %i.ec = fsub double %i.eb, %80
  %i.ed = fadd double %i.eb, %80                  ; 2 uses
  %i.ee = fadd double %30, %67                    ; 2 uses
  %i.ef = fadd double %i.dm, %45                  ; 2 uses
  %i.eg = fsub double %i.ee, %i.ef                ; 2 uses
  %i.eh = fadd double %i.ee, %i.ef
  %81 = insertelement <2 x double> poison, double %i.ec, i64 0
  %82 = insertelement <2 x double> %81, double %i.eh, i64 1 ; 2 uses
  %83 = fadd <2 x double> %82, %66
  %84 = fmul <2 x double> %83, splat (double 5.000000e-01) ; 2 uses
  %85 = extractelement <2 x double> %84, i64 0
  store double %85, ptr %.0301312, align 8, !tbaa !13
  %86 = extractelement <2 x double> %84, i64 1
  store double %86, ptr %.0313, align 8, !tbaa !13
  %87 = fsub <2 x double> %82, %66
  %88 = fmul <2 x double> %87, splat (double 5.000000e-01) ; 2 uses
  %89 = extractelement <2 x double> %88, i64 0
  store double %89, ptr %i.bi, align 8, !tbaa !13
  %90 = extractelement <2 x double> %88, i64 1
  store double %90, ptr %i.bm, align 8, !tbaa !13
  %i.ei = fsub double %i.eg, %i.ed
  %i.ej = fmul double %i.ei, 5.000000e-01
  store double %i.ej, ptr %i.bc, align 8, !tbaa !13
  %i.ek = fsub double %i.dz, %i.dx
  %i.el = fmul double %i.ek, 5.000000e-01
  store double %i.el, ptr %i.ay, align 8, !tbaa !13
  %i.em = fadd double %i.eg, %i.ed
  %i.en = fmul double %i.em, 5.000000e-01
  store double %i.en, ptr %i.ad, align 8, !tbaa !13
  %i.eo = fadd double %i.dx, %i.dz
  %i.ep = fmul double %i.eo, 5.000000e-01
  store double %i.ep, ptr %i.z, align 8, !tbaa !13
  %i.eq = add nsw i64 %.0306307, 1                ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.0313, i64 %8
  %i.es = getelementptr inbounds [8 x i8], ptr %.0301312, i64 %8
  %i.et = getelementptr inbounds [8 x i8], ptr %.0302311, i64 %i.d
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0303310, i64 %i.d
  %i.ev = getelementptr inbounds nuw i8, ptr %.0304309, i64 48
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0305308, i64 %i.e
  %exitcond.not = icmp eq i64 %i.eq, %7
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
