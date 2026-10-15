Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n2fv_14?download=true
inline.NumInlined: 36
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 14, ptr @.str, %struct.opcnt { double 5.000000e+01, double 1.200000e+01, double 2.400000e+01, double 0.000000e+00 }, ptr @fftw_dft_n2fsimd_genus_avx2_128, i64 0, i64 2, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [17 x i8] c"n2fv_14_avx2_128\00", align 1
@fftw_dft_n2fsimd_genus_avx2_128 = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n2fv_14_avx2_128(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n2fv_14, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n2fv_14(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0309 = phi ptr [ %4, %.lr.ph ], [ %i.fd, %bb.b ] ; 14 uses
  %.0291308 = phi i64 [ %6, %.lr.ph ], [ %i.fa, %bb.b ] ; 2 uses
  %.0292307 = phi ptr [ %0, %.lr.ph ], [ %i.fb, %bb.b ] ; 15 uses
  %.0293306 = phi ptr [ %2, %.lr.ph ], [ %i.fc, %bb.b ] ; 13 uses
  %.0292.val = load <2 x double>, ptr %.0292307, align 16, !tbaa !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0309, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %.0309, i64 8
  %.val305 = load <2 x double>, ptr %i.e, align 16, !tbaa !12 ; 2 uses
  %i.g = fsub <2 x double> %.0292.val, %.val305   ; 4 uses
  %i.h = fadd <2 x double> %.0292.val, %.val305   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0309, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.j
  %.val304 = load <2 x double>, ptr %i.k, align 16, !tbaa !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0309, i64 104
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.m
  %.val303 = load <2 x double>, ptr %i.n, align 16, !tbaa !12 ; 2 uses
  %i.o = fsub <2 x double> %.val304, %.val303     ; 2 uses
  %i.p = fadd <2 x double> %.val304, %.val303     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0309, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.r
  %.val302 = load <2 x double>, ptr %i.s, align 16, !tbaa !12 ; 2 uses
  %i.t = load i64, ptr %i.f, align 8, !tbaa !11
  %i.u = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.t
  %.val301 = load <2 x double>, ptr %i.u, align 16, !tbaa !12 ; 2 uses
  %i.v = fsub <2 x double> %.val302, %.val301     ; 2 uses
  %i.w = fadd <2 x double> %.val302, %.val301     ; 2 uses
  %i.x = fadd <2 x double> %i.o, %i.v             ; 4 uses
  %i.y = fsub <2 x double> %i.p, %i.w             ; 3 uses
  %i.z = fsub <2 x double> %i.v, %i.o             ; 3 uses
  %i.aa = fadd <2 x double> %i.p, %i.w            ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0309, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.ac
  %.val300 = load <2 x double>, ptr %i.ad, align 16, !tbaa !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0309, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.af
  %.val299 = load <2 x double>, ptr %i.ag, align 16, !tbaa !12 ; 2 uses
  %i.ah = fsub <2 x double> %.val300, %.val299    ; 2 uses
  %i.ai = fadd <2 x double> %.val300, %.val299    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0309, i64 96
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.ak
  %.val298 = load <2 x double>, ptr %i.al, align 16, !tbaa !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0309, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.an
  %.val297 = load <2 x double>, ptr %i.ao, align 16, !tbaa !12 ; 2 uses
  %i.ap = fsub <2 x double> %.val298, %.val297    ; 2 uses
  %i.aq = fadd <2 x double> %.val298, %.val297    ; 2 uses
  %i.ar = fadd <2 x double> %i.ah, %i.ap          ; 4 uses
  %i.as = fsub <2 x double> %i.aq, %i.ai          ; 3 uses
  %i.at = fsub <2 x double> %i.ap, %i.ah          ; 3 uses
  %i.au = fadd <2 x double> %i.ai, %i.aq          ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0309, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.aw
  %.val296 = load <2 x double>, ptr %i.ax, align 16, !tbaa !12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0309, i64 88
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !11
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.az
  %.val295 = load <2 x double>, ptr %i.ba, align 16, !tbaa !12 ; 2 uses
  %i.bb = fsub <2 x double> %.val296, %.val295    ; 2 uses
  %i.bc = fadd <2 x double> %.val296, %.val295    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0309, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.be
  %.val294 = load <2 x double>, ptr %i.bf, align 16, !tbaa !12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0309, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %i.bh
  %.val = load <2 x double>, ptr %i.bi, align 16, !tbaa !12 ; 2 uses
  %i.bj = fsub <2 x double> %.val294, %.val       ; 2 uses
  %i.bk = fadd <2 x double> %.val294, %.val       ; 2 uses
  %i.bl = fadd <2 x double> %i.bb, %i.bj          ; 4 uses
  %i.bm = fsub <2 x double> %i.bc, %i.bk          ; 3 uses
  %i.bn = fsub <2 x double> %i.bj, %i.bb          ; 3 uses
  %i.bo = fadd <2 x double> %i.bc, %i.bk          ; 4 uses
  %i.bp = fadd <2 x double> %i.x, %i.bl
  %i.bq = fadd <2 x double> %i.ar, %i.bp
  %i.br = fadd <2 x double> %i.g, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.0293306, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %.0293306, i64 16
  store <2 x double> %i.br, ptr %i.bs, align 16, !tbaa !12
  %i.bu = fadd <2 x double> %i.aa, %i.bo
  %i.bv = fadd <2 x double> %i.au, %i.bu
  %i.bw = fadd <2 x double> %i.h, %i.bv
  store <2 x double> %i.bw, ptr %.0293306, align 16, !tbaa !12
  %i.bx = fmul <2 x double> %i.at, splat (double f0x3FEF329C0558E969)
  %i.by = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bn, <2 x double> splat (double f0xBFDBC4C04D71ABC1), <2 x double> %i.bx)
  %i.bz = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.z, <2 x double> splat (double f0xBFE904C37505DE4B), <2 x double> %i.by)
  %i.ca = bitcast <2 x double> %i.bz to <2 x i64>
  %i.cb = xor <2 x i64> %i.ca, <i64 0, i64 -9223372036854775808>
  %i.cc = bitcast <2 x i64> %i.cb to <2 x double>
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ce = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.ar, <2 x double> splat (double f0xBFCC7B90E3024582), <2 x double> %i.g)
  %i.cf = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bl, <2 x double> splat (double f0xBFECD4BCA9CB5C71), <2 x double> %i.ce)
  %i.cg = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.x, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.cf) ; 2 uses
  %i.ch = fsub <2 x double> %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.0293306, i64 80
  store <2 x double> %i.ch, ptr %i.ci, align 16, !tbaa !12
  %i.cj = fadd <2 x double> %i.cg, %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %.0293306, i64 144
  store <2 x double> %i.cj, ptr %i.ck, align 16, !tbaa !12
  %i.cl = fmul <2 x double> %i.y, splat (double f0x3FE904C37505DE4B)
  %i.cm = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bm, <2 x double> splat (double f0x3FDBC4C04D71ABC1), <2 x double> %i.cl)
  %i.cn = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.as, <2 x double> splat (double f0x3FEF329C0558E969), <2 x double> %i.cm)
  %i.co = bitcast <2 x double> %i.cn to <2 x i64>
  %i.cp = xor <2 x i64> %i.co, <i64 0, i64 -9223372036854775808>
  %i.cq = bitcast <2 x i64> %i.cp to <2 x double>
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cs = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.au, <2 x double> splat (double f0xBFCC7B90E3024582), <2 x double> %i.h)
  %i.ct = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bo, <2 x double> splat (double f0xBFECD4BCA9CB5C71), <2 x double> %i.cs)
  %i.cu = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.aa, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.ct) ; 2 uses
  %i.cv = fadd <2 x double> %i.cu, %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %.0293306, i64 32
  store <2 x double> %i.cv, ptr %i.cw, align 16, !tbaa !12
  %i.cx = fsub <2 x double> %i.cu, %i.cr
  %i.cy = getelementptr inbounds nuw i8, ptr %.0293306, i64 192
  %i.cz = fmul <2 x double> %i.z, splat (double f0x3FDBC4C04D71ABC1)
  %i.da = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bn, <2 x double> splat (double f0x3FEF329C0558E969), <2 x double> %i.cz)
  %i.db = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.at, <2 x double> splat (double f0x3FE904C37505DE4B), <2 x double> %i.da)
  %i.dc = bitcast <2 x double> %i.db to <2 x i64>
  %i.dd = xor <2 x i64> %i.dc, <i64 0, i64 -9223372036854775808>
  %i.de = bitcast <2 x i64> %i.dd to <2 x double>
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dg = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bl, <2 x double> splat (double f0xBFCC7B90E3024582), <2 x double> %i.g)
  %i.dh = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.x, <2 x double> splat (double f0xBFECD4BCA9CB5C71), <2 x double> %i.dg)
  %i.di = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.ar, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.dh) ; 2 uses
  %i.dj = fsub <2 x double> %i.di, %i.df
  %9 = shufflevector <2 x double> %i.cx, <2 x double> %i.dj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %9, ptr %i.cy, align 16, !tbaa !12
  %i.dk = fadd <2 x double> %i.di, %i.df
  store <2 x double> %i.dk, ptr %i.bt, align 16, !tbaa !12
  %i.dl = fmul <2 x double> %i.as, splat (double f0x3FE904C37505DE4B)
  %i.dm = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bm, <2 x double> splat (double f0xBFEF329C0558E969), <2 x double> %i.dl)
  %i.dn = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.y, <2 x double> splat (double f0xBFDBC4C04D71ABC1), <2 x double> %i.dm)
  %i.do = bitcast <2 x double> %i.dn to <2 x i64>
  %i.dp = xor <2 x i64> %i.do, <i64 0, i64 -9223372036854775808>
  %i.dq = bitcast <2 x i64> %i.dp to <2 x double>
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ds = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bo, <2 x double> splat (double f0xBFCC7B90E3024582), <2 x double> %i.h)
  %i.dt = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.aa, <2 x double> splat (double f0xBFECD4BCA9CB5C71), <2 x double> %i.ds)
  %i.du = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.au, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.dt) ; 2 uses
  %i.dv = fsub <2 x double> %i.du, %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %.0293306, i64 96
  store <2 x double> %i.dv, ptr %i.dw, align 16, !tbaa !12
  %i.dx = fadd <2 x double> %i.du, %i.dr
  %i.dy = getelementptr inbounds nuw i8, ptr %.0293306, i64 128
  store <2 x double> %i.dx, ptr %i.dy, align 16, !tbaa !12
  %i.dz = fmul <2 x double> %i.bm, splat (double f0x3FE904C37505DE4B)
  %i.ea = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.y, <2 x double> splat (double f0xBFEF329C0558E969), <2 x double> %i.dz)
  %i.eb = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.as, <2 x double> splat (double f0x3FDBC4C04D71ABC1), <2 x double> %i.ea)
  %i.ec = bitcast <2 x double> %i.eb to <2 x i64>
  %i.ed = xor <2 x i64> %i.ec, <i64 0, i64 -9223372036854775808>
  %i.ee = bitcast <2 x i64> %i.ed to <2 x double>
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eg = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.au, <2 x double> splat (double f0xBFECD4BCA9CB5C71), <2 x double> %i.h)
  %i.eh = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.aa, <2 x double> splat (double f0xBFCC7B90E3024582), <2 x double> %i.eg)
  %i.ei = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bo, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.eh) ; 2 uses
  %i.ej = fsub <2 x double> %i.ei, %i.ef
  %i.ek = getelementptr inbounds nuw i8, ptr %.0293306, i64 64
  store <2 x double> %i.ej, ptr %i.ek, align 16, !tbaa !12
  %i.el = fadd <2 x double> %i.ei, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %.0293306, i64 160
  %i.en = fmul <2 x double> %i.z, splat (double f0x3FEF329C0558E969)
  %i.eo = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bn, <2 x double> splat (double f0xBFE904C37505DE4B), <2 x double> %i.en)
  %i.ep = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.at, <2 x double> splat (double f0x3FDBC4C04D71ABC1), <2 x double> %i.eo)
  %i.eq = bitcast <2 x double> %i.ep to <2 x i64>
  %i.er = xor <2 x i64> %i.eq, <i64 0, i64 -9223372036854775808>
  %i.es = bitcast <2 x i64> %i.er to <2 x double>
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eu = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.ar, <2 x double> splat (double f0xBFECD4BCA9CB5C71), <2 x double> %i.g)
  %i.ev = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.x, <2 x double> splat (double f0xBFCC7B90E3024582), <2 x double> %i.eu)
  %i.ew = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.bl, <2 x double> splat (double f0x3FE3F3A0E28BEDD1), <2 x double> %i.ev) ; 2 uses
  %i.ex = fsub <2 x double> %i.ew, %i.et
  %10 = shufflevector <2 x double> %i.el, <2 x double> %i.ex, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %10, ptr %i.em, align 16, !tbaa !12
  %i.ey = fadd <2 x double> %i.ew, %i.et
  %i.ez = getelementptr inbounds nuw i8, ptr %.0293306, i64 48
  store <2 x double> %i.ey, ptr %i.ez, align 16, !tbaa !12
  %i.fa = add nsw i64 %.0291308, -1
  %i.fb = getelementptr inbounds [8 x i8], ptr %.0292307, i64 %7
  %i.fc = getelementptr inbounds [8 x i8], ptr %.0293306, i64 %8
  %i.fd = getelementptr inbounds [8 x i8], ptr %.0309, i64 %i.b
  %i.fe = icmp samesign ugt i64 %.0291308, 1
  br i1 %i.fe, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
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
!9 = distinct !{!9, !13}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
