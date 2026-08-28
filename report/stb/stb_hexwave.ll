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
  store i32 %1, ptr %i.a, align 4, !tbaa !8
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
  store i32 %1, ptr %i.a, align 4, !tbaa !8
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !16
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
  %i.a = load i32, ptr @hexblep, align 8, !tbaa !20 ; 5 uses
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
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.r = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.r   ; 2 uses
  %i.s = add nsw i64 %i.l, %wide.trip.count
  %i.t = shl nsw i64 %i.s, 2
  %scevgep27 = getelementptr i8, ptr %3, i64 %i.t
  %i.u = add nsw i64 %i.h, %wide.trip.count
  %i.v = shl nsw i64 %i.u, 2
  %scevgep28 = getelementptr i8, ptr %3, i64 %i.v
  %bound0 = icmp ult ptr %0, %scevgep27
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound029 = icmp ult ptr %0, %scevgep28
  %bound130 = icmp ult ptr %i.i, %scevgep
  %found.conflict31 = and i1 %bound029, %bound130
  %conflict.rdx = or i1 %found.conflict, %found.conflict31
  br i1 %conflict.rdx, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert32 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat33 = shufflevector <4 x float> %broadcast.splatinsert32, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x float>, ptr %i.w, align 4, !tbaa !18, !alias.scope !25 ; 2 uses
  %wide.load34 = load <4 x float>, ptr %i.x, align 4, !tbaa !18, !alias.scope !25 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load35 = load <4 x float>, ptr %i.y, align 4, !tbaa !18, !alias.scope !28
  %wide.load36 = load <4 x float>, ptr %i.z, align 4, !tbaa !18, !alias.scope !28
  %i.aa = fsub <4 x float> %wide.load35, %wide.load
  %i.ab = fsub <4 x float> %wide.load36, %wide.load34
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %broadcast.splat, <4 x float> %wide.load34)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load37 = load <4 x float>, ptr %i.ae, align 4, !tbaa !18, !alias.scope !30, !noalias !32
  %wide.load38 = load <4 x float>, ptr %i.af, align 4, !tbaa !18, !alias.scope !30, !noalias !32
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat33, <4 x float> %i.ac, <4 x float> %wide.load37)
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat33, <4 x float> %i.ad, <4 x float> %wide.load38)
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !18, !alias.scope !30, !noalias !32
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !18, !alias.scope !30, !noalias !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader39
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.ph
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !18 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.am = load float, ptr %i.al, align 4, !tbaa !18
  %i.an = fsub float %i.am, %i.ak
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.p, float %i.ak)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !18
  %i.ar = tail call float @llvm.fmuladd.f32(float %2, float %i.ao, float %i.aq)
  store float %i.ar, ptr %i.ap, align 4, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader39
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader39 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.as = add nsw i64 %wide.trip.count, -1
  %i.at = icmp eq i64 %indvars.iv.ph, %i.as
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.av = load float, ptr %i.au, align 4, !tbaa !18 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !18
  %i.ay = fsub float %i.ax, %i.av
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.p, float %i.av)
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !18
  %i.bc = tail call float @llvm.fmuladd.f32(float %2, float %i.az, float %i.bb)
  store float %i.bc, ptr %i.ba, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.be = load float, ptr %i.bd, align 4, !tbaa !18 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !18
  %i.bh = fsub float %i.bg, %i.be
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.p, float %i.be)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !18
  %i.bl = tail call float @llvm.fmuladd.f32(float %2, float %i.bi, float %i.bk)
  store float %i.bl, ptr %i.bj, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !37

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
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !38 ; 4 uses
  %i.b = load i32, ptr @hexblep, align 8, !tbaa !20 ; 5 uses
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
  %scevgep = getelementptr i8, ptr %0, i64 %i.s   ; 2 uses
  %i.t = add nsw i64 %i.m, %wide.trip.count.i
  %i.u = shl nsw i64 %i.t, 2
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.u
  %i.v = add nsw i64 %i.i, %wide.trip.count.i
  %i.w = shl nsw i64 %i.v, 2
  %scevgep4 = getelementptr i8, ptr %i.a, i64 %i.w
  %bound0 = icmp ult ptr %0, %scevgep3
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound05 = icmp ult ptr %0, %scevgep4
  %bound16 = icmp ult ptr %i.j, %scevgep
  %found.conflict7 = and i1 %bound05, %bound16
  %conflict.rdx = or i1 %found.conflict, %found.conflict7
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x float>, ptr %i.x, align 4, !tbaa !18, !alias.scope !39 ; 2 uses
  %wide.load10 = load <4 x float>, ptr %i.y, align 4, !tbaa !18, !alias.scope !39 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load11 = load <4 x float>, ptr %i.z, align 4, !tbaa !18, !alias.scope !42
  %wide.load12 = load <4 x float>, ptr %i.aa, align 4, !tbaa !18, !alias.scope !42
  %i.ab = fsub <4 x float> %wide.load11, %wide.load
  %i.ac = fsub <4 x float> %wide.load12, %wide.load10
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %broadcast.splat, <4 x float> %wide.load10)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.af, align 4, !tbaa !18, !alias.scope !44, !noalias !46
  %wide.load14 = load <4 x float>, ptr %i.ag, align 4, !tbaa !18, !alias.scope !44, !noalias !46
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.ad, <4 x float> %wide.load13)
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.ae, <4 x float> %wide.load14)
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !18, !alias.scope !44, !noalias !46
  store <4 x float> %i.ai, ptr %i.ag, align 4, !tbaa !18, !alias.scope !44, !noalias !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !47

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
  %i.al = load float, ptr %i.ak, align 4, !tbaa !18 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.ph
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = fsub float %i.an, %i.al
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.q, float %i.al)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.ph ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18
  %i.as = tail call float @llvm.fmuladd.f32(float %2, float %i.ap, float %i.ar)
  store float %i.as, ptr %i.aq, align 4, !tbaa !18
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !18 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !18
  %i.az = fsub float %i.ay, %i.aw
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.q, float %i.aw)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = tail call float @llvm.fmuladd.f32(float %2, float %i.ba, float %i.bc)
  store float %i.bd, ptr %i.bb, align 4, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !18
  %i.bi = fsub float %i.bh, %i.bf
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.q, float %i.bf)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !18
  %i.bm = tail call float @llvm.fmuladd.f32(float %2, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bk, align 4, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %hex_add_oversampled_bleplike.exit, label %.lr.ph.i, !llvm.loop !48

hex_add_oversampled_bleplike.exit:                ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hex_blamp(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !49 ; 4 uses
  %i.b = load i32, ptr @hexblep, align 8, !tbaa !20 ; 5 uses
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
  %scevgep = getelementptr i8, ptr %0, i64 %i.s   ; 2 uses
  %i.t = add nsw i64 %i.m, %wide.trip.count.i
  %i.u = shl nsw i64 %i.t, 2
  %scevgep3 = getelementptr i8, ptr %i.a, i64 %i.u
  %i.v = add nsw i64 %i.i, %wide.trip.count.i
  %i.w = shl nsw i64 %i.v, 2
  %scevgep4 = getelementptr i8, ptr %i.a, i64 %i.w
  %bound0 = icmp ult ptr %0, %scevgep3
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound05 = icmp ult ptr %0, %scevgep4
  %bound16 = icmp ult ptr %i.j, %scevgep
  %found.conflict7 = and i1 %bound05, %bound16
  %conflict.rdx = or i1 %found.conflict, %found.conflict7
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x float>, ptr %i.x, align 4, !tbaa !18, !alias.scope !50 ; 2 uses
  %wide.load10 = load <4 x float>, ptr %i.y, align 4, !tbaa !18, !alias.scope !50 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load11 = load <4 x float>, ptr %i.z, align 4, !tbaa !18, !alias.scope !53
  %wide.load12 = load <4 x float>, ptr %i.aa, align 4, !tbaa !18, !alias.scope !53
  %i.ab = fsub <4 x float> %wide.load11, %wide.load
  %i.ac = fsub <4 x float> %wide.load12, %wide.load10
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %broadcast.splat, <4 x float> %wide.load10)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %wide.load13 = load <4 x float>, ptr %i.af, align 4, !tbaa !18, !alias.scope !55, !noalias !57
  %wide.load14 = load <4 x float>, ptr %i.ag, align 4, !tbaa !18, !alias.scope !55, !noalias !57
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.ad, <4 x float> %wide.load13)
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.ae, <4 x float> %wide.load14)
  store <4 x float> %i.ah, ptr %i.af, align 4, !tbaa !18, !alias.scope !55, !noalias !57
  store <4 x float> %i.ai, ptr %i.ag, align 4, !tbaa !18, !alias.scope !55, !noalias !57
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
  %i.al = load float, ptr %i.ak, align 4, !tbaa !18 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.ph
  %i.an = load float, ptr %i.am, align 4, !tbaa !18
  %i.ao = fsub float %i.an, %i.al
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.q, float %i.al)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.ph ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18
  %i.as = tail call float @llvm.fmuladd.f32(float %2, float %i.ap, float %i.ar)
  store float %i.as, ptr %i.aq, align 4, !tbaa !18
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !18 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !18
  %i.az = fsub float %i.ay, %i.aw
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.q, float %i.aw)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = tail call float @llvm.fmuladd.f32(float %2, float %i.ba, float %i.bc)
  store float %i.bd, ptr %i.bb, align 4, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !18
  %i.bi = fsub float %i.bh, %i.bf
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.q, float %i.bf)
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !18
  %i.bm = tail call float @llvm.fmuladd.f32(float %2, float %i.bj, float %i.bl)
  store float %i.bm, ptr %i.bk, align 4, !tbaa !18
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
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !60
  %i.e = fmul float %i.d, 5.000000e-01            ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store float %i.e, ptr %i.f, align 4, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !64 ; 2 uses
  %i.j = fsub float 1.000000e+00, %i.i
  %i.k = fmul float %i.e, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %i.i, float 5.000000e-01, float %i.k) ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store float %i.l, ptr %i.m, align 4, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store float 5.000000e-01, ptr %i.o, align 4, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !65 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.q, ptr %i.r, align 4, !tbaa !63
  %i.s = load i32, ptr %i.b, align 4, !tbaa !66
  %.not = icmp eq i32 %i.s, 0
  %i.t = getelementptr i8, ptr %0, i64 48
  store float 5.000000e-01, ptr %i.t, align 4, !tbaa !61
  %i.u = getelementptr i8, ptr %0, i64 88
  br i1 %.not, label %.preheader82.preheader, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %bb.a
  %i.v = fneg float %i.q                          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.v, ptr %i.w, align 4, !tbaa !63
  %i.x = fsub float 1.000000e+00, %i.l            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.x, ptr %i.y, align 4, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float -1.000000e+00, ptr %i.z, align 4, !tbaa !63
  %i.aa = fsub float 1.000000e+00, %i.e           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.aa, ptr %i.ab, align 4, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float -0.000000e+00, ptr %i.ac, align 4, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !61
  br label %.loopexit83

.preheader82.preheader:                           ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %0, i64 52
  store float -0.000000e+00, ptr %i.ae, align 4, !tbaa !63
  %i.af = getelementptr i8, ptr %0, i64 60
  %i.ag = fadd float %i.e, 5.000000e-01           ; 2 uses
  store float %i.ag, ptr %i.af, align 4, !tbaa !61
  %i.ah = getelementptr i8, ptr %0, i64 64
  store float -0.000000e+00, ptr %i.ah, align 4, !tbaa !63
  %i.ai = getelementptr i8, ptr %0, i64 72
  %i.aj = fadd float %i.l, 5.000000e-01           ; 2 uses
  store float %i.aj, ptr %i.ai, align 4, !tbaa !61
  %i.ak = getelementptr i8, ptr %0, i64 76
  store float -1.000000e+00, ptr %i.ak, align 4, !tbaa !63
  %i.al = getelementptr i8, ptr %0, i64 84
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !61
  %i.am = fneg float %i.q
  br label %.loopexit83

.loopexit83:                                      ; preds = %.preheader84.preheader, %.preheader82.preheader
  %.sink = phi float [ -0.000000e+00, %.preheader84.preheader ], [ %i.am, %.preheader82.preheader ] ; 2 uses
  %i.an = phi float [ -0.000000e+00, %.preheader84.preheader ], [ -1.000000e+00, %.preheader82.preheader ]
  %i.ao = phi float [ -1.000000e+00, %.preheader84.preheader ], [ -0.000000e+00, %.preheader82.preheader ]
  %i.ap = phi float [ %i.v, %.preheader84.preheader ], [ -0.000000e+00, %.preheader82.preheader ] ; 2 uses
  %i.aq = phi float [ %i.aa, %.preheader84.preheader ], [ %i.aj, %.preheader82.preheader ] ; 3 uses
  %i.ar = phi float [ %i.x, %.preheader84.preheader ], [ %i.ag, %.preheader82.preheader ] ; 3 uses
  store float %.sink, ptr %i.u, align 4, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.as, align 4, !tbaa !18
  %i.at = fcmp ugt float %i.e, %i.a
  br i1 %i.at, label %.loopexit83._crit_edge, label %bb.b

