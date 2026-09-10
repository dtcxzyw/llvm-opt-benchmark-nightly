Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.01?download=true
inline.NumInlined: 396
inline.NumDeleted: 155
begin_hunk_0_@_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop:bb.a
    #dbg_value(i64 80, !1245, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13349)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #23, !dbg !13711, !inline_history !1321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !13643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13643
  %.pr = load i64, ptr %i.an, align 8, !dbg !13642 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13641
    #dbg_value(ptr %i.g, !13466, !DIExpression(), !13596)
    #dbg_value(ptr %i.g, !13468, !DIExpression(), !13597)
    #dbg_value(ptr %i.g, !13552, !DIExpression(), !13598)
    #dbg_value(ptr %i.g, !13501, !DIExpression(), !13599)
  %i.cd = icmp eq i64 %.pr, 0, !dbg !13642
  br i1 %i.cd, label %bb.l, label %bb.o, !dbg !13642

bb.ao:                                            ; preds = %.body, %.body68
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !13712
  unreachable, !dbg !13712
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsq_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7LookSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !13725 {
_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
    #dbg_value(ptr poison, !13793, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !13736)
    #dbg_value(ptr %0, !13768, !DIExpression(), !13809)
    #dbg_value(ptr %1, !13769, !DIExpression(), !13809)
    #dbg_value(ptr %1, !13810, !DIExpression(), !13820)
    #dbg_value(ptr %1, !13810, !DIExpression(), !13823)
  %i.c = load i32, ptr %0, align 4, !dbg !13881, !noundef !658 ; 2 uses
    #dbg_value(i32 %i.c, !13824, !DIExpression(), !13830)
  %i.d = icmp eq i32 %i.c, 0, !dbg !13882
  br i1 %i.d, label %bb.b, label %.preheader, !dbg !13881

.preheader:                                       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit
    #dbg_value(i32 %i.c, !13770, !DIExpression(), !13831)
    #dbg_value(ptr undef, !13793, !DIExpression(), !13736)
    #dbg_value(i32 %i.c, !13832, !DIExpression(), !13743)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !658
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !658, !align !1449
  br label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit.i, !dbg !13883

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit.i: ; preds = %.preheader, %bb.a
  %.sroa.0.06468 = phi i32 [ %i.c, %.preheader ], [ %i.o, %bb.a ] ; 2 uses
    #dbg_value(i32 %.sroa.0.06468, !13770, !DIExpression(), !13831)
    #dbg_value(i32 %.sroa.0.06468, !13834, !DIExpression(), !13746)
  %i.h = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.06468, i1 true), !dbg !13884 ; 2 uses
    #dbg_value(i32 %i.h, !13804, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value), !13747)
    #dbg_value(!DIArgList(i32 1, i32 %i.h), !13840, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value), !13750)
  %i.i = icmp samesign ult i32 %i.h, 18, !dbg !13885
  br i1 %i.i, label %switch.lookup, label %.loopexit, !dbg !13885

switch.lookup:                                    ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit.i
  %i.j = zext nneg i32 %i.h to i64, !dbg !13885
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvXsq_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7LookSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, i64 %i.j, !dbg !13885
  %switch.load = load i32, ptr %switch.gep, align 4, !dbg !13885 ; 2 uses
    #dbg_value(i32 %switch.load, !13805, !DIExpression(), !13751)
    #dbg_value(i32 %switch.load, !13845, !DIExpression(), !13754)
    #dbg_value(i32 %.sroa.0.06468, !13849, !DIExpression(), !13754)
    #dbg_value(!DIArgList(i32 %.sroa.0.06468, i32 %switch.load), !13770, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_and, DW_OP_stack_value), !13831)
    #dbg_value(i32 %switch.load, !13771, !DIExpression(), !13852)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13886
    #dbg_value(i32 %switch.load, !13853, !DIExpression(), !13757)
  %i.k = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 131073) %switch.load, i1 true), !dbg !13887
  %i.l = zext nneg i32 %i.k to i64, !dbg !13887
  %switch.gep71 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RNvXsq_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_7LookSetNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.57, i64 %i.l, !dbg !13887
  %switch.load72 = load i32, ptr %switch.gep71, align 4, !dbg !13887
  store i32 %switch.load72, ptr %i.b, align 4, !dbg !13888
    #dbg_value(ptr %i.b, !13773, !DIExpression(), !13858)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13889
  store ptr %i.b, ptr %i.a, align 8, !dbg !13889
  store ptr @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8, !dbg !13889
    #dbg_value(ptr @3026, !13814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13823)
    #dbg_value(ptr %i.a, !13814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13823)
  %i.m = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @3026, ptr noundef nonnull %i.a), !dbg !13890
    #dbg_value(i1 %i.m, !13859, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13878)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13891
  br i1 %i.m, label %.loopexit, label %bb.a, !dbg !13892

.loopexit:                                        ; preds = %switch.lookup, %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit.i, %bb.b
  %.sroa.0.0 = phi i1 [ %i.v, %bb.b ], [ false, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit.i ], [ false, %bb.a ], [ true, %switch.lookup ], !dbg !13809
  ret i1 %.sroa.0.0, !dbg !13893

