Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.02?download=true
inline.NumInlined: 459
inline.NumDeleted: 207
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #16
          to label %bb.d unwind label %bb.f, !dbg !7722, !inline_history !3196

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !7722, !inline_history !3196

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !7722
  %.val3.i = load ptr, ptr %i.c, align 8, !dbg !7722, !alias.scope !7723, !nonnull !27, !noundef !27
    #dbg_value(ptr poison, !3200, !DIExpression(), !7726)
    #dbg_value(ptr poison, !3210, !DIExpression(), !7728)
    #dbg_value(ptr poison, !3220, !DIExpression(), !7730)
    #dbg_value(ptr %.val3.i, !3226, !DIExpression(), !7732)
    #dbg_value(i64 8, !3239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7733)
    #dbg_value(i64 80, !3239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7733)
    #dbg_value(ptr poison, !3255, !DIExpression(), !7734)
    #dbg_value(ptr poison, !3267, !DIExpression(), !7736)
    #dbg_value(ptr %.val3.i, !3263, !DIExpression(), !7734)
    #dbg_value(ptr %.val3.i, !3272, !DIExpression(), !7736)
    #dbg_value(ptr %.val3.i, !3276, !DIExpression(), !7738)
    #dbg_value(ptr %.val3.i, !3285, !DIExpression(), !7740)
    #dbg_value(i64 8, !3264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7734)
    #dbg_value(i64 8, !3273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7736)
    #dbg_value(i64 8, !3282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7738)
    #dbg_value(i64 8, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7740)
    #dbg_value(i64 80, !3264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7734)
    #dbg_value(i64 80, !3273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7736)
    #dbg_value(i64 80, !3282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7738)
    #dbg_value(i64 80, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7740)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 80, i64 noundef 8) #19, !dbg !7742, !inline_history !3196
    #dbg_value(ptr poison, !7743, !DIExpression(), !7755)
    #dbg_value(ptr %i.a, !7747, !DIExpression(), !7757)
    #dbg_value(i64 8, !7753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7758)
    #dbg_value(i64 48, !7753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7758)
    #dbg_value(ptr poison, !3255, !DIExpression(), !7759)
    #dbg_value(ptr poison, !3267, !DIExpression(), !7761)
    #dbg_value(ptr %i.a, !3263, !DIExpression(), !7759)
    #dbg_value(ptr %i.a, !3272, !DIExpression(), !7761)
    #dbg_value(ptr %i.a, !3276, !DIExpression(), !7763)
    #dbg_value(ptr %i.a, !3285, !DIExpression(), !7765)
    #dbg_value(i64 8, !3264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7759)
    #dbg_value(i64 8, !3273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7761)
    #dbg_value(i64 8, !3282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7763)
    #dbg_value(i64 8, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7765)
    #dbg_value(i64 48, !3264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7759)
    #dbg_value(i64 48, !3273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7761)
    #dbg_value(i64 48, !3282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7763)
    #dbg_value(i64 48, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7765)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #19, !dbg !7767
  resume { ptr, i32 } %.pn.i, !dbg !7719

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !7722, !inline_history !3196
  unreachable, !dbg !7722

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !7722
  %.val.i = load ptr, ptr %i.f, align 8, !dbg !7722, !alias.scope !7723, !nonnull !27, !noundef !27
    #dbg_value(ptr poison, !3200, !DIExpression(), !7768)
    #dbg_value(ptr poison, !3210, !DIExpression(), !7770)
    #dbg_value(ptr poison, !3220, !DIExpression(), !7772)
    #dbg_value(ptr %.val.i, !3226, !DIExpression(), !7774)
    #dbg_value(i64 8, !3239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7775)
    #dbg_value(i64 80, !3239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7775)
    #dbg_value(ptr poison, !3255, !DIExpression(), !7776)
    #dbg_value(ptr poison, !3267, !DIExpression(), !7778)
    #dbg_value(ptr %.val.i, !3263, !DIExpression(), !7776)
    #dbg_value(ptr %.val.i, !3272, !DIExpression(), !7778)
    #dbg_value(ptr %.val.i, !3276, !DIExpression(), !7780)
    #dbg_value(ptr %.val.i, !3285, !DIExpression(), !7782)
    #dbg_value(i64 8, !3264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7776)
    #dbg_value(i64 8, !3273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7778)
    #dbg_value(i64 8, !3282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7780)
    #dbg_value(i64 8, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7782)
    #dbg_value(i64 80, !3264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7776)
    #dbg_value(i64 80, !3273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7778)
    #dbg_value(i64 80, !3282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7780)
    #dbg_value(i64 80, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7782)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #19, !dbg !7784, !inline_history !3196
    #dbg_value(ptr poison, !7743, !DIExpression(), !7785)
    #dbg_value(ptr %i.a, !7747, !DIExpression(), !7787)
    #dbg_value(i64 8, !7753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7788)
    #dbg_value(i64 48, !7753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7788)
    #dbg_value(ptr poison, !3255, !DIExpression(), !7789)
    #dbg_value(ptr poison, !3267, !DIExpression(), !7791)
    #dbg_value(ptr %i.a, !3263, !DIExpression(), !7789)
    #dbg_value(ptr %i.a, !3272, !DIExpression(), !7791)
    #dbg_value(ptr %i.a, !3276, !DIExpression(), !7793)
    #dbg_value(ptr %i.a, !3285, !DIExpression(), !7795)
    #dbg_value(i64 8, !3264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7789)
    #dbg_value(i64 8, !3273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7791)
    #dbg_value(i64 8, !3282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7793)
    #dbg_value(i64 8, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7795)
    #dbg_value(i64 48, !3264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7789)
    #dbg_value(i64 48, !3273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7791)
    #dbg_value(i64 48, !3282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7793)
    #dbg_value(i64 48, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7795)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #19, !dbg !7797
  ret void, !dbg !7719
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3189 {
bb.a:
    #dbg_value(ptr %0, !3188, !DIExpression(), !7798)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !7799

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #16
          to label %bb.g unwind label %bb.f, !dbg !7799

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.d, !dbg !7799

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7799
  %.val = load ptr, ptr %i.c, align 8, !dbg !7799, !nonnull !27, !noundef !27
    #dbg_value(ptr poison, !3200, !DIExpression(), !7800)
    #dbg_value(ptr poison, !3210, !DIExpression(), !7802)
    #dbg_value(ptr poison, !3220, !DIExpression(), !7804)
    #dbg_value(ptr %.val, !3226, !DIExpression(), !7806)
    #dbg_value(i64 8, !3239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7807)
    #dbg_value(i64 80, !3239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7807)
    #dbg_value(ptr poison, !3255, !DIExpression(), !7808)
    #dbg_value(ptr poison, !3267, !DIExpression(), !7810)
    #dbg_value(ptr %.val, !3263, !DIExpression(), !7808)
    #dbg_value(ptr %.val, !3272, !DIExpression(), !7810)
    #dbg_value(ptr %.val, !3276, !DIExpression(), !7812)
    #dbg_value(ptr %.val, !3285, !DIExpression(), !7814)
    #dbg_value(i64 8, !3264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7808)
    #dbg_value(i64 8, !3273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7810)
    #dbg_value(i64 8, !3282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7812)
    #dbg_value(i64 8, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7814)
    #dbg_value(i64 80, !3264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7808)
    #dbg_value(i64 80, !3273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7810)
    #dbg_value(i64 80, !3282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7812)
    #dbg_value(i64 80, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7814)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #19, !dbg !7816
  ret void, !dbg !7799

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !7799
  unreachable, !dbg !7799

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7799
  %.val3 = load ptr, ptr %i.e, align 8, !dbg !7799, !nonnull !27, !noundef !27
    #dbg_value(ptr poison, !3200, !DIExpression(), !7817)
    #dbg_value(ptr poison, !3210, !DIExpression(), !7819)
    #dbg_value(ptr poison, !3220, !DIExpression(), !7821)
    #dbg_value(ptr %.val3, !3226, !DIExpression(), !7823)
    #dbg_value(i64 8, !3239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7824)
    #dbg_value(i64 80, !3239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7824)
    #dbg_value(ptr poison, !3255, !DIExpression(), !7825)
    #dbg_value(ptr poison, !3267, !DIExpression(), !7827)
    #dbg_value(ptr %.val3, !3263, !DIExpression(), !7825)
    #dbg_value(ptr %.val3, !3272, !DIExpression(), !7827)
    #dbg_value(ptr %.val3, !3276, !DIExpression(), !7829)
    #dbg_value(ptr %.val3, !3285, !DIExpression(), !7831)
    #dbg_value(i64 8, !3264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7825)
    #dbg_value(i64 8, !3273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7827)
    #dbg_value(i64 8, !3282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7829)
    #dbg_value(i64 8, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7831)
    #dbg_value(i64 80, !3264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7825)
    #dbg_value(i64 80, !3273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7827)
    #dbg_value(i64 80, !3282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7829)
    #dbg_value(i64 80, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7831)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 80, i64 noundef 8) #19, !dbg !7833
  resume { ptr, i32 } %.pn, !dbg !7799
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir5ClassECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7834 {
bb.a:
    #dbg_value(ptr %0, !7839, !DIExpression(), !7842)
  %i.a = load i64, ptr %0, align 8, !dbg !7843, !range !7844, !noundef !27
  %1 = icmp eq i64 %i.a, 0, !dbg !7843
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7843 ; 6 uses
  br i1 %1, label %bb.b, label %bb.e, !dbg !7843

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !7845, !DIExpression(), !7853)
    #dbg_value(ptr %i.b, !7855, !DIExpression(), !7863)
    #dbg_value(ptr %i.b, !7865, !DIExpression(), !7873)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.c, !dbg !7875

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !7876, !DIExpression(), !7884)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.d, !dbg !7886

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !7875
  unreachable, !dbg !7875

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.e, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !7843

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
    #dbg_value(ptr %i.b, !7876, !DIExpression(), !7887)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !7889
  br label %bb.h, !dbg !7843

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !7890, !DIExpression(), !7898)
    #dbg_value(ptr %i.b, !7900, !DIExpression(), !7908)
    #dbg_value(ptr %i.b, !7910, !DIExpression(), !7918)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir10ClassBytesECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.f, !dbg !7920

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !7921, !DIExpression(), !7929)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.g, !dbg !7931

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !7920
  unreachable, !dbg !7920

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir10ClassBytesECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.e
    #dbg_value(ptr %i.b, !7921, !DIExpression(), !7932)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !7934
  br label %bb.h, !dbg !7843

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir10ClassBytesECs9GYDdpCSJ4S_14regex_automata.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeECs9GYDdpCSJ4S_14regex_automata.exit
  ret void, !dbg !7843
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7935 {
bb.a:
    #dbg_value(ptr %0, !7940, !DIExpression(), !7943)
  %i.a = load i64, ptr %0, align 8, !dbg !7944, !range !7945, !noundef !27 ; 3 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !7944
  tail call void @llvm.assume(i1 %i.b), !dbg !7944
  %i.c = add nsw i64 %i.a, -2, !dbg !7944
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !7944
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !7944
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.k
  ], !dbg !7944

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7944 ; 3 uses
    #dbg_value(ptr %i.e, !2547, !DIExpression(), !7946)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.c, !dbg !7948

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !2558, !DIExpression(), !7949)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d, !dbg !7951

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !7948
  unreachable, !dbg !7948

