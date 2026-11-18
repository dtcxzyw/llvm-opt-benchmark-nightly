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
  %bound0 = icmp ult ptr %0, %i.v
  %bound1 = icmp ult ptr %i.m, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %4 = add nsw i64 %i.h, %wide.trip.count
  %5 = shl nsw i64 %4, 2
  %6 = getelementptr i8, ptr %3, i64 %5
  %bound032 = icmp ult ptr %0, %6
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
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x float>, ptr %i.w, align 4, !tbaa !17, !alias.scope !40 ; 2 uses
  %wide.load37 = load <4 x float>, ptr %i.x, align 4, !tbaa !17, !alias.scope !40 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load38 = load <4 x float>, ptr %i.y, align 4, !tbaa !17, !alias.scope !41
  %wide.load39 = load <4 x float>, ptr %i.z, align 4, !tbaa !17, !alias.scope !41
  %i.aa = fsub <4 x float> %wide.load38, %wide.load
  %i.ab = fsub <4 x float> %wide.load39, %wide.load37
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %broadcast.splat, <4 x float> %wide.load37)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load40 = load <4 x float>, ptr %i.ae, align 4, !tbaa !17, !alias.scope !42, !noalias !43
  %wide.load41 = load <4 x float>, ptr %i.af, align 4, !tbaa !17, !alias.scope !42, !noalias !43
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat36, <4 x float> %i.ac, <4 x float> %wide.load40)
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat36, <4 x float> %i.ad, <4 x float> %wide.load41)
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !17, !alias.scope !42, !noalias !43
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !17, !alias.scope !42, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader42
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !17 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.am = load float, ptr %i.al, align 4, !tbaa !17
  %i.an = fsub float %i.am, %i.ak
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.p, float %i.ak)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !17
  %i.ar = tail call float @llvm.fmuladd.f32(float %2, float %i.ao, float %i.aq)
  store float %i.ar, ptr %i.ap, align 4, !tbaa !17
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader42
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader42 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.as = add nsw i64 %wide.trip.count, -1
  %i.at = icmp eq i64 %indvars.iv.ph, %i.as
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !17 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !17
  %i.ay = fsub float %i.ax, %i.av
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.p, float %i.av)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !17
  %i.bc = tail call float @llvm.fmuladd.f32(float %2, float %i.az, float %i.bb)
  store float %i.bc, ptr %i.ba, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.be = load float, ptr %i.bd, align 4, !tbaa !17 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !17
  %i.bh = fsub float %i.bg, %i.be
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.p, float %i.be)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !17
  %i.bl = tail call float @llvm.fmuladd.f32(float %2, float %i.bi, float %i.bk)
  store float %i.bl, ptr %i.bj, align 4, !tbaa !17
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
  %bound0 = icmp ult ptr %0, %i.w
  %bound1 = icmp ult ptr %i.n, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %3 = add nsw i64 %i.i, %wide.trip.count.i
  %4 = shl nsw i64 %3, 2
  %5 = getelementptr i8, ptr %i.a, i64 %4
  %bound08 = icmp ult ptr %0, %5
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
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x float>, ptr %i.x, align 4, !tbaa !17, !alias.scope !50 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.y, align 4, !tbaa !17, !alias.scope !50 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load14 = load <4 x float>, ptr %i.z, align 4, !tbaa !17, !alias.scope !51
  %wide.load15 = load <4 x float>, ptr %i.aa, align 4, !tbaa !17, !alias.scope !51
  %i.ab = fsub <4 x float> %wide.load14, %wide.load
  %i.ac = fsub <4 x float> %wide.load15, %wide.load13
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %broadcast.splat, <4 x float> %wide.load13)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.af, align 4, !tbaa !17, !alias.scope !52, !noalias !53
  %wide.load17 = load <4 x float>, ptr %i.ag, align 4, !tbaa !17, !alias.scope !52, !noalias !53
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat12, <4 x float> %i.ad, <4 x float> %wide.load16)
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat12, <4 x float> %i.ae, <4 x float> %wide.load17)
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !17, !alias.scope !52, !noalias !53
  store <4 x float> %i.ai, ptr %i.ag, align 4, !tbaa !17, !alias.scope !52, !noalias !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.ph
  %i.al = load float, ptr %i.ak, align 4, !tbaa !17 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.ph
  %i.an = load float, ptr %i.am, align 4, !tbaa !17
  %i.ao = fsub float %i.an, %i.al
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.q, float %i.al)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.ph ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !17
  %i.as = tail call float @llvm.fmuladd.f32(float %2, float %i.ap, float %i.ar)
  store float %i.as, ptr %i.aq, align 4, !tbaa !17
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.at = add nsw i64 %wide.trip.count.i, -1
  %i.au = icmp eq i64 %indvars.iv.i.ph, %i.at
  br i1 %i.au, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !17 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !17
  %i.az = fsub float %i.ay, %i.aw
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.q, float %i.aw)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !17
  %i.bd = tail call float @llvm.fmuladd.f32(float %2, float %i.ba, float %i.bc)
  store float %i.bd, ptr %i.bb, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !17
  %i.bi = fsub float %i.bh, %i.bf
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.q, float %i.bf)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !17
  %i.bm = tail call float @llvm.fmuladd.f32(float %2, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bk, align 4, !tbaa !17
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
  %bound0 = icmp ult ptr %0, %i.w
  %bound1 = icmp ult ptr %i.n, %i.t
  %found.conflict = and i1 %bound0, %bound1
  %3 = add nsw i64 %i.i, %wide.trip.count.i
  %4 = shl nsw i64 %3, 2
  %5 = getelementptr i8, ptr %i.a, i64 %4
  %bound08 = icmp ult ptr %0, %5
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
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x float>, ptr %i.x, align 4, !tbaa !17, !alias.scope !60 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.y, align 4, !tbaa !17, !alias.scope !60 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load14 = load <4 x float>, ptr %i.z, align 4, !tbaa !17, !alias.scope !61
  %wide.load15 = load <4 x float>, ptr %i.aa, align 4, !tbaa !17, !alias.scope !61
  %i.ab = fsub <4 x float> %wide.load14, %wide.load
  %i.ac = fsub <4 x float> %wide.load15, %wide.load13
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %broadcast.splat, <4 x float> %wide.load13)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %wide.load16 = load <4 x float>, ptr %i.af, align 4, !tbaa !17, !alias.scope !62, !noalias !63
  %wide.load17 = load <4 x float>, ptr %i.ag, align 4, !tbaa !17, !alias.scope !62, !noalias !63
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat12, <4 x float> %i.ad, <4 x float> %wide.load16)
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat12, <4 x float> %i.ae, <4 x float> %wide.load17)
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !17, !alias.scope !62, !noalias !63
  store <4 x float> %i.ai, ptr %i.ag, align 4, !tbaa !17, !alias.scope !62, !noalias !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i.ph
  %i.al = load float, ptr %i.ak, align 4, !tbaa !17 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.ph
  %i.an = load float, ptr %i.am, align 4, !tbaa !17
  %i.ao = fsub float %i.an, %i.al
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.q, float %i.al)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.ph ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !17
  %i.as = tail call float @llvm.fmuladd.f32(float %2, float %i.ap, float %i.ar)
  store float %i.as, ptr %i.aq, align 4, !tbaa !17
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.at = add nsw i64 %wide.trip.count.i, -1
  %i.au = icmp eq i64 %indvars.iv.i.ph, %i.at
  br i1 %i.au, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !17 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !17
  %i.az = fsub float %i.ay, %i.aw
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.q, float %i.aw)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !17
  %i.bd = tail call float @llvm.fmuladd.f32(float %2, float %i.ba, float %i.bc)
  store float %i.bd, ptr %i.bb, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !17
  %i.bi = fsub float %i.bh, %i.bf
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.q, float %i.bf)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !17
  %i.bm = tail call float @llvm.fmuladd.f32(float %2, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bk, align 4, !tbaa !17
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
end_hunk_0
begin_hunk_1_@hexwave_generate_linesegs:bb.a
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
  %bound0 = icmp ult ptr %0, %i.ba
  %bound1 = icmp ult ptr %i.ar, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  %5 = add nsw i64 %i.an, %wide.trip.count.i.i
  %6 = shl nsw i64 %5, 2
  %7 = getelementptr i8, ptr %i.ai, i64 %6
  %bound0292 = icmp ult ptr %0, %7
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
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !17, !alias.scope !103 ; 2 uses
  %wide.load297 = load <4 x float>, ptr %i.bc, align 4, !tbaa !17, !alias.scope !103 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load298 = load <4 x float>, ptr %i.bd, align 4, !tbaa !17, !alias.scope !104
  %wide.load299 = load <4 x float>, ptr %i.be, align 4, !tbaa !17, !alias.scope !104
  %i.bf = fsub <4 x float> %wide.load298, %wide.load
  %i.bg = fsub <4 x float> %wide.load299, %wide.load297
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %broadcast.splat, <4 x float> %wide.load297)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load300 = load <4 x float>, ptr %i.bj, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %wide.load301 = load <4 x float>, ptr %i.bk, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat296, <4 x float> %i.bh, <4 x float> %wide.load300)
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat296, <4 x float> %i.bi, <4 x float> %wide.load301)
  store <4 x float> %i.bl, ptr %i.bj, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  store <4 x float> %i.bm, ptr %i.bk, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %hex_blamp.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i.ph
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !17 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.ph
  %i.br = load float, ptr %i.bq, align 4, !tbaa !17
  %i.bs = fsub float %i.br, %i.bp
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.au, float %i.bp)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !17
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.bt, float %i.bv)
  store float %i.bw, ptr %i.bu, align 4, !tbaa !17
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bx = add nsw i64 %wide.trip.count.i.i, -1
  %i.by = icmp eq i64 %indvars.iv.i.i.ph, %i.bx
  br i1 %i.by, label %hex_blamp.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !17 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !17
  %i.cd = fsub float %i.cc, %i.ca
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.au, float %i.ca)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !17
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ce, float %i.cg)
  store float %i.ch, ptr %i.cf, align 4, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !17 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !17
  %i.cm = fsub float %i.cl, %i.cj
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.au, float %i.cj)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !17
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.cn, float %i.cp)
  store float %i.cq, ptr %i.co, align 4, !tbaa !17
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %hex_blamp.exit, label %.lr.ph.i.i, !llvm.loop !73

