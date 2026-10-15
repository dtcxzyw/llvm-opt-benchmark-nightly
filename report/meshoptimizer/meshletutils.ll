Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletutils?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.meshopt_Bounds = type { [3 x float], float, [3 x float], [3 x float], float, [3 x i8], i8 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_computeClusterBounds(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.meshopt_Bounds) align 4 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 6 uses
  %i.b = alloca [1537 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 -1, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 1
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01719.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01719.epil.init
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 4 uses
  %i.f = and i32 %i.e, 511
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.020.epil.init
  store i32 %i.e, ptr %i.i, align 4, !tbaa !9
  %i.j = load i32, ptr %i.h, align 4, !tbaa !9
  %i.k = icmp ne i32 %i.j, %i.e
  %i.l = zext i1 %i.k to i64
  %i.m = add i64 %.020.epil.init, %i.l
  store i32 %i.e, ptr %i.h, align 4, !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ], [ %i.m, %.lr.ph.epil.preheader ]
  call fastcc void @_ZN7meshoptL20computeClusterBoundsEPKjmS1_mPKfm(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.b, i64 noundef %.0.lcssa, ptr noundef %3, i64 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.01719 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01719
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 4 uses
  %i.p = and i32 %i.o, 511
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.020
  store i32 %i.o, ptr %i.s, align 4, !tbaa !9
  %i.t = load i32, ptr %i.r, align 4, !tbaa !9
  %i.u = icmp ne i32 %i.t, %i.o
  %i.v = zext i1 %i.u to i64
  %i.w = add i64 %.020, %i.v                      ; 2 uses
  store i32 %i.o, ptr %i.r, align 4, !tbaa !9
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01719
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9    ; 4 uses
  %i.aa = and i32 %i.z, 511
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w
  store i32 %i.z, ptr %i.ad, align 4, !tbaa !9
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.af = icmp ne i32 %i.ae, %i.z
  %i.ag = zext i1 %i.af to i64
  %i.ah = add i64 %i.w, %i.ag                     ; 3 uses
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !9
  %i.ai = add nuw i64 %.01719, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN7meshoptL20computeClusterBoundsEPKjmS1_mPKfm(ptr dead_on_unwind noalias nofree writable writeonly align 4 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x [4 x float]], align 16     ; 6 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 6 uses
  %i.e = lshr i64 %6, 2                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.j

._crit_edge:                                      ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.f = icmp eq i64 %.1, 0
  br i1 %i.f, label %bb.j, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0147 = phi i64 [ %.1, %bb.c ], [ 0, %bb.a ]   ; 3 uses
  %.0140146 = phi i64 [ %i.bs, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0140146 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = getelementptr i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !9
  %i.m = zext i32 %i.h to i64
  %i.n = mul i64 %i.e, %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.n ; 2 uses
  %i.p = zext i32 %i.j to i64
  %i.q = mul i64 %i.e, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.q ; 2 uses
  %i.s = zext i32 %i.l to i64
  %i.t = mul i64 %i.e, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.t ; 2 uses
  %i.v = load float, ptr %i.r, align 4, !tbaa !12
  %i.w = load float, ptr %i.o, align 4, !tbaa !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.z = load float, ptr %i.u, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ab = load <2 x float>, ptr %i.x, align 4, !tbaa !12 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.y, align 4, !tbaa !12 ; 5 uses
  %i.ad = fsub <2 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.af = insertelement <2 x float> %i.ae, float %i.v, i64 1
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ah = insertelement <2 x float> %i.ag, float %i.w, i64 1 ; 2 uses
  %i.ai = fsub <2 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = load <2 x float>, ptr %i.aa, align 4, !tbaa !12 ; 2 uses
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.z, i64 1
  %i.am = fsub <2 x float> %i.al, %i.ah           ; 2 uses
  %i.an = fsub <2 x float> %i.aj, %i.ac           ; 2 uses
  %i.ao = fneg <2 x float> %i.an
  %i.ap = fmul <2 x float> %i.ai, %i.ao
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.am, <2 x float> %i.ap) ; 4 uses
  %i.ar = extractelement <2 x float> %i.am, i64 1
  %i.as = fneg float %i.ar
  %i.at = extractelement <2 x float> %i.ad, i64 0
  %i.au = fmul float %i.at, %i.as
  %i.av = extractelement <2 x float> %i.ai, i64 1
  %i.aw = extractelement <2 x float> %i.an, i64 0
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.av, float %i.aw, float %i.au) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.aq, %i.aq
  %i.ay = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.az = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.ay)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.ba)
  %i.bc = tail call float @sqrtf(float noundef %i.bb) #8 ; 3 uses
  %i.bd = fcmp oeq float %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.be = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x float> %i.aq, %i.bf           ; 3 uses
  %i.bh = fdiv float %i.ax, %i.bc                 ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0147 ; 3 uses
  store <2 x float> %i.bg, ptr %i.bi, align 16, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bh, ptr %i.bj, align 8, !tbaa !12
  %shift = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop162 = fmul <2 x float> %i.ac, %shift
  %i.bk = extractelement <2 x float> %foldExtExtBinop162, i64 0
  %i.bl = extractelement <2 x float> %i.bg, i64 0
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.w, float %i.bk)
  %i.bn = extractelement <2 x float> %i.ac, i64 1
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bn, float %i.bm)
  %i.bp = fneg float %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store float %i.bp, ptr %i.bq, align 4, !tbaa !12
  %i.br = add nuw nsw i64 %.0147, 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i64 [ %i.br, %bb.b ], [ %.0147, %.lr.ph ] ; 5 uses
  %i.bs = add i64 %.0140146, 3                    ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %2
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !17

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr noundef %i.c, ptr noundef nonnull %5, i64 noundef %4, i64 noundef %6, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 7, ptr noundef %3)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %7 = load float, ptr %i.bu, align 8, !tbaa !12  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %.1, i64 noundef 16, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 3, ptr noundef null)
  %8 = load <2 x float>, ptr %i.c, align 16, !tbaa !12 ; 4 uses
  %9 = load <2 x float>, ptr %i.d, align 16, !tbaa !12 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !12 ; 3 uses
  %foldExtExtBinop164 = fmul <2 x float> %9, %9
  %10 = extractelement <2 x float> %foldExtExtBinop164, i64 1
  %11 = extractelement <2 x float> %9, i64 0      ; 2 uses
  %i.bx = tail call float @llvm.fmuladd.f32(float %11, float %11, float %10)
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.bx)
  %i.bz = tail call float @sqrtf(float noundef %i.by) #8 ; 2 uses
  %i.ca = fcmp oeq float %i.bz, 0.000000e+00
  %i.cb = fdiv float 1.000000e+00, %i.bz
  %i.cc = select i1 %i.ca, float 0.000000e+00, float %i.cb ; 2 uses
  %12 = insertelement <2 x float> poison, float %i.cc, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x float> %9, %13                  ; 7 uses
  %i.cd = fmul float %i.bw, %i.cc                 ; 8 uses
  %15 = extractelement <2 x float> %14, i64 0     ; 4 uses
  %16 = extractelement <2 x float> %14, i64 1     ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  store <2 x float> %8, ptr %0, align 4, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %7, ptr %i.ce, align 4, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.cg, ptr %i.ch, align 4, !tbaa !21
  %i.ci = fcmp ugt float %i.cv, 1.000000e-01
  br i1 %i.ci, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %bb.e
  %i.cj = extractelement <2 x float> %8, i64 1
  %i.ck = extractelement <2 x float> %8, i64 0
  br label %.preheader

