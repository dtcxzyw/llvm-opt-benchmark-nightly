Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.12?download=true
inline.NumInlined: 76
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeNtB6_5Debug3fmtBA_:bb.a
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4522
  store ptr @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !4522, !noalias !4512
    #dbg_value(ptr @51, !1155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4498)
    #dbg_value(ptr %i.b, !1155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4498)
  %i.m = load ptr, ptr %1, align 8, !dbg !4523, !alias.scope !4511, !noalias !4510, !nonnull !363, !noundef !363
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4523
  %i.o = load ptr, ptr %i.n, align 8, !dbg !4523, !alias.scope !4511, !noalias !4510, !nonnull !363, !align !972, !noundef !363
  %i.p = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @51, ptr noundef nonnull %i.b), !dbg !4524, !noalias !4511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4525, !noalias !4512
  br label %_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_9Utf8RangeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit, !dbg !4521

_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_9Utf8RangeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.1.in.i = phi i1 [ %i.p, %bb.c ], [ %i.l, %bb.b ]
  ret i1 %.sroa.0.1.in.i, !dbg !4526
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !4527 {
bb.a:
    #dbg_value(ptr %0, !4535, !DIExpression(), !4538)
    #dbg_value(ptr %1, !4536, !DIExpression(), !4538)
  %i.a = load ptr, ptr %0, align 8, !dbg !4545, !nonnull !363, !align !972, !noundef !363 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !4546
  %.val = load ptr, ptr %i.b, align 8, !dbg !4546, !nonnull !363, !noundef !363
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !4546
  %.val2 = load i64, ptr %i.c, align 8, !dbg !4546, !noundef !363
    #dbg_value(ptr poison, !4539, !DIExpression(), !4530)
    #dbg_value(ptr %1, !4543, !DIExpression(), !4530)
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !4547
  ret i1 %i.d, !dbg !4548
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_9Utf8RangeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !209 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !1137, !DIExpression(), !4549)
    #dbg_value(ptr %1, !1141, !DIExpression(), !4549)
    #dbg_value(ptr %1, !1154, !DIExpression(), !4551)
    #dbg_value(ptr %1, !1154, !DIExpression(), !4553)
  %i.c = load i8, ptr %0, align 1, !dbg !4556, !noundef !363
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !4557 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !dbg !4557, !noundef !363
  %i.f = icmp eq i8 %i.c, %i.e, !dbg !4556
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !4556

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !1147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4554)
    #dbg_value(ptr %i.d, !1147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4558
  store ptr %0, ptr %i.a, align 8, !dbg !4558
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4558
  store ptr @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !4558
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4558
  store ptr %i.d, ptr %i.g, align 8, !dbg !4558
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4558
  store ptr @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt, ptr %.sroa.422.0..sroa_idx, align 8, !dbg !4558
    #dbg_value(ptr @52, !1155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4553)
    #dbg_value(ptr %i.a, !1155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4553)
  %i.h = load ptr, ptr %1, align 8, !dbg !4559, !nonnull !363, !noundef !363
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4559
  %i.j = load ptr, ptr %i.i, align 8, !dbg !4559, !nonnull !363, !align !972, !noundef !363
  %i.k = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @52, ptr noundef nonnull %i.a), !dbg !4560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4561
  br label %bb.d, !dbg !4562

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !1143, !DIExpression(), !4555)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4563
  store ptr %0, ptr %i.b, align 8, !dbg !4563
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4563
  store ptr @_RNvXsg_NtNtCsj6eKBz9Db1c_4core3fmt3numhNtB7_8UpperHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !4563
    #dbg_value(ptr @51, !1155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4551)
    #dbg_value(ptr %i.b, !1155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4551)
  %i.l = load ptr, ptr %1, align 8, !dbg !4564, !nonnull !363, !noundef !363
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4564
  %i.n = load ptr, ptr %i.m, align 8, !dbg !4564, !nonnull !363, !align !972, !noundef !363
  %i.o = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @51, ptr noundef nonnull %i.b), !dbg !4565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4566
  br label %bb.d, !dbg !4562

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.o, %bb.c ], [ %i.k, %bb.b ]
  ret i1 %.sroa.0.1.in, !dbg !4567
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRangeNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !4570 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !4576, !DIExpression(), !4583)
    #dbg_value(ptr %1, !4577, !DIExpression(), !4583)
    #dbg_value(ptr %1, !4584, !DIExpression(), !4590)
    #dbg_value(ptr %0, !4579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4591)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !4592
    #dbg_value(ptr %i.b, !4579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4593
  store ptr %0, ptr %i.a, align 8, !dbg !4593
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4593
  store ptr @_RNvXsw_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !4593
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4593
  store ptr %i.b, ptr %i.c, align 8, !dbg !4593
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4593
  store ptr @_RNvXsw_NtNtCsj6eKBz9Db1c_4core3fmt3nummNtB7_8UpperHex3fmt, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !4593
    #dbg_value(ptr @53, !4585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4590)
    #dbg_value(ptr %i.a, !4585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4590)
  %i.d = load ptr, ptr %1, align 8, !dbg !4594, !nonnull !363, !noundef !363
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !4594
  %i.f = load ptr, ptr %i.e, align 8, !dbg !4594, !nonnull !363, !align !972, !noundef !363
  %i.g = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @53, ptr noundef nonnull %i.a), !dbg !4595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4596
  ret i1 %i.g, !dbg !4597
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8SequencesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([9 x i8]) align 1 captures(none) dereferenceable(9) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4615 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4 = alloca i8, align 1                   ; 6 uses
  %.sroa.7114 = alloca i8, align 1                ; 6 uses
  %.sroa.10115 = alloca i8, align 1               ; 6 uses
  %.sroa.13 = alloca i8, align 1                  ; 6 uses
  %.sroa.16116 = alloca i8, align 1               ; 5 uses
  %.sroa.18 = alloca i8, align 1                  ; 5 uses
  %.sroa.20117 = alloca i8, align 1               ; 4 uses
  %.sroa.21 = alloca i8, align 1                  ; 4 uses
    #dbg_value(ptr poison, !4881, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4624)
    #dbg_value(ptr poison, !4881, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4624)
    #dbg_value(ptr poison, !4881, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4624)
    #dbg_value(ptr poison, !4881, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4624)
    #dbg_value(ptr poison, !544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4642)
    #dbg_value(ptr poison, !544, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4642)
    #dbg_value(ptr poison, !544, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4642)
    #dbg_value(ptr poison, !544, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4642)
    #dbg_value(ptr poison, !4910, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4643)
    #dbg_value(ptr poison, !4910, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4643)
    #dbg_value(ptr poison, !4910, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4643)
    #dbg_value(ptr poison, !4910, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4643)
    #dbg_value(ptr poison, !4919, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4644)
    #dbg_value(ptr poison, !4919, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4644)
    #dbg_value(ptr poison, !4919, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4644)
    #dbg_value(ptr poison, !4919, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4644)
    #dbg_value(ptr poison, !4927, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4645)
    #dbg_value(ptr poison, !4927, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4645)
    #dbg_value(ptr poison, !4927, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4645)
    #dbg_value(ptr poison, !4927, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4645)
    #dbg_value(ptr poison, !4885, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4624)
    #dbg_value(ptr poison, !4885, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4624)
    #dbg_value(ptr poison, !4885, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4624)
    #dbg_value(ptr poison, !4885, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4624)
    #dbg_value(ptr poison, !544, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4649)
    #dbg_value(ptr poison, !544, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4649)
    #dbg_value(ptr poison, !544, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4649)
    #dbg_value(ptr poison, !544, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4649)
    #dbg_value(ptr poison, !4910, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4650)
    #dbg_value(ptr poison, !4910, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4650)
    #dbg_value(ptr poison, !4910, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4650)
    #dbg_value(ptr poison, !4910, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4650)
    #dbg_value(ptr poison, !4919, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4651)
    #dbg_value(ptr poison, !4919, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4651)
    #dbg_value(ptr poison, !4919, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4651)
    #dbg_value(ptr poison, !4919, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4651)
    #dbg_value(ptr poison, !4926, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4645)
    #dbg_value(ptr poison, !4926, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4645)
    #dbg_value(ptr poison, !4926, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4645)
    #dbg_value(ptr poison, !4926, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4645)
    #dbg_value(ptr poison, !4941, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4947)
    #dbg_value(ptr poison, !4941, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4947)
    #dbg_value(ptr poison, !4948, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4966)
    #dbg_value(ptr poison, !4948, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4966)
    #dbg_value(ptr %1, !4861, !DIExpression(), !4967)
    #dbg_value(i64 8, !4968, !DIExpression(), !4975)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
    #dbg_value(ptr %1, !4986, !DIExpression(), !4996)
    #dbg_value(ptr %1, !4992, !DIExpression(), !4997)
    #dbg_value(ptr %1, !4998, !DIExpression(), !5004)
    #dbg_value(ptr %1, !5005, !DIExpression(), !5009)
  %i.d = load i64, ptr %i.c, align 8, !dbg !5110, !noundef !363 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0, !dbg !5110
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !5110

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br label %bb.b, !dbg !5110

