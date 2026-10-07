Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.00?download=true
inline.NumInlined: 948
inline.NumDeleted: 510
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetECs9GYDdpCSJ4S_14regex_automata:bb.a
  br label %bb.h, !dbg !9650

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetEECs9GYDdpCSJ4S_14regex_automata.exit, %bb.d
  ret void, !dbg !9650

bb.i:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(160) %0) #22
          to label %common.resume unwind label %bb.k, !dbg !9650

bb.j:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast16ClassSetBinaryOpECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(72) %0) #22
          to label %common.resume unwind label %bb.k, !dbg !9650

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !9650
  unreachable, !dbg !9650
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !539 {
bb.a:
    #dbg_value(ptr %0, !3328, !DIExpression(), !9690)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !9691

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #22
          to label %bb.g unwind label %bb.f, !dbg !9691

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.d, !dbg !9691

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9691
  %.val = load ptr, ptr %i.c, align 8, !dbg !9691, !nonnull !1180, !noundef !1180
    #dbg_value(ptr poison, !3334, !DIExpression(), !9659)
    #dbg_value(ptr poison, !3341, !DIExpression(), !9661)
    #dbg_value(ptr poison, !3347, !DIExpression(), !9663)
    #dbg_value(ptr %.val, !3348, !DIExpression(), !9664)
    #dbg_value(i64 8, !3349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9665)
    #dbg_value(i64 80, !3349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9665)
    #dbg_value(ptr poison, !3081, !DIExpression(), !9667)
    #dbg_value(ptr poison, !3088, !DIExpression(), !9669)
    #dbg_value(ptr %.val, !3085, !DIExpression(), !9667)
    #dbg_value(ptr %.val, !3091, !DIExpression(), !9669)
    #dbg_value(ptr %.val, !3094, !DIExpression(), !9671)
    #dbg_value(ptr %.val, !3100, !DIExpression(), !9673)
    #dbg_value(i64 8, !3086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9667)
    #dbg_value(i64 8, !3092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9669)
    #dbg_value(i64 8, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9671)
    #dbg_value(i64 8, !3101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9673)
    #dbg_value(i64 80, !3086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9667)
    #dbg_value(i64 80, !3092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9669)
    #dbg_value(i64 80, !3098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9671)
    #dbg_value(i64 80, !3101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9673)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #24, !dbg !9692
  ret void, !dbg !9691

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !9691
  unreachable, !dbg !9691

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !9691
  %.val3 = load ptr, ptr %i.e, align 8, !dbg !9691, !nonnull !1180, !noundef !1180
    #dbg_value(ptr poison, !3334, !DIExpression(), !9675)
    #dbg_value(ptr poison, !3341, !DIExpression(), !9677)
    #dbg_value(ptr poison, !3347, !DIExpression(), !9679)
    #dbg_value(ptr %.val3, !3348, !DIExpression(), !9680)
    #dbg_value(i64 8, !3349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9681)
    #dbg_value(i64 80, !3349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9681)
    #dbg_value(ptr poison, !3081, !DIExpression(), !9683)
    #dbg_value(ptr poison, !3088, !DIExpression(), !9685)
    #dbg_value(ptr %.val3, !3085, !DIExpression(), !9683)
    #dbg_value(ptr %.val3, !3091, !DIExpression(), !9685)
    #dbg_value(ptr %.val3, !3094, !DIExpression(), !9687)
    #dbg_value(ptr %.val3, !3100, !DIExpression(), !9689)
    #dbg_value(i64 8, !3086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9683)
    #dbg_value(i64 8, !3092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9685)
    #dbg_value(i64 8, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9687)
    #dbg_value(i64 8, !3101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9689)
    #dbg_value(i64 80, !3086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9683)
    #dbg_value(i64 80, !3092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9685)
    #dbg_value(i64 80, !3098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9687)
    #dbg_value(i64 80, !3101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9689)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 80, i64 noundef 8) #24, !dbg !9693
  resume { ptr, i32 } %.pn, !dbg !9691
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9694 {
bb.a:
    #dbg_value(ptr %0, !9809, !DIExpression(), !9813)
  %i.a = load i64, ptr %0, align 8, !dbg !9818, !range !3786, !noundef !1180 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !9818
  tail call void @llvm.assume(i1 %i.b), !dbg !9818
  %i.c = add nsw i64 %i.a, -2, !dbg !9818
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !9818
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !9818
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit
    i64 4, label %bb.j
    i64 5, label %bb.k
    i64 6, label %bb.m
  ], !dbg !9818

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9818 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9814), !dbg !9818
    #dbg_value(ptr %i.e, !2523, !DIExpression(), !9698)
    #dbg_value(ptr %i.e, !2527, !DIExpression(), !9700)
    #dbg_value(ptr %i.e, !2529, !DIExpression(), !9702)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9866
  %i.g = load ptr, ptr %i.f, align 8, !dbg !9866, !alias.scope !9815, !nonnull !1180, !noundef !1180
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9867
  %i.i = load i64, ptr %i.h, align 8, !dbg !9867, !alias.scope !9815, !noundef !1180
    #dbg_value(ptr %i.g, !2549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9709)
    #dbg_value(ptr %i.g, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9711)
    #dbg_value(i64 %i.i, !2549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9709)
    #dbg_value(i64 %i.i, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9711)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 %i.g, i64 noundef %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.c, !dbg !9868, !noalias !9814, !inline_history !9816

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !2563, !DIExpression(), !9713)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d, !dbg !9869, !inline_history !9817

common.resume:                                    ; preds = %bb.n, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.aa, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !9870

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !9871, !inline_history !9817
  unreachable, !dbg !9871

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
    #dbg_value(ptr %i.e, !2563, !DIExpression(), !9715)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !9872, !inline_history !9817
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9818

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit, %bb.a, %bb.a
  ret void, !dbg !9818

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9818
  %.val1 = load i64, ptr %i.l, align 8, !dbg !9818, !noundef !1180 ; 2 uses
    #dbg_value(ptr poison, !9820, !DIExpression(), !9718)
    #dbg_value(ptr poison, !9827, !DIExpression(), !9721)
    #dbg_value(ptr poison, !9833, !DIExpression(), !9729)
    #dbg_value(ptr poison, !9834, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9730)
    #dbg_value(i64 %.val1, !9834, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9730)
    #dbg_value(i64 1, !9835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9731)
    #dbg_value(i64 %.val1, !9835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9731)
  %i.m = icmp eq i64 %.val1, 0, !dbg !9873
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.f, !dbg !9873

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9818
  %.val = load ptr, ptr %i.n, align 8, !dbg !9818, !nonnull !1180, !noundef !1180
    #dbg_value(ptr %.val, !9834, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9730)
    #dbg_value(ptr poison, !3081, !DIExpression(), !9733)
    #dbg_value(ptr poison, !3088, !DIExpression(), !9735)
    #dbg_value(ptr %.val, !3085, !DIExpression(), !9733)
    #dbg_value(ptr %.val, !3091, !DIExpression(), !9735)
    #dbg_value(ptr %.val, !3094, !DIExpression(), !9737)
    #dbg_value(ptr %.val, !3100, !DIExpression(), !9739)
    #dbg_value(i64 1, !3086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9733)
    #dbg_value(i64 1, !3092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9735)
    #dbg_value(i64 1, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9737)
    #dbg_value(i64 1, !3101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9739)
    #dbg_value(i64 %.val1, !3086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9733)
    #dbg_value(i64 %.val1, !3092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9735)
    #dbg_value(i64 %.val1, !3098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9737)
    #dbg_value(i64 %.val1, !3101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9739)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #24, !dbg !9874
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9875

