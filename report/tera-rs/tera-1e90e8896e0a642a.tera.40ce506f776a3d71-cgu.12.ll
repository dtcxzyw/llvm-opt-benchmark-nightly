Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.12?download=true
inline.NumInlined: 642
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedxE3newB4_:bb.a
  store i64 %1, ptr %i.a, align 8, !dbg !11957
  store ptr %i.a, ptr %0, align 8, !dbg !11958
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11958
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !dbg !11958
  ret void, !dbg !11959
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs5yXxDE1DkoT_4tera7contextNtB2_7Context12contains_key(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !11960 {
bb.a:
    #dbg_value(ptr %0, !11966, !DIExpression(), !11969)
    #dbg_value(ptr %1, !11967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11969)
    #dbg_value(ptr %1, !11970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11979)
    #dbg_value(i64 %2, !11967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11969)
    #dbg_value(i64 %2, !11970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11979)
    #dbg_value(ptr %0, !11976, !DIExpression(), !11979)
  %i.a = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE3geteEB1x_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11988
    #dbg_value(ptr poison, !11981, !DIExpression(), !11987)
  %i.b = icmp ne ptr %i.a, null, !dbg !11989
  ret i1 %i.b, !dbg !11990
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMNtCs5yXxDE1DkoT_4tera7contextNtB2_7Context3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !11991 {
bb.a:
    #dbg_value(ptr %0, !11995, !DIExpression(), !11998)
    #dbg_value(ptr %1, !11996, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11998)
    #dbg_value(i64 %2, !11996, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11998)
  %i.a = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE3geteEB1x_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11999
  ret ptr %i.a, !dbg !12000
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yXxDE1DkoT_4tera7contextNtB2_7Context6extend(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12001 {
bb.a:
    #dbg_value(ptr %0, !12015, !DIExpression(), !12018)
    #dbg_declare(ptr %1, !12016, !DIExpression(), !12019)
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6appendB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b, !dbg !12033

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !12020, !DIExpression(), !12004)
    #dbg_value(ptr %1, !12027, !DIExpression(), !12007)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera7context7ContextEBF_.exit unwind label %bb.d, !dbg !12034

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !12020, !DIExpression(), !12009)
    #dbg_value(ptr %1, !12027, !DIExpression(), !12011)
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !12035
  ret void, !dbg !12036

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !12037
  unreachable, !dbg !12037

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera7context7ContextEBF_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !12037
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5yXxDE1DkoT_4tera7contextNtB2_7Context6remove(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !dbg !12038 {
bb.a:
    #dbg_value(ptr %1, !12042, !DIExpression(), !12045)
    #dbg_value(ptr %2, !12043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12045)
    #dbg_value(i64 %3, !12043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12045)
  tail call void @_RINvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6removeeEB1x_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !12046
  ret void, !dbg !12047
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yXxDE1DkoT_4tera5value3keyNtB2_3Key8as_value(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(32) %1) unnamed_addr #0 !dbg !12055 {
bb.a:
    #dbg_value(ptr %1, !12066, !DIExpression(), !12075)
  %i.a = load i8, ptr %1, align 16, !dbg !12118, !range !2542, !noundef !1394
  switch i8 %i.a, label %default.unreachable13 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ], !dbg !12119

default.unreachable13:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !12067, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12076)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !12120
  %i.c = load i8, ptr %i.b, align 1, !dbg !12120, !range !2544, !noundef !1394
    #dbg_value(i8 %i.c, !12077, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12083)
  store i8 4, ptr %0, align 8, !dbg !12121
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !12121
  store i8 %i.c, ptr %.sroa.47.0..sroa_idx, align 1, !dbg !12121
  br label %bb.i, !dbg !12122

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !12068, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12084)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12123
  %i.e = load i64, ptr %i.d, align 8, !dbg !12123, !noundef !1394
    #dbg_value(i64 %i.e, !12085, !DIExpression(), !12091)
  store i8 5, ptr %0, align 8, !dbg !12124
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12124
  store i64 %i.e, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !12124
  br label %bb.i, !dbg !12125

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !12069, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12092)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12126
  %i.g = load i64, ptr %i.f, align 8, !dbg !12126, !noundef !1394
    #dbg_value(i64 %i.g, !12093, !DIExpression(), !12099)
  store i8 6, ptr %0, align 8, !dbg !12127
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12127
  store i64 %i.g, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !12127
  br label %bb.i, !dbg !12128

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !12070, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12100)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12129
  %i.i = load i128, ptr %i.h, align 16, !dbg !12129, !noundef !1394
  tail call void @_RNvXsl_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromoE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %i.i), !dbg !12130
  br label %bb.i, !dbg !12131

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !12071, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !12101)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12132
  %i.k = load i128, ptr %i.j, align 16, !dbg !12132, !noundef !1394
  tail call void @_RNvXsp_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromnE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i128 noundef %i.k), !dbg !12133
  br label %bb.i, !dbg !12134

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !12072, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12102)
    #dbg_value(ptr %1, !12103, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12107)
    #dbg_value(ptr %1, !12108, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12111)
    #dbg_value(ptr %1, !12112, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12115)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12135
  %i.m = load ptr, ptr %i.l, align 8, !dbg !12135, !nonnull !1394, !noundef !1394
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12135
  %i.o = load i64, ptr %i.n, align 16, !dbg !12135, !noundef !1394
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !12136
  tail call void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value13normal_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.o), !dbg !12137
  br label %bb.i, !dbg !12138

bb.h:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !12073, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !12117)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12139
  %i.r = load ptr, ptr %i.q, align 8, !dbg !12139, !nonnull !1394, !noundef !1394
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12139
  %i.t = load i64, ptr %i.s, align 16, !dbg !12139, !noundef !1394
  tail call void @_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value13normal_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t), !dbg !12140
  br label %bb.i, !dbg !12140

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !12141
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler10end_branch(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(488) %0, i64 noundef range(i64 0, 164703072086692426) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12144 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
    #dbg_value(ptr %0, !12225, !DIExpression(), !12230)
    #dbg_value(i64 %1, !12226, !DIExpression(), !12230)
    #dbg_value(i64 24, !12231, !DIExpression(), !12238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12311
    #dbg_value(ptr %0, !12239, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12245)
    #dbg_value(ptr %0, !12241, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12246)
    #dbg_value(ptr %0, !12247, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12250)
    #dbg_value(ptr %0, !12251, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12254)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !12312 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !12312, !noundef !1394 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !12312
  br i1 %i.d, label %.thread, label %bb.b, !dbg !12312

.thread:                                          ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8, !dbg !12313
  br label %bb.c, !dbg !12314

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !12312
  %i.f = add nsw i64 %i.c, -1, !dbg !12315        ; 3 uses
  store i64 %i.f, ptr %i.b, align 8, !dbg !12315
  %i.g = load i64, ptr %i.e, align 8, !dbg !12316, !range !3688, !noundef !1394
  %i.h = icmp samesign ult i64 %i.f, %i.g, !dbg !12317
    #dbg_value(i1 true, !12255, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12258)
  tail call void @llvm.assume(i1 %i.h), !dbg !12318
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !12319
  %i.j = load ptr, ptr %i.i, align 8, !dbg !12319, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.j, !12262, !DIExpression(), !12266)
    #dbg_value(i64 %i.f, !12263, !DIExpression(), !12266)
  %i.k = icmp ult i64 %i.c, 384307168202282327, !dbg !12320
  tail call void @llvm.assume(i1 %i.k), !dbg !12321
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.f, !dbg !12322
    #dbg_value(ptr %i.l, !12267, !DIExpression(), !12270)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !12323
  %.pr = load i64, ptr %i.a, align 8, !dbg !12311
  %.not = icmp eq i64 %.pr, -9223372036854775808, !dbg !12314
  br i1 %.not, label %bb.d, label %bb.c, !dbg !12314, !prof !4106

bb.c:                                             ; preds = %.thread, %bb.b
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #32
          to label %bb.n unwind label %bb.m, !dbg !12324

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12325 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !12325, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.n, !12227, !DIExpression(), !12271)
    #dbg_value(i64 %i.n, !12272, !DIExpression(), !12276)
    #dbg_value(i64 %i.n, !12277, !DIExpression(), !12281)
    #dbg_value(i64 %i.n, !12282, !DIExpression(), !12286)
    #dbg_value(ptr %0, !12273, !DIExpression(), !12287)
    #dbg_value(ptr %0, !12288, !DIExpression(), !12291)
    #dbg_value(ptr %0, !12292, !DIExpression(), !12295)
    #dbg_value(ptr %0, !12296, !DIExpression(), !12299)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12326
  %i.p = load i64, ptr %i.o, align 8, !dbg !12326, !noundef !1394
    #dbg_value(ptr poison, !12278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12281)
    #dbg_value(ptr poison, !12283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12286)
    #dbg_value(i64 %i.p, !12278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12281)
    #dbg_value(i64 %i.p, !12283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12286)
  %i.q = icmp ult i64 %i.n, %i.p, !dbg !12327
  br i1 %i.q, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, !dbg !12327

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12328
  %i.s = load ptr, ptr %i.r, align 8, !dbg !12328, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.s, !12278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12281)
    #dbg_value(ptr %i.s, !12283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12286)
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %i.n, !dbg !12329 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !dbg !12330, !range !3235, !noundef !1394
  %.off = add nsw i8 %i.u, -25, !dbg !12331
  %switch = icmp ult i8 %.off, 2, !dbg !12331
  br i1 %switch, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, !dbg !12331

