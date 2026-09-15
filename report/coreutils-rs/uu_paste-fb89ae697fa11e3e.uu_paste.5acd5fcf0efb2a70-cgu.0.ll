Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_paste-fb89ae697fa11e3e.uu_paste.5acd5fcf0efb2a70-cgu.0?download=true
inline.NumInlined: 456
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs7NkY4QXzcxE_8uu_paste:bb.a
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs7NkY4QXzcxE_8uu_paste.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.e) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %.val.i = load i64, ptr %0, align 8, !range !5, !alias.scope !178, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !178, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !178
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !188
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.d = load i64, ptr %i.c, align 8, !range !190, !alias.scope !189, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !10, !alias.scope !189, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !189, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !191
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !10, !alias.scope !189, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !189, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !189 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !189, !nonnull !4, !align !11, !noundef !4 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !189 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #26, !noalias !189, !inline_history !187
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !5, !invariant.load !4, !noalias !189 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !4, !noalias !189
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #23, !noalias !189
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !5, !alias.scope !195, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !195
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !195
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 49) %4) #23, !noalias !195
  %i.h = load i64, ptr %i.a, align 8, !range !13, !noalias !195, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !14, !noalias !195, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !195, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !195
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !195
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !195
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCs7NkY4QXzcxE_8uu_paste5paste(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i1 noundef zeroext %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, i8 noundef range(i8 0, 11) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [1 x i8], align 1                 ; 5 uses
  %i.o = alloca [8192 x i8], align 1              ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 21 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 21 uses
  %i.z = alloca [72 x i8], align 8                ; 44 uses
  %i.aa = alloca [1 x i8], align 1                ; 8 uses
  %i.ab = alloca [48 x i8], align 8               ; 16 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 12 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.3.sroa.2 = alloca [16 x i8], align 8     ; 2 uses
  %i.af = alloca [24 x i8], align 8               ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val62 = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val63 = load i64, ptr %i.ai, align 8, !noundef !4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !395
  %i.aj = shl i64 %.val63, 4                      ; 4 uses
  %i.ak = icmp ugt i64 %.val63, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.aj, 9223372036854775800
  %or.cond.i.i = or i1 %i.ak, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !396
  %i.am = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 9) 8) #23, !noalias !396 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.49.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i, i64 %i.aj) #25, !noalias !395
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i: ; preds = %bb.c
  store i64 %.val63, ptr %i.v, align 8, !noalias !395
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 6 uses
  store ptr %i.am, ptr %i.ao, align 8, !noalias !395
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i64 0, ptr %i.ap, align 8, !noalias !395
  %.not81.i = icmp eq i64 %.val63, 0
  br i1 %.not81.i, label %bb.bi, label %.lr.ph.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i: ; preds = %bb.b
  %i.aq = icmp eq i64 %.val63, 0
  tail call void @llvm.assume(i1 %i.aq)
  br label %bb.bi

._crit_edge.i:                                    ; preds = %.backedge.i
  %.sroa.06.0.copyload.pre.i = load i64, ptr %i.v, align 8, !noalias !395 ; 2 uses
  %.sroa.4.0.copyload.pre.i = load ptr, ptr %i.ao, align 8, !noalias !395 ; 4 uses
  %i.ar = icmp ugt i64 %.sroa.06.0.copyload.pre.i, %i.dc
  br i1 %i.ar, label %bb.e, label %bb.bi

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.pre.i) ]
  %i.as = shl nuw i64 %.sroa.06.0.copyload.pre.i, 4 ; 3 uses
  %i.at = icmp eq i64 %i.dc, 0
  br i1 %i.at, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i, label %bb.f

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.pre.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !397
  br label %bb.bi