bb.b:                                             ; preds = %.loopexit83
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !61
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
  store float %i.au, ptr %i.m, align 4, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge108, %bb.c
  %.pre-phi110 = phi float [ %.pre109, %._crit_edge108 ], [ %.pre-phi, %bb.c ]
  %i.aw = phi float [ %i.l, %._crit_edge108 ], [ %i.au, %bb.c ] ; 4 uses
  %i.ax = fcmp ult float %.pre-phi110, 5.000000e-01
  br i1 %i.ax, label %._crit_edge107, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float %i.aw, ptr %i.o, align 4, !tbaa !61
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.d, %bb.e
  %i.ay = phi float [ %i.aw, %bb.e ], [ 5.000000e-01, %bb.d ] ; 5 uses
  %i.az = fadd float %i.a, %i.ay
  %i.ba = fcmp ult float %i.az, 5.000000e-01
  br i1 %i.ba, label %._crit_edge106, label %bb.f

bb.f:                                             ; preds = %._crit_edge107
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ay, ptr %i.bb, align 4, !tbaa !61
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge107, %bb.f
  %i.bc = phi float [ %i.ay, %bb.f ], [ 5.000000e-01, %._crit_edge107 ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.be = fadd float %i.a, %i.bc                  ; 2 uses
  %i.bf = fcmp ugt float %i.ar, %i.be
  br i1 %i.bf, label %._crit_edge105, label %bb.g

._crit_edge105:                                   ; preds = %._crit_edge106
  %.pre111 = fadd float %i.a, %i.ar
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge106
  store float %i.bc, ptr %i.bd, align 4, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge105, %bb.g
  %.pre-phi112 = phi float [ %.pre111, %._crit_edge105 ], [ %i.be, %bb.g ] ; 2 uses
  %i.bg = phi float [ %i.ar, %._crit_edge105 ], [ %i.bc, %bb.g ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bi = fcmp ugt float %i.aq, %.pre-phi112
  br i1 %i.bi, label %._crit_edge104, label %bb.i

._crit_edge104:                                   ; preds = %bb.h
  %.pre113 = fadd float %i.a, %i.aq
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.bg, ptr %i.bh, align 4, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge104, %bb.i
  %.pre-phi114 = phi float [ %.pre113, %._crit_edge104 ], [ %.pre-phi112, %bb.i ]
  %i.bj = phi float [ %i.aq, %._crit_edge104 ], [ %i.bg, %bb.i ] ; 13 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bl = fcmp ult float %.pre-phi114, 1.000000e+00
  br i1 %i.bl, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  store float %i.bj, ptr %i.bk, align 4, !tbaa !61
  %i.bm = fadd float %i.a, %i.bj
  %i.bn = fcmp oge float %i.bm, 1.000000e+00
  %i.bo = fcmp une float %i.bj, 1.000000e+00
  %or.cond = and i1 %i.bn, %i.bo
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %i.bp = fcmp oeq float %i.bg, %i.bj
  br i1 %i.bp, label %bb.k, label %.preheader.1

bb.k:                                             ; preds = %.preheader.preheader
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !61
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.k
  %i.bq = phi float [ %i.bg, %.preheader.preheader ], [ 1.000000e+00, %bb.k ] ; 2 uses
  %i.br = fcmp ord float %i.bj, 0.000000e+00
  br i1 %i.br, label %bb.l, label %.preheader.2

bb.l:                                             ; preds = %.preheader.1
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !61
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.l, %.preheader.1
  %i.bs = phi float [ 1.000000e+00, %bb.l ], [ %i.bj, %.preheader.1 ] ; 2 uses
  %i.bt = fcmp ord float %i.bj, 0.000000e+00
  br i1 %i.bt, label %bb.m, label %.preheader.3

bb.m:                                             ; preds = %.preheader.2
  store float 1.000000e+00, ptr %i.bk, align 4, !tbaa !61
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
  store float %i.cx, ptr %i.cb, align 4, !tbaa !67
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
  store float %i.dx, ptr %i.cj, align 4, !tbaa !67
  %i.dy = extractelement <4 x float> %i.dw, i64 3
  store float %i.dy, ptr %i.cl, align 4, !tbaa !67
  %i.dz = extractelement <4 x float> %i.dw, i64 0
  store float %i.dz, ptr %i.cy, align 4, !tbaa !67
  %i.ea = extractelement <4 x float> %i.dw, i64 1
  store float %i.ea, ptr %i.do, align 4, !tbaa !67
  %i.eb = extractelement <4 x float> %i.du, i64 2
  %.sink101 = select i1 %i.dp, float 0.000000e+00, float %i.eb
  store float %.sink101, ptr %i.dq, align 4, !tbaa !67
  %i.ec = extractelement <4 x float> %i.du, i64 3
  %.sink102 = select i1 %i.dr, float 0.000000e+00, float %i.ec
  store float %.sink102, ptr %i.ds, align 4, !tbaa !67
  %i.ed = extractelement <4 x float> %i.du, i64 0
  %.sink103 = select i1 %i.dt, float 0.000000e+00, float %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %.sink103, ptr %i.ee, align 4, !tbaa !67
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.as, align 4, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.cx, ptr %i.ef, align 4, !tbaa !67
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hexwave_generate_samples(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, float noundef %3) local_unnamed_addr #6 {
bb.a:
  %4 = alloca [9 x %struct.hexvert], align 16     ; 23 uses
  %i.a = alloca [128 x float], align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = load float, ptr %2, align 4, !tbaa !68   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = load i32, ptr @hexblep, align 8, !tbaa !20 ; 7 uses
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
  %i.o = load float, ptr %i.n, align 4, !tbaa !61
  %i.p = fcmp olt float %i.b, %i.o
  br i1 %i.p, label %bb.c, label %.preheader180.1

.preheader180.1:                                  ; preds = %.preheader180.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load float, ptr %i.q, align 8, !tbaa !61
  %i.s = fcmp olt float %i.b, %i.r
  br i1 %i.s, label %bb.c, label %.preheader180.2

.preheader180.2:                                  ; preds = %.preheader180.1
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.u = load float, ptr %i.t, align 4, !tbaa !61
  %i.v = fcmp olt float %i.b, %i.u
  br i1 %i.v, label %bb.c, label %.preheader180.3

.preheader180.3:                                  ; preds = %.preheader180.2
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = load float, ptr %i.w, align 16, !tbaa !61
  %i.y = fcmp olt float %i.b, %i.x
  br i1 %i.y, label %bb.c, label %.preheader180.4

.preheader180.4:                                  ; preds = %.preheader180.3
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.aa = load float, ptr %i.z, align 4, !tbaa !61
  %i.ab = fcmp olt float %i.b, %i.aa
  %spec.select = select i1 %i.ab, i64 5, i64 6
  br label %bb.c

bb.c:                                             ; preds = %.preheader180.4, %.preheader180.3, %.preheader180.2, %.preheader180.1, %.preheader180.preheader
  %.0123.lcssa = phi i64 [ 1, %.preheader180.preheader ], [ 4, %.preheader180.3 ], [ 2, %.preheader180.1 ], [ %spec.select, %.preheader180.4 ], [ 3, %.preheader180.2 ]
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %.0123.lcssa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !67 ; 2 uses
  %i.af = fcmp une float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.d, label %hex_blamp.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = fsub float %i.e, %i.l
  %i.ah = fmul float %i.ag, %i.ae                 ; 4 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !49 ; 4 uses
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
  %scevgep = getelementptr i8, ptr %0, i64 %i.aw  ; 2 uses
  %i.ax = add nsw i64 %i.aq, %wide.trip.count.i.i
  %i.ay = shl nsw i64 %i.ax, 2
  %scevgep286 = getelementptr i8, ptr %i.ai, i64 %i.ay
  %i.az = add nsw i64 %i.an, %wide.trip.count.i.i
  %i.ba = shl nsw i64 %i.az, 2
  %scevgep287 = getelementptr i8, ptr %i.ai, i64 %i.ba
  %bound0 = icmp ult ptr %0, %scevgep286
  %bound1 = icmp ult ptr %i.ar, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0288 = icmp ult ptr %0, %scevgep287
  %bound1289 = icmp ult ptr %i.ao, %scevgep
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx = or i1 %found.conflict, %found.conflict290
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert291 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat292 = shufflevector <4 x float> %broadcast.splatinsert291, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !18, !alias.scope !69 ; 2 uses
  %wide.load293 = load <4 x float>, ptr %i.bc, align 4, !tbaa !18, !alias.scope !69 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load294 = load <4 x float>, ptr %i.bd, align 4, !tbaa !18, !alias.scope !72
  %wide.load295 = load <4 x float>, ptr %i.be, align 4, !tbaa !18, !alias.scope !72
  %i.bf = fsub <4 x float> %wide.load294, %wide.load
  %i.bg = fsub <4 x float> %wide.load295, %wide.load293
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %broadcast.splat, <4 x float> %wide.load293)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load296 = load <4 x float>, ptr %i.bj, align 4, !tbaa !18, !alias.scope !74, !noalias !76
  %wide.load297 = load <4 x float>, ptr %i.bk, align 4, !tbaa !18, !alias.scope !74, !noalias !76
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat292, <4 x float> %i.bh, <4 x float> %wide.load296)
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat292, <4 x float> %i.bi, <4 x float> %wide.load297)
  store <4 x float> %i.bl, ptr %i.bj, align 4, !tbaa !18, !alias.scope !74, !noalias !76
  store <4 x float> %i.bm, ptr %i.bk, align 4, !tbaa !18, !alias.scope !74, !noalias !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !77

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
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !18 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.ph
  %i.br = load float, ptr %i.bq, align 4, !tbaa !18
  %i.bs = fsub float %i.br, %i.bp
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.au, float %i.bp)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !18
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.bt, float %i.bv)
  store float %i.bw, ptr %i.bu, align 4, !tbaa !18
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
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !18 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !18
  %i.cd = fsub float %i.cc, %i.ca
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.au, float %i.ca)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !18
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ce, float %i.cg)
  store float %i.ch, ptr %i.cf, align 4, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !18 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !18
  %i.cm = fsub float %i.cl, %i.cj
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.au, float %i.cj)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !18
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.cn, float %i.cp)
  store float %i.cq, ptr %i.co, align 4, !tbaa !18
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %hex_blamp.exit, label %.lr.ph.i.i, !llvm.loop !78

hex_blamp.exit:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.d, %bb.c
  store float %i.e, ptr %i.k, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %hex_blamp.exit, %bb.b
  %i.cr = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cs, i1 false)
  %i.ct = load i32, ptr @hexblep, align 8, !tbaa !20 ; 3 uses
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
  %i.dq = phi i1 [ false, %bb.h ], [ true, %.loopexit ] ; 3 uses
  %i.dr = phi i1 [ true, %bb.h ], [ false, %.loopexit ]
  %brmerge = select i1 %i.dq, i1 true, i1 %i.da
  %..mux = select i1 %i.dq, i32 %., i32 %i.db     ; 2 uses
  %.mux = select i1 %i.dq, ptr %i.a, ptr %0       ; 12 uses
  br i1 %brmerge, label %.preheader205, label %.loopexit

