Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_bitsplit_top8_binding?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_bitsplit_top8(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 4 uses
  %i.c = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.b) #6 ; 2 uses
  %i.d = tail call i64 @ZL_Data_numElts(ptr noundef %i.b) #6 ; 14 uses
  %i.e = tail call ptr @ZL_Data_rPtr(ptr noundef %i.b) #6 ; 17 uses
  %i.f = icmp ne i64 %i.d, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.c)
  %i.h = icmp eq i64 %i.g, 1
  %or.cond.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i, label %.split.i, label %.thread

.split.i:                                         ; preds = %bb.a
  %i.i = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.c, i1 true) ; 7 uses
  switch i64 %i.i, label %.thread [
    i64 0, label %.preheader.i.preheader
    i64 1, label %.preheader53.i.preheader.a
    i64 2, label %.preheader55.i.preheader
    i64 3, label %.preheader57.i.preheader
  ]

.preheader55.i.preheader:                         ; preds = %.split.i
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %3 = icmp ult i64 %i.d, 4
  br i1 %3, label %.preheader55.i.epil.preheader, label %.preheader55.i.preheader.new

.preheader55.i.preheader.new:                     ; preds = %.preheader55.i.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.preheader55.i.a

.preheader53.i.preheader.a:                       ; preds = %.split.i
  %xtraiter42 = and i64 %i.d, 3                   ; 3 uses
  %i.j = icmp ult i64 %i.d, 4
  br i1 %i.j, label %.preheader53.i.epil.preheader, label %.preheader53.i.preheader.new

.preheader53.i.preheader.new:                     ; preds = %.preheader53.i.preheader.a
  %unroll_iter47 = and i64 %i.d, -4
  br label %.preheader53.i.a

.preheader.i.preheader:                           ; preds = %.split.i
  %4 = sub i64 %i.d, %i.i
  %xtraiter49 = and i64 %4, 3                     ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.04166.i.prol = phi i64 [ %7, %.preheader.i.prol ], [ %i.i, %.preheader.i.preheader ] ; 2 uses
  %.04265.i.prol = phi i64 [ %spec.select.i.prol, %.preheader.i.prol ], [ %i.i, %.preheader.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04166.i.prol
  %5 = load i8, ptr %i.k, align 1, !tbaa !22
  %6 = zext i8 %5 to i64
  %spec.select.i.prol = tail call i64 @llvm.umax.i64(i64 %.04265.i.prol, i64 %6) ; 3 uses
  %7 = add nuw i64 %.04166.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter49
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !11

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %spec.select.i.lcssa.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %spec.select.i.prol, %.preheader.i.prol ]
  %.04166.i.unr = phi i64 [ %i.i, %.preheader.i.preheader ], [ %7, %.preheader.i.prol ]
  %.04265.i.unr = phi i64 [ %i.i, %.preheader.i.preheader ], [ %spec.select.i.prol, %.preheader.i.prol ]
  %8 = sub i64 %i.i, %i.d
  %9 = icmp ugt i64 %8, -4
  br i1 %9, label %findMaxValue.exit, label %.preheader.i.a

.preheader57.i.preheader:                         ; preds = %.split.i
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.preheader57.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %.preheader57.i.preheader
  %n.vec = and i64 %i.d, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %vec.phi33 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %wide.load = load <2 x i64>, ptr %10, align 8, !tbaa !25
  %wide.load34 = load <2 x i64>, ptr %i.l, align 8, !tbaa !25
  %11 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load, <2 x i64> %vec.phi) ; 2 uses
  %12 = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %wide.load34, <2 x i64> %vec.phi33) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %11, <2 x i64> %12)
  %13 = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n.a = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n.a, label %findMaxValue.exit, label %.preheader57.i.preheader37

.preheader57.i.preheader37:                       ; preds = %.preheader57.i.preheader, %middle.block
  %.060.i.ph.a = phi i64 [ 0, %.preheader57.i.preheader ], [ %n.vec, %middle.block ]
  %.659.i.ph.a = phi i64 [ 0, %.preheader57.i.preheader ], [ %13, %middle.block ]
  br label %.preheader57.i.a