common.resume:                                    ; preds = %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.r, %bb.l ]
  resume { ptr, i32 } %common.resume.op, !dbg !7952

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
    #dbg_value(ptr %i.e, !2558, !DIExpression(), !7953)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !7955
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7944

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.f, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, %bb.h, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit, %bb.a, %bb.a
  ret void, !dbg !7944

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7944
  %.val1 = load i64, ptr %i.h, align 8, !dbg !7944, !noundef !27 ; 2 uses
    #dbg_value(ptr poison, !7956, !DIExpression(), !7964)
    #dbg_value(ptr poison, !7966, !DIExpression(), !7974)
    #dbg_value(ptr poison, !7976, !DIExpression(), !7995)
    #dbg_value(ptr poison, !7979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7997)
    #dbg_value(i64 %.val1, !7979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7997)
    #dbg_value(i64 1, !7993, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7998)
    #dbg_value(i64 %.val1, !7993, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7998)
  %i.i = icmp eq i64 %.val1, 0, !dbg !7999
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.f, !dbg !7999

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7944
  %.val = load ptr, ptr %i.j, align 8, !dbg !7944, !nonnull !27, !noundef !27
    #dbg_value(ptr %.val, !7979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7997)
    #dbg_value(ptr poison, !3255, !DIExpression(), !8000)
    #dbg_value(ptr poison, !3267, !DIExpression(), !8002)
    #dbg_value(ptr %.val, !3263, !DIExpression(), !8000)
    #dbg_value(ptr %.val, !3272, !DIExpression(), !8002)
    #dbg_value(ptr %.val, !3276, !DIExpression(), !8004)
    #dbg_value(ptr %.val, !3285, !DIExpression(), !8006)
    #dbg_value(i64 1, !3264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8000)
    #dbg_value(i64 1, !3273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8002)
    #dbg_value(i64 1, !3282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8004)
    #dbg_value(i64 1, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8006)
    #dbg_value(i64 %.val1, !3264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8000)
    #dbg_value(i64 %.val1, !3273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8002)
    #dbg_value(i64 %.val1, !3282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8004)
    #dbg_value(i64 %.val1, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8006)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #19, !dbg !8008
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8009

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir5ClassECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0), !dbg !7944
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7944

