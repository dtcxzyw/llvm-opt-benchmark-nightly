inline.NumInlined: 456
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs7NkY4QXzcxE_8uu_paste:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = atomicrmw xchg ptr %i.e, i32 0 release, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs7NkY4QXzcxE_8uu_paste.exit, !prof !166

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.e) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %.val.i = load i64, ptr %0, align 8, !range !40, !alias.scope !167, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !167, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !167
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !170, !noundef !4 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !171
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.d = load i64, ptr %i.c, align 8, !range !177, !alias.scope !174, !noundef !4 ; 3 uses
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
  %.val.i = load i64, ptr %i.i, align 8, !range !170, !alias.scope !174, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !174, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !178
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !170, !alias.scope !174, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !174, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !181
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !174 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !174, !nonnull !4, !align !184, !noundef !4 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !174 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #26, !noalias !174, !inline_history !185
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !40, !invariant.load !4, !noalias !174 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !186, !invariant.load !4, !noalias !174
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #23, !noalias !174
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs7NkY4QXzcxE_8uu_paste.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !40, !alias.scope !187, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !187
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !187
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 49) %4) #23, !noalias !187
  %i.h = load i64, ptr %i.a, align 8, !range !190, !noalias !187, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !191, !noalias !187, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !187
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #25
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !187, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !187
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !187
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !187
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !192
  %i.aj = shl i64 %.val63, 4                      ; 4 uses
  %i.ak = icmp ugt i64 %.val63, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.aj, 9223372036854775800
  %or.cond.i.i = or i1 %i.ak, %.not.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !195

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !196
  %i.am = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 9) 8) #23, !noalias !196 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.49.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.49.0.ph.i, i64 %i.aj) #25, !noalias !192
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i: ; preds = %bb.c
  store i64 %.val63, ptr %i.v, align 8, !noalias !192
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 6 uses
  store ptr %i.am, ptr %i.ao, align 8, !noalias !192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i64 0, ptr %i.ap, align 8, !noalias !192
  %.not81.i = icmp eq i64 %.val63, 0
  br i1 %.not81.i, label %bb.bi, label %.lr.ph.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.thread.i: ; preds = %bb.b
  %i.aq = icmp eq i64 %.val63, 0
  tail call void @llvm.assume(i1 %i.aq)
  br label %bb.bi

._crit_edge.i:                                    ; preds = %.backedge.i
  %.sroa.06.0.copyload.pre.i = load i64, ptr %i.v, align 8, !noalias !192 ; 2 uses
  %.sroa.4.0.copyload.pre.i = load ptr, ptr %i.ao, align 8, !noalias !192 ; 4 uses
  %i.ar = icmp ugt i64 %.sroa.06.0.copyload.pre.i, %i.dc
  br i1 %i.ar, label %bb.e, label %bb.bi

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.pre.i) ]
  %i.as = shl nuw i64 %.sroa.06.0.copyload.pre.i, 4 ; 3 uses
  %i.at = icmp eq i64 %i.dc, 0
  br i1 %i.at, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i, label %bb.f

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.pre.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !199
  br label %bb.bi

bb.f:                                             ; preds = %bb.e
  %i.au = shl nuw i64 %i.dc, 4                    ; 3 uses
  %i.av = icmp ule i64 %i.au, %i.as
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4.0.copyload.pre.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 16, 0) %i.au) #23, !noalias !199 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.g, label %bb.bi

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.au) #25, !noalias !206
  unreachable

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i, %.backedge.i
  %i.ay = phi ptr [ %i.db, %.backedge.i ], [ %i.am, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ]
  %i.az = phi i64 [ %i.dc, %.backedge.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ] ; 18 uses
  %.sroa.01.080.i = phi i64 [ %.sroa.01.0.be.i, %.backedge.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val62, i64 %.sroa.01.080.i ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !192, !noundef !4
  %i.bc = icmp eq i8 %i.bb, 92
  br i1 %i.bc, label %bb.h, label %bb.bb

bb.h:                                             ; preds = %.lr.ph.i
  %i.bd = add nuw nsw i64 %.sroa.01.080.i, 1      ; 4 uses
  %.not53.i = icmp ult i64 %i.bd, %.val63
  br i1 %.not53.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !192
  store i64 0, ptr %i.u, align 8, !noalias !192
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !192
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !192
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val62, i64 noundef %.val63) #23, !noalias !192
  %i.be = load i64, ptr %i.t, align 8, !range !170, !noalias !192, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !192 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !192 ; 14 uses
  %.not.i59.i = icmp slt i64 %i.bi, 0
  br i1 %.not.i59.i, label %bb.af, label %bb.j, !prof !195

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp eq i64 %i.bi, 0                    ; 2 uses
  br i1 %i.bj, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NkY4QXzcxE_8uu_paste.exit62.thread30.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !207
  %i.bk = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bi, i64 noundef range(i64 1, 9) 1) #23, !noalias !207 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.af, label %bb.au

