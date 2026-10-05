Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.12?download=true
inline.NumInlined: 642
inline.NumDeleted: 235
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera:bb.a
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !24650

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24649
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !24649, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val, !2802, !DIExpression(), !24636)
  %i.c = shl nuw i64 %.val, 2, !dbg !24651
    #dbg_value(ptr %.val1, !2625, !DIExpression(), !24637)
    #dbg_value(i64 4, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24637)
    #dbg_value(i64 %i.c, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24637)
    #dbg_value(ptr poison, !2652, !DIExpression(), !24639)
    #dbg_value(ptr poison, !2659, !DIExpression(), !24641)
    #dbg_value(ptr %.val1, !2656, !DIExpression(), !24639)
    #dbg_value(ptr %.val1, !2662, !DIExpression(), !24641)
    #dbg_value(ptr %.val1, !2665, !DIExpression(), !24643)
    #dbg_value(ptr %.val1, !2671, !DIExpression(), !24645)
    #dbg_value(i64 4, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24639)
    #dbg_value(i64 4, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24641)
    #dbg_value(i64 4, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24643)
    #dbg_value(i64 4, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24645)
    #dbg_value(i64 %i.c, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24639)
    #dbg_value(i64 %i.c, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24641)
    #dbg_value(i64 %i.c, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24643)
    #dbg_value(i64 %i.c, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24645)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #28, !dbg !24652
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit, !dbg !24653

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !24654
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !346 {
bb.a:
    #dbg_value(ptr %0, !2607, !DIExpression(), !24668)
  %.val = load i64, ptr %0, align 8, !dbg !24669  ; 2 uses
    #dbg_value(ptr poison, !2612, !DIExpression(), !24656)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24656)
    #dbg_value(i64 1, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24656)
    #dbg_value(ptr poison, !2629, !DIExpression(), !24658)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24658)
    #dbg_value(i64 1, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24658)
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !24670

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24669
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !24669, !nonnull !1394, !noundef !1394
    #dbg_value(ptr %.val1, !2625, !DIExpression(), !24659)
    #dbg_value(i64 1, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24659)
    #dbg_value(i64 %.val, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24659)
    #dbg_value(ptr poison, !2652, !DIExpression(), !24661)
    #dbg_value(ptr poison, !2659, !DIExpression(), !24663)
    #dbg_value(ptr %.val1, !2656, !DIExpression(), !24661)
    #dbg_value(ptr %.val1, !2662, !DIExpression(), !24663)
    #dbg_value(ptr %.val1, !2665, !DIExpression(), !24665)
    #dbg_value(ptr %.val1, !2671, !DIExpression(), !24667)
    #dbg_value(i64 1, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24661)
    #dbg_value(i64 1, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24663)
    #dbg_value(i64 1, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24665)
    #dbg_value(i64 1, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24667)
    #dbg_value(i64 %.val, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24661)
    #dbg_value(i64 %.val, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24663)
    #dbg_value(i64 %.val, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24665)
    #dbg_value(i64 %.val, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24667)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !dbg !24671
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit, !dbg !24672

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !24673
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !393 {
bb.a:
    #dbg_value(ptr %0, !2794, !DIExpression(), !24689)
  %.val = load i64, ptr %0, align 8, !dbg !24690  ; 2 uses
    #dbg_value(ptr poison, !2612, !DIExpression(), !24675)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24675)
    #dbg_value(i64 8, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24675)
    #dbg_value(ptr poison, !2629, !DIExpression(), !24677)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24677)
    #dbg_value(i64 8, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24677)
    #dbg_value(i64 8, !2798, !DIExpression(), !24679)
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !24691

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24690
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !24690, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val, !2802, !DIExpression(), !24679)
  %i.c = shl nuw i64 %.val, 3, !dbg !24692
    #dbg_value(ptr %.val1, !2625, !DIExpression(), !24680)
    #dbg_value(i64 8, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24680)
    #dbg_value(i64 %i.c, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24680)
    #dbg_value(ptr poison, !2652, !DIExpression(), !24682)
    #dbg_value(ptr poison, !2659, !DIExpression(), !24684)
    #dbg_value(ptr %.val1, !2656, !DIExpression(), !24682)
    #dbg_value(ptr %.val1, !2662, !DIExpression(), !24684)
    #dbg_value(ptr %.val1, !2665, !DIExpression(), !24686)
    #dbg_value(ptr %.val1, !2671, !DIExpression(), !24688)
    #dbg_value(i64 8, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24682)
    #dbg_value(i64 8, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24684)
    #dbg_value(i64 8, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24686)
    #dbg_value(i64 8, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24688)
    #dbg_value(i64 %i.c, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24682)
    #dbg_value(i64 %i.c, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24684)
    #dbg_value(i64 %i.c, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24686)
    #dbg_value(i64 %i.c, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24688)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !24693
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit, !dbg !24694

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !24695
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecnENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 !dbg !24696 {
bb.a:
    #dbg_value(ptr %0, !24712, !DIExpression(), !24714)
  %.val = load i64, ptr %0, align 8, !dbg !24715  ; 2 uses
    #dbg_value(ptr poison, !2612, !DIExpression(), !24698)
    #dbg_value(i64 16, !2624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24698)
    #dbg_value(i64 16, !2624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24698)
    #dbg_value(ptr poison, !2629, !DIExpression(), !24700)
    #dbg_value(i64 16, !2646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24700)
    #dbg_value(i64 16, !2646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24700)
    #dbg_value(i64 16, !2798, !DIExpression(), !24702)
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit, label %bb.b, !dbg !24716

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24715
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !24715, !nonnull !1394, !noundef !1394
    #dbg_value(i64 %.val, !2802, !DIExpression(), !24702)
  %i.c = shl nuw i64 %.val, 4, !dbg !24717
    #dbg_value(ptr %.val1, !2625, !DIExpression(), !24703)
    #dbg_value(i64 16, !2626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24703)
    #dbg_value(i64 %i.c, !2626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24703)
    #dbg_value(ptr poison, !2652, !DIExpression(), !24705)
    #dbg_value(ptr poison, !2659, !DIExpression(), !24707)
    #dbg_value(ptr %.val1, !2656, !DIExpression(), !24705)
    #dbg_value(ptr %.val1, !2662, !DIExpression(), !24707)
    #dbg_value(ptr %.val1, !2665, !DIExpression(), !24709)
    #dbg_value(ptr %.val1, !2671, !DIExpression(), !24711)
    #dbg_value(i64 16, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24705)
    #dbg_value(i64 16, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24707)
    #dbg_value(i64 16, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24709)
    #dbg_value(i64 16, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24711)
    #dbg_value(i64 %i.c, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24705)
    #dbg_value(i64 %i.c, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24707)
    #dbg_value(i64 %i.c, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24709)
    #dbg_value(i64 %i.c, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24711)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !dbg !24718
  br label %_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit, !dbg !24719

_RNvMs3_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5yXxDE1DkoT_4tera.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !24720
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value2deNtB5_19VariantDeserializerNtNtCs5DvQZ7uvHZH_10serde_core2de13VariantAccess12unit_variant(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24723 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
    #dbg_declare(ptr poison, !25041, !DIExpression(DW_OP_LLVM_fragment, 16, 48), !24739)
    #dbg_declare(ptr %1, !25037, !DIExpression(), !25080)
    #dbg_declare(ptr %1, !25038, !DIExpression(), !25081)
    #dbg_declare(ptr %1, !25072, !DIExpression(), !25082)
    #dbg_declare(ptr %1, !25077, !DIExpression(), !25067)
    #dbg_declare(ptr %1, !25061, !DIExpression(), !25083)
    #dbg_declare(ptr %1, !25084, !DIExpression(), !25090)
    #dbg_declare(ptr poison, !25078, !DIExpression(), !25067)
    #dbg_declare(ptr poison, !25062, !DIExpression(), !25091)
  %i.o = load i8, ptr %1, align 8, !dbg !25218, !range !2406, !noundef !1394 ; 5 uses
  %.not = icmp eq i8 %i.o, -1, !dbg !25218
  br i1 %.not, label %bb.an, label %bb.b, !dbg !25219

bb.b:                                             ; preds = %bb.a
    #dbg_value(i8 %i.o, !25041, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !25092)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !25220
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !dbg !25220 ; 2 uses
    #dbg_value(i8 %.sroa.5.0.copyload, !25041, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !25092)
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25220 ; 2 uses
    #dbg_value(i64 %.sroa.65.0.copyload, !25041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25092)
  %i.p = load <2 x i64>, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !25220
  %.sroa.65.0.copyload = load i64, ptr %.sroa.65.0..sroa_idx, align 8, !dbg !25220 ; 8 uses
    #dbg_value(i64 %.sroa.65.0.copyload, !25041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25092)
    #dbg_value(i64 poison, !25041, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !25092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25094), !dbg !25221
    #dbg_declare(ptr poison, !25044, !DIExpression(), !24743)
    #dbg_declare(ptr %i.n, !25051, !DIExpression(), !24744)
    #dbg_declare(ptr %i.m, !25052, !DIExpression(), !24745)
    #dbg_declare(ptr %i.l, !25053, !DIExpression(), !24746)
    #dbg_declare(ptr %i.k, !25054, !DIExpression(), !24747)
    #dbg_declare(ptr poison, !25096, !DIExpression(), !24750)
  %i.q = icmp ne i8 %i.o, 10, !dbg !25222
  tail call void @llvm.assume(i1 %i.q), !dbg !25222
  %i.r = add nsw i8 %i.o, -2, !dbg !25222
  %i.s = icmp samesign ugt i8 %i.o, 1, !dbg !25222
  %narrow.i = select i1 %i.s, i8 %i.r, i8 8, !dbg !25222
  switch i8 %narrow.i, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
  ], !dbg !25223

bb.c:                                             ; preds = %bb.b
  unreachable, !dbg !25222

bb.d:                                             ; preds = %bb.b, %bb.b
    #dbg_declare(ptr poison, !25101, !DIExpression(), !24753)
    #dbg_declare(ptr poison, !25105, !DIExpression(), !24753)
  store i64 -1, ptr %0, align 8, !dbg !25224, !alias.scope !25108, !noalias !25109
  br label %_RINvXs_NtNtCs5yXxDE1DkoT_4tera5value2deNtB5_17ValueDeserializerNtNtCs5DvQZ7uvHZH_10serde_core2de12Deserializer15deserialize_anyNtNtB11_5impls11UnitVisitorEB9_.exit, !dbg !25225

bb.e:                                             ; preds = %bb.b
    #dbg_value(i8 %.sroa.5.0.copyload, !25045, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24757)
    #dbg_declare(ptr %i.a, !25110, !DIExpression(), !24760)
    #dbg_value(i8 %.sroa.5.0.copyload, !25113, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !24761)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !25226, !noalias !25115
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !25226
  store i8 %.sroa.5.0.copyload, ptr %i.t, align 1, !dbg !25226, !noalias !25115
  store i8 0, ptr %i.h, align 8, !dbg !25226, !noalias !25115
  call void @_RNvYNtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedNtNtCs5DvQZ7uvHZH_10serde_core2de5Error12invalid_typeB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !dbg !25227, !noalias !25109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !25228, !noalias !25115
  br label %_RINvXs_NtNtCs5yXxDE1DkoT_4tera5value2deNtB5_17ValueDeserializerNtNtCs5DvQZ7uvHZH_10serde_core2de12Deserializer15deserialize_anyNtNtB11_5impls11UnitVisitorEB9_.exit, !dbg !25229

bb.f:                                             ; preds = %bb.b
    #dbg_value(i64 %.sroa.65.0.copyload, !25047, !DIExpression(), !24764)
    #dbg_declare(ptr %i.a, !25116, !DIExpression(), !24767)
    #dbg_value(i64 %.sroa.65.0.copyload, !25119, !DIExpression(), !24768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !25230, !noalias !25121
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !25230
  store i64 %.sroa.65.0.copyload, ptr %i.u, align 8, !dbg !25230, !noalias !25121
  store i8 1, ptr %i.g, align 8, !dbg !25230, !noalias !25121
  call void @_RNvYNtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedNtNtCs5DvQZ7uvHZH_10serde_core2de5Error12invalid_typeB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !dbg !25231, !noalias !25109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !25232, !noalias !25121
  br label %_RINvXs_NtNtCs5yXxDE1DkoT_4tera5value2deNtB5_17ValueDeserializerNtNtCs5DvQZ7uvHZH_10serde_core2de12Deserializer15deserialize_anyNtNtB11_5impls11UnitVisitorEB9_.exit, !dbg !25233

bb.g:                                             ; preds = %bb.b
    #dbg_value(i64 %.sroa.65.0.copyload, !25046, !DIExpression(), !24771)
    #dbg_declare(ptr %i.a, !25122, !DIExpression(), !24774)
    #dbg_value(i64 %.sroa.65.0.copyload, !25125, !DIExpression(), !24775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !25234, !noalias !25127
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !25234
  store i64 %.sroa.65.0.copyload, ptr %i.v, align 8, !dbg !25234, !noalias !25127
  store i8 2, ptr %i.f, align 8, !dbg !25234, !noalias !25127
  call void @_RNvYNtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedNtNtCs5DvQZ7uvHZH_10serde_core2de5Error12invalid_typeB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !dbg !25235, !noalias !25109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !25236, !noalias !25127
  br label %_RINvXs_NtNtCs5yXxDE1DkoT_4tera5value2deNtB5_17ValueDeserializerNtNtCs5DvQZ7uvHZH_10serde_core2de12Deserializer15deserialize_anyNtNtB11_5impls11UnitVisitorEB9_.exit, !dbg !25237

bb.h:                                             ; preds = %bb.b
    #dbg_value(i64 %.sroa.65.0.copyload, !25050, !DIExpression(), !24778)
    #dbg_declare(ptr %i.a, !25128, !DIExpression(), !24781)
    #dbg_value(i64 %.sroa.65.0.copyload, !25131, !DIExpression(), !24782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !25238, !noalias !25133
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !25238
  store i64 %.sroa.65.0.copyload, ptr %i.w, align 8, !dbg !25238, !noalias !25133
  store i8 3, ptr %i.e, align 8, !dbg !25238, !noalias !25133
  call void @_RNvYNtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedNtNtCs5DvQZ7uvHZH_10serde_core2de5Error12invalid_typeB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3), !dbg !25239, !noalias !25109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !25240, !noalias !25133
  br label %_RINvXs_NtNtCs5yXxDE1DkoT_4tera5value2deNtB5_17ValueDeserializerNtNtCs5DvQZ7uvHZH_10serde_core2de12Deserializer15deserialize_anyNtNtB11_5impls11UnitVisitorEB9_.exit, !dbg !25241

bb.i:                                             ; preds = %bb.b
  %i.x = inttoptr i64 %.sroa.65.0.copyload to ptr, !dbg !25242 ; 3 uses
    #dbg_value(ptr %i.x, !25049, !DIExpression(), !24785)
  %i.y = load i128, ptr %i.x, align 16, !dbg !25243, !noalias !25134, !noundef !1394
  invoke fastcc void @_RINvYNtNtNtCs5DvQZ7uvHZH_10serde_core2de5impls11UnitVisitorNtB7_7Visitor10visit_u128NtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedEB1q_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i128 noundef %i.y)
          to label %bb.p unwind label %bb.o, !dbg !25244, !noalias !25109

