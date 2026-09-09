Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_split-002267ab44b60e34.uu_split.53f7e6c585167012-cgu.0?download=true
inline.NumInlined: 1204
inline.NumDeleted: 607
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs0_NtNtCs7cXCwYFNYaI_8uu_split8platform4unixNtB5_13WithEnvVarSetNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3499)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3499
  %.val.i.i1 = load ptr, ptr %i.h, align 8, !alias.scope !3499, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i2 = load i64, ptr %i.i, align 8, !alias.scope !3499, !noundef !8 ; 2 uses
  store ptr %.val.i.i1, ptr %i.c, align 8, !noalias !3499
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.val1.i.i2, ptr %i.o, align 8, !noalias !3499
  %i.p = tail call noundef ptr @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix8unsetenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i1, i64 noundef %.val1.i.i2) #26, !noalias !3499 ; 2 uses
  %.not.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i3, label %_RINvNtCs2vKOLqTMYjT_3std3env10remove_varRNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3499
  store ptr %i.p, ptr %i.b, align 8, !noalias !3500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3500
  store ptr %i.c, ptr %i.a, align 8, !noalias !3500
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCs7cXCwYFNYaI_8uu_split, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !3500
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.q, align 8, !noalias !3500
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !3500
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #25, !noalias !3499
  unreachable

_RINvNtCs2vKOLqTMYjT_3std3env10remove_varRNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3499
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs2vKOLqTMYjT_3std3env10remove_varRNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit, %_RINvNtCs2vKOLqTMYjT_3std3env7set_varRNtNtCs7tKScEop1B6_5alloc6string6StringRNtNtNtB4_3ffi6os_str8OsStringECs7cXCwYFNYaI_8uu_split.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs1K_NtCs7tKScEop1B6_5alloc6stringlNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i32 %.0.val, 0
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !8
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef dereferenceable_or_null(10) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 10, i64 noundef range(i64 1, 9) 1) #26, !noalias !3509 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 10) #29
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.b
  store i64 10, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef dereferenceable_or_null(11) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 11, i64 noundef range(i64 1, 9) 1) #26, !noalias !3510 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit13

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 11) #29
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit13: ; preds = %bb.d
  store i64 11, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  store i8 45, ptr %i.f, align 1, !noalias !3511
  store i64 1, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !3511
  %i.h = sub i32 0, %.0.val
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit13, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit
  %i.i = phi ptr [ %i.f, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit13 ], [ %i.d, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit ]
  %i.j = phi i64 [ 11, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit13 ], [ 10, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit ]
  %i.k = phi i64 [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit13 ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit ] ; 4 uses
  %.sroa.012.0 = phi i32 [ %i.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit13 ], [ %.0.val, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit ]
  %i.l = call { ptr, i64 } @_RNvMsa_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impm4__fmt(i32 noundef %.sroa.012.0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 10) #26 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3512)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.p = sub nuw nsw i64 %i.j, %i.k
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i, !prof !9

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i: ; preds = %bb.f
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.k, i64 noundef %i.n, i64 noundef 1, i64 noundef 1) #26
  %i.r = load i64, ptr %i.o, align 8, !alias.scope !3512, !noundef !8 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !3512
  br label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i: ; preds = %bb.f
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs7cXCwYFNYaI_8uu_split.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i
  %i.t = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i ], [ %i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i ]
  %i.u = phi i64 [ %i.r, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i ], [ %i.k, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull readonly align 1 %i.m, i64 %i.n, i1 false), !noalias !3512
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs7cXCwYFNYaI_8uu_split.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs7cXCwYFNYaI_8uu_split.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i, %bb.g
  %i.w = phi i64 [ %i.u, %bb.g ], [ %i.k, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i ]
  %i.x = add i64 %i.w, %i.n
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !3512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs1_Cs7cXCwYFNYaI_8uu_splitNtB5_15ByteChunkWriterNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  %i.b = load i32, ptr %i.a, align 8, !range !7, !alias.scope !3517, !noundef !8
  %.not.i = icmp eq i32 %i.b, 2
  br i1 %.not.i, label %_RNvXNtCs7cXCwYFNYaI_8uu_split8platformNtB2_6WriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3518)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !3519, !noundef !8
  %.not.i.i = icmp eq i32 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %_RNvXNtCs7cXCwYFNYaI_8uu_split8platformNtB2_6WriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 25, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #25, !noalias !3519
  unreachable

