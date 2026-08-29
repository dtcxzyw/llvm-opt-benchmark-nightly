Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.3?download=true
inline.NumInlined: 102
inline.NumDeleted: 67
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom:bb.a
  store i64 %i.n, ptr %i.i, align 8, !noalias !109
  %i.o = icmp eq i64 %i.m, 1
  br i1 %i.o, label %.sink.split.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom.exit

.sink.split.i.i:                                  ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %.sink.in.in.in.i.i = zext i32 %.sroa.0.0.i.i.i to i64
  %.sink.in.in.i.i = add nuw nsw i64 %.sink.in.in.in.i.i, 15
  %.sink.in.i.i = and i64 %.sink.in.in.i.i, 8589934576
  %.sink.i.i = add nuw nsw i64 %.sink.in.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !109
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.c, %bb.d, %.sink.split.i.i
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !116

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !14, !alias.scope !113, !noundef !5 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !113
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !113
  %i.j = load i64, ptr %i.a, align 8, !range !117, !noalias !113, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !118, !noalias !113, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #25
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !113, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !113
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !113
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !113
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !119 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !116

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !125
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !125
  %i.i = load i64, ptr %i.a, align 8, !range !117, !noalias !125, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !118, !noalias !125, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !125, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !125
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !125
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !125
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #25
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8grow_oneB12_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !126
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 8), !noalias !126
  %i.f = load i64, ptr %i.a, align 8, !range !117, !noalias !126, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !118, !noalias !126, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !126, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !126
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !126
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !126
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEE8grow_oneCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !129
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !129
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !129
  %i.f = load i64, ptr %i.a, align 8, !range !117, !noalias !129, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !118, !noalias !129, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !129, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !129
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !129
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !129
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1mImOlsSUsK_17markup5ever_rcdom(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1)
  %4 = mul nuw i64 %3, %1                         ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !132
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #24
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, -9223372036854775807) %2) #24
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
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

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1mImOlsSUsK_17markup5ever_rcdom(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1)
  %5 = mul nuw i64 %4, %1                         ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %5, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !132
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %3 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.h, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.i, %bb.g ], [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.k = icmp eq ptr %.pn9, null
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.m, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.p, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE6removeBU_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !133, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !133, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !133, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = xor i64 %1, -1
  %i.j = add nsw i64 %i.b, %i.i
  %i.k = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.h, i64 %i.k, i1 false), !noalias !133
  %i.l = add nsw i64 %i.b, -1
  store i64 %i.l, ptr %i.a, align 8, !alias.scope !133
  ret ptr %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB1a_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { ptr, i64 } @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8as_sliceB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !139, !noundef !5 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !14, !alias.scope !139, !noundef !5
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i, !prof !20

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.thread.i
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !136, !noundef !5 ; 2 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i: ; preds = %bb.b
  %i.k = icmp ult i64 %i.e, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i, %.noexc
  %i.l = phi i64 [ %i.i, %.noexc ], [ %i.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !136, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.p = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 8 %i.b, i64 %i.p, i1 false), !noalias !136
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i
  %i.q = phi i64 [ %i.l, %bb.c ], [ %i.e, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.i ]
  %i.r = add i64 %i.q, %i.c
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !136
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1v_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = shl nuw i64 %i.t, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !142
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1v_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1v_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.a, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveBU_.exit.thread.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtBP_9NonAtomicEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = mul nuw i64 %.val, 40
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !5 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBB_3fmt4UTF8ENtB6_5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !145, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !146
  %i.e = load ptr, ptr %i.d, align 8, !noalias !146, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 16 to ptr)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr @4, ptr %i.c, align 8, !noalias !146, !captures !149
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 6, ptr %i.j, align 8, !noalias !146
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store ptr @2, ptr %i.c, align 8, !noalias !146, !captures !149
  store i64 6, ptr %i.i, align 8, !noalias !146
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr @3, ptr %i.c, align 8, !noalias !146, !captures !149
  store i64 5, ptr %i.i, align 8, !noalias !146
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146
  store ptr %i.a, ptr %i.b, align 8, !noalias !146
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsr_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !146
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.k, align 8, !noalias !146
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !146
  %i.l = load ptr, ptr %1, align 8, !alias.scope !146, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !146, !nonnull !5, !align !145, !noundef !5
  %i.o = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @5, ptr noundef nonnull %i.b), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146
  br i1 %i.o, label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.d, align 8, !noalias !146, !nonnull !5, !noundef !5 ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 15 to ptr)
  br i1 %i.r, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ult ptr %i.p, inttoptr (i64 9 to ptr)
  br i1 %i.s, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = and i64 %i.q, 1
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr i8, ptr %i.p, i64 %i.u
  %i.w = trunc i64 %i.q to i1
  br i1 %i.w, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.y = load i32, ptr %i.x, align 4, !noalias !150, !noundef !5
  %i.z = zext i32 %i.y to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.z, %bb.j ], [ 0, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !noalias !146, !noundef !5
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.l, %bb.k, %bb.g
  %.sroa.4.0.i.i = phi i64 [ %i.ae, %bb.l ], [ %i.q, %bb.k ], [ 0, %bb.g ]
  %.sroa.0.0.i.i = phi ptr [ %i.af, %bb.l ], [ %i.aa, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.g ]
  %i.ag = call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ag, label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !146, !nonnull !5, !noundef !5
  %i.ai = load ptr, ptr %i.m, align 8, !alias.scope !146, !nonnull !5, !align !145, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !5, !nonnull !5
  %i.al = call noundef zeroext i1 %i.ak(ptr noundef nonnull %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1) #27, !inline_history !153
  br label %_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.f, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.m
  %.sroa.0.1.i = phi i1 [ %i.al, %bb.m ], [ true, %bb.f ], [ true, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !146
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4IterB13_ENCNvMB1j_B1h_18clone_with_subtree0EE9from_iterB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 4 uses
  %i.f = lshr exact i64 %i.e, 3
  %.not.i.i = icmp ugt i64 %i.e, 9223372036854775800
  br i1 %.not.i.i, label %bb.e, label %bb.b, !prof !132

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %2, %1
  br i1 %i.g, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !154
  %i.h = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !154 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.h to i64
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.e) #25
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i: ; preds = %bb.d, %bb.b
  %.sroa.10.0.i = phi i64 [ %i.j, %bb.d ], [ 8, %bb.b ]
  %i.k = inttoptr i64 %.sroa.10.0.i to ptr        ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.n, align 8, !noalias !157
  store ptr %i.m, ptr %i.a, align 8, !noalias !157
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !157
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENCNvMB1U_B1S_18clone_with_subtree0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB37_8for_each4callB1n_NCINvMsk_NtB1s_3vecINtB4n_3VecB1n_E14extend_trustedBN_E0E0EB1U_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1o_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #21
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1Z_5slice4iter4IterBG_ENCNvMBW_BU_18clone_with_subtree0EEBW_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !162
  %i.j = mul nuw nsw i64 %i.i, 40                 ; 2 uses
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i, label %bb.b

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.e, align 8, !noalias !162
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !noalias !162
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !165
  %i.n = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !165 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.j) #25, !noalias !162
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  store i64 %i.i, ptr %i.e, align 8, !noalias !162
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.z, %.lr.ph.i
  %.sroa.014.030.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.y, %bb.z ] ; 7 uses
  %.sroa.7.029.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.z ] ; 3 uses
  %.sroa.10.028.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.v, %bb.z ]
  %i.v = add nsw i64 %.sroa.10.028.i, -1          ; 2 uses
  %i.w = icmp eq ptr %.sroa.014.030.i, %i.r
  br i1 %i.w, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %bb.f