hex_blamp.exit:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.d, %bb.c
  store float %i.e, ptr %i.k, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %hex_blamp.exit, %bb.b
  %i.cr = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cs, i1 false)
  %i.ct = load i32, ptr @hexblep, align 8, !tbaa !23 ; 3 uses
  %i.cu = shl nsw i32 %i.ct, 1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.cw, i1 false)
  %.not = icmp slt i32 %1, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.cy = sext i32 %i.d to i64                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %i.cx, i64 %i.cy, i1 false)
  %.pre = load i32, ptr @hexblep, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.cx, i64 %i.cy, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cz = phi i32 [ %i.ct, %bb.g ], [ %.pre, %bb.f ] ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.cz)
  %i.da = icmp sge i32 %1, %i.cz
  %i.db = sub nsw i32 %1, %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dh = sext i32 %i.i to i64
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 96
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.0122196 = phi float [ %i.b, %bb.h ], [ %.4, %.loopexit ] ; 10 uses
  %i.dq = phi i1 [ false, %bb.h ], [ true, %.loopexit ] ; 4 uses
  %brmerge = select i1 %i.dq, i1 true, i1 %i.da
  %..mux = select i1 %i.dq, i32 %., i32 %i.db     ; 2 uses
  %.mux = select i1 %i.dq, ptr %i.a, ptr %0       ; 11 uses
  br i1 %brmerge, label %.preheader205, label %.loopexit

.preheader205:                                    ; preds = %bb.i
  %i.dr = load float, ptr %i.di, align 4, !tbaa !31
  %i.ds = fcmp olt float %.0122196, %i.dr
  br i1 %i.ds, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.preheader205
  %i.dt = load float, ptr %i.dj, align 8, !tbaa !31
  %i.du = fcmp olt float %.0122196, %i.dt
  br i1 %i.du, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dv = load float, ptr %i.dk, align 4, !tbaa !31
  %i.dw = fcmp olt float %.0122196, %i.dv
  br i1 %i.dw, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load float, ptr %i.dl, align 16, !tbaa !31
  %i.dy = fcmp olt float %.0122196, %i.dx
  br i1 %i.dy, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dz = load float, ptr %i.dm, align 4, !tbaa !31
  %i.ea = fcmp olt float %.0122196, %i.dz
  br i1 %i.ea, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load float, ptr %i.dn, align 8, !tbaa !31
  %i.ec = fcmp olt float %.0122196, %i.eb
  br i1 %i.ec, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = load float, ptr %i.do, align 4, !tbaa !31
  %i.ee = fcmp olt float %.0122196, %i.ed
  br i1 %i.ee, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = load float, ptr %i.dp, align 16, !tbaa !31
  %i.eg = fcmp olt float %.0122196, %i.ef
  %spec.select277 = select i1 %i.eg, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.preheader205
  %.1124.lcssa = phi i32 [ 0, %.preheader205 ], [ 4, %bb.m ], [ 6, %bb.o ], [ 1, %bb.j ], [ %spec.select277, %bb.p ], [ 2, %bb.k ], [ 5, %bb.n ], [ 3, %bb.l ]
  %i.eh = load i32, ptr @hexblep, align 8         ; 14 uses
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4 ; 2 uses
  %i.ej = sitofp i32 %i.ei to float               ; 8 uses
  %i.ek = add i32 %i.ei, -1                       ; 4 uses
  %i.el = icmp sgt i32 %i.eh, 0                   ; 4 uses
  %wide.trip.count.i.i150 = zext i32 %i.eh to i64 ; 27 uses
  %sext = sext i32 %..mux to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.mux, i64 %i.dh
  %i.em = shl nuw nsw i64 %wide.trip.count.i.i150, 2 ; 5 uses
  %scevgep = getelementptr i8, ptr %.mux, i64 %i.em ; 2 uses
  %min.iters.check434 = icmp ult i32 %i.eh, 8
  %n.vec444 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n459 = icmp eq i64 %n.vec444, %wide.trip.count.i.i150
  %xtraiter485 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod486.not = icmp eq i64 %xtraiter485, 0
  %i.en = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check393 = icmp ult i32 %i.eh, 8
  %n.vec403 = and i64 %wide.trip.count.i.i150, 4294967288 ; 3 uses
  %cmp.n418 = icmp eq i64 %n.vec403, %wide.trip.count.i.i150
  %xtraiter487 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  %i.eo = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check353 = icmp ult i32 %i.eh, 8
  %n.vec363 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n378 = icmp eq i64 %n.vec363, %wide.trip.count.i.i150
  %xtraiter489 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod490.not = icmp eq i64 %xtraiter489, 0
  %i.ep = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check314 = icmp ult i32 %i.eh, 8
  %n.vec324 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n339 = icmp eq i64 %n.vec324, %wide.trip.count.i.i150
  %xtraiter491 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  %i.eq = add nsw i64 %wide.trip.count.i.i150, -1
  br label %hex_blamp.exit178

hex_blamp.exit178:                                ; preds = %hex_blamp.exit178.backedge, %bb.q
  %.0127 = phi i32 [ 0, %bb.q ], [ %.1128.lcssa, %hex_blamp.exit178.backedge ] ; 3 uses
  %.2125 = phi i32 [ %.1124.lcssa, %bb.q ], [ %.2125.be, %hex_blamp.exit178.backedge ] ; 2 uses
  %.1 = phi float [ %.0122196, %bb.q ], [ %.1.be, %hex_blamp.exit178.backedge ] ; 4 uses
  %i.er = add nsw i32 %.2125, 1                   ; 3 uses
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %4, i64 %i.es ; 4 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !31 ; 5 uses
  %i.ev = fcmp olt float %.1, %i.eu
  %i.ew = sext i32 %.2125 to i64                  ; 2 uses
  %i.ex = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ew ; 4 uses
  br i1 %i.ev, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %hex_blamp.exit178
  %.pre218 = load float, ptr %i.ex, align 4, !tbaa !31
  br label %._crit_edge

.lr.ph:                                           ; preds = %hex_blamp.exit178
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = icmp eq i32 %.0127, %..mux
  br i1 %i.fa, label %.loopexit, label %.lr.ph285

.lr.ph285:                                        ; preds = %.lr.ph
  %i.fb = sext i32 %.0127 to i64
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !32
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !33
  %i.fe = load float, ptr %i.ex, align 4, !tbaa !31 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.ff = icmp eq i64 %indvars.iv.next, %sext
  br i1 %i.ff, label %.loopexit, label %bb.s, !llvm.loop !74

bb.s:                                             ; preds = %.lr.ph285, %bb.r
  %.2190284 = phi float [ %.1, %.lr.ph285 ], [ %i.fk, %bb.r ] ; 2 uses
  %indvars.iv283 = phi i64 [ %i.fb, %.lr.ph285 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.fg = fsub float %.2190284, %i.fe
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.fg, float %i.fc)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv283 ; 2 uses
  %i.fi = load float, ptr %gep, align 4, !tbaa !17
  %i.fj = fadd float %i.fi, %i.fh
  store float %i.fj, ptr %gep, align 4, !tbaa !17
  %i.fk = fadd float %i.e, %.2190284              ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv283, 1 ; 3 uses
  %i.fl = fcmp olt float %i.fk, %i.eu
  br i1 %i.fl, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.fm = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.fn = phi float [ %.pre218, %.._crit_edge_crit_edge ], [ %i.fe, %._crit_edge.loopexit ]
  %.1128.lcssa = phi i32 [ %.0127, %.._crit_edge_crit_edge ], [ %i.fm, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi float [ %.1, %.._crit_edge_crit_edge ], [ %i.fk, %._crit_edge.loopexit ] ; 4 uses
  %i.fo = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ew ; 3 uses
  %i.fp = fcmp oeq float %i.fn, %i.eu
  %i.fq = sext i32 %.1128.lcssa to i64            ; 10 uses
  br i1 %i.fp, label %bb.t, label %hex_blep.exit

bb.t:                                             ; preds = %._crit_edge
  %i.fr = getelementptr [4 x i8], ptr %.mux, i64 %i.fq ; 6 uses
  %i.fs = fsub float %.2.lcssa, %i.eu
  %i.ft = fmul float %i.h, %i.fs                  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !32
  %i.fy = fsub float %i.fv, %i.fx                 ; 4 uses
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 4 uses
  %i.ga = fmul float %i.ft, %i.ej
  %i.gb = fptosi float %i.ga to i32
  %spec.select.i.i148 = tail call i32 @llvm.smin.i32(i32 %i.gb, i32 %i.ek) ; 3 uses
  %i.gc = mul i32 %spec.select.i.i148, %i.eh
  %i.gd = sext i32 %i.gc to i64                   ; 3 uses
  %i.ge = getelementptr [4 x i8], ptr %i.fz, i64 %i.gd ; 5 uses
  %i.gf = add i32 %spec.select.i.i148, 1
  %i.gg = mul i32 %i.gf, %i.eh
  %i.gh = sext i32 %i.gg to i64                   ; 3 uses
  %i.gi = getelementptr [4 x i8], ptr %i.fz, i64 %i.gh ; 5 uses
  %i.gj = sitofp i32 %spec.select.i.i148 to float
  %i.gk = fneg float %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ej, float %i.gk) ; 5 uses
  br i1 %i.el, label %.lr.ph.i.i151.preheader, label %hex_blep.exit.thread268

