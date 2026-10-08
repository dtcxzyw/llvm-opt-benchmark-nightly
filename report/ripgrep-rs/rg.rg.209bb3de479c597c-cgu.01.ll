Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.01?download=true
inline.NumInlined: 1394
inline.NumDeleted: 608
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMNtNtB1a_5flags6hiargsNtB3A_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1a_6search0EEs2_0E0EB1a_:bb.a
  %i.fc = icmp ugt i64 %.sroa.11.1.lcssa.i65, %.sroa.16.0116248, !dbg !9464
  br i1 %i.fc, label %bb.ba, label %.outer, !dbg !9464, !prof !655

.outer.thread:                                    ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9425
  br label %.outer._crit_edge, !dbg !9324

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMNtNtB1i_5flags6hiargsNtB44_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1i_6search0EEs2_0E0E0EB1i_.exit
  %i.fd = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph123, i64 %.sroa.11.1.lcssa.i65, !dbg !9465 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9425
  %i.fe = icmp ult i64 %i.eo, 33, !dbg !9324
  br i1 %i.fe, label %.outer._crit_edge, label %.lr.ph, !dbg !9324

bb.ba:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackINtNtBa_6option6OptionNtNtCsG258MDvU3F_3std4time10SystemTimeEENCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMNtNtB1i_5flags6hiargsNtB44_6HiArgs4sortINtNtNtNtBa_4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB1i_6search0EEs2_0E0E0EB1i_.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i65, i64 noundef %.sroa.16.0116248, i64 noundef %.sroa.16.0116248, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #29, !dbg !9466
  unreachable, !dbg !9466
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvXNtNtCseNfSUspcXaQ_6anyhow7context3extNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorNtB3_8StdError11ext_contextReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9467 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCseNfSUspcXaQ_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @82)
          to label %bb.b unwind label %bb.g, !dbg !9483

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null, !dbg !9483
  br i1 %.not, label %bb.d, label %bb.c, !dbg !9484, !prof !703

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8, !dbg !9485
  br label %bb.f, !dbg !9485

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9486
  invoke void @_RNvMs2_NtCsG258MDvU3F_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g, !dbg !9486

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !9487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9488
  br label %bb.f, !dbg !9488

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9490, !noalias !9482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !dbg !9491
  store ptr %1, ptr %i.a, align 8, !dbg !9489, !noalias !9482
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9489
  store i64 %2, ptr %i.f, align 8, !dbg !9489, !noalias !9482
  %i.g = call fastcc noalias noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error9constructINtB3_12ContextErrorReNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c), !dbg !9492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9493, !noalias !9482
  ret ptr %i.g, !dbg !9494

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.thr_comm, !dbg !9495

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorECs2NzvFoTxuAy_2rg.exit unwind label %bb.h, !dbg !9496

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !9495
  unreachable, !dbg !9495
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvXNtNtCseNfSUspcXaQ_6anyhow7context3extNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorNtB3_8StdError11ext_contextReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9497 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = invoke noundef align 8 ptr @_RNvNtCseNfSUspcXaQ_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @84)
          to label %bb.b unwind label %bb.g, !dbg !9519

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null, !dbg !9519
  br i1 %.not, label %bb.d, label %bb.c, !dbg !9520, !prof !703

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.c, align 8, !dbg !9521
  br label %bb.f, !dbg !9521

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9522
  invoke void @_RNvMs2_NtCsG258MDvU3F_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.e unwind label %bb.g, !dbg !9522

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !9523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9524
  br label %bb.f, !dbg !9524

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9526, !noalias !9517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !9527
  store ptr %1, ptr %i.a, align 8, !dbg !9525, !noalias !9517
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9525
  store i64 %2, ptr %i.f, align 8, !dbg !9525, !noalias !9517
  %i.g = call fastcc noalias noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error9constructINtB3_12ContextErrorReNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c), !dbg !9528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9529, !noalias !9517
  ret ptr %i.g, !dbg !9530

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.thr_comm, !dbg !9531

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.h = load i64, ptr %0, align 8, !dbg !9532, !range !757, !alias.scope !9518, !noundef !640 ; 2 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775805, !dbg !9532
  call void @llvm.assume(i1 %i.i), !dbg !9532
  %i.j = icmp sgt i64 %i.h, -1, !dbg !9532
  br i1 %i.j, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorECs2NzvFoTxuAy_2rg.exit, !dbg !9532

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorECs2NzvFoTxuAy_2rg.exit unwind label %bb.i, !dbg !9533