bb.a:                                             ; preds = %switch.lookup
  %i.n = xor i32 %switch.load, -1, !dbg !13894
    #dbg_value(!DIArgList(i32 %.sroa.0.06468, i32 %i.n), !13770, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value), !13831)
  %i.o = and i32 %.sroa.0.06468, %i.n, !dbg !13895 ; 2 uses
    #dbg_value(i32 %i.o, !13770, !DIExpression(), !13831)
    #dbg_value(i32 %i.o, !13770, !DIExpression(), !13831)
    #dbg_value(ptr undef, !13793, !DIExpression(), !13736)
    #dbg_value(i32 %i.o, !13832, !DIExpression(), !13743)
  %i.p = icmp eq i32 %i.o, 0, !dbg !13896
  br i1 %i.p, label %.loopexit, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit.i, !dbg !13883

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs3roNzt6HBWW_12regex_syntax.exit
    #dbg_value(ptr @3027, !13814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13820)
    #dbg_value(ptr inttoptr (i64 7 to ptr), !13814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13820)
    #dbg_value(ptr @3027, !13815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13880)
    #dbg_value(i64 3, !13815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13880)
  %i.q = load ptr, ptr %1, align 8, !dbg !13897, !nonnull !658, !noundef !658
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13897
  %i.s = load ptr, ptr %i.r, align 8, !dbg !13897, !nonnull !658, !align !1449, !noundef !658
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !13897
  %i.u = load ptr, ptr %i.t, align 8, !dbg !13897, !invariant.load !658, !nonnull !658
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3027, i64 noundef 3) #31, !dbg !13898
  br label %.loopexit, !dbg !13899
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13900 {
bb.a:
    #dbg_value(ptr %0, !13911, !DIExpression(), !13914)
    #dbg_value(ptr %0, !13915, !DIExpression(), !13918)
    #dbg_value(ptr %0, !13919, !DIExpression(), !13922)
    #dbg_value(ptr %1, !13912, !DIExpression(), !13914)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13928
  %i.b = load ptr, ptr %i.a, align 8, !dbg !13928, !nonnull !658, !noundef !658
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13929
  %i.d = load i64, ptr %i.c, align 8, !dbg !13929, !noundef !658
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsj6eKBz9Db1c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !13930
  ret i1 %i.e, !dbg !13931
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !13932 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13944)
    #dbg_value(ptr %0, !13945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13948)
    #dbg_value(ptr %0, !13949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13955)
    #dbg_value(i64 %1, !13941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13944)
    #dbg_value(i64 %1, !13945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13948)
    #dbg_value(i64 %1, !13949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13955)
    #dbg_value(ptr %2, !13942, !DIExpression(), !13944)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13963
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !13964
    #dbg_value(i64 %1, !13950, !DIExpression(), !13956)
    #dbg_value(i64 %1, !13957, !DIExpression(), !13961)
    #dbg_value(ptr %0, !13951, !DIExpression(), !13962)
    #dbg_value(ptr %0, !13958, !DIExpression(), !13961)
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1, !dbg !13965
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !13966
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !13967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13968
  ret i1 %i.d, !dbg !13969
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !13970 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13982)
    #dbg_value(ptr %0, !13983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13986)
    #dbg_value(ptr %0, !13987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13993)
    #dbg_value(i64 %1, !13979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13982)
    #dbg_value(i64 %1, !13983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13986)
    #dbg_value(i64 %1, !13987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13993)
    #dbg_value(ptr %2, !13980, !DIExpression(), !13982)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14001
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !14002
    #dbg_value(i64 %1, !13988, !DIExpression(), !13994)
    #dbg_value(i64 %1, !13995, !DIExpression(), !13999)
    #dbg_value(ptr %0, !13989, !DIExpression(), !14000)
    #dbg_value(ptr %0, !13996, !DIExpression(), !13999)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !14003
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !14004
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !14005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14006
  ret i1 %i.d, !dbg !14007
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #2 !dbg !14008 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !14017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14020)
    #dbg_value(ptr %0, !14021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14024)
    #dbg_value(ptr %0, !14025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14031)
    #dbg_value(i64 %1, !14017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14020)
    #dbg_value(i64 %1, !14021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14024)
    #dbg_value(i64 %1, !14025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14031)
    #dbg_value(ptr %2, !14018, !DIExpression(), !14020)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14039
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2), !dbg !14040
    #dbg_value(i64 %1, !14026, !DIExpression(), !14032)
    #dbg_value(i64 %1, !14033, !DIExpression(), !14037)
    #dbg_value(ptr %0, !14027, !DIExpression(), !14038)
    #dbg_value(ptr %0, !14034, !DIExpression(), !14037)
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1, !dbg !14041
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !14042
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !14043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14044
  ret i1 %i.d, !dbg !14045
}