.preheader205:                                    ; preds = %bb.i
  %i.ds = load float, ptr %i.di, align 4, !tbaa !61
  %i.dt = fcmp olt float %.0122196, %i.ds
  br i1 %i.dt, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.preheader205
  %i.du = load float, ptr %i.dj, align 8, !tbaa !61
  %i.dv = fcmp olt float %.0122196, %i.du
  br i1 %i.dv, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = load float, ptr %i.dk, align 4, !tbaa !61
  %i.dx = fcmp olt float %.0122196, %i.dw
  br i1 %i.dx, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = load float, ptr %i.dl, align 16, !tbaa !61
  %i.dz = fcmp olt float %.0122196, %i.dy
  br i1 %i.dz, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = load float, ptr %i.dm, align 4, !tbaa !61
  %i.eb = fcmp olt float %.0122196, %i.ea
  br i1 %i.eb, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = load float, ptr %i.dn, align 8, !tbaa !61
  %i.ed = fcmp olt float %.0122196, %i.ec
  br i1 %i.ed, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ee = load float, ptr %i.do, align 4, !tbaa !61
  %i.ef = fcmp olt float %.0122196, %i.ee
  br i1 %i.ef, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = load float, ptr %i.dp, align 16, !tbaa !61
  %i.eh = fcmp olt float %.0122196, %i.eg
  %spec.select276 = select i1 %i.eh, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.preheader205
  %.1124.lcssa = phi i32 [ 0, %.preheader205 ], [ 4, %bb.m ], [ 6, %bb.o ], [ 1, %bb.j ], [ %spec.select276, %bb.p ], [ 2, %bb.k ], [ 5, %bb.n ], [ 3, %bb.l ]
  %i.ei = load i32, ptr @hexblep, align 8         ; 14 uses
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4 ; 2 uses
  %i.ek = sitofp i32 %i.ej to float               ; 8 uses
  %i.el = add i32 %i.ej, -1                       ; 4 uses
  %i.em = icmp sgt i32 %i.ei, 0                   ; 4 uses
  %wide.trip.count.i.i150 = zext i32 %i.ei to i64 ; 21 uses
  %sext = sext i32 %..mux to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.mux, i64 %i.dh
  %i.en = shl nuw nsw i64 %wide.trip.count.i.i150, 2 ; 9 uses
  %scevgep364 = getelementptr i8, ptr %.mux, i64 %i.en
  %scevgep396 = getelementptr i8, ptr %.mux, i64 %i.en
  %min.iters.check409 = icmp ult i32 %i.ei, 8
  %n.vec411 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n426 = icmp eq i64 %n.vec411, %wide.trip.count.i.i150
  %xtraiter452 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  %i.eo = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check376 = icmp ult i32 %i.ei, 8
  %n.vec378 = and i64 %wide.trip.count.i.i150, 4294967288 ; 3 uses
  %cmp.n393 = icmp eq i64 %n.vec378, %wide.trip.count.i.i150
  %xtraiter454 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod455.not = icmp eq i64 %xtraiter454, 0
  %i.ep = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check343 = icmp ult i32 %i.ei, 8
  %n.vec345 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n360 = icmp eq i64 %n.vec345, %wide.trip.count.i.i150
  %xtraiter456 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  %i.eq = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check311 = icmp ult i32 %i.ei, 8
  %n.vec313 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n328 = icmp eq i64 %n.vec313, %wide.trip.count.i.i150
  %xtraiter458 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  %i.er = add nsw i64 %wide.trip.count.i.i150, -1
  br label %hex_blamp.exit178

hex_blamp.exit178:                                ; preds = %hex_blamp.exit178.backedge, %bb.q
  %.0127 = phi i32 [ 0, %bb.q ], [ %.1128.lcssa, %hex_blamp.exit178.backedge ] ; 3 uses
  %.2125 = phi i32 [ %.1124.lcssa, %bb.q ], [ %.2125.be, %hex_blamp.exit178.backedge ] ; 2 uses
  %.1 = phi float [ %.0122196, %bb.q ], [ %.1.be, %hex_blamp.exit178.backedge ] ; 4 uses
  %i.es = add nsw i32 %.2125, 1                   ; 3 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [12 x i8], ptr %4, i64 %i.et ; 4 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !61 ; 5 uses
  %i.ew = fcmp olt float %.1, %i.ev
  %i.ex = sext i32 %.2125 to i64                  ; 2 uses
  %i.ey = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ex ; 4 uses
  br i1 %i.ew, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %hex_blamp.exit178
  %.pre218 = load float, ptr %i.ey, align 4, !tbaa !61
  br label %._crit_edge

.lr.ph:                                           ; preds = %hex_blamp.exit178
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = icmp eq i32 %.0127, %..mux
  br i1 %i.fb, label %.loopexit, label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph
  %i.fc = sext i32 %.0127 to i64
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !63
  %i.fe = load float, ptr %i.fa, align 4, !tbaa !67
  %i.ff = load float, ptr %i.ey, align 4, !tbaa !61 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.fg = icmp eq i64 %indvars.iv.next, %sext
  br i1 %i.fg, label %.loopexit, label %bb.s, !llvm.loop !79

bb.s:                                             ; preds = %.lr.ph284, %bb.r
  %.2190283 = phi float [ %.1, %.lr.ph284 ], [ %i.fl, %bb.r ] ; 2 uses
  %indvars.iv282 = phi i64 [ %i.fc, %.lr.ph284 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.fh = fsub float %.2190283, %i.ff
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fh, float %i.fd)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv282 ; 2 uses
  %i.fj = load float, ptr %gep, align 4, !tbaa !18
  %i.fk = fadd float %i.fj, %i.fi
  store float %i.fk, ptr %gep, align 4, !tbaa !18
  %i.fl = fadd float %i.e, %.2190283              ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv282, 1 ; 3 uses
  %i.fm = fcmp olt float %i.fl, %i.ev
  br i1 %i.fm, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !79

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.fn = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.fo = phi float [ %.pre218, %.._crit_edge_crit_edge ], [ %i.ff, %._crit_edge.loopexit ]
  %.1128.lcssa = phi i32 [ %.0127, %.._crit_edge_crit_edge ], [ %i.fn, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi float [ %.1, %.._crit_edge_crit_edge ], [ %i.fl, %._crit_edge.loopexit ] ; 4 uses
  %i.fp = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ex ; 3 uses
  %i.fq = fcmp oeq float %i.fo, %i.ev
  %i.fr = sext i32 %.1128.lcssa to i64            ; 10 uses
  br i1 %i.fq, label %bb.t, label %hex_blep.exit

bb.t:                                             ; preds = %._crit_edge
  %i.fs = getelementptr [4 x i8], ptr %.mux, i64 %i.fr ; 6 uses
  %i.ft = fsub float %.2.lcssa, %i.ev
  %i.fu = fmul float %i.h, %i.ft                  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !63
  %i.fz = fsub float %i.fw, %i.fy                 ; 4 uses
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !38 ; 3 uses
  %i.gb = fmul float %i.fu, %i.ek
  %i.gc = fptosi float %i.gb to i32
  %spec.select.i.i148 = tail call i32 @llvm.smin.i32(i32 %i.gc, i32 %i.el) ; 3 uses
  %i.gd = mul i32 %spec.select.i.i148, %i.ei
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  %i.gf = getelementptr [4 x i8], ptr %i.ga, i64 %i.ge ; 5 uses
  %i.gg = add i32 %spec.select.i.i148, 1
  %i.gh = mul i32 %i.gg, %i.ei
  %i.gi = sext i32 %i.gh to i64                   ; 3 uses
  %i.gj = getelementptr [4 x i8], ptr %i.ga, i64 %i.gi ; 5 uses
  %i.gk = sitofp i32 %spec.select.i.i148 to float
  %i.gl = fneg float %i.gk
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.ek, float %i.gl) ; 5 uses
  br i1 %i.em, label %.lr.ph.i.i151.preheader, label %hex_blep.exit.thread267

.lr.ph.i.i151.preheader:                          ; preds = %bb.t
  br i1 %min.iters.check409, label %.lr.ph.i.i151.preheader445, label %vector.memcheck395

vector.memcheck395:                               ; preds = %.lr.ph.i.i151.preheader
  %i.gn = shl nsw i64 %i.fr, 2
  %scevgep397 = getelementptr i8, ptr %scevgep396, i64 %i.gn ; 2 uses
  %scevgep398 = getelementptr i8, ptr %i.ga, i64 %i.en ; 2 uses
  %i.go = shl nsw i64 %i.gi, 2
  %scevgep399 = getelementptr i8, ptr %scevgep398, i64 %i.go
  %i.gp = shl nsw i64 %i.ge, 2
  %scevgep400 = getelementptr i8, ptr %scevgep398, i64 %i.gp
  %bound0401 = icmp ult ptr %i.fs, %scevgep399
  %bound1402 = icmp ult ptr %i.gj, %scevgep397
  %found.conflict403 = and i1 %bound0401, %bound1402
  %bound0404 = icmp ult ptr %i.fs, %scevgep400
  %bound1405 = icmp ult ptr %i.gf, %scevgep397
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %found.conflict403, %found.conflict406
  br i1 %conflict.rdx407, label %.lr.ph.i.i151.preheader445, label %vector.ph410

vector.ph410:                                     ; preds = %vector.memcheck395
  %broadcast.splatinsert412 = insertelement <4 x float> poison, float %i.gm, i64 0
  %broadcast.splat413 = shufflevector <4 x float> %broadcast.splatinsert412, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert414 = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat415 = shufflevector <4 x float> %broadcast.splatinsert414, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph410
  %index417 = phi i64 [ 0, %vector.ph410 ], [ %index.next424, %vector.body416 ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index417 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load418 = load <4 x float>, ptr %i.gq, align 4, !tbaa !18, !alias.scope !80 ; 2 uses
  %wide.load419 = load <4 x float>, ptr %i.gr, align 4, !tbaa !18, !alias.scope !80 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index417 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load420 = load <4 x float>, ptr %i.gs, align 4, !tbaa !18, !alias.scope !83
  %wide.load421 = load <4 x float>, ptr %i.gt, align 4, !tbaa !18, !alias.scope !83
  %i.gu = fsub <4 x float> %wide.load420, %wide.load418
  %i.gv = fsub <4 x float> %wide.load421, %wide.load419
  %i.gw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %broadcast.splat413, <4 x float> %wide.load418)
  %i.gx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %broadcast.splat413, <4 x float> %wide.load419)
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %index417 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %wide.load422 = load <4 x float>, ptr %i.gy, align 4, !tbaa !18, !alias.scope !85, !noalias !87
  %wide.load423 = load <4 x float>, ptr %i.gz, align 4, !tbaa !18, !alias.scope !85, !noalias !87
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat415, <4 x float> %i.gw, <4 x float> %wide.load422)
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat415, <4 x float> %i.gx, <4 x float> %wide.load423)
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !18, !alias.scope !85, !noalias !87
  store <4 x float> %i.hb, ptr %i.gz, align 4, !tbaa !18, !alias.scope !85, !noalias !87
  %index.next424 = add nuw i64 %index417, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next424, %n.vec411
  br i1 %i.hc, label %middle.block425, label %vector.body416, !llvm.loop !88

middle.block425:                                  ; preds = %vector.body416
  br i1 %cmp.n426, label %hex_blep.exit.thread, label %.lr.ph.i.i151.preheader445

.lr.ph.i.i151.preheader445:                       ; preds = %vector.memcheck395, %.lr.ph.i.i151.preheader, %middle.block425
  %indvars.iv.i.i152.ph = phi i64 [ 0, %vector.memcheck395 ], [ 0, %.lr.ph.i.i151.preheader ], [ %n.vec411, %middle.block425 ] ; 6 uses
  br i1 %lcmp.mod453.not, label %.lr.ph.i.i151.prol.loopexit, label %.lr.ph.i.i151.prol

.lr.ph.i.i151.prol:                               ; preds = %.lr.ph.i.i151.preheader445
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i.i152.ph
  %i.he = load float, ptr %i.hd, align 4, !tbaa !18 ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i.i152.ph
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !18
  %i.hh = fsub float %i.hg, %i.he
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.gm, float %i.he)
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.i.i152.ph ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !18
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.hi, float %i.hk)
  store float %i.hl, ptr %i.hj, align 4, !tbaa !18
  %indvars.iv.next.i.i153.prol = or disjoint i64 %indvars.iv.i.i152.ph, 1
  br label %.lr.ph.i.i151.prol.loopexit

.lr.ph.i.i151.prol.loopexit:                      ; preds = %.lr.ph.i.i151.prol, %.lr.ph.i.i151.preheader445
  %indvars.iv.i.i152.unr = phi i64 [ %indvars.iv.i.i152.ph, %.lr.ph.i.i151.preheader445 ], [ %indvars.iv.next.i.i153.prol, %.lr.ph.i.i151.prol ]
  %i.hm = icmp eq i64 %indvars.iv.i.i152.ph, %i.eo
  br i1 %i.hm, label %hex_blep.exit.thread, label %.lr.ph.i.i151

hex_blep.exit.thread267:                          ; preds = %bb.t
  %i.hn = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fr
  br label %hex_blamp.exit162

