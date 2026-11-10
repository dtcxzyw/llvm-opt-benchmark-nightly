Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc_intrin_fma?download=true
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumUnrolled: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_autocorrelation_intrin_fma_lag_8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 64)) %3) local_unnamed_addr #0 {
.preheader30.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load <4 x float>, ptr %i.b, align 4, !tbaa !9 ; 3 uses
  %i.e = fpext reassoc nsz arcp <4 x float> %i.d to <4 x double> ; 4 uses
  %i.f = extractelement <4 x double> %i.e, i64 0  ; 8 uses
  %i.g = extractelement <4 x double> %i.e, i64 1  ; 8 uses
  %i.h = extractelement <4 x double> %i.e, i64 2  ; 6 uses
  %i.i = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.j = fpext reassoc nsz arcp <4 x float> %i.i to <4 x double> ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.l = load <4 x float>, ptr %0, align 4, !tbaa !9
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.n = fpext reassoc nsz arcp <4 x float> %i.m to <4 x double> ; 6 uses
  %i.o = extractelement <4 x double> %i.n, i64 3  ; 8 uses
  %i.p = fmul reassoc nsz arcp double %i.o, %i.o
  %i.q = extractelement <4 x double> %i.n, i64 2  ; 8 uses
  %i.r = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.p)
  %i.s = fmul reassoc nsz arcp double %i.q, %i.o
  %i.t = extractelement <4 x double> %i.n, i64 1  ; 7 uses
  %i.u = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.r)
  %i.v = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.q, double %i.s)
  %i.w = fmul reassoc nsz arcp double %i.t, %i.o
  %i.x = extractelement <4 x double> %i.n, i64 0  ; 7 uses
  %i.y = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.u)
  %i.z = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.x, double %i.t, double %i.v)
  %i.aa = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.x, double %i.q, double %i.w)
  %i.ab = fmul reassoc nsz arcp double %i.x, %i.o
  %i.ac = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.f, double %i.f, double %i.y)
  %i.ad = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.f, double %i.x, double %i.z)
  %i.ae = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.f, double %i.t, double %i.aa)
  %i.af = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.ac)
  %i.ag = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.f, double %i.ad)
  %i.ah = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.x, double %i.ae)
  %i.ai = fmul reassoc nsz arcp double %i.g, %i.o
  %i.aj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.h, double %i.h, double %i.af)
  %i.ak = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.h, double %i.g, double %i.ag)
  %i.al = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.h, double %i.f, double %i.ah)
  %i.am = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.f, double %i.q, double %i.ab)
  %i.an = fmul reassoc nsz arcp double %i.f, %i.o
  %i.ao = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.t, double %i.am)
  %i.ap = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.q, double %i.an)
  %i.aq = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ar = fpext reassoc nsz arcp <2 x float> %i.aq to <2 x double>
  %i.as = shufflevector <4 x double> %i.n, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ap, i64 1
  %i.av = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.as, <2 x double> %i.au) ; 2 uses
  %i.aw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.h, double %i.q, double %i.ai)
  %i.ax = fmul reassoc nsz arcp double %i.h, %i.o
  %i.ay = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.az = insertelement <4 x double> %i.ay, double %i.al, i64 1
  %i.ba = insertelement <4 x double> %i.az, double %i.ak, i64 2
  %i.bb = insertelement <4 x double> %i.ba, double %i.aj, i64 3
  %i.bc = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.j, <4 x double> %i.e, <4 x double> %i.bb) ; 6 uses
  %i.bd = shufflevector <4 x double> %i.bc, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.bd, ptr %3, align 8, !tbaa !11
  %i.be = load double, ptr %i.k, align 8, !tbaa !11
  %i.bf = shufflevector <2 x double> %i.av, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bg = insertelement <4 x double> %i.bf, double %i.aw, i64 1
  %i.bh = insertelement <4 x double> %i.bg, double %i.ax, i64 2
  %i.bi = insertelement <4 x double> %i.bh, double %i.be, i64 3
  %i.bj = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.j, <4 x double> %i.n, <4 x double> %i.bi) ; 6 uses
  store <4 x double> %i.bj, ptr %i.c, align 8, !tbaa !11
  %i.bk = icmp sgt i32 %1, 8
  br i1 %i.bk, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader30.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.bl = add nsw i64 %wide.trip.count, -8        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bl, 4
  br i1 %min.iters.check, label %.preheader.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.bl, -4                      ; 3 uses
  %i.bm = add nsw i64 %n.vec, 8
  %4 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bj, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bj, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %6 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bj, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bn = shufflevector <4 x double> %i.bj, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bo = shufflevector <4 x double> %i.bc, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bc, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bc, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %9 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bc, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %4, %vector.ph ], [ %i.cn, %vector.body ]
  %vec.phi65 = phi <4 x double> [ %5, %vector.ph ], [ %i.ck, %vector.body ]
  %vec.phi66 = phi <4 x double> [ %6, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi67 = phi <4 x double> [ %i.bn, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi68 = phi <4 x double> [ %i.bo, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi69 = phi <4 x double> [ %7, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi70 = phi <4 x double> [ %8, %vector.ph ], [ %i.bv, %vector.body ]
  %vec.phi71 = phi <4 x double> [ %9, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr [4 x i8], ptr %0, i64 %index ; 8 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 32
  %wide.load = load <4 x float>, ptr %i.bq, align 4, !tbaa !9
  %i.br = fpext reassoc nsz arcp <4 x float> %wide.load to <4 x double> ; 9 uses
  %i.bs = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.br, <4 x double> %i.br, <4 x double> %vec.phi71) ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bp, i64 28
  %wide.load72 = load <4 x float>, ptr %i.bt, align 4, !tbaa !9
  %i.bu = fpext reassoc nsz arcp <4 x float> %wide.load72 to <4 x double>
  %i.bv = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.br, <4 x double> %i.bu, <4 x double> %vec.phi70) ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bp, i64 24
  %wide.load73 = load <4 x float>, ptr %i.bw, align 4, !tbaa !9
  %i.bx = fpext reassoc nsz arcp <4 x float> %wide.load73 to <4 x double>
  %i.by = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.br, <4 x double> %i.bx, <4 x double> %vec.phi69) ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bp, i64 20
  %wide.load74 = load <4 x float>, ptr %i.bz, align 4, !tbaa !9
  %i.ca = fpext reassoc nsz arcp <4 x float> %wide.load74 to <4 x double>
  %i.cb = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.br, <4 x double> %i.ca, <4 x double> %vec.phi68) ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bp, i64 16
  %wide.load75 = load <4 x float>, ptr %i.cc, align 4, !tbaa !9
  %i.cd = fpext reassoc nsz arcp <4 x float> %wide.load75 to <4 x double>
  %i.ce = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.br, <4 x double> %i.cd, <4 x double> %vec.phi67) ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bp, i64 12
  %wide.load76 = load <4 x float>, ptr %i.cf, align 4, !tbaa !9
  %i.cg = fpext reassoc nsz arcp <4 x float> %wide.load76 to <4 x double>
  %i.ch = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.br, <4 x double> %i.cg, <4 x double> %vec.phi66) ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bp, i64 8
  %wide.load77 = load <4 x float>, ptr %i.ci, align 4, !tbaa !9
  %i.cj = fpext reassoc nsz arcp <4 x float> %wide.load77 to <4 x double>
  %i.ck = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.br, <4 x double> %i.cj, <4 x double> %vec.phi65) ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bp, i64 4
  %wide.load78 = load <4 x float>, ptr %i.cl, align 4, !tbaa !9
  %i.cm = fpext reassoc nsz arcp <4 x float> %wide.load78 to <4 x double>
  %i.cn = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.br, <4 x double> %i.cm, <4 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %i.cp = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cn)
  %i.cq = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ck)
  %i.cr = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ch)
  %i.cs = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ce)
  %i.ct = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cb)
  %i.cu = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.by)
  %i.cv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bv)
  %i.cw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bs)
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  %i.cx = insertelement <4 x double> poison, double %i.ct, i64 0
  %i.cy = insertelement <4 x double> %i.cx, double %i.cu, i64 1
  %i.cz = insertelement <4 x double> %i.cy, double %i.cv, i64 2
  %i.da = insertelement <4 x double> %i.cz, double %i.cw, i64 3 ; 2 uses
  %i.db = insertelement <4 x double> poison, double %i.cs, i64 0
  %i.dc = insertelement <4 x double> %i.db, double %i.cr, i64 1
  %i.dd = insertelement <4 x double> %i.dc, double %i.cq, i64 2
  %i.de = insertelement <4 x double> %i.dd, double %i.cp, i64 3 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.preheader.preheader86

