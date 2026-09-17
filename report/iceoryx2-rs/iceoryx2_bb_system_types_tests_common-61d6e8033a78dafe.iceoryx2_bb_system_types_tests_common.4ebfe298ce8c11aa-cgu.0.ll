Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_system_types_tests_common-61d6e8033a78dafe.iceoryx2_bb_system_types_tests_common.4ebfe298ce8c11aa-cgu.0?download=true
inline.NumInlined: 120
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKjff_ENtNtCs8Chj7Szqq0n_4core3fmt7Display3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !222, !noundef !4
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %.val.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !9, !noundef !4
  %i.g = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @166, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.g
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs8Chj7Szqq0n_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #9
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs8Chj7Szqq0n_4core3fmtShNtB5_5Debug3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b) #9
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12insert_bytesCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef align 8 dereferenceable(264) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %0, ptr %i.o, align 8
  store i64 %1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @167, ptr %i.m, align 8, !captures !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 28, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %.val62 = load i64, ptr %i.q, align 8, !noundef !4 ; 4 uses
  %i.r = icmp ult i64 %.val62, %1
  br i1 %i.r, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.s = add i64 %.val62, %3
  %i.t = icmp ugt i64 %i.s, 255
  br i1 %i.t, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.o, ptr %i.l, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB6_5Debug3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common, ptr %.sroa.49.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.u, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.n, ptr %i.v, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @166, ptr noundef nonnull %i.l, ptr noundef nonnull @170, ptr noundef nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.o, ptr %i.h, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB6_5Debug3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common, ptr %.sroa.421.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.m, ptr %i.w, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common, ptr %.sroa.425.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.i, ptr %i.x, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.n, ptr %i.y, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @171, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.aa = icmp samesign eq i64 %3, 0
  br i1 %i.aa, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %0, i64 %1        ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 %3
  %i.ad = sub nuw i64 %.val62, %1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.ab, i64 %i.ad, i1 false), !alias.scope !232, !noalias !233
  br label %._crit_edge.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.o, ptr %i.g, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB6_5Debug3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 255, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common, ptr %.sroa.441.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.ae, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.af, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.449.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @166, ptr noundef nonnull %i.g, ptr noundef nonnull @169, ptr noundef nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String22insert_bytes_uncheckedCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.064, i64 1 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.z
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.01.064 = phi ptr [ %i.ag, %bb.f ], [ %2, %bb.d ] ; 2 uses
  %i.ai = load i8, ptr %.sroa.01.064, align 1, !noundef !4
  %or.cond = icmp slt i8 %i.ai, 1
  br i1 %or.cond, label %bb.j, label %bb.f

._crit_edge:                                      ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.aj = getelementptr i8, ptr %0, i64 %1        ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %3
  %i.al = sub nuw i64 %.val62, %1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.aj, i64 %i.al, i1 false), !alias.scope !234, !noalias !235
  %i.am = tail call i64 @llvm.usub.sat.i64(i64 255, i64 %1) ; 2 uses
  %i.an = add nsw i64 %3, -1
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.am) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %i.aq = and i64 %i.ap, 15                       ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = select i1 %i.ar, i64 16, i64 %i.aq
  %n.vec = sub nsw i64 %i.ap, %i.as               ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !235, !noalias !234
  store <16 x i8> %wide.load, ptr %gep, align 1, !alias.scope !234, !noalias !235
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %.lr.ph.i.preheader.loopexit, label %vector.body, !llvm.loop !228

