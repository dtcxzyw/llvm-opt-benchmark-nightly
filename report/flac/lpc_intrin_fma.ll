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
  %i.e = fpext <4 x float> %i.d to <4 x double>   ; 4 uses
  %i.f = extractelement <4 x double> %i.e, i64 0  ; 8 uses
  %i.g = extractelement <4 x double> %i.e, i64 1  ; 8 uses
  %i.h = extractelement <4 x double> %i.e, i64 2  ; 6 uses
  %i.i = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.j = fpext <4 x float> %i.i to <4 x double>   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.l = load <4 x float>, ptr %0, align 4, !tbaa !9
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.n = fpext <4 x float> %i.m to <4 x double>   ; 6 uses
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
  %4 = fmul reassoc nsz arcp double %i.f, %i.o
  %i.an = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.t, double %i.am)
  %i.ao = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.q, double %4)
  %i.ap = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aq = fpext <2 x float> %i.ap to <2 x double>
  %i.ar = shufflevector <4 x double> %i.n, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.as = insertelement <2 x double> poison, double %i.an, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ao, i64 1
  %i.au = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ar, <2 x double> %i.at) ; 2 uses
  %i.av = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.h, double %i.q, double %i.ai)
  %i.aw = fmul reassoc nsz arcp double %i.h, %i.o
  %i.ax = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ay = insertelement <4 x double> %i.ax, double %i.al, i64 1
  %i.az = insertelement <4 x double> %i.ay, double %i.ak, i64 2
  %i.ba = insertelement <4 x double> %i.az, double %i.aj, i64 3
  %i.bb = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.j, <4 x double> %i.e, <4 x double> %i.ba) ; 6 uses
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.bc, ptr %3, align 8, !tbaa !11
  %5 = load double, ptr %i.k, align 8, !tbaa !11
  %i.bd = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.be = insertelement <4 x double> %i.bd, double %i.av, i64 1
  %i.bf = insertelement <4 x double> %i.be, double %i.aw, i64 2
  %i.bg = insertelement <4 x double> %i.bf, double %5, i64 3
  %i.bh = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.j, <4 x double> %i.n, <4 x double> %i.bg) ; 6 uses
  store <4 x double> %i.bh, ptr %i.c, align 8, !tbaa !11
  %i.bi = icmp sgt i32 %1, 8
  br i1 %i.bi, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader30.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.bj = add nsw i64 %wide.trip.count, -8        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.preheader.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.bj, -4                      ; 3 uses
  %i.bk = add nsw i64 %n.vec, 8
  %i.bl = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bh, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.bm = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bh, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.bn = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bh, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <4 x double> %i.bh, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bp = shufflevector <4 x double> %i.bb, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bq = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bb, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.br = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bb, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.bs = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bb, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.bl, %vector.ph ], [ %i.cr, %vector.body ]
  %vec.phi65 = phi <4 x double> [ %i.bm, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi66 = phi <4 x double> [ %i.bn, %vector.ph ], [ %i.cl, %vector.body ]
  %vec.phi67 = phi <4 x double> [ %i.bo, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi68 = phi <4 x double> [ %i.bp, %vector.ph ], [ %i.cf, %vector.body ]
  %vec.phi69 = phi <4 x double> [ %i.bq, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi70 = phi <4 x double> [ %i.br, %vector.ph ], [ %i.bz, %vector.body ]
  %vec.phi71 = phi <4 x double> [ %i.bs, %vector.ph ], [ %i.bw, %vector.body ]
  %i.bt = getelementptr [4 x i8], ptr %0, i64 %index ; 8 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %wide.load = load <4 x float>, ptr %i.bu, align 4, !tbaa !9
  %i.bv = fpext reassoc nsz arcp <4 x float> %wide.load to <4 x double> ; 9 uses
  %i.bw = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.bv, <4 x double> %vec.phi71) ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bt, i64 28
  %wide.load72 = load <4 x float>, ptr %i.bx, align 4, !tbaa !9
  %i.by = fpext reassoc nsz arcp <4 x float> %wide.load72 to <4 x double>
  %i.bz = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.by, <4 x double> %vec.phi70) ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bt, i64 24
  %wide.load73 = load <4 x float>, ptr %i.ca, align 4, !tbaa !9
  %i.cb = fpext reassoc nsz arcp <4 x float> %wide.load73 to <4 x double>
  %i.cc = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.cb, <4 x double> %vec.phi69) ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bt, i64 20
  %wide.load74 = load <4 x float>, ptr %i.cd, align 4, !tbaa !9
  %i.ce = fpext reassoc nsz arcp <4 x float> %wide.load74 to <4 x double>
  %i.cf = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.ce, <4 x double> %vec.phi68) ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bt, i64 16
  %wide.load75 = load <4 x float>, ptr %i.cg, align 4, !tbaa !9
  %i.ch = fpext reassoc nsz arcp <4 x float> %wide.load75 to <4 x double>
  %i.ci = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.ch, <4 x double> %vec.phi67) ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bt, i64 12
  %wide.load76 = load <4 x float>, ptr %i.cj, align 4, !tbaa !9
  %i.ck = fpext reassoc nsz arcp <4 x float> %wide.load76 to <4 x double>
  %i.cl = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.ck, <4 x double> %vec.phi66) ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bt, i64 8
  %wide.load77 = load <4 x float>, ptr %i.cm, align 4, !tbaa !9
  %i.cn = fpext reassoc nsz arcp <4 x float> %wide.load77 to <4 x double>
  %i.co = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.cn, <4 x double> %vec.phi65) ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bt, i64 4
  %wide.load78 = load <4 x float>, ptr %i.cp, align 4, !tbaa !9
  %i.cq = fpext reassoc nsz arcp <4 x float> %wide.load78 to <4 x double>
  %i.cr = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.cq, <4 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %i.ct = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cr)
  %i.cu = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.co)
  %i.cv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cl)
  %i.cw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ci)
  %i.cx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cf)
  %i.cy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cc)
  %i.cz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bz)
  %i.da = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.bw)
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  %i.db = insertelement <4 x double> poison, double %i.cx, i64 0
  %i.dc = insertelement <4 x double> %i.db, double %i.cy, i64 1
  %i.dd = insertelement <4 x double> %i.dc, double %i.cz, i64 2
  %i.de = insertelement <4 x double> %i.dd, double %i.da, i64 3 ; 2 uses
  %i.df = insertelement <4 x double> poison, double %i.cw, i64 0
  %i.dg = insertelement <4 x double> %i.df, double %i.cv, i64 1
  %i.dh = insertelement <4 x double> %i.dg, double %i.cu, i64 2
  %i.di = insertelement <4 x double> %i.dh, double %i.ct, i64 3 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.preheader.preheader86