_RNvXNtCs7cXCwYFNYaI_8uu_split8platformNtB2_6WriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6NumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !8
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXs5_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_18DynamicWidthNumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs3_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_16FixedWidthNumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs1_NtCs7cXCwYFNYaI_8uu_split9filenamesNtB5_16FilenameIteratorNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !15, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3550)
  %i.h = load i64, ptr %1, align 8, !range !12, !alias.scope !3550, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3550, !noundef !8
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !3550
  br label %_RNvMs0_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6Number9increment.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3551)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3552, !noundef !8 ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %i.p = icmp eq i64 %i.n, -1
  br i1 %i.p, label %bb.g, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i8, ptr %i.r, align 8, !alias.scope !3552, !noundef !8 ; 2 uses
  %i.t = load i64, ptr %i.q, align 8, !alias.scope !3552, !noundef !8 ; 2 uses
  %i.u = zext i8 %i.s to i64                      ; 2 uses
  %i.v = icmp eq i8 %i.s, 0
  %.not.i.i = icmp eq i64 %i.t, 0                 ; 2 uses
  br i1 %i.v, label %.split.us.i.i, label %.split.i.i.preheader

.split.i.i.preheader:                             ; preds = %bb.e
  br i1 %.not.i.i, label %.split16.us.i.i, label %.lr.ph

.split.us.i.i:                                    ; preds = %bb.e
  br i1 %.not.i.i, label %bb.g, label %.split18.us.i.i

.split.i.i:                                       ; preds = %.lr.ph
  %i.w = udiv i64 %.sroa.06.0.i.i30, %i.u         ; 2 uses
  %i.x = add i64 %.sroa.09.0.i.i29, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.x, %i.t
  br i1 %exitcond.not.i.i, label %.split16.us.i.i, label %.lr.ph

.split16.us.i.i:                                  ; preds = %.split.i.i, %.split.i.i.preheader
  %.sroa.06.0.i.i.lcssa = phi i64 [ %i.o, %.split.i.i.preheader ], [ %i.w, %.split.i.i ]
  %2 = icmp eq i64 %.sroa.06.0.i.i.lcssa, 0
  br i1 %2, label %.loopexit.i.i, label %bb.g

.lr.ph:                                           ; preds = %.split.i.i.preheader, %.split.i.i
  %.sroa.06.0.i.i30 = phi i64 [ %i.w, %.split.i.i ], [ %i.o, %.split.i.i.preheader ] ; 2 uses
  %.sroa.09.0.i.i29 = phi i64 [ %i.x, %.split.i.i ], [ 0, %.split.i.i.preheader ]
  %i.y = icmp ult i64 %.sroa.06.0.i.i30, %i.u
  br i1 %i.y, label %.loopexit.i.i, label %.split.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph, %.split16.us.i.i
  store i64 %i.o, ptr %i.m, align 8, !alias.scope !3552
  br label %_RNvMs0_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6Number9increment.exit

.split18.us.i.i:                                  ; preds = %.split.us.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #25, !noalias !3552
  unreachable

bb.f:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 8
  br label %_RNvMs0_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6Number9increment.exit

bb.g:                                             ; preds = %bb.d, %.split16.us.i.i, %.split.us.i.i
  store i64 -1, ptr %0, align 8
  br label %bb.j

_RNvMs0_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6Number9increment.exit: ; preds = %.loopexit.i.i, %bb.c, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !8 ; 9 uses
  %.not.i = icmp slt i64 %i.ac, 0
  br i1 %.not.i, label %bb.k, label %bb.h, !prof !19

bb.h:                                             ; preds = %_RNvMs0_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6Number9increment.exit
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread16, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3553
  %i.ae = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 9) 1) #26, !noalias !3553 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.k, label %bb.o

bb.j:                                             ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECs7cXCwYFNYaI_8uu_split.exit, %bb.g
  ret void

