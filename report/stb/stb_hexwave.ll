Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, ptr, ptr }
%struct.hexvert = type { float, float, float }

@hexblep = local_unnamed_addr global %struct.anon zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hexwave_change(ptr nofree noundef writeonly captures(none) initializes((24, 44)) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.a, align 4, !tbaa !11
  %i.b = fcmp olt float %2, 0.000000e+00
  %i.c = fcmp ogt float %2, 1.000000e+00
  %i.d = select i1 %i.c, float 1.000000e+00, float %2
  %i.e = select i1 %i.b, float 0.000000e+00, float %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.e, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %3, ptr %i.g, align 4, !tbaa !13
  %i.h = fcmp olt float %4, 0.000000e+00
  %i.i = fcmp ogt float %4, 1.000000e+00
  %i.j = select i1 %i.i, float 1.000000e+00, float %4
  %i.k = select i1 %i.h, float 0.000000e+00, float %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.k, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.m, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hexwave_create(ptr nofree noundef captures(none) initializes((0, 300)) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(300) %0, i8 0, i64 300, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !11
  %i.b = fcmp olt float %2, 0.000000e+00
  %i.c = fcmp ogt float %2, 1.000000e+00
  %i.d = select i1 %i.c, float 1.000000e+00, float %2
  %i.e = select i1 %i.b, float 0.000000e+00, float %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.e, ptr %i.f, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %3, ptr %i.g, align 4, !tbaa !13
  %i.h = fcmp olt float %4, 0.000000e+00
  %i.i = fcmp ogt float %4, 1.000000e+00
  %i.j = select i1 %i.i, float 1.000000e+00, float %4
  %i.k = select i1 %i.h, float 0.000000e+00, float %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.k, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !18
  store i32 0, ptr %i.m, align 4, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hex_add_oversampled_bleplike(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @hexblep, align 8, !tbaa !23 ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24 ; 2 uses
  %i.c = sitofp i32 %i.b to float                 ; 2 uses
  %i.d = fmul float %1, %i.c
  %i.e = fptosi float %i.d to i32
  %i.f = add i32 %i.b, -1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.f) ; 3 uses
  %i.g = mul i32 %spec.select, %i.a
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %3, i64 %i.h ; 5 uses
  %i.j = add i32 %spec.select, 1
  %i.k = mul i32 %i.j, %i.a
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %3, i64 %i.l ; 5 uses
  %i.n = sitofp i32 %spec.select to float
  %i.o = fneg float %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %1, float %i.c, float %i.o) ; 4 uses
  %i.q = icmp sgt i32 %i.a, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 8 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.r = shl nuw nsw i64 %wide.trip.count, 2
  %i.s = getelementptr i8, ptr %0, i64 %i.r       ; 2 uses
  %i.t = add nsw i64 %i.l, %wide.trip.count
  %i.u = shl nsw i64 %i.t, 2
  %i.v = getelementptr i8, ptr %3, i64 %i.u
  %i.w = add nsw i64 %i.h, %wide.trip.count
  %i.x = shl nsw i64 %i.w, 2
  %i.y = getelementptr i8, ptr %3, i64 %i.x
  %bound0 = icmp ult ptr %0, %i.v
  %bound1 = icmp ult ptr %i.m, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %0, %i.y
  %bound133 = icmp ult ptr %i.i, %i.s
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert35 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat36 = shufflevector <4 x float> %broadcast.splatinsert35, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x float>, ptr %i.z, align 4, !tbaa !17, !alias.scope !40 ; 2 uses
  %wide.load37 = load <4 x float>, ptr %i.aa, align 4, !tbaa !17, !alias.scope !40 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load38 = load <4 x float>, ptr %i.ab, align 4, !tbaa !17, !alias.scope !41
  %wide.load39 = load <4 x float>, ptr %i.ac, align 4, !tbaa !17, !alias.scope !41
  %i.ad = fsub <4 x float> %wide.load38, %wide.load
  %i.ae = fsub <4 x float> %wide.load39, %wide.load37
  %i.af = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %broadcast.splat, <4 x float> %wide.load37)
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load40 = load <4 x float>, ptr %i.ah, align 4, !tbaa !17, !alias.scope !42, !noalias !43
  %wide.load41 = load <4 x float>, ptr %i.ai, align 4, !tbaa !17, !alias.scope !42, !noalias !43
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat36, <4 x float> %i.af, <4 x float> %wide.load40)
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat36, <4 x float> %i.ag, <4 x float> %wide.load41)
  store <4 x float> %i.aj, ptr %i.ah, align 4, !tbaa !17, !alias.scope !42, !noalias !43
  store <4 x float> %i.ak, ptr %i.ai, align 4, !tbaa !17, !alias.scope !42, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader42
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph
  %i.an = load float, ptr %i.am, align 4, !tbaa !17 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !17
  %i.aq = fsub float %i.ap, %i.an
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.p, float %i.an)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !17
  %i.au = tail call float @llvm.fmuladd.f32(float %2, float %i.ar, float %i.at)
  store float %i.au, ptr %i.as, align 4, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader42
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader42 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.av = add nsw i64 %wide.trip.count, -1
  %i.aw = icmp eq i64 %indvars.iv.ph, %i.av
  br i1 %i.aw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !17 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !17
  %i.bb = fsub float %i.ba, %i.ay
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.p, float %i.ay)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !17
  %i.bf = tail call float @llvm.fmuladd.f32(float %2, float %i.bc, float %i.be)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !17
  %i.bk = fsub float %i.bj, %i.bh
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.p, float %i.bh)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !17
  %i.bo = tail call float @llvm.fmuladd.f32(float %2, float %i.bl, float %i.bn)
  store float %i.bo, ptr %i.bm, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hex_blep(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 4 uses
  %i.b = load i32, ptr @hexblep, align 8, !tbaa !23 ; 5 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24 ; 2 uses
  %i.d = sitofp i32 %i.c to float                 ; 2 uses
  %i.e = fmul float %1, %i.d
  %i.f = fptosi float %i.e to i32
  %i.g = add i32 %i.c, -1
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.g) ; 3 uses
  %i.h = mul i32 %spec.select.i, %i.b
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.a, i64 %i.i ; 5 uses
  %i.k = add i32 %spec.select.i, 1
  %i.l = mul i32 %i.k, %i.b
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.a, i64 %i.m ; 5 uses
  %i.o = sitofp i32 %spec.select.i to float
  %i.p = fneg float %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %1, float %i.d, float %i.p) ; 4 uses
  %i.r = icmp sgt i32 %i.b, 0
  br i1 %i.r, label %.lr.ph.preheader.i, label %hex_add_oversampled_bleplike.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 8 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.s = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %i.u = add nsw i64 %i.m, %wide.trip.count.i
  %i.v = shl nsw i64 %i.u, 2
  %i.w = getelementptr i8, ptr %i.a, i64 %i.v
  %i.x = add nsw i64 %i.i, %wide.trip.count.i
  %i.y = shl nsw i64 %i.x, 2
  %i.z = getelementptr i8, ptr %i.a, i64 %i.y
  %bound0 = icmp ult ptr %0, %i.w
  %bound1 = icmp ult ptr %i.n, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %0, %i.z
  %bound19 = icmp ult ptr %i.j, %i.t
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x float>, ptr %i.aa, align 4, !tbaa !17, !alias.scope !50 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.ab, align 4, !tbaa !17, !alias.scope !50 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load14 = load <4 x float>, ptr %i.ac, align 4, !tbaa !17, !alias.scope !51
  %wide.load15 = load <4 x float>, ptr %i.ad, align 4, !tbaa !17, !alias.scope !51
  %i.ae = fsub <4 x float> %wide.load14, %wide.load
  %i.af = fsub <4 x float> %wide.load15, %wide.load13
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %broadcast.splat, <4 x float> %wide.load13)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.ai, align 4, !tbaa !17, !alias.scope !52, !noalias !53
  %wide.load17 = load <4 x float>, ptr %i.aj, align 4, !tbaa !17, !alias.scope !52, !noalias !53
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat12, <4 x float> %i.ag, <4 x float> %wide.load16)
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat12, <4 x float> %i.ah, <4 x float> %wide.load17)
  store <4 x float> %i.ak, ptr %i.ai, align 4, !tbaa !17, !alias.scope !52, !noalias !53
  store <4 x float> %i.al, ptr %i.aj, align 4, !tbaa !17, !alias.scope !52, !noalias !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.ph
  %i.ao = load float, ptr %i.an, align 4, !tbaa !17 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.ph
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17
  %i.ar = fsub float %i.aq, %i.ao
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.q, float %i.ao)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.ph ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !17
  %i.av = tail call float @llvm.fmuladd.f32(float %2, float %i.as, float %i.au)
  store float %i.av, ptr %i.at, align 4, !tbaa !17
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.aw = add nsw i64 %wide.trip.count.i, -1
  %i.ax = icmp eq i64 %indvars.iv.i.ph, %i.aw
  br i1 %i.ax, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.az = load float, ptr %i.ay, align 4, !tbaa !17 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !17
  %i.bc = fsub float %i.bb, %i.az
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.q, float %i.az)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17
  %i.bg = tail call float @llvm.fmuladd.f32(float %2, float %i.bd, float %i.bf)
  store float %i.bg, ptr %i.be, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !17 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !17
  %i.bl = fsub float %i.bk, %i.bi
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.q, float %i.bi)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !17
  %i.bp = tail call float @llvm.fmuladd.f32(float %2, float %i.bm, float %i.bo)
  store float %i.bp, ptr %i.bn, align 4, !tbaa !17
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i, !llvm.loop !49

