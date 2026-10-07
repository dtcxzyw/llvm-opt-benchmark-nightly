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
          to label %bb.d unwind label %bb.f, !dbg !8626, !inline_history !2508

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !8626, !inline_history !2508

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !8626
  %.val3.i = load ptr, ptr %i.c, align 8, !dbg !8626, !alias.scope !8616, !nonnull !1073, !noundef !1073
    #dbg_value(ptr poison, !2510, !DIExpression(), !8549)
    #dbg_value(ptr poison, !2517, !DIExpression(), !8551)
    #dbg_value(ptr poison, !2524, !DIExpression(), !8553)
    #dbg_value(ptr %.val3.i, !2527, !DIExpression(), !8554)
    #dbg_value(i64 8, !2528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8555)
    #dbg_value(i64 80, !2528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8555)
    #dbg_value(ptr poison, !2548, !DIExpression(), !8557)
    #dbg_value(ptr poison, !2555, !DIExpression(), !8559)
    #dbg_value(ptr %.val3.i, !2552, !DIExpression(), !8557)
    #dbg_value(ptr %.val3.i, !2558, !DIExpression(), !8559)
    #dbg_value(ptr %.val3.i, !2561, !DIExpression(), !8561)
    #dbg_value(ptr %.val3.i, !2567, !DIExpression(), !8563)
    #dbg_value(i64 8, !2553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8557)
    #dbg_value(i64 8, !2559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8559)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8561)
    #dbg_value(i64 8, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8563)
    #dbg_value(i64 80, !2553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8557)
    #dbg_value(i64 80, !2559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8559)
    #dbg_value(i64 80, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8561)
    #dbg_value(i64 80, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8563)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 80, i64 noundef 8) #19, !dbg !8627, !inline_history !2508
    #dbg_value(ptr poison, !8617, !DIExpression(), !8569)
    #dbg_value(ptr %i.a, !8619, !DIExpression(), !8570)
    #dbg_value(i64 8, !8620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8571)
    #dbg_value(i64 48, !8620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8571)
    #dbg_value(ptr poison, !2548, !DIExpression(), !8573)
    #dbg_value(ptr poison, !2555, !DIExpression(), !8575)
    #dbg_value(ptr %i.a, !2552, !DIExpression(), !8573)
    #dbg_value(ptr %i.a, !2558, !DIExpression(), !8575)
    #dbg_value(ptr %i.a, !2561, !DIExpression(), !8577)
    #dbg_value(ptr %i.a, !2567, !DIExpression(), !8579)
    #dbg_value(i64 8, !2553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8573)
    #dbg_value(i64 8, !2559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8575)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8577)
    #dbg_value(i64 8, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8579)
    #dbg_value(i64 48, !2553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8573)
    #dbg_value(i64 48, !2559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8575)
    #dbg_value(i64 48, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8577)
    #dbg_value(i64 48, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8579)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #19, !dbg !8628
  resume { ptr, i32 } %.pn.i, !dbg !8625

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !8626, !inline_history !2508
  unreachable, !dbg !8626

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !8626
  %.val.i = load ptr, ptr %i.f, align 8, !dbg !8626, !alias.scope !8616, !nonnull !1073, !noundef !1073
    #dbg_value(ptr poison, !2510, !DIExpression(), !8581)
    #dbg_value(ptr poison, !2517, !DIExpression(), !8583)
    #dbg_value(ptr poison, !2524, !DIExpression(), !8585)
    #dbg_value(ptr %.val.i, !2527, !DIExpression(), !8586)
    #dbg_value(i64 8, !2528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8587)
    #dbg_value(i64 80, !2528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8587)
    #dbg_value(ptr poison, !2548, !DIExpression(), !8589)
    #dbg_value(ptr poison, !2555, !DIExpression(), !8591)
    #dbg_value(ptr %.val.i, !2552, !DIExpression(), !8589)
    #dbg_value(ptr %.val.i, !2558, !DIExpression(), !8591)
    #dbg_value(ptr %.val.i, !2561, !DIExpression(), !8593)
    #dbg_value(ptr %.val.i, !2567, !DIExpression(), !8595)
    #dbg_value(i64 8, !2553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8589)
    #dbg_value(i64 8, !2559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8591)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8593)
    #dbg_value(i64 8, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8595)
    #dbg_value(i64 80, !2553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8589)
    #dbg_value(i64 80, !2559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8591)
    #dbg_value(i64 80, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8593)
    #dbg_value(i64 80, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8595)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #19, !dbg !8629, !inline_history !2508
    #dbg_value(ptr poison, !8617, !DIExpression(), !8597)
    #dbg_value(ptr %i.a, !8619, !DIExpression(), !8598)
    #dbg_value(i64 8, !8620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8599)
    #dbg_value(i64 48, !8620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8599)
    #dbg_value(ptr poison, !2548, !DIExpression(), !8601)
    #dbg_value(ptr poison, !2555, !DIExpression(), !8603)
    #dbg_value(ptr %i.a, !2552, !DIExpression(), !8601)
    #dbg_value(ptr %i.a, !2558, !DIExpression(), !8603)
    #dbg_value(ptr %i.a, !2561, !DIExpression(), !8605)
    #dbg_value(ptr %i.a, !2567, !DIExpression(), !8607)
    #dbg_value(i64 8, !2553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8601)
    #dbg_value(i64 8, !2559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8603)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8605)
    #dbg_value(i64 8, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8607)
    #dbg_value(i64 48, !2553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8601)
    #dbg_value(i64 48, !2559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8603)
    #dbg_value(i64 48, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8605)
    #dbg_value(i64 48, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8607)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #19, !dbg !8630
  ret void, !dbg !8625
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !428 {
bb.a:
    #dbg_value(ptr %0, !2504, !DIExpression(), !8663)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b, !dbg !8664

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0) #16
          to label %bb.g unwind label %bb.f, !dbg !8664

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.d, !dbg !8664

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !8664
  %.val = load ptr, ptr %i.c, align 8, !dbg !8664, !nonnull !1073, !noundef !1073
    #dbg_value(ptr poison, !2510, !DIExpression(), !8632)
    #dbg_value(ptr poison, !2517, !DIExpression(), !8634)
    #dbg_value(ptr poison, !2524, !DIExpression(), !8636)
    #dbg_value(ptr %.val, !2527, !DIExpression(), !8637)
    #dbg_value(i64 8, !2528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8638)
    #dbg_value(i64 80, !2528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8638)
    #dbg_value(ptr poison, !2548, !DIExpression(), !8640)
    #dbg_value(ptr poison, !2555, !DIExpression(), !8642)
    #dbg_value(ptr %.val, !2552, !DIExpression(), !8640)
    #dbg_value(ptr %.val, !2558, !DIExpression(), !8642)
    #dbg_value(ptr %.val, !2561, !DIExpression(), !8644)
    #dbg_value(ptr %.val, !2567, !DIExpression(), !8646)
    #dbg_value(i64 8, !2553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8640)
    #dbg_value(i64 8, !2559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8642)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8644)
    #dbg_value(i64 8, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8646)
    #dbg_value(i64 80, !2553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8640)
    #dbg_value(i64 80, !2559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8642)
    #dbg_value(i64 80, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8644)
    #dbg_value(i64 80, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8646)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #19, !dbg !8665
  ret void, !dbg !8664

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !8664
  unreachable, !dbg !8664

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !8664
  %.val3 = load ptr, ptr %i.e, align 8, !dbg !8664, !nonnull !1073, !noundef !1073
    #dbg_value(ptr poison, !2510, !DIExpression(), !8648)
    #dbg_value(ptr poison, !2517, !DIExpression(), !8650)
    #dbg_value(ptr poison, !2524, !DIExpression(), !8652)
    #dbg_value(ptr %.val3, !2527, !DIExpression(), !8653)
    #dbg_value(i64 8, !2528, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8654)
    #dbg_value(i64 80, !2528, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8654)
    #dbg_value(ptr poison, !2548, !DIExpression(), !8656)
    #dbg_value(ptr poison, !2555, !DIExpression(), !8658)
    #dbg_value(ptr %.val3, !2552, !DIExpression(), !8656)
    #dbg_value(ptr %.val3, !2558, !DIExpression(), !8658)
    #dbg_value(ptr %.val3, !2561, !DIExpression(), !8660)
    #dbg_value(ptr %.val3, !2567, !DIExpression(), !8662)
    #dbg_value(i64 8, !2553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8656)
    #dbg_value(i64 8, !2559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8658)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8660)
    #dbg_value(i64 8, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8662)
    #dbg_value(i64 80, !2553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8656)
    #dbg_value(i64 80, !2559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8658)
    #dbg_value(i64 80, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8660)
    #dbg_value(i64 80, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8662)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 80, i64 noundef 8) #19, !dbg !8666
  resume { ptr, i32 } %.pn, !dbg !8664
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir5ClassECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8667 {
bb.a:
    #dbg_value(ptr %0, !8699, !DIExpression(), !8703)
  %i.a = load i64, ptr %0, align 8, !dbg !8760, !range !3382, !noundef !1073
  %1 = trunc nuw i64 %i.a to i1, !dbg !8760
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8760 ; 6 uses
  br i1 %1, label %bb.e, label %bb.b, !dbg !8760

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !8705, !DIExpression(), !8670)
    #dbg_value(ptr %i.b, !8712, !DIExpression(), !8673)
    #dbg_value(ptr %i.b, !8719, !DIExpression(), !8676)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.c, !dbg !8761

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !8726, !DIExpression(), !8679)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.d, !dbg !8762

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !8761
  unreachable, !dbg !8761

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.e, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !8760

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
    #dbg_value(ptr %i.b, !8726, !DIExpression(), !8681)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !8763
  br label %bb.h, !dbg !8760

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %i.b, !8733, !DIExpression(), !8684)
    #dbg_value(ptr %i.b, !8740, !DIExpression(), !8687)
    #dbg_value(ptr %i.b, !8747, !DIExpression(), !8690)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir10ClassBytesECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.f, !dbg !8764

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !8754, !DIExpression(), !8693)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.g, !dbg !8765

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !8764
  unreachable, !dbg !8764

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir10ClassBytesECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.e
    #dbg_value(ptr %i.b, !8754, !DIExpression(), !8695)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !dbg !8766
  br label %bb.h, !dbg !8760

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir10ClassBytesECs9GYDdpCSJ4S_14regex_automata.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir12ClassUnicodeECs9GYDdpCSJ4S_14regex_automata.exit
  ret void, !dbg !8760
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8767 {
bb.a:
    #dbg_value(ptr %0, !8832, !DIExpression(), !8836)
  %i.a = load i64, ptr %0, align 8, !dbg !8837, !range !3383, !noundef !1073 ; 3 uses
  %i.b = icmp ne i64 %i.a, 4, !dbg !8837
  tail call void @llvm.assume(i1 %i.b), !dbg !8837
  %i.c = add nsw i64 %i.a, -2, !dbg !8837
  %.inv = icmp samesign ult i64 %i.a, 2, !dbg !8837
  %i.d = select i1 %.inv, i64 2, i64 %i.c, !dbg !8837
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.k
  ], !dbg !8837

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8837 ; 3 uses
    #dbg_value(ptr %i.e, !2276, !DIExpression(), !8769)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.c, !dbg !8872

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !2283, !DIExpression(), !8771)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d, !dbg !8873

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !8872
  unreachable, !dbg !8872