.lr.ph.i.i151.preheader:                          ; preds = %bb.t
  br i1 %min.iters.check434, label %.lr.ph.i.i151.preheader478, label %vector.memcheck435

vector.memcheck435:                               ; preds = %.lr.ph.i.i151.preheader
  %i.gm = shl nsw i64 %i.fq, 2
  %i.gn = getelementptr i8, ptr %scevgep, i64 %i.gm ; 2 uses
  %i.go = add nsw i64 %i.gh, %wide.trip.count.i.i150
  %i.gp = shl nsw i64 %i.go, 2
  %i.gq = getelementptr i8, ptr %i.fz, i64 %i.gp
  %bound0436 = icmp ult ptr %i.fr, %i.gq
  %bound1437 = icmp ult ptr %i.gi, %i.gn
  %found.conflict438 = and i1 %bound0436, %bound1437
  %8 = add nsw i64 %i.gd, %wide.trip.count.i.i150
  %9 = shl nsw i64 %8, 2
  %10 = getelementptr i8, ptr %i.fz, i64 %9
  %bound0439 = icmp ult ptr %i.fr, %10
  %bound1440 = icmp ult ptr %i.ge, %i.gn
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %found.conflict438, %found.conflict441
  br i1 %conflict.rdx442, label %.lr.ph.i.i151.preheader478, label %vector.ph443

vector.ph443:                                     ; preds = %vector.memcheck435
  %broadcast.splatinsert445 = insertelement <4 x float> poison, float %i.gl, i64 0
  %broadcast.splat446 = shufflevector <4 x float> %broadcast.splatinsert445, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert447 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat448 = shufflevector <4 x float> %broadcast.splatinsert447, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body449

vector.body449:                                   ; preds = %vector.body449, %vector.ph443
  %index450 = phi i64 [ 0, %vector.ph443 ], [ %index.next457, %vector.body449 ] ; 4 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index450 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load451 = load <4 x float>, ptr %i.gr, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %wide.load452 = load <4 x float>, ptr %i.gs, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index450 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load453 = load <4 x float>, ptr %i.gt, align 4, !tbaa !17, !alias.scope !108
  %wide.load454 = load <4 x float>, ptr %i.gu, align 4, !tbaa !17, !alias.scope !108
  %i.gv = fsub <4 x float> %wide.load453, %wide.load451
  %i.gw = fsub <4 x float> %wide.load454, %wide.load452
  %i.gx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %broadcast.splat446, <4 x float> %wide.load451)
  %i.gy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> %broadcast.splat446, <4 x float> %wide.load452)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index450 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  %wide.load455 = load <4 x float>, ptr %i.gz, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %wide.load456 = load <4 x float>, ptr %i.ha, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat448, <4 x float> %i.gx, <4 x float> %wide.load455)
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat448, <4 x float> %i.gy, <4 x float> %wide.load456)
  store <4 x float> %i.hb, ptr %i.gz, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  store <4 x float> %i.hc, ptr %i.ha, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %index.next457 = add nuw i64 %index450, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next457, %n.vec444
  br i1 %i.hd, label %middle.block458, label %vector.body449, !llvm.loop !79

middle.block458:                                  ; preds = %vector.body449
  br i1 %cmp.n459, label %hex_blep.exit.thread, label %.lr.ph.i.i151.preheader478

.lr.ph.i.i151.preheader478:                       ; preds = %vector.memcheck435, %.lr.ph.i.i151.preheader, %middle.block458
  %indvars.iv.i.i152.ph = phi i64 [ 0, %vector.memcheck435 ], [ 0, %.lr.ph.i.i151.preheader ], [ %n.vec444, %middle.block458 ] ; 6 uses
  br i1 %lcmp.mod486.not, label %.lr.ph.i.i151.prol.loopexit, label %.lr.ph.i.i151.prol

.lr.ph.i.i151.prol:                               ; preds = %.lr.ph.i.i151.preheader478
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.i152.ph
  %i.hf = load float, ptr %i.he, align 4, !tbaa !17 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i.i152.ph
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !17
  %i.hi = fsub float %i.hh, %i.hf
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hi, float %i.gl, float %i.hf)
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i.i152.ph ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !17
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.hj, float %i.hl)
  store float %i.hm, ptr %i.hk, align 4, !tbaa !17
  %indvars.iv.next.i.i153.prol = or disjoint i64 %indvars.iv.i.i152.ph, 1
  br label %.lr.ph.i.i151.prol.loopexit

.lr.ph.i.i151.prol.loopexit:                      ; preds = %.lr.ph.i.i151.prol, %.lr.ph.i.i151.preheader478
  %indvars.iv.i.i152.unr = phi i64 [ %indvars.iv.i.i152.ph, %.lr.ph.i.i151.preheader478 ], [ %indvars.iv.next.i.i153.prol, %.lr.ph.i.i151.prol ]
  %i.hn = icmp eq i64 %indvars.iv.i.i152.ph, %i.en
  br i1 %i.hn, label %hex_blep.exit.thread, label %.lr.ph.i.i151

hex_blep.exit.thread268:                          ; preds = %bb.t
  %i.ho = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fq
  br label %hex_blamp.exit162

.lr.ph.i.i151:                                    ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151
  %indvars.iv.i.i152 = phi i64 [ %indvars.iv.next.i.i153.1, %.lr.ph.i.i151 ], [ %indvars.iv.i.i152.unr, %.lr.ph.i.i151.prol.loopexit ] ; 5 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.i152
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !17 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i.i152
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !17
  %i.ht = fsub float %i.hs, %i.hq
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.gl, float %i.hq)
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i.i152 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !17
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.hu, float %i.hw)
  store float %i.hx, ptr %i.hv, align 4, !tbaa !17
  %indvars.iv.next.i.i153 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i153
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !17 ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.next.i.i153
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !17
  %i.ic = fsub float %i.ib, %i.hz
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.gl, float %i.hz)
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.next.i.i153 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !17
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.id, float %i.if)
  store float %i.ig, ptr %i.ie, align 4, !tbaa !17
  %indvars.iv.next.i.i153.1 = add nuw nsw i64 %indvars.iv.i.i152, 2 ; 2 uses
  %exitcond.not.i.i154.1 = icmp eq i64 %indvars.iv.next.i.i153.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i154.1, label %hex_blep.exit.thread, label %.lr.ph.i.i151, !llvm.loop !80

hex_blep.exit.thread:                             ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151, %middle.block458
  %i.ih = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fq
  %i.ii = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !33
  %i.ik = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.il = load float, ptr %i.ik, align 4, !tbaa !33
  %i.im = fsub float %i.ij, %i.il
  %i.in = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.gd
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.gh
  br label %.lr.ph.i.i158.preheader

hex_blep.exit:                                    ; preds = %._crit_edge
  %.pre222 = fsub float %.2.lcssa, %i.eu
  %.pre224 = fmul float %i.h, %.pre222            ; 2 uses
  %.pre226 = fmul float %.pre224, %i.ej
  %.pre228 = fptosi float %.pre226 to i32
  %.pre230 = tail call i32 @llvm.smin.i32(i32 %.pre228, i32 %i.ek) ; 3 uses
  %.pre231 = mul nsw i32 %.pre230, %i.eh
  %.pre233 = sext i32 %.pre231 to i64
  %.pre235 = add nsw i32 %.pre230, 1
  %.pre237 = mul nsw i32 %.pre235, %i.eh
  %.pre239 = sext i32 %.pre237 to i64
  %.pre241 = sitofp i32 %.pre230 to float
  %.pre243 = fneg float %.pre241
  %.pre245 = tail call float @llvm.fmuladd.f32(float %.pre224, float %i.ej, float %.pre243)
  %i.iq = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fq ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.is = load float, ptr %i.ir, align 4, !tbaa !33
  %i.it = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.iu = load float, ptr %i.it, align 4, !tbaa !33
  %i.iv = fsub float %i.is, %i.iu
  %i.iw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %.pre233
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %.pre239
  br i1 %i.el, label %.lr.ph.i.i158.preheader, label %hex_blamp.exit162

.lr.ph.i.i158.preheader:                          ; preds = %hex_blep.exit.thread, %hex_blep.exit
  %i.iz = phi ptr [ %i.ip, %hex_blep.exit.thread ], [ %i.iy, %hex_blep.exit ] ; 6 uses
  %i.ja = phi ptr [ %i.io, %hex_blep.exit.thread ], [ %i.ix, %hex_blep.exit ] ; 6 uses
  %.pn = phi float [ %i.im, %hex_blep.exit.thread ], [ %i.iv, %hex_blep.exit ]
  %i.jb = phi ptr [ %i.ih, %hex_blep.exit.thread ], [ %i.iq, %hex_blep.exit ] ; 3 uses
  %.pre-phi246267 = phi float [ %i.gl, %hex_blep.exit.thread ], [ %.pre245, %hex_blep.exit ] ; 4 uses
  %i.jc = fmul float %i.e, %.pn                   ; 4 uses
  br i1 %min.iters.check393, label %.lr.ph.i.i158.preheader477, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i158.preheader
  %i.jd = shl nsw i64 %i.fq, 2                    ; 2 uses
  %i.je = getelementptr i8, ptr %.mux, i64 %i.jd  ; 2 uses
  %i.jf = getelementptr i8, ptr %scevgep, i64 %i.jd ; 2 uses
  %i.jg = getelementptr i8, ptr %i.iz, i64 %i.em
  %bound0395 = icmp ult ptr %i.je, %i.jg
  %bound0395.a = icmp ult ptr %i.iz, %i.jf
  %found.conflict397 = and i1 %bound0395, %bound0395.a
  %11 = getelementptr i8, ptr %i.ja, i64 %i.em
  %bound0398 = icmp ult ptr %i.je, %11
  %bound1399 = icmp ult ptr %i.ja, %i.jf
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %found.conflict397, %found.conflict400
  br i1 %conflict.rdx401, label %.lr.ph.i.i158.preheader477, label %vector.ph402