bb.k:                                             ; preds = %_RNvMs0_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6Number9increment.exit, %bb.i
  %.sroa.48.0.ph = phi i64 [ 1, %bb.i ], [ 0, %_RNvMs0_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6Number9increment.exit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.48.0.ph, i64 %i.ac) #29
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread16: ; preds = %bb.h, %bb.o
  %i.ag = phi ptr [ %i.ae, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.h ] ; 2 uses
  store i64 %i.ac, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.ag, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3555
  store i64 0, ptr %i.c, align 8, !noalias !3555
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3555
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3555
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.ah, align 8, !noalias !3555
  store ptr %i.c, ptr %i.b, align 8, !noalias !3555
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @165, ptr %i.ai, align 8, !noalias !3555
  %i.aj = load i64, ptr %1, align 8, !range !12, !alias.scope !3556, !noalias !3557, !noundef !8
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.ak, label %.split.i, label %_RNvXs1_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6NumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit.i

.split.i:                                         ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread16
  %i.am = call noundef zeroext i1 @_RNvXs5_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_18DynamicWidthNumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26, !noalias !3558
  br i1 %i.am, label %bb.l, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs7cXCwYFNYaI_8uu_split6number6NumberNtB5_12SpecToString14spec_to_stringBC_.exit, !prof !9

_RNvXs1_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6NumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread16
  %i.an = call noundef zeroext i1 @_RNvXs3_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_16FixedWidthNumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26, !noalias !3558
  br i1 %i.an, label %bb.l, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs7cXCwYFNYaI_8uu_split6number6NumberNtB5_12SpecToString14spec_to_stringBC_.exit, !prof !9

bb.l:                                             ; preds = %_RNvXs1_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6NumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit.i, %.split.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #25, !noalias !3555
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs7cXCwYFNYaI_8uu_split6number6NumberNtB5_12SpecToString14spec_to_stringBC_.exit: ; preds = %.split.i, %_RNvXs1_NtCs7cXCwYFNYaI_8uu_split6numberNtB5_6NumberNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit.i
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !noalias !3554 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3554, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3554 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3555
  call void @llvm.experimental.noalias.scope.decl(metadata !3559)
  call void @llvm.experimental.noalias.scope.decl(metadata !3560)
  call void @llvm.experimental.noalias.scope.decl(metadata !3561)
  %.not = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not, label %_RNvXs0_NvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB8_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringNtB5_10SpecPushTo12spec_push_to.exit.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i, !prof !23

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i: ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs7cXCwYFNYaI_8uu_split6number6NumberNtB5_12SpecToString14spec_to_stringBC_.exit
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ac, i64 noundef %.sroa.5.0.copyload, i64 noundef 1, i64 noundef 1) #26, !noalias !3562
  %i.ao = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3563, !noalias !3562, !noundef !8 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !3563, !noalias !3562, !nonnull !8, !noundef !8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload, i1 false), !noalias !3564
  br label %_RNvXs0_NvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB8_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringNtB5_10SpecPushTo12spec_push_to.exit.i

_RNvXs0_NvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB8_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringNtB5_10SpecPushTo12spec_push_to.exit.i: ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs7cXCwYFNYaI_8uu_split6number6NumberNtB5_12SpecToString14spec_to_stringBC_.exit, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i
  %i.as = phi ptr [ %i.aq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i ], [ %i.ag, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs7cXCwYFNYaI_8uu_split6number6NumberNtB5_12SpecToString14spec_to_stringBC_.exit ]
  %i.at = phi i64 [ %i.ao, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i ], [ %i.ac, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCs7cXCwYFNYaI_8uu_split6number6NumberNtB5_12SpecToString14spec_to_stringBC_.exit ]
  %i.au = add i64 %i.at, %.sroa.5.0.copyload      ; 6 uses
  store i64 %i.au, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3563, !noalias !3562
  %i.av = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.av, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit, label %bb.m

