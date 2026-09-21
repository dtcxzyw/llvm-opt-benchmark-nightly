Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/clusterizer?download=true
inline.NumInlined: 72
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.meshopt_Allocator::Storage" = type { ptr, ptr }
%class.meshopt_Allocator = type { [24 x ptr], i64 }

$_ZN17meshopt_AllocatorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN17meshopt_Allocator7storageEvE1s = comdat any

@_ZZN17meshopt_Allocator7storageEvE1s = linkonce_odr dso_local local_unnamed_addr global %"struct.meshopt_Allocator::Storage" { ptr @_Znwm, ptr @_ZdlPv }, comdat, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @meshopt_buildMeshletsBound(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, -2                           ; 2 uses
  %i.b = add i64 %0, -1
  %i.c = add i64 %i.b, %i.a
  %i.d = udiv i64 %i.c, %i.a
  %i.e = udiv i64 %0, 3
  %i.f = add nsw i64 %i.e, -1
  %i.g = add i64 %i.f, %2
  %i.h = udiv i64 %i.g, %2
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.h)
  ret i64 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local i64 @meshopt_buildMeshletsFlex(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, float noundef %11, float noundef %12) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.044.i = alloca i32, align 16             ; 6 uses
  %.sroa.645.i = alloca i32, align 4              ; 6 uses
  %.sroa.946.i = alloca i32, align 8              ; 6 uses
  %.sroa.1247.i = alloca i32, align 4             ; 6 uses
  %.sroa.034.i = alloca i32, align 16             ; 6 uses
  %.sroa.635.i = alloca i32, align 4              ; 6 uses
  %.sroa.9.i = alloca i32, align 8                ; 6 uses
  %.sroa.12.i = alloca i32, align 4               ; 6 uses
  %.sroa.0.i = alloca float, align 16             ; 6 uses
  %.sroa.6.i = alloca float, align 4              ; 6 uses
  %.sroa.10.i = alloca float, align 8             ; 6 uses
  %.sroa.14.i = alloca float, align 4             ; 6 uses
  %13 = alloca %class.meshopt_Allocator, align 8  ; 27 uses
  %i.a = alloca [256 x i32], align 16             ; 11 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = icmp eq i64 %4, 0
  br i1 %i.e, label %bb.bz, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %13, i8 0, i64 200, i1 false)
  %i.f = icmp ugt i64 %6, %4                      ; 2 uses
  %i.g = icmp ult i64 %4, 2147483648
  %or.cond = and i1 %i.g, %i.f
  %i.h = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !16 ; 2 uses
  %i.i = icmp ugt i64 %6, 4611686018427387903
  %i.j = shl i64 %6, 2                            ; 2 uses
  %i.k = select i1 %i.i, i64 -1, i64 %i.j         ; 4 uses
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef ptr %i.h(i64 noundef %i.k)
          to label %.noexc unwind label %bb.m, !inline_history !32 ; 18 uses

.noexc:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 3 uses
  store i64 1, ptr %i.m, align 8, !tbaa !19
  store ptr %i.l, ptr %13, align 8, !tbaa !20
  %i.n = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !16
  %i.o = invoke noundef ptr %i.n(i64 noundef %i.k)
          to label %.noexc262 unwind label %bb.m, !inline_history !32 ; 11 uses

.noexc262:                                        ; preds = %.noexc
  store i64 2, ptr %i.m, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !20
  %i.q = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !16
  %i.r = shl nuw nsw i64 %4, 2
  %i.s = invoke noundef ptr %i.q(i64 noundef %i.r)
          to label %.noexc263 unwind label %bb.m, !inline_history !32 ; 5 uses

.noexc263:                                        ; preds = %.noexc262
  store i64 3, ptr %i.m, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !20
  %i.u = add nsw i64 %4, -1                       ; 4 uses
  %xtraiter553 = and i64 %4, 3                    ; 3 uses
  %i.v = icmp ult i64 %i.u, 3
  br i1 %i.v, label %.epil.preheader552, label %.noexc263.new

