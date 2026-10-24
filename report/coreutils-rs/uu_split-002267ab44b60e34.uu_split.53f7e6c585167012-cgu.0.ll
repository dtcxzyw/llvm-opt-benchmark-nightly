Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_split-002267ab44b60e34.uu_split.53f7e6c585167012-cgu.0?download=true
inline.NumInlined: 1204
inline.NumDeleted: 607
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNCNvMs_NtCs7cXCwYFNYaI_8uu_split8strategyNtB6_10NumberType4froms5_0B8_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1308
  %i.b = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #26, !noalias !1308 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #29
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9: ; preds = %bb.b, %bb.e
  %i.d = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i1.i = load i64, ptr %i.f, align 8, !range !13, !alias.scope !1309, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %.val.i1.i, 0
  br i1 %i.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i8.i = load ptr, ptr %i.h, align 8, !alias.scope !1309, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i, i64 noundef %.val.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1309
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCs7cXCwYFNYaI_8uu_split8strategyNtB6_10NumberType4froms6_0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp slt i64 %2, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1314
  %i.b = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #26, !noalias !1314 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #29
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9: ; preds = %bb.b, %bb.e
  %i.d = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i1.i = load i64, ptr %i.f, align 8, !range !13, !alias.scope !1315, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %.val.i1.i, 0
  br i1 %i.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i8.i = load ptr, ptr %i.h, align 8, !alias.scope !1315, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i, i64 noundef %.val.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1315
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtCs7cXCwYFNYaI_8uu_split8strategyNtB6_10NumberType4froms_0B8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp slt i64 %2, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1320
  %i.b = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #26, !noalias !1320 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %2) #29
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9: ; preds = %bb.b, %bb.e
  %i.d = phi ptr [ %i.b, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i1.i = load i64, ptr %i.f, align 8, !range !13, !alias.scope !1321, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %.val.i1.i, 0
  br i1 %i.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i8.i = load ptr, ptr %i.h, align 8, !alias.scope !1321, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i, i64 noundef %.val.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1321
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsh036I4OHgIr_6uucore8features6parser10parse_size14ParseSizeErrorECs7cXCwYFNYaI_8uu_split.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit.sink.split.i
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread9
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !8, !align !14, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !24, !invariant.load !8
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !8, !nonnull !8
  call void %i.j(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.h) #27, !inline_history !1322
  %i.k = load i128, ptr %i.a, align 16, !noundef !8
  %.not.i = icmp eq i128 %i.k, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not.i, label %_RINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #25
  unreachable

_RINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringECs7cXCwYFNYaI_8uu_split.exit: ; preds = %bb.a
  ret ptr %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs7cXCwYFNYaI_8uu_split11filter_args(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef captures(none) dereferenceable(1) %3, ptr noalias nofree noundef captures(none) dereferenceable(1) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) #26
  %i.i = load i64, ptr %i.d, align 8, !range !12, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs7cXCwYFNYaI_8uu_split.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 14 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !8 ; 18 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.o = load i8, ptr %3, align 1, !range !15, !noundef !8
  %i.p = load i8, ptr %4, align 1, !range !15, !noundef !8
  %i.q = or i8 %i.p, %i.o
  %brmerge.i = icmp ne i8 %i.q, 0
  %.not.i.i = icmp eq i64 %i.n, 0                 ; 2 uses
  %or.cond.i = or i1 %.not.i.i, %brmerge.i
  br i1 %or.cond.i, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i: ; preds = %bb.c
  %rhsc.i = load i8, ptr %i.l, align 1, !alias.scope !1377
  %i.r = icmp eq i8 %rhsc.i, 45
  br i1 %i.r, label %bb.d, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a

bb.d:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i
  %.not.i = icmp eq i64 %i.n, 1
  br i1 %.not.i, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread17, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !1377, !noundef !8
  switch i8 %i.t, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread17 [
    i8 45, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a
    i8 97, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a
    i8 98, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a
    i8 67, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a
    i8 108, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a
    i8 110, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a
    i8 116, label %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a
  ]

_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a: ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i, %bb.c
  %.not.i9.a = icmp slt i64 %i.n, 0
  br i1 %.not.i9.a, label %bb.ac, label %bb.e, !prof !19

bb.e:                                             ; preds = %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a
  br i1 %.not.i.i, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1378
  %i.u = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, 9) 1) #26, !noalias !1378 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.ac, label %bb.ad

