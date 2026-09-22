Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.12?download=true
inline.NumInlined: 76
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeNtB6_5Debug3fmtBA_:bb.a
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
  %i.h = phi i64 [ %i.d, %.lr.ph ], [ %i.ae, %.loopexit ] ; 2 uses
  %i.i = add nsw i64 %i.h, -1, !dbg !5113         ; 4 uses
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
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i, !dbg !5120 ; 2 uses
    #dbg_value(ptr %i.n, !5031, !DIExpression(), !5036)
  %i.o = load i32, ptr %i.n, align 4, !dbg !5121, !noundef !363 ; 24 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !5121
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
    #dbg_value(i32 %.sroa.7.0, !4862, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5037)
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
    #dbg_value(i32 %.sroa.7.0, !4864, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5038)
    #dbg_value(ptr %1, !875, !DIExpression(), !4676)
    #dbg_value(i32 57344, !879, !DIExpression(), !4676)
    #dbg_value(i32 %.sroa.7.0, !880, !DIExpression(), !4676)
    #dbg_value(ptr %1, !882, !DIExpression(), !4678)
    #dbg_value(i32 57344, !886, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4678)
    #dbg_value(i32 %.sroa.7.0, !886, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4678)
    #dbg_value(ptr %1, !888, !DIExpression(), !4680)
    #dbg_value(ptr %1, !898, !DIExpression(), !4682)
    #dbg_value(i32 57344, !893, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4680)
    #dbg_value(i32 %.sroa.7.0, !893, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4680)
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
    #dbg_value(i32 %.sroa.7.0, !932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4700)
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
  %2 = trunc nuw i32 %i.o to i24, !dbg !5139
  %3 = trunc nuw nsw i32 %.sroa.7.0 to i24, !dbg !5139
  %4 = lshr i24 %2, 8, !dbg !5140
  %.sroa.054.2.extract.shift = add nuw nsw i24 %4, %3, !dbg !5140
  %i.ar = trunc nuw i24 %.sroa.054.2.extract.shift to i8, !dbg !5140
  %.sroa.054.2.extract.trunc = trunc i32 %i.o to i8, !dbg !5140
    #dbg_value(i8 %.sroa.054.2.extract.trunc, !4868, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5072)
    #dbg_value(i8 %i.ar, !4868, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5072)
  store i8 0, ptr %0, align 1, !dbg !5141
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !5141
  store i8 %.sroa.054.2.extract.trunc, ptr %.sroa.418.0..sroa_idx, align 1, !dbg !5141
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !5141
  store i8 %i.ar, ptr %.sroa.519.0..sroa_idx, align 1, !dbg !5141
  br label %bb.c, !dbg !5134

bb.i:                                             ; preds = %bb.ac
  %i.as = icmp ult i32 %i.o, 1114112, !dbg !5142
  tail call void @llvm.assume(i1 %i.as), !dbg !5142
    #dbg_value(i32 %i.o, !5081, !DIExpression(), !4725)
    #dbg_value(i32 %i.o, !4928, !DIExpression(), !4726)
    #dbg_value(i32 %i.o, !4918, !DIExpression(), !4651)
    #dbg_value(i32 %.sroa.7.0, !5079, !DIExpression(), !4728)
    #dbg_value(i32 %.sroa.7.0, !5075, !DIExpression(), !4730)
    #dbg_value(i32 %.sroa.7.0, !5073, !DIExpression(), !4732)
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
    #dbg_value(i32 %.sroa.7.0, !5081, !DIExpression(), !4737)
    #dbg_value(i32 %.sroa.7.0, !4929, !DIExpression(), !4738)
    #dbg_value(i32 %.sroa.7.0, !4918, !DIExpression(), !4644)
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

bb.o:                                             ; preds = %bb.l
  %i.bk = lshr i32 %i.o, 18, !dbg !5158
    #dbg_value(i32 %i.bk, !549, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 18446744073709551600, DW_OP_or, DW_OP_stack_value), !4747)
  %i.bl = trunc nuw nsw i32 %i.bk to i8, !dbg !5159
    #dbg_value(i8 %i.bl, !549, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_or, DW_OP_stack_value), !4747)
  %i.bm = or disjoint i8 %i.bl, -16, !dbg !5159
    #dbg_value(i8 %i.bm, !549, !DIExpression(), !4747)
  %i.bn = and i8 %i.bh, 63, !dbg !5152
    #dbg_value(i8 %i.bn, !548, !DIExpression(DW_OP_constu, 18446744073709551488, DW_OP_or, DW_OP_stack_value), !4746)
  %i.bo = or disjoint i8 %i.bn, -128, !dbg !5152
    #dbg_value(i8 %i.bo, !548, !DIExpression(), !4746)
  %i.bp = icmp samesign ult i32 %i.o, 65536, !dbg !5147
  br i1 %i.bp, label %bb.p, label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit.i, !dbg !5160

bb.p:                                             ; preds = %bb.o
  %i.bq = or disjoint i8 %i.bh, -32, !dbg !5161
    #dbg_value(i8 %i.bq, !4873, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5095)
    #dbg_value(i8 %i.bf, !4873, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5095)
    #dbg_value(i8 %i.bb, !4873, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !5095)
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit.i, !dbg !5157

