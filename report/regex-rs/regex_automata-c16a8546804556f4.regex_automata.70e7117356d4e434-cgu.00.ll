Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.00?download=true
inline.NumInlined: 948
inline.NumDeleted: 510
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetECs9GYDdpCSJ4S_14regex_automata:bb.a
  br label %bb.h, !dbg !7818

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEECs9GYDdpCSJ4S_14regex_automata.exit, %bb.d
  ret void, !dbg !7818

bb.i:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(160) %0) #22
          to label %common.resume unwind label %bb.k, !dbg !7818

bb.j:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast16ClassSetBinaryOpECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #22
          to label %common.resume unwind label %bb.k, !dbg !7818

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !7818
  unreachable, !dbg !7818
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6111 {
bb.a:
    #dbg_value(ptr %0, !6110, !DIExpression(), !7888)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !7889

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #22
          to label %bb.g unwind label %bb.f, !dbg !7889

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.d, !dbg !7889

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7889
  %.val = load ptr, ptr %i.c, align 8, !dbg !7889, !nonnull !221, !noundef !221
    #dbg_value(ptr poison, !6123, !DIExpression(), !7890)
    #dbg_value(ptr poison, !6133, !DIExpression(), !7892)
    #dbg_value(ptr poison, !6143, !DIExpression(), !7894)
    #dbg_value(ptr %.val, !6146, !DIExpression(), !7896)
    #dbg_value(i64 8, !6159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7897)
    #dbg_value(i64 80, !6159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7897)
    #dbg_value(ptr poison, !5436, !DIExpression(), !7898)
    #dbg_value(ptr poison, !5448, !DIExpression(), !7900)
    #dbg_value(ptr %.val, !5444, !DIExpression(), !7898)
    #dbg_value(ptr %.val, !5453, !DIExpression(), !7900)
    #dbg_value(ptr %.val, !5457, !DIExpression(), !7902)
    #dbg_value(ptr %.val, !5466, !DIExpression(), !7904)
    #dbg_value(i64 8, !5445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7898)
    #dbg_value(i64 8, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7900)
    #dbg_value(i64 8, !5463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7902)
    #dbg_value(i64 8, !5469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7904)
    #dbg_value(i64 80, !5445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7898)
    #dbg_value(i64 80, !5454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7900)
    #dbg_value(i64 80, !5463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7902)
    #dbg_value(i64 80, !5469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7904)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #24, !dbg !7906
  ret void, !dbg !7889

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !7889
  unreachable, !dbg !7889

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7889
  %.val3 = load ptr, ptr %i.e, align 8, !dbg !7889, !nonnull !221, !noundef !221
    #dbg_value(ptr poison, !6123, !DIExpression(), !7907)
    #dbg_value(ptr poison, !6133, !DIExpression(), !7909)
    #dbg_value(ptr poison, !6143, !DIExpression(), !7911)
    #dbg_value(ptr %.val3, !6146, !DIExpression(), !7913)
    #dbg_value(i64 8, !6159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7914)
    #dbg_value(i64 80, !6159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7914)
    #dbg_value(ptr poison, !5436, !DIExpression(), !7915)
    #dbg_value(ptr poison, !5448, !DIExpression(), !7917)
    #dbg_value(ptr %.val3, !5444, !DIExpression(), !7915)
    #dbg_value(ptr %.val3, !5453, !DIExpression(), !7917)
    #dbg_value(ptr %.val3, !5457, !DIExpression(), !7919)
    #dbg_value(ptr %.val3, !5466, !DIExpression(), !7921)
    #dbg_value(i64 8, !5445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7915)
    #dbg_value(i64 8, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7917)
    #dbg_value(i64 8, !5463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7919)
    #dbg_value(i64 8, !5469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7921)
    #dbg_value(i64 80, !5445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7915)
    #dbg_value(i64 80, !5454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7917)
    #dbg_value(i64 80, !5463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7919)
    #dbg_value(i64 80, !5469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7921)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 80, i64 noundef 8) #24, !dbg !7923
  resume { ptr, i32 } %.pn, !dbg !7889
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7924 {
bb.a:
    #dbg_value(ptr %0, !7929, !DIExpression(), !7932)
  %i.a = load i64, ptr %0, align 8, !dbg !7933, !range !7934, !noundef !221 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !7933
  tail call void @llvm.assume(i1 %i.b), !dbg !7933
  %i.c = add nsw i64 %i.a, -2, !dbg !7933
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !7933
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !7933
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit
    i64 4, label %bb.j
    i64 5, label %bb.k
    i64 6, label %bb.m
  ], !dbg !7933

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7933 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7935), !dbg !7933
    #dbg_value(ptr %i.e, !4377, !DIExpression(), !7938)
    #dbg_value(ptr %i.e, !4381, !DIExpression(), !7940)
    #dbg_value(ptr %i.e, !4386, !DIExpression(), !7942)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7944
  %i.g = load ptr, ptr %i.f, align 8, !dbg !7944, !alias.scope !7948, !nonnull !221, !noundef !221
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7951
  %i.i = load i64, ptr %i.h, align 8, !dbg !7951, !alias.scope !7948, !noundef !221
    #dbg_value(ptr %i.g, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7952)
    #dbg_value(ptr %i.g, !4436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7954)
    #dbg_value(i64 %i.i, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7952)
    #dbg_value(i64 %i.i, !4436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7954)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 %i.g, i64 noundef %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.c, !dbg !7956, !noalias !7935, !inline_history !7957

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !4443, !DIExpression(), !7958)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d, !dbg !7960, !inline_history !7961

common.resume:                                    ; preds = %bb.n, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.aa, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !7962

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !7963, !inline_history !7961
  unreachable, !dbg !7963

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
    #dbg_value(ptr %i.e, !4443, !DIExpression(), !7964)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !7966, !inline_history !7961
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7933

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit, %bb.a, %bb.a
  ret void, !dbg !7933

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7933
  %.val1 = load i64, ptr %i.l, align 8, !dbg !7933, !noundef !221 ; 2 uses
    #dbg_value(ptr poison, !7967, !DIExpression(), !7975)
    #dbg_value(ptr poison, !7977, !DIExpression(), !7985)
    #dbg_value(ptr poison, !7987, !DIExpression(), !8002)
    #dbg_value(ptr poison, !7990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8004)
    #dbg_value(i64 %.val1, !7990, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8004)
    #dbg_value(i64 1, !8000, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8005)
    #dbg_value(i64 %.val1, !8000, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8005)
  %i.m = icmp eq i64 %.val1, 0, !dbg !8006
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.f, !dbg !8006

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7933
  %.val = load ptr, ptr %i.n, align 8, !dbg !7933, !nonnull !221, !noundef !221
    #dbg_value(ptr %.val, !7990, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8004)
    #dbg_value(ptr poison, !5436, !DIExpression(), !8007)
    #dbg_value(ptr poison, !5448, !DIExpression(), !8009)
    #dbg_value(ptr %.val, !5444, !DIExpression(), !8007)
    #dbg_value(ptr %.val, !5453, !DIExpression(), !8009)
    #dbg_value(ptr %.val, !5457, !DIExpression(), !8011)
    #dbg_value(ptr %.val, !5466, !DIExpression(), !8013)
    #dbg_value(i64 1, !5445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8007)
    #dbg_value(i64 1, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8009)
    #dbg_value(i64 1, !5463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8011)
    #dbg_value(i64 1, !5469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8013)
    #dbg_value(i64 %.val1, !5445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8007)
    #dbg_value(i64 %.val1, !5454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8009)
    #dbg_value(i64 %.val1, !5463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8011)
    #dbg_value(i64 %.val1, !5469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8013)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #24, !dbg !8015
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8016

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8017, !DIExpression(), !8025)
  %1 = trunc nuw i64 %i.a to i1, !dbg !8027
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8027 ; 2 uses
  br i1 %1, label %bb.i, label %bb.h, !dbg !8027

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.o, !8028, !DIExpression(), !8036)
    #dbg_value(ptr %i.o, !8038, !DIExpression(), !8046)
    #dbg_value(ptr %i.o, !8048, !DIExpression(), !8053)
    #dbg_value(ptr %i.o, !8055, !DIExpression(), !8063)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o), !dbg !8065
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8027

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr %i.o, !8066, !DIExpression(), !8074)
    #dbg_value(ptr %i.o, !8076, !DIExpression(), !8084)
    #dbg_value(ptr %i.o, !8086, !DIExpression(), !8091)
    #dbg_value(ptr %i.o, !8093, !DIExpression(), !8101)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o), !dbg !8103
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8027