; Function Attrs: nonlazybind uwtable
define hidden range(i48 0, -4261413118) i48 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval10differenceB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14053 {
bb.a:
    #dbg_value(ptr poison, !14108, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14056)
    #dbg_value(ptr poison, !14109, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14056)
    #dbg_value(ptr poison, !2514, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14058)
    #dbg_value(ptr poison, !2518, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14058)
    #dbg_value(ptr %0, !14099, !DIExpression(), !14111)
    #dbg_value(ptr %1, !14100, !DIExpression(), !14111)
  %.val98 = load i16, ptr %0, align 1, !dbg !14127 ; 3 uses
  %i.a = trunc i16 %.val98 to i8, !dbg !14127     ; 6 uses
  %i.b = lshr i16 %.val98, 8, !dbg !14127
  %i.c = trunc nuw i16 %i.b to i8, !dbg !14127    ; 6 uses
  %.val100 = load i8, ptr %1, align 1, !dbg !14127, !noundef !658 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14127
  %.val101 = load i8, ptr %i.d, align 1, !dbg !14127, !noundef !658 ; 5 uses
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14064)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14066)
    #dbg_value(ptr poison, !2546, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14068)
    #dbg_value(ptr poison, !2546, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14070)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14070)
    #dbg_value(ptr poison, !2546, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14066)
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14068)
    #dbg_value(ptr poison, !2546, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14064)
    #dbg_value(ptr poison, !14112, !DIExpression(), !14071)
    #dbg_value(ptr poison, !14113, !DIExpression(), !14071)
    #dbg_value(i8 %i.c, !14115, !DIExpression(), !14072)
    #dbg_value(i8 %.val101, !14117, !DIExpression(), !14073)
    #dbg_value(ptr undef, !14114, !DIExpression(DW_OP_deref), !14072)
    #dbg_value(ptr undef, !14116, !DIExpression(DW_OP_deref), !14073)
    #dbg_value(ptr undef, !2546, !DIExpression(), !14068)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14068)
  %.not.i = icmp ule i8 %.val100, %i.a, !dbg !14128
    #dbg_value(ptr undef, !14117, !DIExpression(DW_OP_deref), !14073)
    #dbg_value(ptr undef, !2546, !DIExpression(), !14064)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14064)
  %.not12.i = icmp uge i8 %.val101, %i.a
  %or.cond.not15.i = and i1 %.not.i, %.not12.i
    #dbg_value(ptr undef, !14115, !DIExpression(DW_OP_deref), !14072)
    #dbg_value(ptr undef, !2546, !DIExpression(), !14070)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14070)
  %.not13.i = icmp ule i8 %.val100, %i.c
  %or.cond14.not.i = and i1 %.not13.i, %or.cond.not15.i, !dbg !14129
  %i.e = icmp uge i8 %.val101, %i.c, !dbg !14129
  %.sroa.0.0.i = and i1 %i.e, %or.cond14.not.i, !dbg !14129
  br i1 %.sroa.0.0.i, label %bb.j, label %bb.b, !dbg !14130

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !2514, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14076)
    #dbg_value(ptr poison, !2518, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14076)
    #dbg_value(ptr %0, !2506, !DIExpression(), !14077)
    #dbg_value(ptr %1, !2508, !DIExpression(), !14077)
    #dbg_value(i8 %i.a, !2509, !DIExpression(), !14078)
    #dbg_value(i8 %i.a, !2520, !DIExpression(), !14080)
    #dbg_value(i8 %i.c, !2510, !DIExpression(), !14078)
    #dbg_value(i8 %i.c, !2525, !DIExpression(), !14082)
    #dbg_value(i8 %.val100, !2511, !DIExpression(), !14083)
    #dbg_value(i8 %.val100, !2523, !DIExpression(), !14080)
    #dbg_value(i8 %.val101, !2512, !DIExpression(), !14083)
    #dbg_value(i8 %.val101, !2526, !DIExpression(), !14082)
    #dbg_value(ptr undef, !2528, !DIExpression(DW_OP_deref), !14085)
    #dbg_value(ptr undef, !2530, !DIExpression(DW_OP_deref), !14085)
  %..i.i = tail call noundef i8 @llvm.umax.i8(i8 %.val100, i8 %i.a), !dbg !14131
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14087)
    #dbg_value(ptr undef, !2535, !DIExpression(DW_OP_deref), !14087)
  %..i9.i = tail call noundef i8 @llvm.umin.i8(i8 %.val101, i8 %i.c), !dbg !14132
    #dbg_value(ptr undef, !2518, !DIExpression(), !14076)
    #dbg_value(ptr undef, !2514, !DIExpression(), !14076)
  %i.f = icmp ugt i8 %..i.i, %..i9.i, !dbg !14133
  br i1 %i.f, label %bb.d, label %bb.c, !dbg !14134

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !2518, !DIExpression(), !14058)
    #dbg_value(ptr undef, !2514, !DIExpression(), !14058)
  %i.g = icmp ugt i8 %.val100, %i.a, !dbg !14135  ; 2 uses
    #dbg_value(i1 %i.g, !14101, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14119)
    #dbg_value(ptr undef, !14109, !DIExpression(), !14056)
    #dbg_value(ptr undef, !14108, !DIExpression(), !14056)
  %i.h = icmp ult i8 %.val101, %i.c, !dbg !14136  ; 2 uses
    #dbg_value(i1 %i.h, !14102, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14120)
  br i1 %i.g, label %bb.g, label %bb.e, !dbg !14137

bb.d:                                             ; preds = %bb.b
    #dbg_value(i8 1, !14103, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14121)
  %.sroa.8.sroa.0.0.insert.ext18 = zext i16 %.val98 to i40, !dbg !14138
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext18, !14103, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14121)
  br label %bb.j, !dbg !14139

bb.e:                                             ; preds = %bb.c
  br i1 %i.h, label %.thread, label %bb.f, !dbg !14140, !prof !2390

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3028, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3030) #30, !dbg !14141
  unreachable, !dbg !14141

bb.g:                                             ; preds = %bb.c
    #dbg_value(i8 0, !14103, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14121)
    #dbg_value(i40 0, !14103, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14121)
  %i.i = tail call noundef i8 @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9decrement(i8 noundef %.val100), !dbg !14142 ; 2 uses
    #dbg_value(i8 %i.i, !14104, !DIExpression(), !14124)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14089)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14089)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14090)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14090)
  %..i = tail call i8 @llvm.umin.i8(i8 %i.a, i8 %i.i), !dbg !14143
  %.3.i = tail call i8 @llvm.umax.i8(i8 %i.a, i8 %i.i), !dbg !14143
    #dbg_value(i8 %.3.i, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14089)
    #dbg_value(i8 %..i, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14089)
  %.sroa.478.1.insert.ext = zext i8 %..i to i16, !dbg !14144
  %.sroa.478.2.insert.ext = zext i8 %.3.i to i16, !dbg !14144
  %.sroa.478.2.insert.shift = shl nuw i16 %.sroa.478.2.insert.ext, 8, !dbg !14144
  %.sroa.478.2.insert.insert = or disjoint i16 %.sroa.478.2.insert.shift, %.sroa.478.1.insert.ext, !dbg !14144
    #dbg_value(i8 1, !14103, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14121)
  %.sroa.8.sroa.0.0.insert.ext28 = zext i16 %.sroa.478.2.insert.insert to i40, !dbg !14145 ; 2 uses
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext28, !14103, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14121)
  br i1 %i.h, label %.thread, label %bb.j, !dbg !14146

.thread:                                          ; preds = %bb.e, %bb.g
  %.sroa.8.sroa.0.0111 = phi i40 [ %.sroa.8.sroa.0.0.insert.ext28, %bb.g ], [ 0, %bb.e ]
  %i.j = tail call noundef i8 @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment(i8 noundef %.val101), !dbg !14147 ; 2 uses
    #dbg_value(i8 %i.j, !14105, !DIExpression(), !14125)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14092)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14092)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14093)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14093)
  %..i104 = tail call i8 @llvm.umin.i8(i8 %i.j, i8 %i.c), !dbg !14148 ; 2 uses
  %.3.i105 = tail call i8 @llvm.umax.i8(i8 %i.j, i8 %i.c), !dbg !14148 ; 2 uses
    #dbg_value(i8 %.3.i105, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14092)
    #dbg_value(i8 %..i104, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14092)
    #dbg_value(i8 %..i104, !14106, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14126)
    #dbg_value(i8 %.3.i105, !14106, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14126)
  br i1 %i.g, label %bb.h, label %bb.i, !dbg !14149