bb.j:                                             ; preds = %bb.b
  %i.z = inttoptr i64 %.sroa.65.0.copyload to ptr, !dbg !25245 ; 3 uses
    #dbg_value(ptr %i.z, !25048, !DIExpression(), !24786)
  %i.aa = load i128, ptr %i.z, align 16, !dbg !25246, !noalias !25134, !noundef !1394
  invoke fastcc void @_RINvYNtNtNtCs5DvQZ7uvHZH_10serde_core2de5impls11UnitVisitorNtB7_7Visitor10visit_i128NtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedEB1q_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i128 noundef %i.aa)
          to label %bb.s unwind label %bb.r, !dbg !25247, !noalias !25109

bb.k:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !25220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !25248, !noalias !25134
  store i8 %i.o, ptr %i.n, align 8, !dbg !25248, !noalias !25094
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !25248
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 1, !dbg !25248, !noalias !25094
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.n, i64 2, !dbg !25248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx, i64 6, i1 false), !dbg !25248
  %.sroa.65.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !25248 ; 5 uses
  store <2 x i64> %i.p, ptr %.sroa.65.0..sroa_idx6, align 8, !dbg !25248, !noalias !25094
  %i.ab = invoke { ptr, i64 } @_RNvMNtCs5yXxDE1DkoT_4tera5valueNtB2_11SmartString6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.w unwind label %bb.t, !dbg !25249, !noalias !25134 ; 2 uses

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !25250, !noalias !25134
  %i.ac = inttoptr i64 %.sroa.65.0.copyload to ptr, !dbg !25250 ; 3 uses
  store ptr %i.ac, ptr %i.l, align 8, !dbg !25250, !noalias !25134
    #dbg_declare(ptr %i.a, !25135, !DIExpression(), !24799)
    #dbg_declare(ptr poison, !25166, !DIExpression(), !24800)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !25251, !noalias !25170
  store i8 10, ptr %i.d, align 8, !dbg !25251, !noalias !25170
  invoke void @_RNvYNtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedNtNtCs5DvQZ7uvHZH_10serde_core2de5Error12invalid_typeB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
          to label %bb.ac unwind label %bb.aa, !dbg !25252, !noalias !25109