bb.f:                                             ; preds = %bb.e
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !12271
    #dbg_value(ptr %.sroa.03.0, !12228, !DIExpression(), !12305)
  store i64 %1, ptr %.sroa.03.0, align 8, !dbg !12332
  %.pre = load i64, ptr %i.a, align 8, !dbg !12333, !range !2774, !alias.scope !12306 ; 3 uses
    #dbg_value(ptr %i.a, !2770, !DIExpression(), !12169)
  %i.v = icmp eq i64 %.pre, -1, !dbg !12333
  br i1 %i.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, label %bb.g, !dbg !12333

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.a, !2776, !DIExpression(), !12171)
  %i.w = icmp ne i64 %.pre, -9223372036854775807, !dbg !12334
  tail call void @llvm.assume(i1 %i.w), !dbg !12334
  %i.x = icmp sgt i64 %.pre, -1, !dbg !12334
  br i1 %i.x, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, !dbg !12334

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.a, !2781, !DIExpression(), !12173)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.k unwind label %bb.i, !dbg !12335

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.a, align 8, !dbg !12335, !alias.scope !12307 ; 2 uses
    #dbg_value(ptr poison, !2788, !DIExpression(), !12181)
    #dbg_value(ptr poison, !2794, !DIExpression(), !12183)
    #dbg_value(ptr poison, !2612, !DIExpression(), !12185)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12185)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12185)
    #dbg_value(ptr poison, !2629, !DIExpression(), !12187)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12187)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12187)
    #dbg_value(i64 8, !2798, !DIExpression(), !12189)
  %i.z = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.z, label %common.resume, label %bb.j, !dbg !12336

bb.j:                                             ; preds = %bb.i
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !dbg !12335, !alias.scope !12308, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val3.i.i.i, !2802, !DIExpression(), !12189)
  %i.aa = shl nuw i64 %.val3.i.i.i, 3, !dbg !12337
    #dbg_value(ptr %.val4.i.i.i, !2625, !DIExpression(), !12190)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12190)
    #dbg_value(i64 %i.aa, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12190)
    #dbg_value(ptr poison, !2652, !DIExpression(), !12192)
    #dbg_value(ptr poison, !2659, !DIExpression(), !12194)
    #dbg_value(ptr %.val4.i.i.i, !2656, !DIExpression(), !12192)
    #dbg_value(ptr %.val4.i.i.i, !2662, !DIExpression(), !12194)
    #dbg_value(ptr %.val4.i.i.i, !2665, !DIExpression(), !12196)
    #dbg_value(ptr %.val4.i.i.i, !2671, !DIExpression(), !12198)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12192)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12194)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12196)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12198)
    #dbg_value(i64 %i.aa, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12192)
    #dbg_value(i64 %i.aa, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12194)
    #dbg_value(i64 %i.aa, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12196)
    #dbg_value(i64 %i.aa, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12198)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !12338, !noalias !12309
  br label %common.resume, !dbg !12339

bb.k:                                             ; preds = %bb.h
  %.val.i.i.i = load i64, ptr %i.a, align 8, !dbg !12335, !alias.scope !12307 ; 2 uses
    #dbg_value(ptr poison, !2788, !DIExpression(), !12202)
    #dbg_value(ptr poison, !2794, !DIExpression(), !12204)
    #dbg_value(ptr poison, !2612, !DIExpression(), !12206)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12206)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12206)
    #dbg_value(ptr poison, !2629, !DIExpression(), !12208)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12208)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12208)
    #dbg_value(i64 8, !2798, !DIExpression(), !12210)
  %i.ab = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, label %bb.l, !dbg !12340

bb.l:                                             ; preds = %bb.k
  %.val2.i.i.i = load ptr, ptr %i.m, align 8, !dbg !12335, !alias.scope !12308, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val.i.i.i, !2802, !DIExpression(), !12210)
  %i.ac = shl nuw i64 %.val.i.i.i, 3, !dbg !12341
    #dbg_value(ptr %.val2.i.i.i, !2625, !DIExpression(), !12211)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12211)
    #dbg_value(i64 %i.ac, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12211)
    #dbg_value(ptr poison, !2652, !DIExpression(), !12213)
    #dbg_value(ptr poison, !2659, !DIExpression(), !12215)
    #dbg_value(ptr %.val2.i.i.i, !2656, !DIExpression(), !12213)
    #dbg_value(ptr %.val2.i.i.i, !2662, !DIExpression(), !12215)
    #dbg_value(ptr %.val2.i.i.i, !2665, !DIExpression(), !12217)
    #dbg_value(ptr %.val2.i.i.i, !2671, !DIExpression(), !12219)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12213)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12215)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12217)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12219)
    #dbg_value(i64 %i.ac, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12213)
    #dbg_value(i64 %i.ac, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12215)
    #dbg_value(i64 %i.ac, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12217)
    #dbg_value(i64 %i.ac, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12219)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !12342, !noalias !12310
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, !dbg !12343

common.resume:                                    ; preds = %bb.m, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.y, %bb.j ], [ %i.ad, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !12230

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.g, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12344
  ret void, !dbg !12345

bb.m:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #30
          to label %common.resume unwind label %bb.o, !dbg !12344

bb.n:                                             ; preds = %bb.c
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !12346
  unreachable, !dbg !12346
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12416 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 8                ; 9 uses
  %i.f = alloca [56 x i8], align 8                ; 3 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !13264, !DIExpression(), !13272)
    #dbg_value(ptr poison, !13292, !DIExpression(), !13299)
  %i.h = alloca [40 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !13264, !DIExpression(), !13305)
    #dbg_value(ptr poison, !13314, !DIExpression(), !13316)
    #dbg_value(ptr poison, !13317, !DIExpression(), !13321)
  %i.i = alloca [40 x i8], align 8                ; 9 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
    #dbg_value(ptr poison, !13264, !DIExpression(), !13327)
    #dbg_value(ptr poison, !13351, !DIExpression(), !13353)
    #dbg_value(ptr poison, !13354, !DIExpression(), !13361)
    #dbg_value(ptr poison, !13264, !DIExpression(), !13365)
    #dbg_value(ptr poison, !13351, !DIExpression(), !13366)
    #dbg_value(ptr poison, !13354, !DIExpression(), !13368)
  %i.l = alloca [240 x i8], align 8               ; 2 uses
  %i.m = alloca [80 x i8], align 8                ; 2 uses
    #dbg_declare(ptr poison, !13231, !DIExpression(DW_OP_LLVM_fragment, 0, 512), !13370)
  %i.n = alloca [56 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [136 x i8], align 8               ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [56 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [56 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [64 x i8], align 8                ; 4 uses
  %i.aa = alloca [56 x i8], align 8               ; 10 uses
  %i.ab = alloca [32 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 7 uses
  %i.ae = alloca [56 x i8], align 8               ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_node:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !18398
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !18398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !dbg !18399
  store i8 34, ptr %i.bq, align 8, !dbg !18398
  %i.kz = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v)
          to label %bb.dr unwind label %bb.do, !dbg !18400 ; 0 uses

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !18401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !dbg !18395
  br label %bb.dk, !dbg !18402

bb.ds:                                            ; preds = %bb.dp, %bb.dj
  %lpad.thr_comm787 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs) #30
          to label %.thread734 unwind label %bb.bg, !dbg !18395

bb.dt:                                            ; preds = %bb.dl, %bb.dk
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !18403 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !dbg !18403, !alias.scope !17741, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.lb, !4581, !DIExpression(), !16223)
  %i.lc = getelementptr inbounds nuw [48 x i8], ptr %i.lb, i64 %i.ks, !dbg !18404
    #dbg_value(ptr %i.lc, !4568, !DIExpression(), !16237)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lc, ptr noundef nonnull align 8 dereferenceable(48) %i.bp, i64 48, i1 false), !dbg !18405, !noalias !17741
  %i.ld = add i64 %i.ks, 1, !dbg !18406
  store i64 %i.ld, ptr %i.kr, align 8, !dbg !18406, !alias.scope !17741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !18407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !dbg !18408
  %i.le = getelementptr inbounds nuw i8, ptr %i.bo, i64 8, !dbg !18408
  store i64 0, ptr %i.le, align 8, !dbg !18408
  store i8 33, ptr %i.bo, align 8, !dbg !18408
  %i.lf = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v)
          to label %bb.du unwind label %.thread778, !dbg !18409

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !dbg !18410
  %i.lg = zext i32 %i.lf to i64, !dbg !18411
    #dbg_value(i64 %i.lg, !16713, !DIExpression(), !17744)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !18412 ; 5 uses
    #dbg_value(ptr %i.lh, !17000, !DIExpression(), !17745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !dbg !18413
  %i.li = getelementptr inbounds nuw i8, ptr %i.bn, i64 8, !dbg !18413
  store i64 %i.lg, ptr %i.li, align 8, !dbg !18413
  store i64 -9223372036854775806, ptr %i.bn, align 8, !dbg !18413
  call void @llvm.experimental.noalias.scope.decl(metadata !17746), !dbg !18414
    #dbg_value(ptr %i.lh, !4516, !DIExpression(), !16241)
    #dbg_value(ptr %i.lh, !4525, !DIExpression(), !16243)
    #dbg_declare(ptr %i.bn, !4521, !DIExpression(), !16244)
    #dbg_value(i64 24, !4530, !DIExpression(), !16247)
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !18415 ; 6 uses
  %i.lk = load i64, ptr %i.lj, align 8, !dbg !18415, !alias.scope !17746, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.lk, !4522, !DIExpression(), !16248)
    #dbg_value(i64 %i.lk, !4535, !DIExpression(), !16250)
    #dbg_value(ptr %i.lh, !4533, !DIExpression(), !16251)
  %i.ll = load i64, ptr %i.lh, align 8, !dbg !18416, !range !3688, !alias.scope !17746, !noundef !1394
  %i.lm = icmp eq i64 %i.lk, %i.ll, !dbg !18417
  br i1 %i.lm, label %bb.dv, label %bb.dy, !dbg !18417

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %bb.dy unwind label %bb.dw, !dbg !18418, !noalias !17747

