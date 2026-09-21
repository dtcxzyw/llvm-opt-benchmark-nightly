Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_bitsplit_top8_binding?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_bitsplit_top8(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 4 uses
  %i.c = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.b) #5 ; 2 uses
  %i.d = tail call i64 @ZL_Data_numElts(ptr noundef %i.b) #5 ; 17 uses
  %i.e = tail call ptr @ZL_Data_rPtr(ptr noundef %i.b) #5 ; 8 uses
  %i.f = icmp ne i64 %i.d, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.c)
  %i.h = icmp eq i64 %i.g, 1
  %or.cond.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i, label %.split.i, label %.thread

.split.i:                                         ; preds = %bb.a
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.c, i1 true)
  switch i64 %i.i, label %.thread [
    i64 0, label %.preheader.i.preheader
    i64 1, label %.preheader53.i.preheader
    i64 2, label %.preheader57.i.preheader
    i64 3, label %.preheader53.i.preheader.a
  ]

.preheader53.i.preheader.a:                       ; preds = %.split.i
  %i.j = icmp ult i64 %i.d, 4
  br i1 %i.j, label %.preheader57.i.preheader93, label %.preheader53.i.preheader.new

.preheader53.i.preheader.new:                     ; preds = %.preheader53.i.preheader.a
  %unroll_iter47 = and i64 %i.d, -4               ; 3 uses
  br label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.prol, %.preheader53.i.preheader.new
  %.04166.i.prol = phi i64 [ 0, %.preheader53.i.preheader.new ], [ %prol.iter.next, %.preheader.i.prol ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.preheader53.i.preheader.new ], [ %4, %.preheader.i.prol ]
  %vec.phi33 = phi <2 x i64> [ zeroinitializer, %.preheader53.i.preheader.new ], [ %5, %.preheader.i.prol ]
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04166.i.prol ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <2 x i64>, ptr %3, align 8, !tbaa !23
  %wide.load34 = load <2 x i64>, ptr %i.k, align 8, !tbaa !23
  %4 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load, <2 x i64> %vec.phi) ; 2 uses
  %5 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load34, <2 x i64> %vec.phi33) ; 2 uses
  %prol.iter.next = add nuw i64 %.04166.i.prol, 4 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %unroll_iter47
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !11

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %4, <2 x i64> %5)
  %6 = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %unroll_iter47
  br i1 %cmp.n, label %findMaxValue.exit, label %.preheader57.i.preheader93

.preheader57.i.preheader93:                       ; preds = %.preheader53.i.preheader.a, %.preheader.i.prol.loopexit
  %.060.i.ph = phi i64 [ 0, %.preheader53.i.preheader.a ], [ %unroll_iter47, %.preheader.i.prol.loopexit ]
  %.659.i.ph = phi i64 [ 0, %.preheader53.i.preheader.a ], [ %6, %.preheader.i.prol.loopexit ]
  br label %.preheader55.i.epil

.preheader57.i.preheader:                         ; preds = %.split.i
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.preheader57.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.preheader57.i.preheader
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi41 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %vec.phi42 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %wide.load43 = load <2 x i32>, ptr %7, align 4, !tbaa !27
  %wide.load44 = load <2 x i32>, ptr %i.l, align 4, !tbaa !27
  %8 = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi41, <2 x i32> %wide.load43) ; 2 uses
  %9 = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %vec.phi42, <2 x i32> %wide.load44) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %rdx.minmax47 = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %8, <2 x i32> %9)
  %10 = tail call i32 @llvm.vector.reduce.umax.v2i32(<2 x i32> %rdx.minmax47)
  %11 = zext i32 %10 to i64                       ; 2 uses
  %cmp.n.a = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n.a, label %findMaxValue.exit, label %.preheader57.i.preheader37

.preheader57.i.preheader37:                       ; preds = %.preheader57.i.preheader, %middle.block
  %.060.i.ph.a = phi i64 [ 0, %.preheader57.i.preheader ], [ %n.vec, %middle.block ]
  %.659.i.ph.a = phi i64 [ 0, %.preheader57.i.preheader ], [ %11, %middle.block ]
  br label %.preheader55.i.epil.preheader