_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread17: ; preds = %.lr.ph.i.i, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1382
  store i64 0, ptr %i.c, align 8, !noalias !1382
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.w, align 8, !noalias !1382
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store i64 0, ptr %i.x, align 8, !noalias !1382
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1383
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread17, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i
  %.pre13.i.i.i.i.i = phi i64 [ %i.bq, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ], [ 0, %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread17 ] ; 5 uses
  %i.z = phi ptr [ %.val.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ], [ %i.l, %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread17 ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  %i.ab = load i8, ptr %i.z, align 1, !alias.scope !1380, !noalias !1384, !noundef !8 ; 5 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.g, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = and i8 %i.ab, 31
  %i.ae = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.af = icmp ne ptr %i.aa, %i.y
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 3 uses
  %i.ah = load i8, ptr %i.aa, align 1, !alias.scope !1380, !noalias !1384, !noundef !8
  %i.ai = shl nuw nsw i32 %i.ae, 6
  %i.aj = and i8 %i.ah, 63
  %i.ak = zext nneg i8 %i.aj to i32               ; 2 uses
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = icmp samesign ugt i8 %i.ab, -33
  br i1 %i.am, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = zext nneg i8 %i.ab to i32
  br label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i
  %i.ao = icmp ne ptr %i.ag, %i.y
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 3 ; 3 uses
  %i.aq = load i8, ptr %i.ag, align 1, !alias.scope !1380, !noalias !1384, !noundef !8
  %i.ar = shl nuw nsw i32 %i.ak, 6
  %i.as = and i8 %i.aq, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at            ; 2 uses
  %i.av = shl nuw nsw i32 %i.ae, 12
  %i.aw = or disjoint i32 %i.au, %i.av
  %i.ax = icmp samesign ugt i8 %i.ab, -17
  br i1 %i.ax, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i, label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i
  %i.ay = icmp ne ptr %i.ap, %i.y
  call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ba = load i8, ptr %i.ap, align 1, !alias.scope !1380, !noalias !1384, !noundef !8
  %i.bb = shl nuw nsw i32 %i.ae, 18
  %i.bc = and i32 %i.bb, 1835008
  %i.bd = shl nuw nsw i32 %i.au, 6
  %i.be = and i8 %i.ba, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = or disjoint i32 %i.bg, %i.bc
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i, %bb.g, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i
  %.val.i.i = phi ptr [ %i.ap, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i ], [ %i.az, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i ], [ %i.aa, %bb.g ] ; 4 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.aw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i ], [ %i.bh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i ], [ %i.an, %bb.g ] ; 3 uses
  %i.bi = add nsw i32 %spec.select.i.ph.i.i.i.i.i, -48
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i32 %i.bi, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.i, label %split.i.i.i.i.i

split.i.i.i.i.i:                                  ; preds = %bb.h
  %i.bj = icmp ult i64 %.pre13.i.i.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.bj)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1385
  %i.bk = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 4) #26, !noalias !1385 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.k, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %i.c, align 8, !range !13, !alias.scope !1386, !noalias !1387, !noundef !8
  %i.bn = icmp eq i64 %.pre13.i.i.i.i.i, %i.bm
  br i1 %i.bn, label %bb.j, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVeccE8grow_oneCsb8JHtmRizrl_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28, !noalias !1387
  br label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.bo = load ptr, ptr %i.w, align 8, !alias.scope !1386, !noalias !1387, !nonnull !8, !noundef !8
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.pre13.i.i.i.i.i
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.bp, align 4, !noalias !1387
  %i.bq = add i64 %.pre13.i.i.i.i.i, 1            ; 3 uses
  store i64 %i.bq, ptr %i.x, align 8, !alias.scope !1386, !noalias !1387
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i, label %.lr.ph.i.i.i.i.i

