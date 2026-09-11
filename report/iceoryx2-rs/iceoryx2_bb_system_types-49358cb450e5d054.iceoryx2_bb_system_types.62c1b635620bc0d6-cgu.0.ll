Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_system_types-49358cb450e5d054.iceoryx2_bb_system_types.62c1b635620bc0d6-cgu.0?download=true
inline.NumInlined: 157
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [36 x i8] c"a string containing the service name", align 1
@1 = private unnamed_addr constant [29 x i8] c"Unable to construct port from", align 1
@2 = private unnamed_addr constant [16 x i8] c"Port::try_from()", align 1
@3 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@4 = private unnamed_addr constant [54 x i8] c"\C0\02 \22\C0/\22 since it does not contain a valid u16 number.\00", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj1f_ENtB6_5Debug3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types }>, align 8
@6 = private unnamed_addr constant [9 x i8] c"GroupName", align 1
@7 = private unnamed_addr constant [5 x i8] c"value", align 1
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB6_5Debug3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types }>, align 8
@9 = private unnamed_addr constant [8 x i8] c"UserName", align 1
@10 = private unnamed_addr constant [9 x i8] c"Base64Url", align 1
@11 = private unnamed_addr constant [8 x i8] c"FileName", align 1
@12 = private unnamed_addr constant [28 x i8] c"Unable to insert byte string", align 1
@13 = private unnamed_addr constant [53 x i8] c"\C0\02 \22\C0.\22 since it would result in an illegal content.\00", align 1
@14 = private unnamed_addr constant [8 x i8] c"\1F\00\00\00\00\00\00\00", align 8
@15 = private unnamed_addr constant [64 x i8] c"\C0\02 \22\C06\22 since it would exceed the maximum allowed length of \C0\01.\00", align 1
@16 = private unnamed_addr constant [31 x i8] c"Unable to create SemanticString", align 1
@17 = private unnamed_addr constant [21 x i8] c"SemanticString::new()", align 1
@18 = private unnamed_addr constant [33 x i8] c"\C0\1A due to an invalid value \22\C0\02\22.\00", align 1
@19 = private unnamed_addr constant [8 x i8] c"\FF\00\00\00\00\00\00\00", align 8

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvNtCs8Chj7Szqq0n_4core5slice20copy_from_slice_implhECs8tG85QUCESg_24iceoryx2_bb_system_types(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs8Chj7Szqq0n_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8tG85QUCESg_24iceoryx2_bb_system_types(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !17, !noundef !7 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.b)
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.h, align 8, !alias.scope !17
  call fastcc void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8tG85QUCESg_24iceoryx2_bb_system_types(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %i.g) #17
  %i.i = load i64, ptr %i.a, align 8, !range !8, !noalias !17, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8, !range !18, !noalias !17, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.n, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ]
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #18
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.k, align 8, !noalias !17, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !17
  %i.p = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.g, ptr %0, align 8, !alias.scope !17
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9base64urlNtB2_9Base64Url12as_file_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 264)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 8 uses
  %i.b = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String8as_bytesCs8tG85QUCESg_24iceoryx2_bb_system_types(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) #17 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.e, align 1, !noalias !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8, !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.c, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  store i8 0, ptr %i.g, align 1, !noalias !22
  store i64 %i.d, ptr %i.f, align 8, !noalias !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs2_NtCs8tG85QUCESg_24iceoryx2_bb_system_types10group_nameNtB5_9GroupName19new_unchecked_const(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  store i8 0, ptr %i.d, align 1
  store i64 %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs2_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9user_nameNtB5_8UserName19new_unchecked_const(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 264)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  store i8 0, ptr %i.d, align 1
  store i64 %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs3_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9base64urlNtB5_9Base64Url19new_unchecked_const(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 264)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  store i8 0, ptr %i.d, align 1
  store i64 %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs8tG85QUCESg_24iceoryx2_bb_system_types(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 4, 0) %1) unnamed_addr #1 {
bb.a:
  %i.a = mul i64 %1, 264                          ; 6 uses
  %or.cond.not = icmp ugt i64 %1, 34937015291116575
  br i1 %or.cond.not, label %bb.e, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %2, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 264                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %i.a, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCsicpYtSlSgpD_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #17
  br label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit

2:                                                ; preds = %bb.b
  %3 = icmp eq i64 %i.a, 0
  br i1 %3, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.thread, label %bb.c

bb.c:                                             ; preds = %2
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  %i.f = tail call noundef align 8 ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, -9223372036854775807) 8) #17
  br label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit: ; preds = %bb.c, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator4grow.exit ], [ %i.f, %bb.c ] ; 2 uses
  %i.g = icmp eq ptr %.pn8, null
  br i1 %i.g, label %bb.d, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.thread

