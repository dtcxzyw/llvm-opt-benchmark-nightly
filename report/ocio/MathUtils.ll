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
  %i.h = sub nuw i32 -2147483648, %i.g
  %i.i = icmp slt i32 %i.a, 0
  %i.j = select i1 %i.i, i32 %i.h, i32 %i.f       ; 3 uses
  %i.k = sub nuw i32 -2147483648, %i.j
  %i.l = xor i32 %i.j, -2147483648
  %i.m = icmp slt i32 %i.j, 0
  %i.n = select i1 %i.m, i32 %i.l, i32 %i.k
  %i.o = icmp ult i32 %i.n, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
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
  %4 = and i32 %i.k, 8388607
  %brmerge.not = icmp eq i32 %4, 0
  %.mux = or i1 %i.i, %i.j
  %.unshifted = xor i32 %i.b, %i.a
  %i.l = icmp slt i32 %.unshifted, 0
  %spec.select = select i1 %brmerge.not, i1 %i.l, i1 %.mux
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call float @llvm.fabs.f32(float %0) ; 3 uses
  %i.n = icmp slt i32 %i.a, 0                     ; 2 uses
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = bitcast float %i.m to i32                ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 8388608
  %i.q = add nuw i32 %i.a, 2139095041
  %i.r = sub nuw i32 -2139095041, %i.o
  %i.s = select i1 %i.n, i32 %i.r, i32 %i.q
  %.0.i = select i1 %i.p, i32 -2147483648, i32 %i.s
  %i.t = tail call float @llvm.fabs.f32(float %1)
  %i.u = bitcast float %i.t to i32                ; 2 uses
  %i.v = icmp samesign ult i32 %i.u, 8388608
  %i.w = add nuw i32 %i.b, 2139095041
  %i.x = sub nuw i32 -2139095041, %i.u
  %i.y = icmp slt i32 %i.b, 0
  %i.z = select i1 %i.y, i32 %i.x, i32 %i.w
  %.0.i26 = select i1 %i.v, i32 -2147483648, i32 %i.z
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = fneg float %i.m
  %i.ab = bitcast float %i.aa to i32
  %i.ac = bitcast float %i.m to i32
  %i.ad = sub nuw i32 -2147483648, %i.ac
  %i.ae = select i1 %i.n, i32 %i.ad, i32 %i.ab
  %i.af = tail call float @llvm.fabs.f32(float %1) ; 2 uses
  %i.ag = fneg float %i.af
  %i.ah = bitcast float %i.ag to i32
  %i.ai = bitcast float %i.af to i32
  %i.aj = sub nuw i32 -2147483648, %i.ai
  %i.ak = icmp slt i32 %i.b, 0
  %i.al = select i1 %i.ak, i32 %i.aj, i32 %i.ah
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.023 = phi i32 [ %.0.i, %bb.f ], [ %i.ae, %bb.g ] ; 3 uses
  %.0 = phi i32 [ %.0.i26, %bb.f ], [ %i.al, %bb.g ] ; 3 uses
  %i.am = icmp ugt i32 %.023, %.0
  %i.an = sub nuw i32 %.023, %.0
  %i.ao = sub nuw i32 %.0, %.023
  %i.ap = select i1 %i.am, i32 %i.an, i32 %i.ao
  %i.aq = icmp ugt i32 %i.ap, %2
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.h
  %.1 = phi i1 [ %i.aq, %bb.h ], [ %spec.select, %bb.c ], [ true, %bb.b ], [ true, %bb.d ]
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
  %i.i = sub nuw i32 -2147483648, %i.h
  %i.j = icmp slt i32 %i.b, 0
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.g       ; 3 uses
  %i.l = sub nuw i32 -2147483648, %i.k
  %i.m = xor i32 %i.k, -2147483648
  %i.n = icmp slt i32 %i.k, 0
  %i.o = select i1 %i.n, i32 %i.m, i32 %i.l
  %i.p = icmp ult i32 %i.o, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.p, %bb.b ], [ false, %bb.a ]
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
  %i.j = select i1 %i.i, i32 %i.h, i32 %i.f       ; 3 uses
  %i.k = icmp ult i32 %i.j, -1082130432
  %i.l = sub nuw i32 -1082130432, %i.j
  %i.m = add nsw i32 %i.j, 1082130432
  %i.n = select i1 %i.k, i32 %i.l, i32 %i.m
  %i.o = icmp ult i32 %i.n, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.o, %bb.b ], [ false, %bb.a ]
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
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.g       ; 3 uses
  %i.l = icmp ult i32 %i.k, -1082130432
  %i.m = sub nuw i32 -1082130432, %i.k
  %i.n = add i32 %i.k, 1082130432
  %i.o = select i1 %i.l, i32 %i.m, i32 %i.n
  %i.p = icmp ult i32 %i.o, 3
  br label %_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit

_ZN16OpenColorIO_v2_512FloatsDifferEffib.exit:    ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.p, %bb.b ], [ false, %bb.a ]
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
  %i.k = sub nuw i32 -2147483648, %i.j
  %i.l = icmp slt i32 %i.d, 0
  %i.m = select i1 %i.l, i32 %i.k, i32 %i.i       ; 3 uses
  %i.n = sub nuw i32 -2147483648, %i.m
  %i.o = xor i32 %i.m, -2147483648
  %i.p = icmp slt i32 %i.m, 0
  %i.q = select i1 %i.p, i32 %i.o, i32 %i.n
  %i.r = icmp ult i32 %i.q, 3
  br i1 %i.r, label %bb.b, label %_ZN16OpenColorIO_v2_519IsScalarEqualToZeroIfEEbT_.exit.thread

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
end_hunk_0