.lr.ph.i.i151:                                    ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151
  %indvars.iv.i.i152 = phi i64 [ %indvars.iv.next.i.i153.1, %.lr.ph.i.i151 ], [ %indvars.iv.i.i152.unr, %.lr.ph.i.i151.prol.loopexit ] ; 5 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i.i152
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !18 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i.i152
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !18
  %i.hs = fsub float %i.hr, %i.hp
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.gm, float %i.hp)
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.i.i152 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !18
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.ht, float %i.hv)
  store float %i.hw, ptr %i.hu, align 4, !tbaa !18
  %indvars.iv.next.i.i153 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.next.i.i153
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !18 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.next.i.i153
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !18
  %i.ib = fsub float %i.ia, %i.hy
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.gm, float %i.hy)
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv.next.i.i153 ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !18
  %i.if = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.ic, float %i.ie)
  store float %i.if, ptr %i.id, align 4, !tbaa !18
  %indvars.iv.next.i.i153.1 = add nuw nsw i64 %indvars.iv.i.i152, 2 ; 2 uses
  %exitcond.not.i.i154.1 = icmp eq i64 %indvars.iv.next.i.i153.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i154.1, label %hex_blep.exit.thread, label %.lr.ph.i.i151, !llvm.loop !89

hex_blep.exit.thread:                             ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151, %middle.block425
  %i.ig = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fr
  %i.ih = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !67
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !67
  %i.il = fsub float %i.ii, %i.ik
  %i.im = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !49 ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.ge
  %i.io = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.gi
  br label %.lr.ph.i.i158.preheader

hex_blep.exit:                                    ; preds = %._crit_edge
  %.pre221 = fsub float %.2.lcssa, %i.ev
  %.pre223 = fmul float %i.h, %.pre221            ; 2 uses
  %.pre225 = fmul float %.pre223, %i.ek
  %.pre227 = fptosi float %.pre225 to i32
  %.pre229 = tail call i32 @llvm.smin.i32(i32 %.pre227, i32 %i.el) ; 3 uses
  %.pre230 = mul nsw i32 %.pre229, %i.ei
  %.pre232 = sext i32 %.pre230 to i64
  %.pre234 = add nsw i32 %.pre229, 1
  %.pre236 = mul nsw i32 %.pre234, %i.ei
  %.pre238 = sext i32 %.pre236 to i64
  %.pre240 = sitofp i32 %.pre229 to float
  %.pre242 = fneg float %.pre240
  %.pre244 = tail call float @llvm.fmuladd.f32(float %.pre223, float %i.ek, float %.pre242)
  %i.ip = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fr ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !67
  %i.is = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.it = load float, ptr %i.is, align 4, !tbaa !67
  %i.iu = fsub float %i.ir, %i.it
  %i.iv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !49 ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %.pre232
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %.pre238
  br i1 %i.em, label %.lr.ph.i.i158.preheader, label %hex_blamp.exit162

.lr.ph.i.i158.preheader:                          ; preds = %hex_blep.exit.thread, %hex_blep.exit
  %i.iy = phi ptr [ %i.io, %hex_blep.exit.thread ], [ %i.ix, %hex_blep.exit ] ; 6 uses
  %i.iz = phi ptr [ %i.in, %hex_blep.exit.thread ], [ %i.iw, %hex_blep.exit ] ; 6 uses
  %.pn = phi float [ %i.il, %hex_blep.exit.thread ], [ %i.iu, %hex_blep.exit ]
  %i.ja = phi ptr [ %i.ig, %hex_blep.exit.thread ], [ %i.ip, %hex_blep.exit ] ; 3 uses
  %.pre-phi245266 = phi float [ %i.gm, %hex_blep.exit.thread ], [ %.pre244, %hex_blep.exit ] ; 4 uses
  %i.jb = fmul float %i.e, %.pn                   ; 4 uses
  br i1 %min.iters.check376, label %.lr.ph.i.i158.preheader444, label %vector.memcheck362

vector.memcheck362:                               ; preds = %.lr.ph.i.i158.preheader
  %i.jc = shl nsw i64 %i.fr, 2                    ; 2 uses
  %scevgep363 = getelementptr i8, ptr %.mux, i64 %i.jc ; 2 uses
  %scevgep365 = getelementptr i8, ptr %scevgep364, i64 %i.jc ; 2 uses
  %scevgep366 = getelementptr i8, ptr %i.iy, i64 %i.en
  %scevgep367 = getelementptr i8, ptr %i.iz, i64 %i.en
  %bound0368 = icmp ult ptr %scevgep363, %scevgep366
  %bound1369 = icmp ult ptr %i.iy, %scevgep365
  %found.conflict370 = and i1 %bound0368, %bound1369
  %bound0371 = icmp ult ptr %scevgep363, %scevgep367
  %bound1372 = icmp ult ptr %i.iz, %scevgep365
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %found.conflict370, %found.conflict373
  br i1 %conflict.rdx374, label %.lr.ph.i.i158.preheader444, label %vector.ph377

vector.ph377:                                     ; preds = %vector.memcheck362
  %i.jd = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fr
  %broadcast.splatinsert379 = insertelement <4 x float> poison, float %.pre-phi245266, i64 0
  %broadcast.splat380 = shufflevector <4 x float> %broadcast.splatinsert379, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert381 = insertelement <4 x float> poison, float %i.jb, i64 0
  %broadcast.splat382 = shufflevector <4 x float> %broadcast.splatinsert381, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph377
  %index384 = phi i64 [ 0, %vector.ph377 ], [ %index.next391, %vector.body383 ] ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %index384 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load385 = load <4 x float>, ptr %i.je, align 4, !tbaa !18, !alias.scope !90 ; 2 uses
  %wide.load386 = load <4 x float>, ptr %i.jf, align 4, !tbaa !18, !alias.scope !90 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %index384 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %wide.load387 = load <4 x float>, ptr %i.jg, align 4, !tbaa !18, !alias.scope !93
  %wide.load388 = load <4 x float>, ptr %i.jh, align 4, !tbaa !18, !alias.scope !93
  %i.ji = fsub <4 x float> %wide.load387, %wide.load385
  %i.jj = fsub <4 x float> %wide.load388, %wide.load386
  %i.jk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ji, <4 x float> %broadcast.splat380, <4 x float> %wide.load385)
  %i.jl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jj, <4 x float> %broadcast.splat380, <4 x float> %wide.load386)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %index384 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  %wide.load389 = load <4 x float>, ptr %i.jm, align 4, !tbaa !18, !alias.scope !95, !noalias !97
  %wide.load390 = load <4 x float>, ptr %i.jn, align 4, !tbaa !18, !alias.scope !95, !noalias !97
  %i.jo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat382, <4 x float> %i.jk, <4 x float> %wide.load389)
  %i.jp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat382, <4 x float> %i.jl, <4 x float> %wide.load390)
  store <4 x float> %i.jo, ptr %i.jm, align 4, !tbaa !18, !alias.scope !95, !noalias !97
  store <4 x float> %i.jp, ptr %i.jn, align 4, !tbaa !18, !alias.scope !95, !noalias !97
  %index.next391 = add nuw i64 %index384, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next391, %n.vec378
  br i1 %i.jq, label %middle.block392, label %vector.body383, !llvm.loop !98

middle.block392:                                  ; preds = %vector.body383
  br i1 %cmp.n393, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader444

.lr.ph.i.i158.preheader444:                       ; preds = %vector.memcheck362, %.lr.ph.i.i158.preheader, %middle.block392
  %indvars.iv.i.i159.ph = phi i64 [ 0, %vector.memcheck362 ], [ 0, %.lr.ph.i.i158.preheader ], [ %n.vec378, %middle.block392 ] ; 6 uses
  br i1 %lcmp.mod455.not, label %.lr.ph.i.i158.prol.loopexit, label %.lr.ph.i.i158.prol

.lr.ph.i.i158.prol:                               ; preds = %.lr.ph.i.i158.preheader444
  %i.jr = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fr
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.i.i159.ph
  %i.jt = load float, ptr %i.js, align 4, !tbaa !18 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv.i.i159.ph
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !18
  %i.jw = fsub float %i.jv, %i.jt
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jw, float %.pre-phi245266, float %i.jt)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %indvars.iv.i.i159.ph ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !18
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.jx, float %i.jz)
  store float %i.ka, ptr %i.jy, align 4, !tbaa !18
  %indvars.iv.next.i.i160.prol = or disjoint i64 %indvars.iv.i.i159.ph, 1
  br label %.lr.ph.i.i158.prol.loopexit

.lr.ph.i.i158.prol.loopexit:                      ; preds = %.lr.ph.i.i158.prol, %.lr.ph.i.i158.preheader444
  %indvars.iv.i.i159.unr = phi i64 [ %indvars.iv.i.i159.ph, %.lr.ph.i.i158.preheader444 ], [ %indvars.iv.next.i.i160.prol, %.lr.ph.i.i158.prol ]
  %i.kb = icmp eq i64 %indvars.iv.i.i159.ph, %i.ep
  br i1 %i.kb, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader444.new

.lr.ph.i.i158.preheader444.new:                   ; preds = %.lr.ph.i.i158.prol.loopexit
  %i.kc = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fr
  %i.kd = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fr
  br label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.lr.ph.i.i158, %.lr.ph.i.i158.preheader444.new
  %indvars.iv.i.i159 = phi i64 [ %indvars.iv.i.i159.unr, %.lr.ph.i.i158.preheader444.new ], [ %indvars.iv.next.i.i160.1, %.lr.ph.i.i158 ] ; 5 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.i.i159
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !18 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv.i.i159
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !18
  %i.ki = fsub float %i.kh, %i.kf
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float %.pre-phi245266, float %i.kf)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %indvars.iv.i.i159 ; 2 uses
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !18
  %i.km = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.kj, float %i.kl)
  store float %i.km, ptr %i.kk, align 4, !tbaa !18
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 3 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.next.i.i160
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !18 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv.next.i.i160
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !18
  %i.kr = fsub float %i.kq, %i.ko
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.kr, float %.pre-phi245266, float %i.ko)
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv.next.i.i160 ; 2 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !18
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.ks, float %i.ku)
  store float %i.kv, ptr %i.kt, align 4, !tbaa !18
  %indvars.iv.next.i.i160.1 = add nuw nsw i64 %indvars.iv.i.i159, 2 ; 2 uses
  %exitcond.not.i.i161.1 = icmp eq i64 %indvars.iv.next.i.i160.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i161.1, label %hex_blamp.exit162, label %.lr.ph.i.i158, !llvm.loop !99

hex_blamp.exit162:                                ; preds = %.lr.ph.i.i158.prol.loopexit, %.lr.ph.i.i158, %middle.block392, %hex_blep.exit.thread267, %hex_blep.exit
  %i.kw = phi ptr [ %i.hn, %hex_blep.exit.thread267 ], [ %i.ip, %hex_blep.exit ], [ %i.ja, %middle.block392 ], [ %i.ja, %.lr.ph.i.i158 ], [ %i.ja, %.lr.ph.i.i158.prol.loopexit ] ; 14 uses
  %i.kx = icmp eq i32 %i.es, 8
  br i1 %i.kx, label %bb.u, label %hex_blamp.exit178.backedge

bb.u:                                             ; preds = %hex_blamp.exit162
  %i.ky = fadd float %.2.lcssa, -1.000000e+00     ; 8 uses
  %i.kz = load i32, ptr %i.dc, align 4, !tbaa !15
  %.not147 = icmp eq i32 %i.kz, 0
  br i1 %.not147, label %hex_blamp.exit178.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.la = load float, ptr %i.dd, align 8, !tbaa !67 ; 2 uses
  %i.lb = load float, ptr %i.de, align 4, !tbaa !63 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %i.dg, i64 16, i1 false), !tbaa.struct !16
  store i32 0, ptr %i.dc, align 4, !tbaa !15
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.lc = load float, ptr %i.de, align 4, !tbaa !63 ; 2 uses
  %i.ld = fcmp une float %i.lc, %i.lb
  br i1 %i.ld, label %bb.w, label %hex_blep.exit170

bb.w:                                             ; preds = %bb.v
  %i.le = fmul float %i.h, %i.ky                  ; 2 uses
  %i.lf = fsub float %i.lc, %i.lb                 ; 4 uses
  %i.lg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !38 ; 3 uses
  %i.lh = fmul float %i.le, %i.ek
  %i.li = fptosi float %i.lh to i32
  %spec.select.i.i163 = tail call i32 @llvm.smin.i32(i32 %i.li, i32 %i.el) ; 3 uses
  %i.lj = mul i32 %spec.select.i.i163, %i.ei
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr [4 x i8], ptr %i.lg, i64 %i.lk ; 5 uses
  %i.lm = add i32 %spec.select.i.i163, 1
  %i.ln = mul i32 %i.lm, %i.ei
  %i.lo = sext i32 %i.ln to i64                   ; 2 uses
  %i.lp = getelementptr [4 x i8], ptr %i.lg, i64 %i.lo ; 5 uses
  %i.lq = sitofp i32 %spec.select.i.i163 to float
  %i.lr = fneg float %i.lq
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.le, float %i.ek, float %i.lr) ; 4 uses
  br i1 %i.em, label %.lr.ph.i.i166.preheader, label %hex_blep.exit170

