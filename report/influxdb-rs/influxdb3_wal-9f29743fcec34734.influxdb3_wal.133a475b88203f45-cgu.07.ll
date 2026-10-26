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
  br i1 %i.c, label %bb.w, label %bb.b

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
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.s, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.s ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.bj, %bb.s ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.bh, %bb.s ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit
  %.sroa.021.0 = phi i8 [ %i.aa, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 4 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.09.0
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %4, label %bb.j, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a: ; preds = %bb.i
  %i.o = shl nuw nsw i64 %i.m, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i14.i = tail call noundef range(i64 0, 144115188075855872) i64 @llvm.umin.i64(i64 range(i64 0, 88686269585142076) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i14.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull %5)
  %i.p = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %6 = or disjoint i64 %i.p, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

bb.k:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.m, 1
  %i.r = or disjoint i64 %i.q, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB13_NtNtBa_3cmp10PartialOrd2ltEB15_.exit: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a, %bb.j, %bb.k
  %.sroa.0.0.i34 = phi i64 [ %i.r, %bb.k ], [ %6, %bb.j ], [ %i.o, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB12_NtNtB8_3cmp10PartialOrd2ltEB14_.exit.i.a ] ; 2 uses
  %i.s = lshr i64 %.sroa.023.0, 1
  %i.t = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.u = sub nsw i64 %factor, %i.s
  %i.v = add nuw i64 %i.t, %factor
  %i.w = mul i64 %i.u, %.sroa.0.0
  %i.x = mul i64 %i.v, %.sroa.0.0
  %i.y = xor i64 %i.x, %i.w
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 false)
  %i.aa = trunc nuw nsw i64 %i.z to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit
  %.sroa.02.136 = phi i64 [ %i.ab, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ab = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.ad, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.af, align 1
  br i1 %i.k, label %bb.s, label %bb.t

bb.l:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ab
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !3 ; 3 uses
  %i.ai = lshr i64 %i.ah, 1                       ; 5 uses
  %i.aj = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.ak = add nuw i64 %i.ai, %i.aj                ; 5 uses
  %i.al = sub i64 %.sroa.09.0, %i.ak
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.al ; 3 uses
  %i.an = icmp samesign ugt i64 %i.ak, %3
  %i.ao = trunc i64 %.sroa.023.135 to i1
  %i.ap = or i64 %i.ah, %.sroa.023.135
  %i.aq = trunc i64 %i.ap to i1
  %or.cond3.i = or i1 %i.an, %i.aq
  br i1 %or.cond3.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = trunc i64 %i.ah to i1
  br i1 %i.ar, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.as = shl nuw nsw i64 %i.ak, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

bb.o:                                             ; preds = %bb.p, %bb.m
  br i1 %i.ao, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.at = or i64 %i.ai, 1
  %i.au = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 1
  %i.ax = xor i32 %i.aw, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8 %i.am, i64 noundef range(i64 0, 88686269585142076) %i.ai, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull %5)
  br label %bb.o

bb.q:                                             ; preds = %bb.r, %bb.o
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_(ptr noalias noundef nonnull align 8 %i.am, i64 noundef range(i64 0, 88686269585142076) %i.ak, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i64 noundef %i.ai, ptr noalias noundef nonnull %5)
  %i.ay = shl nuw nsw i64 %i.ak, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit

bb.r:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw [104 x i8], ptr %i.am, i64 %i.ai
  %i.bb = or i64 %i.aj, 1
  %i.bc = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 1
  %i.bf = xor i32 %i.be, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8 %i.ba, i64 noundef range(i64 0, 88686269585142076) %i.aj, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull %5)
  br label %bb.q

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB16_NtNtBa_3cmp10PartialOrd2ltEB18_.exit: ; preds = %bb.n, %bb.q
  %.sroa.0.0.i = phi i64 [ %i.az, %bb.q ], [ %i.as, %bb.n ] ; 2 uses
  %i.bg = icmp ugt i64 %i.ab, 1
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

bb.s:                                             ; preds = %._crit_edge
  %i.bh = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.bi = lshr i64 %.sroa.018.0, 1
  %i.bj = add nuw i64 %i.bi, %.sroa.09.0
  br label %bb.f