bb.g:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9843, !DIExpression(), !9742)
  %1 = icmp eq i64 %i.a, 0, !dbg !9876
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9876 ; 2 uses
  br i1 %1, label %bb.h, label %bb.i, !dbg !9876

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.o, !3788, !DIExpression(), !9744)
    #dbg_value(ptr %i.o, !3795, !DIExpression(), !9746)
    #dbg_value(ptr %i.o, !3801, !DIExpression(), !9748)
    #dbg_value(ptr %i.o, !3806, !DIExpression(), !9750)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o), !dbg !9877
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9876

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr %i.o, !3813, !DIExpression(), !9752)
    #dbg_value(ptr %i.o, !3820, !DIExpression(), !9754)
    #dbg_value(ptr %i.o, !3826, !DIExpression(), !9756)
    #dbg_value(ptr %i.o, !3831, !DIExpression(), !9758)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o), !dbg !9878
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9876

bb.j:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9850, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !9761)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9879
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(8) %i.p), !dbg !9879, !inline_history !9762
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9818

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9856), !dbg !9818
    #dbg_value(ptr %i.q, !9858, !DIExpression(), !9767)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9880
  %.val.i = load ptr, ptr %i.r, align 8, !dbg !9880, !alias.scope !9856, !noundef !1180 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9880
  %.val2.i = load i64, ptr %i.s, align 8, !dbg !9880, !alias.scope !9856 ; 2 uses
    #dbg_value(ptr poison, !3839, !DIExpression(), !9769)
  %i.t = icmp eq ptr %.val.i, null, !dbg !9881
    #dbg_value(ptr poison, !3846, !DIExpression(), !9771)
    #dbg_value(ptr poison, !3850, !DIExpression(), !9773)
    #dbg_value(ptr poison, !3851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9774)
    #dbg_value(i64 %.val2.i, !3851, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9774)
    #dbg_value(i64 1, !3852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9775)
    #dbg_value(i64 %.val2.i, !3852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9775)
  %i.u = icmp eq i64 %.val2.i, 0
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.u, !dbg !9881
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.l, !dbg !9881

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !9856
    #dbg_value(ptr %.val.i, !3851, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9774)
    #dbg_value(ptr poison, !3081, !DIExpression(), !9777)
    #dbg_value(ptr poison, !3088, !DIExpression(), !9779)
    #dbg_value(ptr %.val.i, !3085, !DIExpression(), !9777)
    #dbg_value(ptr %.val.i, !3091, !DIExpression(), !9779)
    #dbg_value(ptr %.val.i, !3094, !DIExpression(), !9781)
    #dbg_value(ptr %.val.i, !3100, !DIExpression(), !9783)
    #dbg_value(i64 1, !3086, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9777)
    #dbg_value(i64 1, !3092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9779)
    #dbg_value(i64 1, !3098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9781)
    #dbg_value(i64 1, !3101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9783)
    #dbg_value(i64 %.val2.i, !3086, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9777)
    #dbg_value(i64 %.val2.i, !3092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9779)
    #dbg_value(i64 %.val2.i, !3098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9781)
    #dbg_value(i64 %.val2.i, !3101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9783)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #24, !dbg !9882, !noalias !9856
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9883

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.l, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !dbg !9880, !inline_history !9784
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9818

bb.m:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9818 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9864), !dbg !9818
    #dbg_value(ptr %i.v, !2523, !DIExpression(), !9788)
    #dbg_value(ptr %i.v, !2527, !DIExpression(), !9790)
    #dbg_value(ptr %i.v, !2529, !DIExpression(), !9792)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9884
  %i.x = load ptr, ptr %i.w, align 8, !dbg !9884, !alias.scope !9865, !nonnull !1180, !noundef !1180
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9885
  %i.z = load i64, ptr %i.y, align 8, !dbg !9885, !alias.scope !9865, !noundef !1180
    #dbg_value(ptr %i.x, !2549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9799)
    #dbg_value(ptr %i.x, !2560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9801)
    #dbg_value(i64 %i.z, !2549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9799)
    #dbg_value(i64 %i.z, !2560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9801)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 %i.x, i64 noundef %i.z)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit3 unwind label %bb.n, !dbg !9886, !noalias !9864, !inline_history !9816

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.v, !2563, !DIExpression(), !9803)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.o, !dbg !9887, !inline_history !9817

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !9888, !inline_history !9817
  unreachable, !dbg !9888

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit3: ; preds = %bb.m
    #dbg_value(ptr %i.v, !2563, !DIExpression(), !9805)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v), !dbg !9889, !inline_history !9817
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9818
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3ast5parse10ClassStateECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9890 {
bb.a:
    #dbg_value(ptr %0, !9932, !DIExpression(), !9934)
  %i.a = load i64, ptr %0, align 8, !dbg !9940, !range !3655, !noundef !1180
  %.not = icmp eq i64 %i.a, -1, !dbg !9940
  br i1 %.not, label %bb.h, label %bb.b, !dbg !9940

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9935), !dbg !9940
    #dbg_value(ptr %0, !3717, !DIExpression(), !9894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9936), !dbg !9941
    #dbg_value(ptr %0, !3724, !DIExpression(), !9898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9937), !dbg !9942
    #dbg_value(ptr %0, !3730, !DIExpression(), !9902)
    #dbg_value(ptr %0, !3732, !DIExpression(), !9904)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9943
  %i.c = load ptr, ptr %i.b, align 8, !dbg !9943, !alias.scope !9938, !nonnull !1180, !noundef !1180 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9944
  %i.e = load i64, ptr %i.d, align 8, !dbg !9944, !alias.scope !9938, !noundef !1180 ; 4 uses
    #dbg_value(ptr %i.c, !3752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9909)
    #dbg_value(ptr %i.c, !3763, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9911)
    #dbg_value(i64 %i.e, !3752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9909)
    #dbg_value(i64 %i.e, !3763, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9911)
    #dbg_value(ptr %i.c, !3765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9913)
    #dbg_value(i64 %i.e, !3765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9913)
  %i.f = icmp eq i64 %i.e, 0, !dbg !9945
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i, label %.lr.ph, !dbg !9945

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e, !dbg !9945
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i, label %.lr.ph, !dbg !9945

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i2 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [160 x i8], ptr %i.c, i64 %.sroa.0.0.i.i.i.i2, !dbg !9945
  %i.i = add i64 %.sroa.0.0.i.i.i.i2, 1, !dbg !9945 ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(160) %i.h)
          to label %bb.c unwind label %bb.e, !dbg !9945, !noalias !9938, !inline_history !9914

bb.d:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i.i.i.i3, 1, !dbg !9945 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e, !dbg !9945
  br i1 %i.k, label %.body.i.i, label %.lr.ph4, !dbg !9945

bb.e:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e, !dbg !9945
  br i1 %i.m, label %.body.i.i, label %.lr.ph4, !dbg !9945

.lr.ph4:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i3 = phi i64 [ %i.j, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %i.c, i64 %.sroa.0.1.i.i.i.i3, !dbg !9945
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(160) %i.n) #22
          to label %bb.d unwind label %bb.f, !dbg !9945, !noalias !9938, !inline_history !9914

bb.f:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !9945, !noalias !9938, !inline_history !9914
  unreachable, !dbg !9945