bb.k:                                             ; preds = %split.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 4, i64 16) #29, !noalias !1383
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit.i.i: ; preds = %split.i.i.i.i.i
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.bk, align 4, !noalias !1383
  store i64 4, ptr %i.a, align 8, !noalias !1383
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1383
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1383
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %.not.i11.i.i.i13.i.i.i.i = icmp eq ptr %.val.i.i, %i.y
  br i1 %.not.i11.i.i.i13.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit.i.i
  %i.br = icmp ne i64 %.pre13.i.i.i.i.i, 0
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.sroa.0.1.i11 = phi i1 [ %spec.select30.i, %bb.q ], [ %i.br, %.lr.ph.i.i.i.i.i.i.preheader.i ]
  %i.bs = phi ptr [ %i.ez, %bb.q ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.preheader.i ]
  %i.bt = phi i64 [ %i.fb, %bb.q ], [ 1, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 6 uses
  %i.bu = phi ptr [ %i.eo, %bb.q ], [ %.val.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 6 uses
  %.sroa.0.1.fr.i = freeze i1 %.sroa.0.1.i11      ; 2 uses
  br i1 %.sroa.0.1.fr.i, label %.lr.ph.i.i.i.i.i.i.split.us.i, label %.lr.ph.i.i.i.i.i.i.split.i

.lr.ph.i.i.i.i.i.i.split.us.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 3 uses
  %i.bw = load i8, ptr %i.bu, align 1, !alias.scope !1380, !noalias !1390, !noundef !8 ; 5 uses
  %i.bx = icmp sgt i8 %i.bw, -1
  br i1 %i.bx, label %bb.l, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.us.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.us.i: ; preds = %.lr.ph.i.i.i.i.i.i.split.us.i
  %i.by = and i8 %i.bw, 31
  %i.bz = zext nneg i8 %i.by to i32               ; 3 uses
  %i.ca = icmp ne ptr %i.bv, %i.y
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 3 uses
  %i.cc = load i8, ptr %i.bv, align 1, !alias.scope !1380, !noalias !1390, !noundef !8
  %i.cd = shl nuw nsw i32 %i.bz, 6
  %i.ce = and i8 %i.cc, 63
  %i.cf = zext nneg i8 %i.ce to i32               ; 2 uses
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = icmp samesign ugt i8 %i.bw, -33
  br i1 %i.ch, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.us.i, label %split.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.us.i
  %i.ci = icmp ne ptr %i.cb, %i.y
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 3 ; 3 uses
  %i.ck = load i8, ptr %i.cb, align 1, !alias.scope !1380, !noalias !1390, !noundef !8
  %i.cl = shl nuw nsw i32 %i.cf, 6
  %i.cm = and i8 %i.ck, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn            ; 2 uses
  %i.cp = shl nuw nsw i32 %i.bz, 12
  %i.cq = or disjoint i32 %i.co, %i.cp
  %i.cr = icmp samesign ugt i8 %i.bw, -17
  br i1 %i.cr, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.us.i, label %split.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.us.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.us.i
  %i.cs = icmp ne ptr %i.cj, %i.y
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cu = load i8, ptr %i.cj, align 1, !alias.scope !1380, !noalias !1390, !noundef !8
  %i.cv = shl nuw nsw i32 %i.bz, 18
  %i.cw = and i32 %i.cv, 1835008
  %i.cx = shl nuw nsw i32 %i.co, 6
  %i.cy = and i8 %i.cu, 63
  %i.cz = zext nneg i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cx, %i.cz
  %i.db = or disjoint i32 %i.da, %i.cw
  br label %split.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.split.us.i
  %i.dc = zext nneg i8 %i.bw to i32
  br label %split.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.split.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i
  %i.dd = phi ptr [ %i.em, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 3 uses
  %i.df = load i8, ptr %i.dd, align 1, !alias.scope !1380, !noalias !1390, !noundef !8 ; 5 uses
  %i.dg = icmp sgt i8 %i.df, -1
  br i1 %i.dg, label %bb.m, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.split.i
  %i.dh = and i8 %i.df, 31
  %i.di = zext nneg i8 %i.dh to i32               ; 3 uses
  %i.dj = icmp ne ptr %i.de, %i.y
  call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 3 uses
  %i.dl = load i8, ptr %i.de, align 1, !alias.scope !1380, !noalias !1390, !noundef !8
  %i.dm = shl nuw nsw i32 %i.di, 6
  %i.dn = and i8 %i.dl, 63
  %i.do = zext nneg i8 %i.dn to i32               ; 2 uses
  %i.dp = or disjoint i32 %i.dm, %i.do
  %i.dq = icmp samesign ugt i8 %i.df, -33
  br i1 %i.dq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.i, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.split.i
  %i.dr = zext nneg i8 %i.df to i32
  br label %bb.n

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.i
  %i.ds = icmp ne ptr %i.dk, %i.y
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 3 ; 3 uses
  %i.du = load i8, ptr %i.dk, align 1, !alias.scope !1380, !noalias !1390, !noundef !8
  %i.dv = shl nuw nsw i32 %i.do, 6
  %i.dw = and i8 %i.du, 63
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.dv, %i.dx            ; 2 uses
  %i.dz = shl nuw nsw i32 %i.di, 12
  %i.ea = or disjoint i32 %i.dy, %i.dz
  %i.eb = icmp samesign ugt i8 %i.df, -17
  br i1 %i.eb, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.i, label %bb.n

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.i
  %i.ec = icmp ne ptr %i.dt, %i.y
  call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.ee = load i8, ptr %i.dt, align 1, !alias.scope !1380, !noalias !1390, !noundef !8
  %i.ef = shl nuw nsw i32 %i.di, 18
  %i.eg = and i32 %i.ef, 1835008
  %i.eh = shl nuw nsw i32 %i.dy, 6
  %i.ei = and i8 %i.ee, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej
  %i.el = or disjoint i32 %i.ek, %i.eg
  br label %bb.n

bb.n:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.i, %bb.m, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.i
  %i.em = phi ptr [ %i.dt, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.i ], [ %i.ed, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.i ], [ %i.dk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.i ], [ %i.de, %bb.m ] ; 3 uses
  %spec.select.i.ph.i.i.i.i.i.i.i = phi i32 [ %i.ea, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.i ], [ %i.el, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.i ], [ %i.dp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.i ], [ %i.dr, %bb.m ] ; 3 uses
  %i.en = add nsw i32 %spec.select.i.ph.i.i.i.i.i.i.i, -48
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.en, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %split.i.i.i.i.i.i.i

split.i.i.i.i.i.i.i:                              ; preds = %bb.n, %bb.l, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.us.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.us.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.us.i
  %i.eo = phi ptr [ %i.bv, %bb.l ], [ %i.cj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.us.i ], [ %i.ct, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.us.i ], [ %i.cb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.us.i ], [ %i.em, %bb.n ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i34.i = phi i32 [ %i.dc, %bb.l ], [ %i.cq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit14.i.i.i.i.i.i.i.i.us.i ], [ %i.db, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit16.i.i.i.i.i.i.i.i.us.i ], [ %i.cg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7cXCwYFNYaI_8uu_split.exit12.i.i.i.i.i.i.i.i.us.i ], [ %spec.select.i.ph.i.i.i.i.i.i.i, %bb.n ]
  %.pre.i.i.i.i.i.i.pre52.i = load i64, ptr %i.x, align 8, !noalias !1391 ; 2 uses
  %i.ep = icmp ult i64 %.pre.i.i.i.i.i.i.pre52.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp ne i64 %.pre.i.i.i.i.i.i.pre52.i, 0
  %spec.select30.i = or i1 %.sroa.0.1.fr.i, %i.eq
  %i.er = icmp samesign ult i64 %i.bt, 2305843009213693952
  call void @llvm.assume(i1 %i.er)
  %i.es = load i64, ptr %i.a, align 8, !range !13, !alias.scope !1392, !noalias !1383, !noundef !8
  %i.et = icmp eq i64 %i.bt, %i.es
  br i1 %i.et, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i.i, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.pre13.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !1391 ; 3 uses
  %i.eu = load i64, ptr %i.c, align 8, !range !13, !alias.scope !1393, !noalias !1391, !noundef !8
  %i.ev = icmp eq i64 %.pre13.i.i.i.i.i.i.i, %i.eu
  br i1 %i.ev, label %bb.p, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVeccE8grow_oneCsb8JHtmRizrl_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28, !noalias !1391
  br label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %i.ew = load ptr, ptr %i.w, align 8, !alias.scope !1393, !noalias !1391, !nonnull !8, !noundef !8
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.pre13.i.i.i.i.i.i.i
  store i32 %spec.select.i.ph.i.i.i.i.i.i.i, ptr %i.ex, align 4, !noalias !1391
  %i.ey = add i64 %.pre13.i.i.i.i.i.i.i, 1
  store i64 %i.ey, ptr %i.x, align 8, !alias.scope !1393, !noalias !1391
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.em, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.split.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i.i: ; preds = %split.i.i.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bt, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 4) #26, !noalias !1394
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1392, !noalias !1383
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i.i, %split.i.i.i.i.i.i.i
  %i.ez = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCs7cXCwYFNYaI_8uu_split.exit.i.i.i.i ], [ %i.bs, %split.i.i.i.i.i.i.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.bt
  store i32 %spec.select.i.ph.i.i.i.i.i.i34.i, ptr %i.fa, align 4, !noalias !1395
  %i.fb = add nuw nsw i64 %i.bt, 1                ; 3 uses
  store i64 %i.fb, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1392, !noalias !1383
  %.not.i11.i.i.i.i.i.i.i = icmp eq ptr %i.eo, %i.y
  br i1 %.not.i11.i.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i: ; preds = %bb.q, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit.i.i
  %.sroa.8.0.copyload.i = phi i64 [ %i.bt, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7cXCwYFNYaI_8uu_split.exit.i.i ], [ %i.fb, %bb.q ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !1396
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1396
  %.pr.pre.i = load i64, ptr %i.x, align 8, !noalias !1382
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i
  %i.fc = phi i64 [ %.pr.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i ], [ %i.bq, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i ], [ inttoptr (i64 4 to ptr), %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1l_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE11spec_extendB2z_.exit.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkcQNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0E0B1i_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1383
  %i.fd = icmp ult i64 %i.fc, 2305843009213693952
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %i.fc, 0
  br i1 %i.fe, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i
  %i.ff = load ptr, ptr %i.w, align 8, !noalias !1382, !nonnull !8, !noundef !8 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1382
  call fastcc void @_RINvXs6_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorRcE9from_iterINtNtNtBU_5slice4iter4ItercEECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.ff, ptr noundef %i.fg) #26, !noalias !1382
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  %i.fh = load i64, ptr %2, align 8, !range !20, !alias.scope !1398, !noundef !8 ; 3 uses
  %i.fi = icmp eq i64 %i.fh, -1
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.fj = icmp eq i64 %i.fh, 0
  br i1 %i.fj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i9.i = load ptr, ptr %i.fk, align 8, !alias.scope !1400, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i9.i, i64 noundef %i.fh, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1401
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i: ; preds = %bb.t, %bb.s, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1382
  %i.fl = icmp ugt i64 %.sroa.8.0.i, 1
  br i1 %i.fl, label %bb.x, label %bb.w

bb.u:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterNtNtNtB1D_3str4iter5CharsNCNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines0EE9from_iterB2R_.exit.i
  %.not.i.i12 = icmp slt i64 %i.n, 0
  br i1 %.not.i.i12, label %bb.ab, label %bb.v, !prof !1403

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1404
  %i.fm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, 9) 1) #26, !noalias !1404 ; 3 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.ab, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24.i

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i
  store i64 -1, ptr %0, align 8, !alias.scope !1379
  br label %bb.y

bb.x:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7cXCwYFNYaI_8uu_split.exit.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0.i, i64 %.sroa.8.0.i
  call fastcc void @_RINvXs6_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorRcE9from_iterINtNtNtBU_5slice4iter4ItercEECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %.sroa.5.0.i, ptr noundef %i.fo) #26, !noalias !1405
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24.i
  %i.fp = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.fp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = shl nuw i64 %.sroa.0.0.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1382
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i: ; preds = %bb.z, %bb.y
  %.val.i = load i64, ptr %i.c, align 8, !range !13, !noalias !1382, !noundef !8 ; 2 uses
  %i.fr = icmp eq i64 %.val.i, 0
  br i1 %i.fr, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines.exit, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i
  %.val6.i = load ptr, ptr %i.w, align 8, !noalias !1382, !nonnull !8, !noundef !8
  %i.fs = shl nuw i64 %.val.i, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1382
  br label %_RNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines.exit

bb.ab:                                            ; preds = %bb.v, %bb.u
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.v ], [ 0, %bb.u ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.n) #29, !noalias !1382
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24.i: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull readonly align 1 %i.l, i64 %i.n, i1 false), !noalias !1406
  store i64 %i.n, ptr %0, align 8, !alias.scope !1379
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fm, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !1379
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !1379
  br label %bb.y

_RNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeccEECs7cXCwYFNYaI_8uu_split.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1382
  br label %bb.ae

bb.ac:                                            ; preds = %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a, %bb.f
  %.sroa.4.0.ph = phi i64 [ 1, %bb.f ], [ 0, %_RNvCs7cXCwYFNYaI_8uu_split24should_extract_obs_lines.exit.thread.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.n) #29
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24: ; preds = %bb.e, %bb.ad
  %i.ft = phi ptr [ %i.u, %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.e ]
  store i64 %i.n, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ft, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24

bb.ae:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7cXCwYFNYaI_8uu_split.exit.thread24, %_RNvCs7cXCwYFNYaI_8uu_split24handle_extract_obs_lines.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  store i8 0, ptr %3, align 1, !alias.scope !1407
  %.not.i.i13 = icmp samesign ult i64 %i.n, 2
  br i1 %.not.i.i13, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i14

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i14: ; preds = %bb.ae
  %i.fu = load i16, ptr %i.l, align 1
  %i.fv = icmp ne i16 11565, %i.fu
  %i.fw = zext i1 %i.fv to i32
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 16 uses
  switch i64 %i.n, label %bb.ap [
    i64 7, label %bb.ah
    i64 12, label %bb.ai
    i64 19, label %bb.ak
    i64 8, label %bb.al
    i64 15, label %bb.an
    i64 11, label %bb.ao
  ]