bb.d:                                             ; preds = %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %4, align 8
  br label %bb.e

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.thread: ; preds = %2, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %2 ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %5, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.d ], [ 16, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.d ], [ %i.a, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.d ], [ 0, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %6, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8tG85QUCESg_24iceoryx2_bb_system_types(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !9
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #17
  br label %bb.h

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMsl_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileName19new_unchecked_const(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 264)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  store i8 0, ptr %i.d, align 1
  store i64 %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs8tG85QUCESg_24iceoryx2_bb_system_types10group_nameNtNtB2_11VisitorType9GroupNameNtNtCsePUspIjoSTD_10serde_core2de7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 36) #17
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define range(i32 0, -65534) i32 @_RNvXNtCs8tG85QUCESg_24iceoryx2_bb_system_types4portNtB2_4PortINtNtCs8Chj7Szqq0n_4core7convert7TryFromReE8try_from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @1, ptr %i.d, align 8, !captures !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 29, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @2, ptr %i.c, align 8, !captures !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 16, ptr %i.h, align 8
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsz_NtCs8Chj7Szqq0n_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %0, align 1, !alias.scope !27, !noundef !7 ; 2 uses
  switch i8 %i.i, label %bb.c [
    i8 43, label %_RNvMsz_NtCs8Chj7Szqq0n_4core3numt27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsz_NtCs8Chj7Szqq0n_4core3numt27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !27
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.j = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.i, %bb.b ]
  %cond.i = icmp eq i8 %i.j, 43                   ; 2 uses
  %i.k = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.k            ; 6 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 5 uses
  %i.l = icmp samesign ult i64 %.sroa.15.0.i, 5
  br i1 %i.l, label %.preheader.i, label %.preheader58.i.preheader

.preheader.i:                                     ; preds = %bb.c
  %.not5466.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5466.i, label %.loopexit.i, label %.lr.ph.i

.preheader58.i:                                   ; preds = %bb.f
  %.not53.i = icmp eq i64 %i.p, 0
  br i1 %.not53.i, label %.loopexit.i, label %.preheader58.i.preheader

.loopexit.i:                                      ; preds = %.preheader58.i, %bb.g, %bb.h, %bb.i, %bb.j, %.preheader.i
  %.sroa.043.1.i = phi i16 [ %i.be, %bb.j ], [ 0, %.preheader.i ], [ %i.ag, %bb.g ], [ %i.ao, %bb.h ], [ %i.aw, %bb.i ], [ %i.aa, %.preheader58.i ]
  %i.m = zext i16 %.sroa.043.1.i to i32
  %i.n = shl nuw i32 %i.m, 16
  br label %_RNvMsz_NtCs8Chj7Szqq0n_4core3numt27from_ascii_bytes_radix_impl.exit

.preheader58.i.preheader:                         ; preds = %bb.c, %.preheader58.i
  %.sroa.0.1.i57 = phi ptr [ %i.o, %.preheader58.i ], [ %.sroa.0.0.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i56 = phi i64 [ %i.p, %.preheader58.i ], [ %.sroa.15.0.i, %bb.c ]
  %.sroa.043.0.i55 = phi i16 [ %i.aa, %.preheader58.i ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i57, i64 1
  %i.p = add nsw i64 %.sroa.15.1.i56, -1          ; 2 uses
  %i.q = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %.sroa.043.0.i55, i16 10) ; 2 uses
  %i.r = extractvalue { i16, i1 } %i.q, 0         ; 2 uses
  %i.s = extractvalue { i16, i1 } %i.q, 1
  %i.t = load i8, ptr %.sroa.0.1.i57, align 1, !alias.scope !27, !noundef !7 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %.preheader58.i.preheader
  %i.u = zext i8 %i.t to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %i.w = icmp ult i32 %i.v, 10
  br i1 %i.w, label %bb.f, label %_RNvMsz_NtCs8Chj7Szqq0n_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.e:                                             ; preds = %.preheader58.i.preheader
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %spec.select.i = select i1 %i.y, i32 513, i32 257
  br label %_RNvMsz_NtCs8Chj7Szqq0n_4core3numt27from_ascii_bytes_radix_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.z = trunc nuw nsw i32 %i.v to i16
  %i.aa = add i16 %i.r, %i.z                      ; 3 uses
  %i.ab = icmp ult i16 %i.aa, %i.r
  br i1 %i.ab, label %_RNvMsz_NtCs8Chj7Szqq0n_4core3numt27from_ascii_bytes_radix_impl.exit.thread, label %.preheader58.i, !prof !28

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ac = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !27, !noundef !7
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.g, label %_RNvMsz_NtCs8Chj7Szqq0n_4core3numt27from_ascii_bytes_radix_impl.exit.thread

bb.g:                                             ; preds = %.lr.ph.i
  %i.ag = trunc nuw nsw i32 %i.ae to i16          ; 2 uses
  %.not54.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not54.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !27, !noundef !7
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48                  ; 2 uses
end_hunk_0
