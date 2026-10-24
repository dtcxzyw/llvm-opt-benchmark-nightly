Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/MathUtils?download=true
inline.NumInlined: 58
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_ = comdat any

$_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_ = comdat any

$_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_ = comdat any

$_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_ = comdat any

$_ZN16OpenColorIO_v2_516IsVecEqualToZeroIfEEbPKT_j = comdat any

$_ZN16OpenColorIO_v2_516IsVecEqualToZeroIdEEbPKT_j = comdat any

$_ZN16OpenColorIO_v2_515IsVecEqualToOneIfEEbPKT_j = comdat any

$_ZN16OpenColorIO_v2_515IsVecEqualToOneIdEEbPKT_j = comdat any

$_ZN16OpenColorIO_v2_521VecsEqualWithRelErrorIfEEbPKT_jS3_jS1_ = comdat any

$_ZN16OpenColorIO_v2_521VecsEqualWithRelErrorIdEEbPKT_jS3_jS1_ = comdat any

$_ZN16OpenColorIO_v2_513IsM44IdentityIfEEbPKT_ = comdat any

$_ZN16OpenColorIO_v2_513IsM44IdentityIdEEbPKT_ = comdat any

@imath_half_to_float_table = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_(float noundef %0) local_unnamed_addr #0 comdat {
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
  %i.h = icmp slt i32 %i.a, 0
  %i.i = sub nsw i32 -2147483648, %i.f
  %1 = select i1 %i.h, i32 %i.g, i32 %i.i
  %2 = add i32 %1, 2
  %i.j = icmp ult i32 %2, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_512FloatsDifferEffib(float noundef %0, float noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 6 uses
  %i.b = bitcast float %1 to i32                  ; 7 uses
  %i.c = and i32 %i.a, 8388607
  %i.d = and i32 %i.b, 8388607
  %i.e = and i32 %i.a, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  %i.g = and i32 %i.b, 2139095040
  %i.h = icmp eq i32 %i.g, 2139095040             ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.c, 0
  %i.j = icmp eq i32 %i.d, 0
  %i.k = or i32 %i.b, %i.a
  %i.l = and i32 %i.k, 8388607
  %brmerge.not = icmp eq i32 %i.l, 0
  %.mux = or i1 %i.i, %i.j
  %.unshifted = xor i32 %i.b, %i.a
  %i.m = icmp slt i32 %.unshifted, 0
  %spec.select = select i1 %brmerge.not, i1 %i.m, i1 %.mux
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call float @llvm.fabs.f32(float %0) ; 3 uses
  %i.o = icmp slt i32 %i.a, 0                     ; 2 uses
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = bitcast float %i.n to i32                ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 8388608
  %i.r = add nuw i32 %i.a, 2139095041
  %i.s = sub nuw i32 -2139095041, %i.p
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.r
  %.0.i = select i1 %i.q, i32 -2147483648, i32 %i.t
  %i.u = tail call float @llvm.fabs.f32(float %1)
  %i.v = bitcast float %i.u to i32                ; 2 uses
  %i.w = icmp samesign ult i32 %i.v, 8388608
  %i.x = add nuw i32 %i.b, 2139095041
  %i.y = sub nuw i32 -2139095041, %i.v
  %i.z = icmp slt i32 %i.b, 0
  %i.aa = select i1 %i.z, i32 %i.y, i32 %i.x
  %.0.i26 = select i1 %i.w, i32 -2147483648, i32 %i.aa
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = fneg float %i.n
  %i.ac = bitcast float %i.ab to i32
  %i.ad = bitcast float %i.n to i32
  %i.ae = sub nuw i32 -2147483648, %i.ad
  %i.af = select i1 %i.o, i32 %i.ae, i32 %i.ac
  %i.ag = tail call float @llvm.fabs.f32(float %1) ; 2 uses
  %i.ah = fneg float %i.ag
  %i.ai = bitcast float %i.ah to i32
  %i.aj = bitcast float %i.ag to i32
  %i.ak = sub nuw i32 -2147483648, %i.aj
  %i.al = icmp slt i32 %i.b, 0
  %i.am = select i1 %i.al, i32 %i.ak, i32 %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.023 = phi i32 [ %.0.i, %bb.f ], [ %i.af, %bb.g ]
  %.0 = phi i32 [ %.0.i26, %bb.f ], [ %i.am, %bb.g ]
  %i.an = sub nsw i32 %.023, %.0
  %4 = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ao = icmp ugt i32 %4, %2
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.h
  %.1 = phi i1 [ %i.ao, %bb.h ], [ %spec.select, %bb.c ], [ true, %bb.b ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_(double noundef %0) local_unnamed_addr #0 comdat {
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
  %i.i = icmp slt i32 %i.b, 0
  %i.j = sub nsw i32 -2147483648, %i.g
  %1 = select i1 %i.i, i32 %i.h, i32 %i.j
  %2 = add i32 %1, 2
  %i.k = icmp ult i32 %2, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_(float noundef %0) local_unnamed_addr #0 comdat {
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
  %i.i = icmp slt i32 %i.a, 0
  %i.j = select i1 %i.i, i32 %i.h, i32 %i.f
  %i.k = add i32 %i.j, 1082130434
  %i.l = icmp ult i32 %i.k, 5
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_(double noundef %0) local_unnamed_addr #0 comdat {
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
  %i.j = icmp slt i32 %i.b, 0
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.g
  %i.l = add i32 %i.k, 1082130434
  %i.m = icmp ult i32 %i.l, 5
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_516IsVecEqualToZeroIfEEbPKT_j(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = bitcast float %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  br i1 %i.f, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %.lr.ph
  %i.g = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.h = fneg float %i.g
  %i.i = bitcast float %i.h to i32
  %i.j = bitcast float %i.g to i32
  %i.k = icmp slt i32 %i.d, 0
  %i.l = sub nsw i32 -2147483648, %i.i
  %2 = select i1 %i.k, i32 %i.j, i32 %i.l
  %3 = add i32 %2, 2
  %i.m = icmp ult i32 %3, 3
  br i1 %i.m, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.b, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_516IsVecEqualToZeroIdEEbPKT_j(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread, label %.lr.ph, !llvm.loop !14

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
  %i.l = icmp slt i32 %i.e, 0
  %i.m = sub nsw i32 -2147483648, %i.j
  %2 = select i1 %i.l, i32 %i.k, i32 %i.m
  %3 = add i32 %2, 2
  %i.n = icmp ult i32 %3, 3
  br i1 %i.n, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.thread: ; preds = %bb.b, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_515IsVecEqualToOneIfEEbPKT_j(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread, label %.lr.ph, !llvm.loop !15

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
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
  %i.l = icmp slt i32 %i.d, 0
  %i.m = select i1 %i.l, i32 %i.k, i32 %i.i
  %i.n = add i32 %i.m, 1082130434
  %i.o = icmp ult i32 %i.n, 5
  br i1 %i.o, label %bb.b, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread: ; preds = %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_515IsVecEqualToOneIdEEbPKT_j(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread, label %.lr.ph, !llvm.loop !16

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
  %i.m = icmp slt i32 %i.e, 0
  %i.n = select i1 %i.m, i32 %i.l, i32 %i.j
  %i.o = add i32 %i.n, 1082130434
  %i.p = icmp ult i32 %i.o, 5
  br i1 %i.p, label %bb.b, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.thread: ; preds = %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_521VecsEqualWithRelErrorIfEEbPKT_jS3_jS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #0 comdat {
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
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 6 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 3 uses
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
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.n, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_521VecsEqualWithRelErrorIdEEbPKT_jS3_jS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, double noundef %4) local_unnamed_addr #0 comdat {
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
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %i.n, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513IsM44IdentityIfEEbPKT_(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
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
  %i.j = icmp slt i32 %i.b, 0
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.g
  %i.l = add i32 %i.k, 1082130434
  %i.m = icmp ult i32 %i.l, 5
  br i1 %i.m, label %bb.b, label %.critedge20.loopexit

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = bitcast float %i.o to i32                ; 2 uses
  %i.q = and i32 %i.p, 2139095040
  %i.r = icmp eq i32 %i.q, 2139095040
  br i1 %i.r, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1: ; preds = %bb.b
  %i.s = tail call float @llvm.fabs.f32(float %i.o) ; 2 uses
  %i.t = fneg float %i.s
  %i.u = bitcast float %i.t to i32
  %i.v = bitcast float %i.s to i32
  %i.w = icmp slt i32 %i.p, 0
  %i.x = sub nsw i32 -2147483648, %i.u
  %1 = select i1 %i.w, i32 %i.v, i32 %i.x
  %2 = add i32 %1, 2
  %i.y = icmp ult i32 %2, 3
  br i1 %i.y, label %bb.c, label %.critedge20.loopexit

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !10 ; 2 uses
  %i.ab = bitcast float %i.aa to i32              ; 2 uses
  %i.ac = and i32 %i.ab, 2139095040
  %i.ad = icmp eq i32 %i.ac, 2139095040
  br i1 %i.ad, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2: ; preds = %bb.c
  %i.ae = tail call float @llvm.fabs.f32(float %i.aa) ; 2 uses
  %i.af = fneg float %i.ae
  %i.ag = bitcast float %i.af to i32
  %i.ah = bitcast float %i.ae to i32
  %i.ai = icmp slt i32 %i.ab, 0
  %i.aj = sub nsw i32 -2147483648, %i.ag
  %3 = select i1 %i.ai, i32 %i.ah, i32 %i.aj
  %4 = add i32 %3, 2
  %i.ak = icmp ult i32 %4, 3
  br i1 %i.ak, label %bb.d, label %.critedge20.loopexit

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !10 ; 2 uses
  %i.an = bitcast float %i.am to i32              ; 2 uses
  %i.ao = and i32 %i.an, 2139095040
  %i.ap = icmp eq i32 %i.ao, 2139095040
  br i1 %i.ap, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3: ; preds = %bb.d
  %i.aq = tail call float @llvm.fabs.f32(float %i.am) ; 2 uses
  %i.ar = fneg float %i.aq
  %i.as = bitcast float %i.ar to i32
  %i.at = bitcast float %i.aq to i32
  %i.au = icmp slt i32 %i.an, 0
  %i.av = sub nsw i32 -2147483648, %i.as
  %5 = select i1 %i.au, i32 %i.at, i32 %i.av
  %6 = add i32 %5, 2
  %i.aw = icmp ult i32 %6, 3
  br i1 %i.aw, label %.critedge, label %.critedge20.loopexit

.critedge:                                        ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !10 ; 2 uses
  %i.az = bitcast float %i.ay to i32              ; 2 uses
  %i.ba = and i32 %i.az, 2139095040
  %i.bb = icmp eq i32 %i.ba, 2139095040
  br i1 %i.bb, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.131

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.131: ; preds = %.critedge
  %i.bc = tail call float @llvm.fabs.f32(float %i.ay) ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = bitcast float %i.bd to i32
  %i.bf = bitcast float %i.bc to i32
  %i.bg = icmp slt i32 %i.az, 0
  %i.bh = sub nsw i32 -2147483648, %i.be
  %7 = select i1 %i.bg, i32 %i.bf, i32 %i.bh
  %8 = add i32 %7, 2
  %i.bi = icmp ult i32 %8, 3
  br i1 %i.bi, label %bb.e, label %.critedge20.loopexit

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.131
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !10 ; 2 uses
  %i.bl = bitcast float %i.bk to i32              ; 2 uses
  %i.bm = and i32 %i.bl, 2139095040
  %i.bn = icmp eq i32 %i.bm, 2139095040
  br i1 %i.bn, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.1.1

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.1.1: ; preds = %bb.e
  %i.bo = tail call float @llvm.fabs.f32(float %i.bk) ; 2 uses
  %i.bp = fneg float %i.bo
  %i.bq = bitcast float %i.bp to i32
  %i.br = bitcast float %i.bo to i32
  %i.bs = sub nuw i32 -2147483648, %i.br
  %i.bt = icmp slt i32 %i.bl, 0
  %i.bu = select i1 %i.bt, i32 %i.bs, i32 %i.bq
  %i.bv = add i32 %i.bu, 1082130434
  %i.bw = icmp ult i32 %i.bv, 5
  br i1 %i.bw, label %bb.f, label %.critedge20.loopexit

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.1.1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10 ; 2 uses
  %i.bz = bitcast float %i.by to i32              ; 2 uses
  %i.ca = and i32 %i.bz, 2139095040
  %i.cb = icmp eq i32 %i.ca, 2139095040
  br i1 %i.cb, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.1: ; preds = %bb.f
  %i.cc = tail call float @llvm.fabs.f32(float %i.by) ; 2 uses
  %i.cd = fneg float %i.cc
  %i.ce = bitcast float %i.cd to i32
  %i.cf = bitcast float %i.cc to i32
  %i.cg = icmp slt i32 %i.bz, 0
  %i.ch = sub nsw i32 -2147483648, %i.ce
  %9 = select i1 %i.cg, i32 %i.cf, i32 %i.ch
  %10 = add i32 %9, 2
  %i.ci = icmp ult i32 %10, 3
  br i1 %i.ci, label %bb.g, label %.critedge20.loopexit

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !10 ; 2 uses
  %i.cl = bitcast float %i.ck to i32              ; 2 uses
  %i.cm = and i32 %i.cl, 2139095040
  %i.cn = icmp eq i32 %i.cm, 2139095040
  br i1 %i.cn, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.1: ; preds = %bb.g
  %i.co = tail call float @llvm.fabs.f32(float %i.ck) ; 2 uses
  %i.cp = fneg float %i.co
  %i.cq = bitcast float %i.cp to i32
  %i.cr = bitcast float %i.co to i32
  %i.cs = icmp slt i32 %i.cl, 0
  %i.ct = sub nsw i32 -2147483648, %i.cq
  %11 = select i1 %i.cs, i32 %i.cr, i32 %i.ct
  %12 = add i32 %11, 2
  %i.cu = icmp ult i32 %12, 3
  br i1 %i.cu, label %.critedge.1, label %.critedge20.loopexit

.critedge.1:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !10 ; 2 uses
  %i.cx = bitcast float %i.cw to i32              ; 2 uses
  %i.cy = and i32 %i.cx, 2139095040
  %i.cz = icmp eq i32 %i.cy, 2139095040
  br i1 %i.cz, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.233

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.233: ; preds = %.critedge.1
  %i.da = tail call float @llvm.fabs.f32(float %i.cw) ; 2 uses
  %i.db = fneg float %i.da
  %i.dc = bitcast float %i.db to i32
  %i.dd = bitcast float %i.da to i32
  %i.de = icmp slt i32 %i.cx, 0
  %i.df = sub nsw i32 -2147483648, %i.dc
  %13 = select i1 %i.de, i32 %i.dd, i32 %i.df
  %14 = add i32 %13, 2
  %i.dg = icmp ult i32 %14, 3
  br i1 %i.dg, label %bb.h, label %.critedge20.loopexit

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.233
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.di = load float, ptr %i.dh, align 4, !tbaa !10 ; 2 uses
  %i.dj = bitcast float %i.di to i32              ; 2 uses
  %i.dk = and i32 %i.dj, 2139095040
  %i.dl = icmp eq i32 %i.dk, 2139095040
  br i1 %i.dl, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.2: ; preds = %bb.h
  %i.dm = tail call float @llvm.fabs.f32(float %i.di) ; 2 uses
  %i.dn = fneg float %i.dm
  %i.do = bitcast float %i.dn to i32
  %i.dp = bitcast float %i.dm to i32
  %i.dq = icmp slt i32 %i.dj, 0
  %i.dr = sub nsw i32 -2147483648, %i.do
  %15 = select i1 %i.dq, i32 %i.dp, i32 %i.dr
  %16 = add i32 %15, 2
  %i.ds = icmp ult i32 %16, 3
  br i1 %i.ds, label %bb.i, label %.critedge20.loopexit

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.2
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.du = load float, ptr %i.dt, align 4, !tbaa !10 ; 2 uses
  %i.dv = bitcast float %i.du to i32              ; 2 uses
  %i.dw = and i32 %i.dv, 2139095040
  %i.dx = icmp eq i32 %i.dw, 2139095040
  br i1 %i.dx, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.2.2

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.2.2: ; preds = %bb.i
  %i.dy = tail call float @llvm.fabs.f32(float %i.du) ; 2 uses
  %i.dz = fneg float %i.dy
  %i.ea = bitcast float %i.dz to i32
  %i.eb = bitcast float %i.dy to i32
  %i.ec = sub nuw i32 -2147483648, %i.eb
  %i.ed = icmp slt i32 %i.dv, 0
  %i.ee = select i1 %i.ed, i32 %i.ec, i32 %i.ea
  %i.ef = add i32 %i.ee, 1082130434
  %i.eg = icmp ult i32 %i.ef, 5
  br i1 %i.eg, label %bb.j, label %.critedge20.loopexit

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.2.2
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !10 ; 2 uses
  %i.ej = bitcast float %i.ei to i32              ; 2 uses
  %i.ek = and i32 %i.ej, 2139095040
  %i.el = icmp eq i32 %i.ek, 2139095040
  br i1 %i.el, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.2: ; preds = %bb.j
  %i.em = tail call float @llvm.fabs.f32(float %i.ei) ; 2 uses
  %i.en = fneg float %i.em
  %i.eo = bitcast float %i.en to i32
  %i.ep = bitcast float %i.em to i32
  %i.eq = icmp slt i32 %i.ej, 0
  %i.er = sub nsw i32 -2147483648, %i.eo
  %17 = select i1 %i.eq, i32 %i.ep, i32 %i.er
  %18 = add i32 %17, 2
  %i.es = icmp ult i32 %18, 3
  br i1 %i.es, label %.critedge.2, label %.critedge20.loopexit

.critedge.2:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.2
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eu = load float, ptr %i.et, align 4, !tbaa !10 ; 2 uses
  %i.ev = bitcast float %i.eu to i32              ; 2 uses
  %i.ew = and i32 %i.ev, 2139095040
  %i.ex = icmp eq i32 %i.ew, 2139095040
  br i1 %i.ex, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.335

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.335: ; preds = %.critedge.2
  %i.ey = tail call float @llvm.fabs.f32(float %i.eu) ; 2 uses
  %i.ez = fneg float %i.ey
  %i.fa = bitcast float %i.ez to i32
  %i.fb = bitcast float %i.ey to i32
  %i.fc = icmp slt i32 %i.ev, 0
  %i.fd = sub nsw i32 -2147483648, %i.fa
  %19 = select i1 %i.fc, i32 %i.fb, i32 %i.fd
  %20 = add i32 %19, 2
  %i.fe = icmp ult i32 %20, 3
  br i1 %i.fe, label %bb.k, label %.critedge20.loopexit

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.335
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !10 ; 2 uses
  %i.fh = bitcast float %i.fg to i32              ; 2 uses
  %i.fi = and i32 %i.fh, 2139095040
  %i.fj = icmp eq i32 %i.fi, 2139095040
  br i1 %i.fj, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.3: ; preds = %bb.k
  %i.fk = tail call float @llvm.fabs.f32(float %i.fg) ; 2 uses
  %i.fl = fneg float %i.fk
  %i.fm = bitcast float %i.fl to i32
  %i.fn = bitcast float %i.fk to i32
  %i.fo = icmp slt i32 %i.fh, 0
  %i.fp = sub nsw i32 -2147483648, %i.fm
  %21 = select i1 %i.fo, i32 %i.fn, i32 %i.fp
  %22 = add i32 %21, 2
  %i.fq = icmp ult i32 %22, 3
  br i1 %i.fq, label %bb.l, label %.critedge20.loopexit

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.3
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !10 ; 2 uses
  %i.ft = bitcast float %i.fs to i32              ; 2 uses
  %i.fu = and i32 %i.ft, 2139095040
  %i.fv = icmp eq i32 %i.fu, 2139095040
  br i1 %i.fv, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.3: ; preds = %bb.l
  %i.fw = tail call float @llvm.fabs.f32(float %i.fs) ; 2 uses
  %i.fx = fneg float %i.fw
  %i.fy = bitcast float %i.fx to i32
  %i.fz = bitcast float %i.fw to i32
  %i.ga = icmp slt i32 %i.ft, 0
  %i.gb = sub nsw i32 -2147483648, %i.fy
  %23 = select i1 %i.ga, i32 %i.fz, i32 %i.gb
  %24 = add i32 %23, 2
  %i.gc = icmp ult i32 %24, 3
  br i1 %i.gc, label %bb.m, label %.critedge20.loopexit

bb.m:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.3
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !10 ; 2 uses
  %i.gf = bitcast float %i.ge to i32              ; 2 uses
  %i.gg = and i32 %i.gf, 2139095040
  %i.gh = icmp eq i32 %i.gg, 2139095040
  br i1 %i.gh, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3: ; preds = %bb.m
  %i.gi = tail call float @llvm.fabs.f32(float %i.ge) ; 2 uses
  %i.gj = fneg float %i.gi
  %i.gk = bitcast float %i.gj to i32
  %i.gl = bitcast float %i.gi to i32
  %i.gm = sub nuw i32 -2147483648, %i.gl
  %i.gn = icmp slt i32 %i.gf, 0
  %i.go = select i1 %i.gn, i32 %i.gm, i32 %i.gk
  %i.gp = add i32 %i.go, 1082130434
  %i.gq = icmp ult i32 %i.gp, 5
  br i1 %i.gq, label %.critedge20, label %.critedge20.loopexit

.critedge20.loopexit:                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3, %bb.m, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.3, %bb.l, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.3, %bb.k, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.335, %.critedge.2, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.2, %bb.j, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.2.2, %bb.i, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1.2, %bb.h, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.233, %.critedge.1, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3.1, %bb.g, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2.1, %bb.f, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.1.1, %bb.e, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.131, %.critedge, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.3, %bb.d, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.2, %bb.c, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.1, %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit, %bb.a
  br label %.critedge20

.critedge20:                                      ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3, %.critedge20.loopexit
  %i.gr = phi i1 [ false, %.critedge20.loopexit ], [ true, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.3.3 ]
  ret i1 %i.gr
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513IsM44IdentityIdEEbPKT_(ptr noundef %0) local_unnamed_addr #0 comdat {
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
  %i.k = icmp slt i32 %i.c, 0
  %i.l = select i1 %i.k, i32 %i.j, i32 %i.h
  %i.m = add i32 %i.l, 1082130434
  %i.n = icmp ult i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %.critedge20.loopexit

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !12
  %i.q = fptrunc double %i.p to float             ; 2 uses
  %i.r = bitcast float %i.q to i32                ; 2 uses
  %i.s = and i32 %i.r, 2139095040
  %i.t = icmp eq i32 %i.s, 2139095040
  br i1 %i.t, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1: ; preds = %bb.b
  %i.u = tail call float @llvm.fabs.f32(float %i.q) ; 2 uses
  %i.v = fneg float %i.u
  %i.w = bitcast float %i.v to i32
  %i.x = bitcast float %i.u to i32
  %i.y = icmp slt i32 %i.r, 0
  %i.z = sub nsw i32 -2147483648, %i.w
  %1 = select i1 %i.y, i32 %i.x, i32 %i.z
  %2 = add i32 %1, 2
  %i.aa = icmp ult i32 %2, 3
  br i1 %i.aa, label %bb.c, label %.critedge20.loopexit

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !12
  %i.ad = fptrunc double %i.ac to float           ; 2 uses
  %i.ae = bitcast float %i.ad to i32              ; 2 uses
  %i.af = and i32 %i.ae, 2139095040
  %i.ag = icmp eq i32 %i.af, 2139095040
  br i1 %i.ag, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2: ; preds = %bb.c
  %i.ah = tail call float @llvm.fabs.f32(float %i.ad) ; 2 uses
  %i.ai = fneg float %i.ah
  %i.aj = bitcast float %i.ai to i32
  %i.ak = bitcast float %i.ah to i32
  %i.al = icmp slt i32 %i.ae, 0
  %i.am = sub nsw i32 -2147483648, %i.aj
  %3 = select i1 %i.al, i32 %i.ak, i32 %i.am
  %4 = add i32 %3, 2
  %i.an = icmp ult i32 %4, 3
  br i1 %i.an, label %bb.d, label %.critedge20.loopexit

bb.d:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !12
  %i.aq = fptrunc double %i.ap to float           ; 2 uses
  %i.ar = bitcast float %i.aq to i32              ; 2 uses
  %i.as = and i32 %i.ar, 2139095040
  %i.at = icmp eq i32 %i.as, 2139095040
  br i1 %i.at, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3: ; preds = %bb.d
  %i.au = tail call float @llvm.fabs.f32(float %i.aq) ; 2 uses
  %i.av = fneg float %i.au
  %i.aw = bitcast float %i.av to i32
  %i.ax = bitcast float %i.au to i32
  %i.ay = icmp slt i32 %i.ar, 0
  %i.az = sub nsw i32 -2147483648, %i.aw
  %5 = select i1 %i.ay, i32 %i.ax, i32 %i.az
  %6 = add i32 %5, 2
  %i.ba = icmp ult i32 %6, 3
  br i1 %i.ba, label %.critedge, label %.critedge20.loopexit

.critedge:                                        ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !12
  %i.bd = fptrunc double %i.bc to float           ; 2 uses
  %i.be = bitcast float %i.bd to i32              ; 2 uses
  %i.bf = and i32 %i.be, 2139095040
  %i.bg = icmp eq i32 %i.bf, 2139095040
  br i1 %i.bg, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131: ; preds = %.critedge
  %i.bh = tail call float @llvm.fabs.f32(float %i.bd) ; 2 uses
  %i.bi = fneg float %i.bh
  %i.bj = bitcast float %i.bi to i32
  %i.bk = bitcast float %i.bh to i32
  %i.bl = icmp slt i32 %i.be, 0
  %i.bm = sub nsw i32 -2147483648, %i.bj
  %7 = select i1 %i.bl, i32 %i.bk, i32 %i.bm
  %8 = add i32 %7, 2
  %i.bn = icmp ult i32 %8, 3
  br i1 %i.bn, label %bb.e, label %.critedge20.loopexit

bb.e:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !12
  %i.bq = fptrunc double %i.bp to float           ; 2 uses
  %i.br = bitcast float %i.bq to i32              ; 2 uses
  %i.bs = and i32 %i.br, 2139095040
  %i.bt = icmp eq i32 %i.bs, 2139095040
  br i1 %i.bt, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1: ; preds = %bb.e
  %i.bu = tail call float @llvm.fabs.f32(float %i.bq) ; 2 uses
  %i.bv = fneg float %i.bu
  %i.bw = bitcast float %i.bv to i32
  %i.bx = bitcast float %i.bu to i32
  %i.by = sub nuw i32 -2147483648, %i.bx
  %i.bz = icmp slt i32 %i.br, 0
  %i.ca = select i1 %i.bz, i32 %i.by, i32 %i.bw
  %i.cb = add i32 %i.ca, 1082130434
  %i.cc = icmp ult i32 %i.cb, 5
  br i1 %i.cc, label %bb.f, label %.critedge20.loopexit

bb.f:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !12
  %i.cf = fptrunc double %i.ce to float           ; 2 uses
  %i.cg = bitcast float %i.cf to i32              ; 2 uses
  %i.ch = and i32 %i.cg, 2139095040
  %i.ci = icmp eq i32 %i.ch, 2139095040
  br i1 %i.ci, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1: ; preds = %bb.f
  %i.cj = tail call float @llvm.fabs.f32(float %i.cf) ; 2 uses
  %i.ck = fneg float %i.cj
  %i.cl = bitcast float %i.ck to i32
  %i.cm = bitcast float %i.cj to i32
  %i.cn = icmp slt i32 %i.cg, 0
  %i.co = sub nsw i32 -2147483648, %i.cl
  %9 = select i1 %i.cn, i32 %i.cm, i32 %i.co
  %10 = add i32 %9, 2
  %i.cp = icmp ult i32 %10, 3
  br i1 %i.cp, label %bb.g, label %.critedge20.loopexit

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !12
  %i.cs = fptrunc double %i.cr to float           ; 2 uses
  %i.ct = bitcast float %i.cs to i32              ; 2 uses
  %i.cu = and i32 %i.ct, 2139095040
  %i.cv = icmp eq i32 %i.cu, 2139095040
  br i1 %i.cv, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1: ; preds = %bb.g
  %i.cw = tail call float @llvm.fabs.f32(float %i.cs) ; 2 uses
  %i.cx = fneg float %i.cw
  %i.cy = bitcast float %i.cx to i32
  %i.cz = bitcast float %i.cw to i32
  %i.da = icmp slt i32 %i.ct, 0
  %i.db = sub nsw i32 -2147483648, %i.cy
  %11 = select i1 %i.da, i32 %i.cz, i32 %i.db
  %12 = add i32 %11, 2
  %i.dc = icmp ult i32 %12, 3
  br i1 %i.dc, label %.critedge.1, label %.critedge20.loopexit

.critedge.1:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.de = load double, ptr %i.dd, align 8, !tbaa !12
  %i.df = fptrunc double %i.de to float           ; 2 uses
  %i.dg = bitcast float %i.df to i32              ; 2 uses
  %i.dh = and i32 %i.dg, 2139095040
  %i.di = icmp eq i32 %i.dh, 2139095040
  br i1 %i.di, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233: ; preds = %.critedge.1
  %i.dj = tail call float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.dk = fneg float %i.dj
  %i.dl = bitcast float %i.dk to i32
  %i.dm = bitcast float %i.dj to i32
  %i.dn = icmp slt i32 %i.dg, 0
  %i.do = sub nsw i32 -2147483648, %i.dl
  %13 = select i1 %i.dn, i32 %i.dm, i32 %i.do
  %14 = add i32 %13, 2
  %i.dp = icmp ult i32 %14, 3
  br i1 %i.dp, label %bb.h, label %.critedge20.loopexit

bb.h:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !12
  %i.ds = fptrunc double %i.dr to float           ; 2 uses
  %i.dt = bitcast float %i.ds to i32              ; 2 uses
  %i.du = and i32 %i.dt, 2139095040
  %i.dv = icmp eq i32 %i.du, 2139095040
  br i1 %i.dv, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2: ; preds = %bb.h
  %i.dw = tail call float @llvm.fabs.f32(float %i.ds) ; 2 uses
  %i.dx = fneg float %i.dw
  %i.dy = bitcast float %i.dx to i32
  %i.dz = bitcast float %i.dw to i32
  %i.ea = icmp slt i32 %i.dt, 0
  %i.eb = sub nsw i32 -2147483648, %i.dy
  %15 = select i1 %i.ea, i32 %i.dz, i32 %i.eb
  %16 = add i32 %15, 2
  %i.ec = icmp ult i32 %16, 3
  br i1 %i.ec, label %bb.i, label %.critedge20.loopexit

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !12
  %i.ef = fptrunc double %i.ee to float           ; 2 uses
  %i.eg = bitcast float %i.ef to i32              ; 2 uses
  %i.eh = and i32 %i.eg, 2139095040
  %i.ei = icmp eq i32 %i.eh, 2139095040
  br i1 %i.ei, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2: ; preds = %bb.i
  %i.ej = tail call float @llvm.fabs.f32(float %i.ef) ; 2 uses
  %i.ek = fneg float %i.ej
  %i.el = bitcast float %i.ek to i32
  %i.em = bitcast float %i.ej to i32
  %i.en = sub nuw i32 -2147483648, %i.em
  %i.eo = icmp slt i32 %i.eg, 0
  %i.ep = select i1 %i.eo, i32 %i.en, i32 %i.el
  %i.eq = add i32 %i.ep, 1082130434
  %i.er = icmp ult i32 %i.eq, 5
  br i1 %i.er, label %bb.j, label %.critedge20.loopexit

bb.j:                                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.et = load double, ptr %i.es, align 8, !tbaa !12
  %i.eu = fptrunc double %i.et to float           ; 2 uses
  %i.ev = bitcast float %i.eu to i32              ; 2 uses
  %i.ew = and i32 %i.ev, 2139095040
  %i.ex = icmp eq i32 %i.ew, 2139095040
  br i1 %i.ex, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2: ; preds = %bb.j
  %i.ey = tail call float @llvm.fabs.f32(float %i.eu) ; 2 uses
  %i.ez = fneg float %i.ey
  %i.fa = bitcast float %i.ez to i32
  %i.fb = bitcast float %i.ey to i32
  %i.fc = icmp slt i32 %i.ev, 0
  %i.fd = sub nsw i32 -2147483648, %i.fa
  %17 = select i1 %i.fc, i32 %i.fb, i32 %i.fd
  %18 = add i32 %17, 2
  %i.fe = icmp ult i32 %18, 3
  br i1 %i.fe, label %.critedge.2, label %.critedge20.loopexit

.critedge.2:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !12
  %i.fh = fptrunc double %i.fg to float           ; 2 uses
  %i.fi = bitcast float %i.fh to i32              ; 2 uses
  %i.fj = and i32 %i.fi, 2139095040
  %i.fk = icmp eq i32 %i.fj, 2139095040
  br i1 %i.fk, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335: ; preds = %.critedge.2
  %i.fl = tail call float @llvm.fabs.f32(float %i.fh) ; 2 uses
  %i.fm = fneg float %i.fl
  %i.fn = bitcast float %i.fm to i32
  %i.fo = bitcast float %i.fl to i32
  %i.fp = icmp slt i32 %i.fi, 0
  %i.fq = sub nsw i32 -2147483648, %i.fn
  %19 = select i1 %i.fp, i32 %i.fo, i32 %i.fq
  %20 = add i32 %19, 2
  %i.fr = icmp ult i32 %20, 3
  br i1 %i.fr, label %bb.k, label %.critedge20.loopexit

bb.k:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !12
  %i.fu = fptrunc double %i.ft to float           ; 2 uses
  %i.fv = bitcast float %i.fu to i32              ; 2 uses
  %i.fw = and i32 %i.fv, 2139095040
  %i.fx = icmp eq i32 %i.fw, 2139095040
  br i1 %i.fx, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3: ; preds = %bb.k
  %i.fy = tail call float @llvm.fabs.f32(float %i.fu) ; 2 uses
  %i.fz = fneg float %i.fy
  %i.ga = bitcast float %i.fz to i32
  %i.gb = bitcast float %i.fy to i32
  %i.gc = icmp slt i32 %i.fv, 0
  %i.gd = sub nsw i32 -2147483648, %i.ga
  %21 = select i1 %i.gc, i32 %i.gb, i32 %i.gd
  %22 = add i32 %21, 2
  %i.ge = icmp ult i32 %22, 3
  br i1 %i.ge, label %bb.l, label %.critedge20.loopexit

bb.l:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !12
  %i.gh = fptrunc double %i.gg to float           ; 2 uses
  %i.gi = bitcast float %i.gh to i32              ; 2 uses
  %i.gj = and i32 %i.gi, 2139095040
  %i.gk = icmp eq i32 %i.gj, 2139095040
  br i1 %i.gk, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3: ; preds = %bb.l
  %i.gl = tail call float @llvm.fabs.f32(float %i.gh) ; 2 uses
  %i.gm = fneg float %i.gl
  %i.gn = bitcast float %i.gm to i32
  %i.go = bitcast float %i.gl to i32
  %i.gp = icmp slt i32 %i.gi, 0
  %i.gq = sub nsw i32 -2147483648, %i.gn
  %23 = select i1 %i.gp, i32 %i.go, i32 %i.gq
  %24 = add i32 %23, 2
  %i.gr = icmp ult i32 %24, 3
  br i1 %i.gr, label %bb.m, label %.critedge20.loopexit

bb.m:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !12
  %i.gu = fptrunc double %i.gt to float           ; 2 uses
  %i.gv = bitcast float %i.gu to i32              ; 2 uses
  %i.gw = and i32 %i.gv, 2139095040
  %i.gx = icmp eq i32 %i.gw, 2139095040
  br i1 %i.gx, label %.critedge20.loopexit, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3: ; preds = %bb.m
  %i.gy = tail call float @llvm.fabs.f32(float %i.gu) ; 2 uses
  %i.gz = fneg float %i.gy
  %i.ha = bitcast float %i.gz to i32
  %i.hb = bitcast float %i.gy to i32
  %i.hc = sub nuw i32 -2147483648, %i.hb
  %i.hd = icmp slt i32 %i.gv, 0
  %i.he = select i1 %i.hd, i32 %i.hc, i32 %i.ha
  %i.hf = add i32 %i.he, 1082130434
  %i.hg = icmp ult i32 %i.hf, 5
  br i1 %i.hg, label %.critedge20, label %.critedge20.loopexit

.critedge20.loopexit:                             ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3, %bb.m, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.3, %bb.l, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.3, %bb.k, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.335, %.critedge.2, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.2, %bb.j, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.2.2, %bb.i, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1.2, %bb.h, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.233, %.critedge.1, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3.1, %bb.g, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2.1, %bb.f, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.1.1, %bb.e, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.131, %.critedge, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.3, %bb.d, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.2, %bb.c, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIdEEbT_.exit.1, %bb.b, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit, %bb.a
  br label %.critedge20

.critedge20:                                      ; preds = %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3, %.critedge20.loopexit
  %i.hh = phi i1 [ false, %.critedge20.loopexit ], [ true, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIdEEbT_.exit.3.3 ]
  ret i1 %i.hh
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
  %i.i = icmp slt i32 %i.a, 0
  %i.j = sub nsw i32 -2147483648, %i.g
  %i.k = select i1 %i.i, i32 %i.h, i32 %i.j
  %2 = add i32 %i.k, 2
  %i.l = icmp ult i32 %2, 3
  %i.m = fdiv float 1.000000e+00, %0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %bb.b
  %i.n = phi float [ %1, %bb.b ], [ %i.m, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ %i.d, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ]
  ret float %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_515VecContainsZeroEPKfi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = bitcast float %i.c to i32                ; 2 uses
  %i.e = and i32 %i.d, 2139095040
  %i.f = icmp eq i32 %i.e, 2139095040
  br i1 %i.f, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %.lr.ph
  %i.g = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.h = fneg float %i.g
  %i.i = bitcast float %i.h to i32
  %i.j = bitcast float %i.g to i32
  %i.k = icmp slt i32 %i.d, 0
  %i.l = sub nsw i32 -2147483648, %i.i
  %2 = select i1 %i.k, i32 %i.j, i32 %i.l
  %3 = add i32 %2, 2
  %i.m = icmp ult i32 %3, 3
  br i1 %i.m, label %._crit_edge, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ], [ true, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_514VecContainsOneEPKfi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
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
  %i.l = icmp slt i32 %i.d, 0
  %i.m = select i1 %i.l, i32 %i.k, i32 %i.i
  %i.n = add i32 %i.m, 1082130434
  %i.o = icmp ult i32 %i.n, 5
  br i1 %i.o, label %._crit_edge, label %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit.thread: ; preds = %.lr.ph, %_ZN16OpenColorIO_v2_518IsScalarEqualToOneIfEEbT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

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
  %i.a = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !23
  %i.b = zext i16 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load float, ptr %i.c, align 4, !tbaa !24
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
define hidden noundef zeroext i1 @_ZN16OpenColorIO_v2_513GetM44InverseEPfPKf(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10
  %i.b = fpext float %i.a to double               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !10
  %i.s = fpext <2 x float> %i.r to <2 x double>   ; 8 uses
  %i.t = insertelement <2 x float> poison, float %i.g, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.m, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 10 uses
  %i.w = load <2 x float>, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.x = load <2 x float>, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 10 uses
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.ab = fpext <2 x float> %i.aa to <2 x double> ; 10 uses
  %i.ac = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.e, i64 1
  %i.ae = fpext <2 x float> %i.ad to <2 x double> ; 9 uses
  %i.af = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %i.ag = fpext float %i.o to double              ; 4 uses
  %i.ah = fpext <2 x float> %i.af to <2 x double> ; 7 uses
  %i.ai = fneg <2 x double> %i.ah                 ; 4 uses
  %i.aj = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ak = fmul <2 x double> %i.aj, %i.ai
  %i.al = shufflevector <2 x double> %i.v, <2 x double> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.am = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x double> %i.am, double %i.ag, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.an, <2 x double> %i.ak) ; 5 uses
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = shufflevector <2 x double> %i.z, <2 x double> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.ar = fmul <2 x double> %i.aq, %i.ai
  %i.as = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.as, <2 x double> %i.ar) ; 6 uses
  %i.au = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = shufflevector <2 x double> %i.v, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.aw = fneg <2 x double> %i.av
  %i.ax = fmul <2 x double> %i.au, %i.aw
  %i.ay = shufflevector <2 x double> %i.ab, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.az = insertelement <2 x double> poison, double %i.ag, i64 0 ; 2 uses
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ba, <2 x double> %i.ax) ; 5 uses
  %i.bc = fneg <2 x double> %i.ao
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.be = fmul <2 x double> %i.bd, %i.s
  %i.bf = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bg = shufflevector <2 x double> %i.at, <2 x double> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.bh = shufflevector <2 x double> %i.bb, <2 x double> %i.at, <2 x i32> <i32 1, i32 2>
  %i.bi = fneg <2 x double> %i.bh                 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.p, align 4, !tbaa !10
  %i.bk = fpext <2 x float> %i.bj to <2 x double> ; 5 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0
  %i.bm = fneg double %i.bl                       ; 2 uses
  %i.bn = shufflevector <2 x double> %i.bk, <2 x double> %i.s, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bb, <2 x double> %i.be)
  %i.bp = insertelement <2 x double> %i.bf, double %i.bm, i64 1 ; 2 uses
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bg, <2 x double> %i.bo) ; 4 uses
  %i.br = fmul <2 x double> %i.bn, %i.bi
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.ap, <2 x double> %i.br)
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.at, <2 x double> %i.bs) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.bq, %i.z
  %i.bu = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bv = extractelement <2 x double> %i.bq, i64 0
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.b, double %i.bu)
  %i.bx = extractelement <2 x double> %i.ab, i64 1 ; 2 uses
  %i.by = extractelement <2 x double> %i.bt, i64 0
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double %i.bx, double %i.bw)
  %i.ca = extractelement <2 x double> %i.ae, i64 1
  %i.cb = extractelement <2 x double> %i.bt, i64 1
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.ca, double %i.bz) ; 2 uses
  %i.cd = fptrunc double %i.cc to float           ; 2 uses
  %i.ce = bitcast float %i.cd to i32              ; 2 uses
  %i.cf = and i32 %i.ce, 2139095040
  %i.cg = icmp eq i32 %i.cf, 2139095040
  br i1 %i.cg, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit: ; preds = %bb.a
  %i.ch = tail call float @llvm.fabs.f32(float %i.cd) ; 2 uses
  %i.ci = fneg float %i.ch
  %i.cj = bitcast float %i.ci to i32
  %i.ck = bitcast float %i.ch to i32
  %i.cl = icmp slt i32 %i.ce, 0
  %i.cm = sub nsw i32 -2147483648, %i.cj
  %2 = select i1 %i.cl, i32 %i.ck, i32 %i.cm
  %3 = add i32 %2, 2
  %i.cn = icmp ult i32 %3, 3
  br i1 %i.cn, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread: ; preds = %bb.a, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit
  %i.co = fdiv double 1.000000e+00, %i.cc
  %i.cp = extractelement <2 x double> %i.bk, i64 1
  %i.cq = fneg double %i.cp                       ; 2 uses
  %i.cr = fmul double %i.bx, %i.cq
  %i.cs = fneg <2 x double> %i.z
  %i.ct = fneg double %i.b
  %i.cu = insertelement <4 x double> poison, double %i.co, i64 0
  %i.cv = shufflevector <4 x double> %i.cu, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.cw = shufflevector <2 x double> %i.bq, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cz = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.da = fmul <2 x double> %i.cz, %i.bi
  %i.db = insertelement <2 x double> %i.z, double %i.b, i64 0 ; 2 uses
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.bb, <2 x double> %i.da)
  %i.dd = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.de = insertelement <2 x double> %i.dd, double %i.ct, i64 1
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.ao, <2 x double> %i.dc)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dh = insertelement <2 x double> poison, double %i.bm, i64 0 ; 2 uses
  %i.di = fneg <2 x double> %i.s
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> %i.di, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dk = fmul <2 x double> %i.cz, %i.dj
  %i.dl = fmul <2 x double> %i.dd, %i.dj
  %i.dm = insertelement <2 x double> %i.ab, double %i.b, i64 0 ; 2 uses
  %i.dn = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dn, <2 x double> %i.dl) ; 3 uses
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.s, <2 x double> %i.dk) ; 5 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 0
  %i.ds = insertelement <2 x double> %i.ab, double %i.ag, i64 1
  %i.dt = shufflevector <2 x double> %i.dq, <2 x double> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.du = shufflevector <2 x double> %i.ae, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.dv = shufflevector <2 x double> %i.z, <2 x double> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.dw = insertelement <2 x double> %i.dh, double %i.cq, i64 1
  %i.dx = fmul <2 x double> %i.dv, %i.dw
  %i.dy = shufflevector <2 x double> %i.s, <2 x double> %i.bk, <2 x i32> <i32 3, i32 1>
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dy, <2 x double> %i.dx) ; 6 uses
  %i.ea = shufflevector <2 x double> %i.ao, <2 x double> %i.dz, <2 x i32> <i32 3, i32 1>
  %i.eb = shufflevector <2 x double> %i.do, <2 x double> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.ec = fneg <2 x double> %i.eb                 ; 3 uses
  %i.ed = shufflevector <2 x double> %i.ah, <2 x double> %i.ae, <2 x i32> <i32 1, i32 2>
  %i.ee = fmul <2 x double> %i.ed, %i.ec
  %i.ef = shufflevector <2 x double> %i.z, <2 x double> %i.v, <2 x i32> <i32 1, i32 3>
  %i.eg = shufflevector <2 x double> %i.ao, <2 x double> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.eh = fneg <2 x double> %i.eg
  %i.ei = fmul <2 x double> %i.ef, %i.eh
  %i.ej = insertelement <2 x double> %i.ah, double %i.b, i64 0
  %i.ek = shufflevector <2 x double> %i.dq, <2 x double> %i.at, <2 x i32> <i32 3, i32 1>
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.ek, <2 x double> %i.ei) ; 2 uses
  %i.em = shufflevector <2 x double> %i.ah, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.en = shufflevector <2 x double> %i.dz, <2 x double> %i.do, <2 x i32> <i32 1, i32 2>
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.en, <2 x double> %i.ee)
  %i.ep = fneg <2 x double> %i.v
  %i.eq = shufflevector <2 x double> %i.az, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.dz, <2 x double> %i.eo)
  %i.es = shufflevector <2 x double> %i.ab, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.et = shufflevector <2 x double> %i.at, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.eu = insertelement <2 x double> %i.el, double %i.cr, i64 1
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.et, <2 x double> %i.eu) ; 5 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 1
  %i.ex = shufflevector <2 x double> %i.at, <2 x double> %i.ev, <2 x i32> <i32 3, i32 1>
  %i.ey = fneg <2 x double> %i.ex
  %i.ez = fmul <2 x double> %i.ae, %i.ey
  %i.fa = fneg double %i.dr                       ; 2 uses
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ea, <2 x double> %i.ez)
  %i.fc = shufflevector <2 x double> %i.v, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.fd = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fe = insertelement <2 x double> %i.fd, double %i.fa, i64 1
  %i.ff = fmul <2 x double> %i.fc, %i.fe
  %i.fg = insertelement <2 x double> %i.ec, double %i.fa, i64 1
  %i.fh = fmul <2 x double> %i.ds, %i.fg
  %i.fi = shufflevector <2 x double> %i.ah, <2 x double> %i.ev, <2 x i32> <i32 1, i32 3>
  %i.fj = shufflevector <2 x double> %i.dq, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.fj, <2 x double> %i.ff)
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.dp, <2 x double> %i.fh)
  %i.fm = extractelement <2 x double> %i.el, i64 1
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ew, double %i.fm)
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.dt, <2 x double> %i.fb)
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dq, <2 x double> %i.fl)
  %i.fq = shufflevector <2 x double> %i.ai, <2 x double> %i.ab, <2 x i32> <i32 0, i32 2>
  %i.fr = shufflevector <2 x double> %i.ev, <2 x double> %i.dz, <2 x i32> <i32 1, i32 2>
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fr, <2 x double> %i.fk)
  %i.ft = insertelement <4 x double> %i.cw, double %i.fn, i64 1
  %i.fu = shufflevector <2 x double> %i.fo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x double> %i.ft, <4 x double> %i.fu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fw = fmul <4 x double> %i.cv, %i.fv
  %i.fx = fptrunc <4 x double> %i.fw to <4 x float>
  store <4 x float> %i.fx, ptr %0, align 4, !tbaa !10
  %i.fy = shufflevector <2 x double> %i.bq, <2 x double> %i.fp, <4 x i32> <i32 1, i32 3, i32 2, i32 poison>
  %i.fz = shufflevector <2 x double> %i.df, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ga = shufflevector <4 x double> %i.fy, <4 x double> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gb = fmul <4 x double> %i.cv, %i.ga
  %i.gc = fptrunc <4 x double> %i.gb to <4 x float>
  store <4 x float> %i.gc, ptr %i.cx, align 4, !tbaa !10
  %i.gd = shufflevector <2 x double> %i.bt, <2 x double> %i.er, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ge = shufflevector <4 x double> %i.gd, <4 x double> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gf = fmul <4 x double> %i.cv, %i.ge
  %i.gg = fptrunc <4 x double> %i.gf to <4 x float>
  store <4 x float> %i.gg, ptr %i.cy, align 4, !tbaa !10
  %i.gh = shufflevector <2 x double> %i.bt, <2 x double> %i.fs, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.gi = shufflevector <2 x double> %i.ev, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x double> %i.gh, <4 x double> %i.gi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gk = fmul <4 x double> %i.cv, %i.gj
  %i.gl = fptrunc <4 x double> %i.gk to <4 x float>
  store <4 x float> %i.gl, ptr %i.dg, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread
  %.0 = phi i1 [ false, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit ], [ true, %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_516GetM44M44ProductEPfPKfS2_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.sroa.1965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.a = load <4 x float>, ptr %1, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.19.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.35.0..sroa_idx, align 4 ; 4 uses
  %i.e = load <4 x float>, ptr %.sroa.51.0..sroa_idx, align 4 ; 4 uses
  %i.f = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.g = fmul <4 x float> %i.f, %i.c
  %i.h = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.h, <4 x float> %i.b, <4 x float> %i.g)
  %i.j = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.k = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.d, <4 x float> %i.i)
  %i.l = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.m = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.e, <4 x float> %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load <4 x float>, ptr %.sroa.1965.0..sroa_idx, align 4 ; 4 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.q = fmul <4 x float> %i.p, %i.c
  %i.r = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.r, <4 x float> %i.b, <4 x float> %i.q)
  %i.t = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.d, <4 x float> %i.s)
  %i.v = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.w = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> %i.e, <4 x float> %i.u)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load <4 x float>, ptr %.sroa.3581.0..sroa_idx, align 4 ; 4 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aa = fmul <4 x float> %i.z, %i.c
  %i.ab = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.b, <4 x float> %i.aa)
  %i.ad = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.d, <4 x float> %i.ac)
  %i.af = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %i.e, <4 x float> %i.ae)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load <4 x float>, ptr %.sroa.5197.0..sroa_idx, align 4 ; 4 uses
  store <4 x float> %i.m, ptr %0, align 4, !tbaa !10
  store <4 x float> %i.w, ptr %i.n, align 4, !tbaa !10
  store <4 x float> %i.ag, ptr %i.x, align 4, !tbaa !10
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ak = fmul <4 x float> %i.aj, %i.c
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> %i.b, <4 x float> %i.ak)
  %i.an = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.d, <4 x float> %i.am)
  %i.ap = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.e, <4 x float> %i.ao)
  store <4 x float> %i.aq, ptr %i.ah, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_513GetMxbCombineEPfS0_PKfS2_S2_S2_(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.1127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.1529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.a = load <4 x float>, ptr %2, align 4        ; 4 uses
  %i.b = load <4 x float>, ptr %.sroa.725.0..sroa_idx, align 4 ; 4 uses
  %i.c = load <4 x float>, ptr %.sroa.1127.0..sroa_idx, align 4 ; 4 uses
  %i.d = load <4 x float>, ptr %.sroa.1529.0..sroa_idx, align 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load <4 x float>, ptr %3, align 4        ; 4 uses
  %i.i = load <4 x float>, ptr %5, align 4
  %i.j = load <16 x float>, ptr %4, align 4       ; 20 uses
end_hunk_0