bb.f:                                             ; preds = %bb.e
  %i.au = shl nuw i64 %i.dc, 4                    ; 3 uses
  %i.av = icmp ule i64 %i.au, %i.as
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4.0.copyload.pre.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 16, 0) %i.au) #23, !noalias !397 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.g, label %bb.bi

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #25, !noalias !398
  unreachable

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i, %.backedge.i
  %i.ay = phi ptr [ %i.db, %.backedge.i ], [ %i.am, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ]
  %i.az = phi i64 [ %i.dc, %.backedge.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ] ; 18 uses
  %.sroa.01.080.i = phi i64 [ %.sroa.01.0.be.i, %.backedge.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val62, i64 %.sroa.01.080.i ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !395, !noundef !4
  %i.bc = icmp eq i8 %i.bb, 92
  br i1 %i.bc, label %bb.h, label %bb.bb

bb.h:                                             ; preds = %.lr.ph.i
  %i.bd = add nuw nsw i64 %.sroa.01.080.i, 1      ; 4 uses
  %.not53.i = icmp ult i64 %i.bd, %.val63
  br i1 %.not53.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !395
  store i64 0, ptr %i.u, align 8, !noalias !395
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !395
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !395
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val62, i64 noundef %.val63) #23, !noalias !395
  %i.be = load i64, ptr %i.t, align 8, !range !10, !noalias !395, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !395 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !395 ; 14 uses
  %.not.i59.i = icmp slt i64 %i.bi, 0
  br i1 %.not.i59.i, label %bb.af, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp eq i64 %i.bi, 0                    ; 2 uses
  br i1 %i.bj, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit62.thread30.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !399
  %i.bk = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bi, i64 noundef range(i64 1, 9) 1) #23, !noalias !399 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.af, label %bb.au

bb.l:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.bd ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !395, !noundef !4
  switch i8 %i.bn, label %bb.m [
    i8 48, label %bb.n
    i8 92, label %bb.o
    i8 110, label %bb.q
    i8 116, label %bb.s
    i8 98, label %bb.u
    i8 102, label %bb.w
    i8 114, label %bb.y
    i8 118, label %bb.aa
  ]

bb.m:                                             ; preds = %bb.l
  %i.bo = sub nuw nsw i64 %.val63, %i.bd          ; 2 uses
  %i.bp = tail call noundef i64 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7charmap11mb_char_len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo) #23, !noalias !395
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bp) ; 6 uses
  %i.bq = add nuw nsw i64 %..i.i, %i.bd
  %i.br = icmp eq i64 %..i.i, 0
  br i1 %i.br, label %bb.ad, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bs = load i64, ptr %i.v, align 8, !range !5, !alias.scope !400, !noalias !401, !noundef !4
  %i.bt = icmp eq i64 %i.az, %i.bs
  br i1 %i.bt, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.bu = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.p, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !6

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.o
  store i8 92, ptr %i.bu, align 1, !noalias !395
  %i.bw = load i64, ptr %i.v, align 8, !range !5, !alias.scope !402, !noalias !403, !noundef !4
  %i.bx = icmp eq i64 %i.az, %i.bw
  br i1 %i.bx, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.q:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.by = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.r, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i, !prof !6

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i: ; preds = %bb.q
  store i8 10, ptr %i.by, align 1, !noalias !395
  %i.ca = load i64, ptr %i.v, align 8, !range !5, !alias.scope !404, !noalias !405, !noundef !4
  %i.cb = icmp eq i64 %i.az, %i.ca
  br i1 %i.cb, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.s:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.cc = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.t, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i, !prof !6

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i: ; preds = %bb.s
  store i8 9, ptr %i.cc, align 1, !noalias !395
  %i.ce = load i64, ptr %i.v, align 8, !range !5, !alias.scope !406, !noalias !407, !noundef !4
  %i.cf = icmp eq i64 %i.az, %i.ce
  br i1 %i.cf, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.u:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.cg = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.v, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i, !prof !6

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i: ; preds = %bb.u
  store i8 8, ptr %i.cg, align 1, !noalias !395
  %i.ci = load i64, ptr %i.v, align 8, !range !5, !alias.scope !408, !noalias !409, !noundef !4
  %i.cj = icmp eq i64 %i.az, %i.ci
  br i1 %i.cj, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.w:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.ck = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.x, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i, !prof !6

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i: ; preds = %bb.w
  store i8 12, ptr %i.ck, align 1, !noalias !395
  %i.cm = load i64, ptr %i.v, align 8, !range !5, !alias.scope !410, !noalias !411, !noundef !4
  %i.cn = icmp eq i64 %i.az, %i.cm
  br i1 %i.cn, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.y:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
  %i.co = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !395 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.z, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i, !prof !6

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !395
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i: ; preds = %bb.y
  store i8 13, ptr %i.co, align 1, !noalias !395
  %i.cq = load i64, ptr %i.v, align 8, !range !5, !alias.scope !412, !noalias !413, !noundef !4
  %i.cr = icmp eq i64 %i.az, %i.cq
  br i1 %i.cr, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.aa:                                            ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !395
