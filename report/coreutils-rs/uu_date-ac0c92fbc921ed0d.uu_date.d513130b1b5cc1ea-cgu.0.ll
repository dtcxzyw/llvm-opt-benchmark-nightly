Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_date-ac0c92fbc921ed0d.uu_date.d513130b1b5cc1ea-cgu.0?download=true
inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !4537
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !4537
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !4537
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !4537
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !4537
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !4537
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4547)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4548, !noundef !6 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !9, !alias.scope !4548, !noundef !6
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i, !prof !11

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #33, !noalias !4549
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !4550, !noundef !6 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !4550, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !4550
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsiibOIv6tv3q_7uu_date.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !4550
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 0, 5) i8 @_RNvXs_CsiibOIv6tv3q_7uu_dateNtB4_13Iso8601FormatINtNtCs6JMX4GRUq9U_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  switch i64 %1, label %bb.g [
    i64 5, label %bb.b
    i64 7, label %bb.c
    i64 2, label %bb.e
    i64 4, label %bb.f
  ], !prof !4551

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1920298856
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = xor i32 %i.e, 115
  %i.g = or i32 %i.b, %i.f
  %i.h = icmp ne i32 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 1
  %i.l = xor i32 %i.k, 1970170221
  %i.m = getelementptr i8, ptr %0, i64 3
  %i.n = load i32, ptr %i.m, align 1
  %i.o = xor i32 %i.n, 1936028789
  %i.p = or i32 %i.l, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %0, align 1
  %i.u = xor i32 %i.t, 1868785011
  %i.v = getelementptr i8, ptr %0, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1935961711
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.ac = load i16, ptr %0, align 1
  %i.ad = icmp ne i16 %i.ac, 29550
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.ag = load i32, ptr %0, align 1
  %i.ah = icmp ne i32 %i.ag, 1702125924
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a, %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #34
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 4, %bb.e ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 0, %bb.f ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser10parse_ref_CsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #33
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !13, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4554
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4554 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37, !noalias !4554
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @239, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @223, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser15possible_valuesCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #33
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser7type_idCsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @223, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4576)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4577
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #33, !noalias !4577 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #37, !noalias !4578
  unreachable

.lr.ph.i.i.i:                                     ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.054.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.i, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 7 uses
  %.sroa.7.053.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 2 uses
  %.sroa.10.052.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %1, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ]
  %1 = add nsw i64 %.sroa.10.052.i.i.i, -1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
  %i.j = add nuw nsw i64 %.sroa.7.053.i.i.i, 1
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.7.053.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4578
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4580, !noalias !4581, !nonnull !6, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !4580, !noalias !4581, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !12, !alias.scope !4580, !noalias !4581, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #33, !noalias !4582
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !4583
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.d ], [ -1, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !4580, !noalias !4581, !nonnull !6, !noundef !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !4580, !noalias !4581, !noundef !6 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4584)
  %i.t = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.t, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.u = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4585
  %i.v = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #33, !noalias !4585 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %3, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %.val4.i.i.i.i, 1
  %2 = icmp eq i64 %.val4.i.i.i.i, 1
  br i1 %2, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i.i.a

.lr.ph.preheader.i.i.i.i.i.i.a:                   ; preds = %bb.f
  %unroll_iter = and i64 %.val4.i.i.i.i, -2
  br label %.lr.ph.i.i.i.i.i.i

