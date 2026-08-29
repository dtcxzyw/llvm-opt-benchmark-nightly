Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon-fd5a06854e05e2fd.rayon.15a9e7770a0c1f3e-cgu.0?download=true
inline.NumInlined: 121
inline.NumDeleted: 92
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [76 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/str/mod.rs\00", align 1
@1 = private unnamed_addr constant [46 x i8] c"assertion failed: self.is_char_boundary(start)", align 1
@2 = private unnamed_addr constant [44 x i8] c"assertion failed: self.is_char_boundary(end)", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"K\00\00\00\00\00\00\00^\03\00\00\15\00\00\00" }>, align 8
@4 = private unnamed_addr constant [91 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/iter/traits/exact_size.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"Z\00\00\00\00\00\00\00z\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs1Rjy1FfFCsk_5rayon(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = tail call { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs1Rjy1FfFCsk_5rayon(i64 noundef %2, i64 noundef %3, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 6 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %i.e, %i.b
  br i1 %.not, label %bb.d, label %.split

bb.c:                                             ; preds = %.split, %bb.a, %bb.d
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.g, label %bb.f

.split:                                           ; preds = %bb.b
  %i.k = icmp eq i64 %i.e, %i.b
  br i1 %i.k, label %bb.c, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  %i.n = icmp sgt i8 %i.m, -65
  br i1 %i.n, label %bb.c, label %bb.e, !prof !5

bb.e:                                             ; preds = %.split, %bb.d
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 46, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #19
  unreachable

bb.f:                                             ; preds = %bb.c
  %.not5 = icmp ult i64 %i.f, %i.b
  br i1 %.not5, label %bb.h, label %.split6

bb.g:                                             ; preds = %.split6, %bb.c, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %i.s, align 8
  store ptr %i.o, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.t, align 8
  ret void

.split6:                                          ; preds = %bb.f
  %i.u = icmp eq i64 %i.f, %i.b
  br i1 %i.u, label %bb.g, label %bb.i, !prof !5

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.w = load i8, ptr %i.v, align 1, !noundef !4
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %bb.g, label %bb.i, !prof !5

bb.i:                                             ; preds = %.split6, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 44, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1Rjy1FfFCsk_5rayon4iter6extend16ListStringFolderEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !range !6, !alias.scope !7, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs1Rjy1FfFCsk_5rayon.exit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !14, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !15
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs1Rjy1FfFCsk_5rayon.exit.i.i

bb.c:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !range !6, !alias.scope !7, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !14, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !18
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs1Rjy1FfFCsk_5rayon.exit.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !6, !alias.scope !21, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !21
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !21
  %i.j = load i64, ptr %i.a, align 8, !range !24, !noalias !21, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !25, !noalias !21, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !21, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !21
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !21
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1Rjy1FfFCsk_5rayon(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1)
  %4 = mul nuw i64 %3, %1                         ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !26
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #20
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #20
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeNtNtB6_6string6StringERNtNtB6_5alloc6GlobalE13new_uninit_inCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !27
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !27 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: norecurse nounwind nonlazybind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_RNvNtNtCs1Rjy1FfFCsk_5rayon4iter8skip_any17checked_decrement(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.06.0.i = phi i64 [ %i.a, %bb.a ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.not.not.not.not.not = icmp ne i64 %.sroa.06.0.i, 0 ; 2 uses
  br i1 %.not.i.not.not.not.not.not, label %bb.c, label %_RINvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB7_6AtomicjE10try_updateNCNvNtNtCs1Rjy1FfFCsk_5rayon4iter8skip_any17checked_decrement0EB1f_.exit

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %.sroa.06.0.i, -1
  %i.c = cmpxchg weak ptr %0, i64 %.sroa.06.0.i, i64 %i.b monotonic monotonic, align 8 ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %_RINvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB7_6AtomicjE10try_updateNCNvNtNtCs1Rjy1FfFCsk_5rayon4iter8skip_any17checked_decrement0EB1f_.exit, label %bb.b

_RINvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB7_6AtomicjE10try_updateNCNvNtNtCs1Rjy1FfFCsk_5rayon4iter8skip_any17checked_decrement0EB1f_.exit: ; preds = %bb.b, %bb.c
  ret i1 %.not.i.not.not.not.not.not
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1Rjy1FfFCsk_5rayon.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1Rjy1FfFCsk_5rayon.exit

_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1Rjy1FfFCsk_5rayon.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_RNvXs2_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter16ParallelIterator7opt_len(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !31, !alias.scope !32, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !range !31, !alias.scope !32, !noundef !4 ; 3 uses
  %.not.i.i = icmp samesign ugt i32 %i.a, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 4, !range !37, !alias.scope !32
  %i.f = icmp ne i8 %i.e, 0
  %i.g = select i1 %.not.i.i, i1 true, i1 %i.f
  br i1 %i.g, label %_RNvXs3_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter23IndexedParallelIterator3len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw nsw i32 %i.c, %i.a
  %i.i = icmp samesign ult i32 %i.a, 55296
  %i.j = icmp samesign ugt i32 %i.c, 57343
  %or.cond.i = and i1 %i.i, %i.j
  %i.k = select i1 %or.cond.i, i32 -2047, i32 1
  %i.l = add nsw i32 %i.h, %i.k
  %i.m = zext i32 %i.l to i64
  br label %_RNvXs3_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter23IndexedParallelIterator3len.exit

_RNvXs3_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter23IndexedParallelIterator3len.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.n = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %.sroa.0.0.i, 1
  ret { i64, i64 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i64 0, 4294967296) i64 @_RNvXs3_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter23IndexedParallelIterator3len(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !31, !alias.scope !38, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !range !31, !alias.scope !38, !noundef !4 ; 3 uses
  %.not.i = icmp samesign ugt i32 %i.a, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 4, !range !37, !alias.scope !38
  %i.f = icmp ne i8 %i.e, 0
  %i.g = select i1 %.not.i, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw nsw i32 %i.c, %i.a
  %i.i = icmp samesign ult i32 %i.a, 55296
  %i.j = icmp samesign ugt i32 %i.c, 57343
  %or.cond = and i1 %i.i, %i.j
  %i.k = select i1 %or.cond, i32 -2047, i32 1
  %i.l = add nsw i32 %i.h, %i.k
  %i.m = zext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs1Rjy1FfFCsk_5rayon3strNtB5_13CharsProducerNtNtNtB7_4iter8plumbing17UnindexedProducer5split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %2, 1                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i
  %i.e = phi ptr [ %i.h, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.val6.i.i = load i8, ptr %i.e, align 1, !alias.scope !41, !noalias !44, !noundef !4
  %i.g = icmp sgt i8 %.val6.i.i, -65
  br i1 %i.g, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = add i64 %i.f, 1
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.loopexit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = add i64 %i.f, %i.a
  br label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i, %bb.a
  %.not.not.not.not.i.not.i18 = icmp samesign eq i64 %i.a, 0
  br i1 %.not.not.not.not.i.not.i18, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not.not.not.not.i.not.i = icmp eq ptr %1, %i.m
  br i1 %.not.not.not.not.i.not.i, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit.i, %bb.c
  %.sroa.01.0.i.i.i.i19 = phi i64 [ %i.o, %bb.c ], [ %i.a, %.loopexit.i ]
  %i.l = phi ptr [ %i.m, %bb.c ], [ %i.b, %.loopexit.i ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 3 uses
  %.val.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !41, !noalias !48, !noundef !4
  %i.n = icmp sgt i8 %.val.i.i.i.i, -65
  %i.o = add nsw i64 %.sroa.01.0.i.i.i.i19, -1    ; 2 uses
  br i1 %i.n, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit, label %bb.c

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i = phi i64 [ %i.k, %bb.b ], [ %i.o, %.lr.ph ] ; 8 uses
  %.not = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
end_hunk_0
begin_hunk_1_@_RNvXs9_NtCs1Rjy1FfFCsk_5rayon15range_inclusivetNtNtB5_7private12RangeInteger7opt_len:bb.a
  %i.d = trunc i32 %i.c to i16                    ; 3 uses
  %i.e = lshr i32 %i.c, 16                        ; 2 uses
  %i.f = trunc nuw i32 %i.e to i16                ; 4 uses
  %.not.i = icmp ugt i16 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i8, ptr %i.g, align 2, !range !37, !alias.scope !110
  %i.i = trunc nuw i8 %i.h to i1
  %.not = select i1 %.not.i, i1 true, i1 %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.e, 65535
  br i1 %i.j, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i16 %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.d, ptr %i.b, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.k, ptr %i.l, align 2
  %i.m = call { i64, i64 } @_RNvXs9_NtCs1Rjy1FfFCsk_5rayon5rangetNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call i48 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItertENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncetEEB8_(i16 noundef %i.d, i16 noundef %i.f, i16 noundef %i.f)
  store i48 %i.n, ptr %i.a, align 8
  %i.o = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItertEINtNtB6_4once4OncetEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.o, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtCs1Rjy1FfFCsk_5rayon3strNtB5_13BytesProducerNtNtNtB7_4iter8plumbing17UnindexedProducer5split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %2, 1                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i
  %i.e = phi ptr [ %i.h, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.val6.i.i = load i8, ptr %i.e, align 1, !alias.scope !113, !noalias !116, !noundef !4
  %i.g = icmp sgt i8 %.val6.i.i, -65
  br i1 %i.g, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = add i64 %i.f, 1
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.loopexit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = add i64 %i.f, %i.a
  br label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i, %bb.a
  %.not.not.not.not.i.not.i18 = icmp samesign eq i64 %i.a, 0
  br i1 %.not.not.not.not.i.not.i18, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not.not.not.not.i.not.i = icmp eq ptr %1, %i.m
  br i1 %.not.not.not.not.i.not.i, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit.i, %bb.c
  %.sroa.01.0.i.i.i.i19 = phi i64 [ %i.o, %bb.c ], [ %i.a, %.loopexit.i ]
  %i.l = phi ptr [ %i.m, %bb.c ], [ %i.b, %.loopexit.i ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 3 uses
  %.val.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !113, !noalias !120, !noundef !4
  %i.n = icmp sgt i8 %.val.i.i.i.i, -65
  %i.o = add nsw i64 %.sroa.01.0.i.i.i.i19, -1    ; 2 uses
  br i1 %i.n, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit, label %bb.c

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i = phi i64 [ %i.k, %bb.b ], [ %i.o, %.lr.ph ] ; 8 uses
  %.not = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  %.not.i = icmp ult i64 %.sroa.0.1.i, %2
  br i1 %.not.i, label %bb.e, label %.split3.i

.split3.i:                                        ; preds = %bb.d
  %i.p = icmp eq i64 %.sroa.0.1.i, %2
  br i1 %i.p, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !127, !noalias !130, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.g, label %bb.f

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread: ; preds = %bb.c, %.loopexit.i, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  store ptr %1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.u, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %.split3.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %.sroa.0.1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.g:                                             ; preds = %bb.e, %.split3.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.w = sub i64 %2, %.sroa.0.1.i
  store ptr %1, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.1.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 -254, 257) i64 @_RNvXsa_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveaNtNtB5_7private19IndexedRangeInteger3len(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i8, ptr %0, align 1, !range !37, !alias.scope !132, !noalias !135, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.g = load i8, ptr %i.e, align 1, !alias.scope !142, !noalias !143, !noundef !4 ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !alias.scope !144, !noalias !145, !noundef !4 ; 2 uses
  %.not.i = icmp sgt i8 %i.g, %i.h
  br i1 %.not.i, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i8 %i.h to i64
  %i.j = sext i8 %i.g to i64
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %i.k, i64 1)
  %i.m = icmp ne i64 %i.k, -1
  %i.n = add nsw i64 %i.k, 1
  %spec.select3.i = zext i1 %i.m to i64
  br label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit

_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sink9.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %spec.select3.sink.i = phi i64 [ %spec.select3.i, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ] ; 2 uses
  %.sink.i = phi i64 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %spec.select3.sink.i, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink.i, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink9.i, ptr %i.p, align 8
  store i64 1, ptr %i.a, align 8
  %i.q = trunc nuw i64 %spec.select3.sink.i to i1
  %i.r = icmp eq i64 %.sink.i, %.sink9.i
  %or.cond = select i1 %i.q, i1 %i.r, i1 false, !prof !146
  br i1 %or.cond, label %bb.e, label %bb.d, !prof !146

bb.d:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

bb.e:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sink9.i
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsb_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveaNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 4                 ; 4 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i16, ptr %i.c, align 1, !alias.scope !147 ; 2 uses
  %i.e = trunc i16 %i.d to i8                     ; 3 uses
  %i.f = lshr i16 %i.d, 8                         ; 2 uses
  %i.g = trunc nuw i16 %i.f to i8                 ; 4 uses
  %.not.i = icmp sgt i8 %i.e, %i.g
  %i.h = load i8, ptr %0, align 1, !range !37, !alias.scope !147
  %i.i = trunc nuw i8 %i.h to i1
  %.not = select i1 %.not.i, i1 true, i1 %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i16 %i.f, 127
  br i1 %1, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %2 = add nsw i8 %i.g, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.e, ptr %i.b, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %2, ptr %i.j, align 1
  %i.k = call { i64, i64 } @_RNvXsi_NtCs1Rjy1FfFCsk_5rayon5rangeaNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call i24 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteraENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceaEEB8_(i8 noundef %i.e, i8 noundef %i.g, i8 noundef %i.g)
  store i24 %i.l, ptr %i.a, align 4
  %i.m = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteraEINtNtB6_4once4OnceaEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.m, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCs1Rjy1FfFCsk_5rayon3strNtB5_19EncodeUtf16ProducerNtNtNtB7_4iter8plumbing17UnindexedProducer5split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %2, 1                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i
  %i.e = phi ptr [ %i.h, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = phi i64 [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.val6.i.i = load i8, ptr %i.e, align 1, !alias.scope !150, !noalias !153, !noundef !4
  %i.g = icmp sgt i8 %.val6.i.i, -65
  br i1 %i.g, label %bb.b, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = add i64 %i.f, 1
  %i.j = icmp eq ptr %i.h, %i.c
  br i1 %i.j, label %.loopexit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = add i64 %i.f, %i.a
  br label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvNtNtNtB8_6traits8iterator8Iterator8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2L_.exit.i.i, %bb.a
  %.not.not.not.not.i.not.i18 = icmp samesign eq i64 %i.a, 0
  br i1 %.not.not.not.not.i.not.i18, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %.not.not.not.not.i.not.i = icmp eq ptr %1, %i.m
  br i1 %.not.not.not.not.i.not.i, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit.i, %bb.c
  %.sroa.01.0.i.i.i.i19 = phi i64 [ %i.o, %bb.c ], [ %i.a, %.loopexit.i ]
  %i.l = phi ptr [ %i.m, %bb.c ], [ %i.b, %.loopexit.i ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 3 uses
  %.val.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !150, !noalias !157, !noundef !4
  %i.n = icmp sgt i8 %.val.i.i.i.i, -65
  %i.o = add nsw i64 %.sroa.01.0.i.i.i.i19, -1    ; 2 uses
  br i1 %i.n, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit, label %bb.c

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit: ; preds = %.lr.ph, %bb.b
  %.sroa.0.1.i = phi i64 [ %i.k, %bb.b ], [ %i.o, %.lr.ph ] ; 8 uses
  %.not = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not, label %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  %.not.i = icmp ult i64 %.sroa.0.1.i, %2
  br i1 %.not.i, label %bb.e, label %.split3.i

.split3.i:                                        ; preds = %bb.d
  %i.p = icmp eq i64 %.sroa.0.1.i, %2
  br i1 %i.p, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !164, !noalias !167, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.g, label %bb.f

_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread: ; preds = %bb.c, %.loopexit.i, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit
  store ptr %1, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.u, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %.split3.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0, i64 noundef %.sroa.0.1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable

bb.g:                                             ; preds = %bb.e, %.split3.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.w = sub i64 %2, %.sroa.0.1.i
  store ptr %1, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.1.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 -65534, 65537) i64 @_RNvXsc_NtCs1Rjy1FfFCsk_5rayon15range_inclusivesNtNtB5_7private19IndexedRangeInteger3len(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(6) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 2, !range !37, !alias.scope !169, !noalias !172, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivesENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.g = load i16, ptr %0, align 2, !alias.scope !179, !noalias !180, !noundef !4 ; 2 uses
  %i.h = load i16, ptr %i.f, align 2, !alias.scope !181, !noalias !182, !noundef !4 ; 2 uses
  %.not.i = icmp sgt i16 %i.g, %i.h
  br i1 %.not.i, label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivesENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i16 %i.h to i64
  %i.j = sext i16 %i.g to i64
  %i.k = sub nsw i64 %i.i, %i.j                   ; 3 uses
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %i.k, i64 1)
  %i.m = icmp ne i64 %i.k, -1
  %i.n = add nsw i64 %i.k, 1
  %spec.select3.i = zext i1 %i.m to i64
  br label %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivesENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit

_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivesENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sink9.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %spec.select3.sink.i = phi i64 [ %spec.select3.i, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ] ; 2 uses
  %.sink.i = phi i64 [ %i.n, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %spec.select3.sink.i, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink.i, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink9.i, ptr %i.p, align 8
  store i64 1, ptr %i.a, align 8
  %i.q = trunc nuw i64 %spec.select3.sink.i to i1
  %i.r = icmp eq i64 %.sink.i, %.sink9.i
  %or.cond = select i1 %i.q, i1 %i.r, i1 false, !prof !146
  br i1 %or.cond, label %bb.e, label %bb.d, !prof !146

bb.d:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivesENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19
  unreachable

bb.e:                                             ; preds = %_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivesENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sink9.i
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsd_NtCs1Rjy1FfFCsk_5rayon15range_inclusivesNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(6) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 2                 ; 5 uses
  %i.c = load i32, ptr %0, align 2, !alias.scope !183 ; 2 uses
  %i.d = trunc i32 %i.c to i16                    ; 3 uses
  %i.e = lshr i32 %i.c, 16                        ; 2 uses
  %i.f = trunc nuw i32 %i.e to i16                ; 4 uses
  %.not.i = icmp sgt i16 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i8, ptr %i.g, align 2, !range !37, !alias.scope !183
  %i.i = trunc nuw i8 %i.h to i1
  %.not = select i1 %.not.i, i1 true, i1 %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i32 %i.e, 32767
  br i1 %1, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %2 = add nsw i16 %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.d, ptr %i.b, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %2, ptr %i.j, align 2
  %i.k = call { i64, i64 } @_RNvXsl_NtCs1Rjy1FfFCsk_5rayon5rangesNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call i48 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItersENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncesEEB8_(i16 noundef %i.d, i16 noundef %i.f, i16 noundef %i.f)
  store i48 %i.l, ptr %i.a, align 8
  %i.m = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItersEINtNtB6_4once4OncesEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.m, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXse_NtCs1Rjy1FfFCsk_5rayon15range_inclusivejNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !186, !noalias !189, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !186, !noalias !189, !noundef !4 ; 3 uses
  %.not.i = icmp ule i64 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !37, !alias.scope !186, !noalias !189
  %i.h = icmp eq i8 %i.g, 0
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterjE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = call { i64, i64 } @_RNvXsf_NtCs1Rjy1FfFCsk_5rayon5rangejNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterjENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncejEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef -1, i64 noundef -1)
  %i.m = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterjEINtNtB6_4once4OncejEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterjE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterjE6boundsB4_.exit: ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsf_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveiNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !191, !noalias !194, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !191, !noalias !194, !noundef !4 ; 3 uses
  %.not.i = icmp sle i64 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !37, !alias.scope !191, !noalias !194
  %i.h = icmp eq i8 %i.g, 0
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteriE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i64 %i.e, 9223372036854775807
  br i1 %1, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %2 = add nsw i64 %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.i, align 8
  %i.j = call { i64, i64 } @_RNvXsr_NtCs1Rjy1FfFCsk_5rayon5rangeiNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteriENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceiEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef 9223372036854775807, i64 noundef 9223372036854775807)
  %i.k = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteriEINtNtB6_4once4OnceiEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.k, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteriE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteriE6boundsB4_.exit: ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsg_NtCs1Rjy1FfFCsk_5rayon15range_inclusivemNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = load i32, ptr %0, align 4, !alias.scope !196, !noalias !199, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !196, !noalias !199, !noundef !4 ; 3 uses
  %.not.i = icmp ule i32 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !range !37, !alias.scope !196, !noalias !199
  %i.h = icmp eq i8 %i.g, 0
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItermE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.e, -1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.c, ptr %i.b, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = call { i64, i64 } @_RNvXsc_NtCs1Rjy1FfFCsk_5rayon5rangemNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItermENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncemEEB8_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %i.c, i32 noundef -1, i32 noundef -1)
  %i.m = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItermEINtNtB6_4once4OncemEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItermE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItermE6boundsB4_.exit: ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsh_NtCs1Rjy1FfFCsk_5rayon15range_inclusivelNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = load i32, ptr %0, align 4, !alias.scope !201, !noalias !204, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !201, !noalias !204, !noundef !4 ; 3 uses
  %.not.i = icmp sle i32 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !range !37, !alias.scope !201, !noalias !204
  %i.h = icmp eq i8 %i.g, 0
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterlE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i32 %i.e, 2147483647
  br i1 %1, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %2 = add nsw i32 %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.c, ptr %i.b, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %2, ptr %i.i, align 4
  %i.j = call { i64, i64 } @_RNvXso_NtCs1Rjy1FfFCsk_5rayon5rangelNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterlENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncelEEB8_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %i.c, i32 noundef 2147483647, i32 noundef 2147483647)
  %i.k = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterlEINtNtB6_4once4OncelEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.k, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterlE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterlE6boundsB4_.exit: ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsi_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveyNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !206, !noalias !209, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !206, !noalias !209, !noundef !4 ; 3 uses
  %.not.i = icmp ule i64 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !37, !alias.scope !206, !noalias !209
  %i.g = icmp eq i8 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, -1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %reass.sub = sub i64 %i.d, %i.b
  %i.i = add i64 %reass.sub, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteryENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceyEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.b, i64 noundef -1, i64 noundef -1)
  %i.j = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteryEINtNtB6_4once4OnceyEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit: ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.1 = phi i64 [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ 1, %bb.c ], [ %i.k, %bb.d ], [ 1, %bb.a ]
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.n
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsj_NtCs1Rjy1FfFCsk_5rayon15range_inclusivexNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !211, !noalias !214, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !211, !noalias !214, !noundef !4 ; 3 uses
  %.not.i = icmp sle i64 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !37, !alias.scope !211, !noalias !214
  %i.g = icmp eq i8 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i64 %i.d, 9223372036854775807
  br i1 %1, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %i.d, %i.b
  %2 = add i64 %i.h, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterxENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncexEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.b, i64 noundef 9223372036854775807, i64 noundef 9223372036854775807)
  %i.i = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterxEINtNtB6_4once4OncexEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit: ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.1 = phi i64 [ %2, %bb.c ], [ %i.k, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ 1, %bb.c ], [ %i.j, %bb.d ], [ 1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsk_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveoNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = load i128, ptr %0, align 16, !alias.scope !216, !noalias !219, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i128, ptr %i.c, align 16, !alias.scope !216, !noalias !219, !noundef !4 ; 3 uses
  %.not.i = icmp ule i128 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 16, !range !37, !alias.scope !216, !noalias !219
  %i.g = icmp eq i8 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i128 %i.d, -1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %reass.sub = sub i128 %i.d, %i.b
  %i.i = add i128 %reass.sub, 1                   ; 2 uses
  %i.j = icmp ult i128 %i.i, 18446744073709551616 ; 2 uses
  %i.k = trunc nuw i128 %i.i to i64
  %spec.select = select i1 %i.j, i64 %i.k, i64 undef
  %spec.select6 = zext i1 %i.j to i64
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteroENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceoEEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, i128 noundef %i.b, i128 noundef -1, i128 noundef -1)
  %i.l = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteroEINtNtB6_4once4OnceoEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.5.1 = phi i64 [ %spec.select, %bb.c ], [ %i.n, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %spec.select6, %bb.c ], [ %i.m, %bb.d ], [ 1, %bb.a ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsl_NtCs1Rjy1FfFCsk_5rayon15range_inclusivenNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = load i128, ptr %0, align 16, !alias.scope !221, !noalias !224, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i128, ptr %i.c, align 16, !alias.scope !221, !noalias !224, !noundef !4 ; 3 uses
  %.not.i = icmp sle i128 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 16, !range !37, !alias.scope !221, !noalias !224
  %i.g = icmp eq i8 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IternE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i128 %i.d, 170141183460469231731687303715884105727
  br i1 %1, label %bb.d, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.h = sub i128 %i.d, %i.b
  %2 = add i128 %i.h, 1                           ; 2 uses
  %i.i = icmp ult i128 %2, 18446744073709551616   ; 2 uses
  %i.j = trunc nuw i128 %2 to i64
  %spec.select = select i1 %i.i, i64 %i.j, i64 undef
  %spec.select5 = zext i1 %i.i to i64
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IternE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IternENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncenEEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, i128 noundef %i.b, i128 noundef 170141183460469231731687303715884105727, i128 noundef 170141183460469231731687303715884105727)
  %i.k = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IternEINtNtB6_4once4OncenEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IternE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IternE6boundsB4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.5.1 = phi i64 [ %spec.select, %bb.c ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %spec.select5, %bb.c ], [ %i.l, %bb.d ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXso_NtNtCs1Rjy1FfFCsk_5rayon4iter6extendNtB5_16ListStringFolderINtNtB7_8plumbing6FoldercE7consume(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !226, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %2, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %2, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %2, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.ph.i)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !226, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %2 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %2, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %2, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %2, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %.noexc1 unwind label %bb.h

.noexc1:                                          ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !226, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %2 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %bb.i

bb.d:                                             ; preds = %.noexc
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %bb.i

bb.e:                                             ; preds = %.noexc
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1Rjy1FfFCsk_5rayon4iter6extend16ListStringFolderEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #22
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %.noexc1
  %.sroa.0.03.i = phi i64 [ 1, %.noexc1 ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ak = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !226
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aj
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXso_NtNtCs1Rjy1FfFCsk_5rayon4iter6extendNtB5_16ListStringFolderINtNtB7_8plumbing6FoldercE8complete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtB9_6string6StringE13push_back_mutCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %1, align 8, !range !6, !alias.scope !229, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.i, align 8, !alias.scope !236, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !237
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %1, align 8, !range !6, !alias.scope !229, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !236, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !240
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit

common.resume:                                    ; preds = %bb.f, %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.e, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs1Rjy1FfFCsk_5rayon(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs6_NtCs1Rjy1FfFCsk_5rayon5rangehNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i24 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterhENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncehEEB8_(i8 noundef, i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterhEINtNtB6_4once4OncehEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs9_NtCs1Rjy1FfFCsk_5rayon5rangetNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i48 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItertENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncetEEB8_(i16 noundef, i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItertEINtNtB6_4once4OncetEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(6)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsi_NtCs1Rjy1FfFCsk_5rayon5rangeaNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i24 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteraENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceaEEB8_(i8 noundef, i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteraEINtNtB6_4once4OnceaEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsl_NtCs1Rjy1FfFCsk_5rayon5rangesNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i48 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItersENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncesEEB8_(i16 noundef, i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItersEINtNtB6_4once4OncesEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(6)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsf_NtCs1Rjy1FfFCsk_5rayon5rangejNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterjENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncejEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterjEINtNtB6_4once4OncejEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsr_NtCs1Rjy1FfFCsk_5rayon5rangeiNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteriENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceiEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteriEINtNtB6_4once4OnceiEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsc_NtCs1Rjy1FfFCsk_5rayon5rangemNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItermENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncemEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItermEINtNtB6_4once4OncemEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXso_NtCs1Rjy1FfFCsk_5rayon5rangelNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterlENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncelEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterlEINtNtB6_4once4OncelEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteryENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceyEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteryEINtNtB6_4once4OnceyEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterxENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncexEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterxEINtNtB6_4once4OncexEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteroENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceoEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(none) dereferenceable(48), i128 noundef, i128 noundef, i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteroEINtNtB6_4once4OnceoEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IternENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncenEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(none) dereferenceable(48), i128 noundef, i128 noundef, i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IternEINtNtB6_4once4OncenEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtB9_6string6StringE13push_back_mutCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { norecurse nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { noinline noreturn }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{!8, !10, !12}
!8 = distinct !{!8, !9, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon: argument 0"}
!9 = distinct !{!9, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon"}
!10 = distinct !{!10, !11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs1Rjy1FfFCsk_5rayon: argument 0"}
!11 = distinct !{!11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs1Rjy1FfFCsk_5rayon"}
!12 = distinct !{!12, !13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon: argument 0"}
!13 = distinct !{!13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon"}
!14 = !{!10, !12}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon: argument 0"}
!17 = distinct !{!17, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon: argument 0"}
!20 = distinct !{!20, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs1Rjy1FfFCsk_5rayon: argument 0"}
!23 = distinct !{!23, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs1Rjy1FfFCsk_5rayon"}
!24 = !{i64 0, i64 2}
!25 = !{i64 0, i64 -9223372036854775807}
!26 = !{!"branch_weights", i32 2002, i32 2000}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeNtNtB6_6string6StringERNtNtB6_5alloc6GlobalE17try_new_uninit_inCs1Rjy1FfFCsk_5rayon: argument 0"}
!29 = distinct !{!29, !"_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeNtNtB6_6string6StringERNtNtB6_5alloc6GlobalE17try_new_uninit_inCs1Rjy1FfFCsk_5rayon"}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{i32 0, i32 1114112}
!32 = !{!33, !35}
!33 = distinct !{!33, !34, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItercE6boundsB4_: argument 0"}
!34 = distinct !{!34, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItercE6boundsB4_"}
!35 = distinct !{!35, !36, !"_RNvXs3_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter23IndexedParallelIterator3len: argument 0"}
!36 = distinct !{!36, !"_RNvXs3_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter23IndexedParallelIterator3len"}
!37 = !{i8 0, i8 2}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItercE6boundsB4_: argument 0"}
!40 = distinct !{!40, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItercE6boundsB4_"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint: argument 0"}
!43 = distinct !{!43, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 0"}
!46 = distinct !{!46, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_"}
!47 = distinct !{!47, !46, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 1"}
!48 = !{!49, !51, !53}
!49 = distinct !{!49, !50, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_: argument 0"}
!50 = distinct !{!50, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_"}
!51 = distinct !{!51, !52, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_: argument 0"}
!52 = distinct !{!52, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_"}
!53 = distinct !{!53, !54, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_: argument 0"}
!54 = distinct !{!54, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 1"}
!57 = distinct !{!57, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 0"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 1"}
!62 = distinct !{!62, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 0"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_10PartialOrd2le: argument 0"}
!67 = distinct !{!67, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_10PartialOrd2le"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_10PartialOrd2le: argument 1"}
!70 = !{!66, !61}
!71 = !{!69, !64}
!72 = !{!69, !61}
!73 = !{!66, !64}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterhE6boundsB4_: argument 0"}
!76 = distinct !{!76, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterhE6boundsB4_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint: argument 0"}
!79 = distinct !{!79, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint"}
!80 = !{!81, !83}
!81 = distinct !{!81, !82, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 0"}
!82 = distinct !{!82, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_"}
!83 = distinct !{!83, !82, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 1"}
!84 = !{!85, !87, !89}
!85 = distinct !{!85, !86, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_: argument 0"}
!86 = distinct !{!86, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_"}
!87 = distinct !{!87, !88, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_: argument 0"}
!88 = distinct !{!88, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_"}
!89 = distinct !{!89, !90, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_: argument 0"}
!90 = distinct !{!90, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 1"}
!93 = distinct !{!93, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 0"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivetENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 1"}
!98 = distinct !{!98, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivetENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon"}
!99 = !{!100}
!100 = distinct !{!100, !98, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivetENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 0"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_RNvXsY_NtNtCs3oUPovFnLWP_4core3cmp5implstNtB7_10PartialOrd2le: argument 0"}
!103 = distinct !{!103, !"_RNvXsY_NtNtCs3oUPovFnLWP_4core3cmp5implstNtB7_10PartialOrd2le"}
!104 = !{!105}
!105 = distinct !{!105, !103, !"_RNvXsY_NtNtCs3oUPovFnLWP_4core3cmp5implstNtB7_10PartialOrd2le: argument 1"}
!106 = !{!102, !97}
!107 = !{!105, !100}
!108 = !{!105, !97}
!109 = !{!102, !100}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItertE6boundsB4_: argument 0"}
!112 = distinct !{!112, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItertE6boundsB4_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint: argument 0"}
!115 = distinct !{!115, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint"}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 0"}
!118 = distinct !{!118, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_"}
!119 = distinct !{!119, !118, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 1"}
!120 = !{!121, !123, !125}
!121 = distinct !{!121, !122, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_: argument 0"}
!122 = distinct !{!122, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_"}
!123 = distinct !{!123, !124, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_: argument 0"}
!124 = distinct !{!124, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_"}
!125 = distinct !{!125, !126, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_: argument 0"}
!126 = distinct !{!126, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 1"}
!129 = distinct !{!129, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked"}
!130 = !{!131}
!131 = distinct !{!131, !129, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 0"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 1"}
!134 = distinct !{!134, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 0"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_RNvXs18_NtNtCs3oUPovFnLWP_4core3cmp5implsaNtB8_10PartialOrd2le: argument 0"}
!139 = distinct !{!139, !"_RNvXs18_NtNtCs3oUPovFnLWP_4core3cmp5implsaNtB8_10PartialOrd2le"}
!140 = !{!141}
!141 = distinct !{!141, !139, !"_RNvXs18_NtNtCs3oUPovFnLWP_4core3cmp5implsaNtB8_10PartialOrd2le: argument 1"}
!142 = !{!138, !133}
!143 = !{!141, !136}
!144 = !{!141, !133}
!145 = !{!138, !136}
!146 = !{!"branch_weights", i32 4000000, i32 4001}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteraE6boundsB4_: argument 0"}
!149 = distinct !{!149, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteraE6boundsB4_"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint: argument 0"}
!152 = distinct !{!152, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint"}
!153 = !{!154, !156}
end_hunk_1