bb.h:                                             ; preds = %.thread
  %.sroa.583.0.insert.ext = zext i8 %.3.i105 to i24, !dbg !14150
  %.sroa.583.0.insert.shift = shl nuw i24 %.sroa.583.0.insert.ext, 16, !dbg !14150
  %.sroa.482.0.insert.ext = zext i8 %..i104 to i24, !dbg !14150
  %.sroa.482.0.insert.shift = shl nuw nsw i24 %.sroa.482.0.insert.ext, 8, !dbg !14150
  %.sroa.482.0.insert.insert = or disjoint i24 %.sroa.583.0.insert.shift, %.sroa.482.0.insert.shift, !dbg !14150
  %.sroa.081.0.insert.insert = or disjoint i24 %.sroa.482.0.insert.insert, 1, !dbg !14150
  %.sroa.8.sroa.0.2.insert.ext61 = zext i24 %.sroa.081.0.insert.insert to i40, !dbg !14150
  %.sroa.8.sroa.0.2.insert.shift62 = shl nuw i40 %.sroa.8.sroa.0.2.insert.ext61, 16, !dbg !14150
  %.sroa.8.sroa.0.2.insert.insert64 = or disjoint i40 %.sroa.8.sroa.0.2.insert.shift62, %.sroa.8.sroa.0.0111, !dbg !14150
    #dbg_value(i40 %.sroa.8.sroa.0.2.insert.insert64, !14103, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14121)
  br label %bb.j, !dbg !14151

bb.i:                                             ; preds = %.thread
  %.sroa.480.1.insert.ext = zext i8 %..i104 to i16, !dbg !14152
  %.sroa.480.2.insert.ext = zext i8 %.3.i105 to i16, !dbg !14152
  %.sroa.480.2.insert.shift = shl nuw i16 %.sroa.480.2.insert.ext, 8, !dbg !14152
  %.sroa.480.2.insert.insert = or disjoint i16 %.sroa.480.2.insert.shift, %.sroa.480.1.insert.ext, !dbg !14152
    #dbg_value(i8 1, !14103, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14121)
  %.sroa.8.sroa.0.0.insert.ext38 = zext i16 %.sroa.480.2.insert.insert to i40, !dbg !14153
    #dbg_value(i40 %.sroa.8.sroa.0.0.insert.ext38, !14103, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14121)
  br label %bb.j, !dbg !14151