.body.i.i:                                        ; preds = %bb.d, %bb.e
    #dbg_value(ptr %0, !3773, !DIExpression(), !9916)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body unwind label %bb.g, !dbg !9946, !inline_history !9917

bb.g:                                             ; preds = %.body.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !9942, !inline_history !9917
  unreachable, !dbg !9942

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %bb.c, %bb.b
    #dbg_value(ptr %0, !3773, !DIExpression(), !9919)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.i, !dbg !9947, !inline_history !9920

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9940
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast8ClassSetECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(160) %i.q), !dbg !9940
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast14ClassBracketedECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !9940

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !9940

.body:                                            ; preds = %.body.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.l, %.body.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !9940
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast14ClassBracketedECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(216) %i.s) #22
          to label %common.resume unwind label %bb.q, !dbg !9940

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3ast13ClassSetUnionECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3ast12ClassSetItemEECs9GYDdpCSJ4S_14regex_automata.exit.i
    #dbg_value(ptr %0, !3153, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !9922)
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata:bb.a
    #dbg_declare(ptr poison, !12772, !DIExpression(), !12596)
    #dbg_value(ptr undef, !12760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12597)
    #dbg_value(ptr undef, !12771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12598)
    #dbg_value(i64 1, !12760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12597)
    #dbg_value(i64 1, !12771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12598)
    #dbg_value(ptr undef, !12773, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12599)
    #dbg_value(i64 1, !12773, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12599)
    #dbg_value(ptr undef, !12775, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12606)
    #dbg_value(i64 1, !12775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12606)
    #dbg_value(ptr undef, !12775, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12606)
    #dbg_value(i64 0, !12775, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12606)
    #dbg_value(ptr poison, !12775, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12606)
    #dbg_value(ptr undef, !12781, !DIExpression(), !12607)
    #dbg_value(ptr undef, !12789, !DIExpression(), !12610)
    #dbg_declare(ptr poison, !12782, !DIExpression(), !12611)
  %i.l = icmp ule i64 %.val.i, %.val5.i, !dbg !12846
    #dbg_value(i1 true, !12791, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12614)
  tail call void @llvm.assume(i1 %i.l), !dbg !12847
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !12848
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.preheader.i.i.i.i.i, !dbg !12848

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !12849
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !dbg !12849, !alias.scope !12686, !noalias !12685
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12710, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12570)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12693, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12571)
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12849
  %.sroa.510.0.copyload.i = load i8, ptr %.sroa.510.0..sroa_idx.i, align 8, !dbg !12849, !alias.scope !12686, !noalias !12685
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12710, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12570)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12693, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12571)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12733, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12581)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12744, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !12585)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12733, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12581)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12744, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !12585)
    #dbg_value(ptr %i.j, !12706, !DIExpression(), !12576)
    #dbg_value(ptr %i.j, !12739, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12581)
    #dbg_value(ptr %i.j, !12750, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12585)
    #dbg_value(ptr %i.j, !12754, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12588)
    #dbg_value(ptr %i.j, !12763, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12593)
    #dbg_value(ptr %i.j, !12775, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12606)
    #dbg_value(ptr undef, !12773, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12599)
    #dbg_value(ptr undef, !12775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12606)
  %.not.i.i.i.i.i.i = icmp eq i64 %.val5.i, 1
    #dbg_value(i64 poison, !12783, !DIExpression(), !12615)
    #dbg_value(ptr poison, !12793, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12619)
    #dbg_value(ptr poison, !12799, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !12619)
    #dbg_declare(ptr poison, !12797, !DIExpression(), !12620)
    #dbg_value(i64 poison, !12798, !DIExpression(), !12619)
    #dbg_value(i64 poison, !12802, !DIExpression(), !12623)
    #dbg_value(i64 poison, !12805, !DIExpression(), !12626)
    #dbg_value(ptr undef, !12803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12623)
    #dbg_value(ptr undef, !12806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12626)
    #dbg_value(i64 1, !12803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12623)
    #dbg_value(i64 1, !12806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12626)
  %i.m = icmp eq i64 %.val.i, 0, !dbg !12850
  tail call void @llvm.assume(i1 %i.m), !dbg !12851
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12800, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12627)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12800, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12627)
    #dbg_value(ptr poison, !12808, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12630)
    #dbg_declare(ptr poison, !12812, !DIExpression(), !12631)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12813, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12630)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12813, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12630)
    #dbg_value(ptr poison, !12817, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12634)
    #dbg_declare(ptr poison, !12822, !DIExpression(), !12635)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12821, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12634)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12821, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12634)
    #dbg_value(ptr poison, !12826, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !12638)
    #dbg_value(ptr poison, !12831, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12638)
    #dbg_value(i8 %.sroa.510.0.copyload.i, !12830, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12638)
    #dbg_value(i8 %.sroa.6.0.copyload.i, !12830, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12638)
  store i8 %.sroa.510.0.copyload.i, ptr %i.j, align 1, !dbg !12852, !noalias !12833
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !12852
  store i8 %.sroa.6.0.copyload.i, ptr %i.n, align 1, !dbg !12852, !noalias !12833
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !12848

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.preheader.i.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], !dbg !12853
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !12714, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12569)
  store i64 %i.g, ptr %0, align 8, !dbg !12854, !alias.scope !12685, !noalias !12686
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12854
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12854, !alias.scope !12685, !noalias !12686
  %.sroa.6.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12854
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx15.i, align 8, !dbg !12854, !alias.scope !12685, !noalias !12686
  ret void, !dbg !12855
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12860 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !13053, !DIExpression(), !12877)
    #dbg_value(ptr poison, !13075, !DIExpression(), !12878)
    #dbg_declare(ptr %1, !13049, !DIExpression(), !13083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13084), !dbg !13220
    #dbg_declare(ptr %1, !13079, !DIExpression(), !12881)
    #dbg_declare(ptr poison, !13085, !DIExpression(), !12886)
    #dbg_declare(ptr poison, !13090, !DIExpression(), !12889)
  %.val.i = load i64, ptr %1, align 8, !dbg !13221, !alias.scope !13084, !noalias !13093, !noundef !1180 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13221
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !13221, !alias.scope !13084, !noalias !13093, !noundef !1180 ; 4 uses
    #dbg_value(ptr poison, !13095, !DIExpression(), !12893)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !13222 ; 5 uses
    #dbg_value(i64 %i.c, !13081, !DIExpression(), !12900)
    #dbg_value(i64 %i.c, !13088, !DIExpression(), !12901)
    #dbg_value(i64 %i.c, !13086, !DIExpression(), !12902)
    #dbg_value(i64 %i.c, !13091, !DIExpression(), !12903)
    #dbg_value(i64 %i.c, !4356, !DIExpression(), !12905)
    #dbg_value(i64 %i.c, !4376, !DIExpression(), !12907)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !12908)
    #dbg_value(i64 1, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12905)
    #dbg_value(i64 1, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12907)
    #dbg_value(i64 2, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12905)
    #dbg_value(i64 2, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12907)
    #dbg_value(i64 0, !4378, !DIExpression(), !12907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13223, !noalias !13099
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !dbg !13223, !noalias !13099
  %i.d = load i64, ptr %i.a, align 8, !dbg !13223, !range !1547, !noalias !13099, !noundef !1180
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13224
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13225
  %i.g = load i64, ptr %i.f, align 8, !dbg !13225, !range !4381, !noalias !13099, !noundef !1180 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13225 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !13224, !prof !1567

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !13226, !noalias !13099
    #dbg_value(i64 %i.g, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12909)
    #dbg_value(i64 %i.i, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12909)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !13227, !noalias !13099
  unreachable, !dbg !13227

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !13228, !noalias !13099, !nonnull !1180, !noundef !1180 ; 4 uses
    #dbg_value(i64 %i.g, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12910)
    #dbg_value(ptr %i.j, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12910)
    #dbg_value(ptr poison, !4377, !DIExpression(), !12911)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !13229
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12913)
  tail call void @llvm.assume(i1 %i.k), !dbg !13230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13231, !noalias !13099
    #dbg_value(i64 %i.g, !13080, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13100)
    #dbg_value(ptr %i.j, !13080, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13101), !dbg !13232
    #dbg_value(ptr undef, !13075, !DIExpression(), !12878)
    #dbg_declare(ptr %1, !13076, !DIExpression(), !12916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13102), !dbg !13233
    #dbg_value(ptr undef, !13053, !DIExpression(), !12877)
    #dbg_declare(ptr %1, !13059, !DIExpression(), !12919)
    #dbg_value(ptr poison, !13095, !DIExpression(), !12921)
    #dbg_value(i64 poison, !13060, !DIExpression(), !12922)
    #dbg_value(i64 1, !13061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12922)
    #dbg_value(i64 %i.c, !13061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12922)
    #dbg_value(i64 %i.c, !13062, !DIExpression(), !12923)
    #dbg_value(ptr %i.j, !13072, !DIExpression(), !12924)
    #dbg_value(ptr undef, !13073, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12925)
    #dbg_value(i64 0, !13073, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12925)
    #dbg_value(ptr %i.j, !13103, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12929)
    #dbg_value(ptr %i.j, !13114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12933)
    #dbg_value(ptr %i.j, !13124, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12936)
    #dbg_value(ptr %i.j, !13133, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12941)
    #dbg_value(ptr undef, !13103, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12929)
    #dbg_value(ptr undef, !13114, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12933)
    #dbg_value(ptr undef, !13124, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12936)
    #dbg_value(ptr undef, !13133, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12941)
    #dbg_value(i64 0, !13103, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12929)
    #dbg_value(i64 0, !13114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12933)
    #dbg_value(i64 0, !13124, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12936)
    #dbg_value(i64 0, !13133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13145), !dbg !13234
    #dbg_declare(ptr %1, !13109, !DIExpression(), !12944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13146), !dbg !13235
    #dbg_declare(ptr %1, !13119, !DIExpression(), !12947)
    #dbg_declare(ptr poison, !13120, !DIExpression(), !12948)
    #dbg_declare(ptr poison, !13131, !DIExpression(), !12949)
    #dbg_declare(ptr poison, !13142, !DIExpression(), !12950)
    #dbg_value(ptr %1, !13130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12951)
    #dbg_value(ptr %1, !13141, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12952)
    #dbg_value(i64 2, !13130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12951)
    #dbg_value(i64 2, !13141, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12952)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13236 ; 2 uses
    #dbg_value(ptr %i.l, !13143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12953)
    #dbg_value(i64 2, !13143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12953)
    #dbg_value(ptr %i.l, !13147, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12960)
    #dbg_value(i64 2, !13147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12960)
    #dbg_value(ptr undef, !13147, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !12960)
    #dbg_value(i64 0, !13147, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12960)
    #dbg_value(ptr %i.j, !13147, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12960)
    #dbg_value(ptr %1, !13153, !DIExpression(), !12961)
    #dbg_value(ptr %1, !13161, !DIExpression(), !12964)
    #dbg_value(ptr %1, !13163, !DIExpression(), !12968)
    #dbg_declare(ptr poison, !13154, !DIExpression(), !12969)
    #dbg_value(i64 1, !13166, !DIExpression(), !12972)
  %i.m = icmp ule i64 %.val.i, %.val5.i, !dbg !13237
    #dbg_value(i1 true, !13169, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12975)
  tail call void @llvm.assume(i1 %i.m), !dbg !13238
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !13239
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.preheader, !dbg !13239

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.neg = add i64 %.val.i, 1, !dbg !13239
  %xtraiter = and i64 %i.c, 1, !dbg !13239
  %i.n = icmp eq i64 %.val5.i, %.neg, !dbg !13239
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new, !dbg !13239

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2, !dbg !13239
  %i.o = or i64 %.val.i, 2                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.q = load i8, ptr %i.p, align 2, !alias.scope !13171, !noalias !13172, !noundef !1180
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !13171, !noalias !13172, !noundef !1180
  br label %.lr.ph.i.i.i.i.i.i, !dbg !13239

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.t = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.af, %.lr.ph.i.i.i.i.i.i ], !dbg !13240 ; 3 uses
  %i.u = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.o, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
    #dbg_value(i64 poison, !13155, !DIExpression(), !12985)
    #dbg_value(i64 poison, !13164, !DIExpression(), !12986)
    #dbg_value(i64 poison, !13167, !DIExpression(), !12972)
    #dbg_value(ptr poison, !13173, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12990)
    #dbg_value(ptr poison, !13179, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !12990)
    #dbg_declare(ptr poison, !13177, !DIExpression(), !12991)
    #dbg_value(i64 poison, !13178, !DIExpression(), !12990)
    #dbg_value(i64 poison, !13182, !DIExpression(), !12994)
    #dbg_value(i64 poison, !13185, !DIExpression(), !12997)
    #dbg_value(ptr %i.l, !13183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12994)
    #dbg_value(ptr %i.l, !13186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12997)
    #dbg_value(i64 2, !13183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12994)
    #dbg_value(i64 2, !13186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12997)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.u, !dbg !13241 ; 2 uses
    #dbg_value(ptr %i.v, !13188, !DIExpression(), !13000)
    #dbg_value(ptr %i.v, !13190, !DIExpression(), !13003)
    #dbg_value(ptr %i.v, !13192, !DIExpression(), !13006)
  %i.w = load i8, ptr %i.v, align 2, !dbg !13242, !alias.scope !13171, !noalias !13172, !noundef !1180
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !13242
  %i.y = load i8, ptr %i.x, align 1, !dbg !13242, !alias.scope !13171, !noalias !13172, !noundef !1180
    #dbg_value(i8 %i.w, !13180, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13007)
    #dbg_value(i8 %i.y, !13180, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13007)
    #dbg_value(ptr poison, !13194, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13010)
    #dbg_declare(ptr poison, !13198, !DIExpression(), !13011)
    #dbg_value(i8 %i.w, !13199, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13010)
    #dbg_value(i8 %i.y, !13199, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13010)
    #dbg_value(ptr poison, !13203, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13014)
    #dbg_declare(ptr poison, !13208, !DIExpression(), !13015)
    #dbg_value(i8 %i.w, !13207, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13014)
    #dbg_value(i8 %i.y, !13207, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13014)
    #dbg_value(ptr poison, !13212, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13018)
    #dbg_value(ptr poison, !13217, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13018)
    #dbg_value(i8 %i.w, !13216, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13018)
    #dbg_value(i8 %i.y, !13216, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13018)
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.t, !dbg !13243 ; 2 uses
  store i8 %i.w, ptr %i.z, align 1, !dbg !13244, !noalias !13219
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1, !dbg !13244
  store i8 %i.y, ptr %i.aa, align 1, !dbg !13244, !noalias !13219
    #dbg_value(i64 1, !13155, !DIExpression(), !12985)
    #dbg_value(i64 1, !13164, !DIExpression(), !12986)
    #dbg_value(i64 1, !13167, !DIExpression(), !12972)
    #dbg_declare(ptr poison, !13177, !DIExpression(), !12991)
    #dbg_value(i64 1, !13178, !DIExpression(), !12990)
    #dbg_value(i64 1, !13182, !DIExpression(), !12994)
    #dbg_value(i64 1, !13185, !DIExpression(), !12997)
    #dbg_value(ptr %i.l, !13183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12994)
    #dbg_value(ptr %i.l, !13186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12997)
    #dbg_value(i64 2, !13183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12994)
    #dbg_value(i64 2, !13186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12997)
  %i.ab = icmp eq i64 %i.u, 0, !dbg !13245
  tail call void @llvm.assume(i1 %i.ab), !dbg !13246
    #dbg_value(ptr %i.p, !13188, !DIExpression(), !13000)
    #dbg_value(ptr %i.p, !13190, !DIExpression(), !13003)
    #dbg_value(ptr %i.p, !13192, !DIExpression(), !13006)
    #dbg_value(i8 %i.q, !13180, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13007)
    #dbg_value(i8 %i.s, !13180, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13007)
    #dbg_declare(ptr poison, !13198, !DIExpression(), !13011)
    #dbg_value(i8 %i.q, !13199, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13010)
    #dbg_value(i8 %i.s, !13199, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13010)
    #dbg_declare(ptr poison, !13208, !DIExpression(), !13015)
    #dbg_value(i8 %i.q, !13207, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13014)
    #dbg_value(i8 %i.s, !13207, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13014)
    #dbg_value(i8 %i.q, !13216, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13018)
    #dbg_value(i8 %i.s, !13216, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13018)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.t, !dbg !13243 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2, !dbg !13243
  store i8 %i.q, ptr %i.ad, align 1, !dbg !13244, !noalias !13219
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 3, !dbg !13244
  store i8 %i.s, ptr %i.ae, align 1, !dbg !13244, !noalias !13219
  %i.af = add nuw i64 %i.t, 2, !dbg !13247        ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !13239  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !13239
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !dbg !13239

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13239
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader, !dbg !13239

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init3 = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.c to i1, !dbg !13239
  tail call void @llvm.assume(i1 %lcmp.mod5), !dbg !13239
    #dbg_value(i64 %.epil.init3, !13155, !DIExpression(), !12985)
    #dbg_value(i64 %.epil.init3, !13164, !DIExpression(), !12986)
    #dbg_value(i64 %.epil.init3, !13167, !DIExpression(), !12972)
    #dbg_value(ptr poison, !13173, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !12990)
    #dbg_value(ptr poison, !13179, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !12990)
    #dbg_declare(ptr poison, !13177, !DIExpression(), !12991)
    #dbg_value(i64 %.epil.init3, !13178, !DIExpression(), !12990)
    #dbg_value(i64 %.epil.init3, !13182, !DIExpression(), !12994)
    #dbg_value(i64 %.epil.init3, !13185, !DIExpression(), !12997)
    #dbg_value(ptr %i.l, !13183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12994)
    #dbg_value(ptr %i.l, !13186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12997)
    #dbg_value(i64 2, !13183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12994)
    #dbg_value(i64 2, !13186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12997)
  %i.ag = icmp ult i64 %.epil.init3, 2, !dbg !13245
  tail call void @llvm.assume(i1 %i.ag), !dbg !13246
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.epil.init3, !dbg !13241 ; 2 uses
    #dbg_value(ptr %i.ah, !13188, !DIExpression(), !13000)
    #dbg_value(ptr %i.ah, !13190, !DIExpression(), !13003)
    #dbg_value(ptr %i.ah, !13192, !DIExpression(), !13006)
  %i.ai = load i8, ptr %i.ah, align 2, !dbg !13242, !alias.scope !13171, !noalias !13172, !noundef !1180
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !13242
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !13242, !alias.scope !13171, !noalias !13172, !noundef !1180
    #dbg_value(i8 %i.ai, !13180, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13007)
    #dbg_value(i8 %i.ak, !13180, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13007)
    #dbg_value(ptr poison, !13194, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13010)
    #dbg_declare(ptr poison, !13198, !DIExpression(), !13011)
    #dbg_value(i8 %i.ai, !13199, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13010)
    #dbg_value(i8 %i.ak, !13199, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13010)
    #dbg_value(ptr poison, !13203, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13014)
    #dbg_declare(ptr poison, !13208, !DIExpression(), !13015)
    #dbg_value(i8 %i.ai, !13207, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13014)
    #dbg_value(i8 %i.ak, !13207, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13014)
    #dbg_value(ptr poison, !13212, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13018)
    #dbg_value(ptr poison, !13217, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13018)
    #dbg_value(i8 %i.ai, !13216, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13018)
    #dbg_value(i8 %i.ak, !13216, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13018)
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.epil.init, !dbg !13243 ; 2 uses
  store i8 %i.ai, ptr %i.al, align 1, !dbg !13244, !noalias !13219
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1, !dbg !13244
  store i8 %i.ak, ptr %i.am, align 1, !dbg !13244, !noalias !13219
  %i.an = add nuw i64 %.epil.init, 1, !dbg !13247
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13248

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], [ %i.af, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj2_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i.i.i.i.i.i.epil.preheader ], !dbg !13249
    #dbg_value(ptr undef, !13073, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12925)
    #dbg_value(ptr undef, !13103, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12929)
    #dbg_value(ptr undef, !13114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12933)
    #dbg_value(ptr undef, !13124, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12936)
    #dbg_value(ptr undef, !13133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12941)
    #dbg_value(ptr undef, !13147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12960)
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !13080, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13100)
  store i64 %i.g, ptr %0, align 8, !dbg !13248, !noalias !13084
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13248
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13248, !noalias !13084
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13248
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13248, !noalias !13084
  ret void, !dbg !13250
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13255 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !13448, !DIExpression(), !13272)
    #dbg_value(ptr poison, !13470, !DIExpression(), !13273)
    #dbg_declare(ptr %1, !13444, !DIExpression(), !13478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13479), !dbg !13615
    #dbg_declare(ptr %1, !13474, !DIExpression(), !13276)
    #dbg_declare(ptr poison, !13480, !DIExpression(), !13281)
    #dbg_declare(ptr poison, !13485, !DIExpression(), !13284)
  %.val.i = load i64, ptr %1, align 8, !dbg !13616, !alias.scope !13479, !noalias !13488, !noundef !1180 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13616
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !13616, !alias.scope !13479, !noalias !13488, !noundef !1180 ; 4 uses
    #dbg_value(ptr poison, !13490, !DIExpression(), !13288)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !13617 ; 5 uses
    #dbg_value(i64 %i.c, !13476, !DIExpression(), !13295)
    #dbg_value(i64 %i.c, !13483, !DIExpression(), !13296)
    #dbg_value(i64 %i.c, !13481, !DIExpression(), !13297)
    #dbg_value(i64 %i.c, !13486, !DIExpression(), !13298)
    #dbg_value(i64 %i.c, !4356, !DIExpression(), !13300)
    #dbg_value(i64 %i.c, !4376, !DIExpression(), !13302)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !13303)
    #dbg_value(i64 1, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13300)
    #dbg_value(i64 1, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13302)
    #dbg_value(i64 2, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13300)
    #dbg_value(i64 2, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13302)
    #dbg_value(i64 0, !4378, !DIExpression(), !13302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13618, !noalias !13494
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 2), !dbg !13618, !noalias !13494
  %i.d = load i64, ptr %i.a, align 8, !dbg !13618, !range !1547, !noalias !13494, !noundef !1180
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13619
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13620
  %i.g = load i64, ptr %i.f, align 8, !dbg !13620, !range !4381, !noalias !13494, !noundef !1180 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13620 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !13619, !prof !1567

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !13621, !noalias !13494
    #dbg_value(i64 %i.g, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13304)
    #dbg_value(i64 %i.i, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13304)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !13622, !noalias !13494
  unreachable, !dbg !13622

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !13623, !noalias !13494, !nonnull !1180, !noundef !1180 ; 4 uses
    #dbg_value(i64 %i.g, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13305)
    #dbg_value(ptr %i.j, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13305)
    #dbg_value(ptr poison, !4377, !DIExpression(), !13306)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !13624
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13308)
  tail call void @llvm.assume(i1 %i.k), !dbg !13625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13626, !noalias !13494
    #dbg_value(i64 %i.g, !13475, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13495)
    #dbg_value(ptr %i.j, !13475, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13496), !dbg !13627
    #dbg_value(ptr undef, !13470, !DIExpression(), !13273)
    #dbg_declare(ptr %1, !13471, !DIExpression(), !13311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13497), !dbg !13628
    #dbg_value(ptr undef, !13448, !DIExpression(), !13272)
    #dbg_declare(ptr %1, !13454, !DIExpression(), !13314)
    #dbg_value(ptr poison, !13490, !DIExpression(), !13316)
    #dbg_value(i64 poison, !13455, !DIExpression(), !13317)
    #dbg_value(i64 1, !13456, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13317)
    #dbg_value(i64 %i.c, !13456, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13317)
    #dbg_value(i64 %i.c, !13457, !DIExpression(), !13318)
    #dbg_value(ptr %i.j, !13467, !DIExpression(), !13319)
    #dbg_value(ptr undef, !13468, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13320)
    #dbg_value(i64 0, !13468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13320)
    #dbg_value(ptr %i.j, !13498, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13324)
    #dbg_value(ptr %i.j, !13509, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13328)
    #dbg_value(ptr %i.j, !13519, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13331)
    #dbg_value(ptr %i.j, !13528, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13336)
    #dbg_value(ptr undef, !13498, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13324)
    #dbg_value(ptr undef, !13509, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13328)
    #dbg_value(ptr undef, !13519, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13331)
    #dbg_value(ptr undef, !13528, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13336)
    #dbg_value(i64 0, !13498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13324)
    #dbg_value(i64 0, !13509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13328)
    #dbg_value(i64 0, !13519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13331)
    #dbg_value(i64 0, !13528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13540), !dbg !13629
    #dbg_declare(ptr %1, !13504, !DIExpression(), !13339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13541), !dbg !13630
    #dbg_declare(ptr %1, !13514, !DIExpression(), !13342)
    #dbg_declare(ptr poison, !13515, !DIExpression(), !13343)
    #dbg_declare(ptr poison, !13526, !DIExpression(), !13344)
    #dbg_declare(ptr poison, !13537, !DIExpression(), !13345)
    #dbg_value(ptr %1, !13525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13346)
    #dbg_value(ptr %1, !13536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13347)
    #dbg_value(i64 3, !13525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13346)
    #dbg_value(i64 3, !13536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13347)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13631 ; 3 uses
    #dbg_value(ptr %i.l, !13538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13348)
    #dbg_value(i64 3, !13538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13348)
    #dbg_value(ptr %i.l, !13542, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13355)
    #dbg_value(i64 3, !13542, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13355)
    #dbg_value(ptr undef, !13542, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !13355)
    #dbg_value(i64 0, !13542, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13355)
    #dbg_value(ptr %i.j, !13542, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13355)
    #dbg_value(ptr %1, !13548, !DIExpression(), !13356)
    #dbg_value(ptr %1, !13556, !DIExpression(), !13359)
    #dbg_value(ptr %1, !13558, !DIExpression(), !13363)
    #dbg_declare(ptr poison, !13549, !DIExpression(), !13364)
    #dbg_value(i64 1, !13561, !DIExpression(), !13367)
  %i.m = icmp ule i64 %.val.i, %.val5.i, !dbg !13632
    #dbg_value(i1 true, !13564, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13370)
  tail call void @llvm.assume(i1 %i.m), !dbg !13633
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !13634
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.preheader, !dbg !13634

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.neg = add i64 %.val.i, 1, !dbg !13634
  %xtraiter = and i64 %i.c, 1, !dbg !13634
  %i.n = icmp eq i64 %.val5.i, %.neg, !dbg !13634
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new, !dbg !13634

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.c, -2, !dbg !13634
  %i.o = or i64 %.val.i, 2                        ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i, !dbg !13634

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %i.p = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ], !dbg !13635 ; 3 uses
  %i.q = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.o, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
    #dbg_value(i64 %i.q, !13550, !DIExpression(), !13371)
    #dbg_value(i64 %i.q, !13559, !DIExpression(), !13372)
    #dbg_value(i64 %i.q, !13562, !DIExpression(), !13367)
    #dbg_value(ptr poison, !13566, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13376)
    #dbg_value(ptr poison, !13572, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !13376)
    #dbg_declare(ptr poison, !13570, !DIExpression(), !13377)
    #dbg_value(i64 %i.q, !13571, !DIExpression(), !13376)
    #dbg_value(i64 %i.q, !13575, !DIExpression(), !13380)
    #dbg_value(i64 %i.q, !13578, !DIExpression(), !13383)
    #dbg_value(ptr %i.l, !13576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13380)
    #dbg_value(ptr %i.l, !13579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13383)
    #dbg_value(i64 3, !13576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13380)
    #dbg_value(i64 3, !13579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13383)
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.q, !dbg !13636 ; 2 uses
    #dbg_value(ptr %i.r, !13581, !DIExpression(), !13386)
    #dbg_value(ptr %i.r, !13583, !DIExpression(), !13389)
    #dbg_value(ptr %i.r, !13585, !DIExpression(), !13392)
  %i.s = load i8, ptr %i.r, align 2, !dbg !13637, !alias.scope !13587, !noalias !13588, !noundef !1180
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !13637
  %i.u = load i8, ptr %i.t, align 1, !dbg !13637, !alias.scope !13587, !noalias !13588, !noundef !1180
    #dbg_value(i8 %i.s, !13573, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13402)
    #dbg_value(i8 %i.u, !13573, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13402)
    #dbg_value(ptr poison, !13589, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13405)
    #dbg_declare(ptr poison, !13593, !DIExpression(), !13406)
    #dbg_value(i8 %i.s, !13594, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13405)
    #dbg_value(i8 %i.u, !13594, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13405)
    #dbg_value(ptr poison, !13598, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13409)
    #dbg_declare(ptr poison, !13603, !DIExpression(), !13410)
    #dbg_value(i8 %i.s, !13602, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13409)
    #dbg_value(i8 %i.u, !13602, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13409)
    #dbg_value(ptr poison, !13607, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13413)
    #dbg_value(ptr poison, !13612, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13413)
    #dbg_value(i8 %i.s, !13611, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13413)
    #dbg_value(i8 %i.u, !13611, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13413)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.p, !dbg !13638 ; 2 uses
  store i8 %i.s, ptr %i.v, align 1, !dbg !13639, !noalias !13614
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !13639
  store i8 %i.u, ptr %i.w, align 1, !dbg !13639, !noalias !13614
    #dbg_value(i64 %i.q, !13550, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13371)
    #dbg_value(i64 %i.q, !13559, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13372)
    #dbg_value(i64 %i.q, !13562, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13367)
    #dbg_declare(ptr poison, !13570, !DIExpression(), !13377)
    #dbg_value(i64 %i.q, !13571, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13376)
    #dbg_value(i64 %i.q, !13575, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13380)
    #dbg_value(i64 %i.q, !13578, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !13383)
    #dbg_value(ptr %i.l, !13576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13380)
    #dbg_value(ptr %i.l, !13579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13383)
    #dbg_value(i64 3, !13576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13380)
    #dbg_value(i64 3, !13579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13383)
  %i.x = icmp ult i64 %i.q, 2, !dbg !13640
  tail call void @llvm.assume(i1 %i.x), !dbg !13641
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.q, !dbg !13636 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2, !dbg !13636
    #dbg_value(ptr %i.z, !13581, !DIExpression(), !13386)
    #dbg_value(ptr %i.z, !13583, !DIExpression(), !13389)
    #dbg_value(ptr %i.z, !13585, !DIExpression(), !13392)
  %i.aa = load i8, ptr %i.z, align 2, !dbg !13637, !alias.scope !13587, !noalias !13588, !noundef !1180
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 3, !dbg !13637
  %i.ac = load i8, ptr %i.ab, align 1, !dbg !13637, !alias.scope !13587, !noalias !13588, !noundef !1180
    #dbg_value(i8 %i.aa, !13573, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13402)
    #dbg_value(i8 %i.ac, !13573, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13402)
    #dbg_declare(ptr poison, !13593, !DIExpression(), !13406)
    #dbg_value(i8 %i.aa, !13594, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13405)
    #dbg_value(i8 %i.ac, !13594, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13405)
    #dbg_declare(ptr poison, !13603, !DIExpression(), !13410)
    #dbg_value(i8 %i.aa, !13602, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13409)
    #dbg_value(i8 %i.ac, !13602, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13409)
    #dbg_value(i8 %i.aa, !13611, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13413)
    #dbg_value(i8 %i.ac, !13611, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13413)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.p, !dbg !13638 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2, !dbg !13638
  store i8 %i.aa, ptr %i.ae, align 1, !dbg !13639, !noalias !13614
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 3, !dbg !13639
  store i8 %i.ac, ptr %i.af, align 1, !dbg !13639, !noalias !13614
  %i.ag = add nuw i64 %i.p, 2, !dbg !13642        ; 3 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !13634  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !13634
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !dbg !13634

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !13634
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader, !dbg !13634

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init3 = phi i64 [ %.val.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.c to i1, !dbg !13634
  tail call void @llvm.assume(i1 %lcmp.mod5), !dbg !13634
    #dbg_value(i64 %.epil.init3, !13550, !DIExpression(), !13371)
    #dbg_value(i64 %.epil.init3, !13559, !DIExpression(), !13372)
    #dbg_value(i64 %.epil.init3, !13562, !DIExpression(), !13367)
    #dbg_value(ptr poison, !13566, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13376)
    #dbg_value(ptr poison, !13572, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16, DW_OP_LLVM_fragment, 0, 64), !13376)
    #dbg_declare(ptr poison, !13570, !DIExpression(), !13377)
    #dbg_value(i64 %.epil.init3, !13571, !DIExpression(), !13376)
    #dbg_value(i64 %.epil.init3, !13575, !DIExpression(), !13380)
    #dbg_value(i64 %.epil.init3, !13578, !DIExpression(), !13383)
    #dbg_value(ptr %i.l, !13576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13380)
    #dbg_value(ptr %i.l, !13579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13383)
    #dbg_value(i64 3, !13576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13380)
    #dbg_value(i64 3, !13579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13383)
  %i.ah = icmp ult i64 %.epil.init3, 3, !dbg !13640
  tail call void @llvm.assume(i1 %i.ah), !dbg !13641
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.epil.init3, !dbg !13636 ; 2 uses
    #dbg_value(ptr %i.ai, !13581, !DIExpression(), !13386)
    #dbg_value(ptr %i.ai, !13583, !DIExpression(), !13389)
    #dbg_value(ptr %i.ai, !13585, !DIExpression(), !13392)
  %i.aj = load i8, ptr %i.ai, align 2, !dbg !13637, !alias.scope !13587, !noalias !13588, !noundef !1180
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !13637
  %i.al = load i8, ptr %i.ak, align 1, !dbg !13637, !alias.scope !13587, !noalias !13588, !noundef !1180
    #dbg_value(i8 %i.aj, !13573, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13402)
    #dbg_value(i8 %i.al, !13573, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13402)
    #dbg_value(ptr poison, !13589, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13405)
    #dbg_declare(ptr poison, !13593, !DIExpression(), !13406)
    #dbg_value(i8 %i.aj, !13594, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13405)
    #dbg_value(i8 %i.al, !13594, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13405)
    #dbg_value(ptr poison, !13598, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13409)
    #dbg_declare(ptr poison, !13603, !DIExpression(), !13410)
    #dbg_value(i8 %i.aj, !13602, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13409)
    #dbg_value(i8 %i.al, !13602, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13409)
    #dbg_value(ptr poison, !13607, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !13413)
    #dbg_value(ptr poison, !13612, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !13413)
    #dbg_value(i8 %i.aj, !13611, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !13413)
    #dbg_value(i8 %i.al, !13611, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !13413)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.epil.init, !dbg !13638 ; 2 uses
  store i8 %i.aj, ptr %i.am, align 1, !dbg !13639, !noalias !13614
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !13639
  store i8 %i.al, ptr %i.an, align 1, !dbg !13639, !noalias !13614
  %i.ao = add nuw i64 %.epil.init, 1, !dbg !13642
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !13643

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
  %.val6.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i ], [ %i.ag, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj3_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.epil.preheader ], !dbg !13644
    #dbg_value(ptr undef, !13468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13320)
    #dbg_value(ptr undef, !13498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13324)
    #dbg_value(ptr undef, !13509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13328)
    #dbg_value(ptr undef, !13519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13331)
    #dbg_value(ptr undef, !13528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13336)
    #dbg_value(ptr undef, !13542, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13355)
    #dbg_value(i64 %.val6.i.i.i.i.i.i, !13475, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13495)
  store i64 %i.g, ptr %0, align 8, !dbg !13643, !noalias !13479
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13643
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !13643, !noalias !13479
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13643
  store i64 %.val6.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !13643, !noalias !13479
  ret void, !dbg !13645
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB2_12SpecFromIterBU_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterBU_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13650 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !13815, !DIExpression(), !13819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13820), !dbg !13969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13821), !dbg !13969
    #dbg_value(ptr poison, !13822, !DIExpression(), !13670)
    #dbg_value(ptr poison, !13844, !DIExpression(), !13671)
    #dbg_declare(ptr %1, !13848, !DIExpression(), !13672)
    #dbg_declare(ptr poison, !13852, !DIExpression(), !13677)
    #dbg_declare(ptr poison, !13857, !DIExpression(), !13680)
  %.val.i = load i64, ptr %1, align 8, !dbg !13970, !alias.scope !13821, !noalias !13820, !noundef !1180 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !13970
  %.val5.i = load i64, ptr %i.b, align 8, !dbg !13970, !alias.scope !13821, !noalias !13820, !noundef !1180 ; 4 uses
    #dbg_value(ptr poison, !13861, !DIExpression(), !13683)
  %i.c = sub nuw i64 %.val5.i, %.val.i, !dbg !13971 ; 2 uses
    #dbg_value(i64 %i.c, !13850, !DIExpression(), !13690)
    #dbg_value(i64 %i.c, !13855, !DIExpression(), !13691)
    #dbg_value(i64 %i.c, !13853, !DIExpression(), !13692)
    #dbg_value(i64 %i.c, !13858, !DIExpression(), !13693)
    #dbg_value(i64 %i.c, !4356, !DIExpression(), !13695)
    #dbg_value(i64 %i.c, !4376, !DIExpression(), !13697)
    #dbg_declare(ptr poison, !4360, !DIExpression(), !13698)
    #dbg_value(i64 4, !4361, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13695)
    #dbg_value(i64 4, !4379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13697)
    #dbg_value(i64 8, !4361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13695)
    #dbg_value(i64 8, !4379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13697)
    #dbg_value(i64 0, !4378, !DIExpression(), !13697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13972, !noalias !13865
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !13972, !noalias !13865
  %i.d = load i64, ptr %i.a, align 8, !dbg !13972, !range !1547, !noalias !13865, !noundef !1180
  %i.e = trunc nuw i64 %i.d to i1, !dbg !13973
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13974
  %i.g = load i64, ptr %i.f, align 8, !dbg !13974, !range !4381, !noalias !13865, !noundef !1180 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13974 ; 2 uses
  br i1 %i.e, label %.noexc6.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, !dbg !13973, !prof !1567