bb.l:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.val62, i64 %i.bd ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !192, !noundef !4
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
  %i.bp = tail call noundef i64 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n7charmap11mb_char_len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo) #23, !noalias !192
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bo, i64 %i.bp) ; 6 uses
  %i.bq = add nuw nsw i64 %..i.i, %i.bd
  %i.br = icmp eq i64 %..i.i, 0
  br i1 %i.br, label %bb.ad, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bs = load i64, ptr %i.v, align 8, !range !40, !alias.scope !210, !noalias !213, !noundef !4
  %i.bt = icmp eq i64 %i.az, %i.bs
  br i1 %i.bt, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !192
  %i.bu = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.p, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !129

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !192
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.o
  store i8 92, ptr %i.bu, align 1, !noalias !192
  %i.bw = load i64, ptr %i.v, align 8, !range !40, !alias.scope !215, !noalias !218, !noundef !4
  %i.bx = icmp eq i64 %i.az, %i.bw
  br i1 %i.bx, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.q:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !192
  %i.by = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.r, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i, !prof !129

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !192
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i: ; preds = %bb.q
  store i8 10, ptr %i.by, align 1, !noalias !192
  %i.ca = load i64, ptr %i.v, align 8, !range !40, !alias.scope !220, !noalias !223, !noundef !4
  %i.cb = icmp eq i64 %i.az, %i.ca
  br i1 %i.cb, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.s:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !192
  %i.cc = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192 ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.t, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i, !prof !129

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !192
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i: ; preds = %bb.s
  store i8 9, ptr %i.cc, align 1, !noalias !192
  %i.ce = load i64, ptr %i.v, align 8, !range !40, !alias.scope !225, !noalias !228, !noundef !4
  %i.cf = icmp eq i64 %i.az, %i.ce
  br i1 %i.cf, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.u:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !192
  %i.cg = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.v, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i, !prof !129

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !192
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i: ; preds = %bb.u
  store i8 8, ptr %i.cg, align 1, !noalias !192
  %i.ci = load i64, ptr %i.v, align 8, !range !40, !alias.scope !230, !noalias !233, !noundef !4
  %i.cj = icmp eq i64 %i.az, %i.ci
  br i1 %i.cj, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.w:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !192
  %i.ck = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.x, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i, !prof !129

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !192
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i: ; preds = %bb.w
  store i8 12, ptr %i.ck, align 1, !noalias !192
  %i.cm = load i64, ptr %i.v, align 8, !range !40, !alias.scope !235, !noalias !238, !noundef !4
  %i.cn = icmp eq i64 %i.az, %i.cm
  br i1 %i.cn, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.y:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !192
  %i.co = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192 ; 4 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.z, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i, !prof !129

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !192
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i: ; preds = %bb.y
  store i8 13, ptr %i.co, align 1, !noalias !192
  %i.cq = load i64, ptr %i.v, align 8, !range !40, !alias.scope !240, !noalias !243, !noundef !4
  %i.cr = icmp eq i64 %i.az, %i.cq
  br i1 %i.cr, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

bb.aa:                                            ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !192
  %i.cs = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !192 ; 4 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ab, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i, !prof !129

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25, !noalias !192
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i: ; preds = %bb.aa
  store i8 11, ptr %i.cs, align 1, !noalias !192
  %i.cu = load i64, ptr %i.v, align 8, !range !40, !alias.scope !245, !noalias !248, !noundef !4
  %i.cv = icmp eq i64 %i.az, %i.cu
  br i1 %i.cv, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.n
  %.sink220.ph.i = phi ptr [ %i.co, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i ], [ %i.ck, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i ], [ inttoptr (i64 1 to ptr), %bb.n ], [ %i.bu, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.by, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i ], [ %i.cc, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i ], [ %i.cg, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i ], [ %i.cs, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i ]
  %.sink.ph.i = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i ], [ 0, %bb.n ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i ]
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxShEE8grow_oneCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #22, !noalias !192
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.n
  %.sink220.i = phi ptr [ %i.bu, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.by, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i ], [ %i.cc, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i ], [ %i.cg, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i ], [ %i.ck, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i ], [ %i.co, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i ], [ %i.cs, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i ], [ inttoptr (i64 1 to ptr), %bb.n ], [ %.sink220.ph.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i ]
  %.sink.i = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit64.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit66.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit68.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit70.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit72.i ], [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit74.i ], [ 0, %bb.n ], [ %.sink.ph.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.sink.split.i ]
  %i.cw = load ptr, ptr %i.ao, align 8, !noalias !192, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.az ; 2 uses
  store ptr %.sink220.i, ptr %i.cx, align 8, !noalias !192
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %.sink.i, ptr %i.cy, align 8, !noalias !192
  %i.cz = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.cz, ptr %i.ap, align 8, !noalias !192
  %i.da = add nuw nsw i64 %.sroa.01.080.i, 2
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i
  %i.db = phi ptr [ %i.di, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i ], [ %i.cw, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i ], [ %i.gk, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i ]
  %i.dc = phi i64 [ %i.dl, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i ], [ %i.cz, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i ], [ %i.gn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i ] ; 6 uses
  %.sroa.01.0.be.i = phi i64 [ %i.bq, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i ], [ %i.da, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit.i ], [ %i.ge, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit87.i ] ; 2 uses
  %i.dd = icmp ult i64 %.sroa.01.0.be.i, %.val63
  br i1 %i.dd, label %.lr.ph.i, label %._crit_edge.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.m
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !250
  %i.de = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %..i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !250 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ac, label %.split20.i.i