_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.m, %bb.n, %bb.p, %bb.o
  %.sroa.20.0 = phi i8 [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.p ], [ %i.bb, %bb.o ], !dbg !5037
  %.sroa.16.0 = phi i8 [ 0, %bb.m ], [ 0, %bb.n ], [ %i.bb, %bb.p ], [ %i.bf, %bb.o ], !dbg !5037 ; 2 uses
  %.sroa.10.0 = phi i8 [ 0, %bb.m ], [ %i.bb, %bb.n ], [ %i.bf, %bb.p ], [ %i.bo, %bb.o ], !dbg !5037 ; 3 uses
  %.sroa.090.0 = phi i8 [ %i.bi, %bb.m ], [ %i.bj, %bb.n ], [ %i.bq, %bb.p ], [ %i.bm, %bb.o ], !dbg !5162 ; 3 uses
  %.sroa.0.09.i.i = phi i64 [ 1, %bb.m ], [ 2, %bb.n ], [ 3, %bb.p ], [ 4, %bb.o ] ; 3 uses
    #dbg_value(i8 %.sroa.090.0, !4873, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5095)
    #dbg_value(i8 %.sroa.10.0, !4873, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5095)
    #dbg_value(i8 %.sroa.16.0, !4873, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !5095)
    #dbg_value(i8 %.sroa.20.0, !4873, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !5095)
    #dbg_value(ptr poison, !4930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4748)
    #dbg_value(ptr poison, !5099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4751)
    #dbg_value(ptr poison, !5099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4753)
    #dbg_value(i64 %.sroa.0.09.i.i, !4930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4748)
    #dbg_value(i64 %.sroa.0.09.i.i, !5099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4751)
    #dbg_value(i64 %.sroa.0.09.i.i, !5099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4753)
    #dbg_value(i32 %.sroa.7.0, !4909, !DIExpression(), !4643)
    #dbg_value(i32 %.sroa.7.0, !5091, !DIExpression(), !4755)
    #dbg_value(ptr undef, !4910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4643)
    #dbg_value(i64 4, !4910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4643)
  %i.br = icmp samesign ult i32 %.sroa.7.0, 2048, !dbg !5163
    #dbg_value(i64 poison, !4911, !DIExpression(), !4756)
    #dbg_value(i32 %.sroa.7.0, !539, !DIExpression(), !4642)
    #dbg_value(ptr undef, !544, !DIExpression(), !4642)
    #dbg_value(i64 poison, !545, !DIExpression(), !4757)
  %i.bs = trunc i32 %.sroa.7.0 to i8, !dbg !5164
  %i.bt = and i8 %i.bs, 63, !dbg !5164
  %i.bu = or disjoint i8 %i.bt, -128, !dbg !5164  ; 3 uses
    #dbg_value(i8 %i.bu, !546, !DIExpression(), !4758)
  %i.bv = lshr i32 %.sroa.7.0, 6, !dbg !5165
  %i.bw = trunc i32 %i.bv to i8, !dbg !5166       ; 2 uses
  %i.bx = and i8 %i.bw, 63, !dbg !5166
  %i.by = or disjoint i8 %i.bx, -128, !dbg !5166  ; 2 uses
    #dbg_value(i8 %i.by, !547, !DIExpression(), !4759)
  %i.bz = lshr i32 %.sroa.7.0, 12, !dbg !5167
  %i.ca = trunc i32 %i.bz to i8, !dbg !5168       ; 2 uses
    #dbg_value(i8 %i.ca, !548, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_constu, 18446744073709551488, DW_OP_or, DW_OP_stack_value), !4760)
    #dbg_value(i32 %.sroa.7.0, !549, !DIExpression(DW_OP_constu, 18, DW_OP_shr, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 18446744073709551600, DW_OP_or, DW_OP_stack_value), !4761)
  br i1 %i.br, label %bb.q, label %bb.r, !dbg !5169

bb.q:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit.i
  %i.cb = or disjoint i8 %i.bw, -64, !dbg !5170
    #dbg_value(i8 %i.cb, !4874, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5101)
    #dbg_value(i8 %i.bu, !4874, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5101)
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit28.i, !dbg !5171

bb.r:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit.i
  %i.cc = lshr i32 %.sroa.7.0, 18, !dbg !5172
    #dbg_value(i32 %i.cc, !549, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 18446744073709551600, DW_OP_or, DW_OP_stack_value), !4761)
  %i.cd = trunc nuw nsw i32 %i.cc to i8, !dbg !5173
    #dbg_value(i8 %i.cd, !549, !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_or, DW_OP_stack_value), !4761)
  %i.ce = or disjoint i8 %i.cd, -16, !dbg !5173
    #dbg_value(i8 %i.ce, !549, !DIExpression(), !4761)
  %i.cf = and i8 %i.ca, 63, !dbg !5168
    #dbg_value(i8 %i.cf, !548, !DIExpression(DW_OP_constu, 18446744073709551488, DW_OP_or, DW_OP_stack_value), !4760)
  %i.cg = or disjoint i8 %i.cf, -128, !dbg !5168
    #dbg_value(i8 %i.cg, !548, !DIExpression(), !4760)
  %i.ch = icmp samesign ult i32 %.sroa.7.0, 65536, !dbg !5163
  br i1 %i.ch, label %bb.s, label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit28.i, !dbg !5174

bb.s:                                             ; preds = %bb.r
  %i.ci = or disjoint i8 %i.ca, -32, !dbg !5175
    #dbg_value(i8 %i.ci, !4874, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5101)
    #dbg_value(i8 %i.by, !4874, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5101)
    #dbg_value(i8 %i.bu, !4874, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !5101)
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit28.i, !dbg !5171