.noexc6.i:                                        ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !dbg !13975, !noalias !13865
    #dbg_value(i64 %i.g, !4363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13699)
    #dbg_value(i64 %i.i, !4363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13699)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #19, !dbg !13976, !noalias !13865
  unreachable, !dbg !13976

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !dbg !13977, !noalias !13865, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.g, !4362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13700)
    #dbg_value(ptr %i.j, !4362, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13700)
    #dbg_value(ptr poison, !4377, !DIExpression(), !13701)
  %i.k = icmp ule i64 %i.c, %i.g, !dbg !13978
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13703)
  tail call void @llvm.assume(i1 %i.k), !dbg !13979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13980, !noalias !13865
    #dbg_value(i64 %i.g, !13849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13704)
    #dbg_value(ptr %i.j, !13849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13704)
    #dbg_value(i64 0, !13849, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13704)
    #dbg_value(i64 %.val.i, !13845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13705)
    #dbg_value(i64 %.val.i, !13828, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13706)
    #dbg_value(i64 %.val5.i, !13845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13705)
    #dbg_value(i64 %.val5.i, !13828, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13706)
    #dbg_value(i32 poison, !13845, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13705)
    #dbg_value(i32 poison, !13828, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13706)
    #dbg_value(i32 poison, !13845, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13705)
    #dbg_value(i32 poison, !13828, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13706)
    #dbg_value(ptr undef, !13844, !DIExpression(), !13671)
    #dbg_value(ptr undef, !13822, !DIExpression(), !13670)
    #dbg_value(ptr poison, !13861, !DIExpression(), !13708)
    #dbg_value(i64 poison, !13829, !DIExpression(), !13709)
    #dbg_value(i64 1, !13830, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13709)
    #dbg_value(i64 %i.c, !13830, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13709)
    #dbg_value(i64 %i.c, !13831, !DIExpression(), !13710)
    #dbg_value(ptr poison, !13841, !DIExpression(), !13711)
    #dbg_value(ptr undef, !13842, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13712)
    #dbg_value(i64 0, !13842, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13712)
    #dbg_value(i64 %.val.i, !13868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13716)
    #dbg_value(i64 %.val.i, !13879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13720)
    #dbg_value(i64 %.val5.i, !13868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13716)
    #dbg_value(i64 %.val5.i, !13879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13720)
    #dbg_value(i32 poison, !13868, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13716)
    #dbg_value(i32 poison, !13879, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13720)
    #dbg_value(i32 poison, !13868, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13716)
    #dbg_value(i32 poison, !13879, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13720)
    #dbg_value(ptr poison, !13874, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13716)
    #dbg_value(ptr poison, !13885, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13720)
    #dbg_value(ptr poison, !13889, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13723)
    #dbg_value(ptr poison, !13898, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13728)
    #dbg_value(ptr undef, !13874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13716)
    #dbg_value(ptr undef, !13885, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13720)
    #dbg_value(ptr undef, !13889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13723)
    #dbg_value(ptr undef, !13898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13728)
    #dbg_value(i64 0, !13874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13716)
    #dbg_value(i64 0, !13885, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13720)
    #dbg_value(i64 0, !13889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13723)
    #dbg_value(i64 0, !13898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13728)
    #dbg_declare(ptr poison, !13884, !DIExpression(), !13729)
    #dbg_declare(ptr poison, !13896, !DIExpression(), !13730)
    #dbg_declare(ptr poison, !13907, !DIExpression(), !13731)
    #dbg_value(ptr undef, !13895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13732)
    #dbg_value(ptr undef, !13906, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13733)
    #dbg_value(i64 1, !13895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13732)
    #dbg_value(i64 1, !13906, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13733)
    #dbg_value(ptr undef, !13908, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13734)
    #dbg_value(i64 1, !13908, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13734)
    #dbg_value(ptr undef, !13910, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !13741)
    #dbg_value(i64 1, !13910, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13741)
    #dbg_value(ptr undef, !13910, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13741)
    #dbg_value(i64 0, !13910, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !13741)
    #dbg_value(ptr poison, !13910, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13741)
    #dbg_value(ptr undef, !13916, !DIExpression(), !13742)
    #dbg_value(ptr undef, !13924, !DIExpression(), !13745)
    #dbg_declare(ptr poison, !13917, !DIExpression(), !13746)
  %i.l = icmp ule i64 %.val.i, %.val5.i, !dbg !13981
    #dbg_value(i1 true, !13926, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13749)
  tail call void @llvm.assume(i1 %i.l), !dbg !13982
  %.not9.i.i.i.i.i.i = icmp eq i64 %.val.i, %.val5.i, !dbg !13983
  br i1 %.not9.i.i.i.i.i.i, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtB4_18SpecFromIterNestedB13_INtNtNtCsj6eKBz9Db1c_4core5array4iter8IntoIterB13_Kj1_EE9from_iterCs9GYDdpCSJ4S_14regex_automata.exit, label %.lr.ph.i.preheader.i.i.i.i.i, !dbg !13983

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE7reserveCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
    #dbg_value(i32 poison, !13845, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13705)
    #dbg_value(i32 poison, !13828, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13706)
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13984
    #dbg_value(i32 poison, !13845, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13705)
    #dbg_value(i32 poison, !13828, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13706)
    #dbg_value(i32 poison, !13868, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13716)
    #dbg_value(i32 poison, !13879, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !13720)
    #dbg_value(i32 poison, !13868, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13716)
    #dbg_value(i32 poison, !13879, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !13720)
    #dbg_value(ptr %i.j, !13841, !DIExpression(), !13711)
    #dbg_value(ptr %i.j, !13874, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13716)
    #dbg_value(ptr %i.j, !13885, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13720)
    #dbg_value(ptr %i.j, !13889, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13723)
    #dbg_value(ptr %i.j, !13898, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !13728)
    #dbg_value(ptr %i.j, !13910, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !13741)
end_hunk_1
