Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cb_16?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2c_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2c_genus = type { ptr, i32, i64 }

@desc = internal constant %struct.hc2c_desc_s { i64 16, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hc2cb_genus, %struct.opcnt { double 1.360000e+02, double 4.600000e+01, double 3.800000e+01, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [9 x i8] c"hc2cb_16\00", align 1
@twinstr = internal constant [2 x %struct.tw_instr] [%struct.tw_instr { i8 4, i8 1, i16 16 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 2
@fftw_rdft_hc2cb_genus = external constant %struct.hc2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hc2cb_16(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2c_register(ptr noundef %0, ptr noundef nonnull @hc2cb_16, ptr noundef nonnull @desc, i32 noundef 0) #4
  ret void
}

declare void @fftw_khc2c_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hc2cb_16(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp slt i64 %6, %7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul i64 %6, 240
  %i.b = getelementptr i8, ptr %4, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -240
  %i.d = sub i64 0, %8                            ; 2 uses
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0585 = phi ptr [ %0, %.lr.ph ], [ %i.po, %bb.b ] ; 10 uses
  %.0573584 = phi ptr [ %1, %.lr.ph ], [ %i.pp, %bb.b ] ; 10 uses
  %.0574583 = phi ptr [ %2, %.lr.ph ], [ %i.pq, %bb.b ] ; 10 uses
  %.0575582 = phi ptr [ %3, %.lr.ph ], [ %i.pr, %bb.b ] ; 10 uses
  %.0576581 = phi ptr [ %i.c, %.lr.ph ], [ %i.ps, %bb.b ] ; 20 uses
  %.0577580 = phi ptr [ %5, %.lr.ph ], [ %i.pt, %bb.b ] ; 8 uses
  %.0578579 = phi i64 [ %6, %.lr.ph ], [ %i.pn, %bb.b ]
  %i.f = load double, ptr %.0585, align 8, !tbaa !13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0577580, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11   ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %.0574583, i64 %i.h ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = load double, ptr %.0573584, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.0575582, i64 %i.h ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0577580, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 4 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.0585, i64 %i.o ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !13 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0577580, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11   ; 4 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.0574583, i64 %i.s ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.0573584, i64 %i.o ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.0575582, i64 %i.s ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0577580, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11  ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0585, i64 %i.aa ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0577580, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !11 ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.0574583, i64 %i.ae ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !13 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0573584, i64 %i.aa ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.0575582, i64 %i.ae ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0577580, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11 ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.0574583, i64 %i.am ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0577580, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11 ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.0585, i64 %i.aq ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.0573584, i64 %i.aq ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.0575582, i64 %i.am ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0585, i64 %i.am ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.0574583, i64 %i.aq ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %.0573584, i64 %i.am ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0575582, i64 %i.aq ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0585, i64 %i.ae ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0574583, i64 %i.aa ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %.0573584, i64 %i.ae ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0575582, i64 %i.aa ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !13 ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.ay, i64 1
  %i.bp = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.ba, i64 1
  %i.br = fsub <2 x double> %i.bo, %i.bq          ; 4 uses
  %i.bs = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.bk, i64 1
  %i.bu = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bm, i64 1
  %i.bw = fadd <2 x double> %i.bt, %i.bv          ; 4 uses
  %i.bx = fadd <2 x double> %i.br, %i.bw          ; 2 uses
  %i.by = fsub <2 x double> %i.br, %i.bw          ; 2 uses
  %i.bz = shufflevector <2 x double> %i.bx, <2 x double> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ca = shufflevector <2 x double> %i.by, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.cb = fmul <2 x double> %i.ca, <double f0x3FD87DE2A6AEA963, double f0xBFD87DE2A6AEA963>
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> splat (double f0x3FED906BCF328D46), <2 x double> %i.cb) ; 3 uses
  %i.cd = fadd <2 x double> %i.bw, %i.br          ; 2 uses
  %i.ce = fsub <2 x double> %i.bw, %i.br          ; 2 uses
  %i.cf = shufflevector <2 x double> %i.cd, <2 x double> %i.ce, <2 x i32> <i32 1, i32 2>
  %i.cg = shufflevector <2 x double> %i.ce, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.ch = fmul <2 x double> %i.cg, <double f0xBFED906BCF328D46, double f0x3FED906BCF328D46>
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> splat (double f0x3FD87DE2A6AEA963), <2 x double> %i.ch) ; 2 uses
  %i.cj = load double, ptr %.0574583, align 8, !tbaa !13 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.0585, i64 %i.h ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !13 ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %.0573584, i64 %i.h ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !13 ; 2 uses
  %i.co = load double, ptr %.0575582, align 8, !tbaa !13 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %.0585, i64 %i.s ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !13 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.0574583, i64 %i.o ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !13 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0573584, i64 %i.s ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0575582, i64 %i.o ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.cj, i64 1
  %i.cz = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cl, i64 1
  %i.db = fsub <2 x double> %i.cy, %i.da          ; 3 uses
  %i.dc = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cu, i64 1
  %i.de = insertelement <2 x double> poison, double %i.co, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.cw, i64 1
  %i.dg = fadd <2 x double> %i.dd, %i.df          ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.db, %i.dg
  %foldExtExtBinop588 = fsub <2 x double> %i.db, %i.dg
  %i.dh = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x double> %i.dh, <double f0xBFD87DE2A6AEA963, double f0x3FED906BCF328D46>
  %i.dj = shufflevector <2 x double> %foldExtExtBinop588, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> <double f0x3FED906BCF328D46, double f0x3FD87DE2A6AEA963>, <2 x double> %i.di) ; 3 uses
  %i.dl = fadd <2 x double> %i.db, %i.dg          ; 2 uses
  %i.dm = fmul <2 x double> %i.dl, <double f0xBFED906BCF328D46, double f0x3FED906BCF328D46>
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> splat (double f0x3FD87DE2A6AEA963), <2 x double> %i.dn) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0576581, i64 112
  %i.dq = extractelement <2 x double> %i.ci, i64 0 ; 2 uses
  %i.dr = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %i.ds = fadd double %i.dq, %i.dr                ; 2 uses
  %i.dt = extractelement <2 x double> %i.ci, i64 1 ; 2 uses
  %i.du = extractelement <2 x double> %i.do, i64 0 ; 2 uses
  %i.dv = fsub double %i.dt, %i.du                ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0576581, i64 160
  %i.dx = getelementptr inbounds nuw i8, ptr %.0576581, i64 32
  %i.dy = fadd double %i.dt, %i.du                ; 2 uses
  %i.dz = fsub double %i.dq, %i.dr                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0576581, i64 96
  %i.eb = getelementptr inbounds nuw i8, ptr %.0576581, i64 104
  %i.ec = getelementptr inbounds nuw i8, ptr %.0576581, i64 224
  %i.ed = getelementptr inbounds nuw i8, ptr %.0576581, i64 232
  %i.ee = getelementptr inbounds nuw i8, ptr %.0576581, i64 144
  %i.ef = getelementptr inbounds nuw i8, ptr %.0576581, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.0576581, i64 208
  %i.eh = getelementptr inbounds nuw i8, ptr %.0576581, i64 80
  %foldExtExtBinop590 = fsub <2 x double> %i.dk, %i.cc
  %i.ei = extractelement <2 x double> %foldExtExtBinop590, i64 0 ; 2 uses
  %foldExtExtBinop592 = fsub <2 x double> %i.cc, %i.dk
  %i.ej = extractelement <2 x double> %foldExtExtBinop592, i64 1 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.0576581, i64 192
  %i.ek = getelementptr inbounds nuw i8, ptr %.0576581, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %.0576581, i64 128
  %i.em = getelementptr inbounds nuw i8, ptr %.0576581, i64 136
  %i.en = insertelement <2 x double> poison, double %i.q, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %i.f, i64 1
  %i.ep = insertelement <2 x double> poison, double %i.u, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.j, i64 1
  %i.er = fsub <2 x double> %i.eo, %i.eq          ; 4 uses
  %i.es = insertelement <2 x double> poison, double %i.k, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.w, i64 1
  %i.eu = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.y, i64 1
  %i.ew = fadd <2 x double> %i.et, %i.ev          ; 4 uses
  %foldExtExtBinop594 = fadd <2 x double> %i.er, %i.ew
  %i.ex = extractelement <2 x double> %foldExtExtBinop594, i64 1 ; 2 uses
  %foldExtExtBinop596 = fsub <2 x double> %i.ew, %i.er
  %i.ey = extractelement <2 x double> %foldExtExtBinop596, i64 0 ; 2 uses
  %i.ez = fsub <2 x double> %i.er, %i.ew
  %i.fa = fadd <2 x double> %i.er, %i.ew
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> %i.ez, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.fc = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.ao, i64 1
  %i.fe = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.as, i64 1
  %i.fg = fsub <2 x double> %i.fd, %i.ff          ; 2 uses
  %i.fh = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.au, i64 1
  %i.fj = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.aw, i64 1
  %i.fl = fadd <2 x double> %i.fi, %i.fk          ; 2 uses
  %i.fm = fsub <2 x double> %i.fg, %i.fl          ; 2 uses
  %i.fn = fadd <2 x double> %i.fg, %i.fl          ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fm, <2 x double> %i.fn, <2 x i32> <i32 3, i32 0> ; 4 uses
  %i.fp = shufflevector <2 x double> %i.fn, <2 x double> %i.fm, <2 x i32> <i32 0, i32 3> ; 4 uses
  %foldExtExtBinop598 = fadd <2 x double> %i.fp, %i.fo
  %i.fq = extractelement <2 x double> %foldExtExtBinop598, i64 0
  %i.fr = fmul double %i.fq, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.fs = fadd <2 x double> %i.fp, %i.fo
  %i.ft = fsub <2 x double> %i.fp, %i.fo
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> %i.fs, <2 x i32> <i32 0, i32 3>
  %i.fv = fmul <2 x double> %i.fu, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %foldExtExtBinop600 = fsub <2 x double> %i.fo, %i.fp
  %i.fw = extractelement <2 x double> %foldExtExtBinop600, i64 1
  %i.fx = fmul double %i.fw, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.fy = fsub double %i.ex, %i.fr                ; 2 uses
  %i.fz = fsub double %i.fy, %i.ds
  %i.ga = fadd double %i.fy, %i.ds
  %i.gb = fadd double %i.ey, %i.fx                ; 2 uses
  %i.gc = fsub double %i.gb, %i.dv                ; 2 uses
  %i.gd = fadd double %i.gb, %i.dv                ; 2 uses
  %i.ge = fneg double %i.gc
  %i.gf = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.ge, i64 1
  %i.gh = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fneg double %i.gd
  %i.gk = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gj, i64 1
  %i.gm = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fadd double %i.ex, %i.fr                ; 2 uses
  %i.gp = fsub double %i.go, %i.dy                ; 2 uses
  %i.gq = fadd double %i.go, %i.dy                ; 2 uses
  %i.gr = fsub double %i.ey, %i.fx                ; 2 uses
  %i.gs = fadd double %i.gr, %i.dz                ; 2 uses
  %i.gt = fsub double %i.gr, %i.dz                ; 2 uses
  %i.gu = fneg double %i.gs
  %i.gv = fneg double %i.gt
  %foldExtExtBinop602 = fsub <2 x double> %i.fb, %i.fv
  %i.gw = extractelement <2 x double> %foldExtExtBinop602, i64 1 ; 2 uses
  %i.gx = fsub double %i.gw, %i.ei
  %i.gy = fadd double %i.gw, %i.ei
  %foldExtExtBinop604 = fsub <2 x double> %i.fb, %i.fv
  %i.gz = extractelement <2 x double> %foldExtExtBinop604, i64 0 ; 2 uses
  %i.ha = fsub double %i.gz, %i.ej                ; 2 uses
  %i.hb = fadd double %i.gz, %i.ej                ; 2 uses
  %i.hc = fneg double %i.ha
  %i.hd = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.hc, i64 1
  %i.hf = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fneg double %i.hb
  %i.hi = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %i.hh, i64 1
  %i.hk = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = fadd <2 x double> %i.fb, %i.fv          ; 2 uses
  %i.hn = fadd <2 x double> %i.cc, %i.dk          ; 2 uses
  %i.ho = fsub <2 x double> %i.hm, %i.hn          ; 3 uses
  %i.hp = fneg <2 x double> %i.ho
  %i.hq = shufflevector <2 x double> %i.ho, <2 x double> %i.hp, <2 x i32> <i32 1, i32 2>
  %10 = getelementptr inbounds nuw i8, ptr %.0576581, i64 8
  %i.hr = fadd <2 x double> %i.hm, %i.hn          ; 3 uses
  %i.hs = fneg <2 x double> %i.hr
  %i.ht = shufflevector <2 x double> %i.hr, <2 x double> %i.hs, <2 x i32> <i32 1, i32 2>
  %i.hu = getelementptr inbounds nuw i8, ptr %.0576581, i64 176
  %i.hv = getelementptr inbounds nuw i8, ptr %.0576581, i64 48
  %i.hw = fsub double %i.k, %i.m                  ; 2 uses
  %i.hx = fadd double %i.f, %i.j                  ; 2 uses
  %i.hy = fsub double %i.w, %i.y                  ; 2 uses
  %i.hz = fadd double %i.q, %i.u                  ; 2 uses
  %i.ia = fsub double %i.hw, %i.hy                ; 2 uses
  %i.ib = fsub double %i.hx, %i.hz                ; 2 uses
  %i.ic = fadd double %i.hw, %i.hy                ; 2 uses
  %i.id = fadd double %i.hx, %i.hz                ; 2 uses
  %i.ie = fsub double %i.ai, %i.ak                ; 2 uses
  %i.if = fadd double %i.ac, %i.ag                ; 2 uses
  %i.ig = fsub double %i.au, %i.aw                ; 2 uses
  %i.ih = fadd double %i.ao, %i.as                ; 2 uses
  %i.ii = fadd double %i.ie, %i.ig                ; 2 uses
  %i.ij = fadd double %i.if, %i.ih                ; 2 uses
  %i.ik = fsub double %i.if, %i.ih                ; 2 uses
  %i.il = fsub double %i.ig, %i.ie                ; 2 uses
  %i.im = fadd double %i.ay, %i.ba                ; 2 uses
  %i.in = fsub double %i.cn, %i.co                ; 2 uses
  %i.io = fadd double %i.cj, %i.cl                ; 2 uses
  %i.ip = fsub double %i.bc, %i.be                ; 2 uses
  %i.iq = fadd double %i.bg, %i.bi                ; 2 uses
  %i.ir = fsub double %i.cu, %i.cw                ; 2 uses
  %i.is = fadd double %i.cq, %i.cs                ; 2 uses
  %i.it = fsub double %i.bk, %i.bm                ; 2 uses
  %i.iu = fadd double %i.io, %i.is                ; 2 uses
  %i.iv = fadd double %i.ip, %i.it                ; 2 uses
  %i.iw = fadd double %i.im, %i.iq                ; 2 uses
  %i.ix = fadd double %i.in, %i.ir                ; 2 uses
  %i.iy = fsub double %i.im, %i.iq                ; 2 uses
  %i.iz = fsub double %i.io, %i.is                ; 2 uses
  %i.ja = fsub double %i.in, %i.ir                ; 2 uses
  %i.jb = fsub double %i.ip, %i.it                ; 2 uses
  %i.jc = fadd double %i.iz, %i.ja                ; 2 uses
  %i.jd = fadd double %i.iy, %i.jb                ; 2 uses
  %i.je = fsub double %i.iy, %i.jb                ; 2 uses
  %i.jf = fsub double %i.ja, %i.iz                ; 2 uses
  %i.jg = fadd double %i.id, %i.ij                ; 2 uses
  %i.jh = fadd double %i.iw, %i.iu                ; 2 uses
  %i.ji = fsub double %i.jg, %i.jh
  %i.jj = fadd double %i.ic, %i.ii                ; 2 uses
  %i.jk = fadd double %i.iv, %i.ix                ; 2 uses
  %i.jl = fsub double %i.jj, %i.jk                ; 2 uses
  %i.jm = fadd double %i.jg, %i.jh
  store double %i.jm, ptr %.0585, align 8, !tbaa !13
  %i.jn = fadd double %i.jj, %i.jk
  store double %i.jn, ptr %.0574583, align 8, !tbaa !13
  %i.jo = fneg double %i.jl
  %i.jp = load <2 x double>, ptr %i.dp, align 8, !tbaa !13 ; 2 uses
  %i.jq = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jr = insertelement <2 x double> %i.jq, double %i.jo, i64 1
  %i.js = fmul <2 x double> %i.jp, %i.jr
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ju = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jv = shufflevector <2 x double> %i.ju, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.jv, <2 x double> %i.jt) ; 2 uses
  %i.jx = extractelement <2 x double> %i.jw, i64 0
  store double %i.jx, ptr %i.p, align 8, !tbaa !13
  %i.jy = extractelement <2 x double> %i.jw, i64 1
  store double %i.jy, ptr %i.cr, align 8, !tbaa !13
  %i.jz = load <2 x double>, ptr %i.dw, align 8, !tbaa !13 ; 2 uses
  %i.ka = fadd double %i.ib, %i.il                ; 2 uses
  %i.kb = fadd double %i.je, %i.jc
  %i.kc = fmul double %i.kb, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.kd = fsub double %i.ka, %i.kc
  %i.ke = fadd double %i.ka, %i.kc
  %i.kf = fadd double %i.ia, %i.ik                ; 2 uses
  %i.kg = fadd double %i.jd, %i.jf
  %i.kh = fmul double %i.kg, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.ki = fsub double %i.kf, %i.kh                ; 2 uses
  %i.kj = fadd double %i.kf, %i.kh                ; 2 uses
  %i.kk = fneg double %i.ki
  %i.kl = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.km = insertelement <2 x double> %i.kl, double %i.kk, i64 1
  %i.kn = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = fneg double %i.kj
  %i.kq = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ku = fsub double %i.ia, %i.ik                ; 2 uses
  %i.kv = fsub double %i.ib, %i.il                ; 2 uses
  %i.kw = fsub double %i.je, %i.jc
  %i.kx = fsub double %i.jf, %i.jd
  %i.ky = fmul double %i.kw, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.kz = fmul double %i.kx, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.la = fsub double %i.ku, %i.ky                ; 2 uses
  %i.lb = fsub double %i.kv, %i.kz                ; 2 uses
  %i.lc = fadd double %i.ku, %i.ky                ; 2 uses
  %i.ld = fadd double %i.kv, %i.kz                ; 2 uses
  %i.le = fneg double %i.la
  %i.lf = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lg = insertelement <2 x double> %i.lf, double %i.lb, i64 1
  %i.lh = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.li = insertelement <2 x double> %i.lh, double %i.la, i64 1
  %i.lj = fneg double %i.lc
  %i.lk = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.ll = insertelement <2 x double> %i.lk, double %i.ld, i64 1
  %i.lm = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.ln = insertelement <2 x double> %i.lm, double %i.lc, i64 1
  %i.lo = fmul <2 x double> %i.jz, %i.gg
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.gi, <2 x double> %i.lp) ; 2 uses
  %i.lr = extractelement <2 x double> %i.lq, i64 0
  store double %i.lr, ptr %i.bj, align 8, !tbaa !13
  %i.ls = extractelement <2 x double> %i.lq, i64 1
  store double %i.ls, ptr %i.aj, align 8, !tbaa !13
  %i.lt = load <2 x double>, ptr %i.dx, align 8, !tbaa !13 ; 2 uses
  %i.lu = fmul <2 x double> %i.lt, %i.gl
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.gn, <2 x double> %i.lv) ; 2 uses
  %i.lx = extractelement <2 x double> %i.lw, i64 0
  store double %i.lx, ptr %i.bb, align 8, !tbaa !13
  %i.ly = extractelement <2 x double> %i.lw, i64 1
  store double %i.ly, ptr %i.av, align 8, !tbaa !13
  %i.lz = load double, ptr %i.ea, align 8, !tbaa !13 ; 2 uses
  %i.ma = load double, ptr %i.eb, align 8, !tbaa !13 ; 2 uses
  %i.mb = fmul double %i.ma, %i.gu
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.gp, double %i.mb)
  store double %i.mc, ptr %i.ct, align 8, !tbaa !13
  %i.md = fmul double %i.gp, %i.ma
  %i.me = tail call double @llvm.fmuladd.f64(double %i.lz, double %i.gs, double %i.md)
  store double %i.me, ptr %i.x, align 8, !tbaa !13
  %i.mf = load double, ptr %i.ec, align 8, !tbaa !13 ; 2 uses
  %i.mg = load double, ptr %i.ed, align 8, !tbaa !13 ; 2 uses
  %i.mh = fmul double %i.mg, %i.gv
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.mf, double %i.gq, double %i.mh)
  store double %i.mi, ptr %i.cm, align 8, !tbaa !13
  %i.mj = fmul double %i.gq, %i.mg
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.mf, double %i.gt, double %i.mj)
  store double %i.mk, ptr %i.l, align 8, !tbaa !13
  %i.ml = load <2 x double>, ptr %i.ee, align 8, !tbaa !13 ; 2 uses
  %i.mm = fmul <2 x double> %i.ml, %i.km
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ko, <2 x double> %i.mn) ; 2 uses
  %i.mp = extractelement <2 x double> %i.mo, i64 0
  store double %i.mp, ptr %i.bf, align 8, !tbaa !13
  %i.mq = extractelement <2 x double> %i.mo, i64 1
  store double %i.mq, ptr %i.af, align 8, !tbaa !13
  %i.mr = load <2 x double>, ptr %i.ef, align 8, !tbaa !13 ; 2 uses
  %i.ms = fmul <2 x double> %i.mr, %i.kr
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %i.kt, <2 x double> %i.mt) ; 2 uses
  %i.mv = extractelement <2 x double> %i.mu, i64 0
  store double %i.mv, ptr %i.ax, align 8, !tbaa !13
  %i.mw = extractelement <2 x double> %i.mu, i64 1
  store double %i.mw, ptr %i.an, align 8, !tbaa !13
  %i.mx = load <2 x double>, ptr %i.eg, align 8, !tbaa !13 ; 2 uses
  %i.my = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.mz = fmul <2 x double> %i.my, %i.lg
  %i.na = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %i.li, <2 x double> %i.mz) ; 2 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 0
  store double %i.nc, ptr %i.ck, align 8, !tbaa !13
  %i.nd = extractelement <2 x double> %i.nb, i64 1
  store double %i.nd, ptr %i.i, align 8, !tbaa !13
  %i.ne = load <2 x double>, ptr %i.eh, align 8, !tbaa !13 ; 2 uses
  %i.nf = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ng = fmul <2 x double> %i.nf, %i.ll
  %i.nh = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ni = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.ln, <2 x double> %i.ng) ; 2 uses
  %i.nj = extractelement <2 x double> %i.ni, i64 0
  store double %i.nj, ptr %i.cp, align 8, !tbaa !13
  %i.nk = extractelement <2 x double> %i.ni, i64 1
  store double %i.nk, ptr %i.t, align 8, !tbaa !13
  %i.nl = load <2 x double>, ptr %9, align 8, !tbaa !13 ; 2 uses
  %i.nm = fmul <2 x double> %i.nl, %i.he
  %i.nn = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.no = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.hg, <2 x double> %i.nn) ; 2 uses
  %i.np = extractelement <2 x double> %i.no, i64 0
  store double %i.np, ptr %i.at, align 8, !tbaa !13
  %i.nq = extractelement <2 x double> %i.no, i64 1
  store double %i.nq, ptr %i.bd, align 8, !tbaa !13
  %i.nr = load <2 x double>, ptr %i.ek, align 8, !tbaa !13 ; 2 uses
  %i.ns = fmul <2 x double> %i.nr, %i.hj
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.hl, <2 x double> %i.nt) ; 2 uses
  %i.nv = extractelement <2 x double> %i.nu, i64 0
  store double %i.nv, ptr %i.ah, align 8, !tbaa !13
  %i.nw = extractelement <2 x double> %i.nu, i64 1
  store double %i.nw, ptr %i.bl, align 8, !tbaa !13
  %11 = load double, ptr %i.em, align 8, !tbaa !13
  %12 = load double, ptr %i.el, align 8, !tbaa !13
  %13 = insertelement <2 x double> poison, double %11, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nx = fmul <2 x double> %14, %i.hq
  %15 = insertelement <2 x double> poison, double %12, i64 0
  %i.ny = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.ho, <2 x double> %i.nx) ; 2 uses
  %i.oa = extractelement <2 x double> %i.nz, i64 1
  store double %i.oa, ptr %i.v, align 8, !tbaa !13
  %i.ob = extractelement <2 x double> %i.nz, i64 0
  store double %i.ob, ptr %i.cv, align 8, !tbaa !13
  %16 = load double, ptr %10, align 8, !tbaa !13
  %17 = load double, ptr %.0576581, align 8, !tbaa !13
  %18 = insertelement <2 x double> poison, double %16, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x double> %19, %i.ht
  %20 = insertelement <2 x double> poison, double %17, i64 0
  %i.od = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.hr, <2 x double> %i.oc) ; 2 uses
  %i.of = extractelement <2 x double> %i.oe, i64 1
  store double %i.of, ptr %.0573584, align 8, !tbaa !13
  %i.og = extractelement <2 x double> %i.oe, i64 0
  store double %i.og, ptr %.0575582, align 8, !tbaa !13
  %i.oh = fsub double %i.ic, %i.ii                ; 2 uses
  %i.oi = fsub double %i.id, %i.ij                ; 2 uses
  %i.oj = fsub double %i.iw, %i.iu                ; 2 uses
  %i.ok = fsub double %i.ix, %i.iv                ; 2 uses
  %i.ol = fsub double %i.oh, %i.oj                ; 2 uses
  %i.om = fsub double %i.oi, %i.ok                ; 2 uses
  %i.on = fadd double %i.oh, %i.oj                ; 2 uses
  %i.oo = fadd double %i.oi, %i.ok                ; 2 uses
  %i.op = load <2 x double>, ptr %i.hu, align 8, !tbaa !13 ; 2 uses
  %i.oq = fneg double %i.ol
  %i.or = shufflevector <2 x double> %i.op, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.os = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.ot = insertelement <2 x double> %i.os, double %i.om, i64 1
  %i.ou = fmul <2 x double> %i.or, %i.ot
  %i.ov = shufflevector <2 x double> %i.op, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ow = insertelement <2 x double> poison, double %i.om, i64 0
  %i.ox = insertelement <2 x double> %i.ow, double %i.ol, i64 1
  %i.oy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ov, <2 x double> %i.ox, <2 x double> %i.ou) ; 2 uses
  %i.oz = extractelement <2 x double> %i.oy, i64 0
  store double %i.oz, ptr %i.ar, align 8, !tbaa !13
  %i.pa = extractelement <2 x double> %i.oy, i64 1
  store double %i.pa, ptr %i.az, align 8, !tbaa !13
  %i.pb = load <2 x double>, ptr %i.hv, align 8, !tbaa !13 ; 2 uses
  %i.pc = fneg double %i.on
  %i.pd = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pe = insertelement <2 x double> poison, double %i.pc, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.oo, i64 1
  %i.pg = fmul <2 x double> %i.pd, %i.pf
  %i.ph = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = insertelement <2 x double> poison, double %i.oo, i64 0
  %i.pj = insertelement <2 x double> %i.pi, double %i.on, i64 1
  %i.pk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.pj, <2 x double> %i.pg) ; 2 uses
  %i.pl = extractelement <2 x double> %i.pk, i64 0
  store double %i.pl, ptr %i.ab, align 8, !tbaa !13
  %i.pm = extractelement <2 x double> %i.pk, i64 1
  store double %i.pm, ptr %i.bh, align 8, !tbaa !13
  %i.pn = add nsw i64 %.0578579, 1                ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %.0585, i64 %8
  %i.pp = getelementptr inbounds [8 x i8], ptr %.0573584, i64 %8
  %i.pq = getelementptr inbounds [8 x i8], ptr %.0574583, i64 %i.d
  %i.pr = getelementptr inbounds [8 x i8], ptr %.0575582, i64 %i.d
  %i.ps = getelementptr inbounds nuw i8, ptr %.0576581, i64 240
  %i.pt = getelementptr inbounds [8 x i8], ptr %.0577580, i64 %i.e
  %exitcond.not = icmp eq i64 %i.pn, %7
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
