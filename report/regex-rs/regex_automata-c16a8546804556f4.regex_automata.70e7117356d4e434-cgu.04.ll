Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.04?download=true
inline.NumInlined: 296
inline.NumDeleted: 192
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_7LookSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt:_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(i32 %switch.load, !12546, !DIExpression(), !12616)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12637
    #dbg_value(i32 %switch.load, !12617, !DIExpression(), !12535)
  %i.k = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 131073) %switch.load, i1 true), !dbg !12638
  %i.l = zext nneg i32 %i.k to i64, !dbg !12638
  %switch.gep71 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util4lookNtB5_7LookSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.84, i64 %i.l, !dbg !12638
  %switch.load72 = load i32, ptr %switch.gep71, align 4, !dbg !12638
  store i32 %switch.load72, ptr %i.b, align 4, !dbg !12639
    #dbg_value(ptr %i.b, !12548, !DIExpression(), !12622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12640
  store ptr %i.b, ptr %i.a, align 8, !dbg !12640
  store ptr @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !12640
    #dbg_value(ptr @7, !12577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12586)
    #dbg_value(ptr %i.a, !12577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12586)
  %i.m = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @7, ptr noundef nonnull %i.a), !dbg !12641
    #dbg_value(i1 %i.m, !12623, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12629)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12642
  br i1 %i.m, label %.loopexit, label %bb.a, !dbg !12643

.loopexit:                                        ; preds = %switch.lookup, %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.b
  %.sroa.0.0 = phi i1 [ %i.v, %bb.b ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i ], [ false, %bb.a ], [ true, %switch.lookup ], !dbg !12575
  ret i1 %.sroa.0.0, !dbg !12644