.noexc263.new:                                    ; preds = %.noexc263
  %unroll_iter557 = and i64 %4, 2147483644
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.noexc263.new
  %.07884.i = phi i64 [ 0, %.noexc263.new ], [ %i.ap, %bb.d ] ; 5 uses
  %niter558 = phi i64 [ 0, %.noexc263.new ], [ %niter558.next.3, %bb.d ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07884.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !21
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.y
  store i32 0, ptr %i.z, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07884.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad
  store i32 0, ptr %i.ae, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07884.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ai
  store i32 0, ptr %i.aj, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07884.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.an
  store i32 0, ptr %i.ao, align 4, !tbaa !21
  %i.ap = add nuw nsw i64 %.07884.i, 4            ; 2 uses
  %niter558.next.3 = add nuw nsw i64 %niter558, 4 ; 2 uses
  %niter558.ncmp.3 = icmp eq i64 %niter558.next.3, %unroll_iter557
  br i1 %niter558.ncmp.3, label %.preheader82.i.preheader.unr-lcssa, label %bb.d, !llvm.loop !33

.preheader82.i.preheader.unr-lcssa:               ; preds = %bb.d
  %lcmp.mod555.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod555.not, label %.preheader82.i.preheader, label %.epil.preheader552

.epil.preheader552:                               ; preds = %.preheader82.i.preheader.unr-lcssa, %.noexc263
  %.07884.i.epil.init = phi i64 [ 0, %.noexc263 ], [ %i.ap, %.preheader82.i.preheader.unr-lcssa ]
  %lcmp.mod556 = icmp ne i64 %xtraiter553, 0
  tail call void @llvm.assume(i1 %lcmp.mod556)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader552
  %.07884.i.epil = phi i64 [ %.07884.i.epil.init, %.epil.preheader552 ], [ %i.au, %bb.e ] ; 2 uses
  %epil.iter554 = phi i64 [ 0, %.epil.preheader552 ], [ %epil.iter554.next, %bb.e ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07884.i.epil
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.as
  store i32 0, ptr %i.at, align 4, !tbaa !21
  %i.au = add nuw nsw i64 %.07884.i.epil, 1
  %epil.iter554.next = add i64 %epil.iter554, 1   ; 2 uses
  %epil.iter554.cmp.not = icmp eq i64 %epil.iter554.next, %xtraiter553
  br i1 %epil.iter554.cmp.not, label %.preheader82.i.preheader, label %bb.e, !llvm.loop !34

.preheader82.i.preheader:                         ; preds = %bb.e, %.preheader82.i.preheader.unr-lcssa
  %xtraiter559 = and i64 %4, 3                    ; 3 uses
  %i.av = icmp ult i64 %i.u, 3
  br i1 %i.av, label %.preheader82.i.epil.preheader, label %.preheader82.i.preheader.new

.preheader82.i.preheader.new:                     ; preds = %.preheader82.i.preheader
  %unroll_iter563 = and i64 %4, 2147483644
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.i, %.preheader82.i.preheader.new
  %.07785.i = phi i64 [ 0, %.preheader82.i.preheader.new ], [ %i.bx, %.preheader82.i ] ; 5 uses
  %niter564 = phi i64 [ 0, %.preheader82.i.preheader.new ], [ %niter564.next.3, %.preheader82.i ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07785.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !21
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07785.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !21
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !21
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07785.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !21
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07785.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !21
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !21
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !21
  %i.bx = add nuw nsw i64 %.07785.i, 4            ; 2 uses
  %niter564.next.3 = add i64 %niter564, 4         ; 2 uses
  %niter564.ncmp.3 = icmp eq i64 %niter564.next.3, %unroll_iter563
  br i1 %niter564.ncmp.3, label %.preheader81.i.preheader.unr-lcssa, label %.preheader82.i, !llvm.loop !35

.preheader81.i.preheader.unr-lcssa:               ; preds = %.preheader82.i
  %lcmp.mod561.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod561.not, label %.preheader81.i.preheader, label %.preheader82.i.epil.preheader

.preheader82.i.epil.preheader:                    ; preds = %.preheader81.i.preheader.unr-lcssa, %.preheader82.i.preheader
  %.07785.i.epil.init = phi i64 [ 0, %.preheader82.i.preheader ], [ %i.bx, %.preheader81.i.preheader.unr-lcssa ]
  %lcmp.mod562 = icmp ne i64 %xtraiter559, 0
  tail call void @llvm.assume(i1 %lcmp.mod562)
  br label %.preheader82.i.epil

.preheader82.i.epil:                              ; preds = %.preheader82.i.epil, %.preheader82.i.epil.preheader
  %.07785.i.epil = phi i64 [ %i.ce, %.preheader82.i.epil ], [ %.07785.i.epil.init, %.preheader82.i.epil.preheader ] ; 2 uses
  %epil.iter560 = phi i64 [ %epil.iter560.next, %.preheader82.i.epil ], [ 0, %.preheader82.i.epil.preheader ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07785.i.epil
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !21
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !21
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !21
  %i.ce = add nuw nsw i64 %.07785.i.epil, 1
  %epil.iter560.next = add i64 %epil.iter560, 1   ; 2 uses
  %epil.iter560.cmp.not = icmp eq i64 %epil.iter560.next, %xtraiter559
  br i1 %epil.iter560.cmp.not, label %.preheader81.i.preheader, label %.preheader82.i.epil, !llvm.loop !36

.preheader81.i.preheader:                         ; preds = %.preheader82.i.epil, %.preheader81.i.preheader.unr-lcssa
  %xtraiter565 = and i64 %4, 1
  %i.cf = icmp eq i64 %i.u, 0
  br i1 %i.cf, label %.preheader81.i.epil.preheader, label %.preheader81.i.preheader.new

.preheader81.i.preheader.new:                     ; preds = %.preheader81.i.preheader
  %unroll_iter569 = and i64 %4, 2147483646
  br label %.preheader81.i

.preheader80.i.unr-lcssa:                         ; preds = %bb.i
  %lcmp.mod567.not = icmp eq i64 %xtraiter565, 0
  br i1 %lcmp.mod567.not, label %.preheader80.i, label %.preheader81.i.epil.preheader

.preheader81.i.epil.preheader:                    ; preds = %.preheader80.i.unr-lcssa, %.preheader81.i.preheader
  %.07587.i.epil.init = phi i64 [ 0, %.preheader81.i.preheader ], [ %i.dl, %.preheader80.i.unr-lcssa ]
  %.07686.i.epil.init = phi i32 [ 0, %.preheader81.i.preheader ], [ %.1.i.1, %.preheader80.i.unr-lcssa ]
  %lcmp.mod568 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod568)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07587.i.epil.init
end_hunk_0
begin_hunk_1_@meshopt_buildMeshletsFlex:bb.a
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae, %.lr.ph.i287
  %.0.i = phi i32 [ %i.wl, %bb.aj ], [ 0, %.lr.ph.i287 ], [ %i.wk, %bb.ai ], [ 1, %bb.ag ], [ 1, %bb.af ], [ 1, %bb.ae ] ; 3 uses
  %i.wm = icmp sgt i32 %.0.i, %.1802.i
  br i1 %i.wm, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.wn = zext i32 %i.uu to i64
  %i.wo = getelementptr inbounds nuw [24 x i8], ptr %i.lk, i64 %i.wn ; 6 uses
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !71
  %i.wq = fsub float %i.wp, %i.uh                 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !72
  %i.wt = fsub float %i.ws, %i.ui                 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !73
  %i.ww = fsub float %i.wv, %i.ty                 ; 2 uses
  %i.wx = fmul float %i.wt, %i.wt
  %i.wy = tail call float @llvm.fmuladd.f32(float %i.wq, float %i.wq, float %i.wx)
  %i.wz = tail call float @llvm.fmuladd.f32(float %i.ww, float %i.ww, float %i.wy)
  %sqrt.i288 = tail call float @llvm.sqrt.f32(float %i.wz)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wo, i64 12
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !75
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !76
  %i.xe = fmul float %i.uc, %i.xd
  %i.xf = tail call float @llvm.fmuladd.f32(float %i.xb, float %i.ub, float %i.xe)
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wo, i64 20
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !74
  %i.xi = tail call float @llvm.fmuladd.f32(float %i.xh, float %i.ud, float %i.xf)
  %i.xj = fneg float %i.xi
  %i.xk = fdiv float %sqrt.i288, %i.ow
  %i.xl = insertelement <2 x float> poison, float %i.xj, i64 0
  %i.xm = insertelement <2 x float> %i.xl, float %i.xk, i64 1
  %i.xn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xm, <2 x float> %i.sh, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.xo = extractelement <2 x float> %i.xn, i64 0 ; 2 uses
  %i.xp = fcmp olt float %i.xo, 1.000000e-03
  %i.xq = select i1 %i.xp, float 1.000000e-03, float %i.xo
  %i.xr = extractelement <2 x float> %i.xn, i64 1
  %i.xs = fmul float %i.xr, %i.xq                 ; 2 uses
  %i.xt = icmp samesign ult i32 %.0.i, %.1802.i
  %i.xu = fcmp olt float %i.xs, %.13.i
  %or.cond.i = select i1 %i.xt, i1 true, i1 %i.xu ; 3 uses
  %.285.i = select i1 %or.cond.i, i32 %i.uu, i32 %.1841.i
  %.281.i = select i1 %or.cond.i, i32 %.0.i, i32 %.1802.i
  %.2.i = select i1 %or.cond.i, float %i.xs, float %.13.i
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.386.i = phi i32 [ %.285.i, %bb.al ], [ %.1841.i, %bb.ak ] ; 2 uses
  %.382.i = phi i32 [ %.281.i, %bb.al ], [ %.1802.i, %bb.ak ] ; 2 uses
  %.3.i = phi float [ %.2.i, %bb.al ], [ %.13.i, %bb.ak ] ; 2 uses
  %i.xv = add nuw nsw i64 %.0764.i, 1             ; 2 uses
  %exitcond.not.i289 = icmp eq i64 %i.xv, %i.ur
  br i1 %exitcond.not.i289, label %._crit_edge.i, label %.lr.ph.i287, !llvm.loop !61

_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit: ; preds = %._crit_edge.i, %bb.ab
  %.0205 = phi i32 [ %.0216.lcssa, %bb.ab ], [ %.184.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.xw = icmp eq i32 %.0205, -1
  br i1 %i.xw, label %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit.thread, label %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit..thread408_crit_edge

_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit..thread408_crit_edge: ; preds = %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit
  %.pre477 = zext i32 %.sroa.29.0 to i64
  br label %.thread408

_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit.thread: ; preds = %bb.ac, %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store <2 x float> %i.tx, ptr %i.b, align 8, !tbaa !27
  store float %i.ty, ptr %i.sd, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 -1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store float f0x7F7FFFFF, ptr %i.d, align 4, !tbaa !27
  call fastcc void @_ZN7meshoptL13kdtreeNearestEPNS_6KDNodeEjPKfmPKhS3_RjRf(ptr noundef %i.pk, i32 noundef 0, ptr noundef %i.lk, ptr noundef %i.ld, ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.xx = load i32, ptr %i.c, align 4, !tbaa !21  ; 3 uses
  %i.xy = load float, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.xz = icmp eq i32 %i.xx, -1
  br i1 %i.xz, label %bb.bv, label %bb.an

bb.an:                                            ; preds = %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit.thread
  %i.ya = zext i32 %.sroa.29.0 to i64             ; 2 uses
  %i.yb = icmp ule i64 %9, %i.ya
  %or.cond6 = and i1 %i.se, %i.yb
  %i.yc = fcmp ogt float %i.xy, %i.sf
  %i.yd = select i1 %or.cond6, i1 %i.yc, i1 false
  br i1 %i.yd, label %bb.ao, label %.thread408

.thread408:                                       ; preds = %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit..thread408_crit_edge, %bb.an
  %.pre-phi478 = phi i64 [ %.pre477, %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit..thread408_crit_edge ], [ %i.ya, %bb.an ]
  %.1206406414 = phi i32 [ %.0205, %_ZN7meshoptL19getNeighborTriangleERK15meshopt_MeshletRKNS_4ConeEPKjS7_RKNS_18TriangleAdjacency2EPS4_S7_PKsff.exit..thread408_crit_edge ], [ %i.xx, %bb.an ] ; 3 uses
  %i.ye = mul i32 %.1206406414, 3                 ; 3 uses
  %i.yf = add i32 %i.ye, 2
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !21
  %i.yj = zext i32 %i.yi to i64
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.yj
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !29
  %.lobit251 = lshr i16 %i.yl, 15
  %i.ym = zext i32 %i.ye to i64
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !21
  %i.yp = zext i32 %i.yo to i64
  %i.yq = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.yp
  %i.yr = load i16, ptr %i.yq, align 2, !tbaa !29
  %.lobit = lshr i16 %i.yr, 15
  %i.ys = add i32 %i.ye, 1
  %i.yt = zext i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !21
  %i.yw = zext i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.yw
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !29
  %.lobit250 = lshr i16 %i.yy, 15
  %narrow = add nuw nsw i16 %.lobit, %.lobit251
  %narrow252 = add nuw nsw i16 %narrow, %.lobit250
  %i.yz = zext nneg i16 %narrow252 to i32
  %i.za = add i32 %.sroa.18.0, %i.yz
  %i.zb = zext i32 %i.za to i64
  %i.zc = icmp uge i64 %8, %i.zb
  %.not = icmp ugt i64 %10, %.pre-phi478
  %or.cond258 = select i1 %i.zc, i1 %.not, i1 false
  br i1 %or.cond258, label %bb.bi, label %bb.ao

bb.ao:                                            ; preds = %.thread408, %bb.an
  %.1206406415 = phi i32 [ %.1206406414, %.thread408 ], [ %i.xx, %bb.an ]
  %.0204407411 = phi i1 [ false, %.thread408 ], [ true, %bb.an ] ; 2 uses
  %.not.i290 = icmp eq i64 %.0210, 0
  br i1 %.not.i290, label %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit, label %.lr.ph.i291.preheader

.lr.ph.i291.preheader:                            ; preds = %bb.ao
  %xtraiter591 = and i64 %.0210, 1
  %i.zd = icmp eq i64 %.0210, 1
  br i1 %i.zd, label %.lr.ph.i291.epil.preheader, label %.lr.ph.i291.preheader.new

.lr.ph.i291.preheader.new:                        ; preds = %.lr.ph.i291.preheader
  %unroll_iter596 = and i64 %.0210, -2
  br label %.lr.ph.i291

.lr.ph.i291:                                      ; preds = %.lr.ph.i291, %.lr.ph.i291.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i291.preheader.new ], [ %i.zw, %.lr.ph.i291 ] ; 2 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i291.preheader.new ], [ %i.zx, %.lr.ph.i291 ] ; 3 uses
  %niter597 = phi i64 [ 0, %.lr.ph.i291.preheader.new ], [ %niter597.next.1, %.lr.ph.i291 ]
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01112.i
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !21 ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.013.i
  store i32 %i.zf, ptr %i.zg, align 4, !tbaa !21
  %i.zh = zext i32 %i.zf to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !30
  %i.zk = icmp eq i8 %i.zj, 0
  %i.zl = zext i1 %i.zk to i64
  %i.zm = add i64 %.013.i, %i.zl                  ; 2 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01112.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !21 ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.zm
  store i32 %i.zp, ptr %i.zq, align 4, !tbaa !21
  %i.zr = zext i32 %i.zp to i64
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !30
  %i.zu = icmp eq i8 %i.zt, 0
  %i.zv = zext i1 %i.zu to i64
  %i.zw = add i64 %i.zm, %i.zv                    ; 3 uses
  %i.zx = add nuw nsw i64 %.01112.i, 2            ; 2 uses
  %niter597.next.1 = add nuw i64 %niter597, 2     ; 2 uses
  %niter597.ncmp.1 = icmp eq i64 %niter597.next.1, %unroll_iter596
  br i1 %niter597.ncmp.1, label %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit.loopexit.unr-lcssa, label %.lr.ph.i291, !llvm.loop !62

_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i291
  %lcmp.mod593.not = icmp eq i64 %xtraiter591, 0
  br i1 %lcmp.mod593.not, label %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit, label %.lr.ph.i291.epil.preheader

.lr.ph.i291.epil.preheader:                       ; preds = %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit.loopexit.unr-lcssa, %.lr.ph.i291.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i291.preheader ], [ %i.zw, %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i291.preheader ], [ %i.zx, %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit.loopexit.unr-lcssa ]
  %lcmp.mod595 = trunc i64 %.0210 to i1
  tail call void @llvm.assume(i1 %lcmp.mod595)
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01112.i.epil.init
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !21 ; 2 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.013.i.epil.init
  store i32 %i.zz, ptr %i.aaa, align 4, !tbaa !21
  %i.aab = zext i32 %i.zz to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.aab
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !30
  %i.aae = icmp eq i8 %i.aad, 0
  %i.aaf = zext i1 %i.aae to i64
  %i.aag = add i64 %.013.i.epil.init, %i.aaf
  br label %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit

_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit:     ; preds = %.lr.ph.i291.epil.preheader, %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit.loopexit.unr-lcssa, %bb.ao
  %.0.lcssa.i294 = phi i64 [ 0, %bb.ao ], [ %i.zw, %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit.loopexit.unr-lcssa ], [ %i.aag, %.lr.ph.i291.epil.preheader ] ; 2 uses
  %i.aah = add i64 %.0.lcssa.i294, 4
  %i.aai = icmp ult i64 %i.aah, 257
  %i.aaj = select i1 %i.aai, i64 %.0.lcssa.i294, i64 252 ; 2 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aaj ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.044.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.645.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.946.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1247.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.034.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  store i32 -1, ptr %.sroa.044.i, align 16, !tbaa !21
  store i32 -1, ptr %.sroa.645.i, align 4, !tbaa !21
  store i32 -1, ptr %.sroa.946.i, align 8, !tbaa !21
  store i32 -1, ptr %.sroa.1247.i, align 4, !tbaa !21
  store i32 -1, ptr %.sroa.034.i, align 16, !tbaa !21
  store i32 -1, ptr %.sroa.635.i, align 4, !tbaa !21
  store i32 -1, ptr %.sroa.9.i, align 8, !tbaa !21
  store i32 -1, ptr %.sroa.12.i, align 4, !tbaa !21
  store float f0x7F7FFFFF, ptr %.sroa.0.i, align 16, !tbaa !27
  store float f0x7F7FFFFF, ptr %.sroa.6.i, align 4, !tbaa !27
  store float f0x7F7FFFFF, ptr %.sroa.10.i, align 8, !tbaa !27
  store float f0x7F7FFFFF, ptr %.sroa.14.i, align 4, !tbaa !27
  %i.aal = zext i32 %.sroa.18.0 to i64
  %.not13.i = icmp eq i32 %.sroa.18.0, 0
  br i1 %.not13.i, label %.preheader.thread.i, label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit
  %i.aam = zext i32 %.sroa.0336.0 to i64
  %invariant.gep.i295 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aam
  br label %bb.ap

.preheader.i302:                                  ; preds = %.loopexit.i
  %.sroa.044.i.0..sroa.044.i.0..sroa.044.i.0..sroa.044.0..sroa.044.0..pre.i = load i32, ptr %.sroa.044.i, align 16, !tbaa !21 ; 2 uses
  %.not.i303 = icmp eq i32 %.sroa.044.i.0..sroa.044.i.0..sroa.044.i.0..sroa.044.0..sroa.044.0..pre.i, -1
  br i1 %.not.i303, label %.preheader.thread.i, label %bb.az

bb.ap:                                            ; preds = %.loopexit.i, %.lr.ph10.i
  %.0809.i = phi i64 [ 0, %.lr.ph10.i ], [ %i.acx, %.loopexit.i ] ; 2 uses
  %gep.i296 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i295, i64 %.0809.i
  %i.aan = load i32, ptr %gep.i296, align 4, !tbaa !21
  %i.aao = zext i32 %i.aan to i64                 ; 2 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14391.0, i64 %i.aao
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !21
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.sroa.25.0, i64 %i.aar
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0383.0, i64 %i.aao
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !21 ; 2 uses
  %i.aav = zext i32 %i.aau to i64
  %.not14.i = icmp eq i32 %i.aau, 0
  br i1 %.not14.i, label %.loopexit.i, label %.lr.ph.i297

._crit_edge.i299:                                 ; preds = %.lr.ph.i297
  %i.aaw = icmp eq i32 %spec.select.i, -1
  br i1 %i.aaw, label %.loopexit.i, label %bb.aq

.lr.ph.i297:                                      ; preds = %bb.ap, %.lr.ph.i297
  %.0756.i = phi i64 [ %i.abx, %.lr.ph.i297 ], [ 0, %bb.ap ] ; 2 uses
  %.0765.i = phi i32 [ %spec.select85.i, %.lr.ph.i297 ], [ -1, %bb.ap ] ; 2 uses
  %.0784.i = phi i32 [ %spec.select.i, %.lr.ph.i297 ], [ -1, %bb.ap ]
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %.0756.i
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !21 ; 2 uses
  %i.aaz = mul i32 %i.aay, 3                      ; 3 uses
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aba
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !21
  %i.abd = add i32 %i.aaz, 1
  %i.abe = zext i32 %i.abd to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abe
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !21
  %i.abh = add i32 %i.aaz, 2
  %i.abi = zext i32 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.abi
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !21
  %i.abl = zext i32 %i.abc to i64
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0383.0, i64 %i.abl
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !21
  %i.abo = zext i32 %i.abg to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0383.0, i64 %i.abo
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !21
  %i.abr = add i32 %i.abq, %i.abn
  %i.abs = zext i32 %i.abk to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0383.0, i64 %i.abs
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !21
  %i.abv = add i32 %i.abr, %i.abu                 ; 2 uses
  %i.abw = icmp ult i32 %i.abv, %.0765.i
  %spec.select.i = select i1 %i.abw, i32 %i.aay, i32 %.0784.i ; 4 uses
  %spec.select85.i = tail call i32 @llvm.umin.i32(i32 %i.abv, i32 %.0765.i) ; 10 uses
  %i.abx = add nuw nsw i64 %.0756.i, 1            ; 2 uses
  %exitcond.not.i298 = icmp eq i64 %i.abx, %i.aav
  br i1 %exitcond.not.i298, label %._crit_edge.i299, label %.lr.ph.i297, !llvm.loop !63

bb.aq:                                            ; preds = %._crit_edge.i299
  %i.aby = zext i32 %spec.select.i to i64
  %i.abz = getelementptr inbounds nuw [24 x i8], ptr %i.lk, i64 %i.aby ; 3 uses
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !71
  %i.acb = fsub float %i.aca, %.0221.lcssa        ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !72
  %i.ace = fsub float %i.acd, %i.si               ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !73
  %i.ach = fsub float %i.acg, %i.sj               ; 2 uses
  %i.aci = fmul float %i.ace, %i.ace
  %i.acj = tail call float @llvm.fmuladd.f32(float %i.acb, float %i.acb, float %i.aci)
  %i.ack = tail call float @llvm.fmuladd.f32(float %i.ach, float %i.ach, float %i.acj)
  %sqrt.i300 = tail call float @llvm.sqrt.f32(float %i.ack) ; 5 uses
  %.sroa.034.i.0..sroa.034.i.0..sroa.034.i.0..sroa.034.0..sroa.034.0..i = load i32, ptr %.sroa.034.i, align 16, !tbaa !21 ; 2 uses
  %i.acl = icmp ult i32 %spec.select85.i, %.sroa.034.i.0..sroa.034.i.0..sroa.034.i.0..sroa.034.0..sroa.034.0..i
  br i1 %i.acl, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.acm = icmp ne i32 %spec.select85.i, %.sroa.034.i.0..sroa.034.i.0..sroa.034.i.0..sroa.034.0..sroa.034.0..i
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i = load float, ptr %.sroa.0.i, align 16
  %i.acn = fcmp ugt float %sqrt.i300, %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i
  %or.cond.i301 = select i1 %i.acm, i1 true, i1 %i.acn
  br i1 %or.cond.i301, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ar, %bb.aq
  %.0748.lcssa.sroa.phi.i = phi ptr [ %.sroa.0.i, %bb.ar ], [ %.sroa.0.i, %bb.aq ], [ %.sroa.6.i, %bb.at ], [ %.sroa.6.i, %bb.au ], [ %.sroa.10.i, %bb.av ], [ %.sroa.10.i, %bb.aw ], [ %.sroa.14.i, %bb.ax ], [ %.sroa.14.i, %bb.ay ]
  %.0748.lcssa.sroa.phi26.i = phi ptr [ %.sroa.034.i, %bb.ar ], [ %.sroa.034.i, %bb.aq ], [ %.sroa.635.i, %bb.at ], [ %.sroa.635.i, %bb.au ], [ %.sroa.9.i, %bb.av ], [ %.sroa.9.i, %bb.aw ], [ %.sroa.12.i, %bb.ax ], [ %.sroa.12.i, %bb.ay ]
  %.0748.lcssa.sroa.phi36.i = phi ptr [ %.sroa.044.i, %bb.ar ], [ %.sroa.044.i, %bb.aq ], [ %.sroa.645.i, %bb.at ], [ %.sroa.645.i, %bb.au ], [ %.sroa.946.i, %bb.av ], [ %.sroa.946.i, %bb.aw ], [ %.sroa.1247.i, %bb.ax ], [ %.sroa.1247.i, %bb.ay ]
  store i32 %spec.select.i, ptr %.0748.lcssa.sroa.phi36.i, align 4, !tbaa !21
  store i32 %spec.select85.i, ptr %.0748.lcssa.sroa.phi26.i, align 4, !tbaa !21
  store float %sqrt.i300, ptr %.0748.lcssa.sroa.phi.i, align 4, !tbaa !27
  br label %.loopexit.i

bb.at:                                            ; preds = %bb.ar
  %.sroa.635.i.0..sroa.635.i.0..sroa.635.i.0..sroa.635.0..sroa.635.4..i = load i32, ptr %.sroa.635.i, align 4, !tbaa !21 ; 2 uses
  %i.aco = icmp ult i32 %spec.select85.i, %.sroa.635.i.0..sroa.635.i.0..sroa.635.i.0..sroa.635.0..sroa.635.4..i
  br i1 %i.aco, label %bb.as, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.acp = icmp ne i32 %spec.select85.i, %.sroa.635.i.0..sroa.635.i.0..sroa.635.i.0..sroa.635.0..sroa.635.4..i
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.4..i = load float, ptr %.sroa.6.i, align 4
  %i.acq = fcmp ugt float %sqrt.i300, %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.4..i
  %or.cond53.i = select i1 %i.acp, i1 true, i1 %i.acq
  br i1 %or.cond53.i, label %bb.av, label %bb.as

bb.av:                                            ; preds = %bb.au
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.8..i = load i32, ptr %.sroa.9.i, align 8, !tbaa !21 ; 2 uses
  %i.acr = icmp ult i32 %spec.select85.i, %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.8..i
  br i1 %i.acr, label %bb.as, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.acs = icmp ne i32 %spec.select85.i, %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.8..i
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.8..i = load float, ptr %.sroa.10.i, align 8
  %i.act = fcmp ugt float %sqrt.i300, %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.8..i
  %or.cond54.i = select i1 %i.acs, i1 true, i1 %i.act
  br i1 %or.cond54.i, label %bb.ax, label %bb.as

bb.ax:                                            ; preds = %bb.aw
  %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.12..i = load i32, ptr %.sroa.12.i, align 4, !tbaa !21 ; 2 uses
  %i.acu = icmp ult i32 %spec.select85.i, %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.12..i
  br i1 %i.acu, label %bb.as, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.acv = icmp ne i32 %spec.select85.i, %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.12..i
  %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.12..i = load float, ptr %.sroa.14.i, align 4
  %i.acw = fcmp ugt float %sqrt.i300, %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.12..i
  %or.cond55.i = select i1 %i.acv, i1 true, i1 %i.acw
  br i1 %or.cond55.i, label %.loopexit.i, label %bb.as

.loopexit.i:                                      ; preds = %bb.ay, %bb.as, %._crit_edge.i299, %bb.ap
  %i.acx = add nuw nsw i64 %.0809.i, 1            ; 2 uses
  %exitcond17.not.i = icmp eq i64 %i.acx, %i.aal
  br i1 %exitcond17.not.i, label %.preheader.i302, label %bb.ap, !llvm.loop !64

bb.az:                                            ; preds = %.preheader.i302
  store i32 %.sroa.044.i.0..sroa.044.i.0..sroa.044.i.0..sroa.044.0..sroa.044.0..pre.i, ptr %i.aak, align 4, !tbaa !21
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %bb.az, %.preheader.i302, %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit
  %.1.i304 = phi i64 [ 1, %bb.az ], [ 0, %.preheader.i302 ], [ 0, %_ZN7meshoptL18pruneSeedTrianglesEPjmPKh.exit ] ; 3 uses
  %.sroa.645.i.0..sroa.645.i.0..sroa.645.i.0..sroa.645.0..sroa.645.4..i = load i32, ptr %.sroa.645.i, align 4, !tbaa !21 ; 2 uses
  %.not.1.i = icmp eq i32 %.sroa.645.i.0..sroa.645.i.0..sroa.645.i.0..sroa.645.0..sroa.645.4..i, -1
  br i1 %.not.1.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.preheader.thread.i
  %i.acy = add nuw nsw i64 %.1.i304, 1
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.1.i304
  store i32 %.sroa.645.i.0..sroa.645.i.0..sroa.645.i.0..sroa.645.0..sroa.645.4..i, ptr %i.acz, align 4, !tbaa !21
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.preheader.thread.i
  %.1.1.i = phi i64 [ %i.acy, %bb.ba ], [ %.1.i304, %.preheader.thread.i ] ; 3 uses
  %.sroa.946.i.0..sroa.946.i.0..sroa.946.i.0..sroa.946.0..sroa.946.8..i = load i32, ptr %.sroa.946.i, align 8, !tbaa !21 ; 2 uses
  %.not.2.i = icmp eq i32 %.sroa.946.i.0..sroa.946.i.0..sroa.946.i.0..sroa.946.0..sroa.946.8..i, -1
  br i1 %.not.2.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ada = add nuw nsw i64 %.1.1.i, 1
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.1.1.i
  store i32 %.sroa.946.i.0..sroa.946.i.0..sroa.946.i.0..sroa.946.0..sroa.946.8..i, ptr %i.adb, align 4, !tbaa !21
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1.2.i = phi i64 [ %i.ada, %bb.bc ], [ %.1.1.i, %bb.bb ] ; 3 uses
  %.sroa.1247.i.0..sroa.1247.i.0..sroa.1247.i.0..sroa.1247.0..sroa.1247.12..i = load i32, ptr %.sroa.1247.i, align 4, !tbaa !21 ; 2 uses
  %.not.3.i = icmp eq i32 %.sroa.1247.i.0..sroa.1247.i.0..sroa.1247.i.0..sroa.1247.0..sroa.1247.12..i, -1
  br i1 %.not.3.i, label %_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.adc = add nuw nsw i64 %.1.2.i, 1
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %.1.2.i
  store i32 %.sroa.1247.i.0..sroa.1247.i.0..sroa.1247.i.0..sroa.1247.0..sroa.1247.12..i, ptr %i.add, align 4, !tbaa !21
  br label %_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit

_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit: ; preds = %bb.bd, %bb.be
  %.1.3.i = phi i64 [ %i.adc, %bb.be ], [ %.1.2.i, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.034.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.044.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.645.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.946.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1247.i)
  %i.ade = add i64 %.1.3.i, %i.aaj                ; 4 uses
  %.not.i305 = icmp eq i64 %i.ade, 0
  br i1 %.not.i305, label %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit.thread, label %.lr.ph.i306

.lr.ph.i306:                                      ; preds = %_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit, %bb.bh
  %.050.i = phi i64 [ %i.aev, %bb.bh ], [ 0, %_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit ] ; 2 uses
  %.04149.i = phi float [ %.1.i309, %bb.bh ], [ f0x7F7FFFFF, %_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit ] ; 2 uses
  %.04248.i = phi i32 [ %.143.i, %bb.bh ], [ -1, %_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit ] ; 3 uses
  %.04447.i = phi i32 [ %.145.i, %bb.bh ], [ -1, %_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit ]
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.050.i
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !21
  %i.adh = freeze i32 %i.adg                      ; 3 uses
  %i.adi = mul i32 %i.adh, 3                      ; 3 uses
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adj
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !21
  %i.adm = add i32 %i.adi, 1
  %i.adn = zext i32 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adn
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !21
  %i.adq = add i32 %i.adi, 2
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !21
  %i.adu = zext i32 %i.adl to i64
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0383.0, i64 %i.adu
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !21
  %i.adx = zext i32 %i.adp to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0383.0, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !21
  %i.aea = add i32 %i.adz, %i.adw
  %i.aeb = zext i32 %i.adt to i64
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0383.0, i64 %i.aeb
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !21
  %i.aee = add i32 %i.aea, %i.aed                 ; 3 uses
  %i.aef = zext i32 %i.adh to i64
  %i.aeg = getelementptr inbounds nuw [24 x i8], ptr %i.lk, i64 %i.aef ; 3 uses
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !71
  %i.aei = fsub float %i.aeh, %.0221.lcssa        ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !72
  %i.ael = fsub float %i.aek, %i.sk               ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !73
  %i.aeo = fsub float %i.aen, %i.sl               ; 2 uses
  %i.aep = fmul float %i.ael, %i.ael
  %i.aeq = tail call float @llvm.fmuladd.f32(float %i.aei, float %i.aei, float %i.aep)
  %i.aer = tail call float @llvm.fmuladd.f32(float %i.aeo, float %i.aeo, float %i.aeq)
  %sqrt.i307 = tail call float @llvm.sqrt.f32(float %i.aer) ; 2 uses
  %i.aes = icmp ult i32 %i.aee, %.04248.i
  br i1 %i.aes, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i306
  %i.aet = icmp eq i32 %i.aee, %.04248.i
  %i.aeu = fcmp olt float %sqrt.i307, %.04149.i
  %or.cond.i308 = select i1 %i.aet, i1 %i.aeu, i1 false
  br i1 %or.cond.i308, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %.lr.ph.i306
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.145.i = phi i32 [ %i.adh, %bb.bg ], [ %.04447.i, %bb.bf ] ; 3 uses
  %.143.i = phi i32 [ %i.aee, %bb.bg ], [ %.04248.i, %bb.bf ]
  %.1.i309 = phi float [ %sqrt.i307, %bb.bg ], [ %.04149.i, %bb.bf ]
  %i.aev = add nuw nsw i64 %.050.i, 1             ; 2 uses
  %exitcond.not.i310 = icmp eq i64 %i.aev, %i.ade
  br i1 %exitcond.not.i310, label %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit, label %.lr.ph.i306, !llvm.loop !65

_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit: ; preds = %bb.bh
  %.not253 = icmp eq i32 %.145.i, -1
  br i1 %.not253, label %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit.thread, label %bb.bi

_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit.thread: ; preds = %_ZN7meshoptL19appendSeedTrianglesEPjRK15meshopt_MeshletPKjS5_RKNS_18TriangleAdjacency2EPKNS_4ConeES5_fff.exit, %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit.thread, %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit, %.thread408
  %.0204407412 = phi i1 [ false, %.thread408 ], [ %.0204407411, %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit ], [ %.0204407411, %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit.thread ]
  %.1211 = phi i64 [ %.0210, %.thread408 ], [ %i.ade, %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit ], [ %i.ade, %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit.thread ]
  %.2 = phi i32 [ %.1206406414, %.thread408 ], [ %.145.i, %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit ], [ %.1206406415, %_ZN7meshoptL18selectSeedTriangleEPKjmS1_PKNS_4ConeES1_fff.exit.thread ] ; 5 uses
  %i.aew = mul i32 %.2, 3                         ; 3 uses
  %i.aex = zext i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aex ; 4 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !21 ; 2 uses
  %i.afa = add i32 %i.aew, 1
  %i.afb = zext i32 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.afb
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !21 ; 2 uses
  %i.afe = add i32 %i.aew, 2
  %i.aff = zext i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !21 ; 2 uses
  %i.afi = zext i32 %i.aez to i64
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.afi ; 4 uses
  %i.afk = zext i32 %i.afd to i64
  %i.afl = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.afk ; 4 uses
  %i.afm = zext i32 %i.afh to i64
  %i.afn = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.afm ; 4 uses
  %i.afo = load i16, ptr %i.afj, align 2, !tbaa !29 ; 3 uses
  %.lobit.i312 = lshr i16 %i.afo, 15
  %i.afp = load i16, ptr %i.afl, align 2, !tbaa !29
  %.lobit67.i = lshr i16 %i.afp, 15
  %narrow.i313 = add nuw nsw i16 %.lobit67.i, %.lobit.i312
  %i.afq = load i16, ptr %i.afn, align 2, !tbaa !29
  %.lobit68.i = lshr i16 %i.afq, 15
  %narrow69.i = add nuw nsw i16 %narrow.i313, %.lobit68.i
  %i.afr = zext nneg i16 %narrow69.i to i32
  %i.afs = add i32 %.sroa.18.0, %i.afr
  %i.aft = zext i32 %i.afs to i64
  %i.afu = icmp ult i64 %8, %i.aft
  %i.afv = zext i32 %.sroa.29.0 to i64
  %i.afw = icmp ule i64 %10, %i.afv
  %or.cond.i314 = or i1 %i.afw, %.0204407412
  %or.cond439 = select i1 %i.afu, i1 true, i1 %or.cond.i314 ; 4 uses
  br i1 %or.cond439, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.afx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0207 ; 4 uses
  store i32 %.sroa.0336.0, ptr %i.afx, align 4, !tbaa !21
  %.sroa.13.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %i.afx, i64 4
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx340, align 4, !tbaa !21
  %.sroa.18.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  store i32 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx345, align 4, !tbaa !21
  %.sroa.29.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %i.afx, i64 12
  store i32 %.sroa.29.0, ptr %.sroa.29.0..sroa_idx351, align 4, !tbaa !21
  %i.afy = zext i32 %.sroa.18.0 to i64            ; 2 uses
  %.not.i316 = icmp eq i32 %.sroa.18.0, 0
  br i1 %.not.i316, label %._crit_edge.i321, label %.lr.ph.i317

.lr.ph.i317:                                      ; preds = %bb.bj
  %i.afz = zext i32 %.sroa.0336.0 to i64
  %invariant.gep.i318 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.afz ; 5 uses
  %xtraiter599 = and i64 %i.afy, 3                ; 3 uses
  %i.aga = icmp ult i32 %.sroa.18.0, 4
  br i1 %i.aga, label %.epil.preheader598, label %.lr.ph.i317.new

.lr.ph.i317.new:                                  ; preds = %.lr.ph.i317
  %unroll_iter603 = and i64 %i.afy, 4294967292
  br label %bb.bl

._crit_edge.i321.loopexit.unr-lcssa:              ; preds = %bb.bl
  %lcmp.mod601.not = icmp eq i64 %xtraiter599, 0
  br i1 %lcmp.mod601.not, label %._crit_edge.i321.loopexit, label %.epil.preheader598

.epil.preheader598:                               ; preds = %._crit_edge.i321.loopexit.unr-lcssa, %.lr.ph.i317
  %.070.i.epil.init = phi i64 [ 0, %.lr.ph.i317 ], [ %i.agx, %._crit_edge.i321.loopexit.unr-lcssa ]
  %lcmp.mod602 = icmp ne i64 %xtraiter599, 0
  tail call void @llvm.assume(i1 %lcmp.mod602)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader598
  %.070.i.epil = phi i64 [ %.070.i.epil.init, %.epil.preheader598 ], [ %i.age, %bb.bk ] ; 2 uses
  %epil.iter600 = phi i64 [ 0, %.epil.preheader598 ], [ %epil.iter600.next, %bb.bk ]
  %gep.i319.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i318, i64 %.070.i.epil
  %i.agb = load i32, ptr %gep.i319.epil, align 4, !tbaa !21
  %i.agc = zext i32 %i.agb to i64
  %i.agd = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.agc
  store i16 -1, ptr %i.agd, align 2, !tbaa !29
  %i.age = add nuw nsw i64 %.070.i.epil, 1
  %epil.iter600.next = add i64 %epil.iter600, 1   ; 2 uses
  %epil.iter600.cmp.not = icmp eq i64 %epil.iter600.next, %xtraiter599
  br i1 %epil.iter600.cmp.not, label %._crit_edge.i321.loopexit, label %bb.bk, !llvm.loop !66

._crit_edge.i321.loopexit:                        ; preds = %bb.bk, %._crit_edge.i321.loopexit.unr-lcssa
  %.pre71.i.pre = load i16, ptr %i.afj, align 2, !tbaa !29
  br label %._crit_edge.i321

._crit_edge.i321:                                 ; preds = %._crit_edge.i321.loopexit, %bb.bj
  %.pre71.i = phi i16 [ %.pre71.i.pre, %._crit_edge.i321.loopexit ], [ %i.afo, %bb.bj ]
  %i.agf = add i32 %.sroa.18.0, %.sroa.0336.0
  %i.agg = mul i32 %.sroa.29.0, 3
  %i.agh = add i32 %i.agg, %.sroa.13.0
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bl, %.lr.ph.i317.new
  %.070.i = phi i64 [ 0, %.lr.ph.i317.new ], [ %i.agx, %bb.bl ] ; 5 uses
  %niter604 = phi i64 [ 0, %.lr.ph.i317.new ], [ %niter604.next.3, %bb.bl ]
  %gep.i319 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i318, i64 %.070.i
  %i.agi = load i32, ptr %gep.i319, align 4, !tbaa !21
  %i.agj = zext i32 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.agj
  store i16 -1, ptr %i.agk, align 2, !tbaa !29
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i318, i64 %.070.i
  %gep.i319.1 = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.agm = load i32, ptr %gep.i319.1, align 4, !tbaa !21
  %i.agn = zext i32 %i.agm to i64
  %i.ago = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.agn
  store i16 -1, ptr %i.ago, align 2, !tbaa !29
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i318, i64 %.070.i
  %gep.i319.2 = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  %i.agq = load i32, ptr %gep.i319.2, align 4, !tbaa !21
  %i.agr = zext i32 %i.agq to i64
  %i.ags = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.agr
  store i16 -1, ptr %i.ags, align 2, !tbaa !29
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i318, i64 %.070.i
  %gep.i319.3 = getelementptr inbounds nuw i8, ptr %i.agt, i64 12
  %i.agu = load i32, ptr %gep.i319.3, align 4, !tbaa !21
  %i.agv = zext i32 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [2 x i8], ptr %i.qf, i64 %i.agv
  store i16 -1, ptr %i.agw, align 2, !tbaa !29
end_hunk_1