bb.j:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8104, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8112)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8114
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p), !dbg !8114, !inline_history !8115
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7933

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7933
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8116), !dbg !7933
    #dbg_value(ptr %i.q, !8119, !DIExpression(), !8127)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8129
  %.val.i = load ptr, ptr %i.r, align 8, !dbg !8129, !alias.scope !8116, !noundef !221 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8129
  %.val2.i = load i64, ptr %i.s, align 8, !dbg !8129, !alias.scope !8116 ; 2 uses
    #dbg_value(ptr poison, !8130, !DIExpression(), !8138)
  %i.t = icmp eq ptr %.val.i, null, !dbg !8140
    #dbg_value(ptr poison, !8141, !DIExpression(), !8147)
    #dbg_value(ptr poison, !8149, !DIExpression(), !8161)
    #dbg_value(ptr poison, !8152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8163)
    #dbg_value(i64 %.val2.i, !8152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8163)
    #dbg_value(i64 1, !8159, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8164)
    #dbg_value(i64 %.val2.i, !8159, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8164)
  %i.u = icmp eq i64 %.val2.i, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.u, !dbg !8140
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.l, !dbg !8140

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !8116
    #dbg_value(ptr %.val.i, !8152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8163)
    #dbg_value(ptr poison, !5436, !DIExpression(), !8165)
    #dbg_value(ptr poison, !5448, !DIExpression(), !8167)
    #dbg_value(ptr %.val.i, !5444, !DIExpression(), !8165)
    #dbg_value(ptr %.val.i, !5453, !DIExpression(), !8167)
    #dbg_value(ptr %.val.i, !5457, !DIExpression(), !8169)
    #dbg_value(ptr %.val.i, !5466, !DIExpression(), !8171)
    #dbg_value(i64 1, !5445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8165)
    #dbg_value(i64 1, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8167)
    #dbg_value(i64 1, !5463, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8169)
    #dbg_value(i64 1, !5469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8171)
    #dbg_value(i64 %.val2.i, !5445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8165)
    #dbg_value(i64 %.val2.i, !5454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8167)
    #dbg_value(i64 %.val2.i, !5463, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8169)
    #dbg_value(i64 %.val2.i, !5469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8171)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #24, !dbg !8173, !noalias !8116
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8174

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.l, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !dbg !8129, !inline_history !8175
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7933

bb.m:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7933 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8176), !dbg !7933
    #dbg_value(ptr %i.v, !4377, !DIExpression(), !8179)
    #dbg_value(ptr %i.v, !4381, !DIExpression(), !8181)
    #dbg_value(ptr %i.v, !4386, !DIExpression(), !8183)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8185
  %i.x = load ptr, ptr %i.w, align 8, !dbg !8185, !alias.scope !8189, !nonnull !221, !noundef !221
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8192
  %i.z = load i64, ptr %i.y, align 8, !dbg !8192, !alias.scope !8189, !noundef !221
    #dbg_value(ptr %i.x, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8193)
    #dbg_value(ptr %i.x, !4436, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8195)
    #dbg_value(i64 %i.z, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8193)
    #dbg_value(i64 %i.z, !4436, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8195)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 %i.x, i64 noundef %i.z)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit3 unwind label %bb.n, !dbg !8197, !noalias !8176, !inline_history !7957

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.v, !4443, !DIExpression(), !8198)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.o, !dbg !8200, !inline_history !7961

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !8201, !inline_history !7961
  unreachable, !dbg !8201

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit3: ; preds = %bb.m
    #dbg_value(ptr %i.v, !4443, !DIExpression(), !8202)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !8204, !inline_history !7961
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7933
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3ast5parse10ClassStateECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8205 {
bb.a:
    #dbg_value(ptr %0, !8226, !DIExpression(), !8229)
  %i.a = load i64, ptr %0, align 8, !dbg !8230, !range !6738, !noundef !221
  %.not = icmp eq i64 %i.a, -1, !dbg !8230
  br i1 %.not, label %bb.h, label %bb.b, !dbg !8230

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8231), !dbg !8230
    #dbg_value(ptr %0, !7037, !DIExpression(), !8234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8236), !dbg !8239
    #dbg_value(ptr %0, !7051, !DIExpression(), !8240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8242), !dbg !8245
    #dbg_value(ptr %0, !7065, !DIExpression(), !8246)
    #dbg_value(ptr %0, !7070, !DIExpression(), !8248)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8250
  %i.c = load ptr, ptr %i.b, align 8, !dbg !8250, !alias.scope !8254, !nonnull !221, !noundef !221 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8255
  %i.e = load i64, ptr %i.d, align 8, !dbg !8255, !alias.scope !8254, !noundef !221 ; 4 uses
    #dbg_value(ptr %i.c, !7103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8256)
    #dbg_value(ptr %i.c, !7118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8258)
    #dbg_value(i64 %i.e, !7103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8256)
    #dbg_value(i64 %i.e, !7118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8258)
    #dbg_value(ptr %i.c, !7123, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8260)
    #dbg_value(i64 %i.e, !7123, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8260)
  %i.f = icmp eq i64 %i.e, 0, !dbg !8262
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i, label %.lr.ph, !dbg !8262

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e, !dbg !8262
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i, label %.lr.ph, !dbg !8262

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i2 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [160 x i8], ptr %i.c, i64 %.sroa.0.0.i.i.i.i2, !dbg !8262
  %i.i = add i64 %.sroa.0.0.i.i.i.i2, 1, !dbg !8262 ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(160) %i.h)
          to label %bb.c unwind label %bb.e, !dbg !8262, !noalias !8254, !inline_history !8263

bb.d:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i.i.i.i3, 1, !dbg !8262 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !8262
  br i1 %i.k, label %.body.i.i, label %.lr.ph4, !dbg !8262

bb.e:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e, !dbg !8262
  br i1 %i.m, label %.body.i.i, label %.lr.ph4, !dbg !8262

.lr.ph4:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i3 = phi i64 [ %i.j, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %i.c, i64 %.sroa.0.1.i.i.i.i3, !dbg !8262
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(160) %i.n) #22
          to label %bb.d unwind label %bb.f, !dbg !8262, !noalias !8254, !inline_history !8263