bb.a:                                             ; preds = %switch.lookup
  %i.n = xor i32 %switch.load, -1, !dbg !12645
    #dbg_value(!DIArgList(i32 %.sroa.0.06468, i32 %i.n), !12545, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !12594)
  %i.o = and i32 %.sroa.0.06468, %i.n, !dbg !12646 ; 2 uses
    #dbg_value(i32 %i.o, !12545, !DIExpression(), !12594)
    #dbg_value(i32 %i.o, !12545, !DIExpression(), !12594)
    #dbg_value(ptr undef, !12559, !DIExpression(), !12514)
    #dbg_value(i32 %i.o, !12595, !DIExpression(), !12521)
  %i.p = icmp eq i32 %i.o, 0, !dbg !12647
  br i1 %i.p, label %.loopexit, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit.i, !dbg !12634

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs9GYDdpCSJ4S_14regex_automata.exit
    #dbg_value(ptr @33, !12577, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12583)
    #dbg_value(ptr inttoptr (i64 7 to ptr), !12577, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12583)
    #dbg_value(ptr @33, !12578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12631)
    #dbg_value(i64 3, !12578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12631)
  %i.q = load ptr, ptr %1, align 8, !dbg !12648, !nonnull !730, !noundef !730
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12648
  %i.s = load ptr, ptr %i.r, align 8, !dbg !12648, !nonnull !730, !align !1832, !noundef !730
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !12648
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12648, !invariant.load !730, !nonnull !730
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 3) #31, !dbg !12649
  br label %.loopexit, !dbg !12650
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB5_12StartByteMapNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !12666 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [1 x i8], align 1                 ; 9 uses
  %i.c = alloca [1 x i8], align 1                 ; 9 uses
    #dbg_value(ptr poison, !2696, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12669)
    #dbg_value(ptr poison, !2696, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12669)
    #dbg_value(ptr poison, !2696, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !12669)
    #dbg_value(ptr poison, !2700, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12670)
    #dbg_value(ptr poison, !2700, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12670)
    #dbg_value(ptr poison, !2700, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !12670)
    #dbg_value(ptr %0, !12698, !DIExpression(), !12719)
    #dbg_value(ptr %1, !12699, !DIExpression(), !12719)
    #dbg_value(ptr %1, !12720, !DIExpression(), !12729)
    #dbg_value(ptr %1, !12720, !DIExpression(), !12732)
    #dbg_value(ptr %1, !12720, !DIExpression(), !12735)
    #dbg_value(ptr %1, !12720, !DIExpression(), !12737)
    #dbg_declare(ptr %i.c, !12706, !DIExpression(), !12738)
    #dbg_value(ptr @35, !12721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12729)
    #dbg_value(ptr inttoptr (i64 27 to ptr), !12721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12729)
    #dbg_value(ptr @35, !12722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12739)
    #dbg_value(i64 13, !12722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12739)
  %i.d = load ptr, ptr %1, align 8, !dbg !12768, !nonnull !730, !noundef !730 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12768
  %i.f = load ptr, ptr %i.e, align 8, !dbg !12768, !nonnull !730, !align !1832, !noundef !730 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !12768
  %i.h = load ptr, ptr %i.g, align 8, !dbg !12768, !invariant.load !730, !nonnull !730 ; 3 uses
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 13) #31, !dbg !12769
    #dbg_value(i1 %i.i, !12740, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12752)
  br i1 %i.i, label %.loopexit, label %bb.b, !dbg !12770

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 poison, !12702, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12753)
    #dbg_value(i8 0, !12702, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12753)
    #dbg_value(ptr undef, !2700, !DIExpression(), !12670)
    #dbg_value(ptr undef, !2696, !DIExpression(), !12669)
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
    #dbg_value(i64 0, !2705, !DIExpression(), !12686)
    #dbg_value(i64 0, !2714, !DIExpression(), !12688)
    #dbg_value(i64 1, !2711, !DIExpression(), !12686)
    #dbg_value(i8 1, !2712, !DIExpression(), !12689)
    #dbg_value(i8 1, !2717, !DIExpression(), !12688)
    #dbg_value(i1 false, !12702, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !12753)
    #dbg_value(i64 1, !12702, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !12753)
    #dbg_value(i64 0, !12703, !DIExpression(), !12755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12771
  %i.k = load i8, ptr %0, align 1, !dbg !12772, !range !2719, !noundef !730
  store i8 %i.k, ptr %i.c, align 1, !dbg !12772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12773
  store i8 0, ptr %i.b, align 1, !dbg !12773
    #dbg_value(ptr %i.b, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12756)
    #dbg_value(ptr %i.c, !12708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12774
  store ptr %i.b, ptr %i.a, align 8, !dbg !12774
  store ptr @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !12774
  store ptr %i.c, ptr %i.j, align 8, !dbg !12774
  store ptr @_RNvXs8_NtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB5_5StartNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.437.0..sroa_idx, align 8, !dbg !12774
    #dbg_value(ptr @34, !12721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12735)
    #dbg_value(ptr %i.a, !12721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12735)
  %i.l = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @34, ptr noundef nonnull %i.a), !dbg !12775
    #dbg_value(i1 %i.l, !12740, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12759)
  br i1 %i.l, label %.loopexit127, label %.peel.next, !dbg !12776

.peel.next:                                       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12778
    #dbg_value(i8 poison, !12702, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12753)
    #dbg_value(i64 1, !12702, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !12753)
    #dbg_value(ptr undef, !2700, !DIExpression(), !12670)
    #dbg_value(ptr undef, !2696, !DIExpression(), !12669)
  br label %bb.d, !dbg !12779

.loopexit128:                                     ; preds = %bb.e
    #dbg_value(i8 1, !12702, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12753)
    #dbg_value(i8 poison, !12702, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12753)
    #dbg_value(ptr @36, !12721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12737)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !12721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12737)
    #dbg_value(ptr @36, !12725, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12760)
    #dbg_value(i64 1, !12725, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12760)
  %i.m = call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 1) #31, !dbg !12780
    #dbg_value(i1 %i.m, !12740, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12762)
  br label %.loopexit, !dbg !12781