bb.e:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 40
  %i.z = add nuw nsw i64 %.sroa.7.029.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !176
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !174, !noalias !177, !noundef !5 ; 4 uses
  %.not.i.i12.i = icmp ne i64 %i.ab, 0
  %i.ac = and i64 %i.ab, 3
  %i.ad = icmp eq i64 %i.ac, 0
  %or.cond.i.i13.i = and i1 %.not.i.i12.i, %i.ad
  br i1 %or.cond.i.i13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.ab, ptr %i.b, align 8, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  %i.ae = load i64, ptr %.sroa.014.030.i, align 8, !range !80, !alias.scope !174, !noalias !177, !noundef !5 ; 4 uses
  %i.af = and i64 %i.ae, 3
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ah = inttoptr i64 %i.ab to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = atomicrmw add ptr %i.ai, i64 1 seq_cst, align 8, !noalias !176
  %i.ak = icmp eq i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.i, label %bb.g, !prof !20

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %.noexc.i unwind label %bb.e, !noalias !162

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.al = inttoptr i64 %i.ae to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = atomicrmw add ptr %i.am, i64 1 seq_cst, align 8, !noalias !176
  %i.ao = icmp eq i64 %i.an, 9223372036854775807
  br i1 %i.ao, label %bb.k, label %bb.n, !prof !20

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %bb.m unwind label %bb.l, !noalias !176

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.l
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ay, %bb.s ], [ %i.ay, %bb.q ], [ %i.ay, %bb.r ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #21
          to label %bb.ab unwind label %bb.t, !noalias !176

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.m:                                             ; preds = %bb.p, %bb.k
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.g
  store i64 %i.ae, ptr %i.a, align 8, !noalias !176
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.014.030.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !80, !alias.scope !174, !noalias !177, !noundef !5 ; 3 uses
  %i.as = and i64 %i.ar, 3
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.o, label %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.au = inttoptr i64 %i.ar to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = atomicrmw add ptr %i.av, i64 1 seq_cst, align 8, !noalias !176
  %i.ax = icmp eq i64 %i.aw, 9223372036854775807
  br i1 %i.ax, label %bb.p, label %._crit_edge.i.i.i, !prof !20

._crit_edge.i.i.i:                                ; preds = %bb.o
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !range !80, !noalias !176
  br label %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #25
          to label %bb.m unwind label %bb.q, !noalias !176

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.az = load i64, ptr %i.a, align 8, !range !80, !alias.scope !184, !noalias !176, !noundef !5 ; 2 uses
  %i.ba = and i64 %i.az, 3
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bc = inttoptr i64 %i.az to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = atomicrmw sub ptr %i.bd, i64 1 seq_cst, align 8, !noalias !185
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, !prof !20

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i unwind label %bb.t, !noalias !176

bb.t:                                             ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
end_hunk_0
