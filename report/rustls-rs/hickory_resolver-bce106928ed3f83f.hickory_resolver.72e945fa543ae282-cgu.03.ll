Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.03?download=true
inline.NumInlined: 535
inline.NumDeleted: 258
begin_hunk_0_@_RINvXs13_NtCs4wP2HXfJTCR_5alloc4syncINtB7_3ArcNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.o = load i16, ptr %i.n, align 8, !range !495, !alias.scope !481, !noalias !485, !noundef !14 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 98 ; 2 uses
  %i.q = zext nneg i16 %i.o to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !496
  store i64 %i.q, ptr %i.c, align 8, !noalias !496
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !496
  switch i16 %i.o, label %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit [
    i16 5, label %bb.d
    i16 6, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i16, ptr %i.p, align 2, !alias.scope !481, !noalias !485, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !501
  store i16 %i.r, ptr %i.b, align 2, !noalias !501
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !501
  br label %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i16, ptr %i.p, align 2, !alias.scope !481, !noalias !485, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !504
  store i16 %i.s, ptr %i.a, align 2, !noalias !504
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !504
  br label %_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit

_RINvXs6_NtNtCsjXdHNeFfodD_13hickory_proto2op5queryNtB6_5QueryNtNtCsj6eKBz9Db1c_4core4hash4Hash4hashNtNtNtCsaKJjC64KgbL_3std4hash6random13DefaultHasherECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCs3kA96HWnWrK_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEE12move_to_backCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !14 ; 4 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !41, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.g, %bb.a, %bb.h, %bb.j
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %.not12 = icmp eq ptr %i.j, null
  br i1 %.not12, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !14
  store i64 1, ptr %0, align 8
  store ptr %i.n, ptr %i.e, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %cond = icmp eq ptr %i.l, null
  br i1 %cond, label %bb.c, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.o, align 8
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %bb.c, label %bb.i

.thread:                                          ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.q, align 8
  store ptr %i.b, ptr %i.i, align 8
  store ptr null, ptr %i.k, align 8
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.r, align 8
  store ptr %1, ptr %i.a, align 8
  br label %bb.c

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCs3kA96HWnWrK_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEE12move_to_backCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !14 ; 4 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !41, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.g, %bb.a, %bb.h, %bb.j
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noundef !14 ; 5 uses
  %.not12 = icmp eq ptr %i.j, null
  br i1 %.not12, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !noundef !14
  store i64 1, ptr %0, align 8
  store ptr %i.n, ptr %i.e, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %cond = icmp eq ptr %i.l, null
  br i1 %cond, label %bb.c, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.o, align 8
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %bb.c, label %bb.i

.thread:                                          ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.l, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.j, ptr %i.q, align 8
  store ptr %i.b, ptr %i.i, align 8
  store ptr null, ptr %i.k, align 8
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.k, label %bb.j, !prof !4

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.r, align 8
  store ptr %1, ptr %i.a, align 8
  br label %bb.c

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs1_NtNtCs3kA96HWnWrK_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryEE9push_backCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull returned align 8 initializes((24, 40)) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.c, ptr %i.d, align 8
  %.not = icmp eq ptr %i.c, null
  %. = select i1 %.not, ptr %0, ptr %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %., i64 24
  store ptr %1, ptr %i.e, align 8
  store ptr %1, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !14
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8
  ret ptr %1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB4_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE6insertCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i40 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [5 x i8], align 8                 ; 9 uses
  store i40 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.c = lshr i40 %1, 32
  %i.d = trunc nuw i40 %i.c to i8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.03.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.i.i, %bb.e ] ; 21 uses
  %2 = call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef %.sroa.03.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22), !noalias !507 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = call noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix2eqCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.a), !noalias !511
  br i1 %i.e, label %bb.g, label %4

