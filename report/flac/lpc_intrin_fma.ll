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
  %i.an = fmul reassoc nsz arcp double %i.f, %i.o
  %i.ao = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.t, double %i.am)
  %i.ap = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.g, double %i.q, double %i.an)
  %i.aq = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
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
  %i.bn = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bj, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bj, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.bp = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bj, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bq = shufflevector <4 x double> %i.bj, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.br = shufflevector <4 x double> %i.bc, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bs = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bc, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bt = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bc, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.bu = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.bc, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.bn, %vector.ph ], [ %i.ct, %vector.body ]
  %vec.phi65 = phi <4 x double> [ %i.bo, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi66 = phi <4 x double> [ %i.bp, %vector.ph ], [ %i.cn, %vector.body ]
  %vec.phi67 = phi <4 x double> [ %i.bq, %vector.ph ], [ %i.ck, %vector.body ]
  %vec.phi68 = phi <4 x double> [ %i.br, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi69 = phi <4 x double> [ %i.bs, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi70 = phi <4 x double> [ %i.bt, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi71 = phi <4 x double> [ %i.bu, %vector.ph ], [ %i.by, %vector.body ]
  %i.bv = getelementptr [4 x i8], ptr %0, i64 %index ; 8 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %wide.load = load <4 x float>, ptr %i.bw, align 4, !tbaa !9
  %i.bx = fpext reassoc nsz arcp <4 x float> %wide.load to <4 x double> ; 9 uses
  %i.by = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.bx, <4 x double> %vec.phi71) ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bv, i64 28
  %wide.load72 = load <4 x float>, ptr %i.bz, align 4, !tbaa !9
  %i.ca = fpext reassoc nsz arcp <4 x float> %wide.load72 to <4 x double>
  %i.cb = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.ca, <4 x double> %vec.phi70) ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bv, i64 24
  %wide.load73 = load <4 x float>, ptr %i.cc, align 4, !tbaa !9
  %i.cd = fpext reassoc nsz arcp <4 x float> %wide.load73 to <4 x double>
  %i.ce = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.cd, <4 x double> %vec.phi69) ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bv, i64 20
  %wide.load74 = load <4 x float>, ptr %i.cf, align 4, !tbaa !9
  %i.cg = fpext reassoc nsz arcp <4 x float> %wide.load74 to <4 x double>
  %i.ch = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.cg, <4 x double> %vec.phi68) ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bv, i64 16
  %wide.load75 = load <4 x float>, ptr %i.ci, align 4, !tbaa !9
  %i.cj = fpext reassoc nsz arcp <4 x float> %wide.load75 to <4 x double>
  %i.ck = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.cj, <4 x double> %vec.phi67) ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 12
  %wide.load76 = load <4 x float>, ptr %i.cl, align 4, !tbaa !9
  %i.cm = fpext reassoc nsz arcp <4 x float> %wide.load76 to <4 x double>
  %i.cn = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.cm, <4 x double> %vec.phi66) ; 2 uses
  %i.co = getelementptr i8, ptr %i.bv, i64 8
  %wide.load77 = load <4 x float>, ptr %i.co, align 4, !tbaa !9
  %i.cp = fpext reassoc nsz arcp <4 x float> %wide.load77 to <4 x double>
  %i.cq = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.cp, <4 x double> %vec.phi65) ; 2 uses
  %i.cr = getelementptr i8, ptr %i.bv, i64 4
  %wide.load78 = load <4 x float>, ptr %i.cr, align 4, !tbaa !9
  %i.cs = fpext reassoc nsz arcp <4 x float> %wide.load78 to <4 x double>
  %i.ct = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.cs, <4 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %i.cv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ct)
  %i.cw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cq)
  %i.cx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cn)
  %i.cy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ck)
  %i.cz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ch)
  %i.da = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ce)
  %i.db = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.cb)
  %i.dc = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.by)
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  %i.dd = insertelement <4 x double> poison, double %i.cz, i64 0
  %i.de = insertelement <4 x double> %i.dd, double %i.da, i64 1
  %i.df = insertelement <4 x double> %i.de, double %i.db, i64 2
  %i.dg = insertelement <4 x double> %i.df, double %i.dc, i64 3 ; 2 uses
  %i.dh = insertelement <4 x double> poison, double %i.cy, i64 0
  %i.di = insertelement <4 x double> %i.dh, double %i.cx, i64 1
  %i.dj = insertelement <4 x double> %i.di, double %i.cw, i64 2
  %i.dk = insertelement <4 x double> %i.dj, double %i.cv, i64 3 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.preheader.preheader86