_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit28.i: ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.20104.0 = phi i8 [ %i.bu, %bb.r ], [ 0, %bb.q ], [ 0, %bb.s ], !dbg !5095
  %.sroa.16102.0 = phi i8 [ %i.by, %bb.r ], [ 0, %bb.q ], [ %i.bu, %bb.s ], !dbg !5095 ; 2 uses
  %.sroa.1099.0 = phi i8 [ %i.cg, %bb.r ], [ %i.bu, %bb.q ], [ %i.by, %bb.s ], !dbg !5095 ; 3 uses
  %.sroa.096.0 = phi i8 [ %i.ce, %bb.r ], [ %i.cb, %bb.q ], [ %i.ci, %bb.s ], !dbg !5176 ; 3 uses
  %.sroa.0.09.i27.i = phi i64 [ 4, %bb.r ], [ 2, %bb.q ], [ 3, %bb.s ] ; 2 uses
    #dbg_value(i8 %.sroa.096.0, !4874, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5101)
    #dbg_value(i8 %.sroa.1099.0, !4874, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5101)
    #dbg_value(i8 %.sroa.16102.0, !4874, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !5101)
    #dbg_value(i8 %.sroa.20104.0, !4874, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !5101)
    #dbg_value(ptr poison, !4931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4762)
    #dbg_value(ptr poison, !5099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4764)
    #dbg_value(i64 %.sroa.0.09.i27.i, !4931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4762)
    #dbg_value(i64 %.sroa.0.09.i27.i, !5099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4764)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5177, !noalias !5090
  store i64 %.sroa.0.09.i.i, ptr %i.b, align 8, !dbg !5178, !noalias !5090
    #dbg_value(ptr %i.b, !4933, !DIExpression(), !4765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5179, !noalias !5090
  store i64 %.sroa.0.09.i27.i, ptr %i.a, align 8, !dbg !5180, !noalias !5090
    #dbg_value(ptr %i.a, !4934, !DIExpression(), !4765)
  %i.cj = icmp eq i64 %.sroa.0.09.i.i, %.sroa.0.09.i27.i, !dbg !5181
  br i1 %i.cj, label %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit, label %bb.u, !dbg !5181, !prof !456

bb.t:                                             ; preds = %bb.i
    #dbg_value(i32 -1, !5081, !DIExpression(), !4737)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19, !dbg !5182, !noalias !5090
  unreachable, !dbg !5182

bb.u:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit28.i
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !dbg !5183, !noalias !5090
  unreachable, !dbg !5183

_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4char7methods15encode_utf8_raw.exit28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5184, !noalias !5090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5184, !noalias !5090
    #dbg_value(i64 %.sroa.0.09.i.i, !4875, !DIExpression(), !5102)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !5185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7114), !dbg !5185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10115), !dbg !5185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13), !dbg !5185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16116), !dbg !5185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18), !dbg !5185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20117), !dbg !5185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21), !dbg !5185
    #dbg_value(ptr undef, !4885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4624)
    #dbg_value(i64 %.sroa.0.09.i.i, !4885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4624)
    #dbg_value(ptr undef, !4881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4624)
    #dbg_value(i64 %.sroa.0.09.i.i, !4881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4624)
  switch i64 %.sroa.0.09.i.i, label %default.unreachable [
    i64 2, label %_RNvMNtCs3roNzt6HBWW_12regex_syntax4utf8NtB2_12Utf8Sequence18from_encoded_range.exit
    i64 3, label %bb.v
    i64 4, label %bb.w
  ], !dbg !5186, !prof !5103

default.unreachable:                              ; preds = %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit
  unreachable

bb.v:                                             ; preds = %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit
  store i8 %.sroa.090.0, ptr %.sroa.4, align 1, !dbg !5187, !alias.scope !5104, !noalias !5105
  store i8 %.sroa.096.0, ptr %.sroa.7114, align 1, !dbg !5187, !alias.scope !5104, !noalias !5105
  br label %_RNvMNtCs3roNzt6HBWW_12regex_syntax4utf8NtB2_12Utf8Sequence18from_encoded_range.exit, !dbg !5188

bb.w:                                             ; preds = %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit
  store i8 %.sroa.090.0, ptr %.sroa.4, align 1, !dbg !5189, !alias.scope !5104, !noalias !5105
  store i8 %.sroa.096.0, ptr %.sroa.7114, align 1, !dbg !5189, !alias.scope !5104, !noalias !5105
  store i8 %.sroa.10.0, ptr %.sroa.10115, align 1, !dbg !5189, !alias.scope !5104, !noalias !5105
  store i8 %.sroa.1099.0, ptr %.sroa.13, align 1, !dbg !5189, !alias.scope !5104, !noalias !5105
  br label %_RNvMNtCs3roNzt6HBWW_12regex_syntax4utf8NtB2_12Utf8Sequence18from_encoded_range.exit, !dbg !5190

