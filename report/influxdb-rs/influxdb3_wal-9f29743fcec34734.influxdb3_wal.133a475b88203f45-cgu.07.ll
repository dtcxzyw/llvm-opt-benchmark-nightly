Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_wal-9f29743fcec34734.influxdb3_wal.133a475b88203f45-cgu.07?download=true
inline.NumInlined: 105
inline.NumDeleted: 75
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs1ElB0qm0ygX_13influxdb3_wal, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCs1ElB0qm0ygX_13influxdb3_wal, ptr @_RNvYINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charCs1ElB0qm0ygX_13influxdb3_wal, ptr @_RNvYINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs1ElB0qm0ygX_13influxdb3_wal }>, align 8
@1 = private unnamed_addr constant [86 x i8] c"a formatting trait implementation returned an error when the underlying stream did not", align 1
@2 = private unnamed_addr constant [114 x i8] c"/home/opt-bench/.rustup/toolchains/1.97.1-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/io/mod.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"q\00\00\00\00\00\00\00w\02\00\00\11\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsNtB6_5Debug3fmtBy_ }>, align 8
@5 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/indexmap-2.14.0/src/inner.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"a\00\00\00\00\00\00\00.\00\00\00#\00\00\00" }>, align 8
@7 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/indexmap-2.14.0/src/inner/entry.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"g\00\00\00\00\00\00\00E\00\00\00\1E\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"a\00\00\00\00\00\00\00\F3\01\00\00\1A\00\00\00" }>, align 8
@_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS = external global { { { { ptr } } }, {} }
@10 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char, ptr @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs1ElB0qm0ygX_13influxdb3_wal }>, align 8
@11 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@12 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @11, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"q\00\00\00\00\00\00\00H\07\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr nonnull %.val)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs1ElB0qm0ygX_13influxdb3_wal.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1ElB0qm0ygX_13influxdb3_wal.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1ElB0qm0ygX_13influxdb3_wal.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs1ElB0qm0ygX_13influxdb3_wal.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs1ElB0qm0ygX_13influxdb3_wal.exit
    i64 1, label %bb.c
  ], !prof !4

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !3, !align !5, !noundef !3 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !6, !invariant.load !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !8, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #17
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs1ElB0qm0ygX_13influxdb3_wal.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i.i
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsBM_EBO_(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYBW_NtNtBa_3cmp10PartialOrd2ltEBY_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef range(i64 0, 144115188075855872) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.v, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.v ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.bn, %bb.v ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.bl, %bb.v ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit
  %.sroa.021.0 = phi i8 [ %i.ae, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 5 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.09.0 ; 3 uses
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %4, label %bb.n, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %.val8.i = load i64, ptr %i.p, align 8, !range !13, !alias.scope !14, !noalias !15, !noundef !3
  %.val9.i = load i64, ptr %i.n, align 8, !alias.scope !14, !noalias !15
  %i.q = icmp eq i64 %.val8.i, -1                 ; 2 uses
  %i.r = icmp eq i64 %.val9.i, -1                 ; 2 uses
  %or.cond.i.i.i.i = select i1 %i.q, i1 true, i1 %i.r
  %or.cond.not.i.i.i.i = xor i1 %or.cond.i.i.i.i, true
  %or.cond3.i.i.i.i = select i1 %or.cond.not.i.i.i.i, i1 true, i1 %i.r
  br i1 %or.cond3.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.assume(i1 %i.q)
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a: ; preds = %bb.k, %bb.l, %bb.j
  %i.s = shl nuw nsw i64 %i.m, 1
  %6 = or disjoint i64 %i.s, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

bb.m:                                             ; preds = %bb.i
  %.sroa.0.0.i14.i = tail call noundef range(i64 0, 144115188075855872) i64 @llvm.umin.i64(i64 range(i64 0, 88686269585142076) %i.m, i64 %.sroa.01.0)
  %i.t = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

bb.n:                                             ; preds = %bb.i
  %.sroa.0.0.i15.i = tail call noundef range(i64 0, 144115188075855872) i64 @llvm.umin.i64(i64 range(i64 0, 88686269585142076) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i15.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull %5)
  %i.u = shl nuw nsw i64 %.sroa.0.0.i15.i, 1
  %i.v = or disjoint i64 %i.u, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit: ; preds = %bb.m, %bb.n, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a
  %.sroa.0.0.i34 = phi i64 [ %6, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a ], [ %i.v, %bb.n ], [ %i.t, %bb.m ] ; 2 uses
  %i.w = lshr i64 %.sroa.023.0, 1
  %i.x = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.y = sub nsw i64 %factor, %i.w
  %i.z = add nuw i64 %i.x, %factor
  %i.aa = mul i64 %i.y, %.sroa.0.0
  %i.ab = mul i64 %i.z, %.sroa.0.0
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false)
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit
  %.sroa.02.136 = phi i64 [ %i.af, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.af = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.ah, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.aj, align 1
  br i1 %i.k, label %bb.v, label %bb.w

bb.o:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.af
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3 ; 3 uses
  %i.am = lshr i64 %i.al, 1                       ; 5 uses
  %i.an = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.ao = add nuw i64 %i.am, %i.an                ; 5 uses
  %i.ap = sub i64 %.sroa.09.0, %i.ao
  %i.aq = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.ap ; 3 uses
  %i.ar = icmp samesign ugt i64 %i.ao, %3
  %i.as = trunc i64 %.sroa.023.135 to i1
  %i.at = or i64 %i.al, %.sroa.023.135
  %i.au = trunc i64 %i.at to i1
  %or.cond3.i = or i1 %i.ar, %i.au
  br i1 %or.cond3.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = trunc i64 %i.al to i1
  br i1 %i.av, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.aw = shl nuw nsw i64 %i.ao, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

bb.r:                                             ; preds = %bb.s, %bb.p
  br i1 %i.as, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.ax = or i64 %i.am, 1
  %i.ay = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 1
  %i.bb = xor i32 %i.ba, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8 %i.aq, i64 noundef range(i64 0, 88686269585142076) %i.am, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull %5)
  br label %bb.r

bb.t:                                             ; preds = %bb.u, %bb.r
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_(ptr noalias noundef nonnull align 8 %i.aq, i64 noundef range(i64 0, 88686269585142076) %i.ao, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i64 noundef %i.am, ptr noalias noundef nonnull %5)
  %i.bc = shl nuw nsw i64 %i.ao, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

bb.u:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw [104 x i8], ptr %i.aq, i64 %i.am
  %i.bf = or i64 %i.an, 1
  %i.bg = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = xor i32 %i.bi, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8 %i.be, i64 noundef range(i64 0, 88686269585142076) %i.an, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull %5)
  br label %bb.t

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit: ; preds = %bb.q, %bb.t
  %.sroa.0.0.i = phi i64 [ %i.bd, %bb.t ], [ %i.aw, %bb.q ] ; 2 uses
  %i.bk = icmp ugt i64 %i.af, 1
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