vector.ph402:                                     ; preds = %vector.memcheck394
  %i.jh = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fq
  %broadcast.splatinsert404 = insertelement <4 x float> poison, float %.pre-phi246267, i64 0
  %broadcast.splat405 = shufflevector <4 x float> %broadcast.splatinsert404, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert406 = insertelement <4 x float> poison, float %i.jc, i64 0
  %broadcast.splat407 = shufflevector <4 x float> %broadcast.splatinsert406, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph402
  %index409 = phi i64 [ 0, %vector.ph402 ], [ %index.next416, %vector.body408 ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index409 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load410 = load <4 x float>, ptr %i.ji, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %wide.load411 = load <4 x float>, ptr %i.jj, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %index409 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load412 = load <4 x float>, ptr %i.jk, align 4, !tbaa !17, !alias.scope !112
  %wide.load413 = load <4 x float>, ptr %i.jl, align 4, !tbaa !17, !alias.scope !112
  %i.jm = fsub <4 x float> %wide.load412, %wide.load410
  %i.jn = fsub <4 x float> %wide.load413, %wide.load411
  %i.jo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jm, <4 x float> %broadcast.splat405, <4 x float> %wide.load410)
  %i.jp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %broadcast.splat405, <4 x float> %wide.load411)
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %index409 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 2 uses
  %wide.load414 = load <4 x float>, ptr %i.jq, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %wide.load415 = load <4 x float>, ptr %i.jr, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %i.js = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat407, <4 x float> %i.jo, <4 x float> %wide.load414)
  %i.jt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat407, <4 x float> %i.jp, <4 x float> %wide.load415)
  store <4 x float> %i.js, ptr %i.jq, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  store <4 x float> %i.jt, ptr %i.jr, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %index.next416 = add nuw i64 %index409, 8       ; 2 uses
  %i.ju = icmp eq i64 %index.next416, %n.vec403
  br i1 %i.ju, label %middle.block417, label %vector.body408, !llvm.loop !85

middle.block417:                                  ; preds = %vector.body408
  br i1 %cmp.n418, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader477

.lr.ph.i.i158.preheader477:                       ; preds = %vector.memcheck394, %.lr.ph.i.i158.preheader, %middle.block417
  %indvars.iv.i.i159.ph = phi i64 [ 0, %vector.memcheck394 ], [ 0, %.lr.ph.i.i158.preheader ], [ %n.vec403, %middle.block417 ] ; 6 uses
  br i1 %lcmp.mod488.not, label %.lr.ph.i.i158.prol.loopexit, label %.lr.ph.i.i158.prol

.lr.ph.i.i158.prol:                               ; preds = %.lr.ph.i.i158.preheader477
  %i.jv = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fq
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.i159.ph
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !17 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.i.i159.ph
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !17
  %i.ka = fsub float %i.jz, %i.jx
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.ka, float %.pre-phi246267, float %i.jx)
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv.i.i159.ph ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !17
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.jc, float %i.kb, float %i.kd)
  store float %i.ke, ptr %i.kc, align 4, !tbaa !17
  %indvars.iv.next.i.i160.prol = or disjoint i64 %indvars.iv.i.i159.ph, 1
  br label %.lr.ph.i.i158.prol.loopexit

.lr.ph.i.i158.prol.loopexit:                      ; preds = %.lr.ph.i.i158.prol, %.lr.ph.i.i158.preheader477
  %indvars.iv.i.i159.unr = phi i64 [ %indvars.iv.i.i159.ph, %.lr.ph.i.i158.preheader477 ], [ %indvars.iv.next.i.i160.prol, %.lr.ph.i.i158.prol ]
  %i.kf = icmp eq i64 %indvars.iv.i.i159.ph, %i.eo
  br i1 %i.kf, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader477.new

.lr.ph.i.i158.preheader477.new:                   ; preds = %.lr.ph.i.i158.prol.loopexit
  %i.kg = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fq
  %i.kh = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fq
  br label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.lr.ph.i.i158, %.lr.ph.i.i158.preheader477.new
  %indvars.iv.i.i159 = phi i64 [ %indvars.iv.i.i159.unr, %.lr.ph.i.i158.preheader477.new ], [ %indvars.iv.next.i.i160.1, %.lr.ph.i.i158 ] ; 5 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.i159
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !17 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.i.i159
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !17
  %i.km = fsub float %i.kl, %i.kj
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.km, float %.pre-phi246267, float %i.kj)
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i.i159 ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !17
  %i.kq = tail call float @llvm.fmuladd.f32(float %i.jc, float %i.kn, float %i.kp)
  store float %i.kq, ptr %i.ko, align 4, !tbaa !17
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 3 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i160
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !17 ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.next.i.i160
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !17
  %i.kv = fsub float %i.ku, %i.ks
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.kv, float %.pre-phi246267, float %i.ks)
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.next.i.i160 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !17
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.jc, float %i.kw, float %i.ky)
  store float %i.kz, ptr %i.kx, align 4, !tbaa !17
  %indvars.iv.next.i.i160.1 = add nuw nsw i64 %indvars.iv.i.i159, 2 ; 2 uses
  %exitcond.not.i.i161.1 = icmp eq i64 %indvars.iv.next.i.i160.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i161.1, label %hex_blamp.exit162, label %.lr.ph.i.i158, !llvm.loop !86

hex_blamp.exit162:                                ; preds = %.lr.ph.i.i158.prol.loopexit, %.lr.ph.i.i158, %middle.block417, %hex_blep.exit.thread268, %hex_blep.exit
  %i.la = phi ptr [ %i.ho, %hex_blep.exit.thread268 ], [ %i.iq, %hex_blep.exit ], [ %i.jb, %middle.block417 ], [ %i.jb, %.lr.ph.i.i158 ], [ %i.jb, %.lr.ph.i.i158.prol.loopexit ] ; 14 uses
  %i.lb = icmp eq i32 %i.er, 8
  br i1 %i.lb, label %bb.u, label %hex_blamp.exit178.backedge

bb.u:                                             ; preds = %hex_blamp.exit162
  %i.lc = fadd float %.2.lcssa, -1.000000e+00     ; 8 uses
  %i.ld = load i32, ptr %i.dc, align 4, !tbaa !15
  %.not147 = icmp eq i32 %i.ld, 0
  br i1 %.not147, label %hex_blamp.exit178.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.le = load float, ptr %i.dd, align 8, !tbaa !33 ; 2 uses
  %i.lf = load float, ptr %i.de, align 4, !tbaa !32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %i.dg, i64 16, i1 false), !tbaa.struct !18
  store i32 0, ptr %i.dc, align 4, !tbaa !15
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.lg = load float, ptr %i.de, align 4, !tbaa !32 ; 2 uses
  %i.lh = fcmp une float %i.lg, %i.lf
  br i1 %i.lh, label %bb.w, label %hex_blep.exit170

bb.w:                                             ; preds = %bb.v
  %i.li = fmul float %i.h, %i.lc                  ; 2 uses
  %i.lj = fsub float %i.lg, %i.lf                 ; 4 uses
  %i.lk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 4 uses
  %i.ll = fmul float %i.li, %i.ej
  %i.lm = fptosi float %i.ll to i32
  %spec.select.i.i163 = tail call i32 @llvm.smin.i32(i32 %i.lm, i32 %i.ek) ; 3 uses
  %i.ln = mul i32 %spec.select.i.i163, %i.eh
  %i.lo = sext i32 %i.ln to i64                   ; 2 uses
  %i.lp = getelementptr [4 x i8], ptr %i.lk, i64 %i.lo ; 5 uses
  %i.lq = add i32 %spec.select.i.i163, 1
  %i.lr = mul i32 %i.lq, %i.eh
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = getelementptr [4 x i8], ptr %i.lk, i64 %i.ls ; 5 uses
  %i.lu = sitofp i32 %spec.select.i.i163 to float
  %i.lv = fneg float %i.lu
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.li, float %i.ej, float %i.lv) ; 4 uses
  br i1 %i.el, label %.lr.ph.i.i166.preheader, label %hex_blep.exit170