bb.j:                                             ; preds = %bb.a, %bb.h, %bb.i, %bb.g, %bb.d
  %.sroa.8.sroa.0.1 = phi i40 [ %.sroa.8.sroa.0.0.insert.ext28, %bb.g ], [ %.sroa.8.sroa.0.0.insert.ext18, %bb.d ], [ %.sroa.8.sroa.0.0.insert.ext38, %bb.i ], [ %.sroa.8.sroa.0.2.insert.insert64, %bb.h ], [ 0, %bb.a ], !dbg !14111
  %.sroa.0.1 = phi i8 [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.a ], !dbg !14111
    #dbg_value(i8 %.sroa.0.1, !14103, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14121)
    #dbg_value(i40 %.sroa.8.sroa.0.1, !14103, !DIExpression(DW_OP_LLVM_fragment, 8, 40), !14121)
  %.sroa.8.0.insert.ext = zext i40 %.sroa.8.sroa.0.1 to i48, !dbg !14154
  %.sroa.8.0.insert.shift = shl nuw i48 %.sroa.8.0.insert.ext, 8, !dbg !14154
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.1 to i48, !dbg !14154
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.0.0.insert.ext, !dbg !14154
  ret i48 %.sroa.0.0.insert.insert, !dbg !14154
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval13is_contiguousB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !465 {
bb.a:
    #dbg_value(ptr %0, !2548, !DIExpression(), !14159)
    #dbg_value(ptr %1, !2549, !DIExpression(), !14159)
    #dbg_value(i32 1, !2555, !DIExpression(), !14161)
  %.val8 = load i8, ptr %0, align 1, !dbg !14170, !noundef !658
    #dbg_value(i8 %.val8, !2550, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14162)
    #dbg_value(i8 %.val8, !2561, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14164)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14171
  %.val10 = load i8, ptr %i.a, align 1, !dbg !14171, !noundef !658
    #dbg_value(i8 %.val10, !2551, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14165)
    #dbg_value(i8 %.val10, !2564, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14167)
  %.val = load i8, ptr %1, align 1, !dbg !14172, !noundef !658
    #dbg_value(i8 %.val, !2552, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14168)
    #dbg_value(i8 %.val, !2562, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14164)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14173
  %.val9 = load i8, ptr %i.b, align 1, !dbg !14173, !noundef !658
    #dbg_value(i8 %.val9, !2553, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14169)
    #dbg_value(i8 %.val9, !2565, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14167)
    #dbg_value(i8 %.val8, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14156)
    #dbg_value(i8 %.val8, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14156)
    #dbg_value(i8 %.val, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14156)
    #dbg_value(i8 %.val, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14156)
    #dbg_value(ptr undef, !2567, !DIExpression(DW_OP_deref), !14156)
    #dbg_value(ptr undef, !2568, !DIExpression(DW_OP_deref), !14156)
  %i.c = tail call i8 @llvm.umax.i8(i8 %.val, i8 %.val8), !dbg !14174
  %..i = zext i8 %i.c to i32, !dbg !14174
    #dbg_value(i8 %.val10, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14158)
    #dbg_value(i8 %.val10, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14158)
    #dbg_value(i8 %.val9, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14158)
    #dbg_value(i8 %.val9, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14158)
    #dbg_value(ptr undef, !2572, !DIExpression(DW_OP_deref), !14158)
    #dbg_value(ptr undef, !2573, !DIExpression(DW_OP_deref), !14158)
  %i.d = tail call i8 @llvm.umin.i8(i8 %.val9, i8 %.val10), !dbg !14175
  %..i11 = zext i8 %i.d to i32, !dbg !14175
    #dbg_value(i32 %..i11, !2558, !DIExpression(), !14161)
  %i.e = add nuw nsw i32 %..i11, 1, !dbg !14176
  %i.f = icmp samesign uge i32 %i.e, %..i, !dbg !14163
  ret i1 %i.f, !dbg !14177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval21is_intersection_emptyB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !450 {
bb.a:
    #dbg_value(ptr poison, !2514, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14179)
    #dbg_value(ptr poison, !2518, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14179)
    #dbg_value(ptr %0, !2506, !DIExpression(), !14184)
    #dbg_value(ptr %1, !2508, !DIExpression(), !14184)
  %.val6 = load i8, ptr %0, align 1, !dbg !14191, !noundef !658
    #dbg_value(i8 %.val6, !2509, !DIExpression(), !14185)
    #dbg_value(i8 %.val6, !2520, !DIExpression(), !14187)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14192
  %.val8 = load i8, ptr %i.a, align 1, !dbg !14192, !noundef !658
    #dbg_value(i8 %.val8, !2510, !DIExpression(), !14185)
    #dbg_value(i8 %.val8, !2525, !DIExpression(), !14189)
  %.val = load i8, ptr %1, align 1, !dbg !14193, !noundef !658
    #dbg_value(i8 %.val, !2511, !DIExpression(), !14190)
    #dbg_value(i8 %.val, !2523, !DIExpression(), !14187)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14194
  %.val7 = load i8, ptr %i.b, align 1, !dbg !14194, !noundef !658
    #dbg_value(i8 %.val7, !2512, !DIExpression(), !14190)
    #dbg_value(i8 %.val7, !2526, !DIExpression(), !14189)
    #dbg_value(i8 %.val6, !2528, !DIExpression(), !14181)
    #dbg_value(i8 %.val6, !2528, !DIExpression(), !14181)
    #dbg_value(i8 %.val, !2530, !DIExpression(), !14181)
    #dbg_value(i8 %.val, !2530, !DIExpression(), !14181)
    #dbg_value(ptr undef, !2528, !DIExpression(DW_OP_deref), !14181)
    #dbg_value(ptr undef, !2530, !DIExpression(DW_OP_deref), !14181)
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %.val, i8 %.val6), !dbg !14195
    #dbg_value(i8 %.val8, !2534, !DIExpression(), !14183)
    #dbg_value(i8 %.val8, !2534, !DIExpression(), !14183)
    #dbg_value(i8 %.val7, !2535, !DIExpression(), !14183)
    #dbg_value(i8 %.val7, !2535, !DIExpression(), !14183)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14183)
    #dbg_value(ptr undef, !2535, !DIExpression(DW_OP_deref), !14183)
  %..i9 = tail call noundef i8 @llvm.umin.i8(i8 %.val7, i8 %.val8), !dbg !14196
    #dbg_value(ptr undef, !2518, !DIExpression(), !14179)
    #dbg_value(ptr undef, !2514, !DIExpression(), !14179)
  %i.c = icmp ugt i8 %..i, %..i9, !dbg !14197
  ret i1 %i.c, !dbg !14198
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden range(i24 0, -254) i24 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval5unionB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !14201 {
bb.a:
    #dbg_value(ptr %0, !14230, !DIExpression(), !14235)
    #dbg_value(ptr %1, !14231, !DIExpression(), !14235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14236), !dbg !14250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14237), !dbg !14250
    #dbg_value(ptr %0, !2548, !DIExpression(), !14206)
    #dbg_value(ptr %1, !2549, !DIExpression(), !14206)
    #dbg_value(i32 1, !2555, !DIExpression(), !14208)
  %.val8.i = load i8, ptr %0, align 1, !dbg !14251, !alias.scope !14236, !noalias !14237, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val8.i, !2550, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14209)
    #dbg_value(i8 %.val8.i, !2561, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14211)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14252
  %.val10.i = load i8, ptr %i.a, align 1, !dbg !14252, !alias.scope !14236, !noalias !14237, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val10.i, !2551, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14212)
    #dbg_value(i8 %.val10.i, !2564, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14214)
  %.val.i = load i8, ptr %1, align 1, !dbg !14253, !alias.scope !14237, !noalias !14236, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val.i, !2552, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14215)
    #dbg_value(i8 %.val.i, !2562, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14211)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14254
  %.val9.i = load i8, ptr %i.b, align 1, !dbg !14254, !alias.scope !14237, !noalias !14236, !noundef !658 ; 2 uses
    #dbg_value(i8 %.val9.i, !2553, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14216)
    #dbg_value(i8 %.val9.i, !2565, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14214)
    #dbg_value(i8 %.val8.i, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14218)
    #dbg_value(i8 %.val8.i, !2567, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14218)
    #dbg_value(i8 %.val.i, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14218)
    #dbg_value(i8 %.val.i, !2568, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14218)
    #dbg_value(ptr undef, !2567, !DIExpression(DW_OP_deref), !14218)
    #dbg_value(ptr undef, !2568, !DIExpression(DW_OP_deref), !14218)
  %i.c = tail call i8 @llvm.umax.i8(i8 %.val.i, i8 %.val8.i), !dbg !14255
  %..i.i = zext i8 %i.c to i32, !dbg !14255
    #dbg_value(i8 %.val10.i, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14220)
    #dbg_value(i8 %.val10.i, !2572, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14220)
    #dbg_value(i8 %.val9.i, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14220)
    #dbg_value(i8 %.val9.i, !2573, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !14220)
    #dbg_value(ptr undef, !2572, !DIExpression(DW_OP_deref), !14220)
    #dbg_value(ptr undef, !2573, !DIExpression(DW_OP_deref), !14220)
  %i.d = tail call i8 @llvm.umin.i8(i8 %.val9.i, i8 %.val10.i), !dbg !14256
  %..i11.i = zext i8 %i.d to i32, !dbg !14256
    #dbg_value(i32 %..i11.i, !2558, !DIExpression(), !14208)
  %i.e = add nuw nsw i32 %..i11.i, 1, !dbg !14257
  %.not = icmp samesign ult i32 %i.e, %..i.i, !dbg !14258
  br i1 %.not, label %bb.c, label %bb.b, !dbg !14259

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 %.val8.i, !14238, !DIExpression(), !14242)
    #dbg_value(i8 %.val.i, !14239, !DIExpression(), !14242)
    #dbg_value(i8 %.val8.i, !2534, !DIExpression(), !14223)
    #dbg_value(i8 %.val8.i, !2534, !DIExpression(), !14223)
    #dbg_value(i8 %.val.i, !2535, !DIExpression(), !14223)
    #dbg_value(i8 %.val.i, !2535, !DIExpression(), !14223)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14223)
    #dbg_value(ptr undef, !2535, !DIExpression(DW_OP_deref), !14223)
  %..i = tail call noundef i8 @llvm.umin.i8(i8 %.val.i, i8 %.val8.i), !dbg !14260 ; 2 uses
    #dbg_value(i8 %..i, !14232, !DIExpression(), !14243)
    #dbg_value(i8 %.val10.i, !14244, !DIExpression(), !14248)
    #dbg_value(i8 %.val9.i, !14245, !DIExpression(), !14248)
    #dbg_value(i8 %.val10.i, !2528, !DIExpression(), !14226)
    #dbg_value(i8 %.val10.i, !2528, !DIExpression(), !14226)
    #dbg_value(i8 %.val9.i, !2530, !DIExpression(), !14226)
    #dbg_value(i8 %.val9.i, !2530, !DIExpression(), !14226)
    #dbg_value(ptr undef, !2528, !DIExpression(DW_OP_deref), !14226)
    #dbg_value(ptr undef, !2530, !DIExpression(DW_OP_deref), !14226)
  %..i12 = tail call noundef i8 @llvm.umax.i8(i8 %.val9.i, i8 %.val10.i), !dbg !14261 ; 2 uses
    #dbg_value(i8 %..i12, !14233, !DIExpression(), !14249)
    #dbg_value(i8 %..i, !2349, !DIExpression(), !14228)
    #dbg_value(i8 %..i, !2349, !DIExpression(), !14228)
    #dbg_value(i8 %..i12, !2350, !DIExpression(), !14228)
    #dbg_value(i8 %..i12, !2350, !DIExpression(), !14228)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14229)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14229)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14228)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14228)
  %..i13 = tail call i8 @llvm.umin.i8(i8 %..i, i8 %..i12), !dbg !14262
  %.3.i = tail call i8 @llvm.umax.i8(i8 %..i, i8 %..i12), !dbg !14262
    #dbg_value(i8 %.3.i, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14229)
    #dbg_value(i8 %..i13, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14229)
  br label %bb.c, !dbg !14263

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i8 [ %.3.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.0 = phi i8 [ %..i13, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !14235
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.0 to i24, !dbg !14263
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16, !dbg !14263
  %.sroa.3.0.insert.ext = zext i8 %.sroa.3.0 to i24, !dbg !14263
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8, !dbg !14263
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.shift, %.sroa.4.0.insert.shift, !dbg !14263
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i24, !dbg !14263
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext, !dbg !14263
  ret i24 %.sroa.0.0.insert.insert, !dbg !14263
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i8, i8 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval6createB6_(i8 noundef %0, i8 noundef %1) unnamed_addr #6 !dbg !433 {
bb.a:
    #dbg_value(i8 %0, !2349, !DIExpression(), !14264)
    #dbg_value(i8 %0, !2349, !DIExpression(), !14264)
    #dbg_value(i8 %1, !2350, !DIExpression(), !14264)
    #dbg_value(i8 %1, !2350, !DIExpression(), !14264)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14265)
    #dbg_value(i8 0, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14265)
    #dbg_value(ptr undef, !2349, !DIExpression(DW_OP_deref), !14264)
    #dbg_value(ptr undef, !2350, !DIExpression(DW_OP_deref), !14264)
  %. = tail call i8 @llvm.umin.i8(i8 %0, i8 %1), !dbg !14266
  %.3 = tail call i8 @llvm.umax.i8(i8 %0, i8 %1), !dbg !14266
    #dbg_value(i8 %.3, !2351, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !14265)
    #dbg_value(i8 %., !2351, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14265)
  %i.a = insertvalue { i8, i8 } poison, i8 %., 0, !dbg !14267
  %i.b = insertvalue { i8, i8 } %i.a, i8 %.3, 1, !dbg !14267
  ret { i8, i8 } %i.b, !dbg !14267
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i24 0, -254) i24 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval9intersectB6_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !14270 {
bb.a:
    #dbg_value(ptr poison, !2545, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14272)
    #dbg_value(ptr poison, !2546, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14272)
    #dbg_value(ptr %0, !14279, !DIExpression(), !14284)
    #dbg_value(ptr %1, !14280, !DIExpression(), !14284)
  %.val7 = load i8, ptr %0, align 1, !dbg !14297, !noundef !658
    #dbg_value(i8 %.val7, !14285, !DIExpression(), !14289)
  %.val = load i8, ptr %1, align 1, !dbg !14298, !noundef !658
    #dbg_value(i8 %.val, !14286, !DIExpression(), !14289)
    #dbg_value(i8 %.val7, !2528, !DIExpression(), !14275)
    #dbg_value(i8 %.val7, !2528, !DIExpression(), !14275)
    #dbg_value(i8 %.val, !2530, !DIExpression(), !14275)
    #dbg_value(i8 %.val, !2530, !DIExpression(), !14275)
    #dbg_value(ptr undef, !2528, !DIExpression(DW_OP_deref), !14275)
    #dbg_value(ptr undef, !2530, !DIExpression(DW_OP_deref), !14275)
  %..i = tail call noundef i8 @llvm.umax.i8(i8 %.val, i8 %.val7), !dbg !14299 ; 2 uses
    #dbg_value(i8 %..i, !14281, !DIExpression(), !14290)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !14300
  %.val9 = load i8, ptr %i.a, align 1, !dbg !14300, !noundef !658
    #dbg_value(i8 %.val9, !14291, !DIExpression(), !14295)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !14301
  %.val8 = load i8, ptr %i.b, align 1, !dbg !14301, !noundef !658
    #dbg_value(i8 %.val8, !14292, !DIExpression(), !14295)
    #dbg_value(i8 %.val9, !2534, !DIExpression(), !14278)
    #dbg_value(i8 %.val9, !2534, !DIExpression(), !14278)
    #dbg_value(i8 %.val8, !2535, !DIExpression(), !14278)
    #dbg_value(i8 %.val8, !2535, !DIExpression(), !14278)
    #dbg_value(ptr undef, !2534, !DIExpression(DW_OP_deref), !14278)
    #dbg_value(ptr undef, !2535, !DIExpression(DW_OP_deref), !14278)
  %..i10 = tail call noundef i8 @llvm.umin.i8(i8 %.val8, i8 %.val9), !dbg !14302 ; 2 uses
    #dbg_value(i8 %..i10, !14282, !DIExpression(), !14296)
    #dbg_value(ptr undef, !14281, !DIExpression(DW_OP_deref), !14290)
    #dbg_value(ptr undef, !14282, !DIExpression(DW_OP_deref), !14296)
    #dbg_value(ptr undef, !2546, !DIExpression(), !14272)
    #dbg_value(ptr undef, !2545, !DIExpression(), !14272)
  %.not = icmp ule i8 %..i, %..i10, !dbg !14303
  %.sroa.4.0.insert.ext = zext i8 %..i10 to i24, !dbg !14304
  %.sroa.4.0.insert.shift = shl nuw i24 %.sroa.4.0.insert.ext, 16, !dbg !14304
  %.sroa.3.0.insert.ext = zext i8 %..i to i24, !dbg !14304
  %.sroa.3.0.insert.shift = shl nuw nsw i24 %.sroa.3.0.insert.ext, 8, !dbg !14304
  %.sroa.3.0.insert.insert = or disjoint i24 %.sroa.4.0.insert.shift, %.sroa.3.0.insert.shift, !dbg !14304
  %.sroa.0.0.insert.ext = zext i1 %.not to i24, !dbg !14304
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.3.0.insert.insert, %.sroa.0.0.insert.ext, !dbg !14304
  ret i24 %.sroa.0.0.insert.insert, !dbg !14304
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval10differenceB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14312 {
bb.a:
    #dbg_value(ptr poison, !14369, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14315)
    #dbg_value(ptr poison, !14370, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14315)
    #dbg_value(ptr poison, !2587, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14317)
    #dbg_value(ptr poison, !2588, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14317)
    #dbg_declare(ptr %0, !14364, !DIExpression(), !14372)
    #dbg_value(ptr %1, !14360, !DIExpression(), !14373)
    #dbg_value(ptr %2, !14361, !DIExpression(), !14373)
  %.val21 = load i32, ptr %1, align 4, !dbg !14401, !range !1901, !noundef !658 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !14401
  %.val22 = load i32, ptr %i.a, align 4, !dbg !14401, !range !1901, !noundef !658 ; 7 uses
  %.val23 = load i32, ptr %2, align 4, !dbg !14401, !range !1901, !noundef !658 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4, !dbg !14401
  %.val24 = load i32, ptr %i.b, align 4, !dbg !14401, !range !1901, !noundef !658 ; 5 uses
    #dbg_value(ptr poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14323)
    #dbg_value(ptr poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14325)
    #dbg_value(ptr poison, !2591, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14327)
    #dbg_value(ptr poison, !2591, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14329)
    #dbg_value(ptr poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14329)
    #dbg_value(ptr poison, !2591, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14325)
    #dbg_value(ptr poison, !2590, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14327)
    #dbg_value(ptr poison, !2591, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14323)
    #dbg_value(ptr poison, !14374, !DIExpression(), !14330)
    #dbg_value(ptr poison, !14375, !DIExpression(), !14330)
    #dbg_value(i32 %.val22, !14377, !DIExpression(), !14331)
    #dbg_value(i32 %.val24, !14379, !DIExpression(), !14332)
    #dbg_value(ptr undef, !14376, !DIExpression(DW_OP_deref), !14331)
    #dbg_value(ptr undef, !14378, !DIExpression(DW_OP_deref), !14332)
    #dbg_value(ptr undef, !2591, !DIExpression(), !14327)
    #dbg_value(ptr undef, !2590, !DIExpression(), !14327)
  %.not.i = icmp samesign ule i32 %.val23, %.val21, !dbg !14402
    #dbg_value(ptr undef, !14379, !DIExpression(DW_OP_deref), !14332)
    #dbg_value(ptr undef, !2591, !DIExpression(), !14323)
    #dbg_value(ptr undef, !2590, !DIExpression(), !14323)
  %.not12.i = icmp samesign ule i32 %.val21, %.val24
  %or.cond.not15.i = select i1 %.not.i, i1 %.not12.i, i1 false
    #dbg_value(ptr undef, !14377, !DIExpression(DW_OP_deref), !14331)
    #dbg_value(ptr undef, !2591, !DIExpression(), !14329)
    #dbg_value(ptr undef, !2590, !DIExpression(), !14329)
  %.not13.i = icmp samesign ule i32 %.val23, %.val22
  %or.cond14.not.i = select i1 %or.cond.not15.i, i1 %.not13.i, i1 false, !dbg !14403
  %i.c = icmp samesign ule i32 %.val22, %.val24, !dbg !14403
  %.sroa.0.0.i = select i1 %or.cond14.not.i, i1 %i.c, i1 false, !dbg !14403
  br i1 %.sroa.0.0.i, label %bb.c, label %bb.b, !dbg !14404

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !2587, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14335)
    #dbg_value(ptr poison, !2588, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14335)
    #dbg_value(ptr %1, !2594, !DIExpression(), !14336)
    #dbg_value(ptr %2, !2595, !DIExpression(), !14336)
    #dbg_value(i32 %.val21, !2596, !DIExpression(), !14337)
    #dbg_value(i32 %.val21, !2601, !DIExpression(), !14339)
    #dbg_value(i32 %.val22, !2597, !DIExpression(), !14337)
    #dbg_value(i32 %.val22, !2606, !DIExpression(), !14341)
    #dbg_value(i32 %.val23, !2598, !DIExpression(), !14342)
    #dbg_value(i32 %.val23, !2604, !DIExpression(), !14339)
    #dbg_value(i32 %.val24, !2599, !DIExpression(), !14342)
    #dbg_value(i32 %.val24, !2607, !DIExpression(), !14341)
    #dbg_value(ptr undef, !2609, !DIExpression(DW_OP_deref), !14344)
    #dbg_value(ptr undef, !2610, !DIExpression(DW_OP_deref), !14344)
  %..i.i = tail call noundef range(i32 0, 1114112) i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val23, i32 range(i32 0, 1114112) %.val21), !dbg !14405
    #dbg_value(ptr undef, !2614, !DIExpression(DW_OP_deref), !14346)
    #dbg_value(ptr undef, !2615, !DIExpression(DW_OP_deref), !14346)
  %..i9.i = tail call noundef range(i32 0, 1114112) i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val24, i32 range(i32 0, 1114112) %.val22), !dbg !14406
    #dbg_value(ptr undef, !2588, !DIExpression(), !14335)
    #dbg_value(ptr undef, !2587, !DIExpression(), !14335)
  %i.d = icmp samesign ugt i32 %..i.i, %..i9.i, !dbg !14407
  br i1 %i.d, label %bb.e, label %bb.d, !dbg !14408