.loopexit:                                        ; preds = %bb.d, %.loopexit127, %.loopexit128, %bb.a
  %.sroa.0.0 = phi i1 [ %i.m, %.loopexit128 ], [ true, %bb.a ], [ true, %.loopexit127 ], [ true, %bb.d ], !dbg !12719
  ret i1 %.sroa.0.0, !dbg !12782

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12771
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv, !dbg !12772
  %i.o = load i8, ptr %i.n, align 1, !dbg !12772, !range !2719, !noundef !730
  store i8 %i.o, ptr %i.c, align 1, !dbg !12772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12773
  %i.p = trunc nuw i64 %indvars.iv to i8, !dbg !12773
  store i8 %i.p, ptr %i.b, align 1, !dbg !12773
    #dbg_value(ptr %i.b, !12708, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12756)
    #dbg_value(ptr %i.c, !12708, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12774
  store ptr %i.b, ptr %i.a, align 8, !dbg !12774
  store ptr @_RNvXNtNtCs9GYDdpCSJ4S_14regex_automata4util6escapeNtB2_9DebugByteNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !12774
  store ptr %i.c, ptr %i.j, align 8, !dbg !12774
  store ptr @_RNvXs8_NtNtCs9GYDdpCSJ4S_14regex_automata4util5startNtB5_5StartNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.437.0..sroa_idx, align 8, !dbg !12774
    #dbg_value(ptr @34, !12721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12735)
    #dbg_value(ptr %i.a, !12721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12735)
  %i.q = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @34, ptr noundef nonnull %i.a), !dbg !12775
    #dbg_value(i1 %i.q, !12740, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12759)
  br i1 %i.q, label %.loopexit127, label %bb.e, !dbg !12776

bb.d:                                             ; preds = %bb.e, %.peel.next
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.e ] ; 4 uses
    #dbg_value(i64 %indvars.iv, !12702, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12753)
    #dbg_value(i64 %indvars.iv, !2705, !DIExpression(), !12686)
    #dbg_value(i64 %indvars.iv, !2714, !DIExpression(), !12688)
    #dbg_value(i64 1, !2711, !DIExpression(), !12686)
    #dbg_value(i8 1, !2712, !DIExpression(), !12689)
    #dbg_value(i8 1, !2717, !DIExpression(), !12688)
  %i.r = icmp eq i64 %indvars.iv, 255, !dbg !12783
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !12783
    #dbg_value(i1 %i.r, !12702, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !12753)
    #dbg_value(i64 %indvars.iv.next, !12702, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !12753)
    #dbg_value(i64 %indvars.iv, !12703, !DIExpression(), !12755)
    #dbg_value(ptr @37, !12721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12732)
    #dbg_value(ptr inttoptr (i64 5 to ptr), !12721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12732)
    #dbg_value(ptr @37, !12723, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12763)
    #dbg_value(i64 2, !12723, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12763)
  %i.s = call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 2) #31, !dbg !12784
    #dbg_value(i1 %i.s, !12740, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12766)
  br i1 %i.s, label %.loopexit, label %bb.c, !dbg !12785