hex_add_oversampled_bleplike.exit:                ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hex_blamp(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 4 uses
  %i.b = load i32, ptr @hexblep, align 8, !tbaa !23 ; 5 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24 ; 2 uses
  %i.d = sitofp i32 %i.c to float                 ; 2 uses
  %i.e = fmul float %1, %i.d
  %i.f = fptosi float %i.e to i32
  %i.g = add i32 %i.c, -1
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.g) ; 3 uses
  %i.h = mul i32 %spec.select.i, %i.b
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.a, i64 %i.i ; 5 uses
  %i.k = add i32 %spec.select.i, 1
  %i.l = mul i32 %i.k, %i.b
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.a, i64 %i.m ; 5 uses
  %i.o = sitofp i32 %spec.select.i to float
  %i.p = fneg float %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %1, float %i.d, float %i.p) ; 4 uses
  %i.r = icmp sgt i32 %i.b, 0
  br i1 %i.r, label %.lr.ph.preheader.i, label %hex_add_oversampled_bleplike.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 8 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.s = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.t = getelementptr i8, ptr %0, i64 %i.s       ; 2 uses
  %i.u = add nsw i64 %i.m, %wide.trip.count.i
  %i.v = shl nsw i64 %i.u, 2
  %i.w = getelementptr i8, ptr %i.a, i64 %i.v
  %i.x = add nsw i64 %i.i, %wide.trip.count.i
  %i.y = shl nsw i64 %i.x, 2
  %i.z = getelementptr i8, ptr %i.a, i64 %i.y
  %bound0 = icmp ult ptr %0, %i.w
  %bound1 = icmp ult ptr %i.n, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %0, %i.z
  %bound19 = icmp ult ptr %i.j, %i.t
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x float>, ptr %i.aa, align 4, !tbaa !17, !alias.scope !60 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.ab, align 4, !tbaa !17, !alias.scope !60 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load14 = load <4 x float>, ptr %i.ac, align 4, !tbaa !17, !alias.scope !61
  %wide.load15 = load <4 x float>, ptr %i.ad, align 4, !tbaa !17, !alias.scope !61
  %i.ae = fsub <4 x float> %wide.load14, %wide.load
  %i.af = fsub <4 x float> %wide.load15, %wide.load13
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %broadcast.splat, <4 x float> %wide.load13)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.ai, align 4, !tbaa !17, !alias.scope !62, !noalias !63
  %wide.load17 = load <4 x float>, ptr %i.aj, align 4, !tbaa !17, !alias.scope !62, !noalias !63
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat12, <4 x float> %i.ag, <4 x float> %wide.load16)
  %i.al = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat12, <4 x float> %i.ah, <4 x float> %wide.load17)
  store <4 x float> %i.ak, ptr %i.ai, align 4, !tbaa !17, !alias.scope !62, !noalias !63
  store <4 x float> %i.al, ptr %i.aj, align 4, !tbaa !17, !alias.scope !62, !noalias !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.ph
  %i.ao = load float, ptr %i.an, align 4, !tbaa !17 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.ph
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17
  %i.ar = fsub float %i.aq, %i.ao
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.q, float %i.ao)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.ph ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !17
  %i.av = tail call float @llvm.fmuladd.f32(float %2, float %i.as, float %i.au)
  store float %i.av, ptr %i.at, align 4, !tbaa !17
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.aw = add nsw i64 %wide.trip.count.i, -1
  %i.ax = icmp eq i64 %indvars.iv.i.ph, %i.aw
  br i1 %i.ax, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.az = load float, ptr %i.ay, align 4, !tbaa !17 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !17
  %i.bc = fsub float %i.bb, %i.az
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.q, float %i.az)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17
  %i.bg = tail call float @llvm.fmuladd.f32(float %2, float %i.bd, float %i.bf)
  store float %i.bg, ptr %i.be, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !17 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !17
  %i.bl = fsub float %i.bk, %i.bi
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.q, float %i.bi)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !17
  %i.bp = tail call float @llvm.fmuladd.f32(float %2, float %i.bm, float %i.bo)
  store float %i.bp, ptr %i.bn, align 4, !tbaa !17
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i, !llvm.loop !59

hex_add_oversampled_bleplike.exit:                ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @hexwave_generate_linesegs(ptr nofree noundef writeonly captures(none) initializes((0, 108)) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = fmul float %2, 3.906250e-03              ; 8 uses
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !64
  %i.e = fmul float %i.d, 5.000000e-01            ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store float %i.e, ptr %i.f, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !65 ; 2 uses
  %i.j = fsub float 1.000000e+00, %i.i
  %i.k = fmul float %i.e, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %i.i, float 5.000000e-01, float %i.k) ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store float %i.l, ptr %i.m, align 4, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store float 5.000000e-01, ptr %i.o, align 4, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !66 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.q, ptr %i.r, align 4, !tbaa !32
  %i.s = load i32, ptr %i.b, align 4, !tbaa !67
  %.not = icmp eq i32 %i.s, 0
  %i.t = getelementptr i8, ptr %0, i64 48
  store float 5.000000e-01, ptr %i.t, align 4, !tbaa !31
  %i.u = getelementptr i8, ptr %0, i64 88
  br i1 %.not, label %.preheader82.preheader, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %bb.a
  %i.v = fneg float %i.q                          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.v, ptr %i.w, align 4, !tbaa !32
  %i.x = fsub float 1.000000e+00, %i.l            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.x, ptr %i.y, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float -1.000000e+00, ptr %i.z, align 4, !tbaa !32
  %i.aa = fsub float 1.000000e+00, %i.e           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.aa, ptr %i.ab, align 4, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float -0.000000e+00, ptr %i.ac, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !31
  br label %.loopexit83

.preheader82.preheader:                           ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %0, i64 52
  store float -0.000000e+00, ptr %i.ae, align 4, !tbaa !32
  %i.af = getelementptr i8, ptr %0, i64 60
  %i.ag = fadd float %i.e, 5.000000e-01           ; 2 uses
  store float %i.ag, ptr %i.af, align 4, !tbaa !31
  %i.ah = getelementptr i8, ptr %0, i64 64
  store float -0.000000e+00, ptr %i.ah, align 4, !tbaa !32
  %i.ai = getelementptr i8, ptr %0, i64 72
  %i.aj = fadd float %i.l, 5.000000e-01           ; 2 uses
  store float %i.aj, ptr %i.ai, align 4, !tbaa !31
  %i.ak = getelementptr i8, ptr %0, i64 76
  store float -1.000000e+00, ptr %i.ak, align 4, !tbaa !32
  %i.al = getelementptr i8, ptr %0, i64 84
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !31
  %i.am = fneg float %i.q
  br label %.loopexit83

.loopexit83:                                      ; preds = %.preheader84.preheader, %.preheader82.preheader
  %.sink = phi float [ -0.000000e+00, %.preheader84.preheader ], [ %i.am, %.preheader82.preheader ] ; 2 uses
  %i.an = phi float [ -0.000000e+00, %.preheader84.preheader ], [ -1.000000e+00, %.preheader82.preheader ]
  %i.ao = phi float [ -1.000000e+00, %.preheader84.preheader ], [ -0.000000e+00, %.preheader82.preheader ]
  %i.ap = phi float [ %i.v, %.preheader84.preheader ], [ -0.000000e+00, %.preheader82.preheader ] ; 2 uses
  %i.aq = phi float [ %i.aa, %.preheader84.preheader ], [ %i.aj, %.preheader82.preheader ] ; 3 uses
  %i.ar = phi float [ %i.x, %.preheader84.preheader ], [ %i.ag, %.preheader82.preheader ] ; 3 uses
  store float %.sink, ptr %i.u, align 4, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.as, align 4, !tbaa !17
  %i.at = fcmp ugt float %i.e, %i.a
  br i1 %i.at, label %.loopexit83._crit_edge, label %bb.b

bb.b:                                             ; preds = %.loopexit83
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !31
  br label %.loopexit83._crit_edge

.loopexit83._crit_edge:                           ; preds = %.loopexit83, %bb.b
  %i.au = phi float [ 0.000000e+00, %bb.b ], [ %i.e, %.loopexit83 ] ; 6 uses
  %.pre-phi = fadd float %i.a, %i.au              ; 2 uses
  %i.av = fcmp ugt float %i.l, %.pre-phi
  br i1 %i.av, label %._crit_edge108, label %bb.c

._crit_edge108:                                   ; preds = %.loopexit83._crit_edge
  %.pre109 = fadd float %i.a, %i.l
  br label %bb.d

bb.c:                                             ; preds = %.loopexit83._crit_edge
  store float %i.au, ptr %i.m, align 4, !tbaa !31
  br label %bb.d
end_hunk_0
begin_hunk_1_@hexwave_generate_linesegs:bb.a
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !31
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.k
  %i.bq = phi float [ %i.bg, %.preheader.preheader ], [ 1.000000e+00, %bb.k ] ; 2 uses
  %i.br = fcmp ord float %i.bj, 0.000000e+00
  br i1 %i.br, label %bb.l, label %.preheader.2

bb.l:                                             ; preds = %.preheader.1
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !31
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.l, %.preheader.1
  %i.bs = phi float [ 1.000000e+00, %bb.l ], [ %i.bj, %.preheader.1 ] ; 2 uses
  %i.bt = fcmp ord float %i.bj, 0.000000e+00
  br i1 %i.bt, label %bb.m, label %.preheader.3