bb.i:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !9531
  unreachable, !dbg !9531
}

; Function Attrs: cold nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RINvXs_NtNtCseNfSUspcXaQ_6anyhow7context3extNtB9_5ErrorNtB5_8StdError11ext_contextNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !9534 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9544, !noalias !9543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !9545
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !9545
  store ptr %0, ptr %i.c, align 8, !dbg !9545, !noalias !9543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9546, !noalias !9543
  store i64 -1, ptr %i.a, align 8, !dbg !9547, !noalias !9543
  %i.d = call fastcc noalias noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error9constructINtB3_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringBw_EECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.a), !dbg !9548, !noalias !9543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9549, !noalias !9543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9550, !noalias !9543
  ret ptr %i.d, !dbg !9551
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 !dbg !9552 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9577 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !9577, !alias.scope !9575, !noundef !640 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !dbg !9578, !range !738, !alias.scope !9575, !noundef !640
  %i.d = sub i64 %i.c, %i.b, !dbg !9579
  %i.e = icmp ugt i64 %2, %i.d, !dbg !9580
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i.i, !dbg !9581, !prof !655

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1), !dbg !9582
  %i.f = load i64, ptr %i.a, align 8, !dbg !9583, !alias.scope !9576, !noundef !640 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !9584
  tail call void @llvm.assume(i1 %i.g), !dbg !9585
  br label %bb.b, !dbg !9586

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1, !dbg !9584
  tail call void @llvm.assume(i1 %i.h), !dbg !9585
  %.not.i.i = icmp samesign eq i64 %2, 0, !dbg !9586
  br i1 %.not.i.i, label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2NzvFoTxuAy_2rg.exit, label %bb.b, !dbg !9586

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9587
  %i.k = load ptr, ptr %i.j, align 8, !dbg !9587, !alias.scope !9576, !nonnull !640, !noundef !640
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i, !dbg !9588
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !9589
  %.pre.i.i = load i64, ptr %i.a, align 8, !dbg !9590, !alias.scope !9576
  br label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2NzvFoTxuAy_2rg.exit, !dbg !9591