end_hunk_0
begin_hunk_1_@_RNvCs7NkY4QXzcxE_8uu_paste5paste:bb.a
  %.sroa.26.4148.i.i = phi i64 [ %i.fk, %bb.at ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.fn, %bb.at ], [ 0, %.preheader.i.i ]
  %i.ff = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !422, !noalias !423, !noundef !4
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -48                  ; 2 uses
  %i.fi = icmp ult i32 %i.fh, 10
  br i1 %i.fi, label %bb.at, label %.loopexit.i

bb.at:                                            ; preds = %.lr.ph150.i.i
  %i.fj = mul i64 %.sroa.084.4147.i.i, 10
  %i.fk = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.fm = zext nneg i32 %i.fh to i64
  %i.fn = add i64 %i.fj, %i.fm                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

bb.au:                                            ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false), !noalias !395
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit62.thread30.i

.loopexit.i:                                      ; preds = %bb.am, %bb.al, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.ar, %bb.aq, %.preheader111.i.i, %.lr.ph150.i.i, %bb.ah, %bb.ah, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !395
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.bi) #22, !noalias !395
  %i.fo = load i8, ptr %i.s, align 8, !range !16, !noalias !395, !noundef !4
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.ax, label %bb.ay

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.an, %bb.ao, %bb.as, %bb.at, %.preheader.i.i, %.preheader114.i.i
  %.sroa.155.0.i = phi i64 [ %i.fn, %bb.at ], [ %i.eq, %bb.ao ], [ %i.fe, %bb.as ], [ 0, %.preheader.i.i ], [ 0, %.preheader114.i.i ], [ %i.eh, %bb.an ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 10, i64 noundef %.sroa.155.0.i) #23, !noalias !395
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !395
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 41, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #23, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !395
  br i1 %i.bj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dm, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !424
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i

bb.ax:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !395
  store i64 %i.bi, ptr %i.r, align 8, !noalias !395
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.dm, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !395
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.bi, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !395
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 10, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r) #23, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !395
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 41, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #23, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !395
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i

bb.ay:                                            ; preds = %.loopexit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fr = load double, ptr %i.fq, align 8, !noalias !395, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 10, double noundef %i.fr) #23, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !395
  br label %bb.av

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i: ; preds = %bb.ax, %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !395
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !425
  %i.fs = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !425 ; 5 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.az, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit79.i, !prof !6

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !425
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit79.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !395
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i32 1, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !395
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %.val.i80.i = load ptr, ptr %i.ao, align 8, !alias.scope !426, !noalias !395, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.fu = icmp eq i64 %i.az, 0
  br i1 %i.fu, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit79.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxShEECs7NkY4QXzcxE_8uu_paste.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.fw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxShEECs7NkY4QXzcxE_8uu_paste.exit.i.i.i.i ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit79.i ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.val.i80.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.fw = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fv, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.fx, align 8, !alias.scope !427, !noalias !428, !noundef !4 ; 2 uses
  %i.fy = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.fy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxShEECs7NkY4QXzcxE_8uu_paste.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.fv, align 8, !alias.scope !427, !noalias !428, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val3.i.i.i.i, i64 noundef 1) #23, !noalias !429
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxShEECs7NkY4QXzcxE_8uu_paste.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxShEECs7NkY4QXzcxE_8uu_paste.exit.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.fz = icmp eq i64 %i.fw, %i.az
  br i1 %i.fz, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxShEECs7NkY4QXzcxE_8uu_paste.exit.i.i.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit79.i
  %.val2.i.i = load i64, ptr %i.v, align 8, !range !5, !alias.scope !426, !noalias !395, !noundef !4 ; 2 uses
  %i.ga = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ga, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i.i
  %i.gb = shl nuw i64 %.val2.i.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i80.i, i64 noundef %i.gb, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !428
  br label %bb.bf