.loopexit:                                        ; preds = %bb.d
    #dbg_value(ptr %1, !4986, !DIExpression(), !4996)
    #dbg_value(ptr %1, !4992, !DIExpression(), !4997)
    #dbg_value(ptr %1, !4998, !DIExpression(), !5004)
    #dbg_value(ptr %1, !5005, !DIExpression(), !5009)
  %i.g = icmp eq i64 %i.ae, 0, !dbg !5110
  br i1 %i.g, label %._crit_edge, label %bb.b, !dbg !5110

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  store i8 -1, ptr %0, align 1, !dbg !5111
  br label %bb.c, !dbg !5112

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.h = phi i64 [ %i.d, %.lr.ph ], [ %i.ae, %.loopexit ] ; 3 uses
  %i.i = add nsw i64 %i.h, -1, !dbg !5113         ; 3 uses
  store i64 %i.i, ptr %i.c, align 8, !dbg !5113
  %i.j = load i64, ptr %1, align 8, !dbg !5114, !range !915, !noundef !363
  %i.k = icmp samesign ult i64 %i.i, %i.j, !dbg !5115
    #dbg_value(i1 true, !5011, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5017)
  tail call void @llvm.assume(i1 %i.k), !dbg !5116
  %i.l = load ptr, ptr %i.f, align 8, !dbg !5117, !nonnull !363, !noundef !363
    #dbg_value(ptr %i.l, !5022, !DIExpression(), !5030)
    #dbg_value(i64 %i.i, !5027, !DIExpression(), !5030)
  %i.m = icmp samesign ult i64 %i.h, 1152921504606846977, !dbg !5118
  tail call void @llvm.assume(i1 %i.m), !dbg !5119
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.h, !dbg !5120 ; 2 uses
  %2 = getelementptr i8, ptr %i.n, i64 -8, !dbg !5120
    #dbg_value(ptr %2, !5031, !DIExpression(), !5036)
  %i.o = load i32, ptr %2, align 4, !dbg !5121, !noundef !363 ; 23 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -4, !dbg !5121
  %i.q = load i32, ptr %i.p, align 4, !dbg !5121, !noundef !363
    #dbg_value(i32 %i.o, !4862, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5037)
    #dbg_value(i32 %i.q, !4862, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5037)
  %i.r = icmp ult i32 %i.o, 57344
  %i.s = icmp ult i32 %i.o, 128
  %i.t = icmp ult i32 %i.o, 2048
  %i.u = icmp ult i32 %i.o, 65536
  %i.v = and i32 %i.o, -64
  %i.w = and i32 %i.o, 63
  %i.x = icmp eq i32 %i.w, 0
  %i.y = and i32 %i.o, -4096
  %i.z = and i32 %i.o, 4095
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = and i32 %i.o, -262144
  %i.ac = and i32 %i.o, 262143
  %i.ad = icmp eq i32 %i.ac, 0
  br label %.backedge, !dbg !5122