bb.m:                                             ; preds = %_RNvXs0_NvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB8_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringNtB5_10SpecPushTo12spec_push_to.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3565
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit: ; preds = %_RNvXs0_NvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB8_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringNtB5_10SpecPushTo12spec_push_to.exit.i, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !8, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !noundef !8 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3566)
  call void @llvm.experimental.noalias.scope.decl(metadata !3567)
  call void @llvm.experimental.noalias.scope.decl(metadata !3568)
  %i.ba = load i64, ptr %i.d, align 8, !range !13, !alias.scope !3569, !noalias !3570, !noundef !8
  %i.bb = sub i64 %i.ba, %i.au
  %i.bc = icmp ugt i64 %i.az, %i.bb
  br i1 %i.bc, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i5, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i3, !prof !9

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i5: ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.au, i64 noundef %i.az, i64 noundef 1, i64 noundef 1) #26, !noalias !3570
  %i.bd = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3571, !noalias !3570, !noundef !8 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %.pre = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !3571, !noalias !3570
  br label %bb.n

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i3: ; preds = %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit
  %i.bf = icmp sgt i64 %i.au, -1
  call void @llvm.assume(i1 %i.bf)
  %.not.i.i.i4 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i4, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECs7cXCwYFNYaI_8uu_split.exit, label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i3, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i5
  %i.bg = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i5 ], [ %i.as, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i3 ]
  %i.bh = phi i64 [ %i.bd, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.thread.i.i.i5 ], [ %i.au, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i3 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull readonly align 1 %i.ax, i64 %i.az, i1 false), !noalias !3571
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECs7cXCwYFNYaI_8uu_split.exit

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRNtB3_5OsStrECs7cXCwYFNYaI_8uu_split.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i3, %bb.n
  %i.bj = phi i64 [ %i.bh, %bb.n ], [ %i.au, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i3 ]
  %i.bk = add i64 %i.bj, %i.az
  store i64 %i.bk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3571, !noalias !3570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.o:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread16
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !14, !noundef !8 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !8
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !14, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrNtB6_5Debug3fmtCs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !8
  %i.d = tail call noundef zeroext i1 @_RNvXsM_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_5OsStrNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7cXCwYFNYaI_8uu_split8strategy13StrategyErrorNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !14, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXsb_NtCs7cXCwYFNYaI_8uu_split8strategyNtB5_13StrategyErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7cXCwYFNYaI_8uu_split8strategy15NumberTypeErrorNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !14, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXs8_NtCs7cXCwYFNYaI_8uu_split8strategyNtB5_15NumberTypeErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7cXCwYFNYaI_8uu_split9filenames11SuffixErrorNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !14, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXs8_NtCs7cXCwYFNYaI_8uu_split9filenamesNtB5_11SuffixErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  ret i1 %i.b
end_hunk_0
begin_hunk_1_@_RNvXs8_NtCs7cXCwYFNYaI_8uu_split9filenamesNtB5_11SuffixErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 31, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit

bb.al:                                            ; preds = %.loopexit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fd = load double, ptr %i.fc, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, double noundef %i.fd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ai

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.aj, %bb.ai, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.z, ptr %i.t, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.fe = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !nonnull !8, !align !14, !noundef !8
  %i.fh = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.fe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fg, ptr noundef nonnull @52, ptr noundef nonnull %i.t) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !3987)
  %.val.i101 = load i64, ptr %i.z, align 8, !range !13, !alias.scope !3987, !noundef !8 ; 2 uses
  %i.fi = icmp eq i64 %.val.i101, 0
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103, label %bb.am

bb.am:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i102 = load ptr, ptr %i.fj, align 8, !alias.scope !3987, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i102, i64 noundef %.val.i101, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3987
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.an

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103
  %.sroa.0.1.in = phi i1 [ %i.fh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit103 ], [ %i.fs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109 ], [ %i.id, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149 ]
  ret i1 %.sroa.0.1.in

.loopexit219:                                     ; preds = %.lr.ph.i67, %bb.x, %bb.w, %.lr.ph141.i77, %.preheader111.i84, %bb.ab, %bb.ac, %.lr.ph150.i92, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split.exit65, %bb.s, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5163.0.copyload165, i64 noundef %.sroa.8167.0.copyload169) #28
  %i.fk = load i8, ptr %i.p, align 8, !range !15, !noundef !8
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.aq, label %bb.ar

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit99: ; preds = %bb.y, %bb.z, %bb.ad, %bb.ae, %.preheader.i90, %.preheader114.i75
  %.sroa.15174.0 = phi i64 [ %i.eq, %bb.ae ], [ %i.dt, %bb.z ], [ %i.eh, %bb.ad ], [ 0, %.preheader.i90 ], [ 0, %.preheader114.i75 ], [ %i.dk, %bb.y ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, i64 noundef %.sroa.15174.0) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 37, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.fm = icmp eq i64 %.sroa.0161.0.copyload162, 0
  br i1 %i.fm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5163.0.copyload165, i64 noundef %.sroa.0161.0.copyload162, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3988
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106