bb.f:                                             ; preds = %bb.d, %bb.f
  %.0143149 = phi i64 [ 0, %bb.d ], [ %i.cw, %bb.f ] ; 2 uses
  %.0144148 = phi float [ 1.000000e+00, %bb.d ], [ %i.cv, %bb.f ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0143149 ; 3 uses
  %i.cm = load float, ptr %i.cl, align 16, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !12
  %i.cp = fmul float %16, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cm, float %15, float %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !12
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cd, float %i.cq) ; 2 uses
  %i.cu = fcmp olt float %i.ct, %.0144148
  %i.cv = select i1 %i.cu, float %i.ct, float %.0144148 ; 4 uses
  %i.cw = add nuw nsw i64 %.0143149, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %.1
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !18

bb.g:                                             ; preds = %bb.e
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !22
  br label %bb.i

bb.h:                                             ; preds = %.preheader
  %17 = fneg <2 x float> %14
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %19 = insertelement <2 x float> poison, float %i.ey, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %20, <2 x float> %8)
  store <2 x float> %21, ptr %18, align 4, !tbaa !12
  %22 = fneg float %i.cd
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %15, ptr %i.cz, align 4, !tbaa !12
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %16, ptr %i.da, align 4, !tbaa !12
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cd, ptr %i.db, align 4, !tbaa !12
  %23 = fneg float %i.cv
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %26 = fcmp oge <2 x float> %14, splat (float -1.000000e+00)
  %27 = select <2 x i1> %26, <2 x float> %14, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %28 = fcmp ole <2 x float> %27, splat (float 1.000000e+00)
  %29 = fcmp oge <2 x float> %14, zeroinitializer
  %30 = select <2 x i1> %29, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %31 = select <2 x i1> %28, <2 x float> %27, <2 x float> splat (float 1.000000e+00)
  %32 = insertelement <4 x float> poison, float %22, i64 0
  %33 = insertelement <4 x float> %32, float %23, i64 1
  %34 = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %35 = shufflevector <4 x float> %33, <4 x float> %34, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %36 = insertelement <4 x float> <float poison, float poison, float 1.270000e+02, float 1.270000e+02>, float %i.ey, i64 0
  %37 = insertelement <4 x float> %36, float %i.cv, i64 1
  %38 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %7, i64 0
  %39 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %40 = shufflevector <4 x float> %38, <4 x float> %39, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> %37, <4 x float> %40) ; 3 uses
  %42 = extractelement <4 x float> %41, i64 0
  store float %42, ptr %i.cy, align 4, !tbaa !12
  %43 = extractelement <4 x float> %41, i64 1
  %44 = tail call float @sqrtf(float noundef %43) #8 ; 2 uses
  store float %44, ptr %24, align 4, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.dd = fcmp oge float %i.cd, 0.000000e+00
  %i.de = select i1 %i.dd, float 5.000000e-01, float -5.000000e-01
  %i.df = fcmp oge float %i.cd, -1.000000e+00
  %i.dg = select i1 %i.df, float %i.cd, float -1.000000e+00 ; 2 uses
  %i.dh = fcmp ole float %i.dg, 1.000000e+00
  %i.di = select i1 %i.dh, float %i.dg, float 1.000000e+00
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float 1.270000e+02, float %i.de)
  %i.dk = fptosi float %i.dj to i32               ; 2 uses
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %i.dl, ptr %i.dm, align 2, !tbaa !13
  %45 = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dn = fptosi <2 x float> %45 to <2 x i32>
  %i.do = trunc <2 x i32> %i.dn to <2 x i8>       ; 3 uses
  %i.dp = extractelement <2 x i8> %i.do, i64 0
  store i8 %i.dp, ptr %25, align 4, !tbaa !13
  %i.dq = extractelement <2 x i8> %i.do, i64 1
  store i8 %i.dq, ptr %i.dc, align 1, !tbaa !13
  %i.dr = sitofp <2 x i8> %i.do to <2 x float>    ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = fdiv float %i.ds, 1.270000e+02
  %i.du = fsub float %i.dt, %15
  %i.dv = tail call float @llvm.fabs.f32(float %i.du)
  %sext = shl i32 %i.dk, 24
  %i.dw = ashr exact i32 %sext, 24
  %i.dx = sitofp i32 %i.dw to float
  %i.dy = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dz = insertelement <2 x float> %i.dy, float %i.dx, i64 1
  %i.ea = fdiv <2 x float> %i.dz, splat (float 1.270000e+02)
  %46 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %47 = insertelement <2 x float> %46, float %i.cd, i64 1
  %48 = fsub <2 x float> %i.ea, %47
  %49 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %48) ; 2 uses
  %50 = fadd float %i.dv, %44
  %51 = extractelement <2 x float> %49, i64 0
  %i.eb = fadd float %51, %50
  %52 = extractelement <2 x float> %49, i64 1
  %i.ec = fadd float %52, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float 1.270000e+02, float 1.000000e+00)
  %i.ee = fptosi float %i.ed to i32
  %i.ef = tail call i32 @llvm.smin.i32(i32 %i.ee, i32 127)
  %i.eg = trunc i32 %i.ef to i8
  br label %bb.i

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.0141151 = phi i64 [ %i.ez, %.preheader ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0142150 = phi float [ %i.ey, %.preheader ], [ 0.000000e+00, %.preheader.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0141151 ; 4 uses
  %i.ei = load float, ptr %i.eh, align 16, !tbaa !12 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !12 ; 2 uses
  %i.el = fmul float %i.cj, %i.ek
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ei, float %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.eo = load float, ptr %i.en, align 8, !tbaa !12 ; 2 uses
  %i.ep = tail call float @llvm.fmuladd.f32(float %7, float %i.eo, float %i.em)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.er = load float, ptr %i.eq, align 4, !tbaa !12
  %i.es = fadd float %i.er, %i.ep
  %i.et = fmul float %16, %i.ek
  %i.eu = tail call float @llvm.fmuladd.f32(float %15, float %i.ei, float %i.et)
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.eo, float %i.eu)
  %i.ew = fdiv float %i.es, %i.ev                 ; 2 uses
  %i.ex = fcmp ogt float %i.ew, %.0142150
  %i.ey = select i1 %i.ex, float %i.ew, float %.0142150 ; 3 uses
  %i.ez = add nuw nsw i64 %.0141151, 1            ; 2 uses
  %exitcond153.not = icmp eq i64 %i.ez, %.1
  br i1 %exitcond153.not, label %bb.h, label %.preheader, !llvm.loop !19

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i8 [ %i.eg, %bb.h ], [ 127, %bb.g ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %.sink, ptr %i.fa, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_computeMeshletBounds(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.meshopt_Bounds) align 4 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1536 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = mul i64 %3, 3                            ; 5 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 1
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %.01719.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod23 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.01719.epil.init
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01719.epil.init
  store i32 %i.h, ptr %i.i, align 4, !tbaa !9
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = tail call i64 @llvm.umax.i64(i64 %.020.epil.init, i64 %i.j)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ]
  call fastcc void @_ZN7meshoptL20computeClusterBoundsEPKjmS1_mPKfm(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef nonnull %i.a, i64 noundef %i.b, ptr noundef %1, i64 noundef %.0.lcssa, ptr noundef %4, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ]
  %.01719 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.01719
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01719
  store i32 %i.p, ptr %i.q, align 8, !tbaa !9
  %i.r = add nuw nsw i64 %i.n, 1
  %i.s = tail call i64 @llvm.umax.i64(i64 %.020, i64 %i.r)
  %i.t = or disjoint i64 %.01719, 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  store i32 %i.y, ptr %i.z, align 4, !tbaa !9
  %i.aa = add nuw nsw i64 %i.w, 1
  %i.ab = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.aa) ; 3 uses
  %i.ac = add nuw nsw i64 %.01719, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_computeSphereBounds(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.meshopt_Bounds) align 4 captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %i.d = select i1 %.not, ptr %i.a, ptr %4
  %i.e = select i1 %.not, i64 0, i64 %5
  call fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef 7, ptr noundef null)
  %i.f = load <4 x float>, ptr %i.b, align 16, !tbaa !12
  store <4 x float> %i.f, ptr %0, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef range(i64 3, 8) %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #3 {
