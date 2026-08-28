Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/terminfo-4748d1c9807c1553.terminfo.ef1810c3b51b3d28-cgu.01?download=true
inline.NumInlined: 71
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2 = private unnamed_addr constant [107 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/terminfo-0.9.0/src/parser/compiled.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00x\00\00\00\0B\00\00\00" }>, align 8
@4 = private unnamed_addr constant [62 x i8] c"internal error: entered unreachable code: unknown magic number", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"j\00\00\00\00\00\00\00|\00\00\00\0E\00\00\00" }>, align 8
@6 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/nom-7.1.3/src/traits.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"\\\00\00\00\00\00\00\00t\01\00\00!\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecbEECskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecbEECskwGTd9yTe3I_8terminfo.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecbEECskwGTd9yTe3I_8terminfo.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeclEECskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVeclEECskwGTd9yTe3I_8terminfo.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVeclEECskwGTd9yTe3I_8terminfo.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5Q5FLCJ3YzS_3nom10combinator10map_parserRShBM_BM_INtNtB6_5error5ErrorBM_ENCINvNtNtB6_5bytes9streaming4takejBM_BV_E0NCINvB1o_10take_untilReBM_BV_E0E0CskwGTd9yTe3I_8terminfo(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.521.sroa.0 = alloca [16 x i8], align 8   ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXsa_NtCs5Q5FLCJ3YzS_3nom8internalNCINvNtNtB7_5bytes9streaming4takejRShINtNtB7_5error5ErrorB16_EE0INtB5_6ParserB16_B16_B19_E5parseCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.d = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.048.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.449.0.copyload = load i64, ptr %.sroa.449.0..sroa_idx, align 8 ; 2 uses
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.550.0.copyload = load ptr, ptr %.sroa.550.0..sroa_idx, align 8 ; 2 uses
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.651.0.copyload = load i64, ptr %.sroa.651.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.048.0.copyload, ptr %i.g, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.449.0.copyload, ptr %.sroa.453.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.550.0.copyload, ptr %.sroa.554.0..sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.651.0.copyload, ptr %.sroa.655.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.521.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsa_NtCs5Q5FLCJ3YzS_3nom8internalNCINvNtNtB7_5bytes9streaming10take_untilReRShINtNtB7_5error5ErrorB1e_EE0INtB5_6ParserB1e_B1e_B1h_E5parseCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.550.0.copyload, i64 noundef %.sroa.651.0.copyload)
  %i.h = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.463.0.copyload = load ptr, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.sroa.0, i64 16, i1 false)
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.463.0.copyload, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.564.0.copyload, ptr %.sroa.567.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.sroa.0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.457.0.copyload = load ptr, ptr %.sroa.457.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.sroa.0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.048.0.copyload, ptr %i.l, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.449.0.copyload, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.457.0.copyload, ptr %.sroa.538.0..sroa_idx, align 8
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.558.0.copyload, ptr %.sroa.639.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5Q5FLCJ3YzS_3nom10combinator3optRShNtNtNtCskwGTd9yTe3I_8terminfo6parser8compiled8ExtendedINtNtB6_5error5ErrorBE_ENCINvB4_8completeBE_BH_B1z_NCNvBJ_5parses0_0E0E0BN_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) initializes((16, 24)) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXsa_NtCs5Q5FLCJ3YzS_3nom8internalNCINvNtB7_10combinator8completeRShNtNtNtCskwGTd9yTe3I_8terminfo6parser8compiled8ExtendedINtNtB7_5error5ErrorB13_ENCNvB18_5parses0_0E0INtB5_6ParserB13_B16_B1Y_E5parseB1c_(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !5, !noundef !4
  %i.d = icmp eq i64 %i.c, -1
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !6, !noundef !4
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.54.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  store ptr %i.h, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store ptr %2, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.43.0..sroa_idx, align 8
  store i64 -1, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i64 -2, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5Q5FLCJ3YzS_3nom5multi5countRShbINtNtB6_5error5ErrorBA_ENvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled7booleanE0B18_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i64 %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.0.0.i = tail call noundef range(i64 0, 65537) i64 @llvm.umin.i64(i64 %.0.val, i64 range(i64 0, 65537) 65536) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !7, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %.not = icmp eq i64 %.0.val, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.g

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %.sroa.01.0.lcssa = phi ptr [ %1, %bb.c ], [ %i.w, %bb.l ]
  %.sroa.6.0.lcssa = phi i64 [ %2, %bb.c ], [ %i.x, %bb.l ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.lcssa, ptr %i.s, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa, ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecbEECskwGTd9yTe3I_8terminfo.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.e:                                             ; preds = %bb.o, %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.o ], [ %i.ac, %bb.k ], [ %i.t, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecbEECskwGTd9yTe3I_8terminfo(ptr noalias noundef align 8 dereferenceable(24) %i.e) #15
          to label %common.resume unwind label %bb.t

bb.f:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.010.012 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.l ]
  %.sroa.6.011 = phi i64 [ %2, %.lr.ph ], [ %i.x, %bb.l ]
  %.sroa.01.010 = phi ptr [ %1, %.lr.ph ], [ %i.w, %bb.l ]
  %i.u = add nuw i64 %.sroa.010.012, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9
  store i16 256, ptr %i.a, align 2, !noalias !9
  invoke void @_RNvXs_NtCs5Q5FLCJ3YzS_3nom6branchTNCINvNtB6_10combinator3mapRShBW_bINtNtB6_5error5ErrorBW_ENCINvNtNtB6_5bytes9streaming3tagAhj1_BW_B13_E0NCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled7boolean0E0NCIBz_BW_BW_bB13_B1r_NCB2d_s_0E0EINtB4_3AltBW_bB13_E6choiceB2j_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull dereferenceable(2) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.010, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.011)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9
  %i.v = load i64, ptr %i.d, align 8, !range !19, !noundef !4
  switch i64 %i.v, label %bb.n [
    i64 -1, label %bb.i
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.y = load i8, ptr %i.r, align 8, !range !20, !noundef !4
  %i.z = load i64, ptr %i.o, align 8, !alias.scope !21, !noundef !4 ; 3 uses
  %i.aa = load i64, ptr %i.e, align 8, !range !24, !alias.scope !21, !noundef !4
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbE8grow_oneCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.ad = load ptr, ptr %i.n, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.z
  store i8 %i.y, ptr %i.ae, align 1
  %i.af = add i64 %i.z, 1
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !21
  %exitcond.not = icmp eq i64 %i.u, %.0.val
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs_NtCs5Q5FLCJ3YzS_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.p:                                             ; preds = %bb.m
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ai, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  store i64 1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecbEECskwGTd9yTe3I_8terminfo.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecbEECskwGTd9yTe3I_8terminfo.exit: ; preds = %bb.q
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.d

bb.t:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs5Q5FLCJ3YzS_3nom5multi5countRShlINtNtB6_5error5ErrorBA_ENCNCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled5parses0_00E0B1c_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %.sroa.0.0.i = tail call noundef range(i64 0, 65537) i64 @llvm.umin.i64(i64 %i.g, i64 range(i64 0, 65537) 16384) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.h = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !7, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.o = icmp samesign ule i64 %.sroa.0.0.i, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.q, align 8
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.s = icmp samesign ugt i64 %.val16, 1
  %.val = load ptr, ptr %1, align 8, !nonnull !4
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br i1 %i.s, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.sroa.010.040.us = phi i64 [ %i.y, %bb.h ], [ 0, %.lr.ph ]
  %.sroa.6.039.us = phi i64 [ %i.ae, %bb.h ], [ %3, %.lr.ph ]
  %.sroa.020.038.us = phi ptr [ %i.ad, %bb.h ], [ %2, %.lr.ph ]
  %i.y = add nuw i64 %.sroa.010.040.us, 1         ; 2 uses
  %i.z = load i8, ptr %i.t, align 1, !alias.scope !25, !noalias !28, !noundef !4 ; 2 uses
  switch i8 %i.z, label %.split.us [
    i8 1, label %_RNCNCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled5parses0_00B9_.exit.i.us
    i8 2, label %bb.d
  ], !prof !35

bb.d:                                             ; preds = %.lr.ph.split.us
  br label %_RNCNCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled5parses0_00B9_.exit.i.us

_RNCNCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled5parses0_00B9_.exit.i.us: ; preds = %bb.d, %.lr.ph.split.us
  %i.aa = phi i8 [ 0, %bb.d ], [ %i.z, %.lr.ph.split.us ]
  %i.ab = phi i8 [ 1, %bb.d ], [ 0, %.lr.ph.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store i8 %i.aa, ptr %i.a, align 1, !noalias !36
  store i8 %i.ab, ptr %i.u, align 1, !noalias !36
  invoke void @_RNvXs_NtCs5Q5FLCJ3YzS_3nom6branchTNCINvNtB6_10combinator7map_optRShINtNtCs4NRVxsYgnAr_4core6option6OptionlElINtNtB6_5error5ErrorB10_ENCINvBB_4condB10_lB1I_NCIBz_B10_slB1I_INvNtNtB6_6number9streaming6le_i16B10_B1I_ENCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled10capability0E0E0NCB3s_s_0E0NCIBz_B10_B13_lB1I_NCIB2a_B10_lB1I_NCIBz_B10_llB1I_INvB2M_6le_i32B10_B1I_ENCB3s_s0_0E0E0NCB3s_s1_0E0EINtB4_3AltB10_lB1I_E6choiceB3y_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull dereferenceable(2) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.020.038.us, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.039.us)
          to label %bb.e unwind label %.loopexit.split.us

bb.e:                                             ; preds = %_RNCNCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled5parses0_00B9_.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  %i.ac = load i64, ptr %i.d, align 8, !range !19, !noundef !4
  switch i64 %i.ac, label %.split43.us [
    i64 -1, label %bb.f
    i64 1, label %.split45.us
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %i.af = load i32, ptr %i.x, align 8, !noundef !4
  %i.ag = load i64, ptr %i.q, align 8, !alias.scope !40, !noundef !4 ; 3 uses
  %i.ah = load i64, ptr %i.e, align 8, !range !24, !alias.scope !40, !noundef !4
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.h unwind label %.split47.us

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.p, align 8, !alias.scope !40, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag
  store i32 %i.af, ptr %i.ak, align 4
  %i.al = add i64 %i.ag, 1
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !40
  %exitcond.not = icmp eq i64 %i.y, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us

.loopexit.split.us:                               ; preds = %_RNCNCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled5parses0_00B9_.exit.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNCINvNtCs5Q5FLCJ3YzS_3nom5multi5countRShlINtNtB6_5error5ErrorBA_ENCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled5parses_0E0B1a_:bb.a
  %i.ae = load ptr, ptr %i.n, align 8, !alias.scope !96, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aa
  store i32 %i.z, ptr %i.af, align 4
  %i.ag = add i64 %i.aa, 1
  store i64 %i.ag, ptr %i.o, align 8, !alias.scope !96
  %exitcond.not = icmp eq i64 %i.v, %.0.val
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXs_NtCs5Q5FLCJ3YzS_3nom5errorINtB4_5ErrorRShEINtB4_10ParseErrorBG_E6appendCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.p:                                             ; preds = %bb.m
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  store i64 1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeclEECskwGTd9yTe3I_8terminfo.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %.pn, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeclEECskwGTd9yTe3I_8terminfo.exit: ; preds = %bb.q
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.d

bb.t:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtCs5Q5FLCJ3YzS_3nom5bytes9streaming4takejRShINtNtB8_5error5ErrorBM_EE0CskwGTd9yTe3I_8terminfo(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, i64 %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp ult i64 %2, %.0.val              ; 2 uses
  %i.a = select i1 %.not.i, i64 %2, i64 0
  %.sroa.3.0.i = sub nuw i64 %.0.val, %i.a        ; 4 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp ugt i64 %.sroa.3.0.i, %2
  br i1 %.not.i.i, label %bb.d, label %_RNvXse_NtCs5Q5FLCJ3YzS_3nom6traitsRShNtB5_9InputTake10take_split.exit, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !noalias !99
  unreachable

_RNvXse_NtCs5Q5FLCJ3YzS_3nom6traitsRShNtB5_9InputTake10take_split.exit: ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.3.0.i
  %i.d = sub nuw nsw i64 %2, %.sroa.3.0.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXse_NtCs5Q5FLCJ3YzS_3nom6traitsRShNtB5_9InputTake10take_split.exit, %bb.b
  %.sink = phi i64 [ 32, %_RNvXse_NtCs5Q5FLCJ3YzS_3nom6traitsRShNtB5_9InputTake10take_split.exit ], [ 16, %bb.b ]
  %storemerge = phi i64 [ 0, %_RNvXse_NtCs5Q5FLCJ3YzS_3nom6traitsRShNtB5_9InputTake10take_split.exit ], [ 1, %bb.b ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store i64 %.sroa.3.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled4size(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 25)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !108
  call void @_RNvXsa_NtCs5Q5FLCJ3YzS_3nom8internalINvNtNtB7_6number9streaming6le_i16RShINtNtB7_5error5ErrorB16_EEINtB5_6ParserB16_sB19_E5parseCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !105
  %i.c = load i64, ptr %i.b, align 8, !range !19, !noalias !108, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.c, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.020.0.copyload.i = load ptr, ptr %i.d, align 8, !noalias !108 ; 2 uses
  %.sroa.421.0.copyload.i = load i64, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !108 ; 2 uses
  %.sroa.522.0.copyload.i = load i16, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !108 ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.733.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.738.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.733.0..sroa_idx.i, i64 6, i1 false), !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  store i64 %i.c, ptr %0, align 8, !alias.scope !105, !noalias !111
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.020.0.copyload.i, ptr %.sroa.435.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !111
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.421.0.copyload.i, ptr %.sroa.536.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !111
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.522.0.copyload.i, ptr %.sroa.637.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !111
  br label %_RNCINvNtCs5Q5FLCJ3YzS_3nom10combinator7map_optRShsjINtNtB6_5error5ErrorBI_EINvNtNtB6_6number9streaming6le_i16BI_BN_ENCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled4size0E0B1Y_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  %narrow.i.i = icmp sgt i16 %.sroa.522.0.copyload.i, -2
  br i1 %narrow.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i16 %.sroa.522.0.copyload.i, -1
  %narrow.i = select i1 %i.e, i16 0, i16 %.sroa.522.0.copyload.i
  %.sroa.4.0.i.i = zext i16 %narrow.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.020.0.copyload.i, ptr %i.f, align 8, !alias.scope !105, !noalias !111
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.421.0.copyload.i, ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !111
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.i, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !111
  store i64 -1, ptr %0, align 8, !alias.scope !105, !noalias !111
  br label %_RNCINvNtCs5Q5FLCJ3YzS_3nom10combinator7map_optRShsjINtNtB6_5error5ErrorBI_EINvNtNtB6_6number9streaming6le_i16BI_BN_ENCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled4size0E0B1Y_.exit

bb.e:                                             ; preds = %bb.c
  store i64 1, ptr %0, align 8, !alias.scope !105, !noalias !111
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !105, !noalias !111
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !105, !noalias !111
  %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !105, !noalias !111
  br label %_RNCINvNtCs5Q5FLCJ3YzS_3nom10combinator7map_optRShsjINtNtB6_5error5ErrorBI_EINvNtNtB6_6number9streaming6le_i16BI_BN_ENCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled4size0E0B1Y_.exit

_RNCINvNtCs5Q5FLCJ3YzS_3nom10combinator7map_optRShsjINtNtB6_5error5ErrorBI_EINvNtNtB6_6number9streaming6le_i16BI_BN_ENCNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled4size0E0B1Y_.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCskwGTd9yTe3I_8terminfo6parser8compiled5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.0232 = alloca [72 x i8], align 8         ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [128 x i8], align 8               ; 10 uses
  %.sroa.8218 = alloca [32 x i8], align 8         ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.10186 = alloca [24 x i8], align 8        ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.10171 = alloca [24 x i8], align 8        ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.10131 = alloca [24 x i8], align 8        ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [4 x i8], align 4                 ; 5 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 35520794, ptr %i.u, align 4
  call void @_RNvXs_NtCs5Q5FLCJ3YzS_3nom6branchTNCINvNtNtB6_5bytes9streaming3tagAhj2_RShINtNtB6_5error5ErrorB17_EE0Bw_EINtB4_3AltB17_B17_B1a_E6choiceCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias noundef nonnull dereferenceable(4) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %i.w = load i64, ptr %i.v, align 8, !range !3, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0242.0.copyload = load ptr, ptr %i.y, align 8 ; 3 uses
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4243.0.copyload = load i64, ptr %.sroa.4243.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.5244.0.copyload = load ptr, ptr %.sroa.5244.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.6245.0.copyload = load i64, ptr %.sroa.6245.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0242.0.copyload, ptr %i.z, align 8
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.4243.0.copyload, ptr %.sroa.4247.0..sroa_idx, align 8
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.5244.0.copyload, ptr %.sroa.5248.0..sroa_idx, align 8
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.6245.0.copyload, ptr %.sroa.6249.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !112
  call void @_RNvXsa_NtCs5Q5FLCJ3YzS_3nom8internalINvNtNtB7_6number9streaming6le_i16RShINtNtB7_5error5ErrorB16_EEINtB5_6ParserB16_sB19_E5parseCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0242.0.copyload, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4243.0.copyload), !noalias !120
  %i.ab = load i64, ptr %i.e, align 8, !range !19, !noalias !112, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.020.0.copyload.i.i = load ptr, ptr %i.ac, align 8, !noalias !112 ; 4 uses
  %.sroa.421.0.copyload.i.i = load i64, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !112 ; 3 uses
  %.sroa.522.0.copyload.i.i = load i16, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !112 ; 4 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.733.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %.sroa.17.26.copyload = load i48, ptr %.sroa.733.0..sroa_idx.i.i, align 2, !noalias !121
  %.sroa.17.26.insert.ext = zext i48 %.sroa.17.26.copyload to i64
  %.sroa.17.26.insert.shift = shl nuw i64 %.sroa.17.26.insert.ext, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !112
  %.sroa.17.24.insert.ext = zext i16 %.sroa.522.0.copyload.i.i to i64
  %.sroa.17.24.insert.insert = or disjoint i64 %.sroa.17.26.insert.shift, %.sroa.17.24.insert.ext
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !112
  %narrow.i.i.i = icmp sgt i16 %.sroa.522.0.copyload.i.i, -2
  br i1 %narrow.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.17.0.ph = phi i64 [ 2, %bb.e ], [ %.sroa.17.24.insert.insert, %bb.d ]
  %.sroa.12.0.ph = phi i64 [ %.sroa.4243.0.copyload, %bb.e ], [ %.sroa.421.0.copyload.i.i, %bb.d ]
  %.sroa.7.0.ph = phi ptr [ %.sroa.0242.0.copyload, %bb.e ], [ %.sroa.020.0.copyload.i.i, %bb.d ]
  %.sroa.0.0.ph = phi i64 [ 1, %bb.e ], [ %i.ab, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.ph, ptr %i.ad, align 8
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7.0.ph, ptr %.sroa.4262.0..sroa_idx, align 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.12.0.ph, ptr %.sroa.5263.0..sroa_idx, align 8
  %.sroa.6264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.17.0.ph, ptr %.sroa.6264.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.ae, align 8
  br label %bb.ax

bb.g:                                             ; preds = %bb.e
  %i.af = icmp eq i16 %.sroa.522.0.copyload.i.i, -1
  %narrow.i.i = select i1 %i.af, i16 0, i16 %.sroa.522.0.copyload.i.i
  %.sroa.4.0.i.i.i = zext i16 %narrow.i.i to i64  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !122
  call void @_RNvXsa_NtCs5Q5FLCJ3YzS_3nom8internalINvNtNtB7_6number9streaming6le_i16RShINtNtB7_5error5ErrorB16_EEINtB5_6ParserB16_sB19_E5parseCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.020.0.copyload.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.421.0.copyload.i.i), !noalias !130
  %i.ag = load i64, ptr %i.d, align 8, !range !19, !noalias !122, !noundef !4 ; 2 uses
  %.not.i.i460 = icmp eq i64 %i.ag, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.421.0..sroa_idx.i.i461 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.522.0..sroa_idx.i.i462 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.020.0.copyload.i.i463 = load ptr, ptr %i.ah, align 8, !noalias !122 ; 4 uses
  %.sroa.421.0.copyload.i.i464 = load i64, ptr %.sroa.421.0..sroa_idx.i.i461, align 8, !noalias !122 ; 3 uses
  %.sroa.522.0.copyload.i.i465 = load i16, ptr %.sroa.522.0..sroa_idx.i.i462, align 8, !noalias !122 ; 4 uses
  br i1 %.not.i.i460, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.733.0..sroa_idx.i.i466 = getelementptr inbounds nuw i8, ptr %i.d, i64 26
  %.sroa.17529.26.copyload = load i48, ptr %.sroa.733.0..sroa_idx.i.i466, align 2, !noalias !131
  %.sroa.17529.26.insert.ext = zext i48 %.sroa.17529.26.copyload to i64
  %.sroa.17529.26.insert.shift = shl nuw i64 %.sroa.17529.26.insert.ext, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !122
  %.sroa.17529.24.insert.ext = zext i16 %.sroa.522.0.copyload.i.i465 to i64
  %.sroa.17529.24.insert.insert = or disjoint i64 %.sroa.17529.26.insert.shift, %.sroa.17529.24.insert.ext
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !122
  %narrow.i.i.i471 = icmp sgt i16 %.sroa.522.0.copyload.i.i465, -2
  br i1 %narrow.i.i.i471, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.17529.0.ph = phi i64 [ 2, %bb.i ], [ %.sroa.17529.24.insert.insert, %bb.h ]
  %.sroa.12527.0.ph = phi i64 [ %.sroa.421.0.copyload.i.i, %bb.i ], [ %.sroa.421.0.copyload.i.i464, %bb.h ]
  %.sroa.7526.0.ph = phi ptr [ %.sroa.020.0.copyload.i.i, %bb.i ], [ %.sroa.020.0.copyload.i.i463, %bb.h ]
  %.sroa.0525.0.ph = phi i64 [ 1, %bb.i ], [ %i.ag, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0525.0.ph, ptr %i.ai, align 8
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7526.0.ph, ptr %.sroa.4277.0..sroa_idx, align 8
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.12527.0.ph, ptr %.sroa.5278.0..sroa_idx, align 8
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.17529.0.ph, ptr %.sroa.6279.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.aj, align 8
  br label %bb.ax

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp eq i16 %.sroa.522.0.copyload.i.i465, -1
  %narrow.i.i475 = select i1 %i.ak, i16 0, i16 %.sroa.522.0.copyload.i.i465
  %.sroa.4.0.i.i.i476 = zext i16 %narrow.i.i475 to i64 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload.i.i463) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !132
  call void @_RNvXsa_NtCs5Q5FLCJ3YzS_3nom8internalINvNtNtB7_6number9streaming6le_i16RShINtNtB7_5error5ErrorB16_EEINtB5_6ParserB16_sB19_E5parseCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.020.0.copyload.i.i463, i64 noundef range(i64 0, -9223372036854775808) %.sroa.421.0.copyload.i.i464), !noalias !140
  %i.al = load i64, ptr %i.c, align 8, !range !19, !noalias !132, !noundef !4 ; 2 uses
  %.not.i.i480 = icmp eq i64 %i.al, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.421.0..sroa_idx.i.i481 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.522.0..sroa_idx.i.i482 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.020.0.copyload.i.i483 = load ptr, ptr %i.am, align 8, !noalias !132 ; 4 uses
  %.sroa.421.0.copyload.i.i484 = load i64, ptr %.sroa.421.0..sroa_idx.i.i481, align 8, !noalias !132 ; 3 uses
  %.sroa.522.0.copyload.i.i485 = load i16, ptr %.sroa.522.0..sroa_idx.i.i482, align 8, !noalias !132 ; 4 uses
  br i1 %.not.i.i480, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.733.0..sroa_idx.i.i486 = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %.sroa.17538.26.copyload = load i48, ptr %.sroa.733.0..sroa_idx.i.i486, align 2, !noalias !141
  %.sroa.17538.26.insert.ext = zext i48 %.sroa.17538.26.copyload to i64
  %.sroa.17538.26.insert.shift = shl nuw i64 %.sroa.17538.26.insert.ext, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !132
  %.sroa.17538.24.insert.ext = zext i16 %.sroa.522.0.copyload.i.i485 to i64
  %.sroa.17538.24.insert.insert = or disjoint i64 %.sroa.17538.26.insert.shift, %.sroa.17538.24.insert.ext
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !132
  %narrow.i.i.i491 = icmp sgt i16 %.sroa.522.0.copyload.i.i485, -2
  br i1 %narrow.i.i.i491, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.17538.0.ph = phi i64 [ 2, %bb.m ], [ %.sroa.17538.24.insert.insert, %bb.l ]
  %.sroa.12536.0.ph = phi i64 [ %.sroa.421.0.copyload.i.i464, %bb.m ], [ %.sroa.421.0.copyload.i.i484, %bb.l ]
  %.sroa.7535.0.ph = phi ptr [ %.sroa.020.0.copyload.i.i463, %bb.m ], [ %.sroa.020.0.copyload.i.i483, %bb.l ]
  %.sroa.0534.0.ph = phi i64 [ 1, %bb.m ], [ %i.al, %bb.l ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0534.0.ph, ptr %i.an, align 8
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7535.0.ph, ptr %.sroa.4292.0..sroa_idx, align 8
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.12536.0.ph, ptr %.sroa.5293.0..sroa_idx, align 8
  %.sroa.6294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.17538.0.ph, ptr %.sroa.6294.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.ao, align 8
  br label %bb.ax

bb.o:                                             ; preds = %bb.m
  %i.ap = icmp eq i16 %.sroa.522.0.copyload.i.i485, -1
  %narrow.i.i495 = select i1 %i.ap, i16 0, i16 %.sroa.522.0.copyload.i.i485
  %.sroa.4.0.i.i.i496 = zext i16 %narrow.i.i495 to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload.i.i483) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !142
  call void @_RNvXsa_NtCs5Q5FLCJ3YzS_3nom8internalINvNtNtB7_6number9streaming6le_i16RShINtNtB7_5error5ErrorB16_EEINtB5_6ParserB16_sB19_E5parseCskwGTd9yTe3I_8terminfo(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.020.0.copyload.i.i483, i64 noundef range(i64 0, -9223372036854775808) %.sroa.421.0.copyload.i.i484), !noalias !150
  %i.aq = load i64, ptr %i.b, align 8, !range !19, !noalias !142, !noundef !4 ; 2 uses
  %.not.i.i500 = icmp eq i64 %i.aq, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.421.0..sroa_idx.i.i501 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.522.0..sroa_idx.i.i502 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.020.0.copyload.i.i503 = load ptr, ptr %i.ar, align 8, !noalias !142 ; 3 uses
  %.sroa.421.0.copyload.i.i504 = load i64, ptr %.sroa.421.0..sroa_idx.i.i501, align 8, !noalias !142 ; 2 uses
  %.sroa.522.0.copyload.i.i505 = load i16, ptr %.sroa.522.0..sroa_idx.i.i502, align 8, !noalias !142 ; 4 uses
  br i1 %.not.i.i500, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.733.0..sroa_idx.i.i506 = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %.sroa.17547.26.copyload = load i48, ptr %.sroa.733.0..sroa_idx.i.i506, align 2, !noalias !151
  %.sroa.17547.26.insert.ext = zext i48 %.sroa.17547.26.copyload to i64
  %.sroa.17547.26.insert.shift = shl nuw i64 %.sroa.17547.26.insert.ext, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  %.sroa.17547.24.insert.ext = zext i16 %.sroa.522.0.copyload.i.i505 to i64
  %.sroa.17547.24.insert.insert = or disjoint i64 %.sroa.17547.26.insert.shift, %.sroa.17547.24.insert.ext
  br label %bb.r

bb.q:                                             ; preds = %bb.o
end_hunk_1