bb.m:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !25253, !noalias !25134
  %i.ad = inttoptr i64 %.sroa.65.0.copyload to ptr, !dbg !25253 ; 2 uses
  store ptr %i.ad, ptr %i.k, align 8, !dbg !25253, !noalias !25134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !25254, !noalias !25134
    #dbg_value(ptr %i.ad, !25172, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !24805)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !25255, !noalias !25134
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !25255
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtNtCs5yXxDE1DkoT_4tera5value3key3KeyNtBR_5ValueNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterBT_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae)
          to label %bb.ag unwind label %bb.ae, !dbg !25256, !noalias !25134

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !25257, !noalias !25134
  %i.af = inttoptr i64 %.sroa.65.0.copyload to ptr, !dbg !25257 ; 5 uses
  store ptr %i.af, ptr %i.m, align 8, !dbg !25257, !noalias !25134
    #dbg_value(ptr %i.af, !25177, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !24808)
    #dbg_value(ptr %i.af, !25180, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !24811)
    #dbg_value(ptr %i.af, !25182, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !24814)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !25258
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !25258, !noalias !25134, !nonnull !1394, !noundef !1394
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !25259
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !25259, !noalias !25134, !noundef !1394
    #dbg_declare(ptr %i.a, !25184, !DIExpression(), !24823)
    #dbg_value(ptr %i.ah, !25187, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24824)
    #dbg_value(i64 %i.aj, !25187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24824)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25260, !noalias !25189
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !25260
  store ptr %i.ah, ptr %i.ak, align 8, !dbg !25260, !noalias !25189
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !25260
  store i64 %i.aj, ptr %i.al, align 8, !dbg !25260, !noalias !25189
  store i8 6, ptr %i.c, align 8, !dbg !25260, !noalias !25189
  invoke void @_RNvYNtNtNtCs5yXxDE1DkoT_4tera5value5utils21DeserializationFailedNtNtCs5DvQZ7uvHZH_10serde_core2de5Error12invalid_typeB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
          to label %bb.al unwind label %bb.aj, !dbg !25261, !noalias !25109