.preheader207:
  %i.a = alloca [7 x i32], align 16               ; 19 uses
  %i.b = alloca [7 x i32], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = shl nuw nsw i64 %6, 2                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.c, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.c, i1 false), !tbaa !9
  %i.d = lshr i64 %3, 2                           ; 18 uses
  %i.e = lshr i64 %5, 2                           ; 18 uses
  %.not223 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not223, label %.preheader, label %.lr.ph

.preheader.preheader.loopexit:                    ; preds = %bb.e
  store i32 %i.ba, ptr %i.a, align 16, !tbaa !9
  store i32 %i.bd, ptr %i.b, align 16, !tbaa !9
  store i32 %i.bj, ptr %i.f, align 4
  store i32 %i.bm, ptr %i.g, align 4
  store i32 %i.bt, ptr %i.h, align 8
  store i32 %i.bw, ptr %i.i, align 8
  store i32 %i.ce, ptr %i.j, align 4
  store i32 %i.cd, ptr %i.k, align 4
  store i32 %i.cc, ptr %i.l, align 16
  store i32 %i.cb, ptr %i.m, align 16
  store i32 %i.ca, ptr %i.n, align 4
  store i32 %i.bz, ptr %i.o, align 4
  store i32 %i.by, ptr %i.p, align 8
  store i32 %i.bx, ptr %i.q, align 8
  br label %.preheader

