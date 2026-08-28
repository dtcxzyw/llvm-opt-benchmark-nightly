Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn-31ebff4d4295effa.quinn.6fa459a4e975936-cgu.07?download=true
inline.NumInlined: 223
inline.NumDeleted: 98
begin_hunk_0_@_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsB8MOEg02Qk_5quinn:bb.a
    #dbg_value(i64 %i.b, !9635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9636)
    #dbg_value(i64 %i.b, !9644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9646)
    #dbg_value(i8 0, !9645, !DIExpression(), !9646)
    #dbg_value(ptr poison, !9648, !DIExpression(), !9677)
    #dbg_value(ptr %.8.val, !9652, !DIExpression(), !9677)
    #dbg_value(ptr %.8.val, !9679, !DIExpression(), !9684)
    #dbg_value(i64 %2, !9653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9677)
    #dbg_value(i64 %2, !9682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9684)
    #dbg_value(i64 %i.f, !9653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9677)
    #dbg_value(i64 %i.f, !9682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9684)
    #dbg_value(i64 %2, !9654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9677)
    #dbg_value(i64 %i.b, !9654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9677)
    #dbg_value(i1 false, !9655, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9677)
    #dbg_value(i64 %i.f, !9656, !DIExpression(), !9686)
    #dbg_value(ptr poison, !9658, !DIExpression(), !9687)
    #dbg_value(i64 %i.b, !9659, !DIExpression(), !9688)
    #dbg_value(i64 %i.b, !9683, !DIExpression(), !9684)
  %i.g = icmp uge i64 %i.b, %i.f, !dbg !9689
    #dbg_value(i1 true, !9690, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9693)
  tail call void @llvm.assume(i1 %i.g), !dbg !9695
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23, !dbg !9696
    #dbg_value(ptr poison, !9513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9697)
    #dbg_value(ptr poison, !9605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9698)
    #dbg_value(i64 poison, !9513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9697)
    #dbg_value(i64 poison, !9605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9698)
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !9699

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !9700, !DIExpression(), !9705)
    #dbg_value(ptr poison, !9707, !DIExpression(), !9712)
    #dbg_value(i64 %2, !9704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9705)
    #dbg_value(i64 %2, !9710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9712)
    #dbg_value(i64 %i.b, !9704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9705)
    #dbg_value(i64 %i.b, !9710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9712)
    #dbg_value(i8 0, !9711, !DIExpression(), !9712)
    #dbg_value(i64 %2, !8492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9714)
    #dbg_value(i64 %2, !8524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9716)
    #dbg_value(i64 %i.b, !8492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9714)
    #dbg_value(i64 %i.b, !8524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9716)
    #dbg_value(i1 false, !8498, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9714)
    #dbg_value(i64 0, !9718, !DIExpression(), !9726)
    #dbg_value(i64 0, !9728, !DIExpression(), !9734)
    #dbg_value(i64 %i.b, !8499, !DIExpression(), !9736)
    #dbg_value(i64 %i.b, !9725, !DIExpression(), !9737)
    #dbg_value(i64 %i.b, !9733, !DIExpression(), !9739)
  %i.i = icmp eq i64 %i.b, 0, !dbg !9742
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !9742

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
    #dbg_value(i64 %2, !9724, !DIExpression(), !9726)
    #dbg_value(i64 %2, !9732, !DIExpression(), !9734)
    #dbg_value(i64 %2, !9743, !DIExpression(), !9749)
  %i.j = inttoptr i64 %2 to ptr, !dbg !9751
    #dbg_value(ptr %i.j, !9605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9698)
    #dbg_value(ptr %i.j, !9513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9697)
    #dbg_value(i64 poison, !9605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9698)
    #dbg_value(i64 poison, !9513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9697)
    #dbg_value(ptr poison, !9606, !DIExpression(), !9752)
  br label %bb.f, !dbg !9753

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !9754
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #23, !dbg !9755
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !9756

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
    #dbg_value(ptr %.pn8, !9605, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9698)
    #dbg_value(ptr %.pn8, !9513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9697)
    #dbg_value(i64 poison, !9605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9698)
    #dbg_value(i64 poison, !9513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9697)
    #dbg_value(ptr poison, !9606, !DIExpression(), !9752)
  %i.l = icmp eq ptr %.pn8, null, !dbg !9757
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !9753

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9758
  store i64 %2, ptr %i.m, align 8, !dbg !9758
  br label %bb.g, !dbg !9759

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
    #dbg_value(i64 %i.b, !9513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9697)
    #dbg_value(i64 %i.b, !9605, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9698)
    #dbg_value(ptr %.pn810, !9607, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9760)
    #dbg_value(i64 %i.b, !9607, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9760)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9761
  store ptr %.pn810, ptr %i.n, align 8, !dbg !9761
  br label %bb.g, !dbg !9762

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !9518
  store i64 %.sink11, ptr %i.o, align 8, !dbg !9518
  store i64 %.sink, ptr %0, align 8, !dbg !9518
  ret void, !dbg !9763
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsB8MOEg02Qk_5quinn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !9764 {
bb.a:
    #dbg_value(i64 %1, !9784, !DIExpression(), !9798)
    #dbg_value(i64 %1, !9799, !DIExpression(), !9803)
    #dbg_value(i64 %1, !9805, !DIExpression(), !9811)
    #dbg_value(i64 %1, !9813, !DIExpression(), !9820)
    #dbg_value(i64 %1, !9822, !DIExpression(), !9826)
    #dbg_value(i64 %1, !9828, !DIExpression(), !9831)
    #dbg_value(i1 %2, !9785, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9798)
    #dbg_declare(ptr poison, !9786, !DIExpression(), !9833)
    #dbg_value(i64 %3, !9787, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9798)
    #dbg_value(i64 %4, !9787, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9798)
    #dbg_declare(ptr poison, !9834, !DIExpression(), !9841)
    #dbg_value(i64 %4, !9802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9803)
    #dbg_value(i64 %4, !9816, !DIExpression(), !9820)
    #dbg_value(i64 %4, !9825, !DIExpression(), !9826)
    #dbg_value(i64 %3, !9802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9803)
    #dbg_value(i64 %3, !9840, !DIExpression(), !9843)
    #dbg_value(ptr poison, !9808, !DIExpression(), !9844)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !9845 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !9845 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !9845
    #dbg_value(i1 %i.c, !9819, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9846)
    #dbg_value(i1 %i.c, !9847, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9850)
    #dbg_value(i64 %i.b, !9809, !DIExpression(), !9852)
    #dbg_value(i64 %i.b, !9817, !DIExpression(), !9846)
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !9853, !prof !9621
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !9853, !prof !9621

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %3, !9788, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9854)
    #dbg_value(i64 %i.b, !9788, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9854)
  %i.e = icmp eq i64 %i.b, 0, !dbg !9855
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !9855

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9856
  store i64 0, ptr %i.f, align 8, !dbg !9856
  br label %bb.f, !dbg !9857

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !9859
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9871
  store i64 0, ptr %i.h, align 8, !dbg !9871
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9871
  store ptr %i.g, ptr %i.i, align 8, !dbg !9871
  br label %bb.f, !dbg !9872