bb.h:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8010, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8018)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8020
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k), !dbg !8020, !inline_history !8021
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7944

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8022), !dbg !7944
    #dbg_value(ptr %i.l, !8025, !DIExpression(), !8033)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8035
  %.val.i = load ptr, ptr %i.m, align 8, !dbg !8035, !alias.scope !8022, !noundef !27 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8035
  %.val2.i = load i64, ptr %i.n, align 8, !dbg !8035, !alias.scope !8022 ; 2 uses
    #dbg_value(ptr poison, !8036, !DIExpression(), !8044)
  %i.o = icmp eq ptr %.val.i, null, !dbg !8046
    #dbg_value(ptr poison, !8047, !DIExpression(), !8053)
    #dbg_value(ptr poison, !8055, !DIExpression(), !8067)
    #dbg_value(ptr poison, !8058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8069)
    #dbg_value(i64 %.val2.i, !8058, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8069)
    #dbg_value(i64 1, !8065, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8070)
    #dbg_value(i64 %.val2.i, !8065, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8070)
  %i.p = icmp eq i64 %.val2.i, 0
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.p, !dbg !8046
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.j, !dbg !8046

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !8022
    #dbg_value(ptr %.val.i, !8058, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8069)
    #dbg_value(ptr poison, !3255, !DIExpression(), !8071)
    #dbg_value(ptr poison, !3267, !DIExpression(), !8073)
    #dbg_value(ptr %.val.i, !3263, !DIExpression(), !8071)
    #dbg_value(ptr %.val.i, !3272, !DIExpression(), !8073)
    #dbg_value(ptr %.val.i, !3276, !DIExpression(), !8075)
    #dbg_value(ptr %.val.i, !3285, !DIExpression(), !8077)
    #dbg_value(i64 1, !3264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8071)
    #dbg_value(i64 1, !3273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8073)
    #dbg_value(i64 1, !3282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8075)
    #dbg_value(i64 1, !3288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8077)
    #dbg_value(i64 %.val2.i, !3264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8071)
    #dbg_value(i64 %.val2.i, !3273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8073)
    #dbg_value(i64 %.val2.i, !3282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8075)
    #dbg_value(i64 %.val2.i, !3288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8077)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #19, !dbg !8079, !noalias !8022
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8080

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.j, %bb.i
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l), !dbg !8035, !inline_history !8081
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !7944

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !7944 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler3new:bb.a
  store i64 -2, ptr %0, align 8, !dbg !20217
  br label %bb.l, !dbg !20093