bb.m:                                             ; preds = %.preheader.2
  store float 1.000000e+00, ptr %i.bk, align 4, !tbaa !31
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.m, %.preheader.2
  %i.bu = phi float [ 1.000000e+00, %bb.m ], [ %i.bj, %.preheader.2 ] ; 2 uses
  %i.bv = fcmp ord float %i.bj, 0.000000e+00
  br i1 %i.bv, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.preheader.3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %._crit_edge, %.preheader.3, %bb.n
  %i.bw = phi float [ %i.bj, %._crit_edge ], [ %i.bu, %bb.n ], [ %i.bu, %.preheader.3 ], [ 1.000000e+00, %bb.j ] ; 4 uses
  %i.bx = phi float [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %bb.n ], [ %i.bj, %.preheader.3 ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.by = phi float [ %i.bj, %._crit_edge ], [ %i.bs, %bb.n ], [ %i.bs, %.preheader.3 ], [ %i.bj, %bb.j ] ; 4 uses
  %i.bz = phi float [ %i.bg, %._crit_edge ], [ %i.bq, %bb.n ], [ %i.bq, %.preheader.3 ], [ %i.bg, %bb.j ] ; 4 uses
  %i.ca = fcmp oeq float %i.au, 0.000000e+00
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.aw, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.ay, i64 3 ; 2 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.ch = insertelement <4 x float> %i.cg, float %i.au, i64 2
  %i.ci = fcmp oeq <4 x float> %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ck = fadd float %i.q, -1.000000e+00
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = fsub float %i.ap, %i.q
  %i.cn = insertelement <4 x float> poison, float %i.au, i64 0
  %i.co = insertelement <4 x float> %i.cn, float %i.aw, i64 1
  %i.cp = insertelement <4 x float> %i.co, float %i.ay, i64 2 ; 2 uses
  %i.cq = insertelement <4 x float> %i.cp, float %i.bc, i64 3
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.cs = fsub <4 x float> %i.cq, %i.cr
  %i.ct = insertelement <4 x float> <float 0.000000e+00, float 1.000000e+00, float poison, float poison>, float %i.ck, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cm, i64 3
  %i.cv = fdiv <4 x float> %i.cu, %i.cs           ; 2 uses
  %i.cw = extractelement <4 x float> %i.cv, i64 0
  %i.cx = select i1 %i.ca, float 0.000000e+00, float %i.cw ; 2 uses
  store float %i.cx, ptr %i.cb, align 4, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cz = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ao, i64 1
  %i.da = insertelement <4 x float> %i.cz, float %i.an, i64 2
  %i.db = insertelement <4 x float> %i.da, float %.sink, i64 3 ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 1, i32 2>
  %i.dd = insertelement <4 x float> %i.dc, float %i.ap, i64 1
  %i.de = fsub <4 x float> %i.db, %i.dd
  %i.df = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.bz, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.by, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.bw, i64 3
  %i.dj = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.bc, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.bz, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.by, i64 3
  %i.dn = fsub <4 x float> %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = fcmp oeq float %i.by, %i.bz
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dr = fcmp oeq float %i.bw, %i.by
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dt = fcmp oeq float %i.bx, %i.bw
  %i.du = fdiv <4 x float> %i.de, %i.dn           ; 4 uses
  %i.dv = shufflevector <4 x float> %i.cv, <4 x float> %i.du, <4 x i32> <i32 3, i32 5, i32 1, i32 2>
  %i.dw = select <4 x i1> %i.ci, <4 x float> zeroinitializer, <4 x float> %i.dv ; 4 uses
  %i.dx = extractelement <4 x float> %i.dw, i64 2
  store float %i.dx, ptr %i.cj, align 4, !tbaa !33
  %i.dy = extractelement <4 x float> %i.dw, i64 3
  store float %i.dy, ptr %i.cl, align 4, !tbaa !33
  %i.dz = extractelement <4 x float> %i.dw, i64 0
  store float %i.dz, ptr %i.cy, align 4, !tbaa !33
  %i.ea = extractelement <4 x float> %i.dw, i64 1
  store float %i.ea, ptr %i.do, align 4, !tbaa !33
  %i.eb = extractelement <4 x float> %i.du, i64 2
  %.sink101 = select i1 %i.dp, float 0.000000e+00, float %i.eb
  store float %.sink101, ptr %i.dq, align 4, !tbaa !33
  %i.ec = extractelement <4 x float> %i.du, i64 3
  %.sink102 = select i1 %i.dr, float 0.000000e+00, float %i.ec
  store float %.sink102, ptr %i.ds, align 4, !tbaa !33
  %i.ed = extractelement <4 x float> %i.du, i64 0
  %.sink103 = select i1 %i.dt, float 0.000000e+00, float %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %.sink103, ptr %i.ee, align 4, !tbaa !33
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.as, align 4, !tbaa !17
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.cx, ptr %i.ef, align 4, !tbaa !33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hexwave_generate_samples(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, float noundef %3) local_unnamed_addr #6 {
bb.a:
  %4 = alloca [9 x %struct.hexvert], align 16     ; 23 uses
  %i.a = alloca [128 x float], align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = load float, ptr %2, align 4, !tbaa !102  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = load i32, ptr @hexblep, align 8, !tbaa !23 ; 7 uses
  %i.d = shl i32 %i.c, 2                          ; 2 uses
  %i.e = tail call float @llvm.fabs.f32(float %3) ; 9 uses
  %i.f = fcmp oeq float %3, 0.000000e+00
  %i.g = fdiv float 1.000000e+00, %i.e
  %i.h = select i1 %i.f, float 0.000000e+00, float %i.g ; 4 uses
  %i.i = sdiv i32 %i.c, 2
  %i.j = icmp slt i32 %1, 1
  br i1 %i.j, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !19 ; 2 uses
  %i.m = fcmp une float %i.l, %i.e
  br i1 %i.m, label %.preheader180.preheader, label %bb.e

.preheader180.preheader:                          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %i.p = fcmp olt float %i.b, %i.o
  br i1 %i.p, label %bb.c, label %.preheader180.1

.preheader180.1:                                  ; preds = %.preheader180.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load float, ptr %i.q, align 8, !tbaa !31
  %i.s = fcmp olt float %i.b, %i.r
  br i1 %i.s, label %bb.c, label %.preheader180.2

.preheader180.2:                                  ; preds = %.preheader180.1
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.u = load float, ptr %i.t, align 4, !tbaa !31
  %i.v = fcmp olt float %i.b, %i.u
  br i1 %i.v, label %bb.c, label %.preheader180.3

.preheader180.3:                                  ; preds = %.preheader180.2
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = load float, ptr %i.w, align 16, !tbaa !31
  %i.y = fcmp olt float %i.b, %i.x
  br i1 %i.y, label %bb.c, label %.preheader180.4

.preheader180.4:                                  ; preds = %.preheader180.3
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.aa = load float, ptr %i.z, align 4, !tbaa !31
  %i.ab = fcmp olt float %i.b, %i.aa
  %spec.select = select i1 %i.ab, i64 5, i64 6
  br label %bb.c

bb.c:                                             ; preds = %.preheader180.4, %.preheader180.3, %.preheader180.2, %.preheader180.1, %.preheader180.preheader
  %.0123.lcssa = phi i64 [ 1, %.preheader180.preheader ], [ 4, %.preheader180.3 ], [ 2, %.preheader180.1 ], [ %spec.select, %.preheader180.4 ], [ 3, %.preheader180.2 ]
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %.0123.lcssa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !33 ; 2 uses
  %i.af = fcmp une float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.d, label %hex_blamp.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = fsub float %i.e, %i.l
  %i.ah = fmul float %i.ag, %i.ae                 ; 4 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 4 uses
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24 ; 2 uses
  %i.ak = sitofp i32 %i.aj to float
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 1) ; 2 uses
  %spec.select.i.i = add i32 %i.al, -1            ; 2 uses
  %i.am = mul i32 %spec.select.i.i, %i.c
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.ai, i64 %i.an ; 5 uses
  %i.ap = mul i32 %i.al, %i.c
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 5 uses
  %i.as = sitofp i32 %spec.select.i.i to float
  %i.at = fneg float %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.at) ; 4 uses
  %i.av = icmp sgt i32 %i.c, 0
  br i1 %i.av, label %.lr.ph.preheader.i.i, label %hex_blamp.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.aw = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw     ; 2 uses
  %i.ay = add nsw i64 %i.aq, %wide.trip.count.i.i
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az
  %i.bb = add nsw i64 %i.an, %wide.trip.count.i.i
  %i.bc = shl nsw i64 %i.bb, 2
  %i.bd = getelementptr i8, ptr %i.ai, i64 %i.bc
  %bound0 = icmp ult ptr %0, %i.ba
  %bound1 = icmp ult ptr %i.ar, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  %bound0292 = icmp ult ptr %0, %i.bd
  %bound1293 = icmp ult ptr %i.ao, %i.ax
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx = or i1 %found.conflict, %found.conflict294
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert295 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat296 = shufflevector <4 x float> %broadcast.splatinsert295, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <4 x float>, ptr %i.be, align 4, !tbaa !17, !alias.scope !103 ; 2 uses
  %wide.load297 = load <4 x float>, ptr %i.bf, align 4, !tbaa !17, !alias.scope !103 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load298 = load <4 x float>, ptr %i.bg, align 4, !tbaa !17, !alias.scope !104
  %wide.load299 = load <4 x float>, ptr %i.bh, align 4, !tbaa !17, !alias.scope !104
  %i.bi = fsub <4 x float> %wide.load298, %wide.load
  %i.bj = fsub <4 x float> %wide.load299, %wide.load297
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %broadcast.splat, <4 x float> %wide.load297)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load300 = load <4 x float>, ptr %i.bm, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %wide.load301 = load <4 x float>, ptr %i.bn, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat296, <4 x float> %i.bk, <4 x float> %wide.load300)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat296, <4 x float> %i.bl, <4 x float> %wide.load301)
  store <4 x float> %i.bo, ptr %i.bm, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  store <4 x float> %i.bp, ptr %i.bn, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %hex_blamp.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i.ph
  %i.bs = load float, ptr %i.br, align 4, !tbaa !17 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.ph
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !17
  %i.bv = fsub float %i.bu, %i.bs
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.au, float %i.bs)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !17
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.bw, float %i.by)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !17
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ca = add nsw i64 %wide.trip.count.i.i, -1
  %i.cb = icmp eq i64 %indvars.iv.i.i.ph, %i.ca
  br i1 %i.cb, label %hex_blamp.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !17 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !17
  %i.cg = fsub float %i.cf, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.au, float %i.cd)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !17
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ch, float %i.cj)
  store float %i.ck, ptr %i.ci, align 4, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !17
  %i.cp = fsub float %i.co, %i.cm
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.au, float %i.cm)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !17
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.cq, float %i.cs)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !17
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %hex_blamp.exit, label %.lr.ph.i.i, !llvm.loop !73

hex_blamp.exit:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.d, %bb.c
  store float %i.e, ptr %i.k, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %hex_blamp.exit, %bb.b
  %i.cu = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cv, i1 false)
  %i.cw = load i32, ptr @hexblep, align 8, !tbaa !23 ; 3 uses
  %i.cx = shl nsw i32 %i.cw, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.cz, i1 false)
  %.not = icmp slt i32 %1, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.db = sext i32 %i.d to i64                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %i.da, i64 %i.db, i1 false)
  %.pre = load i32, ptr @hexblep, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.da, i64 %i.db, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dc = phi i32 [ %i.cw, %bb.g ], [ %.pre, %bb.f ] ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.dc)
  %i.dd = icmp sge i32 %1, %i.dc
  %i.de = sub nsw i32 %1, %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dk = sext i32 %i.i to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 96
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.0122196 = phi float [ %i.b, %bb.h ], [ %.4, %.loopexit ] ; 10 uses
  %i.dt = phi i1 [ false, %bb.h ], [ true, %.loopexit ] ; 4 uses
  %brmerge = select i1 %i.dt, i1 true, i1 %i.dd
  %..mux = select i1 %i.dt, i32 %., i32 %i.de     ; 2 uses
  %.mux = select i1 %i.dt, ptr %i.a, ptr %0       ; 11 uses
  br i1 %brmerge, label %.preheader205, label %.loopexit