.preheader.preheader86:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 8, %.preheader.preheader ], [ %i.bm, %middle.block ]
  %.ph = phi <4 x double> [ %i.bc, %.preheader.preheader ], [ %i.da, %middle.block ]
  %.ph87 = phi <4 x double> [ %i.bj, %.preheader.preheader ], [ %i.de, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader86, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader86 ] ; 4 uses
  %i.df = phi <4 x double> [ %i.dq, %.preheader ], [ %.ph, %.preheader.preheader86 ]
  %i.dg = phi <4 x double> [ %i.dy, %.preheader ], [ %.ph87, %.preheader.preheader86 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.di = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.dj = getelementptr i8, ptr %i.di, i64 -12
  %i.dk = load <4 x float>, ptr %i.dj, align 4, !tbaa !9 ; 2 uses
  %i.dl = load float, ptr %i.dh, align 4, !tbaa !9
  %i.dm = fpext reassoc nsz arcp <4 x float> %i.dk to <4 x double>
  %i.dn = fpext reassoc nsz arcp float %i.dl to double
  %i.do = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dp = fpext reassoc nsz arcp <4 x float> %i.do to <4 x double>
  %i.dq = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dp, <4 x double> %i.dm, <4 x double> %i.df) ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ds = getelementptr i8, ptr %i.dr, i64 -28
  %i.dt = load <4 x float>, ptr %i.ds, align 4, !tbaa !9
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dv = fpext reassoc nsz arcp <4 x float> %i.du to <4 x double>
  %i.dw = insertelement <4 x double> poison, double %i.dn, i64 0
  %i.dx = shufflevector <4 x double> %i.dw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.dy = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dx, <4 x double> %i.dv, <4 x double> %i.dg) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %.preheader, %middle.block
  %i.dz = phi <4 x double> [ %i.da, %middle.block ], [ %i.dq, %.preheader ]
  %i.ea = phi <4 x double> [ %i.de, %middle.block ], [ %i.dy, %.preheader ]
  %i.eb = shufflevector <4 x double> %i.dz, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.eb, ptr %3, align 8, !tbaa !11
  store <4 x double> %i.ea, ptr %i.c, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader30.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_autocorrelation_intrin_fma_lag_12(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 96)) %3) local_unnamed_addr #0 {