bb.t:                                             ; preds = %._crit_edge
  %i.bk = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.bk, 0
  br i1 %.not31, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bl = or i64 %1, 1
  %i.bm = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.bl, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = xor i32 %i.bo, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull %5)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load i32, ptr %1, align 4, !noalias !11, !noundef !3
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
  %i.d = load i64, ptr %0, align 8, !range !23, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 48 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !24, !noundef !3 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !24, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !24, !noundef !3
  %i.n = invoke noundef nonnull ptr @_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCs96Uix8yqi9Q_8indexmap5inner8get_hashNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE0EB2l_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.sroa.43.0.copyload, i64 noundef %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %bb.c unwind label %bb.m, !noalias !25 ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.o = load i64, ptr %i.l, align 8, !alias.scope !28, !noundef !3 ; 6 uses
  %i.p = icmp ult i64 %i.o, 144115188075855872
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load i64, ptr %.sroa.02.0.copyload, align 8, !range !6, !alias.scope !28, !noundef !3
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.h, align 8, !alias.scope !29, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 40
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !29, !noundef !3
  %i.v = add i64 %i.u, %i.s
  %.sroa.0.0.i.i.i.i = tail call noundef range(i64 0, 144115188075855872) i64 @llvm.umin.i64(i64 %i.v, i64 144115188075855871)
  %i.w = sub nsw i64 %.sroa.0.0.i.i.i.i, %i.o     ; 2 uses
  %i.x = icmp ugt i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc4.i.i, %bb.d
  %i.y = phi i64 [ %i.o, %bb.d ], [ %.pre10.i.i, %.noexc4.i.i ]
  invoke void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.02.0.copyload, i64 noundef %i.y, i64 noundef 1, i64 noundef 8, i64 noundef 64)
          to label %._RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit_crit_edge.i.i unwind label %bb.i, !noalias !30

._RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit_crit_edge.i.i: ; preds = %._crit_edge.i.i.i
  %.pre.i.i = load i64, ptr %i.l, align 8, !alias.scope !31
  br label %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.z = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.02.0.copyload, i64 noundef %i.o, i64 noundef %i.w, i64 noundef 8, i64 noundef 64)
          to label %.noexc4.i.i unwind label %bb.i, !noalias !30

.noexc4.i.i:                                      ; preds = %bb.e
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = icmp eq i64 %i.aa, -1
  %.pre10.i.i = load i64, ptr %i.l, align 8, !alias.scope !28 ; 2 uses
  br i1 %i.ab, label %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i, label %._crit_edge.i.i.i

_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i: ; preds = %.noexc4.i.i, %._RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit_crit_edge.i.i, %bb.c
  %i.ac = phi i64 [ %.pre.i.i, %._RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit_crit_edge.i.i ], [ %.pre10.i.i, %.noexc4.i.i ], [ %i.o, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.43.0.copyload, ptr %i.ad, align 8, !noalias !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %.sroa.54.0.copyload, ptr %i.ae, align 8, !noalias !32
  %i.af = load i64, ptr %.sroa.02.0.copyload, align 8, !range !6, !alias.scope !31, !noundef !3
  %i.ag = icmp eq i64 %i.ac, %i.af
  br i1 %i.ag, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEE8grow_oneB1W_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.02.0.copyload)
          to label %bb.k unwind label %bb.g, !noalias !33

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTxNtCs1ElB0qm0ygX_13influxdb3_wal10TableChunkENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef 32, i64 noundef 16)
          to label %.body.thread.i unwind label %bb.h, !noalias !30

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !30
  unreachable

bb.i:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTxNtCs1ElB0qm0ygX_13influxdb3_wal10TableChunkENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 32, i64 noundef 16)
          to label %.body.thread.i unwind label %bb.j, !noalias !25

bb.j:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !25
  unreachable

bb.k:                                             ; preds = %bb.f, %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_.exit.i.i
  %i.an = load ptr, ptr %i.j, align 8, !alias.scope !31, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !30
  %i.ap = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ap, ptr %i.l, align 8, !alias.scope !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26
  %i.aq = icmp ult i64 %i.i, %i.ap
  br i1 %i.aq, label %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE13insert_uniqueB1o_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18, !noalias !25
  unreachable