bb.dw:                                            ; preds = %bb.dv
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn) #30
          to label %.thread746 unwind label %bb.dx, !dbg !18419, !noalias !17746

bb.dx:                                            ; preds = %bb.dw
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !18420, !noalias !17746
  unreachable, !dbg !18420

bb.dy:                                            ; preds = %bb.dv, %bb.du
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !18421 ; 3 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !dbg !18421, !alias.scope !17746, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.lq, !4538, !DIExpression(), !16250)
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %i.lq, i64 %i.lk, !dbg !18422
    #dbg_value(ptr %i.lr, !4523, !DIExpression(), !16256)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lr, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !dbg !18423, !noalias !17746
  %i.ls = add i64 %i.lk, 1, !dbg !18424
  store i64 %i.ls, ptr %i.lj, align 8, !dbg !18424, !alias.scope !17746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !dbg !18425
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bx, i64 88, !dbg !16918
  %.sroa.0317.0.copyload = load i64, ptr %i.lt, align 8, !dbg !16918 ; 2 uses
    #dbg_value(i64 %.sroa.0317.0.copyload, !16840, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17748)
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 96, !dbg !16918
  %.sroa.4318.0.copyload = load ptr, ptr %.sroa.4318.0..sroa_idx, align 8, !dbg !16918, !nonnull !1394, !noundef !1394 ; 4 uses
    #dbg_value(ptr %.sroa.4318.0.copyload, !16840, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17748)
  %.sroa.5319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 104, !dbg !16918
  %.sroa.5319.0.copyload = load i64, ptr %.sroa.5319.0..sroa_idx, align 8, !dbg !16918 ; 3 uses
    #dbg_value(i64 %.sroa.5319.0.copyload, !16840, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17748)
    #dbg_value(i64 %.sroa.0317.0.copyload, !16847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17749)
    #dbg_value(ptr %.sroa.4318.0.copyload, !16847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17749)
    #dbg_value(i64 %.sroa.5319.0.copyload, !16847, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17749)
    #dbg_value(ptr %.sroa.4318.0.copyload, !16849, !DIExpression(), !17750)
    #dbg_value(ptr %.sroa.4318.0.copyload, !16850, !DIExpression(), !17751)
    #dbg_value(ptr %.sroa.4318.0.copyload, !17494, !DIExpression(), !17753)
    #dbg_value(ptr undef, !16881, !DIExpression(), !16925)
    #dbg_value(i64 %.sroa.5319.0.copyload, !17495, !DIExpression(), !17753)
  %i.lu = icmp ult i64 %.sroa.5319.0.copyload, 57646075230342349, !dbg !18426
  call void @llvm.assume(i1 %i.lu), !dbg !18427
  %.idx899 = mul nuw nsw i64 %.sroa.5319.0.copyload, 160, !dbg !18428
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.4318.0.copyload, i64 %.idx899, !dbg !18428
    #dbg_value(ptr %i.lv, !16851, !DIExpression(), !17754)
    #dbg_value(ptr undef, !16878, !DIExpression(), !16922)
    #dbg_value(ptr undef, !16790, !DIExpression(), !16921)
    #dbg_value(i64 %.sroa.0317.0.copyload, !17500, !DIExpression(), !17757)
  %i.lw = icmp sgt i64 %.sroa.0317.0.copyload, -1, !dbg !18429
  call void @llvm.assume(i1 %i.lw), !dbg !18429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !16918
  store ptr %.sroa.4318.0.copyload, ptr %i.bm, align 8, !dbg !16918
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !16918 ; 3 uses
  store ptr %.sroa.4318.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !16918
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !16918
  store i64 %.sroa.0317.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8, !dbg !16918
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24, !dbg !16918 ; 2 uses
  store ptr %i.lv, ptr %.sroa.612.0..sroa_idx, align 8, !dbg !16918
  %i.lx = icmp eq i64 %.sroa.5319.0.copyload, 0, !dbg !18430
  br i1 %i.lx, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405.lr.ph, !dbg !18431

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405.lr.ph: ; preds = %bb.dy
  %.sroa.7539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405, !dbg !18431

bb.dz:                                            ; preds = %bb.ea
  %i.ly = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.bm, !4641, !DIExpression(), !16260)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %.thread746 unwind label %bb.bg, !dbg !18432

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405.lr.ph, %bb.fi
  %i.lz = phi ptr [ %.sroa.4318.0.copyload, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405.lr.ph ], [ %i.pd, %bb.fi ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17758), !dbg !17004
    #dbg_value(ptr %i.lz, !4638, !DIExpression(), !16263)
    #dbg_value(ptr %i.lz, !4639, !DIExpression(), !16264)
    #dbg_value(ptr %i.lz, !4647, !DIExpression(), !16266)
    #dbg_value(ptr %i.lz, !4653, !DIExpression(), !16268)
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 160, !dbg !18433
  store ptr %i.ma, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !18434, !alias.scope !17758
  %.sroa.0537.0.copyload538 = load i64, ptr %i.lz, align 8, !dbg !18435, !noalias !17758 ; 2 uses
  %.not350 = icmp eq i64 %.sroa.0537.0.copyload538, -1, !dbg !17004
  br i1 %.not350, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405.thread, label %bb.ea, !dbg !17004

bb.ea:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405
  %.sroa.7539.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %i.lz, i64 8, !dbg !18435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !dbg !18436
  store i64 %.sroa.0537.0.copyload538, ptr %i.bl, align 8, !dbg !18436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7539.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7539.0..sroa_idx540, i64 152, i1 false), !dbg !18436
  invoke fastcc void @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing8compilerNtB2_8Compiler12compile_node(ptr noalias nofree noundef align 8 dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %i.bl)
          to label %bb.fi unwind label %bb.dz, !dbg !18437

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405, %bb.fi, %bb.dy
    #dbg_value(ptr %i.bm, !4641, !DIExpression(), !16271)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1v_.exit409 unwind label %.thread778, !dbg !18438

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1v_.exit409: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB12_.exit405.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !18439
    #dbg_value(ptr %i.bx, !17760, !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value), !17766)
    #dbg_value(ptr %i.bx, !16881, !DIExpression(DW_OP_plus_uconst, 112, DW_OP_stack_value), !17768)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bx, i64 112, !dbg !18440 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bx, i64 128, !dbg !18440 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !dbg !18440, !noundef !1394 ; 2 uses
  %i.me = icmp ult i64 %i.md, 57646075230342349, !dbg !18441
  call void @llvm.assume(i1 %i.me), !dbg !18442
  %.not351 = icmp eq i64 %i.md, 0, !dbg !18443    ; 2 uses
    #dbg_value(i1 %.not351, !16716, !DIExpression(DW_OP_not, DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !18444
    #dbg_value(ptr %0, !17078, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17771)
    #dbg_value(ptr %0, !17080, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17772)
    #dbg_value(ptr %0, !17773, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17776)
    #dbg_value(ptr %0, !17777, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !17780)
  %i.mf = load i64, ptr %i.lj, align 8, !dbg !18445, !noundef !1394 ; 3 uses
  %i.mg = icmp eq i64 %i.mf, 0, !dbg !18445
  br i1 %i.mg, label %.thread796, label %bb.eb, !dbg !18445

.thread796:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1v_.exit409
  store i64 -1, ptr %i.bk, align 8, !dbg !18446
  br label %.invoke, !dbg !18447

bb.eb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1v_.exit409
  %i.mh = add nsw i64 %i.mf, -1, !dbg !18448      ; 3 uses
  store i64 %i.mh, ptr %i.lj, align 8, !dbg !18448
  %i.mi = load i64, ptr %i.lh, align 8, !dbg !18449, !range !3688, !noundef !1394
    #dbg_value(i64 %i.mi, !17500, !DIExpression(), !17783)
  %i.mj = icmp samesign ult i64 %i.mh, %i.mi, !dbg !18450
    #dbg_value(i1 true, !17784, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17787)
  call void @llvm.assume(i1 %i.mj), !dbg !18451
  %i.mk = load ptr, ptr %i.lp, align 8, !dbg !18452, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.mk, !17794, !DIExpression(), !17798)
    #dbg_value(i64 %i.mh, !17795, !DIExpression(), !17798)
  %i.ml = icmp ult i64 %i.mf, 384307168202282327, !dbg !18453
  call void @llvm.assume(i1 %i.ml), !dbg !18454
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %i.mk, i64 %i.mh, !dbg !18455
    #dbg_value(ptr %i.mm, !17799, !DIExpression(), !17802)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.mm, i64 24, i1 false), !dbg !18456
  %.pr = load i64, ptr %i.bk, align 8, !dbg !18444
  %.not352 = icmp eq i64 %.pr, -9223372036854775806, !dbg !18447
  br i1 %.not352, label %bb.ec, label %.invoke, !dbg !18447, !prof !4106

bb.ec:                                            ; preds = %bb.eb
  %i.mn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8, !dbg !18457 ; 3 uses
  %i.mo = load i64, ptr %i.mn, align 8, !dbg !18457, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.mo, !16717, !DIExpression(), !17803)
    #dbg_value(i64 %i.mo, !17804, !DIExpression(), !17808)
    #dbg_value(i64 %i.mo, !17809, !DIExpression(), !17813)
    #dbg_value(i64 %i.mo, !17814, !DIExpression(), !17818)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !18458
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8, !dbg !18458
  store i64 %i.mo, ptr %i.mp, align 8, !dbg !18458
  store i8 25, ptr %i.bj, align 8, !dbg !18458
  %i.mq = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v)
          to label %bb.ee unwind label %bb.ed, !dbg !18459 ; 0 uses