.split20.i.i:                                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull readonly align 1 %i.bm, i64 range(i64 0, -9223372036854775808) %..i.i, i1 false), !noalias !192
  br label %bb.ad

bb.ac:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %..i.i) #25, !noalias !192
  unreachable

bb.ad:                                            ; preds = %.split20.i.i, %bb.m
  %.sroa.0.0.i.ph.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.m ], [ %i.de, %.split20.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.dg = load i64, ptr %i.v, align 8, !range !40, !alias.scope !253, !noalias !256, !noundef !4
  %i.dh = icmp eq i64 %i.az, %i.dg
  br i1 %i.dh, label %bb.ae, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxShEE8grow_oneCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #22, !noalias !256
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxShEE8push_mutCs7NkY4QXzcxE_8uu_paste.exit76.i: ; preds = %bb.ae, %bb.ad
  %i.di = load ptr, ptr %i.ao, align 8, !alias.scope !253, !noalias !256, !nonnull !4, !noundef !4 ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.az ; 2 uses
  store ptr %.sroa.0.0.i.ph.i, ptr %i.dj, align 8, !noalias !258
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %..i.i, ptr %i.dk, align 8, !noalias !259
  %i.dl = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.dl, ptr %i.ap, align 8, !alias.scope !253, !noalias !256
  br label %.backedge.i

bb.af:                                            ; preds = %bb.k, %bb.i
  %.sroa.412.0.ph.i = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
end_hunk_0
begin_hunk_1_@_RNvCs7NkY4QXzcxE_8uu_paste5paste:bb.a
  %i.ob = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.nu, i64 %i.oa) ; 2 uses
  %i.oc = extractvalue { i64, i1 } %i.ob, 1
  br i1 %i.oc, label %.loopexit.i.i.i, label %bb.da, !prof !166

bb.da:                                            ; preds = %bb.cz
  %i.od = extractvalue { i64, i1 } %i.ob, 0       ; 2 uses
  %.not104.i.i.i.i = icmp eq i64 %i.ns, 0
  br i1 %.not104.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i, label %.preheader111.i.i.i.i

.lr.ph150.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %bb.db
  %.sroa.0.4149.i.i.i.i = phi ptr [ %i.ok, %bb.db ], [ %.sroa.0.0.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i.i = phi i64 [ %i.oj, %bb.db ], [ %.sroa.26.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.084.4147.i.i.i.i = phi i64 [ %i.om, %bb.db ], [ 0, %.preheader.i.i.i.i ]
  %i.oe = load i8, ptr %.sroa.0.4149.i.i.i.i, align 1, !alias.scope !381, !noalias !384, !noundef !4
  %i.of = zext i8 %i.oe to i32
  %i.og = add nsw i32 %i.of, -48                  ; 2 uses
  %i.oh = icmp ult i32 %i.og, 10
  br i1 %i.oh, label %bb.db, label %.loopexit.i.i.i

bb.db:                                            ; preds = %.lr.ph150.i.i.i.i
  %i.oi = mul i64 %.sroa.084.4147.i.i.i.i, 10
  %i.oj = add nsw i64 %.sroa.26.4148.i.i.i.i, -1  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i, i64 1
  %i.ol = zext nneg i32 %i.og to i64
  %i.om = add i64 %i.oi, %i.ol                    ; 2 uses
  %.not105.i.i.i.i = icmp eq i64 %i.oj, 0
  br i1 %.not105.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i, label %.lr.ph150.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.cu, %bb.ct, %.lr.ph.i.i.i.i107, %.lr.ph141.i.i.i.i, %bb.cz, %bb.cy, %.preheader111.i.i.i.i, %.lr.ph150.i.i.i.i, %bb.cp, %bb.cp, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs6JMX4GRUq9U_4core4cell11BorrowErrorNtB5_12SpecToString14spec_to_stringCs7NkY4QXzcxE_8uu_paste.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !344
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload4.i.i.i, i64 noundef %.sroa.8.0.copyload7.i.i.i) #22, !noalias !345
  %i.on = load i8, ptr %i.j, align 8, !range !268, !noalias !344, !noundef !4
  %i.oo = trunc nuw i8 %i.on to i1
  br i1 %i.oo, label %bb.de, label %bb.df

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i: ; preds = %bb.cv, %bb.cw, %bb.da, %bb.db, %.preheader.i.i.i.i, %.preheader114.i.i.i.i
  %.sroa.1511.0.i.i.i = phi i64 [ %i.om, %bb.db ], [ %i.np, %bb.cw ], [ %i.od, %bb.da ], [ 0, %.preheader.i.i.i.i ], [ 0, %.preheader114.i.i.i.i ], [ %i.ng, %bb.cv ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 5, i64 noundef %.sroa.1511.0.i.i.i) #23, !noalias !345
  br label %bb.dc

bb.dc:                                            ; preds = %bb.df, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !344
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #23, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !344
  %i.op = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, 0
  br i1 %i.op, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload4.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !386
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i

bb.de:                                            ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !344
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.i, align 8, !noalias !344
  store ptr %.sroa.5.0.copyload4.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !noalias !344
  store i64 %.sroa.8.0.copyload7.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !344
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #23, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !344
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 24, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #23, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !344
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i

bb.df:                                            ; preds = %.loopexit.i.i.i
  %i.oq = load double, ptr %i.lb, align 8, !noalias !344, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 5, double noundef %i.oq) #23, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !344
  br label %bb.dc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i: ; preds = %bb.de, %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !344
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !389
  %i.or = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !389 ; 4 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.dg, label %_RNCNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB6_11InputSource4read0B6_.exit.i.i, !prof !129