bb.l:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler9add_empty.exit, %bb.b
  ret void, !dbg !20093
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler6finish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !20218 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_declare(ptr poison, !20236, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20243)
    #dbg_declare(ptr poison, !20246, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20253)
    #dbg_declare(ptr poison, !20240, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20255)
    #dbg_declare(ptr poison, !20232, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20256)
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 6 uses
    #dbg_value(ptr %1, !20223, !DIExpression(), !20257)
    #dbg_declare(ptr %i.d, !20258, !DIExpression(), !20265)
    #dbg_declare(ptr poison, !20224, !DIExpression(), !20267)
    #dbg_declare(ptr poison, !20240, !DIExpression(), !20268)
    #dbg_declare(ptr %i.c, !20228, !DIExpression(), !20271)
    #dbg_declare(ptr %i.b, !20250, !DIExpression(), !20272)
    #dbg_declare(ptr poison, !20263, !DIExpression(), !20273)
    #dbg_declare(ptr poison, !20241, !DIExpression(), !20274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20266
  call fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler12compile_from(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0), !dbg !20275
  %i.e = load i64, ptr %i.d, align 8, !dbg !20276, !range !3172, !noundef !27
  %.not = icmp eq i64 %i.e, -2, !dbg !20276
  br i1 %.not, label %bb.c, label %bb.b, !dbg !20277

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !dbg !20278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20279
  br label %bb.i, !dbg !20280

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20282
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20283
  %.val20 = load ptr, ptr %i.f, align 8, !dbg !20283, !nonnull !27, !align !4640, !noundef !27 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20284), !dbg !20283
    #dbg_declare(ptr poison, !20287, !DIExpression(DW_OP_LLVM_fragment, 64, 152), !20296)
    #dbg_value(ptr poison, !20304, !DIExpression(), !20315)
    #dbg_value(i8 0, !20311, !DIExpression(), !20316)
    #dbg_value(i64 0, !20317, !DIExpression(), !20321)
    #dbg_value(i64 32, !20323, !DIExpression(), !20327)
    #dbg_value(ptr @34, !20293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20341)
    #dbg_value(i64 15, !20293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20342, !noalias !20284
    #dbg_value(ptr %.val20, !20343, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20346)
  %i.g = getelementptr inbounds nuw i8, ptr %.val20, i64 56, !dbg !20348 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !20348, !noalias !20284, !noundef !27 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !dbg !20348, !noalias !20284
  %i.i = icmp ult i64 %i.h, 288230376151711744, !dbg !20349
  tail call void @llvm.assume(i1 %i.i), !dbg !20350
    #dbg_value(ptr %i.a, !20305, !DIExpression(), !20351)
    #dbg_value(ptr @41, !20310, !DIExpression(), !20351)
  %i.j = icmp eq i64 %i.h, 1, !dbg !20352
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !20352, !prof !2660

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20, !dbg !20353, !noalias !20284
  unreachable, !dbg !20353

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20354, !noalias !20284
    #dbg_value(ptr %.val20, !20320, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20355)
    #dbg_value(ptr %.val20, !20356, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20359)
    #dbg_value(ptr %.val20, !20361, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20364)
    #dbg_value(ptr %.val20, !20366, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20369)
  %i.k = getelementptr inbounds nuw i8, ptr %.val20, i64 48, !dbg !20371
  %i.l = load ptr, ptr %i.k, align 8, !dbg !20371, !noalias !20284, !nonnull !27, !noundef !27 ; 3 uses
    #dbg_value(ptr %i.l, !20378, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20381)
    #dbg_value(ptr %i.l, !20383, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20386)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !20388
  %i.n = load i8, ptr %i.m, align 8, !dbg !20388, !range !2811, !noalias !20284, !noundef !27
  %i.o = trunc nuw i8 %i.n to i1, !dbg !20388
  br i1 %i.o, label %bb.f, label %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit, !dbg !20389, !prof !14531

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #20, !dbg !20390, !noalias !20284
  unreachable, !dbg !20390