common.resume:                                    ; preds = %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.r, %bb.l ]
  resume { ptr, i32 } %common.resume.op, !dbg !8874

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
    #dbg_value(ptr %i.e, !2283, !DIExpression(), !8773)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !8875
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8837

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.f, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, %bb.h, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata.exit, %bb.a, %bb.a
  ret void, !dbg !8837

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8837
  %.val1 = load i64, ptr %i.h, align 8, !dbg !8837, !noundef !1073 ; 2 uses
    #dbg_value(ptr poison, !3385, !DIExpression(), !8775)
    #dbg_value(ptr poison, !3392, !DIExpression(), !8777)
    #dbg_value(ptr poison, !3398, !DIExpression(), !8779)
    #dbg_value(ptr poison, !3399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8780)
    #dbg_value(i64 %.val1, !3399, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8780)
    #dbg_value(i64 1, !3400, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8781)
    #dbg_value(i64 %.val1, !3400, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8781)
  %i.i = icmp eq i64 %.val1, 0, !dbg !8876
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.f, !dbg !8876

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8837
  %.val = load ptr, ptr %i.j, align 8, !dbg !8837, !nonnull !1073, !noundef !1073
    #dbg_value(ptr %.val, !3399, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8780)
    #dbg_value(ptr poison, !2548, !DIExpression(), !8783)
    #dbg_value(ptr poison, !2555, !DIExpression(), !8785)
    #dbg_value(ptr %.val, !2552, !DIExpression(), !8783)
    #dbg_value(ptr %.val, !2558, !DIExpression(), !8785)
    #dbg_value(ptr %.val, !2561, !DIExpression(), !8787)
    #dbg_value(ptr %.val, !2567, !DIExpression(), !8789)
    #dbg_value(i64 1, !2553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8783)
    #dbg_value(i64 1, !2559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8785)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8787)
    #dbg_value(i64 1, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8789)
    #dbg_value(i64 %.val1, !2553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8783)
    #dbg_value(i64 %.val1, !2559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8785)
    #dbg_value(i64 %.val1, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8787)
    #dbg_value(i64 %.val1, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8789)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #19, !dbg !8877
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8878

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir5ClassECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(40) %0), !dbg !8837
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8837

