inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20250512::(anonymous namespace)::DisplayUnit" = type { %"class.std::basic_string_view", i32, double }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::Duration" = type { %"class.absl::lts_20250512::Duration::HiRep", i32 }
%"class.absl::lts_20250512::Duration::HiRep" = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [24 x i8] c"-2562047788015215h30m8s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_112kDisplayNanoE = internal unnamed_addr constant %"struct.absl::lts_20250512::(anonymous namespace)::DisplayUnit" { %"class.std::basic_string_view" { i64 2, ptr @.str.6 }, i32 2, double 1.000000e+02 }, align 8
@_ZN4absl12lts_2025051212_GLOBAL__N_113kDisplayMicroE = internal unnamed_addr constant %"struct.absl::lts_20250512::(anonymous namespace)::DisplayUnit" { %"class.std::basic_string_view" { i64 2, ptr @.str.7 }, i32 5, double 1.000000e+05 }, align 8
@_ZN4absl12lts_2025051212_GLOBAL__N_113kDisplayMilliE = internal unnamed_addr constant %"struct.absl::lts_20250512::(anonymous namespace)::DisplayUnit" { %"class.std::basic_string_view" { i64 2, ptr @.str.8 }, i32 8, double 1.000000e+08 }, align 8
@_ZN4absl12lts_2025051212_GLOBAL__N_111kDisplaySecE = internal unnamed_addr constant %"struct.absl::lts_20250512::(anonymous namespace)::DisplayUnit" { %"class.std::basic_string_view" { i64 1, ptr @.str.11 }, i32 11, double 1.000000e+11 }, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @_ZN4absl12lts_2025051212IDivDurationENS0_8DurationES1_PS1_(i64 %0, i32 %1, i64 %2, i32 %3, ptr noundef writeonly captures(none) initializes((0, 12)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  %i.b = icmp eq i32 %3, -1
  %or.cond178.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond178.i, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  switch i32 %3, label %bb.r [
    i32 4, label %bb.d
    i32 400, label %bb.f
    i32 4000, label %bb.h
    i32 4000000, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %or.cond.i = icmp ult i64 %0, 9223372032
  br i1 %or.cond.i, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.d = mul nuw nsw i64 %0, 1000000000
  %i.e = lshr i32 %1, 2
  %i.f = zext nneg i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.d, %i.f
  %i.h = and i32 %1, 3
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %or.cond3.i = icmp ult i64 %0, 922337203285
  br i1 %or.cond3.i, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.i = mul nuw nsw i64 %0, 10000000
  %i.j = udiv i32 %1, 400
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.i, %i.k
  %i.m = urem i32 %1, 400
  br label %bb.q

bb.h:                                             ; preds = %bb.c
  %or.cond5.i = icmp ult i64 %0, 9223372032854
  br i1 %or.cond5.i, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.n = mul nuw nsw i64 %0, 1000000
  %i.o = udiv i32 %1, 4000
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nuw nsw i64 %i.n, %i.p
  %i.r = urem i32 %1, 4000
  br label %bb.q

bb.j:                                             ; preds = %bb.c
  %or.cond7.i = icmp ult i64 %0, 9223372032854775
  br i1 %or.cond7.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.s = mul nuw nsw i64 %0, 1000
  %i.t = udiv i32 %1, 4000000
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.s, %i.u
  %i.w = urem i32 %1, 4000000
  br label %bb.q

bb.l:                                             ; preds = %bb.b
  %i.x = icmp sgt i64 %2, 0
  %i.y = icmp eq i32 %3, 0
  %or.cond9.i = and i1 %i.x, %i.y
  br i1 %or.cond9.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.z = icmp sgt i64 %0, -1
  br i1 %i.z, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp eq i64 %2, 1
  br i1 %i.aa, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = udiv i64 %0, %2
  %i.ac = urem i64 %0, %2
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %.not.i = icmp ne i32 %1, 0
  %.neg184.i = sext i1 %.not.i to i64             ; 2 uses
  %spec.select.neg.i = sub i64 %.neg184.i, %0     ; 2 uses
  %i.ad = udiv i64 %spec.select.neg.i, %2
  %.neg.i = sub i64 0, %i.ad
  %i.ae = urem i64 %spec.select.neg.i, %2
  %.neg177.pn.i.a = sub nsw i64 %.neg184.i, %i.ae
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.k, %bb.i, %bb.g, %bb.e
  %.0 = phi i64 [ %i.g, %bb.e ], [ %i.l, %bb.g ], [ %i.q, %bb.i ], [ %i.v, %bb.k ], [ %.neg.i, %bb.p ], [ %i.ab, %bb.o ], [ %0, %bb.n ]
  %.sink185.i = phi i64 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ %.neg177.pn.i.a, %bb.p ], [ %i.ac, %bb.o ], [ 0, %bb.n ]
  %.sink.i = phi i32 [ %i.h, %bb.e ], [ %i.m, %bb.g ], [ %i.r, %bb.i ], [ %i.w, %bb.k ], [ %1, %bb.p ], [ %1, %bb.o ], [ %1, %bb.n ]
  store i64 %.sink185.i, ptr %4, align 4
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sink.i, ptr %.sroa.451.0..sroa_idx.i, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_116IDivDurationImplEbNS0_8DurationES2_PS2_.exit

bb.r:                                             ; preds = %bb.a, %bb.f, %bb.h, %bb.j, %bb.c, %bb.l, %bb.d
  %i.af = tail call fastcc noundef i64 @_ZN4absl12lts_2025051212_GLOBAL__N_112IDivSlowPathEbNS0_8DurationES2_PS2_(i1 noundef zeroext true, i64 %0, i32 %1, i64 %2, i32 %3, ptr noundef %4)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_116IDivDurationImplEbNS0_8DurationES2_PS2_.exit

_ZN4absl12lts_2025051212_GLOBAL__N_116IDivDurationImplEbNS0_8DurationES2_PS2_.exit: ; preds = %bb.q, %bb.r
  %.0.i = phi i64 [ %.0, %bb.q ], [ %i.af, %bb.r ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationpLES1_(ptr noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, i64 %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.222.0.copyload = load i32, ptr %.sroa.222.0..sroa_idx, align 4, !tbaa !3 ; 4 uses
  %i.a = icmp eq i32 %.sroa.222.0.copyload, -1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, -1
  br i1 %i.b, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 4                ; 3 uses
  %i.d = add i64 %i.c, %1                         ; 3 uses
  store i64 %i.d, ptr %0, align 4
  %i.e = zext i32 %.sroa.222.0.copyload to i64
  %i.f = zext i32 %2 to i64
  %i.g = sub nsw i64 4000000000, %i.f
  %.not = icmp sgt i64 %i.g, %i.e
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.h, ptr %0, align 4
  %i.i = add i32 %.sroa.222.0.copyload, 294967296
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %i.h, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.k = phi i32 [ %i.i, %bb.d ], [ %.sroa.222.0.copyload, %bb.c ]
  %i.l = add i32 %i.k, %2
  store i32 %i.l, ptr %.sroa.222.0..sroa_idx, align 4, !tbaa !7
  %i.m = icmp slt i64 %1, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = icmp sgt i64 %i.j, %i.c
  br i1 %i.n, label %.sink.split, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = icmp slt i64 %i.j, %i.c
  br i1 %i.o, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.b
  %.pn.sink = phi i64 [ %1, %bb.b ], [ -9223372036854775808, %bb.f ], [ 9223372036854775807, %bb.g ]
  store i64 %.pn.sink, ptr %0, align 4
  store i32 -1, ptr %.sroa.222.0..sroa_idx, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationmIES1_(ptr noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, i64 %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.240.0.copyload = load i32, ptr %.sroa.240.0..sroa_idx, align 4, !tbaa !3 ; 4 uses
  %i.a = icmp eq i32 %.sroa.240.0.copyload, -1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, -1
  br i1 %i.b, label %_ZN4absl12lts_20250512ngENS0_8DurationE.exit, label %bb.c

_ZN4absl12lts_20250512ngENS0_8DurationE.exit:     ; preds = %bb.b
  %i.c = icmp sgt i64 %1, -1
  %.sroa.031.0 = select i1 %i.c, i64 -9223372036854775808, i64 9223372036854775807
  br label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %0, align 4                ; 3 uses
  %i.e = sub i64 %i.d, %1                         ; 3 uses
  store i64 %i.e, ptr %0, align 4
  %i.f = icmp ult i32 %.sroa.240.0.copyload, %2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.g, ptr %0, align 4
  %i.h = add i32 %.sroa.240.0.copyload, -294967296
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i64 [ %i.g, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = phi i32 [ %i.h, %bb.d ], [ %.sroa.240.0.copyload, %bb.c ]
  %i.k = sub i32 %i.j, %2
  store i32 %i.k, ptr %.sroa.240.0..sroa_idx, align 4, !tbaa !7
  %i.l = icmp slt i64 %1, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = icmp slt i64 %i.i, %i.d
  br i1 %i.m, label %.sink.split, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = icmp sgt i64 %i.i, %i.d
  br i1 %i.n, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.f, %_ZN4absl12lts_20250512ngENS0_8DurationE.exit
  %.pn.sink = phi i64 [ %.sroa.031.0, %_ZN4absl12lts_20250512ngENS0_8DurationE.exit ], [ -9223372036854775808, %bb.g ], [ 9223372036854775807, %bb.f ]
  store i64 %.pn.sink, ptr %0, align 4
  store i32 -1, ptr %.sroa.240.0..sroa_idx, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g, %bb.f, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationmLEl(ptr noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.025.0.copyload = load i64, ptr %0, align 4 ; 7 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.226.0.copyload = load i32, ptr %.sroa.226.0..sroa_idx, align 4, !tbaa !3 ; 3 uses
  %i.a = icmp eq i32 %.sroa.226.0.copyload, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.unshifted = xor i64 %.sroa.025.0.copyload, %1
  %.not = icmp sgt i64 %.not.unshifted, -1
  %spec.select = select i1 %.not, { i64, i32 } { i64 9223372036854775807, i32 -1 }, { i64, i32 } { i64 -9223372036854775808, i32 -1 }
  br label %_ZN4absl12lts_20250512ngENS0_8DurationE.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %.sroa.025.0.copyload, 0
  %i.c = sub i32 -294967296, %.sroa.226.0.copyload
  %.017.i.i = select i1 %i.b, i32 %i.c, i32 %.sroa.226.0.copyload
  %.lobit.i.i = ashr i64 %.sroa.025.0.copyload, 63
  %.0.i.i = xor i64 %.lobit.i.i, %.sroa.025.0.copyload
  %i.d = zext i64 %.0.i.i to i128
  %i.e = mul nuw nsw i128 %i.d, 4000000000
  %i.f = zext i32 %.017.i.i to i128
  %i.g = add nuw nsw i128 %i.e, %i.f              ; 4 uses
  %i.h = trunc i128 %i.g to i64                   ; 2 uses
  %.lobit.i32.i = lshr i64 %1, 63
  %.lobit11.i.i = ashr i64 %1, 63
  %spec.select10.i.i = xor i64 %.lobit11.i.i, %1
  %i.i = add i64 %spec.select10.i.i, %.lobit.i32.i ; 5 uses
  %i.j = icmp samesign ult i128 %i.g, 18446744073709551616
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = or i64 %i.i, %i.h
  %i.l = icmp ult i64 %i.k, 4294967296
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = mul nuw i64 %i.i, %i.h
  br label %_ZNK4absl12lts_2025051212_GLOBAL__N_112SafeMultiplyINS0_7uint128EEclES3_S3_.exit.thread.i

bb.f:                                             ; preds = %bb.d
  %i.n = zext i64 %i.i to i128
  br label %_ZNK4absl12lts_2025051212_GLOBAL__N_112SafeMultiplyINS0_7uint128EEclES3_S3_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_ZNK4absl12lts_2025051212_GLOBAL__N_112SafeMultiplyINS0_7uint128EEclES3_S3_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = zext i64 %i.i to i128                    ; 2 uses
  %mul.i.i = tail call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %i.p, i128 %i.g)
  %mul.ov.i.i = extractvalue { i128, i1 } %mul.i.i, 1
  br i1 %mul.ov.i.i, label %.thread.i, label %_ZNK4absl12lts_2025051212_GLOBAL__N_112SafeMultiplyINS0_7uint128EEclES3_S3_.exit.i

.thread.i:                                        ; preds = %bb.h
  %.unshifted51.i = xor i64 %.sroa.025.0.copyload, %1
  %i.q = icmp slt i64 %.unshifted51.i, 0
  br label %bb.k

_ZNK4absl12lts_2025051212_GLOBAL__N_112SafeMultiplyINS0_7uint128EEclES3_S3_.exit.thread.i: ; preds = %bb.g, %bb.e
  %.sroa.01.0.i.ph.i = phi i64 [ 0, %bb.g ], [ %i.m, %bb.e ] ; 2 uses
  %.unshifted43.i = xor i64 %.sroa.025.0.copyload, %1
  %i.r = icmp slt i64 %.unshifted43.i, 0
  %i.s = udiv i64 %.sroa.01.0.i.ph.i, 4000000000  ; 3 uses
  %.neg.pn.i5863.i = mul nuw nsw i64 %i.s, 294967296
  %.180.in.i5964.i = add i64 %.neg.pn.i5863.i, %.sroa.01.0.i.ph.i
  %.180.i6065.i = trunc i64 %.180.in.i5964.i to i32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505128DurationdVEl:bb.a
  %or.cond3.i.not.i = or i1 %i.n, %.not34.i
  %spec.select.i.i37 = select i1 %i.n, i64 9223372036854775807, i64 -9223372036854775808
  %spec.select96.i.i = sext i1 %or.cond3.i.not.i to i32
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_110ScaleFixedISt7dividesEENS0_8DurationES4_l.exit

bb.g:                                             ; preds = %bb.e
  %i.u = udiv i128 %i.k, 4000000000
  %i.v = trunc nuw nsw i128 %i.u to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.neg.pn.in.i.i = phi i64 [ %i.p, %bb.d ], [ %i.v, %bb.g ] ; 4 uses
  %.neg.pn.i.i = mul i64 %.neg.pn.in.i.i, 294967296
  %.180.in.i.i = add i64 %.neg.pn.i.i, %i.l
  %.180.i.i = trunc i64 %.180.in.i.i to i32       ; 3 uses
  br i1 %i.n, label %_ZN4absl12lts_2025051212_GLOBAL__N_110ScaleFixedISt7dividesEENS0_8DurationES4_l.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = sub nsw i64 0, %.neg.pn.in.i.i
  %.not.i.i = icmp eq i32 %.180.i.i, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_110ScaleFixedISt7dividesEENS0_8DurationES4_l.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = xor i64 %.neg.pn.in.i.i, -1
  %i.y = sub i32 -294967296, %.180.i.i
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_110ScaleFixedISt7dividesEENS0_8DurationES4_l.exit

_ZN4absl12lts_2025051212_GLOBAL__N_110ScaleFixedISt7dividesEENS0_8DurationES4_l.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  %.sroa.077.2.i.i = phi i64 [ %.neg.pn.in.i.i, %bb.h ], [ %spec.select.i.i37, %bb.f ], [ %i.x, %bb.j ], [ %i.w, %bb.i ]
  %.sroa.578.2.i.i = phi i32 [ %.180.i.i, %bb.h ], [ %spec.select96.i.i, %bb.f ], [ %i.y, %bb.j ], [ 0, %bb.i ]
  %.fca.0.insert.i27.i = insertvalue { i64, i32 } poison, i64 %.sroa.077.2.i.i, 0
  %.fca.1.insert.i28.i = insertvalue { i64, i32 } %.fca.0.insert.i27.i, i32 %.sroa.578.2.i.i, 1
  br label %_ZN4absl12lts_20250512ngENS0_8DurationE.exit

_ZN4absl12lts_20250512ngENS0_8DurationE.exit:     ; preds = %bb.b, %_ZN4absl12lts_2025051212_GLOBAL__N_110ScaleFixedISt7dividesEENS0_8DurationES4_l.exit
  %.pn34 = phi { i64, i32 } [ %.fca.1.insert.i28.i, %_ZN4absl12lts_2025051212_GLOBAL__N_110ScaleFixedISt7dividesEENS0_8DurationES4_l.exit ], [ %spec.select, %bb.b ] ; 2 uses
  %storemerge = extractvalue { i64, i32 } %.pn34, 1
  %storemerge32 = extractvalue { i64, i32 } %.pn34, 0
  store i64 %storemerge32, ptr %0, align 4
  store i32 %storemerge, ptr %.sroa.227.0..sroa_idx, align 4, !tbaa !3
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationdVEd(ptr noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, double noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.226.0.copyload = load i32, ptr %.sroa.226.0..sroa_idx, align 4, !tbaa !3 ; 2 uses
  %i.a = icmp ne i32 %.sroa.226.0.copyload, -1
  %.0.i = fcmp one double %1, 0.000000e+00
  %or.cond = and i1 %.0.i, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = bitcast double %1 to i64
  %i.c = load i64, ptr %0, align 4
  %i.d = xor i64 %i.c, %i.b
  %.not32 = icmp sgt i64 %i.d, -1
  %spec.select = select i1 %.not32, { i64, i32 } { i64 9223372036854775807, i32 -1 }, { i64, i32 } { i64 -9223372036854775808, i32 -1 }
  br label %_ZN4absl12lts_20250512ngENS0_8DurationE.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %0, align 4
  %i.e = sitofp i64 %.sroa.03.0.copyload to double
  %i.f = fdiv double %i.e, %1
  %i.g = uitofp i32 %.sroa.226.0.copyload to double
  %i.h = fdiv double %i.g, %1
  %i.i = tail call { double, double } @llvm.modf.f64(double %i.f) ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0
  %i.k = extractvalue { double, double } %i.i, 1
  %i.l = fdiv double %i.h, 4.000000e+09
  %i.m = fadd double %i.l, %i.j
  %i.n = tail call { double, double } @llvm.modf.f64(double %i.m) ; 2 uses
  %i.o = extractvalue { double, double } %i.n, 0
  %i.p = extractvalue { double, double } %i.n, 1
  %i.q = fmul double %i.o, 4.000000e+09
  %i.r = tail call double @llvm.round.f64(double %i.q)
  %i.s = fptosi double %i.r to i64                ; 2 uses
  %i.t = fadd double %i.k, %i.p                   ; 3 uses
  %i.u = fcmp ult double %i.t, f0x43E0000000000000
  br i1 %i.u, label %bb.d, label %_ZN4absl12lts_2025051212_GLOBAL__N_111ScaleDoubleISt7dividesEENS0_8DurationES4_d.exit

bb.d:                                             ; preds = %bb.c
  %i.v = fcmp ugt double %i.t, f0xC3E0000000000000
  br i1 %i.v, label %bb.e, label %_ZN4absl12lts_2025051212_GLOBAL__N_111ScaleDoubleISt7dividesEENS0_8DurationES4_d.exit

bb.e:                                             ; preds = %bb.d
  %i.w = fptosi double %i.t to i64
  %i.x = sitofp i64 %i.w to double
  %i.y = sdiv i64 %i.s, 4000000000
  %i.z = srem i64 %i.s, 4000000000                ; 4 uses
  %i.aa = sitofp i64 %i.y to double
  %i.ab = fadd double %i.x, %i.aa                 ; 3 uses
  %i.ac = fcmp ult double %i.ab, f0x43E0000000000000
  br i1 %i.ac, label %bb.f, label %_ZN4absl12lts_2025051212_GLOBAL__N_111ScaleDoubleISt7dividesEENS0_8DurationES4_d.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = fcmp ugt double %i.ab, f0xC3E0000000000000
  br i1 %i.ad, label %_ZN4absl12lts_2025051212_GLOBAL__N_114NormalizeTicksEPlS2_.exit.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_111ScaleDoubleISt7dividesEENS0_8DurationES4_d.exit

_ZN4absl12lts_2025051212_GLOBAL__N_114NormalizeTicksEPlS2_.exit.i: ; preds = %bb.f
  %i.ae = fptosi double %i.ab to i64
  %i.af = icmp slt i64 %i.z, 0
  %i.ag = add nsw i64 %i.z, 4000000000
  %.056.i = select i1 %i.af, i64 %i.ag, i64 %i.z
  %.lobit.i = ashr i64 %i.z, 63
  %.0.i36 = add nsw i64 %.lobit.i, %i.ae
  %i.ah = trunc nuw i64 %.056.i to i32
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_111ScaleDoubleISt7dividesEENS0_8DurationES4_d.exit

_ZN4absl12lts_2025051212_GLOBAL__N_111ScaleDoubleISt7dividesEENS0_8DurationES4_d.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %_ZN4absl12lts_2025051212_GLOBAL__N_114NormalizeTicksEPlS2_.exit.i
  %.sroa.031.1.i = phi i64 [ 9223372036854775807, %bb.c ], [ -9223372036854775808, %bb.d ], [ %.0.i36, %_ZN4absl12lts_2025051212_GLOBAL__N_114NormalizeTicksEPlS2_.exit.i ], [ -9223372036854775808, %bb.f ], [ 9223372036854775807, %bb.e ]
  %.sroa.4.1.i = phi i32 [ -1, %bb.c ], [ -1, %bb.d ], [ %i.ah, %_ZN4absl12lts_2025051212_GLOBAL__N_114NormalizeTicksEPlS2_.exit.i ], [ -1, %bb.f ], [ -1, %bb.e ]
  %.fca.0.insert.i = insertvalue { i64, i32 } poison, i64 %.sroa.031.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, i32 } %.fca.0.insert.i, i32 %.sroa.4.1.i, 1
  br label %_ZN4absl12lts_20250512ngENS0_8DurationE.exit

_ZN4absl12lts_20250512ngENS0_8DurationE.exit:     ; preds = %bb.b, %_ZN4absl12lts_2025051212_GLOBAL__N_111ScaleDoubleISt7dividesEENS0_8DurationES4_d.exit
  %.pn33 = phi { i64, i32 } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051212_GLOBAL__N_111ScaleDoubleISt7dividesEENS0_8DurationES4_d.exit ], [ %spec.select, %bb.b ] ; 2 uses
  %storemerge = extractvalue { i64, i32 } %.pn33, 1
  %storemerge31 = extractvalue { i64, i32 } %.pn33, 0
  store i64 %storemerge31, ptr %0, align 4
  store i32 %storemerge, ptr %.sroa.226.0..sroa_idx, align 4, !tbaa !3
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationrMES1_(ptr noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(12) %0, i64 %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.05.0.copyload = load i64, ptr %0, align 4 ; 8 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i32, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !3 ; 10 uses
  %i.a = icmp eq i32 %.sroa.26.0.copyload, -1
  %i.b = icmp eq i32 %2, -1
  %or.cond178.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond178.i, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  switch i32 %2, label %bb.r [
    i32 4, label %bb.d
    i32 400, label %bb.f
    i32 4000, label %bb.h
    i32 4000000, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %or.cond.i = icmp ult i64 %.sroa.05.0.copyload, 9223372032
  br i1 %or.cond.i, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.d = and i32 %.sroa.26.0.copyload, 3
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %or.cond3.i = icmp ult i64 %.sroa.05.0.copyload, 922337203285
  br i1 %or.cond3.i, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.e = urem i32 %.sroa.26.0.copyload, 400
  br label %bb.q

bb.h:                                             ; preds = %bb.c
  %or.cond5.i = icmp ult i64 %.sroa.05.0.copyload, 9223372032854
  br i1 %or.cond5.i, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.f = urem i32 %.sroa.26.0.copyload, 4000
  br label %bb.q

bb.j:                                             ; preds = %bb.c
  %or.cond7.i = icmp ult i64 %.sroa.05.0.copyload, 9223372032854775
  br i1 %or.cond7.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.g = urem i32 %.sroa.26.0.copyload, 4000000
  br label %bb.q

bb.l:                                             ; preds = %bb.b
  %i.h = icmp sgt i64 %1, 0
  %i.i = icmp eq i32 %2, 0
  %or.cond9.i = and i1 %i.h, %i.i
  br i1 %or.cond9.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.j = icmp sgt i64 %.sroa.05.0.copyload, -1
  br i1 %i.j, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.l = urem i64 %.sroa.05.0.copyload, %1
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %.not.i = icmp ne i32 %.sroa.26.0.copyload, 0
  %.neg184.i = sext i1 %.not.i to i64             ; 2 uses
  %spec.select.neg.i = sub i64 %.neg184.i, %.sroa.05.0.copyload
  %i.m = urem i64 %spec.select.neg.i, %1
  %.neg177.pn.i.a = sub nsw i64 %.neg184.i, %i.m
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.k, %bb.i, %bb.g, %bb.e
  %.sink185.i = phi i64 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ %.neg177.pn.i.a, %bb.p ], [ %i.l, %bb.o ], [ 0, %bb.n ]
  %.sink.i = phi i32 [ %i.d, %bb.e ], [ %i.e, %bb.g ], [ %i.f, %bb.i ], [ %i.g, %bb.k ], [ %.sroa.26.0.copyload, %bb.p ], [ %.sroa.26.0.copyload, %bb.o ], [ %.sroa.26.0.copyload, %bb.n ]
  store i64 %.sink185.i, ptr %0, align 4
  store i32 %.sink.i, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !3
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_116IDivDurationImplEbNS0_8DurationES2_PS2_.exit

bb.r:                                             ; preds = %bb.a, %bb.f, %bb.h, %bb.j, %bb.c, %bb.l, %bb.d
  %i.n = tail call fastcc noundef i64 @_ZN4absl12lts_2025051212_GLOBAL__N_112IDivSlowPathEbNS0_8DurationES2_PS2_(i1 noundef zeroext false, i64 %.sroa.05.0.copyload, i32 %.sroa.26.0.copyload, i64 %1, i32 %2, ptr noundef nonnull %0) ; 0 uses
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_116IDivDurationImplEbNS0_8DurationES2_PS2_.exit

_ZN4absl12lts_2025051212_GLOBAL__N_116IDivDurationImplEbNS0_8DurationES2_PS2_.exit: ; preds = %bb.q, %bb.r
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef double @_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_(i64 %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  %i.c = icmp eq i32 %3, 0
  %spec.select.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %spec.select.i, label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit, label %bb.c

_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit:  ; preds = %bb.b, %bb.a
  %i.d = xor i64 %2, %0
  %i.e = icmp slt i64 %i.d, 0
  %i.f = select i1 %i.e, double -inf, double +inf
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %3, -1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sitofp i64 %0 to double
  %i.i = uitofp i32 %1 to double
  %i.j = tail call double @llvm.fmuladd.f64(double %i.h, double 4.000000e+09, double %i.i)
  %i.k = sitofp i64 %2 to double
  %i.l = uitofp i32 %3 to double
  %i.m = tail call double @llvm.fmuladd.f64(double %i.k, double 4.000000e+09, double %i.l)
  %i.n = fdiv double %i.j, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit
  %.0 = phi double [ %i.f, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit ], [ %i.n, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i32 } @_ZN4absl12lts_202505125TruncENS0_8DurationES1_(i64 %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %0, ptr %4, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.a = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationrMES1_(ptr noundef nonnull align 4 dereferenceable(12) %4, i64 %2, i32 %3) #15 ; 0 uses
  %.sroa.011.0.copyload.i = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.210.0..sroa_idx.i, align 8, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.b = icmp eq i32 %1, -1
  br i1 %i.b, label %_ZN4absl12lts_20250512miENS0_8DurationES1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %.sroa.212.0.copyload.i, -1
  br i1 %i.c, label %_ZN4absl12lts_20250512ngENS0_8DurationE.exit.i.i, label %bb.c

_ZN4absl12lts_20250512ngENS0_8DurationE.exit.i.i: ; preds = %bb.b
  %i.d = icmp sgt i64 %.sroa.011.0.copyload.i, -1
  %.sroa.031.0.i.i = select i1 %i.d, i64 -9223372036854775808, i64 9223372036854775807
  br label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %0, %.sroa.011.0.copyload.i
  %i.f = icmp ult i32 %1, %.sroa.212.0.copyload.i ; 2 uses
  %i.g = add i32 %1, -294967296
  %i.h = sext i1 %i.f to i64
  %.sroa.0.0.i = add i64 %i.e, %i.h               ; 4 uses
  %i.i = select i1 %i.f, i32 %i.g, i32 %1
  %i.j = sub i32 %i.i, %.sroa.212.0.copyload.i    ; 2 uses
  %i.k = icmp slt i64 %.sroa.011.0.copyload.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %.sroa.0.0.i, %0
  br i1 %i.l, label %.sink.split.i.i, label %_ZN4absl12lts_20250512miENS0_8DurationES1_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %.sroa.0.0.i, %0
  br i1 %i.m, label %.sink.split.i.i, label %_ZN4absl12lts_20250512miENS0_8DurationES1_.exit

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d, %_ZN4absl12lts_20250512ngENS0_8DurationE.exit.i.i
  %.pn.sink.i.i = phi i64 [ %.sroa.031.0.i.i, %_ZN4absl12lts_20250512ngENS0_8DurationE.exit.i.i ], [ -9223372036854775808, %bb.e ], [ 9223372036854775807, %bb.d ]
  br label %_ZN4absl12lts_20250512miENS0_8DurationES1_.exit

_ZN4absl12lts_20250512miENS0_8DurationES1_.exit:  ; preds = %bb.a, %bb.d, %bb.e, %.sink.split.i.i
  %.sroa.6.0.i = phi i32 [ -1, %bb.a ], [ -1, %.sink.split.i.i ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  %.sroa.0.1.i = phi i64 [ %0, %bb.a ], [ %.pn.sink.i.i, %.sink.split.i.i ], [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i, %bb.e ]
  %.fca.0.insert.i34 = insertvalue { i64, i32 } poison, i64 %.sroa.0.1.i, 0
  %.fca.1.insert.i35 = insertvalue { i64, i32 } %.fca.0.insert.i34, i32 %.sroa.6.0.i, 1
  ret { i64, i32 } %.fca.1.insert.i35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i32 } @_ZN4absl12lts_202505125FloorENS0_8DurationES1_(i64 %0, i32 %1, i64 %2, i32 %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %0, ptr %4, align 8
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %.sroa.210.0..sroa_idx.i.i, align 8
  %i.a = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationrMES1_(ptr noundef nonnull align 4 dereferenceable(12) %4, i64 %2, i32 %3) #15 ; 0 uses
  %.sroa.011.0.copyload.i.i = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.212.0.copyload.i.i = load i32, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.b = icmp eq i32 %1, -1
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %.sroa.212.0.copyload.i.i, -1
  br i1 %i.c, label %_ZN4absl12lts_20250512ngENS0_8DurationE.exit.i.i.i, label %bb.c

_ZN4absl12lts_20250512ngENS0_8DurationE.exit.i.i.i: ; preds = %bb.b
  %i.d = icmp sgt i64 %.sroa.011.0.copyload.i.i, -1
  %.sroa.031.0.i.i.i = select i1 %i.d, i64 -9223372036854775808, i64 9223372036854775807
  br label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = sub i64 %0, %.sroa.011.0.copyload.i.i
  %i.f = icmp ult i32 %1, %.sroa.212.0.copyload.i.i ; 2 uses
  %i.g = add i32 %1, -294967296
  %i.h = sext i1 %i.f to i64
  %.sroa.0.0.i.i = add i64 %i.e, %i.h             ; 4 uses
  %i.i = select i1 %i.f, i32 %i.g, i32 %1
  %i.j = sub i32 %i.i, %.sroa.212.0.copyload.i.i  ; 2 uses
  %i.k = icmp slt i64 %.sroa.011.0.copyload.i.i, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %.sroa.0.0.i.i, %0
  br i1 %i.l, label %.sink.split.i.i.i, label %_ZN4absl12lts_202505125TruncENS0_8DurationES1_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %.sroa.0.0.i.i, %0
  br i1 %i.m, label %.sink.split.i.i.i, label %_ZN4absl12lts_202505125TruncENS0_8DurationES1_.exit

.sink.split.i.i.i:                                ; preds = %bb.e, %bb.d, %_ZN4absl12lts_20250512ngENS0_8DurationE.exit.i.i.i
  %.pn.sink.i.i.i = phi i64 [ %.sroa.031.0.i.i.i, %_ZN4absl12lts_20250512ngENS0_8DurationE.exit.i.i.i ], [ -9223372036854775808, %bb.e ], [ 9223372036854775807, %bb.d ]
  br label %_ZN4absl12lts_202505125TruncENS0_8DurationES1_.exit

_ZN4absl12lts_202505125TruncENS0_8DurationES1_.exit: ; preds = %bb.d, %bb.e, %.sink.split.i.i.i
  %.sroa.6.0.i.i = phi i32 [ %i.j, %bb.e ], [ -1, %.sink.split.i.i.i ], [ %i.j, %bb.d ] ; 5 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.e ], [ %.pn.sink.i.i.i, %.sink.split.i.i.i ], [ %.sroa.0.0.i.i, %bb.d ] ; 4 uses
  %.fca.0.insert.i34.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.1.i.i, 0
  %.fca.1.insert.i35.i = insertvalue { i64, i32 } %.fca.0.insert.i34.i, i32 %.sroa.6.0.i.i, 1 ; 3 uses
  %.not.i.i = icmp eq i64 %0, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_202505125TruncENS0_8DurationES1_.exit
  %i.n = icmp slt i64 %0, %.sroa.0.1.i.i
  br i1 %i.n, label %bb.i, label %.thread75

bb.g:                                             ; preds = %_ZN4absl12lts_202505125TruncENS0_8DurationES1_.exit
  %i.o = icmp eq i64 %0, -9223372036854775808
  br i1 %i.o, label %_ZN4absl12lts_20250512leENS0_8DurationES1_.exit, label %bb.h

.thread:                                          ; preds = %bb.a
  %.fca.0.insert.i34.i56 = insertvalue { i64, i32 } poison, i64 %0, 0
  %.fca.1.insert.i35.i57 = insertvalue { i64, i32 } %.fca.0.insert.i34.i56, i32 -1, 1 ; 2 uses
  %i.p = icmp eq i64 %0, -9223372036854775808
  br i1 %i.p, label %_ZN4absl12lts_20250512leENS0_8DurationES1_.exit, label %.thread75

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ult i32 %1, %.sroa.6.0.i.i
  br i1 %i.q, label %bb.i, label %.thread75

_ZN4absl12lts_20250512leENS0_8DurationES1_.exit:  ; preds = %.thread, %bb.g
  %.sroa.6.0.i.i6073 = phi i32 [ -1, %.thread ], [ %.sroa.6.0.i.i, %bb.g ] ; 2 uses
  %.fca.1.insert.i35.i6472 = phi { i64, i32 } [ %.fca.1.insert.i35.i57, %.thread ], [ %.fca.1.insert.i35.i, %bb.g ]
  %i.r = add i32 %1, 1
  %i.s = add i32 %.sroa.6.0.i.i6073, 1
  %i.t = icmp ult i32 %i.r, %i.s
  br i1 %i.t, label %bb.i, label %.thread75

bb.i:                                             ; preds = %bb.h, %bb.f, %_ZN4absl12lts_20250512leENS0_8DurationES1_.exit
  %.sroa.6.0.i.i5968 = phi i32 [ %.sroa.6.0.i.i, %bb.f ], [ %.sroa.6.0.i.i6073, %_ZN4absl12lts_20250512leENS0_8DurationES1_.exit ], [ %.sroa.6.0.i.i, %bb.h ] ; 4 uses
  %.sroa.0.1.i.i6167 = phi i64 [ %.sroa.0.1.i.i, %bb.f ], [ -9223372036854775808, %_ZN4absl12lts_20250512leENS0_8DurationES1_.exit ], [ %0, %bb.h ] ; 3 uses
  %i.u = icmp slt i64 %2, 0
  br i1 %i.u, label %bb.j, label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread.i

bb.j:                                             ; preds = %bb.i
  switch i32 %3, label %bb.m [
    i32 0, label %bb.k
    i32 -1, label %_ZN4absl12lts_2025051211AbsDurationENS0_8DurationE.exit
  ]
end_hunk_1