4:                                                ; preds = %bb.b
  %5 = getelementptr i8, ptr %2, i64 20
  %.val50 = load i8, ptr %5, align 4, !noundef !14
  %6 = call noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix10is_bit_setCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.a, i8 noundef %.val50), !noalias !511 ; 4 uses
  br i1 %6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %4
  %i.f = call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef %.sroa.03.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !511
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i

bb.d:                                             ; preds = %4
  %i.g = call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef %.sroa.03.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3), !noalias !511
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i

_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.in.i.i = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.c ]
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !noalias !511, !noundef !14 ; 3 uses
  %.not.i48 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not.i48, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i
  %i.i = call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexINtNtNtB1B_3num7nonzero7NonZerojEE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !noalias !511
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.k = call noundef zeroext i1 @_RNvXNtCs7w1SCUKeMLI_11prefix_trie6prefixNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtB2_6Prefix8contains(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.a), !noalias !511
  br i1 %i.k, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = call noundef zeroext i1 @_RNvXNtCs7w1SCUKeMLI_11prefix_trie6prefixNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtB2_6Prefix8contains(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.j), !noalias !511
  br i1 %i.l, label %bb.v, label %bb.aj

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !14 ; 2 uses
  %i.o = icmp ult i64 %.sroa.03.0, %i.n
  br i1 %i.o, label %bb.be, label %bb.bf

bb.h:                                             ; preds = %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !512, !noundef !14
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !alias.scope !512
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !512, !noundef !14 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !512, !noundef !14 ; 6 uses
  %i.x = icmp ult i64 %i.w, 384307168202282326
  call void @llvm.assume(i1 %i.x)
  %.not.i46 = icmp eq i64 %i.w, 0
  br i1 %.not.i46, label %bb.m, label %bb.k, !prof !4

bb.j:                                             ; preds = %bb.h
  %i.y = add nsw i64 %i.t, -1                     ; 3 uses
  store i64 %i.y, ptr %i.s, align 8, !alias.scope !512
  %i.z = load i64, ptr %0, align 8, !range !189, !alias.scope !512, !noundef !14
  %i.aa = icmp samesign ult i64 %i.y, %i.z
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !512, !nonnull !14, !noundef !14
  %i.ad = icmp ult i64 %i.t, 1152921504606846977
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.y
  %i.af = load i64, ptr %i.ae, align 8, !range !515, !noalias !512, !noundef !14 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !512, !noundef !14 ; 2 uses
  %i.ai = icmp ult i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.n, label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.b, align 8, !range !189, !alias.scope !516, !noalias !519, !noundef !14
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8grow_oneCsjXdHNeFfodD_13hickory_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27, !noalias !519
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.k, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !516, !noalias !519, !nonnull !14, !noundef !14
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.w ; 3 uses
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store i40 %1, ptr %.sroa.578.0..sroa_idx, align 8
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 21
  store i8 1, ptr %.sroa.679.0..sroa_idx, align 1
  %i.ao = add nuw nsw i64 %i.w, 1
  store i64 %i.ao, ptr %i.v, align 8, !alias.scope !516, !noalias !519
  br label %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit47

bb.m:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26, !noalias !512
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !512, !nonnull !14, !noundef !14
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.af ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i40 %1, ptr %i.as, align 8, !noalias !512
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 21
  store i8 1, ptr %i.at, align 1, !noalias !512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit47

bb.o:                                             ; preds = %bb.j
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #26, !noalias !512
  unreachable