bb.h:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !8839, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !8792)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8879
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k), !dbg !8879, !inline_history !8793
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8837

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8837
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8845), !dbg !8837
    #dbg_value(ptr %i.l, !8847, !DIExpression(), !8798)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8880
  %.val.i = load ptr, ptr %i.m, align 8, !dbg !8880, !alias.scope !8845, !noundef !1073 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8880
  %.val2.i = load i64, ptr %i.n, align 8, !dbg !8880, !alias.scope !8845 ; 2 uses
    #dbg_value(ptr poison, !8854, !DIExpression(), !8801)
  %i.o = icmp eq ptr %.val.i, null, !dbg !8881
    #dbg_value(ptr poison, !8861, !DIExpression(), !8804)
    #dbg_value(ptr poison, !8865, !DIExpression(), !8811)
    #dbg_value(ptr poison, !8866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8812)
    #dbg_value(i64 %.val2.i, !8866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8812)
    #dbg_value(i64 1, !8867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8813)
    #dbg_value(i64 %.val2.i, !8867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8813)
  %i.p = icmp eq i64 %.val2.i, 0
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.p, !dbg !8881
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, label %bb.j, !dbg !8881

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !8845
    #dbg_value(ptr %.val.i, !8866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8812)
    #dbg_value(ptr poison, !2548, !DIExpression(), !8815)
    #dbg_value(ptr poison, !2555, !DIExpression(), !8817)
    #dbg_value(ptr %.val.i, !2552, !DIExpression(), !8815)
    #dbg_value(ptr %.val.i, !2558, !DIExpression(), !8817)
    #dbg_value(ptr %.val.i, !2561, !DIExpression(), !8819)
    #dbg_value(ptr %.val.i, !2567, !DIExpression(), !8821)
    #dbg_value(i64 1, !2553, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8815)
    #dbg_value(i64 1, !2559, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8817)
    #dbg_value(i64 1, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8819)
    #dbg_value(i64 1, !2568, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8821)
    #dbg_value(i64 %.val2.i, !2553, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8815)
    #dbg_value(i64 %.val2.i, !2559, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8817)
    #dbg_value(i64 %.val2.i, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8819)
    #dbg_value(i64 %.val2.i, !2568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8821)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #19, !dbg !8882, !noalias !8845
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8883

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7CaptureECs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.j, %bb.i
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l), !dbg !8880, !inline_history !8822
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7LiteralECs9GYDdpCSJ4S_14regex_automata.exit, !dbg !8837

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8837 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler3new:bb.a
  store i64 -2, ptr %0, align 8, !dbg !20412
  br label %bb.l, !dbg !20390