.preheader30.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false), !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load float, ptr %i.b, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.o = load <4 x float>, ptr %i.b, align 4, !tbaa !9 ; 3 uses
  %i.p = load <4 x float>, ptr %i.c, align 4, !tbaa !9 ; 3 uses
  %i.q = load <4 x float>, ptr %i.d, align 4, !tbaa !9 ; 2 uses
  %i.r = load <4 x float>, ptr %i.f, align 4, !tbaa !9 ; 2 uses
  %i.s = fpext reassoc nsz arcp <4 x float> %i.o to <4 x double> ; 2 uses
  %i.t = extractelement <4 x double> %i.s, i64 0  ; 6 uses
  %i.u = load <4 x float>, ptr %i.g, align 4, !tbaa !9 ; 2 uses
  %i.v = fpext reassoc nsz arcp <4 x float> %i.p to <4 x double> ; 2 uses
  %i.w = extractelement <4 x double> %i.v, i64 0  ; 2 uses
  %i.x = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.y = fpext reassoc nsz arcp <2 x float> %i.x to <2 x double> ; 6 uses
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aa = extractelement <2 x double> %i.y, i64 1 ; 7 uses
  %i.ab = extractelement <2 x double> %i.y, i64 0 ; 6 uses
  %foldExtExtBinop = fmul reassoc nsz arcp <2 x double> %i.y, %i.y
  %i.ac = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ad = fmul reassoc nsz arcp double %i.t, %i.ab
  %i.ae = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ac)
  %i.af = fmul reassoc nsz arcp double %i.aa, %i.ab
  %i.ag = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.ae)
  %i.ah = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.aa, double %i.af)
  %i.ai = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fpext reassoc nsz arcp <2 x float> %i.ai to <2 x double> ; 2 uses
  %i.ak = shufflevector <4 x float> %i.o, <4 x float> %i.p, <2 x i32> <i32 0, i32 4>
  %i.al = fpext reassoc nsz arcp <2 x float> %i.ak to <2 x double>
  %i.am = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ag, i64 1
  %i.ao = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> %i.an)
  %i.ap = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.ad, i64 1
  %i.aq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.y, <2 x double> %i.ap)
  %i.ar = load <4 x float>, ptr %i.h, align 4, !tbaa !9 ; 2 uses
  %i.as = fpext reassoc nsz arcp <4 x float> %i.q to <4 x double> ; 3 uses
  %i.at = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fpext reassoc nsz arcp <4 x float> %i.at to <4 x double>
  %i.av = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aw = fpext reassoc nsz arcp <4 x float> %i.av to <4 x double>
  %i.ax = shufflevector <4 x double> %i.aw, <4 x double> %i.z, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.ay = shufflevector <4 x double> %i.ax, <4 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.az = shufflevector <2 x double> %i.aq, <2 x double> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.au, <4 x double> %i.ay, <4 x double> %i.az)
  %i.bb = extractelement <4 x double> %i.as, i64 0 ; 2 uses
  %i.bc = fmul reassoc nsz arcp double %i.bb, %i.ab
  %i.bd = load <4 x float>, ptr %i.j, align 4, !tbaa !9 ; 8 uses
  %i.be = fpext reassoc nsz arcp <4 x float> %i.r to <4 x double> ; 2 uses
  %i.bf = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = fpext reassoc nsz arcp <4 x float> %i.bf to <4 x double>
  %i.bh = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bg, <4 x double> %i.s, <4 x double> %i.ba)
  %i.bi = extractelement <4 x double> %i.be, i64 0 ; 3 uses
  %i.bj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bi, double %i.aa, double %i.bc)
  %i.bk = fmul reassoc nsz arcp double %i.bi, %i.ab
  %i.bl = fpext reassoc nsz arcp <4 x float> %i.u to <4 x double> ; 2 uses
  %i.bm = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = fpext reassoc nsz arcp <4 x float> %i.bm to <4 x double>
  %i.bo = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bn, <4 x double> %i.v, <4 x double> %i.bh)
  %i.bp = extractelement <4 x double> %i.bl, i64 0 ; 3 uses
  %i.bq = fpext reassoc nsz arcp <4 x float> %i.ar to <4 x double> ; 2 uses
  %i.br = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = fpext reassoc nsz arcp <4 x float> %i.br to <4 x double>
  %i.bt = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bs, <4 x double> %i.as, <4 x double> %i.bo)
  %i.bu = extractelement <4 x double> %i.bq, i64 0 ; 4 uses
  %i.bv = fpext reassoc nsz arcp <4 x float> %i.bd to <4 x double> ; 4 uses
  %i.bw = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fpext reassoc nsz arcp <4 x float> %i.bw to <4 x double>
  %i.by = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.be, <4 x double> %i.bt)
  %i.bz = extractelement <4 x double> %i.bv, i64 0 ; 4 uses
  %i.ca = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cb = fpext reassoc nsz arcp <4 x float> %i.ca to <4 x double>
  %i.cc = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cb, <4 x double> %i.bl, <4 x double> %i.by)
  %i.cd = extractelement <4 x double> %i.bv, i64 1 ; 4 uses
  %i.ce = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cf = fpext reassoc nsz arcp <4 x float> %i.ce to <4 x double> ; 2 uses
  %i.cg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cf, <4 x double> %i.bq, <4 x double> %i.cc)
  %i.ch = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ci = fpext reassoc nsz arcp <4 x float> %i.ch to <4 x double> ; 2 uses
  %i.cj = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ci, <4 x double> %i.bv, <4 x double> %i.cg) ; 6 uses
  %i.ck = shufflevector <4 x double> %i.cj, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.ck, ptr %3, align 8, !tbaa !11
  %i.cl = load double, ptr %i.i, align 8, !tbaa !11
  %i.cm = load <4 x float>, ptr %i.c, align 4, !tbaa !9
  %i.cn = load <4 x float>, ptr %i.d, align 4, !tbaa !9
  %i.co = fpext reassoc nsz arcp <4 x float> %i.cm to <4 x double> ; 3 uses
  %i.cp = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bp, double %i.t, double %i.bj)
  %i.cq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bp, double %i.aa, double %i.bk)
  %i.cr = fmul reassoc nsz arcp double %i.bp, %i.ab
  %i.cs = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bu, double %i.w, double %i.cp)
  %i.ct = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bu, double %i.t, double %i.cq)
  %i.cu = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bu, double %i.aa, double %i.cr)
  %i.cv = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bu, double %i.ab, double %i.cl)
  %i.cw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bz, double %i.bb, double %i.cs)
  %i.cx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bz, double %i.w, double %i.ct)
  %i.cy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cd, double %i.bi, double %i.cw)
  %i.cz = fpext reassoc nsz arcp <4 x float> %i.cn to <4 x double> ; 2 uses
  %i.da = extractelement <4 x double> %i.cz, i64 0
  %i.db = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cd, double %i.da, double %i.cx)
  %i.dc = extractelement <4 x double> %i.co, i64 0
  %i.dd = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.de = fpext reassoc nsz arcp <2 x float> %i.dd to <2 x double> ; 5 uses
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dg = extractelement <2 x double> %i.de, i64 1
  %i.dh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bz, double %i.dg, double %i.cv)
  %i.di = load <2 x double>, ptr %i.n, align 8, !tbaa !11
  %i.dj = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dk = fpext reassoc nsz arcp <2 x float> %i.dj to <2 x double> ; 2 uses
  %i.dl = insertelement <2 x double> %i.dk, double -0.000000e+00, i64 1
  %i.dm = insertelement <2 x double> %i.de, double 0.000000e+00, i64 1
  %i.dn = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dm, <2 x double> %i.di)
  %i.do = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dp = fpext reassoc nsz arcp <2 x float> %i.do to <2 x double> ; 2 uses
  %i.dq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.df, <2 x double> %i.dn) ; 4 uses
  %i.dr = load <2 x double>, ptr %i.l, align 8, !tbaa !11
  %i.ds = fpext reassoc nsz arcp float %i.k to double ; 4 uses
  %i.dt = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bz, double %i.ds, double %i.cu)
  %i.du = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cd, double %i.dc, double %i.dt)
  %i.dv = shufflevector <4 x double> %i.bv, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.dw = insertelement <2 x double> %i.dv, double 0.000000e+00, i64 1
  %i.dx = insertelement <2 x double> %i.de, double -0.000000e+00, i64 1
  %i.dy = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dx, <2 x double> %i.dr)
  %i.dz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cd, double %i.ds, double %i.dh)
  %i.ea = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = fpext reassoc nsz arcp <2 x float> %i.ea to <2 x double>
  %i.ec = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.df, <2 x double> %i.dy)
  %i.ed = insertelement <4 x double> poison, double %i.dz, i64 0
  %i.ee = insertelement <4 x double> %i.ed, double %i.du, i64 1
  %i.ef = insertelement <4 x double> %i.ee, double %i.db, i64 2
  %i.eg = insertelement <4 x double> %i.ef, double %i.cy, i64 3
  %i.eh = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cf, <4 x double> %i.co, <4 x double> %i.eg)
  %i.ei = insertelement <2 x double> %i.de, double %i.ds, i64 0
  %i.ej = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.ei, <2 x double> %i.ec)
  %i.ek = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ci, <4 x double> %i.cz, <4 x double> %i.eh) ; 6 uses
  %i.el = shufflevector <4 x double> %i.ek, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.el, ptr %i.e, align 8, !tbaa !11
  %i.em = shufflevector <4 x double> %i.co, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.en = insertelement <2 x double> %i.em, double %i.ds, i64 1
  %i.eo = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.en, <2 x double> %i.ej) ; 5 uses
  %i.ep = shufflevector <2 x double> %i.dq, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eq = shufflevector <2 x double> %i.eo, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.er = shufflevector <2 x double> %i.eo, <2 x double> %i.dq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.er, ptr %i.l, align 8, !tbaa !11
  %i.es = icmp sgt i32 %1, 12
  br i1 %i.es, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader30.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.et = add nsw i64 %wide.trip.count, -12       ; 3 uses
  %min.iters.check = icmp ult i64 %i.et, 4
  %i.eu = extractelement <2 x double> %i.eo, i64 0
  %i.ev = extractelement <2 x double> %i.eo, i64 1
  br i1 %min.iters.check, label %.preheader.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.et, -4                      ; 3 uses
  %i.ew = add nsw i64 %n.vec, 12
  %4 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ep, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ex = shufflevector <2 x double> %i.dq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x double> %i.ex, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.eq, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ez = shufflevector <2 x double> %i.eo, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x double> %i.ez, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fb = shufflevector <4 x double> %i.ek, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %6 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ek, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %7 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ek, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ek, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.fc = shufflevector <4 x double> %i.cj, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %9 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.cj, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.cj, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.cj, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %4, %vector.ph ], [ %i.gn, %vector.body ]
  %vec.phi73 = phi <4 x double> [ %i.ey, %vector.ph ], [ %i.gk, %vector.body ]
  %vec.phi74 = phi <4 x double> [ %5, %vector.ph ], [ %i.gh, %vector.body ]
  %vec.phi75 = phi <4 x double> [ %i.fa, %vector.ph ], [ %i.ge, %vector.body ]
  %vec.phi76 = phi <4 x double> [ %i.fb, %vector.ph ], [ %i.gb, %vector.body ]
  %vec.phi77 = phi <4 x double> [ %6, %vector.ph ], [ %i.fy, %vector.body ]
  %vec.phi78 = phi <4 x double> [ %7, %vector.ph ], [ %i.fv, %vector.body ]
  %vec.phi79 = phi <4 x double> [ %8, %vector.ph ], [ %i.fs, %vector.body ]
  %vec.phi80 = phi <4 x double> [ %i.fc, %vector.ph ], [ %i.fp, %vector.body ]
  %vec.phi81 = phi <4 x double> [ %9, %vector.ph ], [ %i.fm, %vector.body ]
  %vec.phi82 = phi <4 x double> [ %10, %vector.ph ], [ %i.fj, %vector.body ]
  %vec.phi83 = phi <4 x double> [ %11, %vector.ph ], [ %i.fg, %vector.body ]
  %i.fd = getelementptr [4 x i8], ptr %0, i64 %index ; 12 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 48
  %wide.load = load <4 x float>, ptr %i.fe, align 4, !tbaa !9
  %i.ff = fpext reassoc nsz arcp <4 x float> %wide.load to <4 x double> ; 13 uses
  %i.fg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.ff, <4 x double> %vec.phi83) ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fd, i64 44
  %wide.load84 = load <4 x float>, ptr %i.fh, align 4, !tbaa !9
  %i.fi = fpext reassoc nsz arcp <4 x float> %wide.load84 to <4 x double>
  %i.fj = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.fi, <4 x double> %vec.phi82) ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fd, i64 40
  %wide.load85 = load <4 x float>, ptr %i.fk, align 4, !tbaa !9
  %i.fl = fpext reassoc nsz arcp <4 x float> %wide.load85 to <4 x double>
  %i.fm = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.fl, <4 x double> %vec.phi81) ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fd, i64 36
  %wide.load86 = load <4 x float>, ptr %i.fn, align 4, !tbaa !9
  %i.fo = fpext reassoc nsz arcp <4 x float> %wide.load86 to <4 x double>
  %i.fp = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.fo, <4 x double> %vec.phi80) ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fd, i64 32
  %wide.load87 = load <4 x float>, ptr %i.fq, align 4, !tbaa !9
  %i.fr = fpext reassoc nsz arcp <4 x float> %wide.load87 to <4 x double>
  %i.fs = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.fr, <4 x double> %vec.phi79) ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fd, i64 28
  %wide.load88 = load <4 x float>, ptr %i.ft, align 4, !tbaa !9
  %i.fu = fpext reassoc nsz arcp <4 x float> %wide.load88 to <4 x double>
  %i.fv = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.fu, <4 x double> %vec.phi78) ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fd, i64 24
  %wide.load89 = load <4 x float>, ptr %i.fw, align 4, !tbaa !9
  %i.fx = fpext reassoc nsz arcp <4 x float> %wide.load89 to <4 x double>
  %i.fy = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.fx, <4 x double> %vec.phi77) ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fd, i64 20
  %wide.load90 = load <4 x float>, ptr %i.fz, align 4, !tbaa !9
  %i.ga = fpext reassoc nsz arcp <4 x float> %wide.load90 to <4 x double>
  %i.gb = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.ga, <4 x double> %vec.phi76) ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fd, i64 16
  %wide.load91 = load <4 x float>, ptr %i.gc, align 4, !tbaa !9
  %i.gd = fpext reassoc nsz arcp <4 x float> %wide.load91 to <4 x double>
  %i.ge = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.gd, <4 x double> %vec.phi75) ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fd, i64 12
  %wide.load92 = load <4 x float>, ptr %i.gf, align 4, !tbaa !9
  %i.gg = fpext reassoc nsz arcp <4 x float> %wide.load92 to <4 x double>
  %i.gh = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.gg, <4 x double> %vec.phi74) ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fd, i64 8
  %wide.load93 = load <4 x float>, ptr %i.gi, align 4, !tbaa !9
  %i.gj = fpext reassoc nsz arcp <4 x float> %wide.load93 to <4 x double>
  %i.gk = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.gj, <4 x double> %vec.phi73) ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fd, i64 4
  %wide.load94 = load <4 x float>, ptr %i.gl, align 4, !tbaa !9
  %i.gm = fpext reassoc nsz arcp <4 x float> %wide.load94 to <4 x double>
  %i.gn = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %i.gm, <4 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.gp = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gn)
  %i.gq = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gk)
  %i.gr = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gh) ; 2 uses
  %i.gs = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ge) ; 2 uses
  %i.gt = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gb)
  %i.gu = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fy)
  %i.gv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fv)
  %i.gw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fs)
  %i.gx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fp)
  %i.gy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fm)
  %i.gz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fj)
  %i.ha = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fg)
  %cmp.n = icmp eq i64 %i.et, %n.vec
  %i.hb = insertelement <4 x double> poison, double %i.gx, i64 0
  %i.hc = insertelement <4 x double> %i.hb, double %i.gy, i64 1
  %i.hd = insertelement <4 x double> %i.hc, double %i.gz, i64 2
  %i.he = insertelement <4 x double> %i.hd, double %i.ha, i64 3 ; 2 uses
  %i.hf = insertelement <4 x double> poison, double %i.gt, i64 0
  %i.hg = insertelement <4 x double> %i.hf, double %i.gu, i64 1
  %i.hh = insertelement <4 x double> %i.hg, double %i.gv, i64 2
  %i.hi = insertelement <4 x double> %i.hh, double %i.gw, i64 3 ; 2 uses
  %i.hj = insertelement <2 x double> poison, double %i.gq, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.gp, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.preheader.preheader107