.lr.ph.i.i166.preheader:                          ; preds = %bb.w
  br i1 %min.iters.check343, label %.lr.ph.i.i166.preheader443, label %vector.memcheck330

vector.memcheck330:                               ; preds = %.lr.ph.i.i166.preheader
  %scevgep331 = getelementptr i8, ptr %i.kw, i64 %i.en ; 2 uses
  %scevgep332 = getelementptr i8, ptr %i.lg, i64 %i.en ; 2 uses
  %i.lt = shl nsw i64 %i.lo, 2
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.lt
  %i.lu = shl nsw i64 %i.lk, 2
  %scevgep334 = getelementptr i8, ptr %scevgep332, i64 %i.lu
  %bound0335 = icmp ult ptr %i.kw, %scevgep333
  %bound1336 = icmp ult ptr %i.lp, %scevgep331
  %found.conflict337 = and i1 %bound0335, %bound1336
  %bound0338 = icmp ult ptr %i.kw, %scevgep334
  %bound1339 = icmp ult ptr %i.ll, %scevgep331
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %found.conflict337, %found.conflict340
  br i1 %conflict.rdx341, label %.lr.ph.i.i166.preheader443, label %vector.ph344

vector.ph344:                                     ; preds = %vector.memcheck330
  %broadcast.splatinsert346 = insertelement <4 x float> poison, float %i.ls, i64 0
  %broadcast.splat347 = shufflevector <4 x float> %broadcast.splatinsert346, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert348 = insertelement <4 x float> poison, float %i.lf, i64 0
  %broadcast.splat349 = shufflevector <4 x float> %broadcast.splatinsert348, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body350

vector.body350:                                   ; preds = %vector.body350, %vector.ph344
  %index351 = phi i64 [ 0, %vector.ph344 ], [ %index.next358, %vector.body350 ] ; 4 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %index351 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load352 = load <4 x float>, ptr %i.lv, align 4, !tbaa !18, !alias.scope !100 ; 2 uses
  %wide.load353 = load <4 x float>, ptr %i.lw, align 4, !tbaa !18, !alias.scope !100 ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %index351 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %wide.load354 = load <4 x float>, ptr %i.lx, align 4, !tbaa !18, !alias.scope !103
  %wide.load355 = load <4 x float>, ptr %i.ly, align 4, !tbaa !18, !alias.scope !103
  %i.lz = fsub <4 x float> %wide.load354, %wide.load352
  %i.ma = fsub <4 x float> %wide.load355, %wide.load353
  %i.mb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lz, <4 x float> %broadcast.splat347, <4 x float> %wide.load352)
  %i.mc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ma, <4 x float> %broadcast.splat347, <4 x float> %wide.load353)
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %index351 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %wide.load356 = load <4 x float>, ptr %i.md, align 4, !tbaa !18, !alias.scope !105, !noalias !107
  %wide.load357 = load <4 x float>, ptr %i.me, align 4, !tbaa !18, !alias.scope !105, !noalias !107
  %i.mf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat349, <4 x float> %i.mb, <4 x float> %wide.load356)
  %i.mg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat349, <4 x float> %i.mc, <4 x float> %wide.load357)
  store <4 x float> %i.mf, ptr %i.md, align 4, !tbaa !18, !alias.scope !105, !noalias !107
  store <4 x float> %i.mg, ptr %i.me, align 4, !tbaa !18, !alias.scope !105, !noalias !107
  %index.next358 = add nuw i64 %index351, 8       ; 2 uses
  %i.mh = icmp eq i64 %index.next358, %n.vec345
  br i1 %i.mh, label %middle.block359, label %vector.body350, !llvm.loop !108

middle.block359:                                  ; preds = %vector.body350
  br i1 %cmp.n360, label %hex_blep.exit170, label %.lr.ph.i.i166.preheader443

.lr.ph.i.i166.preheader443:                       ; preds = %vector.memcheck330, %.lr.ph.i.i166.preheader, %middle.block359
  %indvars.iv.i.i167.ph = phi i64 [ 0, %vector.memcheck330 ], [ 0, %.lr.ph.i.i166.preheader ], [ %n.vec345, %middle.block359 ] ; 6 uses
  br i1 %lcmp.mod457.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader443
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.i.i167.ph
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !18 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i.i167.ph
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !18
  %i.mm = fsub float %i.ml, %i.mj
  %i.mn = tail call float @llvm.fmuladd.f32(float %i.mm, float %i.ls, float %i.mj)
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i.i167.ph ; 2 uses
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !18
  %i.mq = tail call float @llvm.fmuladd.f32(float %i.lf, float %i.mn, float %i.mp)
  store float %i.mq, ptr %i.mo, align 4, !tbaa !18
  %indvars.iv.next.i.i168.prol = or disjoint i64 %indvars.iv.i.i167.ph, 1
  br label %.lr.ph.i.i166.prol.loopexit

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader443
  %indvars.iv.i.i167.unr = phi i64 [ %indvars.iv.i.i167.ph, %.lr.ph.i.i166.preheader443 ], [ %indvars.iv.next.i.i168.prol, %.lr.ph.i.i166.prol ]
  %i.mr = icmp eq i64 %indvars.iv.i.i167.ph, %i.eq
  br i1 %i.mr, label %hex_blep.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %indvars.iv.i.i167 = phi i64 [ %indvars.iv.next.i.i168.1, %.lr.ph.i.i166 ], [ %indvars.iv.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ] ; 5 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.i.i167
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !18 ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.i.i167
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !18
  %i.mw = fsub float %i.mv, %i.mt
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.mw, float %i.ls, float %i.mt)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i.i167 ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !18
  %i.na = tail call float @llvm.fmuladd.f32(float %i.lf, float %i.mx, float %i.mz)
  store float %i.na, ptr %i.my, align 4, !tbaa !18
  %indvars.iv.next.i.i168 = add nuw nsw i64 %indvars.iv.i.i167, 1 ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.next.i.i168
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !18 ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv.next.i.i168
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !18
  %i.nf = fsub float %i.ne, %i.nc
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.ls, float %i.nc)
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i.i168 ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !18
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.lf, float %i.ng, float %i.ni)
  store float %i.nj, ptr %i.nh, align 4, !tbaa !18
  %indvars.iv.next.i.i168.1 = add nuw nsw i64 %indvars.iv.i.i167, 2 ; 2 uses
  %exitcond.not.i.i169.1 = icmp eq i64 %indvars.iv.next.i.i168.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i169.1, label %hex_blep.exit170, label %.lr.ph.i.i166, !llvm.loop !109

hex_blep.exit170:                                 ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166, %middle.block359, %bb.w, %bb.v
  %i.nk = load float, ptr %i.dd, align 8, !tbaa !67 ; 2 uses
  %i.nl = fcmp une float %i.nk, %i.la
  br i1 %i.nl, label %bb.x, label %hex_blamp.exit178.backedge

bb.x:                                             ; preds = %hex_blep.exit170
  %i.nm = fmul float %i.h, %i.ky                  ; 2 uses
  %i.nn = fsub float %i.nk, %i.la
  %i.no = fmul float %i.e, %i.nn                  ; 4 uses
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !49 ; 3 uses
  %i.nq = fmul float %i.nm, %i.ek
  %i.nr = fptosi float %i.nq to i32
  %spec.select.i.i171 = tail call i32 @llvm.smin.i32(i32 %i.nr, i32 %i.el) ; 3 uses
  %i.ns = mul i32 %spec.select.i.i171, %i.ei
  %i.nt = sext i32 %i.ns to i64                   ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %i.np, i64 %i.nt ; 5 uses
  %i.nv = add i32 %spec.select.i.i171, 1
  %i.nw = mul i32 %i.nv, %i.ei
  %i.nx = sext i32 %i.nw to i64                   ; 2 uses
  %i.ny = getelementptr [4 x i8], ptr %i.np, i64 %i.nx ; 5 uses
  %i.nz = sitofp i32 %spec.select.i.i171 to float
  %i.oa = fneg float %i.nz
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.nm, float %i.ek, float %i.oa) ; 4 uses
  br i1 %i.em, label %.lr.ph.i.i174.preheader, label %hex_blamp.exit178.backedge

.lr.ph.i.i174.preheader:                          ; preds = %bb.x
  br i1 %min.iters.check311, label %.lr.ph.i.i174.preheader442, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.i.i174.preheader
  %scevgep299 = getelementptr i8, ptr %i.kw, i64 %i.en ; 2 uses
  %scevgep300 = getelementptr i8, ptr %i.np, i64 %i.en ; 2 uses
  %i.oc = shl nsw i64 %i.nx, 2
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.oc
  %i.od = shl nsw i64 %i.nt, 2
  %scevgep302 = getelementptr i8, ptr %scevgep300, i64 %i.od
  %bound0303 = icmp ult ptr %i.kw, %scevgep301
  %bound1304 = icmp ult ptr %i.ny, %scevgep299
  %found.conflict305 = and i1 %bound0303, %bound1304
  %bound0306 = icmp ult ptr %i.kw, %scevgep302
  %bound1307 = icmp ult ptr %i.nu, %scevgep299
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %found.conflict305, %found.conflict308
  br i1 %conflict.rdx309, label %.lr.ph.i.i174.preheader442, label %vector.ph312

vector.ph312:                                     ; preds = %vector.memcheck298
  %broadcast.splatinsert314 = insertelement <4 x float> poison, float %i.ob, i64 0
  %broadcast.splat315 = shufflevector <4 x float> %broadcast.splatinsert314, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert316 = insertelement <4 x float> poison, float %i.no, i64 0
  %broadcast.splat317 = shufflevector <4 x float> %broadcast.splatinsert316, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph312
  %index319 = phi i64 [ 0, %vector.ph312 ], [ %index.next326, %vector.body318 ] ; 4 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index319 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %wide.load320 = load <4 x float>, ptr %i.oe, align 4, !tbaa !18, !alias.scope !110 ; 2 uses
  %wide.load321 = load <4 x float>, ptr %i.of, align 4, !tbaa !18, !alias.scope !110 ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %index319 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load322 = load <4 x float>, ptr %i.og, align 4, !tbaa !18, !alias.scope !113
  %wide.load323 = load <4 x float>, ptr %i.oh, align 4, !tbaa !18, !alias.scope !113
  %i.oi = fsub <4 x float> %wide.load322, %wide.load320
  %i.oj = fsub <4 x float> %wide.load323, %wide.load321
  %i.ok = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oi, <4 x float> %broadcast.splat315, <4 x float> %wide.load320)
  %i.ol = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oj, <4 x float> %broadcast.splat315, <4 x float> %wide.load321)
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %index319 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %wide.load324 = load <4 x float>, ptr %i.om, align 4, !tbaa !18, !alias.scope !115, !noalias !117
  %wide.load325 = load <4 x float>, ptr %i.on, align 4, !tbaa !18, !alias.scope !115, !noalias !117
  %i.oo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat317, <4 x float> %i.ok, <4 x float> %wide.load324)
  %i.op = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat317, <4 x float> %i.ol, <4 x float> %wide.load325)
  store <4 x float> %i.oo, ptr %i.om, align 4, !tbaa !18, !alias.scope !115, !noalias !117
  store <4 x float> %i.op, ptr %i.on, align 4, !tbaa !18, !alias.scope !115, !noalias !117
  %index.next326 = add nuw i64 %index319, 8       ; 2 uses
  %i.oq = icmp eq i64 %index.next326, %n.vec313
  br i1 %i.oq, label %middle.block327, label %vector.body318, !llvm.loop !118