.preheader.preheader86:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 8, %.preheader.preheader ], [ %i.bm, %middle.block ]
  %.ph = phi <4 x double> [ %i.bc, %.preheader.preheader ], [ %i.dg, %middle.block ]
  %.ph87 = phi <4 x double> [ %i.bj, %.preheader.preheader ], [ %i.dk, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader86, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader86 ] ; 4 uses
  %i.dl = phi <4 x double> [ %i.dw, %.preheader ], [ %.ph, %.preheader.preheader86 ]
  %i.dm = phi <4 x double> [ %i.ee, %.preheader ], [ %.ph87, %.preheader.preheader86 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.do = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.dp = getelementptr i8, ptr %i.do, i64 -12
  %i.dq = load <4 x float>, ptr %i.dp, align 4, !tbaa !9 ; 2 uses
  %i.dr = load float, ptr %i.dn, align 4, !tbaa !9
  %i.ds = fpext <4 x float> %i.dq to <4 x double>
  %i.dt = fpext reassoc nsz arcp float %i.dr to double
  %i.du = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dv = fpext <4 x float> %i.du to <4 x double>
  %i.dw = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dv, <4 x double> %i.ds, <4 x double> %i.dl) ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.dy = getelementptr i8, ptr %i.dx, i64 -28
  %i.dz = load <4 x float>, ptr %i.dy, align 4, !tbaa !9
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.eb = fpext <4 x float> %i.ea to <4 x double>
  %i.ec = insertelement <4 x double> poison, double %i.dt, i64 0
  %i.ed = shufflevector <4 x double> %i.ec, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ee = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ed, <4 x double> %i.eb, <4 x double> %i.dm) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %.preheader, %middle.block
  %i.ef = phi <4 x double> [ %i.dg, %middle.block ], [ %i.dw, %.preheader ]
  %i.eg = phi <4 x double> [ %i.dk, %middle.block ], [ %i.ee, %.preheader ]
  %i.eh = shufflevector <4 x double> %i.ef, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.eh, ptr %3, align 8, !tbaa !11
  store <4 x double> %i.eg, ptr %i.c, align 8, !tbaa !11
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
  %i.ae = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.aa, double %i.aa, double %i.ac)
  %i.af = fmul reassoc nsz arcp double %i.aa, %i.ab
  %i.ag = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.ae)
  %i.ah = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.t, double %i.aa, double %i.af)
  %i.ai = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fpext <2 x float> %i.ai to <2 x double> ; 2 uses
  %i.ak = shufflevector <4 x float> %i.o, <4 x float> %i.p, <2 x i32> <i32 0, i32 4>
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ag, i64 1
  %i.ao = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.al, <2 x double> %i.an)
  %i.ap = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.ad, i64 1
  %i.aq = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %i.y, <2 x double> %i.ap)
  %i.ar = load <4 x float>, ptr %i.h, align 4, !tbaa !9 ; 2 uses
  %i.as = fpext <4 x float> %i.q to <4 x double>  ; 3 uses
  %i.at = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fpext <4 x float> %i.at to <4 x double>
  %i.av = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.aw = fpext <4 x float> %i.av to <4 x double>
  %i.ax = shufflevector <4 x double> %i.aw, <4 x double> %i.z, <4 x i32> <i32 5, i32 1, i32 2, i32 poison>
  %i.ay = shufflevector <4 x double> %i.ax, <4 x double> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.az = shufflevector <2 x double> %i.aq, <2 x double> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ba = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.au, <4 x double> %i.ay, <4 x double> %i.az)
  %i.bb = extractelement <4 x double> %i.as, i64 0 ; 2 uses
  %i.bc = fmul reassoc nsz arcp double %i.bb, %i.ab
  %i.bd = load <4 x float>, ptr %i.j, align 4, !tbaa !9 ; 8 uses
  %i.be = fpext <4 x float> %i.r to <4 x double>  ; 2 uses
  %i.bf = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = fpext <4 x float> %i.bf to <4 x double>
  %i.bh = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bg, <4 x double> %i.s, <4 x double> %i.ba)
  %i.bi = extractelement <4 x double> %i.be, i64 0 ; 3 uses
  %i.bj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bi, double %i.aa, double %i.bc)
  %i.bk = fmul reassoc nsz arcp double %i.bi, %i.ab
  %i.bl = fpext <4 x float> %i.u to <4 x double>  ; 2 uses
  %i.bm = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = fpext <4 x float> %i.bm to <4 x double>
  %i.bo = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bn, <4 x double> %i.v, <4 x double> %i.bh)
  %i.bp = extractelement <4 x double> %i.bl, i64 0 ; 3 uses
  %i.bq = fpext <4 x float> %i.ar to <4 x double> ; 2 uses
  %i.br = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bs = fpext <4 x float> %i.br to <4 x double>
  %i.bt = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bs, <4 x double> %i.as, <4 x double> %i.bo)
  %i.bu = extractelement <4 x double> %i.bq, i64 0 ; 4 uses
  %i.bv = fpext <4 x float> %i.bd to <4 x double> ; 4 uses
  %i.bw = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fpext <4 x float> %i.bw to <4 x double>
  %i.by = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bx, <4 x double> %i.be, <4 x double> %i.bt)
  %i.bz = extractelement <4 x double> %i.bv, i64 0 ; 4 uses
  %i.ca = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cb = fpext <4 x float> %i.ca to <4 x double>
  %i.cc = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cb, <4 x double> %i.bl, <4 x double> %i.by)
  %i.cd = extractelement <4 x double> %i.bv, i64 1 ; 4 uses
  %i.ce = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cf = fpext <4 x float> %i.ce to <4 x double> ; 2 uses
  %i.cg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cf, <4 x double> %i.bq, <4 x double> %i.cc)
  %i.ch = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ci = fpext <4 x float> %i.ch to <4 x double> ; 2 uses
  %i.cj = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ci, <4 x double> %i.bv, <4 x double> %i.cg) ; 6 uses
  %i.ck = shufflevector <4 x double> %i.cj, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.ck, ptr %3, align 8, !tbaa !11
  %i.cl = load double, ptr %i.i, align 8, !tbaa !11
  %i.cm = load <4 x float>, ptr %i.c, align 4, !tbaa !9
  %i.cn = load <4 x float>, ptr %i.d, align 4, !tbaa !9
  %i.co = fpext <4 x float> %i.cm to <4 x double> ; 3 uses
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
  %i.cz = fpext <4 x float> %i.cn to <4 x double> ; 2 uses
  %i.da = extractelement <4 x double> %i.cz, i64 0
  %i.db = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cd, double %i.da, double %i.cx)
  %i.dc = extractelement <4 x double> %i.co, i64 0
  %i.dd = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.de = fpext <2 x float> %i.dd to <2 x double> ; 5 uses
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dg = extractelement <2 x double> %i.de, i64 1
  %i.dh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.bz, double %i.dg, double %i.cv)
  %i.di = load <2 x double>, ptr %i.n, align 8, !tbaa !11
  %i.dj = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dk = fpext <2 x float> %i.dj to <2 x double> ; 2 uses
  %i.dl = insertelement <2 x double> %i.dk, double -0.000000e+00, i64 1
  %i.dm = insertelement <2 x double> %i.de, double 0.000000e+00, i64 1
  %i.dn = tail call reassoc arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dm, <2 x double> %i.di)
  %i.do = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dp = fpext <2 x float> %i.do to <2 x double> ; 2 uses
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
  %i.eb = fpext <2 x float> %i.ea to <2 x double>
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
  %i.ex = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ep, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ey = shufflevector <2 x double> %i.dq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ez = shufflevector <4 x double> %i.ey, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fa = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.eq, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.fb = shufflevector <2 x double> %i.eo, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x double> %i.fb, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fd = shufflevector <4 x double> %i.ek, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fe = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ek, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ff = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ek, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.fg = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ek, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.fh = shufflevector <4 x double> %i.cj, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fi = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.cj, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.fj = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.cj, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.fk = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.cj, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.ex, %vector.ph ], [ %i.gv, %vector.body ]
  %vec.phi73 = phi <4 x double> [ %i.ez, %vector.ph ], [ %i.gs, %vector.body ]
  %vec.phi74 = phi <4 x double> [ %i.fa, %vector.ph ], [ %i.gp, %vector.body ]
  %vec.phi75 = phi <4 x double> [ %i.fc, %vector.ph ], [ %i.gm, %vector.body ]
  %vec.phi76 = phi <4 x double> [ %i.fd, %vector.ph ], [ %i.gj, %vector.body ]
  %vec.phi77 = phi <4 x double> [ %i.fe, %vector.ph ], [ %i.gg, %vector.body ]
  %vec.phi78 = phi <4 x double> [ %i.ff, %vector.ph ], [ %i.gd, %vector.body ]
  %vec.phi79 = phi <4 x double> [ %i.fg, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi80 = phi <4 x double> [ %i.fh, %vector.ph ], [ %i.fx, %vector.body ]
  %vec.phi81 = phi <4 x double> [ %i.fi, %vector.ph ], [ %i.fu, %vector.body ]
  %vec.phi82 = phi <4 x double> [ %i.fj, %vector.ph ], [ %i.fr, %vector.body ]
  %vec.phi83 = phi <4 x double> [ %i.fk, %vector.ph ], [ %i.fo, %vector.body ]
  %i.fl = getelementptr [4 x i8], ptr %0, i64 %index ; 12 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 48
  %wide.load = load <4 x float>, ptr %i.fm, align 4, !tbaa !9
  %i.fn = fpext reassoc nsz arcp <4 x float> %wide.load to <4 x double> ; 13 uses
  %i.fo = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.fn, <4 x double> %vec.phi83) ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fl, i64 44
  %wide.load84 = load <4 x float>, ptr %i.fp, align 4, !tbaa !9
  %i.fq = fpext reassoc nsz arcp <4 x float> %wide.load84 to <4 x double>
  %i.fr = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.fq, <4 x double> %vec.phi82) ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fl, i64 40
  %wide.load85 = load <4 x float>, ptr %i.fs, align 4, !tbaa !9
  %i.ft = fpext reassoc nsz arcp <4 x float> %wide.load85 to <4 x double>
  %i.fu = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.ft, <4 x double> %vec.phi81) ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fl, i64 36
  %wide.load86 = load <4 x float>, ptr %i.fv, align 4, !tbaa !9
  %i.fw = fpext reassoc nsz arcp <4 x float> %wide.load86 to <4 x double>
  %i.fx = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.fw, <4 x double> %vec.phi80) ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fl, i64 32
  %wide.load87 = load <4 x float>, ptr %i.fy, align 4, !tbaa !9
  %i.fz = fpext reassoc nsz arcp <4 x float> %wide.load87 to <4 x double>
  %i.ga = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.fz, <4 x double> %vec.phi79) ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fl, i64 28
  %wide.load88 = load <4 x float>, ptr %i.gb, align 4, !tbaa !9
  %i.gc = fpext reassoc nsz arcp <4 x float> %wide.load88 to <4 x double>
  %i.gd = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.gc, <4 x double> %vec.phi78) ; 2 uses
  %i.ge = getelementptr i8, ptr %i.fl, i64 24
  %wide.load89 = load <4 x float>, ptr %i.ge, align 4, !tbaa !9
  %i.gf = fpext reassoc nsz arcp <4 x float> %wide.load89 to <4 x double>
  %i.gg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.gf, <4 x double> %vec.phi77) ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fl, i64 20
  %wide.load90 = load <4 x float>, ptr %i.gh, align 4, !tbaa !9
  %i.gi = fpext reassoc nsz arcp <4 x float> %wide.load90 to <4 x double>
  %i.gj = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.gi, <4 x double> %vec.phi76) ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fl, i64 16
  %wide.load91 = load <4 x float>, ptr %i.gk, align 4, !tbaa !9
  %i.gl = fpext reassoc nsz arcp <4 x float> %wide.load91 to <4 x double>
  %i.gm = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.gl, <4 x double> %vec.phi75) ; 2 uses
  %i.gn = getelementptr i8, ptr %i.fl, i64 12
  %wide.load92 = load <4 x float>, ptr %i.gn, align 4, !tbaa !9
  %i.go = fpext reassoc nsz arcp <4 x float> %wide.load92 to <4 x double>
  %i.gp = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.go, <4 x double> %vec.phi74) ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fl, i64 8
  %wide.load93 = load <4 x float>, ptr %i.gq, align 4, !tbaa !9
  %i.gr = fpext reassoc nsz arcp <4 x float> %wide.load93 to <4 x double>
  %i.gs = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.gr, <4 x double> %vec.phi73) ; 2 uses
  %i.gt = getelementptr i8, ptr %i.fl, i64 4
  %wide.load94 = load <4 x float>, ptr %i.gt, align 4, !tbaa !9
  %i.gu = fpext reassoc nsz arcp <4 x float> %wide.load94 to <4 x double>
  %i.gv = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fn, <4 x double> %i.gu, <4 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.gx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gv)
  %i.gy = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gs)
  %i.gz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gp) ; 2 uses
  %i.ha = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gm) ; 2 uses
  %i.hb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gj)
  %i.hc = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gg)
  %i.hd = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.gd)
  %i.he = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ga)
  %i.hf = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fx)
  %i.hg = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fu)
  %i.hh = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fr)
  %i.hi = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.fo)
  %cmp.n = icmp eq i64 %i.et, %n.vec
  %i.hj = insertelement <4 x double> poison, double %i.hf, i64 0
  %i.hk = insertelement <4 x double> %i.hj, double %i.hg, i64 1
  %i.hl = insertelement <4 x double> %i.hk, double %i.hh, i64 2
  %i.hm = insertelement <4 x double> %i.hl, double %i.hi, i64 3 ; 2 uses
  %i.hn = insertelement <4 x double> poison, double %i.hb, i64 0
  %i.ho = insertelement <4 x double> %i.hn, double %i.hc, i64 1
  %i.hp = insertelement <4 x double> %i.ho, double %i.hd, i64 2
  %i.hq = insertelement <4 x double> %i.hp, double %i.he, i64 3 ; 2 uses
  %i.hr = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %i.gx, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.preheader.preheader107