bb.ed:                                            ; preds = %.invoke, %bb.eg, %bb.ef, %bb.ec
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #30
          to label %.thread746 unwind label %bb.bg, !dbg !18460

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !18461
    #dbg_value(ptr %0, !17819, !DIExpression(), !17822)
    #dbg_value(ptr %0, !17823, !DIExpression(), !17826)
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18462 ; 3 uses
  %i.mt = load i64, ptr %i.ms, align 8, !dbg !18462, !noundef !1394 ; 2 uses
    #dbg_value(i64 %i.mt, !16718, !DIExpression(), !17827)
  %i.mu = icmp ult i64 %i.mt, 164703072086692426, !dbg !18463
  call void @llvm.assume(i1 %i.mu), !dbg !18464
  br i1 %.not351, label %bb.ef, label %bb.eg, !dbg !18465

bb.ef:                                            ; preds = %bb.eh, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !18466
  store i8 37, ptr %i.bh, align 8, !dbg !18466
  %i.mv = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v)
          to label %bb.ei unwind label %bb.ed, !dbg !18467 ; 0 uses

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !18468
  store i8 35, ptr %i.bi, align 8, !dbg !18468
  %i.mw = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v)
          to label %bb.eh unwind label %bb.ed, !dbg !18469 ; 0 uses

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !18470
  br label %bb.ef, !dbg !18471

bb.ei:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !18472
    #dbg_value(ptr %0, !17805, !DIExpression(), !17828)
    #dbg_value(ptr %0, !17829, !DIExpression(), !17832)
    #dbg_value(ptr %0, !17833, !DIExpression(), !17837)
    #dbg_value(ptr %0, !17838, !DIExpression(), !17842)
  %i.mx = load i64, ptr %i.ms, align 8, !dbg !18473, !noundef !1394
    #dbg_value(ptr poison, !17810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17813)
    #dbg_value(ptr poison, !17815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17818)
    #dbg_value(i64 %i.mx, !17810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17813)
    #dbg_value(i64 %i.mx, !17815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17818)
  %i.my = icmp ult i64 %i.mo, %i.mx, !dbg !18474
  br i1 %i.my, label %bb.ej, label %.invoke, !dbg !18474, !prof !3672

bb.ej:                                            ; preds = %bb.ei
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18475
  %i.na = load ptr, ptr %i.mz, align 8, !dbg !18475, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.na, !17810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17813)
    #dbg_value(ptr %i.na, !17815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17818)
  %i.nb = getelementptr inbounds nuw [56 x i8], ptr %i.na, i64 %i.mo, !dbg !18476 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 8, !dbg !18477, !range !3235, !noundef !1394
  %i.nd = icmp eq i8 %i.nc, 33, !dbg !18478
  br i1 %i.nd, label %bb.ek, label %.invoke, !dbg !18478, !prof !3672

.invoke:                                          ; preds = %bb.eb, %.thread796, %bb.ej, %bb.ei
  %2 = phi ptr [ @26, %bb.ej ], [ @26, %bb.ei ], [ @27, %.thread796 ], [ @27, %bb.eb ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #32
          to label %.cont unwind label %bb.ed, !dbg !17770

.cont:                                            ; preds = %.invoke
  unreachable

bb.ek:                                            ; preds = %bb.ej
    #dbg_value(ptr %i.nb, !16719, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !17849)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 8, !dbg !18479
  store i64 %i.mt, ptr %i.ne, align 8, !dbg !18479
    #dbg_value(ptr %i.bk, !2770, !DIExpression(), !16293)
  %i.nf = load i64, ptr %i.bk, align 8, !dbg !18480, !range !2774, !alias.scope !17850, !noundef !1394 ; 3 uses
  %i.ng = icmp eq i64 %i.nf, -1, !dbg !18480
  br i1 %i.ng, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, label %bb.el, !dbg !18480

bb.el:                                            ; preds = %bb.ek
    #dbg_value(ptr %i.bk, !2776, !DIExpression(), !16297)
  %i.nh = icmp ne i64 %i.nf, -9223372036854775807, !dbg !18481
  call void @llvm.assume(i1 %i.nh), !dbg !18481
  %i.ni = icmp sgt i64 %i.nf, -1, !dbg !18481
  br i1 %i.ni, label %bb.em, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, !dbg !18481

bb.em:                                            ; preds = %bb.el
    #dbg_value(ptr %i.bk, !2781, !DIExpression(), !16299)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.ep unwind label %bb.en, !dbg !18482

bb.en:                                            ; preds = %bb.em
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.bk, align 8, !dbg !18482, !alias.scope !17851 ; 2 uses
    #dbg_value(ptr poison, !2788, !DIExpression(), !16307)
    #dbg_value(ptr poison, !2794, !DIExpression(), !16309)
    #dbg_value(ptr poison, !2612, !DIExpression(), !16311)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16311)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16311)
    #dbg_value(ptr poison, !2629, !DIExpression(), !16313)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16313)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16313)
    #dbg_value(i64 8, !2798, !DIExpression(), !16315)
  %i.nk = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.nk, label %.thread746, label %bb.eo, !dbg !18483

bb.eo:                                            ; preds = %bb.en
  %.val4.i.i.i = load ptr, ptr %i.mn, align 8, !dbg !18482, !alias.scope !17852, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val3.i.i.i, !2802, !DIExpression(), !16315)
  %i.nl = shl nuw i64 %.val3.i.i.i, 3, !dbg !18484
    #dbg_value(ptr %.val4.i.i.i, !2625, !DIExpression(), !16316)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16316)
    #dbg_value(i64 %i.nl, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16316)
    #dbg_value(ptr poison, !2652, !DIExpression(), !16318)
    #dbg_value(ptr poison, !2659, !DIExpression(), !16320)
    #dbg_value(ptr %.val4.i.i.i, !2656, !DIExpression(), !16318)
    #dbg_value(ptr %.val4.i.i.i, !2662, !DIExpression(), !16320)
    #dbg_value(ptr %.val4.i.i.i, !2665, !DIExpression(), !16322)
    #dbg_value(ptr %.val4.i.i.i, !2671, !DIExpression(), !16324)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16318)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16320)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16322)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16324)
    #dbg_value(i64 %i.nl, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16318)
    #dbg_value(i64 %i.nl, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16320)
    #dbg_value(i64 %i.nl, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16322)
    #dbg_value(i64 %i.nl, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16324)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.nl, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !18485, !noalias !17853
  br label %.thread746, !dbg !18486

bb.ep:                                            ; preds = %bb.em
  %.val.i.i.i = load i64, ptr %i.bk, align 8, !dbg !18482, !alias.scope !17851 ; 2 uses
    #dbg_value(ptr poison, !2788, !DIExpression(), !16328)
    #dbg_value(ptr poison, !2794, !DIExpression(), !16330)
    #dbg_value(ptr poison, !2612, !DIExpression(), !16332)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16332)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16332)
    #dbg_value(ptr poison, !2629, !DIExpression(), !16334)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16334)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16334)
    #dbg_value(i64 8, !2798, !DIExpression(), !16336)
  %i.nm = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.nm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, label %bb.eq, !dbg !18487

bb.eq:                                            ; preds = %bb.ep
  %.val2.i.i.i = load ptr, ptr %i.mn, align 8, !dbg !18482, !alias.scope !17852, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val.i.i.i, !2802, !DIExpression(), !16336)
  %i.nn = shl nuw i64 %.val.i.i.i, 3, !dbg !18488
    #dbg_value(ptr %.val2.i.i.i, !2625, !DIExpression(), !16337)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16337)
    #dbg_value(i64 %i.nn, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16337)
    #dbg_value(ptr poison, !2652, !DIExpression(), !16339)
    #dbg_value(ptr poison, !2659, !DIExpression(), !16341)
    #dbg_value(ptr %.val2.i.i.i, !2656, !DIExpression(), !16339)
    #dbg_value(ptr %.val2.i.i.i, !2662, !DIExpression(), !16341)
    #dbg_value(ptr %.val2.i.i.i, !2665, !DIExpression(), !16343)
    #dbg_value(ptr %.val2.i.i.i, !2671, !DIExpression(), !16345)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16339)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16341)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16343)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16345)
    #dbg_value(i64 %i.nn, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16339)
    #dbg_value(i64 %i.nn, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16341)
    #dbg_value(i64 %i.nn, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16343)
    #dbg_value(i64 %i.nn, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16345)
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.nn, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !18489, !noalias !17854
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, !dbg !18490

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit: ; preds = %bb.eq, %bb.ep, %bb.el, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !18460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !18491
    #dbg_value(ptr %0, !17092, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !17855)
    #dbg_value(ptr %0, !17094, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !17856)
    #dbg_value(ptr %0, !17857, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !17860)
    #dbg_value(ptr %0, !17861, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !17864)
  %i.no = load i64, ptr %i.kr, align 8, !dbg !18492, !noundef !1394 ; 3 uses
  %i.np = icmp eq i64 %i.no, 0, !dbg !18492
  br i1 %i.np, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit, label %bb.er, !dbg !18492