middle.block327:                                  ; preds = %vector.body318
  br i1 %cmp.n328, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174.preheader442

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block327, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block327 ], [ %i.es, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.ky, %middle.block327 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.ky, %bb.x ], [ %i.ky, %hex_blep.exit170 ], [ %i.ky, %bb.u ], [ %i.ky, %.lr.ph.i.i174 ], [ %i.ky, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader442:                       ; preds = %vector.memcheck298, %.lr.ph.i.i174.preheader, %middle.block327
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck298 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec313, %middle.block327 ] ; 6 uses
  br i1 %lcmp.mod459.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader442
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i175.ph
  %i.os = load float, ptr %i.or, align 4, !tbaa !18 ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.i.i175.ph
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !18
  %i.ov = fsub float %i.ou, %i.os
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ov, float %i.ob, float %i.os)
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !18
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.no, float %i.ow, float %i.oy)
  store float %i.oz, ptr %i.ox, align 4, !tbaa !18
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader442
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader442 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.pa = icmp eq i64 %indvars.iv.i.i175.ph, %i.er
  br i1 %i.pa, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i175
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !18 ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.i.i175
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !18
  %i.pf = fsub float %i.pe, %i.pc
  %i.pg = tail call float @llvm.fmuladd.f32(float %i.pf, float %i.ob, float %i.pc)
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i.i175 ; 2 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !18
  %i.pj = tail call float @llvm.fmuladd.f32(float %i.no, float %i.pg, float %i.pi)
  store float %i.pj, ptr %i.ph, align 4, !tbaa !18
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i176
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !18 ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.next.i.i176
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !18
  %i.po = fsub float %i.pn, %i.pl
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.po, float %i.ob, float %i.pl)
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !18
  %i.ps = tail call float @llvm.fmuladd.f32(float %i.no, float %i.pp, float %i.pr)
  store float %i.ps, ptr %i.pq, align 4, !tbaa !18
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !119

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fl, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dr, label %bb.i, label %bb.y, !llvm.loop !120

bb.y:                                             ; preds = %.loopexit
  %i.pt = load i32, ptr @hexblep, align 8, !tbaa !20 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.pt
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.pu = icmp sgt i32 %i.pt, 0
  br i1 %i.pu, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.pv = sub nsw i32 %1, %i.pt
  %i.pw = sext i32 %i.pv to i64
  %wide.trip.count = zext nneg i32 %i.pt to i64   ; 3 uses
  %invariant.gep274 = getelementptr [4 x i8], ptr %0, i64 %i.pw ; 2 uses
  %min.iters.check429 = icmp ult i32 %i.pt, 8
  br i1 %min.iters.check429, label %scalar.ph428.preheader, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph198
  %n.vec431 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph430
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next438, %vector.body432 ] ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index433 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %wide.load434 = load <4 x float>, ptr %i.px, align 16, !tbaa !18
  %wide.load435 = load <4 x float>, ptr %i.py, align 16, !tbaa !18
  %i.pz = getelementptr [4 x i8], ptr %invariant.gep274, i64 %index433 ; 3 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 16     ; 2 uses
  %wide.load436 = load <4 x float>, ptr %i.pz, align 4, !tbaa !18
  %wide.load437 = load <4 x float>, ptr %i.qa, align 4, !tbaa !18
  %i.qb = fadd <4 x float> %wide.load434, %wide.load436
  %i.qc = fadd <4 x float> %wide.load435, %wide.load437
  store <4 x float> %i.qb, ptr %i.pz, align 4, !tbaa !18
  store <4 x float> %i.qc, ptr %i.qa, align 4, !tbaa !18
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.qd = icmp eq i64 %index.next438, %n.vec431
  br i1 %i.qd, label %middle.block439, label %vector.body432, !llvm.loop !121

middle.block439:                                  ; preds = %vector.body432
  %cmp.n440 = icmp eq i64 %n.vec431, %wide.trip.count
  br i1 %cmp.n440, label %._crit_edge199, label %scalar.ph428.preheader

scalar.ph428.preheader:                           ; preds = %.lr.ph198, %middle.block439
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec431, %middle.block439 ]
  br label %scalar.ph428

scalar.ph428:                                     ; preds = %scalar.ph428.preheader, %scalar.ph428
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph428 ], [ %indvars.iv211.ph, %scalar.ph428.preheader ] ; 3 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !18
  %gep275 = getelementptr [4 x i8], ptr %invariant.gep274, i64 %indvars.iv211 ; 2 uses
  %i.qg = load float, ptr %gep275, align 4, !tbaa !18
  %i.qh = fadd float %i.qf, %i.qg
  store float %i.qh, ptr %gep275, align 4, !tbaa !18
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph428, !llvm.loop !122

._crit_edge199:                                   ; preds = %scalar.ph428, %middle.block439, %.preheader179
  %i.qi = sext i32 %i.pt to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  %i.qj = zext nneg i32 %1 to i64
  %i.qk = shl nuw nsw i64 %i.qj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.a, i64 %i.qk, i1 false), !tbaa !18
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink279 = phi i64 [ %i.cr, %._crit_edge202 ], [ %i.qi, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink279
  %i.qm = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.ql, i64 %i.qm, i1 false)
  store float %.4, ptr %2, align 4, !tbaa !68
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
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !38
  tail call void @free(ptr noundef %i.a) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !49
  tail call void @free(ptr noundef %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @hexwave_init(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = sdiv i32 %0, 2                           ; 5 uses
  %i.b = mul i32 %i.a, %1                         ; 5 uses
  %i.c = add i32 %1, 1                            ; 3 uses
  %i.d = mul nsw i32 %i.c, %0                     ; 2 uses
  %i.e = shl i32 %i.b, 1                          ; 6 uses
  %i.f = or disjoint i32 %i.e, 1
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #13 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g
  %spec.store.select134 = tail call i32 @llvm.smin.i32(i32 %0, i32 64)
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #13
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %0, i32 64)
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.g ; 2 uses
  %i.q = sext i32 %i.d to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.store.select135 = phi i32 [ %spec.store.select134, %bb.b ], [ %spec.store.select, %bb.c ] ; 6 uses
  %i.s = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 25 uses
  %i.t = phi ptr [ %i.i, %bb.b ], [ %2, %bb.c ]   ; 26 uses
  %.0125 = phi ptr [ %i.m, %bb.b ], [ %i.p, %bb.c ] ; 17 uses
  %.0124 = phi ptr [ %i.n, %bb.b ], [ %i.r, %bb.c ] ; 17 uses
  %.not130147 = icmp slt i32 %i.b, 0
  br i1 %.not130147, label %.preheader140, label %.preheader142.lr.ph

.preheader142.lr.ph:                              ; preds = %bb.d
  %i.u = sitofp i32 %i.e to float
  %i.v = sitofp i32 %1 to float
  %i.w = zext nneg i32 %i.b to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0) ; 3 uses
  %i.x = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.lr.ph, %.split.us
  %indvars.iv = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next, %.split.us ] ; 6 uses
  %.0120149 = phi double [ 0.000000e+00, %.preheader142.lr.ph ], [ %.us-phi146, %.split.us ] ; 2 uses
  %.0122148 = phi double [ 0.000000e+00, %.preheader142.lr.ph ], [ %.us-phi, %.split.us ] ; 2 uses
  %i.y = icmp eq i64 %indvars.iv, %i.w
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = uitofp nneg i32 %i.z to float
  %i.ab = fmul nnan float %i.aa, f0x40C90FDA
  %i.ac = fdiv float %i.ab, %i.u                  ; 3 uses
  %i.ad = fpext float %i.ac to double             ; 17 uses
  %i.ae = fmul float %i.ac, 2.000000e+00
  %i.af = fpext float %i.ae to double             ; 17 uses
  %i.ag = fmul float %i.ac, 3.000000e+00
  %i.ah = fpext float %i.ag to double             ; 17 uses
  %i.ai = trunc i64 %indvars.iv to i32
  %i.aj = sub i32 %i.ai, %i.b
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x40490FD8
  %i.am = fdiv float %i.al, %i.v                  ; 2 uses
  %i.an = fpext float %i.am to double
  br i1 %i.y, label %.preheader142.split.us.preheader, label %.preheader142.split

.preheader142.split.us.preheader:                 ; preds = %.preheader142
  %i.ao = tail call double @cos(double noundef %i.ad) #12
  %i.ap = tail call double @cos(double noundef %i.af) #12
  %i.aq = tail call double @cos(double noundef %i.ah) #12
  %i.ar = tail call double @cos(double noundef %i.ad) #12
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
  %i.hf = load float, ptr %i.he, align 4, !tbaa !18
  %i.hg = load float, ptr %i.gz, align 4, !tbaa !18
  %i.hh = fdiv float 1.000000e+00, %i.hg
  %i.hi = fmul float %i.hf, %i.hh
  store float %i.hi, ptr %i.he, align 4, !tbaa !18
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv172.ph ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !18
  %i.hl = load float, ptr %i.hb, align 4, !tbaa !18
  %i.hm = fdiv float %i.ha, %i.hl
  %i.hn = fmul float %i.hk, %i.hm
  store float %i.hn, ptr %i.hj, align 4, !tbaa !18
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1
  %i.ho = icmp eq i64 %indvars.iv172.ph, %i.hd
  br i1 %i.ho, label %.preheader140, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hp = zext nneg i32 %smax to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = or disjoint i64 %i.hq, 4                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.hr ; 3 uses
  %scevgep211 = getelementptr i8, ptr %i.s, i64 %i.hr ; 3 uses
  %i.hs = shl nuw nsw i64 %i.gy, 2
  %i.ht = or disjoint i64 %i.hs, 4                ; 2 uses
  %scevgep212 = getelementptr i8, ptr %i.t, i64 %i.ht ; 2 uses
  %scevgep213 = getelementptr i8, ptr %i.s, i64 %i.ht ; 2 uses
  %bound0 = icmp ult ptr %i.t, %scevgep211
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0214 = icmp ult ptr %i.t, %scevgep212
  %bound1215 = icmp ult ptr %i.gz, %scevgep
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx = or i1 %found.conflict, %found.conflict216
  %bound0217 = icmp ult ptr %i.t, %scevgep213
  %bound1218 = icmp ult ptr %i.hb, %scevgep
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx, %found.conflict219
  %bound0221 = icmp ult ptr %i.s, %scevgep212
  %bound1222 = icmp ult ptr %i.gz, %scevgep211
  %found.conflict223 = and i1 %bound0221, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  %bound0225 = icmp ult ptr %i.s, %scevgep213
  %bound1226 = icmp ult ptr %i.hb, %scevgep211
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  br i1 %conflict.rdx228, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count176, 2147483640 ; 2 uses
  %i.hu = load float, ptr %i.gz, align 4, !tbaa !18, !alias.scope !123
  %i.hv = fdiv float 1.000000e+00, %i.hu
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hw = load float, ptr %i.hb, align 4, !tbaa !18, !alias.scope !126
  %i.hx = fdiv float %i.ha, %i.hw
  %broadcast.splatinsert232 = insertelement <4 x float> poison, float %i.hx, i64 0
  %broadcast.splat233 = shufflevector <4 x float> %broadcast.splatinsert232, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.hy, align 4, !tbaa !18, !alias.scope !128, !noalias !130
  %wide.load229 = load <4 x float>, ptr %i.hz, align 4, !tbaa !18, !alias.scope !128, !noalias !130
  %i.ia = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ib = fmul <4 x float> %wide.load229, %broadcast.splat
  store <4 x float> %i.ia, ptr %i.hy, align 4, !tbaa !18, !alias.scope !128, !noalias !130
  store <4 x float> %i.ib, ptr %i.hz, align 4, !tbaa !18, !alias.scope !128, !noalias !130
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %wide.load230 = load <4 x float>, ptr %i.ic, align 4, !tbaa !18, !alias.scope !132, !noalias !133
  %wide.load231 = load <4 x float>, ptr %i.id, align 4, !tbaa !18, !alias.scope !132, !noalias !133
  %i.ie = fmul <4 x float> %wide.load230, %broadcast.splat233
  %i.if = fmul <4 x float> %wide.load231, %broadcast.splat233
  store <4 x float> %i.ie, ptr %i.ic, align 4, !tbaa !18, !alias.scope !132, !noalias !133
  store <4 x float> %i.if, ptr %i.id, align 4, !tbaa !18, !alias.scope !132, !noalias !133
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %scalar.ph.preheader, label %vector.body, !llvm.loop !134

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
  br i1 %exitcond.not, label %.split.us, label %.preheader142.split, !llvm.loop !135

.split.us:                                        ; preds = %.preheader142.split, %.preheader142.split.us.preheader
  %.us-phi = phi double [ %i.gv, %.preheader142.split.us.preheader ], [ %i.iu, %.preheader142.split ] ; 2 uses
  %.us-phi146 = phi double [ %i.gx, %.preheader142.split.us.preheader ], [ %i.iw, %.preheader142.split ] ; 2 uses
  %i.iy = fptrunc double %.us-phi to float
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store float %i.iy, ptr %i.iz, align 4, !tbaa !18
  %i.ja = fptrunc double %.us-phi146 to float
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.ja, ptr %i.jb, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond171.not, label %.lr.ph, label %.preheader142, !llvm.loop !136

