Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/vergen_gitcl-b92187c9e2c5b0e5.vergen_gitcl.a0eaf33017eefd6d-cgu.5?download=true
inline.NumInlined: 119
inline.NumDeleted: 55
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [92 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itoa-1.0.18/src/lib.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"[\00\00\00\00\00\00\00n\00\00\00\16\00\00\00" }>, align 8
@2 = private unnamed_addr constant [111 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/time-0.3.47/src/formatting/formattable.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"n\00\00\00\00\00\00\00\8D\01\00\00\16\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"n\00\00\00\00\00\00\00\8A\01\00\00\16\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"n\00\00\00\00\00\00\00\87\01\00\00\16\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"n\00\00\00\00\00\00\00A\00\00\00\0D\00\00\00" }>, align 8
@7 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/time-0.3.47/src/utc_offset.rs\00", align 1
@8 = private unnamed_addr constant [7 x i8] c"seconds", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"b\00\00\00\00\00\00\00&\01\00\00\11\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"b\00\00\00\00\00\00\00'\01\00\00\12\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"b\00\00\00\00\00\00\00'\01\00\00\11\00\00\00" }>, align 8
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"b\00\00\00\00\00\00\00(\01\00\00\11\00\00\00" }>, align 8
@13 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/time-0.3.47/src/offset_date_time.rs\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"h\00\00\00\00\00\00\00\82\01\00\00\09\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"h\00\00\00\00\00\00\00\F0\00\00\00\16\00\00\00" }>, align 8
@16 = private unnamed_addr constant [9 x i8] c"timestamp", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"h\00\00\00\00\00\00\00\C3\01\00\00)\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"h\00\00\00\00\00\00\00\C7\01\00\00,\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"h\00\00\00\00\00\00\00\CB\01\00\00\11\00\00\00" }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"h\00\00\00\00\00\00\00\CC\01\00\00\12\00\00\00" }>, align 8
@21 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"h\00\00\00\00\00\00\00\CC\01\00\00\11\00\00\00" }>, align 8
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c"h\00\00\00\00\00\00\00\CE\01\00\00\11\00\00\00" }>, align 8
@23 = private unnamed_addr constant [125 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/time-0.3.47/src/format_description/parse/format_item.rs\00", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @23, [16 x i8] c"|\00\00\00\00\00\00\00\1B\01\00\00\01\00\00\00" }>, align 8
@25 = private unnamed_addr constant [45 x i8] c"internal error: required modifier was not set", align 1
@26 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @25, [8 x i8] c"-\00\00\00\00\00\00\00" }>, align 8
@27 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/time-0.3.47/src/format_description/parse/mod.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"t\00\00\00\00\00\00\00:\00\00\00\08\00\00\00" }>, align 8
@29 = private unnamed_addr constant [5 x i8] c"false", align 1
@30 = private unnamed_addr constant [4 x i8] c"true", align 1
@31 = private unnamed_addr constant [84 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/sys/os_str/bytes.rs\00", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"S\00\00\00\00\00\00\00\\\00\00\00!\00\00\00" }>, align 8
@33 = private unnamed_addr constant [73 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/str.rs\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"H\00\00\00\00\00\00\00\C0\00\00\00\0E\00\00\00" }>, align 8
@35 = private unnamed_addr constant [78 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/ffi/os_str.rs\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @35, [16 x i8] c"M\00\00\00\00\00\00\00\A3\02\00\00\0E\00\00\00" }>, align 8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN103_$LT$time..format_description..well_known..iso8601..OffsetPrecision$u20$as$u20$core..cmp..PartialEq$GT$2eq17h948ed161bfe234b3E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = xor i8 %i.b, %i.a
  %i.d = and i8 %i.c, 1
  %i.e = icmp eq i8 %i.d, 0
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$10nanosecond17hb134b294b579006bE"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 4
  %.sroa.01.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.copyload to i32
  ret i32 %.sroa.01.0.extract.trunc.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$11offset_hour17h85ab28610d83cf41E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.1.0.copyload = load i24, ptr %.sroa.1.0..sroa_idx, align 4
  %.sroa.2.0.extract.shift.i.i = lshr i24 %.sroa.1.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i24 %.sroa.2.0.extract.shift.i.i to i8
  ret i8 %.sroa.2.0.extract.trunc.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$13calendar_year17hf5e07288a81133d0E"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i32 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$13calendar_year17h2333de4e882b8a2eE"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$13offset_is_utc17hd20312cfe62cb0adE"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.1.0.copyload = load i24, ptr %.sroa.1.0..sroa_idx, align 4
  %i.a = icmp eq i24 %.sroa.1.0.copyload, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$13offset_minute17h76007ef90ed09937E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.1.0.copyload = load i24, ptr %.sroa.1.0..sroa_idx, align 4
  %.sroa.22.0.extract.shift.i.i = lshr i24 %.sroa.1.0.copyload, 8
  %.sroa.22.0.extract.trunc.i.i = trunc i24 %.sroa.22.0.extract.shift.i.i to i8
  ret i8 %.sroa.22.0.extract.trunc.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$13offset_second17he52a09d522e4a11fE"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.1.0.copyload = load i24, ptr %.sroa.1.0..sroa_idx, align 4
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.1.0.copyload to i8
  ret i8 %.sroa.01.0.extract.trunc.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17hbebd1d2697fe70f9E"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17hf8b6fa95affc434dE"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i8 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17hfe8f3d60195a6802E"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h8d84ffe1cb872fb8E"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i8 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h0cdd7f5475edef35E"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h73b2b8e613b12132E"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i8 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$18offset_is_negative17h3bb4e2f13fdea2b4E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.1.0.copyload = load i24, ptr %.sroa.1.0..sroa_idx, align 4 ; 3 uses
  %.sroa.22.0.extract.shift.i.i.i = lshr i24 %.sroa.1.0.copyload, 8
  %.sroa.33.0.extract.shift.i.i.i = lshr i24 %.sroa.1.0.copyload, 16
  %i.a = or i24 %.sroa.22.0.extract.shift.i.i.i, %.sroa.33.0.extract.shift.i.i.i
  %3 = or i24 %i.a, %.sroa.1.0.copyload
  %4 = and i24 %3, 128
  %5 = icmp ne i24 %4, 0
  ret i1 %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$22unix_timestamp_seconds17h140f40b471991869E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.0.copyload = load i24, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %i.a = tail call i32 @_ZN4time4date4Date13to_julian_day17h00f7920ede363b3eE(i32 %.sroa.4.0.copyload)
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, -2440588
  %i.d = tail call i64 @_ZN9time_core7convert6Second5per_t17hcc6f885bed2c116dE()
  %i.e = mul i64 %i.c, %i.d
  %.sroa.22.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload, 48
  %i.f = and i64 %.sroa.22.0.extract.shift.i.i.i, 255
  %i.g = tail call i64 @_ZN9time_core7convert6Second5per_t17h4f3c7868130e9c26E()
  %i.h = mul i64 %i.g, %i.f
  %.sroa.22.0.extract.shift.i.i3.i = lshr i64 %.sroa.0.0.copyload, 40
  %i.i = and i64 %.sroa.22.0.extract.shift.i.i3.i, 255
  %i.j = tail call i64 @_ZN9time_core7convert6Second5per_t17h0446392046d58b37E()
  %i.k = mul i64 %i.j, %i.i
  %.sroa.22.0.extract.shift.i.i6.i = lshr i64 %.sroa.0.0.copyload, 32
  %i.l = and i64 %.sroa.22.0.extract.shift.i.i6.i, 255
  %.sroa.01.0.extract.trunc.i.i = zext i24 %.sroa.5.0.copyload to i32
  %.sroa.22.0.extract.shift.i.i = lshr i24 %.sroa.5.0.copyload, 8
  %.sroa.22.0.extract.trunc.i.i.a = zext nneg i24 %.sroa.22.0.extract.shift.i.i to i32
  %.sroa.33.0.extract.shift.i.i = lshr i24 %.sroa.5.0.copyload, 16
  %.sroa.33.0.extract.trunc.i.i = zext nneg i24 %.sroa.33.0.extract.shift.i.i to i32
  %i.m = tail call i32 @_ZN9time_core7convert6Second5per_t17h69640db34a3af58aE()
  %i.n = tail call i32 @_ZN9time_core7convert6Second5per_t17he3d16b0139a9e4feE()
  %sext.i.i = shl nuw i32 %.sroa.33.0.extract.trunc.i.i, 24
  %3 = ashr exact i32 %sext.i.i, 24
  %i.o = mul i32 %i.m, %3
  %sext15.i.i.a = shl i32 %.sroa.22.0.extract.trunc.i.i.a, 24
  %i.p = ashr exact i32 %sext15.i.i.a, 24
  %i.q = mul i32 %i.n, %i.p
  %sext16.i.i = shl i32 %.sroa.01.0.extract.trunc.i.i, 24
  %i.r = ashr exact i32 %sext16.i.i, 24
  %i.s = add i32 %i.o, %i.r
  %i.t = add i32 %i.s, %i.q
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %i.e, %i.l
  %i.w = add i64 %i.v, %i.h
  %i.x = add i64 %i.w, %i.k
  %i.y = sub i64 %i.x, %i.u
  ret i64 %i.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$26unix_timestamp_nanoseconds17hc9be6e1e29fb3fc7E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.4.0.copyload = load i24, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %i.a = tail call i32 @_ZN4time4date4Date13to_julian_day17h00f7920ede363b3eE(i32 %.sroa.3.0.copyload)
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, -2440588
  %i.d = tail call i64 @_ZN9time_core7convert6Second5per_t17hcc6f885bed2c116dE()
  %i.e = mul i64 %i.c, %i.d
  %.sroa.22.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload, 48
  %i.f = and i64 %.sroa.22.0.extract.shift.i.i.i.i, 255
  %i.g = tail call i64 @_ZN9time_core7convert6Second5per_t17h4f3c7868130e9c26E()
  %i.h = mul i64 %i.g, %i.f
  %.sroa.22.0.extract.shift.i.i3.i.i = lshr i64 %.sroa.0.0.copyload, 40
  %i.i = and i64 %.sroa.22.0.extract.shift.i.i3.i.i, 255
  %i.j = tail call i64 @_ZN9time_core7convert6Second5per_t17h0446392046d58b37E()
  %i.k = mul i64 %i.j, %i.i
  %.sroa.22.0.extract.shift.i.i6.i.i = lshr i64 %.sroa.0.0.copyload, 32
  %i.l = and i64 %.sroa.22.0.extract.shift.i.i6.i.i, 255
  %.sroa.01.0.extract.trunc.i.i.i = zext i24 %.sroa.4.0.copyload to i32
  %.sroa.22.0.extract.shift.i.i.i = lshr i24 %.sroa.4.0.copyload, 8
  %.sroa.22.0.extract.trunc.i.i.i.a = zext nneg i24 %.sroa.22.0.extract.shift.i.i.i to i32
  %.sroa.33.0.extract.shift.i.i.i = lshr i24 %.sroa.4.0.copyload, 16
  %.sroa.33.0.extract.trunc.i.i.i = zext nneg i24 %.sroa.33.0.extract.shift.i.i.i to i32
  %i.m = tail call i32 @_ZN9time_core7convert6Second5per_t17h69640db34a3af58aE()
  %i.n = tail call i32 @_ZN9time_core7convert6Second5per_t17he3d16b0139a9e4feE()
  %sext.i.i.i = shl nuw i32 %.sroa.33.0.extract.trunc.i.i.i, 24
  %3 = ashr exact i32 %sext.i.i.i, 24
  %i.o = mul i32 %i.m, %3
  %sext15.i.i.i.a = shl i32 %.sroa.22.0.extract.trunc.i.i.i.a, 24
  %i.p = ashr exact i32 %sext15.i.i.i.a, 24
  %i.q = mul i32 %i.n, %i.p
  %sext16.i.i.i = shl i32 %.sroa.01.0.extract.trunc.i.i.i, 24
  %i.r = ashr exact i32 %sext16.i.i.i, 24
  %i.s = add i32 %i.o, %i.r
  %i.t = add i32 %i.s, %i.q
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %i.e, %i.l
  %i.w = add i64 %i.v, %i.h
  %i.x = add i64 %i.w, %i.k
  %i.y = sub i64 %i.x, %i.u
  %i.z = sext i64 %i.y to i128
  %i.aa = tail call i128 @_ZN9time_core7convert10Nanosecond5per_t17h1e7b9d5c058fc21eE()
  %i.ab = mul i128 %i.aa, %i.z
  %.sroa.01.0.extract.trunc.i.i1.mask.i = and i64 %.sroa.0.0.copyload, 4294967295
  %i.ac = zext nneg i64 %.sroa.01.0.extract.trunc.i.i1.mask.i to i128
  %i.ad = add i128 %i.ab, %i.ac
  ret i128 %i.ad
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i128 -170141183460469231731687303715884105, 170141183460469231731687303715884106) i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h259a6fe4419bf958E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.4.0.copyload = load i24, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %i.a = tail call i32 @_ZN4time4date4Date13to_julian_day17h00f7920ede363b3eE(i32 %.sroa.3.0.copyload)
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, -2440588
  %i.d = tail call i64 @_ZN9time_core7convert6Second5per_t17hcc6f885bed2c116dE()
  %i.e = mul i64 %i.c, %i.d
  %.sroa.22.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload, 48
  %i.f = and i64 %.sroa.22.0.extract.shift.i.i.i.i, 255
  %i.g = tail call i64 @_ZN9time_core7convert6Second5per_t17h4f3c7868130e9c26E()
  %i.h = mul i64 %i.g, %i.f
  %.sroa.22.0.extract.shift.i.i3.i.i = lshr i64 %.sroa.0.0.copyload, 40
  %i.i = and i64 %.sroa.22.0.extract.shift.i.i3.i.i, 255
  %i.j = tail call i64 @_ZN9time_core7convert6Second5per_t17h0446392046d58b37E()
  %i.k = mul i64 %i.j, %i.i
  %.sroa.22.0.extract.shift.i.i6.i.i = lshr i64 %.sroa.0.0.copyload, 32
  %i.l = and i64 %.sroa.22.0.extract.shift.i.i6.i.i, 255
  %.sroa.01.0.extract.trunc.i.i.i = zext i24 %.sroa.4.0.copyload to i32
  %.sroa.22.0.extract.shift.i.i.i = lshr i24 %.sroa.4.0.copyload, 8
  %.sroa.22.0.extract.trunc.i.i.i.a = zext nneg i24 %.sroa.22.0.extract.shift.i.i.i to i32
  %.sroa.33.0.extract.shift.i.i.i = lshr i24 %.sroa.4.0.copyload, 16
  %.sroa.33.0.extract.trunc.i.i.i = zext nneg i24 %.sroa.33.0.extract.shift.i.i.i to i32
  %i.m = tail call i32 @_ZN9time_core7convert6Second5per_t17h69640db34a3af58aE()
  %i.n = tail call i32 @_ZN9time_core7convert6Second5per_t17he3d16b0139a9e4feE()
  %sext.i.i.i = shl nuw i32 %.sroa.33.0.extract.trunc.i.i.i, 24
  %3 = ashr exact i32 %sext.i.i.i, 24
  %i.o = mul i32 %i.m, %3
  %sext15.i.i.i.a = shl i32 %.sroa.22.0.extract.trunc.i.i.i.a, 24
  %i.p = ashr exact i32 %sext15.i.i.i.a, 24
  %i.q = mul i32 %i.n, %i.p
  %sext16.i.i.i = shl i32 %.sroa.01.0.extract.trunc.i.i.i, 24
  %i.r = ashr exact i32 %sext16.i.i.i, 24
  %i.s = add i32 %i.o, %i.r
  %i.t = add i32 %i.s, %i.q
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %i.e, %i.l
  %i.w = add i64 %i.v, %i.h
  %i.x = add i64 %i.w, %i.k
  %i.y = sub i64 %i.x, %i.u
  %i.z = sext i64 %i.y to i128
  %i.aa = tail call i128 @_ZN9time_core7convert10Nanosecond5per_t17h1e7b9d5c058fc21eE()
  %i.ab = mul i128 %i.aa, %i.z
  %.sroa.01.0.extract.trunc.i.i1.mask.i = and i64 %.sroa.0.0.copyload, 4294967295
  %i.ac = zext nneg i64 %.sroa.01.0.extract.trunc.i.i1.mask.i to i128
  %i.ad = add i128 %i.ab, %i.ac
  %i.ae = sdiv i128 %i.ad, 1000
  ret i128 %i.ae
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4257895d2e151a14E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.4.0.copyload = load i24, ptr %.sroa.4.0..sroa_idx, align 4 ; 3 uses
  %i.a = tail call i32 @_ZN4time4date4Date13to_julian_day17h00f7920ede363b3eE(i32 %.sroa.3.0.copyload)
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, -2440588
  %i.d = tail call i64 @_ZN9time_core7convert6Second5per_t17hcc6f885bed2c116dE()
  %i.e = mul i64 %i.c, %i.d
  %.sroa.22.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload, 48
  %i.f = and i64 %.sroa.22.0.extract.shift.i.i.i.i, 255
  %i.g = tail call i64 @_ZN9time_core7convert6Second5per_t17h4f3c7868130e9c26E()
  %i.h = mul i64 %i.g, %i.f
  %.sroa.22.0.extract.shift.i.i3.i.i = lshr i64 %.sroa.0.0.copyload, 40
  %i.i = and i64 %.sroa.22.0.extract.shift.i.i3.i.i, 255
  %i.j = tail call i64 @_ZN9time_core7convert6Second5per_t17h0446392046d58b37E()
  %i.k = mul i64 %i.j, %i.i
  %.sroa.22.0.extract.shift.i.i6.i.i = lshr i64 %.sroa.0.0.copyload, 32
  %i.l = and i64 %.sroa.22.0.extract.shift.i.i6.i.i, 255
  %.sroa.01.0.extract.trunc.i.i.i = zext i24 %.sroa.4.0.copyload to i32
  %.sroa.22.0.extract.shift.i.i.i = lshr i24 %.sroa.4.0.copyload, 8
  %.sroa.22.0.extract.trunc.i.i.i.a = zext nneg i24 %.sroa.22.0.extract.shift.i.i.i to i32
  %.sroa.33.0.extract.shift.i.i.i = lshr i24 %.sroa.4.0.copyload, 16
  %.sroa.33.0.extract.trunc.i.i.i = zext nneg i24 %.sroa.33.0.extract.shift.i.i.i to i32
  %i.m = tail call i32 @_ZN9time_core7convert6Second5per_t17h69640db34a3af58aE()
  %i.n = tail call i32 @_ZN9time_core7convert6Second5per_t17he3d16b0139a9e4feE()
  %sext.i.i.i = shl nuw i32 %.sroa.33.0.extract.trunc.i.i.i, 24
  %3 = ashr exact i32 %sext.i.i.i, 24
  %i.o = mul i32 %i.m, %3
  %sext15.i.i.i.a = shl i32 %.sroa.22.0.extract.trunc.i.i.i.a, 24
  %i.p = ashr exact i32 %sext15.i.i.i.a, 24
  %i.q = mul i32 %i.n, %i.p
  %sext16.i.i.i = shl i32 %.sroa.01.0.extract.trunc.i.i.i, 24
  %i.r = ashr exact i32 %sext16.i.i.i, 24
  %i.s = add i32 %i.o, %i.r
  %i.t = add i32 %i.s, %i.q
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %i.e, %i.l
  %i.w = add i64 %i.v, %i.h
  %i.x = add i64 %i.w, %i.k
  %i.y = sub i64 %i.x, %i.u
  %i.z = sext i64 %i.y to i128
  %i.aa = tail call i128 @_ZN9time_core7convert10Nanosecond5per_t17h1e7b9d5c058fc21eE()
  %i.ab = mul i128 %i.aa, %i.z
  %.sroa.01.0.extract.trunc.i.i1.mask.i = and i64 %.sroa.0.0.copyload, 4294967295
  %i.ac = zext nneg i64 %.sroa.01.0.extract.trunc.i.i1.mask.i to i128
  %i.ad = add i128 %i.ab, %i.ac
  %i.ae = sdiv i128 %i.ad, 1000000
  %i.af = trunc i128 %i.ae to i64
  ret i64 %i.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17h277f20a467319397E"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hd95cff9063c3129dE"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i8 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$4hour17h397c85be6095eb42E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 4
  %.sroa.22.0.extract.shift.i.i = lshr i64 %.sroa.01.0.copyload, 48
  %.sroa.22.0.extract.trunc.i.i = trunc i64 %.sroa.22.0.extract.shift.i.i to i8
  ret i8 %.sroa.22.0.extract.trunc.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17hf352844674d411f6E"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h76377f313ce2c270E"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i8 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$6minute17h195010459ee42d44E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 4
  %.sroa.22.0.extract.shift.i.i = lshr i64 %.sroa.01.0.copyload, 40
  %.sroa.22.0.extract.trunc.i.i = trunc i64 %.sroa.22.0.extract.shift.i.i to i8
  ret i8 %.sroa.22.0.extract.trunc.i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$6period17hfffe1352436aeeb4E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 4
  %.sroa.22.0.extract.shift.i.i = lshr i64 %.sroa.01.0.copyload, 48
  %.sroa.22.0.extract.trunc.i.i = trunc i64 %.sroa.22.0.extract.shift.i.i to i8
  %i.a = icmp ugt i8 %.sroa.22.0.extract.trunc.i.i, 11
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$6second17h6bacfd32f2f66542E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readnone align 4 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %0, align 4
  %.sroa.22.0.extract.shift.i.i = lshr i64 %.sroa.01.0.copyload, 32
  %.sroa.22.0.extract.trunc.i.i = trunc i64 %.sroa.22.0.extract.shift.i.i to i8
  ret i8 %.sroa.22.0.extract.trunc.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i16 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$7ordinal17h6ce2610825ab4a99E"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i16 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$7ordinal17h7c122760a84c4b9dE"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i16 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$7weekday17hac136d34a1905fc5E"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i8 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$7weekday17h044273b5acbbfec5E"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i8 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h4619dd41716b9eafE"(ptr nofree readonly align 4 captures(none) %0, ptr align 4 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  store i32 %.sroa.1.0.copyload, ptr %i.a, align 4
  %i.b = call i32 @"_ZN92_$LT$time..date..Date$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h4b32942a9956bbd8E"(ptr nonnull align 4 %i.a, ptr align 4 %1, ptr align 8 %2)
  ret i32 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN280_$LT$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$..drop_key_val..Dropper$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1d06734699a4e3adE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$17h2f59a7cc2ce1dad5E"(ptr align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$4powi17h113372023883b7b2E"(double %0, i32 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.powi.f64.i32(double %0, i32 %1)
  ret double %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden double @"_ZN3std3f6421_$LT$impl$u20$f64$GT$5trunc17hb1f07334654d9eb1E"(double %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.trunc.f64(double %0)
  ret double %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN3std3ffi6os_str103_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17he38978b68720357cE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_ZN3std4path4Path6exists17hf077ec47b0441823E(ptr align 1 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [176 x i8], align 8               ; 3 uses
  call void @_ZN3std2fs8metadata17h97c4c7896386b9e3E(ptr nonnull sret([176 x i8]) align 8 %i.a, ptr align 1 %0, i64 %1)
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ne i64 %i.b, 2
  call void @"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h0f48d805c8251a97E"(ptr nonnull align 8 %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN3std4path4Path7display17hb43865dc315fddacE(ptr align 1 %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3std4path7PathBuf4push17h905bbd57f68ce075E(ptr align 8 %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  invoke void @_ZN3std4path7PathBuf5_push17h178afc062798cae0E(ptr align 8 %0, ptr align 1 %.val, i64 %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h68cfe210401133f4E"(ptr nonnull align 8 %1) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h68cfe210401133f4E"(ptr nonnull align 8 %1)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3std4path7PathBuf4push17hc8e73674163f3c58E(ptr align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@"_ZN4time10formatting11formattable139_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..iso8601..Iso8601$LT$_$GT$$GT$11format_into17h12b37c964dbc4f42E":bb.a
  %i.o = load i64, ptr %i.n, align 8
  call void @_ZN4time10formatting7iso860113format_offset17hc032c65f81dbb38dE(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %2, ptr align 4 %3, ptr align 4 %4)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha52f93f6106a41adE"(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.p = load i64, ptr %i.c, align 8
  %.not5 = icmp eq i64 %i.p, 4
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h9cb5529d7ebfba94E"(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @3)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = add i64 %i.o, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8
  store i64 4, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_ZN4time10formatting11formattable6sealed6Sealed6format17hdf78b97386fc5110E(ptr sret([32 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, ptr align 4 %2, ptr align 4 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h265a1754abb99c8dE"(ptr nonnull sret([24 x i8]) align 8 %i.f)
  invoke void @"_ZN4time10formatting11formattable139_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..well_known..iso8601..Iso8601$LT$_$GT$$GT$11format_into17h12b37c964dbc4f42E"(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr align 1 poison, ptr nonnull align 8 %i.f, ptr align 4 %2, ptr align 4 %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8b426a8fdec32b43E"(ptr nonnull align 8 %i.f) #16
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17ha52f93f6106a41adE"(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.h, 4
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h38e72541d7a68fc0E"(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @6)
          to label %bb.j unwind label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.i = invoke { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3247d915dd39b04bE"(ptr nonnull align 8 %i.f)
          to label %bb.g unwind label %bb.b       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  invoke void @_ZN5alloc6string6String15from_utf8_lossy17h21794fcc38759ff3E(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %i.j, i64 %i.k)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17hebae8966dd2d05fdE"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8b426a8fdec32b43E"(ptr nonnull align 8 %i.f)
  ret void

bb.k:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #17
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_ZN4time10utc_offset9UtcOffset15local_offset_at17h523a182fde9c9f76E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false)
  %i.b = call i32 @_ZN4time3sys15local_offset_at15local_offset_at17h46e7fb507ef0c514E(ptr nonnull align 4 %i.a)
  %i.c = call i32 @"_ZN4core6option15Option$LT$T$GT$5ok_or17h1c64670cfead2e86E"(i32 %i.b)
  ret i32 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN4time10utc_offset9UtcOffset18from_whole_seconds17hfbb9bdc6fa285043E(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = add i32 %1, -93600
  %or.cond.i = icmp ult i32 %i.b, -187199
  br i1 %or.cond.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_ZN9time_core7convert6Second5per_t17h69640db34a3af58aE() ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %"_ZN8deranged22RangedI32$LT$_$C$_$GT$3get17hb9737181186c31f3E.exit6.i"

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr nonnull align 8 @9) #18
  unreachable

"_ZN8deranged22RangedI32$LT$_$C$_$GT$3get17hb9737181186c31f3E.exit6.i": ; preds = %bb.b
  %i.e = tail call i32 @_ZN9time_core7convert6Second5per_t17h69640db34a3af58aE() ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN8deranged22RangedI32$LT$_$C$_$GT$3get17hb9737181186c31f3E.exit6.i"
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr nonnull align 8 @10) #18
  unreachable

bb.e:                                             ; preds = %"_ZN8deranged22RangedI32$LT$_$C$_$GT$3get17hb9737181186c31f3E.exit6.i"
  %i.g = tail call i32 @_ZN9time_core7convert6Minute5per_t17h83dce844fca1cb41E() ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %"_ZN8deranged22RangedI32$LT$_$C$_$GT$3get17hb9737181186c31f3E.exit.i"

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr nonnull align 8 @11) #18
  unreachable

"_ZN8deranged22RangedI32$LT$_$C$_$GT$3get17hb9737181186c31f3E.exit.i": ; preds = %bb.e
  %i.i = tail call i32 @_ZN9time_core7convert6Second5per_t17he3d16b0139a9e4feE() ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZN4time10utc_offset9UtcOffset25from_whole_seconds_ranged17h1961a85082497eb3E.exit

bb.g:                                             ; preds = %"_ZN8deranged22RangedI32$LT$_$C$_$GT$3get17hb9737181186c31f3E.exit.i"
  tail call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h3e6118cf5f85921cE(ptr nonnull align 8 @12) #18
  unreachable

_ZN4time10utc_offset9UtcOffset25from_whole_seconds_ranged17h1961a85082497eb3E.exit: ; preds = %"_ZN8deranged22RangedI32$LT$_$C$_$GT$3get17hb9737181186c31f3E.exit.i"
  %i.k = srem i32 %1, %i.e
  %i.l = sdiv i32 %i.k, %i.g
  %i.m = sdiv i32 %1, %i.c
  %i.n = srem i32 %1, %i.i
  %i.o = trunc nsw i32 %i.m to i24
  %.sroa.3.0.insert.ext.i.i.i = shl i24 %i.o, 16
  %i.p = trunc nsw i32 %i.l to i24
  %.sroa.2.0.insert.ext.i.i.i = shl i24 %i.p, 8
  %.sroa.2.0.insert.shift.i.i.i = and i24 %.sroa.2.0.insert.ext.i.i.i, 65280
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i24 %.sroa.2.0.insert.shift.i.i.i, %.sroa.3.0.insert.ext.i.i.i
  %i.q = trunc nsw i32 %i.n to i24
  %.sroa.0.0.insert.ext.i.i.i = and i24 %i.q, 255
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i24 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i24 %.sroa.0.0.insert.insert.i.i.i, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.r, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @_ZN4time5error15component_range14ComponentRange13unconditional17h322e130f38a276ecE(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 1 @8, i64 7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4time10utc_offset9UtcOffset25from_whole_seconds_ranged17h1961a85082497eb3E.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_ZN4time16offset_date_time14OffsetDateTime14unix_timestamp17h0c167b1e9c2ccd5eE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #1 {
bb.a:
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1.0.copyload = load i32, ptr %.sroa.1.0..sroa_idx, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.a = tail call i32 @_ZN4time4date4Date13to_julian_day17h00f7920ede363b3eE(i32 %.sroa.1.0.copyload)
  %i.b = sext i32 %i.a to i64
  %i.c = add nsw i64 %i.b, -2440588
  %i.d = tail call i64 @_ZN9time_core7convert6Second5per_t17hcc6f885bed2c116dE()
  %i.e = mul i64 %i.c, %i.d
  %.sroa.08.0.copyload = load i64, ptr %0, align 4
  %.sroa.22.0.extract.shift.i.i = lshr i64 %.sroa.08.0.copyload, 48
  %i.f = and i64 %.sroa.22.0.extract.shift.i.i, 255
  %i.g = tail call i64 @_ZN9time_core7convert6Second5per_t17h4f3c7868130e9c26E()
  %i.h = mul i64 %i.f, %i.g
  %.sroa.010.0.copyload = load i64, ptr %0, align 4
  %.sroa.22.0.extract.shift.i.i3 = lshr i64 %.sroa.010.0.copyload, 40
  %i.i = and i64 %.sroa.22.0.extract.shift.i.i3, 255
  %i.j = tail call i64 @_ZN9time_core7convert6Second5per_t17h0446392046d58b37E()
  %i.k = mul i64 %i.i, %i.j
  %.sroa.012.0.copyload = load i64, ptr %0, align 4
  %.sroa.22.0.extract.shift.i.i6 = lshr i64 %.sroa.012.0.copyload, 32
  %i.l = and i64 %.sroa.22.0.extract.shift.i.i6, 255
  %.sroa.01.0.copyload = load i24, ptr %.sroa.2.0..sroa_idx, align 4 ; 3 uses
  %.sroa.01.0.extract.trunc.i = zext i24 %.sroa.01.0.copyload to i32
  %.sroa.22.0.extract.shift.i = lshr i24 %.sroa.01.0.copyload, 8
  %.sroa.22.0.extract.trunc.i.a = zext nneg i24 %.sroa.22.0.extract.shift.i to i32
  %.sroa.33.0.extract.shift.i = lshr i24 %.sroa.01.0.copyload, 16
  %.sroa.33.0.extract.trunc.i = zext nneg i24 %.sroa.33.0.extract.shift.i to i32
  %i.m = tail call i32 @_ZN9time_core7convert6Second5per_t17h69640db34a3af58aE()
  %i.n = tail call i32 @_ZN9time_core7convert6Second5per_t17he3d16b0139a9e4feE()
  %sext.i = shl nuw i32 %.sroa.33.0.extract.trunc.i, 24
  %1 = ashr exact i32 %sext.i, 24
  %i.o = mul i32 %1, %i.m
  %sext15.i.a = shl i32 %.sroa.22.0.extract.trunc.i.a, 24
  %i.p = ashr exact i32 %sext15.i.a, 24
  %i.q = mul i32 %i.p, %i.n
  %sext16.i = shl i32 %.sroa.01.0.extract.trunc.i, 24
  %i.r = ashr exact i32 %sext16.i, 24
  %i.s = add i32 %i.o, %i.r
  %i.t = add i32 %i.s, %i.q
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %i.h, %i.e
  %i.w = add i64 %i.v, %i.k
  %i.x = add i64 %i.w, %i.l
  %i.y = sub i64 %i.x, %i.u
  ret i64 %i.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_ZN4time16offset_date_time14OffsetDateTime17checked_to_offset17hdb52f34f500beedcE(ptr nofree writeonly sret([16 x i8]) align 4 captures(none) initializes((7, 8)) %0, ptr nofree readonly align 4 captures(none) %1, i24 %2) unnamed_addr #1 {
bb.a:
  %.sroa.017 = alloca [12 x i8], align 4          ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.07.0.copyload = load i24, ptr %i.a, align 4 ; 4 uses
  %i.b = icmp eq i24 %.sroa.07.0.copyload, %2
  br i1 %i.b, label %bb.z, label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit70.i

_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit70.i: ; preds = %bb.a
  %.sroa.019.0.copyload = load i64, ptr %1, align 4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.22.0.extract.shift.i.i.i = lshr i64 %.sroa.019.0.copyload, 32
  %.sroa.22.0.extract.trunc.i.i.i = trunc i64 %.sroa.22.0.extract.shift.i.i.i to i16
  %i.c = and i16 %.sroa.22.0.extract.trunc.i.i.i, 255
  %.sroa.01.0.extract.trunc.i.i = trunc i24 %.sroa.07.0.copyload to i8
  %i.d = sext i8 %.sroa.01.0.extract.trunc.i.i to i16
  %i.e = sub nsw i16 %i.c, %i.d
  %.sroa.01.0.extract.trunc.i73.i = trunc i24 %2 to i8
  %i.f = sext i8 %.sroa.01.0.extract.trunc.i73.i to i16
  %i.g = add nsw i16 %i.e, %i.f                   ; 9 uses
  %i.h = tail call i16 @_ZN9time_core7convert6Second5per_t17h749df18d8acf92ebE(), !noalias !12 ; 6 uses
  %i.i = icmp sgt i16 %i.g, -1
  br i1 %i.i, label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit69.i, label %bb.b

bb.b:                                             ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit70.i
  %i.j = sub i16 0, %i.h
  %.not.i = icmp slt i16 %i.g, %i.j
  br i1 %.not.i, label %bb.c, label %bb.d

_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit69.i: ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit70.i
  %i.k = icmp slt i16 %i.g, %i.h
  br i1 %i.k, label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit68.i, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = shl i16 %i.h, 1
  %i.m = add i16 %i.g, %i.l
  br label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit68.i

bb.d:                                             ; preds = %bb.b
  %i.n = add i16 %i.g, %i.h
  br label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit68.i

_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit68.i: ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit69.i
  %.sroa.6.0.i = phi i16 [ -2, %bb.c ], [ 1, %bb.g ], [ 2, %bb.f ], [ -1, %bb.d ], [ 0, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit69.i ]
  %.sroa.07.0.i = phi i16 [ %i.m, %bb.c ], [ %i.z, %bb.g ], [ %i.y, %bb.f ], [ %i.n, %bb.d ], [ %i.g, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit69.i ]
  %.sroa.22.0.extract.shift.i.i77.i = lshr i64 %.sroa.019.0.copyload, 40
  %.sroa.22.0.extract.trunc.i.i78.i = trunc i64 %.sroa.22.0.extract.shift.i.i77.i to i16
  %i.o = and i16 %.sroa.22.0.extract.trunc.i.i78.i, 255
  %.sroa.22.0.extract.shift.i.i = lshr i24 %.sroa.07.0.copyload, 8
  %.sroa.22.0.extract.trunc.i.i = trunc i24 %.sroa.22.0.extract.shift.i.i to i8
  %i.p = sext i8 %.sroa.22.0.extract.trunc.i.i to i16
  %.sroa.22.0.extract.shift.i79.i = lshr i24 %2, 8
  %.sroa.22.0.extract.trunc.i80.i = trunc i24 %.sroa.22.0.extract.shift.i79.i to i8
  %i.q = sext i8 %.sroa.22.0.extract.trunc.i80.i to i16
  %i.r = sub nsw i16 %i.q, %i.p
  %i.s = add nsw i16 %i.r, %i.o
  %i.t = add nsw i16 %i.s, %.sroa.6.0.i           ; 9 uses
  %i.u = tail call i16 @_ZN9time_core7convert6Minute5per_t17h0e8f98167b7111f3E(), !noalias !12 ; 6 uses
  %i.v = icmp sgt i16 %i.t, -1
  br i1 %i.v, label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit67.i, label %bb.h

bb.e:                                             ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit69.i
  %i.w = shl i16 %i.h, 1                          ; 2 uses
  %i.x = icmp slt i16 %i.g, %i.w
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = sub i16 %i.g, %i.w
  br label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit68.i

bb.g:                                             ; preds = %bb.e
  %i.z = sub i16 %i.g, %i.h
  br label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit68.i

bb.h:                                             ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit68.i
  %i.aa = sub i16 0, %i.u
  %.not63.i = icmp slt i16 %i.t, %i.aa
  br i1 %.not63.i, label %bb.i, label %bb.j

_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit67.i: ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit68.i
  %i.ab = icmp slt i16 %i.t, %i.u
  br i1 %i.ab, label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit66.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = shl i16 %i.u, 1
  %i.ad = add i16 %i.ac, %i.t
  br label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit66.i

bb.j:                                             ; preds = %bb.h
  %i.ae = add i16 %i.t, %i.u
  br label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit66.i

_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit66.i: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit67.i
  %.sroa.09.0.i = phi i16 [ %i.ad, %bb.i ], [ %i.an, %bb.m ], [ %i.am, %bb.l ], [ %i.ae, %bb.j ], [ %i.t, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit67.i ]
  %.sroa.610.0.i = phi i8 [ -2, %bb.i ], [ 1, %bb.m ], [ 2, %bb.l ], [ -1, %bb.j ], [ 0, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit67.i ]
  %.sroa.22.0.extract.shift.i.i82.i = lshr i64 %.sroa.019.0.copyload, 48
  %.sroa.22.0.extract.trunc.i.i83.i = trunc i64 %.sroa.22.0.extract.shift.i.i82.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i24 %.sroa.07.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i24 %.sroa.2.0.extract.shift.i.i to i8
  %.sroa.2.0.extract.shift.i84.i = lshr i24 %2, 16
  %.sroa.2.0.extract.trunc.i85.i = trunc nuw i24 %.sroa.2.0.extract.shift.i84.i to i8
  %i.af = sub i8 %.sroa.2.0.extract.trunc.i85.i, %.sroa.2.0.extract.trunc.i.i
  %i.ag = add i8 %i.af, %.sroa.22.0.extract.trunc.i.i83.i
  %i.ah = add i8 %i.ag, %.sroa.610.0.i            ; 13 uses
  %i.ai = tail call i8 @_ZN9time_core7convert4Hour5per_t17h335f3714262e0969E(), !noalias !12 ; 8 uses
  %i.aj = icmp sgt i8 %i.ah, -1
  br i1 %i.aj, label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit.i, label %bb.n

bb.k:                                             ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit67.i
  %i.ak = shl i16 %i.u, 1                         ; 2 uses
  %i.al = icmp slt i16 %i.t, %i.ak
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = sub i16 %i.t, %i.ak
  br label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit66.i

bb.m:                                             ; preds = %bb.k
  %i.an = sub i16 %i.t, %i.u
  br label %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit66.i

bb.n:                                             ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit66.i
  %i.ao = sub i8 0, %i.ai                         ; 2 uses
  %.not64.i = icmp slt i8 %i.ah, %i.ao
  br i1 %.not64.i, label %bb.o, label %bb.p

_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit.i:  ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit66.i
  %i.ap = icmp slt i8 %i.ah, %i.ai
  br i1 %i.ap, label %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.aq = shl i8 %i.ao, 1
  %.not65.i = icmp slt i8 %i.ah, %i.aq
  br i1 %.not65.i, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ar = add i8 %i.ah, %i.ai
  br label %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i

bb.q:                                             ; preds = %bb.o
  %i.as = mul i8 %i.ai, 3
  %i.at = add i8 %i.ah, %i.as
  br label %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i

bb.r:                                             ; preds = %bb.o
  %i.au = shl i8 %i.ai, 1
  %i.av = add i8 %i.ah, %i.au
  br label %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i

_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.r, %bb.q, %bb.p, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit.i
  %.sroa.014.0.i = phi i8 [ %i.at, %bb.q ], [ %i.bg, %bb.u ], [ %i.bi, %bb.w ], [ %i.bh, %bb.v ], [ %i.ar, %bb.p ], [ %i.av, %bb.r ], [ %i.ah, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit.i ]
  %.sroa.8.0.i = phi i16 [ -3, %bb.q ], [ 1, %bb.u ], [ 2, %bb.w ], [ 3, %bb.v ], [ -1, %bb.p ], [ -2, %bb.r ], [ 0, %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit.i ]
  %i.aw = tail call { i32, i16 } @_ZN4time4date4Date15to_ordinal_date17h3db14596460d033eE(i32 %.sroa.6.0.copyload), !noalias !12 ; 2 uses
  %i.ax = extractvalue { i32, i16 } %i.aw, 0      ; 4 uses
  %i.ay = extractvalue { i32, i16 } %i.aw, 1
  %i.az = add i16 %i.ay, %.sroa.8.0.i             ; 5 uses
  %i.ba = tail call i16 @_ZN9time_core4util15range_validated12days_in_year17h7f84aa733a3080d1E(i32 %i.ax, ptr nonnull align 8 @14), !noalias !12 ; 2 uses
  %i.bb = icmp sgt i16 %i.az, %i.ba
  br i1 %i.bb, label %bb.x, label %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit.i

bb.s:                                             ; preds = %_ZN4time4hint6likely17h7e112b1fc78c9d50E.exit.i
  %i.bc = shl i8 %i.ai, 1                         ; 2 uses
  %i.bd = icmp slt i8 %i.ah, %i.bc
  br i1 %i.bd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = mul i8 %i.ai, 3                         ; 2 uses
  %i.bf = icmp slt i8 %i.ah, %i.be
  br i1 %i.bf, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bg = sub i8 %i.ah, %i.ai
  br label %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i

bb.v:                                             ; preds = %bb.t
  %i.bh = sub i8 %i.ah, %i.be
  br label %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i

bb.w:                                             ; preds = %bb.t
  %i.bi = sub i8 %i.ah, %i.bc
  br label %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i

_ZN4time4hint8unlikely17ha7b59ec785536110E.exit.i: ; preds = %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i
  %i.bj = icmp slt i16 %i.az, 1
  br i1 %i.bj, label %bb.y, label %_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h05e3dc4d4b846422E.exit

bb.x:                                             ; preds = %_ZN4time4hint8unlikely17ha7b59ec785536110E.exit71.i
end_hunk_1