.preheader.preheader107:                          ; preds = %.preheader.preheader, %middle.block
  %.ph = phi double [ %i.ev, %.preheader.preheader ], [ %i.gr, %middle.block ]
  %.ph108 = phi double [ %i.eu, %.preheader.preheader ], [ %i.gs, %middle.block ]
  %indvars.iv.ph = phi i64 [ 12, %.preheader.preheader ], [ %i.ew, %middle.block ]
  %.ph109 = phi <4 x double> [ %i.cj, %.preheader.preheader ], [ %i.he, %middle.block ]
  %.ph110 = phi <4 x double> [ %i.ek, %.preheader.preheader ], [ %i.hi, %middle.block ]
  %.ph111 = phi <2 x double> [ %i.dq, %.preheader.preheader ], [ %i.hk, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader107, %.preheader
  %i.hl = phi double [ %i.iq, %.preheader ], [ %.ph, %.preheader.preheader107 ]
  %i.hm = phi double [ %i.il, %.preheader ], [ %.ph108, %.preheader.preheader107 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader107 ] ; 7 uses
  %i.hn = phi <4 x double> [ %i.hz, %.preheader ], [ %.ph109, %.preheader.preheader107 ]
  %i.ho = phi <4 x double> [ %i.ig, %.preheader ], [ %.ph110, %.preheader.preheader107 ]
  %i.hp = phi <2 x double> [ %i.iy, %.preheader ], [ %.ph111, %.preheader.preheader107 ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.hr = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.hs = getelementptr i8, ptr %i.hr, i64 -12
  %i.ht = load <4 x float>, ptr %i.hs, align 4, !tbaa !9 ; 2 uses
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !9
  %i.hv = fpext reassoc nsz arcp <4 x float> %i.ht to <4 x double>
  %i.hw = fpext reassoc nsz arcp float %i.hu to double ; 4 uses
  %i.hx = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hy = fpext reassoc nsz arcp <4 x float> %i.hx to <4 x double>
  %i.hz = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hy, <4 x double> %i.hv, <4 x double> %i.hn) ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ib = getelementptr i8, ptr %i.ia, i64 -28
  %i.ic = load <4 x float>, ptr %i.ib, align 4, !tbaa !9
  %i.id = fpext reassoc nsz arcp <4 x float> %i.ic to <4 x double>
  %i.ie = insertelement <4 x double> poison, double %i.hw, i64 0
  %i.if = shufflevector <4 x double> %i.ie, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ig = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.if, <4 x double> %i.id, <4 x double> %i.ho) ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ii = getelementptr i8, ptr %i.ih, i64 -32
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !9
  %i.ik = fpext reassoc nsz arcp float %i.ij to double
  %i.il = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.hw, double %i.ik, double %i.hm) ; 2 uses
  %i.im = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.in = getelementptr i8, ptr %i.im, i64 -36
  %i.io = load float, ptr %i.in, align 4, !tbaa !9
  %i.ip = fpext reassoc nsz arcp float %i.io to double
  %i.iq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.hw, double %i.ip, double %i.hl) ; 2 uses
  %i.ir = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.is = getelementptr i8, ptr %i.ir, i64 -44
  %i.it = load <2 x float>, ptr %i.is, align 4, !tbaa !9
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iv = fpext reassoc nsz arcp <2 x float> %i.iu to <2 x double>
  %i.iw = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.iv, <2 x double> %i.hp) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %.preheader, %middle.block
  %.lcssa64 = phi double [ %i.gs, %middle.block ], [ %i.il, %.preheader ]
  %.lcssa63 = phi double [ %i.gr, %middle.block ], [ %i.iq, %.preheader ]
  %i.iz = phi <4 x double> [ %i.he, %middle.block ], [ %i.hz, %.preheader ]
  %i.ja = phi <4 x double> [ %i.hi, %middle.block ], [ %i.ig, %.preheader ]
  %i.jb = phi <2 x double> [ %i.hk, %middle.block ], [ %i.iy, %.preheader ]
  %i.jc = shufflevector <4 x double> %i.iz, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.jc, ptr %3, align 8, !tbaa !11
  %i.jd = shufflevector <4 x double> %i.ja, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.jd, ptr %i.e, align 8, !tbaa !11
  store double %.lcssa64, ptr %i.l, align 8, !tbaa !11
  store double %.lcssa63, ptr %i.m, align 8, !tbaa !11
  store <2 x double> %i.jb, ptr %i.n, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader30.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_autocorrelation_intrin_fma_lag_16(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 128)) %3) local_unnamed_addr #0 {