_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit47: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit, %bb.n
  %.sroa.03.0.i45 = phi i64 [ %i.w, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit ], [ %i.af, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !521, !noundef !14 ; 3 uses
  %i.aw = icmp ult i64 %.sroa.03.0, %i.av         ; 2 uses
  br i1 %6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit47
  br i1 %i.aw, label %bb.r, label %bb.s

bb.q:                                             ; preds = %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit47
  br i1 %i.aw, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !521, !nonnull !14, !noundef !14
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %.sroa.03.0
  store i64 %.sroa.03.0.i45, ptr %i.az, align 8, !noalias !521
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit38

bb.s:                                             ; preds = %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26, !noalias !521
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !521, !nonnull !14, !noundef !14
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %.sroa.03.0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %.sroa.03.0.i45, ptr %i.bd, align 8, !noalias !521
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit38

bb.u:                                             ; preds = %bb.q
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !521
  unreachable

bb.v:                                             ; preds = %bb.f
  %i.be = call noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix10is_bit_setCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.j, i8 noundef %i.d), !noalias !511
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !524, !noundef !14
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !alias.scope !524
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !524, !noundef !14 ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !524, !noundef !14 ; 6 uses
  %i.bn = icmp ult i64 %i.bm, 384307168202282326
  call void @llvm.assume(i1 %i.bn)
  %.not.i43 = icmp eq i64 %i.bm, 0
  br i1 %.not.i43, label %bb.aa, label %bb.y, !prof !4

bb.x:                                             ; preds = %bb.v
  %i.bo = add nsw i64 %i.bj, -1                   ; 3 uses
  store i64 %i.bo, ptr %i.bi, align 8, !alias.scope !524
  %i.bp = load i64, ptr %0, align 8, !range !189, !alias.scope !524, !noundef !14
  %i.bq = icmp samesign ult i64 %i.bo, %i.bp
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !524, !nonnull !14, !noundef !14
  %i.bt = icmp ult i64 %i.bj, 1152921504606846977
  call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bo
  %i.bv = load i64, ptr %i.bu, align 8, !range !515, !noalias !524, !noundef !14 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !524, !noundef !14 ; 2 uses
  %i.by = icmp ult i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.ab, label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.bz = load i64, ptr %i.b, align 8, !range !189, !alias.scope !527, !noalias !530, !noundef !14
  %i.ca = icmp eq i64 %i.bm, %i.bz
  br i1 %i.ca, label %bb.z, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit51

bb.z:                                             ; preds = %bb.y
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8grow_oneCsjXdHNeFfodD_13hickory_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27, !noalias !530
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit51

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit51: ; preds = %bb.y, %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !527, !noalias !530, !nonnull !14, !noundef !14
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.bm ; 3 uses
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store i40 %1, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 21
  store i8 1, ptr %.sroa.674.0..sroa_idx, align 1
  %i.ce = add nuw nsw i64 %i.bm, 1
  store i64 %i.ce, ptr %i.bl, align 8, !alias.scope !527, !noalias !530
  br label %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit44

bb.aa:                                            ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26, !noalias !524
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !524, !nonnull !14, !noundef !14
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.bv ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i40 %1, ptr %i.ci, align 8, !noalias !524
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 21
  store i8 1, ptr %i.cj, align 1, !noalias !524
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  br label %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit44

bb.ac:                                            ; preds = %bb.x
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #26, !noalias !524
  unreachable