bb.c:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4, !dbg !14409
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14409
  store i32 -1, ptr %i.e, align 4, !dbg !14409
  br label %bb.l, !dbg !14410

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !2588, !DIExpression(), !14317)
    #dbg_value(ptr undef, !2587, !DIExpression(), !14317)
  %.not = icmp samesign ugt i32 %.val23, %.val21, !dbg !14411 ; 2 uses
    #dbg_value(i1 %.not, !14362, !DIExpression(DW_OP_not, DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14383)
    #dbg_value(ptr undef, !14370, !DIExpression(), !14315)
    #dbg_value(ptr undef, !14369, !DIExpression(), !14315)
  %i.f = icmp samesign ult i32 %.val24, %.val22, !dbg !14412 ; 2 uses
    #dbg_value(i1 %i.f, !14363, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14384)
  br i1 %.not, label %bb.h, label %bb.f, !dbg !14413

bb.e:                                             ; preds = %bb.b
  store i32 %.val21, ptr %0, align 4, !dbg !14414
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14414
  store i32 %.val22, ptr %i.g, align 4, !dbg !14414
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14414
  store i32 -1, ptr %i.h, align 4, !dbg !14414
  br label %bb.l, !dbg !14410

bb.f:                                             ; preds = %bb.d
  br i1 %i.f, label %.thread, label %bb.g, !dbg !14415, !prof !2390

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3028, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3030) #30, !dbg !14416
  unreachable, !dbg !14416