.preheader30.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false), !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = load double, ptr %i.m, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  %i.z = load float, ptr %i.v, align 4, !tbaa !9
  %i.aa = fpext reassoc nsz arcp float %i.z to double
end_hunk_0
begin_hunk_1_@FLAC__lpc_compute_autocorrelation_intrin_fma_lag_16:.preheader30.preheader
  %i.bd = extractelement <2 x double> %i.av, i64 0 ; 8 uses
  %i.be = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.ba)
  %i.bf = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bd, double %i.at, double %i.bb)
  %i.bg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bd, double %i.ao, double %i.bc)
  %foldExtExtBinop132 = fmul reassoc nsz arcp <2 x double> %i.av, %i.al
  %i.bh = extractelement <2 x double> %foldExtExtBinop132, i64 0
  %i.bi = extractelement <2 x double> %i.av, i64 1 ; 9 uses
  %i.bj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.be)
  %i.bk = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bi, double %i.bd, double %i.bf)
  %i.bl = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bi, double %i.at, double %i.bg)
  %i.bm = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bi, double %i.ao, double %i.bh)
  %i.bn = fmul reassoc nsz arcp double %i.bi, %i.am
  %i.bo = fmul reassoc nsz arcp double %i.am, %i.ax
  %i.bp = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x double> %i.ar, double %i.bo, i64 1
  %i.bs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.al, <2 x double> %i.br)
  %i.bt = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.bj)
  %i.bu = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.af, double %i.bi, double %i.bk)
  %i.bv = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.af, double %i.bd, double %i.bl)
  %i.bw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.af, double %i.at, double %i.bm)
  %i.bx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.af, double %i.ao, double %i.bn)
  %i.by = fmul reassoc nsz arcp double %i.af, %i.am
  %i.bz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.bt)
  %i.ca = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.af, double %i.bu)
  %i.cb = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.bi, double %i.bv)
  %i.cc = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.bd, double %i.bw)
  %i.cd = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.at, double %i.bx)
  %i.ce = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.ao, double %i.by)
  %i.cf = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.bz)
  %i.cg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.ax, double %i.ca)
  %i.ch = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.af, double %i.cb)
  %i.ci = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.bi, double %i.cc)
  %i.cj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.bd, double %i.cd)
  %i.ck = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.at, double %i.ce)
  %i.cl = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.cf)
  %i.cm = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.az, double %i.cg)
  %i.cn = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.ax, double %i.ch)
  %i.co = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.af, double %i.ci)
  %i.cp = shufflevector <8 x double> %i.ah, <8 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cj, i64 1
  %i.cs = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.av, <2 x double> %i.cr)
  %i.ct = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cu = fpext reassoc nsz arcp <2 x float> %i.ct to <2 x double>
  %i.cv = extractelement <8 x double> %i.ah, i64 1 ; 10 uses
  %i.cw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %i.cl)
  %i.cx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.ai, double %i.cm)
  %i.cy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.az, double %i.cn)
  %i.cz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.ax, double %i.co)
  %i.da = load <4 x float>, ptr %i.j, align 4, !tbaa !9
  %i.db = fpext reassoc nsz arcp <4 x float> %i.ac to <4 x double> ; 2 uses
  %i.dc = load <4 x float>, ptr %i.k, align 4, !tbaa !9
  %i.dd = fpext reassoc nsz arcp <4 x float> %i.ad to <4 x double> ; 2 uses
  %i.de = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = extractelement <8 x double> %i.ah, i64 2 ; 10 uses
  %i.dg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.df, double %i.cw)
  %i.dh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.cv, double %i.cx)
  %i.di = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.ai, double %i.cy)
  %i.dj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.az, double %i.cz)
  %i.dk = load <4 x float>, ptr %i.l, align 4, !tbaa !9
  %i.dl = fpext reassoc nsz arcp <4 x float> %i.da to <4 x double>
  %i.dm = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dn = extractelement <8 x double> %i.ah, i64 3 ; 9 uses
  %i.do = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %i.dg)
  %i.dp = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.df, double %i.dh)
  %i.dq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.cv, double %i.di)
  %i.dr = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.ai, double %i.dj)
  %i.ds = load <4 x float>, ptr %i.o, align 4, !tbaa !9
  %i.dt = fpext reassoc nsz arcp <4 x float> %i.dc to <4 x double> ; 2 uses
  %i.du = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dv = extractelement <4 x double> %i.db, i64 0 ; 2 uses
  %i.dw = extractelement <8 x double> %i.ah, i64 4 ; 10 uses
  %i.dx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %i.do)
  %i.dy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.dn, double %i.dp)
  %i.dz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.df, double %i.dq)
  %i.ea = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.cv, double %i.dr)
  %i.eb = fpext reassoc nsz arcp <4 x float> %i.dk to <4 x double> ; 2 uses
  %i.ec = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ed = extractelement <4 x double> %i.dd, i64 0
  %i.ee = extractelement <8 x double> %i.ah, i64 5 ; 9 uses
  %i.ef = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %i.dx)
  %i.eg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.dw, double %i.dy)
  %i.eh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.dn, double %i.dz)
  %i.ei = fpext reassoc nsz arcp <4 x float> %i.ds to <4 x double> ; 3 uses
  %i.ej = extractelement <4 x double> %i.ei, i64 2
  %i.ek = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.ej, double %i.ea)
  %i.el = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5> ; 2 uses
  %i.em = extractelement <8 x double> %i.ah, i64 6 ; 9 uses
  %i.en = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.em, double %i.em, double %i.ef)
  %i.eo = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.em, double %i.ee, double %i.eg)
  %i.ep = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.em, double %i.dw, double %i.eh)
  %i.eq = extractelement <4 x double> %i.ei, i64 3
  %i.er = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.em, double %i.eq, double %i.ek)
  %i.es = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6> ; 2 uses
  %i.et = extractelement <4 x double> %i.dt, i64 0 ; 2 uses
  %i.eu = extractelement <8 x double> %i.ah, i64 7 ; 7 uses
  %i.ev = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.eu, double %i.eu, double %i.en)
  store double %i.ev, ptr %3, align 8, !tbaa !11
  %i.ew = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.eu, double %i.em, double %i.eo)
  store double %i.ew, ptr %i.c, align 8, !tbaa !11
  %i.ex = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.eu, double %i.ee, double %i.ep)
  store double %i.ex, ptr %i.e, align 8, !tbaa !11
  %i.ey = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.eu, double %i.aa, double %i.er)
  store double %i.ey, ptr %i.g, align 8, !tbaa !11
  %i.ez = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7> ; 2 uses
  %i.fa = extractelement <4 x double> %i.eb, i64 0
  %i.fb = load double, ptr %i.w, align 8, !tbaa !11
  %i.fc = load <4 x float>, ptr %i.b, align 4, !tbaa !9
  %i.fd = load <4 x float>, ptr %0, align 4, !tbaa !9
  %i.fe = load <4 x float>, ptr %i.d, align 4, !tbaa !9
  %i.ff = fpext reassoc nsz arcp <4 x float> %i.fc to <4 x double> ; 2 uses
  %i.fg = fpext reassoc nsz arcp <4 x float> %i.fd to <4 x double> ; 2 uses
  %i.fh = load double, ptr %i.x, align 8, !tbaa !11
  %i.fi = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.fj = load double, ptr %i.t, align 8, !tbaa !11
  %i.fk = load double, ptr %i.u, align 8, !tbaa !11
  %i.fl = fpext reassoc nsz arcp <2 x float> %i.fi to <2 x double> ; 4 uses
  %i.fm = shufflevector <2 x double> %i.cu, <2 x double> %i.fl, <2 x i32> <i32 3, i32 1>
  %i.fn = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.fm, <2 x double> %i.bs)
  %i.fo = extractelement <2 x double> %i.fl, i64 0 ; 3 uses
  %i.fp = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.fo, double %i.q)
  %i.fq = shufflevector <2 x double> %i.fn, <2 x double> %i.cs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fr = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.de, <4 x double> %i.ae, <4 x double> %i.fq)
  %i.fs = extractelement <2 x double> %i.fl, i64 1 ; 2 uses
  %i.ft = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.fs, double %i.fp)
  %i.fu = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.fo, double %i.s)
  %i.fv = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dm, <4 x double> %i.db, <4 x double> %i.fr)
  %i.fw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.aj, double %i.ft)
  %i.fx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.fs, double %i.fu)
  %i.fy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.fo, double %i.fj)
  %i.fz = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.du, <4 x double> %i.dd, <4 x double> %i.fv)
  %i.ga = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.dv, double %i.fw)
  %i.gb = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.aj, double %i.fx)
  %i.gc = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ec, <4 x double> %i.dl, <4 x double> %i.fz)
  %i.gd = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.ed, double %i.ga)
  %i.ge = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.dv, double %i.gb)
  %i.gf = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.el, <4 x double> %i.dt, <4 x double> %i.gc)
  %i.gg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.es, <4 x double> %i.eb, <4 x double> %i.gf)
  %i.gh = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ez, <4 x double> %i.ei, <4 x double> %i.gg) ; 6 uses
  %i.gi = shufflevector <4 x double> %i.gh, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.gi, ptr %i.i, align 8, !tbaa !11
  %i.gj = shufflevector <8 x double> %i.ah, <8 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.gk = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.fy, i64 1
  %i.gm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.fl, <2 x double> %i.gl)
  %i.gn = shufflevector <8 x double> %i.ah, <8 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.go = shufflevector <4 x double> %i.ff, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.gp = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.go, <2 x double> %i.gm)
  %i.gq = extractelement <4 x double> %i.fg, i64 0 ; 2 uses
  %i.gr = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.gq, double %i.fb)
  %i.gs = fpext reassoc nsz arcp <4 x float> %i.fe to <4 x double> ; 3 uses
  %i.gt = extractelement <4 x double> %i.gs, i64 3 ; 2 uses
  %i.gu = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.gt, double %i.gd)
  %i.gv = extractelement <4 x double> %i.gs, i64 2
  %i.gw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.gv, double %i.ge)
  %i.gx = insertelement <4 x double> poison, double %i.fh, i64 0
  %i.gy = insertelement <4 x double> %i.gx, double %i.gr, i64 1
  %i.gz = shufflevector <2 x double> %i.gp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ha = shufflevector <4 x double> %i.gy, <4 x double> %i.gz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hb = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.el, <4 x double> %i.fg, <4 x double> %i.ha)
  %i.hc = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.em, double %i.et, double %i.gu)
  %i.hd = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.em, double %i.gt, double %i.gw)
  %i.he = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.es, <4 x double> %i.ff, <4 x double> %i.hb)
  %i.hf = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.eu, double %i.fa, double %i.hc) ; 3 uses
  %i.hg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ez, <4 x double> %i.gs, <4 x double> %i.he) ; 7 uses
  %i.hh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.eu, double %i.et, double %i.hd) ; 3 uses
  %i.hi = shufflevector <4 x double> %i.hg, <4 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %i.hj = insertelement <4 x double> %i.hi, double %i.hf, i64 0
  %i.hk = insertelement <4 x double> %i.hj, double %i.hh, i64 1
  store <4 x double> %i.hk, ptr %i.p, align 8, !tbaa !11
  %i.hl = shufflevector <4 x double> %i.hg, <4 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hl, ptr %i.w, align 8, !tbaa !11
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.hn = load double, ptr %i.y, align 8, !tbaa !11
  %i.ho = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.em, double %i.gq, double %i.hn)
  %i.hp = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hr = fpext reassoc nsz arcp <2 x float> %i.hq to <2 x double>
  %i.hs = load double, ptr %i.hm, align 8, !tbaa !11
  %i.ht = shufflevector <8 x double> %i.ah, <8 x double> poison, <2 x i32> <i32 7, i32 7>
  %i.hu = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.hs, i64 1
  %i.hw = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hr, <2 x double> %i.hv)
  store <2 x double> %i.hw, ptr %i.y, align 8, !tbaa !11
  %i.hx = icmp sgt i32 %1, 16
  br i1 %i.hx, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader30.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.hy = load <4 x double>, ptr %3, align 8, !tbaa !11 ; 5 uses
  %i.hz = load <2 x double>, ptr %i.y, align 8, !tbaa !11 ; 2 uses
  %i.ia = add nsw i64 %wide.trip.count, -16       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ia, 4
  br i1 %min.iters.check, label %.preheader.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.ia, -4                      ; 3 uses
  %i.ib = add nsw i64 %n.vec, 16
  %i.ic = shufflevector <2 x double> %i.hz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %4 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ic, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.id = shufflevector <4 x double> %i.ic, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hy, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %6 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hy, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %7 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hy, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ie = shufflevector <4 x double> %i.hy, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.if = shufflevector <4 x double> %i.hg, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hg, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %9 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hg, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hg, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.ig = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.hh, i64 0
  %i.ih = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.hf, i64 0
  %i.ii = shufflevector <4 x double> %i.gh, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %11 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gh, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %12 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gh, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %13 = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gh, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %4, %vector.ph ], [ %i.kf, %vector.body ]
  %vec.phi86 = phi <4 x double> [ %i.id, %vector.ph ], [ %i.kc, %vector.body ]
  %vec.phi87 = phi <4 x double> [ %5, %vector.ph ], [ %i.iv, %vector.body ]
  %vec.phi88 = phi <4 x double> [ %6, %vector.ph ], [ %i.is, %vector.body ]
  %vec.phi89 = phi <4 x double> [ %7, %vector.ph ], [ %i.ip, %vector.body ]
  %vec.phi90 = phi <4 x double> [ %i.ie, %vector.ph ], [ %i.im, %vector.body ]
  %vec.phi91 = phi <4 x double> [ %i.if, %vector.ph ], [ %i.jz, %vector.body ]
  %vec.phi92 = phi <4 x double> [ %8, %vector.ph ], [ %i.jw, %vector.body ]
  %vec.phi93 = phi <4 x double> [ %9, %vector.ph ], [ %i.jt, %vector.body ]
  %vec.phi94 = phi <4 x double> [ %10, %vector.ph ], [ %i.jq, %vector.body ]
  %vec.phi95 = phi <4 x double> [ %i.ig, %vector.ph ], [ %i.jn, %vector.body ]
  %vec.phi96 = phi <4 x double> [ %i.ih, %vector.ph ], [ %i.jk, %vector.body ]
  %vec.phi97 = phi <4 x double> [ %i.ii, %vector.ph ], [ %i.jh, %vector.body ]
  %vec.phi98 = phi <4 x double> [ %11, %vector.ph ], [ %i.je, %vector.body ]
  %vec.phi99 = phi <4 x double> [ %12, %vector.ph ], [ %i.jb, %vector.body ]
  %vec.phi100 = phi <4 x double> [ %13, %vector.ph ], [ %i.iy, %vector.body ]
  %i.ij = getelementptr [4 x i8], ptr %0, i64 %index ; 16 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 64
  %wide.load = load <4 x float>, ptr %i.ik, align 4, !tbaa !9
  %i.il = fpext reassoc nsz arcp <4 x float> %wide.load to <4 x double> ; 17 uses
  %i.im = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.il, <4 x double> %vec.phi90) ; 2 uses
  %i.in = getelementptr i8, ptr %i.ij, i64 60
  %wide.load101 = load <4 x float>, ptr %i.in, align 4, !tbaa !9
  %i.io = fpext reassoc nsz arcp <4 x float> %wide.load101 to <4 x double>
  %i.ip = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.io, <4 x double> %vec.phi89) ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ij, i64 56
  %wide.load102 = load <4 x float>, ptr %i.iq, align 4, !tbaa !9
  %i.ir = fpext reassoc nsz arcp <4 x float> %wide.load102 to <4 x double>
  %i.is = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.ir, <4 x double> %vec.phi88) ; 2 uses
  %i.it = getelementptr i8, ptr %i.ij, i64 52
  %wide.load103 = load <4 x float>, ptr %i.it, align 4, !tbaa !9
  %i.iu = fpext reassoc nsz arcp <4 x float> %wide.load103 to <4 x double>
  %i.iv = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.iu, <4 x double> %vec.phi87) ; 2 uses
  %i.iw = getelementptr i8, ptr %i.ij, i64 48
  %wide.load104 = load <4 x float>, ptr %i.iw, align 4, !tbaa !9
  %i.ix = fpext reassoc nsz arcp <4 x float> %wide.load104 to <4 x double>
  %i.iy = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.ix, <4 x double> %vec.phi100) ; 2 uses
  %i.iz = getelementptr i8, ptr %i.ij, i64 44
  %wide.load105 = load <4 x float>, ptr %i.iz, align 4, !tbaa !9
  %i.ja = fpext reassoc nsz arcp <4 x float> %wide.load105 to <4 x double>
  %i.jb = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.ja, <4 x double> %vec.phi99) ; 2 uses
  %i.jc = getelementptr i8, ptr %i.ij, i64 40
  %wide.load106 = load <4 x float>, ptr %i.jc, align 4, !tbaa !9
  %i.jd = fpext reassoc nsz arcp <4 x float> %wide.load106 to <4 x double>
  %i.je = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.jd, <4 x double> %vec.phi98) ; 2 uses
  %i.jf = getelementptr i8, ptr %i.ij, i64 36
  %wide.load107 = load <4 x float>, ptr %i.jf, align 4, !tbaa !9
  %i.jg = fpext reassoc nsz arcp <4 x float> %wide.load107 to <4 x double>
  %i.jh = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.jg, <4 x double> %vec.phi97) ; 2 uses
  %i.ji = getelementptr i8, ptr %i.ij, i64 32
  %wide.load108 = load <4 x float>, ptr %i.ji, align 4, !tbaa !9
  %i.jj = fpext reassoc nsz arcp <4 x float> %wide.load108 to <4 x double>
  %i.jk = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.jj, <4 x double> %vec.phi96) ; 2 uses
  %i.jl = getelementptr i8, ptr %i.ij, i64 28
  %wide.load109 = load <4 x float>, ptr %i.jl, align 4, !tbaa !9
  %i.jm = fpext reassoc nsz arcp <4 x float> %wide.load109 to <4 x double>
  %i.jn = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.jm, <4 x double> %vec.phi95) ; 2 uses
  %i.jo = getelementptr i8, ptr %i.ij, i64 24
  %wide.load110 = load <4 x float>, ptr %i.jo, align 4, !tbaa !9
  %i.jp = fpext reassoc nsz arcp <4 x float> %wide.load110 to <4 x double>
  %i.jq = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.jp, <4 x double> %vec.phi94) ; 2 uses
  %i.jr = getelementptr i8, ptr %i.ij, i64 20
  %wide.load111 = load <4 x float>, ptr %i.jr, align 4, !tbaa !9
  %i.js = fpext reassoc nsz arcp <4 x float> %wide.load111 to <4 x double>
  %i.jt = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.js, <4 x double> %vec.phi93) ; 2 uses
  %i.ju = getelementptr i8, ptr %i.ij, i64 16
  %wide.load112 = load <4 x float>, ptr %i.ju, align 4, !tbaa !9
  %i.jv = fpext reassoc nsz arcp <4 x float> %wide.load112 to <4 x double>
  %i.jw = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.jv, <4 x double> %vec.phi92) ; 2 uses
  %i.jx = getelementptr i8, ptr %i.ij, i64 12
  %wide.load113 = load <4 x float>, ptr %i.jx, align 4, !tbaa !9
  %i.jy = fpext reassoc nsz arcp <4 x float> %wide.load113 to <4 x double>
  %i.jz = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.jy, <4 x double> %vec.phi91) ; 2 uses
  %i.ka = getelementptr i8, ptr %i.ij, i64 8
  %wide.load114 = load <4 x float>, ptr %i.ka, align 4, !tbaa !9
  %i.kb = fpext reassoc nsz arcp <4 x float> %wide.load114 to <4 x double>
  %i.kc = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.kb, <4 x double> %vec.phi86) ; 2 uses
  %i.kd = getelementptr i8, ptr %i.ij, i64 4
  %wide.load115 = load <4 x float>, ptr %i.kd, align 4, !tbaa !9
  %i.ke = fpext reassoc nsz arcp <4 x float> %wide.load115 to <4 x double>
  %i.kf = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.il, <4 x double> %i.ke, <4 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %i.kh = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.kf)
  %i.ki = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.kc)
  %i.kj = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.iv)
  %i.kk = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.is)
  %i.kl = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ip)
  %i.km = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.im)
  %i.kn = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jz)
  %i.ko = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jw)
  %i.kp = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jt)
  %i.kq = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jq)
  %i.kr = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jn) ; 2 uses
  %i.ks = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jk) ; 2 uses
  %i.kt = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jh)
  %i.ku = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.je)
  %i.kv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jb)
  %i.kw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.iy)
  %cmp.n = icmp eq i64 %i.ia, %n.vec
  %i.kx = insertelement <4 x double> poison, double %i.km, i64 0
  %i.ky = insertelement <4 x double> %i.kx, double %i.kl, i64 1
  %i.kz = insertelement <4 x double> %i.ky, double %i.kk, i64 2
  %i.la = insertelement <4 x double> %i.kz, double %i.kj, i64 3 ; 2 uses
  %i.lb = insertelement <4 x double> poison, double %i.kt, i64 0
  %i.lc = insertelement <4 x double> %i.lb, double %i.ku, i64 1
  %i.ld = insertelement <4 x double> %i.lc, double %i.kv, i64 2
  %i.le = insertelement <4 x double> %i.ld, double %i.kw, i64 3 ; 2 uses
  %i.lf = insertelement <4 x double> poison, double %i.kn, i64 0
  %i.lg = insertelement <4 x double> %i.lf, double %i.ko, i64 1
  %i.lh = insertelement <4 x double> %i.lg, double %i.kp, i64 2
  %i.li = insertelement <4 x double> %i.lh, double %i.kq, i64 3 ; 2 uses
  %i.lj = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.lk = insertelement <2 x double> %i.lj, double %i.kh, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.preheader.preheader134