_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit: ; preds = %bb.e
    #dbg_value(ptr %.val20, !20339, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20391)
    #dbg_value(ptr %.val20, !20335, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20392)
    #dbg_value(ptr %.val20, !20366, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20393)
    #dbg_value(ptr %.val20, !20343, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20395)
  store i64 0, ptr %i.g, align 8, !dbg !20397, !noalias !20284
    #dbg_value(i1 true, !20398, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20401)
    #dbg_value(ptr %i.l, !20403, !DIExpression(), !20406)
  %.sroa.03.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !20408, !noalias !20284
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !20408
    #dbg_value(i64 %.sroa.03.0.copyload.i, !20287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20341)
  store i64 %.sroa.03.0.copyload.i, ptr %i.c, align 8, !dbg !20409, !alias.scope !20284
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !dbg !20409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20254
  %.val = load ptr, ptr %1, align 8, !dbg !20410
  call fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler7compile(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.b, ptr %.val, ptr nonnull %.val20, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !dbg !20410
  %i.p = load i64, ptr %i.b, align 8, !dbg !20411, !range !3172, !noundef !27 ; 2 uses
  %.not18 = icmp eq i64 %i.p, -2, !dbg !20411
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20412
  %i.r = load i32, ptr %i.q, align 8, !dbg !20412 ; 2 uses
  br i1 %.not18, label %bb.h, label %bb.g, !dbg !20413

bb.g:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit
    #dbg_value(i64 %i.p, !20246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20414)
    #dbg_value(i32 %i.r, !20246, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20414)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !20415
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.511.0..sroa_idx, i64 116, i1 false), !dbg !20415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20417
    #dbg_value(i64 %i.p, !20232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20418)
    #dbg_value(i64 %i.p, !20240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20419)
    #dbg_value(i32 %i.r, !20232, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20418)
    #dbg_value(i32 %i.r, !20240, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20419)
    #dbg_value(i64 %i.p, !20236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20420)
    #dbg_value(i32 %i.r, !20236, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20420)
  store i64 %i.p, ptr %0, align 8, !dbg !20416
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20416
  store i32 %i.r, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !20416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20421
  br label %bb.i, !dbg !20280

bb.h:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20417
    #dbg_value(i32 %i.r, !20230, !DIExpression(), !20422)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20423
  %i.t = load i32, ptr %i.s, align 8, !dbg !20423, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20424
  store i32 %i.r, ptr %i.u, align 8, !dbg !20424
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20424
  store i32 %i.t, ptr %i.v, align 4, !dbg !20424
  store i64 -2, ptr %0, align 8, !dbg !20424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20421
  br label %bb.i, !dbg !20425

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void, !dbg !20425
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler7compile(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20426 {
bb.a:
    #dbg_declare(ptr poison, !20444, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20452)
    #dbg_declare(ptr poison, !20455, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20462)
  %i.a = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !20450, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20464)
    #dbg_declare(ptr poison, !20440, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20465)
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !20432, !DIExpression(), !20466)
    #dbg_declare(ptr %1, !20433, !DIExpression(), !20467)
    #dbg_declare(ptr %i.c, !20459, !DIExpression(), !20468)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
    #dbg_value(ptr %1, !20469, !DIExpression(), !20479)
    #dbg_value(ptr %1, !20481, !DIExpression(), !20485)
    #dbg_value(ptr %1, !20487, !DIExpression(), !20493)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20495
  %i.e = load ptr, ptr %i.d, align 8, !dbg !20495, !nonnull !27, !noundef !27 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20502
  %i.g = load i64, ptr %i.f, align 8, !dbg !20502, !noundef !27 ; 3 uses
  %i.h = getelementptr i8, ptr %.8.val, i64 16, !dbg !20503
  %.val = load i64, ptr %i.h, align 8, !dbg !20503 ; 3 uses
    #dbg_value(ptr poison, !20504, !DIExpression(), !20536)
    #dbg_value(ptr poison, !20548, !DIExpression(), !20555)
    #dbg_value(ptr %i.e, !20549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20555)
    #dbg_value(ptr %i.e, !20556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20561)
    #dbg_value(ptr %i.e, !20563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20566)
    #dbg_value(ptr %i.e, !20568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20578)
    #dbg_value(i64 %i.g, !20549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20555)
    #dbg_value(i64 %i.g, !20556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20561)
    #dbg_value(i64 %i.g, !20563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20566)
    #dbg_value(i64 %i.g, !20568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20578)
    #dbg_value(i64 1, !20580, !DIExpression(), !20587)
    #dbg_value(i64 1099511628211, !20589, !DIExpression(), !20593)
    #dbg_value(i64 1099511628211, !20589, !DIExpression(), !20595)
    #dbg_value(i64 1099511628211, !20589, !DIExpression(), !20597)
    #dbg_value(i64 -3750763034362895579, !20550, !DIExpression(), !20599)
    #dbg_value(i64 %i.g, !20572, !DIExpression(), !20600)
    #dbg_value(i64 %i.g, !20601, !DIExpression(), !20605)
    #dbg_value(ptr %i.e, !20574, !DIExpression(), !20607)
    #dbg_value(ptr %i.e, !20604, !DIExpression(), !20605)
    #dbg_value(ptr %i.e, !20551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20608)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20608)
    #dbg_value(ptr undef, !20504, !DIExpression(), !20536)
    #dbg_value(ptr %i.e, !20530, !DIExpression(), !20609)
    #dbg_value(ptr %i.e, !20586, !DIExpression(), !20587)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20610)
    #dbg_value(ptr poison, !20611, !DIExpression(), !20618)
    #dbg_value(ptr poison, !20617, !DIExpression(), !20620)
  %i.i = icmp eq i64 %i.g, 0, !dbg !20621
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !20622