bb.c:                                             ; preds = %bb.h, %_RNvMNtCs3roNzt6HBWW_12regex_syntax4utf8NtB2_12Utf8Sequence18from_encoded_range.exit, %._crit_edge
  ret void, !dbg !5112

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %i.ae = phi i64 [ %i.i, %bb.b ], [ %.be, %.backedge.backedge ] ; 14 uses
  %.sroa.7.0 = phi i32 [ %i.q, %bb.b ], [ %.sroa.7.0.be, %.backedge.backedge ], !dbg !5037 ; 25 uses
    #dbg_value(i32 %i.o, !4862, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5037)
    #dbg_value(i32 poison, !4862, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5037)
    #dbg_value(ptr undef, !4948, !DIExpression(), !4966)
  %i.af = icmp ugt i32 %.sroa.7.0, 55295
  %or.cond = and i1 %i.r, %i.af, !dbg !5123
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !5123

bb.d:                                             ; preds = %.backedge
    #dbg_value(ptr undef, !4941, !DIExpression(), !4947)
  %.not = icmp ugt i32 %i.o, %.sroa.7.0, !dbg !5124
  br i1 %.not, label %.loopexit, label %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit, !dbg !5125

bb.e:                                             ; preds = %.backedge
    #dbg_value(i32 %i.o, !4863, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5038)
    #dbg_value(i32 55295, !4863, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5038)
    #dbg_value(i32 57344, !4864, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5038)
    #dbg_value(i32 poison, !4864, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5038)
    #dbg_value(ptr %1, !875, !DIExpression(), !4676)
    #dbg_value(i32 57344, !879, !DIExpression(), !4676)
    #dbg_value(i32 poison, !880, !DIExpression(), !4676)
    #dbg_value(ptr %1, !882, !DIExpression(), !4678)
    #dbg_value(i32 57344, !886, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4678)
    #dbg_value(i32 poison, !886, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4678)
    #dbg_value(ptr %1, !888, !DIExpression(), !4680)
    #dbg_value(ptr %1, !898, !DIExpression(), !4682)
    #dbg_value(i32 57344, !893, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4680)
    #dbg_value(i32 poison, !893, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4680)
    #dbg_value(i64 8, !903, !DIExpression(), !4685)
    #dbg_value(i64 %i.ae, !894, !DIExpression(), !4686)
    #dbg_value(i64 %i.ae, !5039, !DIExpression(), !4689)
    #dbg_value(ptr %1, !913, !DIExpression(), !4690)
  %i.ag = load i64, ptr %1, align 8, !dbg !5126, !range !915, !alias.scope !5044, !noundef !363
  %i.ah = icmp eq i64 %i.ae, %i.ag, !dbg !5127
  br i1 %i.ah, label %bb.f, label %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit, !dbg !5127

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf811ScalarRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23, !dbg !5128
  br label %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit, !dbg !5129