bb.ag:                                            ; preds = %bb.ap, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7cXCwYFNYaI_8uu_split.exit.i14
  %cond.i = icmp eq i64 %i.n, 2
  br i1 %cond.i, label %bb.aq, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit

bb.ah:                                            ; preds = %bb.af
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = xor i32 %i.fz, 1702132066
  %i.gb = getelementptr i8, ptr %i.fy, i64 4
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = zext i8 %i.gc to i32
  %i.ge = xor i32 %i.gd, 115
  %i.gf = or i32 %i.ga, %i.ge
  %i.gg = icmp ne i32 %i.gf, 0
  %i.gh = zext i1 %i.gg to i32
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.ap, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.gj = load i64, ptr %i.fy, align 1
  %i.gk = xor i64 %i.gj, 8392847327696415084
  %i.gl = getelementptr i8, ptr %i.fy, i64 8
  %i.gm = load i16, ptr %i.gl, align 1
  %i.gn = zext i16 %i.gm to i64
  %i.go = xor i64 %i.gn, 29541
  %i.gp = or i64 %i.gk, %i.go
  %i.gq = icmp ne i64 %i.gp, 0
  %i.gr = zext i1 %i.gq to i32
  %i.gs = icmp eq i32 %i.gr, 0
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.gt = load i32, ptr %i.fy, align 1
  %i.gu = xor i32 %i.gt, 1701734764
  %i.gv = getelementptr i8, ptr %i.fy, i64 4
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i32
  %i.gy = xor i32 %i.gx, 115
  %i.gz = or i32 %i.gu, %i.gy
  %i.ha = icmp ne i32 %i.gz, 0
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %i.hb, 0
  br label %bb.ap