bb.aq:                                            ; preds = %.loopexit219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0161.0.copyload162, ptr %i.o, align 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5163.0.copyload165, ptr %.sroa.5163.0..sroa_idx, align 8
  %.sroa.8167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.8167.0.copyload169, ptr %.sroa.8167.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 37, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106

bb.ar:                                            ; preds = %.loopexit219
  %i.fn = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5, double noundef %i.fo) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ao

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106: ; preds = %bb.ap, %bb.ao, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.s, ptr %i.m, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.fp = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !8, !align !14, !noundef !8
  %i.fs = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.fp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fr, ptr noundef nonnull @52, ptr noundef nonnull %i.m) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !3989)
  %.val.i107 = load i64, ptr %i.s, align 8, !range !13, !alias.scope !3989, !noundef !8 ; 2 uses
  %i.ft = icmp eq i64 %.val.i107, 0
  br i1 %i.ft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106
  %i.fu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i108 = load ptr, ptr %i.fu, align 8, !alias.scope !3989, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i108, i64 noundef %.val.i107, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3989
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit109: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit106, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.an

bb.at:                                            ; preds = %bb.af, %bb.ah
  %.sroa.4.0.ph = phi i64 [ 1, %bb.ah ], [ 0, %bb.af ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.ev) #29
  unreachable

bb.au:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr align 1 %i.eu, i64 %i.ev, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %cond = icmp eq i64 %i.ev, 1
  %i.fv = load i8, ptr %i.ex, align 1, !alias.scope !3990, !noalias !3991 ; 2 uses
  br i1 %cond, label %bb.av, label %thread-pre-split.i141

bb.av:                                            ; preds = %bb.au
  switch i8 %i.fv, label %bb.bc [
    i8 43, label %.loopexit226
    i8 45, label %.loopexit226
  ]

thread-pre-split.i141:                            ; preds = %bb.au
  switch i8 %i.fv, label %bb.bc [
    i8 43, label %bb.aw
    i8 45, label %bb.ax
  ]

bb.aw:                                            ; preds = %thread-pre-split.i141
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fx = add nsw i64 %i.ev, -1
  br label %bb.bc

bb.ax:                                            ; preds = %thread-pre-split.i141
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ex, i64 1 ; 2 uses
  %i.fz = add nsw i64 %i.ev, -1                   ; 2 uses
  %i.ga = icmp samesign ult i64 %i.ev, 17
  br i1 %i.ga, label %.lr.ph141.i121, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.ax, %bb.ba
  %.sroa.0.1136.i112 = phi ptr [ %i.gb, %bb.ba ], [ %i.fy, %bb.ax ] ; 2 uses
  %.sroa.26.1135.i113 = phi i64 [ %i.gc, %bb.ba ], [ %i.fz, %bb.ax ]
  %.sroa.084.0134.i114 = phi i64 [ %i.gn, %bb.ba ], [ 0, %bb.ax ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i112, i64 1
  %i.gc = add nsw i64 %.sroa.26.1135.i113, -1     ; 2 uses
  %i.gd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i114, i64 10) ; 2 uses
  %i.ge = extractvalue { i64, i1 } %i.gd, 0
  %i.gf = extractvalue { i64, i1 } %i.gd, 1
  br i1 %i.gf, label %.loopexit226, label %bb.ay, !prof !9

bb.ay:                                            ; preds = %.lr.ph.i111
  %i.gg = load i8, ptr %.sroa.0.1136.i112, align 1, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.gh = zext i8 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, -48                  ; 2 uses
  %i.gj = icmp ult i32 %i.gi, 10
  br i1 %i.gj, label %bb.az, label %.loopexit226

bb.az:                                            ; preds = %bb.ay
  %i.gk = zext nneg i32 %i.gi to i64
  %i.gl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ge, i64 %i.gk) ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  br i1 %i.gm, label %.loopexit226, label %bb.ba, !prof !9

bb.ba:                                            ; preds = %bb.az
  %i.gn = extractvalue { i64, i1 } %i.gl, 0       ; 2 uses
  %.not102.i116 = icmp eq i64 %i.gc, 0
  br i1 %.not102.i116, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph.i111