.loopexit127:                                     ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12778
  br label %.loopexit, !dbg !12786

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12778
    #dbg_value(i8 poison, !12702, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12753)
    #dbg_value(i64 %indvars.iv.next, !12702, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !12753)
    #dbg_value(ptr undef, !2700, !DIExpression(), !12670)
    #dbg_value(ptr undef, !2696, !DIExpression(), !12669)
  br i1 %i.r, label %.loopexit128, label %bb.d, !dbg !12779, !llvm.loop !12690
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define void @_RNvXs1_NtNtCs9GYDdpCSJ4S_14regex_automata4util8alphabetNtB5_11ByteClassesNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 1 captures(none) dereferenceable(256) initializes((0, 256)) %0) unnamed_addr #8 !dbg !12787 {
vector.ph:
    #dbg_value(ptr poison, !2696, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12794)
    #dbg_value(ptr poison, !2696, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12794)
    #dbg_value(ptr poison, !2696, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !12794)
    #dbg_value(ptr poison, !2700, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12795)
    #dbg_value(ptr poison, !2700, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12795)
    #dbg_value(ptr poison, !2700, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !12795)
    #dbg_declare(ptr %0, !12800, !DIExpression(), !12805)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 0, i64 256, i1 false), !dbg !12813
    #dbg_value(i8 0, !12801, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12807)
    #dbg_value(i8 0, !12801, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12807)
    #dbg_value(i8 -1, !12801, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !12807)
    #dbg_value(i8 poison, !12801, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12807)
    #dbg_value(ptr undef, !2700, !DIExpression(), !12795)
    #dbg_value(ptr undef, !2696, !DIExpression(), !12794)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12814
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %0, align 1, !dbg !12814
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.a, align 1, !dbg !12814
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !12814
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12814
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.b, align 1, !dbg !12814
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.c, align 1, !dbg !12814
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !12814
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !12814
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.d, align 1, !dbg !12814
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.e, align 1, !dbg !12814
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !12814
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !12814
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.f, align 1, !dbg !12814
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.g, align 1, !dbg !12814
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !12814
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !12814
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.h, align 1, !dbg !12814
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.i, align 1, !dbg !12814
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !12814
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !12814
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.j, align 1, !dbg !12814
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.k, align 1, !dbg !12814
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !12814
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !12814
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.l, align 1, !dbg !12814
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.m, align 1, !dbg !12814
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !12814
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !12814
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.n, align 1, !dbg !12814
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.o, align 1, !dbg !12814
    #dbg_value(i8 1, !12801, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12807)
    #dbg_value(i8 poison, !12801, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12807)
  ret void, !dbg !12815
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir11PropertiesIENtB6_5Debug3fmtCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !12816 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 27 uses
    #dbg_value(ptr %0, !12839, !DIExpression(), !12844)
    #dbg_value(ptr %1, !12840, !DIExpression(), !12844)
  %i.c = load ptr, ptr %0, align 8, !dbg !12875, !nonnull !730, !align !1832, !noundef !730
  %.val = load ptr, ptr %i.c, align 8, !dbg !12876, !nonnull !730, !noundef !730 ; 12 uses
    #dbg_value(ptr poison, !12845, !DIExpression(), !12819)
    #dbg_value(ptr %1, !12848, !DIExpression(), !12819)
    #dbg_value(ptr %.val, !12852, !DIExpression(), !12827)
    #dbg_value(ptr %1, !12856, !DIExpression(), !12827)
    #dbg_value(ptr @50, !12861, !DIExpression(), !12828)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12877, !noalias !12874
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !12878
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 56, !dbg !12879
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 60, !dbg !12880
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 64, !dbg !12881
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 68, !dbg !12882
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !12883
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 76, !dbg !12884
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !12885
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32, !dbg !12886
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 77, !dbg !12887
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12888, !noalias !12874
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 78, !dbg !12888
  store ptr %i.n, ptr %i.a, align 8, !dbg !12888, !noalias !12874
  store ptr %.val, ptr %i.b, align 8, !dbg !12877, !noalias !12874
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12877
  store ptr @51, ptr %i.o, align 8, !dbg !12877, !noalias !12874
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12877
  store ptr %i.d, ptr %i.p, align 8, !dbg !12877, !noalias !12874
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !12877
  store ptr @51, ptr %i.q, align 8, !dbg !12877, !noalias !12874
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !12877
  store ptr %i.e, ptr %i.r, align 8, !dbg !12877, !noalias !12874
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !12877
  store ptr @52, ptr %i.s, align 8, !dbg !12877, !noalias !12874
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !12877
  store ptr %i.f, ptr %i.t, align 8, !dbg !12877, !noalias !12874
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !12877
  store ptr @52, ptr %i.u, align 8, !dbg !12877, !noalias !12874
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !12877
  store ptr %i.g, ptr %i.v, align 8, !dbg !12877, !noalias !12874
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !12877
  store ptr @52, ptr %i.w, align 8, !dbg !12877, !noalias !12874
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !12877
  store ptr %i.h, ptr %i.x, align 8, !dbg !12877, !noalias !12874
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !12877
  store ptr @52, ptr %i.y, align 8, !dbg !12877, !noalias !12874
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !12877
  store ptr %i.i, ptr %i.z, align 8, !dbg !12877, !noalias !12874
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !12877
  store ptr @52, ptr %i.aa, align 8, !dbg !12877, !noalias !12874
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !12877
  store ptr %i.j, ptr %i.ab, align 8, !dbg !12877, !noalias !12874
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !12877
  store ptr @53, ptr %i.ac, align 8, !dbg !12877, !noalias !12874
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !12877
  store ptr %i.k, ptr %i.ad, align 8, !dbg !12877, !noalias !12874
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !12877
  store ptr @54, ptr %i.ae, align 8, !dbg !12877, !noalias !12874
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !12877
  store ptr %i.l, ptr %i.af, align 8, !dbg !12877, !noalias !12874
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !12877
  store ptr @51, ptr %i.ag, align 8, !dbg !12877, !noalias !12874
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !12877
  store ptr %i.m, ptr %i.ah, align 8, !dbg !12877, !noalias !12874
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !12877
  store ptr @53, ptr %i.ai, align 8, !dbg !12877, !noalias !12874
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !12877
  store ptr %i.a, ptr %i.aj, align 8, !dbg !12877, !noalias !12874
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !12877
  store ptr @55, ptr %i.ak, align 8, !dbg !12877, !noalias !12874
    #dbg_value(ptr %i.b, !12862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12834)
    #dbg_value(i64 12, !12862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12834)
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @50, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 12), !dbg !12889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12890, !noalias !12874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12890, !noalias !12874
  ret i1 %i.al, !dbg !12891
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search14MatchErrorKindENtB6_5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !12898 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !12939, !DIExpression(), !12944)
    #dbg_value(ptr %1, !12940, !DIExpression(), !12944)
  %i.e = load ptr, ptr %0, align 8, !dbg !12968, !nonnull !730, !align !1832, !noundef !730
  %.val = load ptr, ptr %i.e, align 8, !dbg !12969, !nonnull !730, !noundef !730 ; 6 uses
    #dbg_value(ptr poison, !12945, !DIExpression(), !12901)
    #dbg_value(ptr %1, !12948, !DIExpression(), !12901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12952), !dbg !12970
    #dbg_value(ptr %.val, !12954, !DIExpression(), !12910)
    #dbg_value(ptr %1, !12958, !DIExpression(), !12910)
  %i.f = load i8, ptr %.val, align 8, !dbg !12971, !range !12965, !alias.scope !12952, !noalias !12966, !noundef !730
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ], !dbg !12971

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 1, !dbg !12972
    #dbg_value(ptr %i.g, !12959, !DIExpression(), !12914)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12973, !noalias !12967
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !12973
    #dbg_value(ptr %i.h, !12960, !DIExpression(), !12914)
  store ptr %i.h, ptr %i.d, align 8, !dbg !12973, !noalias !12967
    #dbg_value(ptr %i.d, !12960, !DIExpression(DW_OP_deref), !12914)
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 4, ptr noundef nonnull readonly %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58), !dbg !12974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12975, !noalias !12967
  br label %_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search14MatchErrorKindENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBN_.exit, !dbg !12975

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12976, !noalias !12967
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !12976
    #dbg_value(ptr %i.j, !12961, !DIExpression(), !12915)
  store ptr %i.j, ptr %i.c, align 8, !dbg !12976, !noalias !12967
    #dbg_value(ptr %i.c, !12961, !DIExpression(DW_OP_deref), !12915)
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58), !dbg !12977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12975, !noalias !12967
  br label %_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search14MatchErrorKindENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBN_.exit, !dbg !12975

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12978, !noalias !12967
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !12978
    #dbg_value(ptr %i.l, !12962, !DIExpression(), !12916)
  store ptr %i.l, ptr %i.b, align 8, !dbg !12978, !noalias !12967
    #dbg_value(ptr %i.b, !12962, !DIExpression(DW_OP_deref), !12916)
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58), !dbg !12979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12975, !noalias !12967
  br label %_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search14MatchErrorKindENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBN_.exit, !dbg !12975

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12980, !noalias !12967
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !12980
    #dbg_value(ptr %i.n, !12963, !DIExpression(), !12917)
  store ptr %i.n, ptr %i.a, align 8, !dbg !12980, !noalias !12967
    #dbg_value(ptr %i.a, !12963, !DIExpression(DW_OP_deref), !12917)
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 19, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65), !dbg !12981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12975, !noalias !12967
  br label %_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search14MatchErrorKindENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBN_.exit, !dbg !12975

_RNvXsn_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4util6search14MatchErrorKindENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtBN_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.i, %bb.b ], [ %i.k, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  ret i1 %.sroa.0.0.in.i.i, !dbg !12982
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