bb.ak:                                            ; preds = %bb.af
  %i.hd = load i128, ptr %i.fy, align 1
  %i.he = xor i128 %i.hd, 140100631948106995316529954322303444065
  %i.hf = getelementptr i8, ptr %i.fy, i64 16
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i128
  %i.hi = xor i128 %i.hh, 120
  %i.hj = or i128 %i.he, %i.hi
  %i.hk = icmp ne i128 %i.hj, 0
  %i.hl = zext i1 %i.hk to i32
  %i.hm = icmp eq i32 %i.hl, 0
  br label %bb.ap

bb.al:                                            ; preds = %bb.af
  %i.hn = load i32, ptr %i.fy, align 1
  %i.ho = xor i32 %i.hn, 1953261926
  %i.hp = getelementptr i8, ptr %i.fy, i64 4
  %i.hq = load i16, ptr %i.hp, align 1
  %i.hr = zext i16 %i.hq to i32
  %i.hs = xor i32 %i.hr, 29285
  %i.ht = or i32 %i.ho, %i.hs
  %i.hu = icmp ne i32 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hx = load i32, ptr %i.fy, align 1
  %i.hy = xor i32 %i.hx, 1651340654
  %i.hz = getelementptr i8, ptr %i.fy, i64 4
  %i.ia = load i16, ptr %i.hz, align 1
  %i.ib = zext i16 %i.ia to i32
  %i.ic = xor i32 %i.ib, 29285
  %i.id = or i32 %i.hy, %i.ic
  %i.ie = icmp ne i32 %i.id, 0
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br label %bb.ap