.lr.ph141.i121:                                   ; preds = %bb.ax, %bb.bb
  %.sroa.0.2140.i122 = phi ptr [ %i.gu, %bb.bb ], [ %i.fy, %bb.ax ] ; 2 uses
  %.sroa.26.2139.i123 = phi i64 [ %i.gt, %bb.bb ], [ %i.fz, %bb.ax ]
  %.sroa.084.2138.i124 = phi i64 [ %i.gw, %bb.bb ], [ 0, %bb.ax ]
  %i.go = load i8, ptr %.sroa.0.2140.i122, align 1, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.gp = zext i8 %i.go to i32
  %i.gq = add nsw i32 %i.gp, -48                  ; 2 uses
  %i.gr = icmp ult i32 %i.gq, 10
  br i1 %i.gr, label %bb.bb, label %.loopexit226

bb.bb:                                            ; preds = %.lr.ph141.i121
  %i.gs = mul i64 %.sroa.084.2138.i124, 10
  %i.gt = add nsw i64 %.sroa.26.2139.i123, -1     ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i122, i64 1
  %i.gv = zext nneg i32 %i.gq to i64
  %i.gw = sub i64 %i.gs, %i.gv                    ; 2 uses
  %.not103.i125 = icmp eq i64 %i.gt, 0
  br i1 %.not103.i125, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph141.i121

bb.bc:                                            ; preds = %bb.av, %bb.aw, %thread-pre-split.i141
  %.sroa.26.0.i126 = phi i64 [ %i.fx, %bb.aw ], [ %i.ev, %thread-pre-split.i141 ], [ %i.ev, %bb.av ] ; 4 uses
  %.sroa.0.0.i127 = phi ptr [ %i.fw, %bb.aw ], [ %i.ex, %thread-pre-split.i141 ], [ %i.ex, %bb.av ] ; 2 uses
  %i.gx = icmp samesign ult i64 %.sroa.26.0.i126, 16
  br i1 %i.gx, label %.preheader.i134, label %.preheader111.i128

.preheader.i134:                                  ; preds = %bb.bc
  %.not105146.i135 = icmp eq i64 %.sroa.26.0.i126, 0
  br i1 %.not105146.i135, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph150.i136

.preheader111.i128:                               ; preds = %bb.bc, %bb.bf
  %.sroa.0.3145.i129 = phi ptr [ %i.gy, %bb.bf ], [ %.sroa.0.0.i127, %bb.bc ] ; 2 uses
  %.sroa.26.3144.i130 = phi i64 [ %i.gz, %bb.bf ], [ %.sroa.26.0.i126, %bb.bc ]
  %.sroa.084.3143.i131 = phi i64 [ %i.hk, %bb.bf ], [ 0, %bb.bc ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i129, i64 1
  %i.gz = add nsw i64 %.sroa.26.3144.i130, -1     ; 2 uses
  %i.ha = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i131, i64 10) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 0
  %i.hc = extractvalue { i64, i1 } %i.ha, 1
  br i1 %i.hc, label %.loopexit226, label %bb.bd, !prof !9

bb.bd:                                            ; preds = %.preheader111.i128
  %i.hd = load i8, ptr %.sroa.0.3145.i129, align 1, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.he = zext i8 %i.hd to i32
  %i.hf = add nsw i32 %i.he, -48                  ; 2 uses
  %i.hg = icmp ult i32 %i.hf, 10
  br i1 %i.hg, label %bb.be, label %.loopexit226

bb.be:                                            ; preds = %bb.bd
  %i.hh = zext nneg i32 %i.hf to i64
  %i.hi = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hb, i64 %i.hh) ; 2 uses
  %i.hj = extractvalue { i64, i1 } %i.hi, 1
  br i1 %i.hj, label %.loopexit226, label %bb.bf, !prof !9

bb.bf:                                            ; preds = %bb.be
  %i.hk = extractvalue { i64, i1 } %i.hi, 0       ; 2 uses
  %.not104.i133 = icmp eq i64 %i.gz, 0
  br i1 %.not104.i133, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.preheader111.i128

.lr.ph150.i136:                                   ; preds = %.preheader.i134, %bb.bg
  %.sroa.0.4149.i137 = phi ptr [ %i.hr, %bb.bg ], [ %.sroa.0.0.i127, %.preheader.i134 ] ; 2 uses
  %.sroa.26.4148.i138 = phi i64 [ %i.hq, %bb.bg ], [ %.sroa.26.0.i126, %.preheader.i134 ]
  %.sroa.084.4147.i139 = phi i64 [ %i.ht, %bb.bg ], [ 0, %.preheader.i134 ]
  %i.hl = load i8, ptr %.sroa.0.4149.i137, align 1, !alias.scope !3990, !noalias !3991, !noundef !8
  %i.hm = zext i8 %i.hl to i32
  %i.hn = add nsw i32 %i.hm, -48                  ; 2 uses
  %i.ho = icmp ult i32 %i.hn, 10
  br i1 %i.ho, label %bb.bg, label %.loopexit226