bb.dg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25, !noalias !389
  unreachable

_RNCNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB6_11InputSource4read0B6_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7NkY4QXzcxE_8uu_paste.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.or, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !345
  %.sroa.4.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx13.i.i.i, align 8, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !344
  br label %bb.di

bb.dh:                                            ; preds = %bb.cd
  %i.ot = add nuw nsw i64 %i.lh, 1
  store i64 %i.ot, ptr %i.lg, align 8, !noalias !345
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.ov = call { ptr, i1 } @_RNvMs1_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5Stdin4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ou) #23, !noalias !345 ; 2 uses
  %i.ow = extractvalue { ptr, i1 } %i.ov, 0
  %i.ox = extractvalue { ptr, i1 } %i.ov, 1
  store ptr %i.ow, ptr %i.m, align 8, !noalias !344
  %i.oy = zext i1 %i.ox to i8
  store i8 %i.oy, ptr %i.lc, align 8, !noalias !344
  %i.oz = call { i64, ptr } @_RNvXs6_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_9StdinLockNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull %i.o, i64 noundef 8192) #23, !noalias !392 ; 2 uses
  %i.pa = extractvalue { i64, ptr } %i.oz, 0
  %i.pb = extractvalue { i64, ptr } %i.oz, 1      ; 2 uses
  %i.pc = trunc nuw i64 %i.pa to i1
  br i1 %i.pc, label %bb.dj, label %bb.do

bb.di:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit.i.i, %_RNCNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB6_11InputSource4read0B6_.exit.i.i
  %.sroa.8.0.i = phi i64 [ %i.pg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit.i.i ], [ ptrtoint (ptr @15 to i64), %_RNCNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB6_11InputSource4read0B6_.exit.i.i ]
  %.sroa.0.024.i = phi ptr [ %i.pe, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit.i.i ], [ %i.or, %_RNCNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB6_11InputSource4read0B6_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !344
  br label %_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource4read.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.pd = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.pb) #23, !noalias !392 ; 2 uses
  %i.pe = extractvalue { ptr, ptr } %i.pd, 0
  %i.pf = extractvalue { ptr, ptr } %i.pd, 1
  %i.pg = ptrtoint ptr %i.pf to i64
  %.val21.i.i = load ptr, ptr %i.m, align 8, !noalias !344, !nonnull !4, !align !184, !noundef !4 ; 3 uses
  %.val22.i.i = load i8, ptr %i.lc, align 8, !range !268, !noalias !344, !noundef !4
  %i.ph = getelementptr inbounds nuw i8, ptr %.val21.i.i, i64 4
  %i.pi = trunc nuw i8 %.val22.i.i to i1
  br i1 %i.pi, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pj = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !344
  %i.pk = and i64 %i.pj, 9223372036854775807
  %i.pl = icmp eq i64 %i.pk, 0
  br i1 %i.pl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.dl, !prof !393

bb.dl:                                            ; preds = %bb.dk
  %i.pm = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #22, !noalias !392
  br i1 %i.pm, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store atomic i8 1, ptr %i.ph monotonic, align 4, !noalias !392
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj
  %i.pn = atomicrmw xchg ptr %.val21.i.i, i32 0 release, align 4, !noalias !392
  %i.po = icmp eq i32 %i.pn, 2
  br i1 %i.po, label %bb.dn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit.i.i, !prof !166

bb.dn:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val21.i.i) #23, !noalias !392
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit.i.i: ; preds = %bb.dn, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  %i.pp = load i64, ptr %i.lg, align 8, !noalias !392, !noundef !4
  %i.pq = add i64 %i.pp, -1
  store i64 %i.pq, ptr %i.lg, align 8, !noalias !392
  br label %bb.di