.thread:                                          ; preds = %bb.f
  store i32 -1, ptr %0, align 4, !dbg !14417
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14417
  store i32 -1, ptr %i.i, align 4, !dbg !14417
  br label %bb.i, !dbg !14418

bb.h:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14417
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14417
  store i32 -1, ptr %i.k, align 4, !dbg !14417
  %i.l = tail call noundef i32 @_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9decrement(i32 noundef %.val23), !dbg !14419 ; 2 uses
    #dbg_value(i32 %i.l, !14365, !DIExpression(), !14385)
    #dbg_value(i32 0, !2340, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14348)
    #dbg_value(i32 0, !2340, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14348)
    #dbg_value(ptr undef, !2337, !DIExpression(DW_OP_deref), !14349)
    #dbg_value(ptr undef, !2339, !DIExpression(DW_OP_deref), !14349)
  %..i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %.val21, i32 range(i32 0, 1114112) %i.l), !dbg !14420
  %.3.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %.val21, i32 range(i32 0, 1114112) %i.l), !dbg !14420
    #dbg_value(i32 %.3.i, !2340, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14348)
    #dbg_value(i32 %..i, !2340, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14348)
  store i32 %..i, ptr %0, align 4, !dbg !14421
  store i32 %.3.i, ptr %i.j, align 4, !dbg !14421
  br i1 %i.f, label %bb.i, label %bb.l, !dbg !14418

