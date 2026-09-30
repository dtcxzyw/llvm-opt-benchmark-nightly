Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/t1_15?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ct_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.ct_genus = type { ptr, i64 }

@desc = internal constant %struct.ct_desc_s { i64 15, ptr @.str, ptr @twinstr, ptr @fftw_dft_t_genus, %struct.opcnt { double 1.280000e+02, double 5.600000e+01, double 5.600000e+01, double 0.000000e+00 }, i64 0, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"t1_15\00", align 1
@twinstr = internal constant [2 x %struct.tw_instr] [%struct.tw_instr { i8 4, i8 0, i16 15 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 2
@fftw_dft_t_genus = external constant %struct.ct_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_t1_15(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_dit_register(ptr noundef %0, ptr noundef nonnull @t1_15, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_dit_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @t1_15(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
bb.a:
  %i.a = icmp slt i64 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %4, 224
  %i.b = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.c = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0587 = phi ptr [ %0, %.lr.ph ], [ %i.os, %bb.b ] ; 17 uses
  %.0579586 = phi ptr [ %1, %.lr.ph ], [ %i.ot, %bb.b ] ; 17 uses
  %.0580585 = phi ptr [ %i.b, %.lr.ph ], [ %i.ou, %bb.b ] ; 15 uses
  %.0581584 = phi ptr [ %3, %.lr.ph ], [ %i.ov, %bb.b ] ; 15 uses
  %.0582583 = phi i64 [ %4, %.lr.ph ], [ %i.or, %bb.b ]
  %i.d = load double, ptr %.0587, align 8, !tbaa !13 ; 2 uses
  %i.e = load double, ptr %.0579586, align 8, !tbaa !13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0581584, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.g ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0580585, i64 64
  %i.m = fneg double %i.i
  %i.n = load <2 x double>, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.p = insertelement <2 x double> poison, double %i.k, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.m, i64 1
  %i.r = fmul <2 x double> %i.o, %i.q
  %i.s = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x double> poison, double %i.i, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.k, i64 1
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.u, <2 x double> %i.r) ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0581584, i64 80
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.x ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !13 ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.x ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0580585, i64 144
  %i.ad = fneg double %i.z
  %i.ae = load <2 x double>, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ad, i64 1
  %i.ai = fmul <2 x double> %i.af, %i.ah
  %i.aj = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = insertelement <2 x double> poison, double %i.z, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ab, i64 1
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> %i.ai) ; 3 uses
  %i.an = fadd <2 x double> %i.v, %i.am           ; 3 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = fadd double %i.d, %i.ao                 ; 2 uses
  %i.aq = extractelement <2 x double> %i.an, i64 1
  %i.ar = insertelement <2 x double> poison, double %i.d, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.e, i64 1
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> splat (double -5.000000e-01), <2 x double> %i.as) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0581584, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.av ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.av ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0580585, i64 80
  %i.bb = fneg double %i.ax
  %i.bc = load <2 x double>, ptr %i.ba, align 8, !tbaa !13 ; 2 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.be = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bb, i64 1
  %i.bg = fmul <2 x double> %i.bd, %i.bf
  %i.bh = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.az, i64 1
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bj, <2 x double> %i.bg) ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0581584, i64 72
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.bm ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.bm ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !13 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0580585, i64 128
  %i.bs = fneg double %i.bo
  %i.bt = load <2 x double>, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bs, i64 1
  %i.bx = fmul <2 x double> %i.bu, %i.bw
  %i.by = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.bq, i64 1
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ca, <2 x double> %i.bx) ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0581584, i64 88
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.cd ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.cd ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !13 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0580585, i64 160
  %i.cj = fneg double %i.cf
  %i.ck = load <2 x double>, ptr %i.ci, align 8, !tbaa !13 ; 2 uses
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cj, i64 1
  %i.co = fmul <2 x double> %i.cl, %i.cn
  %i.cp = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.ch, i64 1
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cr, <2 x double> %i.co) ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0581584, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !11 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.cu ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.cu ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !13 ; 2 uses
  %i.cz = fneg double %i.cw
  %i.da = load <2 x double>, ptr %.0580585, align 8, !tbaa !13 ; 2 uses
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cz, i64 1
  %i.de = fmul <2 x double> %i.db, %i.dd
  %i.df = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cy, i64 1
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.dh, <2 x double> %i.de) ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0581584, i64 112
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11 ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.dk ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !13 ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.dk ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !13 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0580585, i64 208
  %i.dq = fneg double %i.dm
  %i.dr = load <2 x double>, ptr %i.dp, align 8, !tbaa !13 ; 2 uses
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = insertelement <2 x double> poison, double %i.do, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dq, i64 1
  %i.dv = fmul <2 x double> %i.ds, %i.du
  %i.dw = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.do, i64 1
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dy, <2 x double> %i.dv) ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0581584, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !11 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.eb ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !13 ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.eb ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !13 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0580585, i64 48
  %i.eh = fneg double %i.ed
  %i.ei = load <2 x double>, ptr %i.eg, align 8, !tbaa !13 ; 2 uses
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.eh, i64 1
  %i.em = fmul <2 x double> %i.ej, %i.el
  %i.en = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.ef, i64 1
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.ep, <2 x double> %i.em) ; 4 uses
  %i.er = shufflevector <2 x double> %i.cs, <2 x double> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.es = shufflevector <2 x double> %i.di, <2 x double> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.et = fadd <2 x double> %i.er, %i.es          ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.cb, %i.et
  %i.eu = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %i.ev = shufflevector <2 x double> %i.bk, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> splat (double -5.000000e-01), <2 x double> %i.ev) ; 4 uses
  %i.ex = shufflevector <2 x double> %i.cs, <2 x double> %i.dz, <2 x i32> <i32 1, i32 2>
  %i.ey = shufflevector <2 x double> %i.di, <2 x double> %i.eq, <2 x i32> <i32 1, i32 2>
  %i.ez = fadd <2 x double> %i.ex, %i.ey          ; 3 uses
  %shift = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop590 = fadd <2 x double> %shift, %i.ez
  %i.fa = extractelement <2 x double> %foldExtExtBinop590, i64 0 ; 2 uses
  %i.fb = shufflevector <2 x double> %i.bk, <2 x double> %i.cb, <2 x i32> <i32 1, i32 2>
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> splat (double -5.000000e-01), <2 x double> %i.fb) ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0581584, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !11 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.fe ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !13 ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.fe ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !13 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0580585, i64 32
  %i.fk = fneg double %i.fg
  %i.fl = load <2 x double>, ptr %i.fj, align 8, !tbaa !13 ; 2 uses
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fk, i64 1
  %i.fp = fmul <2 x double> %i.fm, %i.fo
  %i.fq = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fi, i64 1
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fs, <2 x double> %i.fp) ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0581584, i64 96
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !11 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.fv ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !13 ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.fv ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !13 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0580585, i64 176
  %i.gb = fneg double %i.fx
  %i.gc = load <2 x double>, ptr %i.ga, align 8, !tbaa !13 ; 2 uses
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ge = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gb, i64 1
  %i.gg = fmul <2 x double> %i.gd, %i.gf
  %i.gh = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.fz, i64 1
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.gj, <2 x double> %i.gg) ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0581584, i64 64
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !11 ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.gm ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !13 ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.gm ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !13 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.0580585, i64 112
  %i.gs = fneg double %i.go
  %i.gt = load <2 x double>, ptr %i.gr, align 8, !tbaa !13 ; 2 uses
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gs, i64 1
  %i.gx = fmul <2 x double> %i.gu, %i.gw
  %i.gy = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = insertelement <2 x double> poison, double %i.go, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %i.gq, i64 1
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.ha, <2 x double> %i.gx) ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0581584, i64 104
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !11 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.hd ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !13 ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.hd ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !13 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0580585, i64 192
  %i.hj = fneg double %i.hf
  %i.hk = load <2 x double>, ptr %i.hi, align 8, !tbaa !13 ; 2 uses
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hm = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hj, i64 1
  %i.ho = fmul <2 x double> %i.hl, %i.hn
  %i.hp = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hh, i64 1
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.hr, <2 x double> %i.ho) ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0581584, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !11 ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.hu ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !13 ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.hu ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !13 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0580585, i64 16
  %i.ia = fneg double %i.hw
  %i.ib = load <2 x double>, ptr %i.hz, align 8, !tbaa !13 ; 2 uses
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.id = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %i.ia, i64 1
  %i.if = fmul <2 x double> %i.ic, %i.ie
  %i.ig = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.hy, i64 1
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.ii, <2 x double> %i.if) ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0581584, i64 56
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !11 ; 2 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %.0587, i64 %i.il ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !13 ; 2 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %i.il ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !13 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.0580585, i64 96
  %i.ir = fneg double %i.in
  %i.is = load <2 x double>, ptr %i.iq, align 8, !tbaa !13 ; 2 uses
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.iu = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.iv = insertelement <2 x double> %i.iu, double %i.ir, i64 1
  %i.iw = fmul <2 x double> %i.it, %i.iv
  %i.ix = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = insertelement <2 x double> poison, double %i.in, i64 0
  %i.iz = insertelement <2 x double> %i.iy, double %i.ip, i64 1
  %i.ja = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.iz, <2 x double> %i.iw) ; 4 uses
  %i.jb = shufflevector <2 x double> %i.hb, <2 x double> %i.ij, <2 x i32> <i32 0, i32 3>
  %i.jc = shufflevector <2 x double> %i.hs, <2 x double> %i.ja, <2 x i32> <i32 0, i32 3>
  %i.jd = fadd <2 x double> %i.jb, %i.jc          ; 3 uses
  %foldExtExtBinop592 = fadd <2 x double> %i.gk, %i.jd
  %i.je = extractelement <2 x double> %foldExtExtBinop592, i64 1 ; 2 uses
  %i.jf = shufflevector <2 x double> %i.ft, <2 x double> %i.gk, <2 x i32> <i32 0, i32 3>
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> splat (double -5.000000e-01), <2 x double> %i.jf) ; 4 uses
  %i.jh = shufflevector <2 x double> %i.hb, <2 x double> %i.ij, <2 x i32> <i32 1, i32 2>
  %i.ji = shufflevector <2 x double> %i.hs, <2 x double> %i.ja, <2 x i32> <i32 1, i32 2>
  %i.jj = fadd <2 x double> %i.jh, %i.ji          ; 3 uses
  %i.jk = shufflevector <2 x double> %i.ft, <2 x double> %i.gk, <2 x i32> <i32 1, i32 2>
  %i.jl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> splat (double -5.000000e-01), <2 x double> %i.jk) ; 4 uses
  %i.jm = fsub double %i.fa, %i.eu                ; 2 uses
  %i.jn = fadd double %i.e, %i.aq                 ; 2 uses
  %i.jo = fadd double %i.fa, %i.eu                ; 2 uses
  %shift594 = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop595 = fadd <2 x double> %shift594, %i.jj
  %i.jp = extractelement <2 x double> %foldExtExtBinop595, i64 0 ; 2 uses
  %i.jq = fadd double %i.jp, %i.je                ; 2 uses
  %i.jr = fsub double %i.jp, %i.je                ; 2 uses
  %i.js = fmul double %i.jr, f0xBFE2CF2304755A5E
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.jm, double f0x3FEE6F0E134454FF, double %i.js) ; 2 uses
  %i.ju = fmul double %i.jm, f0x3FE2CF2304755A5E
  %i.jv = fadd double %i.jo, %i.jq                ; 2 uses
  %i.jw = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.jx = insertelement <2 x double> %i.jw, double %i.jv, i64 1
  %i.jy = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %i.jn, i64 1
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.jz) ; 2 uses
  %i.kb = extractelement <2 x double> %i.ka, i64 0 ; 2 uses
  %i.kc = fsub double %i.jq, %i.jo
  %i.kd = fmul double %i.kc, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.ke = shufflevector <2 x double> %i.ft, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.kf = shufflevector <2 x double> %i.jd, <2 x double> %i.et, <2 x i32> <i32 0, i32 2>
  %i.kg = fadd <2 x double> %i.ke, %i.kf          ; 3 uses
  %i.kh = shufflevector <2 x double> %i.gk, <2 x double> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.ki = shufflevector <2 x double> %i.jj, <2 x double> %i.ez, <2 x i32> <i32 1, i32 3>
  %i.kj = fadd <2 x double> %i.kh, %i.ki          ; 3 uses
  %foldExtExtBinop597 = fadd <2 x double> %i.kg, %i.kj
  %i.kk = extractelement <2 x double> %foldExtExtBinop597, i64 1 ; 2 uses
  %foldExtExtBinop599 = fadd <2 x double> %i.kg, %i.kj
  %i.kl = extractelement <2 x double> %foldExtExtBinop599, i64 0 ; 2 uses
  %i.km = fsub double %i.kl, %i.kk
  %i.kn = fmul double %i.km, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.ko = fadd double %i.kk, %i.kl                ; 2 uses
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.ko, double -2.500000e-01, double %i.ap) ; 2 uses
  %i.kq = fadd double %i.ap, %i.ko
  store double %i.kq, ptr %.0587, align 8, !tbaa !13
  %i.kr = fadd double %i.kn, %i.kp                ; 2 uses
  %i.ks = fsub double %i.kp, %i.kn                ; 2 uses
  %i.kt = fsub double %i.kr, %i.kb
  store double %i.kt, ptr %i.bn, align 8, !tbaa !13
  %i.ku = fadd double %i.kb, %i.kr
  store double %i.ku, ptr %i.aw, align 8, !tbaa !13
  %i.kv = fsub double %i.ks, %i.jt
  store double %i.kv, ptr %i.fw, align 8, !tbaa !13
  %i.kw = fadd double %i.jt, %i.ks
  store double %i.kw, ptr %i.ff, align 8, !tbaa !13
  %i.kx = fsub <2 x double> %i.kg, %i.kj          ; 2 uses
  %i.ky = fmul <2 x double> %i.kx, <double f0xBFE2CF2304755A5E, double f0x3FE2CF2304755A5E>
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.kz) ; 2 uses
  %i.lb = fadd double %i.jn, %i.jv
  store double %i.lb, ptr %.0579586, align 8, !tbaa !13
  %i.lc = extractelement <2 x double> %i.ka, i64 1 ; 2 uses
  %i.ld = fadd double %i.kd, %i.lc                ; 2 uses
  %i.le = extractelement <2 x double> %i.la, i64 0 ; 2 uses
  %i.lf = fsub double %i.ld, %i.le
  store double %i.lf, ptr %i.ay, align 8, !tbaa !13
  %i.lg = fadd double %i.le, %i.ld
  store double %i.lg, ptr %i.bp, align 8, !tbaa !13
  %i.lh = fsub double %i.lc, %i.kd                ; 2 uses
  %i.li = extractelement <2 x double> %i.la, i64 1 ; 2 uses
  %i.lj = fsub double %i.lh, %i.li
  store double %i.lj, ptr %i.fh, align 8, !tbaa !13
  %i.lk = fadd double %i.li, %i.lh
  store double %i.lk, ptr %i.fy, align 8, !tbaa !13
  %i.ll = shufflevector <2 x double> %i.ja, <2 x double> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.lm = shufflevector <2 x double> %i.ij, <2 x double> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.ln = fsub <2 x double> %i.ll, %i.lm
  %i.lo = fmul <2 x double> %i.ln, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %foldExtExtBinop601 = fadd <2 x double> %i.lo, %i.ew
  %i.lp = extractelement <2 x double> %foldExtExtBinop601, i64 1 ; 2 uses
  %i.lq = shufflevector <2 x double> %i.hs, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.lr = shufflevector <2 x double> %i.hb, <2 x double> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.ls = fsub <2 x double> %i.lq, %i.lr
  %i.lt = fmul <2 x double> %i.ls, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %shift603 = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop604 = fadd <2 x double> %i.lo, %shift603 ; 2 uses
  %i.lu = shufflevector <2 x double> %i.jg, <2 x double> %i.ew, <2 x i32> <i32 1, i32 3>
  %i.lv = fsub <2 x double> %i.lu, %i.lo          ; 3 uses
  %i.lw = shufflevector <2 x double> %i.jl, <2 x double> %i.fc, <2 x i32> <i32 0, i32 2>
  %i.lx = fsub <2 x double> %i.lw, %i.lt          ; 3 uses
  %i.ly = fsub <2 x double> %i.lx, %i.lv          ; 2 uses
  %i.lz = fmul <2 x double> %i.ly, <double f0xBFE2CF2304755A5E, double f0x3FE2CF2304755A5E>
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.ma) ; 2 uses
  %7 = extractelement <2 x double> %i.at, i64 0   ; 2 uses
  %8 = extractelement <2 x double> %i.mb, i64 0   ; 2 uses
  %i.mc = extractelement <2 x double> %i.mb, i64 1 ; 2 uses
  %foldExtExtBinop606 = fsub <2 x double> %i.v, %i.am
  %i.md = extractelement <2 x double> %foldExtExtBinop606, i64 1
  %9 = fmul double %i.md, f0x3FEBB67AE8584CAA     ; 2 uses
  %10 = fsub double %7, %9                        ; 2 uses
  %11 = insertelement <2 x double> poison, double %10, i64 0
  %i.me = extractelement <2 x double> %i.at, i64 1
  %foldExtExtBinop608.a = fadd <2 x double> %i.lx, %i.lv
  %i.mf = extractelement <2 x double> %foldExtExtBinop608.a, i64 0 ; 2 uses
  %foldExtExtBinop610.a = fadd <2 x double> %i.lx, %i.lv
  %i.mg = extractelement <2 x double> %foldExtExtBinop610.a, i64 1 ; 2 uses
  %i.mh = fadd double %i.mg, %i.mf                ; 2 uses
  %i.mi = fsub double %i.mf, %i.mg
  %i.mj = fmul double %i.mi, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.mk = shufflevector <2 x double> %i.cs, <2 x double> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.ml = shufflevector <2 x double> %i.di, <2 x double> %i.hs, <2 x i32> <i32 1, i32 3>
  %i.mm = fsub <2 x double> %i.mk, %i.ml
  %i.mn = fmul <2 x double> %i.mm, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %foldExtExtBinop612 = fsub <2 x double> %i.ew, %i.mn ; 2 uses
  %i.mo = shufflevector <2 x double> %i.ew, <2 x double> %i.jg, <2 x i32> <i32 0, i32 2>
  %i.mp = fadd <2 x double> %i.mo, %i.mn          ; 3 uses
  %i.mq = shufflevector <2 x double> %i.dz, <2 x double> %i.ij, <2 x i32> <i32 1, i32 3>
  %i.mr = shufflevector <2 x double> %i.eq, <2 x double> %i.ja, <2 x i32> <i32 1, i32 3>
  %i.ms = fsub <2 x double> %i.mq, %i.mr
  %i.mt = fmul <2 x double> %i.ms, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %shift614 = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop615 = fsub <2 x double> %shift614, %i.mt ; 2 uses
  %shift617 = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop618.a = fsub <2 x double> %i.jg, %shift617
  %i.mu = extractelement <2 x double> %foldExtExtBinop618.a, i64 0 ; 2 uses
  %foldExtExtBinop620.a = fsub <2 x double> %i.jl, %i.mt
  %i.mv = extractelement <2 x double> %foldExtExtBinop620.a, i64 1 ; 2 uses
  %i.mw = shufflevector <2 x double> %i.fc, <2 x double> %i.jl, <2 x i32> <i32 1, i32 3>
  %i.mx = fadd <2 x double> %i.mw, %i.mt          ; 3 uses
  %i.my = fadd double %i.mu, %i.mv                ; 2 uses
  %foldExtExtBinop622 = fadd <2 x double> %foldExtExtBinop612, %foldExtExtBinop615
  %i.mz = extractelement <2 x double> %foldExtExtBinop622, i64 0 ; 2 uses
  %i.na = fadd double %i.mz, %i.my                ; 2 uses
  %i.nb = fsub double %i.my, %i.mz
  %i.nc = fmul double %i.nb, f0x3FE1E3779B97F4A8  ; 2 uses
  %12 = fadd double %10, %i.na
  store double %12, ptr %i.h, align 8, !tbaa !13
  %i.nd = fsub double %i.mu, %i.mv                ; 2 uses
  %i.ne = fmul double %i.nd, f0xBFE2CF2304755A5E
  %i.nf = insertelement <2 x double> poison, double %i.na, i64 0
  %i.ng = shufflevector <2 x double> %foldExtExtBinop612, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  %13 = insertelement <2 x double> %11, double %i.ne, i64 1
  %i.nh = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.mh, i64 1
  %i.nj = fsub <2 x double> %i.mp, %i.mx          ; 2 uses
  %i.nk = fmul <2 x double> %i.nj, <double f0x3FE2CF2304755A5E, double f0xBFE2CF2304755A5E>
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.nl) ; 2 uses
  %14 = extractelement <2 x double> %i.nm, i64 0  ; 2 uses
  %15 = extractelement <2 x double> %i.nm, i64 1  ; 2 uses
  %shift624 = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop625.a = fadd <2 x double> %shift624, %i.fc
  %i.nn = extractelement <2 x double> %foldExtExtBinop625.a, i64 0 ; 2 uses
  %foldExtExtBinop627.a = fadd <2 x double> %i.lt, %i.jl ; 2 uses
  %foldExtExtBinop629.a = fsub <2 x double> %i.am, %i.v
  %i.no = extractelement <2 x double> %foldExtExtBinop629.a, i64 0
  %i.np = fmul double %i.no, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.nq = insertelement <2 x double> %foldExtExtBinop615, double %i.np, i64 1
  %i.nr = fsub <2 x double> %i.ng, %i.nq          ; 3 uses
  %i.ns = shufflevector <2 x double> %i.nf, <2 x double> %i.nr, <2 x i32> <i32 0, i32 2>
  %i.nt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %13) ; 2 uses
  %i.nu = extractelement <2 x double> %i.nt, i64 0 ; 2 uses
  %i.nv = fadd double %i.nc, %i.nu                ; 2 uses
  %16 = fsub double %i.nv, %8
  store double %16, ptr %i.dl, align 8, !tbaa !13
  %17 = fadd double %8, %i.nv
  store double %17, ptr %i.ce, align 8, !tbaa !13
  %18 = fsub double %i.nu, %i.nc                  ; 2 uses
  %i.nw = fsub double %18, %i.mc
  store double %i.nw, ptr %i.hv, align 8, !tbaa !13
  %19 = fadd double %i.mc, %18
  store double %19, ptr %i.gn, align 8, !tbaa !13
  %20 = fmul <2 x double> %i.nr, <double f0x3FE2CF2304755A5E, double 1.000000e+00>
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %20) ; 2 uses
  %22 = extractelement <2 x double> %i.nr, i64 1
  %23 = fadd double %22, %i.mh
  store double %23, ptr %i.j, align 8, !tbaa !13
  %24 = extractelement <2 x double> %21, i64 1    ; 2 uses
  %25 = fadd double %i.mj, %24                    ; 2 uses
  %i.nx = extractelement <2 x double> %21, i64 0  ; 2 uses
  %26 = fsub double %25, %i.nx
  store double %26, ptr %i.cg, align 8, !tbaa !13
  %i.ny = fadd double %i.nx, %25
  store double %i.ny, ptr %i.dn, align 8, !tbaa !13
  %27 = fsub double %24, %i.mj                    ; 2 uses
  %i.nz = extractelement <2 x double> %i.nt, i64 1 ; 2 uses
  %i.oa = fadd double %i.nz, %27
  store double %i.oa, ptr %i.hx, align 8, !tbaa !13
  %28 = fsub double %27, %i.nz
  store double %28, ptr %i.gp, align 8, !tbaa !13
  %29 = fadd double %i.np, %i.me                  ; 2 uses
  %foldExtExtBinop631 = fadd <2 x double> %foldExtExtBinop627.a, %foldExtExtBinop604
  %i.ob = extractelement <2 x double> %foldExtExtBinop631, i64 0 ; 2 uses
  %i.oc = fadd double %i.nn, %i.lp                ; 2 uses
  %30 = fadd double %i.oc, %i.ob                  ; 2 uses
  %31 = fsub double %i.ob, %i.oc
  %32 = fmul double %31, f0x3FE1E3779B97F4A8      ; 2 uses
  %i.od = fadd double %29, %30
  store double %i.od, ptr %i.aa, align 8, !tbaa !13
  %foldExtExtBinop633 = fsub <2 x double> %foldExtExtBinop627.a, %foldExtExtBinop604 ; 2 uses
  %33 = extractelement <2 x double> %foldExtExtBinop633, i64 0
  %i.oe = fsub double %i.nn, %i.lp                ; 2 uses
  %34 = fmul double %i.oe, f0x3FE2CF2304755A5E
  %35 = insertelement <2 x double> poison, double %30, i64 0
  %36 = shufflevector <2 x double> %35, <2 x double> %foldExtExtBinop633, <2 x i32> <i32 0, i32 2>
  %37 = insertelement <2 x double> poison, double %29, i64 0
  %38 = insertelement <2 x double> %37, double %34, i64 1
  %39 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %38) ; 2 uses
  %40 = extractelement <2 x double> %39, i64 0    ; 2 uses
  %41 = fsub double %40, %32                      ; 2 uses
  %i.of = fadd double %14, %41
  store double %i.of, ptr %i.io, align 8, !tbaa !13
  %i.og = fsub double %41, %14
  store double %i.og, ptr %i.hg, align 8, !tbaa !13
  %i.oh = fadd double %32, %40                    ; 2 uses
  %42 = fsub double %i.oh, %15
  store double %42, ptr %i.cx, align 8, !tbaa !13
  %43 = fadd double %15, %i.oh
  store double %43, ptr %i.ee, align 8, !tbaa !13
  %44 = fmul double %33, f0xBFE2CF2304755A5E
  %45 = tail call double @llvm.fmuladd.f64(double %i.oe, double f0x3FEE6F0E134454FF, double %44) ; 2 uses
  %46 = fadd double %7, %9                        ; 2 uses
  %foldExtExtBinop635.a = fadd <2 x double> %i.mp, %i.mx
  %i.oi = extractelement <2 x double> %foldExtExtBinop635.a, i64 1 ; 2 uses
  %foldExtExtBinop637 = fadd <2 x double> %i.mp, %i.mx
  %47 = extractelement <2 x double> %foldExtExtBinop637, i64 0 ; 2 uses
  %48 = fadd double %47, %i.oi                    ; 2 uses
  %49 = fsub double %i.oi, %47
  %50 = fmul double %49, f0x3FE1E3779B97F4A8      ; 2 uses
  %i.oj = tail call double @llvm.fmuladd.f64(double %48, double -2.500000e-01, double %46) ; 2 uses
  %51 = fadd double %46, %48
  store double %51, ptr %i.y, align 8, !tbaa !13
  %i.ok = fsub double %i.oj, %50                  ; 2 uses
  %i.ol = fsub double %i.ok, %45
  store double %i.ol, ptr %i.im, align 8, !tbaa !13
  %i.om = fadd double %45, %i.ok
  store double %i.om, ptr %i.he, align 8, !tbaa !13
  %i.on = fadd double %50, %i.oj                  ; 2 uses
  %i.oo = extractelement <2 x double> %39, i64 1  ; 2 uses
  %i.op = fsub double %i.on, %i.oo
  store double %i.op, ptr %i.ec, align 8, !tbaa !13
  %i.oq = fadd double %i.oo, %i.on
  store double %i.oq, ptr %i.cv, align 8, !tbaa !13
  %i.or = add nsw i64 %.0582583, 1                ; 2 uses
  %i.os = getelementptr inbounds [8 x i8], ptr %.0587, i64 %6
  %i.ot = getelementptr inbounds [8 x i8], ptr %.0579586, i64 %6
  %i.ou = getelementptr inbounds nuw i8, ptr %.0580585, i64 224
  %i.ov = getelementptr inbounds [8 x i8], ptr %.0581584, i64 %i.c
  %exitcond.not = icmp eq i64 %i.or, %5
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