.preheader205:                                    ; preds = %bb.i
  %i.du = load float, ptr %i.dl, align 4, !tbaa !31
  %i.dv = fcmp olt float %.0122196, %i.du
  br i1 %i.dv, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.preheader205
  %i.dw = load float, ptr %i.dm, align 8, !tbaa !31
  %i.dx = fcmp olt float %.0122196, %i.dw
  br i1 %i.dx, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dy = load float, ptr %i.dn, align 4, !tbaa !31
  %i.dz = fcmp olt float %.0122196, %i.dy
  br i1 %i.dz, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = load float, ptr %i.do, align 16, !tbaa !31
  %i.eb = fcmp olt float %.0122196, %i.ea
  br i1 %i.eb, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ec = load float, ptr %i.dp, align 4, !tbaa !31
  %i.ed = fcmp olt float %.0122196, %i.ec
  br i1 %i.ed, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load float, ptr %i.dq, align 8, !tbaa !31
  %i.ef = fcmp olt float %.0122196, %i.ee
  br i1 %i.ef, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eg = load float, ptr %i.dr, align 4, !tbaa !31
  %i.eh = fcmp olt float %.0122196, %i.eg
  br i1 %i.eh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = load float, ptr %i.ds, align 16, !tbaa !31
  %i.ej = fcmp olt float %.0122196, %i.ei
  %spec.select277 = select i1 %i.ej, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.preheader205
  %.1124.lcssa = phi i32 [ 0, %.preheader205 ], [ 4, %bb.m ], [ 6, %bb.o ], [ 1, %bb.j ], [ %spec.select277, %bb.p ], [ 2, %bb.k ], [ 5, %bb.n ], [ 3, %bb.l ]
  %i.ek = load i32, ptr @hexblep, align 8         ; 14 uses
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4 ; 2 uses
  %i.em = sitofp i32 %i.el to float               ; 8 uses
  %i.en = add i32 %i.el, -1                       ; 4 uses
  %i.eo = icmp sgt i32 %i.ek, 0                   ; 4 uses
  %wide.trip.count.i.i150 = zext i32 %i.ek to i64 ; 27 uses
  %sext = sext i32 %..mux to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.mux, i64 %i.dk
  %i.ep = shl nuw nsw i64 %wide.trip.count.i.i150, 2 ; 5 uses
  %scevgep = getelementptr i8, ptr %.mux, i64 %i.ep ; 2 uses
  %min.iters.check434 = icmp ult i32 %i.ek, 8
  %n.vec444 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n459 = icmp eq i64 %n.vec444, %wide.trip.count.i.i150
  %xtraiter485 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod486.not = icmp eq i64 %xtraiter485, 0
  %i.eq = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check393 = icmp ult i32 %i.ek, 8
  %n.vec403 = and i64 %wide.trip.count.i.i150, 4294967288 ; 3 uses
  %cmp.n418 = icmp eq i64 %n.vec403, %wide.trip.count.i.i150
  %xtraiter487 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  %i.er = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check353 = icmp ult i32 %i.ek, 8
  %n.vec363 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n378 = icmp eq i64 %n.vec363, %wide.trip.count.i.i150
  %xtraiter489 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod490.not = icmp eq i64 %xtraiter489, 0
  %i.es = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check314 = icmp ult i32 %i.ek, 8
  %n.vec324 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n339 = icmp eq i64 %n.vec324, %wide.trip.count.i.i150
  %xtraiter491 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  %i.et = add nsw i64 %wide.trip.count.i.i150, -1
  br label %hex_blamp.exit178

hex_blamp.exit178:                                ; preds = %hex_blamp.exit178.backedge, %bb.q
  %.0127 = phi i32 [ 0, %bb.q ], [ %.1128.lcssa, %hex_blamp.exit178.backedge ] ; 3 uses
  %.2125 = phi i32 [ %.1124.lcssa, %bb.q ], [ %.2125.be, %hex_blamp.exit178.backedge ] ; 2 uses
  %.1 = phi float [ %.0122196, %bb.q ], [ %.1.be, %hex_blamp.exit178.backedge ] ; 4 uses
  %i.eu = add nsw i32 %.2125, 1                   ; 3 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ev ; 4 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !31 ; 5 uses
  %i.ey = fcmp olt float %.1, %i.ex
  %i.ez = sext i32 %.2125 to i64                  ; 2 uses
  %i.fa = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ez ; 4 uses
  br i1 %i.ey, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %hex_blamp.exit178
  %.pre218 = load float, ptr %i.fa, align 4, !tbaa !31
  br label %._crit_edge

.lr.ph:                                           ; preds = %hex_blamp.exit178
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = icmp eq i32 %.0127, %..mux
  br i1 %i.fd, label %.loopexit, label %.lr.ph285

.lr.ph285:                                        ; preds = %.lr.ph
  %i.fe = sext i32 %.0127 to i64
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !32
  %i.fg = load float, ptr %i.fc, align 4, !tbaa !33
  %i.fh = load float, ptr %i.fa, align 4, !tbaa !31 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.fi = icmp eq i64 %indvars.iv.next, %sext
  br i1 %i.fi, label %.loopexit, label %bb.s, !llvm.loop !74

bb.s:                                             ; preds = %.lr.ph285, %bb.r
  %.2190284 = phi float [ %.1, %.lr.ph285 ], [ %i.fn, %bb.r ] ; 2 uses
  %indvars.iv283 = phi i64 [ %i.fe, %.lr.ph285 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.fj = fsub float %.2190284, %i.fh
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fj, float %i.ff)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv283 ; 2 uses
  %i.fl = load float, ptr %gep, align 4, !tbaa !17
  %i.fm = fadd float %i.fl, %i.fk
  store float %i.fm, ptr %gep, align 4, !tbaa !17
  %i.fn = fadd float %i.e, %.2190284              ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv283, 1 ; 3 uses
  %i.fo = fcmp olt float %i.fn, %i.ex
  br i1 %i.fo, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.fp = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.fq = phi float [ %.pre218, %.._crit_edge_crit_edge ], [ %i.fh, %._crit_edge.loopexit ]
  %.1128.lcssa = phi i32 [ %.0127, %.._crit_edge_crit_edge ], [ %i.fp, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi float [ %.1, %.._crit_edge_crit_edge ], [ %i.fn, %._crit_edge.loopexit ] ; 4 uses
  %i.fr = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ez ; 3 uses
  %i.fs = fcmp oeq float %i.fq, %i.ex
  %i.ft = sext i32 %.1128.lcssa to i64            ; 10 uses
  br i1 %i.fs, label %bb.t, label %hex_blep.exit

bb.t:                                             ; preds = %._crit_edge
  %i.fu = getelementptr [4 x i8], ptr %.mux, i64 %i.ft ; 6 uses
  %i.fv = fsub float %.2.lcssa, %i.ex
  %i.fw = fmul float %i.h, %i.fv                  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !32
  %i.gb = fsub float %i.fy, %i.ga                 ; 4 uses
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 4 uses
  %i.gd = fmul float %i.fw, %i.em
  %i.ge = fptosi float %i.gd to i32
  %spec.select.i.i148 = tail call i32 @llvm.smin.i32(i32 %i.ge, i32 %i.en) ; 3 uses
  %i.gf = mul i32 %spec.select.i.i148, %i.ek
  %i.gg = sext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr [4 x i8], ptr %i.gc, i64 %i.gg ; 5 uses
  %i.gi = add i32 %spec.select.i.i148, 1
  %i.gj = mul i32 %i.gi, %i.ek
  %i.gk = sext i32 %i.gj to i64                   ; 3 uses
  %i.gl = getelementptr [4 x i8], ptr %i.gc, i64 %i.gk ; 5 uses
  %i.gm = sitofp i32 %spec.select.i.i148 to float
  %i.gn = fneg float %i.gm
  %i.go = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.em, float %i.gn) ; 5 uses
  br i1 %i.eo, label %.lr.ph.i.i151.preheader, label %hex_blep.exit.thread268

.lr.ph.i.i151.preheader:                          ; preds = %bb.t
  br i1 %min.iters.check434, label %.lr.ph.i.i151.preheader478, label %vector.memcheck435

vector.memcheck435:                               ; preds = %.lr.ph.i.i151.preheader
  %i.gp = shl nsw i64 %i.ft, 2
  %i.gq = getelementptr i8, ptr %scevgep, i64 %i.gp ; 2 uses
  %i.gr = add nsw i64 %i.gk, %wide.trip.count.i.i150
  %i.gs = shl nsw i64 %i.gr, 2
  %i.gt = getelementptr i8, ptr %i.gc, i64 %i.gs
  %i.gu = add nsw i64 %i.gg, %wide.trip.count.i.i150
  %i.gv = shl nsw i64 %i.gu, 2
  %i.gw = getelementptr i8, ptr %i.gc, i64 %i.gv
  %bound0436 = icmp ult ptr %i.fu, %i.gt
  %bound1437 = icmp ult ptr %i.gl, %i.gq
  %found.conflict438 = and i1 %bound0436, %bound1437
  %bound0439 = icmp ult ptr %i.fu, %i.gw
  %bound1440 = icmp ult ptr %i.gh, %i.gq
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %found.conflict438, %found.conflict441
  br i1 %conflict.rdx442, label %.lr.ph.i.i151.preheader478, label %vector.ph443

