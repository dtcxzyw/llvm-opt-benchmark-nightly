Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_container_tests_common-6650c216428fe7c2.iceoryx2_bb_container_tests_common.e066d4e3b72ad41e-cgu.12?download=true
inline.NumInlined: 181
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXsd_NtNtCs8Chj7Szqq0n_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt:bb.a
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 11) #14
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs8Chj7Szqq0n_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String10push_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !6
  %i.b = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12insert_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #14
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12as_mut_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !noundef !6
  %i.b = insertvalue { ptr, i64 } poison, ptr %.val1, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.c, align 8, !noundef !6
  %i.d = insertvalue { ptr, i64 } %i.b, i64 %.val, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12insert_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 3 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %0, ptr %i.o, align 8
  store i64 %1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @157, ptr %i.m, align 8, !captures !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 28, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val62 = load i64, ptr %i.q, align 8, !noundef !6 ; 4 uses
  %i.r = icmp ult i64 %.val62, %1
  br i1 %i.r, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val64 = load i64, ptr %i.s, align 8, !noundef !6 ; 4 uses
  %i.t = add i64 %.val62, %3                      ; 6 uses
  %i.u = icmp ult i64 %.val64, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.o, ptr %i.l, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.49.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.v, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.n, ptr %i.w, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @8, ptr noundef nonnull %i.l, ptr noundef nonnull @160, ptr noundef nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.o, ptr %i.h, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.m, ptr %i.x, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.i, ptr %i.y, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.n, ptr %i.z, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @161, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.ab = icmp samesign eq i64 %3, 0
  br i1 %i.ab, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12.i73 = load ptr, ptr %i.ac, align 8, !alias.scope !275, !noalias !276, !noundef !6 ; 2 uses
  %i.ad = add i64 %.val64, 1
  %i.ae = getelementptr i8, ptr %.val12.i73, i64 %1 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %3
  %i.ag = sub nuw i64 %.val62, %1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ae, i64 %i.ag, i1 false), !noalias !277
  br label %._crit_edge.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.o, ptr %i.g, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ah = load ptr, ptr %i.o, align 8, !nonnull !6, !align !8, !noundef !6
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val63 = load i64, ptr %i.ai, align 8, !noundef !6
  store i64 %.val63, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.aj, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.ak, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @8, ptr noundef nonnull %i.g, ptr noundef nonnull @159, ptr noundef nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #14
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String22insert_bytes_uncheckedCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.f:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.066, i64 1 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.aa
  br i1 %i.am, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.01.066 = phi ptr [ %i.al, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %i.an = load i8, ptr %.sroa.01.066, align 1, !noundef !6
  %or.cond = icmp slt i8 %i.an, 1
  br i1 %or.cond, label %bb.l, label %bb.f

._crit_edge:                                      ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12.i = load ptr, ptr %i.ao, align 8, !alias.scope !278, !noalias !279, !noundef !6 ; 4 uses
  %i.ap = add i64 %.val64, 1                      ; 3 uses
  %i.aq = getelementptr i8, ptr %.val12.i, i64 %1 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 %3
  %i.as = sub nuw i64 %.val62, %1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.aq, i64 %i.as, i1 false), !noalias !280
  %i.at = tail call i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %1) ; 2 uses
  %i.au = add nsw i64 %3, -1
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.au) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.av, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %4 = add nuw i64 %i.av, 1                       ; 2 uses
  %i.aw = and i64 %4, 15                          ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 16, i64 %i.aw
  %n.vec = sub i64 %4, %i.ay                      ; 3 uses
  %i.az = getelementptr i8, ptr %2, i64 %n.vec
  %invariant.gep = getelementptr i8, ptr %.val12.i, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !279, !noalias !278
  store <16 x i8> %wide.load, ptr %gep, align 1, !noalias !280
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %.lr.ph.i.preheader, label %vector.body, !llvm.loop !271