_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit: ; preds = %bb.e, %bb.f
  %i.ai = load ptr, ptr %i.f, align 8, !dbg !5130, !alias.scope !5044, !nonnull !363, !noundef !363
    #dbg_value(ptr %i.ai, !5042, !DIExpression(), !4689)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ae, !dbg !5131 ; 2 uses
    #dbg_value(ptr %i.aj, !896, !DIExpression(), !4698)
    #dbg_value(ptr %i.aj, !929, !DIExpression(), !4700)
    #dbg_value(i32 57344, !932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4700)
    #dbg_value(i32 poison, !932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4700)
  store i32 57344, ptr %i.aj, align 4, !dbg !5132
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !5132
  store i32 %.sroa.7.0, ptr %i.ak, align 4, !dbg !5132
  %i.al = add i64 %i.ae, 1, !dbg !5133            ; 2 uses
  store i64 %i.al, ptr %i.c, align 8, !dbg !5133, !alias.scope !5044
    #dbg_value(i32 %i.o, !4862, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5037)
    #dbg_value(i32 55295, !4862, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5037)
  br label %.backedge.backedge, !dbg !5134

_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.1: ; preds = %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit
    #dbg_value(i64 2, !4865, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5046)
    #dbg_value(i64 2, !4866, !DIExpression(), !5047)
    #dbg_value(i64 2, !5048, !DIExpression(), !4703)
    #dbg_value(i32 2047, !4867, !DIExpression(), !5052)
  %i.am = icmp ugt i32 %.sroa.7.0, 2047
  %or.cond3.1 = and i1 %i.t, %i.am, !dbg !5135
  br i1 %or.cond3.1, label %bb.ai, label %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.2, !dbg !5135