vector.ph443:                                     ; preds = %vector.memcheck435
  %broadcast.splatinsert445 = insertelement <4 x float> poison, float %i.go, i64 0
  %broadcast.splat446 = shufflevector <4 x float> %broadcast.splatinsert445, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert447 = insertelement <4 x float> poison, float %i.gb, i64 0
  %broadcast.splat448 = shufflevector <4 x float> %broadcast.splatinsert447, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph443
  %index450 = phi i64 [ 0, %vector.ph443 ], [ %index.next457, %vector.body449 ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index450 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load451 = load <4 x float>, ptr %i.gx, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %wide.load452 = load <4 x float>, ptr %i.gy, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index450 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load453 = load <4 x float>, ptr %i.gz, align 4, !tbaa !17, !alias.scope !108
  %wide.load454 = load <4 x float>, ptr %i.ha, align 4, !tbaa !17, !alias.scope !108
  %i.hb = fsub <4 x float> %wide.load453, %wide.load451
  %i.hc = fsub <4 x float> %wide.load454, %wide.load452
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %broadcast.splat446, <4 x float> %wide.load451)
  %i.he = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %broadcast.splat446, <4 x float> %wide.load452)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index450 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load455 = load <4 x float>, ptr %i.hf, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %wide.load456 = load <4 x float>, ptr %i.hg, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %i.hh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat448, <4 x float> %i.hd, <4 x float> %wide.load455)
  %i.hi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat448, <4 x float> %i.he, <4 x float> %wide.load456)
  store <4 x float> %i.hh, ptr %i.hf, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  store <4 x float> %i.hi, ptr %i.hg, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %index.next457 = add nuw i64 %index450, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next457, %n.vec444
  br i1 %i.hj, label %middle.block458, label %vector.body449, !llvm.loop !79

middle.block458:                                  ; preds = %vector.body449
  br i1 %cmp.n459, label %hex_blep.exit.thread, label %.lr.ph.i.i151.preheader478

.lr.ph.i.i151.preheader478:                       ; preds = %vector.memcheck435, %.lr.ph.i.i151.preheader, %middle.block458
  %indvars.iv.i.i152.ph = phi i64 [ 0, %vector.memcheck435 ], [ 0, %.lr.ph.i.i151.preheader ], [ %n.vec444, %middle.block458 ] ; 6 uses
  br i1 %lcmp.mod486.not, label %.lr.ph.i.i151.prol.loopexit, label %.lr.ph.i.i151.prol

.lr.ph.i.i151.prol:                               ; preds = %.lr.ph.i.i151.preheader478
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.i152.ph
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !17 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i.i152.ph
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !17
  %i.ho = fsub float %i.hn, %i.hl
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.go, float %i.hl)
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i152.ph ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !17
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.hp, float %i.hr)
  store float %i.hs, ptr %i.hq, align 4, !tbaa !17
  %indvars.iv.next.i.i153.prol = or disjoint i64 %indvars.iv.i.i152.ph, 1
  br label %.lr.ph.i.i151.prol.loopexit

.lr.ph.i.i151.prol.loopexit:                      ; preds = %.lr.ph.i.i151.prol, %.lr.ph.i.i151.preheader478
  %indvars.iv.i.i152.unr = phi i64 [ %indvars.iv.i.i152.ph, %.lr.ph.i.i151.preheader478 ], [ %indvars.iv.next.i.i153.prol, %.lr.ph.i.i151.prol ]
  %i.ht = icmp eq i64 %indvars.iv.i.i152.ph, %i.eq
  br i1 %i.ht, label %hex_blep.exit.thread, label %.lr.ph.i.i151

hex_blep.exit.thread268:                          ; preds = %bb.t
  %i.hu = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  br label %hex_blamp.exit162

.lr.ph.i.i151:                                    ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151
  %indvars.iv.i.i152 = phi i64 [ %indvars.iv.next.i.i153.1, %.lr.ph.i.i151 ], [ %indvars.iv.i.i152.unr, %.lr.ph.i.i151.prol.loopexit ] ; 5 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.i152
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !17 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i.i152
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !17
  %i.hz = fsub float %i.hy, %i.hw
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.go, float %i.hw)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i152 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !17
  %i.id = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.ia, float %i.ic)
  store float %i.id, ptr %i.ib, align 4, !tbaa !17
  %indvars.iv.next.i.i153 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next.i.i153
  %i.if = load float, ptr %i.ie, align 4, !tbaa !17 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next.i.i153
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !17
  %i.ii = fsub float %i.ih, %i.if
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.go, float %i.if)
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next.i.i153 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !17
  %i.im = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.ij, float %i.il)
  store float %i.im, ptr %i.ik, align 4, !tbaa !17
  %indvars.iv.next.i.i153.1 = add nuw nsw i64 %indvars.iv.i.i152, 2 ; 2 uses
  %exitcond.not.i.i154.1 = icmp eq i64 %indvars.iv.next.i.i153.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i154.1, label %hex_blep.exit.thread, label %.lr.ph.i.i151, !llvm.loop !80

hex_blep.exit.thread:                             ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151, %middle.block458
  %i.in = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.io = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !33
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !33
  %i.is = fsub float %i.ip, %i.ir
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.gg
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.gk
  br label %.lr.ph.i.i158.preheader

hex_blep.exit:                                    ; preds = %._crit_edge
  %.pre222 = fsub float %.2.lcssa, %i.ex
  %.pre224 = fmul float %i.h, %.pre222            ; 2 uses
  %.pre226 = fmul float %.pre224, %i.em
  %.pre228 = fptosi float %.pre226 to i32
  %.pre230 = tail call i32 @llvm.smin.i32(i32 %.pre228, i32 %i.en) ; 3 uses
  %.pre231 = mul nsw i32 %.pre230, %i.ek
  %.pre233 = sext i32 %.pre231 to i64
  %.pre235 = add nsw i32 %.pre230, 1
  %.pre237 = mul nsw i32 %.pre235, %i.ek
  %.pre239 = sext i32 %.pre237 to i64
  %.pre241 = sitofp i32 %.pre230 to float
  %.pre243 = fneg float %.pre241
  %.pre245 = tail call float @llvm.fmuladd.f32(float %.pre224, float %i.em, float %.pre243)
  %i.iw = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !33
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !33
  %i.jb = fsub float %i.iy, %i.ja
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %.pre233
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %.pre239
  br i1 %i.eo, label %.lr.ph.i.i158.preheader, label %hex_blamp.exit162

.lr.ph.i.i158.preheader:                          ; preds = %hex_blep.exit.thread, %hex_blep.exit
  %i.jf = phi ptr [ %i.iv, %hex_blep.exit.thread ], [ %i.je, %hex_blep.exit ] ; 6 uses
  %i.jg = phi ptr [ %i.iu, %hex_blep.exit.thread ], [ %i.jd, %hex_blep.exit ] ; 6 uses
  %.pn = phi float [ %i.is, %hex_blep.exit.thread ], [ %i.jb, %hex_blep.exit ]
  %i.jh = phi ptr [ %i.in, %hex_blep.exit.thread ], [ %i.iw, %hex_blep.exit ] ; 3 uses
  %.pre-phi246267 = phi float [ %i.go, %hex_blep.exit.thread ], [ %.pre245, %hex_blep.exit ] ; 4 uses
  %i.ji = fmul float %i.e, %.pn                   ; 4 uses
  br i1 %min.iters.check393, label %.lr.ph.i.i158.preheader477, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i158.preheader
  %i.jj = shl nsw i64 %i.ft, 2                    ; 2 uses
  %i.jk = getelementptr i8, ptr %.mux, i64 %i.jj  ; 2 uses
  %i.jl = getelementptr i8, ptr %scevgep, i64 %i.jj ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jf, i64 %i.ep
  %i.jn = getelementptr i8, ptr %i.jg, i64 %i.ep
  %bound0395 = icmp ult ptr %i.jk, %i.jm
  %bound1396 = icmp ult ptr %i.jf, %i.jl
  %found.conflict397 = and i1 %bound0395, %bound1396
  %bound0398 = icmp ult ptr %i.jk, %i.jn
  %bound1399 = icmp ult ptr %i.jg, %i.jl
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %found.conflict397, %found.conflict400
  br i1 %conflict.rdx401, label %.lr.ph.i.i158.preheader477, label %vector.ph402

vector.ph402:                                     ; preds = %vector.memcheck394
  %i.jo = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %broadcast.splatinsert404 = insertelement <4 x float> poison, float %.pre-phi246267, i64 0
  %broadcast.splat405 = shufflevector <4 x float> %broadcast.splatinsert404, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert406 = insertelement <4 x float> poison, float %i.ji, i64 0
  %broadcast.splat407 = shufflevector <4 x float> %broadcast.splatinsert406, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph402
  %index409 = phi i64 [ 0, %vector.ph402 ], [ %index.next416, %vector.body408 ] ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %index409 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load410 = load <4 x float>, ptr %i.jp, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %wide.load411 = load <4 x float>, ptr %i.jq, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %index409 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %wide.load412 = load <4 x float>, ptr %i.jr, align 4, !tbaa !17, !alias.scope !112
  %wide.load413 = load <4 x float>, ptr %i.js, align 4, !tbaa !17, !alias.scope !112
  %i.jt = fsub <4 x float> %wide.load412, %wide.load410
  %i.ju = fsub <4 x float> %wide.load413, %wide.load411
  %i.jv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %broadcast.splat405, <4 x float> %wide.load410)
  %i.jw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ju, <4 x float> %broadcast.splat405, <4 x float> %wide.load411)
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %index409 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load414 = load <4 x float>, ptr %i.jx, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %wide.load415 = load <4 x float>, ptr %i.jy, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %i.jz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat407, <4 x float> %i.jv, <4 x float> %wide.load414)
  %i.ka = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat407, <4 x float> %i.jw, <4 x float> %wide.load415)
  store <4 x float> %i.jz, ptr %i.jx, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  store <4 x float> %i.ka, ptr %i.jy, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %index.next416 = add nuw i64 %index409, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next416, %n.vec403
  br i1 %i.kb, label %middle.block417, label %vector.body408, !llvm.loop !85

middle.block417:                                  ; preds = %vector.body408
  br i1 %cmp.n418, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader477

.lr.ph.i.i158.preheader477:                       ; preds = %vector.memcheck394, %.lr.ph.i.i158.preheader, %middle.block417
  %indvars.iv.i.i159.ph = phi i64 [ 0, %vector.memcheck394 ], [ 0, %.lr.ph.i.i158.preheader ], [ %n.vec403, %middle.block417 ] ; 6 uses
  br i1 %lcmp.mod488.not, label %.lr.ph.i.i158.prol.loopexit, label %.lr.ph.i.i158.prol

