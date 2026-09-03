Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ImGuizmo::Context" = type <{ ptr, i32, %"struct.ImGuizmo::matrix_t", %"struct.ImGuizmo::matrix_t", %"struct.ImGuizmo::matrix_t", %"struct.ImGuizmo::matrix_t", %"struct.ImGuizmo::matrix_t", %"struct.ImGuizmo::matrix_t", %"struct.ImGuizmo::matrix_t", %"struct.ImGuizmo::matrix_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", float, %struct.ImVec2, %struct.ImVec2, %struct.ImVec2, float, %"struct.ImGuizmo::vec_t", i8, i8, [2 x i8], %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", float, float, %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", float, [3 x i8], [3 x i8], [2 x i8], [3 x float], %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", %"struct.ImGuizmo::vec_t", i32, [2 x i32], i8, [3 x i8], %"struct.ImGuizmo::matrix_t", i32, float, float, float, float, float, float, float, i8, [7 x i8] }>
%struct.ImVec2 = type { float, float }
%"struct.ImGuizmo::vec_t" = type { float, float, float, float }
%"struct.ImGuizmo::matrix_t" = type { %union.anon }
%union.anon = type { [4 x [4 x float]] }

@_ZN8ImGuizmoL8gContextE = internal global %"struct.ImGuizmo::Context" zeroinitializer, align 8
@_ZN8ImGuizmoL14directionUnaryE = internal global [3 x %"struct.ImGuizmo::vec_t"] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"gizmo\00", align 1
@_ZN8ImGuizmoL14directionColorE = internal unnamed_addr constant [3 x i32] [i32 -16777046, i32 -16733696, i32 -5636096], align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"X: %.2f Y: %.2f Z:%.2f\00", align 1
@_ZN8ImGuizmoL16rotationInfoMaskE = internal unnamed_addr constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 16
@.str.3 = private unnamed_addr constant [24 x i8] c"X : %5.2f deg %5.2f rad\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Y : %5.2f deg %5.2f rad\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Z : %5.2f deg %5.2f rad\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Screen : %5.2f deg %5.2f rad\00", align 1
@_ZN8ImGuizmoL19translationInfoMaskE = internal unnamed_addr constant [7 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 16
@_ZN8ImGuizmoL20translationInfoIndexE = internal unnamed_addr constant [21 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 2], align 16
@.str.7 = private unnamed_addr constant [10 x i8] c"X : %5.3f\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Y : %5.3f\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Z : %5.3f\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Y : %5.3f Z : %5.3f\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"X : %5.3f Z : %5.3f\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"X : %5.3f Y : %5.3f\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"X : %5.3f Y : %5.3f Z : %5.3f\00", align 1
@__const._ZN8ImGuizmoL14DrawScaleGizmoEi.scaleDisplay = private unnamed_addr constant %"struct.ImGuizmo::vec_t" { float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00 }, align 4
@_ZN8ImGuizmoL13scaleInfoMaskE = internal unnamed_addr constant [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"X : %5.2f\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Y : %5.2f\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Z : %5.2f\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"XYZ : %5.2f\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ImGuizmo.cpp, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 64
  %i.e = add i64 %i.b, 64
  %i.f = add i64 %i.a, 64                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound0144 = icmp ugt i64 %i.e, %i.a
  %rt.bound1145 = icmp ugt i64 %i.f, %i.b
  %rt.conflict146 = and i1 %rt.bound0144, %rt.bound1145
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict146
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.m = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.n = load float, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.p = load float, ptr %i.k, align 4, !tbaa !10 ; 3 uses
  %i.q = load <4 x float>, ptr %0, align 4, !tbaa !10 ; 4 uses
  %i.r = load <4 x float>, ptr %1, align 4, !tbaa !10
  %i.s = load <4 x float>, ptr %i.h, align 4, !tbaa !10
  %i.t = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float %i.n, i64 1
  %i.v = insertelement <4 x float> %i.u, float %i.n, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.n, i64 3
  %i.x = fmul <4 x float> %i.w, %i.s
  %i.y = insertelement <4 x float> %i.q, float %i.m, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.m, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %i.m, i64 3
  %i.ab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %i.r, <4 x float> %i.x)
  %i.ac = load <4 x float>, ptr %i.j, align 4, !tbaa !10
  %i.ad = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ae = insertelement <4 x float> %i.ad, float %i.o, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.o, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.o, i64 3
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ag, <4 x float> %i.ac, <4 x float> %i.ab)
  %i.ai = load <4 x float>, ptr %i.l, align 4, !tbaa !10
  %i.aj = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float %i.p, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.p, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.p, i64 3
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %i.ai, <4 x float> %i.ah)
  store <4 x float> %i.an, ptr %2, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load float, ptr %i.ao, align 4, !tbaa !10 ; 3 uses
  %i.au = load float, ptr %i.ap, align 4, !tbaa !10 ; 3 uses
  %i.av = load float, ptr %i.aq, align 4, !tbaa !10 ; 3 uses
  %i.aw = load float, ptr %i.ar, align 4, !tbaa !10 ; 3 uses
  %i.ax = load <4 x float>, ptr %i.ao, align 4, !tbaa !10 ; 4 uses
  %i.ay = load <4 x float>, ptr %1, align 4, !tbaa !10
  %i.az = load <4 x float>, ptr %i.h, align 4, !tbaa !10
  %i.ba = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %i.au, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.au, i64 2
  %i.bd = insertelement <4 x float> %i.bc, float %i.au, i64 3
  %i.be = fmul <4 x float> %i.bd, %i.az
  %i.bf = insertelement <4 x float> %i.ax, float %i.at, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.at, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.at, i64 3
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.ay, <4 x float> %i.be)
  %i.bj = load <4 x float>, ptr %i.j, align 4, !tbaa !10
  %i.bk = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bl = insertelement <4 x float> %i.bk, float %i.av, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.av, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.av, i64 3
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.bj, <4 x float> %i.bi)
  %i.bp = load <4 x float>, ptr %i.l, align 4, !tbaa !10
  %i.bq = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.br = insertelement <4 x float> %i.bq, float %i.aw, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.aw, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.aw, i64 3
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.bp, <4 x float> %i.bo)
  store <4 x float> %i.bu, ptr %i.as, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ca = load float, ptr %i.bv, align 4, !tbaa !10 ; 3 uses
  %i.cb = load float, ptr %i.bw, align 4, !tbaa !10 ; 3 uses
  %i.cc = load float, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.cd = load float, ptr %i.by, align 4, !tbaa !10 ; 3 uses
  %i.ce = load <4 x float>, ptr %i.bv, align 4, !tbaa !10 ; 4 uses
  %i.cf = load <4 x float>, ptr %1, align 4, !tbaa !10
  %i.cg = load <4 x float>, ptr %i.h, align 4, !tbaa !10
  %i.ch = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float %i.cb, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cb, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cb, i64 3
  %i.cl = fmul <4 x float> %i.ck, %i.cg
  %i.cm = insertelement <4 x float> %i.ce, float %i.ca, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.ca, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.ca, i64 3
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.cf, <4 x float> %i.cl)
  %i.cq = load <4 x float>, ptr %i.j, align 4, !tbaa !10
  %i.cr = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %i.cc, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cc, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cc, i64 3
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.cq, <4 x float> %i.cp)
  %i.cw = load <4 x float>, ptr %i.l, align 4, !tbaa !10
  %i.cx = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.cy = insertelement <4 x float> %i.cx, float %i.cd, i64 1
  %i.cz = insertelement <4 x float> %i.cy, float %i.cd, i64 2
  %i.da = insertelement <4 x float> %i.cz, float %i.cd, i64 3
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.cw, <4 x float> %i.cv)
  store <4 x float> %i.db, ptr %i.bz, align 4, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dh = load float, ptr %i.dc, align 4, !tbaa !10 ; 3 uses
  %i.di = load float, ptr %i.dd, align 4, !tbaa !10 ; 3 uses
  %i.dj = load float, ptr %i.de, align 4, !tbaa !10 ; 3 uses
  %i.dk = load float, ptr %i.df, align 4, !tbaa !10 ; 3 uses
  %i.dl = load <4 x float>, ptr %i.dc, align 4, !tbaa !10 ; 4 uses
  %i.dm = load <4 x float>, ptr %1, align 4, !tbaa !10
  %i.dn = load <4 x float>, ptr %i.h, align 4, !tbaa !10
  %i.do = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dp = insertelement <4 x float> %i.do, float %i.di, i64 1
  %i.dq = insertelement <4 x float> %i.dp, float %i.di, i64 2
  %i.dr = insertelement <4 x float> %i.dq, float %i.di, i64 3
  %i.ds = fmul <4 x float> %i.dr, %i.dn
  %i.dt = insertelement <4 x float> %i.dl, float %i.dh, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.dh, i64 2
  %i.dv = insertelement <4 x float> %i.du, float %i.dh, i64 3
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dm, <4 x float> %i.ds)
  %i.dx = load <4 x float>, ptr %i.j, align 4, !tbaa !10
  %i.dy = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.dz = insertelement <4 x float> %i.dy, float %i.dj, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %i.dj, i64 2
  %i.eb = insertelement <4 x float> %i.ea, float %i.dj, i64 3
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eb, <4 x float> %i.dx, <4 x float> %i.dw)
  %i.ed = load <4 x float>, ptr %i.l, align 4, !tbaa !10
  %i.ee = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ef = insertelement <4 x float> %i.ee, float %i.dk, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.dk, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.dk, i64 3
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.ed, <4 x float> %i.ec)
  store <4 x float> %i.ei, ptr %i.dg, align 4, !tbaa !10
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ej = load float, ptr %0, align 4, !tbaa !10
  %i.ek = load float, ptr %1, align 4, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !10
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !10
  %i.ep = fmul float %i.em, %i.eo
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.ek, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !10
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.es, float %i.eu, float %i.eq)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !10
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !10
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ez, float %i.ev)
  store float %i.fa, ptr %2, align 4, !tbaa !10
  %i.fb = load float, ptr %0, align 4, !tbaa !10
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !10
  %i.fe = load float, ptr %i.el, align 4, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !10
  %i.fh = fmul float %i.fe, %i.fg
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fd, float %i.fh)
  %i.fj = load float, ptr %i.er, align 4, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !10
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fj, float %i.fl, float %i.fi)
  %i.fn = load float, ptr %i.ew, align 4, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !10
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fp, float %i.fm)
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.fq, ptr %i.fr, align 4, !tbaa !10
  %i.fs = load float, ptr %0, align 4, !tbaa !10
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !10
  %i.fv = load float, ptr %i.el, align 4, !tbaa !10
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !10
  %i.fy = fmul float %i.fv, %i.fx
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fu, float %i.fy)
  %i.ga = load float, ptr %i.er, align 4, !tbaa !10
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !10
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.gc, float %i.fz)
  %i.ge = load float, ptr %i.ew, align 4, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !10
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.gg, float %i.gd)
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.gh, ptr %i.gi, align 4, !tbaa !10
  %i.gj = load float, ptr %0, align 4, !tbaa !10
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !10
end_hunk_0
begin_hunk_1_@_ZN8ImGuizmo8matrix_t7InverseERKS0_b:bb.a
  store float %i.hg, ptr %i.fr, align 4, !tbaa !16
  %i.hh = shufflevector <2 x float> %i.gk, <2 x float> %i.gj, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  %i.hi = fmul <4 x float> %i.fu, %i.hh
  %i.hj = shufflevector <2 x float> %i.gj, <2 x float> %i.gi, <4 x i32> <i32 0, i32 2, i32 2, i32 2> ; 2 uses
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.hj, <4 x float> %i.hi)
  %i.hl = shufflevector <2 x float> %i.gl, <2 x float> %i.gk, <4 x i32> <i32 0, i32 0, i32 0, i32 2> ; 2 uses
  %i.hm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.hl, <4 x float> %i.hk)
  %i.hn = fmul <4 x float> %i.gb, %i.hh
  %i.ho = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.hj, <4 x float> %i.hn)
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %i.hl, <4 x float> %i.ho)
  %i.hq = fsub <4 x float> %i.hm, %i.hp
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.hr, ptr %i.fs, align 4, !tbaa !16
  %i.hs = shufflevector <2 x float> %i.gk, <2 x float> %i.gj, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.ht = shufflevector <2 x float> %i.gl, <2 x float> %i.gk, <4 x i32> <i32 1, i32 0, i32 1, i32 2> ; 3 uses
  %i.hu = fmul <4 x float> %i.hs, %i.ht           ; 7 uses
  %i.hv = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x float> %i.hs, <4 x float> %i.hv, <4 x i32> <i32 3, i32 4, i32 5, i32 1> ; 5 uses
  %i.hx = shufflevector <4 x float> %i.ht, <4 x float> %i.hw, <4 x i32> <i32 1, i32 0, i32 1, i32 5> ; 2 uses
  %i.hy = fmul <4 x float> %i.hw, %i.hx           ; 6 uses
  %i.hz = shufflevector <4 x float> %i.hx, <4 x float> %i.hw, <4 x i32> <i32 1, i32 6, i32 3, i32 6>
  %i.ia = shufflevector <4 x float> %i.hs, <4 x float> %i.ht, <4 x i32> <i32 2, i32 5, i32 4, i32 0>
  %i.ib = fmul <4 x float> %i.hz, %i.ia
  %i.ic = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 2>
  %i.id = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.ie = fmul <4 x float> %i.ic, %i.id           ; 7 uses
  %i.if = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ig = fmul <4 x float> %i.hs, %i.if
  %i.ih = shufflevector <2 x float> %i.ez, <2 x float> %i.ev, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.ii = fmul <4 x float> %i.ih, %i.hy
  %i.ij = shufflevector <2 x float> %i.ev, <2 x float> %i.et, <4 x i32> <i32 1, i32 3, i32 3, i32 3> ; 2 uses
  %i.ik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.ij, <4 x float> %i.ii)
  %i.il = shufflevector <2 x float> %i.fm, <2 x float> %i.ez, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.im = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ie, <4 x float> %i.il, <4 x float> %i.ik)
  %i.in = fmul <4 x float> %i.ih, %i.ib
  %i.io = shufflevector <4 x float> %i.hu, <4 x float> %i.hy, <4 x i32> <i32 1, i32 0, i32 4, i32 poison>
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.iq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> %i.ij, <4 x float> %i.in)
  %i.ir = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.il, <4 x float> %i.iq)
  %i.is = fsub <4 x float> %i.im, %i.ir
  %foldExtExtBinop176 = fmul <2 x float> %foldExtExtBinop168, %i.gj
  %i.it = extractelement <2 x float> %foldExtExtBinop176, i64 0
  %i.iu = extractelement <2 x float> %i.gi, i64 0
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.gt, float %i.it)
  %i.iw = extractelement <2 x float> %i.gk, i64 0
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.hc, float %i.iv)
  %i.iy = extractelement <2 x float> %i.gl, i64 0
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.hg, float %i.ix) ; 2 uses
  %i.ja = fdiv float 1.000000e+00, %i.iz
  %i.jb = load <4 x float>, ptr %0, align 4, !tbaa !16
  %i.jc = insertelement <4 x float> poison, float %i.ja, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.je = fmul <4 x float> %i.jd, %i.jb
  store <4 x float> %i.je, ptr %0, align 4, !tbaa !16
  %i.jf = load <4 x float>, ptr %i.fs, align 4, !tbaa !16
  %i.jg = fmul <4 x float> %i.jd, %i.jf
  store <4 x float> %i.jg, ptr %i.fs, align 4, !tbaa !16
  %i.jh = fmul <4 x float> %i.jd, %i.is
  store <4 x float> %i.jh, ptr %i.gg, align 4, !tbaa !16
  %i.ji = shufflevector <2 x float> %i.fm, <2 x float> %i.et, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.jj = shufflevector <4 x float> %i.hu, <4 x float> %i.ie, <4 x i32> <i32 3, i32 0, i32 7, i32 4>
  %i.jk = fmul <4 x float> %i.ji, %i.jj
  %i.jl = shufflevector <4 x float> %i.hu, <4 x float> %i.hy, <4 x i32> <i32 2, i32 7, i32 5, i32 poison>
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.jn = shufflevector <2 x float> %i.ez, <2 x float> %i.fm, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jm, <4 x float> %i.jo, <4 x float> %i.jk)
  %i.jq = shufflevector <4 x float> %i.hu, <4 x float> %i.hy, <4 x i32> <i32 1, i32 6, i32 4, i32 poison>
  %i.jr = shufflevector <4 x float> %i.jq, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.js = shufflevector <2 x float> %i.ev, <2 x float> %i.ez, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.jt = shufflevector <2 x float> %i.et, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ju = shufflevector <4 x float> %i.js, <4 x float> %i.jt, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.jv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jr, <4 x float> %i.ju, <4 x float> %i.jp)
  %i.jw = shufflevector <2 x float> %i.ev, <2 x float> %i.fm, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.jx = shufflevector <4 x float> %i.jw, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 6, i32 5>
  %i.jy = shufflevector <4 x float> %i.hu, <4 x float> %i.ie, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.jz = fmul <4 x float> %i.jx, %i.jy
  %i.ka = shufflevector <4 x float> %i.ie, <4 x float> %i.hy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.kb = shufflevector <2 x float> %i.fm, <2 x float> %i.ez, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ka, <4 x float> %i.kc, <4 x float> %i.jz)
  %i.ke = shufflevector <4 x float> %i.hy, <4 x float> %i.hu, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.kf = shufflevector <2 x float> %i.ez, <2 x float> %i.et, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.kh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> %i.kg, <4 x float> %i.kd)
  %i.ki = fsub <4 x float> %i.jv, %i.kh
  %i.kj = fmul <4 x float> %i.jd, %i.ki
  store <4 x float> %i.kj, ptr %i.gh, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0161 = phi float [ %i.af, %bb.b ], [ %i.iz, %bb.c ]
  ret float %.0161
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !12   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.c, %i.c
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = extractelement <2 x float> %i.c, i64 1   ; 2 uses
  %i.g = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.e) ; 2 uses
  %i.h = fcmp olt float %i.g, f0x34000000
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.g)
  %i.l = tail call float @sinf(float noundef %2) #19 ; 3 uses
  %i.m = tail call float @cosf(float noundef %2) #19 ; 3 uses
  %i.n = fsub float 1.000000e+00, %i.m            ; 5 uses
  %i.o = fdiv float 1.000000e+00, %sqrt           ; 2 uses
  %i.p = fmul float %i.a, %i.o                    ; 5 uses
  %i.q = insertelement <2 x float> poison, float %i.o, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.c, %i.r              ; 4 uses
  %i.t = fmul float %i.p, %i.p
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.n, float %i.m)
  %i.v = fmul <2 x float> %i.s, %i.s
  %i.w = insertelement <2 x float> poison, float %i.n, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %i.m, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> %i.z)
  %i.ab = extractelement <2 x float> %i.s, i64 0  ; 3 uses
  %i.ac = fmul float %i.p, %i.ab
  %i.ad = fmul float %i.ac, %i.n                  ; 2 uses
  %i.ae = extractelement <2 x float> %i.s, i64 1  ; 3 uses
  %i.af = fmul float %i.ab, %i.ae
  %i.ag = fmul float %i.af, %i.n                  ; 2 uses
  %i.ah = fmul float %i.ae, %i.p
  %i.ai = fmul float %i.ah, %i.n                  ; 2 uses
  %i.aj = fmul float %i.p, %i.l                   ; 2 uses
  %i.ak = fmul float %i.ab, %i.l                  ; 2 uses
  %i.al = fmul float %i.ae, %i.l                  ; 2 uses
  %i.am = fadd float %i.al, %i.ad
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.am, ptr %i.an, align 4, !tbaa !16
  %i.ao = fsub float %i.ai, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !16
  %i.ar = fsub float %i.ad, %i.al
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ar, ptr %i.as, align 4, !tbaa !16
  %i.at = fadd float %i.aj, %i.ag
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.at, ptr %i.au, align 4, !tbaa !16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %i.av, align 4, !tbaa !16
  %i.aw = fadd float %i.ak, %i.ai
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.aw, ptr %i.ax, align 4, !tbaa !16
  %i.ay = fsub float %i.ag, %i.aj
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ay, ptr %i.az, align 4, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink60 = phi float [ 1.000000e+00, %bb.b ], [ %i.u, %bb.c ]
  %i.bb = phi <2 x float> [ splat (float 1.000000e+00), %bb.b ], [ %i.aa, %bb.c ] ; 2 uses
  store float %.sink60, ptr %0, align 4, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = extractelement <2 x float> %i.bb, i64 0
  store float %i.bd, ptr %i.bc, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = extractelement <2 x float> %i.bb, i64 1
  store float %i.bf, ptr %i.be, align 4, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.bg, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8ImGuizmo7SetRectEffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #9 {
bb.a:
  store float %0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !53
  store float %1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 968), align 8, !tbaa !54
  store float %2, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !25
  store float %3, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !26
  %i.a = fadd float %0, %2                        ; 2 uses
  store float %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 980), align 4, !tbaa !27
  %i.b = fadd float %1, %i.a
  store float %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 984), align 8, !tbaa !28
  %i.c = fdiv float %2, %3
  store float %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8ImGuizmo15SetOrthographicEb(i1 noundef zeroext %0) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i1 %0 to i8
  store i8 %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo11SetDrawlistEv() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  store ptr %i.a, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  ret void
}

declare noundef ptr @_ZN5ImGui17GetWindowDrawListEv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo10BeginFrameEv() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %i.b, i32 noundef 0)
  tail call void @_ZN5ImGui14PushStyleColorEij(i32 noundef 2, i32 noundef 0)
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str, ptr noundef null, i32 noundef 799499) ; 0 uses
  %i.d = tail call noundef ptr @_ZN5ImGui17GetWindowDrawListEv()
  store ptr %i.d, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  tail call void @_ZN5ImGui3EndEv()
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  ret void
}

declare noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #11

declare void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #11

declare void @_ZN5ImGui14PushStyleColorEij(i32 noundef, i32 noundef) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare void @_ZN5ImGui3EndEv() local_unnamed_addr #11

declare void @_ZN5ImGui13PopStyleColorEi(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN8ImGuizmo7IsUsingEv() local_unnamed_addr #12 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !range !33
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8ImGuizmo6IsOverEv() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr noundef null)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i32 @_ZN8ImGuizmoL13GetRotateTypeEv()
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc noundef i32 @_ZN8ImGuizmoL12GetScaleTypeEv()
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !range !33
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.h, %bb.d ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 8) i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr nofree noundef writeonly captures(address_is_null) %0) unnamed_addr #13 {
bb.a:
  %1 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 6 uses
  %2 = alloca %"struct.ImGuizmo::vec_t", align 8  ; 5 uses
  %3 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 7 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.e = load float, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %i.f = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 648), align 8, !tbaa !43
  %i.g = fcmp ult float %i.e, %i.f
  %i.h = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 656), align 8
  %i.i = fcmp ugt float %i.e, %i.h
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  %i.k = load float, ptr %i.j, align 4, !tbaa !44 ; 2 uses
  %i.l = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 652), align 4, !tbaa !45
  %i.m = fcmp ult float %i.k, %i.l
  %i.n = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 660), align 4
  %i.o = fcmp ugt float %i.k, %i.n
  %or.cond35 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond35, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not = icmp eq ptr %0, null
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %.1.lcssa = phi i32 [ 7, %bb.b ], [ %.3, %bb.g ]
  ret i32 %.1.lcssa

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.027183 = phi i32 [ 0, %.lr.ph ], [ %i.ju, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %.027183, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.r = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 148), align 4, !tbaa !16 ; 2 uses
  %i.s = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 164), align 4, !tbaa !16 ; 2 uses
  %i.t = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !16 ; 2 uses
  %i.u = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 152), align 8, !tbaa !16
  %i.v = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 168), align 8, !tbaa !16
  %i.w = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !16
  %i.x = load <3 x float>, ptr %3, align 16, !tbaa !10 ; 5 uses
  %i.y = load float, ptr %3, align 16, !tbaa !12  ; 2 uses
  %i.z = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !16 ; 3 uses
  %i.aa = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !16 ; 3 uses
  %i.ab = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x float> %i.ab, %i.aa
  %i.ad = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.z, <2 x float> %i.ac)
  %i.af = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !16 ; 3 uses
  %i.ag = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.af, <2 x float> %i.ae) ; 3 uses
  %i.ai = extractelement <3 x float> %i.x, i64 1  ; 2 uses
  %i.aj = fmul float %i.ai, %i.s
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.y, float %i.r, float %i.aj)
  %i.al = extractelement <3 x float> %i.x, i64 2  ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.t, float %i.ak) ; 5 uses
  %i.an = fmul float %i.ai, %i.v
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.y, float %i.u, float %i.an)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.al, float %i.w, float %i.ao)
  store <2 x float> %i.ah, ptr %3, align 16, !tbaa !10
  store float %i.am, ptr %i.p, align 8, !tbaa !13
  %i.aq = load <4 x float>, ptr %1, align 16
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.as = load float, ptr %i.q, align 8, !tbaa !13
  %i.at = extractelement <2 x float> %i.ah, i64 1 ; 4 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = extractelement <2 x float> %i.ah, i64 0 ; 4 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.au)
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.aw)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 4 uses
  %i.az = fmul float %i.av, %i.ay                 ; 3 uses
  %i.ba = fmul float %i.at, %i.ay                 ; 3 uses
  %i.bb = fmul float %i.am, %i.ay                 ; 3 uses
  %i.bc = fmul float %i.ap, %i.ay
  %i.bd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  %i.be = load <2 x float>, ptr %1, align 16, !tbaa !10 ; 2 uses
  %i.bf = load <2 x float>, ptr %2, align 8, !tbaa !10 ; 2 uses
  %i.bg = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bi = fmul <2 x float> %i.bg, %i.bh
  %i.bj = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bk = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bk, <2 x float> %i.bi)
  %i.bm = insertelement <2 x float> poison, float %i.s, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bh
  %i.bp = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.bq, <2 x float> %i.bo)
end_hunk_1
begin_hunk_2_@_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE:bb.a
  %i.en = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.ec, float %i.em)
  %i.eo = fmul float %i.dk, %i.dp
  %i.ep = shufflevector <3 x float> %i.dj, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.eq = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  %i.er = insertelement <4 x float> poison, float %i.en, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 1
  %i.et = shufflevector <4 x float> %i.es, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eu = fmul float %i.dp, %i.dz
  %i.ev = extractelement <2 x float> %i.ea, i64 0
  %i.ew = fadd float %i.ck, %i.dv                 ; 3 uses
  %i.ex = extractelement <2 x float> %i.ee, i64 0
  %i.ey = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 3 uses
  %i.ez = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.fa = extractelement <2 x float> %i.ey, i64 0 ; 2 uses
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.fa, float %i.el)
  %i.fc = fadd float %i.dn, %i.fb
  %i.fd = shufflevector <3 x float> %i.cg, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 0>
  %i.fe = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %i.dw, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.dt, i64 3
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.fi = fadd <4 x float> %i.fd, %i.fh           ; 4 uses
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>
  %i.fk = shufflevector <4 x float> %i.ep, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fl = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> %i.eq, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.fm, <4 x float> %i.et) ; 3 uses
  %i.fo = extractelement <4 x float> %i.fn, i64 0
  %i.fp = shufflevector <2 x float> %i.ea, <2 x float> %i.eb, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.fq = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> %i.fp, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.fs = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 3, i32 poison>
  %i.ft = insertelement <4 x float> %i.fs, float %i.eu, i64 1
  %i.fu = fadd float %i.cf, %i.du                 ; 3 uses
  %i.fv = fmul float %i.ex, %i.fu
  %i.fw = fadd float %i.do, %i.fo
  %i.fx = insertelement <4 x float> %i.ft, float %i.fv, i64 3
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.fr, <4 x float> %i.fx) ; 4 uses
  %i.fz = shufflevector <3 x float> %i.dj, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> %i.fi, <4 x i32> <i32 2, i32 4, i32 4, i32 poison>
  %i.gb = insertelement <4 x float> %i.ga, float 0.000000e+00, i64 3
  %i.gc = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dq, i64 0
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ge = shufflevector <4 x float> %i.fn, <4 x float> %i.fy, <4 x i32> <i32 1, i32 5, i32 5, i32 poison>
  %i.gf = insertelement <4 x float> %i.ge, float -0.000000e+00, i64 3
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.gd, <4 x float> %i.gf)
  %i.gh = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.dr, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gj = fadd <4 x float> %i.gi, %i.gg
  %i.gk = shufflevector <4 x float> %i.ef, <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.gl = fdiv <4 x float> %i.gk, %i.gj           ; 2 uses
  %i.gm = extractelement <4 x float> %i.gl, i64 0
  %i.gn = fmul float %i.fc, %i.gm
  %i.go = fadd float %i.gn, 5.000000e-01
  %i.gp = extractelement <4 x float> %i.fy, i64 0
  %i.gq = fadd float %i.dn, %i.gp
  %i.gr = extractelement <4 x float> %i.fy, i64 2
  %i.gs = fadd float %i.do, %i.gr
  %i.gt = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gq, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gs, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %i.fu, i64 3
  %i.gx = fmul <4 x float> %i.gl, %i.gw           ; 4 uses
  %i.gy = extractelement <4 x float> %i.gx, i64 0
  %i.gz = fadd float %i.gy, 5.000000e-01
  %i.ha = fsub float 1.000000e+00, %i.gz
  %i.hb = extractelement <4 x float> %i.gx, i64 2
  %i.hc = fadd float %i.hb, 5.000000e-01
  %i.hd = extractelement <4 x float> %i.fy, i64 3
  %i.he = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.fa, float %i.hd)
  %i.hf = fadd float %i.dn, %i.he
  %i.hg = extractelement <4 x float> %i.fi, i64 3 ; 2 uses
  %i.hh = extractelement <4 x float> %i.gx, i64 3
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.ec, float %i.hh)
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.ez, float %i.hi)
  %i.hk = fadd float %i.do, %i.hj
  %i.hl = fmul float %i.dp, %i.fu
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.ev, float %i.hl)
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.dq, float %i.hm)
  %i.ho = fadd float %i.dr, %i.hn
  %i.hp = fdiv float 5.000000e-01, %i.ho          ; 2 uses
  %i.hq = fmul float %i.hf, %i.hp
  %i.hr = fmul float %i.hk, %i.hp
  %i.hs = fadd float %i.hr, 5.000000e-01
  %i.ht = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.hu = extractelement <2 x float> %i.ht, i64 0
  %i.hv = fmul float %i.hu, %i.go
  %i.hw = extractelement <2 x float> %i.ht, i64 1
  %i.hx = fmul float %i.hw, %i.ha
  %i.hy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.hz = extractelement <2 x float> %i.hy, i64 0
  %i.ia = fadd float %i.hz, %i.hv                 ; 2 uses
  %i.ib = extractelement <2 x float> %i.hy, i64 1
  %i.ic = fadd float %i.ib, %i.hx                 ; 2 uses
  %i.id = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.gx, <2 x i32> <i32 5, i32 1>
  %i.ie = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.hc, i64 1
  %i.if = fsub <2 x float> %i.id, %i.ie
  %i.ig = fmul <2 x float> %i.ht, %i.if
  %i.ih = fadd <2 x float> %i.hy, %i.ig           ; 5 uses
  %i.ii = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.hq, i64 0
  %i.ij = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.hs, i64 1
  %i.ik = fsub <2 x float> %i.ii, %i.ij
  %i.il = fmul <2 x float> %i.ht, %i.ik
  %i.im = fadd <2 x float> %i.hy, %i.il           ; 2 uses
  %i.in = extractelement <2 x float> %i.ih, i64 0
  %i.io = fsub float %i.ia, %i.in
  %i.ip = extractelement <2 x float> %i.ih, i64 1
  %i.iq = fsub float %i.ic, %i.ip
  %i.ir = fsub <2 x float> %i.im, %i.ih           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ir, %i.ir
  %i.is = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.it = extractelement <2 x float> %i.ir, i64 0 ; 2 uses
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.it, float %i.it, float %i.is)
  %i.iv = fadd float %i.iu, 0.000000e+00
  %sqrt.i.i.i.i98 = tail call noundef float @llvm.sqrt.f32(float %i.iv) ; 2 uses
  %i.iw = fdiv float 1.000000e+00, %sqrt.i.i.i.i98 ; 2 uses
  %i.ix = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.ir, %i.iy           ; 3 uses
  %i.ja = fmul float %i.iw, 0.000000e+00          ; 2 uses
  %i.jb = extractelement <2 x float> %i.iz, i64 1
  %i.jc = fmul float %i.iq, %i.jb
  %i.jd = extractelement <2 x float> %i.iz, i64 0
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.io, float %i.jc)
  %i.jf = tail call noundef float @llvm.fmuladd.f32(float %i.ja, float 0.000000e+00, float %i.je) ; 4 uses
  %i.jg = fcmp olt float %i.jf, 0.000000e+00
  br i1 %i.jg, label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.jh = fcmp ogt float %i.jf, %sqrt.i.i.i.i98
  br i1 %i.jh, label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ji = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x float> %i.iz, %i.jj
  %i.jl = fmul float %i.ja, %i.jf
  %i.jm = fadd <2 x float> %i.ih, %i.jk
  %i.jn = fadd float %i.jl, 0.000000e+00
  %.sroa.3.8.vec.insert.i.i37.i = insertelement <2 x float> poison, float %i.jn, i64 0
  %.sroa.3.12.vec.insert.i.i38.i = shufflevector <2 x float> %.sroa.3.8.vec.insert.i.i37.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit

_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.013.0.copyload.pn.i = phi <2 x float> [ %i.jm, %bb.e ], [ %i.ih, %bb.c ], [ %i.im, %bb.d ] ; 2 uses
  %.sroa.4.0.copyload.pn.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i38.i, %bb.e ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %bb.d ]
  %.sroa.0152.0.vec.extract = extractelement <2 x float> %.sroa.013.0.copyload.pn.i, i64 0
  %i.jo = fsub float %.sroa.0152.0.vec.extract, %i.ia ; 2 uses
  %.sroa.0152.4.vec.extract = extractelement <2 x float> %.sroa.013.0.copyload.pn.i, i64 1
  %i.jp = fsub float %.sroa.0152.4.vec.extract, %i.ic ; 2 uses
  %.sroa.5153.8.vec.extract = extractelement <2 x float> %.sroa.4.0.copyload.pn.i, i64 0 ; 2 uses
  %i.jq = fmul float %i.jp, %i.jp
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jo, float %i.jo, float %i.jq)
  %i.js = tail call float @llvm.fmuladd.f32(float %.sroa.5153.8.vec.extract, float %.sroa.5153.8.vec.extract, float %i.jr)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.js)
  %i.jt = fcmp olt float %sqrt.i, 1.200000e+01
  %i.ju = add nuw nsw i32 %.027183, 1             ; 2 uses
  %spec.select = select i1 %i.jt, i32 %i.ju, i32 0
  %i.jv = fsub <3 x float> %i.dj, %i.cg
  %i.jw = fdiv float 1.000000e+00, %i.ds
  %i.jx = insertelement <3 x float> poison, float %i.jw, i64 0
  %i.jy = shufflevector <3 x float> %i.jx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jz = fmul <3 x float> %i.jv, %i.jy           ; 3 uses
  %i.ka = shufflevector <3 x float> %i.jz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kb = fmul <2 x float> %i.cb, %i.ka
  %i.kc = shufflevector <3 x float> %i.jz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.kc, <2 x float> %i.kb)
  %i.ke = shufflevector <3 x float> %i.jz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ke, <2 x float> %i.kd) ; 3 uses
  %i.kg = load i8, ptr %i.b, align 1, !tbaa !47, !range !33, !noundef !34
  %i.kh = trunc nuw i8 %i.kg to i1
  %.not36 = xor i1 %i.kh, true
  %i.ki = extractelement <2 x float> %i.kf, i64 0 ; 2 uses
  %i.kj = fcmp ult float %i.ki, 5.000000e-01
  %or.cond37 = or i1 %i.kj, %.not36
  %i.kk = fcmp ugt float %i.ki, 8.000000e-01
  %or.cond38 = or i1 %i.kk, %or.cond37
  %i.kl = extractelement <2 x float> %i.kf, i64 1 ; 2 uses
  %i.km = fcmp ult float %i.kl, 5.000000e-01
  %or.cond39 = or i1 %i.km, %or.cond38
  %i.kn = fcmp ugt float %i.kl, 8.000000e-01
  %or.cond40 = or i1 %i.kn, %or.cond39
  %i.ko = or disjoint i32 %.027183, 4
  %.3 = select i1 %or.cond40, i32 %spec.select, i32 %i.ko ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit
  store <2 x float> %i.kf, ptr %0, align 4
  store <2 x float> zeroinitializer, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.kp = icmp samesign ult i32 %.027183, 2
  %i.kq = icmp eq i32 %.3, 0
  %i.kr = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %i.kr, label %bb.c, label %._crit_edge, !llvm.loop !55
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 12) i32 @_ZN8ImGuizmoL13GetRotateTypeEv() unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.c = load float, ptr %i.b, align 8, !tbaa !42 ; 4 uses
  %i.d = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), align 8, !tbaa !56
  %i.e = fsub float %i.c, %i.d                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  %i.g = load float, ptr %i.f, align 4, !tbaa !44 ; 4 uses
  %i.h = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 644), align 4, !tbaa !57
  %i.i = fsub float %i.g, %i.h                    ; 2 uses
  %i.j = fmul float %i.i, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.j)
  %i.l = fadd float %i.k, 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.l) ; 2 uses
  %i.m = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49 ; 2 uses
  %i.n = fadd float %i.m, -1.000000e+00
  %i.o = fcmp ult float %sqrt.i, %i.n
  %i.p = fadd float %i.m, 1.000000e+00
  %i.q = fcmp uge float %sqrt.i, %i.p
  %or.cond.not = or i1 %i.o, %i.q
  %.sroa.0.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 3 uses
  %.sroa.4.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), align 8, !tbaa !10 ; 3 uses
  %.sroa.5.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 148), align 4, !tbaa !10 ; 3 uses
  %.sroa.6.0.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 152), align 8, !tbaa !10
  %.sroa.7.16.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 3 uses
  %.sroa.9.16.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !10 ; 3 uses
  %.sroa.10.16.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 164), align 4, !tbaa !10 ; 3 uses
  %.sroa.11.16.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 168), align 8, !tbaa !10
  %.sroa.12.32.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 3 uses
  %.sroa.14.32.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !10 ; 3 uses
  %.sroa.15.32.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !10 ; 3 uses
  %.sroa.16.32.copyload = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !10
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 6 uses
  %i.s = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !14 ; 6 uses
  %i.t = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13 ; 6 uses
  %i.u = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15 ; 3 uses
  %i.v = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 6 uses
  %i.w = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 6 uses
  %i.x = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 6 uses
  %i.y = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 9 uses
  %i.z = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 9 uses
  %i.aa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 9 uses
  %i.ab = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4 ; 3 uses
  %i.ac = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 224), align 8 ; 3 uses
  %i.ad = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 212), align 4
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 228), align 4
  %i.af = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 244), align 4 ; 3 uses
  %i.ag = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8 ; 9 uses
  %i.ah = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4 ; 3 uses
  %i.ai = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4 ; 3 uses
  %i.aj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8
  %i.ak = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 432), align 8 ; 3 uses
  %i.al = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 448), align 8 ; 3 uses
  %i.am = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 208), align 8 ; 3 uses
  %i.an = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4 ; 3 uses
  %i.ao = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 240), align 8 ; 3 uses
  %i.ap = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4 ; 3 uses
  %i.aq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4
  %i.ar = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8 ; 2 uses
  %i.as = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.at = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8 ; 3 uses
  %i.au = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8 ; 3 uses
  %i.av = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4 ; 3 uses
  %i.aw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8 ; 3 uses
  %i.ax = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4 ; 3 uses
  %i.ay = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 968), align 8 ; 3 uses
  %i.az = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.ba = shufflevector <4 x float> %i.ad, <4 x float> %i.az, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.bb = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bc = insertelement <4 x float> %i.bb, float %i.ae, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.aj, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.as, i64 3 ; 3 uses
  %i.bf = fmul float %.sroa.4.0.copyload, %.sroa.4.0.copyload
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float %.sroa.0.0.copyload, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %.sroa.5.0.copyload, float %i.bg)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bh)
  %i.bi = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 4 uses
  %i.bj = fmul float %.sroa.0.0.copyload, %i.bi   ; 3 uses
  %i.bk = fmul float %.sroa.4.0.copyload, %i.bi   ; 3 uses
  %i.bl = fmul float %.sroa.5.0.copyload, %i.bi   ; 3 uses
  %i.bm = fmul float %.sroa.6.0.copyload, %i.bi
  %i.bn = fmul float %i.s, %i.bk
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.r, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.t, float %i.bo)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.u, float %i.bp)
  %i.br = fmul float %i.bk, %i.w
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.v, float %i.br)
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.x, float %i.bs)
  %i.bu = fmul float %i.bk, %i.z
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.y, float %i.bu)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.aa, float %i.bv) ; 2 uses
  %i.bx = tail call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp olt float %i.bx, f0x34000000
  %i.bz = fsub float %i.bt, %i.bq
  %i.ca = fneg float %i.bz
  %i.cb = fdiv float %i.ca, %i.bw
  %.0.i = select i1 %i.by, float -1.000000e+00, float %i.cb ; 3 uses
  %i.cc = fmul float %i.y, %.0.i
  %i.cd = fmul float %i.z, %.0.i
  %i.ce = fmul float %i.aa, %.0.i
  %i.cf = fadd float %i.v, %i.cc
  %i.cg = fadd float %i.w, %i.cd
  %i.ch = fadd float %i.x, %i.ce
  %i.ci = fsub float %i.cf, %i.r                  ; 3 uses
  %i.cj = fsub float %i.cg, %i.s                  ; 3 uses
  %i.ck = fsub float %i.ch, %i.t                  ; 3 uses
  %i.cl = fmul float %i.cj, %i.cj
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cl)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cm)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cn)
  %i.co = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.cp = fmul float %i.ci, %i.co                 ; 4 uses
  %i.cq = fmul float %i.cj, %i.co                 ; 4 uses
  %i.cr = fmul float %i.ck, %i.co                 ; 4 uses
  %i.cs = fmul float %i.z, %i.cq
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.y, float %i.cs)
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.aa, float %i.ct)
  %i.cv = fcmp ogt float %i.cu, f0x34000000
  br i1 %i.cv, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.h, %bb.c, %bb.f, %bb.a
  %.1.lcssa = phi i32 [ 11, %bb.a ], [ %.3, %bb.c ], [ %.3.1, %bb.f ], [ %spec.select.2, %bb.h ], [ 0, %bb.g ]
  ret i32 %.1.lcssa

bb.b:                                             ; preds = %.lr.ph
  %i.cw = fmul float %i.cq, %i.ab
  %i.cx = fmul float %i.cq, %i.ac
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.an, float %i.cw)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.ap, float %i.cy)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.am, float %i.cx)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.ao, float %i.da)
  %i.dc = fmul float %i.cz, %i.ag
  %i.dd = fmul float %i.db, %i.ag
  %i.de = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.dd, i64 1
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dh = fmul <4 x float> %i.dg, %i.be
  %i.di = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.dc, i64 1
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.ba, <4 x float> %i.dh) ; 4 uses
  %i.dm = extractelement <4 x float> %i.dl, i64 0
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.af, float %i.dm)
  %i.do = fmul float %i.ag, %i.dn                 ; 3 uses
  %i.dp = extractelement <4 x float> %i.dl, i64 1
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ah, float %i.dp)
  %i.dr = fadd float %i.ai, %i.dq
  %i.ds = extractelement <4 x float> %i.dl, i64 2
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ak, float %i.ds)
  %i.du = fadd float %i.al, %i.dt
  %i.dv = extractelement <4 x float> %i.dl, i64 3
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.do, float %i.at, float %i.dv)
  %i.dx = fadd float %i.au, %i.dw
  %i.dy = fdiv float 5.000000e-01, %i.dx          ; 2 uses
  %i.dz = fmul float %i.dr, %i.dy
  %i.ea = fmul float %i.du, %i.dy
  %i.eb = fadd float %i.dz, 5.000000e-01
  %i.ec = fadd float %i.ea, 5.000000e-01
  %i.ed = fsub float 1.000000e+00, %i.ec
  %i.ee = fmul float %i.av, %i.eb
  %i.ef = fmul float %i.aw, %i.ed
  %i.eg = fadd float %i.ax, %i.ee
  %i.eh = fadd float %i.ay, %i.ef
  %i.ei = fsub float %i.eg, %i.c                  ; 2 uses
  %i.ej = fsub float %i.eh, %i.g                  ; 2 uses
  %i.ek = fmul float %i.ej, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %i.ek)
  %i.em = fadd float %i.el, 0.000000e+00
  %sqrt.i57 = tail call noundef float @llvm.sqrt.f32(float %i.em)
  %i.en = fcmp olt float %sqrt.i57, 8.000000e+00
  %spec.select = select i1 %i.en, i32 8, i32 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.3 = phi i32 [ %spec.select, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.eo = icmp eq i32 %.3, 0
  br i1 %i.eo, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.ep = fmul float %.sroa.9.16.copyload, %.sroa.9.16.copyload
  %i.eq = tail call float @llvm.fmuladd.f32(float %.sroa.7.16.copyload, float %.sroa.7.16.copyload, float %i.ep)
  %i.er = tail call float @llvm.fmuladd.f32(float %.sroa.10.16.copyload, float %.sroa.10.16.copyload, float %i.eq)
  %sqrt.i.i.i.i.1 = tail call noundef float @llvm.sqrt.f32(float %i.er)
  %i.es = fdiv float 1.000000e+00, %sqrt.i.i.i.i.1 ; 4 uses
  %i.et = fmul float %.sroa.7.16.copyload, %i.es  ; 3 uses
  %i.eu = fmul float %.sroa.9.16.copyload, %i.es  ; 3 uses
  %i.ev = fmul float %.sroa.10.16.copyload, %i.es ; 3 uses
  %i.ew = fmul float %.sroa.11.16.copyload, %i.es
  %i.ex = fmul float %i.s, %i.eu
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.et, float %i.r, float %i.ex)
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.t, float %i.ey)
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.ew, float %i.u, float %i.ez)
  %i.fb = fmul float %i.eu, %i.w
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.et, float %i.v, float %i.fb)
  %i.fd = tail call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.x, float %i.fc)
  %i.fe = fmul float %i.eu, %i.z
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.et, float %i.y, float %i.fe)
  %i.fg = tail call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.aa, float %i.ff) ; 2 uses
  %i.fh = tail call float @llvm.fabs.f32(float %i.fg)
  %i.fi = fcmp olt float %i.fh, f0x34000000
  %i.fj = fsub float %i.fd, %i.fa
  %i.fk = fneg float %i.fj
  %i.fl = fdiv float %i.fk, %i.fg
  %.0.i.1 = select i1 %i.fi, float -1.000000e+00, float %i.fl ; 3 uses
  %i.fm = fmul float %i.y, %.0.i.1
  %i.fn = fmul float %i.z, %.0.i.1
end_hunk_2
begin_hunk_3_@_ZN8ImGuizmoL12GetScaleTypeEv:bb.a
  %i.t = load float, ptr %2, align 4, !tbaa !12   ; 4 uses
  %i.u = load float, ptr %i.p, align 4, !tbaa !14 ; 4 uses
  %i.v = load float, ptr %i.q, align 4, !tbaa !13 ; 4 uses
  %i.w = load float, ptr %i.r, align 4, !tbaa !15
  %i.x = fmul float %i.u, %i.u
  %i.y = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.x)
  %i.z = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.y)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.z)
  %i.aa = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 4 uses
  %i.ab = fmul float %i.t, %i.aa                  ; 3 uses
  %i.ac = fmul float %i.u, %i.aa                  ; 3 uses
  %i.ad = fmul float %i.v, %i.aa                  ; 3 uses
  %i.ae = fmul float %i.w, %i.aa
  %i.af = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 3 uses
  %i.ag = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !14 ; 3 uses
  %i.ah = fmul float %i.ag, %i.ac
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.af, float %i.ah)
  %i.aj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13 ; 3 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.aj, float %i.ai)
  %i.al = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.al, float %i.ak)
  %i.an = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.ao = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.ap = fmul float %i.ac, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.an, float %i.ap)
  %i.ar = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.as = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ar, float %i.aq)
  %i.at = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.au = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.av = fmul float %i.ac, %i.au
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.at, float %i.av)
  %i.ax = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.ay = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ax, float %i.aw) ; 2 uses
  %i.az = tail call float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp olt float %i.az, f0x34000000
  %i.bb = fsub float %i.as, %i.am
  %i.bc = fneg float %i.bb
  %i.bd = fdiv float %i.bc, %i.ay
  %.0.i = select i1 %i.ba, float -1.000000e+00, float %i.bd ; 3 uses
  %i.be = fmul float %i.at, %.0.i
  %i.bf = fmul float %i.au, %.0.i
  %i.bg = fmul float %i.ax, %.0.i
  %i.bh = fadd float %i.an, %i.be                 ; 3 uses
  %i.bi = fadd float %i.ao, %i.bf                 ; 3 uses
  %i.bj = fadd float %i.ar, %i.bg                 ; 3 uses
  %i.bk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16 ; 3 uses
  %i.bl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16 ; 3 uses
  %i.bm = fmul float %i.bl, %i.bi
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bk, float %i.bm)
  %i.bo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 3 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bo, float %i.bn)
  %i.bq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 3 uses
  %i.br = fadd float %i.bq, %i.bp
  %i.bs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16 ; 3 uses
  %i.bt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16 ; 3 uses
  %i.bu = fmul float %i.bt, %i.bi
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bs, float %i.bu)
  %i.bw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16 ; 3 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bw, float %i.bv)
  %i.by = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16 ; 3 uses
  %i.bz = fadd float %i.by, %i.bx
  %i.ca = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 3 uses
  %i.cb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 3 uses
  %i.cc = fmul float %i.bi, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.ca, float %i.cc)
  %i.ce = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 3 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ce, float %i.cd)
  %i.cg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 3 uses
  %i.ch = fadd float %i.cg, %i.cf
  %i.ci = fdiv float 5.000000e-01, %i.ch          ; 2 uses
  %i.cj = fmul float %i.br, %i.ci
  %i.ck = fmul float %i.bz, %i.ci
  %i.cl = fadd float %i.cj, 5.000000e-01
  %i.cm = fadd float %i.ck, 5.000000e-01
  %i.cn = fsub float 1.000000e+00, %i.cm
  %i.co = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.cp = fmul float %i.t, %i.co                  ; 2 uses
  %i.cq = fmul float %i.u, %i.co                  ; 2 uses
  %i.cr = fmul float %i.v, %i.co                  ; 2 uses
  %i.cs = fmul float %i.cp, 1.000000e-01
  %i.ct = fmul float %i.cq, 1.000000e-01
  %i.cu = fmul float %i.cr, 1.000000e-01
  %i.cv = fadd float %i.af, %i.cs                 ; 3 uses
  %i.cw = fadd float %i.ag, %i.ct                 ; 3 uses
  %i.cx = fadd float %i.aj, %i.cu                 ; 3 uses
  %i.cy = fmul float %i.bl, %i.cw
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.bk, float %i.cy)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.bo, float %i.cz)
  %i.db = fadd float %i.bq, %i.da
  %i.dc = fmul float %i.bt, %i.cw
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.bs, float %i.dc)
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.bw, float %i.dd)
  %i.df = fadd float %i.by, %i.de
  %i.dg = fmul float %i.cb, %i.cw
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ca, float %i.dg)
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.ce, float %i.dh)
  %i.dj = fadd float %i.cg, %i.di
  %i.dk = fdiv float 5.000000e-01, %i.dj          ; 2 uses
  %i.dl = fmul float %i.db, %i.dk
  %i.dm = fmul float %i.df, %i.dk
  %i.dn = fadd float %i.dm, 5.000000e-01
  %i.do = fadd float %i.af, %i.cp                 ; 3 uses
  %i.dp = fadd float %i.ag, %i.cq                 ; 3 uses
  %i.dq = fadd float %i.aj, %i.cr                 ; 3 uses
  %i.dr = fmul float %i.bl, %i.dp
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.do, float %i.bk, float %i.dr)
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.bo, float %i.ds)
  %i.du = fadd float %i.bq, %i.dt
  %i.dv = fmul float %i.bt, %i.dp
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.do, float %i.bs, float %i.dv)
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.bw, float %i.dw)
  %i.dy = fadd float %i.by, %i.dx
  %i.dz = fmul float %i.cb, %i.dp
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ca, float %i.dz)
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ce, float %i.ea)
  %i.ec = fadd float %i.cg, %i.eb
  %i.ed = fdiv float 5.000000e-01, %i.ec          ; 2 uses
  %i.ee = fmul float %i.du, %i.ed
  %i.ef = fmul float %i.dy, %i.ed
  %i.eg = fadd float %i.ef, 5.000000e-01
  %i.eh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0
  %i.ej = fmul float %i.ei, %i.cl
  %i.ek = extractelement <2 x float> %i.eh, i64 1
  %i.el = fmul float %i.ek, %i.cn
  %i.em = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.en = extractelement <2 x float> %i.em, i64 0
  %i.eo = fadd float %i.en, %i.ej                 ; 2 uses
  %i.ep = extractelement <2 x float> %i.em, i64 1
  %i.eq = fadd float %i.ep, %i.el                 ; 2 uses
  %i.er = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dl, i64 0
  %i.es = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dn, i64 1
  %i.et = fsub <2 x float> %i.er, %i.es
  %i.eu = fmul <2 x float> %i.eh, %i.et
  %i.ev = fadd <2 x float> %i.em, %i.eu           ; 5 uses
  %i.ew = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ee, i64 0
  %i.ex = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.eg, i64 1
  %i.ey = fsub <2 x float> %i.ew, %i.ex
  %i.ez = fmul <2 x float> %i.eh, %i.ey
  %i.fa = fadd <2 x float> %i.em, %i.ez           ; 2 uses
  %i.fb = extractelement <2 x float> %i.ev, i64 0
  %i.fc = fsub float %i.eo, %i.fb
  %i.fd = extractelement <2 x float> %i.ev, i64 1
  %i.fe = fsub float %i.eq, %i.fd
  %i.ff = fsub <2 x float> %i.fa, %i.ev           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ff, %i.ff
  %i.fg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fh = extractelement <2 x float> %i.ff, i64 0 ; 2 uses
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fh, float %i.fh, float %i.fg)
  %i.fj = fadd float %i.fi, 0.000000e+00
  %sqrt.i.i.i.i80 = tail call noundef float @llvm.sqrt.f32(float %i.fj) ; 2 uses
  %i.fk = fdiv float 1.000000e+00, %sqrt.i.i.i.i80 ; 2 uses
  %i.fl = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x float> %i.ff, %i.fm           ; 3 uses
  %i.fo = fmul float %i.fk, 0.000000e+00          ; 2 uses
  %i.fp = extractelement <2 x float> %i.fn, i64 1
  %i.fq = fmul float %i.fe, %i.fp
  %i.fr = extractelement <2 x float> %i.fn, i64 0
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fc, float %i.fq)
  %i.ft = tail call noundef float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.fs) ; 4 uses
  %i.fu = fcmp olt float %i.ft, 0.000000e+00
  br i1 %i.fu, label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fv = fcmp ogt float %i.ft, %sqrt.i.i.i.i80
  br i1 %i.fv, label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fw = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.fn, %i.fx
  %i.fz = fmul float %i.fo, %i.ft
  %i.ga = fadd <2 x float> %i.ev, %i.fy
  %i.gb = fadd float %i.fz, 0.000000e+00
  %.sroa.3.8.vec.insert.i.i37.i = insertelement <2 x float> poison, float %i.gb, i64 0
  %.sroa.3.12.vec.insert.i.i38.i = shufflevector <2 x float> %.sroa.3.8.vec.insert.i.i37.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit

_ZN8ImGuizmo14PointOnSegmentERKNS_5vec_tES2_S2_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.013.0.copyload.pn.i = phi <2 x float> [ %i.ga, %bb.e ], [ %i.ev, %bb.c ], [ %i.fa, %bb.d ] ; 2 uses
  %.sroa.4.0.copyload.pn.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i38.i, %bb.e ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %bb.d ]
  %.sroa.0100.0.vec.extract = extractelement <2 x float> %.sroa.013.0.copyload.pn.i, i64 0
  %i.gc = fsub float %.sroa.0100.0.vec.extract, %i.eo ; 2 uses
  %.sroa.0100.4.vec.extract = extractelement <2 x float> %.sroa.013.0.copyload.pn.i, i64 1
  %i.gd = fsub float %.sroa.0100.4.vec.extract, %i.eq ; 2 uses
  %.sroa.5101.8.vec.extract = extractelement <2 x float> %.sroa.4.0.copyload.pn.i, i64 0 ; 2 uses
  %i.ge = fmul float %i.gd, %i.gd
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %i.ge)
  %i.gg = tail call float @llvm.fmuladd.f32(float %.sroa.5101.8.vec.extract, float %.sroa.5101.8.vec.extract, float %i.gf)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.gg)
  %i.gh = fcmp uge float %sqrt.i, 1.200000e+01    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  %i.gi = add nuw nsw i32 %.017118, 1
  %i.gj = icmp samesign ult i32 %.017118, 2
  %i.gk = and i1 %i.gj, %i.gh
  br i1 %i.gk, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8ImGuizmo6EnableEb(i1 noundef zeroext %0) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i1 %0 to i8
  store i8 %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50
  br i1 %0, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN8ImGuizmo27DecomposeMatrixToComponentsEPKfPfS2_S2_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %3) local_unnamed_addr #7 {
bb.a:
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4 ; 2 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4 ; 2 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.33.0.copyload = load float, ptr %.sroa.33.0..sroa_idx, align 4 ; 2 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.36.0.copyload = load float, ptr %.sroa.36.0..sroa_idx, align 4 ; 3 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.45.0.copyload = load float, ptr %.sroa.45.0..sroa_idx, align 4
  %i.a = load <2 x float>, ptr %0, align 4        ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %i.b = load <2 x float>, ptr %.sroa.17.0..sroa_idx, align 4 ; 2 uses
  %i.c = shufflevector <2 x float> %i.a, <2 x float> %i.b, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.d = fmul <2 x float> %i.c, %i.c
  %i.e = shufflevector <2 x float> %i.a, <2 x float> %i.b, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.e, <2 x float> %i.d)
  %i.g = insertelement <2 x float> poison, float %.sroa.11.0.copyload, i64 0
  %i.h = insertelement <2 x float> %i.g, float %.sroa.23.0.copyload, i64 1 ; 2 uses
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.h, <2 x float> %i.f)
  %i.j = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.i) ; 3 uses
  %i.k = fmul float %.sroa.33.0.copyload, %.sroa.33.0.copyload
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %.sroa.30.0.copyload, float %i.k)
  %i.m = tail call float @llvm.fmuladd.f32(float %.sroa.36.0.copyload, float %.sroa.36.0.copyload, float %i.l)
  %sqrt.i11 = tail call noundef float @llvm.sqrt.f32(float %i.m) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = extractelement <2 x float> %i.j, i64 1
  %i.p = fdiv float 1.000000e+00, %i.o
  %i.q = fmul float %.sroa.23.0.copyload, %i.p    ; 3 uses
  %i.r = insertelement <2 x float> %i.j, float %sqrt.i11, i64 1
  %i.s = fdiv <2 x float> splat (float 1.000000e+00), %i.r ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.u = fmul float %.sroa.7.0.copyload, %i.t
  %i.v = insertelement <2 x float> %i.a, float %.sroa.36.0.copyload, i64 1
  %i.w = fmul <2 x float> %i.v, %i.s              ; 2 uses
  %i.x = fneg float %i.t
  %i.y = fmul float %.sroa.11.0.copyload, %i.x
  %i.z = extractelement <2 x float> %i.w, i64 1   ; 3 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.aa)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load <2 x float>, ptr %.sroa.43.0..sroa_idx, align 4
  store <2 x float> %i.j, ptr %3, align 4, !tbaa !10
  store float %sqrt.i11, ptr %i.n, align 4, !tbaa !10
  %i.ae = tail call float @atan2f(float noundef %i.q, float noundef %i.z) #19
  %i.af = tail call float @atan2f(float noundef %i.y, float noundef %sqrt) #19
  %i.ag = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.af, i64 1
  %i.ai = fmul <2 x float> %i.ah, splat (float f0x42652EE0)
  store <2 x float> %i.ai, ptr %2, align 4, !tbaa !10
  %i.aj = extractelement <2 x float> %i.w, i64 0
  %i.ak = tail call float @atan2f(float noundef %i.u, float noundef %i.aj) #19
  %i.al = fmul float %i.ak, f0x42652EE0
  store float %i.al, ptr %i.ac, align 4, !tbaa !10
  store <2 x float> %i.ad, ptr %1, align 4, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sroa.45.0.copyload, ptr %i.am, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN8ImGuizmo29RecomposeMatrixFromComponentsEPKfS1_S1_Pf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %3) local_unnamed_addr #14 {
.preheader.preheader:
  %i.a = load float, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16, !tbaa !12 ; 3 uses
  %i.b = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 4), align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.b, %i.b
  %i.c = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.d = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.c)
  %i.e = extractelement <2 x float> %i.b, i64 1   ; 2 uses
  %i.f = tail call noundef float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.d) ; 2 uses
  %i.g = fcmp olt float %i.f, f0x34000000
  br i1 %i.g, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit, label %bb.a

bb.a:                                             ; preds = %.preheader.preheader
  %i.h = load float, ptr %1, align 4, !tbaa !10
  %i.i = fmul float %i.h, f0x3C8EFA35             ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.f)
  %i.j = tail call float @sinf(float noundef %i.i) #19 ; 3 uses
  %i.k = tail call float @cosf(float noundef %i.i) #19 ; 3 uses
  %i.l = fsub float 1.000000e+00, %i.k            ; 5 uses
  %i.m = fdiv float 1.000000e+00, %sqrt.i         ; 2 uses
  %i.n = fmul float %i.a, %i.m                    ; 5 uses
  %i.o = insertelement <2 x float> poison, float %i.m, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.b, %i.p              ; 4 uses
  %i.r = fmul float %i.n, %i.n
  %i.s = fmul <2 x float> %i.q, %i.q
  %i.t = insertelement <2 x float> poison, float %i.l, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = insertelement <2 x float> poison, float %i.k, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.u, <2 x float> %i.w)
  %i.y = extractelement <2 x float> %i.q, i64 0   ; 3 uses
  %i.z = fmul float %i.n, %i.y
  %i.aa = fmul float %i.z, %i.l                   ; 2 uses
  %i.ab = extractelement <2 x float> %i.q, i64 1  ; 3 uses
  %i.ac = fmul float %i.ab, %i.j                  ; 2 uses
  %i.ad = fadd float %i.ac, %i.aa
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.r, float %i.l, float %i.k)
  %i.af = fmul float %i.ab, %i.n
  %i.ag = fmul float %i.y, %i.ab
  %i.ah = fmul float %i.af, %i.l                  ; 2 uses
  %i.ai = fmul float %i.ag, %i.l                  ; 2 uses
  %i.aj = fmul float %i.y, %i.j                   ; 2 uses
  %i.ak = fmul float %i.n, %i.j                   ; 2 uses
  %i.al = fsub float %i.ah, %i.aj
  %i.am = fsub float %i.aa, %i.ac
  %i.an = fadd float %i.ak, %i.ai
  %i.ao = fadd float %i.aj, %i.ah
  %i.ap = fsub float %i.ai, %i.ak
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit: ; preds = %.preheader.preheader, %bb.a
  %.sroa.4.0 = phi float [ %i.ad, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 4 uses
  %.sroa.7.0 = phi float [ %i.al, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 3 uses
  %.sroa.15.0 = phi float [ %i.an, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 4 uses
  %.sroa.20.0 = phi float [ %i.ao, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 2 uses
  %.sroa.22.0 = phi float [ %i.ap, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 2 uses
  %.sroa.11.0 = phi float [ %i.am, %bb.a ], [ 0.000000e+00, %.preheader.preheader ] ; 4 uses
  %.sink60.i = phi float [ %i.ae, %bb.a ], [ 1.000000e+00, %.preheader.preheader ] ; 3 uses
  %i.aq = phi <2 x float> [ %i.x, %bb.a ], [ splat (float 1.000000e+00), %.preheader.preheader ] ; 4 uses
  %i.ar = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16, !tbaa !12 ; 3 uses
  %i.as = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 20), align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop84 = fmul <2 x float> %i.as, %i.as
  %i.at = extractelement <2 x float> %foldExtExtBinop84, i64 0
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %i.av = extractelement <2 x float> %i.as, i64 1 ; 2 uses
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.au) ; 2 uses
  %i.ax = fcmp olt float %i.aw, f0x34000000
  br i1 %i.ax, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.1, label %bb.b

bb.b:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  %i.ba = fmul float %i.az, f0x3C8EFA35           ; 2 uses
  %sqrt.i.1 = tail call float @llvm.sqrt.f32(float %i.aw)
  %i.bb = tail call float @sinf(float noundef %i.ba) #19 ; 2 uses
  %i.bc = tail call float @cosf(float noundef %i.ba) #19 ; 3 uses
  %i.bd = fsub float 1.000000e+00, %i.bc          ; 4 uses
  %i.be = fdiv float 1.000000e+00, %sqrt.i.1      ; 2 uses
  %i.bf = fmul float %i.ar, %i.be                 ; 5 uses
  %i.bg = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.as, %i.bh           ; 5 uses
  %i.bj = fmul float %i.bf, %i.bf
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bd, float %i.bc) ; 2 uses
  %i.bl = fmul <2 x float> %i.bi, %i.bi
  %i.bm = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.bp) ; 3 uses
  %i.br = extractelement <2 x float> %i.bi, i64 0 ; 2 uses
  %i.bs = fmul float %i.bf, %i.br
  %i.bt = fmul float %i.bs, %i.bd                 ; 2 uses
  %i.bu = extractelement <2 x float> %i.bi, i64 1 ; 3 uses
  %i.bv = fmul float %i.br, %i.bu
  %i.bw = fmul float %i.bu, %i.bf
  %i.bx = fmul float %i.bu, %i.bb                 ; 2 uses
  %i.by = fadd float %i.bx, %i.bt                 ; 2 uses
  %i.bz = fsub float %i.bt, %i.bx                 ; 2 uses
  %i.ca = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bw, i64 1
  %i.cc = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ce = insertelement <4 x float> %i.cd, float %i.bv, i64 3
  %i.cf = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.bd, i64 1
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ci = fmul <4 x float> %i.ce, %i.ch           ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN8ImGuizmo29RecomposeMatrixFromComponentsEPKfS1_S1_Pf:.preheader.preheader
  %i.ip = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.io, <4 x float> %i.ik)
  %i.iq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hn, i64 0
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.is = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.fc, <4 x i32> <i32 6, i32 7, i32 poison, i32 3>
  %i.it = shufflevector <4 x float> %i.is, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.iu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> %i.it, <4 x float> %i.ip)
  %i.iv = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.iw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iv, <4 x float> zeroinitializer, <4 x float> %i.iu) ; 3 uses
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ix, ptr %.sroa.11.0..sroa_idx, align 4
  %i.iy = extractelement <4 x float> %i.iw, i64 2
  store float %i.iy, ptr %.sroa.13.0..sroa_idx, align 4
  store <4 x float> %i.ie, ptr %.sroa.14.0..sroa_idx, align 4
  %i.iz = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.11.0, i64 0
  %i.ja = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fr, i64 0
  %i.jb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> zeroinitializer, <2 x float> %i.ja)
  %i.jc = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.15.0, i64 0
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> zeroinitializer, <2 x float> %i.jb)
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jf = fadd <4 x float> %i.je, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.jg = extractelement <4 x float> %i.jf, i64 0
  %i.jh = fadd float %i.fp, 0.000000e+00          ; 2 uses
  %i.ji = extractelement <4 x float> %i.db, i64 1
  %i.jj = tail call float @llvm.fmuladd.f32(float %.sroa.11.0, float %i.ji, float %i.fq)
  %i.jk = tail call float @llvm.fmuladd.f32(float %.sroa.15.0, float %i.hj, float %i.jj)
  %i.jl = fadd float %i.jk, 0.000000e+00          ; 2 uses
  %i.jm = shufflevector <4 x float> %i.fd, <4 x float> %i.fc, <4 x i32> <i32 poison, i32 0, i32 4, i32 poison>
  %i.jn = insertelement <4 x float> %i.jm, float %.sroa.75.0, i64 0 ; 2 uses
  %i.jo = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jh, i64 0
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.jq = shufflevector <4 x float> %i.fc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 poison, i32 1, i32 7>
  %i.jr = shufflevector <4 x float> %i.ge, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.js = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jl, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ju = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <4 x i32> <i32 2, i32 3, i32 5, i32 poison>
  %i.jv = insertelement <4 x float> %i.ju, float -0.000000e+00, i64 3 ; 2 uses
  %i.jw = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sink60.i, i64 0 ; 2 uses
  %i.jx = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fl, i64 0
  %i.jy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> zeroinitializer, <2 x float> %i.jx)
  %i.jz = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.sroa.7.0, i64 0 ; 2 uses
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> zeroinitializer, <2 x float> %i.jy)
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kc = fadd <4 x float> %i.kb, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.kd = extractelement <4 x float> %i.kc, i64 0
  %i.ke = fadd float %i.fi, 0.000000e+00          ; 2 uses
  %i.kf = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.db, <2 x i32> <i32 5, i32 1>
  %i.kg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.fk, i64 0
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.kf, <2 x float> %i.kg)
  %i.ki = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.dc, <2 x i32> <i32 3, i32 1>
  %i.kj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jz, <2 x float> %i.ki, <2 x float> %i.kh)
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kl = fadd <4 x float> %i.kk, zeroinitializer ; 2 uses
  %i.km = insertelement <2 x float> %i.aq, float %.sroa.4.0, i64 1
  %i.kn = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x float> %i.km, %i.kn
  %i.kp = insertelement <2 x float> poison, float %.sroa.11.0, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %.sink60.i, i64 1
  %i.kr = insertelement <2 x float> poison, float %.sroa.36.0, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.ks, <2 x float> %i.ko)
  %i.ku = insertelement <2 x float> poison, float %.sroa.15.0, i64 0
  %i.kv = insertelement <2 x float> %i.ku, float %.sroa.7.0, i64 1
  %i.kw = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.kx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.kw, <2 x float> %i.kt)
  %i.ky = fadd <2 x float> %i.kx, zeroinitializer ; 2 uses
  %i.kz = fmul <2 x float> %i.ky, zeroinitializer ; 2 uses
  %i.la = extractelement <2 x float> %i.kz, i64 0
  %i.lb = tail call float @llvm.fmuladd.f32(float %i.jh, float 0.000000e+00, float %i.la)
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.jl, float 0.000000e+00, float %i.lb)
  %i.ld = fadd float %i.jg, %i.lc                 ; 2 uses
  %i.le = shufflevector <2 x float> %i.ky, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.lf = shufflevector <4 x float> %i.le, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.lg = insertelement <4 x float> %i.jn, float %i.ld, i64 3
  %i.lh = fmul <4 x float> %i.lf, %i.lg
  %i.li = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jp, <4 x float> %i.jr, <4 x float> %i.lh)
  %i.lj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %i.jv, <4 x float> %i.li)
  %i.lk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jf, <4 x float> zeroinitializer, <4 x float> %i.lj) ; 3 uses
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ll, ptr %.sroa.773.0..sroa_idx, align 4
  %i.lm = extractelement <4 x float> %i.lk, i64 2
  store float %i.lm, ptr %.sroa.9.0..sroa_idx, align 4
  store float %i.ld, ptr %.sroa.10.0..sroa_idx, align 4
  %i.ln = extractelement <2 x float> %i.kz, i64 1
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.ke, float 0.000000e+00, float %i.ln)
  %i.lp = extractelement <4 x float> %i.kl, i64 0
  %i.lq = tail call float @llvm.fmuladd.f32(float %i.lp, float 0.000000e+00, float %i.lo)
  %i.lr = fadd float %i.kd, %i.lq                 ; 2 uses
  %i.ls = shufflevector <4 x float> %i.le, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 7>
  %i.lt = insertelement <4 x float> %i.jn, float %i.lr, i64 3
  %i.lu = fmul <4 x float> %i.ls, %i.lt
  %i.lv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ke, i64 0
  %i.lw = shufflevector <4 x float> %i.lv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.lx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %i.jr, <4 x float> %i.lu)
  %i.ly = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kl, <4 x float> %i.jv, <4 x float> %i.lx)
  %i.lz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kc, <4 x float> zeroinitializer, <4 x float> %i.ly) ; 3 uses
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ma, ptr %3, align 4
  %i.mb = extractelement <4 x float> %i.lz, i64 2
  store float %i.mb, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.lr, ptr %.sroa.6.0..sroa_idx, align 4
  %i.mc = load float, ptr %2, align 4, !tbaa !10  ; 2 uses
  %i.md = tail call float @llvm.fabs.f32(float %i.mc)
  %i.me = fcmp olt float %i.md, f0x34000000
  %.sroa.0.0 = select i1 %i.me, float 1.000000e-03, float %i.mc
  %i.mf = load <2 x float>, ptr %i.gj, align 4, !tbaa !10 ; 2 uses
  %i.mg = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mf)
  %i.mh = fcmp olt <2 x float> %i.mg, splat (float f0x34000000)
  %i.mi = select <2 x i1> %i.mh, <2 x float> splat (float 1.000000e-03), <2 x float> %i.mf ; 2 uses
  %i.mj = insertelement <4 x float> poison, float %.sroa.0.0, i64 0
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ml = fmul <4 x float> %i.lz, %i.mk
  store <4 x float> %i.ml, ptr %3, align 4, !tbaa !10
  %i.mm = shufflevector <2 x float> %i.mi, <2 x float> poison, <4 x i32> zeroinitializer
  %i.mn = fmul <4 x float> %i.lk, %i.mm
  store <4 x float> %i.mn, ptr %.sroa.773.0..sroa_idx, align 4, !tbaa !10
  %i.mo = shufflevector <2 x float> %i.mi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mp = fmul <4 x float> %i.iw, %i.mo
  store <4 x float> %i.mp, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !10
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !10
  %i.ms = load <2 x float>, ptr %0, align 4, !tbaa !10
  store <2 x float> %i.ms, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !10
  store float %i.mr, ptr %.sroa.1775.0..sroa_idx, align 4, !tbaa !13
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 10 uses
  %9 = alloca %"struct.ImGuizmo::vec_t", align 4  ; 6 uses
  %10 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %11 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %12 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %13 = alloca %struct.ImVec2, align 8            ; 5 uses
  %14 = alloca %struct.ImVec2, align 8            ; 5 uses
  %15 = alloca %struct.ImVec2, align 8            ; 5 uses
  %16 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %i.d = alloca [512 x i8], align 16              ; 5 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.e = alloca [7 x i32], align 16               ; 20 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %19 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 5 uses
  %20 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %21 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 7 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  %23 = alloca %struct.ImVec2, align 8            ; 5 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca [4 x %struct.ImVec2], align 16     ; 8 uses
  %28 = alloca %struct.ImVec2, align 8            ; 5 uses
  %29 = alloca %struct.ImVec2, align 8            ; 7 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.h = alloca [512 x i8], align 16              ; 5 uses
  %32 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 7 uses
  %33 = alloca %struct.ImVec2, align 8            ; 4 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.i = alloca [7 x i32], align 16               ; 9 uses
  %35 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %36 = alloca [64 x %struct.ImVec2], align 16    ; 7 uses
  %37 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 7 uses
  %38 = alloca %struct.ImVec2, align 8            ; 4 uses
  %39 = alloca [65 x %struct.ImVec2], align 16    ; 8 uses
  %i.j = alloca [512 x i8], align 16              ; 5 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 8            ; 4 uses
  %42 = alloca [3 x %"struct.ImGuizmo::vec_t"], align 16 ; 12 uses
  %i.k = alloca [3 x i32], align 4                ; 12 uses
  %43 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 18 uses
  %44 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 14 uses
  %45 = alloca %struct.ImVec2, align 8            ; 7 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 8            ; 5 uses
  %49 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %i.l = alloca [2 x i32], align 4                ; 5 uses
  %50 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 19 uses
  %i.m = alloca [512 x i8], align 16              ; 5 uses
  %51 = alloca %struct.ImVec2, align 8            ; 4 uses
  %52 = alloca %struct.ImVec2, align 8            ; 4 uses
  %53 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 11 uses
  %i.n = alloca [3 x float], align 4              ; 6 uses
  %54 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 9 uses
  %55 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 8 uses
  %56 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 6 uses
  %57 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %58 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 16 uses
  %59 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 8 uses
  %60 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 7 uses
  %61 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %62 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %63 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %64 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 9 uses
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull readonly align 4 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull readonly align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !69
  %i.o = icmp eq i32 %3, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !69
  %i.p = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 3 uses
  %i.q = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), align 8, !tbaa !14 ; 2 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = extractelement <4 x float> %i.p, i64 0   ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %i.u = extractelement <4 x float> %i.p, i64 2   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.v)
  %i.w = fdiv float 1.000000e+00, %sqrt.i.i.i.i
  %i.x = insertelement <4 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul <4 x float> %i.y, %i.p
  store <4 x float> %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10
  %i.aa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 3 uses
  %i.ab = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !14
  %i.ac = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13 ; 2 uses
  %i.ad = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 3 uses
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14
  %i.af = insertelement <2 x float> %i.ad, float %i.ab, i64 0 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %i.af
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ai, <2 x float> %i.ag)
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.ac, i64 1 ; 2 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.aj)
  %i.an = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.am)
  %i.ao = fdiv <2 x float> splat (float 1.000000e+00), %i.an ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.ap, %i.aa
  store <4 x float> %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10
  %i.ar = extractelement <2 x float> %i.ao, i64 1 ; 4 uses
  %i.as = extractelement <2 x float> %i.ad, i64 0
  %i.at = fmul float %i.as, %i.ar
  store float %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !12
  %i.au = fmul float %i.ae, %i.ar
  store float %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14
  %i.av = fmul float %i.ac, %i.ar
  store float %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13
  %i.aw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !15
  %i.ax = fmul float %i.ar, %i.aw
  br label %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit

bb.c:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 164), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = load <2 x float>, ptr %i.ay, align 4, !tbaa !10
  store <2 x float> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  store float %i.ba, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  br label %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit

_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi float [ %i.ax, %bb.b ], [ 0.000000e+00, %bb.c ]
  store float %.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !69
  %i.bc = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.be = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !13
  %i.bf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !12 ; 2 uses
  %i.bg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 304), align 8, !tbaa !14 ; 2 uses
  %i.bh = fmul float %i.bg, %i.bg
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.bh)
  %i.bj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !13 ; 2 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bi)
  %sqrt.i12.i = tail call noundef float @llvm.sqrt.f32(float %i.bk)
  %i.bl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !10 ; 2 uses
  %i.bm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !10 ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bo = fmul <2 x float> %i.bn, %i.bn
  %i.bp = shufflevector <2 x float> %i.bl, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bp, <2 x float> %i.bo)
  %i.br = insertelement <2 x float> %i.bd, float %i.be, i64 1 ; 2 uses
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.br, <2 x float> %i.bq)
  %i.bt = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bs)
  store <2 x float> %i.bt, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 524), align 4, !tbaa !10
  store float %sqrt.i12.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 532), align 4, !tbaa !13
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 536), align 8, !tbaa !15
  %i.bu = tail call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i1 noundef zeroext false) ; 0 uses
  %i.bv = tail call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 332), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull align 4 dereferenceable(64) %62)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %62, i64 64, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %63)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), ptr noundef nonnull align 4 dereferenceable(64) %63, i64 64, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #19
  %i.bw = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %64, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %64, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !17
  %i.by = getelementptr inbounds nuw i8, ptr %64, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 556), ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !tbaa.struct !17
  %i.bz = getelementptr inbounds nuw i8, ptr %64, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 588), ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !17
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %64, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !10 ; 3 uses
  %i.ca = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.cb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.cc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 244), align 4, !tbaa !16
  %i.cd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8, !tbaa !16 ; 2 uses
  %i.ce = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.cg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.ch = load <2 x float>, ptr %64, align 8, !tbaa !10 ; 2 uses
  %i.ci = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 224), align 8
  %i.cj = insertelement <2 x float> %i.ch, float %i.cd, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cl = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cb, i64 1
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = fmul <4 x float> %i.ck, %i.cm
  %i.co = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 208), align 8
  %i.cp = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cg, i64 1
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cr = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ct = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 2 uses
  %i.cu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cv = fmul float %i.cu, 0.000000e+00
  %i.cw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 3 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0
  %i.cy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 240), align 8, !tbaa !16
  %i.cz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.da = shufflevector <2 x float> %i.cw, <2 x float> %i.ch, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.cq, <4 x float> %i.cn) ; 4 uses
  %i.dc = extractelement <4 x float> %i.db, i64 1
  %i.dd = tail call float @llvm.fmuladd.f32(float %.sroa.8.0.copyload.i, float %i.cz, float %i.dc)
  %i.de = extractelement <4 x float> %i.db, i64 2
  %i.df = tail call float @llvm.fmuladd.f32(float %.sroa.8.0.copyload.i, float %i.cy, float %i.de)
  %i.dg = extractelement <4 x float> %i.db, i64 3
  %i.dh = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.df, i64 1
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dj = shufflevector <2 x float> %i.ct, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.dk = insertelement <3 x float> %i.dj, float %i.ce, i64 0
  %i.dl = insertelement <3 x float> %i.dk, float %i.cd, i64 2
  %i.dm = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.dn = fmul <4 x float> %i.di, %i.dm
  %i.do = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.dd, i64 1
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dq = shufflevector <2 x float> %i.ct, <2 x float> %i.cw, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.dq, <4 x float> %i.dn) ; 2 uses
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.cx, float 0.000000e+00, float %i.cv)
  %i.dy = tail call float @llvm.fmuladd.f32(float %.sroa.8.0.copyload.i, float %i.cc, float %i.dg) ; 2 uses
  %i.dz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dy, i64 0
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.cr, <2 x float> %i.ds)
  %i.eb = fadd <2 x float> %i.cs, %i.ea           ; 3 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.ed = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.eb)
  %i.ee = fcmp ogt <2 x float> %i.ed, splat (float f0x34000000)
  %i.ef = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.dy, i64 2
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.eh = shufflevector <4 x float> %i.db, <4 x float> %i.dr, <4 x i32> <i32 poison, i32 0, i32 6, i32 7>
  %i.ei = insertelement <4 x float> %i.eh, float %i.dx, i64 0
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eg, <4 x float> %i.du, <4 x float> %i.ei)
  %i.ek = fadd <4 x float> %i.dw, %i.ej           ; 4 uses
  %i.el = fdiv <4 x float> splat (float 1.000000e+00), %i.ec
  %i.em = fmul <4 x float> %i.ek, %i.el
  %i.en = shufflevector <2 x i1> %i.ee, <2 x i1> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.eo = select <4 x i1> %i.en, <4 x float> %i.em, <4 x float> %i.ek ; 4 uses
  %shift = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %shift, %i.eo
  %i.ep = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift211 = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop212 = fsub <4 x float> %shift211, %i.eo
  %i.eq = extractelement <4 x float> %foldExtExtBinop212, i64 1
  %i.er = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29
  %i.es = fdiv float %i.eq, %i.er                 ; 2 uses
  %i.et = fmul float %i.es, %i.es
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.et)
  %sqrt.i13.i = tail call noundef float @llvm.sqrt.f32(float %i.eu)
  %i.ev = fdiv float 1.000000e-01, %sqrt.i13.i
  store float %i.ev, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46
  %i.ew = extractelement <2 x float> %i.eb, i64 1
  %i.ex = fdiv float 5.000000e-01, %i.ew          ; 2 uses
  %i.ey = extractelement <4 x float> %i.ek, i64 0
  %i.ez = fmul float %i.ey, %i.ex
  %i.fa = extractelement <4 x float> %i.ek, i64 1
  %i.fb = fmul float %i.fa, %i.ex
  %i.fc = fadd float %i.fb, 5.000000e-01
  %i.fd = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ez, i64 0
  %i.fe = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.fc, i64 1
  %i.ff = fsub <2 x float> %i.fd, %i.fe
  %i.fg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.fh = fmul <2 x float> %i.fg, %i.ff
  %i.fi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.fj = fadd <2 x float> %i.fi, %i.fh           ; 2 uses
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <2 x float> %i.fj, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), align 8
  %i.fl = fadd <4 x float> %i.fk, <float -1.000000e+01, float -1.000000e+01, float 1.000000e+01, float 1.000000e+01>
  store <4 x float> %i.fl, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 648), align 8
  %i.fm = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull align 4 dereferenceable(64) %61)
  %i.fn = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %60, ptr noundef nonnull align 4 dereferenceable(64) %61, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 288
  %i.fp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !25
  %i.fq = load <2 x float>, ptr %i.fo, align 8, !tbaa !10
  %i.fr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.fs = fsub <2 x float> %i.fq, %i.fr           ; 2 uses
  %i.ft = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !26
  %i.fu = extractelement <2 x float> %i.fs, i64 1
  %i.fv = fdiv float %i.fu, %i.ft
  %i.fw = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %60, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %60, i64 48
  %i.fz = fsub float 1.000000e+00, %i.fv
  %i.ga = extractelement <2 x float> %i.fs, i64 0
  %i.gb = fdiv float %i.ga, %i.fp
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fz, float 2.000000e+00, float -1.000000e+00)
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gb, float 2.000000e+00, float -1.000000e+00)
  %i.ge = load <4 x float>, ptr %60, align 16, !tbaa !16
  %i.gf = load <4 x float>, ptr %i.fw, align 16, !tbaa !16
  %i.gg = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul <4 x float> %i.gf, %i.gh
  %i.gj = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.ge, <4 x float> %i.gi) ; 3 uses
  %i.gm = load <4 x float>, ptr %i.fx, align 16, !tbaa !16 ; 3 uses
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> zeroinitializer, <4 x float> %i.gl)
  %i.go = load <4 x float>, ptr %i.fy, align 16, !tbaa !16 ; 3 uses
  %i.gp = fadd <4 x float> %i.go, %i.gn           ; 2 uses
  %i.gq = extractelement <4 x float> %i.gp, i64 3
  %i.gr = fdiv float 1.000000e+00, %i.gq
  %i.gs = insertelement <4 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = fmul <4 x float> %i.gp, %i.gt           ; 3 uses
  store <4 x float> %i.gu, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !10
  %i.gv = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gw = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gx = fadd <2 x float> %i.gv, %i.gw
  %i.gy = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gz = fadd <2 x float> %i.gy, %i.gx           ; 2 uses
  %i.ha = extractelement <2 x float> %i.gz, i64 1
  %i.hb = shufflevector <4 x float> %i.gu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hc = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hd = shufflevector <4 x float> %i.gl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.he = fadd <2 x float> %i.hc, %i.hd
  %i.hf = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hg = fadd <2 x float> %i.hf, %i.he
  %i.hh = fdiv float 1.000000e+00, %i.ha
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = fmul <2 x float> %i.hg, %i.hj
  %i.hl = fmul <2 x float> %i.gz, %i.hj
  %i.hm = shufflevector <4 x float> %i.gu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.hn = fsub <2 x float> %i.hk, %i.hm           ; 4 uses
  %i.ho = fsub <2 x float> %i.hl, %i.hb           ; 2 uses
  %foldExtExtBinop214 = fmul <2 x float> %i.hn, %i.hn
  %i.hp = extractelement <2 x float> %foldExtExtBinop214, i64 1
  %i.hq = extractelement <2 x float> %i.hn, i64 0 ; 2 uses
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hq, float %i.hp)
  %i.hs = extractelement <2 x float> %i.ho, i64 0 ; 2 uses
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.hs, float %i.hr)
  %sqrt.i.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ht)
  %i.hu = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i
  %i.hv = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hx = fmul <2 x float> %i.hn, %i.hw
  %i.hy = fmul <2 x float> %i.ho, %i.hw
  store <2 x float> %i.hx, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4
  store <2 x float> %i.hy, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  %.not25 = icmp eq ptr %5, null                  ; 4 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit
  store float 1.000000e+00, ptr %5, align 4, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ia, align 4, !tbaa !14
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ib, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ic, align 4, !tbaa !13
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ie, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit
  %i.if = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 404), align 4, !tbaa !16
  %i.ig = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 420), align 4, !tbaa !16
  %i.ih = fmul float %i.ig, 0.000000e+00
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.if, float 0.000000e+00, float %i.ih)
  %i.ij = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 436), align 4, !tbaa !16
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.ij, float 0.000000e+00, float %i.ii)
  %i.il = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 452), align 4, !tbaa !16
  %i.im = fadd float %i.il, %i.ik
  %i.in = fcmp olt float %i.im, 1.000000e-03
  br i1 %i.in, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.io = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.ip = trunc nuw i8 %i.io to i1
  %.not = xor i1 %i.ip, true
  %i.iq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !range !33
  %i.ir = trunc nuw i8 %i.iq to i1
  %or.cond3 = select i1 %.not, i1 true, i1 %i.ir
  br i1 %or.cond3, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %2, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit [
    i32 1, label %bb.h
    i32 0, label %bb.af
    i32 2, label %bb.ay
  ]

bb.h:                                             ; preds = %bb.g
  %i.is = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !68
  %i.iu = icmp eq i32 %i.it, 0
  %i.iv = zext i1 %i.iu to i8                     ; 3 uses
  %i.iw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %_ZN8ImGuizmoL11CanActivateEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.iy = tail call fastcc noundef i32 @_ZN8ImGuizmoL13GetRotateTypeEv() ; 8 uses
  %.not.i = icmp eq i32 %i.iy, 0                  ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  %i.iz = icmp eq i32 %i.iy, 11
  %i.ja = select i1 %i.iz, i8 1, i8 %i.iv
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %spec.select.i = phi i8 [ %i.ja, %bb.j ], [ %i.iv, %bb.i ] ; 5 uses
  %i.jb = tail call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.jb, label %bb.l, label %_ZN8ImGuizmoL11CanActivateEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.jc = tail call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.jc, label %_ZN8ImGuizmoL11CanActivateEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jd = tail call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv() ; 2 uses
  %brmerge = or i1 %.not.i, %i.jd
  %.mux = select i1 %i.jd, i32 %i.iy, i32 0
  br i1 %brmerge, label %_ZN8ImGuizmoL11CanActivateEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  store i32 %i.iy, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %59, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.je = getelementptr inbounds nuw i8, ptr %59, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.je, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.jf = getelementptr inbounds nuw i8, ptr %59, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jf, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.jg = getelementptr inbounds nuw i8, ptr %59, i64 48
  %i.jh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), align 4, !tbaa !10
  %i.ji = fneg <2 x float> %i.jh
  %i.jj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 580), align 4, !tbaa !10
  %i.jk = fneg <2 x float> %i.jj
  store <2 x float> %i.ji, ptr %i.jg, align 16
  %i.jl = getelementptr inbounds nuw i8, ptr %59, i64 56
  store <2 x float> %i.jk, ptr %i.jl, align 8
  %i.jm = trunc nuw i8 %spec.select.i to i1
  %i.jn = zext nneg i32 %i.iy to i64              ; 2 uses
  br i1 %i.jm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.jo = getelementptr [16 x i8], ptr %59, i64 %i.jn ; 4 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 -128
  %i.jq = load float, ptr %i.jp, align 16, !tbaa !12 ; 3 uses
  %i.jr = getelementptr i8, ptr %i.jo, i64 -124
  %i.js = load float, ptr %i.jr, align 4, !tbaa !14 ; 3 uses
  %i.jt = getelementptr i8, ptr %i.jo, i64 -120
  %i.ju = load float, ptr %i.jt, align 8, !tbaa !13 ; 3 uses
  %i.jv = getelementptr i8, ptr %i.jo, i64 -116
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !15
  %i.jx = fmul float %i.js, %i.js
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jq, float %i.jq, float %i.jx)
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.ju, float %i.jy)
  %sqrt.i.i.i.i.i29 = tail call noundef float @llvm.sqrt.f32(float %i.jz)
  %i.ka = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i29 ; 4 uses
  %i.kb = fmul float %i.jq, %i.ka                 ; 2 uses
  %i.kc = fmul float %i.js, %i.ka                 ; 2 uses
  %i.kd = fmul float %i.ju, %i.ka                 ; 2 uses
  %i.ke = fmul float %i.jw, %i.ka
  %i.kf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 2 uses
  %i.kg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !14 ; 2 uses
  %i.kh = fmul float %i.kg, %i.kc
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kb, float %i.kf, float %i.kh)
  %i.kj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kd, float %i.kk, float %i.ki)
  %i.km = extractelement <2 x float> %i.kj, i64 1
  %i.kn = tail call noundef float @llvm.fmuladd.f32(float %i.ke, float %i.km, float %i.kl)
  %.sroa.02.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.kb, i64 0
  %.sroa.02.4.vec.insert.i.i = insertelement <2 x float> %.sroa.02.0.vec.insert.i.i, float %i.kc, i64 1
  %i.ko = insertelement <2 x float> poison, float %i.kd, i64 0
  %.sroa.3.8.vec.insert.i.i = insertelement <2 x float> %i.ko, float %i.kn, i64 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.kp = getelementptr [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.jn ; 4 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 -128
  %i.kr = load float, ptr %i.kq, align 16, !tbaa !12 ; 3 uses
  %i.ks = getelementptr i8, ptr %i.kp, i64 -124
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !14 ; 3 uses
  %i.ku = getelementptr i8, ptr %i.kp, i64 -120
  %i.kv = load float, ptr %i.ku, align 8, !tbaa !13 ; 3 uses
  %i.kw = getelementptr i8, ptr %i.kp, i64 -116
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !15
  %i.ky = fmul float %i.kt, %i.kt
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.kr, float %i.kr, float %i.ky)
  %i.la = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.kv, float %i.kz)
  %sqrt.i.i.i.i31.i = tail call noundef float @llvm.sqrt.f32(float %i.la)
  %i.lb = fdiv float 1.000000e+00, %sqrt.i.i.i.i31.i ; 4 uses
  %i.lc = fmul float %i.kr, %i.lb                 ; 2 uses
  %i.ld = fmul float %i.kt, %i.lb                 ; 2 uses
  %i.le = fmul float %i.kv, %i.lb                 ; 2 uses
  %i.lf = fmul float %i.kx, %i.lb
  %i.lg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !12
  %i.lh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 320), align 8, !tbaa !14
  %i.li = fmul float %i.lh, %i.ld
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.lg, float %i.li)
  %i.lk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 324), align 4, !tbaa !13
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.le, float %i.lk, float %i.lj)
  %i.lm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 328), align 8, !tbaa !15
  %i.ln = tail call noundef float @llvm.fmuladd.f32(float %i.lf, float %i.lm, float %i.ll)
  %.sroa.02.0.vec.insert.i32.i = insertelement <2 x float> poison, float %i.lc, i64 0
  %.sroa.02.4.vec.insert.i33.i = insertelement <2 x float> %.sroa.02.0.vec.insert.i32.i, float %i.ld, i64 1
  %i.lo = insertelement <2 x float> poison, float %i.le, i64 0
  %.sroa.3.8.vec.insert.i34.i = insertelement <2 x float> %i.lo, float %i.ln, i64 1
  %.pre548.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12
  %.pre549.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !14
  %i.lp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.lq = phi float [ %.pre549.i, %bb.p ], [ %i.kg, %bb.o ]
  %i.lr = phi float [ %.pre548.i, %bb.p ], [ %i.kf, %bb.o ]
  %.sroa.02.4.vec.insert.i33.pn.i = phi <2 x float> [ %.sroa.02.4.vec.insert.i33.i, %bb.p ], [ %.sroa.02.4.vec.insert.i.i, %bb.o ] ; 3 uses
  %.sroa.3.8.vec.insert.i34.pn.i = phi <2 x float> [ %.sroa.3.8.vec.insert.i34.i, %bb.p ], [ %.sroa.3.8.vec.insert.i.i, %bb.o ] ; 3 uses
  %i.ls = phi <2 x float> [ %i.lp, %bb.p ], [ %i.kj, %bb.o ]
  store <2 x float> %.sroa.02.4.vec.insert.i33.pn.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8
  store <2 x float> %.sroa.3.8.vec.insert.i34.pn.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8
  %i.lt = extractelement <2 x float> %.sroa.02.4.vec.insert.i33.pn.i, i64 0 ; 4 uses
  %i.lu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.lv = extractelement <2 x float> %.sroa.02.4.vec.insert.i33.pn.i, i64 1 ; 4 uses
  %i.lw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.lx = fmul float %i.lv, %i.lw
  %i.ly = tail call float @llvm.fmuladd.f32(float %i.lt, float %i.lu, float %i.lx)
  %i.lz = extractelement <2 x float> %.sroa.3.8.vec.insert.i34.pn.i, i64 0 ; 4 uses
  %i.ma = extractelement <2 x float> %.sroa.3.8.vec.insert.i34.pn.i, i64 1
  %i.mb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.mc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.md = fmul float %i.lv, %i.mc
  %i.me = tail call float @llvm.fmuladd.f32(float %i.lt, float %i.mb, float %i.md)
  %i.mf = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !10 ; 2 uses
  %i.mg = extractelement <2 x float> %i.mf, i64 0
  %i.mh = tail call noundef float @llvm.fmuladd.f32(float %i.lz, float %i.mg, float %i.ly)
  %i.mi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10 ; 2 uses
  %i.mj = extractelement <2 x float> %i.mi, i64 0
  %i.mk = tail call noundef float @llvm.fmuladd.f32(float %i.lz, float %i.mj, float %i.me) ; 2 uses
  %i.ml = tail call float @llvm.fabs.f32(float %i.mk)
  %i.mm = fcmp olt float %i.ml, f0x34000000
  %i.mn = fsub float %i.mh, %i.ma
  %i.mo = fneg float %i.mn
  %i.mp = fdiv float %i.mo, %i.mk
  %.0.i37.i = select i1 %i.mm, float -1.000000e+00, float %i.mp ; 3 uses
  %i.mq = fmul float %i.mb, %.0.i37.i
  %i.mr = fmul float %i.mc, %.0.i37.i
  %i.ms = insertelement <2 x float> poison, float %.0.i37.i, i64 0
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mu = fmul <2 x float> %i.mi, %i.mt
  %i.mv = fadd float %i.lu, %i.mq
  %i.mw = fadd float %i.lw, %i.mr
  %i.mx = fadd <2 x float> %i.mf, %i.mu
  %i.my = fsub float %i.mv, %i.lr                 ; 3 uses
  %i.mz = fsub float %i.mw, %i.lq                 ; 3 uses
  %i.na = fsub <2 x float> %i.mx, %i.ls           ; 2 uses
  %i.nb = fmul float %i.mz, %i.mz
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.my, float %i.my, float %i.nb)
  %i.nd = extractelement <2 x float> %i.na, i64 0 ; 2 uses
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.nd, float %i.nd, float %i.nc)
  %sqrt.i.i.i.i28 = tail call noundef float @llvm.sqrt.f32(float %i.ne)
  %i.nf = fdiv float 1.000000e+00, %sqrt.i.i.i.i28 ; 3 uses
  %i.ng = fmul float %i.my, %i.nf                 ; 6 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.nh = fmul float %i.mz, %i.nf                 ; 6 uses
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.nh, i64 1
  %i.ni = insertelement <2 x float> poison, float %i.nf, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nk = fmul <2 x float> %i.na, %i.nj           ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8
  store <2 x float> %i.nk, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8
  %i.nl = fneg float %i.lv
  %i.nm = extractelement <2 x float> %i.nk, i64 0 ; 5 uses
  %i.nn = fmul float %i.nm, %i.nl
  %i.no = tail call float @llvm.fmuladd.f32(float %i.nh, float %i.lz, float %i.nn) ; 3 uses
  %i.np = fneg float %i.lz
  %i.nq = fmul float %i.ng, %i.np
  %i.nr = tail call float @llvm.fmuladd.f32(float %i.nm, float %i.lt, float %i.nq) ; 3 uses
  %i.ns = fneg float %i.lt
  %i.nt = fmul float %i.nh, %i.ns
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.ng, float %i.lv, float %i.nt) ; 3 uses
  %i.nv = fmul float %i.nr, %i.nr
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.no, float %i.no, float %i.nv)
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.nu, float %i.nu, float %i.nw)
  %sqrt.i.i.i59.i = tail call noundef float @llvm.sqrt.f32(float %i.nx)
  %i.ny = fdiv float 1.000000e+00, %sqrt.i.i.i59.i ; 3 uses
  %i.nz = fmul float %i.no, %i.ny
  %i.oa = fmul float %i.nr, %i.ny
  %i.ob = fmul float %i.nu, %i.ny
  %i.oc = fmul float %i.nh, %i.nh
  %i.od = tail call float @llvm.fmuladd.f32(float %i.ng, float %i.ng, float %i.oc)
  %i.oe = tail call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.nm, float %i.od) ; 2 uses
  %i.of = fcmp ogt float %i.oe, f0x3F7FF972
  %i.og = select i1 %i.of, float f0x3F7FF972, float %i.oe
  %i.oh = tail call float @acosf(float noundef %i.og) #19 ; 2 uses
  %i.oi = fmul float %i.nh, %i.oa
  %i.oj = tail call float @llvm.fmuladd.f32(float %i.ng, float %i.nz, float %i.oi)
  %i.ok = tail call noundef float @llvm.fmuladd.f32(float %i.nm, float %i.ob, float %i.oj)
  %i.ol = fcmp olt float %i.ok, 0.000000e+00
  %i.om = fneg float %i.oh
  %i.on = select i1 %i.ol, float %i.oh, float %i.om
  store float %i.on, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 756), align 4, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i

_ZN8ImGuizmoL11CanActivateEv.exit.i:              ; preds = %bb.m, %bb.q, %bb.l, %bb.k, %bb.h
  %.1 = phi i32 [ 0, %bb.h ], [ %i.iy, %bb.l ], [ %.mux, %bb.m ], [ %i.iy, %bb.k ], [ %i.iy, %bb.q ]
  %.1.i = phi i8 [ %i.iv, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.q ]
  %i.oo = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.r, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.r:                                             ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit.i
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  %i.oq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.or = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.os = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10 ; 5 uses
  %i.ot = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !12 ; 5 uses
  %i.ou = extractelement <3 x float> %i.os, i64 1 ; 5 uses
  %i.ov = fmul float %i.ou, %i.or
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ot, float %i.oq, float %i.ov)
  %i.ox = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.oy = extractelement <3 x float> %i.os, i64 2 ; 5 uses
  %i.oz = tail call noundef float @llvm.fmuladd.f32(float %i.oy, float %i.ox, float %i.ow)
  %i.pa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 700), align 4, !tbaa !15
  %i.pb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.pc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.pd = fmul float %i.ou, %i.pc
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.ot, float %i.pb, float %i.pd)
  %i.pf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.pg = tail call noundef float @llvm.fmuladd.f32(float %i.oy, float %i.pf, float %i.pe) ; 2 uses
  %i.ph = tail call float @llvm.fabs.f32(float %i.pg)
  %i.pi = fcmp olt float %i.ph, f0x34000000
  %i.pj = fsub float %i.oz, %i.pa
  %i.pk = fneg float %i.pj
  %i.pl = fdiv float %i.pk, %i.pg
  %.0.i.i60.i = select i1 %i.pi, float -1.000000e+00, float %i.pl ; 3 uses
  %i.pm = fmul float %i.pb, %.0.i.i60.i
  %i.pn = fmul float %i.pc, %.0.i.i60.i
  %i.po = fmul float %i.pf, %.0.i.i60.i
  %i.pp = fadd float %i.oq, %i.pm
  %i.pq = fadd float %i.or, %i.pn
  %i.pr = fadd float %i.ox, %i.po
  %i.ps = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %i.pt = extractelement <2 x float> %i.ps, i64 0
  %i.pu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %i.pv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13 ; 2 uses
  %i.pw = extractelement <2 x float> %i.pu, i64 0
  %i.px = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !13 ; 3 uses
  %i.py = fneg float %i.ot
  %i.pz = fneg float %i.ou
  %i.qa = fmul float %i.px, %i.pz
  %i.qb = fsub float %i.pp, %i.pt                 ; 3 uses
  %i.qc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !14 ; 3 uses
  %i.qd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !12 ; 3 uses
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.oy, float %i.qa) ; 3 uses
  %i.qf = fneg float %i.oy
  %i.qg = fmul float %i.qd, %i.qf
  %i.qh = fsub float %i.pq, %i.pw                 ; 3 uses
  %i.qi = tail call float @llvm.fmuladd.f32(float %i.px, float %i.ot, float %i.qg) ; 3 uses
  %i.qj = fmul float %i.qc, %i.py
  %i.qk = fsub float %i.pr, %i.pv                 ; 3 uses
  %i.ql = tail call float @llvm.fmuladd.f32(float %i.qd, float %i.ou, float %i.qj) ; 3 uses
  %i.qm = fmul float %i.qi, %i.qi
  %i.qn = fmul float %i.qh, %i.qh
  %i.qo = tail call float @llvm.fmuladd.f32(float %i.qe, float %i.qe, float %i.qm)
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.qb, float %i.qb, float %i.qn)
  %i.qq = tail call float @llvm.fmuladd.f32(float %i.ql, float %i.ql, float %i.qo)
  %i.qr = tail call float @llvm.fmuladd.f32(float %i.qk, float %i.qk, float %i.qp)
  %i.qs = insertelement <2 x float> poison, float %i.qr, i64 0
  %i.qt = insertelement <2 x float> %i.qs, float %i.qq, i64 1
  %i.qu = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.qt)
  %i.qv = fdiv <2 x float> splat (float 1.000000e+00), %i.qu ; 3 uses
  %i.qw = extractelement <2 x float> %i.qv, i64 0 ; 2 uses
  %i.qx = fmul float %i.qb, %i.qw                 ; 2 uses
  %i.qy = fmul float %i.qk, %i.qw                 ; 2 uses
  %i.qz = extractelement <2 x float> %i.qv, i64 1 ; 2 uses
  %i.ra = fmul float %i.qe, %i.qz
  %i.rb = insertelement <2 x float> poison, float %i.qh, i64 0
  %i.rc = insertelement <2 x float> %i.rb, float %i.qi, i64 1
  %i.rd = fmul <2 x float> %i.rc, %i.qv           ; 3 uses
  %i.re = fmul float %i.ql, %i.qz
  %i.rf = extractelement <2 x float> %i.rd, i64 0
  %i.rg = fmul float %i.qc, %i.rf
  %i.rh = tail call float @llvm.fmuladd.f32(float %i.qx, float %i.qd, float %i.rg)
  %i.ri = tail call noundef float @llvm.fmuladd.f32(float %i.qy, float %i.px, float %i.rh) ; 3 uses
  %i.rj = fcmp olt float %i.ri, f0xBF7FF972
  %i.rk = fcmp ogt float %i.ri, f0x3F7FF972
  %i.rl = select i1 %i.rk, float f0x3F7FF972, float %i.ri
  %i.rm = select i1 %i.rj, float f0xBF7FF972, float %i.rl
  %i.rn = tail call float @acosf(float noundef %i.rm) #19 ; 2 uses
  %shift216 = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop217 = fmul <2 x float> %i.rd, %shift216
  %i.ro = extractelement <2 x float> %foldExtExtBinop217, i64 0
  %i.rp = tail call float @llvm.fmuladd.f32(float %i.qx, float %i.ra, float %i.ro)
  %i.rq = tail call noundef float @llvm.fmuladd.f32(float %i.qy, float %i.re, float %i.rp)
  %i.rr = fcmp olt float %i.rq, 0.000000e+00
  %i.rs = fneg float %i.rn
  %i.rt = select i1 %i.rr, float %i.rn, float %i.rs ; 8 uses
  store float %i.rt, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !72
  %.not29.i = icmp eq ptr %6, null
  br i1 %.not29.i, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ru = load float, ptr %6, align 4, !tbaa !10
  %i.rv = fmul float %i.ru, f0x3C8EFA35           ; 4 uses
  %i.rw = fcmp ugt float %i.rv, f0x34000000
  br i1 %i.rw, label %bb.t, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i

bb.t:                                             ; preds = %bb.s
  %i.rx = tail call float @fmodf(float noundef %i.rt, float noundef %i.rv) #19 ; 3 uses
  %i.ry = tail call float @llvm.fabs.f32(float %i.rx)
  %i.rz = fdiv float %i.ry, %i.rv                 ; 2 uses
  %i.sa = fcmp olt float %i.rz, 5.000000e-01
  br i1 %i.sa, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.sb = fsub float %i.rt, %i.rx
  br label %.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.sc = fcmp ogt float %i.rz, 5.000000e-01
  br i1 %i.sc, label %bb.w, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i

bb.w:                                             ; preds = %bb.v
  %i.sd = fsub float %i.rt, %i.rx
  %i.se = fcmp olt float %i.rt, 0.000000e+00
  %i.sf = select i1 %i.se, float -1.000000e+00, float 1.000000e+00
  %i.sg = tail call float @llvm.fmuladd.f32(float %i.rv, float %i.sf, float %i.sd)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.w, %bb.u
  %.sink.i.i = phi float [ %i.sb, %bb.u ], [ %i.sg, %bb.w ] ; 2 uses
  store float %.sink.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i

_ZN8ImGuizmoL11ComputeSnapEPff.exit.i:            ; preds = %.sink.split.i.i, %bb.v, %bb.s, %bb.r
  %i.sh = phi float [ %.sink.i.i, %.sink.split.i.i ], [ %i.rt, %bb.v ], [ %i.rt, %bb.s ], [ %i.rt, %bb.r ] ; 2 uses
  %i.si = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.sj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.sk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 224), align 8, !tbaa !16
  %i.sl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 208), align 8, !tbaa !16
  %i.sm = shufflevector <3 x float> %i.os, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.sn = fmul <2 x float> %i.sm, %i.sk
  %i.so = fmul float %i.ou, %i.sj
  %i.sp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.sq = shufflevector <3 x float> %i.os, <3 x float> poison, <2 x i32> zeroinitializer
  %i.sr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sq, <2 x float> %i.sl, <2 x float> %i.sn)
  %i.ss = tail call float @llvm.fmuladd.f32(float %i.ot, float %i.si, float %i.so)
  %i.st = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 240), align 8, !tbaa !16
  %i.su = shufflevector <3 x float> %i.os, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.sv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.su, <2 x float> %i.st, <2 x float> %i.sr) ; 4 uses
  %i.sw = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.sp, float %i.ss) ; 3 uses
  %foldExtExtBinop219 = fmul <2 x float> %i.sv, %i.sv
  %i.sx = extractelement <2 x float> %foldExtExtBinop219, i64 0
  %i.sy = tail call float @llvm.fmuladd.f32(float %i.sw, float %i.sw, float %i.sx)
  %i.sz = extractelement <2 x float> %i.sv, i64 1 ; 2 uses
  %i.ta = tail call float @llvm.fmuladd.f32(float %i.sz, float %i.sz, float %i.sy)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ta)
  %i.tb = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.tc = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.td = shufflevector <2 x float> %i.tc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.te = fmul <2 x float> %i.sv, %i.td           ; 4 uses
  %i.tf = fmul float %i.sw, %i.tb                 ; 3 uses
  %foldExtExtBinop221 = fmul <2 x float> %i.te, %i.te
  %i.tg = extractelement <2 x float> %foldExtExtBinop221, i64 0
  %i.th = tail call float @llvm.fmuladd.f32(float %i.tf, float %i.tf, float %i.tg)
  %i.ti = extractelement <2 x float> %i.te, i64 1 ; 2 uses
  %i.tj = tail call noundef float @llvm.fmuladd.f32(float %i.ti, float %i.ti, float %i.th) ; 2 uses
  %i.tk = fcmp olt float %i.tj, f0x34000000
  br i1 %i.tk, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i
  %i.tl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 756), align 4, !tbaa !71
  %i.tm = fsub float %i.sh, %i.tl                 ; 2 uses
  %sqrt.i.i26 = tail call float @llvm.sqrt.f32(float %i.tj)
  %i.tn = tail call float @sinf(float noundef %i.tm) #19 ; 3 uses
  %i.to = tail call float @cosf(float noundef %i.tm) #19 ; 3 uses
  %i.tp = fsub float 1.000000e+00, %i.to          ; 3 uses
  %i.tq = fdiv float 1.000000e+00, %sqrt.i.i26    ; 2 uses
  %i.tr = insertelement <2 x float> poison, float %i.tq, i64 0
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tt = fmul <2 x float> %i.te, %i.ts           ; 6 uses
  %i.tu = shufflevector <2 x float> %i.tt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tv = fmul float %i.tf, %i.tq                 ; 5 uses
  %i.tw = fmul float %i.tv, %i.tv
  %i.tx = tail call float @llvm.fmuladd.f32(float %i.tw, float %i.tp, float %i.to) ; 4 uses
  %i.ty = extractelement <2 x float> %i.tt, i64 1
  %i.tz = fmul <2 x float> %i.tt, %i.tt
  %i.ua = insertelement <2 x float> poison, float %i.tp, i64 0
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uc = insertelement <2 x float> poison, float %i.to, i64 0
  %i.ud = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ue = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tz, <2 x float> %i.ub, <2 x float> %i.ud) ; 3 uses
  %i.uf = extractelement <2 x float> %i.tt, i64 0 ; 2 uses
  %i.ug = fmul float %i.tv, %i.uf
  %i.uh = fmul float %i.ug, %i.tp                 ; 2 uses
  %i.ui = insertelement <2 x float> %i.tt, float %i.tv, i64 0
  %i.uj = fmul <2 x float> %i.tu, %i.ui
  %i.uk = fmul <2 x float> %i.uj, %i.ub           ; 4 uses
  %i.ul = fmul float %i.tv, %i.tn                 ; 2 uses
  %i.um = extractelement <2 x float> %i.uk, i64 0
  %i.un = fmul float %i.uf, %i.tn                 ; 2 uses
  %i.uo = fmul float %i.ty, %i.tn                 ; 2 uses
  %i.up = fsub float %i.um, %i.un                 ; 3 uses
  %i.uq = fadd float %i.uo, %i.uh                 ; 4 uses
  %i.ur = fsub float %i.uh, %i.uo                 ; 2 uses
  %i.us = extractelement <2 x float> %i.uk, i64 1
  %i.ut = fadd float %i.ul, %i.us                 ; 2 uses
  %i.uu = insertelement <2 x float> poison, float %i.un, i64 0
  %i.uv = insertelement <2 x float> %i.uu, float %i.ul, i64 1 ; 2 uses
  %i.uw = fadd <2 x float> %i.uk, %i.uv           ; 2 uses
  %i.ux = shufflevector <2 x float> %i.uw, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.uy = fsub <2 x float> %i.uk, %i.uv           ; 2 uses
  %i.uz = shufflevector <2 x float> %i.uw, <2 x float> %i.uy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.va = shufflevector <2 x float> %i.ue, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.vb = shufflevector <3 x float> %i.va, <3 x float> %i.ux, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.vc = shufflevector <2 x float> %i.uy, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.vd = shufflevector <3 x float> %i.vb, <3 x float> %i.vc, <3 x i32> <i32 0, i32 1, i32 4>
  %i.ve = insertelement <3 x float> poison, float %i.up, i64 0
  %i.vf = insertelement <3 x float> %i.ve, float %i.tx, i64 1
  %i.vg = insertelement <3 x float> %i.vf, float %i.uq, i64 2
  %i.vh = insertelement <3 x float> poison, float %i.ut, i64 0
  %i.vi = insertelement <3 x float> %i.vh, float %i.ur, i64 1
  %i.vj = shufflevector <2 x float> %i.ue, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.vk = shufflevector <3 x float> %i.vi, <3 x float> %i.vj, <3 x i32> <i32 0, i32 1, i32 3>
  %i.vl = insertelement <2 x float> poison, float %i.tx, i64 0
  %i.vm = insertelement <2 x float> %i.vl, float %i.uq, i64 1
  %i.vn = insertelement <4 x float> poison, float %i.uq, i64 0
  %i.vo = insertelement <4 x float> %i.vn, float %i.tx, i64 1
  %i.vp = insertelement <4 x float> %i.vo, float %i.up, i64 2
  %i.vq = shufflevector <4 x float> %i.vp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.vr = insertelement <4 x float> poison, float %i.uq, i64 0
  %i.vs = insertelement <4 x float> %i.vr, float %i.up, i64 1
  %i.vt = shufflevector <2 x float> %i.uz, <2 x float> %i.ue, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vu = shufflevector <2 x float> %i.uz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i: ; preds = %bb.x, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i
  %.sroa.55.0.i = phi float [ %i.ur, %bb.x ], [ 0.000000e+00, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 3 uses
  %.sroa.81.0.i = phi float [ %i.ut, %bb.x ], [ 0.000000e+00, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 3 uses
  %.sink60.i.i = phi float [ %i.tx, %bb.x ], [ 1.000000e+00, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 2 uses
  %i.vv = phi <3 x float> [ %i.vd, %bb.x ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 6 uses
  %i.vw = phi <3 x float> [ %i.vg, %bb.x ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 5 uses
  %i.vx = phi <3 x float> [ %i.vk, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 5 uses
  %i.vy = phi <2 x float> [ %i.vm, %bb.x ], [ <float 1.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ]
  %i.vz = phi <4 x float> [ %i.vq, %bb.x ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ]
  %i.wa = phi <4 x float> [ %i.vu, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 2 uses
  %i.wb = phi <4 x float> [ %i.vs, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float undef, float undef>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 2 uses
  %i.wc = phi <4 x float> [ %i.vt, %bb.x ], [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i ] ; 6 uses
  store float %i.sh, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 756), align 4, !tbaa !71
  %i.wd = trunc nuw i8 %.1.i to i1
  br i1 %i.wd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i
  %i.we = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 532), align 4
  %i.wf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !10 ; 3 uses
  %i.wg = shufflevector <3 x float> %i.vv, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.wh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 4 uses
  %i.wi = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 4 uses
  %i.wj = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 4 uses
  %i.wk = shufflevector <2 x float> %i.ps, <2 x float> %i.pu, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.wl = insertelement <4 x float> %i.wk, float %i.wf, i64 3
  %.sroa.7262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wm = shufflevector <2 x float> %i.ps, <2 x float> %i.pu, <4 x i32> <i32 0, i32 2, i32 3, i32 poison> ; 2 uses
  %i.wn = insertelement <4 x float> %i.wm, float %i.wf, i64 3
  %.sroa.11266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.wo = fmul <3 x float> %i.vx, zeroinitializer ; 3 uses
  %i.wp = shufflevector <3 x float> %i.wo, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.wq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 524), align 4, !tbaa !10 ; 3 uses
  %i.wr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 528), align 8, !tbaa !14
  %i.ws = shufflevector <2 x float> %i.wq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wt = shufflevector <4 x float> %i.ws, <4 x float> %i.wg, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.wu = shufflevector <3 x float> %i.wo, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wv = shufflevector <2 x float> %i.wq, <2 x float> %i.wu, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ww = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.wc, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.wx = insertelement <4 x float> %i.ww, float %.sroa.55.0.i, i64 1
  %i.wy = insertelement <4 x float> %i.wx, float %.sroa.81.0.i, i64 2
  %i.wz = fmul <4 x float> %i.wv, %i.wy
  %i.xa = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.ws, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.xb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xa, <4 x float> %i.vz, <4 x float> %i.wz) ; 2 uses
  %i.xc = insertelement <4 x float> %i.wc, float %i.wr, i64 2
  %i.xd = shufflevector <4 x float> %i.xb, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 1, i32 0, i32 6, i32 2>
  %i.xe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xc, <4 x float> zeroinitializer, <4 x float> %i.xd)
  %i.xf = fadd <4 x float> %i.xe, zeroinitializer ; 4 uses
  %i.xg = shufflevector <4 x float> %i.xf, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.xh = fmul <4 x float> %i.wi, %i.xg
  %i.xi = shufflevector <4 x float> %i.xf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xi, <4 x float> %i.wh, <4 x float> %i.xh)
  %i.xk = shufflevector <4 x float> %i.xf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.xl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xk, <4 x float> %i.wj, <4 x float> %i.xj)
  %i.xm = shufflevector <4 x float> %i.xf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.xn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xm, <4 x float> %i.wn, <4 x float> %i.xl)
  store <4 x float> %i.xn, ptr %.sroa.7262.0..sroa_idx.i, align 4
  %i.xo = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> %i.vy, <2 x float> %i.wp)
  %i.xq = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.xb, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.xr = shufflevector <2 x float> %i.xp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xs = shufflevector <4 x float> %i.xq, <4 x float> %i.xr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wt, <4 x float> zeroinitializer, <4 x float> %i.xs)
  %i.xu = fadd <4 x float> %i.xt, zeroinitializer ; 4 uses
  %i.xv = shufflevector <4 x float> %i.we, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xw = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.wg, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.xx = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.xy = fmul <4 x float> %i.wi, %i.xx
  %i.xz = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ya = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xz, <4 x float> %i.wh, <4 x float> %i.xy)
  %i.yb = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.yc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yb, <4 x float> %i.wj, <4 x float> %i.ya)
  %i.yd = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ye = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yd, <4 x float> %i.wl, <4 x float> %i.yc)
  %i.yf = insertelement <4 x float> %i.wm, float %i.pv, i64 2
  %i.yg = insertelement <4 x float> %i.yf, float %i.wf, i64 3 ; 2 uses
  store <4 x float> %i.ye, ptr %4, align 4
  %.sroa.15270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.yh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.vw, <3 x float> zeroinitializer, <3 x float> %i.wo) ; 2 uses
  %i.yi = shufflevector <3 x float> %i.yh, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.yj = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.yi, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.yk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xv, <4 x float> %i.xw, <4 x float> %i.yj)
  %i.yl = fadd <4 x float> %i.yk, zeroinitializer ; 4 uses
  %i.ym = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.vv, <3 x float> zeroinitializer, <3 x float> %i.yh)
  %i.yn = fadd <3 x float> %i.ym, zeroinitializer ; 3 uses
  %i.yo = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.yp = fmul <4 x float> %i.yo, %i.wi
  %i.yq = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yq, <4 x float> %i.wh, <4 x float> %i.yp)
  %i.ys = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.yt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ys, <4 x float> %i.wj, <4 x float> %i.yr)
  %i.yu = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yu, <4 x float> %i.yg, <4 x float> %i.yt)
  %i.yw = shufflevector <3 x float> %i.yn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yx = fmul <4 x float> %i.yw, %i.wi
  %i.yy = shufflevector <3 x float> %i.yn, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.yz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yy, <4 x float> %i.wh, <4 x float> %i.yx)
  %i.za = shufflevector <3 x float> %i.yn, <3 x float> poison, <4 x i32> zeroinitializer
  %i.zb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.za, <4 x float> %i.wj, <4 x float> %i.yz)
  %i.zc = fadd <4 x float> %i.yg, %i.zb
  store <4 x float> %i.yv, ptr %.sroa.11266.0..sroa_idx.i, align 4
  store <4 x float> %i.zc, ptr %.sroa.15270.0..sroa_idx.i, align 4
  br label %bb.aa

bb.z:                                             ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i
  %i.zd = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4 ; 4 uses
  %i.ze = shufflevector <4 x float> %i.zd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.55.0.i, i64 0
  %i.zg = shufflevector <4 x float> %i.zf, <4 x float> %i.wc, <4 x i32> <i32 0, i32 6, i32 poison, i32 3>
  %i.zh = insertelement <4 x float> %i.zg, float %.sroa.81.0.i, i64 2 ; 3 uses
  %i.zi = fmul <4 x float> %i.ze, %i.zh
  %i.zj = shufflevector <4 x float> %i.zd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sink60.i.i, i64 0
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> %i.wb, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 3 uses
  %i.zm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zj, <4 x float> %i.zl, <4 x float> %i.zi)
  %i.zn = shufflevector <4 x float> %i.zd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.zo = insertelement <4 x float> %i.wa, float 0.000000e+00, i64 3
  %i.zp = shufflevector <4 x float> %i.zo, <4 x float> %i.wc, <4 x i32> <i32 0, i32 1, i32 7, i32 3> ; 3 uses
  %i.zq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zn, <4 x float> %i.zp, <4 x float> %i.zm)
  %i.zr = shufflevector <4 x float> %i.zd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.zs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.zq)
  %.sroa.7128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.zt = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4 ; 4 uses
  %i.zu = shufflevector <4 x float> %i.zt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.zv = fmul <4 x float> %i.zu, %i.zh
  %i.zw = shufflevector <4 x float> %i.zt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zw, <4 x float> %i.zl, <4 x float> %i.zv)
  %i.zy = shufflevector <4 x float> %i.zt, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.zz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zy, <4 x float> %i.zp, <4 x float> %i.zx)
  %i.aaa = shufflevector <4 x float> %i.zt, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaa, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.zz)
  %.sroa.11132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aac = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4 ; 4 uses
  %i.aad = shufflevector <4 x float> %i.aac, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aae = fmul <4 x float> %i.aad, %i.zh
  %i.aaf = shufflevector <4 x float> %i.aac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaf, <4 x float> %i.zl, <4 x float> %i.aae)
  %i.aah = shufflevector <4 x float> %i.aac, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aah, <4 x float> %i.zp, <4 x float> %i.aag)
  %i.aaj = shufflevector <4 x float> %i.aac, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaj, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.aai)
  store <4 x float> %i.zs, ptr %4, align 4
  store <4 x float> %i.aab, ptr %.sroa.7128.0..sroa_idx.i, align 4
  store <4 x float> %i.aak, ptr %.sroa.11132.0..sroa_idx.i, align 4
  %.sroa.15136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aal = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.55.0.i, i64 0
  %i.aam = shufflevector <4 x float> %i.aal, <4 x float> %i.wc, <4 x i32> <i32 0, i32 6, i32 poison, i32 3>
  %i.aan = insertelement <4 x float> %i.aam, float %.sroa.81.0.i, i64 2
  %i.aao = fmul <4 x float> %i.aan, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.aap = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.sink60.i.i, i64 0
  %i.aaq = shufflevector <4 x float> %i.aap, <4 x float> %i.wb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaq, <4 x float> zeroinitializer, <4 x float> %i.aao)
  %i.aas = insertelement <4 x float> %i.wa, float -0.000000e+00, i64 3
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> %i.wc, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.aau = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aat, <4 x float> zeroinitializer, <4 x float> %i.aar)
  %i.aav = fadd <4 x float> %i.aau, zeroinitializer
  store <4 x float> %i.aav, ptr %.sroa.15136.0..sroa_idx.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.15136.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), i64 16, i1 false), !tbaa.struct !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not25, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aaw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !10 ; 4 uses
  %i.aax = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !10 ; 4 uses
  %i.aay = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !10 ; 3 uses
  %i.aaz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 252), align 4, !tbaa !10 ; 3 uses
  %i.aba = shufflevector <2 x float> %i.aaw, <2 x float> %i.aax, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.abb = shufflevector <2 x float> %i.aay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abc = shufflevector <4 x float> %i.aba, <4 x float> %i.abb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abd = shufflevector <2 x float> %i.aaz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abe = shufflevector <4 x float> %i.abc, <4 x float> %i.abd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.abf = fmul <4 x float> %i.abe, zeroinitializer
  %i.abg = shufflevector <2 x float> %i.aaw, <2 x float> %i.aax, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.abh = shufflevector <4 x float> %i.abg, <4 x float> %i.abb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.abi = shufflevector <4 x float> %i.abh, <4 x float> %i.abd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abi, <4 x float> zeroinitializer, <4 x float> %i.abf)
  %i.abk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 212), align 4, !tbaa !10 ; 4 uses
  %i.abl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 228), align 4, !tbaa !10 ; 4 uses
  %i.abm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 244), align 4, !tbaa !10 ; 3 uses
  %i.abn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 260), align 4, !tbaa !10 ; 3 uses
  %i.abo = shufflevector <2 x float> %i.abk, <2 x float> %i.abl, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.abp = shufflevector <2 x float> %i.abm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abq = shufflevector <4 x float> %i.abo, <4 x float> %i.abp, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.abr = shufflevector <2 x float> %i.abn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.abs = shufflevector <4 x float> %i.abq, <4 x float> %i.abr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abs, <4 x float> zeroinitializer, <4 x float> %i.abj)
  %i.abu = shufflevector <2 x float> %i.abk, <2 x float> %i.abl, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> %i.abp, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.abw = shufflevector <4 x float> %i.abv, <4 x float> %i.abr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.abx = fadd <4 x float> %i.abw, %i.abt        ; 4 uses
  %i.aby = shufflevector <2 x float> %i.aaw, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.abz = fmul <3 x float> %i.vx, %i.aby
  %i.aca = shufflevector <2 x float> %i.aaw, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aca, <3 x float> %i.vw, <3 x float> %i.abz)
  %i.acc = shufflevector <2 x float> %i.abk, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acd = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acc, <3 x float> %i.vv, <3 x float> %i.acb)
  %i.ace = shufflevector <2 x float> %i.abk, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ace, <3 x float> zeroinitializer, <3 x float> %i.acd) ; 3 uses
  %i.acg = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 4 uses
  %i.ach = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 4 uses
  %i.aci = shufflevector <3 x float> %i.acf, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.acj = fmul <4 x float> %i.aci, %i.ach
  %i.ack = shufflevector <3 x float> %i.acf, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.acl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ack, <4 x float> %i.acg, <4 x float> %i.acj)
  %i.acm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 4 uses
  %i.acn = shufflevector <3 x float> %i.acf, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aco = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acn, <4 x float> %i.acm, <4 x float> %i.acl)
  %i.acp = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 4 uses
  %i.acq = shufflevector <4 x float> %i.abx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acq, <4 x float> %i.acp, <4 x float> %i.aco)
  store <4 x float> %i.acr, ptr %5, align 4
  %.sroa.7121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.acs = shufflevector <2 x float> %i.aax, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.act = fmul <3 x float> %i.vx, %i.acs
  %i.acu = shufflevector <2 x float> %i.aax, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acv = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acu, <3 x float> %i.vw, <3 x float> %i.act)
  %i.acw = shufflevector <2 x float> %i.abl, <2 x float> poison, <3 x i32> zeroinitializer
  %i.acx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acw, <3 x float> %i.vv, <3 x float> %i.acv)
  %i.acy = shufflevector <2 x float> %i.abl, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.acz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.acy, <3 x float> zeroinitializer, <3 x float> %i.acx) ; 3 uses
  %i.ada = shufflevector <3 x float> %i.acz, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adb = fmul <4 x float> %i.ada, %i.ach
  %i.adc = shufflevector <3 x float> %i.acz, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.add = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adc, <4 x float> %i.acg, <4 x float> %i.adb)
  %i.ade = shufflevector <3 x float> %i.acz, <3 x float> poison, <4 x i32> zeroinitializer
  %i.adf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ade, <4 x float> %i.acm, <4 x float> %i.add)
  %i.adg = shufflevector <4 x float> %i.abx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adg, <4 x float> %i.acp, <4 x float> %i.adf)
  store <4 x float> %i.adh, ptr %.sroa.7121.0..sroa_idx.i, align 4
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.adi = shufflevector <2 x float> %i.aay, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adj = fmul <3 x float> %i.vx, %i.adi
  %i.adk = shufflevector <2 x float> %i.aay, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adl = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adk, <3 x float> %i.vw, <3 x float> %i.adj)
  %i.adm = shufflevector <2 x float> %i.abm, <2 x float> poison, <3 x i32> zeroinitializer
  %i.adn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.adm, <3 x float> %i.vv, <3 x float> %i.adl)
  %i.ado = shufflevector <2 x float> %i.abm, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ado, <3 x float> zeroinitializer, <3 x float> %i.adn) ; 3 uses
  %i.adq = shufflevector <3 x float> %i.adp, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adr = fmul <4 x float> %i.adq, %i.ach
  %i.ads = shufflevector <3 x float> %i.adp, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.adt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ads, <4 x float> %i.acg, <4 x float> %i.adr)
  %i.adu = shufflevector <3 x float> %i.adp, <3 x float> poison, <4 x i32> zeroinitializer
  %i.adv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adu, <4 x float> %i.acm, <4 x float> %i.adt)
  %i.adw = shufflevector <4 x float> %i.abx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.adx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.adw, <4 x float> %i.acp, <4 x float> %i.adv)
  store <4 x float> %i.adx, ptr %.sroa.11.0..sroa_idx.i, align 4
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ady = shufflevector <2 x float> %i.aaz, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.adz = fmul <3 x float> %i.vx, %i.ady
  %i.aea = shufflevector <2 x float> %i.aaz, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aeb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aea, <3 x float> %i.vw, <3 x float> %i.adz)
  %i.aec = shufflevector <2 x float> %i.abn, <2 x float> poison, <3 x i32> zeroinitializer
  %i.aed = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aec, <3 x float> %i.vv, <3 x float> %i.aeb)
  %i.aee = shufflevector <2 x float> %i.abn, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aef = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aee, <3 x float> zeroinitializer, <3 x float> %i.aed) ; 3 uses
  %i.aeg = shufflevector <3 x float> %i.aef, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aeh = fmul <4 x float> %i.aeg, %i.ach
  %i.aei = shufflevector <3 x float> %i.aef, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aei, <4 x float> %i.acg, <4 x float> %i.aeh)
  %i.aek = shufflevector <3 x float> %i.aef, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ael = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aek, <4 x float> %i.acm, <4 x float> %i.aej)
  %i.aem = shufflevector <4 x float> %i.abx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aen = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aem, <4 x float> %i.acp, <4 x float> %i.ael)
  store <4 x float> %i.aen, ptr %.sroa.15.0..sroa_idx.i, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.is, i64 296
  %i.aep = load i8, ptr %i.aeo, align 8, !tbaa !47, !range !33, !noundef !34
  %i.aeq = trunc nuw i8 %i.aep to i1
  br i1 %i.aeq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.aer = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !70
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.af:                                            ; preds = %bb.g
  %i.aes = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.aet = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !68
  %i.aeu = icmp eq i32 %i.aet, 0
  %i.aev = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.aew = trunc nuw i8 %i.aev to i1
  br i1 %i.aew, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  %i.aex = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !12 ; 2 uses
  %i.aey = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4, !tbaa !14 ; 2 uses
  %i.aez = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 2 uses
  %i.afa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 700), align 4, !tbaa !15
  %i.afb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 672), align 8, !tbaa !14
  %i.afc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %i.afd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 4 uses
  %i.afe = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !10 ; 2 uses
  %i.aff = extractelement <2 x float> %i.afe, i64 0
  %i.afg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10 ; 2 uses
  %i.afh = extractelement <2 x float> %i.afg, i64 0
  %i.afi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4, !tbaa !10 ; 2 uses
  %i.afj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !10 ; 3 uses
  %i.afk = extractelement <2 x float> %i.afj, i64 1
  %i.afl = fmul float %i.aey, %i.afk
  %i.afm = extractelement <2 x float> %i.afj, i64 0
  %i.afn = tail call float @llvm.fmuladd.f32(float %i.aex, float %i.afm, float %i.afl)
  %i.afo = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !10 ; 3 uses
  %i.afp = extractelement <2 x float> %i.afo, i64 1
  %i.afq = fmul float %i.aey, %i.afp
  %i.afr = extractelement <2 x float> %i.afo, i64 0
  %i.afs = tail call float @llvm.fmuladd.f32(float %i.aex, float %i.afr, float %i.afq)
  %i.aft = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !10 ; 3 uses
  %i.afu = shufflevector <2 x float> %i.aft, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.afv = insertelement <2 x float> %i.aft, float %i.afb, i64 1
  %i.afw = fmul <2 x float> %i.afu, %i.afv
  %i.afx = tail call noundef float @llvm.fmuladd.f32(float %i.aez, float %i.aff, float %i.afn)
  %i.afy = tail call noundef float @llvm.fmuladd.f32(float %i.aez, float %i.afh, float %i.afs) ; 2 uses
  %i.afz = tail call float @llvm.fabs.f32(float %i.afy)
  %i.aga = fcmp olt float %i.afz, f0x34000000
  %i.agb = fsub float %i.afx, %i.afa
  %i.agc = fneg float %i.agb
  %i.agd = fdiv float %i.agc, %i.afy
  %i.age = tail call float @llvm.fabs.f32(float %i.agd)
  %i.agf = select i1 %i.aga, float 1.000000e+00, float %i.age
  %i.agg = insertelement <2 x float> poison, float %i.agf, i64 0
  %i.agh = shufflevector <2 x float> %i.agg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agi = fmul <2 x float> %i.afo, %i.agh
  %i.agj = fmul <2 x float> %i.afg, %i.agh
  %i.agk = fadd <2 x float> %i.afj, %i.agi
  %i.agl = fadd <2 x float> %i.afe, %i.agj
  %i.agm = shufflevector <2 x float> %i.afi, <2 x float> %i.afu, <2 x i32> <i32 0, i32 3>
  %i.agn = shufflevector <2 x float> %i.aft, <2 x float> %i.afi, <2 x i32> <i32 0, i32 3>
  %i.ago = fmul <2 x float> %i.agm, %i.agn
  %i.agp = fsub <2 x float> %i.agk, %i.afw
  %i.agq = fsub <2 x float> %i.agl, %i.ago
  %i.agr = fsub <2 x float> %i.agp, %i.afc        ; 3 uses
  %i.ags = fsub <2 x float> %i.agq, %i.afd        ; 2 uses
  %i.agt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !70 ; 2 uses
  %i.agu = add i32 %i.agt, -1
  %or.cond.i = icmp ult i32 %i.agu, 3
  br i1 %or.cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.agv = zext nneg i32 %i.agt to i64
  %i.agw = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 %i.agv ; 2 uses
  %i.agx = getelementptr i8, ptr %i.agw, i64 -16
  %i.agy = getelementptr i8, ptr %i.agw, i64 -8
  %i.agz = load <2 x float>, ptr %i.agy, align 4, !tbaa !10 ; 2 uses
  %i.aha = extractelement <2 x float> %i.agz, i64 0
  %i.ahb = load <2 x float>, ptr %i.agx, align 4, !tbaa !10 ; 3 uses
  %foldExtExtBinop223 = fmul <2 x float> %i.agr, %i.ahb
  %i.ahc = extractelement <2 x float> %foldExtExtBinop223, i64 1
  %i.ahd = extractelement <2 x float> %i.ahb, i64 0
  %i.ahe = extractelement <2 x float> %i.agr, i64 0
  %i.ahf = tail call float @llvm.fmuladd.f32(float %i.ahd, float %i.ahe, float %i.ahc)
  %i.ahg = extractelement <2 x float> %i.ags, i64 0
  %i.ahh = tail call noundef float @llvm.fmuladd.f32(float %i.aha, float %i.ahg, float %i.ahf)
  %i.ahi = insertelement <2 x float> poison, float %i.ahh, i64 0
  %i.ahj = shufflevector <2 x float> %i.ahi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ahk = fmul <2 x float> %i.ahb, %i.ahj
  %i.ahl = fmul <2 x float> %i.agz, %i.ahj
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.0209.0.i = phi <2 x float> [ %i.ahk, %bb.ah ], [ %i.agr, %bb.ag ] ; 2 uses
  %.sroa.11218.0.i = phi <2 x float> [ %i.ahl, %bb.ah ], [ %i.ags, %bb.ag ] ; 3 uses
  %.not39.i = icmp eq ptr %6, null
  br i1 %.not39.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  %i.ahm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10 ; 2 uses
  %i.ahn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8, !tbaa !10 ; 3 uses
  %i.aho = shufflevector <2 x float> %i.afd, <2 x float> %i.afc, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ahp = shufflevector <2 x float> %.sroa.11218.0.i, <2 x float> %.sroa.0209.0.i, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ahq = fadd <3 x float> %i.aho, %i.ahp
  %i.ahr = shufflevector <2 x float> %i.ahn, <2 x float> %i.ahm, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ahs = fsub <3 x float> %i.ahq, %i.ahr        ; 4 uses
  %i.aht = shufflevector <3 x float> %i.ahs, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ahu = fadd <2 x float> %i.afd, %.sroa.11218.0.i
  %.sroa.3.12.vec.insert.i.i80.i = fsub <2 x float> %i.ahu, %i.ahn
  store <2 x float> %i.aht, ptr %54, align 16
  %i.ahv = getelementptr inbounds nuw i8, ptr %54, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i80.i, ptr %i.ahv, align 8
  br i1 %i.aeu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %55, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false)
  %i.ahw = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %55, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  %i.ahy = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.ahz = getelementptr inbounds nuw i8, ptr %56, i64 32
  %i.aia = load <4 x float>, ptr %55, align 16, !tbaa !10 ; 4 uses
  %i.aib = load <4 x float>, ptr %i.ahw, align 16, !tbaa !10 ; 4 uses
  %i.aic = load <4 x float>, ptr %i.ahx, align 16, !tbaa !10 ; 4 uses
  %i.aid = shufflevector <4 x float> %i.aia, <4 x float> %i.aib, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.aie = shufflevector <4 x float> %i.aid, <4 x float> %i.aic, <3 x i32> <i32 0, i32 1, i32 5> ; 2 uses
  %i.aif = fmul <3 x float> %i.aie, %i.aie
  %i.aig = shufflevector <4 x float> %i.aia, <4 x float> %i.aib, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> %i.aic, <3 x i32> <i32 0, i32 1, i32 4> ; 2 uses
  %i.aii = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aih, <3 x float> %i.aih, <3 x float> %i.aif)
  %i.aij = shufflevector <4 x float> %i.aia, <4 x float> %i.aib, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.aik = shufflevector <4 x float> %i.aij, <4 x float> %i.aic, <3 x i32> <i32 0, i32 1, i32 6> ; 2 uses
  %i.ail = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aik, <3 x float> %i.aik, <3 x float> %i.aii)
  %i.aim = tail call <3 x float> @llvm.sqrt.v3f32(<3 x float> %i.ail)
  %i.ain = fdiv <3 x float> splat (float 1.000000e+00), %i.aim ; 3 uses
  %i.aio = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aip = fmul <4 x float> %i.aio, %i.aia        ; 2 uses
  store <4 x float> %i.aip, ptr %55, align 16, !tbaa !10
  %i.aiq = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.air = fmul <4 x float> %i.aiq, %i.aib        ; 2 uses
  store <4 x float> %i.air, ptr %i.ahw, align 16, !tbaa !10
  %i.ais = shufflevector <3 x float> %i.ain, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ait = fmul <4 x float> %i.ais, %i.aic        ; 2 uses
  store <4 x float> %i.ait, ptr %i.ahx, align 16, !tbaa !10
  %i.aiu = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %56, ptr noundef nonnull align 4 dereferenceable(64) %55, i1 noundef zeroext false) ; 0 uses
  %i.aiv = load <4 x float>, ptr %56, align 16, !tbaa !16
  %i.aiw = load <4 x float>, ptr %i.ahy, align 16, !tbaa !16
  %i.aix = shufflevector <3 x float> %i.ahs, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aiy = fmul <4 x float> %i.aix, %i.aiw
  %i.aiz = shufflevector <3 x float> %i.ahs, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aja = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiz, <4 x float> %i.aiv, <4 x float> %i.aiy)
  %i.ajb = load <4 x float>, ptr %i.ahz, align 16, !tbaa !16
  %i.ajc = shufflevector <3 x float> %i.ahs, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ajd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajc, <4 x float> %i.ajb, <4 x float> %i.aja)
  store <4 x float> %i.ajd, ptr %54, align 16, !tbaa !10
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef readonly %6)
  %i.aje = load <3 x float>, ptr %54, align 16, !tbaa !10 ; 3 uses
  %i.ajf = shufflevector <3 x float> %i.aje, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ajg = fmul <4 x float> %i.air, %i.ajf
  %i.ajh = shufflevector <3 x float> %i.aje, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aji = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajh, <4 x float> %i.aip, <4 x float> %i.ajg)
  %i.ajj = shufflevector <3 x float> %i.aje, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ajk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajj, <4 x float> %i.ait, <4 x float> %i.aji)
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #19
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef readonly %6)
  %i.ajl = load <4 x float>, ptr %54, align 16, !tbaa !10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ajm = phi <4 x float> [ %i.ajl, %bb.al ], [ %i.ajk, %bb.ak ] ; 2 uses
  %i.ajn = shufflevector <4 x float> %i.ajm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ajo = fadd <2 x float> %i.ahm, %i.ajn
  %i.ajp = fsub <2 x float> %i.ajo, %i.afc
  %i.ajq = shufflevector <4 x float> %i.ajm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ajr = fadd <2 x float> %i.ahn, %i.ajq
  %i.ajs = fsub <2 x float> %i.ajr, %i.afd
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ai
  %.sroa.0209.1.i = phi <2 x float> [ %.sroa.0209.0.i, %bb.ai ], [ %i.ajp, %bb.am ] ; 2 uses
  %.sroa.11218.1.i = phi <2 x float> [ %.sroa.11218.0.i, %bb.ai ], [ %i.ajs, %bb.am ] ; 2 uses
  br i1 %.not25, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.sroa.11218.8.vec.extract222.i = extractelement <2 x float> %.sroa.11218.1.i, i64 0
  store float 1.000000e+00, ptr %5, align 4
  %.sroa.8157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8157.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.25.0..sroa_idx.i, align 4
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.30.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %i.ajt = shufflevector <2 x float> %.sroa.0209.1.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aju = shufflevector <4 x float> %i.ajt, <4 x float> <float 1.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  store <4 x float> %i.aju, ptr %.sroa.47.0..sroa_idx.i, align 4
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %.sroa.11218.8.vec.extract222.i, ptr %.sroa.67.0..sroa_idx.i, align 4
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float 1.000000e+00, ptr %.sroa.72.0..sroa_idx.i, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ajv = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !10 ; 5 uses
  %i.ajw = shufflevector <4 x float> %i.ajv, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ajx = fmul <2 x float> %i.ajw, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ajy = shufflevector <4 x float> %i.ajv, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ajz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajy, <2 x float> zeroinitializer, <2 x float> %i.ajx)
  %i.aka = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.akb = shufflevector <2 x float> %i.ajz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akc = shufflevector <2 x float> %.sroa.0209.1.i, <2 x float> %.sroa.11218.1.i, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.akd = insertelement <4 x float> %i.akc, float 1.000000e+00, i64 3 ; 4 uses
  %i.ake = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.akf = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !10 ; 5 uses
  %i.akg = shufflevector <4 x float> %i.akf, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.akh = fmul <2 x float> %i.akg, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.aki = shufflevector <4 x float> %i.akf, <4 x float> poison, <2 x i32> zeroinitializer
  %i.akj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aki, <2 x float> zeroinitializer, <2 x float> %i.akh)
  %i.akk = shufflevector <4 x float> %i.akf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.akl = shufflevector <2 x float> %i.akj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akm = shufflevector <4 x float> %i.akf, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %.sroa.11.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.akn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !10 ; 5 uses
  %i.ako = shufflevector <4 x float> %i.akn, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.akp = shufflevector <4 x float> %i.akn, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.akq = fmul <2 x float> %i.akp, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.akr = shufflevector <4 x float> %i.akn, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aks = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akr, <2 x float> zeroinitializer, <2 x float> %i.akq)
  %i.akt = shufflevector <4 x float> %i.akn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aku = shufflevector <2 x float> %i.aks, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akv = shufflevector <4 x float> %i.akn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %.sroa.15.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.akw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !10 ; 5 uses
  %i.akx = shufflevector <4 x float> %i.akw, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.aky = shufflevector <4 x float> %i.akw, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.akz = fmul <2 x float> %i.aky, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ala = shufflevector <4 x float> %i.ajv, <4 x float> %i.akf, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.alb = shufflevector <4 x float> %i.ala, <4 x float> %i.ako, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.alc = shufflevector <4 x float> %i.alb, <4 x float> %i.akx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ald = shufflevector <2 x float> %i.ajx, <2 x float> %i.akh, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ale = shufflevector <2 x float> %i.akq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.alf = shufflevector <4 x float> %i.ald, <4 x float> %i.ale, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.alg = shufflevector <2 x float> %i.akz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.alh = shufflevector <4 x float> %i.alf, <4 x float> %i.alg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ali = fadd <4 x float> %i.alc, %i.alh        ; 4 uses
  %i.alj = shufflevector <4 x float> %i.ali, <4 x float> %i.akb, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.alk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aka, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.alj)
  %i.all = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.ake, <4 x float> %i.alk)
  %i.alm = shufflevector <4 x float> %i.ali, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aln = shufflevector <4 x float> %i.alm, <4 x float> %i.akl, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.alo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akk, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.aln)
  %i.alp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.akm, <4 x float> %i.alo)
  %i.alq = shufflevector <4 x float> %i.ali, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.alr = shufflevector <4 x float> %i.alq, <4 x float> %i.aku, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.als = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akt, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.alr)
  %i.alt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.akv, <4 x float> %i.als)
  %i.alu = shufflevector <4 x float> %i.akw, <4 x float> poison, <2 x i32> zeroinitializer
  %i.alv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.alu, <2 x float> zeroinitializer, <2 x float> %i.akz)
  %i.alw = shufflevector <4 x float> %i.akw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.alx = shufflevector <4 x float> %i.ali, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.aly = shufflevector <2 x float> %i.alv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.alz = shufflevector <4 x float> %i.alx, <4 x float> %i.aly, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.ama = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <4 x float> %i.alz)
  %i.amb = shufflevector <4 x float> %i.akw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.amc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akd, <4 x float> %i.amb, <4 x float> %i.ama)
  store <4 x float> %i.all, ptr %4, align 4
  store <4 x float> %i.alp, ptr %.sroa.7.0..sroa_idx.i, align 4
  store <4 x float> %i.alt, ptr %.sroa.11.0..sroa_idx.i42, align 4
  store <4 x float> %i.amc, ptr %.sroa.15.0..sroa_idx.i45, align 4
  %i.amd = getelementptr inbounds nuw i8, ptr %i.aes, i64 296
  %i.ame = load i8, ptr %i.amd, align 8, !tbaa !47, !range !33, !noundef !34
  %i.amf = trunc nuw i8 %i.ame to i1
  br i1 %i.amf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.amg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !70
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.as:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  %i.amh = call fastcc noundef i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr noundef nonnull %57) ; 4 uses
  %.not.i30 = icmp eq i32 %i.amh, 0               ; 2 uses
  br i1 %.not.i30, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ami = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.ami, label %bb.av, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31

bb.av:                                            ; preds = %bb.au
  %i.amj = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.amj, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.amk = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  %brmerge169 = or i1 %.not.i30, %i.amk
  br i1 %brmerge169, label %_ZN8ImGuizmoL11CanActivateEv.exit.i31, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  store i32 %i.amh, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %58, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.aml = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aml, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.amm = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amm, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.amn = getelementptr inbounds nuw i8, ptr %58, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amn, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.amo = getelementptr inbounds nuw i8, ptr %58, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amo, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.amp = getelementptr inbounds nuw i8, ptr %58, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amp, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.amq = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.amr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), align 4, !tbaa !10
  %i.ams = fneg <2 x float> %i.amr
  %i.amt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 580), align 4, !tbaa !10
  %i.amu = fneg <2 x float> %i.amt
  store <2 x float> %i.ams, ptr %i.amq, align 16
  %i.amv = getelementptr inbounds nuw i8, ptr %58, i64 104
  store <2 x float> %i.amu, ptr %i.amv, align 8
  %i.amw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !12
  %i.amx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %58, i64 4
  %i.amz = load <2 x float>, ptr %i.amy, align 4, !tbaa !10 ; 3 uses
  %i.ana = load <2 x float>, ptr %58, align 16, !tbaa !10 ; 2 uses
  %i.anb = extractelement <2 x float> %i.amz, i64 0
  %i.anc = shufflevector <2 x float> %i.amz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.and = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.anc, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.ane = shufflevector <2 x float> %i.ana, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.anf = shufflevector <4 x float> %i.ane, <4 x float> %i.and, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ang = shufflevector <4 x float> %i.anf, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.anh = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ane, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.ani = shufflevector <4 x float> %i.anc, <4 x float> %i.anh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.anj = getelementptr inbounds nuw i8, ptr %58, i64 20
  %i.ank = load <2 x float>, ptr %i.anj, align 4, !tbaa !10 ; 3 uses
  %i.anl = load <2 x float>, ptr %i.aml, align 16, !tbaa !10 ; 2 uses
  %i.anm = extractelement <2 x float> %i.ank, i64 0
  %i.ann = shufflevector <2 x float> %i.ank, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ano = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ann, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.anp = shufflevector <2 x float> %i.anl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.anq = shufflevector <4 x float> %i.anp, <4 x float> %i.ano, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.anr = shufflevector <4 x float> %i.anq, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ans = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.anp, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.ant = shufflevector <4 x float> %i.ann, <4 x float> %i.ans, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.anu = getelementptr inbounds nuw i8, ptr %58, i64 36
  %i.anv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 3 uses
  %i.anw = fsub float %i.anv, %i.amw              ; 3 uses
  %i.anx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 4 uses
  %i.any = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 544), align 8, !tbaa !10
  %i.anz = fsub <2 x float> %i.anx, %i.any        ; 4 uses
  %foldExtExtBinop229 = fmul <2 x float> %i.anz, %i.anz
  %i.aoa = extractelement <2 x float> %foldExtExtBinop229, i64 0
  %i.aob = call float @llvm.fmuladd.f32(float %i.anw, float %i.anw, float %i.aoa)
  %i.aoc = extractelement <2 x float> %i.anz, i64 1 ; 2 uses
  %i.aod = call float @llvm.fmuladd.f32(float %i.aoc, float %i.aoc, float %i.aob)
  %sqrt.i.i.i108.i = call noundef float @llvm.sqrt.f32(float %i.aod)
  %i.aoe = fdiv float 1.000000e+00, %sqrt.i.i.i108.i
  %i.aof = shufflevector <2 x float> %i.anz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aog = insertelement <4 x float> %i.aof, float -0.000000e+00, i64 3
  %i.aoh = insertelement <4 x float> %i.aog, float %i.anw, i64 2
  %i.aoi = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.aoe, i64 0
  %i.aoj = shufflevector <4 x float> %i.aoi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.aok = fmul <4 x float> %i.aoh, %i.aoj        ; 4 uses
  %i.aol = extractelement <4 x float> %i.aok, i64 2
  %i.aom = fneg float %i.aol                      ; 3 uses
  %i.aon = fneg <4 x float> %i.aok                ; 3 uses
  %i.aoo = fmul float %i.anb, %i.aom
  %i.aop = insertelement <4 x float> %i.aok, float -0.000000e+00, i64 3 ; 2 uses
  %i.aoq = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.aoo, i64 0
  %i.aor = shufflevector <2 x float> %i.amz, <2 x float> %i.ana, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.aos = fmul <4 x float> %i.aor, %i.aon
  %i.aot = shufflevector <4 x float> %i.aoq, <4 x float> %i.aos, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aou = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anf, <4 x float> %i.aop, <4 x float> %i.aot) ; 3 uses
  %i.aov = fneg <4 x float> %i.aou
  %i.aow = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aov, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.aox = fneg <4 x float> %i.aou
  %i.aoy = shufflevector <4 x float> %i.aow, <4 x float> %i.aox, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aoz = fmul <4 x float> %i.ang, %i.aoy
  %i.apa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ani, <4 x float> %i.aou, <4 x float> %i.aoz) ; 5 uses
  %foldExtExtBinop231 = fmul <4 x float> %i.apa, %i.apa
  %i.apb = extractelement <4 x float> %foldExtExtBinop231, i64 1
  %i.apc = extractelement <4 x float> %i.apa, i64 0 ; 2 uses
  %i.apd = call float @llvm.fmuladd.f32(float %i.apc, float %i.apc, float %i.apb)
  %i.ape = extractelement <4 x float> %i.apa, i64 2 ; 2 uses
  %i.apf = call float @llvm.fmuladd.f32(float %i.ape, float %i.ape, float %i.apd)
  %sqrt.i.i.i32 = call noundef float @llvm.sqrt.f32(float %i.apf)
  %i.apg = fdiv float 1.000000e+00, %sqrt.i.i.i32
  %i.aph = insertelement <4 x float> poison, float %i.apg, i64 0
  %i.api = shufflevector <4 x float> %i.aph, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apj = fmul <4 x float> %i.api, %i.apa
  store <4 x float> %i.apj, ptr %58, align 16, !tbaa !10
  %i.apk = fmul float %i.anm, %i.aom
  %i.apl = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.apk, i64 0
  %i.apm = shufflevector <2 x float> %i.ank, <2 x float> %i.anl, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.apn = fmul <4 x float> %i.apm, %i.aon
  %i.apo = shufflevector <4 x float> %i.apl, <4 x float> %i.apn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.app = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.anq, <4 x float> %i.aop, <4 x float> %i.apo) ; 3 uses
  %i.apq = fneg <4 x float> %i.app
  %i.apr = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.apq, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.aps = fneg <4 x float> %i.app
  %i.apt = shufflevector <4 x float> %i.apr, <4 x float> %i.aps, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.apu = fmul <4 x float> %i.anr, %i.apt
  %i.apv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ant, <4 x float> %i.app, <4 x float> %i.apu) ; 5 uses
  %foldExtExtBinop233 = fmul <4 x float> %i.apv, %i.apv
  %i.apw = extractelement <4 x float> %foldExtExtBinop233, i64 1
  %i.apx = extractelement <4 x float> %i.apv, i64 0 ; 2 uses
  %i.apy = call float @llvm.fmuladd.f32(float %i.apx, float %i.apx, float %i.apw)
  %i.apz = extractelement <4 x float> %i.apv, i64 2 ; 2 uses
  %i.aqa = call float @llvm.fmuladd.f32(float %i.apz, float %i.apz, float %i.apy)
  %sqrt.i.i.1.i = call noundef float @llvm.sqrt.f32(float %i.aqa)
  %i.aqb = fdiv float 1.000000e+00, %sqrt.i.i.1.i
  %i.aqc = insertelement <4 x float> poison, float %i.aqb, i64 0
  %i.aqd = shufflevector <4 x float> %i.aqc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqe = fmul <4 x float> %i.aqd, %i.apv
  store <4 x float> %i.aqe, ptr %i.aml, align 16, !tbaa !10
  %i.aqf = load <2 x float>, ptr %i.anu, align 4, !tbaa !10 ; 3 uses
  %i.aqg = load <2 x float>, ptr %i.amm, align 16, !tbaa !10 ; 2 uses
  %i.aqh = extractelement <2 x float> %i.aqf, i64 0
  %i.aqi = fmul float %i.aqh, %i.aom
  %i.aqj = shufflevector <2 x float> %i.aqf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aqk = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aqj, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.aql = shufflevector <2 x float> %i.aqg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.aqm = shufflevector <4 x float> %i.aql, <4 x float> %i.aqk, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aqn = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.aqi, i64 0
  %i.aqo = shufflevector <2 x float> %i.aqf, <2 x float> %i.aqg, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.aqp = fmul <4 x float> %i.aqo, %i.aon
  %i.aqq = shufflevector <4 x float> %i.aqn, <4 x float> %i.aqp, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aqr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqm, <4 x float> %i.aok, <4 x float> %i.aqq) ; 3 uses
  %i.aqs = shufflevector <4 x float> %i.aqm, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.aqt = fneg <4 x float> %i.aqr
  %i.aqu = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aqt, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.aqv = fneg <4 x float> %i.aqr
  %i.aqw = shufflevector <4 x float> %i.aqu, <4 x float> %i.aqv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.aqx = fmul <4 x float> %i.aqs, %i.aqw
  %i.aqy = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.aql, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.aqz = shufflevector <4 x float> %i.aqj, <4 x float> %i.aqy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ara = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aqz, <4 x float> %i.aqr, <4 x float> %i.aqx) ; 5 uses
  %foldExtExtBinop235 = fmul <4 x float> %i.ara, %i.ara
  %i.arb = extractelement <4 x float> %foldExtExtBinop235, i64 1
  %i.arc = extractelement <4 x float> %i.ara, i64 0 ; 2 uses
  %i.ard = call float @llvm.fmuladd.f32(float %i.arc, float %i.arc, float %i.arb)
  %i.are = extractelement <4 x float> %i.ara, i64 2 ; 2 uses
  %i.arf = call float @llvm.fmuladd.f32(float %i.are, float %i.are, float %i.ard)
  %sqrt.i.i.2.i = call noundef float @llvm.sqrt.f32(float %i.arf)
  %i.arg = fdiv float 1.000000e+00, %sqrt.i.i.2.i
  %i.arh = insertelement <4 x float> poison, float %i.arg, i64 0
  %i.ari = shufflevector <4 x float> %i.arh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arj = fmul <4 x float> %i.ari, %i.ara
  store <4 x float> %i.arj, ptr %i.amm, align 16, !tbaa !10
  %i.ark = zext nneg i32 %i.amh to i64
  %i.arl = getelementptr [16 x i8], ptr %58, i64 %i.ark ; 3 uses
  %i.arm = getelementptr i8, ptr %i.arl, i64 -16
  %i.arn = load float, ptr %i.arm, align 16, !tbaa !12 ; 3 uses
  %i.aro = getelementptr i8, ptr %i.arl, i64 -12
  %i.arp = load float, ptr %i.aro, align 4, !tbaa !14 ; 3 uses
  %i.arq = getelementptr i8, ptr %i.arl, i64 -8
  %i.arr = fmul float %i.arp, %i.arp
  %i.ars = call float @llvm.fmuladd.f32(float %i.arn, float %i.arn, float %i.arr)
  %i.art = extractelement <2 x float> %i.anx, i64 0
  %i.aru = extractelement <2 x float> %i.anx, i64 1
  %i.arv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !10 ; 2 uses
  %i.arw = load <2 x float>, ptr %i.arq, align 8, !tbaa !10 ; 2 uses
  %i.arx = extractelement <2 x float> %i.arw, i64 0 ; 2 uses
  %i.ary = call float @llvm.fmuladd.f32(float %i.arx, float %i.arx, float %i.ars)
  %sqrt.i.i.i.i.i33 = call noundef float @llvm.sqrt.f32(float %i.ary)
  %i.arz = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i33 ; 3 uses
  %i.asa = fmul float %i.arp, %i.arz              ; 4 uses
  %i.asb = fmul float %i.arn, %i.arz              ; 4 uses
  %i.asc = insertelement <2 x float> poison, float %i.arz, i64 0
  %i.asd = shufflevector <2 x float> %i.asc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ase = fmul <2 x float> %i.arw, %i.asd        ; 3 uses
  %i.asf = fmul float %i.art, %i.asa
  %.sroa.02.0.vec.insert.i.i34 = insertelement <2 x float> poison, float %i.asb, i64 0
  %.sroa.02.4.vec.insert.i.i35 = insertelement <2 x float> %.sroa.02.0.vec.insert.i.i34, float %i.asa, i64 1
  %i.asg = call float @llvm.fmuladd.f32(float %i.asb, float %i.anv, float %i.asf)
  %i.ash = extractelement <2 x float> %i.ase, i64 0 ; 2 uses
  %i.asi = call float @llvm.fmuladd.f32(float %i.ash, float %i.aru, float %i.asg)
  %i.asj = insertelement <2 x float> %i.arv, float %i.amx, i64 1
  store <2 x float> %.sroa.02.4.vec.insert.i.i35, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8
  %i.ask = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10 ; 2 uses
  %i.asl = extractelement <2 x float> %i.ask, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), i64 16, i1 false), !tbaa.struct !17
  %i.asm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46
  %i.asn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !10 ; 3 uses
  %i.aso = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !10 ; 3 uses
  %i.asp = extractelement <2 x float> %i.aso, i64 1
  %i.asq = fmul float %i.asa, %i.asp
  %i.asr = extractelement <2 x float> %i.aso, i64 0
  %i.ass = call float @llvm.fmuladd.f32(float %i.asb, float %i.asr, float %i.asq)
  %i.ast = insertelement <2 x float> poison, float %i.ass, i64 0
  %i.asu = insertelement <2 x float> %i.ast, float %i.asi, i64 1
  %i.asv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ase, <2 x float> %i.asj, <2 x float> %i.asu) ; 3 uses
  %i.asw = shufflevector <2 x float> %i.ase, <2 x float> %i.asv, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.asw, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8
  %i.asx = extractelement <2 x float> %i.asn, i64 1
  %i.asy = fmul float %i.asa, %i.asx
  %shift237 = shufflevector <2 x float> %i.asv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop238 = fsub <2 x float> %i.asv, %shift237
  %i.asz = extractelement <2 x float> %foldExtExtBinop238, i64 0
  %i.ata = fneg float %i.asz
  %i.atb = extractelement <2 x float> %i.asn, i64 0
  %i.atc = call float @llvm.fmuladd.f32(float %i.asb, float %i.atb, float %i.asy)
  %i.atd = call noundef float @llvm.fmuladd.f32(float %i.ash, float %i.asl, float %i.atc) ; 2 uses
  %i.ate = call float @llvm.fabs.f32(float %i.atd)
  %i.atf = fcmp olt float %i.ate, f0x34000000
  %i.atg = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ata, i64 0
  %i.ath = insertelement <2 x float> poison, float %i.atd, i64 0
  %i.ati = insertelement <2 x float> %i.ath, float %i.asm, i64 1
  %i.atj = fdiv <2 x float> %i.atg, %i.ati        ; 3 uses
  %i.atk = extractelement <2 x float> %i.atj, i64 0
  %.0.i111.i = select i1 %i.atf, float -1.000000e+00, float %i.atk
  %i.atl = insertelement <2 x float> poison, float %.0.i111.i, i64 0
  %i.atm = shufflevector <2 x float> %i.atl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.atn = fmul <2 x float> %i.asn, %i.atm
  %i.ato = fmul <2 x float> %i.ask, %i.atm
  %i.atp = fadd <2 x float> %i.aso, %i.atn        ; 2 uses
  %i.atq = fadd <2 x float> %i.arv, %i.ato        ; 2 uses
  store <2 x float> %i.atp, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 704), align 8
  store <2 x float> %i.atq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 712), align 8
  %i.atr = shufflevector <2 x float> %i.anx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ats = insertelement <2 x float> %i.atr, float %i.anv, i64 0
  %i.att = fsub <2 x float> %i.atp, %i.ats
  %i.atu = shufflevector <2 x float> %i.atj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.atv = fmul <2 x float> %i.atu, %i.att
  %i.atw = insertelement <2 x float> %i.atr, float %i.amx, i64 1
  %i.atx = fsub <2 x float> %i.atq, %i.atw
  %i.aty = shufflevector <2 x float> %i.atj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.atz = fmul <2 x float> %i.aty, %i.atx
  store <2 x float> %i.atv, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 668), align 4
  store <2 x float> %i.atz, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i31

_ZN8ImGuizmoL11CanActivateEv.exit.i31:            ; preds = %bb.aw, %bb.ax, %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.ay:                                            ; preds = %bb.g
  %i.aua = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 3 uses
  %i.aub = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.auc = trunc nuw i8 %i.aub to i1
  br i1 %i.auc, label %_ZN8ImGuizmoL11CanActivateEv.exit.i52, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.aud = tail call fastcc noundef i32 @_ZN8ImGuizmoL12GetScaleTypeEv() ; 7 uses
  %.not.i51 = icmp eq i32 %i.aud, 0               ; 2 uses
  br i1 %.not.i51, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.aue = tail call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.aue, label %bb.bc, label %_ZN8ImGuizmoL11CanActivateEv.exit.i52

bb.bc:                                            ; preds = %bb.bb
  %i.auf = tail call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.auf, label %_ZN8ImGuizmoL11CanActivateEv.exit.i52, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.aug = tail call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv() ; 2 uses
  %brmerge170 = or i1 %.not.i51, %i.aug
  %.mux171 = select i1 %i.aug, i32 %i.aud, i32 0
  br i1 %brmerge170, label %_ZN8ImGuizmoL11CanActivateEv.exit.i52, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  store i32 %i.aud, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %53, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.auh = getelementptr inbounds nuw i8, ptr %53, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.auh, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.aui = getelementptr inbounds nuw i8, ptr %53, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aui, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.auj = getelementptr inbounds nuw i8, ptr %53, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.auj, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), i64 16, i1 false), !tbaa.struct !17
  %i.auk = getelementptr inbounds nuw i8, ptr %53, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.auk, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), i64 16, i1 false), !tbaa.struct !17
  %i.aul = getelementptr inbounds nuw i8, ptr %53, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aul, ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 16, i1 false), !tbaa.struct !17
  %i.aum = getelementptr inbounds nuw i8, ptr %53, i64 96
  %i.aun = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), align 4, !tbaa !10
  %i.auo = fneg <2 x float> %i.aun
  %i.aup = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 580), align 4, !tbaa !10
  %i.auq = fneg <2 x float> %i.aup
  store <2 x float> %i.auo, ptr %i.aum, align 16
  %i.aur = getelementptr inbounds nuw i8, ptr %53, i64 104
  store <2 x float> %i.auq, ptr %i.aur, align 8
  %i.aus = zext nneg i32 %i.aud to i64
  %i.aut = getelementptr [16 x i8], ptr %53, i64 %i.aus ; 3 uses
  %i.auu = getelementptr i8, ptr %i.aut, i64 -192
  %i.auv = getelementptr i8, ptr %i.aut, i64 -188
  %i.auw = getelementptr i8, ptr %i.aut, i64 -184
  %i.aux = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 2 uses
  %i.auy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !14 ; 2 uses
  %i.auz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.ava = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.avb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !10 ; 2 uses
  %i.avc = load <2 x float>, ptr %i.auw, align 8, !tbaa !10 ; 2 uses
  %i.avd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.ave = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  %i.avf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.avg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.avh = extractelement <2 x float> %i.avd, i64 0
  %i.avi = shufflevector <2 x float> %i.avb, <2 x float> %i.avd, <2 x i32> <i32 0, i32 3>
  %i.avj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !10 ; 2 uses
  %i.avk = extractelement <2 x float> %i.avj, i64 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), i64 16, i1 false), !tbaa.struct !17
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !10
  %i.avl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46
  %i.avm = insertelement <2 x float> %i.avd, float %i.ave, i64 1
  %i.avn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4
  %i.avo = shufflevector <4 x float> %i.avn, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.avp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !13
  %i.avq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !10 ; 2 uses
  %i.avr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !10 ; 2 uses
  %i.avs = shufflevector <2 x float> %i.avq, <2 x float> %i.avr, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.avt = fmul <2 x float> %i.avs, %i.avs
  %i.avu = shufflevector <2 x float> %i.avq, <2 x float> %i.avr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.avv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avu, <2 x float> %i.avu, <2 x float> %i.avt)
  %i.avw = insertelement <2 x float> %i.avo, float %i.avp, i64 1 ; 2 uses
  %i.avx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avw, <2 x float> %i.avw, <2 x float> %i.avv)
  %i.avy = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.avx)
  %i.avz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !13
  %i.awa = load <2 x float>, ptr %i.auu, align 16, !tbaa !10 ; 3 uses
  %i.awb = load float, ptr %i.auv, align 4, !tbaa !14
  %i.awc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !10 ; 2 uses
  %i.awd = shufflevector <2 x float> %i.awa, <2 x float> %i.awc, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.awe = fmul <2 x float> %i.awd, %i.awd
  %i.awf = shufflevector <2 x float> %i.awa, <2 x float> %i.awc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.awg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awf, <2 x float> %i.awf, <2 x float> %i.awe)
  %i.awh = insertelement <2 x float> %i.avc, float %i.avz, i64 1 ; 2 uses
  %i.awi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awh, <2 x float> %i.awh, <2 x float> %i.awg)
  %i.awj = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.awi) ; 2 uses
  %i.awk = extractelement <2 x float> %i.awj, i64 0
  %i.awl = fdiv float 1.000000e+00, %i.awk        ; 3 uses
  %i.awm = fmul float %i.awb, %i.awl              ; 4 uses
  %i.awn = extractelement <2 x float> %i.awa, i64 0
  %i.awo = fmul float %i.awn, %i.awl              ; 4 uses
  %i.awp = insertelement <2 x float> poison, float %i.awl, i64 0
  %i.awq = shufflevector <2 x float> %i.awp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awr = fmul <2 x float> %i.avc, %i.awq        ; 3 uses
  %i.aws = fmul float %i.auy, %i.awm
  %.sroa.02.0.vec.insert.i.i75 = insertelement <2 x float> poison, float %i.awo, i64 0
  %.sroa.02.4.vec.insert.i.i76 = insertelement <2 x float> %.sroa.02.0.vec.insert.i.i75, float %i.awm, i64 1
  %i.awt = fmul float %i.awm, %i.avf
  %i.awu = tail call float @llvm.fmuladd.f32(float %i.awo, float %i.aux, float %i.aws)
  %i.awv = extractelement <2 x float> %i.awr, i64 0 ; 2 uses
  %i.aww = tail call float @llvm.fmuladd.f32(float %i.awv, float %i.avh, float %i.awu)
  %i.awx = tail call float @llvm.fmuladd.f32(float %i.awo, float %i.avg, float %i.awt)
  %i.awy = insertelement <2 x float> poison, float %i.awx, i64 0
  %i.awz = insertelement <2 x float> %i.awy, float %i.aww, i64 1
  %i.axa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awr, <2 x float> %i.avi, <2 x float> %i.awz) ; 3 uses
  %i.axb = shufflevector <2 x float> %i.awr, <2 x float> %i.axa, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.02.4.vec.insert.i.i76, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8
  store <2 x float> %i.axb, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8
  %i.axc = fmul float %i.awm, %i.ava
  %shift240 = shufflevector <2 x float> %i.axa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop241 = fsub <2 x float> %i.axa, %shift240
  %i.axd = extractelement <2 x float> %foldExtExtBinop241, i64 0
  %i.axe = fneg float %i.axd
  %i.axf = tail call float @llvm.fmuladd.f32(float %i.awo, float %i.auz, float %i.axc)
  %i.axg = tail call noundef float @llvm.fmuladd.f32(float %i.awv, float %i.avk, float %i.axf) ; 2 uses
  %i.axh = tail call float @llvm.fabs.f32(float %i.axg)
  %i.axi = fcmp olt float %i.axh, f0x34000000
  %i.axj = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.axe, i64 0
  %i.axk = insertelement <2 x float> poison, float %i.axg, i64 0
  %i.axl = insertelement <2 x float> %i.axk, float %i.avl, i64 1
  %i.axm = fdiv <2 x float> %i.axj, %i.axl        ; 3 uses
  %i.axn = extractelement <2 x float> %i.axm, i64 0
  %.0.i45.i = select i1 %i.axi, float -1.000000e+00, float %i.axn ; 3 uses
  %i.axo = fmul float %i.auz, %.0.i45.i
  %i.axp = fmul float %i.ava, %.0.i45.i
  %i.axq = insertelement <2 x float> poison, float %.0.i45.i, i64 0
  %i.axr = shufflevector <2 x float> %i.axq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axs = fmul <2 x float> %i.avj, %i.axr
  %i.axt = fadd float %i.avg, %i.axo              ; 2 uses
  %i.axu = fadd float %i.avf, %i.axp              ; 2 uses
  %i.axv = fadd <2 x float> %i.avb, %i.axs        ; 2 uses
  %.sroa.0.0.vec.insert.i.i52.i = insertelement <2 x float> poison, float %i.axt, i64 0
  %.sroa.0.4.vec.insert.i.i53.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i52.i, float %i.axu, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i53.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 704), align 8
  store <2 x float> %i.axv, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 712), align 8
  %i.axw = fsub float %i.axt, %i.aux
  %i.axx = fsub float %i.axu, %i.auy
  %i.axy = extractelement <2 x float> %i.axm, i64 1 ; 2 uses
  %i.axz = fmul float %i.axw, %i.axy
  %i.aya = fmul float %i.axx, %i.axy
  %i.ayb = fsub <2 x float> %i.axv, %i.avm
  %i.ayc = shufflevector <2 x float> %i.axm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ayd = fmul <2 x float> %i.ayb, %i.ayc
  %.sroa.0.0.vec.insert.i.i64.i = insertelement <2 x float> poison, float %i.axz, i64 0
  %.sroa.0.4.vec.insert.i.i65.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i64.i, float %i.aya, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i65.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 668), align 4
  store <2 x float> %i.ayd, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4
  %i.aye = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.awj, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.avy, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 776), align 8
  store <2 x float> %i.aye, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 784), align 8
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aua, i64 288
  %i.ayg = load float, ptr %i.ayf, align 8, !tbaa !42
  store float %i.ayg, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 792), align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i52

_ZN8ImGuizmoL11CanActivateEv.exit.i52:            ; preds = %bb.bd, %bb.be, %bb.bc, %bb.bb, %bb.ay
  %.4 = phi i32 [ 0, %bb.ay ], [ %i.aud, %bb.bc ], [ %.mux171, %bb.bd ], [ %i.aud, %bb.bb ], [ %i.aud, %bb.be ]
  %i.ayh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.ayi = trunc nuw i8 %i.ayh to i1
  br i1 %i.ayi, label %bb.bf, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

bb.bf:                                            ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit.i52
  tail call void @_ZN5ImGui19CaptureMouseFromAppEb(i1 noundef zeroext true)
  %i.ayj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !70
  %i.ayk = add i32 %i.ayj, -12                    ; 2 uses
  %or.cond.i53 = icmp ult i32 %i.ayk, 3
  br i1 %or.cond.i53, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ayl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.aym = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 2 uses
  %i.ayn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.ayo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !12 ; 2 uses
  %i.ayp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.ayq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4, !tbaa !14 ; 2 uses
  %i.ayr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.ays = fmul float %i.ayq, %i.ayr
  %i.ayt = tail call float @llvm.fmuladd.f32(float %i.ayo, float %i.ayp, float %i.ays)
  %i.ayu = tail call noundef float @llvm.fmuladd.f32(float %i.aym, float %i.ayn, float %i.ayt) ; 2 uses
  %i.ayv = tail call float @llvm.fabs.f32(float %i.ayu)
  %i.ayw = fcmp olt float %i.ayv, f0x34000000
  %i.ayx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.ayy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.ayz = fmul float %i.ayq, %i.ayy
  %i.aza = tail call float @llvm.fmuladd.f32(float %i.ayo, float %i.ayx, float %i.ayz)
  %i.azb = tail call noundef float @llvm.fmuladd.f32(float %i.aym, float %i.ayl, float %i.aza)
  %i.azc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 700), align 4, !tbaa !15
  %i.azd = fsub float %i.azb, %i.azc
  %i.aze = fneg float %i.azd
  %i.azf = fdiv float %i.aze, %i.ayu
  %.0.i75.i = select i1 %i.ayw, float -1.000000e+00, float %i.azf ; 3 uses
  %i.azg = fmul float %i.ayn, %.0.i75.i
  %i.azh = fadd float %i.ayl, %i.azg
  %i.azi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.azj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 676), align 4, !tbaa !13
  %i.azk = fmul float %i.azi, %i.azj
  %i.azl = fsub float %i.azh, %i.azk
  %i.azm = fmul float %i.ayr, %.0.i75.i
  %i.azn = fadd float %i.ayy, %i.azm
  %i.azo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 672), align 8, !tbaa !14
  %i.azp = fmul float %i.azi, %i.azo
  %i.azq = fsub float %i.azn, %i.azp
  %i.azr = fmul float %i.ayp, %.0.i75.i
  %i.azs = fadd float %i.ayx, %i.azr
  %i.azt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 668), align 4, !tbaa !12
  %i.azu = fmul float %i.azi, %i.azt
  %i.azv = fsub float %i.azs, %i.azu
  %i.azw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !12 ; 2 uses
  %i.azx = fsub float %i.azv, %i.azw
  %i.azy = zext nneg i32 %i.ayk to i64            ; 2 uses
  %i.azz = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i64 %i.azy ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 4
  %i.bab = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 704), align 8, !tbaa !12
  %i.bac = fsub float %i.bab, %i.azw              ; 2 uses
  %i.bad = load float, ptr %i.azz, align 4, !tbaa !12 ; 3 uses
  %i.bae = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %i.baf = extractelement <2 x float> %i.bae, i64 1
  %i.bag = fsub float %i.azl, %i.baf
  %i.bah = extractelement <2 x float> %i.bae, i64 0
  %i.bai = fsub float %i.azq, %i.bah
  %i.baj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 708), align 4, !tbaa !10
  %i.bak = fsub <2 x float> %i.baj, %i.bae        ; 3 uses
  %i.bal = load <2 x float>, ptr %i.baa, align 8, !tbaa !10 ; 5 uses
  %i.bam = extractelement <2 x float> %i.bal, i64 0
  %i.ban = fmul float %i.bam, %i.bai
  %i.bao = tail call float @llvm.fmuladd.f32(float %i.bad, float %i.azx, float %i.ban)
  %i.bap = extractelement <2 x float> %i.bal, i64 1
  %i.baq = tail call noundef float @llvm.fmuladd.f32(float %i.bap, float %i.bag, float %i.bao) ; 2 uses
  %i.bar = fmul float %i.bad, %i.baq
  %i.bas = insertelement <2 x float> poison, float %i.baq, i64 0
  %i.bat = shufflevector <2 x float> %i.bas, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bau = fmul <2 x float> %i.bal, %i.bat
  %i.bav = fadd float %i.bac, %i.bar
  %i.baw = fadd <2 x float> %i.bak, %i.bau        ; 2 uses
  %i.bax = shufflevector <2 x float> %i.bal, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bay = shufflevector <2 x float> %i.baw, <2 x float> %i.bak, <2 x i32> <i32 0, i32 2>
  %i.baz = fmul <2 x float> %i.bax, %i.bay
  %i.bba = insertelement <2 x float> poison, float %i.bad, i64 0
  %i.bbb = shufflevector <2 x float> %i.bba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bbc = insertelement <2 x float> poison, float %i.bav, i64 0
  %i.bbd = insertelement <2 x float> %i.bbc, float %i.bac, i64 1
  %i.bbe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bbb, <2 x float> %i.bbd, <2 x float> %i.baz)
  %i.bbf = shufflevector <2 x float> %i.bal, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bbg = shufflevector <2 x float> %i.baw, <2 x float> %i.bak, <2 x i32> <i32 1, i32 3>
  %i.bbh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bbf, <2 x float> %i.bbg, <2 x float> %i.bbe) ; 2 uses
  %i.bbi = extractelement <2 x float> %i.bbh, i64 0
  %i.bbj = extractelement <2 x float> %i.bbh, i64 1
  %i.bbk = fdiv float %i.bbi, %i.bbj              ; 2 uses
  %i.bbl = fcmp ogt float %i.bbk, 1.000000e-03
  %i.bbm = select i1 %i.bbl, float %i.bbk, float 1.000000e-03
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), i64 %i.azy
  store float %i.bbm, ptr %i.bbn, align 4, !tbaa !10
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.aua, i64 288
  %i.bbp = load float, ptr %i.bbo, align 8, !tbaa !42
  %i.bbq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 792), align 8, !tbaa !73
  %i.bbr = fsub float %i.bbp, %i.bbq
  %i.bbs = fmul float %i.bbr, f0x3C23D70A
  %i.bbt = fadd float %i.bbs, 1.000000e+00        ; 2 uses
  %i.bbu = fcmp ogt float %i.bbt, 1.000000e-03
  %i.bbv = select i1 %i.bbu, float %i.bbt, float 1.000000e-03
  %i.bbw = insertelement <4 x float> poison, float %i.bbv, i64 0
  %i.bbx = shufflevector <4 x float> %i.bbw, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.bbx, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !10
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.not43.i = icmp eq ptr %6, null
  br i1 %.not43.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  %i.bby = load float, ptr %6, align 4, !tbaa !10 ; 3 uses
  store float %i.bby, ptr %i.n, align 4, !tbaa !10
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store float %i.bby, ptr %i.bbz, align 4, !tbaa !10
  %i.bca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store float %i.bby, ptr %i.bca, align 4, !tbaa !10
  call fastcc void @_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.bcb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !10 ; 2 uses
  %i.bcc = fcmp ogt <2 x float> %i.bcb, splat (float 1.000000e-03)
  %i.bcd = select <2 x i1> %i.bcc, <2 x float> %i.bcb, <2 x float> splat (float 1.000000e-03) ; 3 uses
  store <2 x float> %i.bcd, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !10
  %i.bce = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !10 ; 2 uses
  %i.bcf = fcmp ogt float %i.bce, 1.000000e-03
  %i.bcg = select i1 %i.bcf, float %i.bce, float 1.000000e-03 ; 2 uses
  store float %i.bcg, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !10
  %i.bch = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 776), align 8, !tbaa !12
  %i.bci = extractelement <2 x float> %i.bcd, i64 0
  %i.bcj = fmul float %i.bci, %i.bch
  %i.bck = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 780), align 4, !tbaa !10
  %i.bcl = shufflevector <2 x float> %i.bcd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bcm = insertelement <2 x float> %i.bcl, float %i.bcg, i64 1
  %i.bcn = fmul <2 x float> %i.bcm, %i.bck        ; 2 uses
  %i.bco = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 3 uses
  %i.bcp = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 2 uses
  %i.bcq = fmul <4 x float> %i.bcp, zeroinitializer ; 2 uses
  %i.bcr = insertelement <4 x float> poison, float %i.bcj, i64 0
  %i.bcs = shufflevector <4 x float> %i.bcr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcs, <4 x float> %i.bco, <4 x float> %i.bcq)
  %i.bcu = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 4 uses
  %i.bcv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcu, <4 x float> zeroinitializer, <4 x float> %i.bct)
  %i.bcw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 4 uses
  %i.bcx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcw, <4 x float> zeroinitializer, <4 x float> %i.bcv)
  store <4 x float> %i.bcx, ptr %4, align 4
  %.sroa.7.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bcy = shufflevector <2 x float> %i.bcn, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bcz = fmul <4 x float> %i.bcy, %i.bcp
  %i.bda = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bco, <4 x float> zeroinitializer, <4 x float> %i.bcz)
  %i.bdb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcu, <4 x float> zeroinitializer, <4 x float> %i.bda)
  %i.bdc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcw, <4 x float> zeroinitializer, <4 x float> %i.bdb)
  store <4 x float> %i.bdc, ptr %.sroa.7.0..sroa_idx.i57, align 4
  %.sroa.11.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bdd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bco, <4 x float> zeroinitializer, <4 x float> %i.bcq) ; 2 uses
  %i.bde = shufflevector <2 x float> %i.bcn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bdf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bde, <4 x float> %i.bcu, <4 x float> %i.bdd)
  %i.bdg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcw, <4 x float> zeroinitializer, <4 x float> %i.bdf)
  store <4 x float> %i.bdg, ptr %.sroa.11.0..sroa_idx.i61, align 4
  %.sroa.15.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bdh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bcu, <4 x float> zeroinitializer, <4 x float> %i.bdd)
  %i.bdi = fadd <4 x float> %i.bcw, %i.bdh
  store <4 x float> %i.bdi, ptr %.sroa.15.0..sroa_idx.i65, align 4
  br i1 %.not25, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.bdj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), align 8, !tbaa !12
  %i.bdk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 764), align 4, !tbaa !14
  %i.bdl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 768), align 8, !tbaa !13
  store float %i.bdj, ptr %5, align 4
  %.sroa.9136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9136.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float %i.bdk, ptr %.sroa.27.0..sroa_idx.i, align 4
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.33.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store float %i.bdl, ptr %.sroa.51.0..sroa_idx.i, align 4
  %.sroa.57.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %5, i64 44
  %.sroa.75.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.57.0..sroa_idx.i69, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.75.0..sroa_idx.i, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.aua, i64 296
  %i.bdn = load i8, ptr %i.bdm, align 8, !tbaa !47, !range !33, !noundef !34
  %i.bdo = trunc nuw i8 %i.bdn to i1
  br i1 %i.bdo, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.bdp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 960), align 8, !tbaa !70
  br label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit

_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit:    ; preds = %bb.bo, %_ZN8ImGuizmoL11CanActivateEv.exit.i52, %_ZN8ImGuizmoL11CanActivateEv.exit.i31, %bb.ar, %bb.ae, %_ZN8ImGuizmoL11CanActivateEv.exit.i, %bb.g, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.amh, %_ZN8ImGuizmoL11CanActivateEv.exit.i31 ], [ %.1, %_ZN8ImGuizmoL11CanActivateEv.exit.i ], [ %i.aer, %bb.ae ], [ %i.amg, %bb.ar ], [ %i.bdp, %bb.bo ], [ %.4, %_ZN8ImGuizmoL11CanActivateEv.exit.i52 ] ; 18 uses
  %i.bdq = icmp eq ptr %7, null
  %i.bdr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !range !33
  %i.bds = trunc nuw i8 %i.bdr to i1
  %or.cond = select i1 %i.bdq, i1 true, i1 %i.bds
  br i1 %or.cond, label %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, label %bb.bp

_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge: ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33
  br label %bb.do

bb.bp:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit
  %i.bdt = call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 2 uses
  %i.bdu = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.bdv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !74 ; 2 uses
  store i32 %i.bdv, ptr %i.k, align 4, !tbaa !52
  %i.bdw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.bdx = trunc nuw i8 %i.bdw to i1
  br i1 %i.bdx, label %.thread.thread.i, label %.preheader680.i

.preheader680.i:                                  ; preds = %bb.bp
  %i.bdy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 3 uses
  %i.bdz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 3 uses
  %i.bea = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 3 uses
  %i.beb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4, !tbaa !16 ; 3 uses
  %i.bec = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !16 ; 3 uses
  %i.bed = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !16 ; 3 uses
  %i.bee = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !12
  %i.bef = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !12
  %i.beg = fsub float %i.bee, %i.bef              ; 2 uses
  %i.beh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 544), align 8, !tbaa !14
  %i.bei = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 320), align 8, !tbaa !14
  %i.bej = fsub float %i.beh, %i.bei              ; 2 uses
  %i.bek = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 548), align 4, !tbaa !13
  %i.bel = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 324), align 4, !tbaa !13
  %i.bem = fsub float %i.bek, %i.bel              ; 2 uses
  %.sroa.0624.0.copyload634.i = load <2 x float>, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16 ; 2 uses
  %i.ben = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 8), align 8
  %i.beo = shufflevector <2 x float> %.sroa.0624.0.copyload634.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bep = fmul <2 x float> %i.bec, %i.beo
  %i.beq = shufflevector <2 x float> %.sroa.0624.0.copyload634.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ber = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.beq, <2 x float> %i.beb, <2 x float> %i.bep)
  %i.bes = shufflevector <4 x float> %i.ben, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bet = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bes, <2 x float> %i.bed, <2 x float> %i.ber) ; 2 uses
  %i.beu = fmul <2 x float> %i.bdz, %i.beo
  %i.bev = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.beq, <2 x float> %i.bdy, <2 x float> %i.beu)
  %i.bew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bes, <2 x float> %i.bea, <2 x float> %i.bev) ; 3 uses
  %i.bex = insertelement <2 x float> %i.bew, float %i.bej, i64 0 ; 2 uses
  %i.bey = fmul <2 x float> %i.bex, %i.bex
  %i.bez = shufflevector <2 x float> %i.bew, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bfa = insertelement <2 x float> %i.bez, float %i.beg, i64 0 ; 2 uses
  %i.bfb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfa, <2 x float> %i.bfa, <2 x float> %i.bey)
  %i.bfc = shufflevector <2 x float> %i.bet, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bfd = insertelement <2 x float> %i.bfc, float %i.bem, i64 0 ; 2 uses
  %i.bfe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfd, <2 x float> %i.bfd, <2 x float> %i.bfb)
  %i.bff = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bfe)
  %i.bfg = fdiv <2 x float> splat (float 1.000000e+00), %i.bff ; 2 uses
  %i.bfh = extractelement <2 x float> %i.bfg, i64 0 ; 3 uses
  %i.bfi = fmul float %i.beg, %i.bfh              ; 3 uses
  %i.bfj = fmul float %i.bej, %i.bfh              ; 3 uses
  %i.bfk = fmul float %i.bem, %i.bfh              ; 3 uses
  %i.bfl = shufflevector <2 x float> %i.bfg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bfm = fmul <2 x float> %i.bew, %i.bfl        ; 4 uses
  %i.bfn = fmul <2 x float> %i.bet, %i.bfl        ; 3 uses
  %i.bfo = extractelement <2 x float> %i.bfm, i64 1
  %i.bfp = fmul float %i.bfj, %i.bfo
  %i.bfq = extractelement <2 x float> %i.bfm, i64 0
  %i.bfr = call float @llvm.fmuladd.f32(float %i.bfi, float %i.bfq, float %i.bfp)
  %i.bfs = extractelement <2 x float> %i.bfn, i64 0
  %i.bft = call noundef float @llvm.fmuladd.f32(float %i.bfk, float %i.bfs, float %i.bfr) ; 2 uses
  %i.bfu = call float @llvm.fabs.f32(float %i.bft) ; 2 uses
  %i.bfv = fcmp uno float %i.bft, 0.000000e+00
  br i1 %i.bfv, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.preheader680.i
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.preheader680.i
  %.sroa.0658.1.i = phi <2 x float> [ zeroinitializer, %.preheader680.i ], [ %i.bfm, %bb.bq ]
  %.sroa.10664.1.i = phi <2 x float> [ zeroinitializer, %.preheader680.i ], [ %i.bfn, %bb.bq ]
  %.1165.i = phi float [ 0.000000e+00, %.preheader680.i ], [ %i.bfu, %bb.bq ] ; 2 uses
  %.1162.i = phi i32 [ %i.bdv, %.preheader680.i ], [ 0, %bb.bq ]
  %i.bfw = fcmp ult float %i.bfu, 1.000000e-01
  br i1 %i.bfw, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.k, align 4, !tbaa !52
  store <2 x float> %i.bfm, ptr %42, align 16
  %.sroa.16642.0..sroa_idx643.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store <2 x float> %i.bfn, ptr %.sroa.16642.0..sroa_idx643.i, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.1159.i = phi i32 [ 1, %bb.bs ], [ 0, %bb.br ] ; 3 uses
  %.sroa.0624.0.copyload634.1.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16 ; 2 uses
  %i.bfx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), align 8
  %i.bfy = shufflevector <2 x float> %.sroa.0624.0.copyload634.1.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bfz = fmul <2 x float> %i.bec, %i.bfy
  %i.bga = shufflevector <2 x float> %.sroa.0624.0.copyload634.1.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bga, <2 x float> %i.beb, <2 x float> %i.bfz)
  %i.bgc = shufflevector <4 x float> %i.bfx, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgc, <2 x float> %i.bed, <2 x float> %i.bgb) ; 2 uses
  %i.bge = extractelement <2 x float> %i.bgd, i64 0 ; 2 uses
  %i.bgf = fmul <2 x float> %i.bdz, %i.bfy
  %i.bgg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bga, <2 x float> %i.bdy, <2 x float> %i.bgf)
  %i.bgh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bgc, <2 x float> %i.bea, <2 x float> %i.bgg) ; 4 uses
  %foldExtExtBinop243 = fmul <2 x float> %i.bgh, %i.bgh
  %i.bgi = extractelement <2 x float> %foldExtExtBinop243, i64 1
  %i.bgj = extractelement <2 x float> %i.bgh, i64 0 ; 2 uses
  %i.bgk = call float @llvm.fmuladd.f32(float %i.bgj, float %i.bgj, float %i.bgi)
  %i.bgl = call float @llvm.fmuladd.f32(float %i.bge, float %i.bge, float %i.bgk)
  %sqrt.i.i.1.i83 = call noundef float @llvm.sqrt.f32(float %i.bgl)
  %i.bgm = fdiv float 1.000000e+00, %sqrt.i.i.1.i83
  %i.bgn = insertelement <2 x float> poison, float %i.bgm, i64 0
  %i.bgo = shufflevector <2 x float> %i.bgn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgp = fmul <2 x float> %i.bgh, %i.bgo        ; 4 uses
  %i.bgq = fmul <2 x float> %i.bgd, %i.bgo        ; 3 uses
  %i.bgr = extractelement <2 x float> %i.bgp, i64 1
  %i.bgs = fmul float %i.bfj, %i.bgr
  %i.bgt = extractelement <2 x float> %i.bgp, i64 0
  %i.bgu = call float @llvm.fmuladd.f32(float %i.bfi, float %i.bgt, float %i.bgs)
  %i.bgv = extractelement <2 x float> %i.bgq, i64 0
  %i.bgw = call noundef float @llvm.fmuladd.f32(float %i.bfk, float %i.bgv, float %i.bgu)
  %i.bgx = call float @llvm.fabs.f32(float %i.bgw) ; 3 uses
  %i.bgy = fcmp ult float %i.bgx, %.1165.i
  br i1 %i.bgy, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sroa.0658.1.1.i = phi <2 x float> [ %.sroa.0658.1.i, %bb.bt ], [ %i.bgp, %bb.bu ]
  %.sroa.10664.1.1.i = phi <2 x float> [ %.sroa.10664.1.i, %bb.bt ], [ %i.bgq, %bb.bu ]
  %.1165.1.i = phi float [ %.1165.i, %bb.bt ], [ %i.bgx, %bb.bu ]
  %.1162.1.i = phi i32 [ %.1162.i, %bb.bt ], [ 1, %bb.bu ]
  %i.bgz = fcmp ult float %i.bgx, 1.000000e-01
  br i1 %i.bgz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bha = zext nneg i32 %.1159.i to i64          ; 2 uses
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bha
  store i32 1, ptr %i.bhb, align 4, !tbaa !52
  %i.bhc = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %i.bha ; 2 uses
  store <2 x float> %i.bgp, ptr %i.bhc, align 16
  %.sroa.16642.0..sroa_idx643.1.i = getelementptr inbounds nuw i8, ptr %i.bhc, i64 8
  store <2 x float> %i.bgq, ptr %.sroa.16642.0..sroa_idx643.1.i, align 8
  %i.bhd = add nuw nsw i32 %.1159.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.1159.1.i = phi i32 [ %i.bhd, %bb.bw ], [ %.1159.i, %bb.bv ] ; 4 uses
  %.sroa.0624.0.copyload634.2.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 32), align 16 ; 2 uses
  %.sroa.16642.8.vec.extract.2.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8
  %i.bhe = shufflevector <2 x float> %.sroa.0624.0.copyload634.2.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bhf = fmul <2 x float> %i.bec, %i.bhe
  %i.bhg = shufflevector <2 x float> %.sroa.0624.0.copyload634.2.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhg, <2 x float> %i.beb, <2 x float> %i.bhf)
  %i.bhi = insertelement <2 x float> poison, float %.sroa.16642.8.vec.extract.2.i, i64 0
  %i.bhj = shufflevector <2 x float> %i.bhi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhj, <2 x float> %i.bed, <2 x float> %i.bhh) ; 2 uses
  %i.bhl = extractelement <2 x float> %i.bhk, i64 0 ; 2 uses
  %i.bhm = fmul <2 x float> %i.bdz, %i.bhe
  %i.bhn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhg, <2 x float> %i.bdy, <2 x float> %i.bhm)
  %i.bho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhj, <2 x float> %i.bea, <2 x float> %i.bhn) ; 4 uses
  %foldExtExtBinop245 = fmul <2 x float> %i.bho, %i.bho
  %i.bhp = extractelement <2 x float> %foldExtExtBinop245, i64 1
  %i.bhq = extractelement <2 x float> %i.bho, i64 0 ; 2 uses
  %i.bhr = call float @llvm.fmuladd.f32(float %i.bhq, float %i.bhq, float %i.bhp)
  %i.bhs = call float @llvm.fmuladd.f32(float %i.bhl, float %i.bhl, float %i.bhr)
  %sqrt.i.i.2.i84 = call noundef float @llvm.sqrt.f32(float %i.bhs)
  %i.bht = fdiv float 1.000000e+00, %sqrt.i.i.2.i84
  %i.bhu = insertelement <2 x float> poison, float %i.bht, i64 0
  %i.bhv = shufflevector <2 x float> %i.bhu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bhw = fmul <2 x float> %i.bho, %i.bhv        ; 4 uses
  %i.bhx = fmul <2 x float> %i.bhk, %i.bhv        ; 3 uses
  %i.bhy = extractelement <2 x float> %i.bhw, i64 1
  %i.bhz = fmul float %i.bfj, %i.bhy
  %i.bia = extractelement <2 x float> %i.bhw, i64 0
  %i.bib = call float @llvm.fmuladd.f32(float %i.bfi, float %i.bia, float %i.bhz)
  %i.bic = extractelement <2 x float> %i.bhx, i64 0
  %i.bid = call noundef float @llvm.fmuladd.f32(float %i.bfk, float %i.bic, float %i.bib)
  %i.bie = call float @llvm.fabs.f32(float %i.bid) ; 2 uses
  %i.bif = fcmp ult float %i.bie, %.1165.1.i      ; 3 uses
  %.sroa.0658.1.2.i = select i1 %i.bif, <2 x float> %.sroa.0658.1.1.i, <2 x float> %i.bhw
  %.sroa.10664.1.2.i = select i1 %i.bif, <2 x float> %.sroa.10664.1.1.i, <2 x float> %i.bhx
  %.1162.2.i = select i1 %i.bif, i32 %.1162.1.i, i32 2 ; 4 uses
  %i.big = fcmp ult float %i.bie, 1.000000e-01
  br i1 %i.big, label %bb.by, label %.thread746.i

.thread746.i:                                     ; preds = %bb.bx
  %i.bih = zext nneg i32 %.1159.1.i to i64        ; 2 uses
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bih
  store i32 2, ptr %i.bii, align 4, !tbaa !52
  %i.bij = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %i.bih ; 2 uses
  store <2 x float> %i.bhw, ptr %i.bij, align 16
  %.sroa.16642.0..sroa_idx643.2.i = getelementptr inbounds nuw i8, ptr %i.bij, i64 8
  store <2 x float> %i.bhx, ptr %.sroa.16642.0..sroa_idx643.2.i, align 8
  %i.bik = add nuw nsw i32 %.1159.1.i, 1
  br label %.thread.i

bb.by:                                            ; preds = %bb.bx
  %i.bil = icmp eq i32 %.1159.1.i, 0
  br i1 %i.bil, label %bb.bz, label %.thread.i

bb.bz:                                            ; preds = %bb.by
  store i32 %.1162.2.i, ptr %i.k, align 4, !tbaa !52
  store <2 x float> %.sroa.0658.1.2.i, ptr %42, align 16
  %.sroa.10664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %42, i64 8
  store <2 x float> %.sroa.10664.1.2.i, ptr %.sroa.10664.0..sroa_idx.i, align 8
  br label %.thread.thread.i

.thread.i:                                        ; preds = %bb.by, %.thread746.i
  %.1159.2748.i = phi i32 [ %i.bik, %.thread746.i ], [ %.1159.1.i, %bb.by ] ; 3 uses
  %.pre.i85 = load i32, ptr %i.k, align 4, !tbaa !52 ; 3 uses
  %.not182.i = icmp eq i32 %.1162.2.i, %.pre.i85
  br i1 %.not182.i, label %.thread.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.thread.i
  %wide.trip.count.i = zext nneg i32 %.1159.2748.i to i64
  br label %.preheader.i

bb.ca:                                            ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge712.i, label %.preheader.i, !llvm.loop !59

._crit_edge712.i:                                 ; preds = %bb.ca
  br label %split.i, !llvm.loop !59

.preheader.i:                                     ; preds = %bb.ca, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.ca ] ; 3 uses
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.bin = load i32, ptr %i.bim, align 4, !tbaa !52
  %i.bio = icmp eq i32 %i.bin, %.1162.2.i
  br i1 %i.bio, label %split.i, label %bb.ca

split.i:                                          ; preds = %.preheader.i, %._crit_edge712.i
  %i.bip = phi i32 [ %.pre.i85, %._crit_edge712.i ], [ %.1162.2.i, %.preheader.i ]
  %.0171.i = phi i64 [ 0, %._crit_edge712.i ], [ %indvars.iv.i, %.preheader.i ] ; 2 uses
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.0171.i
  store i32 %i.bip, ptr %i.k, align 4, !tbaa !52
  store i32 %.pre.i85, ptr %i.biq, align 4, !tbaa !52
  %.sroa.0.0.copyload = load <4 x float>, ptr %42, align 16
  %i.bir = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %.0171.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %42, ptr noundef nonnull align 16 dereferenceable(16) %i.bir, i64 16, i1 false), !tbaa.struct !17
  store <4 x float> %.sroa.0.0.copyload, ptr %i.bir, align 16
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %split.i, %.thread.i, %bb.bz, %bb.bp
  %.3.i = phi i32 [ 1, %bb.bz ], [ %.1159.2748.i, %split.i ], [ %.1159.2748.i, %.thread.i ], [ 1, %bb.bp ]
  %i.bis = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bit = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.biu = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.biv = getelementptr inbounds nuw i8, ptr %44, i64 4
  %i.biw = getelementptr inbounds nuw i8, ptr %44, i64 12
  %i.bix = getelementptr inbounds nuw i8, ptr %44, i64 28
  %i.biy = getelementptr inbounds nuw i8, ptr %44, i64 44
  %i.biz = getelementptr inbounds nuw i8, ptr %44, i64 60
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bdt, i64 288
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.bjc = getelementptr inbounds nuw i8, ptr %50, i64 4 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %50, i64 20
  %i.bje = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %50, i64 44 ; 2 uses
  %i.bjh = getelementptr inbounds nuw i8, ptr %50, i64 60 ; 2 uses
  %.not183.i = icmp eq ptr %8, null               ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.bjj = getelementptr inbounds nuw i8, ptr %50, i64 32
  %i.bjk = getelementptr inbounds nuw i8, ptr %50, i64 48
  %i.bjl = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.bjm = getelementptr inbounds nuw i8, ptr %50, i64 56
  %i.bjn = getelementptr inbounds nuw i8, ptr %50, i64 12
  %i.bjo = getelementptr inbounds nuw i8, ptr %50, i64 28
  %.sroa.7450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.11.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.15.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bjp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bdt, i64 296
  %wide.trip.count710.i = zext nneg i32 %.3.i to i64 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %43, i64 12
  %i.bjs = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 3 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %43, i64 28
  %i.bju = getelementptr inbounds nuw i8, ptr %43, i64 32 ; 3 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %43, i64 44
  %i.bjw = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 3 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %43, i64 60
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.thread.thread.i
  %indvars.iv707.i = phi i64 [ 0, %.thread.thread.i ], [ %indvars.iv707.i.be, %.backedge.backedge ] ; 4 uses
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv707.i
  %i.bjz = load i32, ptr %i.bjy, align 4, !tbaa !52 ; 5 uses
  %i.bka = getelementptr inbounds nuw [16 x i8], ptr %42, i64 %indvars.iv707.i ; 2 uses
  %.sroa.0658.0.copyload661.i = load <2 x float>, ptr %i.bka, align 16 ; 4 uses
  %.sroa.10664.0..sroa_idx665.i = getelementptr inbounds nuw i8, ptr %i.bka, i64 8
  %.sroa.10664.0.copyload666.i = load <2 x float>, ptr %.sroa.10664.0..sroa_idx665.i, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  %i.bkb = add nsw i32 %i.bjz, 1
  %i.bkc = srem i32 %i.bkb, 3                     ; 3 uses
  %i.bkd = add nsw i32 %i.bjz, 2
  %i.bke = srem i32 %i.bkd, 3                     ; 3 uses
  %i.bkf = sext i32 %i.bjz to i64                 ; 4 uses
  %i.bkg = sext i32 %i.bkc to i64                 ; 7 uses
  %i.bkh = sext i32 %i.bke to i64                 ; 7 uses
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bkf
  store float 0.000000e+00, ptr %i.bki, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bjr, align 4, !tbaa !10
  %i.bkj = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bkg ; 2 uses
  %i.bkk = load float, ptr %i.bkj, align 4, !tbaa !10 ; 2 uses
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bkg
  store float %i.bkk, ptr %i.bkl, align 4, !tbaa !10
  %i.bkm = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bkh ; 2 uses
  %i.bkn = load float, ptr %i.bkm, align 4, !tbaa !10 ; 2 uses
  %i.bko = getelementptr inbounds nuw [4 x i8], ptr %43, i64 %i.bkh
  store float %i.bkn, ptr %i.bko, align 4, !tbaa !10
  %i.bkp = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.bkf
  store float 0.000000e+00, ptr %i.bkp, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bjt, align 4, !tbaa !10
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.bkg
  store float %i.bkk, ptr %i.bkq, align 4, !tbaa !10
  %i.bkr = getelementptr i8, ptr %i.bkm, i64 12
  %i.bks = load float, ptr %i.bkr, align 4, !tbaa !10 ; 2 uses
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %i.bkh
  store float %i.bks, ptr %i.bkt, align 4, !tbaa !10
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %i.bkf
  store float 0.000000e+00, ptr %i.bku, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bjv, align 4, !tbaa !10
  %i.bkv = getelementptr i8, ptr %i.bkj, i64 12
  %i.bkw = load float, ptr %i.bkv, align 4, !tbaa !10 ; 2 uses
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %i.bkg
  store float %i.bkw, ptr %i.bkx, align 4, !tbaa !10
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %i.bkh
  store float %i.bks, ptr %i.bky, align 4, !tbaa !10
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.bkf
  store float 0.000000e+00, ptr %i.bkz, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bjx, align 4, !tbaa !10
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.bkg
  store float %i.bkw, ptr %i.bla, align 4, !tbaa !10
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.bkh
  store float %i.bkn, ptr %i.blb, align 4, !tbaa !10
  %i.blc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.bld = trunc nuw i8 %i.blc to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %44)
  %i.ble = select i1 %i.bld, i32 -5592406, i32 -2136298838 ; 3 uses
  %.sroa.0658.0.vec.extract.i = extractelement <2 x float> %.sroa.0658.0.copyload661.i, i64 0 ; 2 uses
  %.sroa.10664.8.vec.extract.i = extractelement <2 x float> %.sroa.10664.0.copyload666.i, i64 0 ; 3 uses
  %.sroa.10664.12.vec.extract.i = extractelement <2 x float> %.sroa.10664.0.copyload666.i, i64 1
  %foldExtExtBinop247 = fmul <2 x float> %.sroa.0658.0.copyload661.i, %.sroa.0658.0.copyload661.i
  %i.blf = extractelement <2 x float> %foldExtExtBinop247, i64 1
  %i.blg = call float @llvm.fmuladd.f32(float %.sroa.0658.0.vec.extract.i, float %.sroa.0658.0.vec.extract.i, float %i.blf)
  %i.blh = call float @llvm.fmuladd.f32(float %.sroa.10664.8.vec.extract.i, float %.sroa.10664.8.vec.extract.i, float %i.blg)
  %sqrt.i.i.i.i.i98 = call float @llvm.sqrt.f32(float %i.blh)
  %i.bli = fdiv float 1.000000e+00, %sqrt.i.i.i.i.i98 ; 3 uses
  %i.blj = insertelement <2 x float> poison, float %i.bli, i64 0
  %i.blk = shufflevector <2 x float> %i.blj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bll = fmul <2 x float> %.sroa.0658.0.copyload661.i, %i.blk ; 4 uses
  %i.blm = fmul float %.sroa.10664.8.vec.extract.i, %i.bli ; 3 uses
  %i.bln = fmul float %.sroa.10664.12.vec.extract.i, %i.bli ; 2 uses
  %i.blo = insertelement <2 x float> poison, float %i.blm, i64 0 ; 2 uses
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bkg
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bkh
  %.pre715.i = load float, ptr %44, align 4, !tbaa !16
  %i.blr = extractelement <2 x float> %i.bll, i64 0 ; 2 uses
  %i.bls = extractelement <2 x float> %i.bll, i64 1 ; 2 uses
  %i.blt = load float, ptr %i.biv, align 4, !tbaa !16 ; 2 uses
  %i.blu = load float, ptr %i.biw, align 4, !tbaa !16 ; 2 uses
  %i.blv = load float, ptr %i.bix, align 4, !tbaa !16 ; 2 uses
  %i.blw = load float, ptr %i.biy, align 4, !tbaa !16 ; 2 uses
  %i.blx = load float, ptr %i.biz, align 4, !tbaa !16 ; 2 uses
  %i.bly = load <2 x float>, ptr %i.bis, align 4, !tbaa !16 ; 3 uses
  %i.blz = shufflevector <2 x float> %i.bly, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bma = insertelement <4 x float> poison, float %i.blt, i64 1
  %i.bmb = insertelement <2 x float> poison, float %i.blv, i64 0
  %i.bmc = shufflevector <2 x float> %i.bmb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmd = insertelement <2 x float> poison, float %i.blu, i64 0
  %i.bme = shufflevector <2 x float> %i.bmd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmf = insertelement <2 x float> poison, float %i.blw, i64 0
  %i.bmg = shufflevector <2 x float> %i.bmf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmh = insertelement <2 x float> poison, float %i.blx, i64 0
  %i.bmi = shufflevector <2 x float> %i.bmh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmj = load <2 x float>, ptr %i.bit, align 4, !tbaa !16 ; 3 uses
  %i.bmk = shufflevector <2 x float> %i.bmj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bml = load <2 x float>, ptr %i.biu, align 4, !tbaa !16 ; 3 uses
  %i.bmm = shufflevector <2 x float> %i.bml, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bmn = extractelement <2 x float> %i.bly, i64 0
  %i.bmo = extractelement <2 x float> %i.bmj, i64 0
  %i.bmp = extractelement <2 x float> %i.bml, i64 0
  %i.bmq = extractelement <2 x float> %i.bly, i64 1
  %i.bmr = extractelement <2 x float> %i.bmj, i64 1
  %i.bms = extractelement <2 x float> %i.bml, i64 1
  br label %bb.cc

bb.cb:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i
  %i.bmt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.bmu = trunc nuw i8 %i.bmt to i1
  br i1 %i.bmu, label %bb.cr, label %bb.dm

bb.cc:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i, %.backedge
  %i.bmv = phi float [ %.pre715.i, %.backedge ], [ %i.bvp, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i ] ; 9 uses
  %indvars.iv700.i = phi i64 [ 0, %.backedge ], [ %indvars.iv.next701.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  %i.bmw = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %indvars.iv700.i ; 3 uses
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bmw, i64 4
  %indvars.iv.next701.i = add nuw nsw i64 %indvars.iv700.i, 1 ; 3 uses
  %i.bmx = and i64 %indvars.iv.next701.i, 3
  %i.bmy = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bmx ; 2 uses
  %.sroa.12.0..sroa_idx.i219.i = getelementptr inbounds nuw i8, ptr %i.bmy, i64 4
  %.sroa.12.0.copyload.i.i = load float, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !10 ; 2 uses
  %i.bmz = load <3 x float>, ptr %i.bmw, align 16, !tbaa !10 ; 5 uses
  %i.bna = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.bnb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 5 uses
  %.sroa.12.0.copyload.i220.i = load float, ptr %.sroa.12.0..sroa_idx.i219.i, align 4, !tbaa !10 ; 2 uses
  %i.bnc = load <3 x float>, ptr %i.bmy, align 16, !tbaa !10 ; 5 uses
  %i.bnd = insertelement <4 x float> poison, float %.sroa.12.0.copyload.i.i, i64 0
  %i.bne = insertelement <4 x float> %i.bnd, float %.sroa.12.0.copyload.i220.i, i64 1
  %i.bnf = shufflevector <4 x float> %i.bne, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bng = fmul <4 x float> %i.blz, %i.bnf
  %i.bnh = shufflevector <3 x float> %i.bmz, <3 x float> %i.bnc, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bni = insertelement <4 x float> %i.bma, float %i.bmv, i64 0
  %i.bnj = shufflevector <4 x float> %i.bni, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bnk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bnh, <4 x float> %i.bnj, <4 x float> %i.bng)
  %i.bnl = insertelement <2 x float> poison, float %.sroa.12.0.copyload.i.i, i64 0
  %i.bnm = insertelement <2 x float> %i.bnl, float %.sroa.12.0.copyload.i220.i, i64 1
  %i.bnn = fmul <2 x float> %i.bmc, %i.bnm
  %i.bno = shufflevector <3 x float> %i.bmz, <3 x float> %i.bnc, <2 x i32> <i32 0, i32 3>
  %i.bnp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bno, <2 x float> %i.bme, <2 x float> %i.bnn)
  %i.bnq = shufflevector <3 x float> %i.bmz, <3 x float> %i.bnc, <2 x i32> <i32 2, i32 5>
  %i.bnr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bnq, <2 x float> %i.bmg, <2 x float> %i.bnp)
  %i.bns = fadd <2 x float> %i.bmi, %i.bnr
  %i.bnt = fdiv <2 x float> splat (float 5.000000e-01), %i.bns
  %i.bnu = shufflevector <3 x float> %i.bmz, <3 x float> %i.bnc, <4 x i32> <i32 2, i32 5, i32 2, i32 5>
  %i.bnv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bnu, <4 x float> %i.bmk, <4 x float> %i.bnk)
  %i.bnw = fadd <4 x float> %i.bmm, %i.bnv
  %i.bnx = shufflevector <2 x float> %i.bnt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bny = fmul <4 x float> %i.bnw, %i.bnx        ; 3 uses
  %i.bnz = shufflevector <4 x float> %i.bny, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.boa = insertelement <2 x float> %i.bnz, float 1.000000e+00, i64 1
  %i.bob = shufflevector <4 x float> %i.bny, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.boc = fadd <2 x float> %i.bob, splat (float 5.000000e-01) ; 2 uses
  %i.bod = shufflevector <2 x float> <float -5.000000e-01, float poison>, <2 x float> %i.boc, <2 x i32> <i32 0, i32 2>
  %i.boe = fsub <2 x float> %i.boa, %i.bod
  %i.bof = fmul <2 x float> %i.bna, %i.boe
  %i.bog = fadd <2 x float> %i.bnb, %i.bof        ; 5 uses
  store <2 x float> %i.bog, ptr %45, align 8
  %i.boh = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.bny, <2 x i32> <i32 5, i32 1>
  %i.boi = insertelement <2 x float> %i.boc, float -5.000000e-01, i64 0
  %i.boj = fsub <2 x float> %i.boh, %i.boi
  %i.bok = fmul <2 x float> %i.bna, %i.boj
  %i.bol = extractelement <2 x float> %i.bnb, i64 0 ; 2 uses
  %i.bom = fadd <2 x float> %i.bnb, %i.bok        ; 4 uses
  %i.bon = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 980), align 4, !tbaa !27 ; 2 uses
  %i.boo = extractelement <2 x float> %i.bog, i64 0 ; 2 uses
  %i.bop = fcmp oge float %i.boo, %i.bol
  %i.boq = fcmp ole float %i.boo, %i.bon
  %i.bor = and i1 %i.bop, %i.boq
  br i1 %i.bor, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i:    ; preds = %bb.cc
  %i.bos = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 984), align 8, !tbaa !28 ; 2 uses
  %i.bot = extractelement <2 x float> %i.bog, i64 1 ; 3 uses
  %i.bou = extractelement <2 x float> %i.bnb, i64 1 ; 2 uses
  %i.bov = fcmp oge float %i.bot, %i.bou
  %i.bow = fcmp ole float %i.bot, %i.bos
  %i.box = and i1 %i.bov, %i.bow
  %i.boy = extractelement <2 x float> %i.bom, i64 0 ; 2 uses
  %i.boz = fcmp oge float %i.boy, %i.bol
  %i.bpa = fcmp ole float %i.boy, %i.bon
  %i.bpb = and i1 %i.boz, %i.bpa
  %or.cond283 = select i1 %i.box, i1 %i.bpb, i1 false
  br i1 %or.cond283, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i: ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i
  %i.bpc = extractelement <2 x float> %i.bom, i64 1 ; 3 uses
  %i.bpd = fcmp oge float %i.bpc, %i.bou
  %i.bpe = fcmp ole float %i.bpc, %i.bos
  %i.bpf = and i1 %i.bpd, %i.bpe
  br i1 %i.bpf, label %bb.cd, label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

bb.cd:                                            ; preds = %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i
  %foldExtExtBinop249 = fsub <2 x float> %i.bog, %i.bom
  %i.bpg = extractelement <2 x float> %foldExtExtBinop249, i64 0 ; 2 uses
  %i.bph = fsub float %i.bot, %i.bpc              ; 2 uses
  %i.bpi = fmul float %i.bph, %i.bph
  %i.bpj = call noundef float @llvm.fmuladd.f32(float %i.bpg, float %i.bpg, float %i.bpi)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.bpj)
  %i.bpk = fdiv float %sqrt.i, 1.000000e+01
  %i.bpl = fptosi float %i.bpk to i32             ; 2 uses
  %i.bpm = call noundef i32 @llvm.smin.i32(i32 %i.bpl, i32 1000) ; 2 uses
  %i.bpn = sitofp i32 %i.bpm to float
  %i.bpo = fdiv float 1.000000e+00, %i.bpn        ; 3 uses
  %i.bpp = icmp sgt i32 %i.bpl, 0
  br i1 %i.bpp, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.cd
  %i.bpq = fmul nnan float %i.bpo, 5.000000e-01
  br label %bb.ce

._crit_edge.loopexit.i:                           ; preds = %bb.ce
  %i.bpr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.bps = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.bpt = load <2 x float>, ptr %45, align 8, !tbaa !10
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.cd
  %i.bpu = phi <2 x float> [ %i.bpt, %._crit_edge.loopexit.i ], [ %i.bog, %bb.cd ] ; 2 uses
  %i.bpv = phi <2 x float> [ %i.bps, %._crit_edge.loopexit.i ], [ %i.bnb, %bb.cd ]
  %i.bpw = phi <2 x float> [ %i.bpr, %._crit_edge.loopexit.i ], [ %i.bna, %bb.cd ]
  %i.bpx = fadd <3 x float> %i.bmz, %i.bnc
  %i.bpy = fmul <3 x float> %i.bpx, splat (float 5.000000e-01) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  %i.bpz = extractelement <3 x float> %i.bpy, i64 1 ; 3 uses
  %i.bqa = fmul float %i.bmn, %i.bpz
  %i.bqb = extractelement <3 x float> %i.bpy, i64 0 ; 3 uses
  %i.bqc = call float @llvm.fmuladd.f32(float %i.bqb, float %i.bmv, float %i.bqa)
  %i.bqd = extractelement <3 x float> %i.bpy, i64 2 ; 3 uses
  %i.bqe = call float @llvm.fmuladd.f32(float %i.bqd, float %i.bmo, float %i.bqc)
  %i.bqf = fadd float %i.bmp, %i.bqe
  %i.bqg = fmul float %i.bmq, %i.bpz
  %i.bqh = call float @llvm.fmuladd.f32(float %i.bqb, float %i.blt, float %i.bqg)
  %i.bqi = call float @llvm.fmuladd.f32(float %i.bqd, float %i.bmr, float %i.bqh)
  %i.bqj = fadd float %i.bms, %i.bqi
  %i.bqk = fmul float %i.blv, %i.bpz
  %i.bql = call float @llvm.fmuladd.f32(float %i.bqb, float %i.blu, float %i.bqk)
  %i.bqm = call float @llvm.fmuladd.f32(float %i.bqd, float %i.blw, float %i.bql)
  %i.bqn = fadd float %i.blx, %i.bqm
  %i.bqo = fdiv float 5.000000e-01, %i.bqn        ; 2 uses
  %i.bqp = fmul float %i.bqf, %i.bqo
  %i.bqq = fmul float %i.bqj, %i.bqo
  %i.bqr = fadd float %i.bqq, 5.000000e-01
  %i.bqs = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.bqp, i64 0
  %i.bqt = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bqr, i64 1
  %i.bqu = fsub <2 x float> %i.bqs, %i.bqt
  %i.bqv = fmul <2 x float> %i.bqu, %i.bpw
  %i.bqw = fadd <2 x float> %i.bpv, %i.bqv        ; 3 uses
  store <2 x float> %i.bqw, ptr %48, align 8
  %i.bqx = load <2 x float>, ptr %i.bja, align 8, !tbaa !10 ; 2 uses
  %i.bqy = shufflevector <2 x float> %i.bqw, <2 x float> %i.bpu, <2 x i32> <i32 0, i32 2>
  %i.bqz = shufflevector <2 x float> %i.bqx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bra = fsub <2 x float> %i.bqy, %i.bqz        ; 2 uses
  %i.brb = shufflevector <2 x float> %i.bqw, <2 x float> %i.bpu, <2 x i32> <i32 1, i32 3>
  %i.brc = shufflevector <2 x float> %i.bqx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.brd = fsub <2 x float> %i.brb, %i.brc        ; 2 uses
  %i.bre = fmul <2 x float> %i.brd, %i.brd
  %i.brf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bra, <2 x float> %i.bra, <2 x float> %i.bre)
  %i.brg = fcmp ole <2 x float> %i.brf, splat (float 6.400000e+01) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  switch i32 %2, label %bb.ci [
    i32 0, label %bb.cf
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.ce:                                            ; preds = %bb.ce, %.lr.ph.i
  %.0170689.i = phi i32 [ 0, %.lr.ph.i ], [ %i.brs, %bb.ce ] ; 2 uses
  %i.brh = uitofp nneg i32 %.0170689.i to float   ; 2 uses
  %i.bri = fmul float %i.bpo, %i.brh
  %i.brj = call float @llvm.fmuladd.f32(float %i.brh, float %i.bpo, float %i.bpq)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.brk = load <2 x float>, ptr %45, align 8, !tbaa !10 ; 3 uses
  %i.brl = fsub <2 x float> %i.bom, %i.brk        ; 2 uses
  %i.brm = insertelement <2 x float> poison, float %i.bri, i64 0
  %i.brn = shufflevector <2 x float> %i.brm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bro = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brl, <2 x float> %i.brn, <2 x float> %i.brk)
  store <2 x float> %i.bro, ptr %46, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  %i.brp = insertelement <2 x float> poison, float %i.brj, i64 0
  %i.brq = shufflevector <2 x float> %i.brp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.brr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brl, <2 x float> %i.brq, <2 x float> %i.brk)
  store <2 x float> %i.brr, ptr %47, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bdu, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %47, i32 noundef %i.ble, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  %i.brs = add nuw nsw i32 %.0170689.i, 1         ; 2 uses
  %exitcond699.not.i = icmp eq i32 %i.brs, %i.bpm
  br i1 %exitcond699.not.i, label %._crit_edge.loopexit.i, label %bb.ce, !llvm.loop !60

bb.cf:                                            ; preds = %._crit_edge.i
  %i.brt = call fastcc noundef i32 @_ZN8ImGuizmoL11GetMoveTypeEPNS_5vec_tE(ptr noundef nonnull %49)
  br label %bb.ci

bb.cg:                                            ; preds = %._crit_edge.i
  %i.bru = call fastcc noundef i32 @_ZN8ImGuizmoL13GetRotateTypeEv()
  br label %bb.ci

bb.ch:                                            ; preds = %._crit_edge.i
  %i.brv = call fastcc noundef i32 @_ZN8ImGuizmoL12GetScaleTypeEv()
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %._crit_edge.i
  %.0166.i = phi i32 [ 0, %._crit_edge.i ], [ %i.brt, %bb.cf ], [ %i.bru, %bb.cg ], [ %i.brv, %bb.ch ]
  %.not184.i = icmp eq i32 %.0166.i, 0            ; 2 uses
  %i.brw = extractelement <2 x i1> %i.brg, i64 1
  %spec.select.i106 = and i1 %i.brw, %.not184.i   ; 2 uses
  %i.brx = extractelement <2 x i1> %i.brg, i64 0
  %spec.select185.i = and i1 %i.brx, %.not184.i   ; 2 uses
  %i.bry = select i1 %spec.select.i106, i32 -1978629889, i32 %i.ble
  %i.brz = select i1 %spec.select185.i, i32 -1978629889, i32 %i.ble
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bdu, ptr noundef nonnull align 4 dereferenceable(8) %45, float noundef 8.000000e+00, i32 noundef -16777216, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bdu, ptr noundef nonnull align 4 dereferenceable(8) %45, float noundef 6.800000e+00, i32 noundef %i.bry, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bdu, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef 6.000000e+00, i32 noundef -16777216, i32 noundef 0)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.bdu, ptr noundef nonnull align 4 dereferenceable(8) %48, float noundef 4.800000e+00, i32 noundef %i.brz, i32 noundef 0)
  %i.bsa = trunc nuw nsw i64 %indvars.iv700.i to i32
  %i.bsb = xor i32 %i.bsa, 2                      ; 2 uses
  %i.bsc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.bsd = trunc nuw i8 %i.bsc to i1
  %.not.i107 = xor i1 %i.bsd, true
  %i.bse = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !range !33
  %i.bsf = trunc nuw i8 %i.bse to i1
  %or.cond.i108 = select i1 %.not.i107, i1 %i.bsf, i1 false
  %or.cond3.i = and i1 %spec.select.i106, %or.cond.i108
  br i1 %or.cond3.i, label %bb.cj, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

bb.cj:                                            ; preds = %bb.ci
  %i.bsg = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.bsg, label %bb.ck, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

bb.ck:                                            ; preds = %bb.cj
  %i.bsh = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.bsh, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.bsi = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  br i1 %i.bsi, label %_ZN8ImGuizmoL11CanActivateEv.exit.i109, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.bsj = zext nneg i32 %i.bsb to i64
  %i.bsk = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bsj ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), ptr noundef nonnull align 16 dereferenceable(16) %i.bsk, i64 16, i1 false), !tbaa.struct !17
  %i.bsl = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10 ; 3 uses
  %i.bsm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 2 uses
  %i.bsn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 2 uses
  %i.bso = shufflevector <3 x float> %i.bsl, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bsp = fmul <4 x float> %i.bso, %i.bsn
  %i.bsq = shufflevector <3 x float> %i.bsl, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bsr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bsq, <4 x float> %i.bsm, <4 x float> %i.bsp)
  %i.bss = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 2 uses
  %i.bst = shufflevector <3 x float> %i.bsl, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bsu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bst, <4 x float> %i.bss, <4 x float> %i.bsr)
  %i.bsv = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !16 ; 2 uses
  %i.bsw = fadd <4 x float> %i.bsu, %i.bsv
  store <4 x float> %i.bsw, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), ptr noundef nonnull align 16 dereferenceable(16) %i.bmw, i64 16, i1 false), !tbaa.struct !17
  %i.bsx = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10 ; 3 uses
  %i.bsy = shufflevector <3 x float> %i.bsx, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bsz = fmul <4 x float> %i.bsn, %i.bsy
  %i.bta = shufflevector <3 x float> %i.bsx, <3 x float> poison, <4 x i32> zeroinitializer
  %i.btb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bta, <4 x float> %i.bsm, <4 x float> %i.bsz)
  %i.btc = shufflevector <3 x float> %i.bsx, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.btd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.btc, <4 x float> %i.bss, <4 x float> %i.btb)
  %i.bte = fadd <4 x float> %i.bsv, %i.btd        ; 5 uses
  store <4 x float> %i.bte, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10
  %i.btf = extractelement <4 x float> %i.bte, i64 1
  %i.btg = fmul float %i.bls, %i.btf
  %i.bth = extractelement <4 x float> %i.bte, i64 0
  %i.bti = call float @llvm.fmuladd.f32(float %i.blr, float %i.bth, float %i.btg)
  %i.btj = extractelement <4 x float> %i.bte, i64 2
  %i.btk = call float @llvm.fmuladd.f32(float %i.blm, float %i.btj, float %i.bti)
  %i.btl = extractelement <4 x float> %i.bte, i64 3
  %i.btm = call noundef float @llvm.fmuladd.f32(float %i.bln, float %i.btl, float %i.btk)
  %.sroa.3.8.vec.insert.i.i110 = insertelement <2 x float> %i.blo, float %i.btm, i64 1
  store <2 x float> %i.bll, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8
  store <2 x float> %.sroa.3.8.vec.insert.i.i110, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8
  store i32 %i.bjz, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !74
  store i32 %i.bkc, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52
  store i32 %i.bke, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52
  %i.btn = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %i.bkg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i8 0, i64 16, i1 false)
  %i.bto = load float, ptr %i.btn, align 4, !tbaa !10
  store float %i.bto, ptr %i.blp, align 4, !tbaa !10
  %i.btp = getelementptr inbounds nuw [4 x i8], ptr %i.bsk, i64 %i.bkh
  %i.btq = load float, ptr %i.btp, align 4, !tbaa !10
  store float %i.btq, ptr %i.blq, align 4, !tbaa !10
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false), !tbaa.struct !69
  br label %_ZN8ImGuizmoL11CanActivateEv.exit.i109

_ZN8ImGuizmoL11CanActivateEv.exit.i109:           ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.btr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33, !noundef !34
  %i.bts = trunc nuw i8 %i.btr to i1
  %.not4.i = xor i1 %i.bts, true
  %i.btt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !range !33
  %i.btu = trunc nuw i8 %i.btt to i1
  %or.cond6.i = select i1 %.not4.i, i1 %i.btu, i1 false
  %or.cond8.i = and i1 %spec.select185.i, %or.cond6.i
  br i1 %or.cond8.i, label %bb.cn, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

bb.cn:                                            ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit.i109
  %i.btv = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false)
  br i1 %i.btv, label %bb.co, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

bb.co:                                            ; preds = %bb.cn
  %i.btw = call noundef zeroext i1 @_ZN5ImGui16IsAnyItemHoveredEv()
  br i1 %i.btw, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.btx = call noundef zeroext i1 @_ZN5ImGui15IsAnyItemActiveEv()
  br i1 %i.btx, label %_ZN8ImGuizmoL11CanActivateEv.exit262.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.bty = zext nneg i32 %i.bsb to i64
  %i.btz = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bty ; 2 uses
  %i.bua = add nuw nsw i64 %indvars.iv700.i, 3
  %i.bub = and i64 %i.bua, 3
  %i.buc = getelementptr inbounds nuw [16 x i8], ptr %43, i64 %i.bub
  %i.bud = load <3 x float>, ptr %i.btz, align 16, !tbaa !10
  %i.bue = load <3 x float>, ptr %i.buc, align 16, !tbaa !10
  %i.buf = fadd <3 x float> %i.bud, %i.bue
  %i.bug = fmul <3 x float> %i.buf, splat (float 5.000000e-01) ; 3 uses
  %i.buh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !16 ; 2 uses
  %i.bui = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !16 ; 2 uses
  %i.buj = shufflevector <3 x float> %i.bug, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.buk = fmul <4 x float> %i.buj, %i.bui
  %i.bul = shufflevector <3 x float> %i.bug, <3 x float> poison, <4 x i32> zeroinitializer
  %i.bum = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bul, <4 x float> %i.buh, <4 x float> %i.buk)
  %i.bun = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !16 ; 2 uses
  %i.buo = shufflevector <3 x float> %i.bug, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bup = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buo, <4 x float> %i.bun, <4 x float> %i.bum)
  %i.buq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 316), align 4, !tbaa !16 ; 2 uses
  %i.bur = fadd <4 x float> %i.buq, %i.bup
  store <4 x float> %i.bur, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !10
  %i.bus = shufflevector <3 x float> %i.bpy, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.but = fmul <4 x float> %i.bus, %i.bui
  %i.buu = shufflevector <3 x float> %i.bpy, <3 x float> poison, <4 x i32> zeroinitializer
  %i.buv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buu, <4 x float> %i.buh, <4 x float> %i.but)
  %i.buw = shufflevector <3 x float> %i.bpy, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bux = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.buw, <4 x float> %i.bun, <4 x float> %i.buv)
  %i.buy = fadd <4 x float> %i.buq, %i.bux        ; 5 uses
  store <4 x float> %i.buy, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !10
  %i.buz = extractelement <4 x float> %i.buy, i64 1
  %i.bva = fmul float %i.bls, %i.buz
  %i.bvb = extractelement <4 x float> %i.buy, i64 0
  %i.bvc = call float @llvm.fmuladd.f32(float %i.blr, float %i.bvb, float %i.bva)
  %i.bvd = extractelement <4 x float> %i.buy, i64 2
  %i.bve = call float @llvm.fmuladd.f32(float %i.blm, float %i.bvd, float %i.bvc)
  %i.bvf = extractelement <4 x float> %i.buy, i64 3
  %i.bvg = call noundef float @llvm.fmuladd.f32(float %i.bln, float %i.bvf, float %i.bve)
  %.sroa.3.8.vec.insert.i278.i = insertelement <2 x float> %i.blo, float %i.bvg, i64 1
  store <2 x float> %i.bll, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8
  store <2 x float> %.sroa.3.8.vec.insert.i278.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8
  store i32 %i.bjz, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 880), align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  store i32 %i.bkc, ptr %i.l, align 4, !tbaa !52
  store i32 %i.bke, ptr %i.bjb, align 4, !tbaa !52
  %i.bvh = and i64 %indvars.iv700.i, 1
  %i.bvi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bvh
  %i.bvj = load i32, ptr %i.bvi, align 4, !tbaa !52 ; 2 uses
  store i32 %i.bvj, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52
  %i.bvk = sext i32 %i.bvj to i64                 ; 2 uses
  %i.bvl = getelementptr inbounds nuw [4 x i8], ptr %i.btz, i64 %i.bvk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i8 0, i64 16, i1 false)
  %i.bvm = load float, ptr %i.bvl, align 4, !tbaa !10
  %i.bvn = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 864), i64 %i.bvk
  store float %i.bvm, ptr %i.bvn, align 4, !tbaa !10
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i64 64, i1 false), !tbaa.struct !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  %.pre714.i = load float, ptr %44, align 4, !tbaa !16
  br label %_ZN8ImGuizmoL11CanActivateEv.exit262.i

_ZN8ImGuizmoL11CanActivateEv.exit262.i:           ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %_ZN8ImGuizmoL11CanActivateEv.exit.i109
  %i.bvo = phi float [ %i.bmv, %bb.cp ], [ %i.bmv, %bb.co ], [ %i.bmv, %bb.cn ], [ %.pre714.i, %bb.cq ], [ %i.bmv, %_ZN8ImGuizmoL11CanActivateEv.exit.i109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  br label %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i

_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.thread.i: ; preds = %_ZN8ImGuizmoL11CanActivateEv.exit262.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i, %bb.cc
  %i.bvp = phi float [ %i.bvo, %_ZN8ImGuizmoL11CanActivateEv.exit262.i ], [ %i.bmv, %bb.cc ], [ %i.bmv, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit.i ], [ %i.bmv, %_ZN8ImGuizmoL15IsInContextRectE6ImVec2.exit229.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  %exitcond703.not.i = icmp eq i64 %indvars.iv.next701.i, 4
  br i1 %exitcond703.not.i, label %bb.cb, label %bb.cc, !llvm.loop !61

bb.cr:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  store float 1.000000e+00, ptr %50, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bjc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bjd, align 4, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bje, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bjf, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bjg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bjh, align 4, !tbaa !15
  %i.bvq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 848), align 8, !tbaa !12 ; 2 uses
  %i.bvr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 604), align 4, !tbaa !12 ; 2 uses
  %i.bvs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 852), align 4, !tbaa !14 ; 2 uses
  %i.bvt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 608), align 8, !tbaa !14 ; 2 uses
  %i.bvu = fmul float %i.bvs, %i.bvt
  %i.bvv = call float @llvm.fmuladd.f32(float %i.bvq, float %i.bvr, float %i.bvu)
  %i.bvw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 856), align 8, !tbaa !13 ; 2 uses
  %i.bvx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 612), align 4, !tbaa !13 ; 2 uses
  %i.bvy = call noundef float @llvm.fmuladd.f32(float %i.bvw, float %i.bvx, float %i.bvv)
  %i.bvz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 860), align 4, !tbaa !15
  %i.bwa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 620), align 4, !tbaa !12 ; 2 uses
  %i.bwb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 624), align 8, !tbaa !14 ; 2 uses
  %i.bwc = fmul float %i.bvs, %i.bwb
  %i.bwd = call float @llvm.fmuladd.f32(float %i.bvq, float %i.bwa, float %i.bwc)
  %i.bwe = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 628), align 4, !tbaa !13 ; 2 uses
  %i.bwf = call noundef float @llvm.fmuladd.f32(float %i.bvw, float %i.bwe, float %i.bwd) ; 2 uses
  %i.bwg = call float @llvm.fabs.f32(float %i.bwf)
  %i.bwh = fcmp olt float %i.bwg, f0x34000000
  %i.bwi = fsub float %i.bvy, %i.bvz
  %i.bwj = fneg float %i.bwi
  %i.bwk = fdiv float %i.bwj, %i.bwf
  %.0.i281.i = select i1 %i.bwh, float -1.000000e+00, float %i.bwk ; 3 uses
  %i.bwl = fmul float %i.bwa, %.0.i281.i
  %i.bwm = fmul float %i.bwb, %.0.i281.i
  %i.bwn = fmul float %i.bwe, %.0.i281.i
  %i.bwo = fadd float %i.bvr, %i.bwl
  %i.bwp = fadd float %i.bvt, %i.bwm
  %i.bwq = fadd float %i.bvx, %i.bwn
  %i.bwr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 816), align 8, !tbaa !12 ; 2 uses
  %i.bws = fsub float %i.bwo, %i.bwr
  %i.bwt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 820), align 4, !tbaa !14 ; 2 uses
  %i.bwu = fsub float %i.bwp, %i.bwt              ; 2 uses
  %i.bwv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 824), align 8, !tbaa !13 ; 2 uses
  %i.bww = fsub float %i.bwq, %i.bwv
  %i.bwx = call float @llvm.fabs.f32(float %i.bws) ; 2 uses
  %i.bwy = call float @llvm.fabs.f32(float %i.bww) ; 2 uses
  %i.bwz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 832), align 8, !tbaa !12
  %i.bxa = fsub float %i.bwz, %i.bwr
  %i.bxb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 836), align 4, !tbaa !14
  %i.bxc = fsub float %i.bxb, %i.bwt              ; 2 uses
  %i.bxd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 840), align 8, !tbaa !13
  %i.bxe = fsub float %i.bxd, %i.bwv
  %i.bxf = call float @llvm.fabs.f32(float %i.bxa) ; 2 uses
  %i.bxg = call float @llvm.fabs.f32(float %i.bxe) ; 2 uses
  %i.bxh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 884), align 4, !tbaa !52 ; 2 uses
  %i.bxi = icmp eq i32 %i.bxh, -1
  br i1 %i.bxi, label %bb.db, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.bxj = sext i32 %i.bxh to i64                 ; 4 uses
  %i.bxk = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.bxj ; 3 uses
  %i.bxl = load float, ptr %i.bxk, align 8, !tbaa !12
  %i.bxm = call float @llvm.fabs.f32(float %i.bxl) ; 2 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxk, i64 4
  %i.bxo = load float, ptr %i.bxn, align 4, !tbaa !14 ; 2 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxk, i64 8
  %i.bxq = load float, ptr %i.bxp, align 8, !tbaa !13
  %i.bxr = call float @llvm.fabs.f32(float %i.bxq) ; 2 uses
  %i.bxs = fmul float %i.bxc, %i.bxo
  %i.bxt = call float @llvm.fabs.f32(float %i.bxs)
  %i.bxu = call float @llvm.fmuladd.f32(float %i.bxm, float %i.bxf, float %i.bxt)
  %i.bxv = call float @llvm.fmuladd.f32(float %i.bxr, float %i.bxg, float %i.bxu) ; 2 uses
  %i.bxw = getelementptr [4 x i8], ptr %7, i64 %i.bxj ; 2 uses
  %i.bxx = getelementptr i8, ptr %i.bxw, i64 12
  %i.bxy = load float, ptr %i.bxx, align 4, !tbaa !10
  %i.bxz = load float, ptr %i.bxw, align 4, !tbaa !10
  %i.bya = fsub float %i.bxy, %i.bxz              ; 3 uses
  %i.byb = fcmp ogt float %i.bxv, f0x34000000
  br i1 %i.byb, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.byc = fmul float %i.bwu, %i.bxo
  %i.byd = call float @llvm.fabs.f32(float %i.byc)
  %i.bye = call float @llvm.fmuladd.f32(float %i.bxm, float %i.bwx, float %i.byd)
  %i.byf = call float @llvm.fmuladd.f32(float %i.bxr, float %i.bwy, float %i.bye)
  %i.byg = fadd float %i.byf, 0.000000e+00
  %i.byh = fdiv float %i.byg, %i.bxv
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.0.i = phi float [ %i.byh, %bb.ct ], [ 1.000000e+00, %bb.cs ] ; 3 uses
  br i1 %.not183.i, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.byi = fmul float %i.bya, %.0.i               ; 6 uses
  %i.byj = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bxj
  %i.byk = load float, ptr %i.byj, align 4, !tbaa !10 ; 4 uses
  %i.byl = fcmp ugt float %i.byk, f0x34000000
  br i1 %i.byl, label %bb.cw, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cw:                                            ; preds = %bb.cv
  %i.bym = call float @fmodf(float noundef %i.byi, float noundef %i.byk) #19 ; 3 uses
  %i.byn = call float @llvm.fabs.f32(float %i.bym)
  %i.byo = fdiv float %i.byn, %i.byk              ; 2 uses
  %i.byp = fcmp olt float %i.byo, 5.000000e-01
  br i1 %i.byp, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.byq = fsub float %i.byi, %i.bym
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cy:                                            ; preds = %bb.cw
  %i.byr = fcmp ogt float %i.byo, 5.000000e-01
  br i1 %i.byr, label %bb.cz, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

bb.cz:                                            ; preds = %bb.cy
  %i.bys = fsub float %i.byi, %i.bym
  %i.byt = fcmp olt float %i.byi, 0.000000e+00
  %i.byu = select i1 %i.byt, float -1.000000e+00, float 1.000000e+00
  %i.byv = call float @llvm.fmuladd.f32(float %i.byk, float %i.byu, float %i.bys)
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103

_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103:         ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  %.0671.i = phi float [ %i.byi, %bb.cv ], [ %i.byi, %bb.cy ], [ %i.byq, %bb.cx ], [ %i.byv, %bb.cz ]
  %i.byw = fcmp ogt float %i.bya, f0x34000000
  %i.byx = fdiv float %.0671.i, %i.bya
  %.1.i104 = select i1 %i.byw, float %i.byx, float %.0.i
  br label %bb.da

bb.da:                                            ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103, %bb.cu
  %.2.i = phi float [ %.1.i104, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.i103 ], [ %.0.i, %bb.cu ]
  %i.byy = getelementptr inbounds [16 x i8], ptr %50, i64 %i.bxj ; 2 uses
  %i.byz = load <4 x float>, ptr %i.byy, align 8, !tbaa !10
  %i.bza = insertelement <4 x float> poison, float %.2.i, i64 0
  %i.bzb = shufflevector <4 x float> %i.bza, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bzc = fmul <4 x float> %i.bzb, %i.byz
  store <4 x float> %i.bzc, ptr %i.byy, align 8, !tbaa !10
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cr
  %i.bzd = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 888), align 8, !tbaa !52 ; 2 uses
  %i.bze = icmp eq i32 %i.bzd, -1
  br i1 %i.bze, label %bb.dl, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.bzf = sext i32 %i.bzd to i64                 ; 4 uses
  %i.bzg = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), i64 %i.bzf ; 3 uses
  %i.bzh = load float, ptr %i.bzg, align 8, !tbaa !12
  %i.bzi = call float @llvm.fabs.f32(float %i.bzh) ; 2 uses
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzg, i64 4
  %i.bzk = load float, ptr %i.bzj, align 4, !tbaa !14 ; 2 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzg, i64 8
  %i.bzm = load float, ptr %i.bzl, align 8, !tbaa !13
  %i.bzn = call float @llvm.fabs.f32(float %i.bzm) ; 2 uses
  %i.bzo = fmul float %i.bxc, %i.bzk
  %i.bzp = call float @llvm.fabs.f32(float %i.bzo)
  %i.bzq = call float @llvm.fmuladd.f32(float %i.bzi, float %i.bxf, float %i.bzp)
  %i.bzr = call float @llvm.fmuladd.f32(float %i.bzn, float %i.bxg, float %i.bzq) ; 2 uses
  %i.bzs = getelementptr [4 x i8], ptr %7, i64 %i.bzf ; 2 uses
  %i.bzt = getelementptr i8, ptr %i.bzs, i64 12
  %i.bzu = load float, ptr %i.bzt, align 4, !tbaa !10
  %i.bzv = load float, ptr %i.bzs, align 4, !tbaa !10
  %i.bzw = fsub float %i.bzu, %i.bzv              ; 3 uses
  %i.bzx = fcmp ogt float %i.bzr, f0x34000000
  br i1 %i.bzx, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.bzy = fmul float %i.bwu, %i.bzk
  %i.bzz = call float @llvm.fabs.f32(float %i.bzy)
  %i.caa = call float @llvm.fmuladd.f32(float %i.bzi, float %i.bwx, float %i.bzz)
  %i.cab = call float @llvm.fmuladd.f32(float %i.bzn, float %i.bwy, float %i.caa)
  %i.cac = fadd float %i.cab, 0.000000e+00
  %i.cad = fdiv float %i.cac, %i.bzr
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0.1.i = phi float [ %i.cad, %bb.dd ], [ 1.000000e+00, %bb.dc ] ; 3 uses
  br i1 %.not183.i, label %bb.dk, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.cae = fmul float %i.bzw, %.0.1.i             ; 6 uses
  %i.caf = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bzf
  %i.cag = load float, ptr %i.caf, align 4, !tbaa !10 ; 4 uses
  %i.cah = fcmp ugt float %i.cag, f0x34000000
  br i1 %i.cah, label %bb.dg, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.dg:                                            ; preds = %bb.df
  %i.cai = call float @fmodf(float noundef %i.cae, float noundef %i.cag) #19 ; 3 uses
  %i.caj = call float @llvm.fabs.f32(float %i.cai)
  %i.cak = fdiv float %i.caj, %i.cag              ; 2 uses
  %i.cal = fcmp olt float %i.cak, 5.000000e-01
  br i1 %i.cal, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.cam = fcmp ogt float %i.cak, 5.000000e-01
  br i1 %i.cam, label %bb.di, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1.i

bb.di:                                            ; preds = %bb.dh
  %i.can = fsub float %i.cae, %i.cai
  %i.cao = fcmp olt float %i.cae, 0.000000e+00
end_hunk_4
begin_hunk_5_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.cge = fadd <4 x float> %i.cgc, %i.cgd
  %i.cgf = shufflevector <4 x float> %foldExtExtBinop257, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cgg = insertelement <4 x float> poison, float %i.cgb, i64 0
  %i.cgh = shufflevector <4 x float> %i.cgg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cgi = fadd float %i.cex, %i.ceu              ; 2 uses
  %i.cgj = call float @llvm.fmuladd.f32(float %i.cfz, float %i.cbk, float %i.cfn)
  %i.cgk = shufflevector <4 x float> %i.cfe, <4 x float> %i.cfh, <4 x i32> <i32 1, i32 3, i32 poison, i32 4>
  %i.cgl = shufflevector <4 x float> %i.cgk, <4 x float> %i.cfw, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.cgm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cfr, <4 x float> %i.cew, <4 x float> %i.cgl) ; 4 uses
  %i.cgn = insertelement <2 x float> %i.cfq, float %i.cga, i64 1
  %i.cgo = shufflevector <2 x float> %i.cgn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cgp = shufflevector <3 x float> %i.cbl, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 0, i32 2>
  %i.cgq = insertelement <4 x float> %i.cgp, float %i.cbk, i64 1
  %i.cgr = shufflevector <4 x float> %i.cfw, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 2>
  %i.cgs = insertelement <4 x float> %i.cgr, float %i.cfk, i64 1
  %i.cgt = insertelement <4 x float> %i.cgs, float %i.cfy, i64 2
  %i.cgu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgo, <4 x float> %i.cgq, <4 x float> %i.cgt) ; 4 uses
  %i.cgv = fmul <2 x float> %i.cdz, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cgw = extractelement <2 x float> %i.cgv, i64 1
  %i.cgx = extractelement <2 x float> %i.cdz, i64 0
  %i.cgy = shufflevector <2 x float> %i.cdz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cgz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cgv, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.cgy)
  %i.cha = call float @llvm.fmuladd.f32(float %i.cgx, float 0.000000e+00, float %i.cgw) ; 2 uses
  %i.chb = insertelement <3 x float> poison, float %i.cfm, i64 0
  %i.chc = insertelement <3 x float> %i.chb, float %i.cha, i64 2
  %i.chd = shufflevector <3 x float> %i.chc, <3 x float> poison, <3 x i32> <i32 0, i32 0, i32 2>
  %i.che = shufflevector <2 x float> %i.cgz, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %i.chf = insertelement <3 x float> %i.che, float %i.cfm, i64 2
  %i.chg = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.chd, <3 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <3 x float> %i.chf)
  %i.chh = insertelement <3 x float> poison, float %i.cgi, i64 0
  %i.chi = shufflevector <3 x float> %i.chh, <3 x float> poison, <3 x i32> zeroinitializer
  %i.chj = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.chi, <3 x float> %i.cbl, <3 x float> %i.chg) ; 3 uses
  %i.chk = call float @llvm.fmuladd.f32(float %i.cfm, float 0.000000e+00, float %i.cha)
  %i.chl = fadd float %i.chk, %i.cgi
  %i.chm = insertelement <4 x float> poison, float %i.cgj, i64 0
  %i.chn = shufflevector <4 x float> %i.chm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cho = fmul <4 x float> %i.cbd, %i.chn
  %i.chp = shufflevector <4 x float> %i.cgm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chp, <4 x float> %i.cbc, <4 x float> %i.cho)
  %i.chr = shufflevector <4 x float> %i.cgm, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.chs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chr, <4 x float> %i.cbe, <4 x float> %i.chq)
  %i.cht = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cge, <4 x float> %i.cbf, <4 x float> %i.chs)
  %i.chu = shufflevector <4 x float> %i.cgm, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.chv = fmul <4 x float> %i.chu, %i.cbd
  %i.chw = shufflevector <4 x float> %i.cgm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.chx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chw, <4 x float> %i.cbc, <4 x float> %i.chv)
  %i.chy = shufflevector <4 x float> %i.cgu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.chz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.chy, <4 x float> %i.cbe, <4 x float> %i.chx)
  %i.cia = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgf, <4 x float> %i.cbf, <4 x float> %i.chz)
  %i.cib = shufflevector <4 x float> %i.cgu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cic = fmul <4 x float> %i.cbd, %i.cib
  %i.cid = shufflevector <4 x float> %i.cgu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cid, <4 x float> %i.cbc, <4 x float> %i.cic)
  %i.cif = shufflevector <4 x float> %i.cgu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cig = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cif, <4 x float> %i.cbe, <4 x float> %i.cie)
  %i.cih = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cgh, <4 x float> %i.cbf, <4 x float> %i.cig)
  %i.cii = shufflevector <3 x float> %i.chj, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cij = fmul <4 x float> %i.cbd, %i.cii
  %i.cik = shufflevector <3 x float> %i.chj, <3 x float> poison, <4 x i32> zeroinitializer
  %i.cil = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cik, <4 x float> %i.cbc, <4 x float> %i.cij)
  %i.cim = shufflevector <3 x float> %i.chj, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cin = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cim, <4 x float> %i.cbe, <4 x float> %i.cil)
  %i.cio = insertelement <4 x float> poison, float %i.chl, i64 0
  %i.cip = shufflevector <4 x float> %i.cio, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ciq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cip, <4 x float> %i.cbf, <4 x float> %i.cin)
  store <4 x float> %i.cht, ptr %4, align 4
  store <4 x float> %i.cia, ptr %.sroa.7450.0..sroa_idx.i, align 4
  store <4 x float> %i.cih, ptr %.sroa.11.0..sroa_idx.i92, align 4
  store <4 x float> %i.ciq, ptr %.sroa.15.0..sroa_idx.i95, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %.sroa.22.0.copyload.i324.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cir = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cis = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.cit = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.ciu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.civ = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.ciw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cix = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.ciy = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8
  %i.ciz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cja = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cjb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cjc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cjd = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 904), align 8
  %i.cje = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i323.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10
  %i.cjf = fmul float %.sroa.12.0.copyload.i323.i, %i.cis
  %i.cjg = extractelement <2 x float> %i.cje, i64 0
  %i.cjh = call float @llvm.fmuladd.f32(float %i.cjg, float %i.cir, float %i.cjf)
  %i.cji = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i324.i, float %i.cit, float %i.cjh)
  %i.cjj = fadd float %i.ciu, %i.cji
  %i.cjk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 896), align 8, !tbaa !10 ; 3 uses
  %i.cjl = shufflevector <2 x float> %i.cje, <2 x float> %i.cjk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cjm = insertelement <4 x float> %i.cjl, float %i.cbi, i64 2
  %i.cjn = shufflevector <4 x float> %i.cjm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2> ; 2 uses
  %i.cjo = insertelement <4 x float> %i.cjn, float %i.ciw, i64 0
  %i.cjp = insertelement <4 x float> %i.cjo, float %i.cja, i64 1
  %i.cjq = fmul <4 x float> %i.cjn, %i.cjp
  %i.cjr = shufflevector <2 x float> %i.cbh, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0> ; 2 uses
  %i.cjs = shufflevector <2 x float> %i.cje, <2 x float> %i.cjk, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.cjt = shufflevector <4 x float> %i.cjs, <4 x float> %i.cjr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cju = insertelement <4 x float> %i.cjr, float %i.civ, i64 0
  %i.cjv = insertelement <4 x float> %i.cju, float %i.ciz, i64 1
  %i.cjw = shufflevector <2 x float> %i.cjk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cjx = shufflevector <4 x float> %i.cjv, <4 x float> %i.cjw, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.cjy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cjt, <4 x float> %i.cjx, <4 x float> %i.cjq) ; 3 uses
  %i.cjz = extractelement <4 x float> %i.cjy, i64 1
  %i.cka = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i324.i, float %i.cjb, float %i.cjz)
  %i.ckb = fadd float %i.cjc, %i.cka
  %i.ckc = fdiv float 5.000000e-01, %i.ckb        ; 2 uses
  %i.ckd = fmul float %i.cjj, %i.ckc
  %i.cke = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 920), align 8
  %i.ckf = shufflevector <4 x float> %i.cke, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ckg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 936), align 8, !tbaa !13
  %i.ckh = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 912), align 8 ; 2 uses
  %i.cki = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 928), align 8 ; 2 uses
  %i.ckj = shufflevector <2 x float> %i.cbp, <2 x float> %i.cbn, <4 x i32> <i32 poison, i32 1, i32 poison, i32 3>
  %i.ckk = shufflevector <4 x float> %i.ckj, <4 x float> %i.ckh, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.ckl = shufflevector <4 x float> %i.ckk, <4 x float> %i.cki, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.ckm = fmul <4 x float> %i.ckl, %i.ckl
  %i.ckn = shufflevector <2 x float> %i.cbp, <2 x float> %i.cbn, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.cko = shufflevector <4 x float> %i.ckh, <4 x float> %i.ckn, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.ckp = shufflevector <4 x float> %i.cko, <4 x float> %i.cki, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.ckq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ckp, <4 x float> %i.ckp, <4 x float> %i.ckm) ; 2 uses
  %i.ckr = load <2 x float>, ptr %i.bjp, align 4, !tbaa !10
  %i.cks = load <4 x float>, ptr %7, align 4, !tbaa !10 ; 2 uses
  %i.ckt = insertelement <4 x float> poison, float %.sroa.22.0.copyload.i324.i, i64 0
  %i.cku = shufflevector <4 x float> %i.ckt, <4 x float> %i.cks, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.ckv = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, float %i.cix, i64 0
  %i.ckw = shufflevector <4 x float> %i.cjy, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ckx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cku, <4 x float> %i.ckv, <4 x float> %i.ckw) ; 2 uses
  %i.cky = shufflevector <2 x float> %i.ckr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ckz = shufflevector <4 x float> %i.cks, <4 x float> %i.cky, <4 x i32> <i32 poison, i32 3, i32 4, i32 5>
  %i.cla = shufflevector <4 x float> %i.ciy, <4 x float> %i.ckz, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.clb = fadd <4 x float> %i.cla, %i.ckx
  %i.clc = fsub <4 x float> %i.cla, %i.ckx
  %i.cld = shufflevector <4 x float> %i.clb, <4 x float> %i.clc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cle = insertelement <2 x float> %i.ckf, float %i.ckg, i64 1 ; 2 uses
  %i.clf = shufflevector <4 x float> %i.ckq, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.clg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cle, <2 x float> %i.cle, <2 x float> %i.clf)
  %i.clh = insertelement <4 x float> poison, float %i.ckc, i64 0
  %i.cli = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.clg)
  %i.clj = shufflevector <2 x float> %i.cli, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.clk = insertelement <4 x float> %i.cjd, float %i.ccq, i64 1
  %i.cll = insertelement <4 x float> %i.clk, float %i.cbg, i64 2
  %i.clm = insertelement <4 x float> %i.cll, float %i.cbb, i64 3 ; 2 uses
  %i.cln = shufflevector <4 x float> %i.cjy, <4 x float> %i.ckq, <4 x i32> <i32 2, i32 3, i32 5, i32 7>
  %i.clo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.clm, <4 x float> %i.clm, <4 x float> %i.cln)
  %i.clp = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.clo) ; 3 uses
  %i.clq = shufflevector <4 x float> %i.clh, <4 x float> %i.clp, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.clr = shufflevector <4 x float> %i.clq, <4 x float> %i.clj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cls = fmul <4 x float> %i.cld, %i.clr        ; 3 uses
  %i.clt = extractelement <4 x float> %i.cls, i64 0
  %i.clu = fadd float %i.clt, 5.000000e-01
  %foldExtExtBinop259 = fmul <4 x float> %i.clp, %i.cls
  %i.clv = extractelement <4 x float> %foldExtExtBinop259, i64 1
  %i.clw = fpext float %i.clv to double
  %i.clx = shufflevector <4 x float> %i.clp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cly = shufflevector <4 x float> %i.cls, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.clz = fmul <2 x float> %i.clx, %i.cly
  %i.cma = fpext <2 x float> %i.clz to <2 x double> ; 2 uses
  %i.cmb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ckd, i64 0
  %i.cmc = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.clu, i64 1
  %i.cmd = fsub <2 x float> %i.cmb, %i.cmc
  %i.cme = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.cmf = fmul <2 x float> %i.cme, %i.cmd
  %i.cmg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.cmh = fadd <2 x float> %i.cmg, %i.cmf        ; 2 uses
  %i.cmi = extractelement <2 x double> %i.cma, i64 0
  %i.cmj = extractelement <2 x double> %i.cma, i64 1
  %i.cmk = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.m, i64 noundef 512, ptr noundef nonnull @.str.2, double noundef %i.clw, double noundef %i.cmi, double noundef %i.cmj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  %i.cml = fadd <2 x float> %i.cmh, splat (float 1.500000e+01)
  store <2 x float> %i.cml, ptr %51, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.bdu, ptr noundef nonnull align 4 dereferenceable(8) %51, i32 noundef -16777216, ptr noundef nonnull %i.m, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  %i.cmm = fadd <2 x float> %i.cmh, splat (float 1.400000e+01)
  store <2 x float> %i.cmm, ptr %52, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.bdu, ptr noundef nonnull align 4 dereferenceable(8) %52, i32 noundef -1, ptr noundef nonnull %i.m, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.cb
  %i.cmn = load i8, ptr %i.bjq, align 8, !tbaa !47, !range !33, !noundef !34
  %i.cmo = trunc nuw i8 %i.cmn to i1
  br i1 %i.cmo, label %bb.dn, label %.thread753.i

.thread753.i:                                     ; preds = %bb.dm
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next708.old.i = add nuw nsw i64 %indvars.iv707.i, 1 ; 2 uses
  %exitcond711.not.old.i = icmp eq i64 %indvars.iv.next708.old.i, %wide.trip.count710.i
  br i1 %exitcond711.not.old.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread753.i, %bb.dn
  %indvars.iv707.i.be = phi i64 [ %indvars.iv.next708.old.i, %.thread753.i ], [ %indvars.iv.next708.i, %bb.dn ]
  br label %.backedge, !llvm.loop !62

bb.dn:                                            ; preds = %bb.dm
  %.pre723.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51, !range !33 ; 2 uses
  %i.cmp = trunc nuw i8 %.pre723.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %indvars.iv.next708.i = add nuw nsw i64 %indvars.iv707.i, 1 ; 2 uses
  %exitcond711.not.i = icmp eq i64 %indvars.iv.next708.i, %wide.trip.count710.i
  %or.cond755.i = select i1 %i.cmp, i1 true, i1 %exitcond711.not.i
  br i1 %or.cond755.i, label %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit, label %.backedge.backedge

_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit: ; preds = %.thread753.i, %bb.dn
  %i.cmq = phi i8 [ 0, %.thread753.i ], [ %.pre723.i, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.do

bb.do:                                            ; preds = %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit
  %i.cmr = phi i8 [ %.pre, %_ZN8ImGuizmoL14HandleRotationEPfS0_RiS0_.exit._crit_edge ], [ %i.cmq, %_ZN8ImGuizmoL24HandleAndDrawLocalBoundsEPfPNS_8matrix_tES0_NS_9OPERATIONE.exit ]
  %i.cms = trunc nuw i8 %i.cmr to i1
  br i1 %i.cms, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  switch i32 %2, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit [
    i32 1, label %bb.dq
    i32 0, label %bb.ei
    i32 2, label %bb.ey
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %i.cmt = getelementptr inbounds nuw i8, ptr %35, i64 32 ; 4 uses
  %i.cmu = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.cmv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.cmw = trunc nuw i8 %i.cmv to i1
  br i1 %i.cmw, label %bb.dr, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.dq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.i, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

bb.dr:                                            ; preds = %bb.dq
  %i.cmx = icmp eq i32 %.0, 11
  %i.cmy = select i1 %i.cmx, i32 -1978629889, i32 -1 ; 2 uses
  store i32 %i.cmy, ptr %i.i, align 16, !tbaa !52
  %i.cmz = icmp eq i32 %.0, 8
  %i.cna = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  br i1 %i.cmz, label %.thread70.i.i, label %bb.ds

.thread70.i.i:                                    ; preds = %bb.dr
  store i32 -1978629889, ptr %i.cna, align 4, !tbaa !52
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -16733696, ptr %i.cnb, align 8, !tbaa !52
  br label %bb.du

bb.ds:                                            ; preds = %bb.dr
  store i32 -16777046, ptr %i.cna, align 4, !tbaa !52
  %i.cnc = icmp eq i32 %.0, 9
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.cnc, label %.thread69.i.i, label %bb.dt

.thread69.i.i:                                    ; preds = %bb.ds
  store i32 -1978629889, ptr %i.cnd, align 8, !tbaa !52
  br label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 -16733696, ptr %i.cnd, align 8, !tbaa !52
  %i.cne = icmp eq i32 %.0, 10
  br i1 %i.cne, label %.loopexit.loopexit52.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt, %.thread69.i.i, %.thread70.i.i
  br label %.loopexit.loopexit52.i.i

.loopexit.loopexit52.i.i:                         ; preds = %bb.du, %bb.dt
  %i.cnf = phi i32 [ -5636096, %bb.du ], [ -1978629889, %bb.dt ]
  %i.cng = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.cnf, ptr %i.cng, align 4, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i: ; preds = %.loopexit.loopexit52.i.i, %.preheader.preheader.i.i
  %i.cnh = phi i32 [ -1717986919, %.preheader.preheader.i.i ], [ %i.cmy, %.loopexit.loopexit52.i.i ]
  %i.cni = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30, !range !33, !noundef !34
  %i.cnj = trunc nuw i8 %i.cni to i1
  br i1 %i.cnj, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.cnk = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %35, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %i.cnl = load <3 x float>, ptr %i.cmt, align 4
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i
  %i.cnm = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  %i.cnn = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), align 4, !tbaa !10
  %i.cno = fsub <3 x float> %i.cnm, %i.cnn        ; 5 uses
  %foldExtExtBinop261 = fmul <3 x float> %i.cno, %i.cno
  %i.cnp = extractelement <3 x float> %foldExtExtBinop261, i64 1
  %i.cnq = extractelement <3 x float> %i.cno, i64 0 ; 2 uses
  %i.cnr = call float @llvm.fmuladd.f32(float %i.cnq, float %i.cnq, float %i.cnp)
  %i.cns = extractelement <3 x float> %i.cno, i64 2 ; 2 uses
  %i.cnt = call float @llvm.fmuladd.f32(float %i.cns, float %i.cns, float %i.cnr)
  %sqrt.i.i.i.i111 = call noundef float @llvm.sqrt.f32(float %i.cnt)
  %i.cnu = fdiv float 1.000000e+00, %sqrt.i.i.i.i111
  %i.cnv = insertelement <3 x float> poison, float %i.cnu, i64 0
  %i.cnw = shufflevector <3 x float> %i.cnv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cnx = fmul <3 x float> %i.cno, %i.cnw
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.cny = phi <3 x float> [ %i.cnx, %bb.dw ], [ %i.cnl, %bb.dv ] ; 3 uses
  %i.cnz = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.coa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.cob = shufflevector <3 x float> %i.cny, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.coc = fmul <4 x float> %i.cob, %i.coa
  %i.cod = shufflevector <3 x float> %i.cny, <3 x float> poison, <4 x i32> zeroinitializer
  %i.coe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cod, <4 x float> %i.cnz, <4 x float> %i.coc)
  %i.cof = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.cog = shufflevector <3 x float> %i.cny, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.coh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cog, <4 x float> %i.cof, <4 x float> %i.coe)
  store <4 x float> %i.coh, ptr %i.cmt, align 4
  %i.coi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 976), align 8, !tbaa !26
  %i.coj = fmul float %i.coi, 6.000000e-02
  store float %i.coj, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.cok = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.col = getelementptr inbounds nuw i8, ptr %36, i64 4
  br label %bb.dz

bb.dy:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %.sroa.02.0.copyload.i.i116 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i.i117 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i.i118 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.com = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.con = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.coo = fmul float %.sroa.12.0.copyload.i.i117, %i.con
  %i.cop = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.com, float %i.coo)
  %i.coq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.cor = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.coq, float %i.cop)
  %i.cos = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.cot = fadd float %i.cos, %i.cor
  %i.cou = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cov = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cow = fmul float %.sroa.12.0.copyload.i.i117, %i.cov
  %i.cox = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.cou, float %i.cow)
  %i.coy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.coz = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.coy, float %i.cox)
  %i.cpa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.cpb = fadd float %i.cpa, %i.coz
  %i.cpc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.cpd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.cpe = fmul float %.sroa.12.0.copyload.i.i117, %i.cpd
  %i.cpf = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i116, float %i.cpc, float %i.cpe)
  %i.cpg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.cph = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i118, float %i.cpg, float %i.cpf)
  %i.cpi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.cpj = fadd float %i.cpi, %i.cph
  %i.cpk = fdiv float 5.000000e-01, %i.cpj        ; 2 uses
  %i.cpl = fmul float %i.cot, %i.cpk
  %i.cpm = fmul float %i.cpb, %i.cpk
  %i.cpn = fadd float %i.cpm, 5.000000e-01
  %i.cpo = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cpl, i64 0
  %i.cpp = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cpn, i64 1
  %i.cpq = fsub <2 x float> %i.cpo, %i.cpp
  %i.cpr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.cps = fmul <2 x float> %i.cpr, %i.cpq
  %i.cpt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.cpu = fadd <2 x float> %i.cpt, %i.cps
  store <2 x float> %i.cpu, ptr %38, align 8
  %i.cpv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.cmu, ptr noundef nonnull align 4 dereferenceable(8) %38, float noundef %i.cpv, i32 noundef %i.cnh, i32 noundef 64, float noundef 3.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.cpw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.cpx = trunc nuw i8 %i.cpw to i1
  br i1 %i.cpx, label %bb.ee, label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.dz:                                            ; preds = %bb.ed, %bb.dx
  %indvars.iv118.i = phi i64 [ 0, %bb.dx ], [ %indvars.iv.next119.i, %bb.ed ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %36, i8 0, i64 512, i1 false), !tbaa !10
  %.cmp.i = icmp eq i64 %indvars.iv118.i, 2
  %i.cpy = sub nsw i64 1, %indvars.iv118.i
  %i.cpz = and i64 %i.cpy, 4294967295
  %i.cqa = select i1 %.cmp.i, i64 2, i64 %i.cpz
  %i.cqb = getelementptr inbounds nuw [4 x i8], ptr %i.cmt, i64 %i.cqa
  %i.cqc = load float, ptr %i.cqb, align 4
  %i.cqd = sub nuw nsw i64 3, %indvars.iv118.i    ; 2 uses
  %.cmp113.not.i = icmp eq i64 %indvars.iv118.i, 0
  %i.cqe = select i1 %.cmp113.not.i, i64 0, i64 %i.cqd
  %i.cqf = getelementptr inbounds nuw [4 x i8], ptr %i.cmt, i64 %i.cqe
  %i.cqg = load float, ptr %i.cqf, align 4
  %i.cqh = call float @atan2f(float noundef %i.cqc, float noundef %i.cqg) #19
  %i.cqi = fadd float %i.cqh, f0x3FC90FDB
  %i.cqj = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %indvars.iv118.i
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 3 uses
  %i.cqk = icmp eq i64 %indvars.iv.next119.i, 3   ; 2 uses
  %i.cql = select i1 %i.cqk, i64 0, i64 %indvars.iv.next119.i
  %i.cqm = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cql
  %i.cqn = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.cqo = add nuw nsw i32 %i.cqn, 2
  %i.cqp = urem i32 %i.cqo, 3
  %i.cqq = zext nneg i32 %i.cqp to i64
  %i.cqr = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %i.cqq
  %i.cqs = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.cqt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.cqu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cqv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.cqw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.cqx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16
  %i.cqy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cqz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16
  %i.cra = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16
  %i.crb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.crc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 3 uses
  %i.crd = shufflevector <4 x float> %i.cqs, <4 x float> poison, <3 x i32> zeroinitializer
  br label %bb.eb

bb.ea:                                            ; preds = %bb.eb
  %.sroa.02.0.copyload.i49.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i50.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i51.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cre = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.crf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.crg = fmul float %.sroa.12.0.copyload.i50.i, %i.crf
  %i.crh = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cre, float %i.crg)
  %i.cri = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.crj = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cri, float %i.crh)
  %i.crk = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.crl = fadd float %i.crk, %i.crj
  %i.crm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.crn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.cro = fmul float %.sroa.12.0.copyload.i50.i, %i.crn
  %i.crp = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.crm, float %i.cro)
  %i.crq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.crr = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.crq, float %i.crp)
  %i.crs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.crt = fadd float %i.crs, %i.crr
  %i.cru = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.crv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.crw = fmul float %.sroa.12.0.copyload.i50.i, %i.crv
  %i.crx = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i49.i, float %i.cru, float %i.crw)
  %i.cry = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.crz = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i51.i, float %i.cry, float %i.crx)
  %i.csa = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.csb = fadd float %i.csa, %i.crz
  %i.csc = fdiv float 5.000000e-01, %i.csb        ; 2 uses
  %i.csd = fmul float %i.crl, %i.csc
  %i.cse = fmul float %i.crt, %i.csc
  %i.csf = fadd float %i.csd, 5.000000e-01
  %i.csg = fadd float %i.cse, 5.000000e-01
  %i.csh = fsub float 1.000000e+00, %i.csg
  %i.csi = extractelement <2 x float> %i.crb, i64 0
  %i.csj = fmul float %i.csi, %i.csf
  %i.csk = extractelement <2 x float> %i.crb, i64 1
  %i.csl = fmul float %i.csk, %i.csh
  %i.csm = extractelement <2 x float> %i.crc, i64 0
  %i.csn = fadd float %i.csm, %i.csj
  %i.cso = extractelement <2 x float> %i.crc, i64 1
  %i.csp = fadd float %i.cso, %i.csl
  %.val44.i = load float, ptr %36, align 16, !tbaa !75
  %.val45.i = load float, ptr %i.col, align 4, !tbaa !76
  %i.csq = fsub float %i.csn, %.val44.i           ; 2 uses
  %i.csr = fsub float %i.csp, %.val45.i           ; 2 uses
  %i.css = fmul float %i.csr, %i.csr
  %i.cst = call noundef float @llvm.fmuladd.f32(float %i.csq, float %i.csq, float %i.css)
  %sqrt.i115 = call float @llvm.sqrt.f32(float %i.cst) ; 2 uses
  %i.csu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  %i.csv = fcmp ogt float %sqrt.i115, %i.csu
  br i1 %i.csv, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.eb, %bb.dz
  %indvars.iv.i112 = phi i64 [ 0, %bb.dz ], [ %indvars.iv.next.i113, %bb.eb ] ; 3 uses
  %i.csw = trunc nuw nsw i64 %indvars.iv.i112 to i32
  %i.csx = uitofp nneg i32 %i.csw to float
  %i.csy = fmul nnan float %i.csx, 1.562500e-02
  %i.csz = call float @llvm.fmuladd.f32(float %i.csy, float f0x40490FDB, float %i.cqi) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.cta = call float @cosf(float noundef %i.csz) #19
  %i.ctb = call float @sinf(float noundef %i.csz) #19
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.cta, i64 0
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.ctb, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %37, align 8
  store <2 x float> zeroinitializer, ptr %i.cok, align 8
  %i.ctc = load float, ptr %i.cqj, align 4, !tbaa !10
  %i.ctd = load float, ptr %i.cqm, align 4, !tbaa !10
  %i.cte = load float, ptr %i.cqr, align 4, !tbaa !10
  %i.ctf = insertelement <3 x float> poison, float %i.cte, i64 0
  %i.ctg = insertelement <3 x float> %i.ctf, float %i.ctc, i64 1
  %i.cth = insertelement <3 x float> %i.ctg, float %i.ctd, i64 2
  %i.cti = fmul <3 x float> %i.crd, %i.cth        ; 6 uses
  %i.ctj = shufflevector <3 x float> %i.cti, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ctk = fmul <2 x float> %i.cqu, %i.ctj
  %i.ctl = shufflevector <3 x float> %i.cti, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ctm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctl, <2 x float> %i.cqt, <2 x float> %i.ctk)
  %i.ctn = shufflevector <3 x float> %i.cti, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cto = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ctn, <2 x float> %i.cqv, <2 x float> %i.ctm)
  %i.ctp = fadd <2 x float> %i.cqw, %i.cto
  %i.ctq = extractelement <3 x float> %i.cti, i64 2
  %i.ctr = fmul float %i.cqy, %i.ctq
  %i.cts = extractelement <3 x float> %i.cti, i64 1
  %i.ctt = call float @llvm.fmuladd.f32(float %i.cts, float %i.cqx, float %i.ctr)
  %i.ctu = extractelement <3 x float> %i.cti, i64 0
  %i.ctv = call float @llvm.fmuladd.f32(float %i.ctu, float %i.cqz, float %i.ctt)
  %i.ctw = fadd float %i.cra, %i.ctv
  %i.ctx = fdiv float 5.000000e-01, %i.ctw
  %i.cty = insertelement <2 x float> poison, float %i.ctx, i64 0
  %i.ctz = shufflevector <2 x float> %i.cty, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cua = fmul <2 x float> %i.ctp, %i.ctz        ; 2 uses
  %i.cub = extractelement <2 x float> %i.cua, i64 1
  %i.cuc = fadd float %i.cub, 5.000000e-01
  %i.cud = insertelement <2 x float> %i.cua, float 1.000000e+00, i64 1
  %i.cue = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cuc, i64 1
  %i.cuf = fsub <2 x float> %i.cud, %i.cue
  %i.cug = fmul <2 x float> %i.crb, %i.cuf
  %i.cuh = fadd <2 x float> %i.crc, %i.cug
  %i.cui = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %indvars.iv.i112
  store <2 x float> %i.cuh, ptr %i.cui, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, 64
  br i1 %exitcond.not.i114, label %bb.ea, label %bb.eb, !llvm.loop !63

bb.ec:                                            ; preds = %bb.ea
  store float %sqrt.i115, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 636), align 4, !tbaa !49
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.ea
  %i.cuj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cqd
  %i.cuk = load i32, ptr %i.cuj, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cmu, ptr noundef nonnull %36, i32 noundef 64, i32 noundef %i.cuk, i32 noundef 0, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  br i1 %i.cqk, label %bb.dy, label %bb.dz, !llvm.loop !64

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(520) %39, i8 0, i64 520, i1 false), !tbaa !10
  %.sroa.22.0.copyload.i76.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.cul = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.cum = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.cun = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.cuo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.cup = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  %i.cuq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.cur = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.cus = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 696), align 8, !tbaa !13 ; 3 uses
  %i.cut = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i75.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10
  %i.cuu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 2 uses
  %i.cuv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.cuw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.cux = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 688), align 8, !tbaa !10 ; 5 uses
  %i.cuy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16 ; 2 uses
  %i.cuz = shufflevector <2 x float> %i.cux, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cva = insertelement <2 x float> %i.cuz, float %.sroa.12.0.copyload.i75.i, i64 1
  %i.cvb = shufflevector <2 x float> %i.cva, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.cvc = shufflevector <2 x float> %i.cux, <2 x float> %i.cuy, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.cvd = insertelement <4 x float> %i.cvc, float %i.cun, i64 3
  %i.cve = fmul <4 x float> %i.cvb, %i.cvd
  %i.cvf = shufflevector <2 x float> %i.cux, <2 x float> %i.cut, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cvg = shufflevector <2 x float> %i.cuv, <2 x float> %i.cuu, <4 x i32> <i32 poison, i32 0, i32 1, i32 2> ; 2 uses
  %i.cvh = shufflevector <2 x float> %i.cux, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cvi = shufflevector <4 x float> %i.cvh, <4 x float> %i.cvg, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.cvj = insertelement <4 x float> %i.cvi, float %i.cuw, i64 2
  %i.cvk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cvf, <4 x float> %i.cvj, <4 x float> %i.cve) ; 3 uses
  %i.cvl = extractelement <4 x float> %i.cvk, i64 0
  %i.cvm = call noundef float @llvm.fmuladd.f32(float %i.cus, float %i.cus, float %i.cvl) ; 2 uses
  %i.cvn = fcmp olt float %i.cvm, f0x34000000
  %i.cvo = extractelement <4 x float> %i.cvk, i64 3
  %i.cvp = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i76.i, float %i.cuo, float %i.cvo)
  %i.cvq = fadd float %i.cup, %i.cvp
  %i.cvr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 736), align 8, !tbaa !10 ; 3 uses
  %.sroa.8.0.copyload.i121 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 740), align 4, !tbaa !10 ; 3 uses
  %.sroa.13.0.copyload.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 744), align 8, !tbaa !10 ; 3 uses
  %i.cvs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 3 uses
  %i.cvt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8
  %sqrt.i.i122 = call float @llvm.sqrt.f32(float %i.cvm)
  %i.cvu = insertelement <2 x float> poison, float %i.cvq, i64 0
  %i.cvv = insertelement <2 x float> %i.cvu, float %sqrt.i.i122, i64 1
  %i.cvw = fdiv <2 x float> <float 5.000000e-01, float 1.000000e+00>, %i.cvv ; 3 uses
  %i.cvx = insertelement <2 x float> %i.cux, float %i.cus, i64 1
  %i.cvy = shufflevector <2 x float> %i.cvw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cvz = fmul <2 x float> %i.cvx, %i.cvy        ; 6 uses
  %i.cwa = fmul <2 x float> %i.cvz, %i.cvz
  %i.cwb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 692), align 4
  %i.cwc = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, float %.sroa.22.0.copyload.i76.i, i64 0
  %i.cwd = shufflevector <4 x float> %i.cwc, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cwe = shufflevector <2 x float> %i.cul, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cwf = shufflevector <4 x float> %i.cwe, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cwg = shufflevector <4 x float> %i.cvk, <4 x float> %i.cwb, <4 x i32> <i32 1, i32 2, i32 4, i32 4>
  %i.cwh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cwd, <4 x float> %i.cwf, <4 x float> %i.cwg) ; 2 uses
  %i.cwi = shufflevector <2 x float> %i.cum, <2 x float> %i.cvw, <4 x i32> <i32 0, i32 1, i32 3, i32 3> ; 2 uses
  %i.cwj = fadd <4 x float> %i.cwi, %i.cwh
  %i.cwk = fmul <4 x float> %i.cwi, %i.cwh        ; 3 uses
  %i.cwl = shufflevector <4 x float> %i.cwj, <4 x float> %i.cwk, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cwm = shufflevector <2 x float> %i.cvw, <2 x float> %i.cvz, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.cwn = shufflevector <4 x float> %i.cwm, <4 x float> %i.cwl, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.cwo = fmul <4 x float> %i.cwn, %i.cwl        ; 4 uses
  %i.cwp = extractelement <4 x float> %i.cwo, i64 1
  %i.cwq = fadd float %i.cwp, 5.000000e-01
  %i.cwr = shufflevector <4 x float> %i.cwo, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cws = insertelement <2 x float> %i.cwr, float 1.000000e+00, i64 1
  %i.cwt = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cwq, i64 1
  %i.cwu = fsub <2 x float> %i.cws, %i.cwt
  %i.cwv = fmul <2 x float> %i.cuq, %i.cwu
  %i.cww = fadd <2 x float> %i.cur, %i.cwv
  store <2 x float> %i.cww, ptr %39, align 16
  %i.cwx = shufflevector <4 x float> %i.cwk, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cwy = shufflevector <2 x float> %i.cvz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cwz = extractelement <2 x float> %i.cvr, i64 0 ; 2 uses
  %i.cxa = shufflevector <2 x float> %i.cvr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cxb = shufflevector <2 x float> %i.cuu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cxc = shufflevector <2 x float> %i.cvz, <2 x float> %i.cwx, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cxd = shufflevector <2 x float> %i.cvz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cxe = fmul <4 x float> %i.cxc, %i.cxd        ; 2 uses
  %i.cxf = shufflevector <2 x float> %i.cuy, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.cxg = extractelement <4 x float> %i.cwo, i64 2
  %i.cxh = shufflevector <4 x float> %i.cwk, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cxi = shufflevector <4 x float> %i.cxh, <4 x float> %i.cwy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cxj = shufflevector <4 x float> %i.cxi, <4 x float> %i.cwo, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.cxk = shufflevector <4 x float> %i.cxj, <4 x float> %i.cxe, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cxl = shufflevector <4 x float> %i.cxe, <4 x float> %i.cwy, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.cxm = shufflevector <2 x float> %i.cvr, <2 x float> %i.cut, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cxn = insertelement <4 x float> %i.cxf, float %i.cun, i64 3
  %i.cxo = shufflevector <4 x float> %i.cxn, <4 x float> %i.cxa, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.cxp = shufflevector <4 x float> %i.cxo, <4 x float> %i.cxb, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.cmu, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -2146402049)
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cmu, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -15695617, i32 noundef 1, float noundef 2.000000e+00)
  %i.cxq = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.cxr = sext i32 %.0 to i64
  %i.cxs = getelementptr [8 x i8], ptr @_ZN8ImGuizmoL16rotationInfoMaskE, i64 %i.cxr
  %i.cxt = getelementptr i8, ptr %i.cxs, i64 -64
  %i.cxu = load ptr, ptr %i.cxt, align 8, !tbaa !77
  %i.cxv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !72 ; 2 uses
  %i.cxw = fdiv float %i.cxv, f0x40490FDB
  %i.cxx = fmul float %i.cxw, 1.800000e+02
  %i.cxy = fpext float %i.cxx to double
  %i.cxz = fpext float %i.cxv to double
  %i.cya = load <2 x float>, ptr %i.cxq, align 8, !tbaa !10 ; 2 uses
  %i.cyb = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 512, ptr noundef %i.cxu, double noundef %i.cxy, double noundef %i.cxz) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.cyc = fadd <2 x float> %i.cya, splat (float 1.500000e+01)
  store <2 x float> %i.cyc, ptr %40, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cmu, ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef -16777216, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.cyd = fadd <2 x float> %i.cya, splat (float 1.400000e+01)
  store <2 x float> %i.cyd, ptr %41, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cmu, ptr noundef nonnull align 4 dereferenceable(8) %41, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.eg:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, %bb.ee
  %indvars.iv123.i = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next124.i, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123 ] ; 3 uses
  br i1 %i.cvn, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.cye = trunc i64 %indvars.iv123.i to i32
  %i.cyf = add i32 %i.cye, -1
  %i.cyg = uitofp i32 %i.cyf to float
  %i.cyh = fdiv nnan float %i.cyg, 6.300000e+01
  %i.cyi = fmul float %i.cvt, %i.cyh              ; 2 uses
  %i.cyj = call float @sinf(float noundef %i.cyi) #19
  %i.cyk = call float @cosf(float noundef %i.cyi) #19 ; 3 uses
  %i.cyl = fsub float 1.000000e+00, %i.cyk        ; 3 uses
  %i.cym = call float @llvm.fmuladd.f32(float %i.cxg, float %i.cyl, float %i.cyk)
  %i.cyn = insertelement <2 x float> poison, float %i.cyl, i64 0
  %i.cyo = shufflevector <2 x float> %i.cyn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyp = insertelement <2 x float> poison, float %i.cyk, i64 0
  %i.cyq = shufflevector <2 x float> %i.cyp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cwa, <2 x float> %i.cyo, <2 x float> %i.cyq)
  %i.cys = insertelement <4 x float> poison, float %i.cyj, i64 0
  %i.cyt = insertelement <4 x float> %i.cys, float %i.cyl, i64 1 ; 2 uses
  %i.cyu = shufflevector <4 x float> %i.cyt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cyv = fmul <4 x float> %i.cxk, %i.cyu        ; 4 uses
  %i.cyw = shufflevector <4 x float> %i.cyt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.cyx = fmul <4 x float> %i.cxl, %i.cyw        ; 4 uses
  %foldExtExtBinop263 = fsub <4 x float> %i.cyx, %i.cyv
  %i.cyy = extractelement <4 x float> %foldExtExtBinop263, i64 0
  %foldExtExtBinop265 = fsub <4 x float> %i.cyv, %i.cyx
  %i.cyz = extractelement <4 x float> %foldExtExtBinop265, i64 2
  %i.cza = fadd <4 x float> %i.cyv, %i.cyx
  %i.czb = fsub <4 x float> %i.cyv, %i.cyx
  %i.czc = shufflevector <4 x float> %i.cza, <4 x float> %i.czb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.czd = fmul float %.sroa.8.0.copyload.i121, %i.cym
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i123: ; preds = %bb.eh, %bb.eg
  %.sroa.11.0.i = phi float [ %i.cyz, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.7.0.i = phi float [ %i.cyy, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sink59.i.i125 = phi float [ %i.czd, %bb.eh ], [ %.sroa.8.0.copyload.i121, %bb.eg ]
  %i.cze = phi <4 x float> [ %i.czc, %bb.eh ], [ zeroinitializer, %bb.eg ] ; 4 uses
  %i.czf = phi <2 x float> [ %i.cyr, %bb.eh ], [ splat (float 1.000000e+00), %bb.eg ] ; 2 uses
  %i.czg = fmul float %.sroa.8.0.copyload.i121, %.sroa.11.0.i
  %i.czh = extractelement <2 x float> %i.czf, i64 0
  %i.czi = call float @llvm.fmuladd.f32(float %i.cwz, float %i.czh, float %i.czg)
  %i.czj = extractelement <4 x float> %i.cze, i64 0
  %i.czk = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.czj, float %i.czi)
  %i.czl = fadd float %i.czk, 0.000000e+00
  %i.czm = extractelement <4 x float> %i.cze, i64 2
  %i.czn = call float @llvm.fmuladd.f32(float %i.cwz, float %i.czm, float %.sink59.i.i125)
  %i.czo = extractelement <4 x float> %i.cze, i64 3
  %i.czp = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.czo, float %i.czn)
  %i.czq = fadd float %i.czp, 0.000000e+00
  %i.czr = extractelement <2 x float> %i.czf, i64 1
  %i.czs = fmul float %i.cvs, %i.czl
  %i.czt = fmul float %i.cvs, %i.czq
  %i.czu = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.czs, i64 1
  %i.czv = shufflevector <2 x float> %i.czu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.czw = fadd <4 x float> %i.cxm, %i.czv
  %i.czx = shufflevector <4 x float> %i.cze, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.czy = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.czt, i64 1
  %i.czz = shufflevector <2 x float> %i.czx, <2 x float> %i.cut, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.daa = shufflevector <2 x float> %i.czy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dab = fadd <4 x float> %i.czz, %i.daa
  %i.dac = fmul <4 x float> %i.cxp, %i.dab
  %i.dad = insertelement <4 x float> %i.cvg, float %.sroa.7.0.i, i64 0
  %i.dae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.czw, <4 x float> %i.dad, <4 x float> %i.dac) ; 3 uses
  %i.daf = extractelement <4 x float> %i.dae, i64 0
  %i.dag = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.czr, float %i.daf)
  %i.dah = fadd float %i.dag, 0.000000e+00
  %i.dai = fmul float %i.cvs, %i.dah
  %i.daj = extractelement <4 x float> %i.dae, i64 3
  %i.dak = fadd float %.sroa.22.0.copyload.i76.i, %i.dai ; 2 uses
  %i.dal = insertelement <2 x float> poison, float %i.dak, i64 0
  %i.dam = shufflevector <2 x float> %i.dal, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dan = shufflevector <4 x float> %i.dae, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dam, <2 x float> %i.cul, <2 x float> %i.dan)
  %i.dap = fadd <2 x float> %i.cum, %i.dao
  %i.daq = call float @llvm.fmuladd.f32(float %i.dak, float %i.cuo, float %i.daj)
  %i.dar = fadd float %i.cup, %i.daq
  %i.das = fdiv float 5.000000e-01, %i.dar
  %i.dat = insertelement <2 x float> poison, float %i.das, i64 0
  %i.dau = shufflevector <2 x float> %i.dat, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dav = fmul <2 x float> %i.dap, %i.dau        ; 2 uses
  %i.daw = extractelement <2 x float> %i.dav, i64 1
  %i.dax = fadd float %i.daw, 5.000000e-01
  %i.day = insertelement <2 x float> %i.dav, float 1.000000e+00, i64 1
  %i.daz = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dax, i64 1
  %i.dba = fsub <2 x float> %i.day, %i.daz
  %i.dbb = fmul <2 x float> %i.cuq, %i.dba
  %i.dbc = fadd <2 x float> %i.cur, %i.dbb
  %i.dbd = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %indvars.iv123.i
  store <2 x float> %i.dbc, ptr %i.dbd, align 8
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 64
  br i1 %exitcond126.not.i, label %bb.ef, label %bb.eg, !llvm.loop !65

_ZN8ImGuizmoL17DrawRotationGizmoEi.exit:          ; preds = %bb.dy, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ei:                                            ; preds = %bb.dp
  %i.dbe = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 11 uses
  %.not.i130 = icmp eq ptr %i.dbe, null
  br i1 %.not.i130, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.dbf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.dbg = trunc nuw i8 %i.dbf to i1
  br i1 %i.dbg, label %bb.ek, label %.preheader.preheader.i.i131

.preheader.preheader.i.i131:                      ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132

bb.ek:                                            ; preds = %bb.ej
  %i.dbh = icmp eq i32 %.0, 7                     ; 2 uses
  %i.dbi = select i1 %i.dbh, i32 -1978629889, i32 -1
  store i32 %i.dbi, ptr %i.e, align 16, !tbaa !52
  br i1 %i.dbh, label %.loopexit.loopexit.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.ek
  %i.dbj = icmp eq i32 %.0, 1
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.dbj, label %.split.1.thread61.i.i, label %bb.el

.split.1.thread61.i.i:                            ; preds = %.split.preheader.i.i
  store i32 -1978629889, ptr %i.dbk, align 4, !tbaa !52
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1627390122, ptr %i.dbl, align 16, !tbaa !52
  br label %.thread63.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ek
  %i.dbm = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 -1978629889, ptr %i.dbn, align 4, !tbaa !52
  store <4 x i32> <i32 -16777046, i32 -16733696, i32 -5636096, i32 -1978629889>, ptr %i.dbm, align 4, !tbaa !52
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 -1978629889, ptr %i.dbo, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132

bb.el:                                            ; preds = %.split.preheader.i.i
  store i32 -16777046, ptr %i.dbk, align 4, !tbaa !52
  %i.dbp = icmp eq i32 %.0, 4
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.dbp, label %.split.1.thread.i.i, label %.split.1.i.i

.split.1.thread.i.i:                              ; preds = %bb.el
  store i32 -1978629889, ptr %i.dbq, align 16, !tbaa !52
  br label %.thread63.i.i

.split.1.i.i:                                     ; preds = %bb.el
  store i32 1627390122, ptr %i.dbq, align 16, !tbaa !52
  %i.dbr = icmp eq i32 %.0, 2
  %i.dbs = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.dbr, label %.split.2.thread64.i.i, label %bb.em

.split.2.thread64.i.i:                            ; preds = %.split.1.i.i
  store i32 -1978629889, ptr %i.dbs, align 8, !tbaa !52
  br label %.thread67.i.i

.thread63.i.i:                                    ; preds = %.split.1.thread.i.i, %.split.1.thread61.i.i
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -16733696, ptr %i.dbt, align 8, !tbaa !52
  br label %.split.2.i.i

bb.em:                                            ; preds = %.split.1.i.i
  store i32 -16733696, ptr %i.dbs, align 8, !tbaa !52
  %i.dbu = icmp eq i32 %.0, 5
  br i1 %i.dbu, label %.thread67.i.i, label %.split.2.i.i

.split.2.i.i:                                     ; preds = %bb.em, %.thread63.i.i
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 1627433472, ptr %i.dbv, align 4, !tbaa !52
  %i.dbw = icmp eq i32 %.0, 3
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  br i1 %i.dbw, label %.thread65.i.i, label %bb.en

.thread65.i.i:                                    ; preds = %.split.2.i.i
  store i32 -1978629889, ptr %i.dbx, align 4, !tbaa !52
  br label %bb.eo

.thread67.i.i:                                    ; preds = %bb.em, %.split.2.thread64.i.i
  %.sink.i.i145 = phi i32 [ 1627433472, %.split.2.thread64.i.i ], [ -1978629889, %bb.em ]
  %i.dby = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sink.i.i145, ptr %i.dby, align 4, !tbaa !52
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 -5636096, ptr %i.dbz, align 4, !tbaa !52
  br label %bb.eo

bb.en:                                            ; preds = %.split.2.i.i
  store i32 -5636096, ptr %i.dbx, align 4, !tbaa !52
  %i.dca = icmp eq i32 %.0, 6
  br i1 %i.dca, label %.loopexit.loopexit51.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.thread67.i.i, %.thread65.i.i
  br label %.loopexit.loopexit51.i.i

.loopexit.loopexit51.i.i:                         ; preds = %bb.eo, %bb.en
  %i.dcb = phi i32 [ 1638531072, %bb.eo ], [ -1978629889, %bb.en ]
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.dcb, ptr %i.dcc, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132: ; preds = %.loopexit.loopexit51.i.i, %.loopexit.loopexit.i.i, %.preheader.preheader.i.i131
  %.sroa.02.0.copyload.i.i133 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i.i134 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i.i135 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dcd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dce = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.dcf = fmul float %.sroa.12.0.copyload.i.i134, %i.dce
  %i.dcg = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i133, float %i.dcd, float %i.dcf)
  %i.dch = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dci = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i135, float %i.dch, float %i.dcg)
  %i.dcj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.dck = fadd float %i.dcj, %i.dci
  %i.dcl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dcm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.dcn = fmul float %.sroa.12.0.copyload.i.i134, %i.dcm
  %i.dco = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i133, float %i.dcl, float %i.dcn)
  %i.dcp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dcq = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i135, float %i.dcp, float %i.dco)
  %i.dcr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.dcs = fadd float %i.dcr, %i.dcq
  %i.dct = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.dcu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.dcv = fmul float %.sroa.12.0.copyload.i.i134, %i.dcu
  %i.dcw = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i133, float %i.dct, float %i.dcv)
  %i.dcx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.dcy = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i135, float %i.dcx, float %i.dcw)
  %i.dcz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.dda = fadd float %i.dcz, %i.dcy
  %i.ddb = fdiv float 5.000000e-01, %i.dda        ; 2 uses
  %i.ddc = fmul float %i.dck, %i.ddb
  %i.ddd = fmul float %i.dcs, %i.ddb
  %i.dde = fadd float %i.ddd, 5.000000e-01
  %i.ddf = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ddc, i64 0
  %i.ddg = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dde, i64 1
  %i.ddh = fsub <2 x float> %i.ddf, %i.ddg
  %i.ddi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.ddj = fmul <2 x float> %i.ddi, %i.ddh
  %i.ddk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.ddl = fadd <2 x float> %i.ddk, %i.ddj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.ddm = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.ddn = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ddo = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ddp = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ddq = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ddr = getelementptr inbounds nuw i8, ptr %27, i64 24
  br label %bb.eq

bb.ep:                                            ; preds = %bb.ev
  %i.dds = load i32, ptr %i.e, align 16, !tbaa !52
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull align 4 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), float noundef 6.000000e+00, i32 noundef %i.dds, i32 noundef 32)
  %i.ddt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.ddu = trunc nuw i8 %i.ddt to i1
  br i1 %i.ddu, label %bb.ew, label %bb.ex

bb.eq:                                            ; preds = %bb.ev, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132
  %indvars.iv.i136 = phi i64 [ 0, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i132 ], [ %indvars.iv.next.i137, %bb.ev ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.ddv = trunc nuw nsw i64 %indvars.iv.i136 to i32
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %i.ddv, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  %i.ddw = load i8, ptr %i.f, align 1, !tbaa !47, !range !33, !noundef !34
  %i.ddx = trunc nuw i8 %i.ddw to i1
  br i1 %i.ddx, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.ddy = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.ddz = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.dea = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.deb = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.dec = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.ded = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.dee = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.def = load float, ptr %i.ddm, align 4, !tbaa !14 ; 2 uses
  %i.deg = load float, ptr %21, align 4, !tbaa !12 ; 2 uses
  %i.deh = load float, ptr %i.ddn, align 4, !tbaa !13 ; 2 uses
  %i.dei = fmul float %i.deg, 1.000000e-01
  %i.dej = fmul float %i.def, 1.000000e-01
  %i.dek = fmul float %i.deh, 1.000000e-01
  %i.del = insertelement <2 x float> poison, float %i.dej, i64 0
  %i.dem = insertelement <2 x float> %i.del, float %i.def, i64 1
  %i.den = shufflevector <4 x float> %i.ddy, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.deo = fmul <2 x float> %i.dem, %i.den        ; 2 uses
  %i.dep = shufflevector <2 x float> %i.deo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.deq = insertelement <2 x float> poison, float %i.dei, i64 0
  %i.der = insertelement <2 x float> %i.deq, float %i.deg, i64 1
end_hunk_5
begin_hunk_6_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.dga = fsub <2 x float> %i.dfy, %i.dfz
  %i.dgb = fmul <2 x float> %i.ded, %i.dga
  %i.dgc = fadd <2 x float> %i.dee, %i.dgb
  store <2 x float> %i.dgc, ptr %22, align 8
  %i.dgd = extractelement <4 x float> %i.dfu, i64 3
  %i.dge = fadd float %i.dgd, 5.000000e-01
  %i.dgf = shufflevector <4 x float> %i.dfu, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dgg = insertelement <2 x float> %i.dgf, float 1.000000e+00, i64 1
  %i.dgh = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dge, i64 1
  %i.dgi = fsub <2 x float> %i.dgg, %i.dgh
  %i.dgj = fmul <2 x float> %i.ded, %i.dgi
  %i.dgk = fadd <2 x float> %i.dee, %i.dgj
  store <2 x float> %i.dgk, ptr %23, align 8
  %i.dgl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i136
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.dgl, i64 4
  %i.dgn = load i32, ptr %i.dgm, align 4, !tbaa !52 ; 2 uses
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %23, i32 noundef %i.dgn, float noundef 3.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.dgo = load <2 x float>, ptr %23, align 8, !tbaa !10 ; 3 uses
  %i.dgp = fsub <2 x float> %i.ddl, %i.dgo        ; 4 uses
  %foldExtExtBinop267 = fmul <2 x float> %i.dgp, %i.dgp
  %i.dgq = extractelement <2 x float> %foldExtExtBinop267, i64 1
  %i.dgr = extractelement <2 x float> %i.dgp, i64 0 ; 2 uses
  %i.dgs = call noundef float @llvm.fmuladd.f32(float %i.dgr, float %i.dgr, float %i.dgq)
  %sqrt.i144 = call float @llvm.sqrt.f32(float %i.dgs)
  %i.dgt = insertelement <2 x float> poison, float %sqrt.i144, i64 0
  %i.dgu = shufflevector <2 x float> %i.dgt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dgv = fdiv <2 x float> %i.dgp, %i.dgu
  %i.dgw = fmul <2 x float> %i.dgv, splat (float 6.000000e+00) ; 5 uses
  %i.dgx = fsub <2 x float> %i.dgo, %i.dgw
  store <2 x float> %i.dgx, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.dgy = fadd <2 x float> %i.dgo, %i.dgw        ; 3 uses
  %i.dgz = shufflevector <2 x float> %i.dgw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.0.vec.insert.i83.i = fadd <2 x float> %i.dgz, %i.dgy
  %i.dha = shufflevector <2 x float> %i.dgw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dhb = fsub <2 x float> %i.dgy, %i.dha        ; 2 uses
  %i.dhc = shufflevector <2 x float> %.sroa.0.0.vec.insert.i83.i, <2 x float> %i.dhb, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dhc, ptr %25, align 8
  %shift272 = shufflevector <2 x float> %i.dgy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop273 = fadd <2 x float> %i.dgw, %shift272
  %.sroa.0.4.vec.insert.i86.i = shufflevector <2 x float> %i.dhb, <2 x float> %foldExtExtBinop273, <2 x i32> <i32 0, i32 2>
  store <2 x float> %.sroa.0.4.vec.insert.i86.i, ptr %26, align 8
  call void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef nonnull align 4 dereferenceable(8) %26, i32 noundef %i.dgn)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.dhd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %indvars.iv.i136
  %i.dhe = load float, ptr %i.dhd, align 4, !tbaa !10
  %i.dhf = fcmp olt float %i.dhe, 0.000000e+00
  br i1 %i.dhf, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr noundef nonnull align 4 dereferenceable(16) %21)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.eq
  %i.dhg = load i8, ptr %i.g, align 1, !tbaa !47, !range !33, !noundef !34
  %i.dhh = trunc nuw i8 %i.dhg to i1
  br i1 %i.dhh, label %.preheader.i140, label %bb.ev

.preheader.i140:                                  ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.dhi = load <4 x float>, ptr %19, align 16
  %i.dhj = shufflevector <4 x float> %i.dhi, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.dhk = load float, ptr %i.ddo, align 8, !tbaa !13
  %i.dhl = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.dhm = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.dhn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.dho = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.dhp = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.dhq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.dhr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.dhs = load <2 x float>, ptr %19, align 16, !tbaa !10 ; 2 uses
  %i.dht = load <2 x float>, ptr %20, align 8, !tbaa !10 ; 2 uses
  %i.dhu = shufflevector <2 x float> %i.dhs, <2 x float> %i.dht, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.dhv = fmul <4 x float> %i.dhu, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dhw = shufflevector <4 x float> %i.dhv, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dhx = fadd <4 x float> %i.dhv, %i.dhw
  %i.dhy = shufflevector <4 x float> %i.dhl, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.dhz = fmul <4 x float> %i.dhy, %i.dhx        ; 4 uses
  %i.dia = shufflevector <2 x float> %i.dhs, <2 x float> %i.dht, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.dib = fmul <4 x float> %i.dia, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dic = shufflevector <4 x float> %i.dib, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.did = fadd <4 x float> %i.dib, %i.dic
  %i.die = fmul <4 x float> %i.did, %i.dhy        ; 4 uses
  %i.dif = insertelement <4 x float> %i.dhj, float %i.dhk, i64 1
  %i.dig = shufflevector <4 x float> %i.dif, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dih = fmul <4 x float> %i.dig, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dii = shufflevector <4 x float> %i.dih, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dij = fadd <4 x float> %i.dih, %i.dii
  %i.dik = fmul <4 x float> %i.dhy, %i.dij        ; 5 uses
  %i.dil = shufflevector <4 x float> %i.dhn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dim = fmul <4 x float> %i.dhz, %i.dil
  %i.din = shufflevector <4 x float> %i.dhm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dio = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.die, <4 x float> %i.din, <4 x float> %i.dim)
  %i.dip = shufflevector <4 x float> %i.dho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.diq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dik, <4 x float> %i.dip, <4 x float> %i.dio)
  %i.dir = shufflevector <4 x float> %i.dhp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dis = fadd <4 x float> %i.dir, %i.diq
  %i.dit = fdiv <4 x float> splat (float 5.000000e-01), %i.dis ; 2 uses
  %i.diu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 3 uses
  %i.div = shufflevector <2 x float> %i.diu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.diw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 3 uses
  %i.dix = shufflevector <2 x float> %i.diw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.diy = shufflevector <4 x float> %i.dhz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.diz = fmul <4 x float> %i.diy, %i.dix
  %i.dja = shufflevector <4 x float> %i.die, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.djb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dja, <4 x float> %i.div, <4 x float> %i.diz) ; 2 uses
  %i.djc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 4 uses
  %i.djd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 432), align 8, !tbaa !16 ; 3 uses
  %i.dje = shufflevector <4 x float> %i.dik, <4 x float> %i.die, <4 x i32> <i32 2, i32 2, i32 7, i32 7>
  %i.djf = shufflevector <2 x float> %i.djc, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.djg = shufflevector <2 x float> %i.diu, <2 x float> %i.djc, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.djh = shufflevector <4 x float> %i.dhz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 poison, i32 poison>
  %i.dji = shufflevector <2 x float> %i.diw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.djj = fmul <4 x float> %i.djh, %i.dji
  %i.djk = shufflevector <4 x float> %i.djb, <4 x float> %i.djj, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.djl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dje, <4 x float> %i.djg, <4 x float> %i.djk) ; 2 uses
  %i.djm = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.djn = shufflevector <2 x float> %i.djm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.djo = shufflevector <4 x float> %i.dik, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.djp = insertelement <2 x float> %i.djc, float %i.djd, i64 1
  %i.djq = shufflevector <4 x float> %i.djb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.djr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.djo, <2 x float> %i.djp, <2 x float> %i.djq)
  %i.djs = shufflevector <4 x float> %i.djl, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.djt = shufflevector <2 x float> %i.djr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dju = shufflevector <4 x float> %i.djt, <4 x float> %i.djs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.djv = fadd <4 x float> %i.djn, %i.dju
  %i.djw = shufflevector <4 x float> %i.dit, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.djx = fmul <4 x float> %i.djv, %i.djw        ; 3 uses
  %i.djy = shufflevector <4 x float> %i.djx, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.djz = insertelement <2 x float> %i.djy, float 1.000000e+00, i64 1
  %i.dka = shufflevector <4 x float> %i.djx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dkb = insertelement <2 x float> %i.dka, float 1.000000e+00, i64 1
  %i.dkc = shufflevector <4 x float> %i.dik, <4 x float> %i.die, <4 x i32> <i32 3, i32 3, i32 4, i32 4>
  %i.dkd = shufflevector <2 x float> %i.djc, <2 x float> %i.diu, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.dke = insertelement <4 x float> %i.dkd, float %i.djd, i64 1
  %i.dkf = shufflevector <4 x float> %i.dhz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.dkg = shufflevector <2 x float> %i.diw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dkh = fmul <4 x float> %i.dkf, %i.dkg
  %i.dki = shufflevector <4 x float> %i.djl, <4 x float> %i.dkh, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.dkj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dkc, <4 x float> %i.dke, <4 x float> %i.dki)
  %i.dkk = shufflevector <4 x float> %i.dik, <4 x float> <float -0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 0>
  %i.dkl = shufflevector <4 x float> <float 0.000000e+00, float -0.000000e+00, float poison, float poison>, <4 x float> %i.djf, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.dkm = insertelement <4 x float> %i.dkl, float %i.djd, i64 3
  %i.dkn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dkk, <4 x float> %i.dkm, <4 x float> %i.dkj)
  %i.dko = fadd <4 x float> %i.djn, %i.dkn
  %i.dkp = shufflevector <4 x float> %i.dit, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 0, i32 0>
  %i.dkq = fmul <4 x float> %i.dko, %i.dkp        ; 3 uses
  %i.dkr = shufflevector <4 x float> %i.dkq, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dks = insertelement <2 x float> %i.dkr, float 1.000000e+00, i64 1
  %i.dkt = shufflevector <4 x float> %i.djx, <4 x float> %i.dkq, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dku = fadd <4 x float> %i.dkt, splat (float 5.000000e-01) ; 4 uses
  %i.dkv = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.dku, <2 x i32> <i32 0, i32 4>
  %i.dkw = fsub <2 x float> %i.djz, %i.dkv
  %i.dkx = fmul <2 x float> %i.dhq, %i.dkw
  %i.dky = fadd <2 x float> %i.dhr, %i.dkx
  store <2 x float> %i.dky, ptr %27, align 16
  %i.dkz = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.dku, <2 x i32> <i32 0, i32 5>
  %i.dla = fsub <2 x float> %i.dkb, %i.dkz
  %i.dlb = fmul <2 x float> %i.dhq, %i.dla
  %i.dlc = fadd <2 x float> %i.dhr, %i.dlb
  store <2 x float> %i.dlc, ptr %i.ddp, align 8
  %i.dld = shufflevector <4 x float> %i.dku, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.dle = insertelement <2 x float> %i.dld, float -5.000000e-01, i64 0
  %i.dlf = fsub <2 x float> %i.dks, %i.dle
  %i.dlg = fmul <2 x float> %i.dhq, %i.dlf
  %i.dlh = fadd <2 x float> %i.dhr, %i.dlg
  store <2 x float> %i.dlh, ptr %i.ddq, align 16
  %i.dli = shufflevector <4 x float> %i.dkq, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dlj = insertelement <2 x float> %i.dli, float 1.000000e+00, i64 1
  %i.dlk = shufflevector <4 x float> %i.dku, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.dll = insertelement <2 x float> %i.dlk, float -5.000000e-01, i64 0
  %i.dlm = fsub <2 x float> %i.dlj, %i.dll
  %i.dln = fmul <2 x float> %i.dhq, %i.dlm
  %i.dlo = fadd <2 x float> %i.dhr, %i.dln
  store <2 x float> %i.dlo, ptr %i.ddr, align 8
  %i.dlp = getelementptr inbounds nuw [4 x i8], ptr @_ZN8ImGuizmoL14directionColorE, i64 %indvars.iv.i136
  %i.dlq = load i32, ptr %i.dlp, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull %27, i32 noundef 4, i32 noundef %i.dlq, i32 noundef 1, float noundef 1.000000e+00)
  %i.dlr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i136
  %i.dls = getelementptr inbounds nuw i8, ptr %i.dlr, i64 16
  %i.dlt = load i32, ptr %i.dls, align 4, !tbaa !52
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull %27, i32 noundef 4, i32 noundef %i.dlt)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.ev

bb.ev:                                            ; preds = %.preheader.i140, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %indvars.iv.next.i137 = add nuw nsw i64 %indvars.iv.i136, 1 ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %indvars.iv.next.i137, 3
  br i1 %exitcond.not.i138, label %bb.ep, label %bb.eq, !llvm.loop !66

bb.ew:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %.sroa.22.0.copyload.i120.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8, !tbaa !10 ; 3 uses
  %i.dlu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16 ; 2 uses
  %i.dlv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.dlw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16 ; 2 uses
  %i.dlx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16 ; 2 uses
  %i.dly = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16 ; 2 uses
  %i.dlz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.dma = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.dmb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %.sroa.22.0.copyload.i125.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dmc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10 ; 2 uses
  %i.dmd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dme = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dmf = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 4 uses
  %i.dmg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i124.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 2 uses
  %i.dmh = shufflevector <2 x float> %i.dmc, <2 x float> %i.dmf, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dmi = shufflevector <2 x float> %i.dmf, <2 x float> %i.dmg, <4 x i32> <i32 1, i32 poison, i32 poison, i32 3>
  %i.dmj = insertelement <4 x float> %i.dmi, float %i.dlw, i64 1
  %i.dmk = insertelement <4 x float> %i.dmj, float %i.dlz, i64 2
  %i.dml = fmul <4 x float> %i.dmh, %i.dmk
  %i.dmm = shufflevector <2 x float> %i.dmc, <2 x float> %i.dmg, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.dmn = shufflevector <2 x float> %i.dmd, <2 x float> %i.dmf, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dmo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dmm, <4 x float> %i.dmn, <4 x float> %i.dml) ; 4 uses
  %i.dmp = extractelement <4 x float> %i.dmo, i64 0
  %i.dmq = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i120.i, float %i.dlu, float %i.dmp)
  %i.dmr = fadd float %i.dlv, %i.dmq
  %i.dms = extractelement <4 x float> %i.dmo, i64 1
  %i.dmt = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i120.i, float %i.dlx, float %i.dms)
  %i.dmu = fadd float %i.dly, %i.dmt
  %i.dmv = extractelement <4 x float> %i.dmo, i64 2
  %i.dmw = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i120.i, float %i.dma, float %i.dmv)
  %i.dmx = fadd float %i.dmb, %i.dmw
  %i.dmy = fdiv float 5.000000e-01, %i.dmx        ; 2 uses
  %i.dmz = fmul float %i.dmr, %i.dmy
  %i.dna = fmul float %i.dmu, %i.dmy
  %i.dnb = fadd float %i.dna, 5.000000e-01
  %i.dnc = extractelement <4 x float> %i.dmo, i64 3
  %i.dnd = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.dlu, float %i.dnc)
  %i.dne = fadd float %i.dlv, %i.dnd
  %i.dnf = fmul float %i.dlw, %.sroa.12.0.copyload.i124.i
  %i.dng = extractelement <2 x float> %i.dmg, i64 0 ; 2 uses
  %i.dnh = call float @llvm.fmuladd.f32(float %i.dng, float %i.dme, float %i.dnf)
  %i.dni = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.dlx, float %i.dnh)
  %i.dnj = fadd float %i.dly, %i.dni
  %i.dnk = fmul float %i.dlz, %.sroa.12.0.copyload.i124.i
  %i.dnl = extractelement <2 x float> %i.dmf, i64 0
  %i.dnm = call float @llvm.fmuladd.f32(float %i.dng, float %i.dnl, float %i.dnk)
  %i.dnn = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.dma, float %i.dnm)
  %i.dno = fadd float %i.dmb, %i.dnn
  %i.dnp = fdiv float 5.000000e-01, %i.dno        ; 2 uses
  %i.dnq = fmul float %i.dne, %i.dnp
  %i.dnr = fmul float %i.dnj, %i.dnp
  %i.dns = fadd float %i.dnr, 5.000000e-01
  %i.dnt = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dmz, i64 0
  %i.dnu = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dnb, i64 1
  %i.dnv = fsub <2 x float> %i.dnt, %i.dnu
  %i.dnw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.dnx = fmul <2 x float> %i.dnw, %i.dnv
  %i.dny = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.dnz = fadd <2 x float> %i.dny, %i.dnx        ; 2 uses
  store <2 x float> %i.dnz, ptr %28, align 8
  %i.doa = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dnq, i64 0
  %i.dob = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dns, i64 1
  %i.doc = fsub <2 x float> %i.doa, %i.dob
  %i.dod = fmul <2 x float> %i.dnw, %i.doc
  %i.doe = fadd <2 x float> %i.dny, %i.dod        ; 2 uses
  store <2 x float> %i.doe, ptr %29, align 8
  %i.dof = fsub <2 x float> %i.doe, %i.dnz        ; 4 uses
  %foldExtExtBinop275 = fmul <2 x float> %i.dof, %i.dof
  %i.dog = extractelement <2 x float> %foldExtExtBinop275, i64 1
  %i.doh = extractelement <2 x float> %i.dof, i64 0 ; 2 uses
  %i.doi = call float @llvm.fmuladd.f32(float %i.doh, float %i.doh, float %i.dog)
  %i.doj = fadd float %i.doi, 0.000000e+00
  %sqrt.i.i.i139 = call noundef float @llvm.sqrt.f32(float %i.doj)
  %i.dok = fdiv float 1.000000e+00, %sqrt.i.i.i139
  %i.dol = insertelement <2 x float> poison, float %i.dok, i64 0
  %i.dom = shufflevector <2 x float> %i.dol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.don = fmul <2 x float> %i.dof, %i.dom
  %i.doo = fmul <2 x float> %i.don, splat (float 5.000000e+00) ; 2 uses
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull align 4 dereferenceable(8) %28, float noundef 6.000000e+00, i32 noundef -1431655766, i32 noundef 0, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull align 4 dereferenceable(8) %29, float noundef 6.000000e+00, i32 noundef -1431655766, i32 noundef 0, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.dop = load <2 x float>, ptr %28, align 8, !tbaa !10
  %i.doq = fadd <2 x float> %i.dop, %i.doo
  store <2 x float> %i.doq, ptr %30, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  %i.dor = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.dos = fsub <2 x float> %i.dor, %i.doo
  store <2 x float> %i.dos, ptr %31, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31, i32 noundef -1431655766, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.dot = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  %i.dou = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10
  %i.dov = fsub <2 x float> %i.dot, %i.dou
  %i.dow = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10
  %i.dox = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8, !tbaa !10
  %i.doy = fsub <2 x float> %i.dow, %i.dox
  store <2 x float> %i.dov, ptr %32, align 8
  %i.doz = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <2 x float> %i.doy, ptr %i.doz, align 8
  %i.dpa = add nsw i32 %.0, -1                    ; 2 uses
  %i.dpb = mul nsw i32 %i.dpa, 3
  %i.dpc = sext i32 %i.dpa to i64
  %i.dpd = getelementptr inbounds [8 x i8], ptr @_ZN8ImGuizmoL19translationInfoMaskE, i64 %i.dpc
  %i.dpe = load ptr, ptr %i.dpd, align 8, !tbaa !77
  %i.dpf = sext i32 %i.dpb to i64
  %i.dpg = getelementptr inbounds [4 x i8], ptr @_ZN8ImGuizmoL20translationInfoIndexE, i64 %i.dpf ; 3 uses
  %i.dph = load i32, ptr %i.dpg, align 4, !tbaa !52
  %i.dpi = sext i32 %i.dph to i64
  %i.dpj = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dpi
  %i.dpk = load float, ptr %i.dpj, align 4, !tbaa !10
  %i.dpl = fpext float %i.dpk to double
  %i.dpm = getelementptr i8, ptr %i.dpg, i64 4
  %i.dpn = load i32, ptr %i.dpm, align 4, !tbaa !52
  %i.dpo = sext i32 %i.dpn to i64
  %i.dpp = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dpo
  %i.dpq = load float, ptr %i.dpp, align 4, !tbaa !10
  %i.dpr = fpext float %i.dpq to double
  %i.dps = getelementptr i8, ptr %i.dpg, i64 8
  %i.dpt = load i32, ptr %i.dps, align 4, !tbaa !52
  %i.dpu = sext i32 %i.dpt to i64
  %i.dpv = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dpu
  %i.dpw = load float, ptr %i.dpv, align 4, !tbaa !10
  %i.dpx = fpext float %i.dpw to double
  %i.dpy = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.h, i64 noundef 512, ptr noundef %i.dpe, double noundef %i.dpl, double noundef %i.dpr, double noundef %i.dpx) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.dpz = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.dqa = fadd <2 x float> %i.dpz, splat (float 1.500000e+01)
  store <2 x float> %i.dqa, ptr %33, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull align 4 dereferenceable(8) %33, i32 noundef -16777216, ptr noundef nonnull %i.h, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  %i.dqb = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.dqc = fadd <2 x float> %i.dqb, splat (float 1.400000e+01)
  store <2 x float> %i.dqc, ptr %34, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.dbe, ptr noundef nonnull align 4 dereferenceable(8) %34, i32 noundef -1, ptr noundef nonnull %i.h, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ey:                                            ; preds = %bb.dp
  %i.dqd = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.dqe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.dqf = trunc nuw i8 %i.dqe to i1
  br i1 %i.dqf, label %bb.ez, label %.preheader.preheader.i.i146

.preheader.preheader.i.i146:                      ; preds = %bb.ey
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i147

bb.ez:                                            ; preds = %bb.ey
  %i.dqg = icmp eq i32 %.0, 15
  %i.dqh = select i1 %i.dqg, i32 -1978629889, i32 -1
  store i32 %i.dqh, ptr %i.a, align 16, !tbaa !52
  %i.dqi = icmp eq i32 %.0, 12
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %i.dqi, label %.thread73.i.i, label %bb.fa

.thread73.i.i:                                    ; preds = %bb.ez
  store i32 -1978629889, ptr %i.dqj, align 4, !tbaa !52
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -16733696, ptr %i.dqk, align 8, !tbaa !52
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  store i32 -16777046, ptr %i.dqj, align 4, !tbaa !52
  %i.dql = icmp eq i32 %.0, 13
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.dql, label %.thread72.i.i, label %bb.fb

.thread72.i.i:                                    ; preds = %bb.fa
  store i32 -1978629889, ptr %i.dqm, align 8, !tbaa !52
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 -16733696, ptr %i.dqm, align 8, !tbaa !52
  %i.dqn = icmp eq i32 %.0, 14
  br i1 %i.dqn, label %.loopexit.loopexit53.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.thread72.i.i, %.thread73.i.i
  br label %.loopexit.loopexit53.i.i

.loopexit.loopexit53.i.i:                         ; preds = %bb.fc, %bb.fb
  %i.dqo = phi i32 [ -5636096, %bb.fc ], [ -1978629889, %bb.fb ]
  %i.dqp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dqo, ptr %i.dqp, align 4, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i147

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i147: ; preds = %.loopexit.loopexit53.i.i, %.preheader.preheader.i.i146
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) @__const._ZN8ImGuizmoL14DrawScaleGizmoEi.scaleDisplay, i64 16, i1 false)
  %i.dqq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dqr = trunc nuw i8 %i.dqq to i1
  br i1 %i.dqr, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), i64 16, i1 false), !tbaa.struct !17
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i147
  %i.dqs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dqt = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fm
  %i.dqu = load i32, ptr %i.a, align 16, !tbaa !52
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dqd, ptr noundef nonnull align 4 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), float noundef 6.000000e+00, i32 noundef %i.dqu, i32 noundef 32)
  %i.dqv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dqw = trunc nuw i8 %i.dqv to i1
  br i1 %i.dqw, label %bb.fn, label %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit

bb.fg:                                            ; preds = %bb.fm, %bb.fe
  %indvars.iv.i148 = phi i64 [ 0, %bb.fe ], [ %indvars.iv.next.i149, %bb.fm ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.dqx = trunc nuw nsw i64 %indvars.iv.i148 to i32
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %i.dqx, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.dqy = load i8, ptr %i.b, align 1, !tbaa !47, !range !33, !noundef !34
  %i.dqz = trunc nuw i8 %i.dqy to i1
  br i1 %i.dqz, label %bb.fh, label %bb.fm

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.dra = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 4 uses
  %i.drb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16 ; 2 uses
  %i.drc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16 ; 2 uses
  %i.drd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16 ; 2 uses
  %i.dre = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.drf = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.drg = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i148
  %i.drh = load float, ptr %i.drg, align 4, !tbaa !10
  %i.dri = load <2 x float>, ptr %12, align 8, !tbaa !10 ; 5 uses
  %i.drj = extractelement <2 x float> %i.dri, i64 0
  %i.drk = fmul float %i.drj, 1.000000e-01
  %i.drl = extractelement <2 x float> %i.dri, i64 1
  %i.drm = fmul float %i.drl, 1.000000e-01
  %i.drn = insertelement <2 x float> poison, float %i.drh, i64 0
  %i.dro = shufflevector <2 x float> %i.drn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.drp = fmul <2 x float> %i.dri, %i.dro        ; 3 uses
  %i.drq = load <2 x float>, ptr %i.dqs, align 8, !tbaa !10 ; 3 uses
  %i.drr = extractelement <2 x float> %i.drq, i64 0
  %i.drs = fmul float %i.drr, 1.000000e-01
  %i.drt = fmul float %i.drs, %i.dra              ; 3 uses
  %i.dru = fmul <2 x float> %i.drq, %i.dro        ; 2 uses
  %i.drv = shufflevector <2 x float> %i.dri, <2 x float> %i.drp, <2 x i32> <i32 1, i32 3>
  %i.drw = insertelement <2 x float> poison, float %i.dra, i64 0
  %i.drx = shufflevector <2 x float> %i.drw, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dry = fmul <2 x float> %i.drv, %i.drx        ; 4 uses
  %i.drz = shufflevector <2 x float> %i.dri, <2 x float> %i.drp, <2 x i32> <i32 0, i32 2>
  %i.dsa = fmul <2 x float> %i.drz, %i.drx        ; 4 uses
  %i.dsb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 2 uses
  %i.dsc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 400), align 8, !tbaa !16 ; 2 uses
  %i.dsd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 3 uses
  %i.dse = extractelement <2 x float> %i.dry, i64 0
  %i.dsf = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.drm, i64 0
  %i.dsg = shufflevector <2 x float> %i.dry, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dsh = insertelement <2 x float> %i.dsg, float %i.dra, i64 0
  %i.dsi = fmul <2 x float> %i.dsf, %i.dsh
  %i.dsj = shufflevector <2 x float> %i.dsi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dsk = extractelement <2 x float> %i.dsa, i64 0
  %i.dsl = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.drk, i64 0
  %i.dsm = shufflevector <2 x float> %i.dsa, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dsn = insertelement <2 x float> %i.dsm, float %i.dra, i64 0
  %i.dso = fmul <2 x float> %i.dsl, %i.dsn
  %i.dsp = shufflevector <2 x float> %i.dso, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dsq = shufflevector <2 x float> %i.dsb, <2 x float> %i.dsd, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dsr = shufflevector <2 x float> %i.drq, <2 x float> %i.dru, <2 x i32> <i32 0, i32 2>
  %i.dss = fmul <2 x float> %i.dsr, %i.drx        ; 3 uses
  %i.dst = insertelement <2 x float> poison, float %i.drb, i64 0
  %i.dsu = shufflevector <2 x float> %i.dst, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dsv = fmul <2 x float> %i.dry, %i.dsu
  %i.dsw = shufflevector <2 x float> %i.dsd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dsx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dsa, <2 x float> %i.dsw, <2 x float> %i.dsv)
  %i.dsy = insertelement <2 x float> poison, float %i.drc, i64 0
  %i.dsz = shufflevector <2 x float> %i.dsy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dta = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dss, <2 x float> %i.dsz, <2 x float> %i.dsx)
  %i.dtb = insertelement <2 x float> poison, float %i.drd, i64 0
  %i.dtc = shufflevector <2 x float> %i.dtb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dtd = fadd <2 x float> %i.dtc, %i.dta
  %i.dte = fdiv <2 x float> splat (float 5.000000e-01), %i.dtd ; 2 uses
  %i.dtf = extractelement <2 x float> %i.dte, i64 0 ; 2 uses
  %i.dtg = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 3 uses
  %i.dth = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 432), align 8, !tbaa !16 ; 2 uses
  %i.dti = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8, !tbaa !16
  %i.dtj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 2 uses
  %i.dtk = shufflevector <2 x float> %i.dsd, <2 x float> %i.dtj, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dtl = insertelement <4 x float> %i.dtk, float %i.drb, i64 2
  %i.dtm = shufflevector <4 x float> %i.dtl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dtn = fmul <4 x float> %i.dsj, %i.dtm
  %i.dto = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dsp, <4 x float> %i.dsq, <4 x float> %i.dtn) ; 4 uses
  %i.dtp = extractelement <4 x float> %i.dto, i64 0
  %i.dtq = extractelement <2 x float> %i.dtg, i64 0
  %i.dtr = call float @llvm.fmuladd.f32(float %i.drt, float %i.dtq, float %i.dtp)
  %i.dts = extractelement <4 x float> %i.dto, i64 1
  %i.dtt = call float @llvm.fmuladd.f32(float %i.drt, float %i.dth, float %i.dts)
  %i.dtu = extractelement <4 x float> %i.dto, i64 2
  %i.dtv = call float @llvm.fmuladd.f32(float %i.drt, float %i.drc, float %i.dtu)
  %i.dtw = fadd float %i.drd, %i.dtv
  %i.dtx = fdiv float 5.000000e-01, %i.dtw        ; 2 uses
  %i.dty = fmul float %i.dse, %i.dti
  %i.dtz = call float @llvm.fmuladd.f32(float %i.dsk, float %i.dsc, float %i.dty)
  %i.dua = shufflevector <2 x float> %i.dss, <2 x float> %i.dsa, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.dub = shufflevector <2 x float> %i.dsb, <2 x float> %i.dtg, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %i.duc = insertelement <4 x float> %i.dub, float %i.dsc, i64 3
  %i.dud = shufflevector <4 x float> %i.dto, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.due = insertelement <4 x float> %i.dud, float %i.dtz, i64 1
  %i.duf = shufflevector <2 x float> %i.dtj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dug = shufflevector <2 x float> %i.dry, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.duh = fmul <4 x float> %i.duf, %i.dug
  %i.dui = shufflevector <4 x float> %i.due, <4 x float> %i.duh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.duj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dua, <4 x float> %i.duc, <4 x float> %i.dui) ; 3 uses
  %i.duk = extractelement <4 x float> %i.duj, i64 0
  %i.dul = extractelement <4 x float> %i.duj, i64 1
  %i.dum = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 3 uses
  %i.dun = extractelement <2 x float> %i.dum, i64 0 ; 2 uses
  %i.duo = fadd float %i.dun, %i.dtr
  %i.dup = extractelement <2 x float> %i.dum, i64 1 ; 2 uses
  %i.duq = fadd float %i.dup, %i.dtt
  %i.dur = fmul float %i.duo, %i.dtx
  %i.dus = fmul float %i.duq, %i.dtx
  %i.dut = fadd float %i.dus, 5.000000e-01
  %i.duu = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dur, i64 0
  %i.duv = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dut, i64 1
  %i.duw = fsub <2 x float> %i.duu, %i.duv
  %i.dux = fmul <2 x float> %i.dre, %i.duw
  %i.duy = fadd <2 x float> %i.drf, %i.dux
  store <2 x float> %i.duy, ptr %13, align 8
  %i.duz = fadd float %i.dun, %i.duk
  %i.dva = fadd float %i.dup, %i.dul
  %i.dvb = fmul float %i.duz, %i.dtf
  %i.dvc = fmul float %i.dva, %i.dtf
  %i.dvd = fadd float %i.dvc, 5.000000e-01
  %i.dve = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dvb, i64 0
  %i.dvf = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dvd, i64 1
  %i.dvg = fsub <2 x float> %i.dve, %i.dvf
  %i.dvh = fmul <2 x float> %i.dre, %i.dvg
  %i.dvi = fadd <2 x float> %i.drf, %i.dvh
  store <2 x float> %i.dvi, ptr %14, align 8
  %i.dvj = shufflevector <2 x float> %i.dss, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dvk = insertelement <2 x float> %i.dtg, float %i.dth, i64 1
  %i.dvl = shufflevector <4 x float> %i.duj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dvm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dvj, <2 x float> %i.dvk, <2 x float> %i.dvl)
  %i.dvn = fadd <2 x float> %i.dum, %i.dvm
  %i.dvo = shufflevector <2 x float> %i.dte, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dvp = fmul <2 x float> %i.dvn, %i.dvo        ; 2 uses
  %i.dvq = extractelement <2 x float> %i.dvp, i64 1
  %i.dvr = fadd float %i.dvq, 5.000000e-01
  %i.dvs = insertelement <2 x float> %i.dvp, float 1.000000e+00, i64 1
  %i.dvt = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dvr, i64 1
  %i.dvu = fsub <2 x float> %i.dvs, %i.dvt
  %i.dvv = fmul <2 x float> %i.dre, %i.dvu
  %i.dvw = fadd <2 x float> %i.drf, %i.dvv
  store <2 x float> %i.dvw, ptr %15, align 8
  %i.dvx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dvy = trunc nuw i8 %i.dvx to i1
  br i1 %i.dvy, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dqd, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef -12566464, float noundef 3.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dqd, ptr noundef nonnull align 4 dereferenceable(8) %14, float noundef 6.000000e+00, i32 noundef -12566464, i32 noundef 0)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.dvz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i148
  %i.dwa = getelementptr inbounds nuw i8, ptr %i.dvz, i64 4
  %i.dwb = load i32, ptr %i.dwa, align 4, !tbaa !52 ; 2 uses
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dqd, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.dwb, float noundef 3.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dqd, ptr noundef nonnull align 4 dereferenceable(8) %15, float noundef 6.000000e+00, i32 noundef %i.dwb, i32 noundef 0)
  %i.dwc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %indvars.iv.i148
  %i.dwd = load float, ptr %i.dwc, align 4, !tbaa !10
  %i.dwe = fcmp olt float %i.dwd, 0.000000e+00
  br i1 %i.dwe, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store <2 x float> %i.drp, ptr %16, align 8
  store <2 x float> %i.dru, ptr %i.dqt, align 8
  call fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr noundef nonnull align 4 dereferenceable(16) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %indvars.iv.next.i149 = add nuw nsw i64 %indvars.iv.i148, 1 ; 2 uses
  %exitcond.not.i150 = icmp eq i64 %indvars.iv.next.i149, 3
  br i1 %exitcond.not.i150, label %bb.ff, label %bb.fg, !llvm.loop !67

bb.fn:                                            ; preds = %bb.ff
  %.sroa.02.0.copyload.i66.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i67.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i68.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dwf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dwg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.dwh = fmul float %.sroa.12.0.copyload.i67.i, %i.dwg
  %i.dwi = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.dwf, float %i.dwh)
  %i.dwj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dwk = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.dwj, float %i.dwi)
  %i.dwl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.dwm = fadd float %i.dwl, %i.dwk
  %i.dwn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dwo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.dwp = fmul float %.sroa.12.0.copyload.i67.i, %i.dwo
  %i.dwq = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.dwn, float %i.dwp)
  %i.dwr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dws = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.dwr, float %i.dwq)
  %i.dwt = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.dwu = fadd float %i.dwt, %i.dws
  %i.dwv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.dww = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.dwx = fmul float %.sroa.12.0.copyload.i67.i, %i.dww
  %i.dwy = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i66.i, float %i.dwv, float %i.dwx)
  %i.dwz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.dxa = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i68.i, float %i.dwz, float %i.dwy)
  %i.dxb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.dxc = fadd float %i.dxb, %i.dxa
  %i.dxd = fdiv float 5.000000e-01, %i.dxc        ; 2 uses
  %i.dxe = fmul float %i.dwm, %i.dxd
  %i.dxf = fmul float %i.dwu, %i.dxd
  %i.dxg = fadd float %i.dxf, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.dxh = add nsw i32 %.0, -12                   ; 2 uses
  %i.dxi = mul nsw i32 %i.dxh, 3
  %i.dxj = sext i32 %i.dxh to i64
  %i.dxk = getelementptr inbounds [8 x i8], ptr @_ZN8ImGuizmoL13scaleInfoMaskE, i64 %i.dxj
  %i.dxl = load ptr, ptr %i.dxk, align 8, !tbaa !77
  %i.dxm = sext i32 %i.dxi to i64
  %i.dxn = getelementptr inbounds [4 x i8], ptr @_ZN8ImGuizmoL20translationInfoIndexE, i64 %i.dxm
  %i.dxo = load i32, ptr %i.dxn, align 4, !tbaa !52
  %i.dxp = sext i32 %i.dxo to i64
  %i.dxq = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.dxp
  %i.dxr = load float, ptr %i.dxq, align 4, !tbaa !10
  %i.dxs = fpext float %i.dxr to double
  %i.dxt = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dxe, i64 0
  %i.dxu = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dxg, i64 1
  %i.dxv = fsub <2 x float> %i.dxt, %i.dxu
  %i.dxw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.dxx = fmul <2 x float> %i.dxw, %i.dxv
  %i.dxy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.dxz = fadd <2 x float> %i.dxy, %i.dxx        ; 2 uses
  %i.dya = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.d, i64 noundef 512, ptr noundef %i.dxl, double noundef %i.dxs) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.dyb = fadd <2 x float> %i.dxz, splat (float 1.500000e+01)
  store <2 x float> %i.dyb, ptr %17, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.dqd, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef -16777216, ptr noundef nonnull %i.d, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.dyc = fadd <2 x float> %i.dxz, splat (float 1.400000e+01)
  store <2 x float> %i.dyc, ptr %18, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.dqd, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef -1, ptr noundef nonnull %i.d, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit

_ZN8ImGuizmoL14DrawScaleGizmoEi.exit:             ; preds = %bb.ff, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit:       ; preds = %bb.do, %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit, %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit, %bb.dp, %bb.ei, %bb.ex, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo8DrawCubeEPKfS1_S1_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %3 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 6 uses
  %4 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 16 uses
  %5 = alloca [4 x %struct.ImVec2], align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %0, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.y = load <16 x float>, ptr %4, align 4, !tbaa !10 ; 8 uses
  %i.z = load float, ptr %i.x, align 4, !tbaa !10
  %i.aa = load float, ptr %i.w, align 4, !tbaa !10
  %i.ab = load float, ptr %i.v, align 4, !tbaa !10
  %i.ac = load <4 x float>, ptr %i.u, align 4
  %i.ad = load <4 x float>, ptr %i.t, align 4
  %i.ae = load <4 x float>, ptr %i.s, align 4
  %i.af = load <4 x float>, ptr %i.r, align 4
  %i.ag = load <4 x float>, ptr %i.q, align 4
  %i.ah = load <4 x float>, ptr %i.p, align 4
  %i.ai = load <4 x float>, ptr %i.f, align 4
  %i.aj = load <4 x float>, ptr %i.d, align 4
  %i.ak = load <4 x float>, ptr %i.b, align 4
  %i.al = insertelement <4 x float> poison, float %i.k, i64 0
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 13, i32 9, i32 1, i32 5>
  %i.ao = fmul <4 x float> %i.am, %i.an
  %i.ap = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 12, i32 8, i32 0, i32 4>
  %i.aq = insertelement <4 x float> poison, float %i.i, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.ar, <4 x float> %i.ao)
  %i.at = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 14, i32 10, i32 2, i32 6>
  %i.au = insertelement <4 x float> poison, float %i.m, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.av, <4 x float> %i.as)
  %i.ax = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 4 uses
  %i.ay = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.az = load <2 x float>, ptr %i.e, align 4, !tbaa !10 ; 4 uses
  %i.ba = load <2 x float>, ptr %i.g, align 4, !tbaa !10 ; 4 uses
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bc = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.bc, %i.ay
  %i.be = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.ax, <2 x float> %i.bd)
  %i.bg = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.az, <2 x float> %i.bf)
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.bb, <4 x float> %i.bi) ; 2 uses
  %i.bl = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.ay, %i.bl
  %i.bn = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.ax, <2 x float> %i.bm)
  %i.bp = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.az, <2 x float> %i.bo)
  %i.br = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.ba, <2 x float> %i.bq) ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bu = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.ay, %i.bu
  %i.bw = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 8, i32 8>
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.ax, <2 x float> %i.bv)
  %i.by = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.az, <2 x float> %i.bx)
  %i.ca = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.ba, <2 x float> %i.bz) ; 2 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cd = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.ay, %i.ce
  %i.cg = shufflevector <16 x float> %i.y, <16 x float> poison, <2 x i32> <i32 12, i32 12>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ax, <2 x float> %i.cf)
  %i.ci = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.az, <2 x float> %i.ch)
  %i.cl = insertelement <2 x float> poison, float %i.z, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.ba, <2 x float> %i.ck) ; 2 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cp = shufflevector <16 x float> %i.y, <16 x float> poison, <4 x i32> <i32 15, i32 11, i32 3, i32 7>
  %i.cq = insertelement <4 x float> poison, float %i.o, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cr, <4 x float> %i.aw) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.db = load float, ptr %i.da, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.df = load float, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dj = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dl = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dm = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dn = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.do = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dp = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dq = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.043204 = phi i32 [ 0, %bb.a ], [ %i.mk, %.loopexit ] ; 5 uses
  %.urem = add nsw i32 %.043204, -3
  %.cmp = icmp samesign ult i32 %.043204, 3
  %i.dr = select i1 %.cmp, i32 %.043204, i32 %.urem ; 3 uses
  %i.ds = add nuw nsw i32 %i.dr, 1                ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 3
  %i.du = select i1 %i.dt, i32 0, i32 %i.ds
  %i.dv = add nuw nsw i32 %i.dr, 2
  %i.dw = urem i32 %i.dv, 3
  %i.dx = icmp samesign ugt i32 %.043204, 2
  %i.dy = select i1 %i.dx, float -1.000000e+00, float 1.000000e+00 ; 13 uses
  %i.dz = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.dz ; 2 uses
  %i.eb = zext nneg i32 %i.du to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ef = zext nneg i32 %i.dw to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 404), align 4, !tbaa !16 ; 4 uses
  %i.ej = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 420), align 4, !tbaa !16 ; 4 uses
  %i.ek = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 436), align 4, !tbaa !16 ; 4 uses
  %i.el = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 452), align 4, !tbaa !16 ; 4 uses
  %i.em = load float, ptr %i.ed, align 4, !tbaa !14 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN8ImGuizmo8DrawCubeEPKfS1_S1_:bb.a
  %i.fv = fmul float %i.fu, 5.000000e-01
  %i.fw = fmul float %i.ft, 5.000000e-01
  %i.fx = fmul float %i.fr, 5.000000e-01
  %i.fy = fmul float %i.dy, %i.fv                 ; 2 uses
  %i.fz = fmul float %i.dy, %i.fw                 ; 2 uses
  %i.ga = fmul float %i.dy, %i.fx                 ; 2 uses
  %i.gb = fmul float %i.fz, %i.ej
  %i.gc = call float @llvm.fmuladd.f32(float %i.fy, float %i.ei, float %i.gb)
  %i.gd = call float @llvm.fmuladd.f32(float %i.ga, float %i.ek, float %i.gc)
  %i.ge = fadd float %i.el, %i.gd
  %i.gf = fcmp uge float %i.ge, 1.000000e-03
  br i1 %i.gf, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.gg = fmul float %i.ey, 5.000000e-01
  %i.gh = fmul float %i.ez, 5.000000e-01
  %i.gi = fmul float %i.fb, 5.000000e-01
  %i.gj = fmul float %i.dy, %i.gg                 ; 3 uses
  %i.gk = fmul float %i.dy, %i.gh                 ; 3 uses
  %i.gl = fmul float %i.dy, %i.gi                 ; 3 uses
  %i.gm = fmul float %i.gk, %i.ej
  %i.gn = call float @llvm.fmuladd.f32(float %i.gj, float %i.ei, float %i.gm)
  %i.go = call float @llvm.fmuladd.f32(float %i.gl, float %i.ek, float %i.gn)
  %i.gp = fadd float %i.el, %i.go
  %i.gq = fcmp uge float %i.gp, 1.000000e-03
  br i1 %i.gq, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.gr = fmul float %i.fc, 5.000000e-01
  %i.gs = fmul float %i.fd, 5.000000e-01
  %i.gt = fmul float %i.fe, 5.000000e-01
  %i.gu = fmul float %i.dy, %i.gr                 ; 3 uses
  %i.gv = fmul float %i.dy, %i.gs                 ; 3 uses
  %i.gw = fmul float %i.dy, %i.gt                 ; 3 uses
  %i.gx = fmul float %i.gv, %i.ej
  %i.gy = call float @llvm.fmuladd.f32(float %i.gu, float %i.ei, float %i.gx)
  %i.gz = call float @llvm.fmuladd.f32(float %i.gw, float %i.ek, float %i.gy)
  %i.ha = fadd float %i.el, %i.gz
  %i.hb = fcmp uge float %i.ha, 1.000000e-03
  br i1 %i.hb, label %.critedge.loopexit, label %.loopexit

.critedge.loopexit:                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.hc = shufflevector <3 x float> %i.fi, <3 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hd = insertelement <4 x float> %i.hc, float %i.fz, i64 1 ; 2 uses
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.hf = fmul <4 x float> %i.bt, %i.he
  %i.hg = insertelement <4 x float> %i.hd, float %i.gk, i64 2
  %i.hh = insertelement <4 x float> %i.hg, float %i.gv, i64 3
  %i.hi = fmul <4 x float> %i.dm, %i.hh
  %i.hj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.hk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.hl = shufflevector <3 x float> %i.fi, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hm = insertelement <4 x float> %i.hl, float %i.fy, i64 1 ; 2 uses
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ho = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hn, <4 x float> %i.bk, <4 x float> %i.hf)
  %i.hp = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.hq = insertelement <4 x float> %i.hp, float %i.gv, i64 1
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hs = fmul <4 x float> %i.do, %i.hr
  %i.ht = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.hu = insertelement <4 x float> %i.ht, float %i.gu, i64 1
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.dn, <4 x float> %i.hs)
  %i.hx = insertelement <4 x float> %i.hm, float %i.gj, i64 2
  %i.hy = insertelement <4 x float> %i.hx, float %i.gu, i64 3
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hy, <4 x float> %i.dl, <4 x float> %i.hi)
  %i.ia = shufflevector <3 x float> %i.fi, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ib = insertelement <4 x float> %i.ia, float %i.ga, i64 1 ; 2 uses
  %i.ic = insertelement <4 x float> %i.ib, float %i.gl, i64 2
  %i.id = insertelement <4 x float> %i.ic, float %i.gw, i64 3
  %i.ie = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.id, <4 x float> %i.dk, <4 x float> %i.hz)
  %i.if = fadd <4 x float> %i.dj, %i.ie
  %i.ig = fdiv <4 x float> splat (float 5.000000e-01), %i.if ; 2 uses
  %i.ih = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> %i.cc, <4 x float> %i.ho)
  %i.ij = fadd <4 x float> %i.co, %i.ii
  %i.ik = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.il = fmul <4 x float> %i.ij, %i.ik           ; 3 uses
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.in = insertelement <2 x float> %i.im, float 1.000000e+00, i64 1
  %i.io = shufflevector <4 x float> %i.il, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ip = insertelement <2 x float> %i.io, float 1.000000e+00, i64 1
  %i.iq = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.ir = insertelement <4 x float> %i.iq, float %i.gw, i64 1
  %i.is = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.it = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.is, <4 x float> %i.dq, <4 x float> %i.hw)
  %i.iu = fadd <4 x float> %i.dp, %i.it
  %i.iv = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.iw = fmul <4 x float> %i.iu, %i.iv           ; 3 uses
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.iy = insertelement <2 x float> %i.ix, float 1.000000e+00, i64 1
  %i.iz = shufflevector <4 x float> %i.il, <4 x float> %i.iw, <4 x i32> <i32 1, i32 3, i32 6, i32 7>
  %i.ja = fadd <4 x float> %i.iz, splat (float 5.000000e-01) ; 4 uses
  %i.jb = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.ja, <2 x i32> <i32 0, i32 4>
  %i.jc = fsub <2 x float> %i.in, %i.jb
  %i.jd = fmul <2 x float> %i.hj, %i.jc
  %i.je = fadd <2 x float> %i.hk, %i.jd
  store <2 x float> %i.je, ptr %5, align 16
  %i.jf = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.ja, <2 x i32> <i32 0, i32 5>
  %i.jg = fsub <2 x float> %i.ip, %i.jf
  %i.jh = fmul <2 x float> %i.hj, %i.jg
  %i.ji = fadd <2 x float> %i.hk, %i.jh
  store <2 x float> %i.ji, ptr %i.dg, align 8
  %i.jj = shufflevector <4 x float> %i.ja, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.jk = insertelement <2 x float> %i.jj, float -5.000000e-01, i64 0
  %i.jl = fsub <2 x float> %i.iy, %i.jk
  %i.jm = fmul <2 x float> %i.hj, %i.jl
  %i.jn = fadd <2 x float> %i.hk, %i.jm
  store <2 x float> %i.jn, ptr %i.dh, align 16
  %i.jo = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.iw, <2 x i32> <i32 5, i32 1>
  %i.jp = shufflevector <4 x float> %i.ja, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.jq = insertelement <2 x float> %i.jp, float -5.000000e-01, i64 0
  %i.jr = fsub <2 x float> %i.jo, %i.jq
  %i.js = fmul <2 x float> %i.hj, %i.jr
  %i.jt = fadd <2 x float> %i.hk, %i.js
  store <2 x float> %i.jt, ptr %i.di, align 8
  %i.ju = load float, ptr %2, align 4, !tbaa !16  ; 2 uses
  %i.jv = load float, ptr %i.ct, align 4, !tbaa !16 ; 2 uses
  %i.jw = fmul float %i.fj, %i.jv
  %i.jx = call float @llvm.fmuladd.f32(float %i.fl, float %i.ju, float %i.jw)
  %i.jy = load float, ptr %i.cu, align 4, !tbaa !16 ; 2 uses
  %i.jz = call float @llvm.fmuladd.f32(float %i.fn, float %i.jy, float %i.jx)
  %i.ka = load float, ptr %i.cv, align 4, !tbaa !16
  %i.kb = fadd float %i.ka, %i.jz
  %i.kc = load <2 x float>, ptr %i.cw, align 4, !tbaa !16 ; 3 uses
  %i.kd = load <2 x float>, ptr %i.cx, align 4, !tbaa !16 ; 3 uses
  %i.ke = shufflevector <3 x float> %i.fi, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kf = fmul <2 x float> %i.ke, %i.kd
  %i.kg = shufflevector <3 x float> %i.fi, <3 x float> poison, <2 x i32> zeroinitializer
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> %i.kc, <2 x float> %i.kf)
  %i.ki = load <2 x float>, ptr %i.cy, align 4, !tbaa !16 ; 3 uses
  %i.kj = shufflevector <3 x float> %i.fi, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kj, <2 x float> %i.ki, <2 x float> %i.kh)
  %i.kl = load <2 x float>, ptr %i.cz, align 4, !tbaa !16
  %i.km = fadd <2 x float> %i.kl, %i.kk           ; 2 uses
  %i.kn = fmul float %i.dy, %i.eu                 ; 3 uses
  %i.ko = fmul float %i.dy, %i.em                 ; 3 uses
  %i.kp = fmul float %i.dy, %i.ew                 ; 3 uses
  %i.kq = fmul float %i.ko, %i.jv
  %i.kr = call float @llvm.fmuladd.f32(float %i.kn, float %i.ju, float %i.kq)
  %i.ks = call float @llvm.fmuladd.f32(float %i.kp, float %i.jy, float %i.kr) ; 2 uses
  %i.kt = extractelement <2 x float> %i.kd, i64 0
  %i.ku = fmul float %i.ko, %i.kt
  %i.kv = extractelement <2 x float> %i.kc, i64 0
  %i.kw = call float @llvm.fmuladd.f32(float %i.kn, float %i.kv, float %i.ku)
  %i.kx = extractelement <2 x float> %i.ki, i64 0
  %i.ky = call float @llvm.fmuladd.f32(float %i.kp, float %i.kx, float %i.kw)
  %i.kz = extractelement <2 x float> %i.kd, i64 1
  %i.la = fmul float %i.ko, %i.kz
  %i.lb = extractelement <2 x float> %i.kc, i64 1
  %i.lc = call float @llvm.fmuladd.f32(float %i.kn, float %i.lb, float %i.la)
  %i.ld = extractelement <2 x float> %i.ki, i64 1
  %i.le = call float @llvm.fmuladd.f32(float %i.kp, float %i.ld, float %i.lc) ; 2 uses
  %i.lf = fsub float %i.kb, %i.db                 ; 2 uses
  %i.lg = extractelement <2 x float> %i.km, i64 0
  %i.lh = fsub float %i.lg, %i.dd
  %i.li = extractelement <2 x float> %i.km, i64 1
  %i.lj = fsub float %i.li, %i.df                 ; 2 uses
  %i.lk = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.ll = insertelement <2 x float> %i.lk, float %i.lh, i64 1 ; 3 uses
  %i.lm = fmul <2 x float> %i.ll, %i.ll
  %i.ln = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.lo = insertelement <2 x float> %i.ln, float %i.lf, i64 1 ; 2 uses
  %i.lp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.lo, <2 x float> %i.lm)
  %i.lq = insertelement <2 x float> poison, float %i.le, i64 0
  %i.lr = insertelement <2 x float> %i.lq, float %i.lj, i64 1 ; 2 uses
  %i.ls = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.lr, <2 x float> %i.lp)
  %i.lt = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ls)
  %i.lu = fdiv <2 x float> splat (float 1.000000e+00), %i.lt ; 3 uses
  %i.lv = extractelement <2 x float> %i.lu, i64 1 ; 2 uses
  %i.lw = fmul float %i.lf, %i.lv
  %i.lx = fmul float %i.lj, %i.lv
  %i.ly = extractelement <2 x float> %i.lu, i64 0 ; 2 uses
  %i.lz = fmul float %i.ks, %i.ly
  %i.ma = fmul <2 x float> %i.ll, %i.lu           ; 2 uses
  %i.mb = fmul float %i.le, %i.ly
  %shift = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop248 = fmul <2 x float> %i.ma, %shift
  %i.mc = extractelement <2 x float> %foldExtExtBinop248, i64 0
  %i.md = call float @llvm.fmuladd.f32(float %i.lw, float %i.lz, float %i.mc)
  %i.me = call noundef float @llvm.fmuladd.f32(float %i.lx, float %i.mb, float %i.md)
  %i.mf = fcmp ogt float %i.me, 0.000000e+00
  br i1 %i.mf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.loopexit
  %i.mg = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr @_ZN8ImGuizmoL14directionColorE, i64 %i.dz
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !52
  %i.mj = or i32 %i.mi, 8421504
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.mg, ptr noundef nonnull %5, i32 noundef 4, i32 noundef %i.mj)
  br label %bb.h

bb.h:                                             ; preds = %.critedge.loopexit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.h
  %i.mk = add nuw nsw i32 %.043204, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.mk, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !78
}

declare void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo8DrawGridEPKfS1_S1_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3) local_unnamed_addr #13 {
bb.a:
  %4 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 12 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = load float, ptr %i.m, align 4, !tbaa !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 8, !tbaa !10 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.u = load <2 x float>, ptr %i.c, align 8, !tbaa !10 ; 3 uses
  %i.v = load <4 x float>, ptr %i.e, align 4
  %i.w = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.h, i64 0 ; 2 uses
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.y = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.z = shufflevector <4 x float> %i.y, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aa = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.l, i64 0 ; 2 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ac = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ae = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.n, i64 0 ; 2 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ag = load <8 x float>, ptr %i.q, align 8, !tbaa !10 ; 5 uses
  %i.ah = load float, ptr %i.s, align 4, !tbaa !10
  %i.ai = load <2 x float>, ptr %4, align 8, !tbaa !10 ; 3 uses
  %i.aj = load float, ptr %i.a, align 4, !tbaa !10
  %i.ak = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.am = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ao = load <2 x float>, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aq = load <2 x float>, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.as = fmul float %i.aj, %i.j
  %i.at = load <2 x float>, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.au = shufflevector <2 x float> %i.ai, <2 x float> %i.at, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.av = fmul <4 x float> %i.an, %i.au
  %i.aw = shufflevector <8 x float> %i.ag, <8 x float> poison, <2 x i32> <i32 4, i32 0> ; 2 uses
  %i.ax = shufflevector <2 x float> %i.ai, <2 x float> %i.aw, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.al, <4 x float> %i.av)
  %i.az = shufflevector <2 x float> %i.u, <2 x float> %i.at, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.ap, <4 x float> %i.ay)
  %i.bb = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 6, i32 7>
  %i.bd = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, float %i.as, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.x, <4 x float> %i.be)
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.ab, <4 x float> %i.bf)
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.af, <4 x float> %i.bg) ; 2 uses
  %i.bi = insertelement <4 x float> %i.v, float %i.ah, i64 1
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %i.ar, <4 x float> %i.ba) ; 6 uses
  %i.bl = load <3 x float>, ptr %i.t, align 4, !tbaa !10 ; 3 uses
  %i.bm = shufflevector <3 x float> %i.bl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.am, %i.bm
  %i.bo = shufflevector <8 x float> %i.ag, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.ak, <2 x float> %i.bn)
  %i.bq = shufflevector <3 x float> %i.bl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.ao, <2 x float> %i.bp)
  %i.bs = shufflevector <3 x float> %i.bl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.aq, <2 x float> %i.br) ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bv = fcmp ult float %3, 0.000000e+00
  br i1 %i.bv, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.bw = fneg float %3                           ; 5 uses
  %i.bx = shufflevector <8 x float> %i.ag, <8 x float> poison, <2 x i32> <i32 7, i32 3>
  %i.by = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <8 x float> %i.ag, <8 x float> poison, <2 x i32> <i32 6, i32 2>
  %i.ca = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x float> poison, float %i.j, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = shufflevector <8 x float> %i.ag, <8 x float> poison, <2 x i32> <i32 5, i32 1>
  %i.cf = fmul <2 x float> %i.cd, %i.ce
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.cb, <2 x float> %i.cf)
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.cg)
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.by, <2 x float> %i.ch) ; 2 uses
  %i.cj = extractelement <4 x float> %i.p, i64 1
  %i.ck = fmul float %i.j, %i.cj
  %i.cl = extractelement <4 x float> %i.p, i64 0
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.h, float %i.ck)
  %i.cn = extractelement <4 x float> %i.p, i64 2
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.l, float %i.cm)
  %i.cp = extractelement <4 x float> %i.p, i64 3
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.n, float %i.co)
  %i.cr = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x float> %i.am, %i.cr
  %i.ct = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.ak, <2 x float> %i.cs)
  %i.cv = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.ao, <2 x float> %i.cu)
  %i.cx = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.aq, <2 x float> %i.cw)
  %i.cz = fmul <2 x float> %i.cy, zeroinitializer ; 4 uses
  %i.da = extractelement <4 x float> %i.bk, i64 0
  %i.db = extractelement <2 x float> %i.cz, i64 0
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.da, float %i.db)
  %i.dd = extractelement <4 x float> %i.bk, i64 2
  %i.de = extractelement <2 x float> %i.cz, i64 1
  %i.df = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.dd, float %i.de)
  %i.dg = insertelement <2 x float> poison, float %3, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.di, <2 x float> %i.cz)
  %i.dk = fmul float %i.cq, 0.000000e+00
  %i.dl = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %3, i64 1 ; 2 uses
  %i.dn = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> zeroinitializer
  %i.do = insertelement <2 x float> poison, float %i.dk, i64 0 ; 2 uses
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dn, <2 x float> %i.dp)
  %i.dr = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ds = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dt = shufflevector <2 x float> %i.do, <2 x float> %i.dq, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.du = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.bk, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.dw = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.dx = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %3, i64 1
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ea = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.eb = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ec = insertelement <4 x float> %i.dw, float %i.dc, i64 1
  %i.ed = insertelement <4 x float> %i.ec, float %i.df, i64 3
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.098 = phi float [ %i.bw, %.lr.ph ], [ %i.gi, %bb.b ] ; 4 uses
  %i.ee = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ef = insertelement <4 x float> poison, float %.098, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eg, <4 x float> %i.bk, <4 x float> %i.ed) ; 2 uses
  %i.ei = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.ej = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ek = insertelement <2 x float> poison, float %.098, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dv, <2 x float> %i.dj)
  %i.en = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, float %.098, i64 0 ; 2 uses
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.bh, <4 x float> %i.dt)
  %i.eq = shufflevector <4 x float> %i.du, <4 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.er = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eq, <4 x float> %i.ds, <4 x float> %i.ep)
  %i.es = fadd <4 x float> %i.dr, %i.er
  %i.et = fdiv <4 x float> splat (float 5.000000e-01), %i.es ; 2 uses
  %i.eu = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.ea, <4 x float> %i.eu)
  %i.ew = fadd <4 x float> %i.bu, %i.ev
  %i.ex = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ey = fmul <4 x float> %i.ew, %i.ex           ; 3 uses
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fa = insertelement <2 x float> %i.ez, float 1.000000e+00, i64 1
  %i.fb = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.ey, <2 x i32> <i32 5, i32 1>
  %i.fc = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fd = shufflevector <4 x float> %i.eh, <4 x float> %i.fc, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.fe = fadd <4 x float> %i.eb, %i.fd
  %i.ff = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.fg = fmul <4 x float> %i.fe, %i.ff           ; 3 uses
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fi = insertelement <2 x float> %i.fh, float 1.000000e+00, i64 1
  %i.fj = shufflevector <4 x float> %i.ey, <4 x float> %i.fg, <4 x i32> <i32 2, i32 3, i32 5, i32 7>
  %i.fk = fadd <4 x float> %i.fj, splat (float 5.000000e-01) ; 4 uses
  %i.fl = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.fk, <2 x i32> <i32 0, i32 4>
  %i.fm = fsub <2 x float> %i.fa, %i.fl
  %i.fn = fmul <2 x float> %i.fm, %i.ei
  %i.fo = fadd <2 x float> %i.fn, %i.ej
  store <2 x float> %i.fo, ptr %5, align 8
  %i.fp = shufflevector <4 x float> <float -5.000000e-01, float poison, float poison, float poison>, <4 x float> %i.fk, <2 x i32> <i32 0, i32 5>
  %i.fq = fsub <2 x float> %i.fb, %i.fp
  %i.fr = fmul <2 x float> %i.fq, %i.ei
  %i.fs = fadd <2 x float> %i.fr, %i.ej
  store <2 x float> %i.fs, ptr %6, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.ee, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef -8355712, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ft = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.fu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.fv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.fw = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.fx = insertelement <2 x float> %i.fw, float -5.000000e-01, i64 0
  %i.fy = fsub <2 x float> %i.fi, %i.fx
  %i.fz = fmul <2 x float> %i.fy, %i.fu
  %i.ga = fadd <2 x float> %i.fz, %i.fv
  store <2 x float> %i.ga, ptr %7, align 8
  %i.gb = shufflevector <4 x float> %i.fg, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gc = insertelement <2 x float> %i.gb, float 1.000000e+00, i64 1
  %i.gd = shufflevector <4 x float> %i.fk, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ge = insertelement <2 x float> %i.gd, float -5.000000e-01, i64 0
  %i.gf = fsub <2 x float> %i.gc, %i.ge
  %i.gg = fmul <2 x float> %i.gf, %i.fu
  %i.gh = fadd <2 x float> %i.gg, %i.fv
  store <2 x float> %i.gh, ptr %8, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.ft, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef -8355712, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.gi = fadd float %.098, 1.000000e+00          ; 2 uses
  %i.gj = fcmp ugt float %i.gi, %3
  br i1 %i.gj, label %._crit_edge, label %bb.b, !llvm.loop !79
}

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef range(i32 0, 3) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 16)) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) initializes((0, 1)) %5) unnamed_addr #15 {
bb.a:
  %i.a = zext nneg i32 %0 to i64                  ; 7 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !17
  %i.c = add nuw nsw i32 %0, 1                    ; 2 uses
  %i.d = icmp eq i32 %i.c, 3
  %i.e = select i1 %i.d, i32 0, i32 %i.c
  %i.f = zext nneg i32 %i.e to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !17
  %.urem = add nsw i32 %0, -1
  %.cmp = icmp eq i32 %0, 0
  %i.h = select i1 %.cmp, i32 2, i32 %.urem
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN8ImGuizmoL14directionUnaryE, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !17
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 796), i64 %i.a
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47, !range !33, !noundef !34
  store i8 %i.n, ptr %4, align 1, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 799), i64 %i.a
  %i.p = load i8, ptr %i.o, align 1, !tbaa !47, !range !33, !noundef !34
  store i8 %i.p, ptr %5, align 1, !tbaa !47
  %i.q = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %i.a
  %i.r = load float, ptr %i.q, align 4, !tbaa !10
  %i.s = load <4 x float>, ptr %2, align 4, !tbaa !10
  %i.t = insertelement <4 x float> poison, float %i.r, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = fmul <4 x float> %i.u, %i.s
  store <4 x float> %i.v, ptr %2, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %i.f
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = load <4 x float>, ptr %3, align 4, !tbaa !10
  %i.z = insertelement <4 x float> poison, float %i.x, i64 0
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = fmul <4 x float> %i.aa, %i.y
  store <4 x float> %i.ab, ptr %3, align 4, !tbaa !10
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.ac = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16 ; 3 uses
  %i.ad = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16 ; 3 uses
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29 ; 8 uses
  %i.ag = load <4 x float>, ptr %1, align 4, !tbaa !10 ; 5 uses
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !10 ; 2 uses
  %i.ah = extractelement <4 x float> %i.ag, i64 0
  %i.ai = extractelement <4 x float> %i.ag, i64 2
  %i.aj = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.am = fmul <2 x float> %i.ak, %i.al
  %i.an = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ao = insertelement <2 x float> %i.an, float 0.000000e+00, i64 1 ; 3 uses
  %i.ap = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.aq = insertelement <2 x float> %i.ap, float 0.000000e+00, i64 1 ; 3 uses
  %i.ar = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fneg float %.sroa.8.0.copyload.i
  %i.aw = fneg float %i.ai                        ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.8.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.13.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.az = load <2 x float>, ptr %2, align 4, !tbaa !10 ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0 ; 2 uses
  %i.bb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 4 uses
  %i.bc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 400), align 8, !tbaa !16 ; 4 uses
  %i.bd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 5 uses
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.be, <2 x float> %i.am)
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.as, <2 x float> %i.bf)
  %i.bh = fadd <2 x float> %i.au, %i.bg           ; 2 uses
  %i.bi = fdiv <2 x float> splat (float 1.000000e+00), %i.bh ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bh)
  %i.bk = fcmp ogt <2 x float> %i.bj, splat (float f0x34000000) ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x float> %i.bl, %i.al
  %i.bn = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.bn, <2 x float> %i.bm)
  %i.bp = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fneg float %i.ah
  %i.br = insertelement <4 x float> poison, float %i.av, i64 0
  %i.bs = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 3 uses
  %i.bt = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.bv = shufflevector <4 x float> %i.bu, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bw = shufflevector <2 x float> %i.bb, <2 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bx = fneg float %i.ba                        ; 2 uses
  %i.by = load <2 x float>, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.bz = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 3 uses
  %i.cc = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cd = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 3 uses
  %i.ci = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 432), align 8, !tbaa !16 ; 2 uses
  %i.cj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 3 uses
  %i.ck = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 448), align 8, !tbaa !16 ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cn = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.co = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i82, align 4, !tbaa !10 ; 2 uses
  %.sroa.13.0.copyload.i85 = load float, ptr %.sroa.13.0..sroa_idx.i84, align 4, !tbaa !10 ; 2 uses
  %i.cq = fneg float %.sroa.13.0.copyload.i85     ; 2 uses
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.cl, <2 x float> %i.bo)
  %i.cs = fadd <2 x float> %i.cm, %i.cr           ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %i.bi
  %i.cu = select <2 x i1> %i.bk, <2 x float> %i.ct, <2 x float> %i.cs ; 4 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 1 ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.cx = shufflevector <4 x float> %i.br, <4 x float> %i.cw, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.cy = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.aw, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.cw, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.da = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.db = insertelement <4 x float> %i.da, float -0.000000e+00, i64 2
  %i.dc = extractelement <2 x float> %i.cp, i64 0
  %i.dd = fneg float %i.dc                        ; 2 uses
  %i.de = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.df = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dg = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i118, align 4, !tbaa !10 ; 4 uses
  %i.dh = load <4 x float>, ptr %3, align 4
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <3 x i32> <i32 2, i32 poison, i32 poison>
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 5 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.dm = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = fmul <2 x float> %i.dm, %i.al
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %i.bp, <2 x float> %i.dn)
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.cn, <2 x float> %i.do)
  %i.dq = fadd <2 x float> %i.co, %i.dp           ; 2 uses
  %i.dr = fmul <2 x float> %i.dq, %i.bi
  %i.ds = select <2 x i1> %i.bk, <2 x float> %i.dr, <2 x float> %i.dq ; 3 uses
  %i.dt = shufflevector <2 x float> %i.bd, <2 x float> %i.dk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.du = insertelement <4 x float> %i.dt, float %i.ac, i64 2
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dw = fmul <4 x float> %i.dv, %i.cx
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.bw, <4 x float> %i.dw) ; 2 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 2
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ad, float %i.dy)
  %i.ea = fadd float %i.ae, %i.dz                 ; 2 uses
  %i.eb = tail call float @llvm.fabs.f32(float %i.ea)
  %i.ec = fcmp ogt float %i.eb, f0x34000000       ; 2 uses
  %i.ed = insertelement <4 x float> %i.dx, float -0.000000e+00, i64 2
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.db, <4 x float> %i.ed)
  %i.ef = shufflevector <2 x float> %i.cj, <2 x float> %i.dk, <4 x i32> <i32 0, i32 1, i32 3, i32 0>
  %i.eg = fadd <4 x float> %i.ef, %i.ee           ; 4 uses
  %i.eh = extractelement <4 x float> %i.eg, i64 1
  %i.ei = extractelement <4 x float> %i.eg, i64 0
  %i.ej = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = extractelement <4 x float> %i.eg, i64 3
  %i.el = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.em = insertelement <2 x float> %i.el, float %i.dd, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eo = fmul <4 x float> %i.dl, %i.en
  %i.ep = insertelement <4 x float> %i.cb, float %i.bx, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.bc, i64 1
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.es = shufflevector <2 x float> %i.by, <2 x float> %i.bb, <4 x i32> <i32 poison, i32 0, i32 2, i32 2>
  %i.et = insertelement <4 x float> %i.es, float %i.bc, i64 0
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.et, <4 x float> %i.eo)
  %i.ev = insertelement <2 x float> %i.dg, float %i.cq, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ex = insertelement <2 x float> %i.cl, float %i.ci, i64 0 ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ez = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.ey, <4 x float> %i.eu)
  %i.fa = insertelement <2 x float> %i.cm, float %i.ck, i64 0 ; 2 uses
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fc = fadd <4 x float> %i.fb, %i.ez           ; 2 uses
  %i.fd = shufflevector <2 x float> %i.by, <2 x float> %i.dg, <3 x i32> <i32 poison, i32 0, i32 2>
  %i.fe = shufflevector <3 x float> %i.di, <3 x float> %i.fd, <3 x i32> <i32 0, i32 4, i32 5>
  %i.ff = fneg <3 x float> %i.fe                  ; 6 uses
  %i.fg = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.cb, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.fj = insertelement <4 x float> %i.fi, float %i.bx, i64 2
  %i.fk = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %i.cb, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 poison, i32 5>
  %i.fn = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> %i.dj, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
end_hunk_7
begin_hunk_8_@_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf:bb.a
  %i.i = fcmp ogt float %i.f, 5.000000e-01
  br i1 %i.i, label %bb.e, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit

bb.e:                                             ; preds = %bb.d
  %i.j = fsub float %i.c, %i.d
  %i.k = fcmp olt float %i.c, 0.000000e+00
  %i.l = select i1 %i.k, float -1.000000e+00, float 1.000000e+00
  %i.m = tail call float @llvm.fmuladd.f32(float %i.a, float %i.l, float %i.j)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %.sink.i = phi float [ %i.h, %bb.c ], [ %i.m, %bb.e ]
  store float %.sink.i, ptr %0, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit

_ZN8ImGuizmoL11ComputeSnapEPff.exit:              ; preds = %bb.a, %bb.d, %.sink.split.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !10 ; 4 uses
  %i.q = fcmp ugt float %i.p, f0x34000000
  br i1 %i.q, label %bb.f, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

bb.f:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit
  %i.r = load float, ptr %i.n, align 4, !tbaa !10 ; 4 uses
  %i.s = tail call float @fmodf(float noundef %i.r, float noundef %i.p) #19 ; 3 uses
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = fdiv float %i.t, %i.p                    ; 2 uses
  %i.v = fcmp olt float %i.u, 5.000000e-01
  br i1 %i.v, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = fcmp ogt float %i.u, 5.000000e-01
  br i1 %i.w, label %bb.h, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

bb.h:                                             ; preds = %bb.g
  %i.x = fsub float %i.r, %i.s
  %i.y = fcmp olt float %i.r, 0.000000e+00
  %i.z = select i1 %i.y, float -1.000000e+00, float 1.000000e+00
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.p, float %i.z, float %i.x)
  br label %.sink.split.i.1

bb.i:                                             ; preds = %bb.f
  %i.ab = fsub float %i.r, %i.s
  br label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.i, %bb.h
  %.sink.i.1 = phi float [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  store float %.sink.i.1, ptr %i.n, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

_ZN8ImGuizmoL11ComputeSnapEPff.exit.1:            ; preds = %.sink.split.i.1, %bb.g, %_ZN8ImGuizmoL11ComputeSnapEPff.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10 ; 4 uses
  %i.af = fcmp ugt float %i.ae, f0x34000000
  br i1 %i.af, label %bb.j, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

bb.j:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !10 ; 4 uses
  %i.ah = tail call float @fmodf(float noundef %i.ag, float noundef %i.ae) #19 ; 3 uses
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah)
  %i.aj = fdiv float %i.ai, %i.ae                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, 5.000000e-01
  br i1 %i.ak, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = fcmp ogt float %i.aj, 5.000000e-01
  br i1 %i.al, label %bb.l, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

bb.l:                                             ; preds = %bb.k
  %i.am = fsub float %i.ag, %i.ah
  %i.an = fcmp olt float %i.ag, 0.000000e+00
  %i.ao = select i1 %i.an, float -1.000000e+00, float 1.000000e+00
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ao, float %i.am)
  br label %.sink.split.i.2

bb.m:                                             ; preds = %bb.j
  %i.aq = fsub float %i.ag, %i.ah
  br label %.sink.split.i.2

.sink.split.i.2:                                  ; preds = %bb.m, %bb.l
  %.sink.i.2 = phi float [ %i.aq, %bb.m ], [ %i.ap, %bb.l ]
  store float %.sink.i.2, ptr %i.ac, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

_ZN8ImGuizmoL11ComputeSnapEPff.exit.2:            ; preds = %.sink.split.i.2, %bb.k, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare noundef i32 @_Z14ImFormatStringPcmPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #11

declare void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.052 = phi i32 [ 1, %bb.a ], [ %i.bx, %bb.c ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.c = shl nuw nsw i32 %.052, 1                 ; 2 uses
  %i.d = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.e = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.f = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.g = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.h = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.j = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.k = or disjoint i32 %i.c, 1
  %i.l = load float, ptr %i.a, align 4, !tbaa !14
  %i.m = load float, ptr %0, align 4, !tbaa !12
  %i.n = load float, ptr %i.b, align 4, !tbaa !13
  %i.o = insertelement <3 x float> poison, float %i.m, i64 0
  %i.p = insertelement <3 x float> %i.o, float %i.l, i64 1
  %i.q = insertelement <3 x float> %i.p, float %i.n, i64 2
  %i.r = fmul <3 x float> %i.q, splat (float 5.000000e-02) ; 3 uses
  %i.s = uitofp nneg i32 %i.k to float
  %i.t = uitofp nneg i32 %i.c to float
  %i.u = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = insertelement <2 x float> poison, float %i.t, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.s, i64 1 ; 3 uses
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x float> %i.y, %i.x              ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ab = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.w
  %i.ad = fmul <2 x float> %i.ac, %i.y            ; 2 uses
  %i.ae = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.af = fmul <2 x float> %i.ae, %i.w
  %i.ag = fmul <2 x float> %i.y, %i.af            ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ai = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.z, %i.ai
  %i.ak = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> zeroinitializer
  %i.al = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ak, <2 x float> %i.aj)
  %i.am = shufflevector <4 x float> %i.g, <4 x float> poison, <2 x i32> zeroinitializer
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.am, <2 x float> %i.al)
  %i.ao = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fadd <2 x float> %i.ao, %i.an
  %i.aq = fdiv <2 x float> splat (float 5.000000e-01), %i.ap
  %i.ar = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.at = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.av = fmul <4 x float> %i.aa, %i.au
  %i.aw = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aw, <4 x float> %i.as, <4 x float> %i.av)
  %i.ay = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ba = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.az, <4 x float> %i.ax)
  %i.bd = fadd <4 x float> %i.bb, %i.bc
  %i.be = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bf = fmul <4 x float> %i.bd, %i.be           ; 4 uses
  %i.bg = extractelement <4 x float> %i.bf, i64 1
  %i.bh = fadd float %i.bg, 5.000000e-01
  %i.bi = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float 1.000000e+00, i64 1
  %i.bk = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bh, i64 1
  %i.bl = fsub <2 x float> %i.bj, %i.bk
  %i.bm = fmul <2 x float> %i.i, %i.bl
  %i.bn = fadd <2 x float> %i.j, %i.bm
  store <2 x float> %i.bn, ptr %1, align 8
  %i.bo = extractelement <4 x float> %i.bf, i64 3
  %i.bp = fadd float %i.bo, 5.000000e-01
  %i.bq = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float 1.000000e+00, i64 1
  %i.bs = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bp, i64 1
  %i.bt = fsub <2 x float> %i.br, %i.bs
  %i.bu = fmul <2 x float> %i.i, %i.bt
  %i.bv = fadd <2 x float> %i.j, %i.bu
  store <2 x float> %i.bv, ptr %2, align 8
  %i.bw = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bw, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -2147483648, float noundef 6.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.bx = add nuw nsw i32 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_ImGuizmo.cpp() #18 section ".text.startup" {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), i8 0, i64 24, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16
  store <2 x float> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 8), align 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZN8ImGuizmoL14directionUnaryE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN8ImGuizmo5vec_tE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 4}
!15 = !{!11, !9, i64 12}
!16 = !{!5, !5, i64 0}
!17 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTS10ImDrawList", !18, i64 0}
!20 = !{!"_ZTSN8ImGuizmo4MODEE", !5, i64 0}
!21 = !{!"_ZTSN8ImGuizmo8matrix_tE", !5, i64 0}
!22 = !{!"_ZTS6ImVec2", !9, i64 0, !9, i64 4}
!23 = !{!"bool", !5, i64 0}
!24 = !{!"_ZTSN8ImGuizmo7ContextE", !19, i64 0, !20, i64 8, !21, i64 12, !21, i64 76, !21, i64 140, !21, i64 204, !21, i64 268, !21, i64 332, !21, i64 396, !21, i64 460, !11, i64 524, !11, i64 540, !11, i64 556, !11, i64 572, !11, i64 588, !11, i64 604, !11, i64 620, !9, i64 636, !22, i64 640, !22, i64 648, !22, i64 656, !9, i64 664, !11, i64 668, !23, i64 684, !23, i64 685, !11, i64 688, !11, i64 704, !11, i64 720, !11, i64 736, !9, i64 752, !9, i64 756, !11, i64 760, !11, i64 776, !9, i64 792, !5, i64 796, !5, i64 799, !5, i64 804, !11, i64 816, !11, i64 832, !11, i64 848, !11, i64 864, !6, i64 880, !5, i64 884, !23, i64 892, !21, i64 896, !6, i64 960, !9, i64 964, !9, i64 968, !9, i64 972, !9, i64 976, !9, i64 980, !9, i64 984, !9, i64 988, !23, i64 992}
!25 = !{!24, !9, i64 972}
!26 = !{!24, !9, i64 976}
!27 = !{!24, !9, i64 980}
!28 = !{!24, !9, i64 984}
!29 = !{!24, !9, i64 988}
!30 = !{!24, !23, i64 992}
!31 = !{!24, !19, i64 0}
!32 = !{!24, !23, i64 684}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!"p1 _ZTS11ImFontAtlas", !18, i64 0}
!37 = !{!"p1 _ZTS6ImFont", !18, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!"p1 short", !18, i64 0}
!40 = !{!"_ZTS8ImVectorItE", !6, i64 0, !6, i64 4, !39, i64 8}
!41 = !{!"_ZTS7ImGuiIO", !6, i64 0, !6, i64 4, !22, i64 8, !9, i64 16, !9, i64 20, !35, i64 24, !35, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !5, i64 52, !9, i64 140, !9, i64 144, !18, i64 152, !36, i64 160, !9, i64 168, !23, i64 172, !37, i64 176, !22, i64 184, !23, i64 192, !23, i64 193, !23, i64 194, !23, i64 195, !23, i64 196, !23, i64 197, !9, i64 200, !35, i64 208, !35, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !22, i64 288, !5, i64 296, !9, i64 304, !9, i64 308, !23, i64 312, !23, i64 313, !23, i64 314, !23, i64 315, !5, i64 316, !5, i64 828, !23, i64 908, !23, i64 909, !23, i64 910, !23, i64 911, !23, i64 912, !23, i64 913, !23, i64 914, !9, i64 916, !6, i64 920, !6, i64 924, !6, i64 928, !6, i64 932, !6, i64 936, !22, i64 940, !23, i64 948, !6, i64 952, !6, i64 956, !22, i64 960, !5, i64 968, !5, i64 1008, !5, i64 1048, !5, i64 1053, !5, i64 1058, !5, i64 1063, !5, i64 1068, !5, i64 1073, !5, i64 1080, !5, i64 1100, !5, i64 1120, !5, i64 1160, !5, i64 1180, !5, i64 3228, !5, i64 5276, !5, i64 5356, !9, i64 5436, !23, i64 5440, !38, i64 5442, !40, i64 5448}
!42 = !{!41, !9, i64 288}
!43 = !{!24, !9, i64 648}
!44 = !{!41, !9, i64 292}
!45 = !{!24, !9, i64 652}
!46 = !{!24, !9, i64 664}
!47 = !{!23, !23, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!24, !9, i64 636}
!50 = !{!24, !23, i64 685}
!51 = !{!24, !23, i64 892}
!52 = !{!6, !6, i64 0}
!53 = !{!24, !9, i64 964}
!54 = !{!24, !9, i64 968}
!55 = distinct !{!55, !48}
!56 = !{!24, !9, i64 640}
!57 = !{!24, !9, i64 644}
!58 = distinct !{!58, !48}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = !{!24, !20, i64 8}
!69 = !{i64 0, i64 64, !16}
!70 = !{!24, !6, i64 960}
!71 = !{!24, !9, i64 756}
!72 = !{!24, !9, i64 752}
!73 = !{!24, !9, i64 792}
!74 = !{!24, !6, i64 880}
!75 = !{!22, !9, i64 0}
!76 = !{!22, !9, i64 4}
!77 = !{!35, !35, i64 0}
!78 = distinct !{!78, !48}
!79 = distinct !{!79, !48}
!80 = distinct !{!80, !48}
end_hunk_8