.lr.ph.i.preheader:                               ; preds = %bb.a
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20610)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20551, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20608)
  %i.j = add i64 %i.g, 2305843009213693951, !dbg !20622 ; 2 uses
  %i.k = and i64 %i.j, 2305843009213693951, !dbg !20622 ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1, !dbg !20622     ; 2 uses
  %i.m = icmp eq i64 %i.k, 0, !dbg !20622
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !20622

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.l, 4611686018427387902, !dbg !20622
  br label %.lr.ph.i, !dbg !20622

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.02.i = phi ptr [ %i.e, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 7 uses
  %.sroa.02.01.i = phi i64 [ -3750763034362895579, %.lr.ph.i.preheader.new ], [ %i.aq, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
    #dbg_value(ptr %.sroa.0.02.i, !20551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20608)
    #dbg_value(i64 %.sroa.02.01.i, !20550, !DIExpression(), !20599)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8, !dbg !20623
    #dbg_value(ptr %i.n, !20551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20608)
    #dbg_value(ptr %.sroa.0.02.i, !20552, !DIExpression(), !20624)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 4, !dbg !20625
  %i.p = load i8, ptr %i.o, align 4, !dbg !20625, !alias.scope !20626, !noundef !27
    #dbg_value(i8 %i.p, !20629, !DIExpression(), !20632)
  %i.q = zext i8 %i.p to i64, !dbg !20634
  %i.r = xor i64 %.sroa.02.01.i, %i.q, !dbg !20635
    #dbg_value(i64 %i.r, !20592, !DIExpression(), !20593)
  %i.s = mul i64 %i.r, 1099511628211, !dbg !20636
    #dbg_value(i64 %i.s, !20550, !DIExpression(), !20599)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 5, !dbg !20637
  %i.u = load i8, ptr %i.t, align 1, !dbg !20637, !alias.scope !20626, !noundef !27
    #dbg_value(i8 %i.u, !20629, !DIExpression(), !20638)
  %i.v = zext i8 %i.u to i64, !dbg !20640
  %i.w = xor i64 %i.s, %i.v, !dbg !20641
    #dbg_value(i64 %i.w, !20592, !DIExpression(), !20595)
  %i.x = mul i64 %i.w, 1099511628211, !dbg !20642
    #dbg_value(i64 %i.x, !20550, !DIExpression(), !20599)
    #dbg_value(ptr %.sroa.0.02.i, !20643, !DIExpression(), !20646)
    #dbg_value(ptr %.sroa.0.02.i, !20648, !DIExpression(), !20651)
  %i.y = load i32, ptr %.sroa.0.02.i, align 4, !dbg !20653, !alias.scope !20626, !noundef !27
  %i.z = zext i32 %i.y to i64, !dbg !20653
  %i.aa = xor i64 %i.x, %i.z, !dbg !20654
    #dbg_value(i64 %i.aa, !20592, !DIExpression(), !20597)
  %i.ab = mul i64 %i.aa, 1099511628211, !dbg !20655
    #dbg_value(i64 %i.ab, !20550, !DIExpression(), !20599)
    #dbg_value(ptr undef, !20504, !DIExpression(), !20536)
    #dbg_value(ptr %i.n, !20530, !DIExpression(), !20609)
    #dbg_value(ptr %i.n, !20586, !DIExpression(), !20587)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20610)
    #dbg_value(ptr poison, !20611, !DIExpression(), !20618)
    #dbg_value(ptr poison, !20617, !DIExpression(), !20620)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16, !dbg !20623 ; 2 uses
    #dbg_value(ptr %i.ac, !20551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20608)
    #dbg_value(ptr %i.n, !20552, !DIExpression(), !20624)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 12, !dbg !20625
  %i.ae = load i8, ptr %i.ad, align 4, !dbg !20625, !alias.scope !20626, !noundef !27
    #dbg_value(i8 %i.ae, !20629, !DIExpression(), !20632)
  %i.af = zext i8 %i.ae to i64, !dbg !20634
  %i.ag = xor i64 %i.ab, %i.af, !dbg !20635
    #dbg_value(i64 %i.ag, !20592, !DIExpression(), !20593)
  %i.ah = mul i64 %i.ag, 1099511628211, !dbg !20636
    #dbg_value(i64 %i.ah, !20550, !DIExpression(), !20599)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 13, !dbg !20637
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !20637, !alias.scope !20626, !noundef !27
    #dbg_value(i8 %i.aj, !20629, !DIExpression(), !20638)
  %i.ak = zext i8 %i.aj to i64, !dbg !20640
  %i.al = xor i64 %i.ah, %i.ak, !dbg !20641
    #dbg_value(i64 %i.al, !20592, !DIExpression(), !20595)
  %i.am = mul i64 %i.al, 1099511628211, !dbg !20642
    #dbg_value(i64 %i.am, !20550, !DIExpression(), !20599)
    #dbg_value(ptr %i.n, !20643, !DIExpression(), !20646)
    #dbg_value(ptr %i.n, !20648, !DIExpression(), !20651)
  %i.an = load i32, ptr %i.n, align 4, !dbg !20653, !alias.scope !20626, !noundef !27
  %i.ao = zext i32 %i.an to i64, !dbg !20653
  %i.ap = xor i64 %i.am, %i.ao, !dbg !20654
    #dbg_value(i64 %i.ap, !20592, !DIExpression(), !20597)
  %i.aq = mul i64 %i.ap, 1099511628211, !dbg !20655 ; 3 uses
    #dbg_value(i64 %i.aq, !20550, !DIExpression(), !20599)
    #dbg_value(ptr %i.ac, !20530, !DIExpression(), !20609)
    #dbg_value(ptr %i.ac, !20586, !DIExpression(), !20587)
  %niter.next.1 = add i64 %niter, 2, !dbg !20622  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !20622
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !20622

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %2 = and i64 %i.j, 1, !dbg !20622
  %lcmp.mod.not.not = icmp eq i64 %2, 0, !dbg !20622
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i, !dbg !20622

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.02.i.epil.init = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.ac, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.02.01.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.preheader ], [ %i.aq, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.l to i1, !dbg !20622
  tail call void @llvm.assume(i1 %lcmp.mod7), !dbg !20622
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20551, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20608)
    #dbg_value(i64 %.sroa.02.01.i.epil.init, !20550, !DIExpression(), !20599)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20551, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20608)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20552, !DIExpression(), !20624)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.epil.init, i64 4, !dbg !20625
  %i.as = load i8, ptr %i.ar, align 4, !dbg !20625, !alias.scope !20626, !noundef !27
    #dbg_value(i8 %i.as, !20629, !DIExpression(), !20632)
  %i.at = zext i8 %i.as to i64, !dbg !20634
  %i.au = xor i64 %.sroa.02.01.i.epil.init, %i.at, !dbg !20635
    #dbg_value(i64 %i.au, !20592, !DIExpression(), !20593)
  %i.av = mul i64 %i.au, 1099511628211, !dbg !20636
    #dbg_value(i64 %i.av, !20550, !DIExpression(), !20599)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.epil.init, i64 5, !dbg !20637
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !20637, !alias.scope !20626, !noundef !27
    #dbg_value(i8 %i.ax, !20629, !DIExpression(), !20638)
  %i.ay = zext i8 %i.ax to i64, !dbg !20640
  %i.az = xor i64 %i.av, %i.ay, !dbg !20641
    #dbg_value(i64 %i.az, !20592, !DIExpression(), !20595)
  %i.ba = mul i64 %i.az, 1099511628211, !dbg !20642
    #dbg_value(i64 %i.ba, !20550, !DIExpression(), !20599)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20643, !DIExpression(), !20646)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20648, !DIExpression(), !20651)
  %i.bb = load i32, ptr %.sroa.0.02.i.epil.init, align 4, !dbg !20653, !alias.scope !20626, !noundef !27
  %i.bc = zext i32 %i.bb to i64, !dbg !20653
  %i.bd = xor i64 %i.ba, %i.bc, !dbg !20654
    #dbg_value(i64 %i.bd, !20592, !DIExpression(), !20597)
  %i.be = mul i64 %i.bd, 1099511628211, !dbg !20655
    #dbg_value(i64 %i.be, !20550, !DIExpression(), !20599)
    #dbg_value(ptr undef, !20504, !DIExpression(), !20536)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20530, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20609)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20586, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20587)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20532, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20610)
    #dbg_value(ptr poison, !20611, !DIExpression(), !20618)
    #dbg_value(ptr poison, !20617, !DIExpression(), !20620)
  br label %._crit_edge.i, !dbg !20656

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %.sroa.02.0.lcssa.i = phi i64 [ -3750763034362895579, %bb.a ], [ %i.aq, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.i.epil.preheader ], !dbg !20555
    #dbg_value(ptr poison, !20663, !DIExpression(), !20665)
  %i.bf = icmp ult i64 %.val, 288230376151711744, !dbg !20656
  tail call void @llvm.assume(i1 %i.bf), !dbg !20666
  %i.bg = icmp eq i64 %.val, 0, !dbg !20667
  br i1 %i.bg, label %bb.b, label %bb.c, !dbg !20667

bb.b:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %.noexc unwind label %bb.o, !dbg !20667

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !20667

bb.c:                                             ; preds = %._crit_edge.i
  %i.bh = urem i64 %.sroa.02.0.lcssa.i, %.val, !dbg !20667 ; 2 uses
    #dbg_value(i64 %i.bh, !20434, !DIExpression(), !20668)
    #dbg_value(ptr %1, !20469, !DIExpression(), !20669)
    #dbg_value(ptr %1, !20481, !DIExpression(), !20671)
    #dbg_value(ptr %1, !20487, !DIExpression(), !20674)
  %i.bi = invoke { i32, i32 } @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3mapNtB2_14Utf8BoundedMap3get(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef %i.g, i64 noundef %i.bh)
          to label %bb.d unwind label %bb.o, !dbg !20677 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.bj = extractvalue { i32, i32 } %i.bi, 0, !dbg !20678
  %i.bk = trunc i32 %i.bj to i1, !dbg !20679
  br i1 %i.bk, label %bb.e, label %bb.f, !dbg !20679

bb.e:                                             ; preds = %bb.d
  %i.bl = extractvalue { i32, i32 } %i.bi, 1, !dbg !20678
    #dbg_value(i32 %i.bl, !20436, !DIExpression(), !20680)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20681
  store i32 %i.bl, ptr %i.bm, align 8, !dbg !20681
  store i64 -2, ptr %0, align 8, !dbg !20681
  br label %bb.g, !dbg !20682

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20463
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20684
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.j unwind label %bb.o, !dbg !20685

bb.g:                                             ; preds = %bb.l, %bb.e
    #dbg_value(ptr %1, !7683, !DIExpression(), !20686)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit unwind label %bb.h, !dbg !20688

bb.h:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !7688, !DIExpression(), !20689)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.i, !dbg !20691