.preheader140:                                    ; preds = %scalar.ph.preheader, %scalar.ph, %bb.d
  %.not132155 = icmp sgt i32 %1, -1
  %i.jc = icmp sgt i32 %spec.store.select135, 0
  %or.cond = and i1 %.not132155, %i.jc
  br i1 %or.cond, label %.preheader139.preheader, label %.preheader138

.preheader139.preheader:                          ; preds = %.preheader140
  %i.jd = zext nneg i32 %1 to i64                 ; 3 uses
  %i.je = zext nneg i32 %spec.store.select135 to i64 ; 8 uses
  %wide.trip.count186 = zext i32 %i.c to i64      ; 3 uses
  %i.jf = mul nuw nsw i64 %i.je, %wide.trip.count186
  %i.jg = shl i64 %i.jf, 2                        ; 2 uses
  %scevgep235 = getelementptr i8, ptr %.0125, i64 %i.jg ; 3 uses
  %scevgep236 = getelementptr i8, ptr %.0124, i64 %i.jg ; 3 uses
  %i.jh = add nuw nsw i64 %i.je, %wide.trip.count186
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %i.jj = add nsw i64 %i.ji, -4                   ; 2 uses
  %scevgep237 = getelementptr i8, ptr %i.t, i64 %i.jj ; 2 uses
  %scevgep238 = getelementptr i8, ptr %i.s, i64 %i.jj ; 2 uses
  %min.iters.check259 = icmp ugt i32 %spec.store.select135, 15
  %ident.check.not = icmp eq i32 %1, 1
  %or.cond303 = and i1 %min.iters.check259, %ident.check.not
  %bound0239 = icmp ult ptr %.0125, %scevgep236
  %bound1240 = icmp ult ptr %.0124, %scevgep235
  %found.conflict241 = and i1 %bound0239, %bound1240
  %bound0242 = icmp ult ptr %.0125, %scevgep237
  %bound1243 = icmp ult ptr %i.t, %scevgep235
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %found.conflict241, %found.conflict244
  %bound0246 = icmp ult ptr %.0125, %scevgep238
  %bound1247 = icmp ult ptr %i.s, %scevgep235
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %.0124, %scevgep237
  %bound1251 = icmp ult ptr %i.t, %scevgep236
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %.0124, %scevgep238
  %bound1255 = icmp ult ptr %i.s, %scevgep236
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %n.vec261 = and i64 %i.je, 2147483640           ; 9 uses
  %i.jk = icmp eq i64 %n.vec261, 8
  %i.jl = icmp eq i64 %n.vec261, 16
  %i.jm = icmp eq i64 %n.vec261, 24
  %i.jn = icmp eq i64 %n.vec261, 32
  %i.jo = icmp eq i64 %n.vec261, 40
  %i.jp = icmp eq i64 %n.vec261, 48
  %i.jq = icmp eq i64 %n.vec261, 56
  %cmp.n270 = icmp eq i64 %n.vec261, %i.je
  %xtraiter305 = and i64 %i.je, 1
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  %i.jr = add nsw i64 %i.je, -1
  br label %.preheader139

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph ], [ %indvars.iv.next173.prol, %scalar.ph.preheader ] ; 4 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv172 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !18
  %i.ju = load float, ptr %i.gz, align 4, !tbaa !18
  %i.jv = fdiv float 1.000000e+00, %i.ju
  %i.jw = fmul float %i.jt, %i.jv
  store float %i.jw, ptr %i.js, align 4, !tbaa !18
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv172 ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !18
  %i.jz = load float, ptr %i.hb, align 4, !tbaa !18
  %i.ka = fdiv float %i.ha, %i.jz
  %i.kb = fmul float %i.jy, %i.ka
  store float %i.kb, ptr %i.jx, align 4, !tbaa !18
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next173 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !18
  %i.ke = load float, ptr %i.gz, align 4, !tbaa !18
  %i.kf = fdiv float 1.000000e+00, %i.ke
  %i.kg = fmul float %i.kd, %i.kf
  store float %i.kg, ptr %i.kc, align 4, !tbaa !18
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next173 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !18
  %i.kj = load float, ptr %i.hb, align 4, !tbaa !18
  %i.kk = fdiv float %i.ha, %i.kj
  %i.kl = fmul float %i.ki, %i.kk
  store float %i.kl, ptr %i.kh, align 4, !tbaa !18
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %exitcond177.not.1 = icmp eq i64 %indvars.iv.next173.1, %wide.trip.count176
  br i1 %exitcond177.not.1, label %.preheader140, label %scalar.ph, !llvm.loop !137

.preheader139:                                    ; preds = %.preheader139.preheader, %._crit_edge
  %indvars.iv183 = phi i64 [ 0, %.preheader139.preheader ], [ %indvars.iv.next184, %._crit_edge ] ; 14 uses
  %i.km = mul nuw nsw i64 %indvars.iv183, %i.je   ; 12 uses
  %or.cond303.not = xor i1 %or.cond303, true
  %brmerge = select i1 %or.cond303.not, i1 true, i1 %conflict.rdx257
  br i1 %brmerge, label %scalar.ph258.preheader, label %vector.body262

vector.body262:                                   ; preds = %.preheader139
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv183 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load264 = load <4 x float>, ptr %i.kn, align 4, !tbaa !18, !alias.scope !138
  %wide.load265 = load <4 x float>, ptr %i.ko, align 4, !tbaa !18, !alias.scope !138
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.km ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store <4 x float> %wide.load264, ptr %i.kp, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  store <4 x float> %wide.load265, ptr %i.kq, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv183 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load266 = load <4 x float>, ptr %i.kr, align 4, !tbaa !18, !alias.scope !146
  %wide.load267 = load <4 x float>, ptr %i.ks, align 4, !tbaa !18, !alias.scope !146
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.km ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x float> %wide.load266, ptr %i.kt, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  store <4 x float> %wide.load267, ptr %i.ku, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  br i1 %i.jk, label %middle.block269, label %vector.body262.1

vector.body262.1:                                 ; preds = %vector.body262
  %i.kv = add nuw nsw i64 %indvars.iv183, 8       ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kv ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %wide.load264.1 = load <4 x float>, ptr %i.kw, align 4, !tbaa !18, !alias.scope !138
  %wide.load265.1 = load <4 x float>, ptr %i.kx, align 4, !tbaa !18, !alias.scope !138
  %i.ky = add nuw nsw i64 %i.km, 8                ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store <4 x float> %wide.load264.1, ptr %i.kz, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  store <4 x float> %wide.load265.1, ptr %i.la, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.kv ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %wide.load266.1 = load <4 x float>, ptr %i.lb, align 4, !tbaa !18, !alias.scope !146
  %wide.load267.1 = load <4 x float>, ptr %i.lc, align 4, !tbaa !18, !alias.scope !146
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.ky ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store <4 x float> %wide.load266.1, ptr %i.ld, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  store <4 x float> %wide.load267.1, ptr %i.le, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  br i1 %i.jl, label %middle.block269, label %vector.body262.2

vector.body262.2:                                 ; preds = %vector.body262.1
  %i.lf = add nuw nsw i64 %indvars.iv183, 16      ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %wide.load264.2 = load <4 x float>, ptr %i.lg, align 4, !tbaa !18, !alias.scope !138
  %wide.load265.2 = load <4 x float>, ptr %i.lh, align 4, !tbaa !18, !alias.scope !138
  %i.li = add nuw nsw i64 %i.km, 16               ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <4 x float> %wide.load264.2, ptr %i.lj, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  store <4 x float> %wide.load265.2, ptr %i.lk, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lf ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %wide.load266.2 = load <4 x float>, ptr %i.ll, align 4, !tbaa !18, !alias.scope !146
  %wide.load267.2 = load <4 x float>, ptr %i.lm, align 4, !tbaa !18, !alias.scope !146
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.li ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store <4 x float> %wide.load266.2, ptr %i.ln, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  store <4 x float> %wide.load267.2, ptr %i.lo, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  br i1 %i.jm, label %middle.block269, label %vector.body262.3

vector.body262.3:                                 ; preds = %vector.body262.2
  %i.lp = add nuw nsw i64 %indvars.iv183, 24      ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load264.3 = load <4 x float>, ptr %i.lq, align 4, !tbaa !18, !alias.scope !138
  %wide.load265.3 = load <4 x float>, ptr %i.lr, align 4, !tbaa !18, !alias.scope !138
  %i.ls = add nuw nsw i64 %i.km, 24               ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <4 x float> %wide.load264.3, ptr %i.lt, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  store <4 x float> %wide.load265.3, ptr %i.lu, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lp ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load266.3 = load <4 x float>, ptr %i.lv, align 4, !tbaa !18, !alias.scope !146
  %wide.load267.3 = load <4 x float>, ptr %i.lw, align 4, !tbaa !18, !alias.scope !146
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.ls ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <4 x float> %wide.load266.3, ptr %i.lx, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  store <4 x float> %wide.load267.3, ptr %i.ly, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  br i1 %i.jn, label %middle.block269, label %vector.body262.4

vector.body262.4:                                 ; preds = %vector.body262.3
  %i.lz = add nuw nsw i64 %indvars.iv183, 32      ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load264.4 = load <4 x float>, ptr %i.ma, align 4, !tbaa !18, !alias.scope !138
  %wide.load265.4 = load <4 x float>, ptr %i.mb, align 4, !tbaa !18, !alias.scope !138
  %i.mc = add nuw nsw i64 %i.km, 32               ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <4 x float> %wide.load264.4, ptr %i.md, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  store <4 x float> %wide.load265.4, ptr %i.me, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lz ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %wide.load266.4 = load <4 x float>, ptr %i.mf, align 4, !tbaa !18, !alias.scope !146
  %wide.load267.4 = load <4 x float>, ptr %i.mg, align 4, !tbaa !18, !alias.scope !146
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.mc ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <4 x float> %wide.load266.4, ptr %i.mh, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  store <4 x float> %wide.load267.4, ptr %i.mi, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  br i1 %i.jo, label %middle.block269, label %vector.body262.5

vector.body262.5:                                 ; preds = %vector.body262.4
  %i.mj = add nuw nsw i64 %indvars.iv183, 40      ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load264.5 = load <4 x float>, ptr %i.mk, align 4, !tbaa !18, !alias.scope !138
  %wide.load265.5 = load <4 x float>, ptr %i.ml, align 4, !tbaa !18, !alias.scope !138
  %i.mm = add nuw nsw i64 %i.km, 40               ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store <4 x float> %wide.load264.5, ptr %i.mn, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  store <4 x float> %wide.load265.5, ptr %i.mo, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mj ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %wide.load266.5 = load <4 x float>, ptr %i.mp, align 4, !tbaa !18, !alias.scope !146
  %wide.load267.5 = load <4 x float>, ptr %i.mq, align 4, !tbaa !18, !alias.scope !146
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.mm ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <4 x float> %wide.load266.5, ptr %i.mr, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  store <4 x float> %wide.load267.5, ptr %i.ms, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  br i1 %i.jp, label %middle.block269, label %vector.body262.6

vector.body262.6:                                 ; preds = %vector.body262.5
  %i.mt = add nuw nsw i64 %indvars.iv183, 48      ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %wide.load264.6 = load <4 x float>, ptr %i.mu, align 4, !tbaa !18, !alias.scope !138
  %wide.load265.6 = load <4 x float>, ptr %i.mv, align 4, !tbaa !18, !alias.scope !138
  %i.mw = add nuw nsw i64 %i.km, 48               ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <4 x float> %wide.load264.6, ptr %i.mx, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  store <4 x float> %wide.load265.6, ptr %i.my, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mt ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %wide.load266.6 = load <4 x float>, ptr %i.mz, align 4, !tbaa !18, !alias.scope !146
  %wide.load267.6 = load <4 x float>, ptr %i.na, align 4, !tbaa !18, !alias.scope !146
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.mw ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <4 x float> %wide.load266.6, ptr %i.nb, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  store <4 x float> %wide.load267.6, ptr %i.nc, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  br i1 %i.jq, label %middle.block269, label %vector.body262.7