.lr.ph.i.i166.preheader:                          ; preds = %bb.w
  br i1 %min.iters.check353, label %.lr.ph.i.i166.preheader476, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph.i.i166.preheader
  %i.lx = getelementptr i8, ptr %i.la, i64 %i.em  ; 2 uses
  %i.ly = add nsw i64 %i.ls, %wide.trip.count.i.i150
  %i.lz = shl nsw i64 %i.ly, 2
  %i.ma = getelementptr i8, ptr %i.lk, i64 %i.lz
  %bound0355 = icmp ult ptr %i.la, %i.ma
  %bound1356 = icmp ult ptr %i.lt, %i.lx
  %found.conflict357 = and i1 %bound0355, %bound1356
  %12 = add nsw i64 %i.lo, %wide.trip.count.i.i150
  %13 = shl nsw i64 %12, 2
  %14 = getelementptr i8, ptr %i.lk, i64 %13
  %bound0358 = icmp ult ptr %i.la, %14
  %bound1359 = icmp ult ptr %i.lp, %i.lx
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %found.conflict357, %found.conflict360
  br i1 %conflict.rdx361, label %.lr.ph.i.i166.preheader476, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck354
  %broadcast.splatinsert364 = insertelement <4 x float> poison, float %i.lw, i64 0
  %broadcast.splat365 = shufflevector <4 x float> %broadcast.splatinsert364, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert366 = insertelement <4 x float> poison, float %i.lj, i64 0
  %broadcast.splat367 = shufflevector <4 x float> %broadcast.splatinsert366, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph362
  %index369 = phi i64 [ 0, %vector.ph362 ], [ %index.next376, %vector.body368 ] ; 4 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %index369 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %wide.load370 = load <4 x float>, ptr %i.mb, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %wide.load371 = load <4 x float>, ptr %i.mc, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %index369 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %wide.load372 = load <4 x float>, ptr %i.md, align 4, !tbaa !17, !alias.scope !116
  %wide.load373 = load <4 x float>, ptr %i.me, align 4, !tbaa !17, !alias.scope !116
  %i.mf = fsub <4 x float> %wide.load372, %wide.load370
  %i.mg = fsub <4 x float> %wide.load373, %wide.load371
  %i.mh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mf, <4 x float> %broadcast.splat365, <4 x float> %wide.load370)
  %i.mi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mg, <4 x float> %broadcast.splat365, <4 x float> %wide.load371)
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %index369 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 2 uses
  %wide.load374 = load <4 x float>, ptr %i.mj, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %wide.load375 = load <4 x float>, ptr %i.mk, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %i.ml = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat367, <4 x float> %i.mh, <4 x float> %wide.load374)
  %i.mm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat367, <4 x float> %i.mi, <4 x float> %wide.load375)
  store <4 x float> %i.ml, ptr %i.mj, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  store <4 x float> %i.mm, ptr %i.mk, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %index.next376 = add nuw i64 %index369, 8       ; 2 uses
  %i.mn = icmp eq i64 %index.next376, %n.vec363
  br i1 %i.mn, label %middle.block377, label %vector.body368, !llvm.loop !91

middle.block377:                                  ; preds = %vector.body368
  br i1 %cmp.n378, label %hex_blep.exit170, label %.lr.ph.i.i166.preheader476

.lr.ph.i.i166.preheader476:                       ; preds = %vector.memcheck354, %.lr.ph.i.i166.preheader, %middle.block377
  %indvars.iv.i.i167.ph = phi i64 [ 0, %vector.memcheck354 ], [ 0, %.lr.ph.i.i166.preheader ], [ %n.vec363, %middle.block377 ] ; 6 uses
  br i1 %lcmp.mod490.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader476
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i.i167.ph
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !17 ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i.i167.ph
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !17
  %i.ms = fsub float %i.mr, %i.mp
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.lw, float %i.mp)
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i.i167.ph ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !17
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.lj, float %i.mt, float %i.mv)
  store float %i.mw, ptr %i.mu, align 4, !tbaa !17
  %indvars.iv.next.i.i168.prol = or disjoint i64 %indvars.iv.i.i167.ph, 1
  br label %.lr.ph.i.i166.prol.loopexit

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader476
  %indvars.iv.i.i167.unr = phi i64 [ %indvars.iv.i.i167.ph, %.lr.ph.i.i166.preheader476 ], [ %indvars.iv.next.i.i168.prol, %.lr.ph.i.i166.prol ]
  %i.mx = icmp eq i64 %indvars.iv.i.i167.ph, %i.ep
  br i1 %i.mx, label %hex_blep.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %indvars.iv.i.i167 = phi i64 [ %indvars.iv.next.i.i168.1, %.lr.ph.i.i166 ], [ %indvars.iv.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ] ; 5 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i.i167
  %i.mz = load float, ptr %i.my, align 4, !tbaa !17 ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i.i167
  %i.nb = load float, ptr %i.na, align 4, !tbaa !17
  %i.nc = fsub float %i.nb, %i.mz
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.lw, float %i.mz)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i.i167 ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !17
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.lj, float %i.nd, float %i.nf)
  store float %i.ng, ptr %i.ne, align 4, !tbaa !17
  %indvars.iv.next.i.i168 = add nuw nsw i64 %indvars.iv.i.i167, 1 ; 3 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.next.i.i168
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !17 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.next.i.i168
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !17
  %i.nl = fsub float %i.nk, %i.ni
  %i.nm = tail call float @llvm.fmuladd.f32(float %i.nl, float %i.lw, float %i.ni)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i.i168 ; 2 uses
  %i.no = load float, ptr %i.nn, align 4, !tbaa !17
  %i.np = tail call float @llvm.fmuladd.f32(float %i.lj, float %i.nm, float %i.no)
  store float %i.np, ptr %i.nn, align 4, !tbaa !17
  %indvars.iv.next.i.i168.1 = add nuw nsw i64 %indvars.iv.i.i167, 2 ; 2 uses
  %exitcond.not.i.i169.1 = icmp eq i64 %indvars.iv.next.i.i168.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i169.1, label %hex_blep.exit170, label %.lr.ph.i.i166, !llvm.loop !92

hex_blep.exit170:                                 ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166, %middle.block377, %bb.w, %bb.v
  %i.nq = load float, ptr %i.dd, align 8, !tbaa !33 ; 2 uses
  %i.nr = fcmp une float %i.nq, %i.le
  br i1 %i.nr, label %bb.x, label %hex_blamp.exit178.backedge

bb.x:                                             ; preds = %hex_blep.exit170
  %i.ns = fmul float %i.h, %i.lc                  ; 2 uses
  %i.nt = fsub float %i.nq, %i.le
  %i.nu = fmul float %i.e, %i.nt                  ; 4 uses
  %i.nv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 4 uses
  %i.nw = fmul float %i.ns, %i.ej
  %i.nx = fptosi float %i.nw to i32
  %spec.select.i.i171 = tail call i32 @llvm.smin.i32(i32 %i.nx, i32 %i.ek) ; 3 uses
  %i.ny = mul i32 %spec.select.i.i171, %i.eh
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = getelementptr [4 x i8], ptr %i.nv, i64 %i.nz ; 5 uses
  %i.ob = add i32 %spec.select.i.i171, 1
  %i.oc = mul i32 %i.ob, %i.eh
  %i.od = sext i32 %i.oc to i64                   ; 2 uses
  %i.oe = getelementptr [4 x i8], ptr %i.nv, i64 %i.od ; 5 uses
  %i.of = sitofp i32 %spec.select.i.i171 to float
  %i.og = fneg float %i.of
  %i.oh = tail call float @llvm.fmuladd.f32(float %i.ns, float %i.ej, float %i.og) ; 4 uses
  br i1 %i.el, label %.lr.ph.i.i174.preheader, label %hex_blamp.exit178.backedge

.lr.ph.i.i174.preheader:                          ; preds = %bb.x
  br i1 %min.iters.check314, label %.lr.ph.i.i174.preheader475, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i.i174.preheader
  %i.oi = getelementptr i8, ptr %i.la, i64 %i.em  ; 2 uses
  %i.oj = add nsw i64 %i.od, %wide.trip.count.i.i150
  %i.ok = shl nsw i64 %i.oj, 2
  %i.ol = getelementptr i8, ptr %i.nv, i64 %i.ok
  %bound0316 = icmp ult ptr %i.la, %i.ol
  %bound1317 = icmp ult ptr %i.oe, %i.oi
  %found.conflict318 = and i1 %bound0316, %bound1317
  %15 = add nsw i64 %i.nz, %wide.trip.count.i.i150
  %16 = shl nsw i64 %15, 2
  %17 = getelementptr i8, ptr %i.nv, i64 %16
  %bound0319 = icmp ult ptr %i.la, %17
  %bound1320 = icmp ult ptr %i.oa, %i.oi
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %found.conflict318, %found.conflict321
  br i1 %conflict.rdx322, label %.lr.ph.i.i174.preheader475, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck315
  %broadcast.splatinsert325 = insertelement <4 x float> poison, float %i.oh, i64 0
  %broadcast.splat326 = shufflevector <4 x float> %broadcast.splatinsert325, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.nu, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph323
  %index330 = phi i64 [ 0, %vector.ph323 ], [ %index.next337, %vector.body329 ] ; 4 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index330 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %wide.load331 = load <4 x float>, ptr %i.om, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %wide.load332 = load <4 x float>, ptr %i.on, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %index330 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %wide.load333 = load <4 x float>, ptr %i.oo, align 4, !tbaa !17, !alias.scope !120
  %wide.load334 = load <4 x float>, ptr %i.op, align 4, !tbaa !17, !alias.scope !120
  %i.oq = fsub <4 x float> %wide.load333, %wide.load331
  %i.or = fsub <4 x float> %wide.load334, %wide.load332
  %i.os = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oq, <4 x float> %broadcast.splat326, <4 x float> %wide.load331)
  %i.ot = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.or, <4 x float> %broadcast.splat326, <4 x float> %wide.load332)
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %index330 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 2 uses
  %wide.load335 = load <4 x float>, ptr %i.ou, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %wide.load336 = load <4 x float>, ptr %i.ov, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %i.ow = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.os, <4 x float> %wide.load335)
  %i.ox = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.ot, <4 x float> %wide.load336)
  store <4 x float> %i.ow, ptr %i.ou, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  store <4 x float> %i.ox, ptr %i.ov, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %index.next337 = add nuw i64 %index330, 8       ; 2 uses
  %i.oy = icmp eq i64 %index.next337, %n.vec324
  br i1 %i.oy, label %middle.block338, label %vector.body329, !llvm.loop !97