_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i.i ], !dbg !9590
  %i.n = add i64 %i.m, %2, !dbg !9590
  store i64 %i.n, ptr %i.a, align 8, !dbg !9590, !alias.scope !9576
  ret void, !dbg !9592
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9593 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9640 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !9640, !noundef !640 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !9641
  tail call void @llvm.assume(i1 %i.c), !dbg !9642
  %i.d = icmp ugt i64 %1, %i.b, !dbg !9643
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs2NzvFoTxuAy_2rg.exit, !dbg !9643

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b, !dbg !9644         ; 4 uses
  %i.f = load i64, ptr %0, align 8, !dbg !9645, !range !738, !alias.scope !9637, !noundef !640
  %i.g = sub nsw i64 %i.f, %i.b, !dbg !9646
  %i.h = icmp ugt i64 %i.e, %i.g, !dbg !9647
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i, !dbg !9648, !prof !655

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1), !dbg !9649
  %.pre.i = load i64, ptr %i.a, align 8, !dbg !9650, !alias.scope !9638
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i, !dbg !9649

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ], !dbg !9650 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9651
  %i.k = load ptr, ptr %i.j, align 8, !dbg !9651, !alias.scope !9638, !nonnull !640, !noundef !640 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1, !dbg !9652
  tail call void @llvm.assume(i1 %i.l), !dbg !9653
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i, !dbg !9654 ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1, !dbg !9655
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i, !dbg !9656

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i
  %i.o = add i64 %i.e, -1, !dbg !9656             ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false), !dbg !9657
  %i.p = add i64 %i.o, %i.i, !dbg !9656           ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p, !dbg !9656
  br label %._crit_edge.i, !dbg !9658

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1, !dbg !9659
  %i.q = add i64 %storemerge.lcssa27.i, 1, !dbg !9660
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs2NzvFoTxuAy_2rg.exit, !dbg !9661

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCs2NzvFoTxuAy_2rg.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ], !dbg !9662
  store i64 %storemerge, ptr %i.a, align 8, !dbg !9662
  ret void, !dbg !9663
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE6removeCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 !dbg !9664 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !9699
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9695), !dbg !9700
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9701 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !9701, !alias.scope !9695, !noalias !9696, !noundef !640 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326, !dbg !9702
  tail call void @llvm.assume(i1 %i.c), !dbg !9703
  %.not.i = icmp ult i64 %2, %i.b, !dbg !9704
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE10try_removeCs2NzvFoTxuAy_2rg.exit, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE10try_removeCs2NzvFoTxuAy_2rg.exit.thread, !dbg !9704

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE10try_removeCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9705
  %i.e = load ptr, ptr %i.d, align 8, !dbg !9705, !alias.scope !9695, !noalias !9696, !nonnull !640, !noundef !640
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2, !dbg !9706 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !dbg !9707, !noalias !9695 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !dbg !9707, !noalias !9695
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !9708
  %i.h = xor i64 %2, -1, !dbg !9709
  %i.i = add nsw i64 %i.b, %i.h, !dbg !9709
  %i.j = mul nuw nsw i64 %i.i, 24, !dbg !9710
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !dbg !9710, !noalias !9697
  %i.k = add nsw i64 %i.b, -1, !dbg !9711         ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !9712, !alias.scope !9695, !noalias !9696
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1, !dbg !9699
  br i1 %.not, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE10try_removeCs2NzvFoTxuAy_2rg.exit.thread, label %bb.b, !dbg !9713, !prof !876

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE10try_removeCs2NzvFoTxuAy_2rg.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8, !dbg !9714
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !9714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !9715
  ret void, !dbg !9716

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE10try_removeCs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE10try_removeCs2NzvFoTxuAy_2rg.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE10try_removeCs2NzvFoTxuAy_2rg.exit ], !dbg !9717 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326, !dbg !9718
  tail call void @llvm.assume(i1 %i.m), !dbg !9719
  tail call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #29, !dbg !9720
  unreachable, !dbg !9720
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE6removeCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 !dbg !9721 {
bb.a:
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !9756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9752), !dbg !9757
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9758 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !9758, !alias.scope !9752, !noalias !9753, !noundef !640 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326, !dbg !9759
  tail call void @llvm.assume(i1 %i.c), !dbg !9760
  %.not.i = icmp ult i64 %2, %i.b, !dbg !9761
  br i1 %.not.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE10try_removeCs2NzvFoTxuAy_2rg.exit, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE10try_removeCs2NzvFoTxuAy_2rg.exit.thread, !dbg !9761

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE10try_removeCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9762
  %i.e = load ptr, ptr %i.d, align 8, !dbg !9762, !alias.scope !9752, !noalias !9753, !nonnull !640, !noundef !640
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2, !dbg !9763 ; 4 uses
  %.sroa.0.0.copyload1 = load ptr, ptr %i.f, align 8, !dbg !9764, !noalias !9752 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !9764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false), !dbg !9764, !noalias !9752
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !9765
  %i.h = xor i64 %2, -1, !dbg !9766
  %i.i = add nsw i64 %i.b, %i.h, !dbg !9766
  %i.j = mul nuw nsw i64 %i.i, 24, !dbg !9767
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !dbg !9767, !noalias !9754
  %i.k = add nsw i64 %i.b, -1, !dbg !9768         ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !dbg !9769, !alias.scope !9752, !noalias !9753
  %.not = icmp eq ptr %.sroa.0.0.copyload1, null, !dbg !9756
  br i1 %.not, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE10try_removeCs2NzvFoTxuAy_2rg.exit.thread, label %bb.b, !dbg !9770, !prof !876

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE10try_removeCs2NzvFoTxuAy_2rg.exit
  store ptr %.sroa.0.0.copyload1, ptr %0, align 8, !dbg !9771
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !9771
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !9772
  ret void, !dbg !9773

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE10try_removeCs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.a, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE10try_removeCs2NzvFoTxuAy_2rg.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE10try_removeCs2NzvFoTxuAy_2rg.exit ], !dbg !9774 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 384307168202282326, !dbg !9775
  tail call void @llvm.assume(i1 %i.m), !dbg !9776
  tail call void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #29, !dbg !9777
  unreachable, !dbg !9777
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 !dbg !472 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9783
  %i.b = load i64, ptr %i.a, align 8, !dbg !9783, !noundef !640 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !dbg !9784, !range !738, !noundef !640
  %i.d = sub i64 %i.c, %i.b, !dbg !9785
  %i.e = icmp ugt i64 %1, %i.d, !dbg !9786
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !9787, !prof !655

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !9788

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1), !dbg !9789
  br label %bb.b, !dbg !9789
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtB2_10EquivalentBq_E10equivalentCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 !dbg !9790 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9810
  %.val1 = load i64, ptr %i.a, align 8, !dbg !9810, !noundef !640 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9810
  %.val3 = load i64, ptr %i.b, align 8, !dbg !9810, !noundef !640
  %i.c = icmp eq i64 %.val1, %.val3, !dbg !9811
  br i1 %i.c, label %bb.b, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec10partial_eqINtB4_3VechENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg.exit, !dbg !9811

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9810
  %.val2 = load ptr, ptr %i.d, align 8, !dbg !9810, !nonnull !640, !noundef !640
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9810
  %.val = load ptr, ptr %i.e, align 8, !dbg !9810, !nonnull !640, !noundef !640
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1), !dbg !9812
  %i.f = icmp eq i32 %bcmp.i.i, 0, !dbg !9812
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec10partial_eqINtB4_3VechENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg.exit, !dbg !9813

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec10partial_eqINtB4_3VechENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ], !dbg !9814
  ret i1 %.sroa.0.0.i, !dbg !9815
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvBY_5files0EE9from_iterBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(352) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9816 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [352 x i8], align 8               ; 6 uses
  %i.e = alloca [120 x i8], align 8               ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9879), !dbg !9887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9888, !noalias !9880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9889, !noalias !9880
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvCs2NzvFoTxuAy_2rg5files0ENtNtNtB9_6traits8iterator8Iterator4nextB1N_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1)
          to label %bb.c unwind label %bb.b, !dbg !9890, !noalias !9879

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !dbg !9889, !range !656, !noalias !9880, !noundef !640
  %.not.i = icmp eq i64 %i.i, -1, !dbg !9889
  br i1 %.not.i, label %bb.d, label %bb.f, !dbg !9891

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !dbg !9892, !alias.scope !9879, !noalias !9881
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9892
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !dbg !9892, !alias.scope !9879, !noalias !9881
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9892
  store i64 0, ptr %i.k, align 8, !dbg !9892, !alias.scope !9879, !noalias !9881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9893, !noalias !9880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9894, !noalias !9880
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsc0anycpf6TS_6ignore4walk4WalkECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1), !dbg !9895, !noalias !9879
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapNtNtCsc0anycpf6TS_6ignore4walk4WalkNCNvB15_5files0EE9from_iterB15_.exit, !dbg !9894

bb.e:                                             ; preds = %bb.g, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.e) #28
          to label %bb.s unwind label %bb.r, !dbg !9896, !noalias !9879

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9897, !noalias !9880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false), !dbg !9897, !noalias !9880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9898, !noalias !9880
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 120)
          to label %.noexc.i unwind label %bb.e, !dbg !9898, !noalias !9879

.noexc.i:                                         ; preds = %bb.f
  %i.m = load i64, ptr %i.c, align 8, !dbg !9898, !range !756, !noalias !9880, !noundef !640
  %i.n = trunc nuw i64 %i.m to i1, !dbg !9899
end_hunk_0