.preheader.preheader86:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 8, %.preheader.preheader ], [ %i.bk, %middle.block ]
  %.ph = phi <4 x double> [ %i.bb, %.preheader.preheader ], [ %i.de, %middle.block ]
  %.ph87 = phi <4 x double> [ %i.bh, %.preheader.preheader ], [ %i.di, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader86, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader86 ] ; 4 uses
  %i.dj = phi <4 x double> [ %i.du, %.preheader ], [ %.ph, %.preheader.preheader86 ]
  %i.dk = phi <4 x double> [ %i.ec, %.preheader ], [ %.ph87, %.preheader.preheader86 ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.dm = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.dn = getelementptr i8, ptr %i.dm, i64 -12
  %i.do = load <4 x float>, ptr %i.dn, align 4, !tbaa !9 ; 2 uses
  %i.dp = load float, ptr %i.dl, align 4, !tbaa !9
  %i.dq = fpext <4 x float> %i.do to <4 x double>
  %i.dr = fpext reassoc nsz arcp float %i.dp to double
  %i.ds = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dt = fpext <4 x float> %i.ds to <4 x double>
  %i.du = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dt, <4 x double> %i.dq, <4 x double> %i.dj) ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.dw = getelementptr i8, ptr %i.dv, i64 -28
  %i.dx = load <4 x float>, ptr %i.dw, align 4, !tbaa !9
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dz = fpext <4 x float> %i.dy to <4 x double>
  %i.ea = insertelement <4 x double> poison, double %i.dr, i64 0
  %i.eb = shufflevector <4 x double> %i.ea, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ec = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eb, <4 x double> %i.dz, <4 x double> %i.dk) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %.preheader, %middle.block
  %i.ed = phi <4 x double> [ %i.de, %middle.block ], [ %i.du, %.preheader ]
  %i.ee = phi <4 x double> [ %i.di, %middle.block ], [ %i.ec, %.preheader ]
  %i.ef = shufflevector <4 x double> %i.ed, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.ef, ptr %3, align 8, !tbaa !11
  store <4 x double> %i.ee, ptr %i.c, align 8, !tbaa !11
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
  %i.s = fpext <4 x float> %i.o to <4 x double>   ; 2 uses
  %i.t = extractelement <4 x double> %i.s, i64 0  ; 6 uses
  %i.u = load <4 x float>, ptr %i.g, align 4, !tbaa !9 ; 2 uses
  %i.v = fpext <4 x float> %i.p to <4 x double>   ; 2 uses
  %i.w = extractelement <4 x double> %i.v, i64 0  ; 2 uses
  %i.x = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.y = fpext <2 x float> %i.x to <2 x double>   ; 6 uses
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aa = extractelement <2 x double> %i.y, i64 1 ; 7 uses
  %i.ab = extractelement <2 x double> %i.y, i64 0 ; 6 uses
  %foldExtExtBinop = fmul reassoc nsz arcp <2 x double> %i.y, %i.y
  %i.ac = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ad = fmul reassoc nsz arcp double %i.t, %i.ab
  %4 = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ac)
  %5 = fmul reassoc nsz arcp double %i.aa, %i.ab
  %i.ae = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.t, double %4)
  %i.af = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.aa, double %5)
  %i.ag = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fpext <2 x float> %i.ag to <2 x double> ; 2 uses
  %i.ai = shufflevector <4 x float> %i.o, <4 x float> %i.p, <2 x i32> <i32 0, i32 4>
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  %i.ak = insertelement <2 x double> poison, double %i.af, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ae, i64 1
  %i.am = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.aj, <2 x double> %i.al)
  %i.an = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.ad, i64 1
  %i.ao = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.y, <2 x double> %i.an)
  %i.ap = load <4 x float>, ptr %i.h, align 4, !tbaa !9 ; 2 uses
  %i.aq = fpext <4 x float> %i.q to <4 x double>  ; 3 uses
  %i.ar = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = fpext <4 x float> %i.ar to <4 x double>
  %i.at = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.au = fpext <4 x float> %i.at to <4 x double>
  %i.av = shufflevector <4 x double> %i.au, <4 x double> %i.z, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.aw = shufflevector <4 x double> %i.av, <4 x double> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ax = shufflevector <2 x double> %i.ao, <2 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ay = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.as, <4 x double> %i.aw, <4 x double> %i.ax)
  %i.az = extractelement <4 x double> %i.aq, i64 0 ; 2 uses
  %i.ba = fmul reassoc nsz arcp double %i.az, %i.ab
  %i.bb = load <4 x float>, ptr %i.j, align 4, !tbaa !9 ; 8 uses
  %i.bc = fpext <4 x float> %i.r to <4 x double>  ; 2 uses
  %i.bd = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = fpext <4 x float> %i.bd to <4 x double>
  %i.bf = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.be, <4 x double> %i.s, <4 x double> %i.ay)
  %i.bg = extractelement <4 x double> %i.bc, i64 0 ; 3 uses
  %i.bh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bg, double %i.aa, double %i.ba)
  %i.bi = fmul reassoc nsz arcp double %i.bg, %i.ab
  %i.bj = fpext <4 x float> %i.u to <4 x double>  ; 2 uses
  %i.bk = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = fpext <4 x float> %i.bk to <4 x double>
  %i.bm = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bl, <4 x double> %i.v, <4 x double> %i.bf)
  %i.bn = extractelement <4 x double> %i.bj, i64 0 ; 3 uses
  %i.bo = fpext <4 x float> %i.ap to <4 x double> ; 2 uses
  %i.bp = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = fpext <4 x float> %i.bp to <4 x double>
  %i.br = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bq, <4 x double> %i.aq, <4 x double> %i.bm)
  %i.bs = extractelement <4 x double> %i.bo, i64 0 ; 4 uses
  %i.bt = fpext <4 x float> %i.bb to <4 x double> ; 4 uses
  %i.bu = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fpext <4 x float> %i.bu to <4 x double>
  %i.bw = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bv, <4 x double> %i.bc, <4 x double> %i.br)
  %i.bx = extractelement <4 x double> %i.bt, i64 0 ; 4 uses
  %i.by = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bz = fpext <4 x float> %i.by to <4 x double>
  %i.ca = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bz, <4 x double> %i.bj, <4 x double> %i.bw)
  %i.cb = extractelement <4 x double> %i.bt, i64 1 ; 4 uses
  %i.cc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cd = fpext <4 x float> %i.cc to <4 x double> ; 2 uses
  %i.ce = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cd, <4 x double> %i.bo, <4 x double> %i.ca)
  %i.cf = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cg = fpext <4 x float> %i.cf to <4 x double> ; 2 uses
  %i.ch = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cg, <4 x double> %i.bt, <4 x double> %i.ce) ; 6 uses
  %i.ci = shufflevector <4 x double> %i.ch, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.ci, ptr %3, align 8, !tbaa !11
  %6 = load double, ptr %i.i, align 8, !tbaa !11
  %i.cj = load <4 x float>, ptr %i.c, align 4, !tbaa !9
  %i.ck = load <4 x float>, ptr %i.d, align 4, !tbaa !9
  %i.cl = fpext <4 x float> %i.cj to <4 x double> ; 3 uses
  %i.cm = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bn, double %i.t, double %i.bh)
  %i.cn = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bn, double %i.aa, double %i.bi)
  %7 = fmul reassoc nsz arcp double %i.bn, %i.ab
  %i.co = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bs, double %i.w, double %i.cm)
  %i.cp = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bs, double %i.t, double %i.cn)
  %i.cq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bs, double %i.aa, double %7)
  %i.cr = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bs, double %i.ab, double %6)
  %i.cs = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bx, double %i.az, double %i.co)
  %i.ct = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bx, double %i.w, double %i.cp)
  %i.cu = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cb, double %i.bg, double %i.cs)
  %i.cv = fpext <4 x float> %i.ck to <4 x double> ; 2 uses
  %i.cw = extractelement <4 x double> %i.cv, i64 0
  %i.cx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cb, double %i.cw, double %i.ct)
  %i.cy = extractelement <4 x double> %i.cl, i64 0
  %i.cz = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.da = fpext <2 x float> %i.cz to <2 x double> ; 5 uses
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dc = extractelement <2 x double> %i.da, i64 1
  %i.dd = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bx, double %i.dc, double %i.cr)
  %i.de = load <2 x double>, ptr %i.n, align 8, !tbaa !11
  %i.df = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dg = fpext <2 x float> %i.df to <2 x double> ; 2 uses
  %i.dh = insertelement <2 x double> %i.dg, double -0.000000e+00, i64 1
  %i.di = insertelement <2 x double> %i.da, double 0.000000e+00, i64 1
  %i.dj = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.di, <2 x double> %i.de)
  %i.dk = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dl = fpext <2 x float> %i.dk to <2 x double> ; 2 uses
  %i.dm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.db, <2 x double> %i.dj) ; 4 uses
  %i.dn = load <2 x double>, ptr %i.l, align 8, !tbaa !11
  %i.do = fpext reassoc nsz arcp float %i.k to double ; 4 uses
  %i.dp = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bx, double %i.do, double %i.cq)
  %i.dq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cb, double %i.cy, double %i.dp)
  %i.dr = shufflevector <4 x double> %i.bt, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ds = insertelement <2 x double> %i.dr, double 0.000000e+00, i64 1
  %i.dt = insertelement <2 x double> %i.da, double -0.000000e+00, i64 1
  %i.du = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.dt, <2 x double> %i.dn)
  %i.dv = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cb, double %i.do, double %i.dd)
  %i.dw = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = fpext <2 x float> %i.dw to <2 x double>
  %i.dy = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.db, <2 x double> %i.du)
  %i.dz = insertelement <4 x double> poison, double %i.dv, i64 0
  %i.ea = insertelement <4 x double> %i.dz, double %i.dq, i64 1
  %i.eb = insertelement <4 x double> %i.ea, double %i.cx, i64 2
  %i.ec = insertelement <4 x double> %i.eb, double %i.cu, i64 3
  %i.ed = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cd, <4 x double> %i.cl, <4 x double> %i.ec)
  %i.ee = insertelement <2 x double> %i.da, double %i.do, i64 0
  %i.ef = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.ee, <2 x double> %i.dy)
  %i.eg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cg, <4 x double> %i.cv, <4 x double> %i.ed) ; 6 uses
  %i.eh = shufflevector <4 x double> %i.eg, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.eh, ptr %i.e, align 8, !tbaa !11
  %i.ei = shufflevector <4 x double> %i.cl, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ej = insertelement <2 x double> %i.ei, double %i.do, i64 1
  %i.ek = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.ej, <2 x double> %i.ef) ; 5 uses
  %i.el = shufflevector <2 x double> %i.dm, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.em = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.en = shufflevector <2 x double> %i.ek, <2 x double> %i.dm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.en, ptr %i.l, align 8, !tbaa !11
  %i.eo = icmp sgt i32 %1, 12
  br i1 %i.eo, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader30.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.ep = add nsw i64 %wide.trip.count, -12       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ep, 4
  %i.eq = extractelement <2 x double> %i.ek, i64 0
  %i.er = extractelement <2 x double> %i.ek, i64 1
  br i1 %min.iters.check, label %.preheader.preheader107, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.ep, -4                      ; 3 uses
  %i.es = add nsw i64 %n.vec, 12
  %i.et = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.el, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.eu = shufflevector <2 x double> %i.dm, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <4 x double> %i.eu, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ew = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.em, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ex = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x double> %i.ex, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ez = shufflevector <4 x double> %i.eg, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fa = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.eg, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.fb = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.eg, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.fc = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.eg, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.fd = shufflevector <4 x double> %i.ch, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fe = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ch, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ff = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ch, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.fg = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ch, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.et, %vector.ph ], [ %i.gr, %vector.body ]
  %vec.phi73 = phi <4 x double> [ %i.ev, %vector.ph ], [ %i.go, %vector.body ]
  %vec.phi74 = phi <4 x double> [ %i.ew, %vector.ph ], [ %i.gl, %vector.body ]
  %vec.phi75 = phi <4 x double> [ %i.ey, %vector.ph ], [ %i.gi, %vector.body ]
  %vec.phi76 = phi <4 x double> [ %i.ez, %vector.ph ], [ %i.gf, %vector.body ]
  %vec.phi77 = phi <4 x double> [ %i.fa, %vector.ph ], [ %i.gc, %vector.body ]
  %vec.phi78 = phi <4 x double> [ %i.fb, %vector.ph ], [ %i.fz, %vector.body ]
  %vec.phi79 = phi <4 x double> [ %i.fc, %vector.ph ], [ %i.fw, %vector.body ]
  %vec.phi80 = phi <4 x double> [ %i.fd, %vector.ph ], [ %i.ft, %vector.body ]
  %vec.phi81 = phi <4 x double> [ %i.fe, %vector.ph ], [ %i.fq, %vector.body ]
  %vec.phi82 = phi <4 x double> [ %i.ff, %vector.ph ], [ %i.fn, %vector.body ]
  %vec.phi83 = phi <4 x double> [ %i.fg, %vector.ph ], [ %i.fk, %vector.body ]
  %i.fh = getelementptr [4 x i8], ptr %0, i64 %index ; 12 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 48
  %wide.load = load <4 x float>, ptr %i.fi, align 4, !tbaa !9
  %i.fj = fpext reassoc nsz arcp <4 x float> %wide.load to <4 x double> ; 13 uses
  %i.fk = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.fj, <4 x double> %vec.phi83) ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fh, i64 44
  %wide.load84 = load <4 x float>, ptr %i.fl, align 4, !tbaa !9
  %i.fm = fpext reassoc nsz arcp <4 x float> %wide.load84 to <4 x double>
  %i.fn = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.fm, <4 x double> %vec.phi82) ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fh, i64 40
  %wide.load85 = load <4 x float>, ptr %i.fo, align 4, !tbaa !9
  %i.fp = fpext reassoc nsz arcp <4 x float> %wide.load85 to <4 x double>
  %i.fq = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.fp, <4 x double> %vec.phi81) ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fh, i64 36
  %wide.load86 = load <4 x float>, ptr %i.fr, align 4, !tbaa !9
  %i.fs = fpext reassoc nsz arcp <4 x float> %wide.load86 to <4 x double>
  %i.ft = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.fs, <4 x double> %vec.phi80) ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fh, i64 32
  %wide.load87 = load <4 x float>, ptr %i.fu, align 4, !tbaa !9
  %i.fv = fpext reassoc nsz arcp <4 x float> %wide.load87 to <4 x double>
  %i.fw = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.fv, <4 x double> %vec.phi79) ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fh, i64 28
  %wide.load88 = load <4 x float>, ptr %i.fx, align 4, !tbaa !9
  %i.fy = fpext reassoc nsz arcp <4 x float> %wide.load88 to <4 x double>
  %i.fz = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.fy, <4 x double> %vec.phi78) ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fh, i64 24
  %wide.load89 = load <4 x float>, ptr %i.ga, align 4, !tbaa !9
  %i.gb = fpext reassoc nsz arcp <4 x float> %wide.load89 to <4 x double>
  %i.gc = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.gb, <4 x double> %vec.phi77) ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fh, i64 20
  %wide.load90 = load <4 x float>, ptr %i.gd, align 4, !tbaa !9
  %i.ge = fpext reassoc nsz arcp <4 x float> %wide.load90 to <4 x double>
  %i.gf = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.ge, <4 x double> %vec.phi76) ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fh, i64 16
  %wide.load91 = load <4 x float>, ptr %i.gg, align 4, !tbaa !9
  %i.gh = fpext reassoc nsz arcp <4 x float> %wide.load91 to <4 x double>
  %i.gi = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.gh, <4 x double> %vec.phi75) ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fh, i64 12
  %wide.load92 = load <4 x float>, ptr %i.gj, align 4, !tbaa !9
  %i.gk = fpext reassoc nsz arcp <4 x float> %wide.load92 to <4 x double>
  %i.gl = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.gk, <4 x double> %vec.phi74) ; 2 uses
  %i.gm = getelementptr i8, ptr %i.fh, i64 8
  %wide.load93 = load <4 x float>, ptr %i.gm, align 4, !tbaa !9
  %i.gn = fpext reassoc nsz arcp <4 x float> %wide.load93 to <4 x double>
  %i.go = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.gn, <4 x double> %vec.phi73) ; 2 uses
  %i.gp = getelementptr i8, ptr %i.fh, i64 4
  %wide.load94 = load <4 x float>, ptr %i.gp, align 4, !tbaa !9
  %i.gq = fpext reassoc nsz arcp <4 x float> %wide.load94 to <4 x double>
  %i.gr = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fj, <4 x double> %i.gq, <4 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.gt = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gr)
  %i.gu = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.go)
  %i.gv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gl) ; 2 uses
  %i.gw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gi) ; 2 uses
  %i.gx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gf)
  %i.gy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gc)
  %i.gz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fz)
  %i.ha = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fw)
  %i.hb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ft)
  %i.hc = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fq)
  %i.hd = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fn)
  %i.he = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fk)
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  %i.hf = insertelement <4 x double> poison, double %i.hb, i64 0
  %i.hg = insertelement <4 x double> %i.hf, double %i.hc, i64 1
  %i.hh = insertelement <4 x double> %i.hg, double %i.hd, i64 2
  %i.hi = insertelement <4 x double> %i.hh, double %i.he, i64 3 ; 2 uses
  %i.hj = insertelement <4 x double> poison, double %i.gx, i64 0
  %i.hk = insertelement <4 x double> %i.hj, double %i.gy, i64 1
  %i.hl = insertelement <4 x double> %i.hk, double %i.gz, i64 2
  %i.hm = insertelement <4 x double> %i.hl, double %i.ha, i64 3 ; 2 uses
  %i.hn = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %i.gt, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.preheader.preheader107