.preheader.preheader107:                          ; preds = %.preheader.preheader, %middle.block
  %.ph = phi double [ %i.ev, %.preheader.preheader ], [ %i.gz, %middle.block ]
  %.ph108 = phi double [ %i.eu, %.preheader.preheader ], [ %i.ha, %middle.block ]
  %indvars.iv.ph = phi i64 [ 12, %.preheader.preheader ], [ %i.ew, %middle.block ]
  %.ph109 = phi <4 x double> [ %i.cj, %.preheader.preheader ], [ %i.hm, %middle.block ]
  %.ph110 = phi <4 x double> [ %i.ek, %.preheader.preheader ], [ %i.hq, %middle.block ]
  %.ph111 = phi <2 x double> [ %i.dq, %.preheader.preheader ], [ %i.hs, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader107, %.preheader
  %i.ht = phi double [ %i.iy, %.preheader ], [ %.ph, %.preheader.preheader107 ]
  %i.hu = phi double [ %i.it, %.preheader ], [ %.ph108, %.preheader.preheader107 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader107 ] ; 7 uses
  %i.hv = phi <4 x double> [ %i.ih, %.preheader ], [ %.ph109, %.preheader.preheader107 ]
  %i.hw = phi <4 x double> [ %i.io, %.preheader ], [ %.ph110, %.preheader.preheader107 ]
  %i.hx = phi <2 x double> [ %i.jg, %.preheader ], [ %.ph111, %.preheader.preheader107 ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.hz = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ia = getelementptr i8, ptr %i.hz, i64 -12
  %i.ib = load <4 x float>, ptr %i.ia, align 4, !tbaa !9 ; 2 uses
  %i.ic = load float, ptr %i.hy, align 4, !tbaa !9
  %i.id = fpext <4 x float> %i.ib to <4 x double>
  %i.ie = fpext reassoc nsz arcp float %i.ic to double ; 4 uses
  %i.if = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ig = fpext <4 x float> %i.if to <4 x double>
  %i.ih = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ig, <4 x double> %i.id, <4 x double> %i.hv) ; 2 uses
  %i.ii = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ij = getelementptr i8, ptr %i.ii, i64 -28
  %i.ik = load <4 x float>, ptr %i.ij, align 4, !tbaa !9
  %i.il = fpext <4 x float> %i.ik to <4 x double>
  %i.im = insertelement <4 x double> poison, double %i.ie, i64 0
  %i.in = shufflevector <4 x double> %i.im, <4 x double> poison, <4 x i32> zeroinitializer
  %i.io = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.in, <4 x double> %i.il, <4 x double> %i.hw) ; 2 uses
  %i.ip = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.iq = getelementptr i8, ptr %i.ip, i64 -32
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !9
  %i.is = fpext reassoc nsz arcp float %i.ir to double
  %i.it = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ie, double %i.is, double %i.hu) ; 2 uses
  %i.iu = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.iv = getelementptr i8, ptr %i.iu, i64 -36
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !9
  %i.ix = fpext reassoc nsz arcp float %i.iw to double
  %i.iy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ie, double %i.ix, double %i.ht) ; 2 uses
  %i.iz = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ja = getelementptr i8, ptr %i.iz, i64 -44
  %i.jb = load <2 x float>, ptr %i.ja, align 4, !tbaa !9
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jd = fpext <2 x float> %i.jc to <2 x double>
  %i.je = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.jf = shufflevector <2 x double> %i.je, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.jd, <2 x double> %i.hx) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !18