bb.v:                                             ; preds = %._crit_edge
  %i.bl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.bm = lshr i64 %.sroa.018.0, 1
  %i.bn = add nuw i64 %i.bm, %.sroa.09.0
  br label %bb.f

bb.w:                                             ; preds = %._crit_edge
  %i.bo = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.bo, 0
  br i1 %.not31, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bp = or i64 %1, 1
  %i.bq = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull %5)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.y
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !18, !noundef !3
  %i.a = zext i32 %.val.i to i64
  %i.b = mul i64 %i.a, -1065810590584100411       ; 2 uses
  %i.c = tail call noundef i64 @llvm.fshl.i64(i64 %i.b, i64 %i.b, i64 26)
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtNtCs96Uix8yqi9Q_8indexmap3map5entryINtB2_5EntryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE10or_defaultB1t_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = load i64, ptr %0, align 8, !range !30, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.f, align 8 ; 13 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 5 uses
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.54.0.copyload = load i32, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs8_Cs1ElB0qm0ygX_13influxdb3_walNtB5_11TableChunksNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !31, !noalias !32, !noundef !3 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !31, !noalias !32, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !31, !noalias !32, !noundef !3
  %i.n = invoke noundef nonnull ptr @_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCs96Uix8yqi9Q_8indexmap5inner8get_hashNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE0EB2l_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.sroa.43.0.copyload, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %bb.c unwind label %bb.m, !noalias !32 ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.o = load i64, ptr %i.l, align 8, !alias.scope !35, !noalias !36, !noundef !3 ; 6 uses
  %i.p = icmp ult i64 %i.o, 144115188075855872
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load i64, ptr %.sroa.02.0.copyload, align 8, !range !6, !alias.scope !35, !noalias !36, !noundef !3
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.h, align 8, !alias.scope !37, !noalias !36, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 40
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !37, !noalias !36, !noundef !3
  %i.v = add i64 %i.u, %i.s
  %.sroa.0.0.i.i.i.i = tail call noundef range(i64 0, 144115188075855872) i64 @llvm.umin.i64(i64 %i.v, i64 144115188075855871)
  %i.w = sub nsw i64 %.sroa.0.0.i.i.i.i, %i.o     ; 2 uses
  %i.x = icmp ugt i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc4.i.i, %bb.d
  %i.y = phi i64 [ %i.o, %bb.d ], [ %.pre10.i.i, %.noexc4.i.i ]
  invoke void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.02.0.copyload, i64 noundef %i.y, i64 noundef 1, i64 noundef 8, i64 noundef 64)
          to label %._RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit_crit_edge.i.i unwind label %bb.i, !noalias !36

._RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit_crit_edge.i.i: ; preds = %._crit_edge.i.i.i
  %.pre.i.i = load i64, ptr %i.l, align 8, !alias.scope !38, !noalias !39
  br label %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.02.0.copyload, i64 noundef %i.o, i64 noundef %i.w, i64 noundef 8, i64 noundef 64)
          to label %.noexc4.i.i unwind label %bb.i, !noalias !36

.noexc4.i.i:                                      ; preds = %bb.e
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = icmp eq i64 %i.aa, -1
  %.pre10.i.i = load i64, ptr %i.l, align 8, !alias.scope !35, !noalias !36 ; 2 uses
  br i1 %i.ab, label %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i, label %._crit_edge.i.i.i

_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i: ; preds = %.noexc4.i.i, %._RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit_crit_edge.i.i, %bb.c
  %i.ac = phi i64 [ %.pre.i.i, %._RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit_crit_edge.i.i ], [ %.pre10.i.i, %.noexc4.i.i ], [ %i.o, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !31
end_hunk_0