.lr.ph.i.i158.prol:                               ; preds = %.lr.ph.i.i158.preheader477
  %i.kc = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.i.i159.ph
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !17 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.i.i159.ph
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !17
  %i.kh = fsub float %i.kg, %i.ke
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kh, float %.pre-phi246267, float %i.ke)
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv.i.i159.ph ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !17
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.ki, float %i.kk)
  store float %i.kl, ptr %i.kj, align 4, !tbaa !17
  %indvars.iv.next.i.i160.prol = or disjoint i64 %indvars.iv.i.i159.ph, 1
  br label %.lr.ph.i.i158.prol.loopexit

.lr.ph.i.i158.prol.loopexit:                      ; preds = %.lr.ph.i.i158.prol, %.lr.ph.i.i158.preheader477
  %indvars.iv.i.i159.unr = phi i64 [ %indvars.iv.i.i159.ph, %.lr.ph.i.i158.preheader477 ], [ %indvars.iv.next.i.i160.prol, %.lr.ph.i.i158.prol ]
  %i.km = icmp eq i64 %indvars.iv.i.i159.ph, %i.er
  br i1 %i.km, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader477.new

.lr.ph.i.i158.preheader477.new:                   ; preds = %.lr.ph.i.i158.prol.loopexit
  %i.kn = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.ko = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  br label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.lr.ph.i.i158, %.lr.ph.i.i158.preheader477.new
  %indvars.iv.i.i159 = phi i64 [ %indvars.iv.i.i159.unr, %.lr.ph.i.i158.preheader477.new ], [ %indvars.iv.next.i.i160.1, %.lr.ph.i.i158 ] ; 5 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.i.i159
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !17 ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.i.i159
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !17
  %i.kt = fsub float %i.ks, %i.kq
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float %.pre-phi246267, float %i.kq)
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv.i.i159 ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !17
  %i.kx = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.ku, float %i.kw)
  store float %i.kx, ptr %i.kv, align 4, !tbaa !17
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 3 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.next.i.i160
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !17 ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.next.i.i160
  %i.lb = load float, ptr %i.la, align 4, !tbaa !17
  %i.lc = fsub float %i.lb, %i.kz
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.lc, float %.pre-phi246267, float %i.kz)
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %indvars.iv.next.i.i160 ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !17
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.ld, float %i.lf)
  store float %i.lg, ptr %i.le, align 4, !tbaa !17
  %indvars.iv.next.i.i160.1 = add nuw nsw i64 %indvars.iv.i.i159, 2 ; 2 uses
  %exitcond.not.i.i161.1 = icmp eq i64 %indvars.iv.next.i.i160.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i161.1, label %hex_blamp.exit162, label %.lr.ph.i.i158, !llvm.loop !86

hex_blamp.exit162:                                ; preds = %.lr.ph.i.i158.prol.loopexit, %.lr.ph.i.i158, %middle.block417, %hex_blep.exit.thread268, %hex_blep.exit
  %i.lh = phi ptr [ %i.hu, %hex_blep.exit.thread268 ], [ %i.iw, %hex_blep.exit ], [ %i.jh, %middle.block417 ], [ %i.jh, %.lr.ph.i.i158 ], [ %i.jh, %.lr.ph.i.i158.prol.loopexit ] ; 14 uses
  %i.li = icmp eq i32 %i.eu, 8
  br i1 %i.li, label %bb.u, label %hex_blamp.exit178.backedge

bb.u:                                             ; preds = %hex_blamp.exit162
  %i.lj = fadd float %.2.lcssa, -1.000000e+00     ; 8 uses
  %i.lk = load i32, ptr %i.df, align 4, !tbaa !15
  %.not147 = icmp eq i32 %i.lk, 0
  br i1 %.not147, label %hex_blamp.exit178.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ll = load float, ptr %i.dg, align 8, !tbaa !33 ; 2 uses
  %i.lm = load float, ptr %i.dh, align 4, !tbaa !32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !18
  store i32 0, ptr %i.df, align 4, !tbaa !15
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.ln = load float, ptr %i.dh, align 4, !tbaa !32 ; 2 uses
  %i.lo = fcmp une float %i.ln, %i.lm
  br i1 %i.lo, label %bb.w, label %hex_blep.exit170

bb.w:                                             ; preds = %bb.v
  %i.lp = fmul float %i.h, %i.lj                  ; 2 uses
  %i.lq = fsub float %i.ln, %i.lm                 ; 4 uses
  %i.lr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 4 uses
  %i.ls = fmul float %i.lp, %i.em
  %i.lt = fptosi float %i.ls to i32
  %spec.select.i.i163 = tail call i32 @llvm.smin.i32(i32 %i.lt, i32 %i.en) ; 3 uses
  %i.lu = mul i32 %spec.select.i.i163, %i.ek
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr [4 x i8], ptr %i.lr, i64 %i.lv ; 5 uses
  %i.lx = add i32 %spec.select.i.i163, 1
  %i.ly = mul i32 %i.lx, %i.ek
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr [4 x i8], ptr %i.lr, i64 %i.lz ; 5 uses
  %i.mb = sitofp i32 %spec.select.i.i163 to float
  %i.mc = fneg float %i.mb
  %i.md = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.em, float %i.mc) ; 4 uses
  br i1 %i.eo, label %.lr.ph.i.i166.preheader, label %hex_blep.exit170

.lr.ph.i.i166.preheader:                          ; preds = %bb.w
  br i1 %min.iters.check353, label %.lr.ph.i.i166.preheader476, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph.i.i166.preheader
  %i.me = getelementptr i8, ptr %i.lh, i64 %i.ep  ; 2 uses
  %i.mf = add nsw i64 %i.lz, %wide.trip.count.i.i150
  %i.mg = shl nsw i64 %i.mf, 2
  %i.mh = getelementptr i8, ptr %i.lr, i64 %i.mg
  %i.mi = add nsw i64 %i.lv, %wide.trip.count.i.i150
  %i.mj = shl nsw i64 %i.mi, 2
  %i.mk = getelementptr i8, ptr %i.lr, i64 %i.mj
  %bound0355 = icmp ult ptr %i.lh, %i.mh
  %bound1356 = icmp ult ptr %i.ma, %i.me
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult ptr %i.lh, %i.mk
  %bound1359 = icmp ult ptr %i.lw, %i.me
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %found.conflict357, %found.conflict360
  br i1 %conflict.rdx361, label %.lr.ph.i.i166.preheader476, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck354
  %broadcast.splatinsert364 = insertelement <4 x float> poison, float %i.md, i64 0
  %broadcast.splat365 = shufflevector <4 x float> %broadcast.splatinsert364, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert366 = insertelement <4 x float> poison, float %i.lq, i64 0
  %broadcast.splat367 = shufflevector <4 x float> %broadcast.splatinsert366, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph362
  %index369 = phi i64 [ 0, %vector.ph362 ], [ %index.next376, %vector.body368 ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %index369 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %wide.load370 = load <4 x float>, ptr %i.ml, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %wide.load371 = load <4 x float>, ptr %i.mm, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %index369 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %wide.load372 = load <4 x float>, ptr %i.mn, align 4, !tbaa !17, !alias.scope !116
  %wide.load373 = load <4 x float>, ptr %i.mo, align 4, !tbaa !17, !alias.scope !116
  %i.mp = fsub <4 x float> %wide.load372, %wide.load370
  %i.mq = fsub <4 x float> %wide.load373, %wide.load371
  %i.mr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mp, <4 x float> %broadcast.splat365, <4 x float> %wide.load370)
  %i.ms = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> %broadcast.splat365, <4 x float> %wide.load371)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %index369 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16 ; 2 uses
  %wide.load374 = load <4 x float>, ptr %i.mt, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %wide.load375 = load <4 x float>, ptr %i.mu, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %i.mv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat367, <4 x float> %i.mr, <4 x float> %wide.load374)
  %i.mw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat367, <4 x float> %i.ms, <4 x float> %wide.load375)
  store <4 x float> %i.mv, ptr %i.mt, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  store <4 x float> %i.mw, ptr %i.mu, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %index.next376 = add nuw i64 %index369, 8       ; 2 uses
  %i.mx = icmp eq i64 %index.next376, %n.vec363
  br i1 %i.mx, label %middle.block377, label %vector.body368, !llvm.loop !91

middle.block377:                                  ; preds = %vector.body368
  br i1 %cmp.n378, label %hex_blep.exit170, label %.lr.ph.i.i166.preheader476

.lr.ph.i.i166.preheader476:                       ; preds = %vector.memcheck354, %.lr.ph.i.i166.preheader, %middle.block377
  %indvars.iv.i.i167.ph = phi i64 [ 0, %vector.memcheck354 ], [ 0, %.lr.ph.i.i166.preheader ], [ %n.vec363, %middle.block377 ] ; 6 uses
  br i1 %lcmp.mod490.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader476
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.i.i167.ph
  %i.mz = load float, ptr %i.my, align 4, !tbaa !17 ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.i.i167.ph
  %i.nb = load float, ptr %i.na, align 4, !tbaa !17
  %i.nc = fsub float %i.nb, %i.mz
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.md, float %i.mz)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i167.ph ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !17
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.nd, float %i.nf)
  store float %i.ng, ptr %i.ne, align 4, !tbaa !17
  %indvars.iv.next.i.i168.prol = or disjoint i64 %indvars.iv.i.i167.ph, 1
  br label %.lr.ph.i.i166.prol.loopexit

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader476
  %indvars.iv.i.i167.unr = phi i64 [ %indvars.iv.i.i167.ph, %.lr.ph.i.i166.preheader476 ], [ %indvars.iv.next.i.i168.prol, %.lr.ph.i.i166.prol ]
  %i.nh = icmp eq i64 %indvars.iv.i.i167.ph, %i.es
  br i1 %i.nh, label %hex_blep.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %indvars.iv.i.i167 = phi i64 [ %indvars.iv.next.i.i168.1, %.lr.ph.i.i166 ], [ %indvars.iv.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ] ; 5 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.i.i167
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !17 ; 2 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.i.i167
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !17
  %i.nm = fsub float %i.nl, %i.nj
  %i.nn = tail call float @llvm.fmuladd.f32(float %i.nm, float %i.md, float %i.nj)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i167 ; 2 uses
  %i.np = load float, ptr %i.no, align 4, !tbaa !17
  %i.nq = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.nn, float %i.np)
  store float %i.nq, ptr %i.no, align 4, !tbaa !17
  %indvars.iv.next.i.i168 = add nuw nsw i64 %indvars.iv.i.i167, 1 ; 3 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv.next.i.i168
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !17 ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.next.i.i168
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !17
  %i.nv = fsub float %i.nu, %i.ns
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.nv, float %i.md, float %i.ns)
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next.i.i168 ; 2 uses
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !17
  %i.nz = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.nw, float %i.ny)
  store float %i.nz, ptr %i.nx, align 4, !tbaa !17
  %indvars.iv.next.i.i168.1 = add nuw nsw i64 %indvars.iv.i.i167, 2 ; 2 uses
  %exitcond.not.i.i169.1 = icmp eq i64 %indvars.iv.next.i.i168.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i169.1, label %hex_blep.exit170, label %.lr.ph.i.i166, !llvm.loop !92

