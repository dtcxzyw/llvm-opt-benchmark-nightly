Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.171?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [39 x i8] c"Unable to parse UUID: expected 16 bytes", align 1
@1 = private unnamed_addr constant [33 x i8] c"expected FacetHit to have a value", align 1
@2 = private unnamed_addr constant [43 x i8] c"expected FacetValueInternal to have a value", align 1

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshMzyYDJGtjv_3api.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #5
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshMzyYDJGtjv_3api.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2s_NtNtCshMzyYDJGtjv_3api4grpc11conversionsINtNtNtCs607s0NAIaWN_7segment10data_types6facets8FacetHitNtBN_10FacetValueEINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant16FacetHitInternalE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq i8 %.sroa.0.0.copyload, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.sroa.5.0.copyload = load ptr, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.65.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.0..sroa_idx6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, i64 7, i1 false)
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, i64 16, i1 false)
  store i8 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.6.sroa.5.0.copyload, ptr %.sroa.67.0..sroa_idx8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs2v_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant18FacetValueInternalE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
  %i.e = load i64, ptr %i.a, align 16, !range !5, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECshMzyYDJGtjv_3api(i8 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 33)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 -1, ptr %0, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.k, align 8
  store i64 -1, ptr %0, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.020.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.020.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.537.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 16
  %.sroa.020.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.020.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2v_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant18FacetValueInternalE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload = load i8, ptr %1, align 8  ; 2 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.sroa.5.0.copyload = load ptr, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.not = icmp eq i8 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.16.copyload = load i64, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.8.16..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %i.d = ptrtoint ptr %.sroa.6.sroa.5.0.copyload to i64 ; 3 uses
  switch i8 %.sroa.0.0.copyload, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECshMzyYDJGtjv_3api(i8 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 -1, ptr %0, align 16
  br label %bb.p

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.824.sroa.0.0.extract.trunc = trunc i64 %.sroa.6.16.copyload to i8
  %.sroa.824.sroa.7.0.extract.shift = and i64 %.sroa.6.16.copyload, -256
  %.sroa.10.0.insert.ext = zext i64 %.sroa.8.16.copyload to i128
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %.sroa.824.sroa.0.0.extract.trunc29 = trunc i64 %i.d to i8
  %.sroa.824.sroa.7.0.extract.shift30 = and i64 %i.d, -256
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.6.sroa.5.0.copyload, ptr %i.c, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.16.copyload, ptr %.sroa.6.8..sroa_idx, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.16.copyload, ptr %.sroa.8.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsF_NtCsexYYUdYSQU6_5alloc3vecAhj10_INtNtCskKLDkoKarTP_4core7convert7TryFromINtB5_3VechEE8try_fromCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  %i.g = load i64, ptr %i.b, align 8, !range !8, !noundef !4
  %.not64 = icmp eq i64 %i.g, -1
  br i1 %.not64, label %bb.o, label %bb.i

bb.g:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.2.1.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %bb.g, %bb.e, %bb.d
  %.sroa.824.sroa.7.sroa.0.0 = phi i64 [ %.sroa.824.sroa.7.0.extract.shift, %bb.d ], [ %.sroa.824.sroa.7.0.extract.shift30, %bb.e ], [ 0, %bb.o ], [ 0, %bb.g ]
  %.sroa.824.sroa.0.0 = phi i8 [ %.sroa.824.sroa.0.0.extract.trunc, %bb.d ], [ %.sroa.824.sroa.0.0.extract.trunc29, %bb.e ], [ undef, %bb.o ], [ %.sroa.2.1.copyload, %bb.g ]
  %.sroa.10.0 = phi i128 [ %.sroa.10.0.insert.ext, %bb.d ], [ undef, %bb.e ], [ %i.p, %bb.o ], [ undef, %bb.g ]
  %.sroa.022.0 = phi i64 [ %i.d, %bb.d ], [ -9223372036854775808, %bb.e ], [ -9223372036854775807, %bb.o ], [ -9223372036854775806, %bb.g ]
  store i64 %.sroa.022.0, ptr %0, align 16
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.824.sroa.0.0.insert.ext = zext i8 %.sroa.824.sroa.0.0 to i64
  %.sroa.824.sroa.0.0.insert.insert = or disjoint i64 %.sroa.824.sroa.7.sroa.0.0, %.sroa.824.sroa.0.0.insert.ext
  store i64 %.sroa.824.sroa.0.0.insert.insert, ptr %.sroa.824.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 16
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.h = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECshMzyYDJGtjv_3api(i8 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 39)
          to label %bb.k unwind label %bb.j, !noalias !9

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #6
          to label %.body unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshMzyYDJGtjv_3api.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #5
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshMzyYDJGtjv_3api.exit.i: ; preds = %bb.k
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.l, align 8
  store i64 -1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #5
  unreachable

bb.o:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.055.sroa.0.0.copyload = load i56, ptr %i.n, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %.sroa.456.0.copyload = load ptr, ptr %.sroa.456.0..sroa_idx, align 1
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %.sroa.557.0.copyload = load i8, ptr %.sroa.557.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = ptrtoint ptr %.sroa.456.0.copyload to i64
  %.sroa.3.0.insert.ext = zext i8 %.sroa.557.0.copyload to i128
  %.sroa.3.0.insert.shift = shl nuw i128 %.sroa.3.0.insert.ext, 120
  %.sroa.2.0.insert.ext = zext i64 %i.o to i128
  %.sroa.2.0.insert.shift = shl nuw nsw i128 %.sroa.2.0.insert.ext, 56
  %.sroa.2.0.insert.insert = or disjoint i128 %.sroa.3.0.insert.shift, %.sroa.2.0.insert.shift
  %.sroa.047.0.insert.ext = zext i56 %.sroa.055.sroa.0.0.copyload to i128
  %.sroa.047.0.insert.insert = or disjoint i128 %.sroa.2.0.insert.insert, %.sroa.047.0.insert.ext
  %i.p = call i128 @llvm.bswap.i128(i128 %.sroa.047.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.p:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshMzyYDJGtjv_3api.exit.i, %bb.h
  ret void

.body:                                            ; preds = %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.j, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newReECshMzyYDJGtjv_3api(i8 noundef range(i8 0, 17), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsF_NtCsexYYUdYSQU6_5alloc3vecAhj10_INtNtCskKLDkoKarTP_4core7convert7TryFromINtB5_3VechEE8try_fromCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #4

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noreturn nounwind }
attributes #6 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 -1, i64 -9223372036854775805}
!6 = distinct !{!6, i1 false, !"_RNCNvXs2v_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant18FacetValueInternalE8try_froms_0Bc_"}
!7 = distinct !{!7, !6, !"_RNCNvXs2v_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types6facets10FacetValueINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant18FacetValueInternalE8try_froms_0Bc_: argument 0"}
!8 = !{i64 -1, i64 -9223372036854775808}
!9 = !{!7}
end_hunk_0
