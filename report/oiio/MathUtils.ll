inline.NumInlined: 58
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@imath_half_to_float_table = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 2 uses
  %i.b = and i32 %i.a, 2139095040
  %i.c = icmp eq i32 %i.b, 2139095040
  br i1 %i.c, label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float @llvm.fabs.f32(float %0) ; 2 uses
  %i.e = fneg float %i.d
  %i.f = bitcast float %i.e to i32
  %i.g = bitcast float %i.d to i32
  %i.h = sub nuw i32 -2147483648, %i.g
  %.narrow.i27.i = icmp sgt i32 %i.a, 0
  %i.i = select i1 %.narrow.i27.i, i32 %i.f, i32 %i.h ; 3 uses
  %i.j = sub nuw i32 -2147483648, %i.i
  %i.k = xor i32 %i.i, -2147483648
  %.narrow = icmp sgt i32 %i.i, 0
  %i.l = select i1 %.narrow, i32 %i.j, i32 %i.k
  %i.m = icmp ult i32 %i.l, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_512FloatsDifferEffib(float noundef %0, float noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %4 = insertelement <2 x float> poison, float %0, i64 0
  %5 = insertelement <2 x float> %4, float %1, i64 1
  %6 = bitcast <2 x float> %5 to <2 x i32>        ; 3 uses
  %i.a = bitcast float %0 to i32                  ; 4 uses
  %7 = and i32 %i.a, 8388607
  %8 = bitcast float %1 to i32                    ; 4 uses
  %i.b = and i32 %8, 8388607
  %i.c = and i32 %i.a, 2139095040
  %i.d = icmp eq i32 %i.c, 2139095040
  %i.e = and i32 %8, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040             ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %7, 0
  %i.h = icmp eq i32 %i.b, 0
  %i.i = or i32 %8, %i.a
  %i.j = and i32 %i.i, 8388607
  %brmerge.not = icmp eq i32 %i.j, 0
  %.mux = or i1 %i.g, %i.h
  %.unshifted = xor i32 %8, %i.a
  %i.k = icmp slt i32 %.unshifted, 0
  %spec.select = select i1 %brmerge.not, i1 %i.k, i1 %.mux
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call float @llvm.fabs.f32(float %0) ; 2 uses
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %9 = add nuw <2 x i32> %6, splat (i32 2139095041)
  %10 = icmp slt <2 x i32> %6, zeroinitializer
  %i.m = tail call float @llvm.fabs.f32(float %1)
  %11 = insertelement <2 x float> poison, float %i.l, i64 0
  %12 = insertelement <2 x float> %11, float %i.m, i64 1
  %13 = bitcast <2 x float> %12 to <2 x i32>      ; 2 uses
  %14 = icmp samesign ult <2 x i32> %13, splat (i32 8388608)
  %15 = sub nuw <2 x i32> splat (i32 -2139095041), %13
  %16 = select <2 x i1> %10, <2 x i32> %15, <2 x i32> %9
  %17 = select <2 x i1> %14, <2 x i32> splat (i32 -2147483648), <2 x i32> %16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %18 = icmp sgt <2 x i32> %6, zeroinitializer
  %19 = tail call float @llvm.fabs.f32(float %1)
  %20 = insertelement <2 x float> poison, float %i.l, i64 0
  %21 = insertelement <2 x float> %20, float %19, i64 1 ; 2 uses
  %22 = fneg <2 x float> %21
  %23 = bitcast <2 x float> %22 to <2 x i32>
  %24 = bitcast <2 x float> %21 to <2 x i32>
  %25 = sub nuw <2 x i32> splat (i32 -2147483648), %24
  %26 = select <2 x i1> %18, <2 x i32> %23, <2 x i32> %25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %27 = phi <2 x i32> [ %17, %bb.f ], [ %26, %bb.g ] ; 2 uses
  %28 = extractelement <2 x i32> %27, i64 0       ; 3 uses
  %29 = extractelement <2 x i32> %27, i64 1       ; 3 uses
  %i.n = icmp ugt i32 %28, %29
  %i.o = sub nuw i32 %28, %29
  %i.p = sub nuw i32 %29, %28
  %i.q = select i1 %i.n, i32 %i.o, i32 %i.p
  %i.r = icmp ugt i32 %i.q, %2
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.h
  %.1 = phi i1 [ %i.r, %bb.h ], [ %spec.select, %bb.c ], [ true, %bb.b ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fptrunc double %0 to float               ; 2 uses
  %i.b = bitcast float %i.a to i32                ; 2 uses
  %i.c = and i32 %i.b, 2139095040
  %i.d = icmp eq i32 %i.c, 2139095040
  br i1 %i.d, label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call float @llvm.fabs.f32(float %i.a) ; 2 uses
  %i.f = fneg float %i.e
  %i.g = bitcast float %i.f to i32
  %i.h = bitcast float %i.e to i32
  %i.i = sub nuw i32 -2147483648, %i.h
  %.narrow.i27.i = icmp sgt i32 %i.b, 0
  %i.j = select i1 %.narrow.i27.i, i32 %i.g, i32 %i.i ; 3 uses
  %i.k = sub nuw i32 -2147483648, %i.j
  %i.l = xor i32 %i.j, -2147483648
  %.narrow = icmp sgt i32 %i.j, 0
  %i.m = select i1 %.narrow, i32 %i.k, i32 %i.l
  %i.n = icmp ult i32 %i.m, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.n, %bb.b ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 2 uses
  %i.b = and i32 %i.a, 2139095040
  %i.c = icmp eq i32 %i.b, 2139095040
  br i1 %i.c, label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float @llvm.fabs.f32(float %0) ; 2 uses
  %i.e = fneg float %i.d
  %i.f = bitcast float %i.e to i32
  %i.g = bitcast float %i.d to i32
  %i.h = sub nuw i32 -2147483648, %i.g
  %.narrow.i27.i = icmp sgt i32 %i.a, 0
  %i.i = select i1 %.narrow.i27.i, i32 %i.f, i32 %i.h ; 3 uses
  %i.j = icmp ult i32 %i.i, -1082130432
  %i.k = sub nuw i32 -1082130432, %i.i
  %i.l = add nsw i32 %i.i, 1082130432
  %i.m = select i1 %i.j, i32 %i.k, i32 %i.l
  %i.n = icmp ult i32 %i.m, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.n, %bb.b ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fptrunc double %0 to float               ; 2 uses
  %i.b = bitcast float %i.a to i32                ; 2 uses
  %i.c = and i32 %i.b, 2139095040
  %i.d = icmp eq i32 %i.c, 2139095040
  br i1 %i.d, label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call float @llvm.fabs.f32(float %i.a) ; 2 uses
  %i.f = fneg float %i.e
  %i.g = bitcast float %i.f to i32
  %i.h = bitcast float %i.e to i32
  %i.i = sub nuw i32 -2147483648, %i.h
  %.narrow.i27.i = icmp sgt i32 %i.b, 0
  %i.j = select i1 %.narrow.i27.i, i32 %i.g, i32 %i.i ; 3 uses
  %i.k = icmp ult i32 %i.j, -1082130432
  %i.l = sub nuw i32 -1082130432, %i.j
  %i.m = add i32 %i.j, 1082130432
  %i.n = select i1 %i.k, i32 %i.l, i32 %i.m
  %i.o = icmp ult i32 %i.n, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_516IsVecEqualToZeroIfEEbPKT_j(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %.lr.ph, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.d = bitcast float %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  br i1 %i.f, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %.lr.ph
  %i.g = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.h = fneg float %i.g
  %i.i = bitcast float %i.h to i32
  %i.j = bitcast float %i.g to i32
  %i.k = sub nuw i32 -2147483648, %i.j
  %.narrow.i27.i.i = icmp sgt i32 %i.d, 0
  %i.l = select i1 %.narrow.i27.i.i, i32 %i.i, i32 %i.k ; 3 uses
  %i.m = sub nuw i32 -2147483648, %i.l
  %i.n = xor i32 %i.l, -2147483648
  %.narrow.i = icmp sgt i32 %i.l, 0
  %i.o = select i1 %.narrow.i, i32 %i.m, i32 %i.n
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.b, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_516IsVecEqualToZeroIdEEbPKT_j(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load double, ptr %i.b, align 8, !tbaa !12
  %i.d = fptrunc double %i.c to float             ; 2 uses
  %i.e = bitcast float %i.d to i32                ; 2 uses
  %i.f = and i32 %i.e, 2139095040
  %i.g = icmp eq i32 %i.f, 2139095040
  br i1 %i.g, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit: ; preds = %.lr.ph
  %i.h = tail call float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.i = fneg float %i.h
  %i.j = bitcast float %i.i to i32
  %i.k = bitcast float %i.h to i32
  %i.l = sub nuw i32 -2147483648, %i.k
  %.narrow.i27.i.i = icmp sgt i32 %i.e, 0
  %i.m = select i1 %.narrow.i27.i.i, i32 %i.j, i32 %i.l ; 3 uses
  %i.n = sub nuw i32 -2147483648, %i.m
  %i.o = xor i32 %i.m, -2147483648
  %.narrow.i = icmp sgt i32 %i.m, 0
  %i.p = select i1 %.narrow.i, i32 %i.n, i32 %i.o
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread: ; preds = %bb.b, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_515IsVecEqualToOneIfEEbPKT_j(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, label %.lr.ph, !llvm.loop !14

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.d = bitcast float %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  br i1 %i.f, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit: ; preds = %.lr.ph
  %i.g = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.h = fneg float %i.g
  %i.i = bitcast float %i.h to i32
  %i.j = bitcast float %i.g to i32
  %i.k = sub nuw i32 -2147483648, %i.j
  %.narrow.i27.i.i = icmp sgt i32 %i.d, 0
  %i.l = select i1 %.narrow.i27.i.i, i32 %i.i, i32 %i.k ; 3 uses
  %i.m = icmp ult i32 %i.l, -1082130432
  %i.n = sub nuw i32 -1082130432, %i.l
  %i.o = add nsw i32 %i.l, 1082130432
  %i.p = select i1 %i.m, i32 %i.n, i32 %i.o
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %bb.b, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread: ; preds = %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_515IsVecEqualToOneIdEEbPKT_j(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread, label %.lr.ph, !llvm.loop !15

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load double, ptr %i.b, align 8, !tbaa !12
  %i.d = fptrunc double %i.c to float             ; 2 uses
  %i.e = bitcast float %i.d to i32                ; 2 uses
  %i.f = and i32 %i.e, 2139095040
  %i.g = icmp eq i32 %i.f, 2139095040
  br i1 %i.g, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit: ; preds = %.lr.ph
  %i.h = tail call float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.i = fneg float %i.h
  %i.j = bitcast float %i.i to i32
  %i.k = bitcast float %i.h to i32
  %i.l = sub nuw i32 -2147483648, %i.k
  %.narrow.i27.i.i = icmp sgt i32 %i.e, 0
  %i.m = select i1 %.narrow.i27.i.i, i32 %i.j, i32 %i.l ; 3 uses
  %i.n = icmp ult i32 %i.m, -1082130432
  %i.o = sub nuw i32 -1082130432, %i.m
  %i.p = add i32 %i.m, 1082130432
  %i.q = select i1 %i.n, i32 %i.o, i32 %i.p
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %bb.b, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread: ; preds = %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_521VecsEqualWithRelErrorIfEEbPKT_jS3_jS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 3 uses
  %i.f = fcmp ogt float %i.c, %i.e
  %i.g = fsub float %i.c, %i.e
  %i.h = fsub float %i.e, %i.c
  %i.i = select i1 %i.f, float %i.g, float %i.h
  %i.j = fcmp ogt float %i.c, 0.000000e+00
  %i.k = fneg float %i.c
  %i.l = select i1 %i.j, float %i.c, float %i.k
  %i.m = fmul float %4, %i.l
  %i.n = fcmp ole float %i.i, %i.m                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.n, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.n, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_521VecsEqualWithRelErrorIdEEbPKT_jS3_jS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load double, ptr %i.b, align 8, !tbaa !12 ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.e = load double, ptr %i.d, align 8, !tbaa !12 ; 3 uses
  %i.f = fcmp ogt double %i.c, %i.e
  %i.g = fsub double %i.c, %i.e
  %i.h = fsub double %i.e, %i.c
  %i.i = select i1 %i.f, double %i.g, double %i.h
  %i.j = fcmp ogt double %i.c, 0.000000e+00
  %i.k = fneg double %i.c
  %i.l = select i1 %i.j, double %i.c, double %i.k
  %i.m = fmul double %4, %i.l
  %i.n = fcmp ole double %i.i, %i.m               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.n, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.n, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513IsM44IdentityIfEEbPKT_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !9    ; 2 uses
  %i.b = bitcast float %i.a to i32                ; 2 uses
  %i.c = and i32 %i.b, 2139095040
  %i.d = icmp eq i32 %i.c, 2139095040
  br i1 %i.d, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit: ; preds = %bb.a
  %i.e = tail call float @llvm.fabs.f32(float %i.a) ; 2 uses
  %i.f = fneg float %i.e
  %i.g = bitcast float %i.f to i32
  %i.h = bitcast float %i.e to i32
  %i.i = sub nuw i32 -2147483648, %i.h
  %.narrow.i27.i.i = icmp sgt i32 %i.b, 0
  %i.j = select i1 %.narrow.i27.i.i, i32 %i.g, i32 %i.i ; 3 uses
  %i.k = icmp ult i32 %i.j, -1082130432
  %i.l = sub nuw i32 -1082130432, %i.j
  %i.m = add nsw i32 %i.j, 1082130432
  %i.n = select i1 %i.k, i32 %i.l, i32 %i.m
  %i.o = icmp ult i32 %i.n, 3
  br i1 %i.o, label %bb.b, label %.critedge20.loopexit

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !9  ; 2 uses
  %i.r = bitcast float %i.q to i32                ; 2 uses
  %i.s = and i32 %i.r, 2139095040
  %i.t = icmp eq i32 %i.s, 2139095040
  br i1 %i.t, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1: ; preds = %bb.b
  %i.u = tail call float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.v = fneg float %i.u
  %i.w = bitcast float %i.v to i32
  %i.x = bitcast float %i.u to i32
  %i.y = sub nuw i32 -2147483648, %i.x
  %.narrow.i27.i.i21.1 = icmp sgt i32 %i.r, 0
  %i.z = select i1 %.narrow.i27.i.i21.1, i32 %i.w, i32 %i.y ; 3 uses
  %i.aa = sub nuw i32 -2147483648, %i.z
  %i.ab = xor i32 %i.z, -2147483648
  %.narrow.i.1 = icmp sgt i32 %i.z, 0
  %i.ac = select i1 %.narrow.i.1, i32 %i.aa, i32 %i.ab
  %i.ad = icmp ult i32 %i.ac, 3
  br i1 %i.ad, label %bb.c, label %.critedge20.loopexit

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9 ; 2 uses
  %i.ag = bitcast float %i.af to i32              ; 2 uses
  %i.ah = and i32 %i.ag, 2139095040
  %i.ai = icmp eq i32 %i.ah, 2139095040
  br i1 %i.ai, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2: ; preds = %bb.c
  %i.aj = tail call float @llvm.fabs.f32(float %i.af) ; 2 uses
  %i.ak = fneg float %i.aj
  %i.al = bitcast float %i.ak to i32
  %i.am = bitcast float %i.aj to i32
  %i.an = sub nuw i32 -2147483648, %i.am
  %.narrow.i27.i.i21.2 = icmp sgt i32 %i.ag, 0
  %i.ao = select i1 %.narrow.i27.i.i21.2, i32 %i.al, i32 %i.an ; 3 uses
  %i.ap = sub nuw i32 -2147483648, %i.ao
  %i.aq = xor i32 %i.ao, -2147483648
  %.narrow.i.2 = icmp sgt i32 %i.ao, 0
  %i.ar = select i1 %.narrow.i.2, i32 %i.ap, i32 %i.aq
  %i.as = icmp ult i32 %i.ar, 3
  br i1 %i.as, label %bb.d, label %.critedge20.loopexit

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !9 ; 2 uses
  %i.av = bitcast float %i.au to i32              ; 2 uses
  %i.aw = and i32 %i.av, 2139095040
  %i.ax = icmp eq i32 %i.aw, 2139095040
  br i1 %i.ax, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3: ; preds = %bb.d
  %i.ay = tail call float @llvm.fabs.f32(float %i.au) ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = bitcast float %i.az to i32
  %i.bb = bitcast float %i.ay to i32
  %i.bc = sub nuw i32 -2147483648, %i.bb
  %.narrow.i27.i.i21.3 = icmp sgt i32 %i.av, 0
  %i.bd = select i1 %.narrow.i27.i.i21.3, i32 %i.ba, i32 %i.bc ; 3 uses
  %i.be = sub nuw i32 -2147483648, %i.bd
  %i.bf = xor i32 %i.bd, -2147483648
  %.narrow.i.3 = icmp sgt i32 %i.bd, 0
  %i.bg = select i1 %.narrow.i.3, i32 %i.be, i32 %i.bf
  %i.bh = icmp ult i32 %i.bg, 3
  br i1 %i.bh, label %.critedge, label %.critedge20.loopexit

.critedge:                                        ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9 ; 2 uses
  %i.bk = bitcast float %i.bj to i32              ; 2 uses
  %i.bl = and i32 %i.bk, 2139095040
  %i.bm = icmp eq i32 %i.bl, 2139095040
  br i1 %i.bm, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.131

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.131: ; preds = %.critedge
  %i.bn = tail call float @llvm.fabs.f32(float %i.bj) ; 2 uses
  %i.bo = fneg float %i.bn
  %i.bp = bitcast float %i.bo to i32
  %i.bq = bitcast float %i.bn to i32
  %i.br = sub nuw i32 -2147483648, %i.bq
  %.narrow.i27.i.i21.132 = icmp sgt i32 %i.bk, 0
  %i.bs = select i1 %.narrow.i27.i.i21.132, i32 %i.bp, i32 %i.br ; 3 uses
  %i.bt = sub nuw i32 -2147483648, %i.bs
  %i.bu = xor i32 %i.bs, -2147483648
  %.narrow.i.133 = icmp sgt i32 %i.bs, 0
  %i.bv = select i1 %.narrow.i.133, i32 %i.bt, i32 %i.bu
  %i.bw = icmp ult i32 %i.bv, 3
  br i1 %i.bw, label %bb.e, label %.critedge20.loopexit

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.131
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.by = load float, ptr %i.bx, align 4, !tbaa !9 ; 2 uses
  %i.bz = bitcast float %i.by to i32              ; 2 uses
  %i.ca = and i32 %i.bz, 2139095040
  %i.cb = icmp eq i32 %i.ca, 2139095040
  br i1 %i.cb, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.1.1

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.1.1: ; preds = %bb.e
  %i.cc = tail call float @llvm.fabs.f32(float %i.by) ; 2 uses
  %i.cd = fneg float %i.cc
  %i.ce = bitcast float %i.cd to i32
  %i.cf = bitcast float %i.cc to i32
  %i.cg = sub nuw i32 -2147483648, %i.cf
  %.narrow.i27.i.i.1.1 = icmp sgt i32 %i.bz, 0
  %i.ch = select i1 %.narrow.i27.i.i.1.1, i32 %i.ce, i32 %i.cg ; 3 uses
  %i.ci = icmp ult i32 %i.ch, -1082130432
  %i.cj = sub nuw i32 -1082130432, %i.ch
  %i.ck = add nsw i32 %i.ch, 1082130432
  %i.cl = select i1 %i.ci, i32 %i.cj, i32 %i.ck
  %i.cm = icmp ult i32 %i.cl, 3
  br i1 %i.cm, label %bb.f, label %.critedge20.loopexit

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.1.1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9 ; 2 uses
  %i.cp = bitcast float %i.co to i32              ; 2 uses
  %i.cq = and i32 %i.cp, 2139095040
  %i.cr = icmp eq i32 %i.cq, 2139095040
  br i1 %i.cr, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.1: ; preds = %bb.f
  %i.cs = tail call float @llvm.fabs.f32(float %i.co) ; 2 uses
  %i.ct = fneg float %i.cs
  %i.cu = bitcast float %i.ct to i32
  %i.cv = bitcast float %i.cs to i32
  %i.cw = sub nuw i32 -2147483648, %i.cv
  %.narrow.i27.i.i21.2.1 = icmp sgt i32 %i.cp, 0
  %i.cx = select i1 %.narrow.i27.i.i21.2.1, i32 %i.cu, i32 %i.cw ; 3 uses
  %i.cy = sub nuw i32 -2147483648, %i.cx
  %i.cz = xor i32 %i.cx, -2147483648
  %.narrow.i.2.1 = icmp sgt i32 %i.cx, 0
  %i.da = select i1 %.narrow.i.2.1, i32 %i.cy, i32 %i.cz
  %i.db = icmp ult i32 %i.da, 3
  br i1 %i.db, label %bb.g, label %.critedge20.loopexit

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.1
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !9 ; 2 uses
  %i.de = bitcast float %i.dd to i32              ; 2 uses
  %i.df = and i32 %i.de, 2139095040
  %i.dg = icmp eq i32 %i.df, 2139095040
  br i1 %i.dg, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.1: ; preds = %bb.g
  %i.dh = tail call float @llvm.fabs.f32(float %i.dd) ; 2 uses
  %i.di = fneg float %i.dh
  %i.dj = bitcast float %i.di to i32
  %i.dk = bitcast float %i.dh to i32
  %i.dl = sub nuw i32 -2147483648, %i.dk
  %.narrow.i27.i.i21.3.1 = icmp sgt i32 %i.de, 0
  %i.dm = select i1 %.narrow.i27.i.i21.3.1, i32 %i.dj, i32 %i.dl ; 3 uses
  %i.dn = sub nuw i32 -2147483648, %i.dm
  %i.do = xor i32 %i.dm, -2147483648
  %.narrow.i.3.1 = icmp sgt i32 %i.dm, 0
  %i.dp = select i1 %.narrow.i.3.1, i32 %i.dn, i32 %i.do
  %i.dq = icmp ult i32 %i.dp, 3
  br i1 %i.dq, label %.critedge.1, label %.critedge20.loopexit

.critedge.1:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.1
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !9 ; 2 uses
  %i.dt = bitcast float %i.ds to i32              ; 2 uses
  %i.du = and i32 %i.dt, 2139095040
  %i.dv = icmp eq i32 %i.du, 2139095040
  br i1 %i.dv, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.233

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.233: ; preds = %.critedge.1
  %i.dw = tail call float @llvm.fabs.f32(float %i.ds) ; 2 uses
  %i.dx = fneg float %i.dw
  %i.dy = bitcast float %i.dx to i32
  %i.dz = bitcast float %i.dw to i32
  %i.ea = sub nuw i32 -2147483648, %i.dz
  %.narrow.i27.i.i21.237 = icmp sgt i32 %i.dt, 0
  %i.eb = select i1 %.narrow.i27.i.i21.237, i32 %i.dy, i32 %i.ea ; 3 uses
  %i.ec = sub nuw i32 -2147483648, %i.eb
  %i.ed = xor i32 %i.eb, -2147483648
  %.narrow.i.238 = icmp sgt i32 %i.eb, 0
  %i.ee = select i1 %.narrow.i.238, i32 %i.ec, i32 %i.ed
  %i.ef = icmp ult i32 %i.ee, 3
  br i1 %i.ef, label %bb.h, label %.critedge20.loopexit

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.233
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9 ; 2 uses
  %i.ei = bitcast float %i.eh to i32              ; 2 uses
  %i.ej = and i32 %i.ei, 2139095040
  %i.ek = icmp eq i32 %i.ej, 2139095040
  br i1 %i.ek, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.2: ; preds = %bb.h
  %i.el = tail call float @llvm.fabs.f32(float %i.eh) ; 2 uses
  %i.em = fneg float %i.el
  %i.en = bitcast float %i.em to i32
  %i.eo = bitcast float %i.el to i32
  %i.ep = sub nuw i32 -2147483648, %i.eo
  %.narrow.i27.i.i21.1.2 = icmp sgt i32 %i.ei, 0
  %i.eq = select i1 %.narrow.i27.i.i21.1.2, i32 %i.en, i32 %i.ep ; 3 uses
  %i.er = sub nuw i32 -2147483648, %i.eq
  %i.es = xor i32 %i.eq, -2147483648
  %.narrow.i.1.2 = icmp sgt i32 %i.eq, 0
  %i.et = select i1 %.narrow.i.1.2, i32 %i.er, i32 %i.es
  %i.eu = icmp ult i32 %i.et, 3
  br i1 %i.eu, label %bb.i, label %.critedge20.loopexit

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.2
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !9 ; 2 uses
  %i.ex = bitcast float %i.ew to i32              ; 2 uses
  %i.ey = and i32 %i.ex, 2139095040
  %i.ez = icmp eq i32 %i.ey, 2139095040
  br i1 %i.ez, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.2.2

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.2.2: ; preds = %bb.i
  %i.fa = tail call float @llvm.fabs.f32(float %i.ew) ; 2 uses
  %i.fb = fneg float %i.fa
  %i.fc = bitcast float %i.fb to i32
  %i.fd = bitcast float %i.fa to i32
  %i.fe = sub nuw i32 -2147483648, %i.fd
  %.narrow.i27.i.i.2.2 = icmp sgt i32 %i.ex, 0
  %i.ff = select i1 %.narrow.i27.i.i.2.2, i32 %i.fc, i32 %i.fe ; 3 uses
  %i.fg = icmp ult i32 %i.ff, -1082130432
  %i.fh = sub nuw i32 -1082130432, %i.ff
  %i.fi = add nsw i32 %i.ff, 1082130432
  %i.fj = select i1 %i.fg, i32 %i.fh, i32 %i.fi
  %i.fk = icmp ult i32 %i.fj, 3
  br i1 %i.fk, label %bb.j, label %.critedge20.loopexit

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.2.2
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !9 ; 2 uses
  %i.fn = bitcast float %i.fm to i32              ; 2 uses
  %i.fo = and i32 %i.fn, 2139095040
  %i.fp = icmp eq i32 %i.fo, 2139095040
  br i1 %i.fp, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.2: ; preds = %bb.j
  %i.fq = tail call float @llvm.fabs.f32(float %i.fm) ; 2 uses
  %i.fr = fneg float %i.fq
  %i.fs = bitcast float %i.fr to i32
  %i.ft = bitcast float %i.fq to i32
  %i.fu = sub nuw i32 -2147483648, %i.ft
  %.narrow.i27.i.i21.3.2 = icmp sgt i32 %i.fn, 0
  %i.fv = select i1 %.narrow.i27.i.i21.3.2, i32 %i.fs, i32 %i.fu ; 3 uses
  %i.fw = sub nuw i32 -2147483648, %i.fv
  %i.fx = xor i32 %i.fv, -2147483648
  %.narrow.i.3.2 = icmp sgt i32 %i.fv, 0
  %i.fy = select i1 %.narrow.i.3.2, i32 %i.fw, i32 %i.fx
  %i.fz = icmp ult i32 %i.fy, 3
  br i1 %i.fz, label %.critedge.2, label %.critedge20.loopexit

.critedge.2:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.2
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !9 ; 2 uses
  %i.gc = bitcast float %i.gb to i32              ; 2 uses
  %i.gd = and i32 %i.gc, 2139095040
  %i.ge = icmp eq i32 %i.gd, 2139095040
  br i1 %i.ge, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.335

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.335: ; preds = %.critedge.2
  %i.gf = tail call float @llvm.fabs.f32(float %i.gb) ; 2 uses
  %i.gg = fneg float %i.gf
  %i.gh = bitcast float %i.gg to i32
  %i.gi = bitcast float %i.gf to i32
  %i.gj = sub nuw i32 -2147483648, %i.gi
  %.narrow.i27.i.i21.342 = icmp sgt i32 %i.gc, 0
  %i.gk = select i1 %.narrow.i27.i.i21.342, i32 %i.gh, i32 %i.gj ; 3 uses
  %i.gl = sub nuw i32 -2147483648, %i.gk
  %i.gm = xor i32 %i.gk, -2147483648
  %.narrow.i.343 = icmp sgt i32 %i.gk, 0
  %i.gn = select i1 %.narrow.i.343, i32 %i.gl, i32 %i.gm
  %i.go = icmp ult i32 %i.gn, 3
  br i1 %i.go, label %bb.k, label %.critedge20.loopexit

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.335
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !9 ; 2 uses
  %i.gr = bitcast float %i.gq to i32              ; 2 uses
  %i.gs = and i32 %i.gr, 2139095040
  %i.gt = icmp eq i32 %i.gs, 2139095040
  br i1 %i.gt, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.3: ; preds = %bb.k
  %i.gu = tail call float @llvm.fabs.f32(float %i.gq) ; 2 uses
  %i.gv = fneg float %i.gu
  %i.gw = bitcast float %i.gv to i32
  %i.gx = bitcast float %i.gu to i32
  %i.gy = sub nuw i32 -2147483648, %i.gx
  %.narrow.i27.i.i21.1.3 = icmp sgt i32 %i.gr, 0
  %i.gz = select i1 %.narrow.i27.i.i21.1.3, i32 %i.gw, i32 %i.gy ; 3 uses
  %i.ha = sub nuw i32 -2147483648, %i.gz
  %i.hb = xor i32 %i.gz, -2147483648
  %.narrow.i.1.3 = icmp sgt i32 %i.gz, 0
  %i.hc = select i1 %.narrow.i.1.3, i32 %i.ha, i32 %i.hb
  %i.hd = icmp ult i32 %i.hc, 3
  br i1 %i.hd, label %bb.l, label %.critedge20.loopexit

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.3
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hf = load float, ptr %i.he, align 4, !tbaa !9 ; 2 uses
  %i.hg = bitcast float %i.hf to i32              ; 2 uses
  %i.hh = and i32 %i.hg, 2139095040
  %i.hi = icmp eq i32 %i.hh, 2139095040
  br i1 %i.hi, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.3: ; preds = %bb.l
  %i.hj = tail call float @llvm.fabs.f32(float %i.hf) ; 2 uses
  %i.hk = fneg float %i.hj
  %i.hl = bitcast float %i.hk to i32
  %i.hm = bitcast float %i.hj to i32
  %i.hn = sub nuw i32 -2147483648, %i.hm
  %.narrow.i27.i.i21.2.3 = icmp sgt i32 %i.hg, 0
  %i.ho = select i1 %.narrow.i27.i.i21.2.3, i32 %i.hl, i32 %i.hn ; 3 uses
  %i.hp = sub nuw i32 -2147483648, %i.ho
  %i.hq = xor i32 %i.ho, -2147483648
  %.narrow.i.2.3 = icmp sgt i32 %i.ho, 0
  %i.hr = select i1 %.narrow.i.2.3, i32 %i.hp, i32 %i.hq
  %i.hs = icmp ult i32 %i.hr, 3
  br i1 %i.hs, label %bb.m, label %.critedge20.loopexit

bb.m:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.3
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !9 ; 2 uses
  %i.hv = bitcast float %i.hu to i32              ; 2 uses
  %i.hw = and i32 %i.hv, 2139095040
  %i.hx = icmp eq i32 %i.hw, 2139095040
  br i1 %i.hx, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3: ; preds = %bb.m
  %i.hy = tail call float @llvm.fabs.f32(float %i.hu) ; 2 uses
  %i.hz = fneg float %i.hy
  %i.ia = bitcast float %i.hz to i32
  %i.ib = bitcast float %i.hy to i32
  %i.ic = sub nuw i32 -2147483648, %i.ib
  %.narrow.i27.i.i.3.3 = icmp sgt i32 %i.hv, 0
  %i.id = select i1 %.narrow.i27.i.i.3.3, i32 %i.ia, i32 %i.ic ; 3 uses
  %i.ie = icmp ult i32 %i.id, -1082130432
  %i.if = sub nuw i32 -1082130432, %i.id
  %i.ig = add nsw i32 %i.id, 1082130432
  %i.ih = select i1 %i.ie, i32 %i.if, i32 %i.ig
  %i.ii = icmp ult i32 %i.ih, 3
  br i1 %i.ii, label %.critedge20, label %.critedge20.loopexit

.critedge20.loopexit:                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3, %bb.m, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.3, %bb.l, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.3, %bb.k, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.335, %.critedge.2, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.2, %bb.j, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.2.2, %bb.i, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.2, %bb.h, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.233, %.critedge.1, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.1, %bb.g, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.1, %bb.f, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.1.1, %bb.e, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.131, %.critedge, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3, %bb.d, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2, %bb.c, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1, %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit, %bb.a
  br label %.critedge20

.critedge20:                                      ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3, %.critedge20.loopexit
  %i.ij = phi i1 [ false, %.critedge20.loopexit ], [ true, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3 ]
  ret i1 %i.ij
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513IsM44IdentityIdEEbPKT_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12
  %i.b = fptrunc double %i.a to float             ; 2 uses
  %i.c = bitcast float %i.b to i32                ; 2 uses
  %i.d = and i32 %i.c, 2139095040
  %i.e = icmp eq i32 %i.d, 2139095040
  br i1 %i.e, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit: ; preds = %bb.a
  %i.f = tail call float @llvm.fabs.f32(float %i.b) ; 2 uses
  %i.g = fneg float %i.f
  %i.h = bitcast float %i.g to i32
  %i.i = bitcast float %i.f to i32
  %i.j = sub nuw i32 -2147483648, %i.i
  %.narrow.i27.i.i = icmp sgt i32 %i.c, 0
  %i.k = select i1 %.narrow.i27.i.i, i32 %i.h, i32 %i.j ; 3 uses
  %i.l = icmp ult i32 %i.k, -1082130432
  %i.m = sub nuw i32 -1082130432, %i.k
  %i.n = add i32 %i.k, 1082130432
  %i.o = select i1 %i.l, i32 %i.m, i32 %i.n
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %bb.b, label %.critedge20.loopexit

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !12
  %i.s = fptrunc double %i.r to float             ; 2 uses
  %i.t = bitcast float %i.s to i32                ; 2 uses
  %i.u = and i32 %i.t, 2139095040
  %i.v = icmp eq i32 %i.u, 2139095040
  br i1 %i.v, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1: ; preds = %bb.b
  %i.w = tail call float @llvm.fabs.f32(float %i.s) ; 2 uses
  %i.x = fneg float %i.w
  %i.y = bitcast float %i.x to i32
  %i.z = bitcast float %i.w to i32
  %i.aa = sub nuw i32 -2147483648, %i.z
  %.narrow.i27.i.i21.1 = icmp sgt i32 %i.t, 0
  %i.ab = select i1 %.narrow.i27.i.i21.1, i32 %i.y, i32 %i.aa ; 3 uses
  %i.ac = sub nuw i32 -2147483648, %i.ab
  %i.ad = xor i32 %i.ab, -2147483648
  %.narrow.i.1 = icmp sgt i32 %i.ab, 0
  %i.ae = select i1 %.narrow.i.1, i32 %i.ac, i32 %i.ad
  %i.af = icmp ult i32 %i.ae, 3
  br i1 %i.af, label %bb.c, label %.critedge20.loopexit

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !12
  %i.ai = fptrunc double %i.ah to float           ; 2 uses
  %i.aj = bitcast float %i.ai to i32              ; 2 uses
  %i.ak = and i32 %i.aj, 2139095040
  %i.al = icmp eq i32 %i.ak, 2139095040
  br i1 %i.al, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2: ; preds = %bb.c
  %i.am = tail call float @llvm.fabs.f32(float %i.ai) ; 2 uses
  %i.an = fneg float %i.am
  %i.ao = bitcast float %i.an to i32
  %i.ap = bitcast float %i.am to i32
  %i.aq = sub nuw i32 -2147483648, %i.ap
  %.narrow.i27.i.i21.2 = icmp sgt i32 %i.aj, 0
  %i.ar = select i1 %.narrow.i27.i.i21.2, i32 %i.ao, i32 %i.aq ; 3 uses
  %i.as = sub nuw i32 -2147483648, %i.ar
  %i.at = xor i32 %i.ar, -2147483648
  %.narrow.i.2 = icmp sgt i32 %i.ar, 0
  %i.au = select i1 %.narrow.i.2, i32 %i.as, i32 %i.at
  %i.av = icmp ult i32 %i.au, 3
  br i1 %i.av, label %bb.d, label %.critedge20.loopexit

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !12
  %i.ay = fptrunc double %i.ax to float           ; 2 uses
  %i.az = bitcast float %i.ay to i32              ; 2 uses
  %i.ba = and i32 %i.az, 2139095040
  %i.bb = icmp eq i32 %i.ba, 2139095040
  br i1 %i.bb, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3: ; preds = %bb.d
  %i.bc = tail call float @llvm.fabs.f32(float %i.ay) ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = bitcast float %i.bd to i32
  %i.bf = bitcast float %i.bc to i32
  %i.bg = sub nuw i32 -2147483648, %i.bf
  %.narrow.i27.i.i21.3 = icmp sgt i32 %i.az, 0
  %i.bh = select i1 %.narrow.i27.i.i21.3, i32 %i.be, i32 %i.bg ; 3 uses
  %i.bi = sub nuw i32 -2147483648, %i.bh
  %i.bj = xor i32 %i.bh, -2147483648
  %.narrow.i.3 = icmp sgt i32 %i.bh, 0
  %i.bk = select i1 %.narrow.i.3, i32 %i.bi, i32 %i.bj
  %i.bl = icmp ult i32 %i.bk, 3
  br i1 %i.bl, label %.critedge, label %.critedge20.loopexit

.critedge:                                        ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !12
  %i.bo = fptrunc double %i.bn to float           ; 2 uses
  %i.bp = bitcast float %i.bo to i32              ; 2 uses
  %i.bq = and i32 %i.bp, 2139095040
  %i.br = icmp eq i32 %i.bq, 2139095040
  br i1 %i.br, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131: ; preds = %.critedge
  %i.bs = tail call float @llvm.fabs.f32(float %i.bo) ; 2 uses
  %i.bt = fneg float %i.bs
  %i.bu = bitcast float %i.bt to i32
  %i.bv = bitcast float %i.bs to i32
  %i.bw = sub nuw i32 -2147483648, %i.bv
  %.narrow.i27.i.i21.132 = icmp sgt i32 %i.bp, 0
  %i.bx = select i1 %.narrow.i27.i.i21.132, i32 %i.bu, i32 %i.bw ; 3 uses
  %i.by = sub nuw i32 -2147483648, %i.bx
  %i.bz = xor i32 %i.bx, -2147483648
  %.narrow.i.133 = icmp sgt i32 %i.bx, 0
  %i.ca = select i1 %.narrow.i.133, i32 %i.by, i32 %i.bz
  %i.cb = icmp ult i32 %i.ca, 3
  br i1 %i.cb, label %bb.e, label %.critedge20.loopexit

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !12
  %i.ce = fptrunc double %i.cd to float           ; 2 uses
  %i.cf = bitcast float %i.ce to i32              ; 2 uses
  %i.cg = and i32 %i.cf, 2139095040
  %i.ch = icmp eq i32 %i.cg, 2139095040
  br i1 %i.ch, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1: ; preds = %bb.e
  %i.ci = tail call float @llvm.fabs.f32(float %i.ce) ; 2 uses
  %i.cj = fneg float %i.ci
  %i.ck = bitcast float %i.cj to i32
  %i.cl = bitcast float %i.ci to i32
  %i.cm = sub nuw i32 -2147483648, %i.cl
  %.narrow.i27.i.i.1.1 = icmp sgt i32 %i.cf, 0
  %i.cn = select i1 %.narrow.i27.i.i.1.1, i32 %i.ck, i32 %i.cm ; 3 uses
  %i.co = icmp ult i32 %i.cn, -1082130432
  %i.cp = sub nuw i32 -1082130432, %i.cn
  %i.cq = add i32 %i.cn, 1082130432
  %i.cr = select i1 %i.co, i32 %i.cp, i32 %i.cq
  %i.cs = icmp ult i32 %i.cr, 3
  br i1 %i.cs, label %bb.f, label %.critedge20.loopexit

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !12
  %i.cv = fptrunc double %i.cu to float           ; 2 uses
  %i.cw = bitcast float %i.cv to i32              ; 2 uses
  %i.cx = and i32 %i.cw, 2139095040
  %i.cy = icmp eq i32 %i.cx, 2139095040
  br i1 %i.cy, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1: ; preds = %bb.f
  %i.cz = tail call float @llvm.fabs.f32(float %i.cv) ; 2 uses
  %i.da = fneg float %i.cz
  %i.db = bitcast float %i.da to i32
  %i.dc = bitcast float %i.cz to i32
  %i.dd = sub nuw i32 -2147483648, %i.dc
  %.narrow.i27.i.i21.2.1 = icmp sgt i32 %i.cw, 0
  %i.de = select i1 %.narrow.i27.i.i21.2.1, i32 %i.db, i32 %i.dd ; 3 uses
  %i.df = sub nuw i32 -2147483648, %i.de
  %i.dg = xor i32 %i.de, -2147483648
  %.narrow.i.2.1 = icmp sgt i32 %i.de, 0
  %i.dh = select i1 %.narrow.i.2.1, i32 %i.df, i32 %i.dg
  %i.di = icmp ult i32 %i.dh, 3
  br i1 %i.di, label %bb.g, label %.critedge20.loopexit

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !12
  %i.dl = fptrunc double %i.dk to float           ; 2 uses
  %i.dm = bitcast float %i.dl to i32              ; 2 uses
  %i.dn = and i32 %i.dm, 2139095040
  %i.do = icmp eq i32 %i.dn, 2139095040
  br i1 %i.do, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1: ; preds = %bb.g
  %i.dp = tail call float @llvm.fabs.f32(float %i.dl) ; 2 uses
  %i.dq = fneg float %i.dp
  %i.dr = bitcast float %i.dq to i32
  %i.ds = bitcast float %i.dp to i32
  %i.dt = sub nuw i32 -2147483648, %i.ds
  %.narrow.i27.i.i21.3.1 = icmp sgt i32 %i.dm, 0
  %i.du = select i1 %.narrow.i27.i.i21.3.1, i32 %i.dr, i32 %i.dt ; 3 uses
  %i.dv = sub nuw i32 -2147483648, %i.du
  %i.dw = xor i32 %i.du, -2147483648
  %.narrow.i.3.1 = icmp sgt i32 %i.du, 0
  %i.dx = select i1 %.narrow.i.3.1, i32 %i.dv, i32 %i.dw
  %i.dy = icmp ult i32 %i.dx, 3
  br i1 %i.dy, label %.critedge.1, label %.critedge20.loopexit

.critedge.1:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !12
  %i.eb = fptrunc double %i.ea to float           ; 2 uses
  %i.ec = bitcast float %i.eb to i32              ; 2 uses
  %i.ed = and i32 %i.ec, 2139095040
  %i.ee = icmp eq i32 %i.ed, 2139095040
  br i1 %i.ee, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233: ; preds = %.critedge.1
  %i.ef = tail call float @llvm.fabs.f32(float %i.eb) ; 2 uses
  %i.eg = fneg float %i.ef
  %i.eh = bitcast float %i.eg to i32
  %i.ei = bitcast float %i.ef to i32
  %i.ej = sub nuw i32 -2147483648, %i.ei
  %.narrow.i27.i.i21.237 = icmp sgt i32 %i.ec, 0
  %i.ek = select i1 %.narrow.i27.i.i21.237, i32 %i.eh, i32 %i.ej ; 3 uses
  %i.el = sub nuw i32 -2147483648, %i.ek
  %i.em = xor i32 %i.ek, -2147483648
  %.narrow.i.238 = icmp sgt i32 %i.ek, 0
  %i.en = select i1 %.narrow.i.238, i32 %i.el, i32 %i.em
  %i.eo = icmp ult i32 %i.en, 3
  br i1 %i.eo, label %bb.h, label %.critedge20.loopexit

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !12
  %i.er = fptrunc double %i.eq to float           ; 2 uses
  %i.es = bitcast float %i.er to i32              ; 2 uses
  %i.et = and i32 %i.es, 2139095040
  %i.eu = icmp eq i32 %i.et, 2139095040
  br i1 %i.eu, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2: ; preds = %bb.h
  %i.ev = tail call float @llvm.fabs.f32(float %i.er) ; 2 uses
  %i.ew = fneg float %i.ev
  %i.ex = bitcast float %i.ew to i32
  %i.ey = bitcast float %i.ev to i32
  %i.ez = sub nuw i32 -2147483648, %i.ey
  %.narrow.i27.i.i21.1.2 = icmp sgt i32 %i.es, 0
  %i.fa = select i1 %.narrow.i27.i.i21.1.2, i32 %i.ex, i32 %i.ez ; 3 uses
  %i.fb = sub nuw i32 -2147483648, %i.fa
  %i.fc = xor i32 %i.fa, -2147483648
  %.narrow.i.1.2 = icmp sgt i32 %i.fa, 0
  %i.fd = select i1 %.narrow.i.1.2, i32 %i.fb, i32 %i.fc
  %i.fe = icmp ult i32 %i.fd, 3
  br i1 %i.fe, label %bb.i, label %.critedge20.loopexit

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !12
  %i.fh = fptrunc double %i.fg to float           ; 2 uses
  %i.fi = bitcast float %i.fh to i32              ; 2 uses
  %i.fj = and i32 %i.fi, 2139095040
  %i.fk = icmp eq i32 %i.fj, 2139095040
  br i1 %i.fk, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2: ; preds = %bb.i
  %i.fl = tail call float @llvm.fabs.f32(float %i.fh) ; 2 uses
  %i.fm = fneg float %i.fl
  %i.fn = bitcast float %i.fm to i32
  %i.fo = bitcast float %i.fl to i32
  %i.fp = sub nuw i32 -2147483648, %i.fo
  %.narrow.i27.i.i.2.2 = icmp sgt i32 %i.fi, 0
  %i.fq = select i1 %.narrow.i27.i.i.2.2, i32 %i.fn, i32 %i.fp ; 3 uses
  %i.fr = icmp ult i32 %i.fq, -1082130432
  %i.fs = sub nuw i32 -1082130432, %i.fq
  %i.ft = add i32 %i.fq, 1082130432
  %i.fu = select i1 %i.fr, i32 %i.fs, i32 %i.ft
  %i.fv = icmp ult i32 %i.fu, 3
  br i1 %i.fv, label %bb.j, label %.critedge20.loopexit

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !12
  %i.fy = fptrunc double %i.fx to float           ; 2 uses
  %i.fz = bitcast float %i.fy to i32              ; 2 uses
  %i.ga = and i32 %i.fz, 2139095040
  %i.gb = icmp eq i32 %i.ga, 2139095040
  br i1 %i.gb, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2: ; preds = %bb.j
  %i.gc = tail call float @llvm.fabs.f32(float %i.fy) ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = bitcast float %i.gd to i32
  %i.gf = bitcast float %i.gc to i32
  %i.gg = sub nuw i32 -2147483648, %i.gf
  %.narrow.i27.i.i21.3.2 = icmp sgt i32 %i.fz, 0
  %i.gh = select i1 %.narrow.i27.i.i21.3.2, i32 %i.ge, i32 %i.gg ; 3 uses
  %i.gi = sub nuw i32 -2147483648, %i.gh
  %i.gj = xor i32 %i.gh, -2147483648
  %.narrow.i.3.2 = icmp sgt i32 %i.gh, 0
  %i.gk = select i1 %.narrow.i.3.2, i32 %i.gi, i32 %i.gj
  %i.gl = icmp ult i32 %i.gk, 3
  br i1 %i.gl, label %.critedge.2, label %.critedge20.loopexit

.critedge.2:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !12
  %i.go = fptrunc double %i.gn to float           ; 2 uses
  %i.gp = bitcast float %i.go to i32              ; 2 uses
  %i.gq = and i32 %i.gp, 2139095040
  %i.gr = icmp eq i32 %i.gq, 2139095040
  br i1 %i.gr, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335: ; preds = %.critedge.2
  %i.gs = tail call float @llvm.fabs.f32(float %i.go) ; 2 uses
  %i.gt = fneg float %i.gs
  %i.gu = bitcast float %i.gt to i32
  %i.gv = bitcast float %i.gs to i32
  %i.gw = sub nuw i32 -2147483648, %i.gv
  %.narrow.i27.i.i21.342 = icmp sgt i32 %i.gp, 0
  %i.gx = select i1 %.narrow.i27.i.i21.342, i32 %i.gu, i32 %i.gw ; 3 uses
  %i.gy = sub nuw i32 -2147483648, %i.gx
  %i.gz = xor i32 %i.gx, -2147483648
  %.narrow.i.343 = icmp sgt i32 %i.gx, 0
  %i.ha = select i1 %.narrow.i.343, i32 %i.gy, i32 %i.gz
  %i.hb = icmp ult i32 %i.ha, 3
  br i1 %i.hb, label %bb.k, label %.critedge20.loopexit

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !12
  %i.he = fptrunc double %i.hd to float           ; 2 uses
  %i.hf = bitcast float %i.he to i32              ; 2 uses
  %i.hg = and i32 %i.hf, 2139095040
  %i.hh = icmp eq i32 %i.hg, 2139095040
  br i1 %i.hh, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3: ; preds = %bb.k
  %i.hi = tail call float @llvm.fabs.f32(float %i.he) ; 2 uses
  %i.hj = fneg float %i.hi
  %i.hk = bitcast float %i.hj to i32
  %i.hl = bitcast float %i.hi to i32
  %i.hm = sub nuw i32 -2147483648, %i.hl
  %.narrow.i27.i.i21.1.3 = icmp sgt i32 %i.hf, 0
  %i.hn = select i1 %.narrow.i27.i.i21.1.3, i32 %i.hk, i32 %i.hm ; 3 uses
  %i.ho = sub nuw i32 -2147483648, %i.hn
  %i.hp = xor i32 %i.hn, -2147483648
  %.narrow.i.1.3 = icmp sgt i32 %i.hn, 0
  %i.hq = select i1 %.narrow.i.1.3, i32 %i.ho, i32 %i.hp
  %i.hr = icmp ult i32 %i.hq, 3
  br i1 %i.hr, label %bb.l, label %.critedge20.loopexit

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !12
  %i.hu = fptrunc double %i.ht to float           ; 2 uses
  %i.hv = bitcast float %i.hu to i32              ; 2 uses
  %i.hw = and i32 %i.hv, 2139095040
  %i.hx = icmp eq i32 %i.hw, 2139095040
  br i1 %i.hx, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3: ; preds = %bb.l
  %i.hy = tail call float @llvm.fabs.f32(float %i.hu) ; 2 uses
  %i.hz = fneg float %i.hy
  %i.ia = bitcast float %i.hz to i32
  %i.ib = bitcast float %i.hy to i32
  %i.ic = sub nuw i32 -2147483648, %i.ib
  %.narrow.i27.i.i21.2.3 = icmp sgt i32 %i.hv, 0
  %i.id = select i1 %.narrow.i27.i.i21.2.3, i32 %i.ia, i32 %i.ic ; 3 uses
  %i.ie = sub nuw i32 -2147483648, %i.id
  %i.if = xor i32 %i.id, -2147483648
  %.narrow.i.2.3 = icmp sgt i32 %i.id, 0
  %i.ig = select i1 %.narrow.i.2.3, i32 %i.ie, i32 %i.if
  %i.ih = icmp ult i32 %i.ig, 3
  br i1 %i.ih, label %bb.m, label %.critedge20.loopexit

bb.m:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !12
  %i.ik = fptrunc double %i.ij to float           ; 2 uses
  %i.il = bitcast float %i.ik to i32              ; 2 uses
  %i.im = and i32 %i.il, 2139095040
  %i.in = icmp eq i32 %i.im, 2139095040
  br i1 %i.in, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3: ; preds = %bb.m
  %i.io = tail call float @llvm.fabs.f32(float %i.ik) ; 2 uses
  %i.ip = fneg float %i.io
  %i.iq = bitcast float %i.ip to i32
  %i.ir = bitcast float %i.io to i32
  %i.is = sub nuw i32 -2147483648, %i.ir
  %.narrow.i27.i.i.3.3 = icmp sgt i32 %i.il, 0
  %i.it = select i1 %.narrow.i27.i.i.3.3, i32 %i.iq, i32 %i.is ; 3 uses
  %i.iu = icmp ult i32 %i.it, -1082130432
  %i.iv = sub nuw i32 -1082130432, %i.it
  %i.iw = add i32 %i.it, 1082130432
  %i.ix = select i1 %i.iu, i32 %i.iv, i32 %i.iw
  %i.iy = icmp ult i32 %i.ix, 3
  br i1 %i.iy, label %.critedge20, label %.critedge20.loopexit

.critedge20.loopexit:                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3, %bb.m, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3, %bb.l, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3, %bb.k, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335, %.critedge.2, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2, %bb.j, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2, %bb.i, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2, %bb.h, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233, %.critedge.1, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1, %bb.g, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1, %bb.f, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1, %bb.e, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131, %.critedge, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3, %bb.d, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2, %bb.c, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1, %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit, %bb.a
  br label %.critedge20

.critedge20:                                      ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3, %.critedge20.loopexit
  %i.iz = phi i1 [ false, %.critedge20.loopexit ], [ true, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3 ]
  ret i1 %i.iz
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_520GetSafeScalarInverseEff(float noundef %0, float noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 2 uses
  %i.b = and i32 %i.a, 2139095040
  %i.c = icmp eq i32 %i.b, 2139095040
  br i1 %i.c, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a
  %i.d = fdiv float 1.000000e+00, %0
  br label %bb.c

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %bb.a
  %i.e = tail call float @llvm.fabs.f32(float %0) ; 2 uses
  %i.f = fneg float %i.e
  %i.g = bitcast float %i.f to i32
  %i.h = bitcast float %i.e to i32
  %i.i = sub nuw i32 -2147483648, %i.h
  %.narrow.i27.i.i = icmp sgt i32 %i.a, 0
  %i.j = select i1 %.narrow.i27.i.i, i32 %i.g, i32 %i.i ; 3 uses
  %i.k = sub nuw i32 -2147483648, %i.j
  %i.l = xor i32 %i.j, -2147483648
  %.narrow.i = icmp sgt i32 %i.j, 0
  %i.m = select i1 %.narrow.i, i32 %i.k, i32 %i.l
  %.fr = freeze i32 %i.m
  %i.n = icmp ult i32 %.fr, 3
  %i.o = fdiv float 1.000000e+00, %0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %bb.b
  %i.p = phi float [ %1, %bb.b ], [ %i.o, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ %i.d, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ]
  ret float %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_515VecContainsZeroEPKfi(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.d = bitcast float %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  br i1 %i.f, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %.lr.ph
  %i.g = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.h = fneg float %i.g
  %i.i = bitcast float %i.h to i32
  %i.j = bitcast float %i.g to i32
  %i.k = sub nuw i32 -2147483648, %i.j
  %.narrow.i27.i.i = icmp sgt i32 %i.d, 0
  %i.l = select i1 %.narrow.i27.i.i, i32 %i.i, i32 %i.k ; 3 uses
  %i.m = sub nuw i32 -2147483648, %i.l
  %i.n = xor i32 %i.l, -2147483648
  %.narrow.i = icmp sgt i32 %i.l, 0
  %i.o = select i1 %.narrow.i, i32 %i.m, i32 %i.n
  %i.p = icmp ult i32 %i.o, 3
  br i1 %i.p, label %._crit_edge, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ], [ true, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_514VecContainsOneEPKfi(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 2 uses
  %i.d = bitcast float %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  br i1 %i.f, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit: ; preds = %.lr.ph
  %i.g = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.h = fneg float %i.g
  %i.i = bitcast float %i.h to i32
  %i.j = bitcast float %i.g to i32
  %i.k = sub nuw i32 -2147483648, %i.j
  %.narrow.i27.i.i = icmp sgt i32 %i.d, 0
  %i.l = select i1 %.narrow.i27.i.i, i32 %i.i, i32 %i.k ; 3 uses
  %i.m = icmp ult i32 %i.l, -1082130432
  %i.n = sub nuw i32 -1082130432, %i.l
  %i.o = add nsw i32 %i.l, 1082130432
  %i.p = select i1 %i.m, i32 %i.n, i32 %i.o
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %._crit_edge, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread: ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread ], [ true, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN16OpenColorIO_v2_515ClampToNormHalfEd(double noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp olt double %0, -6.550400e+04
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.fabs.f64(double %0)
  %or.cond = fcmp olt double %i.b, f0x3F0FFFFFFF8F68F6
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp ogt double %0, 6.550400e+04
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %.0 = phi double [ %0, %bb.c ], [ 0.000000e+00, %bb.b ], [ 6.550400e+04, %bb.d ], [ -6.550400e+04, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_522ConvertHalfBitsToFloatEt(i16 noundef zeroext %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !20
  %i.b = zext i16 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !23
  ret float %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN16OpenColorIO_v2_513SanitizeFloatEf(float noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = fcmp oeq float %0, -inf
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq float %0, +inf
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv = fcmp ord float %0, 0.000000e+00
  %. = select i1 %.inv, float %0, float 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi float [ %., %bb.c ], [ f0xFF7FFFFF, %bb.a ], [ f0x7F7FFFFF, %bb.b ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetM44InverseEPfPKf(ptr noundef writeonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !9
  %i.g = insertelement <2 x float> poison, float %i.f, i64 0
  %i.h = insertelement <2 x float> %i.g, float %i.a, i64 1
  %i.i = fpext <2 x float> %i.h to <2 x double>   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !9
  %i.m = load <2 x float>, ptr %i.b, align 4, !tbaa !9 ; 2 uses
  %i.n = load <2 x float>, ptr %i.j, align 4, !tbaa !9 ; 2 uses
  %i.o = shufflevector <2 x float> %i.n, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.p = fpext <2 x float> %i.o to <2 x double>   ; 5 uses
  %i.q = shufflevector <2 x float> %i.n, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.r = fpext <2 x float> %i.q to <2 x double>   ; 5 uses
  %i.s = insertelement <2 x float> poison, float %i.l, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.d, i64 1
  %i.u = fpext <2 x float> %i.t to <2 x double>   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load float, ptr %i.v, align 4, !tbaa !9
  %i.x = fpext float %i.w to double               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load float, ptr %i.y, align 4, !tbaa !9
  %i.aa = fpext float %i.z to double              ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !9
  %i.ad = fpext float %i.ac to double             ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ag = fpext float %i.af to double             ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !9
  %i.aj = fpext float %i.ai to double             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.al = load float, ptr %i.ak, align 4, !tbaa !9
  %i.am = fpext float %i.al to double             ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load float, ptr %i.an, align 4, !tbaa !9
  %i.ap = fpext float %i.ao to double             ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !9
  %i.as = fpext float %i.ar to double             ; 6 uses
  %i.at = fneg double %i.x                        ; 5 uses
  %i.au = extractelement <2 x double> %i.p, i64 0 ; 3 uses
  %i.av = fmul double %i.au, %i.at
  %i.aw = extractelement <2 x double> %i.i, i64 0 ; 3 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aa, double %i.av) ; 3 uses
  %i.ay = extractelement <2 x double> %i.r, i64 0 ; 3 uses
  %i.az = fmul double %i.ay, %i.at
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ad, double %i.az) ; 3 uses
  %i.bb = extractelement <2 x double> %i.u, i64 0 ; 3 uses
  %i.bc = fmul double %i.bb, %i.at
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ag, double %i.bc) ; 3 uses
  %i.be = fneg double %i.aa                       ; 2 uses
  %i.bf = fmul double %i.ay, %i.be
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ad, double %i.bf) ; 3 uses
  %i.bh = fmul double %i.bb, %i.be
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ag, double %i.bh) ; 3 uses
  %i.bj = fneg double %i.ad
  %i.bk = fmul double %i.bb, %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ag, double %i.bk) ; 3 uses
  %i.bm = fneg double %i.bi
  %i.bn = fmul double %i.ap, %i.bm
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.am, double %i.bl, double %i.bn)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.as, double %i.bg, double %i.bo) ; 2 uses
  %i.bq = fneg double %i.ba                       ; 2 uses
  %i.br = fmul double %i.as, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.bd, double %i.br)
  %i.bt = fneg double %i.aj                       ; 5 uses
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bl, double %i.bs) ; 2 uses
  %i.bv = fneg double %i.bd                       ; 2 uses
  %i.bw = fmul double %i.am, %i.bv
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.bi, double %i.bw)
  %i.by = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ax, double %i.bx) ; 2 uses
  %i.bz = fneg double %i.ax                       ; 2 uses
  %i.ca = fmul double %i.ap, %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ba, double %i.ca)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bg, double %i.cb) ; 2 uses
  %i.cd = extractelement <2 x double> %i.p, i64 1 ; 4 uses
  %i.ce = fmul double %i.bu, %i.cd
  %i.cf = extractelement <2 x double> %i.i, i64 1 ; 4 uses
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.cf, double %i.ce)
  %i.ch = extractelement <2 x double> %i.r, i64 1 ; 4 uses
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.by, double %i.ch, double %i.cg)
  %i.cj = extractelement <2 x double> %i.u, i64 1 ; 4 uses
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cj, double %i.ci) ; 2 uses
  %i.cl = fptrunc double %i.ck to float           ; 2 uses
  %i.cm = bitcast float %i.cl to i32              ; 2 uses
  %i.cn = and i32 %i.cm, 2139095040
  %i.co = icmp eq i32 %i.cn, 2139095040
  br i1 %i.co, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %bb.a
  %i.cp = tail call float @llvm.fabs.f32(float %i.cl) ; 2 uses
  %i.cq = fneg float %i.cp
  %i.cr = bitcast float %i.cq to i32
  %i.cs = bitcast float %i.cp to i32
  %i.ct = sub nuw i32 -2147483648, %i.cs
  %.narrow.i27.i.i = icmp sgt i32 %i.cm, 0
  %i.cu = select i1 %.narrow.i27.i.i, i32 %i.cr, i32 %i.ct ; 3 uses
  %i.cv = sub nuw i32 -2147483648, %i.cu
  %i.cw = xor i32 %i.cu, -2147483648
  %.narrow.i = icmp sgt i32 %i.cu, 0
  %i.cx = select i1 %.narrow.i, i32 %i.cv, i32 %i.cw
  %i.cy = icmp ult i32 %i.cx, 3
  br i1 %i.cy, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %i.cz = fdiv double 1.000000e+00, %i.ck
  %i.da = fmul double %i.cd, %i.bt
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.am, double %i.da) ; 3 uses
  %i.dc = fmul double %i.ch, %i.bt
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ap, double %i.dc) ; 3 uses
  %i.de = fmul double %i.cj, %i.bt
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.as, double %i.de) ; 3 uses
  %i.dg = fneg double %i.am                       ; 2 uses
  %i.dh = fmul double %i.ch, %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ap, double %i.dh) ; 3 uses
  %i.dj = fmul double %i.cj, %i.dg
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.as, double %i.dj) ; 3 uses
  %i.dl = fneg double %i.ap
  %i.dm = fmul double %i.cj, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.as, double %i.dm) ; 3 uses
  %i.do = fneg double %i.dk
  %i.dp = fmul double %i.ad, %i.do
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.dn, double %i.dp)
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.di, double %i.dq)
  %i.ds = fneg double %i.dd                       ; 2 uses
  %i.dt = fmul double %i.ag, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.df, double %i.dt)
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.at, double %i.dn, double %i.du)
  %i.dw = fneg double %i.df                       ; 2 uses
  %i.dx = fmul double %i.aa, %i.dw
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.x, double %i.dk, double %i.dx)
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.db, double %i.dy)
  %i.ea = fneg double %i.db                       ; 2 uses
  %i.eb = fmul double %i.ad, %i.ea
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.dd, double %i.eb)
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.at, double %i.di, double %i.ec)
  %i.ee = fneg <2 x double> %i.p
  %i.ef = insertelement <2 x double> poison, double %i.di, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.bg, i64 1 ; 2 uses
  %i.eh = fneg <2 x double> %i.eg
  %i.ei = fmul <2 x double> %i.u, %i.eh
  %i.ej = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.bi, i64 1 ; 2 uses
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.ek, <2 x double> %i.ei)
  %i.em = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.bl, i64 1 ; 2 uses
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.en, <2 x double> %i.el)
  %i.ep = insertelement <4 x double> poison, double %i.cz, i64 0
  %i.eq = shufflevector <4 x double> %i.ep, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.er = insertelement <4 x double> poison, double %i.bp, i64 0
  %i.es = insertelement <4 x double> %i.er, double %i.dr, i64 1
  %i.et = shufflevector <2 x double> %i.eo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x double> %i.es, <4 x double> %i.et, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ev = fmul <4 x double> %i.eq, %i.eu
  %i.ew = fptrunc <4 x double> %i.ev to <4 x float>
  store <4 x float> %i.ew, ptr %0, align 4, !tbaa !9
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.bv, i64 1
  %i.fa = fmul <2 x double> %i.ez, %i.r
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.en, <2 x double> %i.fa)
  %i.fc = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.ba, i64 1
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.fd, <2 x double> %i.fb)
  %i.ff = insertelement <4 x double> poison, double %i.bu, i64 0
  %i.fg = insertelement <4 x double> %i.ff, double %i.dv, i64 1
  %i.fh = shufflevector <2 x double> %i.fe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x double> %i.fg, <4 x double> %i.fh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fj = fmul <4 x double> %i.eq, %i.fi
  %i.fk = fptrunc <4 x double> %i.fj to <4 x float>
  store <4 x float> %i.fk, ptr %i.ex, align 4, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.bz, i64 1
  %i.fo = fmul <2 x double> %i.fn, %i.u
  %i.fp = insertelement <2 x double> poison, double %i.df, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.bd, i64 1
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.fq, <2 x double> %i.fo)
  %i.fs = fneg <2 x double> %i.i
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.ek, <2 x double> %i.fr)
  %i.fu = insertelement <4 x double> poison, double %i.by, i64 0
  %i.fv = insertelement <4 x double> %i.fu, double %i.dz, i64 1
  %i.fw = shufflevector <2 x double> %i.ft, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x double> %i.fv, <4 x double> %i.fw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fy = fmul <4 x double> %i.eq, %i.fx
  %i.fz = fptrunc <4 x double> %i.fy to <4 x float>
  store <4 x float> %i.fz, ptr %i.fl, align 4, !tbaa !9
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gb = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.bq, i64 1
  %i.gd = fmul <2 x double> %i.gc, %i.p
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> %i.eg, <2 x double> %i.gd)
  %i.gf = insertelement <2 x double> poison, double %i.db, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.ax, i64 1
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.gg, <2 x double> %i.ge)
  %i.gi = insertelement <4 x double> poison, double %i.cc, i64 0
  %i.gj = insertelement <4 x double> %i.gi, double %i.ed, i64 1
  %i.gk = shufflevector <2 x double> %i.gh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gl = shufflevector <4 x double> %i.gj, <4 x double> %i.gk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gm = fmul <4 x double> %i.eq, %i.gl
  %i.gn = fptrunc <4 x double> %i.gm to <4 x float>
  store <4 x float> %i.gn, ptr %i.ga, align 4, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread
  %.0 = phi i1 [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ true, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_516GetM44M44ProductEPfPKfS2_(ptr noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.049.0.copyload = load float, ptr %1, align 4
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.753.0.copyload = load float, ptr %.sroa.753.0..sroa_idx, align 4
  %.sroa.1157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.1157.0.copyload = load float, ptr %.sroa.1157.0..sroa_idx, align 4
  %.sroa.1561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.1561.0.copyload = load float, ptr %.sroa.1561.0..sroa_idx, align 4
  %.sroa.1965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.1965.0.copyload = load float, ptr %.sroa.1965.0..sroa_idx, align 4
  %.sroa.2369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.2369.0.copyload = load float, ptr %.sroa.2369.0..sroa_idx, align 4
  %.sroa.2773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2773.0.copyload = load float, ptr %.sroa.2773.0..sroa_idx, align 4
  %.sroa.3177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.3177.0.copyload = load float, ptr %.sroa.3177.0..sroa_idx, align 4
  %.sroa.3581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.3581.0.copyload = load float, ptr %.sroa.3581.0..sroa_idx, align 4
  %.sroa.3985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.3985.0.copyload = load float, ptr %.sroa.3985.0..sroa_idx, align 4
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.4389.0.copyload = load float, ptr %.sroa.4389.0..sroa_idx, align 4
  %.sroa.4793.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.4793.0.copyload = load float, ptr %.sroa.4793.0..sroa_idx, align 4
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.5197.0.copyload = load float, ptr %.sroa.5197.0..sroa_idx, align 4
  %.sroa.55101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.55101.0.copyload = load float, ptr %.sroa.55101.0..sroa_idx, align 4
  %.sroa.59105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.59105.0.copyload = load float, ptr %.sroa.59105.0..sroa_idx, align 4
  %.sroa.63109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.63109.0.copyload = load float, ptr %.sroa.63109.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.a = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %.sroa.19.0..sroa_idx, align 4 ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.35.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.51.0..sroa_idx, align 4 ; 4 uses
  %i.e = insertelement <4 x float> poison, float %.sroa.753.0.copyload, i64 0
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <4 x i32> zeroinitializer
  %i.g = fmul <4 x float> %i.f, %i.b
  %i.h = insertelement <4 x float> poison, float %.sroa.049.0.copyload, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.a, <4 x float> %i.g)
  %i.k = insertelement <4 x float> poison, float %.sroa.1157.0.copyload, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.c, <4 x float> %i.j)
  %i.n = insertelement <4 x float> poison, float %.sroa.1561.0.copyload, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.d, <4 x float> %i.m)
  store <4 x float> %i.p, ptr %0, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = insertelement <4 x float> poison, float %.sroa.2369.0.copyload, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = fmul <4 x float> %i.s, %i.b
  %i.u = insertelement <4 x float> poison, float %.sroa.1965.0.copyload, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.a, <4 x float> %i.t)
  %i.x = insertelement <4 x float> poison, float %.sroa.2773.0.copyload, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.c, <4 x float> %i.w)
  %i.aa = insertelement <4 x float> poison, float %.sroa.3177.0.copyload, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.d, <4 x float> %i.z)
  store <4 x float> %i.ac, ptr %i.q, align 4, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = insertelement <4 x float> poison, float %.sroa.3985.0.copyload, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fmul <4 x float> %i.af, %i.b
  %i.ah = insertelement <4 x float> poison, float %.sroa.3581.0.copyload, i64 0
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.a, <4 x float> %i.ag)
  %i.ak = insertelement <4 x float> poison, float %.sroa.4389.0.copyload, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.c, <4 x float> %i.aj)
  %i.an = insertelement <4 x float> poison, float %.sroa.4793.0.copyload, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.d, <4 x float> %i.am)
  store <4 x float> %i.ap, ptr %i.ad, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = insertelement <4 x float> poison, float %.sroa.55101.0.copyload, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = fmul <4 x float> %i.as, %i.b
  %i.au = insertelement <4 x float> poison, float %.sroa.5197.0.copyload, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.a, <4 x float> %i.at)
end_hunk_0