.lr.ph.i.preheader.loopexit:                      ; preds = %vector.body
  %4 = getelementptr i8, ptr %2, i64 %n.vec
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.loopexit, %._crit_edge
  %.sroa.0.014.i.ph = phi ptr [ %2, %._crit_edge ], [ %4, %.lr.ph.i.preheader.loopexit ]
  %.sroa.7.013.i.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec, %.lr.ph.i.preheader.loopexit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %.sroa.0.014.i = phi ptr [ %i.az, %bb.h ], [ %.sroa.0.014.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.7.013.i = phi i64 [ %i.ay, %bb.h ], [ %.sroa.7.013.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.au = add nuw nsw i64 %.sroa.7.013.i, %1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.7.013.i, %i.am
  br i1 %exitcond.not.i, label %bb.i, label %bb.h

._crit_edge.i:                                    ; preds = %bb.h, %._crit_edge.thread
  %.val.i = load i64, ptr %i.q, align 8, !alias.scope !234, !noalias !235, !noundef !4
  %i.av = add i64 %.val.i, %3                     ; 3 uses
  store i64 %i.av, ptr %i.q, align 8, !alias.scope !238, !noalias !235
  %i.aw = icmp ult i64 %i.av, 255
  br i1 %i.aw, label %bb.g, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String22insert_bytes_uncheckedCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !alias.scope !234, !noalias !235
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String22insert_bytes_uncheckedCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ay = add nuw nsw i64 %.sroa.7.013.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  %i.bb = load i8, ptr %.sroa.0.014.i, align 1, !alias.scope !235, !noalias !234, !noundef !4
  store i8 %i.bb, ptr %i.ba, align 1, !alias.scope !234, !noalias !235
  %i.bc = icmp eq ptr %i.az, %i.z
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !231

bb.i:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.au, i64 noundef 255, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #10, !noalias !239
  unreachable

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.o, ptr %i.c, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB6_5Debug3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common, ptr %.sroa.453.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string5utils17as_escaped_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common, ptr %.sroa.457.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bd, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.461.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @166, ptr noundef nonnull %i.c, ptr noundef nonnull @168, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #9
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String22insert_bytes_uncheckedCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String22insert_bytes_uncheckedCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit: ; preds = %bb.e, %bb.j, %bb.g, %._crit_edge.i
  %.sroa.0.1 = phi i8 [ 2, %bb.g ], [ 2, %._crit_edge.i ], [ 1, %bb.e ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret i8 %.sroa.0.1
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %.val5 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = add i64 %2, %1                           ; 4 uses
  %i.c = icmp uge i64 %.val5, %i.b                ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.val5, %i.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = sub nuw i64 %.val5, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  %.val.pre = load i64, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.val = phi i64 [ %.val5, %bb.b ], [ %.val.pre, %bb.c ]
  %i.g = sub i64 %.val, %2                        ; 4 uses
  %i.h = icmp ult i64 %i.g, 255
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  store i8 0, ptr %i.i, align 1
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !242
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef 255, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #10
  unreachable

bb.g:                                             ; preds = %bb.a, %bb.e
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i1, i8 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String6removeCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.b = icmp uge i64 %.val, %1                   ; 2 uses
  br i1 %i.b, label %bb.b, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 255
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noundef !4  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.f = add nuw nsw i64 %1, 1                    ; 3 uses
  %.not.not = icmp ugt i64 %.val, %1
  br i1 %.not.not, label %bb.d, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %.val, %i.f
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = sub nuw i64 %.val, %i.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %i.g, i64 %i.h, i1 false), !alias.scope !247
  %.val.pre.i = load i64, ptr %i.a, align 8, !alias.scope !247
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.val.i = phi i64 [ %.val, %bb.d ], [ %.val.pre.i, %bb.e ]
  %i.i = add i64 %.val.i, -1                      ; 4 uses
  %i.j = icmp ult i64 %i.i, 255
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.i
  store i8 0, ptr %i.k, align 1, !alias.scope !247
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !248
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef 255, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #10, !noalias !247
  unreachable

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef 255, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #10
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common.exit: ; preds = %bb.g, %bb.c, %bb.a
  %.sroa.3.0 = phi i8 [ undef, %bb.a ], [ %i.e, %bb.c ], [ %i.e, %bb.g ]
  %i.l = insertvalue { i1, i8 } poison, i1 %i.b, 0
  %i.m = insertvalue { i1, i8 } %i.l, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String8as_bytesCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = insertvalue { ptr, i64 } %i.a, i64 %.val, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvYNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types10group_name9GroupNameINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKj1f_E3newCs6LbhF1eMa6c_37iceoryx2_bb_system_types_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [40 x i8], align 8                ; 44 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr @178, ptr %i.w, align 8, !captures !7
end_hunk_0