.preheader.i.a:                                   ; preds = %.preheader.i.prol.loopexit, %.preheader.i.a
  %.04166.i = phi i64 [ %i.o, %.preheader.i.a ], [ %.04166.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %.04265.i.a = phi i64 [ %spec.select.i.3, %.preheader.i.a ], [ %.04265.i.unr, %.preheader.i.prol.loopexit ]
  %14 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04166.i
  %15 = load i8, ptr %14, align 1, !tbaa !22
  %16 = zext i8 %15 to i64
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %.04265.i.a, i64 %16)
  %17 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04166.i
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !22
  %20 = zext i8 %19 to i64
  %spec.select.i.1 = tail call i64 @llvm.umax.i64(i64 %spec.select.i, i64 %20)
  %21 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04166.i
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !22
  %24 = zext i8 %23 to i64
  %spec.select.i.2 = tail call i64 @llvm.umax.i64(i64 %spec.select.i.1, i64 %24)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %.04166.i
  %25 = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %26 = load i8, ptr %25, align 1, !tbaa !22
  %27 = zext i8 %26 to i64
  %spec.select.i.3 = tail call i64 @llvm.umax.i64(i64 %spec.select.i.2, i64 %27) ; 2 uses
  %i.o = add nuw i64 %.04166.i, 4                 ; 2 uses
  %exitcond72.not.i.3 = icmp eq i64 %i.o, %i.d
  br i1 %exitcond72.not.i.3, label %findMaxValue.exit, label %.preheader.i.a, !llvm.loop !13

.preheader53.i.a:                                 ; preds = %.preheader53.i.a, %.preheader53.i.preheader.new
  %.04064.i = phi i64 [ 0, %.preheader53.i.preheader.new ], [ %42, %.preheader53.i.a ] ; 5 uses
  %.263.i = phi i64 [ 0, %.preheader53.i.preheader.new ], [ %spec.select49.i.3, %.preheader53.i.a ]
  %niter48 = phi i64 [ 0, %.preheader53.i.preheader.new ], [ %niter48.next.3, %.preheader53.i.a ]
  %28 = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.04064.i
  %29 = load i16, ptr %28, align 2, !tbaa !30
  %30 = zext i16 %29 to i64
  %spec.select49.i = tail call i64 @llvm.umax.i64(i64 %.263.i, i64 %30)
  %31 = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.04064.i
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 2
  %33 = load i16, ptr %32, align 2, !tbaa !30
  %34 = zext i16 %33 to i64
  %spec.select49.i.1 = tail call i64 @llvm.umax.i64(i64 %spec.select49.i, i64 %34)
  %35 = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.04064.i
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %37 = load i16, ptr %36, align 2, !tbaa !30
  %38 = zext i16 %37 to i64
  %spec.select49.i.2 = tail call i64 @llvm.umax.i64(i64 %spec.select49.i.1, i64 %38)
  %39 = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.04064.i
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 6
  %41 = load i16, ptr %40, align 2, !tbaa !30
  %i.p = zext i16 %41 to i64
  %spec.select49.i.3 = tail call i64 @llvm.umax.i64(i64 %spec.select49.i.2, i64 %i.p) ; 3 uses
  %42 = add nuw i64 %.04064.i, 4                  ; 2 uses
  %niter48.next.3 = add nuw i64 %niter48, 4       ; 2 uses
  %niter48.ncmp.3 = icmp eq i64 %niter48.next.3, %unroll_iter47
  br i1 %niter48.ncmp.3, label %findMaxValue.exit.loopexit35.unr-lcssa, label %.preheader53.i.a, !llvm.loop !14