bb.er:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit
  %i.nq = add nsw i64 %i.no, -1, !dbg !18493      ; 3 uses
  store i64 %i.nq, ptr %i.kr, align 8, !dbg !18493
  %i.nr = load i64, ptr %i.kq, align 8, !dbg !18494, !range !3688, !noundef !1394
    #dbg_value(i64 %i.nr, !17500, !DIExpression(), !17867)
  %i.ns = icmp samesign ult i64 %i.nq, %i.nr, !dbg !18495
    #dbg_value(i1 true, !17784, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17869)
  call void @llvm.assume(i1 %i.ns), !dbg !18496
  %i.nt = load ptr, ptr %i.la, align 8, !dbg !18497, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %i.nt, !17876, !DIExpression(), !17880)
    #dbg_value(i64 %i.nq, !17877, !DIExpression(), !17880)
  %i.nu = icmp ult i64 %i.no, 192153584101141164, !dbg !18498
  call void @llvm.assume(i1 %i.nu), !dbg !18499
  %i.nv = getelementptr inbounds nuw [48 x i8], ptr %i.nt, i64 %i.nq, !dbg !18500
    #dbg_value(ptr %i.nv, !17881, !DIExpression(), !17884)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 8 dereferenceable(48) %i.nv, i64 48, i1 false), !dbg !18501
  %.pr798 = load ptr, ptr %i.bg, align 8, !dbg !18502, !alias.scope !17885
    #dbg_value(ptr %i.bg, !4615, !DIExpression(), !16355)
  %i.nw = icmp eq ptr %.pr798, null, !dbg !18502
  br i1 %i.nw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit, label %bb.es, !dbg !18502

bb.es:                                            ; preds = %bb.er
    #dbg_value(ptr %i.bg, !4583, !DIExpression(), !16357)
    #dbg_value(ptr %i.bg, !4587, !DIExpression(), !16359)
    #dbg_value(ptr %i.bg, !4594, !DIExpression(), !16361)
    #dbg_value(ptr %i.bg, !4601, !DIExpression(), !16363)
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit unwind label %.thread778, !dbg !18503

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEEB13_.exit, %bb.er, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !18504
  br i1 %.not351, label %bb.fc, label %bb.eu, !dbg !18505

bb.et:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1v_.exit430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !18375
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_.exit, !dbg !18363

bb.eu:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECs5yXxDE1DkoT_4tera.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !dbg !18506
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !18506
  store i64 0, ptr %i.nx, align 8, !dbg !18506
  store i8 26, ptr %i.bf, align 8, !dbg !18506
  %i.ny = invoke noundef i32 @_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v)
          to label %bb.ev unwind label %.thread778, !dbg !18507

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !18508
  %i.nz = zext i32 %i.ny to i64, !dbg !18509
    #dbg_value(i64 %i.nz, !16720, !DIExpression(), !17886)
    #dbg_value(ptr %i.lh, !17000, !DIExpression(), !17887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !18510
  %i.oa = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !18510
  store i64 %i.nz, ptr %i.oa, align 8, !dbg !18510
  store i64 -9223372036854775808, ptr %i.be, align 8, !dbg !18510
  call void @llvm.experimental.noalias.scope.decl(metadata !17888), !dbg !18511
    #dbg_value(ptr %i.lh, !4516, !DIExpression(), !16367)
    #dbg_value(ptr %i.lh, !4525, !DIExpression(), !16369)
    #dbg_declare(ptr %i.be, !4521, !DIExpression(), !16370)
    #dbg_value(i64 24, !4530, !DIExpression(), !16373)
  %i.ob = load i64, ptr %i.lj, align 8, !dbg !18512, !alias.scope !17888, !noundef !1394 ; 3 uses
    #dbg_value(i64 %i.ob, !4522, !DIExpression(), !16374)
    #dbg_value(i64 %i.ob, !4535, !DIExpression(), !16376)
    #dbg_value(ptr %i.lh, !4533, !DIExpression(), !16377)
  %i.oc = load i64, ptr %i.lh, align 8, !dbg !18513, !range !3688, !alias.scope !17888, !noundef !1394
  %i.od = icmp eq i64 %i.ob, %i.oc, !dbg !18514
  br i1 %i.od, label %bb.ew, label %bb.ez, !dbg !18514

bb.ew:                                            ; preds = %bb.ev
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lh)
          to label %bb.ez unwind label %bb.ex, !dbg !18515, !noalias !17889

bb.ex:                                            ; preds = %bb.ew
  %i.oe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be) #30
          to label %.thread746 unwind label %bb.ey, !dbg !18516, !noalias !17888

bb.ey:                                            ; preds = %bb.ex
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #31, !dbg !18517, !noalias !17888
  unreachable, !dbg !18517

bb.ez:                                            ; preds = %bb.ew, %bb.ev
  %i.og = load ptr, ptr %i.lp, align 8, !dbg !18518, !alias.scope !17888, !nonnull !1394, !noundef !1394
