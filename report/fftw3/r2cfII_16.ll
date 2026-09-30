Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cfII_16?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 16, ptr @.str, %struct.opcnt { double 5.400000e+01, double 1.800000e+01, double 1.200000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cfII_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [10 x i8] c"r2cfII_16\00", align 1
@fftw_rdft_r2cfII_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cfII_16(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cfII_16, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cfII_16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0219 = phi ptr [ %0, %.lr.ph ], [ %i.fa, %bb.b ] ; 9 uses
  %.0205218 = phi ptr [ %1, %.lr.ph ], [ %i.fb, %bb.b ] ; 9 uses
  %.0206217 = phi ptr [ %2, %.lr.ph ], [ %i.fc, %bb.b ] ; 9 uses
  %.0207216 = phi ptr [ %3, %.lr.ph ], [ %i.fd, %bb.b ] ; 9 uses
  %.0208215 = phi ptr [ %4, %.lr.ph ], [ %i.fe, %bb.b ] ; 8 uses
  %.0209214 = phi ptr [ %5, %.lr.ph ], [ %i.ff, %bb.b ] ; 8 uses
  %.0210213 = phi ptr [ %6, %.lr.ph ], [ %i.fg, %bb.b ] ; 8 uses
  %.0211212 = phi i64 [ %7, %.lr.ph ], [ %i.ez, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0219, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0208215, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0208215, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0208215, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %10 = fsub double %i.k, %i.o
  %11 = fmul double %10, f0x3FE6A09E667F3BCD      ; 2 uses
  %12 = fadd double %i.k, %i.o
  %13 = fmul double %12, f0x3FE6A09E667F3BCD      ; 2 uses
  %14 = fadd double %i.c, %11                     ; 2 uses
  %15 = fsub double %i.g, %13                     ; 2 uses
  %16 = fsub double %i.c, %11                     ; 2 uses
  %17 = fadd double %i.g, %13                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0208215, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.0208215, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %.0208215, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.0208215, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13
  %i.af = load double, ptr %.0205218, align 8, !tbaa !13
  %i.ag = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.e
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %i.m
  %i.al = load double, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.y
  %i.an = load double, ptr %i.am, align 8, !tbaa !13
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.ac
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !13
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %i.ar, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.at = insertelement <2 x double> poison, double %i.an, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.as) ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.u
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0219, i64 %i.q
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13
  %i.ba = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.bb, <double f0xBFED906BCF328D46, double f0x3FD87DE2A6AEA963>
  %i.bd = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>, <2 x double> %i.bc) ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.av, %i.bf
  %18 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop221.a = fsub <2 x double> %i.bf, %i.av
  %i.bg = extractelement <2 x double> %foldExtExtBinop221.a, i64 0 ; 2 uses
  %19 = extractelement <2 x double> %i.av, i64 1  ; 2 uses
  %i.bh = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  %20 = fsub double %19, %i.bh                    ; 2 uses
  %21 = fadd double %19, %i.bh                    ; 2 uses
  %22 = fsub double %14, %18                      ; 2 uses
  %23 = fadd double %17, %21                      ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.aa, i64 1 ; 2 uses
  %i.bk = insertelement <2 x double> poison, double %i.al, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.ae, i64 1 ; 2 uses
  %i.bm = fadd <2 x double> %i.bj, %i.bl
  %i.bn = fmul <2 x double> %i.bm, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.bo = fsub <2 x double> %i.bj, %i.bl
  %i.bp = fmul <2 x double> %i.bo, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %i.bq = insertelement <2 x double> poison, double %i.af, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.s, i64 1 ; 4 uses
  %i.bs = fadd <2 x double> %i.bp, %i.br
  %i.bt = fsub <2 x double> %i.bp, %i.br
  %i.bu = shufflevector <2 x double> %i.bs, <2 x double> %i.bt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bv = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.w, i64 1 ; 2 uses
  %i.bx = fadd <2 x double> %i.bw, %i.bn          ; 2 uses
  %i.by = fmul <2 x double> %i.bx, <double f0x3FEF6297CFF75CB0, double f0xBFEF6297CFF75CB0>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> splat (double f0x3FC8F8B83C69A60B), <2 x double> %i.by) ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.cb = extractelement <2 x double> %i.bz, i64 1 ; 2 uses
  %24 = fadd double %i.cb, %i.ca                  ; 2 uses
  %25 = fsub double %i.cb, %i.ca                  ; 2 uses
  %26 = fsub double %22, %24
  %i.cc = getelementptr inbounds nuw i8, ptr %.0209214, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.cd
  store double %26, ptr %i.ce, align 8, !tbaa !13
  %i.cf = fadd double %25, %23
  %i.cg = getelementptr inbounds nuw i8, ptr %.0210213, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.ch
  store double %i.cf, ptr %i.ci, align 8, !tbaa !13
  %i.cj = fadd double %24, %22
  %27 = getelementptr inbounds nuw i8, ptr %.0209214, i64 24
  %28 = load i64, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %28
  store double %i.cj, ptr %29, align 8, !tbaa !13
  %i.ck = fsub double %25, %23
  store double %i.ck, ptr %.0207216, align 8, !tbaa !13
  %30 = fadd double %14, %18                      ; 2 uses
  %31 = fsub double %17, %21                      ; 2 uses
  %32 = fmul <2 x double> %i.bx, <double f0xBFC8F8B83C69A60B, double f0x3FC8F8B83C69A60B>
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> splat (double f0x3FEF6297CFF75CB0), <2 x double> %32) ; 2 uses
  %i.cl = extractelement <2 x double> %33, i64 0  ; 2 uses
  %i.cm = extractelement <2 x double> %33, i64 1  ; 2 uses
  %i.cn = fadd double %i.cm, %i.cl                ; 2 uses
  %i.co = fsub double %i.cm, %i.cl                ; 2 uses
  %i.cp = fsub double %30, %i.cn
  %34 = getelementptr inbounds nuw i8, ptr %.0209214, i64 56
  %35 = load i64, ptr %34, align 8, !tbaa !11
  %36 = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %35
  store double %i.cp, ptr %36, align 8, !tbaa !13
  %37 = fadd double %i.co, %31
  %i.cq = getelementptr inbounds nuw i8, ptr %.0210213, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.cr
  store double %37, ptr %i.cs, align 8, !tbaa !13
  %i.ct = fadd double %i.cn, %30
  store double %i.ct, ptr %.0206217, align 8, !tbaa !13
  %i.cu = fsub double %i.co, %31
  %i.cv = getelementptr inbounds nuw i8, ptr %.0210213, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.cw
  store double %i.cu, ptr %i.cx, align 8, !tbaa !13
  %i.cy = fadd double %16, %20                    ; 2 uses
  %i.cz = fsub double %i.bg, %15                  ; 2 uses
  %i.da = fsub <2 x double> %i.bw, %i.bn          ; 2 uses
  %i.db = fsub <2 x double> %i.br, %i.bp
  %i.dc = fadd <2 x double> %i.br, %i.bp
  %i.dd = shufflevector <2 x double> %i.db, <2 x double> %i.dc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.de = fmul <2 x double> %i.da, splat (double f0x3FE1C73B39AE68C8)
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> splat (double f0x3FEA9B66290EA1A3), <2 x double> %i.de) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0 ; 2 uses
  %i.dh = extractelement <2 x double> %i.df, i64 1 ; 2 uses
  %i.di = fsub double %i.dg, %i.dh                ; 2 uses
  %i.dj = fadd double %i.dh, %i.dg                ; 2 uses
  %i.dk = fsub double %i.cy, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %.0209214, i64 48
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !11
  %i.dn = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.dm
  store double %i.dk, ptr %i.dn, align 8, !tbaa !13
  %i.do = fsub double %i.cz, %i.dj
  %i.dp = getelementptr inbounds nuw i8, ptr %.0210213, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !11
  %i.dr = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.dq
  store double %i.do, ptr %i.dr, align 8, !tbaa !13
  %i.ds = fadd double %i.di, %i.cy
  %i.dt = getelementptr inbounds nuw i8, ptr %.0209214, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !11
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.du
  store double %i.ds, ptr %i.dv, align 8, !tbaa !13
  %i.dw = fadd double %i.dj, %i.cz
  %i.dx = fneg double %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %.0210213, i64 40
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.dz
  store double %i.dx, ptr %i.ea, align 8, !tbaa !13
  %i.eb = fsub double %16, %20                    ; 2 uses
  %i.ec = fadd double %15, %i.bg                  ; 2 uses
  %i.ed = fmul <2 x double> %i.dd, splat (double f0xBFE1C73B39AE68C8)
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> splat (double f0x3FEA9B66290EA1A3), <2 x double> %i.ed) ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 0 ; 2 uses
  %i.eg = extractelement <2 x double> %i.ee, i64 1 ; 2 uses
  %i.eh = fsub double %i.eg, %i.ef                ; 2 uses
  %i.ei = fadd double %i.eg, %i.ef                ; 2 uses
  %i.ej = fsub double %i.eb, %i.eh
  %i.ek = getelementptr inbounds nuw i8, ptr %.0209214, i64 40
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !11
  %i.em = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.el
  store double %i.ej, ptr %i.em, align 8, !tbaa !13
  %i.en = fadd double %i.ei, %i.ec
  %i.eo = getelementptr inbounds nuw i8, ptr %.0210213, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !11
  %i.eq = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.ep
  store double %i.en, ptr %i.eq, align 8, !tbaa !13
  %i.er = fadd double %i.eh, %i.eb
  %i.es = getelementptr inbounds nuw i8, ptr %.0209214, i64 16
  %i.et = load i64, ptr %i.es, align 8, !tbaa !11
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %i.et
  store double %i.er, ptr %i.eu, align 8, !tbaa !13
  %i.ev = fsub double %i.ei, %i.ec
  %i.ew = getelementptr inbounds nuw i8, ptr %.0210213, i64 48
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !11
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %i.ex
  store double %i.ev, ptr %i.ey, align 8, !tbaa !13
  %i.ez = add nsw i64 %.0211212, -1
  %i.fa = getelementptr inbounds [8 x i8], ptr %.0219, i64 %8
  %i.fb = getelementptr inbounds [8 x i8], ptr %.0205218, i64 %8
  %i.fc = getelementptr inbounds [8 x i8], ptr %.0206217, i64 %9
  %i.fd = getelementptr inbounds [8 x i8], ptr %.0207216, i64 %9
  %i.fe = getelementptr inbounds [8 x i8], ptr %.0208215, i64 %i.b
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0209214, i64 %i.b
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0210213, i64 %i.b
  %i.fh = icmp samesign ugt i64 %.0211212, 1
  br i1 %i.fh, label %bb.b, label %._crit_edge, !llvm.loop !9

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