bb.l:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler9add_empty.exit, %bb.b
  ret void, !dbg !20390
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler6finish(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !20419 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_declare(ptr poison, !20503, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20509)
    #dbg_declare(ptr poison, !20510, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20515)
    #dbg_declare(ptr poison, !20504, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20516)
    #dbg_declare(ptr poison, !20500, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20517)
  %i.b = alloca [128 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 6 uses
    #dbg_value(ptr %1, !20495, !DIExpression(), !20518)
    #dbg_declare(ptr %i.d, !20519, !DIExpression(), !20524)
    #dbg_declare(ptr poison, !20496, !DIExpression(), !20525)
    #dbg_declare(ptr poison, !20504, !DIExpression(), !20528)
    #dbg_declare(ptr %i.c, !20498, !DIExpression(), !20529)
    #dbg_declare(ptr %i.b, !20511, !DIExpression(), !20530)
    #dbg_declare(ptr poison, !20521, !DIExpression(), !20531)
    #dbg_declare(ptr poison, !20505, !DIExpression(), !20532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20523
  call fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler12compile_from(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.d, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0), !dbg !20589
  %i.e = load i64, ptr %i.d, align 8, !dbg !20590, !range !2501, !noundef !1073
  %.not = icmp eq i64 %i.e, -2, !dbg !20590
  br i1 %.not, label %bb.c, label %bb.b, !dbg !20591

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !dbg !20592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20593
  br label %bb.i, !dbg !20594

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20595
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20596
  %.val20 = load ptr, ptr %i.f, align 8, !dbg !20596, !nonnull !1073, !align !2687, !noundef !1073 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20534), !dbg !20596
    #dbg_declare(ptr poison, !20536, !DIExpression(DW_OP_LLVM_fragment, 64, 152), !20438)
    #dbg_value(ptr poison, !20547, !DIExpression(), !20439)
    #dbg_value(i8 0, !20553, !DIExpression(), !20440)
    #dbg_value(i64 0, !20556, !DIExpression(), !20443)
    #dbg_value(i64 32, !20559, !DIExpression(), !20452)
    #dbg_value(ptr @34, !20540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20453)
    #dbg_value(i64 15, !20540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20597, !noalias !20534
    #dbg_value(ptr %.val20, !20568, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20456)
  %i.g = getelementptr inbounds nuw i8, ptr %.val20, i64 56, !dbg !20598 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !20598, !noalias !20534, !noundef !1073 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !dbg !20598, !noalias !20534
  %i.i = icmp ult i64 %i.h, 288230376151711744, !dbg !20599
  tail call void @llvm.assume(i1 %i.i), !dbg !20600
    #dbg_value(ptr %i.a, !20550, !DIExpression(), !20457)
    #dbg_value(ptr @41, !20551, !DIExpression(), !20457)
  %i.j = icmp eq i64 %i.h, 1, !dbg !20601
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !20601, !prof !2321

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20, !dbg !20602, !noalias !20534
  unreachable, !dbg !20602

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20603, !noalias !20534
    #dbg_value(ptr %.val20, !20557, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20458)
    #dbg_value(ptr %.val20, !20570, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20461)
    #dbg_value(ptr %.val20, !20572, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20464)
    #dbg_value(ptr %.val20, !20574, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20467)
  %i.k = getelementptr inbounds nuw i8, ptr %.val20, i64 48, !dbg !20604
  %i.l = load ptr, ptr %i.k, align 8, !dbg !20604, !noalias !20534, !nonnull !1073, !noundef !1073 ; 3 uses
    #dbg_value(ptr %i.l, !20576, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20476)
    #dbg_value(ptr %i.l, !20578, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !20479)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !20605
  %i.n = load i8, ptr %i.m, align 8, !dbg !20605, !range !2366, !noalias !20534, !noundef !1073
  %i.o = trunc nuw i8 %i.n to i1, !dbg !20605
  br i1 %i.o, label %bb.f, label %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit, !dbg !20606, !prof !3747

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #20, !dbg !20607, !noalias !20534
  unreachable, !dbg !20607

_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit: ; preds = %bb.e
    #dbg_value(ptr %.val20, !20566, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20480)
    #dbg_value(ptr %.val20, !20564, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20481)
    #dbg_value(ptr %.val20, !20574, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20483)
    #dbg_value(ptr %.val20, !20568, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !20485)
  store i64 0, ptr %i.g, align 8, !dbg !20608, !noalias !20534
    #dbg_value(i1 true, !20580, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20488)
    #dbg_value(ptr %i.l, !20582, !DIExpression(), !20491)
  %.sroa.03.0.copyload.i = load i64, ptr %i.l, align 8, !dbg !20609, !noalias !20534
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !20609
    #dbg_value(i64 %.sroa.03.0.copyload.i, !20536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20453)
  store i64 %.sroa.03.0.copyload.i, ptr %i.c, align 8, !dbg !20610, !alias.scope !20534
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i64 16, i1 false), !dbg !20610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20514
  %.val = load ptr, ptr %1, align 8, !dbg !20611
  call fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler7compile(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.b, ptr %.val, ptr nonnull %.val20, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !dbg !20611
  %i.p = load i64, ptr %i.b, align 8, !dbg !20612, !range !2501, !noundef !1073 ; 2 uses
  %.not18 = icmp eq i64 %i.p, -2, !dbg !20612
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20613
  %i.r = load i32, ptr %i.q, align 8, !dbg !20613 ; 2 uses
  br i1 %.not18, label %bb.h, label %bb.g, !dbg !20614

bb.g:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit
    #dbg_value(i64 %i.p, !20510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20584)
    #dbg_value(i32 %i.r, !20510, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20584)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !20615
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.511.0..sroa_idx, i64 116, i1 false), !dbg !20615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20617
    #dbg_value(i64 %i.p, !20500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20585)
    #dbg_value(i64 %i.p, !20504, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20586)
    #dbg_value(i32 %i.r, !20500, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20585)
    #dbg_value(i32 %i.r, !20504, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20586)
    #dbg_value(i64 %i.p, !20503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20587)
    #dbg_value(i32 %i.r, !20503, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20587)
  store i64 %i.p, ptr %0, align 8, !dbg !20616
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20616
  store i32 %i.r, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !20616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20618
  br label %bb.i, !dbg !20594