._crit_edge.loopexit:                             ; preds = %.preheader, %middle.block
  %.lcssa64 = phi double [ %i.ha, %middle.block ], [ %i.it, %.preheader ]
  %.lcssa63 = phi double [ %i.gz, %middle.block ], [ %i.iy, %.preheader ]
  %i.jh = phi <4 x double> [ %i.hm, %middle.block ], [ %i.ih, %.preheader ]
  %i.ji = phi <4 x double> [ %i.hq, %middle.block ], [ %i.io, %.preheader ]
  %i.jj = phi <2 x double> [ %i.hs, %middle.block ], [ %i.jg, %.preheader ]
  %i.jk = shufflevector <4 x double> %i.jh, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.jk, ptr %3, align 8, !tbaa !11
  %i.jl = shufflevector <4 x double> %i.ji, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.jl, ptr %i.e, align 8, !tbaa !11
  store double %.lcssa64, ptr %i.l, align 8, !tbaa !11
  store double %.lcssa63, ptr %i.m, align 8, !tbaa !11
  store <2 x double> %i.jj, ptr %i.n, align 8, !tbaa !11
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
  %i.cu = fpext <2 x float> %i.ct to <2 x double>
  %i.cv = extractelement <8 x double> %i.ah, i64 1 ; 10 uses
  %i.cw = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %i.cl)
  %i.cx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.ai, double %i.cm)
  %i.cy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.az, double %i.cn)
  %i.cz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.cv, double %i.ax, double %i.co)
  %i.da = load <4 x float>, ptr %i.j, align 4, !tbaa !9
  %i.db = fpext <4 x float> %i.ac to <4 x double> ; 2 uses
  %i.dc = load <4 x float>, ptr %i.k, align 4, !tbaa !9
  %i.dd = fpext <4 x float> %i.ad to <4 x double> ; 2 uses
  %i.de = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = extractelement <8 x double> %i.ah, i64 2 ; 10 uses
  %i.dg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.df, double %i.cw)
  %i.dh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.cv, double %i.cx)
  %i.di = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.ai, double %i.cy)
  %i.dj = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.df, double %i.az, double %i.cz)
  %i.dk = load <4 x float>, ptr %i.l, align 4, !tbaa !9
  %i.dl = fpext <4 x float> %i.da to <4 x double>
  %i.dm = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dn = extractelement <8 x double> %i.ah, i64 3 ; 9 uses
  %i.do = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.dn, double %i.dg)
  %i.dp = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.df, double %i.dh)
  %i.dq = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.cv, double %i.di)
  %i.dr = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dn, double %i.ai, double %i.dj)
  %i.ds = load <4 x float>, ptr %i.o, align 4, !tbaa !9
  %i.dt = fpext <4 x float> %i.dc to <4 x double> ; 2 uses
  %i.du = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dv = extractelement <4 x double> %i.db, i64 0 ; 2 uses
  %i.dw = extractelement <8 x double> %i.ah, i64 4 ; 10 uses
  %i.dx = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %i.do)
  %i.dy = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.dn, double %i.dp)
  %i.dz = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.df, double %i.dq)
  %i.ea = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.dw, double %i.cv, double %i.dr)
  %i.eb = fpext <4 x float> %i.dk to <4 x double> ; 2 uses
  %i.ec = shufflevector <8 x double> %i.ah, <8 x double> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.ed = extractelement <4 x double> %i.dd, i64 0
  %i.ee = extractelement <8 x double> %i.ah, i64 5 ; 9 uses
  %i.ef = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %i.dx)
  %i.eg = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.dw, double %i.dy)
  %i.eh = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.ee, double %i.dn, double %i.dz)
  %i.ei = fpext <4 x float> %i.ds to <4 x double> ; 3 uses
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
  %i.ff = fpext <4 x float> %i.fc to <4 x double> ; 2 uses
  %i.fg = fpext <4 x float> %i.fd to <4 x double> ; 2 uses
  %i.fh = load double, ptr %i.x, align 8, !tbaa !11
  %i.fi = load <2 x float>, ptr %0, align 4, !tbaa !9
  %i.fj = load double, ptr %i.t, align 8, !tbaa !11
  %i.fk = load double, ptr %i.u, align 8, !tbaa !11
  %i.fl = fpext <2 x float> %i.fi to <2 x double> ; 4 uses
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
  %i.gs = fpext <4 x float> %i.fe to <4 x double> ; 3 uses
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
  %i.hr = fpext <2 x float> %i.hq to <2 x double>
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
  %i.id = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.ic, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ie = shufflevector <4 x double> %i.ic, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.if = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hy, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.ig = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hy, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.ih = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hy, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ii = shufflevector <4 x double> %i.hy, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ij = shufflevector <4 x double> %i.hg, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ik = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hg, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.il = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hg, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.im = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.hg, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.in = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.hh, i64 0
  %i.io = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.hf, i64 0
  %i.ip = shufflevector <4 x double> %i.gh, <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.iq = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gh, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ir = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gh, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.is = shufflevector <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x double> %i.gh, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x double> [ %i.id, %vector.ph ], [ %i.kp, %vector.body ]
  %vec.phi86 = phi <4 x double> [ %i.ie, %vector.ph ], [ %i.km, %vector.body ]
  %vec.phi87 = phi <4 x double> [ %i.if, %vector.ph ], [ %i.jf, %vector.body ]
  %vec.phi88 = phi <4 x double> [ %i.ig, %vector.ph ], [ %i.jc, %vector.body ]
  %vec.phi89 = phi <4 x double> [ %i.ih, %vector.ph ], [ %i.iz, %vector.body ]
  %vec.phi90 = phi <4 x double> [ %i.ii, %vector.ph ], [ %i.iw, %vector.body ]
  %vec.phi91 = phi <4 x double> [ %i.ij, %vector.ph ], [ %i.kj, %vector.body ]
  %vec.phi92 = phi <4 x double> [ %i.ik, %vector.ph ], [ %i.kg, %vector.body ]
  %vec.phi93 = phi <4 x double> [ %i.il, %vector.ph ], [ %i.kd, %vector.body ]
  %vec.phi94 = phi <4 x double> [ %i.im, %vector.ph ], [ %i.ka, %vector.body ]
  %vec.phi95 = phi <4 x double> [ %i.in, %vector.ph ], [ %i.jx, %vector.body ]
  %vec.phi96 = phi <4 x double> [ %i.io, %vector.ph ], [ %i.ju, %vector.body ]
  %vec.phi97 = phi <4 x double> [ %i.ip, %vector.ph ], [ %i.jr, %vector.body ]
  %vec.phi98 = phi <4 x double> [ %i.iq, %vector.ph ], [ %i.jo, %vector.body ]
  %vec.phi99 = phi <4 x double> [ %i.ir, %vector.ph ], [ %i.jl, %vector.body ]
  %vec.phi100 = phi <4 x double> [ %i.is, %vector.ph ], [ %i.ji, %vector.body ]
  %i.it = getelementptr [4 x i8], ptr %0, i64 %index ; 16 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 64
  %wide.load = load <4 x float>, ptr %i.iu, align 4, !tbaa !9
  %i.iv = fpext reassoc nsz arcp <4 x float> %wide.load to <4 x double> ; 17 uses
  %i.iw = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.iv, <4 x double> %vec.phi90) ; 2 uses
  %i.ix = getelementptr i8, ptr %i.it, i64 60
  %wide.load101 = load <4 x float>, ptr %i.ix, align 4, !tbaa !9
  %i.iy = fpext reassoc nsz arcp <4 x float> %wide.load101 to <4 x double>
  %i.iz = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.iy, <4 x double> %vec.phi89) ; 2 uses
  %i.ja = getelementptr i8, ptr %i.it, i64 56
  %wide.load102 = load <4 x float>, ptr %i.ja, align 4, !tbaa !9
  %i.jb = fpext reassoc nsz arcp <4 x float> %wide.load102 to <4 x double>
  %i.jc = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.jb, <4 x double> %vec.phi88) ; 2 uses
  %i.jd = getelementptr i8, ptr %i.it, i64 52
  %wide.load103 = load <4 x float>, ptr %i.jd, align 4, !tbaa !9
  %i.je = fpext reassoc nsz arcp <4 x float> %wide.load103 to <4 x double>
  %i.jf = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.je, <4 x double> %vec.phi87) ; 2 uses
  %i.jg = getelementptr i8, ptr %i.it, i64 48
  %wide.load104 = load <4 x float>, ptr %i.jg, align 4, !tbaa !9
  %i.jh = fpext reassoc nsz arcp <4 x float> %wide.load104 to <4 x double>
  %i.ji = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.jh, <4 x double> %vec.phi100) ; 2 uses
  %i.jj = getelementptr i8, ptr %i.it, i64 44
  %wide.load105 = load <4 x float>, ptr %i.jj, align 4, !tbaa !9
  %i.jk = fpext reassoc nsz arcp <4 x float> %wide.load105 to <4 x double>
  %i.jl = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.jk, <4 x double> %vec.phi99) ; 2 uses
  %i.jm = getelementptr i8, ptr %i.it, i64 40
  %wide.load106 = load <4 x float>, ptr %i.jm, align 4, !tbaa !9
  %i.jn = fpext reassoc nsz arcp <4 x float> %wide.load106 to <4 x double>
  %i.jo = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.jn, <4 x double> %vec.phi98) ; 2 uses
  %i.jp = getelementptr i8, ptr %i.it, i64 36
  %wide.load107 = load <4 x float>, ptr %i.jp, align 4, !tbaa !9
  %i.jq = fpext reassoc nsz arcp <4 x float> %wide.load107 to <4 x double>
  %i.jr = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.jq, <4 x double> %vec.phi97) ; 2 uses
  %i.js = getelementptr i8, ptr %i.it, i64 32
  %wide.load108 = load <4 x float>, ptr %i.js, align 4, !tbaa !9
  %i.jt = fpext reassoc nsz arcp <4 x float> %wide.load108 to <4 x double>
  %i.ju = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.jt, <4 x double> %vec.phi96) ; 2 uses
  %i.jv = getelementptr i8, ptr %i.it, i64 28
  %wide.load109 = load <4 x float>, ptr %i.jv, align 4, !tbaa !9
  %i.jw = fpext reassoc nsz arcp <4 x float> %wide.load109 to <4 x double>
  %i.jx = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.jw, <4 x double> %vec.phi95) ; 2 uses
  %i.jy = getelementptr i8, ptr %i.it, i64 24
  %wide.load110 = load <4 x float>, ptr %i.jy, align 4, !tbaa !9
  %i.jz = fpext reassoc nsz arcp <4 x float> %wide.load110 to <4 x double>
  %i.ka = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.jz, <4 x double> %vec.phi94) ; 2 uses
  %i.kb = getelementptr i8, ptr %i.it, i64 20
  %wide.load111 = load <4 x float>, ptr %i.kb, align 4, !tbaa !9
  %i.kc = fpext reassoc nsz arcp <4 x float> %wide.load111 to <4 x double>
  %i.kd = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.kc, <4 x double> %vec.phi93) ; 2 uses
  %i.ke = getelementptr i8, ptr %i.it, i64 16
  %wide.load112 = load <4 x float>, ptr %i.ke, align 4, !tbaa !9
  %i.kf = fpext reassoc nsz arcp <4 x float> %wide.load112 to <4 x double>
  %i.kg = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.kf, <4 x double> %vec.phi92) ; 2 uses
  %i.kh = getelementptr i8, ptr %i.it, i64 12
  %wide.load113 = load <4 x float>, ptr %i.kh, align 4, !tbaa !9
  %i.ki = fpext reassoc nsz arcp <4 x float> %wide.load113 to <4 x double>
  %i.kj = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.ki, <4 x double> %vec.phi91) ; 2 uses
  %i.kk = getelementptr i8, ptr %i.it, i64 8
  %wide.load114 = load <4 x float>, ptr %i.kk, align 4, !tbaa !9
  %i.kl = fpext reassoc nsz arcp <4 x float> %wide.load114 to <4 x double>
  %i.km = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.kl, <4 x double> %vec.phi86) ; 2 uses
  %i.kn = getelementptr i8, ptr %i.it, i64 4
  %wide.load115 = load <4 x float>, ptr %i.kn, align 4, !tbaa !9
  %i.ko = fpext reassoc nsz arcp <4 x float> %wide.load115 to <4 x double>
  %i.kp = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.ko, <4 x double> %vec.phi) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kq = icmp eq i64 %index.next, %n.vec
  br i1 %i.kq, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %i.kr = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.kp)
  %i.ks = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.km)
  %i.kt = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jf)
  %i.ku = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jc)
  %i.kv = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.iz)
  %i.kw = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.iw)
  %i.kx = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.kj)
  %i.ky = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.kg)
  %i.kz = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.kd)
  %i.la = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ka)
  %i.lb = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jx) ; 2 uses
  %i.lc = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ju) ; 2 uses
  %i.ld = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jr)
  %i.le = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jo)
  %i.lf = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.jl)
  %i.lg = tail call reassoc nsz arcp double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.ji)
  %cmp.n = icmp eq i64 %i.ia, %n.vec
  %i.lh = insertelement <4 x double> poison, double %i.kw, i64 0
  %i.li = insertelement <4 x double> %i.lh, double %i.kv, i64 1
  %i.lj = insertelement <4 x double> %i.li, double %i.ku, i64 2
  %i.lk = insertelement <4 x double> %i.lj, double %i.kt, i64 3 ; 2 uses
  %i.ll = insertelement <4 x double> poison, double %i.ld, i64 0
  %i.lm = insertelement <4 x double> %i.ll, double %i.le, i64 1
  %i.ln = insertelement <4 x double> %i.lm, double %i.lf, i64 2
  %i.lo = insertelement <4 x double> %i.ln, double %i.lg, i64 3 ; 2 uses
  %i.lp = insertelement <4 x double> poison, double %i.kx, i64 0
  %i.lq = insertelement <4 x double> %i.lp, double %i.ky, i64 1
  %i.lr = insertelement <4 x double> %i.lq, double %i.kz, i64 2
  %i.ls = insertelement <4 x double> %i.lr, double %i.la, i64 3 ; 2 uses
  %i.lt = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.kr, i64 1 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.preheader.preheader134