bb.i:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !20688
  unreachable, !dbg !20688

common.resume:                                    ; preds = %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %lpad.thr_comm, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !20466

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit: ; preds = %bb.g
    #dbg_value(ptr %1, !7688, !DIExpression(), !20692)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !20694
  br label %bb.n, !dbg !20695

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB4_7Builder10add_sparse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.o, !dbg !20696

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20697
  %i.bp = load i64, ptr %i.c, align 8, !dbg !20698, !range !3172, !noundef !27 ; 2 uses
  %.not = icmp eq i64 %i.bp, -2, !dbg !20698
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20699
  %i.br = load i32, ptr %i.bq, align 8, !dbg !20699 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20668 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l, !dbg !20700

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 %i.bp, !20455, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20701)
    #dbg_value(i32 %i.br, !20455, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20701)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !20702
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.515.0..sroa_idx, i64 116, i1 false), !dbg !20702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20704
    #dbg_value(i64 %i.bp, !20440, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20705)
    #dbg_value(i64 %i.bp, !20450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20706)
    #dbg_value(i32 %i.br, !20440, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20705)
    #dbg_value(i32 %i.br, !20450, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20706)
    #dbg_value(i64 %i.bp, !20444, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20707)
    #dbg_value(i32 %i.br, !20444, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20707)
  store i64 %i.bp, ptr %0, align 8, !dbg !20703
  store i32 %i.br, ptr %i.bs, align 8, !dbg !20703
  br label %bb.g, !dbg !20682

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20704
    #dbg_value(i32 %i.br, !20438, !DIExpression(), !20708)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20709
  call void @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3mapNtB2_14Utf8BoundedMap3set(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bh, i32 noundef %i.br), !dbg !20710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20711
  store i32 %i.br, ptr %i.bs, align 8, !dbg !20712
  store i64 -2, ptr %0, align 8, !dbg !20712
  br label %bb.n, !dbg !20695