middle.block338:                                  ; preds = %vector.body329
  br i1 %cmp.n339, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174.preheader475

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block338, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block338 ], [ %i.er, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.lc, %middle.block338 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.lc, %bb.x ], [ %i.lc, %hex_blep.exit170 ], [ %i.lc, %bb.u ], [ %i.lc, %.lr.ph.i.i174 ], [ %i.lc, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader475:                       ; preds = %vector.memcheck315, %.lr.ph.i.i174.preheader, %middle.block338
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec324, %middle.block338 ] ; 6 uses
  br i1 %lcmp.mod492.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader475
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.i.i175.ph
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !17 ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv.i.i175.ph
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !17
  %i.pd = fsub float %i.pc, %i.pa
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.pd, float %i.oh, float %i.pa)
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !17
  %i.ph = tail call float @llvm.fmuladd.f32(float %i.nu, float %i.pe, float %i.pg)
  store float %i.ph, ptr %i.pf, align 4, !tbaa !17
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader475
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader475 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.pi = icmp eq i64 %indvars.iv.i.i175.ph, %i.eq
  br i1 %i.pi, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.i.i175
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !17 ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv.i.i175
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !17
  %i.pn = fsub float %i.pm, %i.pk
  %i.po = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.oh, float %i.pk)
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.i.i175 ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !17
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.nu, float %i.po, float %i.pq)
  store float %i.pr, ptr %i.pp, align 4, !tbaa !17
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.next.i.i176
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !17 ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv.next.i.i176
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !17
  %i.pw = fsub float %i.pv, %i.pt
  %i.px = tail call float @llvm.fmuladd.f32(float %i.pw, float %i.oh, float %i.pt)
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.pz = load float, ptr %i.py, align 4, !tbaa !17
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.nu, float %i.px, float %i.pz)
  store float %i.qa, ptr %i.py, align 4, !tbaa !17
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fk, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dq, label %bb.y, label %bb.i, !llvm.loop !99

bb.y:                                             ; preds = %.loopexit
  %i.qb = load i32, ptr @hexblep, align 8, !tbaa !23 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.qb
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.qc = icmp sgt i32 %i.qb, 0
  br i1 %i.qc, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.qd = sub nsw i32 %1, %i.qb
  %i.qe = sext i32 %i.qd to i64
  %wide.trip.count = zext nneg i32 %i.qb to i64   ; 3 uses
  %invariant.gep275 = getelementptr [4 x i8], ptr %0, i64 %i.qe ; 2 uses
  %min.iters.check462 = icmp ult i32 %i.qb, 8
  br i1 %min.iters.check462, label %scalar.ph461.preheader, label %vector.ph463

vector.ph463:                                     ; preds = %.lr.ph198
  %n.vec464 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next471, %vector.body465 ] ; 3 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index466 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %wide.load467 = load <4 x float>, ptr %i.qf, align 16, !tbaa !17
  %wide.load468 = load <4 x float>, ptr %i.qg, align 16, !tbaa !17
  %i.qh = getelementptr [4 x i8], ptr %invariant.gep275, i64 %index466 ; 3 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 16     ; 2 uses
  %wide.load469 = load <4 x float>, ptr %i.qh, align 4, !tbaa !17
  %wide.load470 = load <4 x float>, ptr %i.qi, align 4, !tbaa !17
  %i.qj = fadd <4 x float> %wide.load467, %wide.load469
  %i.qk = fadd <4 x float> %wide.load468, %wide.load470
  store <4 x float> %i.qj, ptr %i.qh, align 4, !tbaa !17
  store <4 x float> %i.qk, ptr %i.qi, align 4, !tbaa !17
  %index.next471 = add nuw i64 %index466, 8       ; 2 uses
  %i.ql = icmp eq i64 %index.next471, %n.vec464
  br i1 %i.ql, label %middle.block472, label %vector.body465, !llvm.loop !100

middle.block472:                                  ; preds = %vector.body465
  %cmp.n473 = icmp eq i64 %n.vec464, %wide.trip.count
  br i1 %cmp.n473, label %._crit_edge199, label %scalar.ph461.preheader

scalar.ph461.preheader:                           ; preds = %.lr.ph198, %middle.block472
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec464, %middle.block472 ]
  br label %scalar.ph461

scalar.ph461:                                     ; preds = %scalar.ph461.preheader, %scalar.ph461
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph461 ], [ %indvars.iv211.ph, %scalar.ph461.preheader ] ; 3 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !17
  %gep276 = getelementptr [4 x i8], ptr %invariant.gep275, i64 %indvars.iv211 ; 2 uses
  %i.qo = load float, ptr %gep276, align 4, !tbaa !17
  %i.qp = fadd float %i.qn, %i.qo
  store float %i.qp, ptr %gep276, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph461, !llvm.loop !101