.lr.ph:                                           ; preds = %.preheader207
  %.not206 = icmp eq ptr %7, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %exitcond225.not.2 = icmp eq i64 %6, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %exitcond225.not.3 = icmp eq i64 %6, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %exitcond225.not.4 = icmp eq i64 %6, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %exitcond225.not.5 = icmp eq i64 %6, 6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 16
  %.promoted250 = load i32, ptr %i.b, align 16
  %.promoted252 = load i32, ptr %i.f, align 4
  %.promoted254 = load i32, ptr %i.g, align 4
  %.promoted256 = load i32, ptr %i.h, align 8
  %.promoted258 = load i32, ptr %i.i, align 8
  %.promoted260 = load i32, ptr %i.j, align 4
  %.promoted262 = load i32, ptr %i.k, align 4
  %.promoted264 = load i32, ptr %i.l, align 16
  %.promoted266 = load i32, ptr %i.m, align 16
  %.promoted268 = load i32, ptr %i.n, align 4
  %.promoted270 = load i32, ptr %i.o, align 4
  %.promoted272 = load i32, ptr %i.p, align 8
  %.promoted274 = load i32, ptr %i.q, align 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.e
  %i.r = phi i32 [ %.promoted274, %.lr.ph ], [ %i.bx, %bb.e ] ; 5 uses
  %i.s = phi i32 [ %.promoted272, %.lr.ph ], [ %i.by, %bb.e ] ; 5 uses
  %i.t = phi i32 [ %.promoted270, %.lr.ph ], [ %i.bz, %bb.e ] ; 4 uses
  %i.u = phi i32 [ %.promoted268, %.lr.ph ], [ %i.ca, %bb.e ] ; 4 uses
  %i.v = phi i32 [ %.promoted266, %.lr.ph ], [ %i.cb, %bb.e ] ; 3 uses
  %i.w = phi i32 [ %.promoted264, %.lr.ph ], [ %i.cc, %bb.e ] ; 3 uses
  %i.x = phi i32 [ %.promoted262, %.lr.ph ], [ %i.cd, %bb.e ] ; 2 uses
  %i.y = phi i32 [ %.promoted260, %.lr.ph ], [ %i.ce, %bb.e ] ; 2 uses
  %i.z = phi i32 [ %.promoted258, %.lr.ph ], [ %i.bw, %bb.e ]
  %i.aa = phi i32 [ %.promoted256, %.lr.ph ], [ %i.bt, %bb.e ]
  %i.ab = phi i32 [ %.promoted254, %.lr.ph ], [ %i.bm, %bb.e ]
  %i.ac = phi i32 [ %.promoted252, %.lr.ph ], [ %i.bj, %bb.e ]
  %i.ad = phi i32 [ %.promoted250, %.lr.ph ], [ %i.bd, %bb.e ]
  %i.ae = phi i32 [ %.promoted, %.lr.ph ], [ %i.ba, %bb.e ]