_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit44: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit51, %bb.ab
  %.sroa.03.0.i42 = phi i64 [ %i.bm, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit51 ], [ %i.bv, %bb.ab ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !532, !noundef !14 ; 3 uses
  %i.cm = icmp ult i64 %.sroa.03.0, %i.cl         ; 2 uses
  br i1 %6, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit44
  br i1 %i.cm, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit44
  br i1 %i.cm, label %bb.ah, label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !532, !nonnull !14, !noundef !14
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.sroa.03.0 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !532, !noundef !14
  store i64 %.sroa.03.0.i42, ptr %i.cp, align 8, !noalias !532
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit36

bb.ag:                                            ; preds = %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26, !noalias !532
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !532, !nonnull !14, !noundef !14
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %.sroa.03.0
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !532, !noundef !14
  store i64 %.sroa.03.0.i42, ptr %i.cu, align 8, !noalias !532
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit36

bb.ai:                                            ; preds = %bb.ae
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !532
  unreachable

_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit36: ; preds = %bb.af, %bb.ah
  %.sroa.0.0.i35 = phi i64 [ %i.cv, %bb.ah ], [ %i.cq, %bb.af ] ; 3 uses
  %.not29 = icmp eq i64 %.sroa.0.0.i35, 0
  br i1 %.not29, label %bb.bn, label %bb.bg, !prof !4

bb.aj:                                            ; preds = %bb.f
  %i.cw = call i40 @_RNvXNtCs7w1SCUKeMLI_11prefix_trie6prefixNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtB2_6Prefix21longest_common_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.j), !noalias !511 ; 3 uses
  %.sroa.482.0.extract.shift = lshr i40 %i.cw, 32
  %.sroa.482.0.extract.trunc = trunc nuw i40 %.sroa.482.0.extract.shift to i8
  %i.cx = call noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix10is_bit_setCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(5) %i.a, i8 noundef %.sroa.482.0.extract.trunc), !noalias !511
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !535, !noundef !14 ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !535, !noundef !14 ; 6 uses
  %i.dd = icmp ult i64 %i.dc, 384307168202282326
  call void @llvm.assume(i1 %i.dd)
  %.not.i40 = icmp eq i64 %i.dc, 0
  br i1 %.not.i40, label %bb.ao, label %bb.am, !prof !4

bb.al:                                            ; preds = %bb.aj
  %i.de = add nsw i64 %i.cz, -1                   ; 3 uses
  store i64 %i.de, ptr %i.cy, align 8, !alias.scope !535
  %i.df = load i64, ptr %0, align 8, !range !189, !alias.scope !535, !noundef !14
  %i.dg = icmp samesign ult i64 %i.de, %i.df
  call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !535, !nonnull !14, !noundef !14
  %i.dj = icmp ult i64 %i.cz, 1152921504606846977
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.de
  %i.dl = load i64, ptr %i.dk, align 8, !range !515, !noalias !535, !noundef !14 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !535, !noundef !14 ; 2 uses
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.ap, label %bb.aq

bb.am:                                            ; preds = %bb.ak
  %i.dp = load i64, ptr %i.b, align 8, !range !189, !alias.scope !538, !noalias !541, !noundef !14
  %i.dq = icmp eq i64 %i.dc, %i.dp
  br i1 %i.dq, label %bb.an, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit52

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8grow_oneCsjXdHNeFfodD_13hickory_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27, !noalias !541
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit52

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit52: ; preds = %bb.am, %bb.an
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !538, !noalias !541, !nonnull !14, !noundef !14
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dc ; 3 uses
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  store i40 %i.cw, ptr %.sroa.568.0..sroa_idx, align 8
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 21
  store i8 0, ptr %.sroa.669.0..sroa_idx, align 1
  %i.du = add nuw nsw i64 %i.dc, 1
  store i64 %i.du, ptr %i.db, align 8, !alias.scope !538, !noalias !541
  br label %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit41

bb.ao:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26, !noalias !535
  unreachable

bb.ap:                                            ; preds = %bb.al
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !535, !nonnull !14, !noundef !14
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dl ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i40 %i.cw, ptr %i.dy, align 8, !noalias !535
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 21
  store i8 0, ptr %i.dz, align 1, !noalias !535
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  br label %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit41

bb.aq:                                            ; preds = %bb.al
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #26, !noalias !535
  unreachable

_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit41: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit52, %bb.ap
  %.sroa.03.0.i39 = phi i64 [ %i.dc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit52 ], [ %i.dl, %bb.ap ] ; 13 uses
  %.sroa.028.0.copyload = load i40, ptr %i.a, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !543, !noundef !14
  %i.ec = add i64 %i.eb, 1
  store i64 %i.ec, ptr %i.ea, align 8, !alias.scope !543
  %i.ed = load i64, ptr %i.cy, align 8, !alias.scope !543, !noundef !14 ; 3 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit41
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !543, !noundef !14 ; 6 uses
  %i.eh = icmp ult i64 %i.eg, 384307168202282326
  call void @llvm.assume(i1 %i.eh)
  %.not.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i, label %bb.av, label %bb.at, !prof !4