.preheader55.i.a:                                 ; preds = %.preheader55.i.a, %.preheader55.i.preheader.new
  %.03962.i = phi i64 [ 0, %.preheader55.i.preheader.new ], [ %56, %.preheader55.i.a ] ; 5 uses
  %.461.i = phi i64 [ 0, %.preheader55.i.preheader.new ], [ %spec.select50.i.3, %.preheader55.i.a ]
  %niter = phi i64 [ 0, %.preheader55.i.preheader.new ], [ %niter.next.3, %.preheader55.i.a ]
  %43 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.03962.i
  %44 = load i32, ptr %43, align 4, !tbaa !31
  %45 = zext i32 %44 to i64
  %spec.select50.i = tail call i64 @llvm.umax.i64(i64 %.461.i, i64 %45)
  %46 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.03962.i
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 4
  %48 = load i32, ptr %47, align 4, !tbaa !31
  %49 = zext i32 %48 to i64
  %spec.select50.i.1 = tail call i64 @llvm.umax.i64(i64 %spec.select50.i, i64 %49)
  %50 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.03962.i
  %i.q = getelementptr inbounds nuw i8, ptr %50, i64 8
  %51 = load i32, ptr %i.q, align 4, !tbaa !31
  %52 = zext i32 %51 to i64
  %spec.select50.i.2 = tail call i64 @llvm.umax.i64(i64 %spec.select50.i.1, i64 %52)
  %53 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.03962.i
  %i.r = getelementptr inbounds nuw i8, ptr %53, i64 12
  %54 = load i32, ptr %i.r, align 4, !tbaa !31
  %55 = zext i32 %54 to i64
  %spec.select50.i.3 = tail call i64 @llvm.umax.i64(i64 %spec.select50.i.2, i64 %55) ; 3 uses
  %56 = add nuw i64 %.03962.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %findMaxValue.exit.loopexit36.unr-lcssa, label %.preheader55.i.a, !llvm.loop !15

.preheader57.i.a:                                 ; preds = %.preheader57.i.preheader37, %.preheader57.i.a
  %.060.i = phi i64 [ %59, %.preheader57.i.a ], [ %.060.i.ph.a, %.preheader57.i.preheader37 ] ; 2 uses
  %.659.i = phi i64 [ %spec.select51.i, %.preheader57.i.a ], [ %.659.i.ph.a, %.preheader57.i.preheader37 ]
  %57 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.060.i
  %58 = load i64, ptr %57, align 8, !tbaa !25
  %spec.select51.i = tail call i64 @llvm.umax.i64(i64 %58, i64 %.659.i) ; 2 uses
  %59 = add nuw i64 %.060.i, 1                    ; 2 uses
  %exitcond.not.i.a = icmp eq i64 %59, %i.d
  br i1 %exitcond.not.i.a, label %findMaxValue.exit, label %.preheader57.i.a, !llvm.loop !16

findMaxValue.exit.loopexit35.unr-lcssa:           ; preds = %.preheader53.i.a
  %lcmp.mod44.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %findMaxValue.exit, label %.preheader53.i.epil.preheader