bb.do:                                            ; preds = %bb.dh
  %.val.i.i108 = load ptr, ptr %i.m, align 8, !noalias !344, !nonnull !4, !align !184, !noundef !4 ; 3 uses
  %.val20.i.i = load i8, ptr %i.lc, align 8, !range !268, !noalias !344, !noundef !4
  %i.pr = getelementptr inbounds nuw i8, ptr %.val.i.i108, i64 4
  %i.ps = trunc nuw i8 %.val20.i.i to i1
  br i1 %i.ps, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i25.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pt = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !344
  %i.pu = and i64 %i.pt, 9223372036854775807
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i25.i.i, label %bb.dq, !prof !393

bb.dq:                                            ; preds = %bb.dp
  %i.pw = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #22, !noalias !392
  br i1 %i.pw, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i25.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  store atomic i8 1, ptr %i.pr monotonic, align 4, !noalias !392
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i25.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i25.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.do
  %i.px = atomicrmw xchg ptr %.val.i.i108, i32 0 release, align 4, !noalias !392
  %i.py = icmp eq i32 %i.px, 2
  br i1 %i.py, label %bb.ds, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit26.i.i, !prof !166

bb.ds:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i25.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i108) #23, !noalias !392
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit26.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockECs7NkY4QXzcxE_8uu_paste.exit26.i.i: ; preds = %bb.ds, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i25.i.i
  %i.pz = load i64, ptr %i.lg, align 8, !noalias !392, !noundef !4
  %i.qa = add i64 %i.pz, -1
  store i64 %i.qa, ptr %i.lg, align 8, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !344
  br label %_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource4read.exit.thread.i

_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource4read.exit.i: ; preds = %bb.di, %bb.cm
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.i, %bb.di ], [ %i.ml, %bb.cm ] ; 2 uses
  %.sroa.0.125.i = phi ptr [ %.sroa.0.024.i, %bb.di ], [ %i.mj, %bb.cm ] ; 2 uses
  %.not.i106 = icmp eq ptr %.sroa.0.125.i, null
  br i1 %.not.i106, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource4read.exit.i
  %i.qb = inttoptr i64 %.sroa.8.1.i to ptr
  br label %bb.ee

bb.du:                                            ; preds = %_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource4read.exit.i, %_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource4read.exit.thread.i
  %.sroa.8.129.i = phi i64 [ %.sroa.019.0.i.i, %_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource4read.exit.thread.i ], [ %.sroa.8.1.i, %_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource4read.exit.i ] ; 4 uses
  %.not14.i = icmp eq i64 %.sroa.8.129.i, 0
  br i1 %.not14.i, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.qc = icmp ne i8 %.sroa.05.0.i, %3
  %or.cond.i102 = and i1 %.sroa.03.0.i, %i.qc
  br i1 %or.cond.i102, label %bb.eb, label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %4 = add i64 %.sroa.8.129.i, -1                 ; 2 uses
  %i.qd = icmp ult i64 %.sroa.8.129.i, 8193
  br i1 %i.qd, label %bb.ei, label %bb.ej

bb.dx:                                            ; preds = %bb.ed, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !334
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.qe = load i8, ptr %i.kr, align 8, !range !149, !alias.scope !397, !noalias !398, !noundef !4
  %.not.i.i103 = icmp eq i8 %i.qe, 2
  br i1 %.not.i.i103, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %.val1.i.i.i = load i64, ptr %i.ku, align 8, !alias.scope !402, !noalias !398, !noundef !4 ; 2 uses
  %i.qf = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.qf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i104

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i104: ; preds = %bb.dy
  %.val.i.i.i105 = load ptr, ptr %i.ab, align 8, !alias.scope !402, !noalias !398, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i105, i64 noundef %.val1.i.i.i, i64 noundef 1) #23, !noalias !403
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i104, %bb.dy
  %.val2.i.i.i = load i32, ptr %i.kv, align 8, !range !155, !alias.scope !402, !noalias !398, !noundef !4
  %i.qg = call noundef i32 @close(i32 noundef %.val2.i.i.i) #23, !noalias !403 ; 0 uses
  br label %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.qh = load ptr, ptr %i.ab, align 8, !alias.scope !410, !noalias !398, !nonnull !4, !noundef !4 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !noalias !411, !noundef !4
  %i.qj = add i64 %i.qi, -1                       ; 2 uses
  store i64 %i.qj, ptr %i.qh, align 8, !noalias !411
  %i.qk = icmp eq i64 %i.qj, 0
  br i1 %i.qk, label %bb.ea, label %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit

bb.ea:                                            ; preds = %bb.dz
  call void @_RNvMs6_NtCs7tKScEop1B6_5alloc2rcINtB5_2RcINtNtCs6JMX4GRUq9U_4core4cell7RefCellNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEE9drop_slowCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ab) #22
  br label %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit

bb.eb:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !334
  store i8 %3, ptr %i.n, align 1, !noalias !334
  %i.ql = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 1) #23 ; 2 uses
  %.not15.i = icmp eq ptr %i.ql, null
  br i1 %.not15.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qm = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ql) #23 ; 2 uses
  %i.qn = extractvalue { ptr, ptr } %i.qm, 0
  %i.qo = extractvalue { ptr, ptr } %i.qm, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !334
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !334
  br label %bb.dx