._crit_edge199:                                   ; preds = %scalar.ph461, %middle.block472, %.preheader179
  %i.qq = sext i32 %i.qb to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  %i.qr = zext nneg i32 %1 to i64
  %i.qs = shl nuw nsw i64 %i.qr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.a, i64 %i.qs, i1 false), !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink280 = phi i64 [ %i.cr, %._crit_edge202 ], [ %i.qq, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink280
  %i.qu = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.qt, i64 %i.qu, i1 false)
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
end_hunk_1
begin_hunk_2_@hexwave_init:bb.a
  %i.as = tail call double @cos(double noundef %i.af) #12
  %i.at = tail call double @cos(double noundef %i.ah) #12
  %i.au = tail call double @cos(double noundef %i.ad) #12
  %i.av = tail call double @cos(double noundef %i.af) #12
  %i.aw = tail call double @cos(double noundef %i.ah) #12
  %i.ax = tail call double @cos(double noundef %i.ad) #12
  %i.ay = tail call double @cos(double noundef %i.af) #12
  %i.az = tail call double @cos(double noundef %i.ah) #12
  %i.ba = tail call double @cos(double noundef %i.ad) #12
  %i.bb = tail call double @cos(double noundef %i.af) #12
  %i.bc = tail call double @cos(double noundef %i.ah) #12
  %i.bd = tail call double @cos(double noundef %i.ad) #12
  %i.be = tail call double @cos(double noundef %i.af) #12
  %i.bf = tail call double @cos(double noundef %i.ah) #12
  %i.bg = tail call double @cos(double noundef %i.ad) #12
  %i.bh = tail call double @cos(double noundef %i.af) #12
  %i.bi = tail call double @cos(double noundef %i.ah) #12
  %i.bj = tail call double @cos(double noundef %i.ad) #12
  %i.bk = tail call double @cos(double noundef %i.af) #12
  %i.bl = tail call double @cos(double noundef %i.ah) #12
  %i.bm = tail call double @cos(double noundef %i.ad) #12
  %i.bn = tail call double @cos(double noundef %i.af) #12
  %i.bo = tail call double @cos(double noundef %i.ah) #12
  %i.bp = tail call double @cos(double noundef %i.ad) #12
  %i.bq = tail call double @cos(double noundef %i.af) #12
  %i.br = tail call double @cos(double noundef %i.ah) #12
  %i.bs = tail call double @cos(double noundef %i.ad) #12
  %i.bt = tail call double @cos(double noundef %i.af) #12
  %i.bu = tail call double @cos(double noundef %i.ah) #12
  %i.bv = tail call double @cos(double noundef %i.ad) #12
  %i.bw = tail call double @cos(double noundef %i.af) #12
  %i.bx = tail call double @cos(double noundef %i.ah) #12
  %i.by = tail call double @cos(double noundef %i.ad) #12
  %i.bz = tail call double @cos(double noundef %i.af) #12
  %i.ca = tail call double @cos(double noundef %i.ah) #12
  %i.cb = tail call double @cos(double noundef %i.ad) #12
  %i.cc = tail call double @cos(double noundef %i.af) #12
  %i.cd = tail call double @cos(double noundef %i.ah) #12
  %i.ce = tail call double @cos(double noundef %i.ad) #12
  %i.cf = tail call double @cos(double noundef %i.af) #12
  %i.cg = tail call double @cos(double noundef %i.ah) #12
  %i.ch = tail call double @cos(double noundef %i.ad) #12
  %i.ci = tail call double @cos(double noundef %i.af) #12
  %i.cj = tail call double @cos(double noundef %i.ah) #12
  %i.ck = insertelement <16 x double> poison, double %i.ao, i64 0
  %i.cl = insertelement <16 x double> %i.ck, double %i.ar, i64 1
  %i.cm = insertelement <16 x double> %i.cl, double %i.au, i64 2
  %i.cn = insertelement <16 x double> %i.cm, double %i.ax, i64 3
  %i.co = insertelement <16 x double> %i.cn, double %i.ba, i64 4
  %i.cp = insertelement <16 x double> %i.co, double %i.bd, i64 5
  %i.cq = insertelement <16 x double> %i.cp, double %i.bg, i64 6
  %i.cr = insertelement <16 x double> %i.cq, double %i.bj, i64 7
  %i.cs = insertelement <16 x double> %i.cr, double %i.bm, i64 8
  %i.ct = insertelement <16 x double> %i.cs, double %i.bp, i64 9
  %i.cu = insertelement <16 x double> %i.ct, double %i.bs, i64 10
  %i.cv = insertelement <16 x double> %i.cu, double %i.bv, i64 11
  %i.cw = insertelement <16 x double> %i.cv, double %i.by, i64 12
  %i.cx = insertelement <16 x double> %i.cw, double %i.cb, i64 13
  %i.cy = insertelement <16 x double> %i.cx, double %i.ce, i64 14
  %i.cz = insertelement <16 x double> %i.cy, double %i.ch, i64 15
  %i.da = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.cz, <16 x double> splat (double -4.873960e-01), <16 x double> splat (double 3.557680e-01))
  %i.db = insertelement <16 x double> poison, double %i.ap, i64 0
  %i.dc = insertelement <16 x double> %i.db, double %i.as, i64 1
  %i.dd = insertelement <16 x double> %i.dc, double %i.av, i64 2
  %i.de = insertelement <16 x double> %i.dd, double %i.ay, i64 3
  %i.df = insertelement <16 x double> %i.de, double %i.bb, i64 4
  %i.dg = insertelement <16 x double> %i.df, double %i.be, i64 5
  %i.dh = insertelement <16 x double> %i.dg, double %i.bh, i64 6
  %i.di = insertelement <16 x double> %i.dh, double %i.bk, i64 7
  %i.dj = insertelement <16 x double> %i.di, double %i.bn, i64 8
  %i.dk = insertelement <16 x double> %i.dj, double %i.bq, i64 9
  %i.dl = insertelement <16 x double> %i.dk, double %i.bt, i64 10
  %i.dm = insertelement <16 x double> %i.dl, double %i.bw, i64 11
  %i.dn = insertelement <16 x double> %i.dm, double %i.bz, i64 12
  %i.do = insertelement <16 x double> %i.dn, double %i.cc, i64 13
  %i.dp = insertelement <16 x double> %i.do, double %i.cf, i64 14
  %i.dq = insertelement <16 x double> %i.dp, double %i.ci, i64 15
  %i.dr = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.dq, <16 x double> splat (double 1.442320e-01), <16 x double> %i.da)
  %i.ds = insertelement <16 x double> poison, double %i.aq, i64 0
  %i.dt = insertelement <16 x double> %i.ds, double %i.at, i64 1
  %i.du = insertelement <16 x double> %i.dt, double %i.aw, i64 2
  %i.dv = insertelement <16 x double> %i.du, double %i.az, i64 3
  %i.dw = insertelement <16 x double> %i.dv, double %i.bc, i64 4
  %i.dx = insertelement <16 x double> %i.dw, double %i.bf, i64 5
  %i.dy = insertelement <16 x double> %i.dx, double %i.bi, i64 6
  %i.dz = insertelement <16 x double> %i.dy, double %i.bl, i64 7
  %i.ea = insertelement <16 x double> %i.dz, double %i.bo, i64 8
  %i.eb = insertelement <16 x double> %i.ea, double %i.br, i64 9
  %i.ec = insertelement <16 x double> %i.eb, double %i.bu, i64 10
  %i.ed = insertelement <16 x double> %i.ec, double %i.bx, i64 11
  %i.ee = insertelement <16 x double> %i.ed, double %i.ca, i64 12
  %i.ef = insertelement <16 x double> %i.ee, double %i.cd, i64 13
  %i.eg = insertelement <16 x double> %i.ef, double %i.cg, i64 14
  %i.eh = insertelement <16 x double> %i.eg, double %i.cj, i64 15
  %i.ei = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.eh, <16 x double> splat (double -1.260400e-02), <16 x double> %i.dr)
  %i.ej = fptrunc <16 x double> %i.ei to <16 x float>
  %i.ek = fpext <16 x float> %i.ej to <16 x double>
  %i.el = fmul <16 x double> %i.ek, splat (double 6.250000e-02) ; 16 uses
  %i.em = extractelement <16 x double> %i.el, i64 0
  %i.en = fadd double %.0122148, %i.em            ; 2 uses
  %i.eo = fmul double %i.en, 6.250000e-02
  %i.ep = fadd double %.0120149, %i.eo
  %i.eq = extractelement <16 x double> %i.el, i64 1
  %i.er = fadd double %i.en, %i.eq                ; 2 uses
  %i.es = fmul double %i.er, 6.250000e-02
  %i.et = fadd double %i.ep, %i.es
  %i.eu = extractelement <16 x double> %i.el, i64 2
  %i.ev = fadd double %i.er, %i.eu                ; 2 uses
  %i.ew = fmul double %i.ev, 6.250000e-02
  %i.ex = fadd double %i.et, %i.ew
  %i.ey = extractelement <16 x double> %i.el, i64 3
  %i.ez = fadd double %i.ev, %i.ey                ; 2 uses
  %i.fa = fmul double %i.ez, 6.250000e-02
  %i.fb = fadd double %i.ex, %i.fa
  %i.fc = extractelement <16 x double> %i.el, i64 4
  %i.fd = fadd double %i.ez, %i.fc                ; 2 uses
  %i.fe = fmul double %i.fd, 6.250000e-02
  %i.ff = fadd double %i.fb, %i.fe
  %i.fg = extractelement <16 x double> %i.el, i64 5
  %i.fh = fadd double %i.fd, %i.fg                ; 2 uses
  %i.fi = fmul double %i.fh, 6.250000e-02
  %i.fj = fadd double %i.ff, %i.fi
  %i.fk = extractelement <16 x double> %i.el, i64 6
  %i.fl = fadd double %i.fh, %i.fk                ; 2 uses
  %i.fm = fmul double %i.fl, 6.250000e-02
  %i.fn = fadd double %i.fj, %i.fm
  %i.fo = extractelement <16 x double> %i.el, i64 7
  %i.fp = fadd double %i.fl, %i.fo                ; 2 uses
  %i.fq = fmul double %i.fp, 6.250000e-02
  %i.fr = fadd double %i.fn, %i.fq
  %i.fs = extractelement <16 x double> %i.el, i64 8
  %i.ft = fadd double %i.fp, %i.fs                ; 2 uses
  %i.fu = fmul double %i.ft, 6.250000e-02
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = extractelement <16 x double> %i.el, i64 9
  %i.fx = fadd double %i.ft, %i.fw                ; 2 uses
  %i.fy = fmul double %i.fx, 6.250000e-02
  %i.fz = fadd double %i.fv, %i.fy
  %i.ga = extractelement <16 x double> %i.el, i64 10
  %i.gb = fadd double %i.fx, %i.ga                ; 2 uses
  %i.gc = fmul double %i.gb, 6.250000e-02
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = extractelement <16 x double> %i.el, i64 11
  %i.gf = fadd double %i.gb, %i.ge                ; 2 uses
  %i.gg = fmul double %i.gf, 6.250000e-02
  %i.gh = fadd double %i.gd, %i.gg
  %i.gi = extractelement <16 x double> %i.el, i64 12
  %i.gj = fadd double %i.gf, %i.gi                ; 2 uses
  %i.gk = fmul double %i.gj, 6.250000e-02
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = extractelement <16 x double> %i.el, i64 13
  %i.gn = fadd double %i.gj, %i.gm                ; 2 uses
  %i.go = fmul double %i.gn, 6.250000e-02
  %i.gp = fadd double %i.gl, %i.go
  %i.gq = extractelement <16 x double> %i.el, i64 14
  %i.gr = fadd double %i.gn, %i.gq                ; 2 uses
  %i.gs = fmul double %i.gr, 6.250000e-02
  %i.gt = fadd double %i.gp, %i.gs
  %i.gu = extractelement <16 x double> %i.el, i64 15
  %i.gv = fadd double %i.gr, %i.gu                ; 2 uses
  %i.gw = fmul double %i.gv, 6.250000e-02
  %i.gx = fadd double %i.gt, %i.gw
  br label %.split.us

.lr.ph:                                           ; preds = %.split.us
  %i.gy = zext nneg i32 %i.e to i64               ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gy ; 6 uses
  %i.ha = sitofp i32 %i.a to float                ; 4 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.gy ; 6 uses
  %smax175 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.hc = or disjoint i32 %smax175, 1
  %wide.trip.count176 = zext nneg i32 %i.hc to i64 ; 2 uses
  %min.iters.check = icmp slt i32 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 4 uses
  %i.hd = zext nneg i32 %smax to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv172.ph ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !17
  %i.hg = load float, ptr %i.gz, align 4, !tbaa !17
  %i.hh = fdiv float 1.000000e+00, %i.hg
  %i.hi = fmul float %i.hf, %i.hh
  store float %i.hi, ptr %i.he, align 4, !tbaa !17
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv172.ph ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !17
  %i.hl = load float, ptr %i.hb, align 4, !tbaa !17
  %i.hm = fdiv float %i.ha, %i.hl
  %i.hn = fmul float %i.hk, %i.hm
  store float %i.hn, ptr %i.hj, align 4, !tbaa !17
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1
  %i.ho = icmp eq i64 %indvars.iv172.ph, %i.hd
  br i1 %i.ho, label %.preheader140, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hp = zext nneg i32 %smax to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = or disjoint i64 %i.hq, 4                ; 2 uses
  %i.hs = getelementptr i8, ptr %i.t, i64 %i.hr   ; 3 uses
  %i.ht = getelementptr i8, ptr %i.s, i64 %i.hr   ; 3 uses
  %bound0 = icmp ult ptr %i.t, %i.ht
  %bound1 = icmp ult ptr %i.s, %i.hs
  %found.conflict = and i1 %bound0, %bound1
  %3 = shl nuw nsw i64 %i.gy, 2
  %4 = or disjoint i64 %3, 4                      ; 2 uses
  %5 = getelementptr i8, ptr %i.t, i64 %4         ; 2 uses
  %bound0229 = icmp ult ptr %i.t, %5
  %bound1230 = icmp ult ptr %i.gz, %i.hs
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx = or i1 %found.conflict, %found.conflict231
  %6 = getelementptr i8, ptr %i.s, i64 %4         ; 2 uses
  %bound0232 = icmp ult ptr %i.t, %6
  %bound1233 = icmp ult ptr %i.hb, %i.hs
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx, %found.conflict234
  %bound0236 = icmp ult ptr %i.s, %5
  %bound1237 = icmp ult ptr %i.gz, %i.ht
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %i.s, %6
  %bound1241 = icmp ult ptr %i.hb, %i.ht
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  br i1 %conflict.rdx243, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count176, 2147483640 ; 2 uses
  %i.hu = load float, ptr %i.gz, align 4, !tbaa !17, !alias.scope !144
  %i.hv = fdiv float 1.000000e+00, %i.hu
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hw = load float, ptr %i.hb, align 4, !tbaa !17, !alias.scope !145
  %i.hx = fdiv float %i.ha, %i.hw
  %broadcast.splatinsert247 = insertelement <4 x float> poison, float %i.hx, i64 0
  %broadcast.splat248 = shufflevector <4 x float> %broadcast.splatinsert247, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.hy, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %wide.load244 = load <4 x float>, ptr %i.hz, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %i.ia = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ib = fmul <4 x float> %wide.load244, %broadcast.splat
  store <4 x float> %i.ia, ptr %i.hy, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  store <4 x float> %i.ib, ptr %i.hz, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %wide.load245 = load <4 x float>, ptr %i.ic, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %wide.load246 = load <4 x float>, ptr %i.id, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %i.ie = fmul <4 x float> %wide.load245, %broadcast.splat248
  %i.if = fmul <4 x float> %wide.load246, %broadcast.splat248
  store <4 x float> %i.ie, ptr %i.ic, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  store <4 x float> %i.if, ptr %i.id, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %scalar.ph.preheader, label %vector.body, !llvm.loop !128