.preheader53.i.epil.preheader:                    ; preds = %findMaxValue.exit.loopexit35.unr-lcssa, %.preheader53.i.preheader.a
  %.04064.i.epil.init = phi i64 [ 0, %.preheader53.i.preheader.a ], [ %42, %findMaxValue.exit.loopexit35.unr-lcssa ]
  %.263.i.epil.init = phi i64 [ 0, %.preheader53.i.preheader.a ], [ %spec.select49.i.3, %findMaxValue.exit.loopexit35.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.preheader53.i.epil

.preheader53.i.epil:                              ; preds = %.preheader53.i.epil, %.preheader53.i.epil.preheader
  %.04064.i.epil = phi i64 [ %60, %.preheader53.i.epil ], [ %.04064.i.epil.init, %.preheader53.i.epil.preheader ] ; 2 uses
  %.263.i.epil = phi i64 [ %spec.select49.i.epil, %.preheader53.i.epil ], [ %.263.i.epil.init, %.preheader53.i.epil.preheader ]
  %epil.iter43 = phi i64 [ %epil.iter43.next, %.preheader53.i.epil ], [ 0, %.preheader53.i.epil.preheader ]
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.04064.i.epil
  %i.t = load i16, ptr %i.s, align 2, !tbaa !30
  %i.u = zext i16 %i.t to i64
  %spec.select49.i.epil = tail call i64 @llvm.umax.i64(i64 %.263.i.epil, i64 %i.u) ; 2 uses
  %60 = add nuw i64 %.04064.i.epil, 1
  %epil.iter43.next = add i64 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i64 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %findMaxValue.exit, label %.preheader53.i.epil, !llvm.loop !17

findMaxValue.exit.loopexit36.unr-lcssa:           ; preds = %.preheader55.i.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %findMaxValue.exit, label %.preheader55.i.epil.preheader

.preheader55.i.epil.preheader:                    ; preds = %findMaxValue.exit.loopexit36.unr-lcssa, %.preheader55.i.preheader
  %.03962.i.epil.init = phi i64 [ 0, %.preheader55.i.preheader ], [ %56, %findMaxValue.exit.loopexit36.unr-lcssa ]
  %.461.i.epil.init = phi i64 [ 0, %.preheader55.i.preheader ], [ %spec.select50.i.3, %findMaxValue.exit.loopexit36.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.preheader55.i.epil

.preheader55.i.epil:                              ; preds = %.preheader55.i.epil, %.preheader55.i.epil.preheader
  %.03962.i.epil = phi i64 [ %64, %.preheader55.i.epil ], [ %.03962.i.epil.init, %.preheader55.i.epil.preheader ] ; 2 uses
  %.461.i.epil = phi i64 [ %spec.select50.i.epil, %.preheader55.i.epil ], [ %.461.i.epil.init, %.preheader55.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader55.i.epil ], [ 0, %.preheader55.i.epil.preheader ]
  %61 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.03962.i.epil
  %62 = load i32, ptr %61, align 4, !tbaa !31
  %63 = zext i32 %62 to i64
  %spec.select50.i.epil = tail call i64 @llvm.umax.i64(i64 %.461.i.epil, i64 %63) ; 2 uses
  %64 = add nuw i64 %.03962.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %findMaxValue.exit, label %.preheader55.i.epil, !llvm.loop !18

findMaxValue.exit:                                ; preds = %.preheader57.i.a, %findMaxValue.exit.loopexit36.unr-lcssa, %.preheader55.i.epil, %findMaxValue.exit.loopexit35.unr-lcssa, %.preheader53.i.epil, %.preheader.i.prol.loopexit, %.preheader.i.a, %middle.block
  %.043.i = phi i64 [ %spec.select.i.3, %.preheader.i.a ], [ %spec.select50.i.epil, %.preheader55.i.epil ], [ %spec.select49.i.epil, %.preheader53.i.epil ], [ %13, %middle.block ], [ %spec.select.i.lcssa.unr, %.preheader.i.prol.loopexit ], [ %spec.select49.i.3, %findMaxValue.exit.loopexit35.unr-lcssa ], [ %spec.select50.i.3, %findMaxValue.exit.loopexit36.unr-lcssa ], [ %spec.select51.i, %.preheader57.i.a ] ; 3 uses
  %i.v = icmp eq i64 %.043.i, 0
  br i1 %i.v, label %.thread, label %bb.b

.thread:                                          ; preds = %findMaxValue.exit, %bb.a, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.b:                                             ; preds = %findMaxValue.exit
  %i.w = lshr i64 %.043.i, 1
  %i.x = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 false)
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = sub nuw nsw i32 65, %i.y                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.aa = icmp ult i64 %.043.i, 256
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread, %bb.b
  %.01519 = phi i32 [ 0, %.thread ], [ %i.z, %bb.b ]
  %i.ab = tail call i32 @llvm.umax.i32(i32 %.01519, i32 1)
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  store i8 %i.ac, ptr %i.a, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = trunc nuw nsw i32 %i.z to i8
  %i.ae = add nsw i8 %i.ad, -8
  store i8 %i.ae, ptr %i.a, align 1, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 8, ptr %i.af, align 1, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ 1, %bb.c ], [ 2, %bb.d ]
  %i.ag = call { i32, i64 } @EI_bitSplit_withWidths(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %i.a, i64 noundef %.0) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !26, !27, !28}
!13 = distinct !{!13, !26}
!14 = distinct !{!14, !26}
!15 = distinct !{!15, !26}
!16 = distinct !{!16, !26, !28, !27}
!17 = distinct !{!17, !23}
!18 = distinct !{!18, !23}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"p1 _ZTS10ZL_Input_s", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!"long", !7, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"short", !7, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!8, !8, i64 0}
end_hunk_0