bb.m:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTxNtCs1ElB0qm0ygX_13influxdb3_wal10TableChunkENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef 32, i64 noundef 16)
          to label %.body.thread.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

.body.thread.i:                                   ; preds = %bb.m, %bb.i, %bb.g
  %eh.lpad-body6.i = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.ak, %bb.i ], [ %i.ah, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body6.i

_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE13insert_uniqueB1o_.exit: ; preds = %bb.k
  %i.au = load ptr, ptr %i.j, align 8, !alias.scope !24, !nonnull !3, !noundef !3
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.o:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !3 ; 2 uses
  %i.ay = icmp ult i64 %.sroa.43.0.copyload, %i.ax
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %.sroa.43.0.copyload
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.43.0.copyload, i64 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18
  unreachable

bb.r:                                             ; preds = %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE13insert_uniqueB1o_.exit, %bb.p
  %.sroa.0.0 = phi ptr [ %i.av, %_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE13insert_uniqueB1o_.exit ], [ %i.bb, %bb.p ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs96Uix8yqi9Q_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE3newB1J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(56) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.g = lshr i64 %2, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !47, !noundef !3 ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !47, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.011.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.e ]
  %.pn.i.i = phi i64 [ %2, %bb.a ], [ %i.ah, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.j        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.n, align 1, !noalias !48 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not38.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not38.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.i39.i = phi i16 [ %i.af, %bb.d ], [ %i.p, %bb.b ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i39.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %.val.i.i = load i64, ptr %i.w, align 8, !noalias !49, !noundef !3 ; 3 uses
  %i.x = icmp ult i64 %.val.i.i, %i.e
  br i1 %i.x, label %_RNCINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1K_E0E0B2o_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18, !noalias !50
  unreachable

_RNCINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1K_E0E0B2o_.exit.i: ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.val.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %.val2.i.i.i = load i32, ptr %i.z, align 4, !noalias !50, !noundef !3
  %i.aa = icmp eq i32 %3, %.val2.i.i.i
  br i1 %i.aa, label %_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1I_E0EB2m_.exit, label %bb.d, !prof !51

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !7

bb.d:                                             ; preds = %_RNCINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1K_E0E0B2o_.exit.i
  %i.ae = add i16 %.sroa.05.0.i39.i, -1
  %i.af = and i16 %i.ae, %.sroa.05.0.i39.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = add i64 %.sroa.011.0.i.i, 16            ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i, %i.ag
  br label %bb.b

_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1I_E0EB2m_.exit: ; preds = %_RNCINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1K_E0E0B2o_.exit.i
  %i.ai = getelementptr inbounds i8, ptr %i.v, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.v, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.aj, align 8
  %i.ak = call noundef i64 @_RNvMsb_NtCs2cNydW9rzW9_9hashbrown5tableINtB5_13OccupiedEntryjE12bucket_indexCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.al = load i64, ptr %i.ai, align 8, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ak, ptr %.sroa.52.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.an, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %.sroa.55.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1I_E0EB2m_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsc96bKABWO34_9hashbrownxINtB2_10EquivalentxE10equivalentCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !3
  %.val1 = load i64, ptr %1, align 8, !noundef !3
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread12, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.h
  %.sroa.0.047.i = phi ptr [ %.sroa.0.122.i, %bb.h ], [ %1, %bb.a ] ; 3 uses
  %.sroa.6.046.i = phi i64 [ %.sroa.6.120.i, %bb.h ], [ %2, %bb.a ] ; 6 uses
  %i.c = tail call { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.047.i, i64 noundef %.sroa.6.046.i) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 11 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 7 uses
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = and i64 %i.f, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %bb.g
    i64 0, label %.split42.i
    i64 1, label %.split41.i
  ], !prof !4

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = icmp eq ptr %i.e, null
  br i1 %i.i, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.6.046.i, %i.f
  br i1 %i.j, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %.sroa.6.046.i, i64 noundef %.sroa.6.046.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = sub nuw nsw i64 %.sroa.6.046.i, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i, i64 %i.f
  br label %bb.h

.split.i:                                         ; preds = %bb.b
  %.mask.i = and i64 %i.f, -4294967296
  %i.m = icmp eq i64 %.mask.i, 17179869184
  br i1 %i.m, label %.thread.i, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit

.split42.i:                                       ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !52, !noundef !3
  %i.p = icmp eq i8 %i.o, 35
  br i1 %i.p, label %.thread.i, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread

.split41.i:                                       ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.e, i64 15
  %i.r = load i8, ptr %i.q, align 8, !range !52, !noundef !3
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.thread.i, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.t = lshr i64 %i.f, 32
  %i.u = icmp ult ptr %i.e, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.t to i8
  %spec.select.i.i.i = select i1 %i.u, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.v = icmp ne i8 %spec.select.i.i.i, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.w, label %.thread.i, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit

.thread.i:                                        ; preds = %bb.g, %.split41.i, %.split42.i, %.split.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr %i.e)
  br label %bb.h

bb.h:                                             ; preds = %.thread.i, %bb.f
  %.sroa.0.122.i = phi ptr [ %.sroa.0.047.i, %.thread.i ], [ %i.l, %bb.f ]
  %.sroa.6.120.i = phi i64 [ %.sroa.6.046.i, %.thread.i ], [ %i.k, %bb.f ] ; 2 uses
  %i.x = icmp eq i64 %.sroa.6.120.i, 0
  br i1 %i.x, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread12, label %.lr.ph.i

_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %.split.i, %bb.g
  %.not.not = icmp eq ptr %i.e, null
  br i1 %.not.not, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread12, label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread

_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread: ; preds = %.split41.i, %.split42.i, %bb.c, %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit
  %.sroa.07.0.i8 = phi ptr [ %i.e, %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit ], [ @12, %bb.c ], [ %i.e, %.split42.i ], [ %i.e, %.split41.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.y, align 8, !noundef !3 ; 2 uses
  %i.z = icmp eq ptr %.val, null
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.i

bb.i:                                             ; preds = %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr nonnull %.val)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs1ElB0qm0ygX_13influxdb3_wal.exit unwind label %bb.j

_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread12: ; preds = %bb.h, %bb.a, %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs1ElB0qm0ygX_13influxdb3_wal.exit
  %.not9 = phi i1 [ false, %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs1ElB0qm0ygX_13influxdb3_wal.exit ], [ false, %bb.a ], [ false, %bb.h ]
  ret i1 %.not9

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.07.0.i8, ptr %i.y, align 8
  resume { ptr, i32 } %i.aa

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread, %bb.i
  store ptr %.sroa.07.0.i8, ptr %i.y, align 8
  br label %_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs1ElB0qm0ygX_13influxdb3_wal.exit.thread12
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs1ElB0qm0ygX_13influxdb3_wal(ptr noundef nonnull align 8 @_RNvNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !55 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x i64>, ptr %i.a, align 8, !noalias !55
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.e, ptr %i.c, align 8, !alias.scope !55
  %i.f = load <2 x i64>, ptr %i.b, align 8, !noalias !55
  store <2 x i64> %i.f, ptr %0, align 8, !alias.scope !55
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !3, !noalias !59, !nonnull !3
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !58
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtB1q_4SyncEL_ENtB6_7Display3fmtCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !5, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !3, !noalias !63, !nonnull !3
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !inline_history !62
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !66
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodNtNtBO_5alloc6GlobalEEB2c_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 4 uses
  %i.k = icmp ult i64 %i.j, 384307168202282326
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodNtNtBO_5alloc6GlobalEEB2c_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.j
  %i.s = mul i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodNtNtBO_5alloc6GlobalEEB2c_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodNtNtBO_5alloc6GlobalEEB2c_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !3 ; 4 uses
  %i.x = icmp ult i64 %i.w, 384307168202282326
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !3 ; 2 uses
  %.not3.i.i6 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodNtNtBO_5alloc6GlobalEEB2c_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.w
  %i.af = mul i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !69, !noundef !3 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !69, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !69, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !69
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !76, !noundef !3 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !76, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !76
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !76
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs1LivM9IBWqb_12object_store9PutResultNtB2c_5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCs1LivM9IBWqb_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1u_4pollCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.c(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot8ReceiverNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsENtNtB8_6marker4SendEL_EEB1u_4pollB2D_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  %i.d = tail call { i64, ptr } %i.c(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core6future6futureINtNtB8_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Futurep6OutputuNtNtB8_6marker4SendEL_EEB1u_4pollCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !3, !align !5, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !3, !nonnull !3
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write10write_charCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !79
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !79
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !79
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !79
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !79
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !79
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !79
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !79
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !79
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !79
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXNvNtCs2AWtUsOyxgP_3std2io17default_write_fmtINtB2_7AdapterNtNtNtNtB6_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_strCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtB9_3sys5stdio4unix6StderrENtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBV_3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCs1ElB0qm0ygX_13influxdb3_wal.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !80
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtQNtNtCscdodAO9FK5_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs1ElB0qm0ygX_13influxdb3_wal.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @10, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !81
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86
  store ptr %0, ptr %i.a, align 8, !noalias !86
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr null, ptr %i.b, align 8, !noalias !86
  %i.c = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !87, !noalias !86, !noundef !3 ; 2 uses
  %i.e = icmp eq ptr %.val.i.i, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs1ElB0qm0ygX_13influxdb3_wal.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr nonnull %.val.i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs1ElB0qm0ygX_13influxdb3_wal.exit.i unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !noalias !86, !noundef !3 ; 3 uses
  %.not.i5 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i5, label %bb.h, label %_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs1ElB0qm0ygX_13influxdb3_wal.exit, !prof !7

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i5, label %_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs1ElB0qm0ygX_13influxdb3_wal(ptr nonnull %i.f)
  br label %_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.h:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs1ElB0qm0ygX_13influxdb3_wal.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i6 = phi ptr [ %i.f, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !86
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtCs1ElB0qm0ygX_13influxdb3_wal15SnapshotDetailsNtB6_5Debug3fmtBy_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef range(i8 0, 3), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYB15_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 88686269585142076), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 88686269585142076), i32 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104), ptr noalias noundef nonnull) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpNvYBX_NtNtBa_3cmp10PartialOrd2ltEBZ_(ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 88686269585142076), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 88686269585142076), i64 noundef, ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_Cs1ElB0qm0ygX_13influxdb3_walNtB5_11TableChunksNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMsb_NtCs2cNydW9rzW9_9hashbrown5tableINtB5_13OccupiedEntryjE12bucket_indexCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEE8grow_oneB1W_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtCs96Uix8yqi9Q_8indexmap5inner8get_hashNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE0EB2l_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs1ElB0qm0ygX_13influxdb3_wal(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTxNtCs1ElB0qm0ygX_13influxdb3_wal10TableChunkENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1o_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!5 = !{i64 8}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 1, i64 536870913}
!9 = distinct !{!9, i1 true, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtB8_4Hash4hashNtCsk6FPlRoJNeq_10rustc_hash8FxHasherECs1ElB0qm0ygX_13influxdb3_wal"}
!10 = distinct !{!10, !9, !"_RINvXs3_NtNtCs4NRVxsYgnAr_4core4hash5implsRNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtB8_4Hash4hashNtCsk6FPlRoJNeq_10rustc_hash8FxHasherECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!11 = !{!10}
!12 = distinct !{!12, i1 true, !"_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE13insert_uniqueB1o_"}
!13 = distinct !{!13, !12, !"_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE13insert_uniqueB1o_: argument 0"}
!14 = distinct !{!14, !12, !"_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE13insert_uniqueB1o_: argument 1"}
!15 = distinct !{!15, i1 true, !"_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE10push_entryB1o_"}
!16 = distinct !{!16, !15, !"_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE10push_entryB1o_: argument 0"}
!17 = distinct !{!17, i1 true, !"_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_"}
!18 = distinct !{!18, !17, !"_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE15reserve_entriesB1o_: argument 0"}
!19 = distinct !{!19, !15, !"_RNvMs_NtCs96Uix8yqi9Q_8indexmap5innerINtB4_4CoreNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksE10push_entryB1o_: argument 1"}
!20 = distinct !{!20, i1 true, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEE8push_mutB1P_"}
!21 = distinct !{!21, !20, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEE8push_mutB1P_: argument 0"}
!22 = distinct !{!22, !20, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEE8push_mutB1P_: argument 1"}
!23 = !{i64 0, i64 2}
!24 = !{!13}
!25 = !{!14}
!26 = !{!13, !14}
!27 = !{!16}
!28 = !{!16, !13}
!29 = !{!18, !16, !13}
!30 = !{!19, !14}
!31 = !{!21, !16, !13}
!32 = !{!16, !19, !13, !14}
!33 = !{!22, !19, !14}
!34 = distinct !{!34, i1 true, !"_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1I_E0EB2m_"}
!35 = distinct !{!35, !34, !"_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1I_E0EB2m_: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvMsa_NtCs2cNydW9rzW9_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!37 = distinct !{!37, !36, !"_RNvMsa_NtCs2cNydW9rzW9_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!38 = distinct !{!38, !34, !"_RINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB6_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1I_E0EB2m_: argument 1"}
!39 = distinct !{!39, i1 true, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!40 = distinct !{!40, !39, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!41 = distinct !{!41, i1 true, !"_RNCINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1K_E0E0B2o_"}
!42 = distinct !{!42, !41, !"_RNCINvMs6_NtCs2cNydW9rzW9_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksB1K_E0E0B2o_: argument 0"}
!43 = distinct !{!43, i1 true, !"_RNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksBL_E0B1p_"}
!44 = distinct !{!44, !43, !"_RNCINvNtCs96Uix8yqi9Q_8indexmap5inner10equivalentNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksBL_E0B1p_: argument 0"}
!45 = !{!35}
!46 = !{!37}
!47 = !{!37, !35}
!48 = !{!40, !37, !35, !38}
!49 = !{!42, !37, !35, !38}
!50 = !{!44, !42, !37, !35, !38}
!51 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!52 = !{i8 0, i8 42}
!53 = distinct !{!53, i1 true, !"_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default"}
!54 = distinct !{!54, !53, !"_RNvXs0_Cs3L39Jvi82fL_5ahashNtNtB5_13fallback_hash7AHasherNtNtCs4NRVxsYgnAr_4core7default7Default7default: argument 0"}
!55 = !{!54}
!56 = distinct !{!56, i1 true, !"_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal"}
!57 = distinct !{!57, !56, !"_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt5Debug3fmtCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!58 = distinct !{null}
!59 = !{!57}
!60 = distinct !{!60, i1 true, !"_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt7Display3fmtCs1ElB0qm0ygX_13influxdb3_wal"}
!61 = distinct !{!61, !60, !"_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt7Display3fmtCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!62 = distinct !{null}
!63 = !{!61}
!64 = distinct !{!64, i1 true, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintBT_"}
!65 = distinct !{!65, !64, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintBT_: argument 0"}
!66 = !{!65}
!67 = distinct !{!67, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!68 = distinct !{!68, !67, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!69 = !{!68}
!70 = distinct !{!70, i1 true, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str"}
!71 = distinct !{!71, !70, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 1"}
!72 = distinct !{!72, !70, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8push_str: argument 0"}
!73 = distinct !{!73, i1 true, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs1ElB0qm0ygX_13influxdb3_wal"}
!74 = distinct !{!74, !73, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!75 = !{!71}
!76 = !{!74, !72}
!77 = distinct !{!77, i1 true, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw"}
!78 = distinct !{!78, !77, !"_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw: argument 0"}
!79 = !{!78}
!80 = distinct !{null}
!81 = distinct !{null}
!82 = distinct !{!82, i1 true, !"_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs1ElB0qm0ygX_13influxdb3_wal"}
!83 = distinct !{!83, !82, !"_RINvNtCs2AWtUsOyxgP_3std2io17default_write_fmtNtNtNtNtB4_3sys5stdio4unix6StderrECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!84 = distinct !{!84, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs1ElB0qm0ygX_13influxdb3_wal"}
!85 = distinct !{!85, !84, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvNtCs2AWtUsOyxgP_3std2io17default_write_fmt7AdapterNtNtNtNtBI_3sys5stdio4unix6StderrEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!86 = !{!83}
!87 = !{!85}
end_hunk_0