bb.h:                                             ; preds = %_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler8pop_root.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20617
    #dbg_value(i32 %i.r, !20499, !DIExpression(), !20588)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20619
  %i.t = load i32, ptr %i.s, align 8, !dbg !20619, !noundef !1073
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20620
  store i32 %i.r, ptr %i.u, align 8, !dbg !20620
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20620
  store i32 %i.t, ptr %i.v, align 4, !dbg !20620
  store i64 -2, ptr %0, align 8, !dbg !20620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20618
  br label %bb.i, !dbg !20621

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void, !dbg !20621
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_12Utf8Compiler7compile(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20627 {
bb.a:
    #dbg_declare(ptr poison, !20728, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20736)
    #dbg_declare(ptr poison, !20737, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20742)
  %i.a = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !20731, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20743)
    #dbg_declare(ptr poison, !20725, !DIExpression(DW_OP_LLVM_fragment, 96, 928), !20744)
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [128 x i8], align 8               ; 7 uses
    #dbg_value(ptr poison, !20720, !DIExpression(), !20745)
    #dbg_declare(ptr %1, !20721, !DIExpression(), !20746)
    #dbg_declare(ptr %i.c, !20738, !DIExpression(), !20747)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
    #dbg_value(ptr %1, !20749, !DIExpression(), !20757)
    #dbg_value(ptr %1, !20758, !DIExpression(), !20762)
    #dbg_value(ptr %1, !20763, !DIExpression(), !20769)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20869
  %i.e = load ptr, ptr %i.d, align 8, !dbg !20869, !nonnull !1073, !noundef !1073 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20870
  %i.g = load i64, ptr %i.f, align 8, !dbg !20870, !noundef !1073 ; 3 uses
  %i.h = getelementptr i8, ptr %.8.val, i64 16, !dbg !20871
  %.val = load i64, ptr %i.h, align 8, !dbg !20871 ; 3 uses
    #dbg_value(ptr poison, !20774, !DIExpression(), !20656)
    #dbg_value(ptr poison, !20801, !DIExpression(), !20657)
    #dbg_value(ptr %i.e, !20802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20657)
    #dbg_value(ptr %i.e, !20807, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20660)
    #dbg_value(ptr %i.e, !20811, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20663)
    #dbg_value(ptr %i.e, !20813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20669)
    #dbg_value(i64 %i.g, !20802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20657)
    #dbg_value(i64 %i.g, !20807, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20660)
    #dbg_value(i64 %i.g, !20811, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20663)
    #dbg_value(i64 %i.g, !20813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20669)
    #dbg_value(i64 1, !20819, !DIExpression(), !20672)
    #dbg_value(i64 1099511628211, !20825, !DIExpression(), !20675)
    #dbg_value(i64 1099511628211, !20825, !DIExpression(), !20677)
    #dbg_value(i64 1099511628211, !20825, !DIExpression(), !20679)
    #dbg_value(i64 -3750763034362895579, !20803, !DIExpression(), !20680)
    #dbg_value(i64 %i.g, !20815, !DIExpression(), !20681)
    #dbg_value(i64 %i.g, !20828, !DIExpression(), !20684)
    #dbg_value(ptr %i.e, !20816, !DIExpression(), !20685)
    #dbg_value(ptr %i.e, !20829, !DIExpression(), !20684)
    #dbg_value(ptr %i.e, !20804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20686)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20804, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20686)
    #dbg_value(ptr undef, !20774, !DIExpression(), !20656)
    #dbg_value(ptr %i.e, !20791, !DIExpression(), !20687)
    #dbg_value(ptr %i.e, !20823, !DIExpression(), !20672)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20792, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20688)
    #dbg_value(ptr poison, !20834, !DIExpression(), !20691)
    #dbg_value(ptr poison, !20837, !DIExpression(), !20692)
  %i.i = icmp eq i64 %i.g, 0, !dbg !20872
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !20873

.lr.ph.i.preheader:                               ; preds = %bb.a
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20792, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20688)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20804, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !20686)
  %i.j = add i64 %i.g, 2305843009213693951, !dbg !20873
  %i.k = and i64 %i.j, 2305843009213693951, !dbg !20873 ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1, !dbg !20873     ; 3 uses
  %i.m = icmp eq i64 %i.k, 0, !dbg !20873
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !20873

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.l, 4611686018427387902, !dbg !20873
  br label %.lr.ph.i, !dbg !20873

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.02.i = phi ptr [ %i.e, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 7 uses
  %.sroa.02.01.i = phi i64 [ -3750763034362895579, %.lr.ph.i.preheader.new ], [ %i.aq, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
    #dbg_value(ptr %.sroa.0.02.i, !20804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20686)
    #dbg_value(i64 %.sroa.02.01.i, !20803, !DIExpression(), !20680)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8, !dbg !20874
    #dbg_value(ptr %i.n, !20804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20686)
    #dbg_value(ptr %.sroa.0.02.i, !20805, !DIExpression(), !20693)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 4, !dbg !20875
  %i.p = load i8, ptr %i.o, align 4, !dbg !20875, !alias.scope !20839, !noundef !1073
    #dbg_value(i8 %i.p, !20840, !DIExpression(), !20698)
  %i.q = zext i8 %i.p to i64, !dbg !20876
  %i.r = xor i64 %.sroa.02.01.i, %i.q, !dbg !20877
    #dbg_value(i64 %i.r, !20826, !DIExpression(), !20675)
  %i.s = mul i64 %i.r, 1099511628211, !dbg !20878
    #dbg_value(i64 %i.s, !20803, !DIExpression(), !20680)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 5, !dbg !20879
  %i.u = load i8, ptr %i.t, align 1, !dbg !20879, !alias.scope !20839, !noundef !1073
    #dbg_value(i8 %i.u, !20840, !DIExpression(), !20700)
  %i.v = zext i8 %i.u to i64, !dbg !20880
  %i.w = xor i64 %i.s, %i.v, !dbg !20881
    #dbg_value(i64 %i.w, !20826, !DIExpression(), !20677)
  %i.x = mul i64 %i.w, 1099511628211, !dbg !20882
    #dbg_value(i64 %i.x, !20803, !DIExpression(), !20680)
    #dbg_value(ptr %.sroa.0.02.i, !20842, !DIExpression(), !20703)
    #dbg_value(ptr %.sroa.0.02.i, !20844, !DIExpression(), !20706)
  %i.y = load i32, ptr %.sroa.0.02.i, align 4, !dbg !20883, !alias.scope !20839, !noundef !1073
  %i.z = zext i32 %i.y to i64, !dbg !20883
  %i.aa = xor i64 %i.x, %i.z, !dbg !20884
    #dbg_value(i64 %i.aa, !20826, !DIExpression(), !20679)
  %i.ab = mul i64 %i.aa, 1099511628211, !dbg !20885
    #dbg_value(i64 %i.ab, !20803, !DIExpression(), !20680)
    #dbg_value(ptr undef, !20774, !DIExpression(), !20656)
    #dbg_value(ptr %i.n, !20791, !DIExpression(), !20687)
    #dbg_value(ptr %i.n, !20823, !DIExpression(), !20672)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20792, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20688)
    #dbg_value(ptr poison, !20834, !DIExpression(), !20691)
    #dbg_value(ptr poison, !20837, !DIExpression(), !20692)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16, !dbg !20874 ; 2 uses
    #dbg_value(ptr %i.ac, !20804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20686)
    #dbg_value(ptr %i.n, !20805, !DIExpression(), !20693)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 12, !dbg !20875
  %i.ae = load i8, ptr %i.ad, align 4, !dbg !20875, !alias.scope !20839, !noundef !1073
    #dbg_value(i8 %i.ae, !20840, !DIExpression(), !20698)
  %i.af = zext i8 %i.ae to i64, !dbg !20876
  %i.ag = xor i64 %i.ab, %i.af, !dbg !20877
    #dbg_value(i64 %i.ag, !20826, !DIExpression(), !20675)
  %i.ah = mul i64 %i.ag, 1099511628211, !dbg !20878
    #dbg_value(i64 %i.ah, !20803, !DIExpression(), !20680)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 13, !dbg !20879
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !20879, !alias.scope !20839, !noundef !1073
    #dbg_value(i8 %i.aj, !20840, !DIExpression(), !20700)
  %i.ak = zext i8 %i.aj to i64, !dbg !20880
  %i.al = xor i64 %i.ah, %i.ak, !dbg !20881
    #dbg_value(i64 %i.al, !20826, !DIExpression(), !20677)
  %i.am = mul i64 %i.al, 1099511628211, !dbg !20882
    #dbg_value(i64 %i.am, !20803, !DIExpression(), !20680)
    #dbg_value(ptr %i.n, !20842, !DIExpression(), !20703)
    #dbg_value(ptr %i.n, !20844, !DIExpression(), !20706)
  %i.an = load i32, ptr %i.n, align 4, !dbg !20883, !alias.scope !20839, !noundef !1073
  %i.ao = zext i32 %i.an to i64, !dbg !20883
  %i.ap = xor i64 %i.am, %i.ao, !dbg !20884
    #dbg_value(i64 %i.ap, !20826, !DIExpression(), !20679)
  %i.aq = mul i64 %i.ap, 1099511628211, !dbg !20885 ; 3 uses
    #dbg_value(i64 %i.aq, !20803, !DIExpression(), !20680)
    #dbg_value(ptr %i.ac, !20791, !DIExpression(), !20687)
    #dbg_value(ptr %i.ac, !20823, !DIExpression(), !20672)
  %niter.next.1 = add i64 %niter, 2, !dbg !20873  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !20873
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !20873

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = trunc i64 %i.l to i1, !dbg !20873
  br i1 %lcmp.mod.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i, !dbg !20873

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.02.i.epil.init = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.ac, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.02.01.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.preheader ], [ %i.aq, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod7 = trunc i64 %i.l to i1, !dbg !20873
  tail call void @llvm.assume(i1 %lcmp.mod7), !dbg !20873
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20686)
    #dbg_value(i64 %.sroa.02.01.i.epil.init, !20803, !DIExpression(), !20680)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20804, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !20686)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20805, !DIExpression(), !20693)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.epil.init, i64 4, !dbg !20875
  %i.as = load i8, ptr %i.ar, align 4, !dbg !20875, !alias.scope !20839, !noundef !1073
    #dbg_value(i8 %i.as, !20840, !DIExpression(), !20698)
  %i.at = zext i8 %i.as to i64, !dbg !20876
  %i.au = xor i64 %.sroa.02.01.i.epil.init, %i.at, !dbg !20877
    #dbg_value(i64 %i.au, !20826, !DIExpression(), !20675)
  %i.av = mul i64 %i.au, 1099511628211, !dbg !20878
    #dbg_value(i64 %i.av, !20803, !DIExpression(), !20680)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.epil.init, i64 5, !dbg !20879
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !20879, !alias.scope !20839, !noundef !1073
    #dbg_value(i8 %i.ax, !20840, !DIExpression(), !20700)
  %i.ay = zext i8 %i.ax to i64, !dbg !20880
  %i.az = xor i64 %i.av, %i.ay, !dbg !20881
    #dbg_value(i64 %i.az, !20826, !DIExpression(), !20677)
  %i.ba = mul i64 %i.az, 1099511628211, !dbg !20882
    #dbg_value(i64 %i.ba, !20803, !DIExpression(), !20680)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20842, !DIExpression(), !20703)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20844, !DIExpression(), !20706)
  %i.bb = load i32, ptr %.sroa.0.02.i.epil.init, align 4, !dbg !20883, !alias.scope !20839, !noundef !1073
  %i.bc = zext i32 %i.bb to i64, !dbg !20883
  %i.bd = xor i64 %i.ba, %i.bc, !dbg !20884
    #dbg_value(i64 %i.bd, !20826, !DIExpression(), !20679)
  %i.be = mul i64 %i.bd, 1099511628211, !dbg !20885
    #dbg_value(i64 %i.be, !20803, !DIExpression(), !20680)
    #dbg_value(ptr undef, !20774, !DIExpression(), !20656)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20791, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20687)
    #dbg_value(ptr %.sroa.0.02.i.epil.init, !20823, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !20672)
    #dbg_value(!DIArgList(ptr %i.e, i64 %i.g), !20792, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !20688)
    #dbg_value(ptr poison, !20834, !DIExpression(), !20691)
    #dbg_value(ptr poison, !20837, !DIExpression(), !20692)
  br label %._crit_edge.i, !dbg !20886

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %.sroa.02.0.lcssa.i = phi i64 [ -3750763034362895579, %bb.a ], [ %i.aq, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.i.epil.preheader ], !dbg !20887
    #dbg_value(ptr poison, !20851, !DIExpression(), !20709)
  %i.bf = icmp ult i64 %.val, 288230376151711744, !dbg !20886
  tail call void @llvm.assume(i1 %i.bf), !dbg !20888
  %i.bg = icmp eq i64 %.val, 0, !dbg !20889
  br i1 %i.bg, label %bb.b, label %bb.c, !dbg !20889

bb.b:                                             ; preds = %._crit_edge.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
          to label %.noexc unwind label %bb.o, !dbg !20889

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !20889

bb.c:                                             ; preds = %._crit_edge.i
  %i.bh = urem i64 %.sroa.02.0.lcssa.i, %.val, !dbg !20889 ; 2 uses
    #dbg_value(i64 %i.bh, !20722, !DIExpression(), !20853)
    #dbg_value(ptr %1, !20749, !DIExpression(), !20855)
    #dbg_value(ptr %1, !20758, !DIExpression(), !20858)
    #dbg_value(ptr %1, !20763, !DIExpression(), !20861)
  %i.bi = invoke { i32, i32 } @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3mapNtB2_14Utf8BoundedMap3get(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef %i.g, i64 noundef %i.bh)
          to label %bb.d unwind label %bb.o, !dbg !20890 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.bj = extractvalue { i32, i32 } %i.bi, 0, !dbg !20891
  %i.bk = trunc i32 %i.bj to i1, !dbg !20892
  br i1 %i.bk, label %bb.e, label %bb.f, !dbg !20892

bb.e:                                             ; preds = %bb.d
  %i.bl = extractvalue { i32, i32 } %i.bi, 1, !dbg !20891
    #dbg_value(i32 %i.bl, !20723, !DIExpression(), !20862)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20893
  store i32 %i.bl, ptr %i.bm, align 8, !dbg !20893
  store i64 -2, ptr %0, align 8, !dbg !20893
  br label %bb.g, !dbg !20894

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20741
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20895
  invoke void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBN_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.j unwind label %bb.o, !dbg !20896

bb.g:                                             ; preds = %bb.l, %bb.e
    #dbg_value(ptr %1, !3371, !DIExpression(), !20711)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit unwind label %bb.h, !dbg !20897

bb.h:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !3376, !DIExpression(), !20713)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.i, !dbg !20898