.preheader53.i.preheader:                         ; preds = %.split.i
  %min.iters.check52 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check52, label %.preheader53.i.preheader85, label %vector.ph53

vector.ph53:                                      ; preds = %.preheader53.i.preheader
  %n.vec54 = and i64 %i.d, -4                     ; 3 uses
  br label %.preheader.i.a

.preheader.i.a:                                   ; preds = %.preheader.i.a, %vector.ph53
  %.04265.i.a = phi i64 [ 0, %vector.ph53 ], [ %i.o, %.preheader.i.a ] ; 2 uses
  %vec.phi57 = phi <2 x i16> [ zeroinitializer, %vector.ph53 ], [ %13, %.preheader.i.a ]
  %vec.phi58 = phi <2 x i16> [ zeroinitializer, %vector.ph53 ], [ %14, %.preheader.i.a ]
  %12 = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.04265.i.a ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 4
  %wide.load59 = load <2 x i16>, ptr %12, align 2, !tbaa !29
  %wide.load60 = load <2 x i16>, ptr %i.n, align 2, !tbaa !29
  %13 = tail call <2 x i16> @llvm.umax.v2i16(<2 x i16> %vec.phi57, <2 x i16> %wide.load59) ; 2 uses
  %14 = tail call <2 x i16> @llvm.umax.v2i16(<2 x i16> %vec.phi58, <2 x i16> %wide.load60) ; 2 uses
  %i.o = add nuw i64 %.04265.i.a, 4               ; 2 uses
  %exitcond72.not.i.3 = icmp eq i64 %i.o, %n.vec54
  br i1 %exitcond72.not.i.3, label %.preheader53.i.a, label %.preheader.i.a, !llvm.loop !13

.preheader53.i.a:                                 ; preds = %.preheader.i.a
  %rdx.minmax63 = tail call <2 x i16> @llvm.umax.v2i16(<2 x i16> %13, <2 x i16> %14)
  %15 = tail call i16 @llvm.vector.reduce.umax.v2i16(<2 x i16> %rdx.minmax63)
  %i.p = zext i16 %15 to i64                      ; 2 uses
  %niter48.ncmp.3 = icmp eq i64 %i.d, %n.vec54
  br i1 %niter48.ncmp.3, label %findMaxValue.exit, label %.preheader53.i.preheader85

.preheader53.i.preheader85:                       ; preds = %.preheader53.i.preheader, %.preheader53.i.a
  %.04064.i.ph = phi i64 [ 0, %.preheader53.i.preheader ], [ %n.vec54, %.preheader53.i.a ]
  %.263.i.ph = phi i64 [ 0, %.preheader53.i.preheader ], [ %i.p, %.preheader53.i.a ]
  br label %.preheader53.i.epil

.preheader.i.preheader:                           ; preds = %.split.i
  %min.iters.check68 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check68, label %findMaxValue.exit.loopexit35.unr-lcssa, label %vector.ph69

vector.ph69:                                      ; preds = %.preheader.i.preheader
  %n.vec70 = and i64 %i.d, -4                     ; 3 uses
  br label %.preheader55.i.a