_RNvMNtCs3roNzt6HBWW_12regex_syntax4utf8NtB2_12Utf8Sequence18from_encoded_range.exit: ; preds = %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit, %bb.v, %bb.w
  %.sink56.i.sroa.phi = phi ptr [ %.sroa.16116, %bb.w ], [ %.sroa.10115, %bb.v ], [ %.sroa.4, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  %.sink55.i = phi i8 [ %.sroa.16.0, %bb.w ], [ %.sroa.10.0, %bb.v ], [ %.sroa.090.0, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  %.sink54.i.sroa.phi = phi ptr [ %.sroa.18, %bb.w ], [ %.sroa.13, %bb.v ], [ %.sroa.7114, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  %.sink53.i = phi i8 [ %.sroa.16102.0, %bb.w ], [ %.sroa.1099.0, %bb.v ], [ %.sroa.096.0, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  %.sink52.i.sroa.phi = phi ptr [ %.sroa.20117, %bb.w ], [ %.sroa.16116, %bb.v ], [ %.sroa.10115, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  %.sink51.i = phi i8 [ %.sroa.20.0, %bb.w ], [ %.sroa.16.0, %bb.v ], [ %.sroa.10.0, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  %.sink50.i.sroa.phi = phi ptr [ %.sroa.21, %bb.w ], [ %.sroa.18, %bb.v ], [ %.sroa.13, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  %.sink49.i = phi i8 [ %.sroa.20104.0, %bb.w ], [ %.sroa.16102.0, %bb.v ], [ %.sroa.1099.0, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  %.sink.i = phi i8 [ 3, %bb.w ], [ 2, %bb.v ], [ 1, %_RNvMs7_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_11ScalarRange6encode.exit ]
  store i8 %.sink55.i, ptr %.sink56.i.sroa.phi, align 1, !dbg !5191, !alias.scope !5104, !noalias !5105
  store i8 %.sink53.i, ptr %.sink54.i.sroa.phi, align 1, !dbg !5191, !alias.scope !5104, !noalias !5105
  store i8 %.sink51.i, ptr %.sink52.i.sroa.phi, align 1, !dbg !5191, !alias.scope !5104, !noalias !5105
  store i8 %.sink49.i, ptr %.sink50.i.sroa.phi, align 1, !dbg !5191, !alias.scope !5104, !noalias !5105
  store i8 %.sink.i, ptr %0, align 1, !dbg !5192
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !5192
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload = load i8, ptr %.sroa.4, align 1, !dbg !5192
  store i8 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !5192
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !5192
  %.sroa.7114.0..sroa.7114.0..sroa.7114.0..sroa.7114.0.copyload = load i8, ptr %.sroa.7114, align 1, !dbg !5192
  store i8 %.sroa.7114.0..sroa.7114.0..sroa.7114.0..sroa.7114.0.copyload, ptr %.sroa.7114.0..sroa_idx, align 1, !dbg !5192
  %.sroa.10115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3, !dbg !5192
  %.sroa.10115.0..sroa.10115.0..sroa.10115.0..sroa.10115.0.copyload = load i8, ptr %.sroa.10115, align 1, !dbg !5192
  store i8 %.sroa.10115.0..sroa.10115.0..sroa.10115.0..sroa.10115.0.copyload, ptr %.sroa.10115.0..sroa_idx, align 1, !dbg !5192
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !5192
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0.copyload = load i8, ptr %.sroa.13, align 1, !dbg !5192
  store i8 %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx, align 1, !dbg !5192
  %.sroa.16116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5, !dbg !5192
  %.sroa.16116.0..sroa.16116.0..sroa.16116.0..sroa.16116.0.copyload = load i8, ptr %.sroa.16116, align 1, !dbg !5192
  store i8 %.sroa.16116.0..sroa.16116.0..sroa.16116.0..sroa.16116.0.copyload, ptr %.sroa.16116.0..sroa_idx, align 1, !dbg !5192
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6, !dbg !5192
  %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload = load i8, ptr %.sroa.18, align 1, !dbg !5192
  store i8 %.sroa.18.0..sroa.18.0..sroa.18.0..sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx, align 1, !dbg !5192
  %.sroa.20117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7, !dbg !5192
  %.sroa.20117.0..sroa.20117.0..sroa.20117.0..sroa.20117.0.copyload = load i8, ptr %.sroa.20117, align 1, !dbg !5192
  store i8 %.sroa.20117.0..sroa.20117.0..sroa.20117.0..sroa.20117.0.copyload, ptr %.sroa.20117.0..sroa_idx, align 1, !dbg !5192
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5192
  %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload = load i8, ptr %.sroa.21, align 1, !dbg !5192
  store i8 %.sroa.21.0..sroa.21.0..sroa.21.0..sroa.21.0.copyload, ptr %.sroa.21.0..sroa_idx, align 1, !dbg !5192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7114), !dbg !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10115), !dbg !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16116), !dbg !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18), !dbg !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20117), !dbg !5193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21), !dbg !5193
  br label %bb.c, !dbg !5134

bb.x:                                             ; preds = %.preheader.preheader
    #dbg_value(i32 63, !4871, !DIExpression(), !5071)
  br i1 %i.x, label %bb.ad, label %bb.ae, !dbg !5194

.preheader.1:                                     ; preds = %bb.ad, %.preheader.preheader
    #dbg_value(i64 3, !4869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5068)
    #dbg_value(i64 2, !4870, !DIExpression(), !5069)
    #dbg_value(i32 -4096, !4871, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !5071)
  %i.ck = and i32 %.sroa.7.0, -4096, !dbg !5137   ; 2 uses
  %.not80.1 = icmp eq i32 %i.y, %i.ck, !dbg !5138
  br i1 %.not80.1, label %.preheader.2, label %bb.y, !dbg !5138

bb.y:                                             ; preds = %.preheader.1
    #dbg_value(i32 4095, !4871, !DIExpression(), !5071)
  br i1 %i.aa, label %bb.z, label %bb.ae, !dbg !5194

bb.z:                                             ; preds = %bb.y
  %i.cl = and i32 %.sroa.7.0, 4095, !dbg !5195
  %.not81.1 = icmp eq i32 %i.cl, 4095, !dbg !5195
  br i1 %.not81.1, label %.preheader.2, label %bb.ag, !dbg !5195

.preheader.2:                                     ; preds = %bb.z, %.preheader.1
    #dbg_value(i64 4, !4869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5068)
    #dbg_value(i64 3, !4870, !DIExpression(), !5069)
    #dbg_value(i32 -262144, !4871, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !5071)
  %i.cm = and i32 %.sroa.7.0, -262144, !dbg !5137 ; 2 uses
  %.not80.2 = icmp eq i32 %i.ab, %i.cm, !dbg !5138
  br i1 %.not80.2, label %bb.ac, label %bb.aa, !dbg !5138

bb.aa:                                            ; preds = %.preheader.2
    #dbg_value(i32 262143, !4871, !DIExpression(), !5071)
  br i1 %i.ad, label %bb.ab, label %bb.ae, !dbg !5194

bb.ab:                                            ; preds = %bb.aa
  %i.cn = and i32 %.sroa.7.0, 262143, !dbg !5195
  %.not81.2 = icmp eq i32 %i.cn, 262143, !dbg !5195
  br i1 %.not81.2, label %bb.ac, label %bb.ag, !dbg !5195

bb.ac:                                            ; preds = %bb.ab, %.preheader.2
    #dbg_value(i64 4, !4869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5068)
    #dbg_value(i8 0, !4873, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5095)
    #dbg_value(i8 0, !4873, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5095)
    #dbg_value(i8 0, !4873, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !5095)
    #dbg_value(i8 0, !4873, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !5095)
    #dbg_value(i8 0, !4874, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5101)
    #dbg_value(i8 0, !4874, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5101)
    #dbg_value(i8 0, !4874, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !5101)
    #dbg_value(i8 0, !4874, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !5101)
    #dbg_value(ptr poison, !4925, !DIExpression(), !4645)
    #dbg_value(ptr undef, !4926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4645)
    #dbg_value(ptr undef, !4919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4651)
    #dbg_value(i64 4, !4926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4645)
    #dbg_value(i64 4, !4919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4651)
    #dbg_value(ptr undef, !4927, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4645)
    #dbg_value(ptr undef, !4919, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4644)
    #dbg_value(i64 4, !4927, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4645)
    #dbg_value(i64 4, !4919, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4644)
    #dbg_value(i8 0, !4936, !DIExpression(), !4770)
    #dbg_value(i32 %i.o, !5079, !DIExpression(), !4771)
    #dbg_value(i32 %i.o, !5075, !DIExpression(), !4772)
    #dbg_value(i32 %i.o, !5073, !DIExpression(), !4773)
  %i.co = xor i32 %i.o, 55296, !dbg !5196
  %i.cp = add i32 %i.co, -1114112, !dbg !5196
  %i.cq = icmp ult i32 %i.cp, -1112064, !dbg !5196
  br i1 %i.cq, label %bb.j, label %bb.i, !dbg !5196, !prof !717

bb.ad:                                            ; preds = %bb.x
  %i.cr = and i32 %.sroa.7.0, 63, !dbg !5195
  %.not81 = icmp eq i32 %i.cr, 63, !dbg !5195
  br i1 %.not81, label %.preheader.1, label %bb.ag, !dbg !5195

bb.ae:                                            ; preds = %bb.aa, %bb.y, %bb.x
  %.lcssa = phi i32 [ 63, %bb.x ], [ 4095, %bb.y ], [ 262143, %bb.aa ], !dbg !5197
  %i.cs = or i32 %i.o, %.lcssa, !dbg !5198        ; 2 uses
  %i.ct = add i32 %i.cs, 1, !dbg !5198
    #dbg_value(ptr %1, !875, !DIExpression(), !4775)
    #dbg_value(i32 %i.ct, !879, !DIExpression(), !4775)
    #dbg_value(i32 %.sroa.7.0, !880, !DIExpression(), !4775)
    #dbg_value(ptr %1, !882, !DIExpression(), !4777)
    #dbg_value(i32 %i.ct, !886, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4777)
    #dbg_value(i32 %.sroa.7.0, !886, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4777)
    #dbg_value(ptr %1, !888, !DIExpression(), !4779)
    #dbg_value(ptr %1, !898, !DIExpression(), !4781)
    #dbg_value(i32 %i.ct, !893, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4779)
    #dbg_value(i32 %.sroa.7.0, !893, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4779)
    #dbg_value(i64 8, !903, !DIExpression(), !4784)
    #dbg_value(i64 %i.ae, !894, !DIExpression(), !4785)
    #dbg_value(i64 %i.ae, !5039, !DIExpression(), !4787)
    #dbg_value(ptr %1, !913, !DIExpression(), !4788)
  %i.cu = load i64, ptr %1, align 8, !dbg !5199, !range !915, !alias.scope !5106, !noundef !363
  %i.cv = icmp eq i64 %i.ae, %i.cu, !dbg !5200
  br i1 %i.cv, label %bb.af, label %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit85, !dbg !5200

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf811ScalarRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23, !dbg !5201
  br label %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit85, !dbg !5202

_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit85: ; preds = %bb.ae, %bb.af
  %i.cw = load ptr, ptr %i.f, align 8, !dbg !5203, !alias.scope !5106, !nonnull !363, !noundef !363
    #dbg_value(ptr %i.cw, !5042, !DIExpression(), !4787)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ae, !dbg !5204 ; 2 uses
    #dbg_value(ptr %i.cx, !896, !DIExpression(), !4796)
    #dbg_value(ptr %i.cx, !929, !DIExpression(), !4798)
    #dbg_value(i32 %i.ct, !932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4798)
    #dbg_value(i32 %.sroa.7.0, !932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4798)
  store i32 %i.ct, ptr %i.cx, align 4, !dbg !5205
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4, !dbg !5205
  store i32 %.sroa.7.0, ptr %i.cy, align 4, !dbg !5205
  %i.cz = add i64 %i.ae, 1, !dbg !5206            ; 2 uses
  store i64 %i.cz, ptr %i.c, align 8, !dbg !5206, !alias.scope !5106
  br label %.backedge.backedge, !dbg !5207

.backedge.backedge:                               ; preds = %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit85, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit86, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit87
  %.be = phi i64 [ %i.al, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit ], [ %i.dn, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit87 ], [ %i.cz, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit85 ], [ %i.df, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit86 ]
  %.sroa.7.0.be = phi i32 [ 55295, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit ], [ %.sroa.0.0.i.lcssa, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit87 ], [ %i.cs, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit85 ], [ %i.dg, %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit86 ]
  br label %.backedge

bb.ag:                                            ; preds = %bb.ab, %bb.z, %bb.ad
  %.lcssa135 = phi i32 [ %i.ap, %bb.ad ], [ %i.ck, %bb.z ], [ %i.cm, %bb.ab ], !dbg !5137 ; 2 uses
    #dbg_value(ptr %1, !875, !DIExpression(), !4800)
    #dbg_value(i32 %.lcssa135, !879, !DIExpression(), !4800)
    #dbg_value(i32 %.sroa.7.0, !880, !DIExpression(), !4800)
    #dbg_value(ptr %1, !882, !DIExpression(), !4802)
    #dbg_value(i32 %.lcssa135, !886, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4802)
    #dbg_value(i32 %.sroa.7.0, !886, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4802)
    #dbg_value(ptr %1, !888, !DIExpression(), !4804)
    #dbg_value(ptr %1, !898, !DIExpression(), !4806)
    #dbg_value(i32 %.lcssa135, !893, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4804)
    #dbg_value(i32 %.sroa.7.0, !893, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4804)
    #dbg_value(i64 8, !903, !DIExpression(), !4809)
    #dbg_value(i64 %i.ae, !894, !DIExpression(), !4810)
    #dbg_value(i64 %i.ae, !5039, !DIExpression(), !4812)
    #dbg_value(ptr %1, !913, !DIExpression(), !4813)
  %i.da = load i64, ptr %1, align 8, !dbg !5208, !range !915, !alias.scope !5108, !noundef !363
  %i.db = icmp eq i64 %i.ae, %i.da, !dbg !5209
  br i1 %i.db, label %bb.ah, label %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit86, !dbg !5209

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf811ScalarRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23, !dbg !5210
  br label %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit86, !dbg !5211

_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit86: ; preds = %bb.ag, %bb.ah
  %i.dc = load ptr, ptr %i.f, align 8, !dbg !5212, !alias.scope !5108, !nonnull !363, !noundef !363
    #dbg_value(ptr %i.dc, !5042, !DIExpression(), !4812)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.ae, !dbg !5213 ; 2 uses
    #dbg_value(ptr %i.dd, !896, !DIExpression(), !4821)
    #dbg_value(ptr %i.dd, !929, !DIExpression(), !4823)
    #dbg_value(i32 %.lcssa135, !932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4823)
    #dbg_value(i32 %.sroa.7.0, !932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4823)
  store i32 %.lcssa135, ptr %i.dd, align 4, !dbg !5214
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4, !dbg !5214
  store i32 %.sroa.7.0, ptr %i.de, align 4, !dbg !5214
  %i.df = add i64 %i.ae, 1, !dbg !5215            ; 2 uses
  store i64 %i.df, ptr %i.c, align 8, !dbg !5215, !alias.scope !5108
  %i.dg = add i32 %.lcssa135, -1, !dbg !5216
  br label %.backedge.backedge, !dbg !5207

bb.ai:                                            ; preds = %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.2, %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.1, %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit
  %.sroa.0.0.i.lcssa = phi i32 [ 127, %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit ], [ 2047, %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.1 ], [ 65535, %_RNvNtCs3roNzt6HBWW_12regex_syntax4utf816max_scalar_value.exit.2 ], !dbg !5217 ; 2 uses
  %i.dh = add nuw nsw i32 %.sroa.0.0.i.lcssa, 1, !dbg !5218
    #dbg_value(ptr %1, !875, !DIExpression(), !4825)
    #dbg_value(i32 %i.dh, !879, !DIExpression(), !4825)
    #dbg_value(i32 %.sroa.7.0, !880, !DIExpression(), !4825)
    #dbg_value(ptr %1, !882, !DIExpression(), !4827)
    #dbg_value(i32 %i.dh, !886, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4827)
    #dbg_value(i32 %.sroa.7.0, !886, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4827)
    #dbg_value(ptr %1, !888, !DIExpression(), !4829)
    #dbg_value(ptr %1, !898, !DIExpression(), !4831)
    #dbg_value(i32 %i.dh, !893, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4829)
    #dbg_value(i32 %.sroa.7.0, !893, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4829)
    #dbg_value(i64 8, !903, !DIExpression(), !4834)
    #dbg_value(i64 %i.ae, !894, !DIExpression(), !4835)
    #dbg_value(i64 %i.ae, !5039, !DIExpression(), !4837)
    #dbg_value(ptr %1, !913, !DIExpression(), !4838)
  %i.di = load i64, ptr %1, align 8, !dbg !5219, !range !915, !alias.scope !5109, !noundef !363
  %i.dj = icmp eq i64 %i.ae, %i.di, !dbg !5220
  br i1 %i.dj, label %bb.aj, label %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit87, !dbg !5220

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax4utf811ScalarRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #23, !dbg !5221
  br label %_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit87, !dbg !5222

_RNvMs3_NtCs3roNzt6HBWW_12regex_syntax4utf8NtB5_13Utf8Sequences4push.exit87: ; preds = %bb.ai, %bb.aj
  %i.dk = load ptr, ptr %i.f, align 8, !dbg !5223, !alias.scope !5109, !nonnull !363, !noundef !363
    #dbg_value(ptr %i.dk, !5042, !DIExpression(), !4837)
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ae, !dbg !5224 ; 2 uses
    #dbg_value(ptr %i.dl, !896, !DIExpression(), !4846)
    #dbg_value(ptr %i.dl, !929, !DIExpression(), !4848)
    #dbg_value(i32 %i.dh, !932, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !4848)
    #dbg_value(i32 %.sroa.7.0, !932, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !4848)
  store i32 %i.dh, ptr %i.dl, align 4, !dbg !5225
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4, !dbg !5225
  store i32 %.sroa.7.0, ptr %i.dm, align 4, !dbg !5225
  %i.dn = add i64 %i.ae, 1, !dbg !5226            ; 2 uses
  store i64 %i.dn, ptr %i.c, align 8, !dbg !5226, !alias.scope !5109
    #dbg_value(i32 %.sroa.0.0.i.lcssa, !4862, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5037)
  br label %.backedge.backedge, !dbg !5134
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCs3roNzt6HBWW_12regex_syntax7unicodeNtB5_16UnicodeWordErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !dbg !5227 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !5233, !DIExpression(), !5236)
    #dbg_value(ptr %1, !5234, !DIExpression(), !5236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5237
  store ptr %0, ptr %i.a, align 8, !dbg !5237
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54), !dbg !5238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5239
  ret i1 %i.b, !dbg !5240
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 !dbg !5241 {
bb.a:
    #dbg_value(ptr %0, !5288, !DIExpression(), !5291)
    #dbg_value(i32 %1, !5289, !DIExpression(), !5291)
    #dbg_value(ptr %0, !503, !DIExpression(), !5243)
    #dbg_value(ptr %0, !498, !DIExpression(), !5245)
    #dbg_value(ptr %0, !508, !DIExpression(), !5247)
    #dbg_value(i32 %1, !504, !DIExpression(), !5243)
    #dbg_value(i32 %1, !689, !DIExpression(), !5249)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5293 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !5293, !alias.scope !5292, !noundef !363 ; 4 uses
    #dbg_value(i64 %i.b, !505, !DIExpression(), !5253)
    #dbg_value(i64 %i.b, !512, !DIExpression(), !5255)
  %i.c = icmp sgt i64 %i.b, -1, !dbg !5294
  tail call void @llvm.assume(i1 %i.c), !dbg !5295
    #dbg_value(i32 %1, !693, !DIExpression(), !5257)
  %i.d = icmp samesign ult i32 %1, 128, !dbg !5296
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !5296

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048, !dbg !5297 ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536, !dbg !5297 ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4, !dbg !5297
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i, !dbg !5297
    #dbg_value(i64 %.sroa.0.0.ph.i, !506, !DIExpression(), !5258)
    #dbg_value(i64 %.sroa.0.0.ph.i, !509, !DIExpression(), !5247)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i), !dbg !5298
    #dbg_value(ptr %0, !520, !DIExpression(), !5260)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5299
  %i.h = load ptr, ptr %i.g, align 8, !dbg !5299, !alias.scope !5292, !nonnull !363, !noundef !363
    #dbg_value(ptr %i.h, !518, !DIExpression(), !5255)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b, !dbg !5300 ; 9 uses
    #dbg_value(i32 %1, !539, !DIExpression(), !5265)
    #dbg_value(ptr %i.i, !544, !DIExpression(), !5265)
    #dbg_value(ptr %i.i, !551, !DIExpression(), !5267)
    #dbg_value(ptr %i.i, !551, !DIExpression(), !5269)
    #dbg_value(ptr %i.i, !551, !DIExpression(), !5271)
    #dbg_value(ptr %i.i, !551, !DIExpression(), !5273)
    #dbg_value(ptr %i.i, !551, !DIExpression(), !5275)
    #dbg_value(ptr %i.i, !551, !DIExpression(), !5277)
    #dbg_value(i64 1, !552, !DIExpression(), !5267)
    #dbg_value(i64 1, !552, !DIExpression(), !5269)
    #dbg_value(i64 1, !552, !DIExpression(), !5271)
    #dbg_value(i64 2, !552, !DIExpression(), !5273)
    #dbg_value(i64 2, !552, !DIExpression(), !5275)
    #dbg_value(i64 3, !552, !DIExpression(), !5277)
    #dbg_value(i64 poison, !545, !DIExpression(), !5278)
  %i.j = trunc i32 %1 to i8, !dbg !5301
  %i.k = and i8 %i.j, 63, !dbg !5301
  %i.l = or disjoint i8 %i.k, -128, !dbg !5301    ; 3 uses
    #dbg_value(i8 %i.l, !546, !DIExpression(), !5279)
  %i.m = lshr i32 %1, 6, !dbg !5302
  %i.n = trunc i32 %i.m to i8, !dbg !5303         ; 2 uses
  %i.o = and i8 %i.n, 63, !dbg !5303
  %i.p = or disjoint i8 %i.o, -128, !dbg !5303    ; 2 uses
    #dbg_value(i8 %i.p, !547, !DIExpression(), !5280)
  %i.q = lshr i32 %1, 12, !dbg !5304
  %i.r = trunc i32 %i.q to i8, !dbg !5305         ; 2 uses
  %i.s = and i8 %i.r, 63, !dbg !5305
  %i.t = or disjoint i8 %i.s, -128, !dbg !5305
    #dbg_value(i8 %i.t, !548, !DIExpression(), !5281)
  %i.u = lshr i32 %1, 18, !dbg !5306
  %i.v = trunc nuw nsw i32 %i.u to i8, !dbg !5307
  %i.w = or disjoint i8 %i.v, -16, !dbg !5307
    #dbg_value(i8 %i.w, !549, !DIExpression(), !5282)
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !5308

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 1, !506, !DIExpression(), !5258)
    #dbg_value(i64 1, !509, !DIExpression(), !5247)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1), !dbg !5298
    #dbg_value(ptr %0, !520, !DIExpression(), !5260)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5299
  %i.y = load ptr, ptr %i.x, align 8, !dbg !5299, !alias.scope !5292, !nonnull !363, !noundef !363
    #dbg_value(ptr %i.y, !518, !DIExpression(), !5255)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b, !dbg !5300
    #dbg_value(i32 %1, !539, !DIExpression(), !5265)
    #dbg_value(ptr %i.z, !544, !DIExpression(), !5265)
    #dbg_value(ptr %i.z, !551, !DIExpression(), !5267)
    #dbg_value(ptr %i.z, !551, !DIExpression(), !5269)
    #dbg_value(ptr %i.z, !551, !DIExpression(), !5271)
    #dbg_value(ptr %i.z, !551, !DIExpression(), !5273)
    #dbg_value(ptr %i.z, !551, !DIExpression(), !5275)
    #dbg_value(ptr %i.z, !551, !DIExpression(), !5277)
    #dbg_value(i64 1, !552, !DIExpression(), !5267)
    #dbg_value(i64 1, !552, !DIExpression(), !5269)
    #dbg_value(i64 1, !552, !DIExpression(), !5271)
    #dbg_value(i64 2, !552, !DIExpression(), !5273)
    #dbg_value(i64 2, !552, !DIExpression(), !5275)
    #dbg_value(i64 3, !552, !DIExpression(), !5277)
    #dbg_value(i64 1, !545, !DIExpression(), !5278)
  %i.aa = trunc nuw nsw i32 %1 to i8, !dbg !5309
  store i8 %i.aa, ptr %i.z, align 1, !dbg !5309
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, !dbg !5310

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64, !dbg !5311
  store i8 %i.ab, ptr %i.i, align 1, !dbg !5311
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !5312
  store i8 %i.l, ptr %i.ac, align 1, !dbg !5313
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, !dbg !5314

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g, !dbg !5315

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32, !dbg !5316
  store i8 %i.ad, ptr %i.i, align 1, !dbg !5316
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !5317
  store i8 %i.p, ptr %i.ae, align 1, !dbg !5318
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2, !dbg !5319
  store i8 %i.l, ptr %i.af, align 1, !dbg !5320
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, !dbg !5314

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1, !dbg !5321
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !5322
  store i8 %i.t, ptr %i.ag, align 1, !dbg !5323
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2, !dbg !5324
  store i8 %i.p, ptr %i.ah, align 1, !dbg !5325
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3, !dbg !5326
  store i8 %i.l, ptr %i.ai, align 1, !dbg !5327
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, !dbg !5328

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.011.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
    #dbg_value(ptr %0, !554, !DIExpression(), !5284)
  %i.aj = add nuw i64 %.sroa.0.011.i, %i.b, !dbg !5329
    #dbg_value(i64 %i.aj, !558, !DIExpression(), !5285)
  store i64 %i.aj, ptr %i.a, align 8, !dbg !5330, !alias.scope !5292
  ret i1 false, !dbg !5331
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 !dbg !5332 {
bb.a:
    #dbg_value(ptr %0, !5379, !DIExpression(), !5382)
    #dbg_value(ptr %1, !5380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5382)
    #dbg_value(i64 %2, !5380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5382)
    #dbg_value(ptr %0, !5383, !DIExpression(), !5335)
    #dbg_value(ptr %1, !5387, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5335)
    #dbg_value(i64 %2, !5387, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5335)
    #dbg_value(ptr %0, !5389, !DIExpression(), !5338)
    #dbg_value(ptr %0, !5396, !DIExpression(), !5342)
    #dbg_value(ptr %1, !5393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5338)
    #dbg_value(i64 %2, !5393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5338)
    #dbg_value(ptr %1, !5401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5342)
    #dbg_value(!DIArgList(ptr %1, i64 %2), !5401, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5342)
    #dbg_value(ptr %1, !5402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5343)
    #dbg_value(i64 %2, !5402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5343)
    #dbg_value(ptr %0, !5404, !DIExpression(), !5346)
    #dbg_value(ptr %0, !5410, !DIExpression(), !5351)
    #dbg_value(ptr %0, !5416, !DIExpression(), !5354)
    #dbg_value(ptr %0, !5418, !DIExpression(), !5357)
    #dbg_value(ptr %1, !5408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5346)
    #dbg_value(ptr %1, !5412, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5351)
    #dbg_value(i64 %2, !5408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5346)
    #dbg_value(i64 %2, !5412, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5351)
    #dbg_value(i64 %2, !5413, !DIExpression(), !5358)
    #dbg_value(i64 %2, !5420, !DIExpression(), !5361)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !dbg !5431, !noalias !5426
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5432 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !5432, !alias.scope !5427, !noalias !5426, !noundef !363 ; 3 uses
    #dbg_value(i64 %i.b, !5414, !DIExpression(), !5367)
    #dbg_value(i64 %i.b, !5428, !DIExpression(), !5370)
  %i.c = icmp sgt i64 %i.b, -1, !dbg !5433
  tail call void @llvm.assume(i1 %i.c), !dbg !5434
  %.not.i.i = icmp eq i64 %2, 0, !dbg !5435
  br i1 %.not.i.i, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String8push_str.exit, label %bb.b, !dbg !5435

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5423, !DIExpression(), !5361)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5436
  %i.e = load ptr, ptr %i.d, align 8, !dbg !5436, !alias.scope !5427, !noalias !5426, !nonnull !363, !noundef !363
    #dbg_value(ptr %i.e, !5429, !DIExpression(), !5370)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b, !dbg !5437
    #dbg_value(ptr %i.f, !5424, !DIExpression(), !5361)
end_hunk_0