bb.i:                                             ; preds = %.thread, %bb.h
  %i.m = tail call noundef i32 @_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment(i32 noundef %.val24), !dbg !14422 ; 2 uses
    #dbg_value(i32 %i.m, !14366, !DIExpression(), !14386)
    #dbg_value(i32 0, !2340, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14351)
    #dbg_value(i32 0, !2340, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14351)
    #dbg_value(ptr undef, !2337, !DIExpression(DW_OP_deref), !14352)
    #dbg_value(ptr undef, !2339, !DIExpression(DW_OP_deref), !14352)
  %..i27 = tail call i32 @llvm.umin.i32(i32 range(i32 0, 1114112) %i.m, i32 range(i32 0, 1114112) %.val22), !dbg !14423 ; 2 uses
  %.3.i28 = tail call i32 @llvm.umax.i32(i32 range(i32 0, 1114112) %i.m, i32 range(i32 0, 1114112) %.val22), !dbg !14423 ; 2 uses
    #dbg_value(i32 %.3.i28, !2340, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14351)
    #dbg_value(i32 %..i27, !2340, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14351)
    #dbg_value(i32 %..i27, !14367, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !14387)
    #dbg_value(i32 %.3.i28, !14367, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !14387)
    #dbg_value(ptr %0, !14389, !DIExpression(), !14395)
    #dbg_value(ptr %0, !14396, !DIExpression(), !14400)
  br i1 %.not, label %bb.j, label %bb.k, !dbg !14424

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14425
  store i32 %..i27, ptr %i.n, align 4, !dbg !14425
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !14425
  store i32 %.3.i28, ptr %i.o, align 4, !dbg !14425
  br label %bb.l, !dbg !14426

bb.k:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14427
  store i32 %..i27, ptr %0, align 4, !dbg !14428
end_hunk_0