_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.2: ; preds = %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.1
    #dbg_value(i64 3, !4865, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5046)
    #dbg_value(i64 3, !4866, !DIExpression(), !5047)
    #dbg_value(i64 3, !5048, !DIExpression(), !4703)
    #dbg_value(i32 65535, !4867, !DIExpression(), !5052)
  %i.an = icmp ugt i32 %.sroa.7.0, 65535
  %or.cond3.2 = and i1 %i.u, %i.an, !dbg !5135
  br i1 %or.cond3.2, label %bb.ai, label %bb.g, !dbg !5135

bb.g:                                             ; preds = %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.2
    #dbg_value(i64 poison, !4865, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5046)
    #dbg_value(ptr poison, !5053, !DIExpression(), !4712)
  %i.ao = icmp ult i32 %.sroa.7.0, 128
  br i1 %i.ao, label %bb.h, label %.preheader.preheader, !dbg !5136

.preheader.preheader:                             ; preds = %bb.g
    #dbg_value(i64 2, !4869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5068)
    #dbg_value(i64 1, !4870, !DIExpression(), !5069)
    #dbg_value(i32 -64, !4871, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !5071)
  %i.ap = and i32 %.sroa.7.0, -64, !dbg !5137     ; 2 uses
  %.not80 = icmp eq i32 %i.v, %i.ap, !dbg !5138
  br i1 %.not80, label %.preheader.1, label %bb.x, !dbg !5138

_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit: ; preds = %bb.d
    #dbg_value(i64 1, !4865, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5046)
    #dbg_value(i64 1, !4866, !DIExpression(), !5047)
    #dbg_value(i64 1, !5048, !DIExpression(), !4703)
    #dbg_value(i32 127, !4867, !DIExpression(), !5052)
  %i.aq = icmp ugt i32 %.sroa.7.0, 127
  %or.cond3 = and i1 %i.s, %i.aq, !dbg !5135
  br i1 %or.cond3, label %bb.ai, label %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.1, !dbg !5135

bb.h:                                             ; preds = %bb.g
  %i.ar = trunc i32 %i.o to i8, !dbg !5139
  %.sroa.054.2.extract.trunc = trunc nuw nsw i32 %.sroa.7.0 to i8, !dbg !5140
    #dbg_value(i8 %i.ar, !4868, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5072)
    #dbg_value(i8 %.sroa.054.2.extract.trunc, !4868, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5072)
  store i8 0, ptr %0, align 1, !dbg !5141
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !5141
  store i8 %i.ar, ptr %.sroa.418.0..sroa_idx, align 1, !dbg !5141
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !5141
  store i8 %.sroa.054.2.extract.trunc, ptr %.sroa.519.0..sroa_idx, align 1, !dbg !5141
  br label %bb.c, !dbg !5134

bb.i:                                             ; preds = %bb.ac
  %i.as = icmp ult i32 %i.o, 1114112, !dbg !5142
  tail call void @llvm.assume(i1 %i.as), !dbg !5142
    #dbg_value(i32 %i.o, !5081, !DIExpression(), !4725)
    #dbg_value(i32 %i.o, !4928, !DIExpression(), !4726)
    #dbg_value(i32 %i.o, !4918, !DIExpression(), !4651)
    #dbg_value(i32 poison, !5079, !DIExpression(), !4728)
    #dbg_value(i32 poison, !5075, !DIExpression(), !4730)
    #dbg_value(i32 poison, !5073, !DIExpression(), !4732)
  %i.at = xor i32 %.sroa.7.0, 55296, !dbg !5143
  %i.au = add i32 %i.at, -1114112, !dbg !5143
  %i.av = icmp ult i32 %i.au, -1112064, !dbg !5143
  br i1 %i.av, label %bb.t, label %bb.k, !dbg !5143, !prof !717