bb.ee:                                            ; preds = %bb.ek, %bb.ec, %bb.dt
  %.sroa.5.1.i = phi ptr [ %i.qo, %bb.ec ], [ %i.qb, %bb.dt ], [ %i.rb, %bb.ek ] ; 3 uses
  %.sroa.0.1.i = phi ptr [ %i.qn, %bb.ec ], [ %.sroa.0.125.i, %bb.dt ], [ %i.ra, %bb.ek ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !334
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.qp = load i8, ptr %i.kr, align 8, !range !149, !alias.scope !415, !noalias !398, !noundef !4
  %.not.i17.i = icmp eq i8 %i.qp, 2
  br i1 %.not.i17.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %.val1.i.i18.i = load i64, ptr %i.ku, align 8, !alias.scope !419, !noalias !398, !noundef !4 ; 2 uses
  %i.qq = icmp eq i64 %.val1.i.i18.i, 0
  br i1 %i.qq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i21.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i19.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i19.i: ; preds = %bb.ef
  %.val.i.i20.i = load ptr, ptr %i.ab, align 8, !alias.scope !419, !noalias !398, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i20.i, i64 noundef %.val1.i.i18.i, i64 noundef 1) #23, !noalias !420
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i21.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i21.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i19.i, %bb.ef
  %.val2.i.i22.i = load i32, ptr %i.kv, align 8, !range !155, !alias.scope !419, !noalias !398, !noundef !4
  %i.qr = call noundef i32 @close(i32 noundef %.val2.i.i22.i) #23, !noalias !420 ; 0 uses
  br label %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.qs = load ptr, ptr %i.ab, align 8, !alias.scope !427, !noalias !398, !nonnull !4, !noundef !4 ; 2 uses
  %i.qt = load i64, ptr %i.qs, align 8, !noalias !428, !noundef !4
  %i.qu = add i64 %i.qt, -1                       ; 2 uses
  store i64 %i.qu, ptr %i.qs, align 8, !noalias !428
  %i.qv = icmp eq i64 %i.qu, 0
  br i1 %i.qv, label %bb.eh, label %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit

bb.eh:                                            ; preds = %bb.eg
  call void @_RNvMs6_NtCs7tKScEop1B6_5alloc2rcINtB5_2RcINtNtCs6JMX4GRUq9U_4core4cell7RefCellNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEE9drop_slowCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ab) #22
  br label %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit

bb.ei:                                            ; preds = %bb.dw
  %i.qw = getelementptr inbounds nuw i8, ptr %i.o, i64 %4
  %i.qx = load i8, ptr %i.qw, align 1, !noalias !334, !noundef !4
  %i.qy = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %.sroa.8.129.i) #23 ; 2 uses
  %.not16.i = icmp eq ptr %i.qy, null
  br i1 %.not16.i, label %bb.cc, label %bb.ek

bb.ej:                                            ; preds = %bb.dw
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %4, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.qz = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.qy) #23 ; 2 uses
  %i.ra = extractvalue { ptr, ptr } %i.qz, 0
  %i.rb = extractvalue { ptr, ptr } %i.qz, 1
  br label %bb.ee

_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i.i, %bb.dz, %bb.ea, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i21.i, %bb.eg, %bb.eh
  %.sroa.5.0.i = phi ptr [ undef, %bb.ea ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i.i ], [ undef, %bb.dz ], [ %.sroa.5.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i21.i ], [ %.sroa.5.1.i, %bb.eg ], [ %.sroa.5.1.i, %bb.eh ]
  %.sroa.0.0.i101 = phi ptr [ null, %bb.ea ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i.i ], [ null, %bb.dz ], [ %.sroa.0.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECs7NkY4QXzcxE_8uu_paste.exit.i21.i ], [ %.sroa.0.1.i, %bb.eg ], [ %.sroa.0.1.i, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.el

bb.el:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7NkY4QXzcxE_8uu_paste.exit117, %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit
  %.sroa.11.0 = phi ptr [ %.sroa.11.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7NkY4QXzcxE_8uu_paste.exit117 ], [ %.sroa.5.0.i, %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7NkY4QXzcxE_8uu_paste.exit117 ], [ %.sroa.0.0.i101, %_RINvCs7NkY4QXzcxE_8uu_paste25write_single_input_sourceNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit ]
  %.val71 = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !184, !noundef !4 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.val71, i64 12 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !noundef !4
  %i.re = add i32 %i.rd, -1                       ; 2 uses
  store i32 %i.re, ptr %i.rc, align 4
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.em, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs7NkY4QXzcxE_8uu_paste.exit

bb.em:                                            ; preds = %bb.el
  store atomic i64 0, ptr %.val71 monotonic, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %.val71, i64 8 ; 2 uses
  %i.rh = atomicrmw xchg ptr %i.rg, i32 0 release, align 4
  %i.ri = icmp eq i32 %i.rh, 2
  br i1 %i.ri, label %bb.en, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs7NkY4QXzcxE_8uu_paste.exit, !prof !166

bb.en:                                            ; preds = %bb.em
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.rg) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %bb.el, %bb.em, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit147