bb.as:                                            ; preds = %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit41
  %i.ei = add nsw i64 %i.ed, -1                   ; 3 uses
  store i64 %i.ei, ptr %i.cy, align 8, !alias.scope !543
  %i.ej = load i64, ptr %0, align 8, !range !189, !alias.scope !543, !noundef !14
  %i.ek = icmp samesign ult i64 %i.ei, %i.ej
  call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !543, !nonnull !14, !noundef !14
  %i.en = icmp ult i64 %i.ed, 1152921504606846977
  call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ei
  %i.ep = load i64, ptr %i.eo, align 8, !range !515, !noalias !543, !noundef !14 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !543, !noundef !14 ; 2 uses
  %i.es = icmp ult i64 %i.ep, %i.er
  br i1 %i.es, label %bb.aw, label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.et = load i64, ptr %i.b, align 8, !range !189, !alias.scope !546, !noalias !549, !noundef !14
  %i.eu = icmp eq i64 %i.eg, %i.et
  br i1 %i.eu, label %bb.au, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit53

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8grow_oneCsjXdHNeFfodD_13hickory_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27, !noalias !549
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit53

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit53: ; preds = %bb.at, %bb.au
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !546, !noalias !549, !nonnull !14, !noundef !14
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.eg ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i8 0, i64 16, i1 false)
  store i40 %.sroa.028.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 21
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 1
  %i.ey = add nuw nsw i64 %i.eg, 1
  store i64 %i.ey, ptr %i.ef, align 8, !alias.scope !546, !noalias !549
  br label %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit

bb.av:                                            ; preds = %bb.ar
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26, !noalias !543
  unreachable

bb.aw:                                            ; preds = %bb.as
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !543, !nonnull !14, !noundef !14
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %i.ep ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i40 %.sroa.028.0.copyload, ptr %i.fc, align 8, !noalias !543
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 21
  store i8 1, ptr %i.fd, align 1, !noalias !543
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  br label %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit

bb.ax:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ep, i64 noundef %i.er, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #26, !noalias !543
  unreachable

