inline.NumInlined: 664
inline.NumDeleted: 258
begin_hunk_0_@_ZN2v88internal4wasm29float64_to_uint64_sat_wrapperEm:bb.a
  %. = sext i1 %i.e to i64
  %.sink = select i1 %.not3.i, i64 %i.d, i64 %.
  store i64 %.sink, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm26float16_to_float32_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load i16, ptr %i.a, align 1  ; 2 uses
  %i.b = zext i16 %.0.copyload.i.i to i32         ; 2 uses
  %i.c = shl i32 %i.b, 17                         ; 2 uses
  %i.d = lshr exact i32 %i.c, 4
  %i.e = or disjoint i32 %i.d, 1879048192
  %i.f = bitcast i32 %i.e to float
  %i.g = and i32 %i.b, 32767
  %i.h = or disjoint i32 %i.g, 1056964608
  %i.i = bitcast i32 %i.h to float
  %i.j = icmp ult i32 %i.c, 134217728
  %i.k = fadd float %i.i, -5.000000e-01
  %i.l = fmul float %i.f, 1.925930e-34
  %.v.i.i = select i1 %i.j, float %i.k, float %i.l
  %i.m = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %.0.copyload.i.i to i32
  %i.n = and i32 %.signext.i.i, -2147483648
  %i.o = or i32 %i.n, %i.m
  store i32 %i.o, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm26float32_to_float16_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i = load float, ptr %i.a, align 1  ; 2 uses
  %i.b = tail call float @llvm.fabs.f32(float %.0.copyload.i)
  %i.c = fmul float %i.b, f0x77800000
  %i.d = fmul float %i.c, f0x08800000
  %i.e = bitcast float %.0.copyload.i to i32      ; 2 uses
  %i.f = shl i32 %i.e, 1                          ; 2 uses
  %i.g = tail call i32 @llvm.umax.i32(i32 %i.f, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.g, 1
  %i.h = and i32 %spec.store.select.i.i, 2139095040
  %i.i = add nuw i32 %i.h, 125829120
  %i.j = bitcast i32 %i.i to float
  %i.k = fadd float %i.d, %i.j
  %i.l = bitcast float %i.k to i32                ; 2 uses
  %i.m = lshr i32 %i.l, 13
  %i.n = and i32 %i.m, 31744
  %i.o = and i32 %i.l, 4095
  %i.p = add nuw nsw i32 %i.n, %i.o
  %i.q = lshr i32 %i.e, 16
  %i.r = and i32 %i.q, 32768
  %i.s = icmp ugt i32 %i.f, -16777216
  %i.t = select i1 %i.s, i32 32256, i32 %i.p
  %i.u = or i32 %i.t, %i.r
  %i.v = trunc nuw i32 %i.u to i16
  store i16 %i.v, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN2v88internal4wasm17int64_div_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i = load i64, ptr %i.a, align 1    ; 2 uses
  %i.b = add i64 %0, 8
  %i.c = inttoptr i64 %i.b to ptr
  %.0.copyload.i10 = load i64, ptr %i.c, align 1  ; 2 uses
  switch i64 %.0.copyload.i10, label %bb.c [
    i64 0, label %bb.d
    i64 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.copyload.i, -9223372036854775808
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = sdiv i64 %.0.copyload.i, %.0.copyload.i10
  store i64 %i.e, ptr %i.a, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal4wasm17int64_mod_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i = load i64, ptr %i.a, align 1    ; 2 uses
  %i.b = add i64 %0, 8
  %i.c = inttoptr i64 %i.b to ptr
  %.0.copyload.i11 = load i64, ptr %i.c, align 1  ; 2 uses
  switch i64 %.0.copyload.i11, label %bb.c [
    i64 0, label %bb.d
    i64 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.copyload.i, -9223372036854775808
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = srem i64 %.0.copyload.i, %.0.copyload.i11
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  store i64 %.sink, ptr %i.a, align 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal4wasm18uint64_div_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 8
  %i.b = inttoptr i64 %i.a to ptr
  %.0.copyload.i8 = load i64, ptr %i.b, align 1   ; 2 uses
  %i.c = icmp eq i64 %.0.copyload.i8, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i = load i64, ptr %i.d, align 1
  %i.e = udiv i64 %.0.copyload.i, %.0.copyload.i8
  store i64 %i.e, ptr %i.d, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal4wasm18uint64_mod_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 8
  %i.b = inttoptr i64 %i.a to ptr
  %.0.copyload.i8 = load i64, ptr %i.b, align 1   ; 2 uses
  %i.c = icmp eq i64 %.0.copyload.i8, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i = load i64, ptr %i.d, align 1
  %i.e = urem i64 %.0.copyload.i, %.0.copyload.i8
  store i64 %i.e, ptr %i.d, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal4wasm18word32_rol_wrapperEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal4wasm18word32_ror_wrapperEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @llvm.fshr.i32(i32 %0, i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZN2v88internal4wasm18word64_rol_wrapperEmj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZN2v88internal4wasm18word64_ror_wrapperEmj(i64 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = tail call i64 @llvm.fshr.i64(i64 %0, i64 %0, i64 %i.a)
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm19float64_pow_wrapperEm(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i = load double, ptr %i.a, align 1
  %i.b = add i64 %0, 8
  %i.c = inttoptr i64 %i.b to ptr
  %.0.copyload.i4 = load double, ptr %i.c, align 1
  %i.d = tail call noundef double @_ZN2v88internal4math3powEdd(double noundef %.0.copyload.i, double noundef %.0.copyload.i4) #14
  store double %i.d, ptr %i.a, align 1
  ret void
}

declare noundef double @_ZN2v88internal4math3powEdd(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm18f64x2_ceil_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load double, ptr %i.a, align 1
  %i.b = tail call double @llvm.ceil.f64(double %.0.copyload.i.i)
  store double %i.b, ptr %i.a, align 1
  %i.c = add i64 %0, 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.1.i = load double, ptr %i.d, align 1
  %i.e = tail call double @llvm.ceil.f64(double %.0.copyload.i.1.i)
  store double %i.e, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm19f64x2_floor_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load double, ptr %i.a, align 1
  %i.b = tail call double @llvm.floor.f64(double %.0.copyload.i.i)
  store double %i.b, ptr %i.a, align 1
  %i.c = add i64 %0, 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.1.i = load double, ptr %i.d, align 1
  %i.e = tail call double @llvm.floor.f64(double %.0.copyload.i.1.i)
  store double %i.e, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm19f64x2_trunc_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load double, ptr %i.a, align 1
  %i.b = tail call double @llvm.trunc.f64(double %.0.copyload.i.i)
  store double %i.b, ptr %i.a, align 1
  %i.c = add i64 %0, 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.1.i = load double, ptr %i.d, align 1
  %i.e = tail call double @llvm.trunc.f64(double %.0.copyload.i.1.i)
  store double %i.e, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm25f64x2_nearest_int_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load double, ptr %i.a, align 1
  %i.b = tail call double @llvm.nearbyint.f64(double %.0.copyload.i.i)
  store double %i.b, ptr %i.a, align 1
  %i.c = add i64 %0, 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.1.i = load double, ptr %i.d, align 1
  %i.e = tail call double @llvm.nearbyint.f64(double %.0.copyload.i.1.i)
  store double %i.e, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm18f32x4_ceil_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load float, ptr %i.a, align 1
  %i.b = tail call noundef float @ceilf(float noundef %.0.copyload.i.i)
  store float %i.b, ptr %i.a, align 1
  %i.c = add i64 %0, 4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.1.i = load float, ptr %i.d, align 1
  %i.e = tail call noundef float @ceilf(float noundef %.0.copyload.i.1.i)
  store float %i.e, ptr %i.d, align 1
  %i.f = add i64 %0, 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.0.copyload.i.2.i = load float, ptr %i.g, align 1
  %i.h = tail call noundef float @ceilf(float noundef %.0.copyload.i.2.i)
  store float %i.h, ptr %i.g, align 1
  %i.i = add i64 %0, 12
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.0.copyload.i.3.i = load float, ptr %i.j, align 1
  %i.k = tail call noundef float @ceilf(float noundef %.0.copyload.i.3.i)
  store float %i.k, ptr %i.j, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm19f32x4_floor_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load float, ptr %i.a, align 1
  %i.b = tail call noundef float @floorf(float noundef %.0.copyload.i.i)
  store float %i.b, ptr %i.a, align 1
  %i.c = add i64 %0, 4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.1.i = load float, ptr %i.d, align 1
  %i.e = tail call noundef float @floorf(float noundef %.0.copyload.i.1.i)
  store float %i.e, ptr %i.d, align 1
  %i.f = add i64 %0, 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.0.copyload.i.2.i = load float, ptr %i.g, align 1
  %i.h = tail call noundef float @floorf(float noundef %.0.copyload.i.2.i)
  store float %i.h, ptr %i.g, align 1
  %i.i = add i64 %0, 12
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.0.copyload.i.3.i = load float, ptr %i.j, align 1
  %i.k = tail call noundef float @floorf(float noundef %.0.copyload.i.3.i)
  store float %i.k, ptr %i.j, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm19f32x4_trunc_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load float, ptr %i.a, align 1
  %i.b = tail call noundef float @truncf(float noundef %.0.copyload.i.i)
  store float %i.b, ptr %i.a, align 1
  %i.c = add i64 %0, 4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.1.i = load float, ptr %i.d, align 1
  %i.e = tail call noundef float @truncf(float noundef %.0.copyload.i.1.i)
  store float %i.e, ptr %i.d, align 1
  %i.f = add i64 %0, 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.0.copyload.i.2.i = load float, ptr %i.g, align 1
  %i.h = tail call noundef float @truncf(float noundef %.0.copyload.i.2.i)
  store float %i.h, ptr %i.g, align 1
  %i.i = add i64 %0, 12
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.0.copyload.i.3.i = load float, ptr %i.j, align 1
  %i.k = tail call noundef float @truncf(float noundef %.0.copyload.i.3.i)
  store float %i.k, ptr %i.j, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm25f32x4_nearest_int_wrapperEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %.0.copyload.i.i = load float, ptr %i.a, align 1
  %i.b = tail call noundef float @nearbyintf(float noundef %.0.copyload.i.i)
  store float %i.b, ptr %i.a, align 1
  %i.c = add i64 %0, 4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.0.copyload.i.1.i = load float, ptr %i.d, align 1
  %i.e = tail call noundef float @nearbyintf(float noundef %.0.copyload.i.1.i)
  store float %i.e, ptr %i.d, align 1
  %i.f = add i64 %0, 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.0.copyload.i.2.i = load float, ptr %i.g, align 1
  %i.h = tail call noundef float @nearbyintf(float noundef %.0.copyload.i.2.i)
  store float %i.h, ptr %i.g, align 1
  %i.i = add i64 %0, 12
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.0.copyload.i.3.i = load float, ptr %i.j, align 1
  %i.k = tail call noundef float @nearbyintf(float noundef %.0.copyload.i.3.i)
  store float %i.k, ptr %i.j, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i16 0, -29696) i16 @_ZN2v88internal4wasm7f16_absENS0_7Float16E(i16 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = shl i32 %i.a, 17                         ; 2 uses
  %i.c = lshr exact i32 %i.b, 4
  %i.d = or disjoint i32 %i.c, 1879048192
  %i.e = bitcast i32 %i.d to float
  %i.f = and i32 %i.a, 32767
  %i.g = or disjoint i32 %i.f, 1056964608
  %i.h = bitcast i32 %i.g to float
  %i.i = icmp ult i32 %i.b, 134217728
  %i.j = fadd float %i.h, -5.000000e-01
  %i.k = fmul float %i.e, 1.925930e-34
  %.v.i.i = select i1 %i.i, float %i.j, float %i.k
  %i.l = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %0 to i32
  %i.m = and i32 %.signext.i.i, -2147483648
  %i.n = or i32 %i.m, %i.l
  %i.o = bitcast i32 %i.n to float
  %i.p = tail call noundef float @llvm.fabs.f32(float %i.o) ; 2 uses
  %i.q = fmul float %i.p, f0x77800000
  %i.r = fmul float %i.q, f0x08800000
  %i.s = bitcast float %i.p to i32                ; 2 uses
  %i.t = shl nuw i32 %i.s, 1
  %i.u = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.u, 1
  %i.v = and i32 %spec.store.select.i.i, 2139095040
  %i.w = add nuw i32 %i.v, 125829120
  %i.x = bitcast i32 %i.w to float
  %i.y = fadd float %i.r, %i.x
  %i.z = bitcast float %i.y to i32                ; 2 uses
  %i.aa = lshr i32 %i.z, 13
  %i.ab = and i32 %i.aa, 31744
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm24simd_float_round_wrapperINS0_7Float16ETnPFT_S4_EXadL_ZNS1_7f16_absES3_EEEEvm:bb.a
  %i.gx = bitcast i32 %i.gw to float
  %i.gy = fadd float %i.gr, %i.gx
  %i.gz = bitcast float %i.gy to i32              ; 2 uses
  %i.ha = lshr i32 %i.gz, 13
  %i.hb = and i32 %i.ha, 31744
  %i.hc = and i32 %i.gz, 4095
  %i.hd = add nuw nsw i32 %i.hb, %i.hc
  %i.he = icmp samesign ugt i32 %i.gs, 2139095040
  %i.hf = trunc nuw i32 %i.hd to i16
  %i.hg = select i1 %i.he, i16 32256, i16 %i.hf
  store i16 %i.hg, ptr %i.fy, align 1
  %i.hh = add i64 %0, 12
  %i.hi = inttoptr i64 %i.hh to ptr               ; 2 uses
  %i.hj = load i16, ptr %i.hi, align 1            ; 2 uses
  %i.hk = zext i16 %i.hj to i32                   ; 2 uses
  %i.hl = shl i32 %i.hk, 17                       ; 2 uses
  %i.hm = lshr exact i32 %i.hl, 4
  %i.hn = or disjoint i32 %i.hm, 1879048192
  %i.ho = bitcast i32 %i.hn to float
  %i.hp = and i32 %i.hk, 32767
  %i.hq = or disjoint i32 %i.hp, 1056964608
  %i.hr = bitcast i32 %i.hq to float
  %i.hs = icmp ult i32 %i.hl, 134217728
  %i.ht = fadd float %i.hr, -5.000000e-01
  %i.hu = fmul float %i.ho, 1.925930e-34
  %.v.i.i.i.6 = select i1 %i.hs, float %i.ht, float %i.hu
  %i.hv = bitcast float %.v.i.i.i.6 to i32
  %.signext.i.i.i.6 = sext i16 %i.hj to i32
  %i.hw = and i32 %.signext.i.i.i.6, -2147483648
  %i.hx = or i32 %i.hw, %i.hv
  %i.hy = bitcast i32 %i.hx to float
  %i.hz = tail call noundef float @llvm.fabs.f32(float %i.hy) ; 2 uses
  %i.ia = fmul float %i.hz, f0x77800000
  %i.ib = fmul float %i.ia, f0x08800000
  %i.ic = bitcast float %i.hz to i32              ; 2 uses
  %i.id = shl nuw i32 %i.ic, 1
  %i.ie = tail call i32 @llvm.umax.i32(i32 %i.id, i32 1895825408)
  %spec.store.select.i.i.i.6 = lshr exact i32 %i.ie, 1
  %i.if = and i32 %spec.store.select.i.i.i.6, 2139095040
  %i.ig = add nuw i32 %i.if, 125829120
  %i.ih = bitcast i32 %i.ig to float
  %i.ii = fadd float %i.ib, %i.ih
  %i.ij = bitcast float %i.ii to i32              ; 2 uses
  %i.ik = lshr i32 %i.ij, 13
  %i.il = and i32 %i.ik, 31744
  %i.im = and i32 %i.ij, 4095
  %i.in = add nuw nsw i32 %i.il, %i.im
  %i.io = icmp samesign ugt i32 %i.ic, 2139095040
  %i.ip = trunc nuw i32 %i.in to i16
  %i.iq = select i1 %i.io, i16 32256, i16 %i.ip
  store i16 %i.iq, ptr %i.hi, align 1
  %i.ir = add i64 %0, 14
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  %i.it = load i16, ptr %i.is, align 1            ; 2 uses
  %i.iu = zext i16 %i.it to i32                   ; 2 uses
  %i.iv = shl i32 %i.iu, 17                       ; 2 uses
  %i.iw = lshr exact i32 %i.iv, 4
  %i.ix = or disjoint i32 %i.iw, 1879048192
  %i.iy = bitcast i32 %i.ix to float
  %i.iz = and i32 %i.iu, 32767
  %i.ja = or disjoint i32 %i.iz, 1056964608
  %i.jb = bitcast i32 %i.ja to float
  %i.jc = icmp ult i32 %i.iv, 134217728
  %i.jd = fadd float %i.jb, -5.000000e-01
  %i.je = fmul float %i.iy, 1.925930e-34
  %.v.i.i.i.7 = select i1 %i.jc, float %i.jd, float %i.je
  %i.jf = bitcast float %.v.i.i.i.7 to i32
  %.signext.i.i.i.7 = sext i16 %i.it to i32
  %i.jg = and i32 %.signext.i.i.i.7, -2147483648
  %i.jh = or i32 %i.jg, %i.jf
  %i.ji = bitcast i32 %i.jh to float
  %i.jj = tail call noundef float @llvm.fabs.f32(float %i.ji) ; 2 uses
  %i.jk = fmul float %i.jj, f0x77800000
  %i.jl = fmul float %i.jk, f0x08800000
  %i.jm = bitcast float %i.jj to i32              ; 2 uses
  %i.jn = shl nuw i32 %i.jm, 1
  %i.jo = tail call i32 @llvm.umax.i32(i32 %i.jn, i32 1895825408)
  %spec.store.select.i.i.i.7 = lshr exact i32 %i.jo, 1
  %i.jp = and i32 %spec.store.select.i.i.i.7, 2139095040
  %i.jq = add nuw i32 %i.jp, 125829120
  %i.jr = bitcast i32 %i.jq to float
  %i.js = fadd float %i.jl, %i.jr
  %i.jt = bitcast float %i.js to i32              ; 2 uses
  %i.ju = lshr i32 %i.jt, 13
  %i.jv = and i32 %i.ju, 31744
  %i.jw = and i32 %i.jt, 4095
  %i.jx = add nuw nsw i32 %i.jv, %i.jw
  %i.jy = icmp samesign ugt i32 %i.jm, 2139095040
  %i.jz = trunc nuw i32 %i.jx to i16
  %i.ka = select i1 %i.jy, i16 32256, i16 %i.jz
  store i16 %i.ka, ptr %i.is, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm7f16_negENS0_7Float16E(i16 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = shl i32 %i.a, 17                         ; 2 uses
  %i.c = lshr exact i32 %i.b, 4
  %i.d = or disjoint i32 %i.c, 1879048192
  %i.e = bitcast i32 %i.d to float
  %i.f = and i32 %i.a, 32767
  %i.g = or disjoint i32 %i.f, 1056964608
  %i.h = bitcast i32 %i.g to float
  %i.i = icmp ult i32 %i.b, 134217728
  %i.j = fadd float %i.h, -5.000000e-01
  %i.k = fmul float %i.e, 1.925930e-34
  %.v.i.i = select i1 %i.i, float %i.j, float %i.k
  %i.l = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %0 to i32
  %i.m = and i32 %.signext.i.i, -2147483648
  %i.n = or i32 %i.m, %i.l
  %i.o = bitcast i32 %i.n to float                ; 2 uses
  %i.p = fneg float %i.o
  %i.q = tail call float @llvm.fabs.f32(float %i.o)
  %i.r = fmul float %i.q, f0x77800000
  %i.s = fmul float %i.r, f0x08800000
  %i.t = bitcast float %i.p to i32                ; 2 uses
  %i.u = shl i32 %i.t, 1                          ; 2 uses
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.v, 1
  %i.w = and i32 %spec.store.select.i.i, 2139095040
  %i.x = add nuw i32 %i.w, 125829120
  %i.y = bitcast i32 %i.x to float
  %i.z = fadd float %i.s, %i.y
  %i.aa = bitcast float %i.z to i32               ; 2 uses
  %i.ab = lshr i32 %i.aa, 13
  %i.ac = and i32 %i.ab, 31744
  %i.ad = and i32 %i.aa, 4095
  %i.ae = add nuw nsw i32 %i.ac, %i.ad
  %i.af = lshr i32 %i.t, 16
  %i.ag = and i32 %i.af, 32768
  %i.ah = icmp ugt i32 %i.u, -16777216
  %i.ai = select i1 %i.ah, i32 32256, i32 %i.ae
  %i.aj = or i32 %i.ai, %i.ag
  %i.ak = trunc nuw i32 %i.aj to i16
  ret i16 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm17f16x8_neg_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.a = shl nuw nsw i64 %indvars.iv.i, 1
  %i.b = add i64 %i.a, %0
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = shl i32 %i.e, 17                         ; 2 uses
  %i.g = lshr exact i32 %i.f, 4
  %i.h = or disjoint i32 %i.g, 1879048192
  %i.i = bitcast i32 %i.h to float
  %i.j = and i32 %i.e, 32767
  %i.k = or disjoint i32 %i.j, 1056964608
  %i.l = bitcast i32 %i.k to float
  %i.m = icmp ult i32 %i.f, 134217728
  %i.n = fadd float %i.l, -5.000000e-01
  %i.o = fmul float %i.i, 1.925930e-34
  %.v.i.i.i.i = select i1 %i.m, float %i.n, float %i.o
  %i.p = bitcast float %.v.i.i.i.i to i32
  %.signext.i.i.i.i = sext i16 %i.d to i32
  %i.q = and i32 %.signext.i.i.i.i, -2147483648
  %i.r = or i32 %i.q, %i.p
  %i.s = bitcast i32 %i.r to float                ; 2 uses
  %i.t = fneg float %i.s
  %i.u = tail call float @llvm.fabs.f32(float %i.s)
  %i.v = fmul float %i.u, f0x77800000
  %i.w = fmul float %i.v, f0x08800000
  %i.x = bitcast float %i.t to i32                ; 2 uses
  %i.y = shl i32 %i.x, 1                          ; 2 uses
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1895825408)
  %spec.store.select.i.i.i.i = lshr exact i32 %i.z, 1
  %i.aa = and i32 %spec.store.select.i.i.i.i, 2139095040
  %i.ab = add nuw i32 %i.aa, 125829120
  %i.ac = bitcast i32 %i.ab to float
  %i.ad = fadd float %i.w, %i.ac
  %i.ae = bitcast float %i.ad to i32              ; 2 uses
  %i.af = lshr i32 %i.ae, 13
  %i.ag = and i32 %i.af, 31744
  %i.ah = and i32 %i.ae, 4095
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.x, 16
  %i.ak = and i32 %i.aj, 32768
  %i.al = icmp ugt i32 %i.y, -16777216
  %i.am = select i1 %i.al, i32 32256, i32 %i.ai
  %i.an = or i32 %i.am, %i.ak
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.c, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float_round_wrapperINS0_7Float16ETnPFT_S4_EXadL_ZNS1_7f16_negES3_EEEEvm.exit, label %bb.b, !llvm.loop !5

_ZN2v88internal4wasm24simd_float_round_wrapperINS0_7Float16ETnPFT_S4_EXadL_ZNS1_7f16_negES3_EEEEvm.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define hidden i16 @_ZN2v88internal4wasm8f16_sqrtENS0_7Float16E(i16 %0) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = shl i32 %i.a, 17                         ; 2 uses
  %i.c = lshr exact i32 %i.b, 4
  %i.d = or disjoint i32 %i.c, 1879048192
  %i.e = bitcast i32 %i.d to float
  %i.f = and i32 %i.a, 32767
  %i.g = or disjoint i32 %i.f, 1056964608
  %i.h = bitcast i32 %i.g to float
  %i.i = icmp ult i32 %i.b, 134217728
  %i.j = fadd float %i.h, -5.000000e-01
  %i.k = fmul float %i.e, 1.925930e-34
  %.v.i.i = select i1 %i.i, float %i.j, float %i.k
  %i.l = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %0 to i32
  %i.m = and i32 %.signext.i.i, -2147483648
  %i.n = or i32 %i.m, %i.l
  %i.o = bitcast i32 %i.n to float
  %i.p = tail call noundef float @sqrtf(float noundef %i.o) #14 ; 2 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  %i.r = fmul float %i.q, f0x77800000
  %i.s = fmul float %i.r, f0x08800000
  %i.t = bitcast float %i.p to i32                ; 2 uses
  %i.u = shl i32 %i.t, 1                          ; 2 uses
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.v, 1
  %i.w = and i32 %spec.store.select.i.i, 2139095040
  %i.x = add nuw i32 %i.w, 125829120
  %i.y = bitcast i32 %i.x to float
  %i.z = fadd float %i.s, %i.y
  %i.aa = bitcast float %i.z to i32               ; 2 uses
  %i.ab = lshr i32 %i.aa, 13
  %i.ac = and i32 %i.ab, 31744
  %i.ad = and i32 %i.aa, 4095
  %i.ae = add nuw nsw i32 %i.ac, %i.ad
  %i.af = lshr i32 %i.t, 16
  %i.ag = and i32 %i.af, 32768
  %i.ah = icmp ugt i32 %i.u, -16777216
  %i.ai = select i1 %i.ah, i32 32256, i32 %i.ae
  %i.aj = or i32 %i.ai, %i.ag
  %i.ak = trunc nuw i32 %i.aj to i16
  ret i16 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm18f16x8_sqrt_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.a = shl nuw nsw i64 %indvars.iv.i, 1
  %i.b = add i64 %i.a, %0
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = shl i32 %i.e, 17                         ; 2 uses
  %i.g = lshr exact i32 %i.f, 4
  %i.h = or disjoint i32 %i.g, 1879048192
  %i.i = bitcast i32 %i.h to float
  %i.j = and i32 %i.e, 32767
  %i.k = or disjoint i32 %i.j, 1056964608
  %i.l = bitcast i32 %i.k to float
  %i.m = icmp ult i32 %i.f, 134217728
  %i.n = fadd float %i.l, -5.000000e-01
  %i.o = fmul float %i.i, 1.925930e-34
  %.v.i.i.i.i = select i1 %i.m, float %i.n, float %i.o
  %i.p = bitcast float %.v.i.i.i.i to i32
  %.signext.i.i.i.i = sext i16 %i.d to i32
  %i.q = and i32 %.signext.i.i.i.i, -2147483648
  %i.r = or i32 %i.q, %i.p
  %i.s = bitcast i32 %i.r to float
  %i.t = tail call noundef float @sqrtf(float noundef %i.s) #14 ; 2 uses
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fmul float %i.u, f0x77800000
  %i.w = fmul float %i.v, f0x08800000
  %i.x = bitcast float %i.t to i32                ; 2 uses
  %i.y = shl i32 %i.x, 1                          ; 2 uses
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1895825408)
  %spec.store.select.i.i.i.i = lshr exact i32 %i.z, 1
  %i.aa = and i32 %spec.store.select.i.i.i.i, 2139095040
  %i.ab = add nuw i32 %i.aa, 125829120
  %i.ac = bitcast i32 %i.ab to float
  %i.ad = fadd float %i.w, %i.ac
  %i.ae = bitcast float %i.ad to i32              ; 2 uses
  %i.af = lshr i32 %i.ae, 13
  %i.ag = and i32 %i.af, 31744
  %i.ah = and i32 %i.ae, 4095
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.x, 16
  %i.ak = and i32 %i.aj, 32768
  %i.al = icmp ugt i32 %i.y, -16777216
  %i.am = select i1 %i.al, i32 32256, i32 %i.ai
  %i.an = or i32 %i.am, %i.ak
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.c, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float_round_wrapperINS0_7Float16ETnPFT_S4_EXadL_ZNS1_8f16_sqrtES3_EEEEvm.exit, label %bb.b, !llvm.loop !7

_ZN2v88internal4wasm24simd_float_round_wrapperINS0_7Float16ETnPFT_S4_EXadL_ZNS1_8f16_sqrtES3_EEEEvm.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm8f16_ceilENS0_7Float16E(i16 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = shl i32 %i.a, 17                         ; 2 uses
  %i.c = lshr exact i32 %i.b, 4
  %i.d = or disjoint i32 %i.c, 1879048192
  %i.e = bitcast i32 %i.d to float
  %i.f = and i32 %i.a, 32767
  %i.g = or disjoint i32 %i.f, 1056964608
  %i.h = bitcast i32 %i.g to float
  %i.i = icmp ult i32 %i.b, 134217728
  %i.j = fadd float %i.h, -5.000000e-01
  %i.k = fmul float %i.e, 1.925930e-34
  %.v.i.i = select i1 %i.i, float %i.j, float %i.k
  %i.l = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %0 to i32
  %i.m = and i32 %.signext.i.i, -2147483648
  %i.n = or i32 %i.m, %i.l
  %i.o = bitcast i32 %i.n to float
  %i.p = tail call float @llvm.ceil.f32(float %i.o) ; 2 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  %i.r = fmul float %i.q, f0x77800000
  %i.s = fmul float %i.r, f0x08800000
  %i.t = bitcast float %i.p to i32                ; 2 uses
  %i.u = shl i32 %i.t, 1                          ; 2 uses
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.v, 1
  %i.w = and i32 %spec.store.select.i.i, 2139095040
  %i.x = add nuw i32 %i.w, 125829120
  %i.y = bitcast i32 %i.x to float
  %i.z = fadd float %i.s, %i.y
  %i.aa = bitcast float %i.z to i32               ; 2 uses
  %i.ab = lshr i32 %i.aa, 13
  %i.ac = and i32 %i.ab, 31744
  %i.ad = and i32 %i.aa, 4095
  %i.ae = add nuw nsw i32 %i.ac, %i.ad
  %i.af = lshr i32 %i.t, 16
  %i.ag = and i32 %i.af, 32768
  %i.ah = icmp ugt i32 %i.u, -16777216
  %i.ai = select i1 %i.ah, i32 32256, i32 %i.ae
  %i.aj = or i32 %i.ai, %i.ag
  %i.ak = trunc nuw i32 %i.aj to i16
  ret i16 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm18f16x8_ceil_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.a = shl nuw nsw i64 %indvars.iv.i, 1
  %i.b = add i64 %i.a, %0
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = shl i32 %i.e, 17                         ; 2 uses
  %i.g = lshr exact i32 %i.f, 4
  %i.h = or disjoint i32 %i.g, 1879048192
  %i.i = bitcast i32 %i.h to float
  %i.j = and i32 %i.e, 32767
  %i.k = or disjoint i32 %i.j, 1056964608
  %i.l = bitcast i32 %i.k to float
  %i.m = icmp ult i32 %i.f, 134217728
  %i.n = fadd float %i.l, -5.000000e-01
  %i.o = fmul float %i.i, 1.925930e-34
  %.v.i.i.i.i = select i1 %i.m, float %i.n, float %i.o
  %i.p = bitcast float %.v.i.i.i.i to i32
  %.signext.i.i.i.i = sext i16 %i.d to i32
  %i.q = and i32 %.signext.i.i.i.i, -2147483648
  %i.r = or i32 %i.q, %i.p
  %i.s = bitcast i32 %i.r to float
  %i.t = tail call float @llvm.ceil.f32(float %i.s) ; 2 uses
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fmul float %i.u, f0x77800000
  %i.w = fmul float %i.v, f0x08800000
  %i.x = bitcast float %i.t to i32                ; 2 uses
  %i.y = shl i32 %i.x, 1                          ; 2 uses
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1895825408)
  %spec.store.select.i.i.i.i = lshr exact i32 %i.z, 1
  %i.aa = and i32 %spec.store.select.i.i.i.i, 2139095040
  %i.ab = add nuw i32 %i.aa, 125829120
  %i.ac = bitcast i32 %i.ab to float
  %i.ad = fadd float %i.w, %i.ac
  %i.ae = bitcast float %i.ad to i32              ; 2 uses
  %i.af = lshr i32 %i.ae, 13
  %i.ag = and i32 %i.af, 31744
  %i.ah = and i32 %i.ae, 4095
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.x, 16
  %i.ak = and i32 %i.aj, 32768
  %i.al = icmp ugt i32 %i.y, -16777216
  %i.am = select i1 %i.al, i32 32256, i32 %i.ai
  %i.an = or i32 %i.am, %i.ak
  %i.ao = trunc nuw i32 %i.an to i16
  store i16 %i.ao, ptr %i.c, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN2v88internal4wasm24simd_float_round_wrapperINS0_7Float16ETnPFT_S4_EXadL_ZNS1_8f16_ceilES3_EEEEvm.exit, label %bb.b, !llvm.loop !8

_ZN2v88internal4wasm24simd_float_round_wrapperINS0_7Float16ETnPFT_S4_EXadL_ZNS1_8f16_ceilES3_EEEEvm.exit: ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i16 @_ZN2v88internal4wasm9f16_floorENS0_7Float16E(i16 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i16 %0 to i32                       ; 2 uses
  %i.b = shl i32 %i.a, 17                         ; 2 uses
  %i.c = lshr exact i32 %i.b, 4
  %i.d = or disjoint i32 %i.c, 1879048192
  %i.e = bitcast i32 %i.d to float
  %i.f = and i32 %i.a, 32767
  %i.g = or disjoint i32 %i.f, 1056964608
  %i.h = bitcast i32 %i.g to float
  %i.i = icmp ult i32 %i.b, 134217728
  %i.j = fadd float %i.h, -5.000000e-01
  %i.k = fmul float %i.e, 1.925930e-34
  %.v.i.i = select i1 %i.i, float %i.j, float %i.k
  %i.l = bitcast float %.v.i.i to i32
  %.signext.i.i = sext i16 %0 to i32
  %i.m = and i32 %.signext.i.i, -2147483648
  %i.n = or i32 %i.m, %i.l
  %i.o = bitcast i32 %i.n to float
  %i.p = tail call float @llvm.floor.f32(float %i.o) ; 2 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  %i.r = fmul float %i.q, f0x77800000
  %i.s = fmul float %i.r, f0x08800000
  %i.t = bitcast float %i.p to i32                ; 2 uses
  %i.u = shl i32 %i.t, 1                          ; 2 uses
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.v, 1
  %i.w = and i32 %spec.store.select.i.i, 2139095040
  %i.x = add nuw i32 %i.w, 125829120
  %i.y = bitcast i32 %i.x to float
  %i.z = fadd float %i.s, %i.y
  %i.aa = bitcast float %i.z to i32               ; 2 uses
  %i.ab = lshr i32 %i.aa, 13
  %i.ac = and i32 %i.ab, 31744
  %i.ad = and i32 %i.aa, 4095
  %i.ae = add nuw nsw i32 %i.ac, %i.ad
  %i.af = lshr i32 %i.t, 16
  %i.ag = and i32 %i.af, 32768
  %i.ah = icmp ugt i32 %i.u, -16777216
  %i.ai = select i1 %i.ah, i32 32256, i32 %i.ae
  %i.aj = or i32 %i.ai, %i.ag
  %i.ak = trunc nuw i32 %i.aj to i16
  ret i16 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v88internal4wasm19f16x8_floor_wrapperEm(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.a = shl nuw nsw i64 %indvars.iv.i, 1
  %i.b = add i64 %i.a, %0
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = shl i32 %i.e, 17                         ; 2 uses
  %i.g = lshr exact i32 %i.f, 4
  %i.h = or disjoint i32 %i.g, 1879048192
  %i.i = bitcast i32 %i.h to float
  %i.j = and i32 %i.e, 32767
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm24simd_float16_fma_wrapperIXadL_ZNS1_4QfmsEfffEEEEvm:bb.a
  %.v.i.i12 = select i1 %i.at, float %i.au, float %i.av
  %i.aw = bitcast float %.v.i.i12 to i32
  %.signext.i.i13 = sext i16 %.0.copyload.i.i9 to i32
  %i.ax = and i32 %.signext.i.i13, -2147483648
  %i.ay = or i32 %i.ax, %i.aw
  %i.az = bitcast i32 %i.ay to float
  %i.ba = fneg float %i.v
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ak, float %i.az) ; 2 uses
  %i.bc = tail call float @llvm.fabs.f32(float %i.bb)
  %i.bd = fmul float %i.bc, f0x77800000
  %i.be = fmul float %i.bd, f0x08800000
  %i.bf = bitcast float %i.bb to i32              ; 2 uses
  %i.bg = shl i32 %i.bf, 1                        ; 2 uses
  %i.bh = tail call i32 @llvm.umax.i32(i32 %i.bg, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.bh, 1
  %i.bi = and i32 %spec.store.select.i.i, 2139095040
  %i.bj = add nuw i32 %i.bi, 125829120
  %i.bk = bitcast i32 %i.bj to float
  %i.bl = fadd float %i.be, %i.bk
  %i.bm = bitcast float %i.bl to i32              ; 2 uses
  %i.bn = lshr i32 %i.bm, 13
  %i.bo = and i32 %i.bn, 31744
  %i.bp = and i32 %i.bm, 4095
  %i.bq = add nuw nsw i32 %i.bo, %i.bp
  %i.br = lshr i32 %i.bf, 16
  %i.bs = and i32 %i.br, 32768
  %i.bt = icmp ugt i32 %i.bg, -16777216
  %i.bu = select i1 %i.bt, i32 32256, i32 %i.bq
  %i.bv = or i32 %i.bu, %i.bs
  %i.bw = trunc nuw i32 %i.bv to i16
  store i16 %i.bw, ptr %i.c, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal4wasm19memory_init_wrapperEmjmjjj(i64 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 119
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = shl nsw i32 %1, 1                        ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %.0.copyload.i.i.i = load i64, ptr %i.k, align 1 ; 2 uses
  %i.l = zext i32 %5 to i64                       ; 3 uses
  %.not.i = icmp uge i64 %.0.copyload.i.i.i, %i.l
  %i.m = sub nuw i64 %.0.copyload.i.i.i, %i.l
  %i.n = icmp ule i64 %2, %i.m
  %i.o = select i1 %.not.i, i1 %i.n, i1 false
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %0, 135
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = sext i32 %4 to i64                       ; 2 uses
  %i.w = shl nsw i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %.0.copyload.i.i = load i32, ptr %i.x, align 1  ; 2 uses
  %.not.i16 = icmp ule i32 %5, %.0.copyload.i.i
  %i.y = sub nuw i32 %.0.copyload.i.i, %5
  %i.z = icmp ule i32 %3, %i.y
  %i.aa = select i1 %.not.i16, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = add i64 %0, 127
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = shl nsw i64 %i.v, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %.0.copyload.i.i18 = load i64, ptr %i.ai, align 1
  %i.aj = inttoptr i64 %.0.copyload.i.i18 to ptr
  %i.ak = sext i32 %i.f to i64
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.al
  %.0.copyload.i.i.i.i = load i64, ptr %i.am, align 1
  %i.an = inttoptr i64 %.0.copyload.i.i.i.i to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %2
  %i.ap = zext i32 %3 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.aq, i64 %i.l, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal4wasm19memory_copy_wrapperEmjjmmm(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 119
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = shl nsw i32 %1, 1                        ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %.0.copyload.i.i.i = load i64, ptr %i.k, align 1 ; 2 uses
  %i.l = shl nsw i32 %2, 1                        ; 2 uses
  %.not.i = icmp ule i64 %5, %.0.copyload.i.i.i
  %i.m = sub nuw i64 %.0.copyload.i.i.i, %5
  %i.n = icmp ule i64 %3, %i.m
  %i.o = select i1 %.not.i, i1 %i.n, i1 false
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = or disjoint i32 %i.l, 1
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  %.0.copyload.i.i.i18 = load i64, ptr %i.s, align 1 ; 2 uses
  %.not.i19 = icmp ule i64 %5, %.0.copyload.i.i.i18
  %i.t = sub nuw i64 %.0.copyload.i.i.i18, %5
  %i.u = icmp ule i64 %4, %i.t
  %i.v = select i1 %.not.i19, i1 %i.u, i1 false
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = sext i32 %i.f to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.x
  %.0.copyload.i.i.i.i = load i64, ptr %i.y, align 1
  %i.z = inttoptr i64 %.0.copyload.i.i.i.i to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %3
  %i.ab = sext i32 %i.l to i64
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ac
  %.0.copyload.i.i.i.i20 = load i64, ptr %i.ad, align 1
  %i.ae = inttoptr i64 %.0.copyload.i.i.i.i20 to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.af, i64 %5, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal4wasm19memory_fill_wrapperEmjmhm(i64 noundef %0, i32 noundef %1, i64 noundef %2, i8 noundef zeroext %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 119
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = shl nsw i32 %1, 1                        ; 2 uses
  %i.g = or disjoint i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %.0.copyload.i.i.i = load i64, ptr %i.k, align 1 ; 2 uses
  %.not.i = icmp ule i64 %4, %.0.copyload.i.i.i
  %i.l = sub nuw i64 %.0.copyload.i.i.i, %4
  %i.m = icmp ule i64 %2, %i.l
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sext i32 %i.f to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.p
  %.0.copyload.i.i.i.i = load i64, ptr %i.q, align 1
  %i.r = inttoptr i64 %.0.copyload.i.i.i.i to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 %3, i64 %4, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm18array_copy_wrapperEmjmjj(i64 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %0, %2
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, %3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %4, %1
  %i.d = icmp ugt i32 %i.c, %3
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = add i32 %4, %3
  %i.f = icmp ugt i32 %i.e, %1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.d, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.h = add i64 %2, -1                           ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 31
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %bb.f, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit

bb.f:                                             ; preds = %bb.e
  %i.r = shl i32 %1, 3
  %i.s = add i32 %i.r, 24
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %0, -1
  %i.v = add i64 %i.u, %i.t                       ; 2 uses
  %i.w = shl i32 %3, 3
  %i.x = add i32 %i.w, 24
  %i.y = sext i32 %i.x to i64
  %i.z = add i64 %i.h, %i.y                       ; 2 uses
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 55464 ; 2 uses
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal4Heap9MoveRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ac, i64 %0, i64 %i.v, i64 %i.z, i32 noundef %4, i32 noundef 4) #14
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ac, i64 %0, i64 %i.v, i64 %i.z, i32 noundef %4, i32 noundef 4) #14
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit: ; preds = %bb.e
  %i.ad = lshr i32 %i.p, 8
  %i.ae = add nuw nsw i32 %i.ad, 2
  %i.af = and i32 %i.ae, 7
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32                    ; 3 uses
  %i.ak = add i64 %0, 23
  %i.al = mul i32 %1, %i.aj
  %i.am = zext i32 %i.al to i64
  %i.an = add i64 %i.ak, %i.am
  %i.ao = inttoptr i64 %i.an to ptr               ; 34 uses
  %i.ap = add i64 %2, 23
  %i.aq = mul i32 %3, %i.aj
  %i.ar = zext i32 %i.aq to i64
  %i.as = add i64 %i.ap, %i.ar
  %i.at = inttoptr i64 %i.as to ptr               ; 34 uses
  %i.au = mul i32 %4, %i.aj                       ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  br i1 %i.g, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit
  switch i32 %i.au, label %bb.z [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 5, label %bb.n
    i32 6, label %bb.o
    i32 7, label %bb.p
    i32 8, label %bb.q
    i32 9, label %bb.r
    i32 10, label %bb.s
    i32 11, label %bb.t
    i32 12, label %bb.u
    i32 13, label %bb.v
    i32 14, label %bb.w
    i32 15, label %bb.x
    i32 16, label %bb.y
  ]

bb.j:                                             ; preds = %bb.i
  %i.aw = load i8, ptr %i.at, align 1
  store i8 %i.aw, ptr %i.ao, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = load i16, ptr %i.at, align 1
  store i16 %i.ax, ptr %i.ao, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.l:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.at, i64 3, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.m:                                             ; preds = %bb.i
  %i.ay = load i32, ptr %i.at, align 1
  store i32 %i.ay, ptr %i.ao, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.n:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ao, ptr noundef nonnull align 1 dereferenceable(5) %i.at, i64 5, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.o:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ao, ptr noundef nonnull align 1 dereferenceable(6) %i.at, i64 6, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.p:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ao, ptr noundef nonnull align 1 dereferenceable(7) %i.at, i64 7, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.q:                                             ; preds = %bb.i
  %i.az = load i64, ptr %i.at, align 1
  store i64 %i.az, ptr %i.ao, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.r:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ao, ptr noundef nonnull align 1 dereferenceable(9) %i.at, i64 9, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.s:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ao, ptr noundef nonnull align 1 dereferenceable(10) %i.at, i64 10, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.t:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ao, ptr noundef nonnull align 1 dereferenceable(11) %i.at, i64 11, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.u:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ao, ptr noundef nonnull align 1 dereferenceable(12) %i.at, i64 12, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.v:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ao, ptr noundef nonnull align 1 dereferenceable(13) %i.at, i64 13, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.w:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ao, ptr noundef nonnull align 1 dereferenceable(14) %i.at, i64 14, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.x:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ao, ptr noundef nonnull align 1 dereferenceable(15) %i.at, i64 15, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.y:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ao, ptr noundef nonnull align 1 dereferenceable(16) %i.at, i64 16, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.z:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.aa:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit
  switch i32 %i.au, label %bb.ar [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 4, label %bb.ae
    i32 5, label %bb.af
    i32 6, label %bb.ag
    i32 7, label %bb.ah
    i32 8, label %bb.ai
    i32 9, label %bb.aj
    i32 10, label %bb.ak
    i32 11, label %bb.al
    i32 12, label %bb.am
    i32 13, label %bb.an
    i32 14, label %bb.ao
    i32 15, label %bb.ap
    i32 16, label %bb.aq
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ba = load i8, ptr %i.at, align 1
  store i8 %i.ba, ptr %i.ao, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bb = load i16, ptr %i.at, align 1
  store i16 %i.bb, ptr %i.ao, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ad:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.at, i64 3, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ae:                                            ; preds = %bb.aa
  %i.bc = load i32, ptr %i.at, align 1
  store i32 %i.bc, ptr %i.ao, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.af:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ao, ptr noundef nonnull align 1 dereferenceable(5) %i.at, i64 5, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ag:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ao, ptr noundef nonnull align 1 dereferenceable(6) %i.at, i64 6, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ah:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ao, ptr noundef nonnull align 1 dereferenceable(7) %i.at, i64 7, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ai:                                            ; preds = %bb.aa
  %i.bd = load i64, ptr %i.at, align 1
  store i64 %i.bd, ptr %i.ao, align 1
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.aj:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ao, ptr noundef nonnull align 1 dereferenceable(9) %i.at, i64 9, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ak:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ao, ptr noundef nonnull align 1 dereferenceable(10) %i.at, i64 10, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.al:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ao, ptr noundef nonnull align 1 dereferenceable(11) %i.at, i64 11, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.am:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ao, ptr noundef nonnull align 1 dereferenceable(12) %i.at, i64 12, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.an:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.ao, ptr noundef nonnull align 1 dereferenceable(13) %i.at, i64 13, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ao:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ao, ptr noundef nonnull align 1 dereferenceable(14) %i.at, i64 14, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ap:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ao, ptr noundef nonnull align 1 dereferenceable(15) %i.at, i64 15, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.aq:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ao, ptr noundef nonnull align 1 dereferenceable(16) %i.at, i64 16, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

bb.ar:                                            ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %_ZN2v88internal7MemMoveEPvPKvm.exit

_ZN2v88internal7MemMoveEPvPKvm.exit:              ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.g, %bb.h
  ret void
}

declare void @_ZN2v88internal4Heap9MoveRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992), i64, i64, i64, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992), i64, i64, i64, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm18array_fill_wrapperEmjjjjm(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = trunc i32 %4 to i1
  br i1 %i.a, label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.thread, label %bb.b

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.thread: ; preds = %bb.a
  %i.b = shl i32 %1, 3
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit88

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %4, 8
  %i.d = add nuw nsw i32 %i.c, 2
  %i.e = and i32 %i.d, 7
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = mul i32 %1, %i.i
  br label %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit88

_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit88: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.thread, %bb.b
  %.sink113 = phi i32 [ %i.b, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.thread ], [ %i.j, %bb.b ]
  %.0.i87 = phi i32 [ 8, %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit.thread ], [ %i.i, %bb.b ]
  %.sink = add i64 %0, 23
  %i.k = zext i32 %.sink113 to i64
  %i.l = add i64 %.sink, %i.k                     ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 16 uses
  %i.n = mul i32 %.0.i87, %2                      ; 6 uses
  %i.o = sext i32 %i.n to i64                     ; 6 uses
  %i.p = icmp ugt i32 %i.n, 7
  br i1 %i.p, label %bb.d, label %bb.c, !prof !22

bb.c:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit88
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  unreachable

bb.d:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.exit88
  %i.q = and i32 %4, 3
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %4, 268435440
  %i.t = add nsw i32 %i.s, -5648                  ; 2 uses
  %i.u = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 24) ; 2 uses
  %i.v = icmp ult i32 %i.u, 8
  br i1 %i.v, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #15
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.w = and i32 %4, 268435427
  switch i32 %i.w, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread101 [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread
  ]

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.e
  %switch.idx.cast.i = trunc nuw nsw i32 %i.u to i8
  switch i8 %switch.idx.cast.i, label %default.unreachable111 [
    i8 1, label %bb.h
    i8 3, label %bb.h
    i8 0, label %bb.j
    i8 2, label %bb.j
    i8 7, label %bb.l
    i8 6, label %bb.l
    i8 5, label %bb.n
    i8 4, label %bb.o
  ]

bb.h:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.x = inttoptr i64 %5 to ptr
  %.0.copyload.i = load i64, ptr %i.x, align 1    ; 2 uses
  %.not84 = icmp eq i64 %.0.copyload.i, 0
  br i1 %.not84, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  br label %bb.s

bb.i:                                             ; preds = %bb.h
  store i64 %.0.copyload.i, ptr %i.m, align 1
  br label %.loopexit

bb.j:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.y = inttoptr i64 %5 to ptr
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %.not83 = icmp eq i32 %i.z, 0
  br i1 %.not83, label %.thread103, label %bb.k

.thread103:                                       ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  br label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.z, ptr %i.aa, align 4
  store i32 %i.z, ptr %i.m, align 4
  br label %.loopexit

bb.l:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.ab = inttoptr i64 %5 to ptr
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %sext.mask81 = and i32 %i.ac, 65535
  %.not82 = icmp eq i32 %sext.mask81, 0
  br i1 %.not82, label %.thread104, label %bb.m

.thread104:                                       ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  br label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = insertelement <4 x i16> poison, i16 %i.ad, i64 0
  %i.af = shufflevector <4 x i16> %i.ae, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.af, ptr %i.m, align 2
  br label %.loopexit

bb.n:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.ag = inttoptr i64 %5 to ptr
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %sext.mask = and i32 %i.ah, 255
  %.not = icmp eq i32 %sext.mask, 0
  br i1 %.not, label %.thread105, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.n
  %i.ai = trunc i32 %i.ah to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.m, i8 %i.ai, i64 8, i1 false)
  br label %.loopexit

.thread105:                                       ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  br label %bb.s

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread101: ; preds = %bb.g
  %i.aj = inttoptr i64 %5 to ptr
  %.0.copyload.i90 = load i64, ptr %i.aj, align 1
  store i64 %.0.copyload.i90, ptr %i.m, align 1
  br label %.loopexit

bb.o:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  br label %bb.s

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread: ; preds = %bb.g, %bb.g, %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #15
  unreachable

default.unreachable111:                           ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  unreachable

.loopexit:                                        ; preds = %.preheader.preheader, %bb.m, %bb.k, %bb.i, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread101
  %.not85107 = icmp slt i32 %i.n, 16
  br i1 %.not85107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %i.ak = phi i32 [ %i.an, %.lr.ph ], [ 16, %.loopexit ] ; 3 uses
  %.076108 = phi i32 [ %i.ak, %.lr.ph ], [ 8, %.loopexit ]
  %i.al = sext i32 %.076108 to i64                ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.m, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.m, i64 %i.al, i1 false)
  %i.an = shl nsw i32 %i.ak, 1                    ; 2 uses
  %.not85 = icmp sgt i32 %i.an, %i.n
  br i1 %.not85, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %.076.lcssa = phi i32 [ 8, %.loopexit ], [ %i.ak, %.lr.ph ] ; 3 uses
  %i.ao = icmp slt i32 %.076.lcssa, %i.n
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.ap = sext i32 %.076.lcssa to i64
  %i.aq = getelementptr inbounds i8, ptr %i.m, i64 %i.ap
  %i.ar = sub nsw i32 %i.n, %.076.lcssa
  %i.as = zext nneg i32 %i.ar to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 1 %i.m, i64 %i.as, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %.not86 = icmp eq i32 %3, 0
  br i1 %.not86, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 55464
  tail call void @_ZN2v88internal12WriteBarrier8ForRangeINS0_14FullObjectSlotEEEvPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEET_S9_(ptr noundef nonnull %i.ax, i64 %0, i64 %i.l, i64 %i.aw) #14
  br label %bb.s

bb.s:                                             ; preds = %.thread105, %.thread104, %.thread103, %.thread, %bb.q, %bb.r, %bb.o
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #9

declare void @_ZN2v88internal12WriteBarrier8ForRangeINS0_14FullObjectSlotEEEvPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEET_S9_(ptr noundef, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef double @_ZN2v88internal4wasm18flat_string_to_f64Em(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef double @_ZN2v88internal18FlatStringToDoubleENS0_6TaggedINS0_6StringEEENS0_14ConversionFlagEd(i64 %0, i32 noundef 2, double noundef +qnan) #14
  ret double %i.a
}

declare noundef double @_ZN2v88internal18FlatStringToDoubleENS0_6TaggedINS0_6StringEEENS0_14ConversionFlagEd(i64, i32 noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm11start_stackEPNS0_7IsolateEPNS1_11StackMemoryEmmm(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal7Isolate12SwitchStacksILNS0_4wasm10JumpBuffer10StackStateE2ELS5_1EEEvPNS3_11StackMemoryES7_mmm(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef %1, ptr noundef %i.b, i64 noundef %2, i64 noundef %3, i64 noundef %4) #14
  ret void
}

declare void @_ZN2v88internal7Isolate12SwitchStacksILNS0_4wasm10JumpBuffer10StackStateE2ELS5_1EEEvPNS3_11StackMemoryES7_mmm(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm13suspend_stackEPNS0_7IsolateEPNS1_11StackMemoryEmmm(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal7Isolate12SwitchStacksILNS0_4wasm10JumpBuffer10StackStateE1ELS5_2EEEvPNS3_11StackMemoryES7_mmm(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef %1, ptr noundef %i.b, i64 noundef %2, i64 noundef %3, i64 noundef %4) #14
  ret void
}

declare void @_ZN2v88internal7Isolate12SwitchStacksILNS0_4wasm10JumpBuffer10StackStateE1ELS5_2EEEvPNS3_11StackMemoryES7_mmm(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm12resume_stackEPNS0_7IsolateEPNS1_11StackMemoryEmmmm(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55304 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8 ; 5 uses
  %i.b = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.c = add i64 %5, 15                           ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store atomic volatile i64 0, ptr %i.d monotonic, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store atomic volatile i64 %.sroa.0.0.copyload.i, ptr %i.d monotonic, align 8
  %i.e = and i64 %.sroa.0.0.copyload.i, -262144
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 262144
  %i.h = and i64 %i.g, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %5, i64 %i.c, i64 %.sroa.0.0.copyload.i) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = and i64 %5, -262144
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load i64, ptr %i.j, align 262144
  %i.l = and i64 %i.k, 32
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64 %5, i64 %i.c, i64 %.sroa.0.0.copyload.i) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.n = load ptr, ptr %i.m, align 8
  store i64 %5, ptr %i.a, align 8
  tail call void @_ZN2v88internal7Isolate12SwitchStacksILNS0_4wasm10JumpBuffer10StackStateE2ELS5_1EEEvPNS3_11StackMemoryES7_mmm(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef %1, ptr noundef %i.n, i64 noundef %2, i64 noundef %3, i64 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm12return_stackEPNS0_7IsolateEPNS1_11StackMemoryE(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal7Isolate12SwitchStacksILNS0_4wasm10JumpBuffer10StackStateE3ELS5_2EEEvPNS3_11StackMemoryES7_mmm(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef %1, ptr noundef %i.b, i64 noundef 0, i64 noundef 0, i64 noundef 0) #14
  tail call void @_ZN2v88internal7Isolate15RetireWasmStackEPNS0_4wasm11StackMemoryE(ptr noundef nonnull align 8 dereferenceable(64320) %0, ptr noundef %1) #14
  ret void
}

declare void @_ZN2v88internal7Isolate12SwitchStacksILNS0_4wasm10JumpBuffer10StackStateE3ELS5_2EEEvPNS3_11StackMemoryES7_mmm(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal7Isolate15RetireWasmStackEPNS0_4wasm11StackMemoryE(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal4wasm27switch_to_the_central_stackEPNS0_7IsolateEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load i64, ptr %i.d, align 8
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 59916 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.m = load i64, ptr %i.l, align 8
  ret i64 %i.m
}

declare void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm29switch_from_the_central_stackEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 noundef %i.d) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal4wasm34switch_to_the_central_stack_for_jsEPNS0_7IsolateEm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 %1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.h) #14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 1, ptr %i.i, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm36switch_from_the_central_stack_for_jsEPNS0_7IsolateE(ptr noundef initializes((448, 449)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call noundef ptr @_ZNK2v88internal4wasm11StackMemory7jslimitEv(ptr noundef nonnull align 8 dereferenceable(136) %i.b) #14
  %i.g = ptrtoint ptr %i.f to i64
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #14
  ret void
}

declare noundef ptr @_ZNK2v88internal4wasm11StackMemory7jslimitEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal4wasm10grow_stackEPNS0_7IsolateEPvmmm(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr %0, ptr %5, align 8
  %i.a = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck17WasmHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %3) #14
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = call noundef zeroext i1 @_ZN2v88internal7Isolate16IsOnCentralStackEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #14
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %3, %2
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !25, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, i64 20480, i64 40960
  %i.i = add i64 %i.e, %i.h
  %i.j = call noundef zeroext i1 @_ZN2v88internal4wasm11StackMemory4GrowEmm(ptr noundef nonnull align 8 dereferenceable(136) %i.c, i64 noundef %4, i64 noundef %i.i) #14
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  %..i = select i1 %.not.i, ptr %i.c, ptr %i.l    ; 2 uses
  %i.m = load ptr, ptr %..i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %2                         ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %1, i64 %2, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = call noundef ptr @_ZNK2v88internal4wasm11StackMemory7jslimitEv(ptr noundef nonnull align 8 dereferenceable(136) %i.c) #14
  %i.v = ptrtoint ptr %i.u to i64
  call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef %i.v) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.2 = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.r, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i64 %.2
}

declare noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck17WasmHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2v88internal7Isolate16IsOnCentralStackEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN2v88internal4wasm11StackMemory4GrowEmm(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal4wasm12shrink_stackEPNS0_7IsolateE(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN2v88internal4wasm11StackMemory6ShrinkEv(ptr noundef nonnull align 8 dereferenceable(136) %i.b) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call noundef ptr @_ZNK2v88internal4wasm11StackMemory7jslimitEv(ptr noundef nonnull align 8 dereferenceable(136) %i.b) #14
  %i.i = ptrtoint ptr %i.h to i64
  tail call void @_ZN2v88internal10StackGuard30SetStackLimitForStackSwitchingEm(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 noundef %i.i) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare noundef i64 @_ZN2v88internal4wasm11StackMemory6ShrinkEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZN2v88internal4wasm11load_old_fpEPNS0_7IsolateE(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55296
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

declare void @_ZN2v88internal12WriteBarrier10SharedSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64, i64, i64) local_unnamed_addr #5

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_13TrustedObjectEEENS0_14FullObjectSlotES4_(i64, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @ceilf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @floorf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @truncf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @nearbyintf(float noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = distinct !{!23, !6}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{i8 0, i8 2}
!26 = !{}
end_hunk_2
