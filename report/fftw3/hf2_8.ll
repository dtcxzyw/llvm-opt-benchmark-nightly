Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hf2_8?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2hc_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2hc_genus = type { i32, i64 }

@desc = internal constant %struct.hc2hc_desc_s { i64 8, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hf_genus, %struct.opcnt { double 5.600000e+01, double 2.600000e+01, double 1.800000e+01, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"hf2_8\00", align 1
@twinstr = internal constant [4 x %struct.tw_instr] [%struct.tw_instr { i8 2, i8 1, i16 1 }, %struct.tw_instr { i8 2, i8 1, i16 3 }, %struct.tw_instr { i8 2, i8 1, i16 7 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 16
@fftw_rdft_hf_genus = external constant %struct.hc2hc_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hf2_8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2hc_register(ptr noundef %0, ptr noundef nonnull @hf2_8, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_khc2hc_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hf2_8(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
bb.a:
  %i.a = icmp slt i64 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul i64 %4, 48
  %i.b = getelementptr i8, ptr %2, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -48
  %i.d = sub i64 0, %6
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0277 = phi ptr [ %0, %.lr.ph ], [ %i.ge, %bb.b ] ; 10 uses
  %.0269276 = phi ptr [ %1, %.lr.ph ], [ %i.gf, %bb.b ] ; 10 uses
  %.0270275 = phi ptr [ %i.c, %.lr.ph ], [ %i.gg, %bb.b ] ; 6 uses
  %.0271274 = phi ptr [ %3, %.lr.ph ], [ %i.gh, %bb.b ] ; 8 uses
  %.0272273 = phi i64 [ %4, %.lr.ph ], [ %i.gd, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0270275, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.0270275, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0270275, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.0270275, i64 32
  %i.j = load <2 x double>, ptr %.0270275, align 8, !tbaa !13 ; 3 uses
  %i.k = extractelement <2 x double> %i.j, i64 0  ; 3 uses
  %i.l = load <2 x double>, ptr %i.i, align 8, !tbaa !13 ; 5 uses
  %i.m = extractelement <2 x double> %i.l, i64 1  ; 3 uses
  %i.n = extractelement <2 x double> %i.l, i64 0  ; 2 uses
  %i.o = fneg double %i.n                         ; 2 uses
  %i.p = load double, ptr %.0277, align 8, !tbaa !13 ; 2 uses
  %i.q = load double, ptr %.0269276, align 8, !tbaa !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0271274, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.s ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.s ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = fneg double %i.u
  %i.y = insertelement <2 x double> poison, double %i.w, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.x, i64 1
  %i.aa = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.w, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0271274, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.ad ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.ad ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ai = fneg double %i.af
  %i.aj = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ai, i64 1
  %i.am = fmul <2 x double> %i.aj, %i.al
  %i.an = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.ah, i64 1
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.ap, <2 x double> %i.am) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0271274, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.as ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.as ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ax = fneg double %i.au
  %i.ay = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1
  %i.ba = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.aw, i64 1
  %i.bc = extractelement <2 x double> %i.aq, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0271274, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.be ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.be ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = fneg double %i.bg
  %i.bk = load double, ptr %i.f, align 8, !tbaa !13 ; 5 uses
  %i.bl = fmul double %i.bk, %i.m
  %i.bm = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bn = fmul double %i.bk, %i.o
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.k, double %i.m, double %i.bn)
  %i.bp = load double, ptr %i.g, align 8, !tbaa !13 ; 3 uses
  %i.bq = load double, ptr %i.h, align 8, !tbaa !13 ; 3 uses
  %i.br = fmul double %i.k, %i.bp                 ; 2 uses
  %i.bs = fmul double %i.bk, %i.bp                ; 2 uses
  %i.bt = fmul double %i.bk, %i.bq                ; 2 uses
  %i.bu = fmul double %i.k, %i.bq                 ; 2 uses
  %i.bv = fsub double %i.br, %i.bt
  %i.bw = fadd double %i.bs, %i.bu
  %i.bx = fadd double %i.br, %i.bt                ; 3 uses
  %i.by = fsub double %i.bu, %i.bs                ; 3 uses
  %i.bz = fmul double %i.by, %i.o
  %i.ca = insertelement <2 x double> %i.j, double %i.bx, i64 1
  %i.cb = insertelement <2 x double> %i.bm, double %i.bz, i64 1
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.l, <2 x double> %i.cb) ; 2 uses
  %i.cd = fmul double %i.by, %i.m
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.n, double %i.cd)
  %i.cf = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.cg, %i.z
  %i.ci = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ab, <2 x double> %i.ch) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0 ; 2 uses
  %i.cm = fadd double %i.p, %i.cl                 ; 2 uses
  %i.cn = extractelement <2 x double> %i.ck, i64 1 ; 2 uses
  %7 = fsub double %i.q, %i.cn                    ; 2 uses
  %8 = fsub double %i.p, %i.cl                    ; 2 uses
  %i.co = fadd double %i.q, %i.cn                 ; 2 uses
  %i.cp = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %i.cq, %i.az
  %i.cs = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.bb, <2 x double> %i.cr) ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.aq, %i.cu ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 1 ; 2 uses
  %i.cw = fadd double %i.bc, %i.cv                ; 2 uses
  %foldExtExtBinop280 = fsub <2 x double> %i.aq, %i.cu
  %9 = extractelement <2 x double> %foldExtExtBinop280, i64 0 ; 2 uses
  %10 = fsub double %i.bc, %i.cv                  ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.bj, i64 1
  %i.db = fmul <2 x double> %i.cy, %i.da
  %i.dc = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.bi, i64 1
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.df, <2 x double> %i.db) ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0271274, i64 48
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.di ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !13 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.di ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !13 ; 2 uses
  %i.dn = fneg double %i.dk
  %i.do = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dn, i64 1
  %i.ds = fmul <2 x double> %i.dp, %i.dr
  %i.dt = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dm, i64 1
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.dv, <2 x double> %i.ds) ; 3 uses
  %foldExtExtBinop282.a = fadd <2 x double> %i.dg, %i.dw
  %11 = extractelement <2 x double> %foldExtExtBinop282.a, i64 0 ; 2 uses
  %foldExtExtBinop284 = fsub <2 x double> %i.dg, %i.dw
  %i.dx = extractelement <2 x double> %foldExtExtBinop284, i64 0 ; 2 uses
  %12 = extractelement <2 x double> %i.dg, i64 1  ; 2 uses
  %i.dy = extractelement <2 x double> %i.dw, i64 1 ; 2 uses
  %13 = fsub double %12, %i.dy                    ; 2 uses
  %14 = fadd double %12, %i.dy                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0271274, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !11 ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.ea ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !13 ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.ea ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !13 ; 2 uses
  %i.ef = fneg double %i.ec
  %i.eg = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ef, i64 1
  %i.ek = fmul <2 x double> %i.eh, %i.ej
  %i.el = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ee, i64 1
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.en, <2 x double> %i.ek) ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0271274, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11 ; 2 uses
  %i.er = getelementptr inbounds [8 x i8], ptr %.0277, i64 %i.eq ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !13 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.eq ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !13 ; 2 uses
  %i.ev = fneg double %i.es
  %i.ew = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ev, i64 1
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.eu, i64 1
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %i.fd, <2 x double> %i.ez) ; 3 uses
  %foldExtExtBinop286.a = fadd <2 x double> %i.eo, %i.fe ; 2 uses
  %i.ff = extractelement <2 x double> %i.eo, i64 1 ; 2 uses
  %i.fg = extractelement <2 x double> %i.fe, i64 1 ; 2 uses
  %i.fh = fadd double %i.ff, %i.fg                ; 2 uses
  %foldExtExtBinop288 = fsub <2 x double> %i.eo, %i.fe
  %15 = extractelement <2 x double> %foldExtExtBinop288, i64 0 ; 2 uses
  %16 = fsub double %i.ff, %i.fg                  ; 2 uses
  %i.fi = fadd double %i.cm, %11                  ; 2 uses
  %foldExtExtBinop290.a = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop286.a
  %i.fj = extractelement <2 x double> %foldExtExtBinop290.a, i64 0 ; 2 uses
  %i.fk = fsub double %i.fi, %i.fj
  store double %i.fk, ptr %i.av, align 8, !tbaa !13
  %i.fl = fadd double %i.fi, %i.fj
  store double %i.fl, ptr %.0277, align 8, !tbaa !13
  %foldExtExtBinop292.a = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop286.a
  %i.fm = extractelement <2 x double> %foldExtExtBinop292.a, i64 0 ; 2 uses
  %i.fn = fsub double %i.co, %14                  ; 2 uses
  %i.fo = fsub double %i.fm, %i.fn
  store double %i.fo, ptr %i.dj, align 8, !tbaa !13
  %i.fp = fadd double %i.fn, %i.fm
  store double %i.fp, ptr %i.et, align 8, !tbaa !13
  %i.fq = fsub double %8, %13                     ; 2 uses
  %i.fr = fsub double %7, %i.dx                   ; 2 uses
  %i.fs = fsub double %15, %16                    ; 2 uses
  %i.ft = fadd double %10, %9                     ; 2 uses
  %17 = fadd double %i.ft, %i.fs
  %18 = fmul double %17, f0x3FE6A09E667F3BCD      ; 2 uses
  %i.fu = fsub double %i.ft, %i.fs
  %19 = fmul double %i.fu, f0x3FE6A09E667F3BCD    ; 2 uses
  %i.fv = fsub double %i.fq, %18
  store double %i.fv, ptr %i.at, align 8, !tbaa !13
  %20 = fadd double %i.fr, %19
  store double %20, ptr %i.dl, align 8, !tbaa !13
  %i.fw = fadd double %i.fq, %18
  store double %i.fw, ptr %.0269276, align 8, !tbaa !13
  %i.fx = fsub double %19, %i.fr
  store double %i.fx, ptr %i.er, align 8, !tbaa !13
  %21 = fadd double %i.cw, %i.fh                  ; 2 uses
  %22 = fadd double %i.co, %14                    ; 2 uses
  %23 = fsub double %21, %22
  store double %23, ptr %i.t, align 8, !tbaa !13
  %i.fy = fadd double %22, %21
  store double %i.fy, ptr %i.ag, align 8, !tbaa !13
  %i.fz = fsub double %i.cm, %11                  ; 2 uses
  %24 = fsub double %i.cw, %i.fh                  ; 2 uses
  %25 = fsub double %i.fz, %24
  store double %25, ptr %i.bf, align 8, !tbaa !13
  %26 = fadd double %i.fz, %24
  store double %26, ptr %i.ed, align 8, !tbaa !13
  %i.ga = fadd double %8, %13                     ; 2 uses
  %27 = fadd double %7, %i.dx                     ; 2 uses
  %i.gb = fadd double %16, %15                    ; 2 uses
  %i.gc = fsub double %9, %10                     ; 2 uses
  %28 = fadd double %i.gc, %i.gb
  %29 = fmul double %28, f0x3FE6A09E667F3BCD      ; 2 uses
  %30 = fsub double %i.gc, %i.gb
  %31 = fmul double %30, f0x3FE6A09E667F3BCD      ; 2 uses
  %32 = fsub double %i.ga, %29
  store double %32, ptr %i.bh, align 8, !tbaa !13
  %33 = fadd double %27, %31
  store double %33, ptr %i.v, align 8, !tbaa !13
  %34 = fadd double %i.ga, %29
  store double %34, ptr %i.eb, align 8, !tbaa !13
  %35 = fsub double %31, %27
  store double %35, ptr %i.ae, align 8, !tbaa !13
  %i.gd = add nsw i64 %.0272273, 1                ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %.0277, i64 %6
  %i.gf = getelementptr inbounds [8 x i8], ptr %.0269276, i64 %i.d
  %i.gg = getelementptr inbounds nuw i8, ptr %.0270275, i64 48
  %i.gh = getelementptr inbounds [8 x i8], ptr %.0271274, i64 %i.e
  %exitcond.not = icmp eq i64 %i.gd, %5
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