_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit53, %bb.aw
  %.sroa.03.0.i = phi i64 [ %i.eg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCs7w1SCUKeMLI_11prefix_trie5inner4NodeNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuEE8push_mutCs9RFwvXNxPyg_16hickory_resolver.exit53 ], [ %i.ep, %bb.aw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !551, !noundef !14 ; 3 uses
  %i.fg = icmp ult i64 %.sroa.03.0, %i.ff         ; 2 uses
  br i1 %6, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit
  br i1 %i.fg, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %_RNvMs2_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB5_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE8new_nodeCs9RFwvXNxPyg_16hickory_resolver.exit
  br i1 %i.fg, label %bb.bc, label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !551, !nonnull !14, !noundef !14
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.fi, i64 %.sroa.03.0 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !551, !noundef !14
  store i64 %.sroa.03.0.i39, ptr %i.fj, align 8, !noalias !551
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit

bb.bb:                                            ; preds = %bb.ay
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0, i64 noundef %i.ff, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26, !noalias !551
  unreachable

bb.bc:                                            ; preds = %bb.az
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !551, !nonnull !14, !noundef !14
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %.sroa.03.0
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !noalias !551, !noundef !14
  store i64 %.sroa.03.0.i39, ptr %i.fo, align 8, !noalias !551
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit

bb.bd:                                            ; preds = %bb.az
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0, i64 noundef %i.ff, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !551
  unreachable

_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.ba, %bb.bc
  %.sroa.0.0.i34 = phi i64 [ %i.fp, %bb.bc ], [ %i.fk, %bb.ba ] ; 3 uses
  %.not = icmp eq i64 %.sroa.0.0.i34, 0
  br i1 %.not, label %bb.bz, label %bb.bo, !prof !4

bb.be:                                            ; preds = %bb.g
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !14, !noundef !14
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %.sroa.03.0 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ft, ptr noundef nonnull align 8 dereferenceable(5) %i.a, i64 5, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 21 ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !range !171, !noundef !14
  %i.fw = trunc nuw i8 %i.fv to i1                ; 2 uses
  %not. = xor i1 %i.fw, true
  %spec.select = zext i1 %not. to i64
  store i8 1, ptr %i.fu, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !14
  %i.fz = add i64 %i.fy, %spec.select
  store i64 %i.fz, ptr %i.fx, align 8
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit38

bb.bf:                                            ; preds = %bb.g
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #26
  unreachable

_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit38: ; preds = %bb.bx, %bb.bv, %bb.bl, %bb.bj, %bb.t, %bb.r, %bb.be
  %.sroa.01.0 = phi i1 [ %i.fw, %bb.be ], [ false, %bb.bl ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.bj ], [ false, %bb.bv ], [ false, %bb.bx ]
  ret i1 %.sroa.01.0

bb.bg:                                            ; preds = %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit36
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !554, !noundef !14 ; 3 uses
  %i.gc = icmp ult i64 %.sroa.03.0.i42, %i.gb     ; 2 uses
  br i1 %i.be, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gc, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.gc, label %bb.bl, label %bb.bm

bb.bj:                                            ; preds = %bb.bh
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !554, !nonnull !14, !noundef !14
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %.sroa.03.0.i42
  store i64 %.sroa.0.0.i35, ptr %i.gf, align 8, !noalias !554
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit38

bb.bk:                                            ; preds = %bb.bh
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i42, i64 noundef %i.gb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26, !noalias !554
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !554, !nonnull !14, !noundef !14
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %.sroa.03.0.i42
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %.sroa.0.0.i35, ptr %i.gj, align 8, !noalias !554
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit38

bb.bm:                                            ; preds = %bb.bi
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i42, i64 noundef %i.gb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !554
  unreachable

bb.bn:                                            ; preds = %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit36
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #26
  unreachable

bb.bo:                                            ; preds = %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !557, !noundef !14 ; 3 uses
  %i.gm = icmp ult i64 %.sroa.03.0.i39, %i.gl     ; 2 uses
  br i1 %i.cx, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.gm, label %bb.bu, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.gm, label %bb.bt, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i39, i64 noundef %i.gl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26, !noalias !557
  unreachable

bb.bs:                                            ; preds = %bb.bq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i39, i64 noundef %i.gl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !557
  unreachable

bb.bt:                                            ; preds = %bb.bq
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !557, !nonnull !14, !noundef !14
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %.sroa.03.0.i39
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i64 %.sroa.03.0.i, ptr %i.gq, align 8, !noalias !557
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.gr = load i64, ptr %i.gk, align 8, !alias.scope !560, !noundef !14 ; 2 uses
  %i.gs = icmp ult i64 %.sroa.03.0.i39, %i.gr
  br i1 %i.gs, label %bb.bv, label %bb.bw

bb.bu:                                            ; preds = %bb.bp
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !557, !nonnull !14, !noundef !14
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %.sroa.03.0.i39
  store i64 %.sroa.03.0.i, ptr %i.gv, align 8, !noalias !557
  %i.gw = load i64, ptr %i.gk, align 8, !alias.scope !560, !noundef !14 ; 2 uses
  %i.gx = icmp ult i64 %.sroa.03.0.i39, %i.gw
  br i1 %i.gx, label %bb.bx, label %bb.by

bb.bv:                                            ; preds = %bb.bt
  %i.gy = load ptr, ptr %i.gn, align 8, !alias.scope !560, !nonnull !14, !noundef !14
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %.sroa.03.0.i39
  store i64 %.sroa.0.0.i34, ptr %i.gz, align 8, !noalias !560
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit38

bb.bw:                                            ; preds = %bb.bt
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i39, i64 noundef %i.gr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26, !noalias !560
  unreachable

bb.bx:                                            ; preds = %bb.bu
  %i.ha = load ptr, ptr %i.gt, align 8, !alias.scope !560, !nonnull !14, !noundef !14
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %.sroa.03.0.i39
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i64 %.sroa.0.0.i34, ptr %i.hc, align 8, !noalias !560
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit38

bb.by:                                            ; preds = %bb.bu
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i39, i64 noundef %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #26, !noalias !560
  unreachable

bb.bz:                                            ; preds = %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetuE9set_childjECs9RFwvXNxPyg_16hickory_resolver.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtCs7w1SCUKeMLI_11prefix_trie3mapINtB4_9PrefixMapNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuE6insertCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(17) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 9 uses
  %.sroa.6 = alloca [5 x i8], align 2             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.c = tail call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22), !noalias !563 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix2eqCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %1), !noalias !567
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.f = phi ptr [ %i.s, %bb.f ], [ %i.c, %bb.a ]
  %.sroa.02.0131 = phi i64 [ %.sroa.0.0.i.i, %bb.f ], [ 0, %bb.a ] ; 17 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val38 = load i8, ptr %i.g, align 8, !noundef !14
  %i.h = tail call noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix10is_bit_setCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %1, i8 noundef %.val38), !noalias !567 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = tail call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef %.sroa.02.0131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !567
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef %.sroa.02.0131, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3), !noalias !567
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i