bb.bb:                                            ; preds = %.lr.ph.i
  %i.gc = sub nuw nsw i64 %.val63, %.sroa.01.080.i ; 2 uses
  %i.gd = tail call noundef i64 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7charmap11mb_char_len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef %i.gc) #23, !noalias !395
  %..i82.i = tail call noundef i64 @llvm.umin.i64(i64 %i.gc, i64 %i.gd) ; 6 uses
  %i.ge = add nuw nsw i64 %..i82.i, %.sroa.01.080.i
  %i.gf = icmp eq i64 %..i82.i, 0
  br i1 %i.gf, label %bb.bd, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i83.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i83.i: ; preds = %bb.bb
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !430
  %i.gg = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %..i82.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !430 ; 3 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.bc, label %.split20.i84.i

.split20.i84.i:                                   ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i83.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gg, ptr nonnull readonly align 1 %i.ba, i64 range(i64 0, -9223372036854775808) %..i82.i, i1 false), !noalias !395
  br label %bb.bd

bb.bc:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i83.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %..i82.i) #25, !noalias !395
  unreachable

bb.bd:                                            ; preds = %.split20.i84.i, %bb.bb
  %.sroa.0.0.i85.ph.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.bb ], [ %i.gg, %.split20.i84.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.gi = load i64, ptr %i.v, align 8, !range !5, !alias.scope !431, !noalias !432, !noundef !4
  %i.gj = icmp eq i64 %i.az, %i.gi
  br i1 %i.gj, label %bb.be, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i

bb.be:                                            ; preds = %bb.bd
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxShEE8grow_oneCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #22, !noalias !432
  %.pre.i = load ptr, ptr %i.ao, align 8, !alias.scope !431, !noalias !432
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i: ; preds = %bb.be, %bb.bd
  %i.gk = phi ptr [ %i.ay, %bb.bd ], [ %.pre.i, %bb.be ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.az ; 2 uses
  store ptr %.sroa.0.0.i85.ph.i, ptr %i.gl, align 8, !noalias !433
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 %..i82.i, ptr %i.gm, align 8, !noalias !434
  %i.gn = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.gn, ptr %i.ap, align 8, !alias.scope !431, !noalias !432
  br label %.backedge.i

bb.bf:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.go, align 8, !alias.scope !435, !nonnull !4, !noundef !4 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.gp, align 8, !alias.scope !435, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.gq = icmp eq i64 %.val1.i, 0
  br i1 %i.gq, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i
  %.sroa.0.04.i.i.i = phi i64 [ %i.gs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i ], [ 0, %bb.bf ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.04.i.i.i ; 2 uses
  %i.gs = add nuw nsw i64 %.sroa.0.04.i.i.i, 1    ; 2 uses
  %.val.i.i.i = load i64, ptr %i.gr, align 8, !range !5, !alias.scope !436, !noalias !435, !noundef !4 ; 2 uses
  %i.gt = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.gt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i
  %i.gu = getelementptr i8, ptr %i.gr, i64 8
  %.val3.i.i.i = load ptr, ptr %i.gu, align 8, !alias.scope !436, !noalias !435, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !437
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i: ; preds = %bb.bg, %.lr.ph.i.i.i
  %i.gv = icmp eq i64 %i.gs, %.val1.i
  br i1 %i.gv, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i, %bb.bf
  %.val2.i = load i64, ptr %0, align 8, !range !5, !alias.scope !435, !noundef !4 ; 2 uses
  %i.gw = icmp eq i64 %.val2.i, 0
  br i1 %i.gw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit, label %bb.bh

bb.bh:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs7NkY4QXzcxE_8uu_paste.exit.i
  %i.gx = mul nuw i64 %.val2.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !435
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit

bb.bi:                                            ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %._crit_edge.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i
  %.sroa.6.0.copyload153.i = phi i64 [ %i.dc, %bb.f ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %i.dc, %._crit_edge.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ] ; 15 uses
  %.sroa.410.0.copyload.i.i = phi ptr [ %i.aw, %bb.f ], [ inttoptr (i64 8 to ptr), %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.4.0.copyload.pre.i, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i ], [ %i.am, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ] ; 20 uses
  %i.gy = icmp ult i64 %.sroa.6.0.copyload153.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.gy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.410.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr null, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !4 ; 6 uses
  %i.hb = icmp ult i64 %i.ha, 384307168202282326
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = mul nuw nsw i64 %i.ha, 48               ; 2 uses
  %.not.i84 = icmp samesign ugt i64 %i.ha, 192153584101141162
  br i1 %.not.i84, label %bb.bm, label %bb.bj, !prof !15

bb.bj:                                            ; preds = %bb.bi
  %i.hd = icmp eq i64 %i.ha, 0                    ; 2 uses
  br i1 %i.hd, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !438
  %i.he = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hc, i64 noundef range(i64 1, 9) 8) #23, !noalias !438 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hg = ptrtoint ptr %i.he to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit

bb.bm:                                            ; preds = %bb.bi, %bb.bk
  %.sroa.10191.0.ph = phi i64 [ %i.hc, %bb.bk ], [ undef, %bb.bi ]
  %.sroa.4.0.ph = phi i64 [ 8, %bb.bk ], [ 0, %bb.bi ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.10191.0.ph) #25
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit: ; preds = %bb.bl, %bb.bj
  %.sroa.10191.0 = phi i64 [ %i.hg, %bb.bl ], [ 8, %bb.bj ]
  %i.hh = inttoptr i64 %.sroa.10191.0 to ptr      ; 2 uses
  store i64 %i.ha, ptr %i.af, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 6 uses
  store ptr %i.hh, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i64 0, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.hm = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 4 uses
  %.idx = mul nuw nsw i64 %i.ha, 24
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx ; 5 uses
  br i1 %i.hd, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.thread, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.lr.ph

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.lr.ph: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit150
  %i.hp = phi ptr [ %i.hh, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.lr.ph ], [ %i.wv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit150 ]
  %i.hq = phi i64 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.lr.ph ], [ %i.wx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit150 ] ; 4 uses
  %.sroa.6159.0325 = phi ptr [ %i.hl, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.lr.ph ], [ %i.hr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit150 ] ; 4 uses
  %.sroa.4.sroa.2.0324 = phi i32 [ undef, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.lr.ph ], [ %.sroa.4.sroa.2.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit150 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.6159.0325, i64 24 ; 6 uses
  %.sroa.0161.0.copyload162 = load i64, ptr %.sroa.6159.0325, align 8, !noalias !439 ; 5 uses
  %.sroa.8.0..sroa.6159.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6159.0325, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa.6159.8..sroa_idx, align 8, !noalias !439 ; 7 uses
  %.sroa.8.sroa.6.0..sroa.8.0..sroa.6159.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6159.0325, i64 16
  %.sroa.8.sroa.6.0.copyload = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa.6159.8..sroa_idx.sroa_idx, align 8, !noalias !439 ; 2 uses
  %.not = icmp eq i64 %.sroa.0161.0.copyload162, -1
  br i1 %.not, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.thread, label %bb.bn

bb.bn:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit
  %i.hs = icmp eq i64 %.sroa.8.sroa.6.0.copyload, 1
  br i1 %i.hs, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload) ]
  %lhsc.i = load i8, ptr %.sroa.8.sroa.0.0.copyload, align 1
  %i.ht = icmp eq i8 %lhsc.i, 45
  br i1 %i.ht, label %bb.gg, label %_RNvXsb_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringINtNtCs6JMX4GRUq9U_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.thread: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit
  %i.hu = phi i64 [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit ], [ %i.hq, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit ] ; 2 uses
  %.sroa.6159.1215 = phi ptr [ %i.hl, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit ], [ %i.hr, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit ] ; 3 uses
  %i.hv = ptrtoint ptr %i.hn to i64
  %i.hw = ptrtoint ptr %.sroa.6159.1215 to i64
  %i.hx = sub nuw i64 %i.hv, %i.hw
  %i.hy = udiv exact i64 %i.hx, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.hz = icmp eq ptr %i.hn, %.sroa.6159.1215
  br i1 %i.hz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i, label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i91
  %.sroa.0.04.i.i.i88 = phi i64 [ %i.ib, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i91 ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.thread ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6159.1215, i64 %.sroa.0.04.i.i.i88 ; 2 uses
  %i.ib = add nuw nsw i64 %.sroa.0.04.i.i.i88, 1  ; 2 uses
  %.val.i.i.i89 = load i64, ptr %i.ia, align 8, !range !5, !alias.scope !440, !noalias !441, !noundef !4 ; 2 uses
  %i.ic = icmp eq i64 %.val.i.i.i89, 0
  br i1 %i.ic, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i91, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i87
  %i.id = getelementptr i8, ptr %i.ia, i64 8
  %.val3.i.i.i90 = load ptr, ptr %i.id, align 8, !alias.scope !440, !noalias !441, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i90, i64 noundef %.val.i.i.i89, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !442
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i91

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i91: ; preds = %bb.bo, %.lr.ph.i.i.i87
  %i.ie = icmp eq i64 %i.ib, %i.hy
  br i1 %i.ie, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i, label %.lr.ph.i.i.i87

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit150, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i91, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.thread
  %i.if = phi i64 [ %i.hu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i91 ], [ %i.hu, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs7NkY4QXzcxE_8uu_paste.exit.thread ], [ %i.wx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit150 ] ; 14 uses
  %i.ig = icmp eq i64 %i.hm, 0
  br i1 %i.ig, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i
  %i.ih = mul nuw i64 %i.hm, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hl, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !441
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7NkY4QXzcxE_8uu_paste.exit.i.i, %bb.bp
  %i.ii = icmp ult i64 %i.if, 192153584101141163
  call void @llvm.assume(i1 %i.ii)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ij = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #23
  store ptr %i.ij, ptr %i.ac, align 8
  %i.ik = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac) #23
  store ptr %i.ik, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %1, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit
  %i.il = icmp eq i64 %i.if, 1
  br i1 %i.il, label %bb.cb, label %bb.bv

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %3, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  switch i64 %.sroa.6.0.copyload153.i, label %bb.bt [
    i64 0, label %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState3new.exit
    i64 1, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload.i.i, i64 8
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !444, !noalias !443, !noundef !4 ; 2 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState3new.exit, label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.ip = icmp ne i64 %.sroa.6.0.copyload153.i, 0
  call void @llvm.assume(i1 %i.ip)
  %i.iq = load ptr, ptr %.sroa.410.0.copyload.i.i, align 8, !alias.scope !444, !noalias !443, !nonnull !4, !noundef !4
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload.i.i, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !444, !noalias !443, !noundef !4
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %.sroa.410.0.copyload.i.i, i64 %.sroa.6.0.copyload153.i ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.iq, ptr %i.iu, align 8, !alias.scope !443, !noalias !444
  %i.iv = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.is, ptr %i.iv, align 8, !alias.scope !443, !noalias !444
  %i.iw = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %.sroa.410.0.copyload.i.i, ptr %i.iw, align 8, !alias.scope !443, !noalias !444
  %i.ix = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %.sroa.6.0.copyload153.i, ptr %i.ix, align 8, !alias.scope !443, !noalias !444
  %i.iy = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %.sroa.410.0.copyload.i.i, ptr %i.iy, align 8, !alias.scope !443, !noalias !444
  %.sroa.4.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.it, ptr %.sroa.4.0..sroa_idx.i93, align 8, !alias.scope !443, !noalias !444
  %.sroa.5.0..sroa_idx.i94 = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr %.sroa.410.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i94, align 8, !alias.scope !443, !noalias !444
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.it, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !443, !noalias !444
  br label %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState3new.exit

bb.bu:                                            ; preds = %bb.bs
  %i.iz = load ptr, ptr %.sroa.410.0.copyload.i.i, align 8, !alias.scope !444, !noalias !443, !nonnull !4, !noundef !4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.iz, ptr %i.ja, align 8, !alias.scope !443, !noalias !444
  %i.jb = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.in, ptr %i.jb, align 8, !alias.scope !443, !noalias !444
  br label %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState3new.exit

_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState3new.exit: ; preds = %bb.br, %bb.bs, %bb.bt, %bb.bu
  %.sink.i92 = phi i64 [ 1, %bb.bu ], [ 0, %bb.bs ], [ 2, %bb.bt ], [ %.sroa.6.0.copyload153.i, %bb.br ]
  store i64 %.sink.i92, ptr %i.z, align 8, !alias.scope !443, !noalias !444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 6 uses
  store i64 0, ptr %i.jd, align 8
  %i.je = load ptr, ptr %i.hi, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx341 = mul nuw nsw i64 %i.if, 48
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %.idx341
  %i.jg = icmp eq i64 %i.if, 0
  br i1 %i.jg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecbEECs7NkY4QXzcxE_8uu_paste.exit, label %.lr.ph339

.lr.ph339:                                        ; preds = %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState3new.exit
end_hunk_1