bb.i:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !20897
  unreachable, !dbg !20897

common.resume:                                    ; preds = %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %lpad.thr_comm, %bb.o ]
  resume { ptr, i32 } %common.resume.op, !dbg !20745

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit: ; preds = %bb.g
    #dbg_value(ptr %1, !3376, !DIExpression(), !20715)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !20899
  br label %bb.n, !dbg !20900

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvMs_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson7builderNtB4_7Builder10add_sparse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.o, !dbg !20901

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20902
  %i.bp = load i64, ptr %i.c, align 8, !dbg !20903, !range !2501, !noundef !1073 ; 2 uses
  %.not = icmp eq i64 %i.bp, -2, !dbg !20903
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20904
  %i.br = load i32, ptr %i.bq, align 8, !dbg !20904 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20853 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l, !dbg !20905

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 %i.bp, !20737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20864)
    #dbg_value(i32 %i.br, !20737, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20864)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !20906
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !20907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.515.0..sroa_idx, i64 116, i1 false), !dbg !20906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20908
    #dbg_value(i64 %i.bp, !20725, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20865)
    #dbg_value(i64 %i.bp, !20731, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20866)
    #dbg_value(i32 %i.br, !20725, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20865)
    #dbg_value(i32 %i.br, !20731, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20866)
    #dbg_value(i64 %i.bp, !20728, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20867)
    #dbg_value(i32 %i.br, !20728, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !20867)
  store i64 %i.bp, ptr %0, align 8, !dbg !20907
  store i32 %i.br, ptr %i.bs, align 8, !dbg !20907
  br label %bb.g, !dbg !20894

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20908
    #dbg_value(i32 %i.br, !20724, !DIExpression(), !20868)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20909
  call void @_RNvMNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3mapNtB2_14Utf8BoundedMap3set(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bh, i32 noundef %i.br), !dbg !20910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20911
  store i32 %i.br, ptr %i.bs, align 8, !dbg !20912
  store i64 -2, ptr %0, align 8, !dbg !20912
  br label %bb.n, !dbg !20900

