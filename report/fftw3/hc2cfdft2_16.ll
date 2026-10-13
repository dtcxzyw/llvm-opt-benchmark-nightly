Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cfdft2_16?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2c_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2c_genus = type { ptr, i32, i64 }

@desc = internal constant %struct.hc2c_desc_s { i64 16, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hc2cf_genus, %struct.opcnt { double 1.880000e+02, double 8.400000e+01, double 4.000000e+01, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [13 x i8] c"hc2cfdft2_16\00", align 1
@twinstr = internal constant [5 x %struct.tw_instr] [%struct.tw_instr { i8 2, i8 1, i16 1 }, %struct.tw_instr { i8 2, i8 1, i16 3 }, %struct.tw_instr { i8 2, i8 1, i16 9 }, %struct.tw_instr { i8 2, i8 1, i16 15 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 16
@fftw_rdft_hc2cf_genus = external constant %struct.hc2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hc2cfdft2_16(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2c_register(ptr noundef %0, ptr noundef nonnull @hc2cfdft2_16, ptr noundef nonnull @desc, i32 noundef 1) #4
  ret void
}

declare void @fftw_khc2c_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hc2cfdft2_16(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp slt i64 %6, %7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %6, 6
  %i.b = getelementptr i8, ptr %4, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -64
  %i.d = sub i64 0, %8                            ; 2 uses
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0715 = phi ptr [ %0, %.lr.ph ], [ %i.ri, %bb.b ] ; 10 uses
  %.0703714 = phi ptr [ %1, %.lr.ph ], [ %i.rj, %bb.b ] ; 10 uses
  %.0704713 = phi ptr [ %2, %.lr.ph ], [ %i.rk, %bb.b ] ; 10 uses
  %.0705712 = phi ptr [ %3, %.lr.ph ], [ %i.rl, %bb.b ] ; 10 uses
  %.0706711 = phi ptr [ %i.c, %.lr.ph ], [ %i.rm, %bb.b ] ; 7 uses
  %.0707710 = phi ptr [ %5, %.lr.ph ], [ %i.rn, %bb.b ] ; 8 uses
  %.0708709 = phi i64 [ %6, %.lr.ph ], [ %i.rh, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0706711, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %.0706711, i64 24
  %i.h = load double, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0706711, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %.0706711, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %.0706711, i64 48
  %i.l = load <2 x double>, ptr %i.k, align 8, !tbaa !13 ; 5 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = fneg <2 x double> %i.l
  %i.o = shufflevector <2 x double> %i.l, <2 x double> %i.n, <2 x i32> <i32 1, i32 2>
  %i.p = getelementptr inbounds nuw i8, ptr %.0707710, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 4 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.0703714, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.0705712, i64 %i.q ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.v = fsub double %i.s, %i.u                   ; 2 uses
  %i.w = fadd double %i.s, %i.u                   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.0715, i64 %i.q ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0704713, i64 %i.q ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = fadd double %i.y, %i.aa                 ; 2 uses
  %i.ac = load double, ptr %.0703714, align 8, !tbaa !13 ; 2 uses
  %i.ad = load double, ptr %.0705712, align 8, !tbaa !13 ; 2 uses
  %i.ae = fadd double %i.ac, %i.ad                ; 2 uses
  %i.af = load double, ptr %.0704713, align 8, !tbaa !13 ; 2 uses
  %i.ag = load double, ptr %.0715, align 8, !tbaa !13 ; 2 uses
  %i.ah = fneg double %i.ab
  %i.ai = fneg double %i.ae
  %i.aj = load <2 x double>, ptr %i.j, align 8, !tbaa !13 ; 9 uses
  %i.ak = load double, ptr %i.i, align 8, !tbaa !13 ; 8 uses
  %i.al = extractelement <2 x double> %i.aj, i64 0
  %i.am = load <2 x double>, ptr %.0706711, align 8, !tbaa !13 ; 6 uses
  %i.an = extractelement <2 x double> %i.am, i64 0 ; 2 uses
  %i.ao = fmul double %i.an, %i.ak                ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.am, %i.aj
  %i.ap = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aq = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x double> %i.aq, %i.o
  %i.as = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.l, <2 x double> %i.ar) ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.af, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.y, i64 1
  %i.aw = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.aa, i64 1
  %i.ay = fsub <2 x double> %i.av, %i.ax          ; 3 uses
  %i.az = shufflevector <2 x double> %i.am, <2 x double> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.ba = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.w, i64 1
  %i.bc = fmul <2 x double> %i.az, %i.bb
  %i.bd = shufflevector <2 x double> %i.am, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.ay, <2 x double> %i.bc) ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0 ; 2 uses
  %i.bg = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %i.bh = fsub double %i.bf, %i.bg                ; 2 uses
  %i.bi = extractelement <2 x double> %i.ay, i64 1
  %i.bj = fneg double %i.bi
  %i.bk = fmul double %i.ak, %i.bj
  %i.bl = fmul double %i.an, %i.ae
  %i.bm = extractelement <2 x double> %i.ay, i64 0
  %i.bn = getelementptr inbounds nuw i8, ptr %.0707710, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11 ; 4 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0703714, i64 %i.bo ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !13
  %i.br = getelementptr inbounds [8 x i8], ptr %.0705712, i64 %i.bo ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13
  %i.bt = getelementptr inbounds [8 x i8], ptr %.0715, i64 %i.bo ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !13
  %i.bv = getelementptr inbounds [8 x i8], ptr %.0704713, i64 %i.bo ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %.0707710, i64 48
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11 ; 4 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0703714, i64 %i.by ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13
  %i.cb = getelementptr inbounds [8 x i8], ptr %.0705712, i64 %i.by ; 2 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !13
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0715, i64 %i.by ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0704713, i64 %i.by ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13
  %i.ch = load <2 x double>, ptr %i.f, align 8, !tbaa !13 ; 6 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cj = fmul <2 x double> %i.bd, %i.ci          ; 3 uses
  %i.ck = insertelement <2 x double> %i.ch, double %i.h, i64 1 ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %i.h, i64 0 ; 2 uses
  %i.cm = insertelement <2 x double> %i.cl, double %i.ak, i64 1 ; 2 uses
  %i.cn = fmul <2 x double> %i.ck, %i.cm          ; 3 uses
  %foldExtExtBinop718 = fadd <2 x double> %i.cn, %i.cj
  %i.co = shufflevector <2 x double> %i.ch, <2 x double> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.cp = fmul <2 x double> %i.ch, %i.co          ; 3 uses
  %i.cq = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fmul <2 x double> %i.bd, %i.cq          ; 3 uses
  %foldExtExtBinop720 = fsub <2 x double> %i.cp, %i.cr
  %i.cs = fadd <2 x double> %i.cp, %i.cr          ; 4 uses
  %i.ct = fsub <2 x double> %i.cj, %i.cn          ; 4 uses
  %i.cu = extractelement <2 x double> %i.ch, i64 0 ; 2 uses
  %i.cv = fmul double %i.cu, %i.ak                ; 2 uses
  %foldExtExtBinop722 = fmul <2 x double> %i.ch, %i.aj
  %i.cw = extractelement <2 x double> %foldExtExtBinop722, i64 0 ; 2 uses
  %i.cx = fsub double %i.ao, %i.cw                ; 2 uses
  %i.cy = fadd double %i.cv, %i.ap                ; 2 uses
  %i.cz = extractelement <2 x double> %i.ct, i64 0
  %i.da = extractelement <2 x double> %i.cs, i64 0
  %i.db = fmul double %i.cx, %i.ah
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.v, double %i.db) ; 2 uses
  %i.dd = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.ca, i64 1 ; 2 uses
  %i.df = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.cc, i64 1 ; 2 uses
  %i.dh = fsub <2 x double> %i.de, %i.dg          ; 2 uses
  %i.di = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.ce, i64 1 ; 2 uses
  %i.dk = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.cg, i64 1 ; 2 uses
  %i.dm = fadd <2 x double> %i.dj, %i.dl          ; 2 uses
  %i.dn = fneg <2 x double> %i.dm
  %i.do = fmul <2 x double> %i.cs, %i.dn
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.dh, <2 x double> %i.do) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 0 ; 2 uses
  %i.dr = extractelement <2 x double> %i.dp, i64 1 ; 2 uses
  %i.ds = fadd double %i.dq, %i.dr                ; 2 uses
  %i.dt = fadd <2 x double> %i.de, %i.dg          ; 2 uses
  %i.du = fsub <2 x double> %i.dj, %i.dl          ; 2 uses
  %i.dv = fmul double %i.ak, %i.cz                ; 2 uses
  %foldExtExtBinop724 = fmul <2 x double> %i.cs, %i.aj
  %i.dw = extractelement <2 x double> %foldExtExtBinop724, i64 0 ; 2 uses
  %i.dx = fsub double %i.dv, %i.dw
  %i.dy = fadd double %i.dv, %i.dw
  %foldExtExtBinop726 = fmul <2 x double> %i.ct, %i.aj
  %i.dz = extractelement <2 x double> %foldExtExtBinop726, i64 0 ; 2 uses
  %i.ea = fmul double %i.ak, %i.da                ; 2 uses
  %i.eb = fadd double %i.dz, %i.ea
  %i.ec = fsub double %i.dz, %i.ea
  %i.ed = fneg <2 x double> %i.du
  %i.ee = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.dy, i64 1 ; 2 uses
  %i.eg = fmul <2 x double> %i.ef, %i.ed
  %i.eh = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ec, i64 1 ; 2 uses
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.dt, <2 x double> %i.eg) ; 2 uses
  %i.ek = fmul <2 x double> %i.ef, %i.dt
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.du, <2 x double> %i.ek) ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 0 ; 2 uses
  %i.en = extractelement <2 x double> %i.el, i64 1 ; 2 uses
  %i.eo = fadd double %i.em, %i.en                ; 2 uses
  %i.ep = fmul <2 x double> %i.cs, %i.dh
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.dm, <2 x double> %i.ep) ; 2 uses
  %i.er = extractelement <2 x double> %i.eq, i64 0 ; 2 uses
  %i.es = extractelement <2 x double> %i.eq, i64 1 ; 2 uses
  %i.et = fadd double %i.er, %i.es                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0707710, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !11 ; 4 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0703714, i64 %i.ev ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !13 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0705712, i64 %i.ev ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !13 ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %.0715, i64 %i.ev ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !13 ; 2 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %.0704713, i64 %i.ev ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !13 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0707710, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !11 ; 4 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0703714, i64 %i.ff ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !13 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.0705712, i64 %i.ff ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !13 ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %.0715, i64 %i.ff ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !13 ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0704713, i64 %i.ff ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !13 ; 2 uses
  %i.fo = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fh, i64 1
  %i.fq = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fj, i64 1
  %i.fs = fadd <2 x double> %i.fp, %i.fr          ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1
  %i.fv = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fn, i64 1
  %i.fx = fsub <2 x double> %i.fu, %i.fw          ; 2 uses
  %i.fy = fneg <2 x double> %i.fx
  %i.fz = fsub double %i.ap, %i.cv                ; 2 uses
  %i.ga = fadd double %i.ao, %i.cw                ; 2 uses
  %i.gb = insertelement <2 x double> %i.cj, double %i.fl, i64 1
  %i.gc = insertelement <2 x double> %i.cn, double %i.fn, i64 1
  %i.gd = fadd <2 x double> %i.gb, %i.gc          ; 5 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 0
  %i.gf = fmul double %i.ak, %i.ge                ; 2 uses
  %i.gg = insertelement <2 x double> %i.cr, double %i.fh, i64 1
  %i.gh = insertelement <2 x double> %i.cp, double %i.fj, i64 1
  %i.gi = fsub <2 x double> %i.gg, %i.gh          ; 5 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 0
  %foldExtExtBinop728 = fmul <2 x double> %i.gi, %i.aj
  %i.gk = extractelement <2 x double> %foldExtExtBinop728, i64 0 ; 2 uses
  %i.gl = fadd double %i.gf, %i.gk
  %i.gm = fsub double %i.gf, %i.gk
  %foldExtExtBinop730 = fmul <2 x double> %i.gd, %i.aj
  %i.gn = extractelement <2 x double> %foldExtExtBinop730, i64 0 ; 2 uses
  %i.go = fmul double %i.ak, %i.gj                ; 2 uses
  %i.gp = fsub double %i.gn, %i.go
  %i.gq = fadd double %i.gn, %i.go
  %i.gr = fsub double %i.ex, %i.ez                ; 2 uses
  %i.gs = fadd double %i.fb, %i.fd                ; 2 uses
  %i.gt = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gu = insertelement <2 x double> %i.gd, double %i.gs, i64 0
  %i.gv = fneg <2 x double> %i.gu
  %i.gw = insertelement <2 x double> %i.gi, double %i.ga, i64 1
  %i.gx = fmul <2 x double> %i.gw, %i.gv
  %i.gy = insertelement <2 x double> %i.gd, double %i.fz, i64 1
  %i.gz = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.ha = insertelement <2 x double> %i.gi, double %i.gr, i64 0
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.ha, <2 x double> %i.gx) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0 ; 2 uses
  %i.hd = extractelement <2 x double> %i.hb, i64 1 ; 2 uses
  %i.he = fadd double %i.hc, %i.hd                ; 2 uses
  %i.hf = insertelement <2 x double> %i.cl, double %i.gl, i64 1 ; 2 uses
  %i.hg = fmul <2 x double> %i.hf, %i.fy
  %i.hh = insertelement <2 x double> %i.ci, double %i.gp, i64 1 ; 2 uses
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.fs, <2 x double> %i.hg) ; 2 uses
  %i.hj = extractelement <2 x double> %i.hi, i64 0 ; 2 uses
  %i.hk = extractelement <2 x double> %i.hi, i64 1 ; 2 uses
  %i.hl = fadd double %i.hj, %i.hk                ; 2 uses
  %i.hm = fmul <2 x double> %i.hf, %i.fs
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.fx, <2 x double> %i.hm) ; 2 uses
  %i.ho = extractelement <2 x double> %i.hn, i64 0 ; 2 uses
  %i.hp = extractelement <2 x double> %i.hn, i64 1 ; 2 uses
  %i.hq = fadd double %i.ho, %i.hp                ; 2 uses
  %i.hr = insertelement <2 x double> %i.gz, double %i.ga, i64 1
  %i.hs = fmul <2 x double> %i.gi, %i.hr
  %i.ht = insertelement <2 x double> %i.gt, double %i.fz, i64 1
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.ht, <2 x double> %i.hs) ; 2 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 0 ; 2 uses
  %i.hw = extractelement <2 x double> %i.hu, i64 1 ; 2 uses
  %i.hx = fadd double %i.hv, %i.hw                ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0707710, i64 56
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !11 ; 4 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %.0703714, i64 %i.hz ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !13
  %i.ic = getelementptr inbounds [8 x i8], ptr %.0705712, i64 %i.hz ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !13
  %i.ie = getelementptr inbounds [8 x i8], ptr %.0715, i64 %i.hz ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !13
  %i.ig = getelementptr inbounds [8 x i8], ptr %.0704713, i64 %i.hz ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !13
  %i.ii = getelementptr inbounds nuw i8, ptr %.0707710, i64 24
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !11 ; 4 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %.0703714, i64 %i.ij ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !13
  %i.im = getelementptr inbounds [8 x i8], ptr %.0705712, i64 %i.ij ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !13
  %i.io = getelementptr inbounds [8 x i8], ptr %.0715, i64 %i.ij ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !13
  %i.iq = getelementptr inbounds [8 x i8], ptr %.0704713, i64 %i.ij ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !13
  %i.is = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.it = insertelement <2 x double> %i.is, double %i.il, i64 1 ; 2 uses
  %i.iu = insertelement <2 x double> poison, double %i.id, i64 0
  %i.iv = insertelement <2 x double> %i.iu, double %i.in, i64 1 ; 2 uses
  %i.iw = fsub <2 x double> %i.it, %i.iv          ; 2 uses
  %i.ix = insertelement <2 x double> poison, double %i.if, i64 0
  %i.iy = insertelement <2 x double> %i.ix, double %i.ip, i64 1 ; 2 uses
  %i.iz = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.ja = insertelement <2 x double> %i.iz, double %i.ir, i64 1 ; 2 uses
  %i.jb = fadd <2 x double> %i.iy, %i.ja          ; 2 uses
  %i.jc = fneg <2 x double> %i.jb
  %i.jd = shufflevector <2 x double> %i.at, <2 x double> %foldExtExtBinop720, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.je = fmul <2 x double> %i.jd, %i.jc
  %i.jf = shufflevector <2 x double> %i.at, <2 x double> %foldExtExtBinop718, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.iw, <2 x double> %i.je) ; 2 uses
  %i.jh = extractelement <2 x double> %i.jg, i64 0 ; 2 uses
  %i.ji = extractelement <2 x double> %i.jg, i64 1 ; 2 uses
  %i.jj = fadd double %i.jh, %i.ji                ; 2 uses
  %i.jk = fadd <2 x double> %i.it, %i.iv          ; 2 uses
  %i.jl = fsub <2 x double> %i.iy, %i.ja          ; 2 uses
  %i.jm = fneg <2 x double> %i.jl
  %i.jn = insertelement <2 x double> %i.m, double %i.gm, i64 1 ; 2 uses
  %i.jo = fmul <2 x double> %i.jn, %i.jm
  %i.jp = insertelement <2 x double> %i.l, double %i.gq, i64 1 ; 2 uses
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.jk, <2 x double> %i.jo) ; 2 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0 ; 2 uses
  %i.js = extractelement <2 x double> %i.jq, i64 1 ; 2 uses
  %i.jt = fadd double %i.jr, %i.js                ; 2 uses
  %i.ju = fmul <2 x double> %i.jn, %i.jk
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.jl, <2 x double> %i.ju) ; 2 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 0 ; 2 uses
  %i.jx = extractelement <2 x double> %i.jv, i64 1 ; 2 uses
  %i.jy = fadd double %i.jw, %i.jx                ; 2 uses
  %i.jz = fmul <2 x double> %i.jd, %i.iw
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.jb, <2 x double> %i.jz) ; 2 uses
  %i.kb = extractelement <2 x double> %i.ka, i64 0 ; 2 uses
  %i.kc = extractelement <2 x double> %i.ka, i64 1 ; 2 uses
  %i.kd = fadd double %i.kb, %i.kc                ; 2 uses
  %i.ke = fadd double %i.he, %i.jj                ; 2 uses
  %i.kf = fadd double %i.hl, %i.jt                ; 2 uses
  %i.kg = fsub double %i.bh, %i.eo                ; 2 uses
  %i.kh = fadd double %i.hq, %i.jy                ; 2 uses
  %i.ki = fsub double %i.kg, %i.kh                ; 2 uses
  %i.kj = fadd double %i.kg, %i.kh                ; 2 uses
  %i.kk = fadd double %i.hx, %i.kd                ; 2 uses
  %i.kl = fsub double %i.kd, %i.hx                ; 2 uses
  %i.km = fsub double %i.he, %i.jj                ; 2 uses
  %i.kn = fsub double %i.jt, %i.hl                ; 2 uses
  %i.ko = fsub double %i.hq, %i.jy                ; 2 uses
  %i.kp = fadd double %i.ko, %i.kn                ; 2 uses
  %i.kq = fsub double %i.kn, %i.ko                ; 2 uses
  %i.kr = fadd double %i.bh, %i.eo                ; 2 uses
  %i.ks = fsub double %i.hj, %i.hk                ; 2 uses
  %i.kt = fsub double %i.hp, %i.ho                ; 2 uses
  %i.ku = fsub double %i.jr, %i.js                ; 2 uses
  %i.kv = fsub double %i.jx, %i.jw                ; 2 uses
  %i.kw = fadd double %i.kt, %i.ku
  %i.kx = fsub double %i.kv, %i.ks
  %i.ky = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x double> %i.kz, <double f0x3FDD906BCF328D46, double f0xBFC87DE2A6AEA963>
  %i.lb = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lc, <2 x double> <double f0x3FC87DE2A6AEA963, double f0x3FDD906BCF328D46>, <2 x double> %i.la) ; 3 uses
  %i.le = fsub double %i.ku, %i.kt
  %i.lf = fadd double %i.ks, %i.kv
  %i.lg = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.lh = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x double> %i.lh, <double f0x3FC87DE2A6AEA963, double f0xBFDD906BCF328D46>
  %i.lj = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lk = shufflevector <2 x double> %i.lj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ll = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> <double f0x3FDD906BCF328D46, double f0x3FC87DE2A6AEA963>, <2 x double> %i.li) ; 3 uses
  %i.lm = fadd double %i.bg, %i.bf                ; 2 uses
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.al, double %i.w, double %i.bk) ; 2 uses
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.bm, double %i.bl) ; 2 uses
  %i.lp = fadd double %i.ln, %i.lo                ; 2 uses
  %i.lq = fsub double %i.lo, %i.ln                ; 2 uses
  %9 = extractelement <2 x double> %i.ej, i64 0   ; 2 uses
  %10 = extractelement <2 x double> %i.ej, i64 1  ; 2 uses
  %11 = fadd double %9, %10                       ; 2 uses
  %i.lr = fsub double %9, %10                     ; 2 uses
  %i.ls = fsub double %i.en, %i.em                ; 2 uses
  %i.lt = fadd double %i.lp, %11                  ; 2 uses
  %i.lu = fsub double %i.kf, %i.lt                ; 2 uses
  %i.lv = fadd double %i.lt, %i.kf                ; 2 uses
  %i.lw = fsub double %i.lp, %11                  ; 2 uses
  %i.lx = fsub double %i.kr, %i.lw                ; 2 uses
  %i.ly = fadd double %i.kr, %i.lw                ; 2 uses
  %i.lz = fadd double %i.lx, %i.kp
  %i.ma = fmul double %i.lz, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.mb = fadd double %i.ly, %i.kq
  %i.mc = fmul double %i.mb, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.md = fsub double %i.lx, %i.kp
  %i.me = fmul double %i.md, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.mf = fsub double %i.kq, %i.ly
  %i.mg = fmul double %i.mf, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.mh = fadd double %i.lm, %i.lr
  %i.mi = fsub double %i.lq, %i.ls
  %i.mj = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = fmul <2 x double> %i.mk, <double f0xBFDD906BCF328D46, double f0x3FC87DE2A6AEA963>
  %i.mm = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mn = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> <double f0x3FC87DE2A6AEA963, double f0x3FDD906BCF328D46>, <2 x double> %i.ml) ; 3 uses
  %i.mp = fsub double %i.lm, %i.lr
  %i.mq = fadd double %i.lq, %i.ls
  %i.mr = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.ms = shufflevector <2 x double> %i.mr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mt = fmul <2 x double> %i.ms, <double f0xBFC87DE2A6AEA963, double f0x3FDD906BCF328D46>
  %i.mu = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mv = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> <double f0x3FDD906BCF328D46, double f0x3FC87DE2A6AEA963>, <2 x double> %i.mt) ; 3 uses
  %i.mx = fsub double %i.hv, %i.hw                ; 2 uses
  %i.my = fadd <2 x double> %i.mw, %i.ld          ; 3 uses
  %i.mz = extractelement <2 x double> %i.my, i64 0
  %i.na = extractelement <2 x double> %i.my, i64 1
  %foldExtExtBinop732 = fsub <2 x double> %i.mw, %i.ld
  %i.nb = extractelement <2 x double> %foldExtExtBinop732, i64 0 ; 2 uses
  %foldExtExtBinop734 = fsub <2 x double> %i.ld, %i.mw
  %i.nc = extractelement <2 x double> %foldExtExtBinop734, i64 1 ; 2 uses
  %i.nd = fsub double %i.jh, %i.ji                ; 2 uses
  %i.ne = fsub double %i.ac, %i.ad                ; 2 uses
  %i.nf = fadd double %i.af, %i.ag                ; 2 uses
  %i.ng = fadd double %i.dc, %i.ne                ; 2 uses
  %i.nh = fsub double %i.ne, %i.dc                ; 2 uses
  %i.ni = fmul double %i.cx, %i.v
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.ab, double %i.ni) ; 2 uses
  %i.nk = fadd double %i.nj, %i.nf                ; 2 uses
  %i.nl = fsub double %i.nf, %i.nj                ; 2 uses
  %i.nm = fsub double %i.dq, %i.dr                ; 2 uses
  %i.nn = fsub double %i.er, %i.es                ; 2 uses
  %i.no = fsub double %i.hc, %i.hd                ; 2 uses
  %i.np = fsub double %i.kb, %i.kc                ; 2 uses
  %i.nq = fadd double %i.ng, %i.ds                ; 2 uses
  %i.nr = fadd double %i.nq, %i.ke                ; 2 uses
  %i.ns = fsub double %i.nq, %i.ke                ; 2 uses
  %i.nt = fadd double %i.nk, %i.et                ; 2 uses
  %i.nu = fsub double %i.nt, %i.kk                ; 2 uses
  %i.nv = fadd double %i.nt, %i.kk                ; 2 uses
  %i.nw = fadd double %i.ki, %i.nr
  %i.nx = fmul double %i.nw, 5.000000e-01
  store double %i.nx, ptr %.0703714, align 8, !tbaa !13
  %i.ny = fsub double %i.ki, %i.nr
  %i.nz = fmul double %i.ny, 5.000000e-01
  %i.oa = fsub double %i.nu, %i.kj
  %i.ob = fmul double %i.oa, 5.000000e-01
  %i.oc = fadd double %i.nu, %i.kj
  %i.od = fmul double %i.oc, 5.000000e-01
  %i.oe = fsub double %i.ng, %i.ds                ; 2 uses
  %i.of = fadd double %i.oe, %i.kl
  %i.og = fmul double %i.of, 5.000000e-01         ; 2 uses
  %i.oh = fsub double %i.oe, %i.kl
  %i.oi = fmul double %i.oh, 5.000000e-01         ; 2 uses
  %i.oj = fsub double %i.nk, %i.et                ; 2 uses
  %i.ok = fsub double %i.oj, %i.km
  %i.ol = fmul double %i.ok, 5.000000e-01         ; 2 uses
  %i.om = fadd double %i.oj, %i.km
  %i.on = fmul double %i.om, 5.000000e-01         ; 2 uses
  %i.oo = fsub double %i.nh, %i.nn
  %i.op = fmul double %i.oo, 5.000000e-01         ; 2 uses
  %i.oq = fadd double %i.nh, %i.nn
  %i.or = fmul double %i.oq, 5.000000e-01         ; 2 uses
  %i.os = fsub double %i.nl, %i.nm
  %i.ot = fmul double %i.os, 5.000000e-01         ; 2 uses
  %i.ou = fadd double %i.nl, %i.nm
  %i.ov = fmul double %i.ou, 5.000000e-01         ; 2 uses
  %i.ow = fsub double %i.no, %i.mx                ; 2 uses
  %i.ox = fadd double %i.np, %i.nd                ; 2 uses
  %i.oy = fadd double %i.ow, %i.ox
  %i.oz = fmul double %i.oy, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.pa = fsub double %i.ow, %i.ox
  %i.pb = fmul double %i.pa, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.pc = fadd double %i.mx, %i.no                ; 2 uses
  %i.pd = fsub double %i.np, %i.nd                ; 2 uses
  %i.pe = fadd double %i.pc, %i.pd
  %i.pf = fmul double %i.pe, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.pg = fsub double %i.pd, %i.pc
  %i.ph = fmul double %i.pg, f0x3FD6A09E667F3BCD  ; 2 uses
  %i.pi = fadd double %i.nv, %i.lv
  %i.pj = fmul double %i.pi, 5.000000e-01
  store double %i.pj, ptr %.0715, align 8, !tbaa !13
  store double %i.nz, ptr %i.ic, align 8, !tbaa !13
  %i.pk = fsub double %i.nv, %i.lv
  %i.pl = fmul double %i.pk, 5.000000e-01
  store double %i.pl, ptr %i.ig, align 8, !tbaa !13
  store double %i.ob, ptr %i.iq, align 8, !tbaa !13
  %i.pm = fsub double %i.lu, %i.ns
  %i.pn = fmul double %i.pm, 5.000000e-01
  store double %i.pn, ptr %i.im, align 8, !tbaa !13
  store double %i.od, ptr %i.x, align 8, !tbaa !13
  %i.po = fadd double %i.ns, %i.lu
  %i.pp = fmul double %i.po, 5.000000e-01
  store double %i.pp, ptr %i.r, align 8, !tbaa !13
  %i.pq = fadd double %i.og, %i.ma
  store double %i.pq, ptr %i.bp, align 8, !tbaa !13
  %i.pr = fsub double %i.ma, %i.og
  store double %i.pr, ptr %i.fi, align 8, !tbaa !13
  %i.ps = fsub double %i.on, %i.mc
  store double %i.ps, ptr %i.fm, align 8, !tbaa !13
  %i.pt = fadd double %i.on, %i.mc
  store double %i.pt, ptr %i.bt, align 8, !tbaa !13
  %i.pu = fsub double %i.ol, %i.me
  store double %i.pu, ptr %i.fc, align 8, !tbaa !13
  %i.pv = fadd double %i.ol, %i.me
  store double %i.pv, ptr %i.cd, align 8, !tbaa !13
  %i.pw = fadd double %i.oi, %i.mg
  store double %i.pw, ptr %i.bz, align 8, !tbaa !13
  %i.px = fsub double %i.mg, %i.oi
  store double %i.px, ptr %i.ey, align 8, !tbaa !13
  %i.py = fadd double %i.op, %i.oz                ; 2 uses
  %i.pz = fadd double %i.ov, %i.pf                ; 2 uses
  %i.qa = insertelement <2 x double> poison, double %i.py, i64 0
  %i.qb = insertelement <2 x double> %i.qa, double %i.pz, i64 1
  %i.qc = fadd <2 x double> %i.my, %i.qb          ; 2 uses
  %i.qd = extractelement <2 x double> %i.qc, i64 0
  store double %i.qd, ptr %i.ew, align 8, !tbaa !13
  %i.qe = fsub double %i.mz, %i.py
  store double %i.qe, ptr %i.cb, align 8, !tbaa !13
  %i.qf = fsub double %i.pz, %i.na
  store double %i.qf, ptr %i.cf, align 8, !tbaa !13
  %i.qg = extractelement <2 x double> %i.qc, i64 1
  store double %i.qg, ptr %i.fa, align 8, !tbaa !13
  %i.qh = fsub double %i.ov, %i.pf                ; 2 uses
  %i.qi = fsub double %i.qh, %i.nb
  store double %i.qi, ptr %i.bv, align 8, !tbaa !13
  %i.qj = fadd double %i.nb, %i.qh
  store double %i.qj, ptr %i.fk, align 8, !tbaa !13
  %i.qk = fsub double %i.op, %i.oz                ; 2 uses
  %i.ql = fadd double %i.nc, %i.qk
  store double %i.ql, ptr %i.fg, align 8, !tbaa !13
  %i.qm = fsub double %i.nc, %i.qk
  store double %i.qm, ptr %i.br, align 8, !tbaa !13
  %i.qn = fadd double %i.or, %i.ph                ; 2 uses
  %i.qo = fadd double %i.ot, %i.pb                ; 2 uses
  %i.qp = fadd <2 x double> %i.mo, %i.ll          ; 3 uses
  %i.qq = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.qr = insertelement <2 x double> %i.qq, double %i.qo, i64 1
  %i.qs = fadd <2 x double> %i.qp, %i.qr          ; 2 uses
  %i.qt = extractelement <2 x double> %i.qs, i64 0
  store double %i.qt, ptr %i.ik, align 8, !tbaa !13
  %i.qu = extractelement <2 x double> %i.qp, i64 0
  %i.qv = fsub double %i.qu, %i.qn
  store double %i.qv, ptr %i.t, align 8, !tbaa !13
  %i.qw = extractelement <2 x double> %i.qp, i64 1
  %i.qx = fsub double %i.qo, %i.qw
  store double %i.qx, ptr %i.z, align 8, !tbaa !13
  %i.qy = extractelement <2 x double> %i.qs, i64 1
  store double %i.qy, ptr %i.io, align 8, !tbaa !13
  %i.qz = fsub double %i.ot, %i.pb                ; 2 uses
  %foldExtExtBinop736 = fsub <2 x double> %i.mo, %i.ll
  %i.ra = extractelement <2 x double> %foldExtExtBinop736, i64 0 ; 2 uses
  %i.rb = fsub double %i.qz, %i.ra
  store double %i.rb, ptr %.0704713, align 8, !tbaa !13
  %i.rc = fadd double %i.ra, %i.qz
  store double %i.rc, ptr %i.ie, align 8, !tbaa !13
  %i.rd = fsub double %i.or, %i.ph                ; 2 uses
  %foldExtExtBinop738 = fsub <2 x double> %i.ll, %i.mo
  %i.re = extractelement <2 x double> %foldExtExtBinop738, i64 1 ; 2 uses
  %i.rf = fadd double %i.re, %i.rd
  store double %i.rf, ptr %i.ia, align 8, !tbaa !13
  %i.rg = fsub double %i.re, %i.rd
  store double %i.rg, ptr %.0705712, align 8, !tbaa !13
  %i.rh = add nsw i64 %.0708709, 1                ; 2 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %.0715, i64 %8
  %i.rj = getelementptr inbounds [8 x i8], ptr %.0703714, i64 %8
  %i.rk = getelementptr inbounds [8 x i8], ptr %.0704713, i64 %i.d
  %i.rl = getelementptr inbounds [8 x i8], ptr %.0705712, i64 %i.d
  %i.rm = getelementptr inbounds nuw i8, ptr %.0706711, i64 64
  %i.rn = getelementptr inbounds [8 x i8], ptr %.0707710, i64 %i.e
  %exitcond.not = icmp eq i64 %i.rh, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