.lr.ph:                                           ; preds = %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs7NkY4QXzcxE_8uu_paste.exit, %.lr.ph.backedge
  %.sroa.023.0327 = phi i64 [ %.sroa.023.0327.be, %.lr.ph.backedge ], [ 0, %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs7NkY4QXzcxE_8uu_paste.exit ] ; 5 uses
  %.sroa.8188.0326 = phi i64 [ %.sroa.8188.0326.be, %.lr.ph.backedge ], [ 0, %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs7NkY4QXzcxE_8uu_paste.exit ] ; 3 uses
  %.sroa.0186.0325 = phi ptr [ %.sroa.0186.0325.be, %.lr.ph.backedge ], [ %i.kj, %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs7NkY4QXzcxE_8uu_paste.exit ] ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.0186.0325, i64 48 ; 2 uses
  %i.rk = add nuw nsw i64 %.sroa.8188.0326, 1
  %exitcond.not = icmp eq i64 %.sroa.8188.0326, %i.if
  br i1 %exitcond.not, label %bb.fd, label %bb.fc

._crit_edge:                                      ; preds = %_RNvCs7NkY4QXzcxE_8uu_paste32remove_trailing_line_ending_byte.exit
  %i.rl = icmp eq i64 %.sroa.023.2, %i.if
  br i1 %i.rl, label %bb.et, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge
  %.val74 = load i64, ptr %i.z, align 8, !range !429, !noundef !4 ; 2 uses
  %.val75 = load i64, ptr %i.km, align 8          ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.rm = icmp eq i64 %.val74, 0
  %.not.i110 = icmp eq i64 %.val75, 0
  %or.cond.i111 = select i1 %i.rm, i1 true, i1 %.not.i110
  %.pre415 = load i64, ptr %i.kd, align 8         ; 6 uses
  br i1 %or.cond.i111, label %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState25remove_trailing_delimiter.exit, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !430
  store i64 %.pre415, ptr %i.d, align 8, !noalias !430
  %i.rn = icmp sgt i64 %.pre415, -1
  call void @llvm.assume(i1 %i.rn)
  %i.ro = icmp ult i64 %.pre415, %.val75
  br i1 %i.ro, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.rp = sub nuw nsw i64 %.pre415, %.val75       ; 2 uses
  store i64 %i.rp, ptr %i.kd, align 8, !alias.scope !433
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCs7NkY4QXzcxE_8uu_paste.exit.i

bb.er:                                            ; preds = %bb.ep
  %i.rq = icmp eq i64 %.pre415, 0
  br i1 %i.rq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCs7NkY4QXzcxE_8uu_paste.exit.i, label %bb.es, !prof !393

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCs7NkY4QXzcxE_8uu_paste.exit.i: ; preds = %bb.er, %bb.eq
  %i.rr = phi i64 [ 0, %bb.er ], [ %i.rp, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !430
  br label %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState25remove_trailing_delimiter.exit

bb.es:                                            ; preds = %bb.er
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @34, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #24, !noalias !430
  unreachable

_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState25remove_trailing_delimiter.exit: ; preds = %bb.eo, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCs7NkY4QXzcxE_8uu_paste.exit.i
  %i.rs = phi i64 [ %.pre415, %bb.eo ], [ %i.rr, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCs7NkY4QXzcxE_8uu_paste.exit.i ]
  %i.rt = load ptr, ptr %i.kc, align 8, !nonnull !4, !noundef !4
  %i.ru = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rt, i64 noundef %i.rs) #23 ; 2 uses
  %.not52 = icmp eq ptr %i.ru, null
  br i1 %.not52, label %bb.eu, label %bb.ex

bb.et:                                            ; preds = %._crit_edge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ki) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ki, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecbEECs7NkY4QXzcxE_8uu_paste.exit

bb.eu:                                            ; preds = %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState25remove_trailing_delimiter.exit
  %i.rv = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 1) #23 ; 2 uses
  %.not53 = icmp eq ptr %i.rv, null
  br i1 %.not53, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.rw = icmp eq i64 %.val74, 2
  br i1 %i.rw, label %bb.ew, label %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState24reset_to_first_delimiter.exit

bb.ew:                                            ; preds = %bb.ev
  %i.rx = load ptr, ptr %i.kn, align 8, !alias.scope !436, !nonnull !4, !align !184, !noundef !4 ; 3 uses
  %i.ry = load i64, ptr %i.ko, align 8, !alias.scope !436, !noundef !4
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %i.rx, i64 %i.ry ; 2 uses
  store ptr %i.rx, ptr %i.kp, align 8, !alias.scope !436
  store ptr %i.rz, ptr %.sroa.4.0..sroa_idx.i112, align 8, !alias.scope !436
  store ptr %i.rx, ptr %.sroa.5.0..sroa_idx.i113, align 8, !alias.scope !436
  store ptr %i.rz, ptr %.sroa.6.0..sroa_idx.i114, align 8, !alias.scope !436
  br label %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState24reset_to_first_delimiter.exit