bb.n:                                             ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit
  ret void, !dbg !20713

bb.o:                                             ; preds = %bb.j, %bb.f, %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %common.resume unwind label %bb.p, !dbg !20695

bb.p:                                             ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !20714
  unreachable, !dbg !20714
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCINvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB2a_8Compiler7compileB1m_Es_0ENtNtNtB9_6traits8iterator8Iterator4nextB2g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20715 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  %i.b = alloca [128 x i8], align 8               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [128 x i8], align 8               ; 8 uses
  %.sroa.19 = alloca [112 x i8], align 8          ; 8 uses
    #dbg_value(ptr %1, !20720, !DIExpression(), !20722)
    #dbg_value(ptr %1, !5437, !DIExpression(), !20723)
    #dbg_value(i64 1, !5567, !DIExpression(), !20725)
  %i.f = load ptr, ptr %1, align 8, !dbg !20727, !alias.scope !20728, !nonnull !27, !noundef !27 ; 3 uses
    #dbg_value(ptr %i.f, !5440, !DIExpression(), !20731)
    #dbg_value(ptr %i.f, !5570, !DIExpression(), !20725)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20732
  %i.h = load ptr, ptr %i.g, align 8, !dbg !20732, !alias.scope !20728, !nonnull !27, !noundef !27
    #dbg_value(ptr %i.h, !5442, !DIExpression(), !20733)
    #dbg_value(ptr poison, !5584, !DIExpression(), !20734)
    #dbg_value(ptr poison, !5587, !DIExpression(), !20736)
  %i.i = icmp eq ptr %i.f, %i.h, !dbg !20737
  br i1 %i.i, label %bb.y, label %bb.b, !dbg !20738

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !20739
  store ptr %i.j, ptr %1, align 8, !dbg !20740, !alias.scope !20728
    #dbg_value(ptr %i.f, !20741, !DIExpression(), !20753)
    #dbg_value(ptr %1, !20750, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !20753)
    #dbg_value(ptr %1, !20755, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !20762)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20764
end_hunk_1