bb.e:                                             ; preds = %bb.b
    #dbg_value(i64 %3, !8492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9873)
    #dbg_value(i64 %3, !8492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9886)
    #dbg_value(i64 %i.b, !8492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9873)
    #dbg_value(i64 %i.b, !8492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9886)
    #dbg_value(i64 %i.b, !8499, !DIExpression(), !9890)
    #dbg_value(i64 %i.b, !8499, !DIExpression(), !9891)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !9854
    #dbg_value(ptr poison, !9792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9892)
    #dbg_value(ptr poison, !9792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9892)
    #dbg_value(i64 poison, !9792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9892)
    #dbg_value(i64 poison, !9792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9892)
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !9893

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !9798
  ret void, !dbg !9894

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !9883, !DIExpression(), !9895)
    #dbg_value(ptr poison, !9877, !DIExpression(), !9896)
    #dbg_value(i64 %3, !9884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9895)
    #dbg_value(i64 %3, !9878, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9896)
    #dbg_value(i64 %i.b, !9884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9895)
    #dbg_value(i64 %i.b, !9878, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9896)
    #dbg_value(i8 1, !9879, !DIExpression(), !9896)
    #dbg_value(i64 %3, !9897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9900)
    #dbg_value(i64 %i.b, !9897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9900)
    #dbg_value(i1 true, !8498, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9873)
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #23, !dbg !9902
  br label %bb.h, !dbg !9903

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
    #dbg_value(ptr poison, !9700, !DIExpression(), !9904)
    #dbg_value(ptr poison, !9707, !DIExpression(), !9905)
    #dbg_value(i64 %3, !9704, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9904)
    #dbg_value(i64 %3, !9710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9905)
    #dbg_value(i64 %i.b, !9704, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9904)
    #dbg_value(i64 %i.b, !9710, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9905)
    #dbg_value(i8 0, !9711, !DIExpression(), !9905)
    #dbg_value(i64 %3, !8524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9906)
    #dbg_value(i64 %i.b, !8524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9906)
    #dbg_value(i1 false, !8498, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9886)
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #23, !dbg !9908
  br label %bb.h, !dbg !9909

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn29 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
    #dbg_value(ptr %.pn29, !9792, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9892)
    #dbg_value(i64 poison, !9792, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9892)
  %i.l = icmp eq ptr %.pn29, null, !dbg !9910
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !9911

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9912
  store i64 %3, ptr %i.m, align 8, !dbg !9912
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9912
  store i64 %i.b, ptr %i.n, align 8, !dbg !9912
  br label %bb.f, !dbg !9913

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %.pn29, !9794, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9915)
    #dbg_value(i64 poison, !9794, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9915)
  %i.o = icmp sgt i64 %1, -1, !dbg !9916
  tail call void @llvm.assume(i1 %i.o), !dbg !9916
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9917
  store i64 %1, ptr %i.p, align 8, !dbg !9917
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9917
  store ptr %.pn29, ptr %i.q, align 8, !dbg !9917
  br label %bb.f, !dbg !9872
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCshovLROGBtMy_11quinn_proto8endpoint16ConnectionHandleINtB2_10EquivalentBq_E10equivalentCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #3 !dbg !9918 {
bb.a:
    #dbg_value(ptr %0, !9924, !DIExpression(), !9928)
    #dbg_value(ptr %1, !9925, !DIExpression(), !9928)
    #dbg_value(ptr poison, !9929, !DIExpression(), !9940)
    #dbg_value(ptr poison, !9936, !DIExpression(), !9942)
  %.val = load i64, ptr %0, align 8, !dbg !9943, !noundef !44
  %.val2 = load i64, ptr %1, align 8, !dbg !9943, !noundef !44
    #dbg_value(ptr poison, !9944, !DIExpression(), !9950)
    #dbg_value(ptr poison, !9949, !DIExpression(), !9950)
  %i.a = icmp eq i64 %.val, %.val2, !dbg !9952
  ret i1 %i.a, !dbg !9953
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtNtNtCsar2VadbF9t7_5tokio4sync4mpsc5errorINtB2_9SendErrorNtCsB8MOEg02Qk_5quinn15ConnectionEventENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB10_(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !9954 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !9965, !DIExpression(), !9967)
    #dbg_value(ptr %1, !9966, !DIExpression(), !9967)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9968
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 9), !dbg !9969
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !9970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9971
  ret i1 %i.b, !dbg !9972
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtCs44jvQwX3bAX_7tracing10instrumentINtB5_12InstrumentedNCNvMNtCsB8MOEg02Qk_5quinn10connectionNtB14_10Connecting3new0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB16_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9973 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !10096, !DIExpression(), !10099)
    #dbg_value(ptr poison, !10103, !DIExpression(), !10182)
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !10082, !DIExpression(), !10183)
    #dbg_value(ptr %1, !10083, !DIExpression(), !10183)
    #dbg_value(ptr %0, !10184, !DIExpression(), !10206)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10208
    #dbg_value(ptr %0, !10084, !DIExpression(), !10209)
    #dbg_value(ptr %0, !10210, !DIExpression(), !10216)
    #dbg_value(ptr %i.q, !10087, !DIExpression(), !10209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10218), !dbg !10221
    #dbg_value(ptr %0, !10222, !DIExpression(), !10234)
    #dbg_value(i8 0, !10236, !DIExpression(), !10240)
    #dbg_value(ptr %0, !10245, !DIExpression(), !10250)
  %i.r = load i64, ptr %0, align 8, !dbg !10252, !range !3813, !alias.scope !10218, !noundef !44
  %.not.i = icmp eq i64 %i.r, 2, !dbg !10252
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !10253

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10226, !DIExpression(), !10254)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10255
  tail call void @_RNvMs2_NtCsgb4gPAseikh_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s), !dbg !10256
  br label %bb.c, !dbg !10257