_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState24reset_to_first_delimiter.exit: ; preds = %bb.ev, %bb.ew
  store i64 0, ptr %i.kd, align 8
  br label %.lr.ph.backedge

bb.ex:                                            ; preds = %bb.eu, %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState25remove_trailing_delimiter.exit
  %.lcssa548.sink = phi ptr [ %i.ru, %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState25remove_trailing_delimiter.exit ], [ %i.rv, %bb.eu ]
  %i.sa = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.lcssa548.sink) #23 ; 2 uses
  %.sroa.0.1 = extractvalue { ptr, ptr } %i.sa, 0
  %.sroa.11.1 = extractvalue { ptr, ptr } %i.sa, 1
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.thread
  %.sroa.0.1224 = phi ptr [ %i.sl, %.thread ], [ %.sroa.0.1, %bb.ex ]
  %.sroa.11.1222 = phi ptr [ %i.sn, %.thread ], [ %.sroa.11.1, %bb.ex ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ki) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ki, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecbEECs7NkY4QXzcxE_8uu_paste.exit115

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecbEECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState24reset_to_first_delimiter.exit128, %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elembNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs7NkY4QXzcxE_8uu_paste.exit, %_RNvMCs7NkY4QXzcxE_8uu_pasteNtB2_14DelimiterState3new.exit, %bb.et
  %.val60 = load i64, ptr %i.y, align 8, !range !40, !noundef !4 ; 2 uses
  %i.sb = icmp eq i64 %.val60, 0
  br i1 %i.sb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7NkY4QXzcxE_8uu_paste.exit, label %bb.ez

bb.ez:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecbEECs7NkY4QXzcxE_8uu_paste.exit
  %i.sc = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val61 = load ptr, ptr %i.sc, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val61, i64 noundef %.val60, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecbEECs7NkY4QXzcxE_8uu_paste.exit, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.val70 = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !184, !noundef !4
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECs7NkY4QXzcxE_8uu_paste(ptr nonnull %.val70) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs7NkY4QXzcxE_8uu_paste11InputSourceEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.sd = load ptr, ptr %i.ag, align 8, !alias.scope !448, !noundef !4 ; 3 uses
  %i.se = icmp eq ptr %i.sd, null
  br i1 %i.se, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCs7tKScEop1B6_5alloc2rc2RcINtBG_7RefCellNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEEEECs7NkY4QXzcxE_8uu_paste.exit, label %bb.fa

bb.fa:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7NkY4QXzcxE_8uu_paste.exit
  %i.sf = load i64, ptr %i.sd, align 8, !noalias !449, !noundef !4
  %i.sg = add i64 %i.sf, -1                       ; 2 uses
  store i64 %i.sg, ptr %i.sd, align 8, !noalias !449
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %bb.fb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCs7tKScEop1B6_5alloc2rc2RcINtBG_7RefCellNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEEEECs7NkY4QXzcxE_8uu_paste.exit

bb.fb:                                            ; preds = %bb.fa
  call void @_RNvMs6_NtCs7tKScEop1B6_5alloc2rcINtB5_2RcINtNtCs6JMX4GRUq9U_4core4cell7RefCellNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEE9drop_slowCs7NkY4QXzcxE_8uu_paste(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ag) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCs7tKScEop1B6_5alloc2rc2RcINtBG_7RefCellNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEEEECs7NkY4QXzcxE_8uu_paste.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_4cell4once8OnceCellINtNtCs7tKScEop1B6_5alloc2rc2RcINtBG_7RefCellNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEEEECs7NkY4QXzcxE_8uu_paste.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7NkY4QXzcxE_8uu_paste.exit, %bb.fa, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxSIBC_ShEEECs7NkY4QXzcxE_8uu_paste(ptr nonnull %.sroa.410.0.copyload.i.i, i64 %.sroa.6.0.copyload153.i) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs7NkY4QXzcxE_8uu_paste.exit

bb.fc:                                            ; preds = %.lr.ph
  %i.si = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.sroa.8188.0326 ; 2 uses
  %i.sj = load i8, ptr %i.si, align 1, !range !268, !noundef !4
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %bb.ff, label %bb.fe

bb.fd:                                            ; preds = %.lr.ph
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.if, i64 noundef %i.if, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24
  unreachable

bb.fe:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call fastcc void @_RNvMs_Cs7NkY4QXzcxE_8uu_pasteNtB4_11InputSource10read_until(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.0186.0325, i8 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #23
  %i.sl = load ptr, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %.not54 = icmp eq ptr %i.sl, null
  br i1 %.not54, label %bb.fg, label %.thread

bb.ff:                                            ; preds = %bb.fc
  %i.sm = add i64 %.sroa.023.0327, 1
end_hunk_1