bb.j:                                             ; preds = %bb.ac
    #dbg_value(i32 -1, !5081, !DIExpression(), !4725)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19, !dbg !5144, !noalias !5090
  unreachable, !dbg !5144

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp ult i32 %.sroa.7.0, 1114112, !dbg !5145
  tail call void @llvm.assume(i1 %i.aw), !dbg !5145
    #dbg_value(i32 poison, !5081, !DIExpression(), !4737)
    #dbg_value(i32 poison, !4929, !DIExpression(), !4738)
    #dbg_value(i32 poison, !4918, !DIExpression(), !4644)
    #dbg_value(i32 %i.o, !4909, !DIExpression(), !4650)
    #dbg_value(i32 %i.o, !5091, !DIExpression(), !4741)
    #dbg_value(ptr undef, !4910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4650)
    #dbg_value(i64 4, !4910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4650)
  %i.ax = icmp samesign ult i32 %i.o, 128, !dbg !5146
  br i1 %i.ax, label %bb.m, label %bb.l, !dbg !5146

bb.l:                                             ; preds = %bb.k
  %i.ay = icmp samesign ult i32 %i.o, 2048, !dbg !5147
    #dbg_value(i64 poison, !4911, !DIExpression(), !4742)
    #dbg_value(i32 %i.o, !539, !DIExpression(), !4649)
    #dbg_value(ptr undef, !544, !DIExpression(), !4649)
    #dbg_value(i64 poison, !545, !DIExpression(), !4743)
  %i.az = trunc i32 %i.o to i8, !dbg !5148
  %i.ba = and i8 %i.az, 63, !dbg !5148
  %i.bb = or disjoint i8 %i.ba, -128, !dbg !5148  ; 3 uses
    #dbg_value(i8 %i.bb, !546, !DIExpression(), !4744)
  %i.bc = lshr i32 %i.o, 6, !dbg !5149
  %i.bd = trunc i32 %i.bc to i8, !dbg !5150       ; 2 uses
  %i.be = and i8 %i.bd, 63, !dbg !5150
  %i.bf = or disjoint i8 %i.be, -128, !dbg !5150  ; 2 uses
    #dbg_value(i8 %i.bf, !547, !DIExpression(), !4745)
  %i.bg = lshr i32 %i.o, 12, !dbg !5151
  %i.bh = trunc i32 %i.bg to i8, !dbg !5152       ; 2 uses
    #dbg_value(i8 %i.bh, !548, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_constu, 18446744073709551488, DW_OP_or, DW_OP_stack_value), !4746)
    #dbg_value(i32 %i.o, !549, !DIExpression(DW_OP_constu, 18, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 18446744073709551600, DW_OP_or, DW_OP_stack_value), !4747)
  br i1 %i.ay, label %bb.n, label %bb.o, !dbg !5153

bb.m:                                             ; preds = %bb.k
    #dbg_value(i64 1, !4911, !DIExpression(), !4742)
    #dbg_value(i32 %i.o, !539, !DIExpression(), !4649)
    #dbg_value(ptr undef, !544, !DIExpression(), !4649)
    #dbg_value(i64 1, !545, !DIExpression(), !4743)
  %i.bi = trunc nuw nsw i32 %i.o to i8, !dbg !5154
    #dbg_value(i8 %i.bi, !4873, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5095)
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit.i, !dbg !5155

bb.n:                                             ; preds = %bb.l
  %i.bj = or disjoint i8 %i.bd, -64, !dbg !5156
    #dbg_value(i8 %i.bj, !4873, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5095)
    #dbg_value(i8 %i.bb, !4873, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5095)
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit.i, !dbg !5157
end_hunk_0