end_hunk_0
begin_hunk_1_@meshopt_optimizeMeshletLevel:bb.a
  %.1247 = phi i8 [ %i.ew, %.preheader ], [ %i.ew, %bb.y ], [ %i.eu, %bb.z ], [ %i.es, %._crit_edge318 ], [ %i.eu, %bb.x ], [ %i.es, %bb.c ], [ %i.ew, %bb.d ], [ %i.ew, %bb.e ], [ %i.ew, %.lr.ph323 ] ; 2 uses
  store i8 %.1251, ptr %i.er, align 1, !tbaa !13
  store i8 %.1249, ptr %i.et, align 1, !tbaa !13
  store i8 %.1247, ptr %i.ev, align 1, !tbaa !13
  %i.jj = zext i8 %.1247 to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jj
  store i8 1, ptr %i.jk, align 1, !tbaa !13
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi346
  store i8 1, ptr %i.jl, align 1, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi
  store i8 1, ptr %i.jm, align 1, !tbaa !13
  %i.jn = add nuw i64 %.0252321, 1                ; 2 uses
  %exitcond344.not = icmp eq i64 %i.jn, %3
  br i1 %exitcond344.not, label %.lr.ph327.preheader, label %.lr.ph323, !llvm.loop !30

.lr.ph327.preheader:                              ; preds = %.thread373, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.jo = shl i64 %1, 1
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.jo, i1 false)
  %i.jp = mul i64 %3, 3
  br label %.lr.ph327

._crit_edge328.loopexit:                          ; preds = %bb.ab
  %i.jq = shl i64 %.1, 2
  br label %._crit_edge328