.preheader55.i.a:                                 ; preds = %.preheader55.i.a, %vector.ph69
  %niter = phi i64 [ 0, %vector.ph69 ], [ %niter.next.3, %.preheader55.i.a ] ; 2 uses
  %vec.phi73 = phi <2 x i8> [ zeroinitializer, %vector.ph69 ], [ %16, %.preheader55.i.a ]
  %vec.phi74 = phi <2 x i8> [ zeroinitializer, %vector.ph69 ], [ %17, %.preheader55.i.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %niter ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %wide.load75 = load <2 x i8>, ptr %i.q, align 1, !tbaa !30
  %wide.load76 = load <2 x i8>, ptr %i.r, align 1, !tbaa !30
  %16 = tail call <2 x i8> @llvm.umax.v2i8(<2 x i8> %vec.phi73, <2 x i8> %wide.load75) ; 2 uses
  %17 = tail call <2 x i8> @llvm.umax.v2i8(<2 x i8> %vec.phi74, <2 x i8> %wide.load76) ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %n.vec70
  br i1 %niter.ncmp.3, label %.preheader57.i.a, label %.preheader55.i.a, !llvm.loop !14

.preheader57.i.a:                                 ; preds = %.preheader55.i.a
  %rdx.minmax79 = tail call <2 x i8> @llvm.umax.v2i8(<2 x i8> %16, <2 x i8> %17)
  %18 = tail call i8 @llvm.vector.reduce.umax.v2i8(<2 x i8> %rdx.minmax79)
  %19 = zext i8 %18 to i64                        ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %i.d, %n.vec70
  br i1 %exitcond.not.i.a, label %findMaxValue.exit, label %findMaxValue.exit.loopexit35.unr-lcssa

findMaxValue.exit.loopexit35.unr-lcssa:           ; preds = %.preheader.i.preheader, %.preheader57.i.a
  %.04166.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec70, %.preheader57.i.a ]
  %.04265.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %19, %.preheader57.i.a ]
  br label %.preheader53.i.epil.preheader

.preheader53.i.epil.preheader:                    ; preds = %findMaxValue.exit.loopexit35.unr-lcssa, %.preheader53.i.epil.preheader
  %.04064.i.epil.init = phi i64 [ %23, %.preheader53.i.epil.preheader ], [ %.04166.i.ph, %findMaxValue.exit.loopexit35.unr-lcssa ] ; 2 uses
  %.263.i.epil.init = phi i64 [ %spec.select.i, %.preheader53.i.epil.preheader ], [ %.04265.i.ph, %findMaxValue.exit.loopexit35.unr-lcssa ]
  %20 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04064.i.epil.init
  %21 = load i8, ptr %20, align 1, !tbaa !30
  %22 = zext i8 %21 to i64
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.263.i.epil.init, i64 %22) ; 2 uses
  %23 = add nuw i64 %.04064.i.epil.init, 1        ; 2 uses
  %exitcond72.not.i = icmp eq i64 %23, %i.d
  br i1 %exitcond72.not.i, label %findMaxValue.exit, label %.preheader53.i.epil.preheader, !llvm.loop !15