3:                                                ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #37, !noalias !4586
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %9, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.sroa.7.021.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %8, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.020.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !4584, !noalias !4587, !nonnull !6, !noundef !6
  %6 = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %6, align 8, !alias.scope !4584, !noalias !4587, !noundef !6
  store ptr %.val.i.i.i.i.i.i, ptr %5, align 8, !noalias !4586
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %7, align 8, !noalias !4586
  %8 = add nuw nsw i64 %.sroa.7.021.i.i.i.i.i.i, 2 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 32 ; 2 uses
  %10 = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val.i.i.i.i.i.i.1 = load ptr, ptr %4, align 8, !alias.scope !4584, !noalias !4587, !nonnull !6, !noundef !6
  %12 = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 24
  %.val13.i.i.i.i.i.i.1 = load i64, ptr %12, align 8, !alias.scope !4584, !noalias !4587, !noundef !6
  store ptr %.val.i.i.i.i.i.i.1, ptr %11, align 8, !noalias !4586
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.val13.i.i.i.i.i.i.1, ptr %13, align 8, !noalias !4586
  %niter.next.1 = add nuw i64 %.sroa.10.020.i.i.i.i.i.i, 2 ; 2 uses
  %i.x = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %i.x, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, %bb.f
  %.sroa.0.022.i.i.i.i.i.i.epil.init = phi ptr [ %.val.i.i.i.i, %bb.f ], [ %9, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.7.021.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %8, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %.val4.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i.epil.init ; 2 uses
  %.val.i.i.i.i.i.i.a = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.epil.init, align 8, !alias.scope !4584, !noalias !4587, !nonnull !6, !noundef !6
  %i.z = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i.epil.init, i64 8
  %.val13.i.i.i.i.i.i.a = load i64, ptr %i.z, align 8, !alias.scope !4584, !noalias !4587, !noundef !6
  store ptr %.val.i.i.i.i.i.i.a, ptr %i.y, align 8, !noalias !4586
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.val13.i.i.i.i.i.i.a, ptr %i.aa, align 8, !noalias !4586
  br label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.g, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, %bb.e
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %i.v, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ], [ %i.v, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ac = load i8, ptr %i.ab, align 8, !range !7, !alias.scope !4580, !noalias !4581, !noundef !6
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !4588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4578
  store i64 %.val4.i.i.i.i, ptr %i.k, align 8, !noalias !4588
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.m, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %i.o, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 %i.ac, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !4588
  %i.ad = icmp eq i64 %1, 0
  br i1 %i.ad, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.c

_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i64.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4589
  %i.ae = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4589 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.h:                                             ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !4589
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.10.0.i64.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = insertvalue { ptr, ptr } poison, ptr %i.ae, 0
  %i.ah = insertvalue { ptr, ptr } %i.ag, ptr @229, 1
  ret { ptr, ptr } %i.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9parse_refCsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #33
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !6
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !13, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4592
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !4592 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37, !noalias !4592
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @239, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @223, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_ENtNtCs6JMX4GRUq9U_4core3fmt5Write9write_strCsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef captures(none) dereferenceable(10) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4599)
  %i.a = load i8, ptr %0, align 1, !alias.scope !4598, !noundef !6
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = add i64 %2, %i.b                         ; 5 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %i.e = icmp ugt i64 %i.c, 9
  %or.cond.not.i.not = or i1 %i.d, %i.e           ; 2 uses
  br i1 %or.cond.not.i.not, label %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit, label %.preheader.i, !prof !19

.preheader.i:                                     ; preds = %bb.a
  %i.f = icmp samesign ugt i64 %i.c, %i.b
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = add i64 %2, -1
  %i.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h)
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.j, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.02.010.i.ph = phi i64 [ %i.b, %.lr.ph.i ], [ %i.n, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 16, i64 %i.k
  %n.vec = sub i64 %i.j, %i.m                     ; 2 uses
  %i.n = add i64 %n.vec, %i.b
  %invariant.gep = getelementptr i8, ptr %i.g, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !alias.scope !4599
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index
  store <16 x i8> %wide.load, ptr %gep, align 1, !alias.scope !4598
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %scalar.ph.preheader, label %vector.body, !llvm.loop !4596

._crit_edge.i:                                    ; preds = %bb.c, %.preheader.i
  %i.q = trunc nuw nsw i64 %i.c to i8
  store i8 %i.q, ptr %0, align 1, !alias.scope !4598
  br label %_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %.sroa.02.010.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.02.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = sub nuw nsw i64 %.sroa.02.010.i, %i.b    ; 3 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #34, !noalias !4602
  unreachable

bb.c:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !4599, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.010.i
  store i8 %i.u, ptr %i.v, align 1, !alias.scope !4598
  %i.w = add nuw nsw i64 %.sroa.02.010.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !4597

_RNvMsg_NtCscxuc9kp9KZq_9jiff_core4utilINtB5_8ArrayStrKj9_E8push_strCsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.a, %._crit_edge.i
  ret i1 %or.cond.not.i.not
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = icmp ugt i64 %2, 2
  br i1 %i.b, label %bb.c, label %bb.b

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit: ; preds = %.split.us.i.i, %bb.l, %.lr.ph.split.us.i.i, %bb.b, %bb.n
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.de, %bb.n ], [ %i.cw, %bb.l ], [ true, %.lr.ph.split.us.i.i ], [ %i.o, %.split.us.i.i ]
  ret i1 %.sroa.0.0

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 2
  br i1 %i.c, label %bb.n, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4613)
  %i.d = icmp ult i64 %2, 17
  br i1 %i.d, label %.lr.ph.split.us.i.i, label %bb.d

.lr.ph.split.us.i.i:                              ; preds = %bb.c
  %i.e = load i16, ptr %1, align 1
  %i.f = load i16, ptr %0, align 1
  %i.g = icmp ne i16 %i.e, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i, %.lr.ph.split.us.i.i
  %.in.i4 = phi i64 [ %i.p, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.pn.i3 = phi ptr [ %i.j, %.split.us.i.i ], [ %1, %.lr.ph.split.us.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.pn.i3, i64 1 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1
  %i.l = load i16, ptr %0, align 1
  %i.m = icmp ne i16 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %.not = xor i1 %i.o, true
  %i.p = add nsw i64 %.in.i4, -1                  ; 2 uses
  %.not27.i.i = icmp ugt i64 %i.p, 2
  %or.cond = select i1 %.not, i1 %.not27.i.i, i1 false
  br i1 %or.cond, label %.split.us.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %0, align 1, !alias.scope !4612, !noundef !6
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !4612, !noundef !6
  %i.v = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4614
  store ptr %1, ptr %i.a, align 8, !noalias !4614
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