bb.c:                                             ; preds = %bb.b, %bb.a
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !10239, !DIExpression(), !10240)
    #dbg_value(ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS, !3822, !DIExpression(), !10258)
    #dbg_value(i8 0, !3827, !DIExpression(), !10258)
  %i.t = load atomic i8, ptr @_RNvNtCsgb4gPAseikh_12tracing_core10dispatcher6EXISTS monotonic, align 1, !dbg !10260
  %.not18.i = icmp eq i8 %i.t, 0, !dbg !10261
  br i1 %.not18.i, label %bb.d, label %_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit, !dbg !10262

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10263
  %i.v = load ptr, ptr %i.u, align 8, !dbg !10263, !alias.scope !10218, !align !3138, !noundef !44 ; 3 uses
  %.not19.i = icmp eq ptr %i.v, null, !dbg !10263
  br i1 %.not19.i, label %_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.e, !dbg !10264

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.v, !10228, !DIExpression(), !10265)
    #dbg_value(ptr %i.v, !10266, !DIExpression(), !10269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !10271, !noalias !10218
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !10272
  %i.x = load ptr, ptr %i.w, align 8, !dbg !10272, !nonnull !44, !noundef !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !10272
  %i.z = load i64, ptr %i.y, align 8, !dbg !10272, !noundef !44
  store ptr %i.x, ptr %i.p, align 8, !dbg !10272, !noalias !10218, !captures !3848
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !10272
  store i64 %i.z, ptr %i.aa, align 8, !dbg !10272, !noalias !10218
    #dbg_value(ptr %i.p, !10230, !DIExpression(), !10273)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !10274, !noalias !10218
  store ptr %i.p, ptr %i.o, align 8, !dbg !10274, !noalias !10218
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !10274
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsB8MOEg02Qk_5quinn, ptr %.sroa.43.0..sroa_idx.i, align 8, !dbg !10274, !noalias !10218
  call fastcc void @_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noundef nonnull @12, ptr noundef nonnull %i.o) #24, !dbg !10275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10276, !noalias !10218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !10276, !noalias !10218
  br label %_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit, !dbg !10277