.preheader53.i.epil:                              ; preds = %.preheader53.i.preheader85, %.preheader53.i.epil
  %.263.i.epil = phi i64 [ %epil.iter43.next, %.preheader53.i.epil ], [ %.04064.i.ph, %.preheader53.i.preheader85 ] ; 2 uses
  %epil.iter43 = phi i64 [ %spec.select49.i.epil, %.preheader53.i.epil ], [ %.263.i.ph, %.preheader53.i.preheader85 ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.263.i.epil
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29
  %i.u = zext i16 %i.t to i64
  %spec.select49.i.epil = tail call i64 @llvm.umax.i64(i64 %epil.iter43, i64 %i.u) ; 2 uses
  %epil.iter43.next = add nuw i64 %.263.i.epil, 1 ; 2 uses
  %epil.iter43.cmp.not = icmp eq i64 %epil.iter43.next, %i.d
  br i1 %epil.iter43.cmp.not, label %findMaxValue.exit, label %.preheader53.i.epil, !llvm.loop !16

.preheader55.i.epil.preheader:                    ; preds = %.preheader57.i.preheader37, %.preheader55.i.epil.preheader
  %.03962.i.epil.init = phi i64 [ %27, %.preheader55.i.epil.preheader ], [ %.060.i.ph.a, %.preheader57.i.preheader37 ] ; 2 uses
  %.461.i.epil.init = phi i64 [ %spec.select50.i, %.preheader55.i.epil.preheader ], [ %.659.i.ph.a, %.preheader57.i.preheader37 ]
  %24 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.03962.i.epil.init
  %25 = load i32, ptr %24, align 4, !tbaa !27
  %26 = zext i32 %25 to i64
  %spec.select50.i = tail call i64 @llvm.umax.i64(i64 %.461.i.epil.init, i64 %26) ; 2 uses
  %27 = add nuw i64 %.03962.i.epil.init, 1        ; 2 uses
  %exitcond70.not.i = icmp eq i64 %27, %i.d
  br i1 %exitcond70.not.i, label %findMaxValue.exit, label %.preheader55.i.epil.preheader, !llvm.loop !17

.preheader55.i.epil:                              ; preds = %.preheader57.i.preheader93, %.preheader55.i.epil
  %.461.i.epil = phi i64 [ %epil.iter.next, %.preheader55.i.epil ], [ %.060.i.ph, %.preheader57.i.preheader93 ] ; 2 uses
  %epil.iter = phi i64 [ %spec.select50.i.epil, %.preheader55.i.epil ], [ %.659.i.ph, %.preheader57.i.preheader93 ]
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.461.i.epil
  %29 = load i64, ptr %28, align 8, !tbaa !23
  %spec.select50.i.epil = tail call i64 @llvm.umax.i64(i64 %29, i64 %epil.iter) ; 2 uses
  %epil.iter.next = add nuw i64 %.461.i.epil, 1   ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.d
  br i1 %epil.iter.cmp.not, label %findMaxValue.exit, label %.preheader55.i.epil, !llvm.loop !18

findMaxValue.exit:                                ; preds = %.preheader55.i.epil, %.preheader55.i.epil.preheader, %.preheader53.i.epil, %.preheader53.i.epil.preheader, %.preheader.i.prol.loopexit, %middle.block, %.preheader53.i.a, %.preheader57.i.a
  %.043.i = phi i64 [ %spec.select.i, %.preheader53.i.epil.preheader ], [ %spec.select50.i, %.preheader55.i.epil.preheader ], [ %spec.select49.i.epil, %.preheader53.i.epil ], [ %19, %.preheader57.i.a ], [ %i.p, %.preheader53.i.a ], [ %11, %middle.block ], [ %6, %.preheader.i.prol.loopexit ], [ %spec.select50.i.epil, %.preheader55.i.epil ] ; 3 uses
  %i.v = icmp eq i64 %.043.i, 0
  br i1 %i.v, label %.thread, label %bb.b

.thread:                                          ; preds = %findMaxValue.exit, %bb.a, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.b:                                             ; preds = %findMaxValue.exit
  %i.w = lshr i64 %.043.i, 1
  %i.x = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 false)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = sub nuw nsw i32 65, %i.y                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.aa = icmp ult i64 %.043.i, 256
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %.01519 = phi i32 [ 0, %.thread ], [ %i.z, %bb.b ]
  %i.ab = tail call i32 @llvm.umax.i32(i32 %.01519, i32 1)
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  store i8 %i.ac, ptr %i.a, align 1, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = trunc nuw nsw i32 %i.z to i8
  %i.ae = add nsw i8 %i.ad, -8
  store i8 %i.ae, ptr %i.a, align 1, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 8, ptr %i.af, align 1, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ 1, %bb.c ], [ 2, %bb.d ]
  %i.ag = call { i32, i64 } @EI_bitSplit_withWidths(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef %.0) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret { i32, i64 } %i.ag
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, i64 } @EI_bitSplit_withWidths(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @ZL_Data_eltWidth(ptr noundef) local_unnamed_addr #2

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #2

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v2i32(<2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.umax.v2i16(<2 x i16>, <2 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v2i16(<2 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.umax.v2i8(<2 x i8>, <2 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.umax.v2i8(<2 x i8>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !24, !25, !26}
!12 = distinct !{!12, !24, !25, !26}
!13 = distinct !{!13, !24, !25, !26}
!14 = distinct !{!14, !24, !25, !26}
!15 = distinct !{!15, !24, !26, !25}
!16 = distinct !{!16, !24, !26, !25}
!17 = distinct !{!17, !24, !26, !25}
!18 = distinct !{!18, !24, !26, !25}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"p1 _ZTS10ZL_Input_s", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!8, !8, i64 0}
!28 = !{!"short", !7, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!7, !7, i64 0}
end_hunk_0