bb.o:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !3018, !DIExpression(), !24829)
    #dbg_value(ptr poison, !3025, !DIExpression(), !24831)
    #dbg_value(ptr %i.x, !3028, !DIExpression(), !24832)
    #dbg_value(i64 16, !3029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24833)
    #dbg_value(i64 16, !3029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24833)
    #dbg_value(ptr poison, !2652, !DIExpression(), !24835)
    #dbg_value(ptr poison, !2659, !DIExpression(), !24837)
    #dbg_value(ptr %i.x, !2656, !DIExpression(), !24835)
    #dbg_value(ptr %i.x, !2662, !DIExpression(), !24837)
    #dbg_value(ptr %i.x, !2665, !DIExpression(), !24839)
    #dbg_value(ptr %i.x, !2671, !DIExpression(), !24841)
    #dbg_value(i64 16, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24835)
    #dbg_value(i64 16, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24837)
    #dbg_value(i64 16, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24839)
    #dbg_value(i64 16, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24841)
    #dbg_value(i64 16, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24835)
    #dbg_value(i64 16, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24837)
    #dbg_value(i64 16, !2669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24839)
    #dbg_value(i64 16, !2672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24841)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value11SmartStringEBF_.exit.sink.split.i, !dbg !25262

bb.p:                                             ; preds = %bb.i
    #dbg_value(ptr undef, !25049, !DIExpression(DW_OP_deref), !24785)
    #dbg_value(ptr poison, !3018, !DIExpression(), !24843)
    #dbg_value(ptr poison, !3025, !DIExpression(), !24845)
    #dbg_value(ptr %i.x, !3028, !DIExpression(), !24846)
    #dbg_value(i64 16, !3029, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24847)
    #dbg_value(i64 16, !3029, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24847)
    #dbg_value(ptr poison, !2652, !DIExpression(), !24849)
    #dbg_value(ptr poison, !2659, !DIExpression(), !24851)
    #dbg_value(ptr %i.x, !2656, !DIExpression(), !24849)
    #dbg_value(ptr %i.x, !2662, !DIExpression(), !24851)
    #dbg_value(ptr %i.x, !2665, !DIExpression(), !24853)
    #dbg_value(ptr %i.x, !2671, !DIExpression(), !24855)
    #dbg_value(i64 16, !2657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24849)
    #dbg_value(i64 16, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24851)
    #dbg_value(i64 16, !2669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24853)
    #dbg_value(i64 16, !2672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24855)
    #dbg_value(i64 16, !2657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24849)
    #dbg_value(i64 16, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24851)
end_hunk_0