.preheader.preheader134:                          ; preds = %.preheader.preheader, %middle.block
  %.ph = phi double [ %i.hh, %.preheader.preheader ], [ %i.lb, %middle.block ]
  %.ph135 = phi double [ %i.hf, %.preheader.preheader ], [ %i.lc, %middle.block ]
  %indvars.iv.ph = phi i64 [ 16, %.preheader.preheader ], [ %i.ib, %middle.block ]
  %.ph136 = phi <4 x double> [ %i.hy, %.preheader.preheader ], [ %i.lk, %middle.block ]
  %.ph137 = phi <4 x double> [ %i.gh, %.preheader.preheader ], [ %i.lo, %middle.block ]
  %.ph138 = phi <4 x double> [ %i.hg, %.preheader.preheader ], [ %i.ls, %middle.block ]
  %.ph139 = phi <2 x double> [ %i.hz, %.preheader.preheader ], [ %i.lu, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader134, %.preheader
  %i.lv = phi double [ %i.my, %.preheader ], [ %.ph, %.preheader.preheader134 ]
  %i.lw = phi double [ %i.mt, %.preheader ], [ %.ph135, %.preheader.preheader134 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader134 ] ; 7 uses
  %i.lx = phi <4 x double> [ %i.mi, %.preheader ], [ %.ph136, %.preheader.preheader134 ]
  %i.ly = phi <4 x double> [ %i.mo, %.preheader ], [ %.ph137, %.preheader.preheader134 ]
  %i.lz = phi <4 x double> [ %i.nd, %.preheader ], [ %.ph138, %.preheader.preheader134 ]
  %i.ma = phi <2 x double> [ %i.nl, %.preheader ], [ %.ph139, %.preheader.preheader134 ]
  %i.mb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.mc = getelementptr i8, ptr %i.mb, i64 -12
  %i.md = load <4 x float>, ptr %i.mc, align 4, !tbaa !9 ; 3 uses
  %i.me = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.mf = fpext <4 x float> %i.me to <4 x double> ; 2 uses
  %i.mg = shufflevector <4 x float> %i.md, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.mh = fpext <4 x float> %i.mg to <4 x double> ; 3 uses
  %i.mi = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mh, <4 x double> %i.mf, <4 x double> %i.lx) ; 2 uses
  %i.mj = extractelement <4 x double> %i.mf, i64 0 ; 2 uses
  %i.mk = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.ml = getelementptr i8, ptr %i.mk, i64 -28
  %i.mm = load <4 x float>, ptr %i.ml, align 4, !tbaa !9
  %i.mn = fpext <4 x float> %i.mm to <4 x double>
  %i.mo = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mh, <4 x double> %i.mn, <4 x double> %i.ly) ; 2 uses
  %i.mp = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.mq = getelementptr i8, ptr %i.mp, i64 -32
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !9
  %i.ms = fpext reassoc nsz arcp float %i.mr to double
  %i.mt = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.mj, double %i.ms, double %i.lw) ; 2 uses
  %i.mu = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.mv = getelementptr i8, ptr %i.mu, i64 -36
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !9
  %i.mx = fpext reassoc nsz arcp float %i.mw to double
  %i.my = tail call reassoc nsz arcp double @llvm.fmuladd.f64(double %i.mj, double %i.mx, double %i.lv) ; 2 uses
  %i.mz = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.na = getelementptr i8, ptr %i.mz, i64 -52
  %i.nb = load <4 x float>, ptr %i.na, align 4, !tbaa !9
  %i.nc = fpext <4 x float> %i.nb to <4 x double>
  %i.nd = tail call reassoc nsz arcp <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mh, <4 x double> %i.nc, <4 x double> %i.lz) ; 2 uses
  %i.ne = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.nf = getelementptr i8, ptr %i.ne, i64 -60
  %i.ng = load <2 x float>, ptr %i.nf, align 4, !tbaa !9
  %i.nh = shufflevector <2 x float> %i.ng, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ni = fpext <2 x float> %i.nh to <2 x double>
  %i.nj = shufflevector <4 x float> %i.md, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.nk = fpext <2 x float> %i.nj to <2 x double>
  %i.nl = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.ni, <2 x double> %i.ma) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %.preheader, %middle.block
  %.lcssa77 = phi double [ %i.lc, %middle.block ], [ %i.mt, %.preheader ]
  %.lcssa76 = phi double [ %i.lb, %middle.block ], [ %i.my, %.preheader ]
  %i.nm = phi <4 x double> [ %i.lk, %middle.block ], [ %i.mi, %.preheader ]
  %i.nn = phi <4 x double> [ %i.lo, %middle.block ], [ %i.mo, %.preheader ]
  %i.no = phi <4 x double> [ %i.ls, %middle.block ], [ %i.nd, %.preheader ]
  %i.np = phi <2 x double> [ %i.lu, %middle.block ], [ %i.nl, %.preheader ]
  store <4 x double> %i.nm, ptr %3, align 8, !tbaa !11
  %i.nq = shufflevector <4 x double> %i.nn, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.nq, ptr %i.i, align 8, !tbaa !11
  store double %.lcssa77, ptr %i.p, align 8, !tbaa !11
  store double %.lcssa76, ptr %i.r, align 8, !tbaa !11
  %i.nr = shufflevector <4 x double> %i.no, <4 x double> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x double> %i.nr, ptr %i.t, align 8, !tbaa !11
  store <2 x double> %i.np, ptr %i.y, align 8, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader30.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !13, !14}
!16 = distinct !{!16, !12, !14, !13}
!17 = distinct !{!17, !12, !13, !14}
!18 = distinct !{!18, !12, !14, !13}
!19 = distinct !{!19, !12, !13, !14}
!20 = distinct !{!20, !12, !14, !13}
end_hunk_0