.preheader142.split:                              ; preds = %.preheader142, %.preheader142.split
  %.0145 = phi i32 [ %i.ix, %.preheader142.split ], [ 0, %.preheader142 ]
  %.1121144 = phi double [ %i.iw, %.preheader142.split ], [ %.0120149, %.preheader142 ]
  %.1123143 = phi double [ %i.iu, %.preheader142.split ], [ %.0122148, %.preheader142 ]
  %i.ih = tail call double @sin(double noundef %i.an) #12
  %i.ii = fptrunc double %i.ih to float
  %i.ij = fdiv float %i.ii, %i.am
  %i.ik = tail call double @cos(double noundef %i.ad) #12
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ik, double -4.873960e-01, double 3.557680e-01)
  %i.im = tail call double @cos(double noundef %i.af) #12
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double 1.442320e-01, double %i.il)
  %i.io = tail call double @cos(double noundef %i.ah) #12
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double -1.260400e-02, double %i.in)
  %i.iq = fptrunc double %i.ip to float
  %i.ir = fmul float %i.ij, %i.iq
  %i.is = fpext float %i.ir to double
  %i.it = fmul double %i.is, 6.250000e-02
  %i.iu = fadd double %.1123143, %i.it            ; 3 uses
  %i.iv = fmul double %i.iu, 6.250000e-02
  %i.iw = fadd double %.1121144, %i.iv            ; 2 uses
  %i.ix = add nuw nsw i32 %.0145, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ix, 16
  br i1 %exitcond.not, label %.split.us, label %.preheader142.split, !llvm.loop !129

.split.us:                                        ; preds = %.preheader142.split, %.preheader142.split.us.preheader
  %.us-phi = phi double [ %i.gv, %.preheader142.split.us.preheader ], [ %i.iu, %.preheader142.split ] ; 2 uses
  %.us-phi146 = phi double [ %i.gx, %.preheader142.split.us.preheader ], [ %i.iw, %.preheader142.split ] ; 2 uses
  %i.iy = fptrunc double %.us-phi to float
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store float %i.iy, ptr %i.iz, align 4, !tbaa !17
  %i.ja = fptrunc double %.us-phi146 to float
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.ja, ptr %i.jb, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond171.not, label %.lr.ph, label %.preheader142, !llvm.loop !130

.preheader140:                                    ; preds = %scalar.ph.preheader, %scalar.ph, %bb.d
  %.not132155 = icmp sgt i32 %1, -1
  %i.jc = icmp sgt i32 %spec.store.select135, 0
  %or.cond = and i1 %.not132155, %i.jc
  br i1 %or.cond, label %.preheader139.preheader, label %.preheader138

.preheader139.preheader:                          ; preds = %.preheader140
  %i.jd = zext nneg i32 %1 to i64                 ; 3 uses
  %i.je = zext nneg i32 %spec.store.select135 to i64 ; 8 uses
  %wide.trip.count186 = zext i32 %i.c to i64      ; 3 uses
  %i.jf = add nuw nsw i64 %i.je, %wide.trip.count186
  %i.jg = shl nuw nsw i64 %i.jf, 2
  %i.jh = add nsw i64 %i.jg, -4                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.jh ; 2 uses
  %scevgep272 = getelementptr i8, ptr %i.t, i64 %i.jh ; 2 uses
  %i.ji = mul nuw nsw i64 %i.je, %wide.trip.count186
  %i.jj = shl i64 %i.ji, 2                        ; 2 uses
  %scevgep273 = getelementptr i8, ptr %.0124, i64 %i.jj ; 3 uses
  %scevgep274 = getelementptr i8, ptr %.0125, i64 %i.jj ; 3 uses
  %min.iters.check276 = icmp ugt i32 %spec.store.select135, 15
  %ident.check.not = icmp eq i32 %1, 1
  %or.cond340 = and i1 %min.iters.check276, %ident.check.not
  %bound0278 = icmp ult ptr %.0125, %scevgep273
  %bound1279 = icmp ult ptr %.0124, %scevgep274
  %found.conflict280 = and i1 %bound0278, %bound1279
  %bound0281 = icmp ult ptr %.0125, %scevgep272
  %bound1282 = icmp ult ptr %i.t, %scevgep274
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %found.conflict280, %found.conflict283
  %bound0285 = icmp ult ptr %.0125, %scevgep
  %bound1286 = icmp ult ptr %i.s, %scevgep274
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx284, %found.conflict287
  %bound0289 = icmp ult ptr %.0124, %scevgep272
  %bound1290 = icmp ult ptr %i.t, %scevgep273
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx288, %found.conflict291
  %bound0293 = icmp ult ptr %.0124, %scevgep
  %bound1294 = icmp ult ptr %i.s, %scevgep273
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %n.vec298 = and i64 %i.je, 2147483640           ; 9 uses
  %i.jk = icmp eq i64 %n.vec298, 8
  %i.jl = icmp eq i64 %n.vec298, 16
  %i.jm = icmp eq i64 %n.vec298, 24
  %i.jn = icmp eq i64 %n.vec298, 32
  %i.jo = icmp eq i64 %n.vec298, 40
  %i.jp = icmp eq i64 %n.vec298, 48
  %i.jq = icmp eq i64 %n.vec298, 56
  %cmp.n307 = icmp eq i64 %n.vec298, %i.je
  %xtraiter342 = and i64 %i.je, 1
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  %i.jr = add nsw i64 %i.je, -1
  br label %.preheader139

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph ], [ %indvars.iv.next173.prol, %scalar.ph.preheader ] ; 4 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv172 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !17
  %i.ju = load float, ptr %i.gz, align 4, !tbaa !17
  %i.jv = fdiv float 1.000000e+00, %i.ju
  %i.jw = fmul float %i.jt, %i.jv
  store float %i.jw, ptr %i.js, align 4, !tbaa !17
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv172 ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !17
  %i.jz = load float, ptr %i.hb, align 4, !tbaa !17
  %i.ka = fdiv float %i.ha, %i.jz
  %i.kb = fmul float %i.jy, %i.ka
  store float %i.kb, ptr %i.jx, align 4, !tbaa !17
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next173 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !17
  %i.ke = load float, ptr %i.gz, align 4, !tbaa !17
  %i.kf = fdiv float 1.000000e+00, %i.ke
  %i.kg = fmul float %i.kd, %i.kf
  store float %i.kg, ptr %i.kc, align 4, !tbaa !17
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next173 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !17
  %i.kj = load float, ptr %i.hb, align 4, !tbaa !17
  %i.kk = fdiv float %i.ha, %i.kj
  %i.kl = fmul float %i.ki, %i.kk
  store float %i.kl, ptr %i.kh, align 4, !tbaa !17
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %exitcond177.not.1 = icmp eq i64 %indvars.iv.next173.1, %wide.trip.count176
  br i1 %exitcond177.not.1, label %.preheader140, label %scalar.ph, !llvm.loop !131

.preheader139:                                    ; preds = %.preheader139.preheader, %._crit_edge
  %indvars.iv183 = phi i64 [ 0, %.preheader139.preheader ], [ %indvars.iv.next184, %._crit_edge ] ; 14 uses
  %i.km = mul nuw nsw i64 %indvars.iv183, %i.je   ; 12 uses
  %or.cond340.not = xor i1 %or.cond340, true
  %brmerge = select i1 %or.cond340.not, i1 true, i1 %conflict.rdx296
  br i1 %brmerge, label %scalar.ph275.preheader, label %vector.body299

vector.body299:                                   ; preds = %.preheader139
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv183 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load301 = load <4 x float>, ptr %i.kn, align 4, !tbaa !17, !alias.scope !150
  %wide.load302 = load <4 x float>, ptr %i.ko, align 4, !tbaa !17, !alias.scope !150
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.km ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store <4 x float> %wide.load301, ptr %i.kp, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load302, ptr %i.kq, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv183 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load303 = load <4 x float>, ptr %i.kr, align 4, !tbaa !17, !alias.scope !153
  %wide.load304 = load <4 x float>, ptr %i.ks, align 4, !tbaa !17, !alias.scope !153
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.km ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x float> %wide.load303, ptr %i.kt, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304, ptr %i.ku, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jk, label %middle.block306, label %vector.body299.1

vector.body299.1:                                 ; preds = %vector.body299
  %i.kv = add nuw nsw i64 %indvars.iv183, 8       ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kv ; 2 uses
end_hunk_2