._crit_edge328:                                   ; preds = %._crit_edge.thread, %._crit_edge328.loopexit
  %.0240.lcssa = phi i64 [ 0, %._crit_edge.thread ], [ %i.jq, %._crit_edge328.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.c, i64 %.0240.lcssa, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.ab
  %.0325 = phi i64 [ %i.ke, %bb.ab ], [ 0, %.lr.ph327.preheader ] ; 2 uses
  %.0240324 = phi i64 [ %.1, %bb.ab ], [ 0, %.lr.ph327.preheader ] ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 %.0325 ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !13
  %i.jt = zext i8 %i.js to i64                    ; 2 uses
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jt ; 2 uses
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !15 ; 2 uses
  %i.jw = icmp slt i16 %i.jv, 0
  br i1 %i.jw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph327
  %i.jx = trunc i64 %.0240324 to i16              ; 2 uses
  store i16 %i.jx, ptr %i.ju, align 2, !tbaa !15
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jt
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !9
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0240324
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !9
  %i.kb = add nuw nsw i64 %.0240324, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph327
  %i.kc = phi i16 [ %i.jx, %bb.aa ], [ %i.jv, %.lr.ph327 ]
  %.1 = phi i64 [ %i.kb, %bb.aa ], [ %.0240324, %.lr.ph327 ] ; 2 uses
  %i.kd = trunc i16 %i.kc to i8
  store i8 %i.kd, ptr %i.jr, align 1, !tbaa !13
  %i.ke = add nuw i64 %.0325, 1                   ; 2 uses
  %exitcond345.not = icmp eq i64 %i.ke, %i.jp
  br i1 %exitcond345.not, label %._crit_edge328.loopexit, label %.lr.ph327, !llvm.loop !31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_optimizeMeshlet(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  tail call void @meshopt_optimizeMeshletLevel(ptr noundef %0, i64 noundef %3, ptr noundef %1, i64 noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @meshopt_extractMeshletIndices(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1024 x i16], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 -1, i64 2048, i1 false)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph51

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.042.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.042.lcssa

.lr.ph51:                                         ; preds = %bb.a, %bb.h
  %.04150 = phi i64 [ %i.af, %bb.h ], [ 0, %bb.a ] ; 5 uses
  %.04248 = phi i64 [ %.2, %bb.h ], [ 0, %bb.a ]  ; 11 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04150
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9    ; 5 uses
  %i.d = and i32 %i.c, 1023
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.e ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !15   ; 3 uses
  %i.h = icmp sgt i16 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph51
  %i.i = zext nneg i16 %i.g to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = icmp eq i32 %i.k, %i.c
  br i1 %i.l, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not52 = icmp eq i64 %.04248, 0
  br i1 %.not52, label %.thread44, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.m = trunc i16 %i.g to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.04150
  store i8 %i.m, ptr %i.n, align 1, !tbaa !13
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph51
  %i.o = trunc i64 %.04248 to i16
  store i16 %i.o, ptr %i.f, align 2, !tbaa !15
  %i.p = trunc i64 %.04248 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.04150
  store i8 %i.p, ptr %i.q, align 1, !tbaa !13
  %i.r = add i64 %.04248, 1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04248
  store i32 %i.c, ptr %i.s, align 4, !tbaa !9
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %.047 = phi i64 [ %i.w, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.047
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.047, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %.04248
  br i1 %exitcond.not, label %.thread44, label %.lr.ph, !llvm.loop !32

bb.f:                                             ; preds = %.lr.ph
  %i.x = trunc i64 %.047 to i32                   ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread44, label %bb.g

.thread44:                                        ; preds = %bb.e, %.preheader, %bb.f
  %i.z = trunc i64 %.04248 to i32
  %i.aa = add i64 %.04248, 1
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04248
  store i32 %i.c, ptr %i.ab, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %.thread44, %bb.f
  %.143 = phi i64 [ %i.aa, %.thread44 ], [ %.04248, %bb.f ]
  %.1 = phi i32 [ %i.z, %.thread44 ], [ %i.x, %bb.f ] ; 2 uses
  %i.ac = trunc i32 %.1 to i16
  store i16 %i.ac, ptr %i.f, align 2, !tbaa !15
  %i.ad = trunc i32 %.1 to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.04150
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %.2 = phi i64 [ %.04248, %bb.c ], [ %i.r, %bb.d ], [ %.143, %bb.g ] ; 2 uses
  %i.af = add nuw i64 %.04150, 1                  ; 2 uses
  %exitcond54.not = icmp eq i64 %i.af, %3
  br i1 %exitcond54.not, label %._crit_edge, label %.lr.ph51, !llvm.loop !33
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!"_ZTS14meshopt_Bounds", !5, i64 0, !11, i64 12, !5, i64 16, !5, i64 28, !11, i64 40, !5, i64 44, !5, i64 47}
!21 = !{!20, !11, i64 12}
!22 = !{!20, !11, i64 40}
!23 = !{!20, !5, i64 47}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
end_hunk_1
