Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/t2_8?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ct_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.ct_genus = type { ptr, i64 }

@desc = internal constant %struct.ct_desc_s { i64 8, ptr @.str, ptr @twinstr, ptr @fftw_dft_t_genus, %struct.opcnt { double 5.600000e+01, double 2.600000e+01, double 1.800000e+01, double 0.000000e+00 }, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [5 x i8] c"t2_8\00", align 1
@twinstr = internal constant [4 x %struct.tw_instr] [%struct.tw_instr { i8 2, i8 0, i16 1 }, %struct.tw_instr { i8 2, i8 0, i16 3 }, %struct.tw_instr { i8 2, i8 0, i16 7 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 16
@fftw_dft_t_genus = external constant %struct.ct_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_t2_8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_dit_register(ptr noundef %0, ptr noundef nonnull @t2_8, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_dit_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @t2_8(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
bb.a:
  %i.a = icmp slt i64 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %4, 48
  %i.b = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.c = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0277 = phi ptr [ %0, %.lr.ph ], [ %i.fv, %bb.b ] ; 10 uses
  %.0269276 = phi ptr [ %1, %.lr.ph ], [ %i.fw, %bb.b ] ; 10 uses
  %.0270275 = phi ptr [ %i.b, %.lr.ph ], [ %i.fx, %bb.b ] ; 6 uses
  %.0271274 = phi ptr [ %3, %.lr.ph ], [ %i.fy, %bb.b ] ; 8 uses
  %.0272273 = phi i64 [ %4, %.lr.ph ], [ %i.fu, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0270275, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.0270275, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.0270275, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %.0270275, i64 32
  %i.h = load <2 x double>, ptr %.0270275, align 8, !tbaa !13 ; 3 uses
  %i.i = extractelement <2 x double> %i.h, i64 0  ; 3 uses
  %i.j = load <2 x double>, ptr %i.g, align 8, !tbaa !13 ; 5 uses
  %i.k = extractelement <2 x double> %i.j, i64 1  ; 3 uses
  %i.l = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.m = fneg double %i.l                         ; 2 uses
  %i.n = load double, ptr %.0277, align 8, !tbaa !13
  %i.o = load double, ptr %.0269276, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.0271274, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.q ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = fneg double %i.s
  %i.w = insertelement <2 x double> poison, double %i.u, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.v, i64 1
  %i.y = insertelement <2 x double> poison, double %i.s, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.u, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.0271274, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.ab ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.ab ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = fneg double %i.ad
  %i.ah = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = insertelement <2 x double> poison, double %i.af, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ag, i64 1
  %i.ak = fmul <2 x double> %i.ah, %i.aj
  %i.al = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.af, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.an, <2 x double> %i.ak) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0271274, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.aq ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.aq ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = fneg double %i.as
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = insertelement <2 x double> poison, double %i.as, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.au, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0271274, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.bb ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.bb ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %i.bg = fneg double %i.bd
  %i.bh = load double, ptr %i.d, align 8, !tbaa !13 ; 5 uses
  %i.bi = fmul double %i.bh, %i.k
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = fmul double %i.bh, %i.m
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %i.bk)
  %i.bm = load double, ptr %i.e, align 8, !tbaa !13 ; 3 uses
  %i.bn = load double, ptr %i.f, align 8, !tbaa !13 ; 3 uses
  %i.bo = fmul double %i.i, %i.bm                 ; 2 uses
  %i.bp = fmul double %i.bh, %i.bm                ; 2 uses
  %i.bq = fmul double %i.bh, %i.bn                ; 2 uses
  %i.br = fmul double %i.i, %i.bn                 ; 2 uses
  %i.bs = fsub double %i.bo, %i.bq
  %i.bt = fadd double %i.bp, %i.br
  %i.bu = fadd double %i.bo, %i.bq                ; 3 uses
  %i.bv = fsub double %i.br, %i.bp                ; 3 uses
  %i.bw = fmul double %i.bv, %i.m
  %i.bx = insertelement <2 x double> %i.h, double %i.bu, i64 1
  %i.by = insertelement <2 x double> %i.bj, double %i.bw, i64 1
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.j, <2 x double> %i.by) ; 2 uses
  %i.ca = fmul double %i.bv, %i.k
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.l, double %i.ca)
  %i.cc = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x double> %i.cd, %i.x
  %i.cf = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.z, <2 x double> %i.ce) ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x double> %i.cj, %i.ax
  %i.cl = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.az, <2 x double> %i.ck) ; 3 uses
  %i.co = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.bg, i64 1
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.bf, i64 1
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cw, <2 x double> %i.cs) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0271274, i64 48
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !11 ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.cz ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !13 ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.cz ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !13 ; 2 uses
  %i.de = fneg double %i.db
  %i.df = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.de, i64 1
  %i.dj = fmul <2 x double> %i.dg, %i.di
  %i.dk = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dd, i64 1
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dm, <2 x double> %i.dj) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0271274, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.dp ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !13 ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.dp ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !13 ; 2 uses
  %i.du = fneg double %i.dr
  %i.dv = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.du, i64 1
  %i.dz = fmul <2 x double> %i.dw, %i.dy
  %i.ea = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dt, i64 1
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.ec, <2 x double> %i.dz) ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0271274, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !11 ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.ef ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !13 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.ef ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !13 ; 2 uses
  %i.ek = fneg double %i.eh
  %i.el = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.em = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ek, i64 1
  %i.eo = fmul <2 x double> %i.el, %i.en
  %i.ep = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.ej, i64 1
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.es, <2 x double> %i.eo) ; 3 uses
  %i.eu = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.o, i64 1 ; 2 uses
  %i.ew = fadd <2 x double> %i.ev, %i.ch          ; 2 uses
  %i.ex = fadd <2 x double> %i.ao, %i.cn          ; 3 uses
  %i.ey = fadd <2 x double> %i.cx, %i.dn          ; 2 uses
  %i.ez = fadd <2 x double> %i.ed, %i.et          ; 3 uses
  %i.fa = fadd <2 x double> %i.ex, %i.ez          ; 2 uses
  %i.fb = fadd <2 x double> %i.ew, %i.ey          ; 2 uses
  %i.fc = fsub <2 x double> %i.fb, %i.fa          ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  store double %i.fd, ptr %i.r, align 8, !tbaa !13
  %i.fe = fadd <2 x double> %i.fb, %i.fa          ; 2 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0
  store double %i.ff, ptr %.0277, align 8, !tbaa !13
  %i.fg = extractelement <2 x double> %i.fe, i64 1
  store double %i.fg, ptr %.0269276, align 8, !tbaa !13
  %i.fh = extractelement <2 x double> %i.fc, i64 1
  store double %i.fh, ptr %i.t, align 8, !tbaa !13
  %i.fi = shufflevector <2 x double> %i.ez, <2 x double> %i.ex, <2 x i32> <i32 1, i32 2>
  %i.fj = shufflevector <2 x double> %i.ex, <2 x double> %i.ez, <2 x i32> <i32 1, i32 2>
  %i.fk = fsub <2 x double> %i.fi, %i.fj          ; 2 uses
  %i.fl = fsub <2 x double> %i.ew, %i.ey          ; 2 uses
  %i.fm = fsub <2 x double> %i.fl, %i.fk          ; 2 uses
  %i.fn = extractelement <2 x double> %i.fm, i64 0
  store double %i.fn, ptr %i.da, align 8, !tbaa !13
  %i.fo = fadd <2 x double> %i.fl, %i.fk          ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0
  store double %i.fp, ptr %i.bc, align 8, !tbaa !13
  %i.fq = extractelement <2 x double> %i.fo, i64 1
  store double %i.fq, ptr %i.be, align 8, !tbaa !13
  %i.fr = extractelement <2 x double> %i.fm, i64 1
  store double %i.fr, ptr %i.dc, align 8, !tbaa !13
  %7 = fsub <2 x double> %i.ev, %i.ch
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.ao, %i.cn
  %9 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop280.a = fsub <2 x double> %i.ao, %i.cn
  %10 = extractelement <2 x double> %foldExtExtBinop280.a, i64 1 ; 2 uses
  %11 = fsub <2 x double> %i.cx, %i.dn            ; 3 uses
  %foldExtExtBinop282.a = fsub <2 x double> %i.ed, %i.et
  %12 = extractelement <2 x double> %foldExtExtBinop282.a, i64 0 ; 2 uses
  %foldExtExtBinop284 = fsub <2 x double> %i.ed, %i.et
  %13 = extractelement <2 x double> %foldExtExtBinop284, i64 1 ; 2 uses
  %foldExtExtBinop286.a = fsub <2 x double> %8, %11
  %14 = extractelement <2 x double> %foldExtExtBinop286.a, i64 1 ; 2 uses
  %foldExtExtBinop288 = fsub <2 x double> %8, %11
  %15 = extractelement <2 x double> %foldExtExtBinop288, i64 0 ; 2 uses
  %16 = fsub double %13, %12                      ; 2 uses
  %17 = fadd double %10, %9                       ; 2 uses
  %18 = fsub double %16, %17
  %19 = fmul double %18, f0x3FE6A09E667F3BCD      ; 2 uses
  %20 = fadd double %17, %16
  %21 = fmul double %20, f0x3FE6A09E667F3BCD      ; 2 uses
  %22 = fsub double %14, %19
  store double %22, ptr %i.ac, align 8, !tbaa !13
  %23 = fsub double %15, %21
  store double %23, ptr %i.ei, align 8, !tbaa !13
  %24 = fadd double %14, %19
  store double %24, ptr %i.ar, align 8, !tbaa !13
  %i.fs = fadd double %15, %21
  store double %i.fs, ptr %i.ds, align 8, !tbaa !13
  %i.ft = fadd <2 x double> %8, %11               ; 2 uses
  %25 = fadd double %13, %12                      ; 2 uses
  %26 = fsub double %9, %10                       ; 2 uses
  %27 = fadd double %26, %25
  %28 = fsub double %26, %25
  %29 = insertelement <2 x double> poison, double %28, i64 0
  %30 = insertelement <2 x double> %29, double %27, i64 1
  %31 = fmul <2 x double> %30, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %32 = fsub <2 x double> %i.ft, %31              ; 2 uses
  %33 = extractelement <2 x double> %32, i64 1
  store double %33, ptr %i.eg, align 8, !tbaa !13
  %34 = extractelement <2 x double> %32, i64 0
  store double %34, ptr %i.ae, align 8, !tbaa !13
  %35 = fadd <2 x double> %i.ft, %31              ; 2 uses
  %36 = extractelement <2 x double> %35, i64 1
  store double %36, ptr %i.dq, align 8, !tbaa !13
  %37 = extractelement <2 x double> %35, i64 0
  store double %37, ptr %i.at, align 8, !tbaa !13
  %i.fu = add nsw i64 %.0272273, 1                ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %.0277, i64 %6
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %6
  %i.fx = getelementptr inbounds nuw i8, ptr %.0270275, i64 48
  %i.fy = getelementptr inbounds [8 x i8], ptr %.0271274, i64 %i.c
  %exitcond.not = icmp eq i64 %i.fu, %5
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