vector.body262.7:                                 ; preds = %vector.body262.6
  %i.nd = add nuw nsw i64 %indvars.iv183, 56      ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.nd ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %wide.load264.7 = load <4 x float>, ptr %i.ne, align 4, !tbaa !18, !alias.scope !138
  %wide.load265.7 = load <4 x float>, ptr %i.nf, align 4, !tbaa !18, !alias.scope !138
  %i.ng = add nuw nsw i64 %i.km, 56               ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store <4 x float> %wide.load264.7, ptr %i.nh, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  store <4 x float> %wide.load265.7, ptr %i.ni, align 4, !tbaa !18, !alias.scope !141, !noalias !143
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.nd ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %wide.load266.7 = load <4 x float>, ptr %i.nj, align 4, !tbaa !18, !alias.scope !146
  %wide.load267.7 = load <4 x float>, ptr %i.nk, align 4, !tbaa !18, !alias.scope !146
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.ng ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  store <4 x float> %wide.load266.7, ptr %i.nl, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  store <4 x float> %wide.load267.7, ptr %i.nm, align 4, !tbaa !18, !alias.scope !147, !noalias !148
  br label %middle.block269

middle.block269:                                  ; preds = %vector.body262.7, %vector.body262.6, %vector.body262.5, %vector.body262.4, %vector.body262.3, %vector.body262.2, %vector.body262.1, %vector.body262
  br i1 %cmp.n270, label %._crit_edge, label %scalar.ph258.preheader

scalar.ph258.preheader:                           ; preds = %.preheader139, %middle.block269
  %indvars.iv178.ph = phi i64 [ %n.vec261, %middle.block269 ], [ 0, %.preheader139 ] ; 5 uses
  br i1 %lcmp.mod306.not, label %scalar.ph258.prol.loopexit, label %scalar.ph258.prol

scalar.ph258.prol:                                ; preds = %scalar.ph258.preheader
  %i.nn = mul nuw nsw i64 %indvars.iv178.ph, %i.jd
  %i.no = add nuw nsw i64 %i.nn, %indvars.iv183   ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.no
  %i.nq = load float, ptr %i.np, align 4, !tbaa !18
  %i.nr = add nuw nsw i64 %indvars.iv178.ph, %i.km ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.nr
  store float %i.nq, ptr %i.ns, align 4, !tbaa !18
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.no
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !18
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.nr
  store float %i.nu, ptr %i.nv, align 4, !tbaa !18
  %indvars.iv.next179.prol = or disjoint i64 %indvars.iv178.ph, 1
  br label %scalar.ph258.prol.loopexit

scalar.ph258.prol.loopexit:                       ; preds = %scalar.ph258.prol, %scalar.ph258.preheader
  %indvars.iv178.unr = phi i64 [ %indvars.iv178.ph, %scalar.ph258.preheader ], [ %indvars.iv.next179.prol, %scalar.ph258.prol ]
  %i.nw = icmp eq i64 %indvars.iv178.ph, %i.jr
  br i1 %i.nw, label %._crit_edge, label %scalar.ph258

.preheader138:                                    ; preds = %._crit_edge, %.preheader140
  %.not133162 = icmp slt i32 %1, 0
  br i1 %.not133162, label %._crit_edge164, label %.preheader137.lr.ph

.preheader137.lr.ph:                              ; preds = %.preheader138
  %i.nx = icmp slt i32 %i.a, %spec.store.select135
  %i.ny = uitofp nneg i32 %1 to float
  %i.nz = fdiv float 1.000000e+00, %i.ny          ; 2 uses
  br i1 %i.nx, label %.preheader137.us.us.preheader, label %._crit_edge164

.preheader137.us.us.preheader:                    ; preds = %.preheader137.lr.ph
  %i.oa = sext i32 %i.a to i64                    ; 8 uses
  %i.ob = sext i32 %spec.store.select135 to i64   ; 5 uses
  %wide.trip.count201 = zext i32 %i.c to i64
  %i.oc = sub nsw i64 %i.ob, %i.oa                ; 3 uses
  %min.iters.check292 = icmp ult i64 %i.oc, 8
  %n.vec294 = and i64 %i.oc, -8                   ; 3 uses
  %i.od = add nsw i64 %n.vec294, %i.oa
  %cmp.n301 = icmp eq i64 %i.oc, %n.vec294
  %i.oe = sub nsw i64 %i.ob, %i.oa                ; 3 uses
  %min.iters.check273 = icmp ult i64 %i.oe, 4
  %n.vec275 = and i64 %i.oe, -4                   ; 3 uses
  %i.of = add nsw i64 %n.vec275, %i.oa
  %broadcast.splatinsert278 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat279 = shufflevector <4 x i32> %broadcast.splatinsert278, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert280 = insertelement <4 x float> poison, float %i.nz, i64 0
  %broadcast.splat281 = shufflevector <4 x float> %broadcast.splatinsert280, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert282 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat283 = shufflevector <4 x i32> %broadcast.splatinsert282, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat283, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n289 = icmp eq i64 %i.oe, %n.vec275
  br label %.preheader137.us.us

.preheader137.us.us:                              ; preds = %.preheader137.us.us.preheader, %._crit_edge161.us.us
  %indvars.iv198 = phi i64 [ 0, %.preheader137.us.us.preheader ], [ %indvars.iv.next199, %._crit_edge161.us.us ] ; 3 uses
  %i.og = mul nsw i64 %indvars.iv198, %i.ob       ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %.0125, i64 %i.og ; 2 uses
  br i1 %min.iters.check292, label %scalar.ph291.preheader, label %vector.ph293

vector.ph293:                                     ; preds = %.preheader137.us.us
  %invariant.gep308 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.oa
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next299, %vector.body295 ] ; 2 uses
  %gep309 = getelementptr [4 x i8], ptr %invariant.gep308, i64 %index296 ; 3 uses
  %i.oh = getelementptr i8, ptr %gep309, i64 16   ; 2 uses
  %wide.load297 = load <4 x float>, ptr %gep309, align 4, !tbaa !18
  %wide.load298 = load <4 x float>, ptr %i.oh, align 4, !tbaa !18
  %i.oi = fadd <4 x float> %wide.load297, splat (float -1.000000e+00)
  %i.oj = fadd <4 x float> %wide.load298, splat (float -1.000000e+00)
  store <4 x float> %i.oi, ptr %gep309, align 4, !tbaa !18
  store <4 x float> %i.oj, ptr %i.oh, align 4, !tbaa !18
  %index.next299 = add nuw i64 %index296, 8       ; 2 uses
  %i.ok = icmp eq i64 %index.next299, %n.vec294
  br i1 %i.ok, label %middle.block300, label %vector.body295, !llvm.loop !149

middle.block300:                                  ; preds = %vector.body295
  br i1 %cmp.n301, label %..preheader_crit_edge.us.us, label %scalar.ph291.preheader

scalar.ph291.preheader:                           ; preds = %.preheader137.us.us, %middle.block300
  %indvars.iv188.ph = phi i64 [ %i.oa, %.preheader137.us.us ], [ %i.od, %middle.block300 ]
  br label %scalar.ph291

scalar.ph291:                                     ; preds = %scalar.ph291.preheader, %scalar.ph291
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %scalar.ph291 ], [ %indvars.iv188.ph, %scalar.ph291.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv188 ; 2 uses
  %i.ol = load float, ptr %gep, align 4, !tbaa !18
  %i.om = fadd float %i.ol, -1.000000e+00
  store float %i.om, ptr %gep, align 4, !tbaa !18
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %i.ob
  br i1 %exitcond192.not, label %..preheader_crit_edge.us.us, label %scalar.ph291, !llvm.loop !150

scalar.ph272:                                     ; preds = %scalar.ph272.preheader, %scalar.ph272
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %scalar.ph272 ], [ %indvars.iv193.ph, %scalar.ph272.preheader ] ; 3 uses
  %i.on = trunc i64 %indvars.iv193 to i32
  %i.oo = mul i32 %1, %i.on
  %i.op = add i32 %i.ov, %i.oo
  %i.oq = sitofp i32 %i.op to float
  %gep209 = getelementptr [4 x i8], ptr %invariant.gep208, i64 %indvars.iv193 ; 2 uses
  %i.or = load float, ptr %gep209, align 4, !tbaa !18
  %i.os = fneg float %i.oq
  %i.ot = tail call float @llvm.fmuladd.f32(float %i.os, float %i.nz, float %i.or)
  store float %i.ot, ptr %gep209, align 4, !tbaa !18
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %i.ob
  br i1 %exitcond197.not, label %._crit_edge161.us.us, label %scalar.ph272, !llvm.loop !151

..preheader_crit_edge.us.us:                      ; preds = %scalar.ph291, %middle.block300
  %i.ou = trunc nuw nsw i64 %indvars.iv198 to i32
  %i.ov = sub i32 %i.ou, %i.b                     ; 2 uses
  %invariant.gep208 = getelementptr [4 x i8], ptr %.0124, i64 %i.og ; 2 uses
  br i1 %min.iters.check273, label %scalar.ph272.preheader, label %vector.ph274

vector.ph274:                                     ; preds = %..preheader_crit_edge.us.us
  %broadcast.splatinsert276 = insertelement <4 x i32> poison, i32 %i.ov, i64 0
  %broadcast.splat277 = shufflevector <4 x i32> %broadcast.splatinsert276, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep310 = getelementptr [4 x i8], ptr %invariant.gep208, i64 %i.oa
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph274
  %index285 = phi i64 [ 0, %vector.ph274 ], [ %index.next287, %vector.body284 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph274 ], [ %vec.ind.next, %vector.body284 ] ; 2 uses
  %i.ow = mul <4 x i32> %broadcast.splat279, %vec.ind
  %i.ox = add <4 x i32> %broadcast.splat277, %i.ow
  %i.oy = sitofp <4 x i32> %i.ox to <4 x float>
  %gep311 = getelementptr [4 x i8], ptr %invariant.gep310, i64 %index285 ; 2 uses
  %wide.load286 = load <4 x float>, ptr %gep311, align 4, !tbaa !18
  %i.oz = fneg <4 x float> %i.oy
  %i.pa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oz, <4 x float> %broadcast.splat281, <4 x float> %wide.load286)
  store <4 x float> %i.pa, ptr %gep311, align 4, !tbaa !18
  %index.next287 = add nuw i64 %index285, 4       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.pb = icmp eq i64 %index.next287, %n.vec275
  br i1 %i.pb, label %middle.block288, label %vector.body284, !llvm.loop !152

middle.block288:                                  ; preds = %vector.body284
  br i1 %cmp.n289, label %._crit_edge161.us.us, label %scalar.ph272.preheader

scalar.ph272.preheader:                           ; preds = %..preheader_crit_edge.us.us, %middle.block288
  %indvars.iv193.ph = phi i64 [ %i.oa, %..preheader_crit_edge.us.us ], [ %i.of, %middle.block288 ]
  br label %scalar.ph272

._crit_edge161.us.us:                             ; preds = %scalar.ph272, %middle.block288
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %._crit_edge164, label %.preheader137.us.us, !llvm.loop !153

scalar.ph258:                                     ; preds = %scalar.ph258.prol.loopexit, %scalar.ph258
  %indvars.iv178 = phi i64 [ %indvars.iv.next179.1, %scalar.ph258 ], [ %indvars.iv178.unr, %scalar.ph258.prol.loopexit ] ; 4 uses
  %i.pc = mul nuw nsw i64 %indvars.iv178, %i.jd
  %i.pd = add nuw nsw i64 %i.pc, %indvars.iv183   ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.pd
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !18
  %i.pg = add nuw nsw i64 %indvars.iv178, %i.km   ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.pg
  store float %i.pf, ptr %i.ph, align 4, !tbaa !18
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.pd
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !18
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.pg
  store float %i.pj, ptr %i.pk, align 4, !tbaa !18
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.pl = mul nuw nsw i64 %indvars.iv.next179, %i.jd
  %i.pm = add nuw nsw i64 %i.pl, %indvars.iv183   ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.pm
  %i.po = load float, ptr %i.pn, align 4, !tbaa !18
  %i.pp = add nuw nsw i64 %indvars.iv.next179, %i.km ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.pp
  store float %i.po, ptr %i.pq, align 4, !tbaa !18
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.pm
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !18
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.pp
  store float %i.ps, ptr %i.pt, align 4, !tbaa !18
  %indvars.iv.next179.1 = add nuw nsw i64 %indvars.iv178, 2 ; 2 uses
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next179.1, %i.je
  br i1 %exitcond182.not.1, label %._crit_edge, label %scalar.ph258, !llvm.loop !154

._crit_edge:                                      ; preds = %scalar.ph258.prol.loopexit, %scalar.ph258, %middle.block269
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %.preheader138, label %.preheader139, !llvm.loop !155

._crit_edge164:                                   ; preds = %._crit_edge161.us.us, %.preheader137.lr.ph, %.preheader138
  store ptr %.0125, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !38
  store ptr %.0124, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !49
  store i32 %spec.store.select135, ptr @hexblep, align 8, !tbaa !20
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge164
  tail call void @free(ptr noundef %i.t) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge164
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
end_hunk_0