.lr.ph.i.preheader:                               ; preds = %vector.body, %._crit_edge
  %.sroa.0.021.i.ph = phi ptr [ %2, %._crit_edge ], [ %i.az, %vector.body ]
  %.sroa.7.020.i.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.j
  %.sroa.0.021.i = phi ptr [ %i.bh, %bb.j ], [ %.sroa.0.021.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.7.020.i = phi i64 [ %i.bg, %bb.j ], [ %.sroa.7.020.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bb = add nuw i64 %.sroa.7.020.i, %1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.020.i, %i.at
  br i1 %exitcond.not.i, label %bb.k, label %bb.j

._crit_edge.i:                                    ; preds = %bb.j, %._crit_edge.thread
  %i.bc = phi i64 [ %i.ad, %._crit_edge.thread ], [ %i.ap, %bb.j ] ; 2 uses
  %.val12.i74 = phi ptr [ %.val12.i73, %._crit_edge.thread ], [ %.val12.i, %bb.j ]
  store i64 %i.t, ptr %i.q, align 8, !alias.scope !281, !noalias !279
  %i.bd = icmp ult i64 %i.t, %.val64
  br i1 %i.bd, label %bb.g, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String22insert_bytes_uncheckedCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.be = icmp ult i64 %i.t, %i.bc
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.val12.i74, i64 %i.t
  store i8 0, ptr %i.bf, align 1, !noalias !280
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String22insert_bytes_uncheckedCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #15, !noalias !280
  unreachable

bb.j:                                             ; preds = %.lr.ph.i
  %i.bg = add nuw nsw i64 %.sroa.7.020.i, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val12.i, i64 %i.bb
  %i.bj = load i8, ptr %.sroa.0.021.i, align 1, !alias.scope !279, !noalias !278, !noundef !6
  store i8 %i.bj, ptr %i.bi, align 1, !noalias !280
  %i.bk = icmp eq ptr %i.bh, %i.aa
  br i1 %i.bk, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !274

bb.k:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #15, !noalias !280
  unreachable

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.o, ptr %i.c, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.457.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bl, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.461.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @8, ptr noundef nonnull %i.c, ptr noundef nonnull @158, ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #14
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String22insert_bytes_uncheckedCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String22insert_bytes_uncheckedCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.e, %bb.l, %bb.h, %._crit_edge.i
  %.sroa.0.1 = phi i8 [ 2, %bb.h ], [ 2, %._crit_edge.i ], [ 1, %bb.e ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret i8 %.sroa.0.1
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val5 = load i64, ptr %i.a, align 8, !noundef !6 ; 4 uses
  %i.b = add i64 %2, %1                           ; 4 uses
  %i.c = icmp uge i64 %.val5, %i.b                ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.val5, %i.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 %1
  %i.g = sub nuw i64 %.val5, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = sub i64 %.val5, %2                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load i64, ptr %i.i, align 8, !noundef !6
  %i.j = add i64 %.val7, 1                        ; 2 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.l, align 8, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %.val6, i64 %i.h
  store i8 0, ptr %i.m, align 1
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !284
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #15
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.e
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12strip_prefixCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val14.i = load i64, ptr %i.a, align 8, !alias.scope !292, !noalias !293, !noundef !6 ; 3 uses
  %i.b = icmp ult i64 %.val14.i, %2
  br i1 %i.b, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub.i = sub nuw i64 %.val14.i, %2        ; 7 uses
  %.not.i = icmp eq i64 %reass.sub.i, -1
  br i1 %.not.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val12.i = load i64, ptr %i.d, align 8, !alias.scope !292, !noalias !293
  %i.e = add i64 %.val12.i, 1                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !292, !noalias !293 ; 4 uses
  %i.g = icmp samesign eq i64 %2, 0
  br label %bb.c

.loopexit21.i:                                    ; preds = %bb.e
  %exitcond.not.i = icmp eq i64 %.sroa.07.028.i, %reass.sub.i
  br i1 %exitcond.not.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit21.i, %.lr.ph.i
  %.sroa.07.028.i = phi i64 [ 0, %.lr.ph.i ], [ %i.h, %.loopexit21.i ] ; 5 uses
  %i.h = add nuw i64 %.sroa.07.028.i, 1
  br i1 %i.g, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String4findCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i21, i64 1 ; 2 uses
  %i.j = add nuw i64 %.sroa.8.0.i20, 1
  %i.k = icmp eq ptr %i.i, %i.c
  br i1 %i.k, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String4findCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.015.i21 = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.sroa.8.0.i20 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.l = add nuw i64 %.sroa.8.0.i20, %.sroa.07.028.i ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !noalias !294, !noundef !6
  %i.p = load i8, ptr %.sroa.0.015.i21, align 1, !alias.scope !293, !noalias !292, !noundef !6
  %.not11.i = icmp eq i8 %i.o, %i.p
  br i1 %.not11.i, label %bb.d, label %.loopexit21.i

bb.f:                                             ; preds = %.lr.ph
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.07.028.i, i64 %i.e)
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #15, !noalias !294
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String4findCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.c, %bb.d
  %i.q = icmp eq i64 %.sroa.07.028.i, 0
  br i1 %i.q, label %bb.g, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
end_hunk_0