bb.an:                                            ; preds = %bb.af
  %i.ih = load i64, ptr %i.fy, align 1
  %i.ii = xor i64 %i.ih, 7795018924133086579
  %i.ij = getelementptr i8, ptr %i.fy, i64 5
  %i.ik = load i64, ptr %i.ij, align 1
  %i.il = xor i64 %i.ik, 7526754601088593272
  %i.im = or i64 %i.ii, %i.il
  %i.in = icmp ne i64 %i.im, 0
  %i.io = zext i1 %i.in to i32
  %i.ip = icmp eq i32 %i.io, 0
  br label %bb.ap

bb.ao:                                            ; preds = %bb.af
  %i.iq = load i64, ptr %i.fy, align 1
  %i.ir = xor i64 %i.iq, 8031151179397358963
  %i.is = getelementptr i8, ptr %i.fy, i64 8
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = zext i8 %i.it to i64
  %i.iv = xor i64 %i.iu, 114
  %i.iw = or i64 %i.ir, %i.iv
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = zext i1 %i.ix to i32
  %i.iz = icmp eq i32 %i.iy, 0
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.sroa.05.0.shrunk.i = phi i1 [ true, %bb.ah ], [ %i.hm, %bb.ak ], [ %i.ig, %bb.am ], [ true, %bb.al ], [ false, %bb.af ], [ %i.gs, %bb.ai ], [ %i.ip, %bb.an ], [ %i.iz, %bb.ao ], [ %i.hc, %bb.aj ]
  %.sroa.05.0.i = zext i1 %.sroa.05.0.shrunk.i to i8
  store i8 %.sroa.05.0.i, ptr %3, align 1, !alias.scope !1407
  br label %bb.ag

bb.aq:                                            ; preds = %bb.ag
  %i.ja = load i16, ptr %i.l, align 1
  %i.jb = icmp ne i16 %i.ja, 25133
  %i.jc = zext i1 %i.jb to i32
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.je = load i16, ptr %i.l, align 1
  %i.jf = icmp ne i16 %i.je, 17197
  %i.jg = zext i1 %i.jf to i32
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ji = load i16, ptr %i.l, align 1
  %i.jj = icmp ne i16 %i.ji, 27693
  %i.jk = zext i1 %i.jj to i32
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jm = load i16, ptr %i.l, align 1
  %i.jn = icmp ne i16 %i.jm, 28205
  %i.jo = zext i1 %i.jn to i32
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jq = load i16, ptr %i.l, align 1
  %i.jr = icmp ne i16 %i.jq, 24877
  %i.js = zext i1 %i.jr to i32
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ju = load i16, ptr %i.l, align 1
  %i.jv = icmp ne i16 %i.ju, 29741
  %i.jw = zext i1 %i.jv to i32
  %i.jx = icmp eq i32 %i.jw, 0
  %i.jy = zext i1 %i.jx to i8
  br label %_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit

_RNvCs7cXCwYFNYaI_8uu_split24handle_preceding_options.exit: ; preds = %bb.ae, %bb.ag, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av
  %.sroa.07.0.i = phi i8 [ 1, %bb.aq ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %bb.as ], [ 1, %bb.ar ], [ %i.jy, %bb.av ], [ 0, %bb.ag ], [ 0, %bb.ae ]
  store i8 %.sroa.07.0.i, ptr %4, align 1, !alias.scope !1408
end_hunk_0