hex_blep.exit170:                                 ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166, %middle.block377, %bb.w, %bb.v
  %i.oa = load float, ptr %i.dg, align 8, !tbaa !33 ; 2 uses
  %i.ob = fcmp une float %i.oa, %i.ll
  br i1 %i.ob, label %bb.x, label %hex_blamp.exit178.backedge

bb.x:                                             ; preds = %hex_blep.exit170
  %i.oc = fmul float %i.h, %i.lj                  ; 2 uses
  %i.od = fsub float %i.oa, %i.ll
  %i.oe = fmul float %i.e, %i.od                  ; 4 uses
  %i.of = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 4 uses
  %i.og = fmul float %i.oc, %i.em
  %i.oh = fptosi float %i.og to i32
  %spec.select.i.i171 = tail call i32 @llvm.smin.i32(i32 %i.oh, i32 %i.en) ; 3 uses
  %i.oi = mul i32 %spec.select.i.i171, %i.ek
  %i.oj = sext i32 %i.oi to i64                   ; 2 uses
  %i.ok = getelementptr [4 x i8], ptr %i.of, i64 %i.oj ; 5 uses
  %i.ol = add i32 %spec.select.i.i171, 1
  %i.om = mul i32 %i.ol, %i.ek
  %i.on = sext i32 %i.om to i64                   ; 2 uses
  %i.oo = getelementptr [4 x i8], ptr %i.of, i64 %i.on ; 5 uses
  %i.op = sitofp i32 %spec.select.i.i171 to float
  %i.oq = fneg float %i.op
  %i.or = tail call float @llvm.fmuladd.f32(float %i.oc, float %i.em, float %i.oq) ; 4 uses
  br i1 %i.eo, label %.lr.ph.i.i174.preheader, label %hex_blamp.exit178.backedge

.lr.ph.i.i174.preheader:                          ; preds = %bb.x
  br i1 %min.iters.check314, label %.lr.ph.i.i174.preheader475, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i.i174.preheader
  %i.os = getelementptr i8, ptr %i.lh, i64 %i.ep  ; 2 uses
  %i.ot = add nsw i64 %i.on, %wide.trip.count.i.i150
  %i.ou = shl nsw i64 %i.ot, 2
  %i.ov = getelementptr i8, ptr %i.of, i64 %i.ou
  %i.ow = add nsw i64 %i.oj, %wide.trip.count.i.i150
  %i.ox = shl nsw i64 %i.ow, 2
  %i.oy = getelementptr i8, ptr %i.of, i64 %i.ox
  %bound0316 = icmp ult ptr %i.lh, %i.ov
  %bound1317 = icmp ult ptr %i.oo, %i.os
  %found.conflict318 = and i1 %bound0316, %bound1317
  %bound0319 = icmp ult ptr %i.lh, %i.oy
  %bound1320 = icmp ult ptr %i.ok, %i.os
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %found.conflict318, %found.conflict321
  br i1 %conflict.rdx322, label %.lr.ph.i.i174.preheader475, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck315
  %broadcast.splatinsert325 = insertelement <4 x float> poison, float %i.or, i64 0
  %broadcast.splat326 = shufflevector <4 x float> %broadcast.splatinsert325, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.oe, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph323
  %index330 = phi i64 [ 0, %vector.ph323 ], [ %index.next337, %vector.body329 ] ; 4 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %index330 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %wide.load331 = load <4 x float>, ptr %i.oz, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %wide.load332 = load <4 x float>, ptr %i.pa, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %index330 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %wide.load333 = load <4 x float>, ptr %i.pb, align 4, !tbaa !17, !alias.scope !120
  %wide.load334 = load <4 x float>, ptr %i.pc, align 4, !tbaa !17, !alias.scope !120
  %i.pd = fsub <4 x float> %wide.load333, %wide.load331
  %i.pe = fsub <4 x float> %wide.load334, %wide.load332
  %i.pf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pd, <4 x float> %broadcast.splat326, <4 x float> %wide.load331)
  %i.pg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pe, <4 x float> %broadcast.splat326, <4 x float> %wide.load332)
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %index330 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  %wide.load335 = load <4 x float>, ptr %i.ph, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %wide.load336 = load <4 x float>, ptr %i.pi, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %i.pj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.pf, <4 x float> %wide.load335)
  %i.pk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.pg, <4 x float> %wide.load336)
  store <4 x float> %i.pj, ptr %i.ph, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  store <4 x float> %i.pk, ptr %i.pi, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %index.next337 = add nuw i64 %index330, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next337, %n.vec324
  br i1 %i.pl, label %middle.block338, label %vector.body329, !llvm.loop !97

middle.block338:                                  ; preds = %vector.body329
  br i1 %cmp.n339, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174.preheader475

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block338, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block338 ], [ %i.eu, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.lj, %middle.block338 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.lj, %bb.x ], [ %i.lj, %hex_blep.exit170 ], [ %i.lj, %bb.u ], [ %i.lj, %.lr.ph.i.i174 ], [ %i.lj, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader475:                       ; preds = %vector.memcheck315, %.lr.ph.i.i174.preheader, %middle.block338
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec324, %middle.block338 ] ; 6 uses
  br i1 %lcmp.mod492.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader475
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i.i175.ph
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17 ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i.i175.ph
  %i.pp = load float, ptr %i.po, align 4, !tbaa !17
  %i.pq = fsub float %i.pp, %i.pn
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.or, float %i.pn)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !17
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.pr, float %i.pt)
  store float %i.pu, ptr %i.ps, align 4, !tbaa !17
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader475
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader475 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.pv = icmp eq i64 %indvars.iv.i.i175.ph, %i.et
  br i1 %i.pv, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i.i175
  %i.px = load float, ptr %i.pw, align 4, !tbaa !17 ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i.i175
  %i.pz = load float, ptr %i.py, align 4, !tbaa !17
  %i.qa = fsub float %i.pz, %i.px
  %i.qb = tail call float @llvm.fmuladd.f32(float %i.qa, float %i.or, float %i.px)
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i175 ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !17
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.qb, float %i.qd)
  store float %i.qe, ptr %i.qc, align 4, !tbaa !17
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.next.i.i176
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !17 ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.next.i.i176
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !17
  %i.qj = fsub float %i.qi, %i.qg
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.qj, float %i.or, float %i.qg)
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !17
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.qk, float %i.qm)
  store float %i.qn, ptr %i.ql, align 4, !tbaa !17
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fn, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dt, label %bb.y, label %bb.i, !llvm.loop !99

bb.y:                                             ; preds = %.loopexit
  %i.qo = load i32, ptr @hexblep, align 8, !tbaa !23 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.qo
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.qq = sub nsw i32 %1, %i.qo
  %i.qr = sext i32 %i.qq to i64
  %wide.trip.count = zext nneg i32 %i.qo to i64   ; 3 uses
  %invariant.gep275 = getelementptr [4 x i8], ptr %0, i64 %i.qr ; 2 uses
  %min.iters.check462 = icmp ult i32 %i.qo, 8
  br i1 %min.iters.check462, label %scalar.ph461.preheader, label %vector.ph463

vector.ph463:                                     ; preds = %.lr.ph198
  %n.vec464 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next471, %vector.body465 ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index466 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %wide.load467 = load <4 x float>, ptr %i.qs, align 16, !tbaa !17
  %wide.load468 = load <4 x float>, ptr %i.qt, align 16, !tbaa !17
  %i.qu = getelementptr [4 x i8], ptr %invariant.gep275, i64 %index466 ; 3 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 16     ; 2 uses
  %wide.load469 = load <4 x float>, ptr %i.qu, align 4, !tbaa !17
  %wide.load470 = load <4 x float>, ptr %i.qv, align 4, !tbaa !17
  %i.qw = fadd <4 x float> %wide.load467, %wide.load469
  %i.qx = fadd <4 x float> %wide.load468, %wide.load470
  store <4 x float> %i.qw, ptr %i.qu, align 4, !tbaa !17
  store <4 x float> %i.qx, ptr %i.qv, align 4, !tbaa !17
  %index.next471 = add nuw i64 %index466, 8       ; 2 uses
  %i.qy = icmp eq i64 %index.next471, %n.vec464
  br i1 %i.qy, label %middle.block472, label %vector.body465, !llvm.loop !100

middle.block472:                                  ; preds = %vector.body465
  %cmp.n473 = icmp eq i64 %n.vec464, %wide.trip.count
  br i1 %cmp.n473, label %._crit_edge199, label %scalar.ph461.preheader

scalar.ph461.preheader:                           ; preds = %.lr.ph198, %middle.block472
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec464, %middle.block472 ]
  br label %scalar.ph461

scalar.ph461:                                     ; preds = %scalar.ph461.preheader, %scalar.ph461
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph461 ], [ %indvars.iv211.ph, %scalar.ph461.preheader ] ; 3 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !17
  %gep276 = getelementptr [4 x i8], ptr %invariant.gep275, i64 %indvars.iv211 ; 2 uses
  %i.rb = load float, ptr %gep276, align 4, !tbaa !17
  %i.rc = fadd float %i.ra, %i.rb
  store float %i.rc, ptr %gep276, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph461, !llvm.loop !101