bb.bg:                                            ; preds = %.lr.ph150.i136
  %i.hp = mul i64 %.sroa.084.4147.i139, 10
  %i.hq = add nsw i64 %.sroa.26.4148.i138, -1     ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i137, i64 1
  %i.hs = zext nneg i32 %i.hn to i64
  %i.ht = add i64 %i.hp, %i.hs                    ; 2 uses
  %.not105.i140 = icmp eq i64 %i.hq, 0
  br i1 %.not105.i140, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143, label %.lr.ph150.i136

.loopexit226:                                     ; preds = %.lr.ph.i111, %bb.az, %bb.ay, %.lr.ph141.i121, %.preheader111.i128, %bb.bd, %bb.be, %.lr.ph150.i136, %bb.av, %bb.av, %.thread
  %.ph = phi ptr [ %i.ex, %.preheader111.i128 ], [ %i.ex, %.lr.ph141.i121 ], [ %i.ex, %.lr.ph150.i136 ], [ %i.ex, %bb.av ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.ex, %bb.av ], [ %i.ex, %bb.be ], [ %i.ex, %bb.bd ], [ %i.ex, %bb.ay ], [ %i.ex, %bb.az ], [ %i.ex, %.lr.ph.i111 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.ev) #28
  %i.hu = load i8, ptr %i.j, align 8, !range !15, !noundef !8
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.bj, label %bb.bk

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143: ; preds = %bb.ba, %bb.bb, %bb.bf, %bb.bg, %.preheader.i134
  %.sroa.15181.0 = phi i64 [ %i.hk, %bb.bf ], [ %i.gw, %bb.bb ], [ %i.ht, %bb.bg ], [ 0, %.preheader.i134 ], [ %i.gn, %bb.ba ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 6, i64 noundef %.sroa.15181.0) #26
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143
  %i.hw = phi ptr [ %.ph, %bb.bk ], [ %i.ex, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit143 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hx = icmp eq i64 %i.ev, 0
  br i1 %i.hx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3992
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146

bb.bj:                                            ; preds = %.loopexit226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.ev, ptr %i.i, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.ph, ptr %.sroa.5176.0..sroa_idx, align 8
  %.sroa.8177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ev, ptr %.sroa.8177.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146

bb.bk:                                            ; preds = %.loopexit226
  %i.hy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hz = load double, ptr %i.hy, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 6, double noundef %i.hz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bh

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146: ; preds = %bb.bi, %bb.bh, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.l, ptr %i.g, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.ia = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !nonnull !8, !align !14, !noundef !8
  %i.id = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ia, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ic, ptr noundef nonnull @52, ptr noundef nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !3993)
  %.val.i147 = load i64, ptr %i.l, align 8, !range !13, !alias.scope !3993, !noundef !8 ; 2 uses
  %i.ie = icmp eq i64 %.val.i147, 0
  br i1 %i.ie, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146
  %i.if = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i148 = load ptr, ptr %i.if, align 8, !alias.scope !3993, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i148, i64 noundef %.val.i147, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !3993
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit149: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit146, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.an
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs7cXCwYFNYaI_8uu_split(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.d, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @165, ptr %i.e, align 8
  %i.f = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs7cXCwYFNYaI_8uu_split.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #25
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs6JMX4GRUq9U_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @169, i64 noundef 5) #26
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs6JMX4GRUq9U_4core6optionINtB5_6OptionNtNtCs7tKScEop1B6_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !20, !noundef !8
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 4) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3998)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !3998, !noundef !8 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %0, align 8, !range !13, !alias.scope !3999, !noundef !8
  %i.h = sub nsw i64 %i.g, %i.b
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %.sroa.0.0.i, i64 noundef 1, i64 noundef 1) #26
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i: ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3998, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b ; 10 uses
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs7cXCwYFNYaI_8uu_split.exit.i
  %i.m = icmp samesign ult i32 %1, 2048
  %i.n = trunc i32 %1 to i8
end_hunk_1