_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.in.i.i = phi ptr [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !noalias !567, !noundef !14 ; 5 uses
  %.not.i36 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not.i36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i
  %i.l = tail call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexINtNtNtB1B_3num7nonzero7NonZerojEE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23), !noalias !567
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.n = tail call noundef zeroext i1 @_RNvXs_NtCs7w1SCUKeMLI_11prefix_trie6prefixNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetNtB4_6Prefix8contains(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %1), !noalias !567
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef zeroext i1 @_RNvXs_NtCs7w1SCUKeMLI_11prefix_trie6prefixNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetNtB4_6Prefix8contains(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %i.m), !noalias !567
  br i1 %i.o, label %bb.u, label %bb.ai

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.02.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.i.i, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !14 ; 2 uses
  %i.r = icmp ult i64 %.sroa.02.0.lcssa, %i.q
  br i1 %i.r, label %bb.bd, label %bb.be

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noundef nonnull align 8 ptr @_RNvXs3_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB5_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCs9RFwvXNxPyg_16hickory_resolver(ptr noundef nonnull align 8 %i.b, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22), !noalias !563 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = tail call noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix2eqCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(17) %1), !noalias !567
  br i1 %i.u, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %_RINvMs8_NtCs7w1SCUKeMLI_11prefix_trie5innerINtB6_5TableNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetuE9get_childjECs9RFwvXNxPyg_16hickory_resolver.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !568, !noalias !571, !noundef !14
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !568, !noalias !571
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !568, !noalias !571, !noundef !14 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !568, !noalias !571, !noundef !14 ; 6 uses
  %i.ad = icmp ult i64 %i.ac, 230584300921369396
  tail call void @llvm.assume(i1 %i.ad)
  %.not.i34 = icmp eq i64 %i.ac, 0
  br i1 %.not.i34, label %bb.l, label %bb.j, !prof !4

bb.i:                                             ; preds = %bb.g
  %i.ae = add nsw i64 %i.z, -1                    ; 3 uses
  store i64 %i.ae, ptr %i.y, align 8, !alias.scope !568, !noalias !571
  %i.af = load i64, ptr %0, align 8, !range !189, !alias.scope !568, !noalias !571, !noundef !14
  %i.ag = icmp samesign ult i64 %i.ae, %i.af
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !568, !noalias !571, !nonnull !14, !noundef !14
  %i.aj = icmp ult i64 %i.z, 1152921504606846977
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae
end_hunk_0