._crit_edge199:                                   ; preds = %scalar.ph461, %middle.block472, %.preheader179
  %i.rd = sext i32 %i.qo to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  %i.re = zext nneg i32 %1 to i64
  %i.rf = shl nuw nsw i64 %i.re, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.a, i64 %i.rf, i1 false), !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink280 = phi i64 [ %i.cu, %._crit_edge202 ], [ %i.rd, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink280
  %i.rh = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.rg, i64 %i.rh, i1 false)
  store float %.4, ptr %2, align 4, !tbaa !102
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hexwave_shutdown(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28
  tail call void @free(ptr noundef %i.a) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29
  tail call void @free(ptr noundef %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

end_hunk_1
begin_hunk_2_@hexwave_init:bb.a
  %i.op = load float, ptr %gep, align 4, !tbaa !17
  %i.oq = fadd float %i.op, -1.000000e+00
  store float %i.oq, ptr %gep, align 4, !tbaa !17
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %i.of
  br i1 %exitcond192.not, label %..preheader_crit_edge.us.us, label %scalar.ph328, !llvm.loop !138

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph328, %middle.block337
  %i.or = trunc nuw nsw i64 %indvars.iv198 to i32
  %i.os = sub i32 %i.or, %i.b                     ; 2 uses
  %invariant.gep208 = getelementptr [4 x i8], ptr %.0124, i64 %i.ok ; 2 uses
  br i1 %min.iters.check310, label %scalar.ph309.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %..preheader_crit_edge.us.us
  %broadcast.splatinsert313 = insertelement <4 x i32> poison, i32 %i.os, i64 0
  %broadcast.splat314 = shufflevector <4 x i32> %broadcast.splatinsert313, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep347 = getelementptr [4 x i8], ptr %invariant.gep208, i64 %i.oe
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph311
  %index322 = phi i64 [ 0, %vector.ph311 ], [ %index.next324, %vector.body321 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph311 ], [ %vec.ind.next, %vector.body321 ] ; 2 uses
  %i.ot = mul <4 x i32> %broadcast.splat316, %vec.ind
  %i.ou = add <4 x i32> %broadcast.splat314, %i.ot
  %i.ov = sitofp <4 x i32> %i.ou to <4 x float>
  %gep348 = getelementptr [4 x i8], ptr %invariant.gep347, i64 %index322 ; 2 uses
  %wide.load323 = load <4 x float>, ptr %gep348, align 4, !tbaa !17
  %i.ow = fneg <4 x float> %i.ov
  %i.ox = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ow, <4 x float> %broadcast.splat318, <4 x float> %wide.load323)
  store <4 x float> %i.ox, ptr %gep348, align 4, !tbaa !17
  %index.next324 = add nuw i64 %index322, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.oy = icmp eq i64 %index.next324, %n.vec312
  br i1 %i.oy, label %middle.block325, label %vector.body321, !llvm.loop !139

middle.block325:                                  ; preds = %vector.body321
  br i1 %cmp.n326, label %._crit_edge161.us.us, label %scalar.ph309.preheader

scalar.ph309.preheader:                           ; preds = %..preheader_crit_edge.us.us, %middle.block325
  %indvars.iv193.ph = phi i64 [ %i.oe, %..preheader_crit_edge.us.us ], [ %i.oj, %middle.block325 ]
  br label %scalar.ph309

scalar.ph309:                                     ; preds = %scalar.ph309.preheader, %scalar.ph309
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %scalar.ph309 ], [ %indvars.iv193.ph, %scalar.ph309.preheader ] ; 3 uses
  %i.oz = trunc i64 %indvars.iv193 to i32
  %i.pa = mul i32 %1, %i.oz
  %i.pb = add i32 %i.os, %i.pa
  %i.pc = sitofp i32 %i.pb to float
  %gep209 = getelementptr [4 x i8], ptr %invariant.gep208, i64 %indvars.iv193 ; 2 uses
  %i.pd = load float, ptr %gep209, align 4, !tbaa !17
  %i.pe = fneg float %i.pc
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.pe, float %i.od, float %i.pd)
  store float %i.pf, ptr %gep209, align 4, !tbaa !17
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %i.of
  br i1 %exitcond197.not, label %._crit_edge161.us.us, label %scalar.ph309, !llvm.loop !140

._crit_edge161.us.us:                             ; preds = %scalar.ph309, %middle.block325
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge164, label %.preheader137.us.us, !llvm.loop !141

scalar.ph275:                                     ; preds = %scalar.ph275.prol.loopexit, %scalar.ph275
  %indvars.iv178 = phi i64 [ %indvars.iv.next179.1, %scalar.ph275 ], [ %indvars.iv178.unr, %scalar.ph275.prol.loopexit ] ; 4 uses
  %i.pg = mul nuw nsw i64 %indvars.iv178, %i.jh
  %i.ph = add nuw nsw i64 %i.pg, %indvars.iv183   ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ph
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !17
  %i.pk = add nuw nsw i64 %indvars.iv178, %i.kq   ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.pk
  store float %i.pj, ptr %i.pl, align 4, !tbaa !17
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ph
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.pk
  store float %i.pn, ptr %i.po, align 4, !tbaa !17
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.pp = mul nuw nsw i64 %indvars.iv.next179, %i.jh
  %i.pq = add nuw nsw i64 %i.pp, %indvars.iv183   ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.pq
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !17
  %i.pt = add nuw nsw i64 %indvars.iv.next179, %i.kq ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.pt
  store float %i.ps, ptr %i.pu, align 4, !tbaa !17
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.pq
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !17
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.pt
  store float %i.pw, ptr %i.px, align 4, !tbaa !17
  %indvars.iv.next179.1 = add nuw nsw i64 %indvars.iv178, 2 ; 2 uses
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next179.1, %i.ji
  br i1 %exitcond182.not.1, label %._crit_edge, label %scalar.ph275, !llvm.loop !142

._crit_edge:                                      ; preds = %scalar.ph275.prol.loopexit, %scalar.ph275, %middle.block306
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %.preheader138, label %.preheader139, !llvm.loop !143

._crit_edge164:                                   ; preds = %._crit_edge161.us.us, %.preheader137.lr.ph, %.preheader138
  store ptr %.0125, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28
  store ptr %.0124, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29
  store i32 %spec.store.select135, ptr @hexblep, align 8, !tbaa !23
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge164
  tail call void @free(ptr noundef %i.t) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge164
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"", !5, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!10 = !{!"HexWave", !8, i64 0, !8, i64 4, !9, i64 8, !9, i64 24, !5, i64 40, !4, i64 44}
!11 = !{!10, !5, i64 24}
!12 = !{!10, !8, i64 28}
!13 = !{!10, !8, i64 36}
!14 = !{!10, !8, i64 32}
!15 = !{!10, !5, i64 40}
!16 = !{!5, !5, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{i64 0, i64 4, !16, i64 4, i64 4, !17, i64 8, i64 4, !17, i64 12, i64 4, !17}
!19 = !{!10, !8, i64 4}
!20 = !{!"any pointer", !4, i64 0}
!21 = !{!"p1 float", !20, i64 0}
!22 = !{!"", !5, i64 0, !5, i64 4, !21, i64 8, !21, i64 16}
!23 = !{!22, !5, i64 0}
!24 = !{!22, !5, i64 4}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!22, !21, i64 8}
!29 = !{!22, !21, i64 16}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!31 = !{!30, !8, i64 0}
!32 = !{!30, !8, i64 4}
!33 = !{!30, !8, i64 8}
!34 = distinct !{!34, i1 false, !"LVerDomain"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !25, !26, !27}
!39 = distinct !{!39, !25, !26}
!40 = !{!35}
!41 = !{!36}
!42 = !{!37}
!43 = !{!36, !35}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
!48 = distinct !{!48, !25, !26, !27}
!49 = distinct !{!49, !25, !26}
!50 = !{!45}
!51 = !{!46}
!52 = !{!47}
!53 = !{!46, !45}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !25, !26, !27}
!59 = distinct !{!59, !25, !26}
!60 = !{!55}
!61 = !{!56}
!62 = !{!57}
!63 = !{!56, !55}
!64 = !{!10, !8, i64 16}
!65 = !{!10, !8, i64 12}
!66 = !{!10, !8, i64 20}
!67 = !{!10, !5, i64 8}
!68 = distinct !{!68, i1 false, !"LVerDomain"}
!69 = distinct !{!69, !68}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !25, !26, !27}
!73 = distinct !{!73, !25, !26}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, i1 false, !"LVerDomain"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !75}
!79 = distinct !{!79, !25, !26, !27}
!80 = distinct !{!80, !25, !26}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !25, !26, !27}
!86 = distinct !{!86, !25, !26}
!87 = distinct !{!87, i1 false, !"LVerDomain"}
!88 = distinct !{!88, !87}
!89 = distinct !{!89, !87}
!90 = distinct !{!90, !87}
!91 = distinct !{!91, !25, !26, !27}
!92 = distinct !{!92, !25, !26}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !93}
!97 = distinct !{!97, !25, !26, !27}
!98 = distinct !{!98, !25, !26}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25, !26, !27}
!101 = distinct !{!101, !25, !27, !26}
!102 = !{!10, !8, i64 0}
!103 = !{!69}
!104 = !{!70}
!105 = !{!71}
!106 = !{!70, !69}
!107 = !{!76}
!108 = !{!77}
!109 = !{!78}
!110 = !{!77, !76}
!111 = !{!82}
!112 = !{!83}
!113 = !{!84}
!114 = !{!83, !82}
!115 = !{!88}
!116 = !{!89}
!117 = !{!90}
!118 = !{!89, !88}
!119 = !{!94}
!120 = !{!95}
!121 = !{!96}
!122 = !{!95, !94}
!123 = distinct !{!123, i1 false, !"LVerDomain"}
!124 = distinct !{!124, !123}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !123}
!127 = distinct !{!127, !123}
!128 = distinct !{!128, !25, !26, !27}
!129 = distinct !{!129, !25}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !25, !26}
!132 = distinct !{!132, i1 false, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !132}
!136 = distinct !{!136, !132}
!137 = distinct !{!137, !25, !26, !27}
!138 = distinct !{!138, !25, !27, !26}
!139 = distinct !{!139, !25, !26, !27}
!140 = distinct !{!140, !25, !27, !26}
!141 = distinct !{!141, !25}
!142 = distinct !{!142, !25, !26}
!143 = distinct !{!143, !25}
!144 = !{!124}
!145 = !{!125}
!146 = !{!126}
!147 = !{!127, !124, !125}
!148 = !{!127}
!149 = !{!124, !125}
!150 = !{!133}
!151 = !{!134}
!152 = !{!136, !133, !135}
!153 = !{!135}
!154 = !{!136}
!155 = !{!133, !135}
end_hunk_2