bb.f:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !8262, !noalias !8254, !inline_history !8263
  unreachable, !dbg !8262

.body.i.i:                                        ; preds = %bb.d, %bb.e
    #dbg_value(ptr %0, !7136, !DIExpression(), !8264)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body unwind label %bb.g, !dbg !8266, !inline_history !8267

bb.g:                                             ; preds = %.body.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !8245, !inline_history !8267
  unreachable, !dbg !8245

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.c, %bb.b
    #dbg_value(ptr %0, !7136, !DIExpression(), !8268)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.i, !dbg !8270, !inline_history !8271

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8230
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(160) %i.q), !dbg !8230
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast14ClassBracketedECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8230

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !8230

.body:                                            ; preds = %.body.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.l, %.body.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !8230
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast14ClassBracketedECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(216) %i.s) #22
          to label %common.resume unwind label %bb.q, !dbg !8230

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i
    #dbg_value(ptr %0, !5659, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !8272)
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata:bb.a
    #dbg_declare(ptr poison, !11827, !DIExpression(), !11839)
    #dbg_value(ptr undef, !11804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11806)
    #dbg_value(ptr undef, !11826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11835)
    #dbg_value(i64 1, !11804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11806)
    #dbg_value(i64 1, !11826, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11835)
    #dbg_value(ptr undef, !11828, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11840)
    #dbg_value(i64 1, !11828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11840)
    #dbg_value(ptr undef, !11841, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11867)
    #dbg_value(i64 1, !11841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11867)
    #dbg_value(ptr undef, !11841, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11867)
    #dbg_value(i64 0, !11841, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11867)
    #dbg_value(ptr poison, !11841, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !11867)
    #dbg_value(ptr undef, !11854, !DIExpression(), !11867)
    #dbg_value(ptr undef, !11869, !DIExpression(), !11875)
    #dbg_declare(ptr poison, !11855, !DIExpression(), !11877)
  %i.l = icmp ule i64 %.val.i, %.val5.i, !dbg !11878
    #dbg_value(i1 true, !11879, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11882)
  tail call void @llvm.assume(i1 %i.l), !dbg !11884
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !11885
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.preheader.i.i.i.i.i, !dbg !11885

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !11886
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !dbg !11886, !alias.scope !11608, !noalias !11604
    #dbg_value(i8 %.sroa.6.0.copyload.i, !11649, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !11663)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !11618, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !11641)
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11886
  %.sroa.510.0.copyload.i = load i8, ptr %.sroa.510.0..sroa_idx.i, align 8, !dbg !11886, !alias.scope !11608, !noalias !11604
    #dbg_value(i8 %.sroa.510.0.copyload.i, !11649, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !11663)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !11618, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !11641)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !11762, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !11775)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !11777, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !11790)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !11762, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !11775)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !11777, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !11790)
    #dbg_value(ptr %i.j, !11637, !DIExpression(), !11760)
    #dbg_value(ptr %i.j, !11771, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11775)
    #dbg_value(ptr %i.j, !11786, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11790)
    #dbg_value(ptr %i.j, !11792, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11806)
    #dbg_value(ptr %i.j, !11808, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11835)
    #dbg_value(ptr %i.j, !11841, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !11867)
    #dbg_value(ptr undef, !11828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11840)
    #dbg_value(ptr undef, !11841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11867)
  %.not.i.i.i.i.i.i = icmp eq i64 %.val5.i, 1
    #dbg_value(i64 poison, !11856, !DIExpression(), !11887)
    #dbg_value(ptr poison, !11888, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11899)
    #dbg_value(ptr poison, !11896, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !11899)
    #dbg_declare(ptr poison, !11894, !DIExpression(), !11901)
    #dbg_value(i64 poison, !11895, !DIExpression(), !11899)
    #dbg_value(i64 poison, !11902, !DIExpression(), !11916)
    #dbg_value(i64 poison, !11918, !DIExpression(), !11933)
    #dbg_value(ptr undef, !11912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11916)
    #dbg_value(ptr undef, !11931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11933)
    #dbg_value(i64 1, !11912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11916)
    #dbg_value(i64 1, !11931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11933)
  %i.m = icmp eq i64 %.val.i, 0, !dbg !11935
  tail call void @llvm.assume(i1 %i.m), !dbg !11936
    #dbg_value(i8 %.sroa.510.0.copyload.i, !11897, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11937)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !11897, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11937)
    #dbg_value(ptr poison, !11938, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11951)
    #dbg_declare(ptr poison, !11945, !DIExpression(), !11953)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !11946, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11951)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !11946, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11951)
    #dbg_value(ptr poison, !11954, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11964)
    #dbg_declare(ptr poison, !11961, !DIExpression(), !11966)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !11960, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11964)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !11960, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11964)
    #dbg_value(ptr poison, !11967, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !11975)
    #dbg_value(ptr poison, !11974, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11975)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !11973, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11975)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !11973, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11975)
  store i8 %.sroa.510.0.copyload.i, ptr %i.j, align 1, !dbg !11977, !noalias !11982
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !11977
  store i8 %.sroa.6.0.copyload.i, ptr %i.n, align 1, !dbg !11977, !noalias !11982
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !11885

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], !dbg !12004
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !11659, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11755)
  store i64 %i.g, ptr %0, align 8, !dbg !12005, !alias.scope !11604, !noalias !11608
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12005
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12005, !alias.scope !11604, !noalias !11608
  %.sroa.6.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12005
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx15.i, align 8, !dbg !12005, !alias.scope !11604, !noalias !11608
  ret void, !dbg !12006
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12007 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !12036, !DIExpression(), !12067)
    #dbg_value(ptr poison, !12071, !DIExpression(), !12083)
    #dbg_declare(ptr %1, !12033, !DIExpression(), !12084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12085), !dbg !12088
    #dbg_declare(ptr %1, !12078, !DIExpression(), !12089)
    #dbg_declare(ptr poison, !12090, !DIExpression(), !12094)
    #dbg_declare(ptr poison, !12100, !DIExpression(), !12104)
  %.val.i = load i64, ptr %1, align 8, !dbg !12106, !alias.scope !12085, !noalias !12107, !noundef !221 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12106
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !12106, !alias.scope !12085, !noalias !12107, !noundef !221 ; 4 uses
    #dbg_value(ptr poison, !12109, !DIExpression(), !12115)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !12117 ; 5 uses
    #dbg_value(i64 %i.c, !12080, !DIExpression(), !12124)
    #dbg_value(i64 %i.c, !12098, !DIExpression(), !12125)
    #dbg_value(i64 %i.c, !12093, !DIExpression(), !12126)
    #dbg_value(i64 %i.c, !12103, !DIExpression(), !12127)
    #dbg_value(i64 %i.c, !10512, !DIExpression(), !12128)
    #dbg_value(i64 %i.c, !10542, !DIExpression(), !12130)
    #dbg_declare(ptr poison, !10518, !DIExpression(), !12132)
    #dbg_value(i64 1, !10519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12128)
    #dbg_value(i64 1, !10547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12130)
    #dbg_value(i64 2, !10519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12128)
    #dbg_value(i64 2, !10547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12130)
    #dbg_value(i64 0, !10546, !DIExpression(), !12130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12133, !noalias !12134
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !dbg !12133, !noalias !12134
  %i.d = load i64, ptr %i.a, align 8, !dbg !12133, !range !1422, !noalias !12134, !noundef !221
  %i.e = trunc nuw i64 %i.d to i1, !dbg !12135
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12128
  %i.g = load i64, ptr %i.f, align 8, !dbg !12128, !range !10557, !noalias !12134, !noundef !221 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12128 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !12135, !prof !1502

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12136, !noalias !12134
    #dbg_value(i64 %i.g, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12137)
    #dbg_value(i64 %i.i, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12137)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !12138, !noalias !12134
  unreachable, !dbg !12138

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !12139, !noalias !12134, !nonnull !221, !noundef !221 ; 4 uses
    #dbg_value(i64 %i.g, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12140)
    #dbg_value(ptr %i.j, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12140)
    #dbg_value(ptr poison, !10545, !DIExpression(), !12141)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !12142
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12143)
  tail call void @llvm.assume(i1 %i.k), !dbg !12145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12146, !noalias !12134
    #dbg_value(i64 %i.g, !12079, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12147)
    #dbg_value(ptr %i.j, !12079, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12148), !dbg !12151
    #dbg_value(ptr undef, !12071, !DIExpression(), !12083)
    #dbg_declare(ptr %1, !12072, !DIExpression(), !12152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12153), !dbg !12156
    #dbg_value(ptr undef, !12036, !DIExpression(), !12067)
    #dbg_declare(ptr %1, !12044, !DIExpression(), !12157)
    #dbg_value(ptr poison, !12109, !DIExpression(), !12158)
    #dbg_value(i64 poison, !12045, !DIExpression(), !12160)
    #dbg_value(i64 1, !12047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12160)
    #dbg_value(i64 %i.c, !12047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12160)
    #dbg_value(i64 %i.c, !12048, !DIExpression(), !12161)
    #dbg_value(ptr %i.j, !12063, !DIExpression(), !12162)
    #dbg_value(ptr undef, !12065, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12163)
    #dbg_value(i64 0, !12065, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12163)
    #dbg_value(ptr %i.j, !12164, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12177)
    #dbg_value(ptr %i.j, !12179, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12191)
    #dbg_value(ptr %i.j, !12193, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12203)
    #dbg_value(ptr %i.j, !12205, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12220)
    #dbg_value(ptr undef, !12164, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12177)
    #dbg_value(ptr undef, !12179, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12191)
    #dbg_value(ptr undef, !12193, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12203)
    #dbg_value(ptr undef, !12205, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12220)
    #dbg_value(i64 0, !12164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12177)
    #dbg_value(i64 0, !12179, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12191)
    #dbg_value(i64 0, !12193, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12203)
    #dbg_value(i64 0, !12205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12222), !dbg !12225
    #dbg_declare(ptr %1, !12173, !DIExpression(), !12226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12227), !dbg !12230
    #dbg_declare(ptr %1, !12187, !DIExpression(), !12231)
    #dbg_declare(ptr poison, !12188, !DIExpression(), !12232)
    #dbg_declare(ptr poison, !12202, !DIExpression(), !12233)
    #dbg_declare(ptr poison, !12217, !DIExpression(), !12234)
    #dbg_value(ptr %1, !12201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12203)
    #dbg_value(ptr %1, !12216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12220)
    #dbg_value(i64 2, !12201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12203)
    #dbg_value(i64 2, !12216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12220)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12235 ; 2 uses
    #dbg_value(ptr %i.l, !12218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12236)
    #dbg_value(i64 2, !12218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12236)
    #dbg_value(ptr %i.l, !12237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12256)
    #dbg_value(i64 2, !12237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12256)
    #dbg_value(ptr undef, !12237, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !12256)
    #dbg_value(i64 0, !12237, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12256)
    #dbg_value(ptr %i.j, !12237, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12256)
    #dbg_value(ptr %1, !12246, !DIExpression(), !12256)
    #dbg_value(ptr %1, !12258, !DIExpression(), !12261)
    #dbg_value(ptr %1, !12263, !DIExpression(), !12271)
    #dbg_declare(ptr poison, !12247, !DIExpression(), !12273)
    #dbg_value(i64 1, !12274, !DIExpression(), !12278)
  %i.m = icmp ule i64 %.val.i, %.val5.i, !dbg !12280
    #dbg_value(i1 true, !12281, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12284)
  tail call void @llvm.assume(i1 %i.m), !dbg !12286
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !12287
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.preheader, !dbg !12287

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.neg = add i64 %.val.i, 1, !dbg !12287
  %i.n = icmp eq i64 %.val5.i, %.neg, !dbg !12287
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new, !dbg !12287

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2, !dbg !12287
  %i.o = or i64 %.val.i, 2                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.q = load i8, ptr %i.p, align 2, !alias.scope !12288, !noalias !12289, !noundef !221
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !12288, !noalias !12289, !noundef !221
  br label %.lr.ph.i.i.i.i.i.i, !dbg !12287

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.t = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.af, %.lr.ph.i.i.i.i.i.i ], !dbg !12299 ; 3 uses
  %i.u = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.o, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
    #dbg_value(i64 poison, !12248, !DIExpression(), !12300)
    #dbg_value(i64 poison, !12269, !DIExpression(), !12301)
    #dbg_value(i64 poison, !12277, !DIExpression(), !12278)
    #dbg_value(ptr poison, !12302, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12313)
    #dbg_value(ptr poison, !12310, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !12313)
    #dbg_declare(ptr poison, !12308, !DIExpression(), !12315)
    #dbg_value(i64 poison, !12309, !DIExpression(), !12313)
    #dbg_value(i64 poison, !12316, !DIExpression(), !12320)
    #dbg_value(i64 poison, !12322, !DIExpression(), !12326)
    #dbg_value(ptr %i.l, !12319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12320)
    #dbg_value(ptr %i.l, !12325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12326)
    #dbg_value(i64 2, !12319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12320)
    #dbg_value(i64 2, !12325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12326)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.u, !dbg !12328 ; 2 uses
    #dbg_value(ptr %i.v, !12329, !DIExpression(), !12336)
    #dbg_value(ptr %i.v, !12338, !DIExpression(), !12343)
    #dbg_value(ptr %i.v, !12345, !DIExpression(), !12348)
  %i.w = load i8, ptr %i.v, align 2, !dbg !12350, !alias.scope !12288, !noalias !12289, !noundef !221
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !12350
  %i.y = load i8, ptr %i.x, align 1, !dbg !12350, !alias.scope !12288, !noalias !12289, !noundef !221
    #dbg_value(i8 %i.w, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12351)
    #dbg_value(i8 %i.y, !12311, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12351)
    #dbg_value(ptr poison, !12352, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12362)
    #dbg_declare(ptr poison, !12358, !DIExpression(), !12364)
    #dbg_value(i8 %i.w, !12359, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12362)
    #dbg_value(i8 %i.y, !12359, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12362)
    #dbg_value(ptr poison, !12365, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12375)
    #dbg_declare(ptr poison, !12372, !DIExpression(), !12377)
    #dbg_value(i8 %i.w, !12371, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12375)
    #dbg_value(i8 %i.y, !12371, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12375)
    #dbg_value(ptr poison, !12378, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !12386)
    #dbg_value(ptr poison, !12385, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12386)
    #dbg_value(i8 %i.w, !12384, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12386)
    #dbg_value(i8 %i.y, !12384, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12386)
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.t, !dbg !12388 ; 2 uses
  store i8 %i.w, ptr %i.z, align 1, !dbg !12391, !noalias !12394
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1, !dbg !12391
  store i8 %i.y, ptr %i.aa, align 1, !dbg !12391, !noalias !12394
    #dbg_value(i64 1, !12248, !DIExpression(), !12300)
    #dbg_value(i64 1, !12269, !DIExpression(), !12301)
    #dbg_value(i64 1, !12277, !DIExpression(), !12278)
    #dbg_declare(ptr poison, !12308, !DIExpression(), !12315)
    #dbg_value(i64 1, !12309, !DIExpression(), !12313)
    #dbg_value(i64 1, !12316, !DIExpression(), !12320)
    #dbg_value(i64 1, !12322, !DIExpression(), !12326)
    #dbg_value(ptr %i.l, !12319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12320)
    #dbg_value(ptr %i.l, !12325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12326)
    #dbg_value(i64 2, !12319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12320)
    #dbg_value(i64 2, !12325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12326)
  %i.ab = icmp eq i64 %i.u, 0, !dbg !12401
  tail call void @llvm.assume(i1 %i.ab), !dbg !12402
    #dbg_value(ptr %i.p, !12329, !DIExpression(), !12336)
    #dbg_value(ptr %i.p, !12338, !DIExpression(), !12343)
    #dbg_value(ptr %i.p, !12345, !DIExpression(), !12348)
    #dbg_value(i8 %i.q, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12351)
    #dbg_value(i8 %i.s, !12311, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12351)
    #dbg_declare(ptr poison, !12358, !DIExpression(), !12364)
    #dbg_value(i8 %i.q, !12359, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12362)
    #dbg_value(i8 %i.s, !12359, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12362)
    #dbg_declare(ptr poison, !12372, !DIExpression(), !12377)
    #dbg_value(i8 %i.q, !12371, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12375)
    #dbg_value(i8 %i.s, !12371, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12375)
    #dbg_value(i8 %i.q, !12384, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12386)
    #dbg_value(i8 %i.s, !12384, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12386)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.t, !dbg !12388 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2, !dbg !12388
  store i8 %i.q, ptr %i.ad, align 1, !dbg !12391, !noalias !12394
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 3, !dbg !12391
  store i8 %i.s, ptr %i.ae, align 1, !dbg !12391, !noalias !12394
  %i.af = add nuw i64 %i.t, 2, !dbg !12403        ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !12287  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !12287
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !dbg !12287

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = trunc i64 %i.c to i1, !dbg !12287
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12287

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init3 = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.c to i1, !dbg !12287
  tail call void @llvm.assume(i1 %lcmp.mod5), !dbg !12287
    #dbg_value(i64 %.epil.init3, !12248, !DIExpression(), !12300)
    #dbg_value(i64 %.epil.init3, !12269, !DIExpression(), !12301)
    #dbg_value(i64 %.epil.init3, !12277, !DIExpression(), !12278)
    #dbg_value(ptr poison, !12302, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12313)
    #dbg_value(ptr poison, !12310, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !12313)
    #dbg_declare(ptr poison, !12308, !DIExpression(), !12315)
    #dbg_value(i64 %.epil.init3, !12309, !DIExpression(), !12313)
    #dbg_value(i64 %.epil.init3, !12316, !DIExpression(), !12320)
    #dbg_value(i64 %.epil.init3, !12322, !DIExpression(), !12326)
    #dbg_value(ptr %i.l, !12319, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12320)
    #dbg_value(ptr %i.l, !12325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12326)
    #dbg_value(i64 2, !12319, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12320)
    #dbg_value(i64 2, !12325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12326)
  %i.ag = icmp ult i64 %.epil.init3, 2, !dbg !12401
  tail call void @llvm.assume(i1 %i.ag), !dbg !12402
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.epil.init3, !dbg !12328 ; 2 uses
    #dbg_value(ptr %i.ah, !12329, !DIExpression(), !12336)
    #dbg_value(ptr %i.ah, !12338, !DIExpression(), !12343)
    #dbg_value(ptr %i.ah, !12345, !DIExpression(), !12348)
  %i.ai = load i8, ptr %i.ah, align 2, !dbg !12350, !alias.scope !12288, !noalias !12289, !noundef !221
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !12350
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !12350, !alias.scope !12288, !noalias !12289, !noundef !221
    #dbg_value(i8 %i.ai, !12311, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12351)
    #dbg_value(i8 %i.ak, !12311, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12351)
    #dbg_value(ptr poison, !12352, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12362)
    #dbg_declare(ptr poison, !12358, !DIExpression(), !12364)
    #dbg_value(i8 %i.ai, !12359, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12362)
    #dbg_value(i8 %i.ak, !12359, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12362)
    #dbg_value(ptr poison, !12365, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12375)
    #dbg_declare(ptr poison, !12372, !DIExpression(), !12377)
    #dbg_value(i8 %i.ai, !12371, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12375)
    #dbg_value(i8 %i.ak, !12371, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12375)
    #dbg_value(ptr poison, !12378, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !12386)
    #dbg_value(ptr poison, !12385, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12386)
    #dbg_value(i8 %i.ai, !12384, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12386)
    #dbg_value(i8 %i.ak, !12384, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12386)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.epil.init, !dbg !12388 ; 2 uses
  store i8 %i.ai, ptr %i.al, align 1, !dbg !12391, !noalias !12394
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1, !dbg !12391
  store i8 %i.ak, ptr %i.am, align 1, !dbg !12391, !noalias !12394
  %i.an = add nuw i64 %.epil.init, 1, !dbg !12403
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12406

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], [ %i.af, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i.i.i.i.i.i.epil.preheader ], !dbg !12407
    #dbg_value(ptr undef, !12065, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12163)
    #dbg_value(ptr undef, !12164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12177)
    #dbg_value(ptr undef, !12179, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12191)
    #dbg_value(ptr undef, !12193, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12203)
    #dbg_value(ptr undef, !12205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12220)
    #dbg_value(ptr undef, !12237, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12256)
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !12079, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12147)
  store i64 %i.g, ptr %0, align 8, !dbg !12406, !noalias !12085
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12406
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12406, !noalias !12085
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12406
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12406, !noalias !12085
  ret void, !dbg !12408
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12409 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !12438, !DIExpression(), !12469)
    #dbg_value(ptr poison, !12473, !DIExpression(), !12485)
    #dbg_declare(ptr %1, !12435, !DIExpression(), !12486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12487), !dbg !12490
    #dbg_declare(ptr %1, !12480, !DIExpression(), !12491)
    #dbg_declare(ptr poison, !12492, !DIExpression(), !12496)
    #dbg_declare(ptr poison, !12502, !DIExpression(), !12506)
  %.val.i = load i64, ptr %1, align 8, !dbg !12508, !alias.scope !12487, !noalias !12509, !noundef !221 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12508
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !12508, !alias.scope !12487, !noalias !12509, !noundef !221 ; 4 uses
    #dbg_value(ptr poison, !12511, !DIExpression(), !12517)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !12519 ; 5 uses
    #dbg_value(i64 %i.c, !12482, !DIExpression(), !12526)
    #dbg_value(i64 %i.c, !12500, !DIExpression(), !12527)
    #dbg_value(i64 %i.c, !12495, !DIExpression(), !12528)
    #dbg_value(i64 %i.c, !12505, !DIExpression(), !12529)
    #dbg_value(i64 %i.c, !10512, !DIExpression(), !12530)
    #dbg_value(i64 %i.c, !10542, !DIExpression(), !12532)
    #dbg_declare(ptr poison, !10518, !DIExpression(), !12534)
    #dbg_value(i64 1, !10519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12530)
    #dbg_value(i64 1, !10547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12532)
    #dbg_value(i64 2, !10519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12530)
    #dbg_value(i64 2, !10547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12532)
    #dbg_value(i64 0, !10546, !DIExpression(), !12532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12535, !noalias !12536
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !dbg !12535, !noalias !12536
  %i.d = load i64, ptr %i.a, align 8, !dbg !12535, !range !1422, !noalias !12536, !noundef !221
  %i.e = trunc nuw i64 %i.d to i1, !dbg !12537
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12530
  %i.g = load i64, ptr %i.f, align 8, !dbg !12530, !range !10557, !noalias !12536, !noundef !221 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12530 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !12537, !prof !1502

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12538, !noalias !12536
    #dbg_value(i64 %i.g, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12539)
    #dbg_value(i64 %i.i, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12539)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !12540, !noalias !12536
  unreachable, !dbg !12540

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !12541, !noalias !12536, !nonnull !221, !noundef !221 ; 4 uses
    #dbg_value(i64 %i.g, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12542)
    #dbg_value(ptr %i.j, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12542)
    #dbg_value(ptr poison, !10545, !DIExpression(), !12543)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !12544
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12545)
  tail call void @llvm.assume(i1 %i.k), !dbg !12547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12548, !noalias !12536
    #dbg_value(i64 %i.g, !12481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12549)
    #dbg_value(ptr %i.j, !12481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12550), !dbg !12553
    #dbg_value(ptr undef, !12473, !DIExpression(), !12485)
    #dbg_declare(ptr %1, !12474, !DIExpression(), !12554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12555), !dbg !12558
    #dbg_value(ptr undef, !12438, !DIExpression(), !12469)
    #dbg_declare(ptr %1, !12446, !DIExpression(), !12559)
    #dbg_value(ptr poison, !12511, !DIExpression(), !12560)
    #dbg_value(i64 poison, !12447, !DIExpression(), !12562)
    #dbg_value(i64 1, !12449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12562)
    #dbg_value(i64 %i.c, !12449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12562)
    #dbg_value(i64 %i.c, !12450, !DIExpression(), !12563)
    #dbg_value(ptr %i.j, !12465, !DIExpression(), !12564)
    #dbg_value(ptr undef, !12467, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12565)
    #dbg_value(i64 0, !12467, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12565)
    #dbg_value(ptr %i.j, !12566, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12579)
    #dbg_value(ptr %i.j, !12581, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12593)
    #dbg_value(ptr %i.j, !12595, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12605)
    #dbg_value(ptr %i.j, !12607, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12622)
    #dbg_value(ptr undef, !12566, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr undef, !12581, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12593)
    #dbg_value(ptr undef, !12595, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12605)
    #dbg_value(ptr undef, !12607, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12622)
    #dbg_value(i64 0, !12566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12579)
    #dbg_value(i64 0, !12581, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12593)
    #dbg_value(i64 0, !12595, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12605)
    #dbg_value(i64 0, !12607, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12624), !dbg !12627
    #dbg_declare(ptr %1, !12575, !DIExpression(), !12628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12629), !dbg !12632
    #dbg_declare(ptr %1, !12589, !DIExpression(), !12633)
    #dbg_declare(ptr poison, !12590, !DIExpression(), !12634)
    #dbg_declare(ptr poison, !12604, !DIExpression(), !12635)
    #dbg_declare(ptr poison, !12619, !DIExpression(), !12636)
    #dbg_value(ptr %1, !12603, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12605)
    #dbg_value(ptr %1, !12618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12622)
    #dbg_value(i64 3, !12603, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12605)
    #dbg_value(i64 3, !12618, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12622)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12637 ; 3 uses
    #dbg_value(ptr %i.l, !12620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12638)
    #dbg_value(i64 3, !12620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12638)
    #dbg_value(ptr %i.l, !12639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12658)
    #dbg_value(i64 3, !12639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12658)
    #dbg_value(ptr undef, !12639, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !12658)
    #dbg_value(i64 0, !12639, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12658)
    #dbg_value(ptr %i.j, !12639, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12658)
    #dbg_value(ptr %1, !12648, !DIExpression(), !12658)
    #dbg_value(ptr %1, !12660, !DIExpression(), !12663)
    #dbg_value(ptr %1, !12665, !DIExpression(), !12670)
    #dbg_declare(ptr poison, !12649, !DIExpression(), !12672)
    #dbg_value(i64 1, !12673, !DIExpression(), !12677)
  %i.m = icmp ule i64 %.val.i, %.val5.i, !dbg !12679
    #dbg_value(i1 true, !12680, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12683)
  tail call void @llvm.assume(i1 %i.m), !dbg !12685
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !12686
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.preheader, !dbg !12686

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.neg = add i64 %.val.i, 1, !dbg !12686
  %i.n = icmp eq i64 %.val5.i, %.neg, !dbg !12686
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new, !dbg !12686

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2, !dbg !12686
  %i.o = or i64 %.val.i, 2                        ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i, !dbg !12686

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.p = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ], !dbg !12687 ; 3 uses
  %i.q = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.o, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
    #dbg_value(i64 %i.q, !12650, !DIExpression(), !12688)
    #dbg_value(i64 %i.q, !12668, !DIExpression(), !12689)
    #dbg_value(i64 %i.q, !12676, !DIExpression(), !12677)
    #dbg_value(ptr poison, !12690, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12701)
    #dbg_value(ptr poison, !12698, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !12701)
    #dbg_declare(ptr poison, !12696, !DIExpression(), !12703)
    #dbg_value(i64 %i.q, !12697, !DIExpression(), !12701)
    #dbg_value(i64 %i.q, !12704, !DIExpression(), !12708)
    #dbg_value(i64 %i.q, !12710, !DIExpression(), !12714)
    #dbg_value(ptr %i.l, !12707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12708)
    #dbg_value(ptr %i.l, !12713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12714)
    #dbg_value(i64 3, !12707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12708)
    #dbg_value(i64 3, !12713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12714)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.q, !dbg !12716 ; 2 uses
    #dbg_value(ptr %i.r, !12717, !DIExpression(), !12720)
    #dbg_value(ptr %i.r, !12722, !DIExpression(), !12725)
    #dbg_value(ptr %i.r, !12727, !DIExpression(), !12730)
  %i.s = load i8, ptr %i.r, align 2, !dbg !12732, !alias.scope !12733, !noalias !12734, !noundef !221
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !12732
  %i.u = load i8, ptr %i.t, align 1, !dbg !12732, !alias.scope !12733, !noalias !12734, !noundef !221
    #dbg_value(i8 %i.s, !12699, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12744)
    #dbg_value(i8 %i.u, !12699, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12744)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12755)
    #dbg_declare(ptr poison, !12751, !DIExpression(), !12757)
    #dbg_value(i8 %i.s, !12752, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12755)
    #dbg_value(i8 %i.u, !12752, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12755)
    #dbg_value(ptr poison, !12758, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12768)
    #dbg_declare(ptr poison, !12765, !DIExpression(), !12770)
    #dbg_value(i8 %i.s, !12764, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12768)
    #dbg_value(i8 %i.u, !12764, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12768)
    #dbg_value(ptr poison, !12771, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !12779)
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12779)
    #dbg_value(i8 %i.s, !12777, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12779)
    #dbg_value(i8 %i.u, !12777, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12779)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.p, !dbg !12781 ; 2 uses
  store i8 %i.s, ptr %i.v, align 1, !dbg !12784, !noalias !12787
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !12784
  store i8 %i.u, ptr %i.w, align 1, !dbg !12784, !noalias !12787
    #dbg_value(i64 %i.q, !12650, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12688)
    #dbg_value(i64 %i.q, !12668, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12689)
    #dbg_value(i64 %i.q, !12676, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12677)
    #dbg_declare(ptr poison, !12696, !DIExpression(), !12703)
    #dbg_value(i64 %i.q, !12697, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12701)
    #dbg_value(i64 %i.q, !12704, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12708)
    #dbg_value(i64 %i.q, !12710, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !12714)
    #dbg_value(ptr %i.l, !12707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12708)
    #dbg_value(ptr %i.l, !12713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12714)
    #dbg_value(i64 3, !12707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12708)
    #dbg_value(i64 3, !12713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12714)
  %i.x = icmp ult i64 %i.q, 2, !dbg !12794
  tail call void @llvm.assume(i1 %i.x), !dbg !12795
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.q, !dbg !12716 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2, !dbg !12716
    #dbg_value(ptr %i.z, !12717, !DIExpression(), !12720)
    #dbg_value(ptr %i.z, !12722, !DIExpression(), !12725)
    #dbg_value(ptr %i.z, !12727, !DIExpression(), !12730)
  %i.aa = load i8, ptr %i.z, align 2, !dbg !12732, !alias.scope !12733, !noalias !12734, !noundef !221
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 3, !dbg !12732
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !12732, !alias.scope !12733, !noalias !12734, !noundef !221
    #dbg_value(i8 %i.aa, !12699, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12744)
    #dbg_value(i8 %i.ac, !12699, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12744)
    #dbg_declare(ptr poison, !12751, !DIExpression(), !12757)
    #dbg_value(i8 %i.aa, !12752, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12755)
    #dbg_value(i8 %i.ac, !12752, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12755)
    #dbg_declare(ptr poison, !12765, !DIExpression(), !12770)
    #dbg_value(i8 %i.aa, !12764, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12768)
    #dbg_value(i8 %i.ac, !12764, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12768)
    #dbg_value(i8 %i.aa, !12777, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12779)
    #dbg_value(i8 %i.ac, !12777, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12779)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.p, !dbg !12781 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2, !dbg !12781
  store i8 %i.aa, ptr %i.ae, align 1, !dbg !12784, !noalias !12787
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 3, !dbg !12784
  store i8 %i.ac, ptr %i.af, align 1, !dbg !12784, !noalias !12787
  %i.ag = add nuw i64 %i.p, 2, !dbg !12796        ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !12686  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !12686
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !dbg !12686

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = trunc i64 %i.c to i1, !dbg !12686
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12686

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init3 = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.c to i1, !dbg !12686
  tail call void @llvm.assume(i1 %lcmp.mod5), !dbg !12686
    #dbg_value(i64 %.epil.init3, !12650, !DIExpression(), !12688)
    #dbg_value(i64 %.epil.init3, !12668, !DIExpression(), !12689)
    #dbg_value(i64 %.epil.init3, !12676, !DIExpression(), !12677)
    #dbg_value(ptr poison, !12690, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12701)
    #dbg_value(ptr poison, !12698, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !12701)
    #dbg_declare(ptr poison, !12696, !DIExpression(), !12703)
    #dbg_value(i64 %.epil.init3, !12697, !DIExpression(), !12701)
    #dbg_value(i64 %.epil.init3, !12704, !DIExpression(), !12708)
    #dbg_value(i64 %.epil.init3, !12710, !DIExpression(), !12714)
    #dbg_value(ptr %i.l, !12707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12708)
    #dbg_value(ptr %i.l, !12713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12714)
    #dbg_value(i64 3, !12707, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12708)
    #dbg_value(i64 3, !12713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12714)
  %i.ah = icmp ult i64 %.epil.init3, 3, !dbg !12794
  tail call void @llvm.assume(i1 %i.ah), !dbg !12795
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.epil.init3, !dbg !12716 ; 2 uses
    #dbg_value(ptr %i.ai, !12717, !DIExpression(), !12720)
    #dbg_value(ptr %i.ai, !12722, !DIExpression(), !12725)
    #dbg_value(ptr %i.ai, !12727, !DIExpression(), !12730)
  %i.aj = load i8, ptr %i.ai, align 2, !dbg !12732, !alias.scope !12733, !noalias !12734, !noundef !221
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !12732
  %i.al = load i8, ptr %i.ak, align 1, !dbg !12732, !alias.scope !12733, !noalias !12734, !noundef !221
    #dbg_value(i8 %i.aj, !12699, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12744)
    #dbg_value(i8 %i.al, !12699, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12744)
    #dbg_value(ptr poison, !12745, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12755)
    #dbg_declare(ptr poison, !12751, !DIExpression(), !12757)
    #dbg_value(i8 %i.aj, !12752, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12755)
    #dbg_value(i8 %i.al, !12752, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12755)
    #dbg_value(ptr poison, !12758, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12768)
    #dbg_declare(ptr poison, !12765, !DIExpression(), !12770)
    #dbg_value(i8 %i.aj, !12764, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12768)
    #dbg_value(i8 %i.al, !12764, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12768)
    #dbg_value(ptr poison, !12771, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !12779)
    #dbg_value(ptr poison, !12778, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12779)
    #dbg_value(i8 %i.aj, !12777, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12779)
    #dbg_value(i8 %i.al, !12777, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12779)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.epil.init, !dbg !12781 ; 2 uses
  store i8 %i.aj, ptr %i.am, align 1, !dbg !12784, !noalias !12787
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !12784
  store i8 %i.al, ptr %i.an, align 1, !dbg !12784, !noalias !12787
  %i.ao = add nuw i64 %.epil.init, 1, !dbg !12796
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12799

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], [ %i.ag, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.epil.preheader ], !dbg !12800
    #dbg_value(ptr undef, !12467, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12565)
    #dbg_value(ptr undef, !12566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12579)
    #dbg_value(ptr undef, !12581, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12593)
    #dbg_value(ptr undef, !12595, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12605)
    #dbg_value(ptr undef, !12607, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12622)
    #dbg_value(ptr undef, !12639, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12658)
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !12481, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12549)
  store i64 %i.g, ptr %0, align 8, !dbg !12799, !noalias !12487
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12799
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12799, !noalias !12487
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12799
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12799, !noalias !12487
  ret void, !dbg !12801
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12802 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !12838, !DIExpression(), !12841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12842), !dbg !12845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12846), !dbg !12845
    #dbg_value(ptr poison, !12848, !DIExpression(), !12879)
    #dbg_value(ptr poison, !12883, !DIExpression(), !12895)
    #dbg_declare(ptr %1, !12890, !DIExpression(), !12896)
    #dbg_declare(ptr poison, !12897, !DIExpression(), !12904)
    #dbg_declare(ptr poison, !12913, !DIExpression(), !12920)
  %.val.i = load i64, ptr %1, align 8, !dbg !12922, !alias.scope !12846, !noalias !12842, !noundef !221 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12922
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !12922, !alias.scope !12846, !noalias !12842, !noundef !221 ; 4 uses
    #dbg_value(ptr poison, !12923, !DIExpression(), !12929)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !12931 ; 2 uses
    #dbg_value(i64 %i.c, !12892, !DIExpression(), !12956)
    #dbg_value(i64 %i.c, !12911, !DIExpression(), !12957)
    #dbg_value(i64 %i.c, !12903, !DIExpression(), !12958)
    #dbg_value(i64 %i.c, !12919, !DIExpression(), !12959)
    #dbg_value(i64 %i.c, !10512, !DIExpression(), !12960)
    #dbg_value(i64 %i.c, !10542, !DIExpression(), !12962)
    #dbg_declare(ptr poison, !10518, !DIExpression(), !12964)
    #dbg_value(i64 4, !10519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12960)
    #dbg_value(i64 4, !10547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12962)
    #dbg_value(i64 8, !10519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12960)
    #dbg_value(i64 8, !10547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12962)
    #dbg_value(i64 0, !10546, !DIExpression(), !12962)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12965, !noalias !12966
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !12965, !noalias !12966
  %i.d = load i64, ptr %i.a, align 8, !dbg !12965, !range !1422, !noalias !12966, !noundef !221
  %i.e = trunc nuw i64 %i.d to i1, !dbg !12967
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12960
  %i.g = load i64, ptr %i.f, align 8, !dbg !12960, !range !10557, !noalias !12966, !noundef !221 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12960 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !12967, !prof !1502

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !12968, !noalias !12966
    #dbg_value(i64 %i.g, !10522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12969)
    #dbg_value(i64 %i.i, !10522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12969)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !12970, !noalias !12966
  unreachable, !dbg !12970

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !12971, !noalias !12966, !nonnull !221, !noundef !221 ; 2 uses
    #dbg_value(i64 %i.g, !10520, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12972)
    #dbg_value(ptr %i.j, !10520, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12972)
    #dbg_value(ptr poison, !10545, !DIExpression(), !12973)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !12974
    #dbg_value(i1 true, !10565, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12975)
  tail call void @llvm.assume(i1 %i.k), !dbg !12977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12978, !noalias !12966
    #dbg_value(i64 %i.g, !12891, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12979)
    #dbg_value(ptr %i.j, !12891, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12979)
    #dbg_value(i64 0, !12891, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12979)
    #dbg_value(i64 %.val.i, !12884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12895)
    #dbg_value(i64 %.val.i, !12856, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12879)
    #dbg_value(i64 %.val5.i, !12884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12895)
    #dbg_value(i64 %.val5.i, !12856, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12879)
    #dbg_value(i32 poison, !12884, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !12895)
    #dbg_value(i32 poison, !12856, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !12879)
    #dbg_value(i32 poison, !12884, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !12895)
    #dbg_value(i32 poison, !12856, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !12879)
    #dbg_value(ptr undef, !12883, !DIExpression(), !12895)
    #dbg_value(ptr undef, !12848, !DIExpression(), !12879)
    #dbg_value(ptr poison, !12923, !DIExpression(), !12980)
    #dbg_value(i64 poison, !12857, !DIExpression(), !12982)
    #dbg_value(i64 1, !12859, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12982)
    #dbg_value(i64 %i.c, !12859, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12982)
    #dbg_value(i64 %i.c, !12860, !DIExpression(), !12983)
    #dbg_value(ptr poison, !12875, !DIExpression(), !12984)
    #dbg_value(ptr undef, !12877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12985)
    #dbg_value(i64 0, !12877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12985)
    #dbg_value(i64 %.val.i, !12986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12999)
    #dbg_value(i64 %.val.i, !13001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13013)
    #dbg_value(i64 %.val5.i, !12986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12999)
    #dbg_value(i64 %.val5.i, !13001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
    #dbg_value(i32 poison, !12986, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !12999)
    #dbg_value(i32 poison, !13001, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13013)
    #dbg_value(i32 poison, !12986, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !12999)
    #dbg_value(i32 poison, !13001, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13013)
    #dbg_value(ptr poison, !12995, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12999)
    #dbg_value(ptr poison, !13010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13013)
    #dbg_value(ptr poison, !13015, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13029)
    #dbg_value(ptr poison, !13031, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13051)
    #dbg_value(ptr undef, !12995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12999)
    #dbg_value(ptr undef, !13010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13013)
    #dbg_value(ptr undef, !13015, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13029)
    #dbg_value(ptr undef, !13031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13051)
    #dbg_value(i64 0, !12995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12999)
    #dbg_value(i64 0, !13010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13013)
    #dbg_value(i64 0, !13015, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13029)
    #dbg_value(i64 0, !13031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13051)
    #dbg_declare(ptr poison, !13009, !DIExpression(), !13053)
    #dbg_declare(ptr poison, !13028, !DIExpression(), !13054)
    #dbg_declare(ptr poison, !13043, !DIExpression(), !13055)
    #dbg_value(ptr undef, !13027, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13029)
    #dbg_value(ptr undef, !13042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13051)
    #dbg_value(i64 1, !13027, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13029)
    #dbg_value(i64 1, !13042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13051)
    #dbg_value(ptr undef, !13044, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13056)
    #dbg_value(i64 1, !13044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13056)
    #dbg_value(ptr undef, !13057, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13076)
    #dbg_value(i64 1, !13057, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13076)
    #dbg_value(ptr undef, !13057, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13076)
    #dbg_value(i64 0, !13057, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13076)
    #dbg_value(ptr poison, !13057, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13076)
    #dbg_value(ptr undef, !13066, !DIExpression(), !13076)
    #dbg_value(ptr undef, !13078, !DIExpression(), !13081)
    #dbg_declare(ptr poison, !13067, !DIExpression(), !13083)
  %i.l = icmp ule i64 %.val.i, %.val5.i, !dbg !13084
    #dbg_value(i1 true, !13085, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13088)
  tail call void @llvm.assume(i1 %i.l), !dbg !13090
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !13091
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.preheader.i.i.i.i.i, !dbg !13091

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
    #dbg_value(i32 poison, !12884, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !12895)
    #dbg_value(i32 poison, !12856, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !12879)
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13092
    #dbg_value(i32 poison, !12884, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !12895)
    #dbg_value(i32 poison, !12856, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !12879)
    #dbg_value(i32 poison, !12986, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !12999)
    #dbg_value(i32 poison, !13001, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13013)
    #dbg_value(i32 poison, !12986, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !12999)
    #dbg_value(i32 poison, !13001, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13013)
    #dbg_value(ptr %i.j, !12875, !DIExpression(), !12984)
    #dbg_value(ptr %i.j, !12995, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12999)
    #dbg_value(ptr %i.j, !13010, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13013)
    #dbg_value(ptr %i.j, !13015, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13029)
    #dbg_value(ptr %i.j, !13031, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13051)
    #dbg_value(ptr %i.j, !13057, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13076)
end_hunk_1