end_hunk_1
begin_hunk_2_@llvm.memmove.p0.p0.i64
!3904 = !DISubprogram(name: "alloc_impl_runtime", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc5allocNtB5_6Global18alloc_impl_runtime", scope: !3, file: !2650, line: 303, type: !3903, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1394)
!3905 = !DILocalVariable(name: "zeroed", arg: 2, scope: !716, file: !2650, line: 303, type: !1689)
!3906 = !DILocalVariable(name: "size", scope: !715, file: !2650, line: 307, type: !1384, align: 64)
!3907 = !DILocalVariable(name: "raw_ptr", scope: !714, file: !2650, line: 308, type: !3534, align: 64)
!3908 = !DILocalVariable(name: "ptr", scope: !713, file: !2650, line: 309, type: !159, align: 64)
!3909 = !DILocalVariable(name: "residual", scope: !712, file: !2650, line: 309, type: !605, align: 8)
!3910 = !DILocalVariable(name: "val", scope: !711, file: !2650, line: 309, type: !159, align: 64)
!3911 = !{!3901, !3905, !3906, !3907, !3908, !3909, !3910}
!3912 = !DILocalVariable(name: "layout", arg: 1, scope: !717, file: !2650, line: 124, type: !348)
!3913 = !{!3912}
!3914 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<&alloc::sync::Arc<alloc::vec::Vec<tera::value::Value, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", baseType: !3076, size: 64, align: 64, dwarfAddressSpace: 0)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !1134, baseType: !3915, size: 64, align: 64, flags: DIFlagPrivate)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !718, file: !1134, baseType: !23, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!3918 = !{!3916, !3917}
!3919 = !DITemplateTypeParameter(name: "T", type: !3076)
!3920 = !{!3919}
!3921 = !{!"address", !"read_provenance"}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<&alloc::sync::Arc<std::collections::hash::map::HashMap<tera::value::key::Key, tera::value::Value, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>, alloc::alloc::Global>", baseType: !3096, size: 64, align: 64, dwarfAddressSpace: 0)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !719, file: !1134, baseType: !3922, size: 64, align: 64, flags: DIFlagPrivate)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !719, file: !1134, baseType: !23, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!3925 = !{!3923, !3924}
!3926 = !DITemplateTypeParameter(name: "T", type: !3096)
!3927 = !{!3926}
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&tera::value::SmartString", baseType: !181, size: 64, align: 64, dwarfAddressSpace: 0)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<&tera::value::SmartString, alloc::alloc::Global>", baseType: !3928, size: 64, align: 64, dwarfAddressSpace: 0)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !720, file: !1134, baseType: !3929, size: 64, align: 64, flags: DIFlagPrivate)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !720, file: !1134, baseType: !23, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!3932 = !{!3930, !3931}
!3933 = !DITemplateTypeParameter(name: "T", type: !3928)
!3934 = !{!3933}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<bool, alloc::alloc::Global>", baseType: !1689, size: 64, align: 64, dwarfAddressSpace: 0)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !1134, baseType: !3935, size: 64, align: 64, flags: DIFlagPrivate)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !721, file: !1134, baseType: !23, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!3938 = !{!3936, !3937}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut bool", baseType: !1689, size: 64, align: 64, dwarfAddressSpace: 0)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<f64, alloc::alloc::Global>", baseType: !2094, size: 64, align: 64, dwarfAddressSpace: 0)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !1134, baseType: !3940, size: 64, align: 64, flags: DIFlagPrivate)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !722, file: !1134, baseType: !23, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!3943 = !{!3941, !3942}
!3944 = !DITemplateTypeParameter(name: "T", type: !2094)
!3945 = !{!3944}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<(), alloc::alloc::Global>", baseType: !1381, size: 64, align: 64, dwarfAddressSpace: 0)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !1134, baseType: !3946, size: 64, align: 64, flags: DIFlagPrivate)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !723, file: !1134, baseType: !23, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!3949 = !{!3947, !3948}
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "alloc::boxed::Box<i64, alloc::alloc::Global>", baseType: !1460, size: 64, align: 64, dwarfAddressSpace: 0)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !1134, baseType: !3950, size: 64, align: 64, flags: DIFlagPrivate)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !724, file: !1134, baseType: !23, size: 384, align: 64, offset: 64, flags: DIFlagPrivate)
!3953 = !{!3951, !3952}
!3954 = !DITemplateTypeParameter(name: "T", type: !1460)
!3955 = !{!3954}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&tera::context::Context", baseType: !295, size: 64, align: 64, dwarfAddressSpace: 0)
!3957 = !DIFile(filename: "library/alloc/src/collections/btree/map.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "56cf0ab9b947eccab650a3a48deb1361")
!3958 = !DITemplateTypeParameter(name: "Q", type: !1414)
!3959 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "253323f9af7a84b017b43b8a14338f9b")
!3960 = !{!727}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !727, file: !1134, baseType: !726, size: 64, align: 64, extraData: i64 0)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !727, file: !1134, baseType: !725, size: 64, align: 64)
!3963 = !{!3961, !3962}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !725, file: !1134, baseType: !3843, size: 64, align: 64, flags: DIFlagPublic)
!3965 = !{!3964}
!3966 = !DITemplateTypeParameter(name: "T", type: !3843)
!3967 = !{!3966}
!3968 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !1134, baseType: !1237, size: 64, align: 64, flags: DIFlagArtificial)
!3970 = !DIFile(filename: "tera/src/value/mod.rs", directory: "/opt-bench/work/tera-rs/tera", checksumkind: CSK_MD5, checksum: "cd71336d1210891c755318b219dd8c12")
!3971 = !DIFile(filename: "tera/src/parsing/compiler.rs", directory: "/opt-bench/work/tera-rs/tera", checksumkind: CSK_MD5, checksum: "5e53fa73a852fa77341f4693d9589219")
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !753, file: !1134, baseType: !532, size: 384, align: 64, flags: DIFlagProtected)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "processing_bodies", scope: !753, file: !1134, baseType: !414, size: 192, align: 64, offset: 384, flags: DIFlagPrivate)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !753, file: !1134, baseType: !752, size: 384, align: 64, offset: 768, flags: DIFlagProtected)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "block_name_spans", scope: !753, file: !1134, baseType: !747, size: 384, align: 64, offset: 1152, flags: DIFlagProtected)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "block_depth", scope: !753, file: !1134, baseType: !1384, size: 64, align: 64, offset: 3840, flags: DIFlagPrivate)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "component_calls", scope: !753, file: !1134, baseType: !742, size: 384, align: 64, offset: 1536, flags: DIFlagProtected)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "filter_calls", scope: !753, file: !1134, baseType: !742, size: 384, align: 64, offset: 1920, flags: DIFlagProtected)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "test_calls", scope: !753, file: !1134, baseType: !742, size: 384, align: 64, offset: 2304, flags: DIFlagProtected)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "function_calls", scope: !753, file: !1134, baseType: !742, size: 384, align: 64, offset: 2688, flags: DIFlagProtected)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "include_calls", scope: !753, file: !1134, baseType: !742, size: 384, align: 64, offset: 3072, flags: DIFlagProtected)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "top_level_variables", scope: !753, file: !1134, baseType: !737, size: 384, align: 64, offset: 3456, flags: DIFlagProtected)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "temp_variables", scope: !753, file: !1134, baseType: !731, size: 192, align: 64, offset: 576, flags: DIFlagProtected)
!3984 = !{!3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !731, file: !1134, baseType: !730, size: 128, align: 64, flags: DIFlagPrivate)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !731, file: !1134, baseType: !1384, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!3987 = !{!3985, !3986}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !730, file: !1134, baseType: !205, size: 128, align: 64, flags: DIFlagPrivate)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !730, file: !1134, baseType: !729, align: 8, offset: 128, flags: DIFlagPrivate)
!3990 = !{!3988, !3989}
!3991 = !DITemplateTypeParameter(name: "T", type: !737)
!3992 = !{!3991}
!3993 = !{!3991, !1439}
!3994 = !DINamespace(name: "set", scope: !1976)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !737, file: !1134, baseType: !736, size: 384, align: 64, flags: DIFlagPrivate)
!3996 = !{!3995}
!3997 = !DINamespace(name: "set", scope: !1980)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !736, file: !1134, baseType: !735, size: 384, align: 64, flags: DIFlagProtected)
!3999 = !{!3998}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "hash_builder", scope: !735, file: !1134, baseType: !162, size: 128, align: 64, offset: 256, flags: DIFlagProtected)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !735, file: !1134, baseType: !734, size: 256, align: 64, flags: DIFlagProtected)
!4002 = !{!4000, !4001}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !734, file: !1134, baseType: !160, size: 256, align: 64, flags: DIFlagPrivate)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !734, file: !1134, baseType: !3, align: 8, offset: 256, flags: DIFlagPrivate)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !734, file: !1134, baseType: !733, align: 8, offset: 256, flags: DIFlagPrivate)
!4006 = !{!4003, !4004, !4005}
!4007 = !DITemplateTypeParameter(name: "T", type: !732)
!4008 = !{!4007}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !732, file: !1134, baseType: !64, size: 192, align: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !732, file: !1134, baseType: !1381, align: 8, offset: 192)
!4011 = !{!4009, !4010}
!4012 = !{!4007, !1439}
!4013 = !DITemplateTypeParameter(name: "V", type: !1381)
!4014 = !{!1649, !4013, !2036, !1439}
!4015 = !{!1618, !2036, !1439}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !742, file: !1134, baseType: !741, size: 384, align: 64, flags: DIFlagPrivate)
!4017 = !{!4016}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "hash_builder", scope: !741, file: !1134, baseType: !162, size: 128, align: 64, offset: 256, flags: DIFlagProtected)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !741, file: !1134, baseType: !740, size: 256, align: 64, flags: DIFlagProtected)
!4020 = !{!4018, !4019}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !740, file: !1134, baseType: !160, size: 256, align: 64, flags: DIFlagPrivate)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !740, file: !1134, baseType: !3, align: 8, offset: 256, flags: DIFlagPrivate)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !740, file: !1134, baseType: !739, align: 8, offset: 256, flags: DIFlagPrivate)
!4024 = !{!4021, !4022, !4023}
!4025 = !DITemplateTypeParameter(name: "T", type: !738)
!4026 = !{!4025}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !738, file: !1134, baseType: !64, size: 192, align: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !738, file: !1134, baseType: !527, size: 192, align: 64, offset: 192)
!4029 = !{!4027, !4028}
!4030 = !{!4025, !1439}
!4031 = !DITemplateTypeParameter(name: "V", type: !527)
!4032 = !{!1649, !4031, !2036, !1439}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !747, file: !1134, baseType: !746, size: 384, align: 64, flags: DIFlagPrivate)
!4034 = !{!4033}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "hash_builder", scope: !746, file: !1134, baseType: !162, size: 128, align: 64, offset: 256, flags: DIFlagProtected)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !746, file: !1134, baseType: !745, size: 256, align: 64, flags: DIFlagProtected)
!4037 = !{!4035, !4036}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !745, file: !1134, baseType: !160, size: 256, align: 64, flags: DIFlagPrivate)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !745, file: !1134, baseType: !3, align: 8, offset: 256, flags: DIFlagPrivate)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !745, file: !1134, baseType: !744, align: 8, offset: 256, flags: DIFlagPrivate)
!4041 = !{!4038, !4039, !4040}
!4042 = !DITemplateTypeParameter(name: "T", type: !743)
!4043 = !{!4042}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !743, file: !1134, baseType: !64, size: 192, align: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !743, file: !1134, baseType: !23, size: 384, align: 64, offset: 192)
!4046 = !{!4044, !4045}
!4047 = !{!4042, !1439}
!4048 = !DITemplateTypeParameter(name: "V", type: !23)
!4049 = !{!1649, !4048, !2036, !1439}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !752, file: !1134, baseType: !751, size: 384, align: 64, flags: DIFlagPrivate)
!4051 = !{!4050}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "hash_builder", scope: !751, file: !1134, baseType: !162, size: 128, align: 64, offset: 256, flags: DIFlagProtected)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !751, file: !1134, baseType: !750, size: 256, align: 64, flags: DIFlagProtected)
!4054 = !{!4052, !4053}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !750, file: !1134, baseType: !160, size: 256, align: 64, flags: DIFlagPrivate)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !750, file: !1134, baseType: !3, align: 8, offset: 256, flags: DIFlagPrivate)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !750, file: !1134, baseType: !749, align: 8, offset: 256, flags: DIFlagPrivate)
!4058 = !{!4055, !4056, !4057}
!4059 = !DITemplateTypeParameter(name: "T", type: !748)
!4060 = !{!4059}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !748, file: !1134, baseType: !64, size: 192, align: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !748, file: !1134, baseType: !532, size: 384, align: 64, offset: 192)
!4063 = !{!4061, !4062}
!4064 = !{!4059, !1439}
!4065 = !DITemplateTypeParameter(name: "V", type: !532)
!4066 = !{!1649, !4065, !2036, !1439}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut tera::parsing::compiler::Compiler", baseType: !753, size: 64, align: 64, dwarfAddressSpace: 0)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !1384, size: 64, align: 64, dwarfAddressSpace: 0)
!4069 = !{!1384, !2628, !1384}
!4070 = !DISubroutineType(types: !4069)
!4071 = !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner8capacityCs5yXxDE1DkoT_4tera", scope: !205, file: !2606, line: 631, type: !4070, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2121)
!4072 = !{!388, !2889}
!4073 = !DISubroutineType(types: !4072)
!4074 = !DISubprogram(name: "pop<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE3popBK_", scope: !414, file: !3498, line: 2901, type: !4073, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2898)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", baseType: !414, size: 64, align: 64, dwarfAddressSpace: 0)
!4076 = !{!1384, !4075}
!4077 = !DISubroutineType(types: !4076)
!4078 = !DISubprogram(name: "capacity<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8capacityBK_", scope: !414, file: !3498, line: 1444, type: !4077, scopeLine: 1444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2898)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", baseType: !413, size: 64, align: 64, dwarfAddressSpace: 0)
!4080 = !{!1384, !4079}
!4081 = !DISubroutineType(types: !4080)
!4082 = !DISubprogram(name: "capacity<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE8capacityBS_", scope: !413, file: !2606, line: 317, type: !4081, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2898)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const tera::parsing::compiler::ProcessingBody", baseType: !384, size: 64, align: 64, dwarfAddressSpace: 0)
!4085 = !{!4084, !4075}
!4086 = !DISubroutineType(types: !4085)
!4087 = !DISubprogram(name: "as_ptr<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE6as_ptrBK_", scope: !414, file: !3498, line: 1974, type: !4086, scopeLine: 1974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2898)
!4088 = !DISubprogram(name: "len<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE3lenBK_", scope: !414, file: !3498, line: 3135, type: !4077, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2898)
!4089 = !{!754, !2628}
!4090 = !DISubroutineType(types: !4089)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !754, file: !1134, baseType: !4084, size: 64, align: 64, flags: DIFlagPrivate)
!4092 = !{!4091}
!4093 = !{!1439, !2767}
!4094 = !DISubprogram(name: "non_null<alloc::alloc::Global, tera::parsing::compiler::ProcessingBody>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEB17_", scope: !205, file: !2606, line: 626, type: !4090, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4093)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut tera::parsing::compiler::ProcessingBody", baseType: !384, size: 64, align: 64, dwarfAddressSpace: 0)
!4096 = !{!4095, !4079}
!4097 = !DISubroutineType(types: !4096)
!4098 = !DISubprogram(name: "ptr<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE3ptrBS_", scope: !413, file: !2606, line: 304, type: !4097, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2898)
!4099 = !{!4095, !2628}
!4100 = !DISubroutineType(types: !4099)
!4101 = !DISubprogram(name: "ptr<alloc::alloc::Global, tera::parsing::compiler::ProcessingBody>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyEB12_", scope: !205, file: !2606, line: 621, type: !4100, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4093)
!4102 = !{!4084, !4084, !1384, !2382}
!4103 = !DISubroutineType(types: !4102)
!4104 = !{!384, !4084, !2382}
!4105 = !DISubroutineType(types: !4104)
!4106 = !{!"branch_weights", i32 -2147483648, i32 0}
!4107 = !DIFile(filename: "tera/src/parsing/instructions.rs", directory: "/opt-bench/work/tera-rs/tera", checksumkind: CSK_MD5, checksum: "7597fbdf43f6532ca3a3b5c05f588b29")
!4108 = !{!758, !3236, !1384}
!4109 = !DISubroutineType(types: !4108)
!4110 = !{!757}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !757, file: !1134, baseType: !756, size: 64, align: 64, extraData: i64 0)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !757, file: !1134, baseType: !755, size: 64, align: 64)
!4113 = !{!4111, !4112}
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut (tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>)", baseType: !528, size: 64, align: 64, dwarfAddressSpace: 0)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !755, file: !1134, baseType: !4114, size: 64, align: 64, flags: DIFlagPublic)
!4116 = !{!4115}
!4117 = !DITemplateTypeParameter(name: "T", type: !4114)
!4118 = !{!4117}
!4119 = !DIDerivedType(tag: DW_TAG_member, scope: !758, file: !1134, baseType: !1237, size: 64, align: 64, flags: DIFlagArtificial)
!4120 = !DISubprogram(name: "get_mut", linkageName: "_RNvMNtNtCs5yXxDE1DkoT_4tera7parsing12instructionsNtB2_5Chunk7get_mut", scope: !532, file: !4107, line: 164, type: !4109, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1394)
!4121 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "65ce4dca37c4df823e7cad3ec4cb5362")
!4122 = !DINamespace(name: "slice", scope: !1142)
!4123 = !DINamespace(name: "{impl#0}", scope: !4122)
!4124 = !{!758, !759, !1384}
!4125 = !DISubroutineType(types: !4124)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64, dwarfAddressSpace: 0)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !759, file: !1134, baseType: !4126, size: 64, align: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !759, file: !1134, baseType: !1384, size: 64, align: 64, offset: 64)
!4129 = !{!4127, !4128}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !760, file: !1134, baseType: !4126, size: 64, align: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !760, file: !1134, baseType: !1384, size: 64, align: 64, offset: 64)
!4132 = !{!4130, !4131}
!4133 = !DITemplateTypeParameter(name: "I", type: !1384)
!4134 = !{!3246, !4133}
!4135 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "9aa00b95619c5e024ffb660e1ebfc7ca")
!4136 = !DINamespace(name: "index", scope: !4122)
!4137 = !DINamespace(name: "{impl#2}", scope: !4136)
!4138 = !{!758, !1384, !759}
!4139 = !DISubroutineType(types: !4138)
!4140 = !DINamespace(name: "{impl#11}", scope: !1474)
!4141 = !{!759, !3263}
!4142 = !DISubroutineType(types: !4141)
!4143 = !DISubprogram(name: "as_mut_slice<(tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBv_NtNtBL_5utils4SpanEEE12as_mut_sliceBL_", scope: !531, file: !3498, line: 1892, type: !4142, scopeLine: 1892, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3260)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut (tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>)", baseType: !528, size: 64, align: 64, dwarfAddressSpace: 0)
!4145 = !{!4144, !3263}
!4146 = !DISubroutineType(types: !4145)
!4147 = !DISubprogram(name: "as_mut_ptr<(tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionIBv_NtNtBL_5utils4SpanEEE10as_mut_ptrBL_", scope: !531, file: !3498, line: 2058, type: !4146, scopeLine: 2058, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3260)
!4148 = !{!761, !2628}
!4149 = !DISubroutineType(types: !4148)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const (tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>)", baseType: !528, size: 64, align: 64, dwarfAddressSpace: 0)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !761, file: !1134, baseType: !4150, size: 64, align: 64, flags: DIFlagPrivate)
!4152 = !{!4151}
!4153 = !{!1439, !3246}
!4154 = !DISubprogram(name: "non_null<alloc::alloc::Global, (tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>)>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB8_3vec3VecNtNtB18_5utils4SpanEEEB18_", scope: !205, file: !2606, line: 626, type: !4149, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4153)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<(tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>), alloc::alloc::Global>", baseType: !530, size: 64, align: 64, dwarfAddressSpace: 0)
!4156 = !{!4144, !4155}
!4157 = !DISubroutineType(types: !4156)
!4158 = !DISubprogram(name: "ptr<(tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>), alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB7_3vec3VecNtNtBT_5utils4SpanEEE3ptrBT_", scope: !530, file: !2606, line: 304, type: !4157, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3260)
!4159 = !{!4144, !2628}
!4160 = !DISubroutineType(types: !4159)
!4161 = !DISubprogram(name: "ptr<alloc::alloc::Global, (tera::parsing::instructions::Instruction, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>)>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner3ptrTNtNtNtCs5yXxDE1DkoT_4tera7parsing12instructions11InstructionINtNtB8_3vec3VecNtNtB13_5utils4SpanEEEB13_", scope: !205, file: !2606, line: 621, type: !4160, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4153)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !763, file: !1134, baseType: !762, size: 64, align: 64, flags: DIFlagProtected)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "phantom", scope: !763, file: !1134, baseType: !96, align: 8, offset: 256, flags: DIFlagProtected)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !763, file: !1134, baseType: !1384, size: 64, align: 64, offset: 128, flags: DIFlagProtected)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !763, file: !1134, baseType: !32, align: 8, offset: 256, flags: DIFlagProtected)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !763, file: !1134, baseType: !762, size: 64, align: 64, offset: 64, flags: DIFlagProtected)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const tera::parsing::ast::Node", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !763, file: !1134, baseType: !4167, size: 64, align: 64, offset: 192, flags: DIFlagProtected)
!4169 = !{!4162, !4163, !4164, !4165, !4166, !4168}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !762, file: !1134, baseType: !4167, size: 64, align: 64, flags: DIFlagPrivate)
!4171 = !{!4170}
!4172 = !DINamespace(name: "{impl#18}", scope: !1474)
!4173 = !{!763, !98}
!4174 = !DISubroutineType(types: !4173)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut tera::parsing::ast::Node", baseType: !95, size: 64, align: 64, dwarfAddressSpace: 0)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !764, file: !1134, baseType: !98, size: 192, align: 64, flags: DIFlagPrivate)
!4177 = !{!4176}
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<tera::parsing::ast::Node, alloc::alloc::Global>", baseType: !97, size: 64, align: 64, dwarfAddressSpace: 0)
!4179 = !{!1384, !4178}
!4180 = !DISubroutineType(types: !4179)
!4181 = !DISubprogram(name: "capacity<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE8capacityBS_", scope: !97, file: !2606, line: 317, type: !4180, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1777)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<tera::parsing::ast::Node, alloc::alloc::Global>", baseType: !98, size: 64, align: 64, dwarfAddressSpace: 0)
!4183 = !{!1384, !4182}
!4184 = !DISubroutineType(types: !4183)
!4185 = !DISubprogram(name: "len<tera::parsing::ast::Node, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeE3lenBK_", scope: !98, file: !3498, line: 3135, type: !4184, scopeLine: 3135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1777)
!4186 = !DIFile(filename: "library/core/src/slice/iter/macros.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "526307389b7550baea9ff75b5731c6e9")
!4187 = !DINamespace(name: "iter", scope: !4122)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", baseType: !737, size: 64, align: 64, dwarfAddressSpace: 0)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !765, file: !1134, baseType: !4188, size: 64, align: 64, flags: DIFlagPrivate)
!4190 = !{!4189}
!4191 = !DINamespace(name: "{impl#171}", scope: !4187)
!4192 = !DINamespace(name: "{impl#0}", scope: !2747)
!4193 = !DIFile(filename: "library/std/src/collections/hash/set.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "9b7cb0eb701a00058211a855c2a4d796")
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", baseType: !737, size: 64, align: 64, dwarfAddressSpace: 0)
!4195 = !{!1689, !4194, !64}
!4196 = !DISubroutineType(types: !4195)
!4197 = !DISubprogram(name: "insert<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB5_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringE6insertCs5yXxDE1DkoT_4tera", scope: !737, file: !4193, line: 1034, type: !4196, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4015)
!4198 = !DIFile(filename: "src/set.rs", directory: "/cargo/registry/25cdd57fae9f0462/hashbrown-0.17.1", checksumkind: CSK_MD5, checksum: "87a602d90a47f26da501afa285c42516")
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", baseType: !736, size: 64, align: 64, dwarfAddressSpace: 0)
!4200 = !{!1689, !4199, !64}
!4201 = !DISubroutineType(types: !4200)
!4202 = !DISubprogram(name: "insert<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsbDKHzkXHCUM_9hashbrown3setINtB5_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCs5yXxDE1DkoT_4tera", scope: !736, file: !4198, line: 1074, type: !4201, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4015)
!4203 = !DIFile(filename: "library/std/src/collections/hash/map.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "81fd45bd90b0f94a5cedec658c45684d")
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut std::collections::hash::map::HashMap<alloc::string::String, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>, std::hash::random::RandomState, alloc::alloc::Global>", baseType: !742, size: 64, align: 64, dwarfAddressSpace: 0)
!4205 = !{!775, !4204, !64}
!4206 = !DISubroutineType(types: !4205)
!4207 = !{!774}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "Occupied", scope: !774, file: !1134, baseType: !773, size: 320, align: 64, extraData: i64 -1)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "Vacant", scope: !774, file: !1134, baseType: !768, size: 320, align: 64)
!4210 = !{!4208, !4209}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !768, file: !1134, baseType: !767, size: 320, align: 64, flags: DIFlagPublic)
!4212 = !{!4211}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !767, file: !1134, baseType: !766, size: 320, align: 64, flags: DIFlagPrivate)
!4214 = !{!4213}
!4215 = !DINamespace(name: "rustc_entry", scope: !1980)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !766, file: !1134, baseType: !1237, size: 64, align: 64, offset: 256, flags: DIFlagPrivate)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !766, file: !1134, baseType: !64, size: 192, align: 64, flags: DIFlagPrivate)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut hashbrown::raw::RawTable<(alloc::string::String, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>), alloc::alloc::Global>", baseType: !740, size: 64, align: 64, dwarfAddressSpace: 0)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !766, file: !1134, baseType: !4218, size: 64, align: 64, offset: 192, flags: DIFlagPrivate)
!4220 = !{!4216, !4217, !4219}
!4221 = !{!1649, !4031, !1439}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !773, file: !1134, baseType: !772, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!4223 = !{!4222}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !772, file: !1134, baseType: !771, size: 128, align: 64, flags: DIFlagPrivate)
!4225 = !{!4224}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !771, file: !1134, baseType: !770, size: 64, align: 64, flags: DIFlagPrivate)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !771, file: !1134, baseType: !4218, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!4228 = !{!4226, !4227}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !770, file: !1134, baseType: !769, size: 64, align: 64, flags: DIFlagPrivate)
!4230 = !{!4229}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const (alloc::string::String, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>)", baseType: !738, size: 64, align: 64, dwarfAddressSpace: 0)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !769, file: !1134, baseType: !4231, size: 64, align: 64, flags: DIFlagPrivate)
!4233 = !{!4232}
!4234 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !1134, baseType: !1237, size: 64, align: 64, flags: DIFlagArtificial)
!4235 = !DISubprogram(name: "entry<alloc::string::String, alloc::vec::Vec<tera::utils::Span, alloc::alloc::Global>, std::hash::random::RandomState, alloc::alloc::Global>", linkageName: "_RNvMs2_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtB17_3vec3VecNtNtCs5yXxDE1DkoT_4tera5utils4SpanEE5entryB20_", scope: !742, file: !4203, line: 1012, type: !4206, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4032)
!4236 = !{null, !2889, !384}
!4237 = !DISubroutineType(types: !4236)
!4238 = !DISubprogram(name: "push<tera::parsing::compiler::ProcessingBody, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing8compiler14ProcessingBodyE4pushBL_", scope: !414, file: !3498, line: 999, type: !4237, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2898)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::Vec<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", baseType: !731, size: 64, align: 64, dwarfAddressSpace: 0)
!4240 = !{null, !4239, !737}
!4241 = !DISubroutineType(types: !4240)
!4242 = !DISubprogram(name: "push<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB7_6string6StringEE4pushCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 999, type: !4241, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3993)
!4243 = !{!778}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "Occupied", scope: !778, file: !1134, baseType: !777, size: 320, align: 64, extraData: i64 -1)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "Vacant", scope: !778, file: !1134, baseType: !776, size: 320, align: 64)
!4246 = !{!4244, !4245}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !776, file: !1134, baseType: !766, size: 320, align: 64, flags: DIFlagPublic)
!4248 = !{!4247}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !777, file: !1134, baseType: !771, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!4250 = !{!4249}
!4251 = !DIDerivedType(tag: DW_TAG_member, scope: !779, file: !1134, baseType: !1237, size: 64, align: 64, flags: DIFlagArtificial)
!4252 = !{!775, !779}
!4253 = !DISubroutineType(types: !4252)
!4255 = !{!420, !1384, !3}
!4256 = !DISubroutineType(types: !4255)
!4257 = !DISubprogram(name: "with_capacity_in<bool, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !420, file: !3498, line: 972, type: !4256, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2920)
!4258 = !{!420, !1384}
!4259 = !DISubroutineType(types: !4258)
!4260 = !DISubprogram(name: "with_capacity<bool>", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecbE13with_capacityCs5yXxDE1DkoT_4tera", scope: !420, file: !3498, line: 524, type: !4259, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2209)
!4261 = !{!419, !1384, !3}
!4262 = !DISubroutineType(types: !4261)
!4263 = !DISubprogram(name: "with_capacity_in<bool, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecbE16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !419, file: !2606, line: 177, type: !4262, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2920)
!4264 = !{!205, !1384, !3, !348}
!4265 = !DISubroutineType(types: !4264)
!4266 = !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yXxDE1DkoT_4tera", scope: !205, file: !2606, line: 444, type: !4265, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2121)
!4267 = !{!1689, !2628, !1384, !1384, !348}
!4268 = !DISubroutineType(types: !4267)
!4269 = !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs5yXxDE1DkoT_4tera", scope: !205, file: !2606, line: 786, type: !4268, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2121)
!4270 = !{null, !2913, !1689}
!4271 = !DISubroutineType(types: !4270)
!4272 = !DISubprogram(name: "push<bool, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecbE4pushCs5yXxDE1DkoT_4tera", scope: !420, file: !3498, line: 999, type: !4271, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2920)
!4273 = !DINamespace(name: "str", scope: !1142)
!4274 = !{!1689, !0, !0}
!4275 = !DISubroutineType(types: !4274)
!4276 = !{!783, !4239}
!4277 = !DISubroutineType(types: !4276)
!4278 = !{!782}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !782, file: !1134, baseType: !781, size: 384, align: 64, extraData: i64 0)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !782, file: !1134, baseType: !780, size: 384, align: 64)
!4281 = !{!4279, !4280}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !780, file: !1134, baseType: !737, size: 384, align: 64, flags: DIFlagPublic)
!4283 = !{!4282}
!4284 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !1134, baseType: !1237, size: 64, align: 64, flags: DIFlagArtificial)
!4285 = !DISubprogram(name: "pop<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB6_6string6StringEE3popCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 2901, type: !4277, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3993)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", baseType: !731, size: 64, align: 64, dwarfAddressSpace: 0)
!4287 = !{!1384, !4286}
!4288 = !DISubroutineType(types: !4287)
!4289 = !DISubprogram(name: "capacity<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB6_6string6StringEE8capacityCs5yXxDE1DkoT_4tera", scope: !731, file: !3498, line: 1444, type: !4288, scopeLine: 1444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3993)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", baseType: !730, size: 64, align: 64, dwarfAddressSpace: 0)
!4291 = !{!1384, !4290}
!4292 = !DISubroutineType(types: !4291)
!4293 = !DISubprogram(name: "capacity<std::collections::hash::set::HashSet<alloc::string::String, std::hash::random::RandomState, alloc::alloc::Global>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetNtNtB7_6string6StringEE8capacityCs5yXxDE1DkoT_4tera", scope: !730, file: !2606, line: 317, type: !4292, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !3993)
!4294 = !DIFile(filename: "tera/src/parsing/ast.rs", directory: "/opt-bench/work/tera-rs/tera", checksumkind: CSK_MD5, checksum: "bab124999e94b9abaac11e6f51a5cf3f")
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&tera::parsing::ast::BinaryOperator", baseType: !1217, size: 64, align: 64, dwarfAddressSpace: 0)
!4296 = !DINamespace(name: "{impl#10}", scope: !1474)
!4297 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/809936eac66c547a5127ce1da805f0d3a6789b98", checksumkind: CSK_MD5, checksum: "8e362bea2c55abea69079680cddff240")
!4298 = !DINamespace(name: "{impl#15}", scope: !1432)
!4299 = !DINamespace(name: "{impl#35}", scope: !1666)
!4300 = !{!0, !2154}
!4301 = !DISubroutineType(types: !4300)
!4302 = !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String6as_str", scope: !64, file: !2399, line: 1073, type: !4301, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1394)
!4303 = !{!159, !2628}
!4304 = !DISubroutineType(types: !4303)
!4305 = !{!1439, !1675}
!4306 = !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs5yXxDE1DkoT_4tera", scope: !205, file: !2606, line: 626, type: !4304, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !4305)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<u8, alloc::alloc::Global>", baseType: !63, size: 64, align: 64, dwarfAddressSpace: 0)
end_hunk_2
