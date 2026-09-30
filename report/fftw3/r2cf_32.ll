Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cf_32?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 32, ptr @.str, %struct.opcnt { double 1.400000e+02, double 2.600000e+01, double 1.600000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cf_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cf_32\00", align 1
@fftw_rdft_r2cf_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cf_32(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cf_32, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cf_32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0464 = phi ptr [ %0, %.lr.ph ], [ %i.mo, %bb.b ] ; 17 uses
  %.0450463 = phi ptr [ %1, %.lr.ph ], [ %i.mp, %bb.b ] ; 17 uses
  %.0451462 = phi ptr [ %2, %.lr.ph ], [ %i.mq, %bb.b ] ; 18 uses
  %.0452461 = phi ptr [ %3, %.lr.ph ], [ %i.mr, %bb.b ] ; 16 uses
  %.0453460 = phi ptr [ %4, %.lr.ph ], [ %i.ms, %bb.b ] ; 16 uses
  %.0454459 = phi ptr [ %5, %.lr.ph ], [ %i.mt, %bb.b ] ; 17 uses
  %.0455458 = phi ptr [ %6, %.lr.ph ], [ %i.mu, %bb.b ] ; 16 uses
  %.0456457 = phi i64 [ %7, %.lr.ph ], [ %i.mn, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0464, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0453460, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0453460, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0453460, i64 96
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = fsub double %i.c, %i.g                   ; 2 uses
  %i.q = fsub double %i.k, %i.o                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0453460, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0453460, i64 80
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = fsub double %i.u, %i.y                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0453460, i64 112
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0453460, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ai = fsub double %i.ad, %i.ah                ; 2 uses
  %i.aj = fadd double %i.z, %i.ai
  %i.ak = fmul double %i.aj, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.al = fsub double %i.ai, %i.z
  %i.am = fmul double %i.al, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0453460, i64 120
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !13 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0453460, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0453460, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0453460, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %i.bd = fsub double %i.aq, %i.au
  %i.be = fsub double %i.ay, %i.bc
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %i.bg, <double f0x3FD87DE2A6AEA963, double f0xBFED906BCF328D46>
  %i.bi = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.bh) ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0453460, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0453460, i64 72
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0453460, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !13 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0453460, i64 104
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0464, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.cb = fsub double %i.bo, %i.bs
  %i.cc = fsub double %i.bw, %i.ca
  %i.cd = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x double> %i.ce, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.cg = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.cf) ; 3 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.ao
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.as
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !13 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.aw
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.ba
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.bm
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !13 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.bq
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.by
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.bu
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !13 ; 2 uses
  %i.cz = load double, ptr %.0450463, align 8, !tbaa !13
  %i.da = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.e
  %i.db = load double, ptr %i.da, align 8, !tbaa !13
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.i
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !13
  %i.de = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.m
  %i.df = load double, ptr %i.de, align 8, !tbaa !13
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.s
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !13
  %i.di = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.w
  %i.dj = load double, ptr %i.di, align 8, !tbaa !13
  %i.dk = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.ab
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !13
  %i.dm = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %i.af
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !13
  %10 = getelementptr inbounds nuw i8, ptr %.0454459, i64 64
  %11 = load i64, ptr %10, align 8, !tbaa !11
  %12 = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %11
  %i.do = getelementptr inbounds nuw i8, ptr %.0455458, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.0454459, i64 128
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !11
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.0454459, i64 96
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !11
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.dv
  %13 = getelementptr inbounds nuw i8, ptr %.0455458, i64 96
  %14 = load i64, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %14
  %i.dx = getelementptr inbounds nuw i8, ptr %.0454459, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !11
  %i.dz = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %.0455458, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !11
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.eb
  %16 = insertelement <2 x double> poison, double %i.cz, i64 0 ; 2 uses
  %17 = insertelement <2 x double> %16, double %i.ck, i64 1
  %18 = insertelement <2 x double> poison, double %i.db, i64 0 ; 2 uses
  %19 = insertelement <2 x double> %18, double %i.cm, i64 1
  %20 = fadd <2 x double> %17, %19                ; 2 uses
  %21 = insertelement <2 x double> poison, double %i.dd, i64 0 ; 2 uses
  %22 = insertelement <2 x double> %21, double %i.co, i64 1
  %23 = insertelement <2 x double> poison, double %i.df, i64 0 ; 2 uses
  %24 = insertelement <2 x double> %23, double %i.cq, i64 1
  %25 = fadd <2 x double> %22, %24                ; 2 uses
  %26 = insertelement <2 x double> poison, double %i.dh, i64 0 ; 2 uses
  %27 = insertelement <2 x double> %26, double %i.cs, i64 1
  %28 = insertelement <2 x double> poison, double %i.dj, i64 0 ; 2 uses
  %29 = insertelement <2 x double> %28, double %i.cu, i64 1
  %30 = fadd <2 x double> %27, %29                ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %i.dl, i64 0 ; 2 uses
  %i.ee = insertelement <2 x double> %i.ed, double %i.cw, i64 1
  %i.ef = insertelement <2 x double> poison, double %i.dn, i64 0 ; 2 uses
  %i.eg = insertelement <2 x double> %i.ef, double %i.cy, i64 1
  %i.eh = fadd <2 x double> %i.ee, %i.eg          ; 2 uses
  %31 = fsub <2 x double> %i.eh, %30              ; 3 uses
  %32 = fsub <2 x double> %20, %25                ; 3 uses
  %i.ei = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.c, i64 1
  %i.ek = insertelement <2 x double> poison, double %i.au, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.g, i64 1
  %i.em = fadd <2 x double> %i.ej, %i.el          ; 3 uses
  %33 = insertelement <2 x double> poison, double %i.ay, i64 0
  %34 = insertelement <2 x double> %33, double %i.k, i64 1
  %35 = insertelement <2 x double> poison, double %i.bc, i64 0
  %36 = insertelement <2 x double> %35, double %i.o, i64 1
  %foldExtExtBinop.a = fadd <2 x double> %34, %36 ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.em, %foldExtExtBinop.a
  %i.en = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %i.eo = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.u, i64 1
  %i.eq = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.y, i64 1
  %i.es = fadd <2 x double> %i.ep, %i.er          ; 3 uses
  %i.et = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.ad, i64 1
  %i.ev = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.ah, i64 1
  %i.ex = fadd <2 x double> %i.eu, %i.ew          ; 3 uses
  %foldExtExtBinop466 = fsub <2 x double> %i.ex, %i.es
  %i.ey = extractelement <2 x double> %foldExtExtBinop466, i64 1 ; 2 uses
  %foldExtExtBinop468.a = fadd <2 x double> %i.em, %foldExtExtBinop.a ; 3 uses
  %foldExtExtBinop468 = fsub <2 x double> %i.em, %foldExtExtBinop.a ; 2 uses
  %foldExtExtBinop470.a = fadd <2 x double> %i.es, %i.ex ; 3 uses
  %i.ez = fsub <2 x double> %i.es, %i.ex          ; 2 uses
  %foldExtExtBinop472 = fadd <2 x double> %foldExtExtBinop468.a, %foldExtExtBinop470.a
  %37 = extractelement <2 x double> %foldExtExtBinop472, i64 1 ; 2 uses
  %foldExtExtBinop474 = fadd <2 x double> %foldExtExtBinop468.a, %foldExtExtBinop470.a
  %38 = extractelement <2 x double> %foldExtExtBinop474, i64 0 ; 2 uses
  %39 = fadd double %37, %38                      ; 2 uses
  %40 = fsub double %37, %38
  store double %40, ptr %12, align 8, !tbaa !13
  %i.fa = fsub <2 x double> %foldExtExtBinop468.a, %foldExtExtBinop470.a ; 3 uses
  %foldExtExtBinop472.a = fadd <2 x double> %foldExtExtBinop468, %i.ez
  %41 = extractelement <2 x double> %foldExtExtBinop472.a, i64 0
  %42 = fmul double %41, f0x3FE6A09E667F3BCD      ; 2 uses
  %43 = fadd double %i.en, %42                    ; 2 uses
  %44 = fsub double %i.en, %42                    ; 2 uses
  %foldExtExtBinop478 = fsub <2 x double> %foldExtExtBinop468, %i.ez
  %i.fb = extractelement <2 x double> %foldExtExtBinop478, i64 0
  %45 = fmul double %i.fb, f0x3FE6A09E667F3BCD    ; 2 uses
  %46 = fsub double %45, %i.ey                    ; 2 uses
  %i.fc = fadd double %i.ey, %45                  ; 2 uses
  %47 = fadd <2 x double> %20, %25                ; 3 uses
  %48 = fadd <2 x double> %30, %i.eh              ; 3 uses
  %foldExtExtBinop480 = fadd <2 x double> %47, %48
  %49 = extractelement <2 x double> %foldExtExtBinop480, i64 0 ; 2 uses
  %foldExtExtBinop482 = fadd <2 x double> %47, %48
  %50 = extractelement <2 x double> %foldExtExtBinop482, i64 1 ; 2 uses
  %i.fd = fadd double %50, %49                    ; 2 uses
  %i.fe = fsub double %50, %49
  store double %i.fe, ptr %i.dq, align 8, !tbaa !13
  %i.ff = fsub double %39, %i.fd
  store double %i.ff, ptr %i.dt, align 8, !tbaa !13
  %i.fg = fadd double %39, %i.fd
  store double %i.fg, ptr %.0451462, align 8, !tbaa !13
  %foldExtExtBinop474.a = fsub <2 x double> %47, %48 ; 2 uses
  %51 = shufflevector <2 x double> %foldExtExtBinop474.a, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %52 = shufflevector <2 x double> %foldExtExtBinop474.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %53 = fadd <2 x double> %51, %52
  %54 = fsub <2 x double> %51, %52
  %55 = shufflevector <2 x double> %54, <2 x double> %53, <2 x i32> <i32 0, i32 3>
  %56 = fmul <2 x double> %55, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %foldExtExtBinop484 = fsub <2 x double> %i.fa, %56
  %57 = extractelement <2 x double> %foldExtExtBinop484, i64 1
  store double %57, ptr %i.dw, align 8, !tbaa !13
  %foldExtExtBinop486 = fsub <2 x double> %56, %i.fa
  %58 = extractelement <2 x double> %foldExtExtBinop486, i64 0
  store double %58, ptr %15, align 8, !tbaa !13
  %59 = fadd <2 x double> %i.fa, %56              ; 2 uses
  %60 = extractelement <2 x double> %59, i64 1
  store double %60, ptr %i.dz, align 8, !tbaa !13
  %61 = extractelement <2 x double> %59, i64 0
  store double %61, ptr %i.ec, align 8, !tbaa !13
  %i.fh = fmul <2 x double> %31, <double f0x3FD87DE2A6AEA963, double f0xBFD87DE2A6AEA963>
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> splat (double f0x3FED906BCF328D46), <2 x double> %i.fh) ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0 ; 2 uses
  %i.fk = extractelement <2 x double> %i.fi, i64 1 ; 2 uses
  %i.fl = fadd double %i.fk, %i.fj                ; 2 uses
  %i.fm = fsub double %i.fk, %i.fj                ; 2 uses
  %i.fn = shufflevector <2 x double> %32, <2 x double> %31, <2 x i32> <i32 0, i32 3>
  %i.fo = fmul <2 x double> %i.fn, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.fp = shufflevector <2 x double> %31, <2 x double> %32, <2 x i32> <i32 0, i32 3>
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.fo) ; 2 uses
  %i.fr = extractelement <2 x double> %i.fq, i64 0 ; 2 uses
  %i.fs = extractelement <2 x double> %i.fq, i64 1 ; 2 uses
  %i.ft = fadd double %i.fs, %i.fr                ; 2 uses
  %i.fu = fsub double %i.fs, %i.fr                ; 2 uses
  %i.fv = fsub double %43, %i.fl
  %i.fw = getelementptr inbounds nuw i8, ptr %.0454459, i64 112
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !11
  %i.fy = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.fx
  store double %i.fv, ptr %i.fy, align 8, !tbaa !13
  %i.fz = fsub double %i.ft, %i.fc
  %i.ga = getelementptr inbounds nuw i8, ptr %.0455458, i64 112
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !11
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.gb
  store double %i.fz, ptr %i.gc, align 8, !tbaa !13
  %i.gd = fadd double %43, %i.fl
  %i.ge = getelementptr inbounds nuw i8, ptr %.0454459, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !11
  %i.gg = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.gf
  store double %i.gd, ptr %i.gg, align 8, !tbaa !13
  %i.gh = fadd double %i.fc, %i.ft
  %i.gi = getelementptr inbounds nuw i8, ptr %.0455458, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !11
  %i.gk = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.gj
  store double %i.gh, ptr %i.gk, align 8, !tbaa !13
  %i.gl = fadd double %46, %i.fm
  %i.gm = getelementptr inbounds nuw i8, ptr %.0455458, i64 48
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !11
  %i.go = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.gn
  store double %i.gl, ptr %i.go, align 8, !tbaa !13
  %i.gp = fadd double %44, %i.fu
  %i.gq = getelementptr inbounds nuw i8, ptr %.0454459, i64 48
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !11
  %i.gs = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.gr
  store double %i.gp, ptr %i.gs, align 8, !tbaa !13
  %i.gt = fsub double %i.fm, %46
  %i.gu = getelementptr inbounds nuw i8, ptr %.0455458, i64 80
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !11
  %i.gw = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.gv
  store double %i.gt, ptr %i.gw, align 8, !tbaa !13
  %i.gx = fsub double %44, %i.fu
  %i.gy = getelementptr inbounds nuw i8, ptr %.0454459, i64 80
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !11
  %i.ha = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.gz
  store double %i.gx, ptr %i.ha, align 8, !tbaa !13
  %i.hb = fadd double %i.p, %i.ak                 ; 2 uses
  %foldExtExtBinop476 = fadd <2 x double> %i.bk, %i.ci
  %i.hc = extractelement <2 x double> %foldExtExtBinop476, i64 0 ; 2 uses
  %i.hd = fadd double %i.hb, %i.hc                ; 2 uses
  %i.he = fsub double %i.hb, %i.hc                ; 2 uses
  %i.hf = insertelement <2 x double> %16, double %i.co, i64 1
  %i.hg = insertelement <2 x double> %18, double %i.cq, i64 1
  %i.hh = fsub <2 x double> %i.hf, %i.hg          ; 4 uses
  %i.hi = insertelement <2 x double> %26, double %i.cw, i64 1
  %i.hj = insertelement <2 x double> %28, double %i.cy, i64 1
  %i.hk = fsub <2 x double> %i.hi, %i.hj          ; 4 uses
  %i.hl = insertelement <2 x double> %i.ed, double %i.cs, i64 1
  %i.hm = insertelement <2 x double> %i.ef, double %i.cu, i64 1
  %i.hn = fsub <2 x double> %i.hl, %i.hm          ; 4 uses
  %i.ho = fadd <2 x double> %i.hk, %i.hn
  %i.hp = fsub <2 x double> %i.hk, %i.hn
  %i.hq = shufflevector <2 x double> %i.ho, <2 x double> %i.hp, <2 x i32> <i32 0, i32 3>
  %i.hr = fmul <2 x double> %i.hq, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %i.hs = insertelement <2 x double> %21, double %i.ck, i64 1
  %i.ht = insertelement <2 x double> %23, double %i.cm, i64 1
  %i.hu = fsub <2 x double> %i.hs, %i.ht          ; 4 uses
  %i.hv = fsub <2 x double> %i.hn, %i.hk
  %i.hw = fadd <2 x double> %i.hn, %i.hk
  %i.hx = shufflevector <2 x double> %i.hv, <2 x double> %i.hw, <2 x i32> <i32 0, i32 3>
  %i.hy = fmul <2 x double> %i.hx, splat (double f0x3FE6A09E667F3BCD) ; 4 uses
  %i.hz = fsub <2 x double> %i.hy, %i.hu          ; 2 uses
  %i.ia = fadd <2 x double> %i.hy, %i.hu          ; 2 uses
  %i.ib = shufflevector <2 x double> %i.hz, <2 x double> %i.ia, <2 x i32> <i32 0, i32 3>
  %i.ic = fadd <2 x double> %i.hr, %i.hh          ; 2 uses
  %i.id = fsub <2 x double> %i.hr, %i.hh          ; 2 uses
  %i.ie = shufflevector <2 x double> %i.ic, <2 x double> %i.id, <2 x i32> <i32 0, i32 3>
  %i.if = fmul <2 x double> %i.ie, <double f0xBFC8F8B83C69A60B, double f0x3FEF6297CFF75CB0>
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> <double f0x3FEF6297CFF75CB0, double f0x3FC8F8B83C69A60B>, <2 x double> %i.if) ; 2 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0 ; 2 uses
  %i.ii = extractelement <2 x double> %i.ig, i64 1 ; 2 uses
  %i.ij = fadd double %i.ii, %i.ih                ; 2 uses
  %i.ik = fsub double %i.ii, %i.ih                ; 2 uses
  %i.il = shufflevector <2 x double> %i.hz, <2 x double> %i.id, <2 x i32> <i32 0, i32 3>
  %i.im = fmul <2 x double> %i.il, <double f0x3FC8F8B83C69A60B, double f0xBFC8F8B83C69A60B>
  %i.in = shufflevector <2 x double> %i.ic, <2 x double> %i.ia, <2 x i32> <i32 0, i32 3>
  %i.io = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> splat (double f0x3FEF6297CFF75CB0), <2 x double> %i.im) ; 2 uses
  %i.ip = extractelement <2 x double> %i.io, i64 0 ; 2 uses
  %i.iq = extractelement <2 x double> %i.io, i64 1 ; 2 uses
  %i.ir = fadd double %i.iq, %i.ip                ; 2 uses
  %i.is = fsub double %i.iq, %i.ip                ; 2 uses
  %i.it = extractelement <2 x double> %i.bk, i64 1 ; 2 uses
  %i.iu = extractelement <2 x double> %i.ci, i64 1 ; 2 uses
  %i.iv = fsub double %i.it, %i.iu                ; 2 uses
  %i.iw = fsub double %i.am, %i.q                 ; 2 uses
  %i.ix = fsub double %i.iv, %i.iw                ; 2 uses
  %i.iy = fadd double %i.iw, %i.iv                ; 2 uses
  %i.iz = fsub double %i.hd, %i.ir
  %i.ja = getelementptr inbounds nuw i8, ptr %.0454459, i64 120
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !11
  %i.jc = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.jb
  store double %i.iz, ptr %i.jc, align 8, !tbaa !13
  %i.jd = fsub double %i.ij, %i.iy
  %i.je = getelementptr inbounds nuw i8, ptr %.0455458, i64 120
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !11
  %i.jg = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.jf
  store double %i.jd, ptr %i.jg, align 8, !tbaa !13
  %i.jh = fadd double %i.hd, %i.ir
  %i.ji = getelementptr inbounds nuw i8, ptr %.0454459, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !11
  %i.jk = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.jj
  store double %i.jh, ptr %i.jk, align 8, !tbaa !13
  %i.jl = fadd double %i.iy, %i.ij
  %i.jm = getelementptr inbounds nuw i8, ptr %.0455458, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !11
  %i.jo = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.jn
  store double %i.jl, ptr %i.jo, align 8, !tbaa !13
  %i.jp = fadd double %i.ix, %i.is
  %i.jq = getelementptr inbounds nuw i8, ptr %.0455458, i64 56
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !11
  %i.js = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.jr
  store double %i.jp, ptr %i.js, align 8, !tbaa !13
  %i.jt = fadd double %i.he, %i.ik
  %i.ju = getelementptr inbounds nuw i8, ptr %.0454459, i64 56
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !11
  %i.jw = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.jv
  store double %i.jt, ptr %i.jw, align 8, !tbaa !13
  %i.jx = fsub double %i.is, %i.ix
  %i.jy = getelementptr inbounds nuw i8, ptr %.0455458, i64 72
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !11
  %i.ka = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.jz
  store double %i.jx, ptr %i.ka, align 8, !tbaa !13
  %i.kb = fsub double %i.he, %i.ik
  %i.kc = getelementptr inbounds nuw i8, ptr %.0454459, i64 72
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !11
  %i.ke = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.kd
  store double %i.kb, ptr %i.ke, align 8, !tbaa !13
  %i.kf = fsub double %i.p, %i.ak                 ; 2 uses
  %i.kg = fadd double %i.it, %i.iu                ; 2 uses
  %i.kh = fadd double %i.kf, %i.kg                ; 2 uses
  %i.ki = fsub double %i.kf, %i.kg                ; 2 uses
  %i.kj = fadd <2 x double> %i.hu, %i.hy          ; 2 uses
  %i.kk = fsub <2 x double> %i.hu, %i.hy          ; 2 uses
  %i.kl = shufflevector <2 x double> %i.kj, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.km = fsub <2 x double> %i.hh, %i.hr          ; 2 uses
  %i.kn = fadd <2 x double> %i.hh, %i.hr          ; 2 uses
  %i.ko = shufflevector <2 x double> %i.km, <2 x double> %i.kn, <2 x i32> <i32 0, i32 3>
  %i.kp = fmul <2 x double> %i.ko, <double f0xBFE1C73B39AE68C8, double f0x3FEA9B66290EA1A3>
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> <double f0x3FEA9B66290EA1A3, double f0x3FE1C73B39AE68C8>, <2 x double> %i.kp) ; 2 uses
  %i.kr = extractelement <2 x double> %i.kq, i64 0 ; 2 uses
  %i.ks = extractelement <2 x double> %i.kq, i64 1 ; 2 uses
  %i.kt = fadd double %i.ks, %i.kr                ; 2 uses
  %i.ku = fsub double %i.ks, %i.kr                ; 2 uses
  %i.kv = shufflevector <2 x double> %i.kj, <2 x double> %i.kn, <2 x i32> <i32 0, i32 3>
  %i.kw = fmul <2 x double> %i.kv, <double f0x3FE1C73B39AE68C8, double f0xBFE1C73B39AE68C8>
  %i.kx = shufflevector <2 x double> %i.km, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.ky = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> splat (double f0x3FEA9B66290EA1A3), <2 x double> %i.kw) ; 2 uses
  %i.kz = extractelement <2 x double> %i.ky, i64 0 ; 2 uses
  %i.la = extractelement <2 x double> %i.ky, i64 1 ; 2 uses
  %i.lb = fadd double %i.la, %i.kz                ; 2 uses
  %i.lc = fsub double %i.la, %i.kz                ; 2 uses
  %foldExtExtBinop478.a = fsub <2 x double> %i.bk, %i.ci
  %i.ld = extractelement <2 x double> %foldExtExtBinop478.a, i64 0 ; 2 uses
  %i.le = fadd double %i.q, %i.am                 ; 2 uses
  %i.lf = fsub double %i.ld, %i.le                ; 2 uses
  %i.lg = fadd double %i.le, %i.ld                ; 2 uses
  %i.lh = fsub double %i.kh, %i.lb
  %i.li = getelementptr inbounds nuw i8, ptr %.0454459, i64 104
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !11
  %i.lk = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.lj
  store double %i.lh, ptr %i.lk, align 8, !tbaa !13
  %i.ll = fsub double %i.kt, %i.lg
  %i.lm = getelementptr inbounds nuw i8, ptr %.0455458, i64 104
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !11
  %i.lo = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.ln
  store double %i.ll, ptr %i.lo, align 8, !tbaa !13
  %i.lp = fadd double %i.kh, %i.lb
  %i.lq = getelementptr inbounds nuw i8, ptr %.0454459, i64 24
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !11
  %i.ls = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.lr
  store double %i.lp, ptr %i.ls, align 8, !tbaa !13
  %i.lt = fadd double %i.lg, %i.kt
  %i.lu = getelementptr inbounds nuw i8, ptr %.0455458, i64 24
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !11
  %i.lw = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.lv
  store double %i.lt, ptr %i.lw, align 8, !tbaa !13
  %i.lx = fadd double %i.lf, %i.lc
  %i.ly = getelementptr inbounds nuw i8, ptr %.0455458, i64 40
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !11
  %i.ma = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.lz
  store double %i.lx, ptr %i.ma, align 8, !tbaa !13
  %i.mb = fadd double %i.ki, %i.ku
  %i.mc = getelementptr inbounds nuw i8, ptr %.0454459, i64 40
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !11
  %i.me = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.md
  store double %i.mb, ptr %i.me, align 8, !tbaa !13
  %i.mf = fsub double %i.lc, %i.lf
  %i.mg = getelementptr inbounds nuw i8, ptr %.0455458, i64 88
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !11
  %i.mi = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %i.mh
  store double %i.mf, ptr %i.mi, align 8, !tbaa !13
  %i.mj = fsub double %i.ki, %i.ku
  %i.mk = getelementptr inbounds nuw i8, ptr %.0454459, i64 88
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !11
  %i.mm = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %i.ml
  store double %i.mj, ptr %i.mm, align 8, !tbaa !13
  %i.mn = add nsw i64 %.0456457, -1
  %i.mo = getelementptr inbounds [8 x i8], ptr %.0464, i64 %8
  %i.mp = getelementptr inbounds [8 x i8], ptr %.0450463, i64 %8
  %i.mq = getelementptr inbounds [8 x i8], ptr %.0451462, i64 %9
  %i.mr = getelementptr inbounds [8 x i8], ptr %.0452461, i64 %9
  %i.ms = getelementptr inbounds [8 x i8], ptr %.0453460, i64 %i.b
  %i.mt = getelementptr inbounds [8 x i8], ptr %.0454459, i64 %i.b
  %i.mu = getelementptr inbounds [8 x i8], ptr %.0455458, i64 %i.b
  %i.mv = icmp samesign ugt i64 %.0456457, 1
  br i1 %i.mv, label %bb.b, label %._crit_edge, !llvm.loop !9

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