_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %bb.c, %bb.d, %bb.e
    #dbg_value(ptr %0, !10094, !DIExpression(), !10278)
    #dbg_value(ptr %i.q, !10179, !DIExpression(), !10279)
    #dbg_value(ptr %1, !10180, !DIExpression(), !10279)
    #dbg_declare(ptr %i.n, !10145, !DIExpression(), !10280)
    #dbg_declare(ptr %i.j, !10161, !DIExpression(), !10281)
    #dbg_declare(ptr %i.i, !10167, !DIExpression(), !10282)
    #dbg_declare(ptr %i.e, !10176, !DIExpression(), !10283)
    #dbg_value(ptr %1, !10114, !DIExpression(), !10279)
    #dbg_value(ptr %i.q, !10125, !DIExpression(DW_OP_deref), !10279)
    #dbg_value(ptr poison, !10126, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !10284)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !10285 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !dbg !10285, !range !10286, !noalias !10287, !noundef !44
  switch i8 %i.ac, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
  ], !dbg !10285

default.unreachable:                              ; preds = %bb.al, %_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit
  unreachable

bb.f:                                             ; preds = %_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit
  %i.ad = load ptr, ptr %i.q, align 8, !dbg !10290, !noalias !10287, !nonnull !44, !noundef !44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10290
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !10290, !noalias !10287
  br label %bb.i, !dbg !10291

.body.i:                                          ; preds = %bb.at, %bb.r, %bb.n, %bb.m, %bb.j
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn29.i, %bb.at ], [ %i.al, %bb.m ], [ %i.ah, %bb.j ], [ %i.at, %bb.r ], [ %i.al, %bb.n ]
  store i8 2, ptr %i.ab, align 8, !dbg !10285, !noalias !10287
  br label %.body, !dbg !10285

bb.g:                                             ; preds = %_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
          to label %.noexc unwind label %bb.ay, !dbg !10285

.noexc:                                           ; preds = %bb.g
  unreachable, !dbg !10285

bb.h:                                             ; preds = %_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
          to label %.noexc10 unwind label %bb.ay, !dbg !10285

.noexc10:                                         ; preds = %bb.h
  unreachable, !dbg !10285

bb.i:                                             ; preds = %bb.f, %_RNvMNtCs44jvQwX3bAX_7tracing4spanNtB2_4Span8do_enter.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10291 ; 7 uses
  %i.ag = invoke { i64, ptr } @_RNvXs1_NtCsB8MOEg02Qk_5quinn10connectionNtB5_16ConnectionDriverNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.k unwind label %bb.j, !dbg !10291 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn10connection16ConnectionDriverEBF_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.af) #20
          to label %.body.i unwind label %bb.ax, !dbg !10292

bb.k:                                             ; preds = %bb.i
  %i.ai = extractvalue { i64, ptr } %i.ag, 0, !dbg !10291
  %i.aj = extractvalue { i64, ptr } %i.ag, 1, !dbg !10291 ; 2 uses
  %i.ak = trunc nuw i64 %i.ai to i1, !dbg !10291  ; 2 uses
  br i1 %i.ak, label %bb.az, label %bb.l, !dbg !10291

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.af, !5939, !DIExpression(), !10293)
    #dbg_value(ptr %i.af, !5943, !DIExpression(), !10295)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.o unwind label %bb.m, !dbg !10297

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
end_hunk_0
