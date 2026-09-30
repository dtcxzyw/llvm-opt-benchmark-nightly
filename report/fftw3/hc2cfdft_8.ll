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
  %9 = fsub double %i.f, %i.g                     ; 2 uses
  %10 = fadd double %i.i, %i.j                    ; 2 uses
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
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.ap, <2 x double> %i.an) ; 3 uses
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
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bc, <2 x double> %i.az) ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.aq, %i.bd
  %11 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %12 = extractelement <2 x double> %i.aq, i64 1  ; 2 uses
  %13 = extractelement <2 x double> %i.bd, i64 1  ; 2 uses
  %14 = fsub double %12, %13                      ; 2 uses
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
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cj, <2 x double> %i.cg) ; 3 uses
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
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cw, <2 x double> %i.ct) ; 3 uses
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
  %15 = extractelement <2 x double> %i.dk, i64 1  ; 2 uses
  %16 = extractelement <2 x double> %i.dx, i64 1  ; 2 uses
  %17 = fsub double %16, %15                      ; 2 uses
  %foldExtExtBinop292.a = fsub <2 x double> %i.dk, %i.dx
  %18 = extractelement <2 x double> %foldExtExtBinop292.a, i64 0 ; 2 uses
  %19 = extractelement <2 x double> %i.ah, i64 0  ; 2 uses
  %20 = fsub double %9, %19                       ; 2 uses
  %21 = extractelement <2 x double> %i.ck, i64 1  ; 2 uses
  %22 = extractelement <2 x double> %i.cx, i64 1  ; 2 uses
  %23 = fsub double %21, %22                      ; 2 uses
  %24 = fsub double %20, %23
  %25 = fmul double %24, 5.000000e-01             ; 2 uses
  %26 = fadd double %20, %23
  %27 = fmul double %26, 5.000000e-01             ; 2 uses
  %28 = fsub double %17, %18                      ; 2 uses
  %29 = fadd double %11, %14                      ; 2 uses
  %30 = fsub double %28, %29
  %31 = fmul double %30, f0x3FD6A09E667F3BCD      ; 2 uses
  %32 = fadd double %29, %28
  %33 = fmul double %32, f0x3FD6A09E667F3BCD      ; 2 uses
  %i.dy = fadd double %17, %18                    ; 2 uses
  %34 = fsub double %11, %14                      ; 2 uses
  %35 = fadd double %34, %i.dy
  %36 = fmul double %35, f0x3FD6A09E667F3BCD      ; 2 uses
  %37 = fsub double %34, %i.dy
  %38 = fmul double %37, f0x3FD6A09E667F3BCD      ; 2 uses
  %39 = extractelement <2 x double> %i.ah, i64 1  ; 2 uses
  %40 = fsub double %10, %39                      ; 2 uses
  %foldExtExtBinop294.a = fsub <2 x double> %i.ck, %i.cx
  %41 = extractelement <2 x double> %foldExtExtBinop294.a, i64 0 ; 2 uses
  %42 = fsub double %40, %41
  %43 = fmul double %42, 5.000000e-01             ; 2 uses
  %44 = fadd double %40, %41
  %45 = fmul double %44, 5.000000e-01             ; 2 uses
  %46 = fadd double %25, %36
  store double %46, ptr %i.bg, align 8, !tbaa !13
  %47 = fadd double %45, %33
  store double %47, ptr %i.bk, align 8, !tbaa !13
  %48 = fsub double %36, %25
  store double %48, ptr %i.p, align 8, !tbaa !13
  %49 = fsub double %45, %33
  store double %49, ptr %i.t, align 8, !tbaa !13
  %50 = fsub double %43, %38
  store double %50, ptr %.0278287, align 8, !tbaa !13
  %51 = fsub double %31, %27
  store double %51, ptr %.0279286, align 8, !tbaa !13
  %52 = fadd double %43, %38
  store double %52, ptr %i.bu, align 8, !tbaa !13
  %53 = fadd double %27, %31
  store double %53, ptr %i.bq, align 8, !tbaa !13
  %foldExtExtBinop296.a = fadd <2 x double> %i.ck, %i.cx
  %i.dz = extractelement <2 x double> %foldExtExtBinop296.a, i64 0 ; 2 uses
  %54 = fadd double %9, %19                       ; 2 uses
  %55 = fadd double %54, %i.dz                    ; 2 uses
  %56 = fsub double %54, %i.dz                    ; 2 uses
  %57 = fadd double %15, %16                      ; 2 uses
  %58 = fadd double %12, %13                      ; 2 uses
  %59 = fsub double %57, %58                      ; 2 uses
  %60 = fadd double %58, %57                      ; 2 uses
  %foldExtExtBinop298 = fsub <2 x double> %i.aq, %i.bd ; 2 uses
  %foldExtExtBinop300.a = fadd <2 x double> %i.dk, %i.dx ; 2 uses
  %foldExtExtBinop302 = fsub <2 x double> %foldExtExtBinop298, %foldExtExtBinop300.a
  %61 = extractelement <2 x double> %foldExtExtBinop302, i64 0 ; 2 uses
  %foldExtExtBinop304 = fadd <2 x double> %foldExtExtBinop298, %foldExtExtBinop300.a
  %i.ea = extractelement <2 x double> %foldExtExtBinop304, i64 0 ; 2 uses
  %62 = fadd double %10, %39                      ; 2 uses
  %63 = fadd double %21, %22                      ; 2 uses
  %64 = fsub double %62, %63                      ; 2 uses
  %65 = fadd double %62, %63                      ; 2 uses
  %66 = fadd double %55, %61
  %67 = fmul double %66, 5.000000e-01
  store double %67, ptr %.0277288, align 8, !tbaa !13
  %68 = fadd double %65, %60
  %69 = fmul double %68, 5.000000e-01
  store double %69, ptr %.0289, align 8, !tbaa !13
  %70 = fsub double %61, %55
  %71 = fmul double %70, 5.000000e-01
  store double %71, ptr %i.bs, align 8, !tbaa !13
  %72 = fsub double %65, %60
  %i.eb = fmul double %72, 5.000000e-01
  store double %i.eb, ptr %i.bw, align 8, !tbaa !13
  %73 = fsub double %64, %i.ea
  %74 = fmul double %73, 5.000000e-01
  store double %74, ptr %i.bm, align 8, !tbaa !13
  %75 = fsub double %59, %56
  %76 = fmul double %75, 5.000000e-01
  store double %76, ptr %i.bi, align 8, !tbaa !13
  %77 = fadd double %64, %i.ea
  %78 = fmul double %77, 5.000000e-01
  store double %78, ptr %i.r, align 8, !tbaa !13
  %79 = fadd double %56, %59
  %80 = fmul double %79, 5.000000e-01
  store double %80, ptr %i.n, align 8, !tbaa !13
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