.preheader.preheader134:                          ; preds = %.preheader.preheader, %middle.block
  %.ph = phi double [ %i.hh, %.preheader.preheader ], [ %i.kr, %middle.block ]
  %.ph135 = phi double [ %i.hf, %.preheader.preheader ], [ %i.ks, %middle.block ]
  %indvars.iv.ph = phi i64 [ 16, %.preheader.preheader ], [ %i.ib, %middle.block ]
  %.ph136 = phi <4 x double> [ %i.hy, %.preheader.preheader ], [ %i.la, %middle.block ]
  %.ph137 = phi <4 x double> [ %i.gh, %.preheader.preheader ], [ %i.le, %middle.block ]
  %.ph138 = phi <4 x double> [ %i.hg, %.preheader.preheader ], [ %i.li, %middle.block ]
  %.ph139 = phi <2 x double> [ %i.hz, %.preheader.preheader ], [ %i.lk, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader134, %.preheader
  %i.ll = phi double [ %i.mo, %.preheader ], [ %.ph, %.preheader.preheader134 ]
  %i.lm = phi double [ %i.mj, %.preheader ], [ %.ph135, %.preheader.preheader134 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader134 ] ; 7 uses
  %i.ln = phi <4 x double> [ %i.ly, %.preheader ], [ %.ph136, %.preheader.preheader134 ]
  %i.lo = phi <4 x double> [ %i.me, %.preheader ], [ %.ph137, %.preheader.preheader134 ]
  %i.lp = phi <4 x double> [ %i.mt, %.preheader ], [ %.ph138, %.preheader.preheader134 ]
  %i.lq = phi <2 x double> [ %i.nb, %.preheader ], [ %.ph139, %.preheader.preheader134 ]
  %i.lr = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ls = getelementptr i8, ptr %i.lr, i64 -12
  %i.lt = load <4 x float>, ptr %i.ls, align 4, !tbaa !9 ; 3 uses
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.lv = fpext reassoc nsz arcp <4 x float> %i.lu to <4 x double> ; 2 uses
  %i.lw = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.lx = fpext reassoc nsz arcp <4 x float> %i.lw to <4 x double> ; 3 uses
  %i.ly = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lx, <4 x double> %i.lv, <4 x double> %i.ln) ; 2 uses
  %i.lz = extractelement <4 x double> %i.lv, i64 0 ; 2 uses
  %i.ma = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.mb = getelementptr i8, ptr %i.ma, i64 -28
  %i.mc = load <4 x float>, ptr %i.mb, align 4, !tbaa !9
  %i.md = fpext reassoc nsz arcp <4 x float> %i.mc to <4 x double>
  %i.me = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lx, <4 x double> %i.md, <4 x double> %i.lo) ; 2 uses
  %i.mf = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.mg = getelementptr i8, ptr %i.mf, i64 -32
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !9
  %i.mi = fpext reassoc nsz arcp float %i.mh to double
  %i.mj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.lz, double %i.mi, double %i.lm) ; 2 uses
  %i.mk = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ml = getelementptr i8, ptr %i.mk, i64 -36
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !9
  %i.mn = fpext reassoc nsz arcp float %i.mm to double
  %i.mo = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.lz, double %i.mn, double %i.ll) ; 2 uses
  %i.mp = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.mq = getelementptr i8, ptr %i.mp, i64 -52
  %i.mr = load <4 x float>, ptr %i.mq, align 4, !tbaa !9
  %i.ms = fpext reassoc nsz arcp <4 x float> %i.mr to <4 x double>
  %i.mt = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lx, <4 x double> %i.ms, <4 x double> %i.lp) ; 2 uses
  %i.mu = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.mv = getelementptr i8, ptr %i.mu, i64 -60
  %i.mw = load <2 x float>, ptr %i.mv, align 4, !tbaa !9
  %i.mx = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.my = fpext reassoc nsz arcp <2 x float> %i.mx to <2 x double>
  %i.mz = shufflevector <4 x float> %i.lt, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.na = fpext reassoc nsz arcp <2 x float> %i.mz to <2 x double>
  %i.nb = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> %i.my, <2 x double> %i.lq) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.preheader, %middle.block
  %.lcssa77 = phi double [ %i.ks, %middle.block ], [ %i.mj, %.preheader ]
  %.lcssa76 = phi double [ %i.kr, %middle.block ], [ %i.mo, %.preheader ]
  %i.nc = phi <4 x double> [ %i.la, %middle.block ], [ %i.ly, %.preheader ]
  %i.nd = phi <4 x double> [ %i.le, %middle.block ], [ %i.me, %.preheader ]
  %i.ne = phi <4 x double> [ %i.li, %middle.block ], [ %i.mt, %.preheader ]
  %i.nf = phi <2 x double> [ %i.lk, %middle.block ], [ %i.nb, %.preheader ]
  store <4 x double> %i.nc, ptr %3, align 8, !tbaa !11
  %i.ng = shufflevector <4 x double> %i.nd, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.ng, ptr %i.i, align 8, !tbaa !11
  store double %.lcssa77, ptr %i.p, align 8, !tbaa !11
  store double %.lcssa76, ptr %i.r, align 8, !tbaa !11
  %i.nh = shufflevector <4 x double> %i.ne, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.nh, ptr %i.t, align 8, !tbaa !11
  store <2 x double> %i.nf, ptr %i.y, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader30.preheader
end_hunk_1