.preheader.preheader107:                          ; preds = %.preheader.preheader, %middle.block
  %.ph = phi double [ %i.er, %.preheader.preheader ], [ %i.gv, %middle.block ]
  %.ph108 = phi double [ %i.eq, %.preheader.preheader ], [ %i.gw, %middle.block ]
  %indvars.iv.ph = phi i64 [ 12, %.preheader.preheader ], [ %i.es, %middle.block ]
  %.ph109 = phi <4 x double> [ %i.ch, %.preheader.preheader ], [ %i.hi, %middle.block ]
  %.ph110 = phi <4 x double> [ %i.eg, %.preheader.preheader ], [ %i.hm, %middle.block ]
  %.ph111 = phi <2 x double> [ %i.dm, %.preheader.preheader ], [ %i.ho, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader107, %.preheader
  %i.hp = phi double [ %i.iu, %.preheader ], [ %.ph, %.preheader.preheader107 ]
  %i.hq = phi double [ %i.ip, %.preheader ], [ %.ph108, %.preheader.preheader107 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader107 ] ; 7 uses
  %i.hr = phi <4 x double> [ %i.id, %.preheader ], [ %.ph109, %.preheader.preheader107 ]
  %i.hs = phi <4 x double> [ %i.ik, %.preheader ], [ %.ph110, %.preheader.preheader107 ]
  %i.ht = phi <2 x double> [ %i.jc, %.preheader ], [ %.ph111, %.preheader.preheader107 ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.hv = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.hw = getelementptr i8, ptr %i.hv, i64 -12
  %i.hx = load <4 x float>, ptr %i.hw, align 4, !tbaa !9 ; 2 uses
  %i.hy = load float, ptr %i.hu, align 4, !tbaa !9
  %i.hz = fpext <4 x float> %i.hx to <4 x double>
  %i.ia = fpext reassoc nsz arcp float %i.hy to double ; 4 uses
  %i.ib = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ic = fpext <4 x float> %i.ib to <4 x double>
  %i.id = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ic, <4 x double> %i.hz, <4 x double> %i.hr) ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.if = getelementptr i8, ptr %i.ie, i64 -28
  %i.ig = load <4 x float>, ptr %i.if, align 4, !tbaa !9
  %i.ih = fpext <4 x float> %i.ig to <4 x double>
  %i.ii = insertelement <4 x double> poison, double %i.ia, i64 0
  %i.ij = shufflevector <4 x double> %i.ii, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ik = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ij, <4 x double> %i.ih, <4 x double> %i.hs) ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.im = getelementptr i8, ptr %i.il, i64 -32
  %i.in = load float, ptr %i.im, align 4, !tbaa !9
  %i.io = fpext reassoc nsz arcp float %i.in to double
  %i.ip = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ia, double %i.io, double %i.hq) ; 2 uses
  %i.iq = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ir = getelementptr i8, ptr %i.iq, i64 -36
  %i.is = load float, ptr %i.ir, align 4, !tbaa !9
  %i.it = fpext reassoc nsz arcp float %i.is to double
  %i.iu = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ia, double %i.it, double %i.hp) ; 2 uses
  %i.iv = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.iw = getelementptr i8, ptr %i.iv, i64 -44
  %i.ix = load <2 x float>, ptr %i.iw, align 4, !tbaa !9
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iz = fpext <2 x float> %i.iy to <2 x double>
  %i.ja = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.iz, <2 x double> %i.ht) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %.preheader, %middle.block
  %.lcssa64 = phi double [ %i.gw, %middle.block ], [ %i.ip, %.preheader ]
  %.lcssa63 = phi double [ %i.gv, %middle.block ], [ %i.iu, %.preheader ]
  %i.jd = phi <4 x double> [ %i.hi, %middle.block ], [ %i.id, %.preheader ]
  %i.je = phi <4 x double> [ %i.hm, %middle.block ], [ %i.ik, %.preheader ]
  %i.jf = phi <2 x double> [ %i.ho, %middle.block ], [ %i.jc, %.preheader ]
  %i.jg = shufflevector <4 x double> %i.jd, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.jg, ptr %3, align 8, !tbaa !11
  %i.jh = shufflevector <4 x double> %i.je, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.jh, ptr %i.e, align 8, !tbaa !11
  store double %.lcssa64, ptr %i.l, align 8, !tbaa !11
  store double %.lcssa63, ptr %i.m, align 8, !tbaa !11
  store <2 x double> %i.jf, ptr %i.n, align 8, !tbaa !11
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
  %i.ab = load <4 x float>, ptr %i.d, align 4, !tbaa !9 ; 2 uses
  %i.ac = load <4 x float>, ptr %i.f, align 4, !tbaa !9
  %i.ad = load <4 x float>, ptr %i.h, align 4, !tbaa !9
  %i.ae = fpext <4 x float> %i.ab to <4 x double> ; 3 uses
  %i.af = extractelement <4 x double> %i.ae, i64 3 ; 10 uses
  %i.ag = load <8 x float>, ptr %i.o, align 4, !tbaa !9
  %i.ah = fpext <8 x float> %i.ag to <8 x double> ; 19 uses
  %i.ai = extractelement <8 x double> %i.ah, i64 0 ; 9 uses
  %i.aj = extractelement <4 x double> %i.ae, i64 0 ; 2 uses
  %i.ak = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.al = fpext <2 x float> %i.ak to <2 x double> ; 6 uses
  %i.am = extractelement <2 x double> %i.al, i64 0 ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp <2 x double> %i.al, %i.al
  %i.an = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ao = extractelement <2 x double> %i.al, i64 1 ; 8 uses
  %i.ap = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.an)
  %i.aq = fmul reassoc nsz arcp double %i.ao, %i.am
  %i.ar = insertelement <2 x double> poison, double %i.n, i64 0
  %i.as = load float, ptr %i.d, align 4, !tbaa !9
  %i.at = fpext reassoc nsz arcp float %i.as to double ; 9 uses
  %i.au = load <2 x float>, ptr %i.f, align 4, !tbaa !9
  %i.av = fpext <2 x float> %i.au to <2 x double> ; 4 uses
  %i.aw = load float, ptr %i.k, align 4, !tbaa !9
  %i.ax = fpext reassoc nsz arcp float %i.aw to double ; 11 uses
  %i.ay = load float, ptr %i.l, align 4, !tbaa !9
  %i.az = fpext reassoc nsz arcp float %i.ay to double ; 11 uses
  %i.ba = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.ap)
  %i.bb = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.at, double %i.ao, double %i.aq)
  %i.bc = fmul reassoc nsz arcp double %i.am, %i.at
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
  %4 = fmul reassoc nsz arcp double %i.af, %i.am
  %i.by = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.bt)
  %i.bz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.af, double %i.bu)
  %i.ca = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.bi, double %i.bv)
  %i.cb = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.bd, double %i.bw)
  %i.cc = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.at, double %i.bx)
  %i.cd = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ax, double %i.ao, double %4)
  %i.ce = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.az, double %i.by)
  %i.cf = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.ax, double %i.bz)
  %i.cg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.af, double %i.ca)
  %i.ch = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.bi, double %i.cb)
  %i.ci = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.bd, double %i.cc)
  %i.cj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.az, double %i.at, double %i.cd)
  %i.ck = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.ai, double %i.ce)
  %i.cl = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.az, double %i.cf)
  %i.cm = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.ax, double %i.cg)
  %i.cn = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.af, double %i.ch)
  %i.co = shufflevector <8 x double> %i.ah, <8 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.ci, i64 1
  %i.cr = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.av, <2 x double> %i.cq)
  %i.cs = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ct = fpext <2 x float> %i.cs to <2 x double>
  %i.cu = extractelement <8 x double> %i.ah, i64 1 ; 10 uses
  %i.cv = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cu, double %i.cu, double %i.ck)
  %i.cw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cu, double %i.ai, double %i.cl)
  %i.cx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cu, double %i.az, double %i.cm)
  %i.cy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cu, double %i.ax, double %i.cn)
  %i.cz = load <4 x float>, ptr %i.j, align 4, !tbaa !9
  %i.da = fpext <4 x float> %i.ac to <4 x double> ; 2 uses
  %i.db = load <4 x float>, ptr %i.k, align 4, !tbaa !9
  %i.dc = fpext <4 x float> %i.ad to <4 x double> ; 2 uses
  %i.dd = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.de = extractelement <8 x double> %i.ah, i64 2 ; 10 uses
  %i.df = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.de, double %i.de, double %i.cv)
  %i.dg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.de, double %i.cu, double %i.cw)
  %i.dh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.de, double %i.ai, double %i.cx)
  %i.di = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.de, double %i.az, double %i.cy)
  %i.dj = load <4 x float>, ptr %i.l, align 4, !tbaa !9
  %i.dk = fpext <4 x float> %i.cz to <4 x double>
  %i.dl = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dm = extractelement <8 x double> %i.ah, i64 3 ; 9 uses
  %i.dn = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dm, double %i.dm, double %i.df)
  %i.do = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dm, double %i.de, double %i.dg)
  %i.dp = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dm, double %i.cu, double %i.dh)
  %i.dq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dm, double %i.ai, double %i.di)
  %i.dr = load <4 x float>, ptr %i.o, align 4, !tbaa !9
  %i.ds = fpext <4 x float> %i.db to <4 x double> ; 2 uses
  %i.dt = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.du = extractelement <4 x double> %i.da, i64 0 ; 2 uses
  %i.dv = extractelement <8 x double> %i.ah, i64 4 ; 10 uses
  %i.dw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.dv, double %i.dn)
  %i.dx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.dm, double %i.do)
  %i.dy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.de, double %i.dp)
  %i.dz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.cu, double %i.dq)
  %i.ea = fpext <4 x float> %i.dj to <4 x double> ; 2 uses
  %i.eb = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ec = extractelement <4 x double> %i.dc, i64 0
  %i.ed = extractelement <8 x double> %i.ah, i64 5 ; 9 uses
  %i.ee = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ed, double %i.ed, double %i.dw)
  %i.ef = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ed, double %i.dv, double %i.dx)
  %i.eg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ed, double %i.dm, double %i.dy)
  %i.eh = fpext <4 x float> %i.dr to <4 x double> ; 3 uses
  %i.ei = extractelement <4 x double> %i.eh, i64 2
  %i.ej = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ed, double %i.ei, double %i.dz)
  %i.ek = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5> ; 2 uses
  %i.el = extractelement <8 x double> %i.ah, i64 6 ; 9 uses
  %i.em = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.el, double %i.el, double %i.ee)
  %i.en = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.el, double %i.ed, double %i.ef)
  %i.eo = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.el, double %i.dv, double %i.eg)
  %i.ep = extractelement <4 x double> %i.eh, i64 3
  %i.eq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.el, double %i.ep, double %i.ej)
  %i.er = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6> ; 2 uses
  %i.es = extractelement <4 x double> %i.ds, i64 0 ; 2 uses
  %i.et = extractelement <8 x double> %i.ah, i64 7 ; 7 uses
  %i.eu = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.et, double %i.et, double %i.em)
  store double %i.eu, ptr %3, align 8, !tbaa !11
  %i.ev = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.et, double %i.el, double %i.en)
  store double %i.ev, ptr %i.c, align 8, !tbaa !11
  %i.ew = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.et, double %i.ed, double %i.eo)
  store double %i.ew, ptr %i.e, align 8, !tbaa !11
  %i.ex = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.et, double %i.aa, double %i.eq)
  store double %i.ex, ptr %i.g, align 8, !tbaa !11
  %i.ey = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7> ; 2 uses
  %i.ez = extractelement <4 x double> %i.ea, i64 0
  %i.fa = load double, ptr %i.w, align 8, !tbaa !11
  %i.fb = load <4 x float>, ptr %i.b, align 4, !tbaa !9
  %i.fc = load <4 x float>, ptr %0, align 4, !tbaa !9
  %i.fd = load <4 x float>, ptr %i.d, align 4, !tbaa !9
  %i.fe = fpext <4 x float> %i.fb to <4 x double> ; 2 uses
  %i.ff = fpext <4 x float> %i.fc to <4 x double> ; 2 uses
  %i.fg = load double, ptr %i.x, align 8, !tbaa !11
  %i.fh = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.fi = load double, ptr %i.t, align 8, !tbaa !11
  %i.fj = load double, ptr %i.u, align 8, !tbaa !11
  %i.fk = fpext <2 x float> %i.fh to <2 x double> ; 4 uses
  %i.fl = shufflevector <2 x double> %i.ct, <2 x double> %i.fk, <2 x i32> <i32 3, i32 1>
  %i.fm = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.fl, <2 x double> %i.bs)
  %i.fn = extractelement <2 x double> %i.fk, i64 0 ; 3 uses
  %i.fo = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ai, double %i.fn, double %i.q)
  %i.fp = shufflevector <2 x double> %i.fm, <2 x double> %i.cr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fq = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dd, <4 x double> %i.ae, <4 x double> %i.fp)
  %i.fr = extractelement <2 x double> %i.fk, i64 1 ; 2 uses
  %i.fs = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cu, double %i.fr, double %i.fo)
  %i.ft = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cu, double %i.fn, double %i.s)
  %i.fu = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dl, <4 x double> %i.da, <4 x double> %i.fq)
  %i.fv = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.de, double %i.aj, double %i.fs)
  %i.fw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.de, double %i.fr, double %i.ft)
  %i.fx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.de, double %i.fn, double %i.fi)
  %i.fy = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dt, <4 x double> %i.dc, <4 x double> %i.fu)
  %i.fz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dm, double %i.du, double %i.fv)
  %i.ga = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dm, double %i.aj, double %i.fw)
  %i.gb = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eb, <4 x double> %i.dk, <4 x double> %i.fy)
  %i.gc = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.ec, double %i.fz)
  %i.gd = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.du, double %i.ga)
  %i.ge = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ek, <4 x double> %i.ds, <4 x double> %i.gb)
  %i.gf = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.er, <4 x double> %i.ea, <4 x double> %i.ge)
  %i.gg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ey, <4 x double> %i.eh, <4 x double> %i.gf) ; 6 uses
  %i.gh = shufflevector <4 x double> %i.gg, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.gh, ptr %i.i, align 8, !tbaa !11
  %i.gi = shufflevector <8 x double> %i.ah, <8 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.gj = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.fx, i64 1
  %i.gl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.fk, <2 x double> %i.gk)
  %i.gm = shufflevector <8 x double> %i.ah, <8 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.gn = shufflevector <4 x double> %i.fe, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.go = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.gn, <2 x double> %i.gl)
  %i.gp = extractelement <4 x double> %i.ff, i64 0 ; 2 uses
  %i.gq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dv, double %i.gp, double %i.fa)
  %i.gr = fpext <4 x float> %i.fd to <4 x double> ; 3 uses
  %i.gs = extractelement <4 x double> %i.gr, i64 3 ; 2 uses
  %i.gt = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ed, double %i.gs, double %i.gc)
  %i.gu = extractelement <4 x double> %i.gr, i64 2
  %i.gv = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ed, double %i.gu, double %i.gd)
  %i.gw = insertelement <4 x double> poison, double %i.fg, i64 0
  %i.gx = insertelement <4 x double> %i.gw, double %i.gq, i64 1
  %i.gy = shufflevector <2 x double> %i.go, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gz = shufflevector <4 x double> %i.gx, <4 x double> %i.gy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ha = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ek, <4 x double> %i.ff, <4 x double> %i.gz)
  %i.hb = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.el, double %i.es, double %i.gt)
  %i.hc = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.el, double %i.gs, double %i.gv)
  %i.hd = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.er, <4 x double> %i.fe, <4 x double> %i.ha)
  %i.he = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.et, double %i.ez, double %i.hb) ; 3 uses
  %i.hf = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ey, <4 x double> %i.gr, <4 x double> %i.hd) ; 7 uses
  %i.hg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.et, double %i.es, double %i.hc) ; 3 uses
  %i.hh = shufflevector <4 x double> %i.hf, <4 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %i.hi = insertelement <4 x double> %i.hh, double %i.he, i64 0
  %i.hj = insertelement <4 x double> %i.hi, double %i.hg, i64 1
  store <4 x double> %i.hj, ptr %i.p, align 8, !tbaa !11
  %i.hk = shufflevector <4 x double> %i.hf, <4 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hk, ptr %i.w, align 8, !tbaa !11
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.hm = load double, ptr %i.y, align 8, !tbaa !11
  %i.hn = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.el, double %i.gp, double %i.hm)
  %i.ho = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hq = fpext <2 x float> %i.hp to <2 x double>
  %i.hr = load double, ptr %i.hl, align 8, !tbaa !11
  %i.hs = shufflevector <8 x double> %i.ah, <8 x double> poison, <2 x i32> <i32 7, i32 7>
  %i.ht = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hr, i64 1
  %i.hv = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hs, <2 x double> %i.hq, <2 x double> %i.hu)
  store <2 x double> %i.hv, ptr %i.y, align 8, !tbaa !11
  %i.hw = icmp sgt i32 %1, 16
  br i1 %i.hw, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %.preheader30.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.hx = load <4 x double>, ptr %3, align 8, !tbaa !11 ; 5 uses
  %i.hy = load <2 x double>, ptr %i.y, align 8, !tbaa !11 ; 2 uses
  %i.hz = add nsw i64 %wide.trip.count, -16       ; 3 uses
  %min.iters.check = icmp ult i64 %i.hz, 4
  br i1 %min.iters.check, label %.preheader.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.hz, -4                      ; 3 uses
  %i.ia = add nsw i64 %n.vec, 16
  %i.ib = shufflevector <2 x double> %i.hy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ic = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ib, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.id = shufflevector <4 x double> %i.ib, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ie = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hx, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.if = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hx, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.ig = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hx, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ih = shufflevector <4 x double> %i.hx, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ii = shufflevector <4 x double> %i.hf, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ij = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hf, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ik = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hf, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.il = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hf, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.im = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.hg, i64 0
  %i.in = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.he, i64 0
  %i.io = shufflevector <4 x double> %i.gg, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ip = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gg, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.iq = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gg, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.ir = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gg, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.ic, %vector.ph ], [ %i.ko, %vector.body ]
  %vec.phi86 = phi <4 x double> [ %i.id, %vector.ph ], [ %i.kl, %vector.body ]
  %vec.phi87 = phi <4 x double> [ %i.ie, %vector.ph ], [ %i.je, %vector.body ]
end_hunk_0