bb.n:                                             ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_.exit
  ret void, !dbg !20913

bb.o:                                             ; preds = %bb.j, %bb.f, %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %common.resume unwind label %bb.p, !dbg !20900

bb.p:                                             ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !dbg !20914
  unreachable, !dbg !20914
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirENCINvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB2a_8Compiler7compileB1m_Es_0ENtNtNtB9_6traits8iterator8Iterator4nextB2g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !20915 {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  %i.b = alloca [128 x i8], align 8               ; 8 uses
  %i.c = alloca [128 x i8], align 8               ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [128 x i8], align 8               ; 8 uses
  %.sroa.19 = alloca [112 x i8], align 8          ; 8 uses
    #dbg_value(ptr %1, !21100, !DIExpression(), !21103)
    #dbg_value(ptr %1, !2700, !DIExpression(), !20917)
    #dbg_value(i64 1, !2715, !DIExpression(), !20919)
  %i.f = load ptr, ptr %1, align 8, !dbg !21173, !alias.scope !21104, !nonnull !1073, !noundef !1073 ; 3 uses
    #dbg_value(ptr %i.f, !2701, !DIExpression(), !20922)
    #dbg_value(ptr %i.f, !2716, !DIExpression(), !20919)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21174
  %i.h = load ptr, ptr %i.g, align 8, !dbg !21174, !alias.scope !21104, !nonnull !1073, !noundef !1073
    #dbg_value(ptr %i.h, !2702, !DIExpression(), !20923)
    #dbg_value(ptr poison, !2718, !DIExpression(), !20925)
    #dbg_value(ptr poison, !2719, !DIExpression(), !20926)
  %i.i = icmp eq ptr %i.f, %i.h, !dbg !21175
  br i1 %i.i, label %bb.y, label %bb.b, !dbg !21176

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48, !dbg !21177
  store ptr %i.j, ptr %1, align 8, !dbg !21178, !alias.scope !21104
    #dbg_value(ptr %i.f, !21105, !DIExpression(), !21116)
    #dbg_value(ptr %1, !21112, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21116)
    #dbg_value(ptr %1, !21117, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !21124)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21179
end_hunk_1
